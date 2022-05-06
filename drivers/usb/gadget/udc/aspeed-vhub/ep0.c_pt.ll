; ModuleID = '/llk/IR/drivers/usb/gadget/udc/aspeed-vhub/ep0.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/aspeed-vhub/ep0.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ast_vhub_ep = type { %struct.usb_ep, %struct.list_head, i32, ptr, ptr, ptr, i32, %union.anon }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, i32, i8, %struct.ast_vhub_req }
%struct.ast_vhub_req = type { %struct.usb_request, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.ast_vhub = type { ptr, ptr, i32, %struct.spinlock, %struct.work_struct, ptr, ptr, i32, %struct.ast_vhub_ep, i8, ptr, i32, i32, ptr, i32, i8, i32, %struct.usb_device_descriptor, %struct.ast_vhub_full_cdesc, %struct.usb_hub_descriptor, %struct.list_head, %struct.usb_qualifier_descriptor }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.ast_vhub_full_cdesc = type { %struct.usb_config_descriptor, %struct.usb_interface_descriptor, %struct.usb_endpoint_descriptor }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.64 }>
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { [4 x i8], [4 x i8] }
%struct.usb_qualifier_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.__va_list = type { ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ast_vhub_dev = type { ptr, ptr, i32, ptr, ptr, %struct.usb_gadget, ptr, i8, %struct.ast_vhub_ep, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
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
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [41 x i8] c"drivers/usb/gadget/udc/aspeed-vhub/ep0.c\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"request present while in TOKEN state\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ack while in TOKEN state\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"irq state mismatch\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"data phase, no request\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"request present while in STATUS state\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"status direction mismatch\0A\00", align 1
@ast_vhub_ep0_ops = internal constant %struct.usb_ep_ops { ptr null, ptr null, ptr null, ptr @ast_vhub_alloc_request, ptr @ast_vhub_free_request, ptr @ast_vhub_ep0_queue, ptr @ast_vhub_ep0_dequeue, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"ep0\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Bogus EP0 request ! u_req=%p\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"complete=%p internal=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Request with no buffer !\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"EP0: Request in wrong state\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_reply(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4
  %5 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #8
  br label %42

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 3
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !10

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #8
  br label %42

14:                                               ; preds = %9
  %15 = icmp sgt i32 %2, 64
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef null) #8
  br label %42

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -115
  br i1 %20, label %21, label %22, !prof !10

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #8
  br label %42

22:                                               ; preds = %17
  store ptr %1, ptr %4, align 4
  %23 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 1
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 7
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 262144
  store i32 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ast_vhub, ptr %29, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %33 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_ep_ops, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef %4, i32 noundef 2592) #8
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 1, i32 -1
  %40 = load ptr, ptr %28, align 4
  %41 = getelementptr inbounds %struct.ast_vhub, ptr %40, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %41) #8
  br label %42

