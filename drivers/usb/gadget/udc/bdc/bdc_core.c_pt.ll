; ModuleID = '/llk/IR/drivers/usb/gadget/udc/bdc/bdc_core.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/bdc/bdc_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bdc = type { %struct.usb_gadget, ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, ptr, %struct.bdc_scratchpad, i32, %struct.srr, %struct.usb_ctrlrequest, %struct.bdc_req, %struct.bdc_req, i32, i8, i8, i8, i8, i32, i32, ptr, i32, ptr, i8, [2 x ptr], [3 x ptr], [6 x i8], %struct.delayed_work, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.bdc_scratchpad = type { i32, ptr, i32 }
%struct.srr = type { ptr, i16, i16, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.bdc_req = type { %struct.usb_request, %struct.list_head, ptr, %struct.bd_transfer, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.bd_transfer = type { ptr, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bdc_ep = type { %struct.usb_ep, %struct.list_head, ptr, i8, i8, i8, ptr, ptr, i32, [20 x i8], %struct.bd_list, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.bd_list = type { ptr, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [26 x i8] c"bdc stop operation failed\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bdc reset operation failed\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"bdc is already in running state\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"bdc run operation failed:%d\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"bdc not in normal mode after RUN op :%d\0A\00", align 1
@__initcall__kmod_bdc__254_654_bdc_driver_init6 = internal global ptr @bdc_driver_init, section ".initcall6.init", align 4
@bdc_driver = internal global %struct.platform_driver { ptr @bdc_probe, ptr @bdc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bdc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bdc_driver_exit = internal global ptr @bdc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author255 = internal constant [52 x i8] c"bdc.author=Ashwini Pahuja <ashwini.linux@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [40 x i8] c"bdc.file=drivers/usb/gadget/udc/bdc/bdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [16 x i8] c"bdc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [54 x i8] c"bdc.description=Broadcom USB Device Controller driver\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"operation timedout BDCSC: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bdc\00", align 1
@bdc_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bdc-udc-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@bdc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @bdc_suspend, ptr @bdc_resume, ptr @bdc_suspend, ptr @bdc_resume, ptr @bdc_suspend, ptr @bdc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Using %d phy(s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"BDC phy specified but not found:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"sw_usbd\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"could not enable clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"BDC phy init failure:%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"No suitable DMA config available, abort\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"BDC init failure:%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"BDC Gadget init failure:%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"err resetting bdc abort bdc init%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Mem alloc failed, aborting\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"BDC BD tables\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Couldn't initialize memory\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"err enabling the clock\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"err in bdc reinit\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_bdc_driver_exit, ptr @__initcall__kmod_bdc__254_654_bdc_driver_init6, ptr @bdc_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_stop(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %6 = and i32 %5, 7340032
  %7 = icmp eq i32 %6, 1048576
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = and i32 %5, 268435455
  %10 = or i32 %9, -1879048192
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %12 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !11
  %13 = tail call fastcc i32 @poll_oip(ptr noundef %0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str) #9
  br label %18

18:                                               ; preds = %15, %8, %1
  %19 = phi i32 [ 0, %1 ], [ %13, %15 ], [ 0, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @poll_oip(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i64 @ktime_get() #8
  %3 = add i64 %2, 500000
  %4 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %8 = and i32 %7, 7340032
  %9 = icmp eq i32 %8, 7340032
  br i1 %9, label %10, label %23

10:                                               ; preds = %17, %1
  %11 = tail call i64 @ktime_get() #8
  %12 = icmp sgt i64 %11, %3
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %23

17:                                               ; preds = %10
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %21 = and i32 %20, 7340032
  %22 = icmp eq i32 %21, 7340032
  br i1 %22, label %10, label %23

23:                                               ; preds = %17, %13, %1
  %24 = phi i32 [ %16, %13 ], [ %7, %1 ], [ %20, %17 ]
  %25 = and i32 %24, 7340032
  %26 = icmp eq i32 %25, 7340032
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.5, i32 noundef %24) #9
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i32 [ 0, %23 ], [ -110, %27 ]
  ret i32 %31
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %6 = and i32 %5, 7340032
  %7 = icmp eq i32 %6, 1048576
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = and i32 %5, 268435455
  %10 = or i32 %9, -1879048192
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %12 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !11
  %13 = tail call fastcc i32 @poll_oip(ptr noundef %0) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %8, %1
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 64
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %19 = and i32 %18, 268435455
  %20 = or i32 %19, 805306368
  %21 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %22 = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !11
  %23 = tail call fastcc i32 @poll_oip(ptr noundef %0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %15, %8
  %26 = phi ptr [ @.str, %8 ], [ @.str.1, %15 ]
  %27 = phi i32 [ %13, %8 ], [ %23, %15 ]
  %28 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull %26) #9
  br label %30

30:                                               ; preds = %25, %15
  %31 = phi i32 [ 0, %15 ], [ %27, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_run(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %6 = and i32 %5, 7340032
  %7 = icmp eq i32 %6, 2097152
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.2) #9
  br label %31

11:                                               ; preds = %1
  %12 = and i32 %5, 268435455
  %13 = or i32 %12, 1342177280
  %14 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %15 = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !11
  %16 = tail call fastcc i32 @poll_oip(ptr noundef %0)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %16) #9
  br label %31

21:                                               ; preds = %11
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr i8, ptr %22, i32 64
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %25 = lshr i32 %24, 20
  %26 = and i32 %25, 7
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.4, i32 noundef %26) #9
  br label %31

31:                                               ; preds = %28, %21, %18, %8
  %32 = phi i32 [ 0, %8 ], [ %16, %18 ], [ -108, %28 ], [ 0, %21 ]
  ret i32 %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdc_softconn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %6 = and i32 %5, -32
  %7 = or i32 %6, 21
  %8 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %9 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdc_softdisconn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %6 = and i32 %5, -385
  %7 = or i32 %6, 128
  %8 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %9 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_reinit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %6 = and i32 %5, 7340032
  %7 = icmp eq i32 %6, 1048576
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = and i32 %5, 268435455
  %10 = or i32 %9, -1879048192
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %12 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !11
  %13 = tail call fastcc i32 @poll_oip(ptr noundef %0) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str) #9
  br label %23

18:                                               ; preds = %8, %1
  %19 = tail call i32 @bdc_reset(ptr noundef %0)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  tail call fastcc void @bdc_mem_init(ptr noundef %0, i1 noundef zeroext true)
  %22 = tail call i32 @bdc_run(ptr noundef %0)
  br label %23

23:                                               ; preds = %21, %18, %15
  %24 = phi i32 [ %13, %15 ], [ %19, %18 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 18
  store i8 0, ptr %25, align 2
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bdc_mem_init(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 15
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 23
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 11, i32 1
  store i16 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 11, i32 2
  store i16 0, ptr %6, align 2
  %7 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 17
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 16
  store i8 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %13 = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #8, !srcloc !11
  %14 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %15 = getelementptr i8, ptr %14, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 24) #8, !srcloc !11
  %16 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 11, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 5
  %19 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %20 = getelementptr i8, ptr %19, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !11
  %21 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %22 = getelementptr i8, ptr %21, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #8, !srcloc !11
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr i8, ptr %23, i32 520
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %26 = and i32 %25, -27
  %27 = or i32 %26, 2
  %28 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %29 = getelementptr i8, ptr %28, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !11
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr i8, ptr %30, i32 524
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %33 = and i32 %32, -65536
  %34 = or i32 %33, 500
  %35 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %36 = getelementptr i8, ptr %35, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #8, !srcloc !11
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 44
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %40 = or i32 %39, 65536
  %41 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %42 = getelementptr i8, ptr %41, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !11
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr i8, ptr %43, i32 44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr i8, ptr %46, i32 64
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %49 = or i32 %48, 128
  %50 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %51 = getelementptr i8, ptr %50, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #8, !srcloc !11
  br i1 %1, label %52, label %83

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 11
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr i8, ptr %54, i32 64
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %57 = or i32 %56, 2
  %58 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %59 = getelementptr i8, ptr %58, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #8, !srcloc !11
  %60 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 9, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 10
  %63 = load i32, ptr %62, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %61, i8 0, i32 %63, i1 false)
  %64 = load ptr, ptr %53, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1024) %64, i8 0, i32 1024, i1 false)
  %65 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i32 [ 1, %72 ], [ %80, %74 ]
  %76 = load ptr, ptr %73, align 8
  %77 = getelementptr ptr, ptr %76, i32 %75
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.bdc_ep, ptr %78, i32 0, i32 8
  store i32 0, ptr %79, align 4
  %80 = add nuw i32 %75, 1
  %81 = load i32, ptr %69, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %74, label %89

83:                                               ; preds = %2
  %84 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 26
  store ptr @bdc_sr_xsf, ptr %84, align 4
  %85 = getelementptr %struct.bdc, ptr %0, i32 0, i32 26, i32 1
  store ptr @bdc_sr_uspc, ptr %85, align 4
  %86 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 27
  store ptr @bdc_xsf_ep0_setup_recv, ptr %86, align 4
  %87 = getelementptr %struct.bdc, ptr %0, i32 0, i32 27, i32 1
  store ptr @bdc_xsf_ep0_data_start, ptr %87, align 4
  %88 = getelementptr %struct.bdc, ptr %0, i32 0, i32 27, i32 2
  store ptr @bdc_xsf_ep0_status_start, ptr %88, align 4
  br label %89

89:                                               ; preds = %83, %74, %68, %52
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bdc_driver_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bdc_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bdc_driver_exit() #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bdc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_sr_xsf(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_sr_uspc(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_xsf_ep0_setup_recv(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_xsf_ep0_data_start(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_xsf_ep0_status_start(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 920, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %101, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %7 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 8
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %101

11:                                               ; preds = %5
  %12 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %101, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 3
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %16, align 8
  %17 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 21
  store i32 %12, ptr %17, align 8
  %18 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 2
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @of_count_phandle_with_args(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %22 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 5
  store i32 %21, ptr %22, align 8
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %14
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #8
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %27, label %29, !prof !14

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 4
  store ptr null, ptr %28, align 4
  br label %101

29:                                               ; preds = %24
  %30 = extractvalue { i32, i1 } %25, 0
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %30, i32 noundef 3520) #8
  %32 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 4
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %101, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %22, align 8
  br label %37

36:                                               ; preds = %14
  store i32 0, ptr %22, align 8
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %38) #9
  %39 = load i32, ptr %22, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 4
  br label %47

43:                                               ; preds = %47
  %44 = add nuw nsw i32 %48, 1
  %45 = load i32, ptr %22, align 8
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43, %41
  %48 = phi i32 [ 0, %41 ], [ %44, %43 ]
  %49 = load ptr, ptr %19, align 8
  %50 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %2, ptr noundef %49, i32 noundef %48) #8
  %51 = load ptr, ptr %42, align 4
  %52 = getelementptr ptr, ptr %51, i32 %48
  store ptr %50, ptr %52, align 4
  %53 = load ptr, ptr %42, align 4
  %54 = getelementptr ptr, ptr %53, i32 %48
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %43

57:                                               ; preds = %47
  %58 = ptrtoint ptr %55 to i32
  %59 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.10, i32 noundef %58) #9
  br label %101

60:                                               ; preds = %43, %37
  %61 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.11) #8
  %62 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 30
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = ptrtoint ptr %61 to i32
  br label %101

