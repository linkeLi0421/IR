; ModuleID = '/llk/IR/drivers/usb/gadget/function/uvc_video.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/uvc_video.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uvc_video = type { ptr, ptr, %struct.work_struct, i8, i32, i32, i32, i32, %struct.mutex, i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, %struct.uvc_video_queue, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uvc_video_queue = type { %struct.vb2_queue, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uvc_device = type { %struct.video_device, %struct.v4l2_device, i32, %struct.usb_function, %struct.uvc_video, i8, %struct.anon.84, i32, ptr, ptr, ptr, i32, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.71 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.68], %struct.media_entity_enum, i32 }
%struct.anon.68 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.anon.84 = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.uvc_request = type { ptr, ptr, ptr, %struct.sg_table, [12 x i8] }
%struct.sg_table = type { ptr, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.uvc_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.67, i32 }
%union.anon.67 = type { i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.63, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.timespec64 = type { i64, i32 }

@.str = private unnamed_addr constant [51 x i8] c"%s: Video enable failed, device is uninitialized.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: VS request completed with status %d.\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: Failed to queue request (%d).\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_video_enable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.uvc_device, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.uvc_device, ptr %7, i32 0, i32 3, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_configuration, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef %15) #8
  br label %156

16:                                               ; preds = %2
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 2
  %20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %19) #9
  %21 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 18
  tail call void @uvcg_queue_cancel(ptr noundef %21, i32 noundef 0) #9
  %22 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 11
  br label %27

27:                                               ; preds = %40, %25
  %28 = phi i32 [ %23, %25 ], [ %41, %40 ]
  %29 = phi i32 [ 0, %25 ], [ %42, %40 ]
  %30 = load ptr, ptr %26, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = getelementptr %struct.uvc_request, ptr %30, i32 %29
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 4
  %38 = tail call i32 @usb_ep_dequeue(ptr noundef %37, ptr noundef nonnull %34) #9
  %39 = load i32, ptr %22, align 4
  br label %40

40:                                               ; preds = %36, %32, %27
  %41 = phi i32 [ %28, %27 ], [ %28, %32 ], [ %39, %36 ]
  %42 = add nuw i32 %29, 1
  %43 = icmp ult i32 %42, %41
  br i1 %43, label %27, label %44

44:                                               ; preds = %40, %18
  tail call fastcc void @uvc_video_free_requests(ptr noundef %0)
  %45 = tail call i32 @uvcg_queue_enable(ptr noundef %21, i32 noundef 0) #9
  br label %156

46:                                               ; preds = %16
  %47 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 18
  %48 = tail call i32 @uvcg_queue_enable(ptr noundef %47, i32 noundef 1) #9
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %156, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54, !prof !8

54:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/uvc_video.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 311, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

55:                                               ; preds = %50
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.usb_ep, ptr %56, i32 0, i32 7
  %58 = load i56, ptr %57, align 2
  %59 = trunc i56 %58 to i32
  %60 = and i32 %59, 65535
  %61 = lshr i56 %58, 50
  %62 = trunc i56 %61 to i32
  %63 = and i32 %62, 31
  %64 = tail call i32 @llvm.umax.i32(i32 %63, i32 1) #9
  %65 = lshr i56 %58, 48
  %66 = trunc i56 %65 to i32
  %67 = and i32 %66, 3
  %68 = mul nuw nsw i32 %67, %60
  %69 = mul nuw nsw i32 %68, %64
  %70 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 9
  %71 = load i32, ptr %70, align 4
  %72 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %71, i32 36) #9
  %73 = extractvalue { i32, i1 } %72, 1
  br i1 %73, label %74, label %76, !prof !10

74:                                               ; preds = %55
  %75 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 11
  store ptr null, ptr %75, align 4
  br label %156

