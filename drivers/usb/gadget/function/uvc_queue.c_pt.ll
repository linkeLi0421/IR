; ModuleID = '/llk/IR/drivers/usb/gadget/function/uvc_queue.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/uvc_queue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uvc_device = type { %struct.video_device, %struct.v4l2_device, i32, %struct.usb_function, %struct.uvc_video, i8, %struct.anon.84, i32, ptr, ptr, ptr, i32, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.uvc_video = type { ptr, ptr, %struct.work_struct, i8, i32, i32, i32, i32, %struct.mutex, i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, %struct.uvc_video_queue, i32 }
%struct.uvc_video_queue = type { %struct.vb2_queue, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.anon.84 = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.uvc_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.72, i32 }
%union.anon.72 = type { i32 }

@uvc_queue_qops = internal constant %struct.vb2_ops { ptr @uvc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @uvc_buffer_prepare, ptr null, ptr null, ptr null, ptr null, ptr @uvc_buffer_queue, ptr null }, align 4
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@uvc_gadget_trace_param = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [43 x i8] c"\017uvcvideo: [E] Bytes used out of bounds.\0A\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_queue_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %0, i32 -104
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 3, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_configuration, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  store i32 %2, ptr %0, align 4
  %11 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 1
  store i32 19, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 12
  store i32 680, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 7
  store ptr @uvc_queue_qops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 5
  store ptr %3, ptr %15, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 4
  store i8 1, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %4
  %24 = phi ptr [ @vb2_dma_sg_memops, %21 ], [ @vb2_vmalloc_memops, %4 ]
  %25 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 8
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 13
  store i32 16384, ptr %26, align 4
  %27 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 2
  store ptr %1, ptr %27, align 4
  %28 = tail call i32 @vb2_queue_init(ptr noundef %0) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 5
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 6
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 6, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %30, %23
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvcg_free_buffers(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @vb2_queue_release(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_alloc_buffers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @vb2_reqbufs(ptr noundef %0, ptr noundef %1) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_query_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @vb2_querybuf(ptr noundef %0, ptr noundef %1) #5
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_queue_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @vb2_qbuf(ptr noundef %0, ptr noundef null, ptr noundef %1) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 5
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 2
  %11 = and i32 %10, 1
  %12 = and i32 %9, -5
  store i32 %12, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #5
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i32 [ %11, %5 ], [ %3, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_dequeue_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne i32 %2, 0
  %5 = tail call i32 @vb2_dqbuf(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %4) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dqbuf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_queue_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @vb2_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_queue_mmap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @vb2_mmap(ptr noundef %0, ptr noundef %1) #5
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvcg_queue_cancel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 6
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
  store i32 4, ptr %15, align 8
  tail call void @vb2_buffer_done(ptr noundef %10, i32 noundef 6) #5
  %16 = load volatile ptr, ptr %5, align 4
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %2
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 1
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_queue_enable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr %0, align 4
  br i1 %3, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @vb2_streamon(ptr noundef %0, i32 noundef %4) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 3
  store i32 0, ptr %10, align 4
  br label %22

11:                                               ; preds = %2
  %12 = tail call i32 @vb2_streamoff(ptr noundef %0, i32 noundef %4) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 5
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #5
  %17 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 6
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 6, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -2
  store i32 %21, ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #5
  br label %22

22:                                               ; preds = %14, %11, %8, %5
  %23 = phi i32 [ %6, %5 ], [ %12, %11 ], [ %6, %8 ], [ %12, %14 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @uvcg_queue_next_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 2
  store i32 1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 3
  store i32 0, ptr %19, align 4
  br label %58

20:                                               ; preds = %7, %2
  %21 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  %26 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 6
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  %29 = getelementptr i8, ptr %27, i32 -640
  %30 = select i1 %28, ptr null, ptr %29
  %31 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 2
  store i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  store i32 %33, ptr %35, align 8
  %36 = tail call i64 @ktime_get() #5
  %37 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  store i64 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 8
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = icmp ult i32 %45, %39
  %47 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %43
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %51

51:                                               ; preds = %50, %43
  br i1 %46, label %52, label %54

52:                                               ; preds = %51
  %53 = load i32, ptr %44, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ %53, %52 ], [ %39, %51 ]
  %56 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %54, %20
  tail call void @vb2_buffer_done(ptr noundef %1, i32 noundef 5) #5
  br label %58

58:                                               ; preds = %57, %18, %13
  %59 = phi ptr [ %30, %57 ], [ %1, %13 ], [ %1, %18 ]
  ret ptr %59
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @uvcg_queue_head(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -640
  br label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uvc_video_queue, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi ptr [ null, %7 ], [ %6, %5 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @uvc_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) #3 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -104
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 3, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_configuration, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %1, align 4
  %15 = icmp ugt i32 %14, 32
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 32, ptr %1, align 4
  br label %17

17:                                               ; preds = %16, %5
  store i32 1, ptr %2, align 4
  %18 = getelementptr i8, ptr %7, i32 -64
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %3, align 4
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr inbounds %struct.usb_gadget, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 4
  %24 = select i1 %23, i32 64, i32 4
  %25 = getelementptr i8, ptr %7, i32 -40
  store i32 %24, ptr %25, align 4
  ret i32 0
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
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, ptr @uvc_gadget_trace_param, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %18
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %64

24:                                               ; preds = %12, %8, %1
  %25 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %64, !prof !9

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 2
  store i32 1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 4
  %32 = load i8, ptr %31, align 4, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #5
  %36 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 4
  store ptr %35, ptr %36, align 8
  %37 = load ptr, ptr %35, align 4
  %38 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 5
  store ptr %37, ptr %38, align 4
  br label %42

39:                                               ; preds = %29
  %40 = tail call ptr @vb2_plane_vaddr(ptr noundef %0, i32 noundef 0) #5
  %41 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 7
  store i32 0, ptr %47, align 4
  %48 = load i32, ptr %5, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %56, label %61

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 7
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %5, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %50, %46
  %57 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 8
  store i32 0, ptr %57, align 8
  br label %64

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %46
  %62 = phi i32 [ %60, %58 ], [ 0, %46 ]
  %63 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 8
  store i32 %62, ptr %63, align 8
  br label %64

64:                                               ; preds = %61, %56, %24, %22, %18
  %65 = phi i32 [ -22, %22 ], [ -22, %18 ], [ -19, %24 ], [ 0, %61 ], [ 0, %56 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_buffer_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 5
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17, !prof !9

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 6
  %14 = getelementptr inbounds %struct.uvc_video_queue, ptr %4, i32 0, i32 6, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  br label %19

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.uvc_buffer, ptr %0, i32 0, i32 2
  store i32 4, ptr %18, align 8
  tail call void @vb2_buffer_done(ptr noundef %0, i32 noundef 6) #5
  br label %19

19:                                               ; preds = %17, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i8 0, i8 2}
