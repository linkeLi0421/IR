; ModuleID = '/llk/IR/drivers/media/usb/uvc/uvc_status.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_status.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uvc_device = type { ptr, ptr, i32, i32, i32, [32 x i8], ptr, %struct.mutex, i32, %struct.atomic_t, %struct.media_device, %struct.v4l2_device, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, [64 x i8], %struct.uvc_ctrl_work, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.uvc_ctrl_work = type { %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.uvc_control_status = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uvc_control = type { ptr, %struct.uvc_control_info, i8, i8, ptr, ptr }
%struct.uvc_control_info = type { %struct.list_head, [16 x i8], i8, i8, i16, i32 }
%struct.uvc_streaming_status = type { i8, i8, i8, [0 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"/button\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Non-zero status (%d) in status completion handler.\0A\00", align 1
@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Unknown status event type %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to resubmit status URB (%d).\0A\00", align 1
@uvc_event_control.attrs = internal unnamed_addr constant [5 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Invalid control status event received\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Control %u/%u %s change len %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Invalid streaming status event received\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Button (intf %u) %s len %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Stream %u error event %02x len %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_status_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %106, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @input_allocate_device() #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 22
  %11 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.usb_bus, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 1
  %16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %10, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %14, ptr noundef %15) #7
  %17 = tail call i32 @strlcat(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef 64) #7
  %18 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 5
  store ptr %18, ptr %6, align 8
  %19 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 1
  store ptr %10, ptr %19, align 4
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 3
  store i16 3, ptr %21, align 2
  %22 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 16, i32 7
  %23 = load i16, ptr %22, align 8
  %24 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 3, i32 1
  store i16 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 16, i32 8
  %26 = load i16, ptr %25, align 2
  %27 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 3, i32 2
  store i16 %26, ptr %27, align 2
  %28 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 16, i32 9
  %29 = load i16, ptr %28, align 4
  %30 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 3, i32 3
  store i16 %29, ptr %30, align 2
  %31 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 40, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 2
  store i32 %37, ptr %35, align 4
  %38 = getelementptr %struct.input_dev, ptr %6, i32 0, i32 6, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 1048576
  store i32 %40, ptr %38, align 4
  %41 = tail call i32 @input_register_device(ptr noundef nonnull %6) #7
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %8
  %44 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 21
  store ptr %6, ptr %44, align 8
  br label %46

45:                                               ; preds = %8
  tail call void @input_free_device(ptr noundef nonnull %6) #7
  br label %46

46:                                               ; preds = %45, %43, %5
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 16) #8
  %49 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 20
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %106, label %51

51:                                               ; preds = %46
  %52 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %53 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 19
  store ptr %52, ptr %53, align 8
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load ptr, ptr %49, align 4
  tail call void @kfree(ptr noundef %56) #7
  br label %106

57:                                               ; preds = %51
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 2
  %60 = load i8, ptr %59, align 2
  %61 = zext i8 %60 to i32
  %62 = load i32, ptr %58, align 8
  %63 = shl i32 %62, 8
  %64 = shl nuw nsw i32 %61, 15
  %65 = or i32 %64, %63
  %66 = or i32 %65, 1073741952
  %67 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %68 = load i8, ptr %67, align 2
  %69 = zext i8 %68 to i32
  %70 = icmp ugt i8 %68, 16
  br i1 %70, label %71, label %83

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = tail call i32 @llvm.ctlz.i32(i32 %69, i1 true) #7, !range !8
  %82 = xor i32 %81, 31
  br label %83

83:                                               ; preds = %80, %75, %71, %57
  %84 = phi i32 [ %82, %80 ], [ %69, %75 ], [ %69, %71 ], [ %69, %57 ]
  %85 = load ptr, ptr %49, align 4
  %86 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 8
  store ptr %58, ptr %86, align 4
  %87 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 10
  store i32 %66, ptr %87, align 4
  %88 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 14
  store ptr %85, ptr %88, align 4
  %89 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 19
  store i32 16, ptr %89, align 4
  %90 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 28
  store ptr @uvc_status_complete, ptr %90, align 4
  %91 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 27
  store ptr %0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 3
  %95 = icmp ugt i32 %93, 4
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %83
  %98 = tail call i32 @llvm.smax.i32(i32 %84, i32 1) #7
  %99 = tail call i32 @llvm.umin.i32(i32 %98, i32 16) #7
  %100 = add nsw i32 %99, -1
  %101 = shl nuw nsw i32 1, %100
  br label %102

102:                                              ; preds = %97, %83
  %103 = phi i32 [ %101, %97 ], [ %84, %83 ]
  %104 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 25
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 23
  store i32 -1, ptr %105, align 4
  br label %106

106:                                              ; preds = %102, %55, %46, %1
  %107 = phi i32 [ -12, %55 ], [ 0, %102 ], [ 0, %1 ], [ -12, %46 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_status_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %6 [
    i32 0, label %9
    i32 -2, label %174
    i32 -104, label %174
    i32 -108, label %174
    i32 -71, label %174
  ]

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef %5) #9
  br label %174

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %162

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 15
  switch i32 %18, label %155 [
    i32 1, label %19
    i32 2, label %105
  ]

19:                                               ; preds = %13
  %20 = icmp ult i32 %11, 6
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.uvc_control_status, ptr %15, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uvc_control_status, ptr %15, i32 0, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ugt i8 %27, 4
  br i1 %29, label %30, label %37

30:                                               ; preds = %25, %21, %19
  %31 = load i32, ptr @uvc_dbg_param, align 4
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %162, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %36, ptr noundef nonnull @.str.11) #9
  br label %162