76:                                               ; preds = %55
  %77 = extractvalue { i32, i1 } %72, 0
  %78 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %77, i32 noundef 3520) #10
  %79 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 11
  store ptr %78, ptr %79, align 4
  %80 = icmp eq ptr %78, null
  br i1 %80, label %156, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %70, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %138, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 12
  %86 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 12, i32 1
  %87 = add nuw nsw i32 %69, 4083
  %88 = lshr i32 %87, 12
  %89 = add nuw nsw i32 %88, 2
  br label %90

90:                                               ; preds = %108, %84
  %91 = phi i32 [ 0, %84 ], [ %134, %108 ]
  %92 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %69, i32 noundef 3264) #10
  %93 = load ptr, ptr %79, align 4
  %94 = getelementptr %struct.uvc_request, ptr %93, i32 %91, i32 1
  store ptr %92, ptr %94, align 4
  %95 = load ptr, ptr %79, align 4
  %96 = getelementptr %struct.uvc_request, ptr %95, i32 %91, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %137, label %99

99:                                               ; preds = %90
  %100 = load ptr, ptr %3, align 4
  %101 = tail call ptr @usb_ep_alloc_request(ptr noundef %100, i32 noundef 3264) #9
  %102 = load ptr, ptr %79, align 4
  %103 = getelementptr %struct.uvc_request, ptr %102, i32 %91
  store ptr %101, ptr %103, align 4
  %104 = load ptr, ptr %79, align 4
  %105 = getelementptr %struct.uvc_request, ptr %104, i32 %91
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %137, label %108

108:                                              ; preds = %99
  %109 = getelementptr %struct.uvc_request, ptr %104, i32 %91, i32 1
  %110 = load ptr, ptr %109, align 4
  store ptr %110, ptr %106, align 4
  %111 = load ptr, ptr %79, align 4
  %112 = getelementptr %struct.uvc_request, ptr %111, i32 %91
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.usb_request, ptr %113, i32 0, i32 1
  store i32 0, ptr %114, align 4
  %115 = load ptr, ptr %79, align 4
  %116 = getelementptr %struct.uvc_request, ptr %115, i32 %91
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.usb_request, ptr %117, i32 0, i32 7
  store ptr @uvc_video_complete, ptr %118, align 4
  %119 = load ptr, ptr %79, align 4
  %120 = getelementptr %struct.uvc_request, ptr %119, i32 %91
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.usb_request, ptr %121, i32 0, i32 8
  store ptr %120, ptr %122, align 4
  %123 = load ptr, ptr %79, align 4
  %124 = getelementptr %struct.uvc_request, ptr %123, i32 %91, i32 2
  store ptr %0, ptr %124, align 4
  %125 = load ptr, ptr %79, align 4
  %126 = getelementptr %struct.uvc_request, ptr %125, i32 %91
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.usb_request, ptr %127, i32 0, i32 9
  %129 = load ptr, ptr %86, align 4
  store ptr %128, ptr %86, align 4
  store ptr %85, ptr %128, align 4
  %130 = getelementptr inbounds %struct.usb_request, ptr %127, i32 0, i32 9, i32 1
  store ptr %129, ptr %130, align 4
  store volatile ptr %128, ptr %129, align 4
  %131 = load ptr, ptr %79, align 4
  %132 = getelementptr %struct.uvc_request, ptr %131, i32 %91, i32 3
  %133 = tail call i32 @sg_alloc_table(ptr noundef %132, i32 noundef %89, i32 noundef 3264) #9
  %134 = add nuw i32 %91, 1
  %135 = load i32, ptr %70, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %90, label %138

137:                                              ; preds = %99, %90
  tail call fastcc void @uvc_video_free_requests(ptr noundef %0) #9
  br label %156

138:                                              ; preds = %108, %81
  store i32 %69, ptr %51, align 4
  %139 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 17
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 16
  store i32 0, ptr %143, align 4
  br label %149

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 18, i32 4
  %146 = load i8, ptr %145, align 4, !range !11
  %147 = icmp eq i8 %146, 0
  %148 = select i1 %147, ptr @uvc_video_encode_isoc, ptr @uvc_video_encode_isoc_sg
  br label %149

