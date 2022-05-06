; ModuleID = '/llk/IR/drivers/media/usb/uvc/uvc_queue.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_queue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uvc_video_queue = type { %struct.vb2_queue, %struct.mutex, i32, i32, %struct.spinlock, %struct.list_head }
%struct.uvc_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.kref }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.72, i32 }
%union.anon.72 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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

@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@uvc_meta_queue_qops = internal constant %struct.vb2_ops { ptr @uvc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @uvc_buffer_prepare, ptr null, ptr null, ptr null, ptr @uvc_stop_streaming, ptr @uvc_buffer_queue, ptr null }, align 4
@uvc_queue_qops = internal constant %struct.vb2_ops { ptr @uvc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @uvc_buffer_prepare, ptr @uvc_buffer_finish, ptr null, ptr @uvc_start_streaming, ptr @uvc_stop_streaming, ptr @uvc_buffer_queue, ptr null }, align 4
@uvc_queue_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [14 x i8] c"&queue->mutex\00", align 1
@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"[E] Bytes used out of bounds\0A\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  store i32 %1, ptr %0, align 4
  %4 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 1
  store i32 3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 12
  store i32 680, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 8
  store ptr @vb2_vmalloc_memops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 13
  store i32 73728, ptr %8, align 4
  %9 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 5
  store ptr %9, ptr %10, align 4
  %11 = icmp eq i32 %1, 13
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 19, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %3
  %14 = phi ptr [ @uvc_queue_qops, %12 ], [ @uvc_meta_queue_qops, %3 ]
  %15 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 7
  store ptr %14, ptr %15, align 4
  %16 = tail call i32 @vb2_queue_init(ptr noundef %0) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @uvc_queue_init.__key) #4
  %19 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 5
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 5, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp eq i32 %2, 0
  %23 = select i1 %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %18, %13
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_queue_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %2) #4
  tail call void @vb2_queue_release(ptr noundef %0) #4
  tail call void @mutex_unlock(ptr noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_request_buffers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = tail call i32 @vb2_reqbufs(ptr noundef %0, ptr noundef %1) #4
  tail call void @mutex_unlock(ptr noundef %3) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ %4, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_query_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = tail call i32 @vb2_querybuf(ptr noundef %0, ptr noundef %1) #4
  tail call void @mutex_unlock(ptr noundef %3) #4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_create_buffers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = tail call i32 @vb2_create_bufs(ptr noundef %0, ptr noundef %1) #4
  tail call void @mutex_unlock(ptr noundef %3) #4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_create_bufs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #4
  %5 = tail call i32 @vb2_qbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  tail call void @mutex_unlock(ptr noundef %4) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_export_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = tail call i32 @vb2_expbuf(ptr noundef %0, ptr noundef %1) #4
  tail call void @mutex_unlock(ptr noundef %3) #4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_expbuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_dequeue_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #4
  %5 = icmp ne i32 %2, 0
  %6 = tail call i32 @vb2_dqbuf(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %5) #4
  tail call void @mutex_unlock(ptr noundef %4) #4
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dqbuf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_streamon(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = tail call i32 @vb2_streamon(ptr noundef %0, i32 noundef %1) #4
  tail call void @mutex_unlock(ptr noundef %3) #4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_streamoff(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = tail call i32 @vb2_streamoff(ptr noundef %0, i32 noundef %1) #4
  tail call void @mutex_unlock(ptr noundef %3) #4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_mmap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @vb2_mmap(ptr noundef %0, ptr noundef %1) #4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #4
  %5 = tail call i32 @vb2_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  tail call void @mutex_unlock(ptr noundef %4) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_queue_allocated(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %2) #4
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  tail call void @mutex_unlock(ptr noundef %2) #4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_queue_cancel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 5
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %18, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %16, %8 ], [ %6, %2 ]
  %10 = getelementptr i8, ptr %9, i32 -640
  %11 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %15 = getelementptr i8, ptr %9, i32 8
  store i32 5, ptr %15, align 8
  tail call void @vb2_buffer_done(ptr noundef %10, i32 noundef 6) #4
  %16 = load volatile ptr, ptr %5, align 4
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %2
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 1
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @uvc_queue_get_current_buffer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  %4 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 5
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = getelementptr i8, ptr %5, i32 -640
  %8 = select i1 %6, ptr null, ptr %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #4
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_queue_buffer_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #4, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #4, !srcloc !10
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %70, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #4
  br label %70

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.uvc_video_queue, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %16, label %20, label %22

20:                                               ; preds = %9
  %21 = select i1 %19, i32 4, i32 5
  br label %47

22:                                               ; preds = %9
  br i1 %19, label %47, label %23

23:                                               ; preds = %22
  store i32 0, ptr %17, align 4
  %24 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 2
  store i32 1, ptr %24, align 8
  %25 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 6
  store i32 0, ptr %25, align 8
  %26 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 0, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 0, i32 0, i32 10, i32 0, i32 3
  store i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr inbounds %struct.uvc_video_queue, ptr %32, i32 0, i32 4
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #4
  %35 = getelementptr inbounds %struct.uvc_video_queue, ptr %32, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45, !prof !11

39:                                               ; preds = %31
  store volatile i32 1, ptr %2, align 4
  %40 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 1
  %41 = getelementptr inbounds %struct.uvc_video_queue, ptr %32, i32 0, i32 5
  %42 = getelementptr inbounds %struct.uvc_video_queue, ptr %32, i32 0, i32 5, i32 1
  %43 = load ptr, ptr %42, align 4
  store ptr %40, ptr %42, align 4
  store ptr %41, ptr %40, align 4
  %44 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %43, ptr %44, align 4
  store volatile ptr %40, ptr %43, align 4
  br label %46

45:                                               ; preds = %31
  store i32 5, ptr %24, align 8
  tail call void @vb2_buffer_done(ptr noundef %0, i32 noundef 6) #4
  br label %46

46:                                               ; preds = %45, %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #4
  br label %70

47:                                               ; preds = %22, %20
  %48 = phi i32 [ %21, %20 ], [ 4, %22 ]
  %49 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 2
  store i32 %48, ptr %49, align 8
  %50 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 6
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 0, i32 0, i32 4
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %47
  %56 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 0, i32 0, i32 10, i32 0, i32 4
  %57 = load i32, ptr %56, align 8
  %58 = icmp ult i32 %57, %51
  %59 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !13

62:                                               ; preds = %55
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1163, i32 noundef 9, ptr noundef null) #4
  br label %63