37:                                               ; preds = %25
  %38 = load i32, ptr @uvc_dbg_param, align 4
  %39 = and i32 %38, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  %44 = getelementptr inbounds %struct.uvc_control_status, ptr %15, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.uvc_control_status, ptr %15, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr [5 x ptr], ptr @uvc_event_control.attrs, i32 0, i32 %28
  %51 = load ptr, ptr %50, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %43, ptr noundef nonnull @.str.12, i32 noundef %46, i32 noundef %49, ptr noundef %51, i32 noundef %11) #9
  br label %52

52:                                               ; preds = %41, %37
  %53 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %162, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.uvc_control_status, ptr %15, i32 0, i32 1
  %58 = getelementptr inbounds %struct.uvc_control_status, ptr %15, i32 0, i32 3
  br label %59

59:                                               ; preds = %95, %56
  %60 = phi ptr [ %54, %56 ], [ %96, %95 ]
  %61 = getelementptr i8, ptr %60, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %95, label %64

64:                                               ; preds = %59
  %65 = load i8, ptr %57, align 1
  %66 = zext i8 %65 to i16
  br label %67

67:                                               ; preds = %92, %64
  %68 = phi ptr [ %62, %64 ], [ %93, %92 ]
  %69 = getelementptr i8, ptr %68, i32 12
  %70 = load i16, ptr %69, align 4
  %71 = icmp eq i16 %70, %66
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load i8, ptr %58, align 1
  %74 = getelementptr i8, ptr %68, i32 340
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = getelementptr i8, ptr %68, i32 344
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %86, %77
  %81 = phi i32 [ %87, %86 ], [ 0, %77 ]
  %82 = phi ptr [ %88, %86 ], [ %79, %77 ]
  %83 = getelementptr inbounds %struct.uvc_control, ptr %82, i32 0, i32 1, i32 3
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, %73
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = add nuw i32 %81, 1
  %88 = getelementptr %struct.uvc_control, ptr %82, i32 1
  %89 = icmp eq i32 %87, %75
  br i1 %89, label %92, label %80

90:                                               ; preds = %80
  %91 = icmp eq ptr %82, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %90, %86, %72, %67
  %93 = load ptr, ptr %68, align 4
  %94 = icmp eq ptr %93, %61
  br i1 %94, label %95, label %67

95:                                               ; preds = %92, %59
  %96 = load ptr, ptr %60, align 4
  %97 = icmp eq ptr %96, %53
  br i1 %97, label %162, label %59