149:                                              ; preds = %144, %142
  %150 = phi ptr [ %148, %144 ], [ @uvc_video_encode_bulk, %142 ]
  %151 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 15
  store ptr %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 14
  store i32 0, ptr %152, align 4
  %153 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 2
  %154 = load ptr, ptr @system_wq, align 4
  %155 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %154, ptr noundef %153) #9
  br label %156

156:                                              ; preds = %149, %137, %76, %74, %46, %44, %6
  %157 = phi i32 [ -19, %6 ], [ 0, %149 ], [ 0, %44 ], [ %48, %46 ], [ -12, %137 ], [ -12, %76 ], [ -12, %74 ]
  ret i32 %157
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvcg_queue_cancel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uvc_video_free_requests(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi ptr [ %3, %9 ], [ %36, %32 ]
  %13 = phi i32 [ 0, %9 ], [ %33, %32 ]
  %14 = getelementptr %struct.uvc_request, ptr %12, i32 %13, i32 3
  tail call void @sg_free_table(ptr noundef %14) #9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr %struct.uvc_request, ptr %15, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr %10, align 4
  tail call void @usb_ep_free_request(ptr noundef %20, ptr noundef nonnull %17) #9
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr %struct.uvc_request, ptr %21, i32 %13
  store ptr null, ptr %22, align 4
  %23 = load ptr, ptr %2, align 4
  br label %24

24:                                               ; preds = %19, %11
  %25 = phi ptr [ %23, %19 ], [ %15, %11 ]
  %26 = getelementptr %struct.uvc_request, ptr %25, i32 %13, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %27) #9
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr %struct.uvc_request, ptr %30, i32 %13, i32 1
  store ptr null, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = add nuw i32 %13, 1
  %34 = load i32, ptr %6, align 4
  %35 = icmp ult i32 %33, %34
  %36 = load ptr, ptr %2, align 4
  br i1 %35, label %11, label %37

37:                                               ; preds = %32, %5
  %38 = phi ptr [ %3, %5 ], [ %36, %32 ]
  tail call void @kfree(ptr noundef %38) #9
  store ptr null, ptr %2, align 4
  br label %39

39:                                               ; preds = %37, %1
  %40 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 12
  store volatile ptr %40, ptr %40, align 4
  %41 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 12, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 10
  store i32 0, ptr %42, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_queue_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_video_encode_bulk(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @uvc_video_encode_header(ptr noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %6)
  %12 = load i32, ptr %7, align 4
  %13 = add i32 %12, %11
  store i32 %13, ptr %7, align 4
  %14 = getelementptr i8, ptr %4, i32 %11
  %15 = sub i32 %6, %11
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %13, %10 ], [ %8, %3 ]
  %18 = phi i32 [ %15, %10 ], [ %6, %3 ]
  %19 = phi ptr [ %14, %10 ], [ %4, %3 ]
  %20 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 17
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %21, %17
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 %18)
  %24 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 18, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 8
  %30 = load i32, ptr %29, align 8
  %31 = sub i32 %30, %27
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %23) #9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %28, i32 %32, i1 false) #9
  %33 = load i32, ptr %26, align 4
  %34 = add i32 %33, %32
  store i32 %34, ptr %26, align 4
  %35 = load i32, ptr %7, align 4
  %36 = add i32 %35, %32
  store i32 %36, ptr %7, align 4
  %37 = sub i32 %32, %23
  %38 = load i32, ptr %5, align 4
  %39 = add i32 %37, %38
  %40 = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %7, align 4
  %42 = load i32, ptr %20, align 4
  %43 = icmp eq i32 %41, %42
  %44 = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = select i1 %43, i32 262144, i32 0
  %47 = and i32 %45, -262145
  %48 = or i32 %47, %46
  store i32 %48, ptr %44, align 4
  %49 = load i32, ptr %29, align 8
  %50 = load i32, ptr %26, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %16
  %53 = load i32, ptr %7, align 4
  br label %61