66:                                               ; preds = %60
  %67 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %61)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12) #9
  br label %101

70:                                               ; preds = %66
  %71 = tail call fastcc i32 @bdc_phy_init(ptr noundef nonnull %3)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.13, i32 noundef %71) #9
  br label %98

75:                                               ; preds = %70
  %76 = load ptr, ptr %7, align 4
  %77 = getelementptr i8, ptr %76, i32 12
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %2, i64 noundef -1)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81, %75
  %85 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %2, i64 noundef 4294967295)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14) #9
  br label %96

88:                                               ; preds = %84, %81
  %89 = tail call fastcc i32 @bdc_hw_init(ptr noundef nonnull %3)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %89) #9
  br label %96

92:                                               ; preds = %88
  %93 = tail call i32 @bdc_udc_init(ptr noundef nonnull %3) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %93) #9
  tail call fastcc void @bdc_mem_free(ptr noundef nonnull %3) #8
  br label %96

96:                                               ; preds = %95, %91, %87
  %97 = phi i32 [ -524, %87 ], [ %89, %91 ], [ %93, %95 ]
  tail call fastcc void @bdc_phy_exit(ptr noundef nonnull %3)
  br label %98

98:                                               ; preds = %96, %73
  %99 = phi i32 [ %71, %73 ], [ %97, %96 ]
  %100 = load ptr, ptr %62, align 4
  tail call void @clk_disable(ptr noundef %100) #8
  tail call void @clk_unprepare(ptr noundef %100) #8
  br label %101