42:                                               ; preds = %22, %21, %16, %13, %8
  %43 = phi i32 [ -1, %8 ], [ -1, %13 ], [ -1, %16 ], [ -1, %21 ], [ %39, %22 ]
  ret i32 %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ast_vhub_simple_reply(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca %struct.__va_list, align 4
  %4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !15
  call void @llvm.va_start(ptr nonnull %3)
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ %14, %7 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds i8, ptr %9, i32 4
  store ptr %10, ptr %3, align 4
  %11 = load i32, ptr %9, align 4
  %12 = trunc i32 %11 to i8
  %13 = getelementptr i8, ptr %5, i32 %8
  store i8 %12, ptr %13, align 1
  %14 = add nuw i32 %8, 1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %7

16:                                               ; preds = %7, %2
  call void @llvm.va_end(ptr nonnull %3)
  %17 = call i32 @ast_vhub_reply(ptr noundef %0, ptr noundef null, i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_ep0_handle_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.usb_ctrlrequest, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !15
  %3 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #8
  br label %64

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %9 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @mmiocpy(ptr noundef nonnull %2, ptr noundef %10, i32 noundef 8) #8
  %11 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %13 [
    i32 0, label %14
    i32 3, label %14
  ]

13:                                               ; preds = %7
  call void @ast_vhub_nuke(ptr noundef %0, i32 noundef -5) #8
  br label %14

14:                                               ; preds = %13, %7, %7
  store i32 1, ptr %11, align 4
  %15 = load i8, ptr %2, align 8
  %16 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 3
  %17 = lshr i8 %15, 7
  store i8 %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = trunc i8 %15 to i7
  %23 = and i7 %22, -32
  switch i7 %23, label %60 [
    i7 0, label %24
    i7 32, label %26
  ]

24:                                               ; preds = %21
  %25 = call i32 @ast_vhub_std_hub_request(ptr noundef %0, ptr noundef nonnull %2) #8
  br label %33

26:                                               ; preds = %21
  %27 = call i32 @ast_vhub_class_hub_request(ptr noundef %0, ptr noundef nonnull %2) #8
  br label %33

28:                                               ; preds = %14
  %29 = and i8 %15, 96
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = call i32 @ast_vhub_std_dev_request(ptr noundef %0, ptr noundef nonnull %2) #8
  br label %33

33:                                               ; preds = %31, %26, %24
  %34 = phi i32 [ %25, %24 ], [ %27, %26 ], [ %32, %31 ]
  switch i32 %34, label %35 [
    i32 0, label %62
    i32 -1, label %60
    i32 1, label %64
  ]

35:                                               ; preds = %33
  %36 = load ptr, ptr %18, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39, !prof !10

38:                                               ; preds = %35
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef null) #8
  br label %60

39:                                               ; preds = %35, %28
  %40 = phi ptr [ %36, %35 ], [ %19, %28 ]
  %41 = getelementptr inbounds %struct.ast_vhub_dev, ptr %40, i32 0, i32 6
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %60, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ast_vhub, ptr %46, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %48 = load i16, ptr %47, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %47, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %50 = load ptr, ptr %18, align 4
  %51 = getelementptr inbounds %struct.ast_vhub_dev, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.usb_gadget_driver, ptr %52, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ast_vhub_dev, ptr %50, i32 0, i32 5
  %56 = call i32 %54(ptr noundef %55, ptr noundef nonnull %2) #8
  %57 = load ptr, ptr %45, align 4
  %58 = getelementptr inbounds %struct.ast_vhub, ptr %57, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %58) #8
  %59 = icmp sgt i32 %56, -1
  br i1 %59, label %64, label %60

60:                                               ; preds = %44, %39, %38, %33, %21
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  call void @arm_heavy_mb() #8
  %61 = load ptr, ptr %8, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 1) #8, !srcloc !17
  store i32 3, ptr %11, align 4
  store i8 0, ptr %16, align 4
  br label %64

62:                                               ; preds = %33
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %63 = load ptr, ptr %8, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 2) #8, !srcloc !17
  store i32 2, ptr %11, align 4
  store i8 0, ptr %16, align 4
  br label %64

64:                                               ; preds = %62, %60, %44, %33, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_nuke(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_std_hub_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_class_hub_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_std_dev_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_ep0_handle_ack(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %10 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  %13 = getelementptr i8, ptr %11, i32 -56
  %14 = select i1 %12, ptr null, ptr %13
  %15 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %93 [
    i32 0, label %17
    i32 1, label %20
    i32 2, label %81
    i32 3, label %89
  ]

17:                                               ; preds = %2
  %18 = icmp eq ptr %14, null
  br i1 %18, label %90, label %19

19:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.1) #9
  tail call void @ast_vhub_nuke(ptr noundef %0, i32 noundef -22) #8
  br label %90

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 3
  %22 = load i8, ptr %21, align 4, !range !9
  %23 = icmp eq i8 %22, 0
  %24 = and i32 %9, 2
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = icmp ne i8 %22, 0
  %29 = and i32 %9, 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %28, i1 true, i1 %30
  %32 = zext i1 %1 to i8
  %33 = icmp eq i8 %22, %32
  %34 = and i1 %33, %31
  br i1 %34, label %36, label %35

35:                                               ; preds = %27, %20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.3) #9
  br label %93

36:                                               ; preds = %27
  %37 = icmp eq ptr %14, null
  br i1 %37, label %90, label %38

38:                                               ; preds = %36
  br i1 %23, label %40, label %39

39:                                               ; preds = %38
  tail call fastcc void @ast_vhub_ep0_do_send(ptr noundef %0, ptr noundef nonnull %14)
  br label %95

40:                                               ; preds = %38
  %41 = lshr i32 %9, 16
  %42 = and i32 %41, 127
  %43 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 12
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %44, %46
  %48 = icmp ult i32 %47, %42
  %49 = tail call i32 @llvm.umin.i32(i32 %47, i32 %42) #8
  %50 = select i1 %48, i32 -75, i32 0
  %51 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %52 = load i56, ptr %51, align 2
  %53 = trunc i56 %52 to i32
  %54 = and i32 %53, 65535
  %55 = icmp uge i32 %49, %54
  %56 = icmp ule i32 %47, %42
  %57 = select i1 %55, i1 true, i1 %56
  %58 = select i1 %57, i32 %49, i32 %47
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %40
  %61 = load ptr, ptr %14, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %61, i32 %46
  %65 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %64, ptr align 1 %66, i32 %58, i1 false) #8
  %67 = load i32, ptr %45, align 4
  br label %68