54:                                               ; preds = %16
  %55 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 18
  store i32 0, ptr %26, align 4
  %56 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 2
  store i32 3, ptr %56, align 8
  %57 = tail call ptr @uvcg_queue_next_buffer(ptr noundef %55, ptr noundef %2) #9
  %58 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 19
  %59 = load i32, ptr %58, align 4
  %60 = xor i32 %59, 1
  store i32 %60, ptr %58, align 4
  store i32 0, ptr %7, align 4
  br label %61

61:                                               ; preds = %54, %52
  %62 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %63 = load i32, ptr %20, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %29, align 8
  %67 = load i32, ptr %26, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61
  store i32 0, ptr %7, align 4
  br label %70

70:                                               ; preds = %69, %65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_video_encode_isoc_sg(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 18
  %7 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 18, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.uvc_request, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uvc_request, ptr %10, i32 0, i32 3, i32 1
  %16 = load i32, ptr %15, align 4
  tail call void @sg_init_table(ptr noundef %14, i32 noundef %16) #9
  %17 = getelementptr inbounds %struct.uvc_request, ptr %10, i32 0, i32 4
  %18 = load i32, ptr %11, align 4
  %19 = tail call fastcc i32 @uvc_video_encode_header(ptr noundef %1, ptr noundef %2, ptr noundef %17, i32 noundef %18), !range !12
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %17 to i32
  %22 = add i32 %21, 1073741824
  %23 = lshr i32 %22, 12
  %24 = getelementptr %struct.page, ptr %20, i32 %23
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !8

28:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

29:                                               ; preds = %3
  %30 = sub i32 %5, %8
  %31 = and i32 %21, 4095
  %32 = load i32, ptr %14, align 4
  %33 = and i32 %32, 3
  %34 = or i32 %33, %25
  store i32 %34, ptr %14, align 4
  %35 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 1
  store i32 %31, ptr %35, align 4
  %36 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  store i32 %19, ptr %36, align 4
  %37 = sub i32 %12, %19
  %38 = tail call i32 @llvm.umin.i32(i32 %30, i32 %37)
  %39 = icmp ugt i32 %30, %37
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = add i32 %38, %19
  br label %44

42:                                               ; preds = %29
  %43 = load i32, ptr %11, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = tail call ptr @sg_next(ptr noundef %14) #9
  %48 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 5
  %49 = load i32, ptr %15, align 4
  %50 = icmp ne i32 %49, 1
  %51 = icmp ne i32 %38, 0
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %90

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 6
  br label %55

55:                                               ; preds = %81, %53
  %56 = phi i32 [ 0, %53 ], [ %83, %81 ]
  %57 = phi i32 [ %38, %53 ], [ %82, %81 ]
  %58 = phi ptr [ %47, %53 ], [ %84, %81 ]
  %59 = load ptr, ptr %48, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %90, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = load i32, ptr %54, align 8
  %65 = sub i32 %63, %64
  %66 = tail call i32 @llvm.umin.i32(i32 %57, i32 %65)
  %67 = load i32, ptr %59, align 4
  %68 = and i32 %67, -4
  %69 = load i32, ptr %58, align 4
  %70 = and i32 %69, 3
  %71 = or i32 %70, %68
  store i32 %71, ptr %58, align 4
  %72 = getelementptr inbounds %struct.scatterlist, ptr %58, i32 0, i32 1
  store i32 %64, ptr %72, align 4
  %73 = getelementptr inbounds %struct.scatterlist, ptr %58, i32 0, i32 2
  store i32 %66, ptr %73, align 4
  %74 = icmp ugt i32 %65, %57
  br i1 %74, label %78, label %75

75:                                               ; preds = %61
  store i32 0, ptr %54, align 8
  %76 = load ptr, ptr %48, align 4
  %77 = tail call ptr @sg_next(ptr noundef %76) #9
  store ptr %77, ptr %48, align 4
  br label %81

78:                                               ; preds = %61
  %79 = load i32, ptr %54, align 8
  %80 = add i32 %79, %66
  store i32 %80, ptr %54, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = sub i32 %57, %66
  %83 = add nuw i32 %56, 1
  %84 = tail call ptr @sg_next(ptr noundef %58) #9
  %85 = load i32, ptr %15, align 4
  %86 = add i32 %85, -1
  %87 = icmp ult i32 %83, %86
  %88 = icmp ne i32 %82, 0
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %55, label %90

90:                                               ; preds = %81, %55, %44
  %91 = phi i32 [ %38, %44 ], [ %57, %55 ], [ %82, %81 ]
  %92 = phi i32 [ 0, %44 ], [ %56, %55 ], [ %83, %81 ]
  store ptr null, ptr %0, align 4
  %93 = load ptr, ptr %13, align 4
  %94 = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 3
  store ptr %93, ptr %94, align 4
  %95 = add i32 %92, 1
  %96 = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 4
  store i32 %95, ptr %96, align 4
  %97 = load i32, ptr %46, align 4
  %98 = sub i32 %97, %91
  store i32 %98, ptr %46, align 4
  %99 = sub i32 %98, %19
  %100 = load i32, ptr %7, align 4
  %101 = add i32 %100, %99
  store i32 %101, ptr %7, align 4
  %102 = load i32, ptr %4, align 8
  %103 = icmp eq i32 %102, %101
  br i1 %103, label %107, label %104

104:                                              ; preds = %90
  %105 = load ptr, ptr %48, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %104, %90
  store i32 0, ptr %7, align 4
  %108 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 2
  store i32 3, ptr %108, align 8
  %109 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 6
  store i32 0, ptr %109, align 8
  %110 = tail call ptr @uvcg_queue_next_buffer(ptr noundef %6, ptr noundef %2) #9
  %111 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 19
  %112 = load i32, ptr %111, align 4
  %113 = xor i32 %112, 1
  store i32 %113, ptr %111, align 4
  br label %114

114:                                              ; preds = %107, %104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_video_encode_isoc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @uvc_video_encode_header(ptr noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %6)
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = sub i32 %6, %7
  %10 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 18, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = sub i32 %16, %13
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %9) #9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr align 1 %14, i32 %18, i1 false) #9
  %19 = load i32, ptr %12, align 4
  %20 = add i32 %19, %18
  store i32 %20, ptr %12, align 4
  %21 = sub i32 %18, %9
  %22 = load i32, ptr %5, align 4
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %15, align 8
  %26 = load i32, ptr %12, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 18
  store i32 0, ptr %12, align 4
  %30 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 2
  store i32 3, ptr %30, align 8
  %31 = tail call ptr @uvcg_queue_next_buffer(ptr noundef %29, ptr noundef %2) #9
  %32 = getelementptr inbounds %struct.uvc_video, ptr %1, i32 0, i32 19
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, 1
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %28, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_video_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 12
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 12, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 13
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 2
  store i32 -32, ptr %6, align 4
  %7 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 2, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 2, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 2, i32 2
  store ptr @uvcg_video_pump, ptr %9, align 4
  store ptr %1, ptr %0, align 4
  %10 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 4
  store i32 1448695129, ptr %10, align 4
  %11 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 3
  store i8 16, ptr %11, align 4
  %12 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 5
  store i32 320, ptr %12, align 4
  %13 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 6
  store i32 240, ptr %13, align 4
  %14 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 7
  store i32 153600, ptr %14, align 4
  %15 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 18
  %16 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 8
  %21 = tail call i32 @uvcg_queue_init(ptr noundef %15, ptr noundef %19, i32 noundef 2, ptr noundef %20) #9
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvcg_video_pump(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 96
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 6
  %7 = load i8, ptr %6, align 1, !range !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %96, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 76
  %11 = getelementptr i8, ptr %0, i32 68
  %12 = getelementptr i8, ptr %0, i32 452
  %13 = getelementptr i8, ptr %0, i32 84
  %14 = getelementptr i8, ptr %0, i32 80
  %15 = getelementptr i8, ptr %0, i32 56
  br label %16

16:                                               ; preds = %80, %9
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  %18 = load volatile ptr, ptr %11, align 4
  %19 = icmp eq ptr %18, %11
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %17) #9
  br label %96

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %18, i32 -36
  %23 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %17) #9
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #9
  %28 = tail call ptr @uvcg_queue_head(ptr noundef %3) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %27) #9
  br label %87