98:                                               ; preds = %90
  %99 = load i8, ptr %26, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %162

101:                                              ; preds = %98
  %102 = getelementptr i8, ptr %60, i32 -4
  %103 = getelementptr inbounds %struct.uvc_control_status, ptr %15, i32 0, i32 5
  %104 = tail call zeroext i1 @uvc_ctrl_status_event_async(ptr noundef %0, ptr noundef %102, ptr noundef nonnull %82, ptr noundef %103) #7
  br i1 %104, label %174, label %162

105:                                              ; preds = %13
  %106 = icmp ult i32 %11, 3
  br i1 %106, label %107, label %114

107:                                              ; preds = %105
  %108 = load i32, ptr @uvc_dbg_param, align 4
  %109 = and i32 %108, 512
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %162, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds %struct.usb_device, ptr %112, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %113, ptr noundef nonnull @.str.13) #9
  br label %162

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.uvc_streaming_status, ptr %15, i32 0, i32 2
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i8 %116, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %114
  %120 = icmp ult i32 %11, 4
  br i1 %120, label %162, label %121

121:                                              ; preds = %119
  %122 = load i32, ptr @uvc_dbg_param, align 4
  %123 = and i32 %122, 512
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %3, align 8
  %127 = getelementptr inbounds %struct.usb_device, ptr %126, i32 0, i32 15
  %128 = getelementptr inbounds %struct.uvc_streaming_status, ptr %15, i32 0, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = getelementptr inbounds %struct.uvc_streaming_status, ptr %15, i32 0, i32 3
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  %134 = select i1 %133, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %127, ptr noundef nonnull @.str.14, i32 noundef %130, ptr noundef nonnull %134, i32 noundef %11) #9
  br label %135

135:                                              ; preds = %125, %121
  %136 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 21
  %137 = load ptr, ptr %136, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %162, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.uvc_streaming_status, ptr %15, i32 0, i32 3
  %141 = load i8, ptr %140, align 1
  %142 = icmp ne i8 %141, 0
  %143 = zext i1 %142 to i32
  tail call void @input_event(ptr noundef nonnull %137, i32 noundef 1, i32 noundef 212, i32 noundef %143) #7
  %144 = load ptr, ptr %136, align 8
  tail call void @input_event(ptr noundef %144, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %162

145:                                              ; preds = %114
  %146 = load i32, ptr @uvc_dbg_param, align 4
  %147 = and i32 %146, 512
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %3, align 8
  %151 = getelementptr inbounds %struct.usb_device, ptr %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.uvc_streaming_status, ptr %15, i32 0, i32 1
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %151, ptr noundef nonnull @.str.17, i32 noundef %154, i32 noundef %117, i32 noundef %11) #9
  br label %162

155:                                              ; preds = %13
  %156 = load i32, ptr @uvc_dbg_param, align 4
  %157 = and i32 %156, 512
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr %3, align 8
  %161 = getelementptr inbounds %struct.usb_device, ptr %160, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %161, ptr noundef nonnull @.str.4, i32 noundef %17) #9
  br label %162

162:                                              ; preds = %159, %155, %149, %145, %139, %135, %119, %111, %107, %101, %98, %95, %52, %34, %30, %9
  %163 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 18
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %164, i32 0, i32 5
  %166 = load i8, ptr %165, align 2
  %167 = zext i8 %166 to i32
  %168 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 25
  store i32 %167, ptr %168, align 4
  %169 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #7
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %162
  %172 = load ptr, ptr %3, align 8
  %173 = getelementptr inbounds %struct.usb_device, ptr %172, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.5, i32 noundef %169) #9
  br label %174

174:                                              ; preds = %171, %162, %101, %6, %1, %1, %1, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_status_unregister(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_kill_urb(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @input_unregister_device(ptr noundef nonnull %5) #7
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_status_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_free_urb(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_status_start(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @usb_submit_urb(ptr noundef nonnull %4, i32 noundef %1) #7
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_status_stop(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_kill_urb(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uvc_ctrl_status_event_async(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