101:                                              ; preds = %98, %92, %69, %64, %57, %29, %27, %11, %9, %1
  %102 = phi i32 [ %10, %9 ], [ %58, %57 ], [ %65, %64 ], [ %67, %69 ], [ %99, %98 ], [ -12, %1 ], [ %12, %11 ], [ -12, %29 ], [ 0, %92 ], [ -12, %27 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @bdc_udc_exit(ptr noundef %3) #8
  tail call fastcc void @bdc_mem_free(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 4
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %19, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @phy_power_off(ptr noundef %13) #8
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr ptr, ptr %15, i32 %10
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @phy_exit(ptr noundef %17) #8
  %19 = add nuw nsw i32 %10, 1
  %20 = load i32, ptr %4, align 8
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %9, label %22

22:                                               ; preds = %9, %1
  %23 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 30
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #8
  tail call void @clk_unprepare(ptr noundef %24) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bdc_phy_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %44

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 4
  br label %7

7:                                                ; preds = %25, %5
  %8 = phi i32 [ 0, %5 ], [ %26, %25 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_init(ptr noundef %11) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %7
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr ptr, ptr %15, i32 %8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @phy_power_on(ptr noundef %17) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr ptr, ptr %21, i32 %8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @phy_exit(ptr noundef %23) #8
  br label %29

25:                                               ; preds = %14
  %26 = add nuw nsw i32 %8, 1
  %27 = load i32, ptr %2, align 8
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %7, label %44

29:                                               ; preds = %20, %7
  %30 = phi i32 [ %18, %20 ], [ %12, %7 ]
  %31 = icmp eq i32 %8, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ %34, %32 ], [ %8, %29 ]
  %34 = add nsw i32 %33, -1
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr ptr, ptr %35, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @phy_power_off(ptr noundef %37) #8
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr ptr, ptr %39, i32 %34
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @phy_exit(ptr noundef %41) #8
  %43 = icmp sgt i32 %33, 1
  br i1 %43, label %32, label %44

44:                                               ; preds = %32, %29, %25, %1
  %45 = phi i32 [ %30, %29 ], [ 0, %1 ], [ %30, %32 ], [ 0, %25 ]
  ret i32 %45
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @dma_set_mask(ptr noundef %0, i64 noundef %1) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef %1) #8
  br label %7

7:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bdc_hw_init(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @bdc_reset(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17, i32 noundef %2) #9
  br label %69

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 7
  %13 = shl nuw nsw i32 1024, %12
  %14 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.19, ptr noundef %15, i32 noundef 1024, i32 noundef 16, i32 noundef %13) #8
  %17 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 24
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %65, label %19

19:                                               ; preds = %7
  %20 = load ptr, ptr %8, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %22 = and i32 %21, 7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = shl nuw nsw i32 32, %22
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 9
  %28 = tail call ptr @dma_alloc_attrs(ptr noundef %26, i32 noundef %25, ptr noundef %27, i32 noundef 3264, i32 noundef 0) #8
  %29 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 9, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 10
  store i32 %25, ptr %32, align 4
  %33 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 9, i32 2
  store i32 %25, ptr %33, align 8
  %34 = load i32, ptr %27, align 8
  %35 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %36 = getelementptr i8, ptr %35, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #8, !srcloc !11
  %37 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %38 = getelementptr i8, ptr %37, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #8, !srcloc !11
  br label %40

39:                                               ; preds = %24
  store ptr null, ptr %29, align 4
  br label %65

40:                                               ; preds = %31, %19
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr i8, ptr %41, i32 3300
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %44 = lshr i32 %43, 28
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr i8, ptr %45, i32 3284
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %48 = lshr i32 %47, 28
  %49 = add nuw nsw i32 %48, %44
  %50 = add nuw nsw i32 %49, 2
  %51 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 6
  store i32 %50, ptr %51, align 4
  %52 = shl nuw nsw i32 %50, 2
  %53 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #10
  %54 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  store ptr %53, ptr %54, align 8
  %55 = icmp eq ptr %53, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %40
  %57 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %58 = getelementptr i8, ptr %57, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 24) #8, !srcloc !11
  %59 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 11
  %60 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 11, i32 2
  store i16 0, ptr %60, align 2
  %61 = load ptr, ptr %14, align 4
  %62 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 11, i32 3
  %63 = tail call ptr @dma_alloc_attrs(ptr noundef %61, i32 noundef 1024, ptr noundef %62, i32 noundef 3264, i32 noundef 0) #8
  store ptr %63, ptr %59, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %56, %40, %39, %7
  %66 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.20) #9
  tail call fastcc void @bdc_mem_free(ptr noundef %0) #8
  %67 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.18) #9
  br label %69

