; ModuleID = '/llk/IR/drivers/usb/isp1760/isp1760-udc.c_pt.bc'
source_filename = "../drivers/usb/isp1760/isp1760-udc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.isp1760_device = type { ptr, i32, ptr, %struct.isp1760_hcd, %struct.isp1760_udc }
%struct.isp1760_hcd = type { ptr, ptr, ptr, [78 x ptr], i8, ptr, %struct.spinlock, ptr, i32, ptr, i32, [56 x %struct.isp1760_memory_chunk], [3 x %struct.list_head], i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.isp1760_memory_chunk = type { i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.isp1760_udc = type { ptr, i32, ptr, ptr, [40 x ptr], ptr, %struct.usb_gadget, %struct.spinlock, %struct.timer_list, [15 x %struct.isp1760_ep], i32, i8, i16, i8, i8, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.isp1760_ep = type { ptr, %struct.usb_ep, %struct.list_head, i32, i32, [7 x i8], ptr, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.65 = type { [2 x i32] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.isp1760_request = type { %struct.usb_request, %struct.list_head, ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@.str = private unnamed_addr constant [9 x i8] c"%s (udc)\00", align 1
@isp1760_udc_ops = internal constant %struct.usb_gadget_ops { ptr @isp1760_udc_get_frame, ptr @isp1760_udc_wakeup, ptr @isp1760_udc_set_selfpowered, ptr null, ptr null, ptr @isp1760_udc_pullup, ptr null, ptr null, ptr @isp1760_udc_start, ptr @isp1760_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"isp1761_udc\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.2 = private unnamed_addr constant [42 x i8] c"udc: scratch test failed (0x%04x/0x%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"udc: invalid chip ID 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"invalid length %u for setup packet\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Invalid gadget driver\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"UDC already has a gadget driver\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ep%u%s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@isp1760_ep_ops = internal constant %struct.usb_ep_ops { ptr @isp1760_ep_enable, ptr @isp1760_ep_disable, ptr null, ptr @isp1760_ep_alloc_request, ptr @isp1760_ep_free_request, ptr @isp1760_ep_queue, ptr @isp1760_ep_dequeue, ptr @isp1760_ep_set_halt, ptr @isp1760_ep_set_wedge, ptr null, ptr @isp1760_ep_fifo_flush }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"drivers/usb/isp1760/isp1760-udc.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @isp1760_udc_register(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 1
  store i32 -1, ptr %8, align 4
  store ptr %0, ptr %7, align 8
  %9 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 7
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 8
  tail call void @init_timer_key(ptr noundef %10, ptr noundef nonnull @isp1760_udc_vbus_poll, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %11 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 14
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 524, i32 12
  %15 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 4, i32 39
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_field_update_bits_base(ptr noundef %16, i32 noundef -1, i32 noundef 47806, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %18 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 4, i32 37
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @regmap_field_read(ptr noundef %19, ptr noundef nonnull %6) #9
  %21 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %22 = shl i32 %21, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %23 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 4, i32 38
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_field_read(ptr noundef %24, ptr noundef nonnull %5) #9
  %26 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %27 = or i32 %26, %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %28 = load ptr, ptr %15, align 4
  %29 = call i32 @regmap_field_read(ptr noundef %28, ptr noundef nonnull %4) #9
  %30 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 47806
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load ptr, ptr %7, align 8
  %35 = load ptr, ptr %34, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.2, i32 noundef %31, i32 noundef %27) #10
  br label %128

36:                                               ; preds = %3
  switch i32 %27, label %37 [
    i32 1532704, label %40
    i32 1409552, label %40
    i32 71042, label %40
  ]

37:                                               ; preds = %36
  %38 = load ptr, ptr %7, align 8
  %39 = load ptr, ptr %38, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.3, i32 noundef %27) #10
  br label %128

40:                                               ; preds = %36, %36, %36
  %41 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 4, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 @regmap_field_update_bits_base(ptr noundef %42, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %44 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @regmap_write(ptr noundef %45, i32 noundef %14, i32 noundef 0) #9
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load ptr, ptr %47, align 4
  br label %53

53:                                               ; preds = %51, %40
  %54 = phi ptr [ %52, %51 ], [ %49, %40 ]
  %55 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %54) #9
  %56 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 2
  store ptr %55, ptr %56, align 8
  %57 = icmp eq ptr %55, null
  br i1 %57, label %128, label %58

58:                                               ; preds = %53
  %59 = or i32 %2, 128
  %60 = call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @isp1760_udc_irq, ptr noundef null, i32 noundef %59, ptr noundef nonnull %55, ptr noundef %7) #9
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %120, label %62

62:                                               ; preds = %58
  store i32 %1, ptr %8, align 4
  %63 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6, i32 2
  store ptr @isp1760_udc_ops, ptr %63, align 4
  %64 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6, i32 5
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6, i32 6
  store i32 3, ptr %65, align 8
  %66 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6, i32 10
  store ptr @.str.1, ptr %66, align 8
  %67 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6, i32 4
  store volatile ptr %67, ptr %67, align 4
  %68 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6, i32 4, i32 1
  store ptr %67, ptr %68, align 4
  %69 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9
  store ptr %7, ptr %69, align 4
  %70 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 2
  store volatile ptr %70, ptr %70, align 4
  %71 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 2, i32 1
  store ptr %70, ptr %71, align 4
  %72 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 3
  store i32 0, ptr %72, align 4
  %73 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 6
  store ptr null, ptr %73, align 4
  %74 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 5
  %75 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %74, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.10) #9
  %76 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 1, i32 2
  store ptr @isp1760_ep_ops, ptr %76, align 4
  %77 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 1, i32 1
  store ptr %74, ptr %77, align 4
  %78 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 1
  %79 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6, i32 3
  call void @usb_ep_set_maxpacket_limit(ptr noundef %78, i32 noundef 64) #9
  %80 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 1, i32 4
  %81 = load i8, ptr %80, align 4
  %82 = or i8 %81, 49
  %83 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 4
  store i32 64, ptr %83, align 4
  store ptr %78, ptr %79, align 8
  store i8 %82, ptr %80, align 4
  br label %84

84:                                               ; preds = %84, %62
  %85 = phi i32 [ 1, %62 ], [ %87, %84 ]
  %86 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85
  %87 = add nuw nsw i32 %85, 1
  %88 = lshr i32 %87, 1
  %89 = and i32 %85, 1
  %90 = icmp eq i32 %89, 0
  store ptr %7, ptr %86, align 4
  %91 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 2
  store volatile ptr %91, ptr %91, align 4
  %92 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 2, i32 1
  store ptr %91, ptr %92, align 4
  %93 = shl nuw nsw i32 %89, 7
  %94 = xor i32 %93, 128
  %95 = or i32 %94, %88
  %96 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 3
  store i32 %95, ptr %96, align 4
  %97 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 6
  store ptr null, ptr %97, align 4
  %98 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 5
  %99 = select i1 %90, ptr @.str.8, ptr @.str.9
  %100 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %98, ptr noundef nonnull @.str.7, i32 noundef %88, ptr noundef nonnull %99) #9
  %101 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 1, i32 2
  store ptr @isp1760_ep_ops, ptr %101, align 4
  %102 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 1, i32 1
  store ptr %98, ptr %102, align 4
  %103 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 1
  call void @usb_ep_set_maxpacket_limit(ptr noundef %103, i32 noundef 512) #9
  %104 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 1, i32 4
  %105 = load i8, ptr %104, align 4
  %106 = or i8 %105, 14
  store i8 %106, ptr %104, align 4
  %107 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 4
  store i32 0, ptr %107, align 4
  %108 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 1, i32 3
  %109 = load ptr, ptr %68, align 4
  store ptr %108, ptr %68, align 4
  store ptr %67, ptr %108, align 4
  %110 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 9, i32 %85, i32 1, i32 3, i32 1
  store ptr %109, ptr %110, align 4
  store volatile ptr %108, ptr %109, align 4
  %111 = load i8, ptr %104, align 4
  %112 = select i1 %90, i8 16, i8 32
  %113 = or i8 %111, %112
  store i8 %113, ptr %104, align 4
  %114 = icmp eq i32 %87, 15
  br i1 %114, label %115, label %84, !llvm.loop !10

115:                                              ; preds = %84
  %116 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6
  %117 = load ptr, ptr %0, align 8
  %118 = call i32 @usb_add_gadget_udc(ptr noundef %117, ptr noundef %116) #9
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115, %58
  %121 = phi i32 [ %60, %58 ], [ %118, %115 ]
  %122 = load i32, ptr %8, align 4
  %123 = icmp sgt i32 %122, -1
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = call ptr @free_irq(i32 noundef %122, ptr noundef %7) #9
  br label %126

126:                                              ; preds = %124, %120
  %127 = load ptr, ptr %56, align 8
  call void @kfree(ptr noundef %127) #9
  br label %128

128:                                              ; preds = %126, %115, %53, %37, %33
  %129 = phi i32 [ %121, %126 ], [ -12, %53 ], [ 0, %115 ], [ -19, %33 ], [ -19, %37 ]
  ret i32 %129
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp1760_udc_vbus_poll(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !9
  %5 = getelementptr i8, ptr %0, i32 -732
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %2) #9
  %8 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -572
  %12 = getelementptr i8, ptr %0, i32 -520
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %33, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 -536
  store i32 0, ptr %16, align 4
  call void @usb_gadget_set_state(ptr noundef %11, i32 noundef 1) #9
  %17 = getelementptr i8, ptr %0, i32 -580
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.usb_gadget_driver, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  call void %20(ptr noundef %11) #9
  br label %23

23:                                               ; preds = %22, %15
  %24 = call i32 @del_timer(ptr noundef %0) #9
  br label %33

25:                                               ; preds = %1
  %26 = getelementptr i8, ptr %0, i32 -520
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = add i32 %30, 50
  %32 = call i32 @mod_timer(ptr noundef %0, i32 noundef %31) #9
  br label %33

33:                                               ; preds = %29, %25, %23, %10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_udc_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.anon.65, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 14
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %27, label %18

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 0, ptr %12, align 4, !annotation !9
  %19 = call i32 @regmap_read(ptr noundef %17, i32 noundef 24, ptr noundef nonnull %12) #9
  %20 = load i32, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  %21 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4, !annotation !9
  %22 = call i32 @regmap_read(ptr noundef %21, i32 noundef 20, ptr noundef nonnull %11) #9
  %23 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  %24 = and i32 %23, %20
  %25 = load ptr, ptr %16, align 4
  %26 = call i32 @regmap_write(ptr noundef %25, i32 noundef 24, i32 noundef %24) #9
  br label %36

27:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4, !annotation !9
  %28 = call i32 @regmap_read(ptr noundef %17, i32 noundef 536, ptr noundef nonnull %10) #9
  %29 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  %30 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !annotation !9
  %31 = call i32 @regmap_read(ptr noundef %30, i32 noundef 532, ptr noundef nonnull %9) #9
  %32 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  %33 = and i32 %32, %29
  %34 = load ptr, ptr %16, align 4
  %35 = call i32 @regmap_write(ptr noundef %34, i32 noundef 536, i32 noundef %33) #9
  br label %36

36:                                               ; preds = %27, %18
  %37 = phi i32 [ %24, %18 ], [ %33, %27 ]
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %41) #9
  %42 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6
  call void @usb_gadget_set_state(ptr noundef %42, i32 noundef 2) #9
  %43 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 8
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = add i32 %44, 50
  %46 = call i32 @mod_timer(ptr noundef %43, i32 noundef %45) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %47 = load i16, ptr %41, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %41, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %49

49:                                               ; preds = %40, %36
  %50 = and i32 %37, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %77, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  %54 = call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #9
  %55 = load i8, ptr %13, align 1, !range !8
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i32 528, i32 16
  %58 = select i1 %56, i32 532, i32 20
  %59 = load ptr, ptr %16, align 4
  %60 = call i32 @regmap_write(ptr noundef %59, i32 noundef %57, i32 noundef 84) #9
  %61 = load ptr, ptr %16, align 4
  %62 = call i32 @regmap_write(ptr noundef %61, i32 noundef %58, i32 noundef 67108281) #9
  %63 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 13
  %64 = load i8, ptr %63, align 8, !range !8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %52
  %67 = load ptr, ptr %1, align 8
  call void @isp1760_set_pullup(ptr noundef %67, i1 noundef zeroext true) #9
  br label %68

68:                                               ; preds = %66, %52
  %69 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 @regmap_field_update_bits_base(ptr noundef %70, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %72 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 10
  store i32 0, ptr %72, align 8
  %73 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6
  %74 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6, i32 5
  store i32 2, ptr %74, align 4
  %75 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 5
  %76 = load ptr, ptr %75, align 8
  call void @usb_gadget_udc_reset(ptr noundef %73, ptr noundef %76) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #9
  br label %77

77:                                               ; preds = %68, %49
  br label %78

78:                                               ; preds = %223, %77
  %79 = phi i32 [ %224, %223 ], [ 0, %77 ]
  %80 = shl nuw nsw i32 %79, 1
  %81 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %80
  %82 = shl i32 2048, %80
  %83 = and i32 %82, %37
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %182, label %85

85:                                               ; preds = %78
  %86 = load ptr, ptr %81, align 4
  %87 = getelementptr inbounds %struct.isp1760_udc, ptr %86, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %87) #9
  %88 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %80, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.isp1760_udc, ptr %86, i32 0, i32 10
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %96 = load i16, ptr %87, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %87, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %182

98:                                               ; preds = %91
  %99 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %80, i32 2
  %100 = load volatile ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, %99
  br i1 %101, label %106, label %123

102:                                              ; preds = %85
  %103 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %80, i32 2
  %104 = load volatile ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %120, label %123

106:                                              ; preds = %98
  %107 = load ptr, ptr %81, align 4
  %108 = getelementptr %struct.isp1760_udc, ptr %107, i32 0, i32 4, i32 25
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 @regmap_field_update_bits_base(ptr noundef %109, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %111 = getelementptr %struct.isp1760_udc, ptr %107, i32 0, i32 4, i32 24
  %112 = load ptr, ptr %111, align 4
  %113 = call i32 @regmap_field_update_bits_base(ptr noundef %112, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %114 = getelementptr %struct.isp1760_udc, ptr %107, i32 0, i32 4, i32 29
  %115 = load ptr, ptr %114, align 4
  %116 = call i32 @regmap_field_update_bits_base(ptr noundef %115, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %117 = getelementptr inbounds %struct.isp1760_udc, ptr %107, i32 0, i32 10
  store i32 0, ptr %117, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %118 = load i16, ptr %87, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %87, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %182

120:                                              ; preds = %102
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %121 = load i16, ptr %87, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %87, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %182

123:                                              ; preds = %102, %98
  %124 = phi ptr [ %104, %102 ], [ %100, %98 ]
  %125 = phi ptr [ %103, %102 ], [ %99, %98 ]
  %126 = getelementptr i8, ptr %124, i32 -56
  %127 = getelementptr i8, ptr %124, i32 12
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr i8, ptr %124, i32 -4
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, %128
  store i32 %131, ptr %129, align 4
  %132 = getelementptr i8, ptr %124, i32 -52
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %123
  %136 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %80, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = urem i32 %131, %137
  %139 = icmp ne i32 %138, 0
  %140 = icmp eq i32 %128, 0
  %141 = select i1 %139, i1 true, i1 %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %135
  %143 = getelementptr i8, ptr %124, i32 -32
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 262144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %142, %135
  %148 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = load ptr, ptr %124, align 4
  %151 = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  store ptr %149, ptr %151, align 4
  store volatile ptr %150, ptr %149, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %124, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %148, align 4
  %152 = load i32, ptr %88, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %147
  %155 = load ptr, ptr %81, align 4
  %156 = getelementptr %struct.isp1760_udc, ptr %155, i32 0, i32 4, i32 25
  %157 = load ptr, ptr %156, align 4
  %158 = call i32 @regmap_field_update_bits_base(ptr noundef %157, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %159 = getelementptr %struct.isp1760_udc, ptr %155, i32 0, i32 4, i32 24
  %160 = load ptr, ptr %159, align 4
  %161 = call i32 @regmap_field_update_bits_base(ptr noundef %160, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %162 = getelementptr %struct.isp1760_udc, ptr %155, i32 0, i32 4, i32 29
  %163 = load ptr, ptr %162, align 4
  %164 = call i32 @regmap_field_update_bits_base(ptr noundef %163, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %165 = getelementptr inbounds %struct.isp1760_udc, ptr %155, i32 0, i32 10
  store i32 0, ptr %165, align 8
  br label %166

166:                                              ; preds = %154, %147
  %167 = load volatile ptr, ptr %125, align 4
  %168 = icmp eq ptr %167, %125
  br i1 %168, label %176, label %169

169:                                              ; preds = %166
  %170 = getelementptr i8, ptr %167, i32 -56
  br label %171

171:                                              ; preds = %169, %142, %123
  %172 = phi ptr [ %170, %169 ], [ %126, %142 ], [ %126, %123 ]
  %173 = phi ptr [ %126, %169 ], [ null, %142 ], [ null, %123 ]
  %174 = icmp eq ptr %172, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  call fastcc void @isp1760_udc_transmit(ptr noundef %81, ptr noundef nonnull %172) #9
  br label %176

176:                                              ; preds = %175, %171, %166
  %177 = phi ptr [ %173, %175 ], [ %173, %171 ], [ %126, %166 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %178 = load i16, ptr %87, align 4
  %179 = add i16 %178, 1
  store i16 %179, ptr %87, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %180 = icmp eq ptr %177, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %176
  call fastcc void @isp1760_udc_request_complete(ptr noundef %81, ptr noundef nonnull %177, i32 noundef 0) #9
  br label %182

182:                                              ; preds = %181, %176, %120, %106, %95, %78
  %183 = shl i32 1024, %80
  %184 = and i32 %183, %37
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %223, label %186

186:                                              ; preds = %182
  %187 = icmp ne i32 %79, 0
  %188 = sext i1 %187 to i32
  %189 = getelementptr %struct.isp1760_ep, ptr %81, i32 %188
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.isp1760_udc, ptr %190, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %191) #9
  %192 = getelementptr %struct.isp1760_ep, ptr %81, i32 %188, i32 3
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.isp1760_udc, ptr %190, i32 0, i32 10
  %197 = load i32, ptr %196, align 8
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %209, label %199

199:                                              ; preds = %195
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %200 = load i16, ptr %191, align 4
  %201 = add i16 %200, 1
  store i16 %201, ptr %191, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %223

202:                                              ; preds = %186
  %203 = getelementptr %struct.isp1760_ep, ptr %81, i32 %188, i32 6
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %207 = load i16, ptr %191, align 4
  %208 = add i16 %207, 1
  store i16 %208, ptr %191, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %223

209:                                              ; preds = %202, %195
  %210 = getelementptr %struct.isp1760_ep, ptr %81, i32 %188, i32 2
  %211 = load volatile ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, %210
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = getelementptr %struct.isp1760_ep, ptr %81, i32 %188, i32 7
  store i8 1, ptr %214, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %215 = load i16, ptr %191, align 4
  %216 = add i16 %215, 1
  store i16 %216, ptr %191, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %223

217:                                              ; preds = %209
  %218 = getelementptr i8, ptr %211, i32 -56
  %219 = call fastcc zeroext i1 @isp1760_udc_receive(ptr noundef %189, ptr noundef %218) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %220 = load i16, ptr %191, align 4
  %221 = add i16 %220, 1
  store i16 %221, ptr %191, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br i1 %219, label %222, label %223

222:                                              ; preds = %217
  call fastcc void @isp1760_udc_request_complete(ptr noundef %189, ptr noundef %218, i32 noundef 0) #9
  br label %223

223:                                              ; preds = %222, %217, %213, %206, %199, %182
  %224 = add nuw nsw i32 %79, 1
  %225 = icmp eq i32 %224, 8
  br i1 %225, label %226, label %78

226:                                              ; preds = %223
  %227 = and i32 %37, 256
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %646, label %229

229:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store i64 0, ptr %8, align 8, !annotation !9
  %230 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %230) #9
  %231 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 4
  %232 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 23
  %233 = load ptr, ptr %232, align 4
  %234 = call i32 @regmap_field_update_bits_base(ptr noundef %233, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !9
  %235 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 31
  %236 = load ptr, ptr %235, align 4
  %237 = call i32 @regmap_field_read(ptr noundef %236, ptr noundef nonnull %7) #9
  %238 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %239 = icmp eq i32 %238, 8
  br i1 %239, label %246, label %240

240:                                              ; preds = %229
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %241 = load i16, ptr %230, align 4
  %242 = add i16 %241, 1
  store i16 %242, ptr %230, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %243 = load ptr, ptr %1, align 8
  %244 = load ptr, ptr %243, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.4, i32 noundef %238) #10
  %245 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 9
  call fastcc void @isp1760_udc_ctrl_send_stall(ptr noundef %245) #9
  br label %645

246:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %247 = load ptr, ptr %16, align 4
  %248 = call i32 @regmap_raw_read(ptr noundef %247, i32 noundef 544, ptr noundef nonnull %6, i32 noundef 4) #9
  %249 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  store i32 %249, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %250 = load ptr, ptr %16, align 4
  %251 = call i32 @regmap_raw_read(ptr noundef %250, i32 noundef 544, ptr noundef nonnull %5, i32 noundef 4) #9
  %252 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %253 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1
  store i32 %252, ptr %253, align 4
  %254 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 10
  %255 = load i32, ptr %254, align 8
  %256 = icmp eq i32 %255, 0
  %257 = trunc i32 %252 to i16
  %258 = lshr i32 %249, 16
  %259 = trunc i32 %258 to i16
  %260 = trunc i32 %249 to i8
  %261 = lshr i32 %249, 8
  %262 = trunc i32 %261 to i8
  %263 = lshr i32 %252, 16
  %264 = trunc i32 %263 to i16
  br i1 %256, label %268, label %265

265:                                              ; preds = %246
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %266 = load i16, ptr %230, align 4
  %267 = add i16 %266, 1
  store i16 %267, ptr %230, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %645

268:                                              ; preds = %246
  %269 = icmp eq i16 %264, 0
  %270 = icmp sgt i8 %260, -1
  %271 = select i1 %270, i32 2, i32 1
  %272 = select i1 %269, i32 3, i32 %271
  store i32 %272, ptr %254, align 8
  %273 = and i8 %260, -128
  %274 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 11
  store i8 %273, ptr %274, align 4
  %275 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 12
  store i16 %264, ptr %275, align 2
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %276 = load i16, ptr %230, align 4
  %277 = add i16 %276, 1
  store i16 %277, ptr %230, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %278 = and i8 %260, 96
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %632

280:                                              ; preds = %268
  switch i8 %262, label %624 [
    i8 0, label %281
    i8 1, label %379
    i8 3, label %479
    i8 5, label %572
    i8 9, label %604
  ]

281:                                              ; preds = %280
  %282 = icmp eq i16 %264, 2
  %283 = icmp eq i16 %259, 0
  %284 = select i1 %282, i1 %283, i1 false
  br i1 %284, label %285, label %643

285:                                              ; preds = %281
  switch i8 %260, label %643 [
    i8 -128, label %286
    i8 -127, label %364
    i8 -126, label %290
  ]

286:                                              ; preds = %285
  %287 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 15
  %288 = load i32, ptr %287, align 4
  %289 = trunc i32 %288 to i16
  br label %364

290:                                              ; preds = %285
  %291 = and i32 %252, 65535
  %292 = icmp eq i16 %257, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %290
  %294 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 1, i32 3
  %295 = load i32, ptr %294, align 8
  %296 = icmp eq i32 %295, %291
  br i1 %296, label %299, label %305

297:                                              ; preds = %290
  %298 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 9
  br label %357

299:                                              ; preds = %353, %349, %345, %341, %337, %333, %329, %325, %321, %317, %313, %309, %305, %293
  %300 = phi i32 [ 1, %293 ], [ 2, %305 ], [ 3, %309 ], [ 4, %313 ], [ 5, %317 ], [ 6, %321 ], [ 7, %325 ], [ 8, %329 ], [ 9, %333 ], [ 10, %337 ], [ 11, %341 ], [ 12, %345 ], [ 13, %349 ], [ 14, %353 ]
  %301 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %300
  %302 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %300, i32 6
  %303 = load ptr, ptr %302, align 8
  %304 = icmp eq ptr %303, null
  br i1 %304, label %643, label %357

305:                                              ; preds = %293
  %306 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 2, i32 3
  %307 = load i32, ptr %306, align 8
  %308 = icmp eq i32 %307, %291
  br i1 %308, label %299, label %309

309:                                              ; preds = %305
  %310 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 3, i32 3
  %311 = load i32, ptr %310, align 8
  %312 = icmp eq i32 %311, %291
  br i1 %312, label %299, label %313

313:                                              ; preds = %309
  %314 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 4, i32 3
  %315 = load i32, ptr %314, align 8
  %316 = icmp eq i32 %315, %291
  br i1 %316, label %299, label %317

317:                                              ; preds = %313
  %318 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 5, i32 3
  %319 = load i32, ptr %318, align 8
  %320 = icmp eq i32 %319, %291
  br i1 %320, label %299, label %321

321:                                              ; preds = %317
  %322 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 6, i32 3
  %323 = load i32, ptr %322, align 8
  %324 = icmp eq i32 %323, %291
  br i1 %324, label %299, label %325

325:                                              ; preds = %321
  %326 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 7, i32 3
  %327 = load i32, ptr %326, align 8
  %328 = icmp eq i32 %327, %291
  br i1 %328, label %299, label %329

329:                                              ; preds = %325
  %330 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 8, i32 3
  %331 = load i32, ptr %330, align 8
  %332 = icmp eq i32 %331, %291
  br i1 %332, label %299, label %333

333:                                              ; preds = %329
  %334 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 9, i32 3
  %335 = load i32, ptr %334, align 8
  %336 = icmp eq i32 %335, %291
  br i1 %336, label %299, label %337

337:                                              ; preds = %333
  %338 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 10, i32 3
  %339 = load i32, ptr %338, align 8
  %340 = icmp eq i32 %339, %291
  br i1 %340, label %299, label %341

341:                                              ; preds = %337
  %342 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 11, i32 3
  %343 = load i32, ptr %342, align 8
  %344 = icmp eq i32 %343, %291
  br i1 %344, label %299, label %345

345:                                              ; preds = %341
  %346 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 12, i32 3
  %347 = load i32, ptr %346, align 8
  %348 = icmp eq i32 %347, %291
  br i1 %348, label %299, label %349

349:                                              ; preds = %345
  %350 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 13, i32 3
  %351 = load i32, ptr %350, align 8
  %352 = icmp eq i32 %351, %291
  br i1 %352, label %299, label %353

353:                                              ; preds = %349
  %354 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 14, i32 3
  %355 = load i32, ptr %354, align 8
  %356 = icmp eq i32 %355, %291
  br i1 %356, label %299, label %643

357:                                              ; preds = %299, %297
  %358 = phi ptr [ %298, %297 ], [ %301, %299 ]
  %359 = icmp eq ptr %358, null
  br i1 %359, label %643, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.isp1760_ep, ptr %358, i32 0, i32 8
  %362 = load i8, ptr %361, align 1, !range !8
  %363 = zext i8 %362 to i16
  br label %364

364:                                              ; preds = %360, %286, %285
  %365 = phi i16 [ %289, %286 ], [ 0, %285 ], [ %363, %360 ]
  %366 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 25
  %367 = load ptr, ptr %366, align 4
  %368 = call i32 @regmap_field_update_bits_base(ptr noundef %367, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %369 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 24
  %370 = load ptr, ptr %369, align 4
  %371 = call i32 @regmap_field_update_bits_base(ptr noundef %370, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %372 = load ptr, ptr %235, align 4
  %373 = call i32 @regmap_field_update_bits_base(ptr noundef %372, i32 noundef -1, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 %365, ptr %4, align 2
  %374 = load ptr, ptr %16, align 4
  %375 = call i32 @regmap_raw_write(ptr noundef %374, i32 noundef 544, ptr noundef nonnull %4, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %376 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 28
  %377 = load ptr, ptr %376, align 4
  %378 = call i32 @regmap_field_update_bits_base(ptr noundef %377, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %645

379:                                              ; preds = %280
  %380 = icmp eq i8 %260, 2
  %381 = icmp eq i16 %259, 0
  %382 = select i1 %380, i1 %269, i1 false
  %383 = select i1 %382, i1 %381, i1 false
  br i1 %383, label %384, label %643

384:                                              ; preds = %379
  %385 = and i32 %252, 65535
  %386 = icmp eq i16 %257, 0
  br i1 %386, label %391, label %387

387:                                              ; preds = %384
  %388 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 1, i32 3
  %389 = load i32, ptr %388, align 8
  %390 = icmp eq i32 %389, %385
  br i1 %390, label %393, label %399

391:                                              ; preds = %384
  %392 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 9
  br label %451

393:                                              ; preds = %447, %443, %439, %435, %431, %427, %423, %419, %415, %411, %407, %403, %399, %387
  %394 = phi i32 [ 1, %387 ], [ 2, %399 ], [ 3, %403 ], [ 4, %407 ], [ 5, %411 ], [ 6, %415 ], [ 7, %419 ], [ 8, %423 ], [ 9, %427 ], [ 10, %431 ], [ 11, %435 ], [ 12, %439 ], [ 13, %443 ], [ 14, %447 ]
  %395 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %394
  %396 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %394, i32 6
  %397 = load ptr, ptr %396, align 8
  %398 = icmp eq ptr %397, null
  br i1 %398, label %643, label %451

399:                                              ; preds = %387
  %400 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 2, i32 3
  %401 = load i32, ptr %400, align 8
  %402 = icmp eq i32 %401, %385
  br i1 %402, label %393, label %403

403:                                              ; preds = %399
  %404 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 3, i32 3
  %405 = load i32, ptr %404, align 8
  %406 = icmp eq i32 %405, %385
  br i1 %406, label %393, label %407

407:                                              ; preds = %403
  %408 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 4, i32 3
  %409 = load i32, ptr %408, align 8
  %410 = icmp eq i32 %409, %385
  br i1 %410, label %393, label %411

411:                                              ; preds = %407
  %412 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 5, i32 3
  %413 = load i32, ptr %412, align 8
  %414 = icmp eq i32 %413, %385
  br i1 %414, label %393, label %415

415:                                              ; preds = %411
  %416 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 6, i32 3
  %417 = load i32, ptr %416, align 8
  %418 = icmp eq i32 %417, %385
  br i1 %418, label %393, label %419

419:                                              ; preds = %415
  %420 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 7, i32 3
  %421 = load i32, ptr %420, align 8
  %422 = icmp eq i32 %421, %385
  br i1 %422, label %393, label %423

423:                                              ; preds = %419
  %424 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 8, i32 3
  %425 = load i32, ptr %424, align 8
  %426 = icmp eq i32 %425, %385
  br i1 %426, label %393, label %427

427:                                              ; preds = %423
  %428 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 9, i32 3
  %429 = load i32, ptr %428, align 8
  %430 = icmp eq i32 %429, %385
  br i1 %430, label %393, label %431

431:                                              ; preds = %427
  %432 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 10, i32 3
  %433 = load i32, ptr %432, align 8
  %434 = icmp eq i32 %433, %385
  br i1 %434, label %393, label %435

435:                                              ; preds = %431
  %436 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 11, i32 3
  %437 = load i32, ptr %436, align 8
  %438 = icmp eq i32 %437, %385
  br i1 %438, label %393, label %439

439:                                              ; preds = %435
  %440 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 12, i32 3
  %441 = load i32, ptr %440, align 8
  %442 = icmp eq i32 %441, %385
  br i1 %442, label %393, label %443

443:                                              ; preds = %439
  %444 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 13, i32 3
  %445 = load i32, ptr %444, align 8
  %446 = icmp eq i32 %445, %385
  br i1 %446, label %393, label %447

447:                                              ; preds = %443
  %448 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 14, i32 3
  %449 = load i32, ptr %448, align 8
  %450 = icmp eq i32 %449, %385
  br i1 %450, label %393, label %643

451:                                              ; preds = %393, %391
  %452 = phi ptr [ %392, %391 ], [ %395, %393 ]
  %453 = icmp eq ptr %452, null
  br i1 %453, label %643, label %454

454:                                              ; preds = %451
  call void @_raw_spin_lock(ptr noundef %230) #9
  %455 = getelementptr inbounds %struct.isp1760_ep, ptr %452, i32 0, i32 9
  %456 = load i8, ptr %455, align 2, !range !8
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %454
  %459 = call fastcc i32 @__isp1760_udc_set_halt(ptr noundef nonnull %452, i1 noundef zeroext false) #9
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %476

461:                                              ; preds = %458, %454
  %462 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 9
  %463 = load ptr, ptr %462, align 4
  %464 = getelementptr %struct.isp1760_udc, ptr %463, i32 0, i32 4, i32 25
  %465 = load ptr, ptr %464, align 4
  %466 = call i32 @regmap_field_update_bits_base(ptr noundef %465, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %467 = getelementptr %struct.isp1760_udc, ptr %463, i32 0, i32 4, i32 24
  %468 = load ptr, ptr %467, align 4
  %469 = call i32 @regmap_field_update_bits_base(ptr noundef %468, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %470 = getelementptr %struct.isp1760_udc, ptr %463, i32 0, i32 4, i32 29
  %471 = load ptr, ptr %470, align 4
  %472 = call i32 @regmap_field_update_bits_base(ptr noundef %471, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %473 = getelementptr inbounds %struct.isp1760_udc, ptr %463, i32 0, i32 10
  store i32 0, ptr %473, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %474 = load i16, ptr %230, align 4
  %475 = add i16 %474, 1
  store i16 %475, ptr %230, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %645

476:                                              ; preds = %458
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %477 = load i16, ptr %230, align 4
  %478 = add i16 %477, 1
  store i16 %478, ptr %230, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %643

479:                                              ; preds = %280
  %480 = icmp eq i8 %260, 2
  %481 = icmp eq i16 %259, 0
  %482 = select i1 %480, i1 %269, i1 false
  %483 = select i1 %482, i1 %481, i1 false
  br i1 %483, label %484, label %643

484:                                              ; preds = %479
  %485 = and i32 %252, 65535
  %486 = icmp eq i16 %257, 0
  br i1 %486, label %491, label %487

487:                                              ; preds = %484
  %488 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 1, i32 3
  %489 = load i32, ptr %488, align 8
  %490 = icmp eq i32 %489, %485
  br i1 %490, label %493, label %499

491:                                              ; preds = %484
  %492 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 9
  br label %551

493:                                              ; preds = %547, %543, %539, %535, %531, %527, %523, %519, %515, %511, %507, %503, %499, %487
  %494 = phi i32 [ 1, %487 ], [ 2, %499 ], [ 3, %503 ], [ 4, %507 ], [ 5, %511 ], [ 6, %515 ], [ 7, %519 ], [ 8, %523 ], [ 9, %527 ], [ 10, %531 ], [ 11, %535 ], [ 12, %539 ], [ 13, %543 ], [ 14, %547 ]
  %495 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %494
  %496 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 %494, i32 6
  %497 = load ptr, ptr %496, align 8
  %498 = icmp eq ptr %497, null
  br i1 %498, label %643, label %551

499:                                              ; preds = %487
  %500 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 2, i32 3
  %501 = load i32, ptr %500, align 8
  %502 = icmp eq i32 %501, %485
  br i1 %502, label %493, label %503

503:                                              ; preds = %499
  %504 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 3, i32 3
  %505 = load i32, ptr %504, align 8
  %506 = icmp eq i32 %505, %485
  br i1 %506, label %493, label %507

507:                                              ; preds = %503
  %508 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 4, i32 3
  %509 = load i32, ptr %508, align 8
  %510 = icmp eq i32 %509, %485
  br i1 %510, label %493, label %511

511:                                              ; preds = %507
  %512 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 5, i32 3
  %513 = load i32, ptr %512, align 8
  %514 = icmp eq i32 %513, %485
  br i1 %514, label %493, label %515

515:                                              ; preds = %511
  %516 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 6, i32 3
  %517 = load i32, ptr %516, align 8
  %518 = icmp eq i32 %517, %485
  br i1 %518, label %493, label %519

519:                                              ; preds = %515
  %520 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 7, i32 3
  %521 = load i32, ptr %520, align 8
  %522 = icmp eq i32 %521, %485
  br i1 %522, label %493, label %523

523:                                              ; preds = %519
  %524 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 8, i32 3
  %525 = load i32, ptr %524, align 8
  %526 = icmp eq i32 %525, %485
  br i1 %526, label %493, label %527

527:                                              ; preds = %523
  %528 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 9, i32 3
  %529 = load i32, ptr %528, align 8
  %530 = icmp eq i32 %529, %485
  br i1 %530, label %493, label %531

531:                                              ; preds = %527
  %532 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 10, i32 3
  %533 = load i32, ptr %532, align 8
  %534 = icmp eq i32 %533, %485
  br i1 %534, label %493, label %535

535:                                              ; preds = %531
  %536 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 11, i32 3
  %537 = load i32, ptr %536, align 8
  %538 = icmp eq i32 %537, %485
  br i1 %538, label %493, label %539

539:                                              ; preds = %535
  %540 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 12, i32 3
  %541 = load i32, ptr %540, align 8
  %542 = icmp eq i32 %541, %485
  br i1 %542, label %493, label %543

543:                                              ; preds = %539
  %544 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 13, i32 3
  %545 = load i32, ptr %544, align 8
  %546 = icmp eq i32 %545, %485
  br i1 %546, label %493, label %547

547:                                              ; preds = %543
  %548 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 9, i32 14, i32 3
  %549 = load i32, ptr %548, align 8
  %550 = icmp eq i32 %549, %485
  br i1 %550, label %493, label %643

551:                                              ; preds = %493, %491
  %552 = phi ptr [ %492, %491 ], [ %495, %493 ]
  %553 = icmp eq ptr %552, null
  br i1 %553, label %643, label %554

554:                                              ; preds = %551
  call void @_raw_spin_lock(ptr noundef %230) #9
  %555 = call fastcc i32 @__isp1760_udc_set_halt(ptr noundef nonnull %552, i1 noundef zeroext true) #9
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %640

557:                                              ; preds = %554
  %558 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 9
  %559 = load ptr, ptr %558, align 4
  %560 = getelementptr %struct.isp1760_udc, ptr %559, i32 0, i32 4, i32 25
  %561 = load ptr, ptr %560, align 4
  %562 = call i32 @regmap_field_update_bits_base(ptr noundef %561, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %563 = getelementptr %struct.isp1760_udc, ptr %559, i32 0, i32 4, i32 24
  %564 = load ptr, ptr %563, align 4
  %565 = call i32 @regmap_field_update_bits_base(ptr noundef %564, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %566 = getelementptr %struct.isp1760_udc, ptr %559, i32 0, i32 4, i32 29
  %567 = load ptr, ptr %566, align 4
  %568 = call i32 @regmap_field_update_bits_base(ptr noundef %567, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %569 = getelementptr inbounds %struct.isp1760_udc, ptr %559, i32 0, i32 10
  store i32 0, ptr %569, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %570 = load i16, ptr %230, align 4
  %571 = add i16 %570, 1
  store i16 %571, ptr %230, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %645

572:                                              ; preds = %280
  %573 = icmp ne i8 %260, 0
  %574 = icmp ugt i16 %259, 127
  %575 = select i1 %573, i1 true, i1 %574
  br i1 %575, label %643, label %576

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6, i32 9
  %578 = load i32, ptr %577, align 4
  %579 = add i32 %578, -5
  %580 = icmp ult i32 %579, 2
  br i1 %580, label %581, label %643

581:                                              ; preds = %576
  %582 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6
  %583 = icmp eq i16 %259, 0
  %584 = select i1 %583, i32 5, i32 6
  call void @usb_gadget_set_state(ptr noundef %582, i32 noundef %584) #9
  %585 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 1
  %586 = load ptr, ptr %585, align 4
  %587 = call i32 @regmap_field_update_bits_base(ptr noundef %586, i32 noundef -1, i32 noundef %258, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %588 = load ptr, ptr %231, align 4
  %589 = call i32 @regmap_field_update_bits_base(ptr noundef %588, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @_raw_spin_lock(ptr noundef %230) #9
  %590 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 9
  %591 = load ptr, ptr %590, align 4
  %592 = getelementptr %struct.isp1760_udc, ptr %591, i32 0, i32 4, i32 25
  %593 = load ptr, ptr %592, align 4
  %594 = call i32 @regmap_field_update_bits_base(ptr noundef %593, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %595 = getelementptr %struct.isp1760_udc, ptr %591, i32 0, i32 4, i32 24
  %596 = load ptr, ptr %595, align 4
  %597 = call i32 @regmap_field_update_bits_base(ptr noundef %596, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %598 = getelementptr %struct.isp1760_udc, ptr %591, i32 0, i32 4, i32 29
  %599 = load ptr, ptr %598, align 4
  %600 = call i32 @regmap_field_update_bits_base(ptr noundef %599, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %601 = getelementptr inbounds %struct.isp1760_udc, ptr %591, i32 0, i32 10
  store i32 0, ptr %601, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %602 = load i16, ptr %230, align 4
  %603 = add i16 %602, 1
  store i16 %603, ptr %230, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %645

604:                                              ; preds = %280
  %605 = icmp eq i8 %260, 0
  br i1 %605, label %606, label %643

606:                                              ; preds = %604
  %607 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6
  %608 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6, i32 9
  %609 = load i32, ptr %608, align 4
  %610 = and i32 %609, -2
  %611 = icmp eq i32 %610, 6
  br i1 %611, label %612, label %643

612:                                              ; preds = %606
  %613 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 5
  %614 = load ptr, ptr %613, align 8
  %615 = getelementptr inbounds %struct.usb_gadget_driver, ptr %614, i32 0, i32 4
  %616 = load ptr, ptr %615, align 4
  %617 = call i32 %616(ptr noundef %607, ptr noundef nonnull %8) #9
  %618 = icmp slt i32 %617, 0
  br i1 %618, label %643, label %619

619:                                              ; preds = %612
  %620 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %8, i32 0, i32 2
  %621 = load i16, ptr %620, align 2
  %622 = icmp eq i16 %621, 0
  %623 = select i1 %622, i32 6, i32 7
  call void @usb_gadget_set_state(ptr noundef %607, i32 noundef %623) #9
  br label %645

624:                                              ; preds = %280
  %625 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 5
  %626 = load ptr, ptr %625, align 8
  %627 = getelementptr inbounds %struct.usb_gadget_driver, ptr %626, i32 0, i32 4
  %628 = load ptr, ptr %627, align 4
  %629 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6
  %630 = call i32 %628(ptr noundef %629, ptr noundef nonnull %8) #9
  %631 = icmp slt i32 %630, 0
  br i1 %631, label %643, label %645

632:                                              ; preds = %268
  %633 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 5
  %634 = load ptr, ptr %633, align 8
  %635 = getelementptr inbounds %struct.usb_gadget_driver, ptr %634, i32 0, i32 4
  %636 = load ptr, ptr %635, align 4
  %637 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6
  %638 = call i32 %636(ptr noundef %637, ptr noundef nonnull %8) #9
  %639 = icmp slt i32 %638, 0
  br i1 %639, label %643, label %645

640:                                              ; preds = %554
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %641 = load i16, ptr %230, align 4
  %642 = add i16 %641, 1
  store i16 %642, ptr %230, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %643

643:                                              ; preds = %640, %632, %624, %612, %606, %604, %576, %572, %551, %547, %493, %479, %476, %451, %447, %393, %379, %357, %353, %299, %285, %281
  %644 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 9
  call fastcc void @isp1760_udc_ctrl_send_stall(ptr noundef %644) #9
  br label %645

645:                                              ; preds = %643, %632, %624, %619, %581, %557, %461, %364, %265, %240
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %646

646:                                              ; preds = %645, %226
  %647 = and i32 %37, 16
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %661, label %649

649:                                              ; preds = %646
  %650 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6
  %651 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6, i32 9
  %652 = load i32, ptr %651, align 4
  %653 = icmp ult i32 %652, 5
  br i1 %653, label %661, label %654

654:                                              ; preds = %649
  %655 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 5
  %656 = load ptr, ptr %655, align 8
  %657 = getelementptr inbounds %struct.usb_gadget_driver, ptr %656, i32 0, i32 7
  %658 = load ptr, ptr %657, align 4
  %659 = icmp eq ptr %658, null
  br i1 %659, label %661, label %660

660:                                              ; preds = %654
  call void %658(ptr noundef %650) #9
  br label %661

661:                                              ; preds = %660, %654, %649, %646
  %662 = and i32 %37, 8
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %699, label %664

664:                                              ; preds = %661
  %665 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %665) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %666 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 2
  %667 = load ptr, ptr %666, align 4
  %668 = call i32 @regmap_field_read(ptr noundef %667, ptr noundef nonnull %3) #9
  %669 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %670 = icmp eq i32 %669, 0
  %671 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6
  %672 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6, i32 9
  %673 = load i32, ptr %672, align 4
  br i1 %670, label %674, label %687

674:                                              ; preds = %664
  %675 = icmp ult i32 %673, 2
  br i1 %675, label %696, label %676

676:                                              ; preds = %674
  %677 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6, i32 5
  store i32 0, ptr %677, align 4
  call void @usb_gadget_set_state(ptr noundef %671, i32 noundef 1) #9
  %678 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 5
  %679 = load ptr, ptr %678, align 8
  %680 = getelementptr inbounds %struct.usb_gadget_driver, ptr %679, i32 0, i32 5
  %681 = load ptr, ptr %680, align 4
  %682 = icmp eq ptr %681, null
  br i1 %682, label %684, label %683

683:                                              ; preds = %676
  call void %681(ptr noundef %671) #9
  br label %684

684:                                              ; preds = %683, %676
  %685 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 8
  %686 = call i32 @del_timer(ptr noundef %685) #9
  br label %696

687:                                              ; preds = %664
  %688 = icmp ult i32 %673, 5
  br i1 %688, label %696, label %689

689:                                              ; preds = %687
  %690 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 5
  %691 = load ptr, ptr %690, align 8
  %692 = getelementptr inbounds %struct.usb_gadget_driver, ptr %691, i32 0, i32 6
  %693 = load ptr, ptr %692, align 4
  %694 = icmp eq ptr %693, null
  br i1 %694, label %696, label %695

695:                                              ; preds = %689
  call void %693(ptr noundef %671) #9
  br label %696

696:                                              ; preds = %695, %689, %687, %684, %674
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %697 = load i16, ptr %665, align 4
  %698 = add i16 %697, 1
  store i16 %698, ptr %665, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %699

699:                                              ; preds = %696, %661
  %700 = and i32 %37, 32
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %704, label %702

702:                                              ; preds = %699
  %703 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 6, i32 5
  store i32 3, ptr %703, align 4
  br label %704

704:                                              ; preds = %702, %699
  %705 = icmp ne i32 %37, 0
  %706 = zext i1 %705 to i32
  ret i32 %706
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @isp1760_udc_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6
  tail call void @usb_del_gadget_udc(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %2) #9
  %10 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 2
  %11 = load ptr, ptr %10, align 8
  tail call void @kfree(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @isp1760_set_pullup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @isp1760_udc_transmit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %11, %8
  %13 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %14)
  %16 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 15
  %20 = getelementptr %struct.isp1760_udc, ptr %5, i32 0, i32 4, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %23 = getelementptr %struct.isp1760_udc, ptr %5, i32 0, i32 4, i32 25
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_field_update_bits_base(ptr noundef %24, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %26 = load i32, ptr %16, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %2
  %29 = getelementptr %struct.isp1760_udc, ptr %5, i32 0, i32 4, i32 31
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regmap_field_update_bits_base(ptr noundef %30, i32 noundef -1, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %32 = load i32, ptr %16, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.isp1760_udc, ptr %5, i32 0, i32 3
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi ptr [ %9, %34 ], [ %43, %36 ]
  %38 = phi i32 [ %32, %34 ], [ %42, %36 ]
  %39 = load i32, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 %39, ptr %4, align 4
  %40 = load ptr, ptr %35, align 4
  %41 = call i32 @regmap_raw_write(ptr noundef %40, i32 noundef 544, ptr noundef nonnull %4, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %42 = add nsw i32 %38, -4
  %43 = getelementptr i32, ptr %37, i32 1
  %44 = icmp ugt i32 %38, 6
  br i1 %44, label %36, label %45

45:                                               ; preds = %36, %28
  %46 = phi i32 [ %32, %28 ], [ %42, %36 ]
  %47 = phi ptr [ %9, %28 ], [ %43, %36 ]
  %48 = icmp sgt i32 %46, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i16, ptr %47, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 %50, ptr %3, align 2
  %51 = getelementptr inbounds %struct.isp1760_udc, ptr %5, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 @regmap_raw_write(ptr noundef %52, i32 noundef 544, ptr noundef nonnull %3, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %54

54:                                               ; preds = %49, %45, %2
  %55 = load i32, ptr %17, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr %struct.isp1760_udc, ptr %5, i32 0, i32 4, i32 28
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 @regmap_field_update_bits_base(ptr noundef %59, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, ptr %16, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr %struct.isp1760_udc, ptr %5, i32 0, i32 4, i32 27
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 @regmap_field_update_bits_base(ptr noundef %66, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %68

68:                                               ; preds = %64, %61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @isp1760_udc_request_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 2
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 1
  tail call void %8(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr inbounds %struct.isp1760_udc, ptr %4, i32 0, i32 7
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.isp1760_udc, ptr %4, i32 0, i32 11
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr %struct.isp1760_udc, ptr %22, i32 0, i32 4, i32 25
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_field_update_bits_base(ptr noundef %24, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %26 = getelementptr %struct.isp1760_udc, ptr %22, i32 0, i32 4, i32 24
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_field_update_bits_base(ptr noundef %27, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %29 = getelementptr %struct.isp1760_udc, ptr %22, i32 0, i32 4, i32 29
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regmap_field_update_bits_base(ptr noundef %30, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %32 = getelementptr inbounds %struct.isp1760_udc, ptr %22, i32 0, i32 10
  store i32 0, ptr %32, align 8
  br label %33

33:                                               ; preds = %21, %17, %13, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @isp1760_udc_receive(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 15
  %10 = getelementptr %struct.isp1760_udc, ptr %6, i32 0, i32 4, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %13 = getelementptr %struct.isp1760_udc, ptr %6, i32 0, i32 4, i32 25
  %14 = load ptr, ptr %13, align 4
  %15 = shl i32 %8, 24
  %16 = ashr i32 %15, 31
  %17 = tail call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %18 = getelementptr %struct.isp1760_udc, ptr %6, i32 0, i32 4, i32 31
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @regmap_field_read(ptr noundef %19, ptr noundef nonnull %5) #9
  %21 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %22 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %23, %25
  %27 = call i32 @llvm.umin.i32(i32 %21, i32 %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = getelementptr %struct.isp1760_udc, ptr %6, i32 0, i32 4, i32 26
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @regmap_field_update_bits_base(ptr noundef %31, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %74

33:                                               ; preds = %2
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr i8, ptr %34, i32 %25
  %36 = icmp sgt i32 %27, 2
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.isp1760_udc, ptr %6, i32 0, i32 3
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %27, %37 ], [ %45, %39 ]
  %41 = phi ptr [ %35, %37 ], [ %46, %39 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %42 = load ptr, ptr %38, align 4
  %43 = call i32 @regmap_raw_read(ptr noundef %42, i32 noundef 544, ptr noundef nonnull %4, i32 noundef 4) #9
  %44 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  store i32 %44, ptr %41, align 4
  %45 = add nsw i32 %40, -4
  %46 = getelementptr i32, ptr %41, i32 1
  %47 = icmp ugt i32 %40, 6
  br i1 %47, label %39, label %48

48:                                               ; preds = %39, %33
  %49 = phi ptr [ %35, %33 ], [ %46, %39 ]
  %50 = phi i32 [ %27, %33 ], [ %45, %39 ]
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 0, ptr %3, align 2, !annotation !9
  %53 = getelementptr inbounds %struct.isp1760_udc, ptr %6, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @regmap_raw_read(ptr noundef %54, i32 noundef 544, ptr noundef nonnull %3, i32 noundef 2) #9
  %56 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  store i16 %56, ptr %49, align 2
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, ptr %24, align 4
  %59 = add i32 %58, %27
  store i32 %59, ptr %24, align 4
  %60 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 7
  store i8 0, ptr %60, align 4
  %61 = load i32, ptr %24, align 4
  %62 = load i32, ptr %22, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %27, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64, %57
  %69 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 1
  %70 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 1, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %69, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %69, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %70, align 4
  br label %74

74:                                               ; preds = %68, %64, %29
  %75 = phi i1 [ true, %68 ], [ false, %29 ], [ false, %64 ]
  ret i1 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @isp1760_udc_ctrl_send_stall(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.isp1760_udc, ptr %2, i32 0, i32 7
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 15
  %8 = getelementptr %struct.isp1760_udc, ptr %2, i32 0, i32 4, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %11 = getelementptr %struct.isp1760_udc, ptr %2, i32 0, i32 4, i32 25
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %14 = getelementptr %struct.isp1760_udc, ptr %2, i32 0, i32 4, i32 30
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_field_update_bits_base(ptr noundef %15, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %17 = load i32, ptr %5, align 4
  %18 = and i32 %17, 15
  %19 = load ptr, ptr %8, align 4
  %20 = tail call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %21 = load ptr, ptr %11, align 4
  %22 = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %23 = load ptr, ptr %14, align 4
  %24 = tail call i32 @regmap_field_update_bits_base(ptr noundef %23, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %25 = getelementptr inbounds %struct.isp1760_udc, ptr %2, i32 0, i32 10
  store i32 0, ptr %25, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__isp1760_udc_set_halt(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = zext i1 %1 to i8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %66, label %13

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 15
  %17 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_field_update_bits_base(ptr noundef %18, i32 noundef -1, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %20 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 25
  %21 = load ptr, ptr %20, align 4
  %22 = shl i32 %15, 24
  %23 = ashr i32 %22, 31
  %24 = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %25 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 30
  %26 = load ptr, ptr %25, align 4
  br i1 %1, label %27, label %31

27:                                               ; preds = %13
  %28 = tail call i32 @regmap_field_update_bits_base(ptr noundef %26, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %29 = load i32, ptr %14, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %64

31:                                               ; preds = %13
  %32 = tail call i32 @regmap_field_update_bits_base(ptr noundef %26, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %33 = load i32, ptr %14, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %49

35:                                               ; preds = %27
  %36 = load ptr, ptr %17, align 4
  %37 = tail call i32 @regmap_field_update_bits_base(ptr noundef %36, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %38 = load ptr, ptr %20, align 4
  %39 = tail call i32 @regmap_field_update_bits_base(ptr noundef %38, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %40 = load ptr, ptr %25, align 4
  %41 = tail call i32 @regmap_field_update_bits_base(ptr noundef %40, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %64

42:                                               ; preds = %31
  %43 = load ptr, ptr %17, align 4
  %44 = tail call i32 @regmap_field_update_bits_base(ptr noundef %43, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %45 = load ptr, ptr %20, align 4
  %46 = tail call i32 @regmap_field_update_bits_base(ptr noundef %45, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %47 = load ptr, ptr %25, align 4
  %48 = tail call i32 @regmap_field_update_bits_base(ptr noundef %47, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %64

49:                                               ; preds = %31
  %50 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 33
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @regmap_field_update_bits_base(ptr noundef %51, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %53 = load ptr, ptr %50, align 4
  %54 = tail call i32 @regmap_field_update_bits_base(ptr noundef %53, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %55 = load i32, ptr %14, align 4
  %56 = and i32 %55, 128
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 2
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %60, i32 -56
  tail call fastcc void @isp1760_udc_transmit(ptr noundef %0, ptr noundef %63)
  br label %64

64:                                               ; preds = %62, %58, %49, %42, %35, %27
  %65 = getelementptr inbounds %struct.isp1760_ep, ptr %0, i32 0, i32 8
  store i8 %3, ptr %65, align 1
  br label %66

66:                                               ; preds = %64, %8
  %67 = phi i32 [ 0, %64 ], [ -22, %8 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_udc_get_frame(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %2) #9
  %6 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @isp1760_udc_wakeup(ptr nocapture noundef readnone %0) #4 {
  ret i32 -524
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @isp1760_udc_set_selfpowered(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = icmp ne i32 %1, 0
  %4 = getelementptr i8, ptr %0, i32 1804
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -2
  %7 = zext i1 %3 to i32
  %8 = or i32 %6, %7
  store i32 %8, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_udc_pullup(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -184
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne i32 %1, 0
  tail call void @isp1760_set_pullup(ptr noundef %4, i1 noundef zeroext %5) #9
  %6 = getelementptr i8, ptr %0, i32 1800
  %7 = zext i1 %5 to i8
  store i8 %7, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_udc_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -184
  %4 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5) #10
  br label %43

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 568
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #9
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.6) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #9
  br label %43

19:                                               ; preds = %10
  store ptr %1, ptr %13, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #9
  %20 = getelementptr i8, ptr %0, i32 1804
  store i32 0, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 1800
  store i8 1, ptr %21, align 8
  tail call void @usb_gadget_set_state(ptr noundef %0, i32 noundef 1) #9
  %22 = getelementptr i8, ptr %0, i32 -168
  %23 = getelementptr i8, ptr %0, i32 -152
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_field_update_bits_base(ptr noundef %24, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %26 = getelementptr i8, ptr %0, i32 1801
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 528, i32 16
  %30 = select i1 %28, i32 532, i32 20
  %31 = getelementptr i8, ptr %0, i32 -172
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %29, i32 noundef 84) #9
  %34 = load ptr, ptr %31, align 4
  %35 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef %30, i32 noundef 67108281) #9
  %36 = load i8, ptr %21, align 8, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %19
  %39 = load ptr, ptr %3, align 8
  tail call void @isp1760_set_pullup(ptr noundef %39, i1 noundef zeroext true) #9
  br label %40

40:                                               ; preds = %38, %19
  %41 = load ptr, ptr %22, align 4
  %42 = tail call i32 @regmap_field_update_bits_base(ptr noundef %41, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %43

43:                                               ; preds = %40, %16, %7
  %44 = phi i32 [ -22, %7 ], [ -16, %16 ], [ 0, %40 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_udc_stop(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1801
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i32 524, i32 12
  %6 = getelementptr i8, ptr %0, i32 572
  %7 = tail call i32 @del_timer_sync(ptr noundef %6) #9
  %8 = getelementptr i8, ptr %0, i32 -172
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %5, i32 noundef 0) #9
  %11 = getelementptr i8, ptr %0, i32 568
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #9
  %13 = getelementptr i8, ptr %0, i32 -8
  store ptr null, ptr %13, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_ep_enable(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 5
  br i1 %7, label %8, label %67

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %67, label %12

12:                                               ; preds = %8
  %13 = zext i8 %10 to i32
  %14 = getelementptr i8, ptr %0, i32 52
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %17, label %67

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %19 = load i16, ptr %18, align 1
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %22 = load i56, ptr %21, align 2
  %23 = trunc i56 %22 to i32
  %24 = and i32 %23, 65535
  %25 = icmp ult i32 %24, %20
  br i1 %25, label %67, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 3
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, -1
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %33, label %67

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.isp1760_udc, ptr %4, i32 0, i32 7
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #9
  %36 = getelementptr i8, ptr %0, i32 68
  store ptr %1, ptr %36, align 4
  %37 = load i16, ptr %18, align 1
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %0, i32 56
  store i32 %38, ptr %39, align 4
  %40 = getelementptr i8, ptr %0, i32 72
  store i8 0, ptr %40, align 4
  %41 = getelementptr i8, ptr %0, i32 73
  store i8 0, ptr %41, align 1
  %42 = getelementptr i8, ptr %0, i32 74
  store i8 0, ptr %42, align 2
  %43 = load i32, ptr %14, align 4
  %44 = and i32 %43, 15
  %45 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 24
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @regmap_field_update_bits_base(ptr noundef %46, i32 noundef -1, i32 noundef %44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %48 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 25
  %49 = load ptr, ptr %48, align 4
  %50 = shl i32 %43, 24
  %51 = ashr i32 %50, 31
  %52 = tail call i32 @regmap_field_update_bits_base(ptr noundef %49, i32 noundef -1, i32 noundef %51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %53 = load i32, ptr %39, align 4
  %54 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 32
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @regmap_field_update_bits_base(ptr noundef %55, i32 noundef -1, i32 noundef %53, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %57 = load i32, ptr %39, align 4
  %58 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 31
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @regmap_field_update_bits_base(ptr noundef %59, i32 noundef -1, i32 noundef %57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %61 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 34
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @regmap_field_update_bits_base(ptr noundef %62, i32 noundef -1, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %64 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 33
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @regmap_field_update_bits_base(ptr noundef %65, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #9
  br label %67

67:                                               ; preds = %33, %26, %17, %12, %8, %2
  %68 = phi i32 [ 0, %33 ], [ -22, %17 ], [ -22, %12 ], [ -22, %8 ], [ -22, %2 ], [ -22, %26 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_ep_disable(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.isp1760_udc, ptr %4, i32 0, i32 7
  %7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %8 = getelementptr i8, ptr %0, i32 68
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  br label %58

12:                                               ; preds = %1
  store ptr null, ptr %8, align 4
  %13 = getelementptr i8, ptr %0, i32 56
  store i32 0, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 52
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 15
  %17 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @regmap_field_update_bits_base(ptr noundef %18, i32 noundef -1, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %20 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 25
  %21 = load ptr, ptr %20, align 4
  %22 = shl i32 %15, 24
  %23 = ashr i32 %22, 31
  %24 = call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %25 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 33
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @regmap_field_update_bits_base(ptr noundef %26, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %28 = getelementptr %struct.isp1760_udc, ptr %4, i32 0, i32 4, i32 34
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @regmap_field_update_bits_base(ptr noundef %29, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %31 = getelementptr i8, ptr %0, i32 44
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %40, label %34

34:                                               ; preds = %12
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr i8, ptr %0, i32 48
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %2, ptr %38, align 4
  store ptr %32, ptr %2, align 8
  store ptr %35, ptr %37, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %31, ptr %31, align 4
  store ptr %31, ptr %36, align 4
  br label %40

40:                                               ; preds = %34, %12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  %41 = load ptr, ptr %2, align 8
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %58, label %43

43:                                               ; preds = %43, %40
  %44 = phi ptr [ %46, %43 ], [ %41, %40 ]
  %45 = getelementptr i8, ptr %44, i32 -56
  %46 = load ptr, ptr %44, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  store volatile ptr %46, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr i8, ptr %44, i32 8
  store ptr null, ptr %51, align 4
  %52 = getelementptr i8, ptr %44, i32 -8
  store i32 -108, ptr %52, align 4
  %53 = getelementptr i8, ptr %44, i32 -28
  %54 = load ptr, ptr %53, align 4
  call void %54(ptr noundef %0, ptr noundef %45) #9
  %55 = getelementptr inbounds %struct.isp1760_udc, ptr %50, i32 0, i32 7
  %56 = call i32 @_raw_spin_lock_irqsave(ptr noundef %55) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %56) #9
  %57 = icmp eq ptr %46, %2
  br i1 %57, label %58, label %43

58:                                               ; preds = %43, %40, %11
  %59 = phi i32 [ -22, %11 ], [ 0, %40 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @isp1760_ep_alloc_request(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !16

5:                                                ; preds = %2
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %11 = or i32 %1, 256
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %10, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %11, i32 noundef 72) #11
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp1760_ep_free_request(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_ep_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.isp1760_udc, ptr %5, i32 0, i32 7
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 2
  store ptr %4, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 52
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.isp1760_udc, ptr %5, i32 0, i32 12
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %16, %19
  %21 = getelementptr inbounds %struct.isp1760_udc, ptr %5, i32 0, i32 10
  %22 = load i32, ptr %21, align 8
  br i1 %20, label %25, label %23

23:                                               ; preds = %14
  %24 = icmp eq i32 %22, 1
  br i1 %24, label %27, label %75

25:                                               ; preds = %14
  switch i32 %22, label %75 [
    i32 1, label %27
    i32 2, label %33
    i32 3, label %26
  ]

26:                                               ; preds = %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #9
  br label %80

27:                                               ; preds = %25, %23
  %28 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 1
  %29 = getelementptr i8, ptr %0, i32 44
  %30 = getelementptr i8, ptr %0, i32 48
  %31 = load ptr, ptr %30, align 4
  store ptr %28, ptr %30, align 4
  store ptr %29, ptr %28, align 4
  %32 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 1, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %28, ptr %31, align 4
  tail call fastcc void @isp1760_udc_transmit(ptr noundef %4, ptr noundef %1)
  br label %77

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 1
  %35 = getelementptr i8, ptr %0, i32 44
  %36 = getelementptr i8, ptr %0, i32 48
  %37 = load ptr, ptr %36, align 4
  store ptr %34, ptr %36, align 4
  store ptr %35, ptr %34, align 4
  %38 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 1, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %34, ptr %37, align 4
  %39 = load i32, ptr %11, align 4
  %40 = and i32 %39, 15
  %41 = getelementptr %struct.isp1760_udc, ptr %5, i32 0, i32 4, i32 24
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @regmap_field_update_bits_base(ptr noundef %42, i32 noundef -1, i32 noundef %40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %44 = getelementptr %struct.isp1760_udc, ptr %5, i32 0, i32 4, i32 25
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @regmap_field_update_bits_base(ptr noundef %45, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %47 = getelementptr %struct.isp1760_udc, ptr %5, i32 0, i32 4, i32 28
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @regmap_field_update_bits_base(ptr noundef %48, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %77

50:                                               ; preds = %3
  %51 = getelementptr i8, ptr %0, i32 68
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %0, i32 44
  %56 = load volatile ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 1
  %58 = getelementptr i8, ptr %0, i32 48
  %59 = load ptr, ptr %58, align 4
  store ptr %57, ptr %58, align 4
  store ptr %55, ptr %57, align 4
  %60 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 1, i32 1
  store ptr %59, ptr %60, align 4
  store volatile ptr %57, ptr %59, align 4
  %61 = load i32, ptr %11, align 4
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %54
  %65 = icmp ne ptr %56, %55
  %66 = getelementptr i8, ptr %0, i32 73
  %67 = load i8, ptr %66, align 1, !range !8
  %68 = icmp ne i8 %67, 0
  %69 = select i1 %68, i1 true, i1 %65
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  tail call fastcc void @isp1760_udc_transmit(ptr noundef %4, ptr noundef %1)
  br label %77

71:                                               ; preds = %54
  %72 = getelementptr i8, ptr %0, i32 72
  %73 = load i8, ptr %72, align 4, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %78

75:                                               ; preds = %50, %25, %23
  %76 = phi i32 [ -22, %23 ], [ -108, %50 ], [ -22, %25 ]
  store ptr null, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #9
  br label %81

77:                                               ; preds = %71, %70, %64, %33, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #9
  br label %81

78:                                               ; preds = %71
  %79 = tail call fastcc zeroext i1 @isp1760_udc_receive(ptr noundef %4, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #9
  br i1 %79, label %80, label %81

80:                                               ; preds = %78, %26
  tail call fastcc void @isp1760_udc_request_complete(ptr noundef %4, ptr noundef %1, i32 noundef 0)
  br label %81

81:                                               ; preds = %80, %78, %77, %75
  %82 = phi i32 [ %76, %75 ], [ 0, %80 ], [ 0, %78 ], [ 0, %77 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_ep_dequeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.isp1760_udc, ptr %4, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %3
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  br label %25

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.isp1760_request, ptr %1, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  %17 = icmp eq ptr %1, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %3, align 4
  store ptr null, ptr %7, align 4
  %20 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -104, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %0, ptr noundef nonnull %1) #9
  %23 = getelementptr inbounds %struct.isp1760_udc, ptr %19, i32 0, i32 7
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #9
  br label %25

25:                                               ; preds = %18, %11, %10
  %26 = phi i32 [ 0, %18 ], [ -22, %11 ], [ -22, %10 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_ep_set_halt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.isp1760_udc, ptr %4, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = icmp ne i32 %1, 0
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %0, i32 52
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.isp1760_udc, ptr %8, i32 0, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = and i1 %7, %15
  br i1 %16, label %29, label %17, !prof !17

17:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %40

18:                                               ; preds = %2
  %19 = getelementptr i8, ptr %0, i32 68
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = and i32 %10, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %0, i32 44
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %29, label %40

29:                                               ; preds = %25, %22, %12
  %30 = tail call fastcc i32 @__isp1760_udc_set_halt(ptr noundef %3, i1 noundef zeroext %7) #9
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.isp1760_udc, ptr %8, i32 0, i32 10
  store i32 0, ptr %36, align 8
  br label %40

37:                                               ; preds = %32
  br i1 %7, label %40, label %38

38:                                               ; preds = %37
  %39 = getelementptr i8, ptr %0, i32 74
  store i8 0, ptr %39, align 2
  br label %40

40:                                               ; preds = %38, %37, %35, %29, %25, %18, %17
  %41 = phi i32 [ 0, %35 ], [ -22, %17 ], [ -22, %18 ], [ -11, %25 ], [ %30, %29 ], [ 0, %37 ], [ 0, %38 ]
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.isp1760_udc, ptr %42, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %6) #9
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_ep_set_wedge(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.isp1760_udc, ptr %3, i32 0, i32 7
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %0, i32 52
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %32

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 68
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = and i32 %8, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %0, i32 44
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %32

22:                                               ; preds = %18, %15
  %23 = tail call fastcc i32 @__isp1760_udc_set_halt(ptr noundef %2, i1 noundef zeroext true) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.isp1760_udc, ptr %6, i32 0, i32 10
  store i32 0, ptr %29, align 8
  br label %32

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %0, i32 74
  store i8 1, ptr %31, align 2
  br label %32

32:                                               ; preds = %30, %28, %22, %18, %11, %10
  %33 = phi i32 [ 0, %28 ], [ -22, %10 ], [ -22, %11 ], [ -11, %18 ], [ %23, %22 ], [ 0, %30 ]
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.isp1760_udc, ptr %34, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %5) #9
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp1760_ep_fifo_flush(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.isp1760_udc, ptr %3, i32 0, i32 7
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr i8, ptr %0, i32 52
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 15
  %9 = getelementptr %struct.isp1760_udc, ptr %3, i32 0, i32 4, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %12 = getelementptr %struct.isp1760_udc, ptr %3, i32 0, i32 4, i32 25
  %13 = load ptr, ptr %12, align 4
  %14 = shl i32 %7, 24
  %15 = ashr i32 %14, 31
  %16 = tail call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %17 = getelementptr %struct.isp1760_udc, ptr %3, i32 0, i32 4, i32 26
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_field_update_bits_base(ptr noundef %18, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i32 @regmap_field_update_bits_base(ptr noundef %20, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = !{i64 2149269227}
!13 = !{i64 2149265051}
!14 = !{i64 2149265126, i64 2149265153, i64 2149265200, i64 2149265222, i64 2149265250, i64 2149265270}
!15 = !{i64 2149292230}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!"branch_weights", i32 2000, i32 2002}
