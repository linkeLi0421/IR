; ModuleID = '/llk/IR/drivers/usb/gadget/function/uvc_v4l2.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/uvc_v4l2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uvc_format = type { i8, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.95 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.92], %struct.media_entity_enum, i32 }
%struct.anon.92 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.uvc_device = type { %struct.video_device, %struct.v4l2_device, i32, %struct.usb_function, %struct.uvc_video, i8, %struct.anon.103, i32, ptr, ptr, ptr, i32, i32, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.uvc_video = type { ptr, ptr, %struct.work_struct, i8, i32, i32, i32, i32, %struct.mutex, i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, %struct.uvc_video_queue, i32 }
%struct.uvc_video_queue = type { %struct.vb2_queue, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.anon.103 = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.v4l2_format = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.73, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.73 = type { i8 }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.uvc_file_handle = type { %struct.v4l2_fh, ptr, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.uvc_request_data = type { i32, [60 x i8] }

@uvc_v4l2_ioctl_ops = dso_local local_unnamed_addr constant %struct.v4l2_ioctl_ops { ptr @uvc_v4l2_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_v4l2_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_v4l2_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_v4l2_reqbufs, ptr @uvc_v4l2_querybuf, ptr @uvc_v4l2_qbuf, ptr null, ptr @uvc_v4l2_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_v4l2_streamon, ptr @uvc_v4l2_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_v4l2_subscribe_event, ptr @uvc_v4l2_unsubscribe_event, ptr @uvc_v4l2_ioctl_default }, align 4
@__this_module = external dso_local global %struct.module, align 64
@uvc_v4l2_fops = dso_local local_unnamed_addr constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @uvc_v4l2_poll, ptr @video_ioctl2, ptr null, ptr @uvc_v4l2_mmap, ptr @uvc_v4l2_open, ptr @uvc_v4l2_release }, align 4
@.str = private unnamed_addr constant [6 x i8] c"g_uvc\00", align 1
@uvc_formats = internal unnamed_addr constant [2 x %struct.uvc_format] [%struct.uvc_format { i8 16, i32 1448695129 }, %struct.uvc_format { i8 0, i32 1196444237 }], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: Unsupported format 0x%08x.\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 3, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_configuration, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strlcpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #7
  %12 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @strlcpy(ptr noundef %12, ptr noundef %15, i32 noundef 32) #7
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %3
  %25 = phi ptr [ %23, %21 ], [ %19, %3 ]
  %26 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %27 = tail call i32 @strlcpy(ptr noundef %26, ptr noundef %25, i32 noundef 32) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_get_format(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 5
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %9, align 4
  %13 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 3
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = load i32, ptr %11, align 4
  %21 = mul i32 %20, %19
  %22 = lshr i32 %21, 3
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 8, ptr %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 0, ptr %28, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_set_format(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %9 [
    i32 1448695129, label %19
    i32 1196444237, label %18
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 3
  %11 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 3, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_configuration, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %8) #8
  br label %53

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %3
  %20 = phi i32 [ 0, %3 ], [ 1, %18 ]
  %21 = getelementptr [2 x %struct.uvc_format], ptr @uvc_formats, i32 0, i32 %20
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %25, %23
  %27 = lshr i32 %26, 3
  %28 = icmp ult i32 %26, 8
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, %27
  br label %36

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %32, %29 ], [ %35, %33 ]
  %38 = getelementptr [2 x %struct.uvc_format], ptr @uvc_formats, i32 0, i32 %20, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 4
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 3
  store i8 %22, ptr %41, align 4
  %42 = load i32, ptr %24, align 4
  %43 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 5
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 6
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 7
  store i32 %37, ptr %47, align 4
  %48 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %27, ptr %49, align 4
  %50 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %37, ptr %50, align 4
  %51 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 8, ptr %51, align 4
  %52 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %36, %9
  %54 = phi i32 [ -22, %9 ], [ 0, %36 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_reqbufs(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = tail call i32 @uvcg_alloc_buffers(ptr noundef %9, ptr noundef %2) #7
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i32 [ %13, %12 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_querybuf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 18
  %8 = tail call i32 @uvcg_query_buffer(ptr noundef %7, ptr noundef %2) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_qbuf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 18
  %8 = tail call i32 @uvcg_queue_buffer(ptr noundef %7, ptr noundef %2) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 2
  %16 = load ptr, ptr @system_wq, align 4
  %17 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %15) #7
  br label %18

18:                                               ; preds = %14, %10, %3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_dqbuf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 18
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2048
  %11 = tail call i32 @uvcg_dequeue_buffer(ptr noundef %7, ptr noundef %2, i32 noundef %10) #7
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_streamon(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4
  %12 = tail call i32 @uvcg_video_enable(ptr noundef %11, i32 noundef 1) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  tail call void @uvc_function_setup_continue(ptr noundef %6) #7
  %15 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 2
  store i32 2, ptr %15, align 8
  br label %16

16:                                               ; preds = %14, %10, %3
  %17 = phi i32 [ 0, %14 ], [ -22, %3 ], [ %12, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_streamoff(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4
  %12 = tail call i32 @uvcg_video_enable(ptr noundef %11, i32 noundef 0) #7
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %12, %10 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_subscribe_event(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %1, align 4
  %8 = add i32 %7, -134217734
  %9 = icmp ult i32 %8, -6
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 134217732
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 5
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12, %10
  %17 = tail call i32 @v4l2_event_subscribe(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef null) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %1, align 4
  %21 = icmp eq i32 %20, 134217732
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 5
  store i8 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.uvc_file_handle, ptr %0, i32 0, i32 2
  store i8 1, ptr %24, align 4
  tail call void @uvc_function_connect(ptr noundef %6) #7
  br label %25

25:                                               ; preds = %22, %19, %16, %12, %2
  %26 = phi i32 [ -22, %2 ], [ -16, %12 ], [ %17, %16 ], [ 0, %22 ], [ 0, %19 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_unsubscribe_event(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @v4l2_event_unsubscribe(ptr noundef %0, ptr noundef %1) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %10, 134217732
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.uvc_file_handle, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 5
  store i8 0, ptr %17, align 4
  tail call void @uvc_function_disconnect(ptr noundef %6) #7
  %18 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4
  %19 = tail call i32 @uvcg_video_enable(ptr noundef %18, i32 noundef 0) #7
  %20 = getelementptr inbounds %struct.uvc_device, ptr %6, i32 0, i32 4, i32 18
  tail call void @uvcg_free_buffers(ptr noundef %20) #7
  store i8 0, ptr %13, align 4
  br label %21

21:                                               ; preds = %16, %12, %9, %2
  %22 = phi i32 [ %7, %2 ], [ 0, %16 ], [ 0, %12 ], [ 0, %9 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_ioctl_default(ptr noundef %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = tail call ptr @video_devdata(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i32 %3, 1077957889
  br i1 %9, label %10, label %43

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uvc_device, ptr %8, i32 0, i32 3, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_configuration, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @usb_ep_set_halt(ptr noundef %20) #7
  br label %43

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.uvc_device, ptr %8, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uvc_device, ptr %8, i32 0, i32 12
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %15) #7
  %28 = getelementptr inbounds %struct.usb_request, ptr %24, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %4, align 4
  %30 = load i32, ptr %25, align 8
  %31 = icmp ult i32 %29, %30
  %32 = getelementptr inbounds %struct.usb_request, ptr %24, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = select i1 %31, i32 262144, i32 0
  %35 = and i32 %33, -262145
  %36 = or i32 %35, %34
  store i32 %36, ptr %32, align 4
  %37 = load ptr, ptr %24, align 4
  %38 = getelementptr inbounds %struct.uvc_request_data, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 4 %38, i32 %27, i1 false) #7
  %39 = load ptr, ptr %14, align 4
  %40 = getelementptr inbounds %struct.usb_gadget, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 @usb_ep_queue(ptr noundef %41, ptr noundef %24, i32 noundef 3264) #7
  br label %43

43:                                               ; preds = %22, %17, %5
  %44 = phi i32 [ -515, %5 ], [ %21, %17 ], [ %42, %22 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @video_devdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 4, i32 18
  %7 = tail call i32 @uvcg_queue_poll(ptr noundef %6, ptr noundef %0, ptr noundef %1) #7
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @video_devdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 4, i32 18
  %7 = tail call i32 @uvcg_queue_mmap(ptr noundef %6, ptr noundef %1) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_open(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 88) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  tail call void @v4l2_fh_init(ptr noundef nonnull %6, ptr noundef %2) #7
  tail call void @v4l2_fh_add(ptr noundef nonnull %6) #7
  %9 = getelementptr inbounds %struct.uvc_device, ptr %4, i32 0, i32 4
  %10 = getelementptr inbounds %struct.uvc_file_handle, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %6, ptr %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ 0, %8 ], [ -12, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_release(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uvc_file_handle, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uvc_video, ptr %8, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.uvc_file_handle, ptr %6, i32 0, i32 2
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.uvc_device, ptr %4, i32 0, i32 5
  store i8 0, ptr %14, align 4
  tail call void @uvc_function_disconnect(ptr noundef %4) #7
  %15 = getelementptr inbounds %struct.uvc_device, ptr %4, i32 0, i32 4
  %16 = tail call i32 @uvcg_video_enable(ptr noundef %15, i32 noundef 0) #7
  %17 = getelementptr inbounds %struct.uvc_device, ptr %4, i32 0, i32 4, i32 18
  tail call void @uvcg_free_buffers(ptr noundef %17) #7
  br label %18

18:                                               ; preds = %13, %1
  tail call void @mutex_unlock(ptr noundef %9) #7
  store ptr null, ptr %5, align 8
  tail call void @v4l2_fh_del(ptr noundef %6) #7
  tail call void @v4l2_fh_exit(ptr noundef %6) #7
  tail call void @kfree(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_alloc_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_query_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_queue_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_dequeue_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_video_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_function_setup_continue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_function_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_function_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvcg_free_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_queue_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_queue_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