31:                                               ; preds = %21
  %32 = load ptr, ptr %13, align 4
  tail call void %32(ptr noundef %22, ptr noundef %2, ptr noundef nonnull %28) #9
  %33 = load volatile ptr, ptr %11, align 4
  %34 = icmp eq ptr %33, %11
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.uvc_buffer, ptr %28, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %14, align 4
  %41 = load i32, ptr %15, align 4
  %42 = add i32 %41, 3
  %43 = lshr i32 %42, 2
  %44 = urem i32 %40, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39, %35, %31
  store i32 0, ptr %14, align 4
  %47 = getelementptr i8, ptr %18, i32 -12
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, -131073
  store i32 %49, ptr %47, align 4
  br label %54

50:                                               ; preds = %39
  %51 = getelementptr i8, ptr %18, i32 -12
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, 131072
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load ptr, ptr %4, align 4
  %56 = tail call i32 @usb_ep_queue(ptr noundef %55, ptr noundef %22, i32 noundef 2592) #9
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds %struct.uvc_device, ptr %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.uvc_device, ptr %59, i32 0, i32 3, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.usb_configuration, ptr %62, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.usb_gadget, ptr %65, i32 0, i32 11
  %67 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.2, ptr noundef %67, i32 noundef %56) #8
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.usb_ep, ptr %68, i32 0, i32 9
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %70, i32 0, i32 3
  %74 = load i8, ptr %73, align 1
  %75 = and i8 %74, 3
  %76 = icmp eq i8 %75, 2
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = tail call i32 @usb_ep_set_halt(ptr noundef %68) #9
  br label %79

