; ModuleID = '/llk/IR/drivers/usb/core/endpoint.c_pt.bc'
source_filename = "../drivers/usb/core/endpoint.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ep_device = type { ptr, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"usb_endpoint\00", align 1
@usb_ep_device_type = dso_local global %struct.device_type { ptr @.str, ptr null, ptr null, ptr null, ptr @ep_device_release, ptr null }, align 4
@ep_dev_groups = internal global [2 x ptr] [ptr @ep_dev_attr_grp, ptr null], align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ep_%02x\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ep_dev_attr_grp = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ep_dev_attrs, ptr null }, align 4
@ep_dev_attrs = internal global [9 x ptr] [ptr @dev_attr_bLength, ptr @dev_attr_bEndpointAddress, ptr @dev_attr_bmAttributes, ptr @dev_attr_bInterval, ptr @dev_attr_wMaxPacketSize, ptr @dev_attr_interval, ptr @dev_attr_type, ptr @dev_attr_direction, ptr null], align 4
@dev_attr_bLength = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @bLength_show, ptr null }, align 4
@dev_attr_bEndpointAddress = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @bEndpointAddress_show, ptr null }, align 4
@dev_attr_bmAttributes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @bmAttributes_show, ptr null }, align 4
@dev_attr_bInterval = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @bInterval_show, ptr null }, align 4
@dev_attr_wMaxPacketSize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @wMaxPacketSize_show, ptr null }, align 4
@dev_attr_interval = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @interval_show, ptr null }, align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @type_show, ptr null }, align 4
@dev_attr_direction = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @direction_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"bLength\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"bEndpointAddress\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"bmAttributes\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"bInterval\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"wMaxPacketSize\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%d%cs\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Interrupt\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@switch.table.type_show = private unnamed_addr constant [4 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ep_device_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @kfree(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_create_ep_devs(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 480) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  store ptr %1, ptr %5, align 8
  %8 = getelementptr inbounds %struct.ep_device, ptr %5, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ep_device, ptr %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.ep_device, ptr %5, i32 0, i32 2, i32 32
  store ptr @ep_dev_groups, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ep_device, ptr %5, i32 0, i32 2, i32 4
  store ptr @usb_ep_device_type, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ep_device, ptr %5, i32 0, i32 2, i32 1
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef %15) #5
  %17 = tail call i32 @device_register(ptr noundef %9) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.ep_device, ptr %5, i32 0, i32 2, i32 11, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = or i16 %21, 2
  store i16 %25, ptr %20, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 6
  store ptr %5, ptr %27, align 4
  br label %29

28:                                               ; preds = %7
  tail call void @put_device(ptr noundef %9) #5
  br label %29

29:                                               ; preds = %28, %26, %3
  %30 = phi i32 [ 0, %26 ], [ %17, %28 ], [ -12, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_remove_ep_devs(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_host_endpoint, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ep_device, ptr %3, i32 0, i32 2
  tail call void @device_unregister(ptr noundef %6) #5
  store ptr null, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bLength_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bEndpointAddress_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bmAttributes_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bInterval_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wMaxPacketSize_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 4
  %7 = load i16, ptr %6, align 1
  %8 = and i16 %7, 2047
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interval_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @usb_decode_interval(ptr noundef %5, i32 noundef %9) #5
  %11 = freeze i32 %10
  %12 = udiv i32 %11, 1000
  %13 = mul i32 %12, 1000
  %14 = sub i32 %11, %13
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 %12, i32 %10
  %17 = select i1 %15, i32 109, i32 117
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %16, i32 noundef %17)
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_decode_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 3
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds [4 x ptr], ptr @switch.table.type_show, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef nonnull %11)
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @direction_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 3
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp sgt i8 %12, -1
  %14 = select i1 %13, ptr @.str.21, ptr @.str.20
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi ptr [ @.str.19, %3 ], [ %14, %10 ]
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef nonnull %16)
  ret i32 %17
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