68:                                               ; preds = %56
  tail call fastcc void @bdc_mem_init(ptr noundef %0, i1 noundef zeroext false)
  br label %69

69:                                               ; preds = %68, %65, %4
  %70 = phi i32 [ %2, %4 ], [ -12, %65 ], [ 0, %68 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_udc_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bdc_phy_exit(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 4
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %17, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_power_off(ptr noundef %11) #8
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr ptr, ptr %13, i32 %8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @phy_exit(ptr noundef %15) #8
  %17 = add nuw nsw i32 %8, 1
  %18 = load i32, ptr %2, align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %7, label %20

20:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bdc_mem_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 11, i32 3
  %9 = load i32, ptr %8, align 8
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 1024, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #8
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 9, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 9
  %16 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %15, align 8
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %12, i32 noundef %20, i32 noundef 0) #8
  br label %21

21:                                               ; preds = %14, %10
  %22 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 24
  %23 = load ptr, ptr %22, align 4
  tail call void @dma_pool_destroy(ptr noundef %23) #8
  %24 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 8
  tail call void @kfree(ptr noundef %25) #8
  store ptr null, ptr %2, align 8
  store ptr null, ptr %11, align 4
  store ptr null, ptr %22, align 4
  store ptr null, ptr %24, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_udc_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %8 = and i32 %7, 7340032
  %9 = icmp eq i32 %8, 1048576
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = and i32 %7, 268435455
  %12 = or i32 %11, -1879048192
  %13 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %14 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !11
  %15 = tail call fastcc i32 @poll_oip(ptr noundef %3) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str) #9
  br label %23

20:                                               ; preds = %10, %1
  %21 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #8
  tail call void @clk_unprepare(ptr noundef %22) #8
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ 0, %20 ], [ %15, %17 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  %14 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.21) #9
  br label %23

16:                                               ; preds = %8
  %17 = tail call i32 @bdc_reinit(ptr noundef %3)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.22) #9
  %22 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %22) #8
  tail call void @clk_unprepare(ptr noundef %22) #8
  br label %23

23:                                               ; preds = %19, %16, %12
  %24 = phi i32 [ %13, %12 ], [ %17, %19 ], [ 0, %16 ]
  ret i32 %24
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
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
!8 = !{i64 3834701}
!9 = !{i64 2153860414}
!10 = !{i64 2153860766}
!11 = !{i64 3834283}
!12 = !{i64 2153863868}
!13 = !{i64 2153864199}
!14 = !{!"branch_weights", i32 1, i32 2000}