79:                                               ; preds = %77, %72, %58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %27) #9
  tail call void @uvcg_queue_cancel(ptr noundef %3, i32 noundef 0) #9
  br label %87

80:                                               ; preds = %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %27) #9
  %81 = load i32, ptr %14, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %14, align 4
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr inbounds %struct.usb_ep, ptr %83, i32 0, i32 6
  %85 = load i8, ptr %84, align 1, !range !11
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %16

87:                                               ; preds = %80, %79, %30
  %88 = icmp eq ptr %22, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %87
  %90 = getelementptr i8, ptr %0, i32 76
  %91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %90) #9
  %92 = getelementptr i8, ptr %0, i32 68
  %93 = getelementptr i8, ptr %0, i32 72
  %94 = load ptr, ptr %93, align 4
  store ptr %18, ptr %93, align 4
  store ptr %92, ptr %18, align 4
  %95 = getelementptr i8, ptr %18, i32 4
  store ptr %94, ptr %95, align 4
  store volatile ptr %18, ptr %94, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %90, i32 noundef %91) #9
  br label %96

96:                                               ; preds = %89, %87, %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_queue_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_video_complete(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uvc_request, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uvc_video, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 0, label %22
    i32 -108, label %20
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.uvc_device, ptr %8, i32 0, i32 3
  %13 = getelementptr inbounds %struct.uvc_device, ptr %8, i32 0, i32 3, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_configuration, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  %19 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef %19, i32 noundef %10) #8
  br label %20

20:                                               ; preds = %11, %2
  %21 = phi i32 [ 0, %11 ], [ 1, %2 ]
  tail call void @uvcg_queue_cancel(ptr noundef %7, i32 noundef %21) #9
  br label %22