68:                                               ; preds = %63, %60, %40
  %69 = phi i32 [ %67, %63 ], [ %46, %60 ], [ %46, %40 ]
  %70 = add i32 %69, %58
  store i32 %70, ptr %45, align 4
  %71 = load i56, ptr %51, align 2
  %72 = trunc i56 %71 to i32
  %73 = and i32 %72, 65535
  %74 = icmp ult i32 %58, %73
  %75 = icmp eq i32 %58, %47
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  store i32 2, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %78 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 2) #8, !srcloc !17
  tail call void @ast_vhub_done(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %50) #8
  br label %95

79:                                               ; preds = %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %80 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 4) #8, !srcloc !17
  br label %95

81:                                               ; preds = %2
  %82 = icmp eq ptr %14, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.5) #9
  tail call void @ast_vhub_nuke(ptr noundef %0, i32 noundef -22) #8
  br label %84

84:                                               ; preds = %83, %81
  %85 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 3
  %86 = load i8, ptr %85, align 4, !range !9
  %87 = zext i1 %1 to i8
  %88 = icmp eq i8 %86, %87
  br i1 %88, label %90, label %93

89:                                               ; preds = %2
  tail call void @ast_vhub_nuke(ptr noundef %0, i32 noundef -5) #8
  br label %93

90:                                               ; preds = %84, %36, %19, %17
  %91 = phi ptr [ @.str.2, %17 ], [ @.str.2, %19 ], [ @.str.4, %36 ], [ @.str.6, %84 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull %91) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %92 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 1) #8, !srcloc !17
  br label %93

93:                                               ; preds = %90, %89, %84, %35, %2
  %94 = phi i32 [ 3, %90 ], [ 0, %84 ], [ 0, %2 ], [ 0, %35 ], [ 0, %89 ]
  store i32 %94, ptr %15, align 4
  br label %95

95:                                               ; preds = %93, %79, %77, %39
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_ep0_do_send(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 3
  br i1 %5, label %7, label %8

7:                                                ; preds = %2
  store i32 1, ptr %6, align 4
  br label %12

8:                                                ; preds = %2
  %9 = load i32, ptr %6, align 4
  %10 = icmp sgt i32 %9, -1
  %11 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 3
  br i1 %10, label %12, label %16

12:                                               ; preds = %8, %7
  %13 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %14 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 2
  store i32 2, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 4) #8, !srcloc !17
  tail call void @ast_vhub_done(ptr noundef %0, ptr noundef %1, i32 noundef 0) #8
  br label %55

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %4, %18
  %20 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %21 = load i56, ptr %20, align 2
  %22 = trunc i56 %21 to i32
  %23 = and i32 %22, 65535
  %24 = icmp ugt i32 %19, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %16
  %26 = icmp ult i32 %19, %23
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 262144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %25
  store i32 1, ptr %11, align 4
  br label %33

33:                                               ; preds = %32, %27, %16
  %34 = phi i32 [ %19, %32 ], [ %19, %27 ], [ %23, %16 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %1, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %37, i32 %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr align 1 %42, i32 %34, i1 false)
  br label %43

43:                                               ; preds = %39, %36, %33
  %44 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !19
  %47 = shl i32 %34, 8
  %48 = and i32 %47, 32512
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %49 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #8, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %51 = or i32 %48, 2
  %52 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %51) #8, !srcloc !17
  %53 = load i32, ptr %17, align 4
  %54 = add i32 %53, %34
  store i32 %54, ptr %17, align 4
  br label %55