63:                                               ; preds = %62, %55
  br i1 %58, label %64, label %66

64:                                               ; preds = %63
  %65 = load i32, ptr %56, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ %65, %64 ], [ %51, %63 ]
  %68 = getelementptr %struct.uvc_buffer, ptr %0, i32 0, i32 0, i32 0, i32 10, i32 0, i32 3
  store i32 %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %66, %47
  tail call void @vb2_buffer_done(ptr noundef %0, i32 noundef 5) #4
  br label %70

70:                                               ; preds = %69, %46, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @uvc_queue_next_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  %10 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 5
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  %13 = getelementptr i8, ptr %11, i32 -640
  %14 = select i1 %12, ptr null, ptr %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #4
  tail call void @uvc_queue_buffer_release(ptr noundef %1)
  ret ptr %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @uvc_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #2 {
  %6 = load i32, ptr %0, align 4
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -54
  %12 = load i32, ptr %11, align 2
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i32 [ %12, %8 ], [ 10240, %5 ]
  %15 = load i32, ptr %2, align 4
  switch i32 %15, label %21 [
    i32 0, label %20
    i32 1, label %16
  ]

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4
  %18 = icmp ult i32 %17, %14
  %19 = select i1 %18, i32 -22, i32 0
  br label %21

20:                                               ; preds = %13
  store i32 1, ptr %2, align 4
  store i32 %14, ptr %3, align 4
  br label %21