22:                                               ; preds = %20, %2
  %23 = getelementptr inbounds %struct.uvc_video, ptr %6, i32 0, i32 13
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #9
  %25 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 9
  %26 = getelementptr inbounds %struct.uvc_video, ptr %6, i32 0, i32 12
  %27 = getelementptr inbounds %struct.uvc_video, ptr %6, i32 0, i32 12, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %25, ptr %27, align 4
  store ptr %26, ptr %25, align 4
  %29 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 9, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %25, ptr %28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #9
  %30 = getelementptr inbounds %struct.uvc_device, ptr %8, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.uvc_video, ptr %6, i32 0, i32 2
  %35 = load ptr, ptr @system_wq, align 4
  %36 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %35, ptr noundef %34) #9
  br label %37

37:                                               ; preds = %33, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_video_encode_header(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr i8, ptr %0, i32 -84
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_configuration, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !14
  %10 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  %11 = load i64, ptr %10, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %11) #9
  %12 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i8
  %15 = or i8 %14, -128
  %16 = getelementptr i8, ptr %2, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.uvc_video, ptr %0, i32 0, i32 18, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = load i64, ptr %5, align 8
  %21 = icmp ne i64 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %25 = load i32, ptr %24, align 8
  %26 = sdiv i32 %25, 1000
  %27 = trunc i64 %20 to i32
  %28 = mul i32 %27, 1000000
  %29 = add i32 %26, %28
  %30 = mul i32 %29, 48
  %31 = or i8 %14, -124
  store i8 %31, ptr %16, align 1
  %32 = getelementptr i8, ptr %2, i32 2
  store i32 %30, ptr %32, align 1
  br label %33

33:                                               ; preds = %23, %4
  %34 = phi i8 [ %31, %23 ], [ %15, %4 ]
  %35 = phi i32 [ 6, %23 ], [ 2, %4 ]
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr inbounds %struct.usb_gadget, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %33
  %42 = call i32 @usb_gadget_frame_number(ptr noundef %36) #9
  call void @ktime_get_ts64(ptr noundef nonnull %5) #9
  %43 = load i64, ptr %5, align 8
  %44 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = sdiv i32 %45, 1000
  %47 = trunc i64 %43 to i32
  %48 = mul i32 %47, 1000000
  %49 = add i32 %48, %46
  %50 = mul i32 %49, 48
  %51 = load i8, ptr %16, align 1
  %52 = or i8 %51, 8
  store i8 %52, ptr %16, align 1
  %53 = getelementptr i8, ptr %2, i32 %35
  store i32 %50, ptr %53, align 1
  %54 = trunc i32 %42 to i16
  %55 = add nuw nsw i32 %35, 4
  %56 = getelementptr i8, ptr %2, i32 %55
  store i16 %54, ptr %56, align 1
  %57 = add nuw nsw i32 %35, 6
  br label %58

58:                                               ; preds = %41, %33
  %59 = phi i8 [ %52, %41 ], [ %34, %33 ]
  %60 = phi i32 [ %57, %41 ], [ %35, %33 ]
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %2, align 1
  %62 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 8
  %63 = load i32, ptr %62, align 8
  %64 = load i32, ptr %17, align 4
  %65 = sub i32 %63, %64
  %66 = sub i32 %3, %60
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %58
  %69 = or i8 %59, 2
  store i8 %69, ptr %16, align 1
  br label %70

70:                                               ; preds = %68, %58
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvcg_queue_next_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_frame_number(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvcg_queue_head(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2154970463, i64 2154970967, i64 2154970500, i64 2154970556, i64 2154970590, i64 2154970614, i64 2154970655, i64 2154970676, i64 2154970704, i64 2154970738}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
!12 = !{i32 2, i32 13}
!13 = !{i64 2152625273, i64 2152625765, i64 2152625310, i64 2152625366, i64 2152625400, i64 2152625424, i64 2152625465, i64 2152625486, i64 2152625514, i64 2152625548}
!14 = !{!"auto-init"}