55:                                               ; preds = %43, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_reset_ep0(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 8
  tail call void @ast_vhub_nuke(ptr noundef %2, i32 noundef -5) #8
  %3 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 8, i32 7, i32 0, i32 2
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_init_ep0(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(164) %1, i8 0, i32 164, i1 false)
  %4 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 3
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 3, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 1
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 1, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 2
  store ptr @ast_vhub_ep0_ops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 1
  store ptr @.str.7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 4
  store i8 1, ptr %10, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %1, i32 noundef 64) #8
  %11 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 4
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 7
  %15 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 7, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 7, i32 0, i32 4, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 7, i32 0, i32 4, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 7, i32 0, i32 4, i32 4
  %19 = load i8, ptr %18, align 4
  %20 = or i8 %19, 2
  store i8 %20, ptr %18, align 4
  %21 = icmp eq ptr %2, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.ast_vhub_dev, ptr %2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  store ptr %25, ptr %14, align 4
  %26 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 128
  %29 = getelementptr inbounds %struct.ast_vhub_dev, ptr %2, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = shl i32 %30, 3
  %32 = add i32 %31, 8
  %33 = getelementptr i8, ptr %28, i32 %32
  %34 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 7, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %29, align 8
  %38 = shl i32 %37, 6
  %39 = add i32 %38, 64
  %40 = getelementptr i8, ptr %36, i32 %39
  %41 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 5
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %29, align 8
  %45 = shl i32 %44, 6
  %46 = add i32 %43, 64
  %47 = add i32 %46, %45
  br label %60

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 48
  store ptr %51, ptr %14, align 4
  %52 = load ptr, ptr %49, align 4
  %53 = getelementptr i8, ptr %52, i32 128
  %54 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 7, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 5
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %48, %22
  %61 = phi i32 [ %59, %48 ], [ %47, %22 ]
  %62 = getelementptr inbounds %struct.ast_vhub_ep, ptr %1, i32 0, i32 6
  store i32 %61, ptr %62, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ast_vhub_alloc_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_free_request(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_ep0_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 4
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull %1) #9
  %19 = load ptr, ptr %10, align 4
  %20 = load i8, ptr %14, align 4
  %21 = lshr i8 %20, 1
  %22 = and i8 %21, 1
  %23 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef %19, i32 noundef %23) #9
  br label %86

24:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef null) #9
  br label %86

25:                                               ; preds = %13, %9
  %26 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29, !prof !8

29:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef null) #8
  br label %86

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ast_vhub_dev, ptr %32, i32 0, i32 7
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %86, label %39

39:                                               ; preds = %34, %30
  %40 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %1, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 4
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.10) #9
  br label %86

52:                                               ; preds = %46, %43, %39
  %53 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %53, align 4
  %54 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 3
  store i32 -1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 4
  %57 = load i8, ptr %56, align 4
  %58 = and i8 %57, -2
  store i8 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 3
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %59) #8
  %61 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %66 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  switch i32 %67, label %69 [
    i32 0, label %68
    i32 3, label %68
  ]

68:                                               ; preds = %64, %64, %52
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.11) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %60) #8
  br label %86

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 1
  %71 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1, i32 1
  %72 = load ptr, ptr %71, align 4
  store ptr %70, ptr %71, align 4
  store ptr %61, ptr %70, align 4
  %73 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 1, i32 1
  store ptr %72, ptr %73, align 4
  store volatile ptr %70, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 3
  %75 = load i8, ptr %74, align 4, !range !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  tail call fastcc void @ast_vhub_ep0_do_send(ptr noundef %0, ptr noundef nonnull %1)
  br label %85

78:                                               ; preds = %69
  %79 = load i32, ptr %40, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  store i32 2, ptr %66, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %82 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 2) #8, !srcloc !17
  tail call void @ast_vhub_done(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #8
  br label %85

83:                                               ; preds = %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %84 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 4) #8, !srcloc !17
  br label %85

85:                                               ; preds = %83, %81, %77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %60) #8
  br label %86

86:                                               ; preds = %85, %68, %51, %34, %29, %24, %18
  %87 = phi i32 [ -22, %29 ], [ -16, %68 ], [ 0, %85 ], [ -22, %51 ], [ -22, %24 ], [ -22, %18 ], [ -108, %34 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_ep0_dequeue(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ast_vhub, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  %10 = getelementptr i8, ptr %8, i32 -56
  %11 = select i1 %9, ptr null, ptr %10
  %12 = icmp ne ptr %11, null
  %13 = icmp eq ptr %11, %1
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  tail call void @ast_vhub_done(ptr noundef %0, ptr noundef nonnull %1, i32 noundef -104) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %16 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1) #8, !srcloc !17
  %18 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 2
  store i32 2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 3
  store i8 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i32 [ 0, %15 ], [ -22, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148937536}
!12 = !{i64 2148933360}
!13 = !{i64 2148933435, i64 2148933462, i64 2148933509, i64 2148933531, i64 2148933559, i64 2148933579}
!14 = !{i64 2148960539}
!15 = !{!"auto-init"}
!16 = !{i64 2153444947}
!17 = !{i64 3839731}
!18 = !{i64 2153445297}
!19 = !{i64 3840149}
!20 = !{i64 2153447551}
!21 = !{i64 2153447086}
!22 = !{i64 2153446701}
!23 = !{i64 2153455513}
!24 = !{i64 2153445647}
!25 = !{i64 2153441102}
!26 = !{i64 2153446009}
!27 = !{i64 2153446339}
!28 = !{i64 2153465612}
!29 = !{i64 2153471811}