21:                                               ; preds = %20, %16, %13
  %22 = phi i32 [ 0, %20 ], [ %19, %16 ], [ -22, %13 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_buffer_prepare(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load i32, ptr @uvc_dbg_param, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %4, i32 -980
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %26, ptr noundef nonnull @.str.2) #5
  br label %58

27:                                               ; preds = %12, %8, %1
  %28 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %58, !prof !11

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 2
  store i32 1, ptr %33, align 8
  %34 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 3
  store i32 0, ptr %34, align 4
  %35 = tail call ptr @vb2_plane_vaddr(ptr noundef %0, i32 noundef 0) #4
  %36 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 4
  store ptr %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 5
  store i32 0, ptr %41, align 4
  %42 = load i32, ptr %5, align 8
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %55, label %50

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 5
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %5, align 8
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %52, label %50

50:                                               ; preds = %44, %40
  %51 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 6
  store i32 0, ptr %51, align 8
  br label %58

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %40
  %56 = phi i32 [ %54, %52 ], [ 0, %40 ]
  %57 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 6
  store i32 %56, ptr %57, align 8
  br label %58

58:                                               ; preds = %55, %50, %27, %22, %18
  %59 = phi i32 [ -22, %22 ], [ -22, %18 ], [ -19, %27 ], [ 0, %55 ], [ 0, %50 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 13
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 -988
  tail call void @uvc_video_stop_streaming(ptr noundef %7) #4
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #4
  %10 = getelementptr inbounds %struct.uvc_video_queue, ptr %3, i32 0, i32 5
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %23, label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %21, %13 ], [ %11, %8 ]
  %15 = getelementptr i8, ptr %14, i32 -640
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %20 = getelementptr i8, ptr %14, i32 8
  store i32 5, ptr %20, align 8
  tail call void @vb2_buffer_done(ptr noundef %15, i32 noundef 6) #4
  %21 = load volatile ptr, ptr %10, align 4
  %22 = icmp eq ptr %21, %10
  br i1 %22, label %23, label %13

23:                                               ; preds = %13, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %24 = load i16, ptr %9, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_buffer_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18, !prof !11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 8
  store volatile i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 5
  %15 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 5, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %13, ptr %15, align 4
  store ptr %14, ptr %13, align 4
  %17 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %13, ptr %16, align 4
  br label %20

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 2
  store i32 5, ptr %19, align 8
  tail call void @vb2_buffer_done(ptr noundef %0, i32 noundef 6) #4
  br label %20

20:                                               ; preds = %18, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_video_stop_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_buffer_finish(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -988
  tail call void @uvc_video_clock_update(ptr noundef %9, ptr noundef %0, ptr noundef %0) #4
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -988
  %6 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = tail call i32 @uvc_video_start_streaming(ptr noundef %5) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #4
  %11 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 5
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %24, label %14

14:                                               ; preds = %14, %9
  %15 = phi ptr [ %22, %14 ], [ %12, %9 ]
  %16 = getelementptr i8, ptr %15, i32 -640
  %17 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %21 = getelementptr i8, ptr %15, i32 8
  store i32 1, ptr %21, align 8
  tail call void @vb2_buffer_done(ptr noundef %16, i32 noundef 3) #4
  %22 = load volatile ptr, ptr %11, align 4
  %23 = icmp eq ptr %22, %11
  br i1 %23, label %24, label %14

24:                                               ; preds = %14, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %25 = load i16, ptr %10, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  br label %27

27:                                               ; preds = %24, %2
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_video_clock_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_video_start_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2147935094}
!9 = !{i64 258171, i64 2147759737, i64 2147759763, i64 2147759810, i64 2147759832, i64 2147759860, i64 2147759880}
!10 = !{i64 2147837253, i64 2147837285, i64 2147837314, i64 2147837348, i64 2147837379, i64 2147837402}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149367899}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2149018547}
!15 = !{i64 2149014371}
!16 = !{i64 2149014446, i64 2149014473, i64 2149014520, i64 2149014542, i64 2149014570, i64 2149014590}
!17 = !{i64 287163}
!18 = !{i64 2149042691}
