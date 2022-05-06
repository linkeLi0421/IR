; ModuleID = '/llk/IR/drivers/net/usb/net1080.c_pt.bc'
source_filename = "../drivers/net/usb/net1080.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.113, i32, %struct.spinlock }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.115, i32 }
%union.anon.115 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.nc_header = type { i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_net1080__325_518_net1080_driver_init6 = internal global ptr @net1080_driver_init, section ".initcall6.init", align 4
@net1080_driver = internal global %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 4 }, align 4
@__exitcall_net1080_driver_exit = internal global ptr @net1080_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author326 = internal constant [30 x i8] c"net1080.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description327 = internal constant [62 x i8] c"net1080.description=NetChip 1080 based USB Host-to-Host Links\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [37 x i8] c"net1080.file=drivers/net/usb/net1080\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [20 x i8] c"net1080.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"net1080\00", align 1
@products = internal constant [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1317, i16 4224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @net1080_info to i32) }, %struct.usb_device_id { i16 3, i16 1744, i16 1570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @net1080_info to i32) }, %struct.usb_device_id zeroinitializer], align 4
@net1080_info = internal constant %struct.driver_info { ptr @.str.1, i32 4097, ptr @net1080_bind, ptr null, ptr @net1080_reset, ptr null, ptr @net1080_check_connect, ptr null, ptr null, ptr null, ptr @net1080_rx_fixup, ptr @net1080_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"NetChip TurboCONNECT\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"port %c, peer %sconnected\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__exitcall_net1080_driver_exit, ptr @__initcall__kmod_net1080__325_518_net1080_driver_init6, ptr @net1080_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @net1080_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @net1080_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @net1080_driver_exit() #0 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @net1080_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net1080_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 19
  %6 = load i16, ptr %5, align 2
  %7 = add i16 %6, 9
  store i16 %7, ptr %5, align 2
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 19
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 23
  store i32 32767, ptr %16, align 4
  %17 = tail call i32 @usbnet_get_endpoints(ptr noundef %0, ptr noundef %1) #7
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net1080_reset(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @usbnet_read_cmd(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef nonnull %2, i16 noundef zeroext 2) #7
  %4 = call i32 @llvm.smin.i32(i32 %3, i32 0) #7
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 2
  %8 = call i32 @usbnet_read_cmd(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %2, i16 noundef zeroext 2) #7
  %9 = call i32 @llvm.smin.i32(i32 %8, i32 0) #7
  %10 = icmp slt i32 %8, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %6
  %12 = call i32 @usbnet_write_cmd(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #7
  %13 = call i32 @usbnet_read_cmd(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %2, i16 noundef zeroext 2) #7
  %14 = call i32 @llvm.smin.i32(i32 %13, i32 0) #7
  %15 = icmp slt i32 %13, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = load i16, ptr %2, align 2
  %18 = or i16 %17, 255
  %19 = call i32 @usbnet_write_cmd(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext %18, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0) #7
  %20 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 20
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  %27 = zext i16 %7 to i32
  %28 = and i32 %27, 32768
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 66, i32 65
  %31 = and i32 %27, 16384
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @.str.4, ptr @.str.3
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef %30, ptr noundef nonnull %33) #8
  br label %34

34:                                               ; preds = %24, %16, %11, %6, %1
  %35 = phi i32 [ %4, %1 ], [ %9, %6 ], [ %14, %11 ], [ 0, %24 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net1080_check_connect(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @usbnet_read_cmd(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef nonnull %2, i16 noundef zeroext 2) #7
  %4 = call i32 @llvm.smin.i32(i32 %3, i32 0) #7
  %5 = load i16, ptr %2, align 2
  %6 = and i16 %5, 16384
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %7, i32 -67, i32 0
  %9 = icmp slt i32 %3, 0
  %10 = select i1 %9, i32 %4, i32 %8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net1080_rx_fixup(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 19
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp ult i32 %4, %9
  br i1 %10, label %122, label %11

11:                                               ; preds = %2
  %12 = and i32 %4, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr %struct.usbnet, ptr %0, i32 0, i32 21, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = icmp ult i32 %20, 6
  br i1 %21, label %122, label %22

22:                                               ; preds = %14
  %23 = tail call i32 @usbnet_write_cmd_async(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %122

25:                                               ; preds = %22
  store i32 0, ptr %18, align 4
  br label %122

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr inbounds %struct.nc_header, ptr %28, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ugt i16 %31, 32744
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = getelementptr %struct.usbnet, ptr %0, i32 0, i32 21, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  %41 = icmp ult i32 %40, 6
  br i1 %41, label %122, label %42

42:                                               ; preds = %34
  %43 = tail call i32 @usbnet_write_cmd_async(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %122

45:                                               ; preds = %42
  store i32 0, ptr %38, align 4
  br label %122

46:                                               ; preds = %26
  %47 = zext i16 %29 to i32
  %48 = icmp ult i16 %29, 6
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 13
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = getelementptr %struct.usbnet, ptr %0, i32 0, i32 21, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  %56 = icmp ult i32 %55, 6
  br i1 %56, label %122, label %57

57:                                               ; preds = %49
  %58 = tail call i32 @usbnet_write_cmd_async(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %122

60:                                               ; preds = %57
  store i32 0, ptr %53, align 4
  br label %122

61:                                               ; preds = %46
  %62 = icmp eq i16 %29, 6
  br i1 %62, label %72, label %63

63:                                               ; preds = %61
  %64 = getelementptr %struct.usbnet, ptr %0, i32 0, i32 21, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = icmp ult i32 %66, 6
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = tail call i32 @usbnet_write_cmd_async(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, ptr %64, align 4
  br label %72

72:                                               ; preds = %71, %68, %63, %61
  %73 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %47) #7
  %74 = load ptr, ptr %27, align 4
  %75 = load i32, ptr %3, align 8
  %76 = getelementptr i8, ptr %74, i32 %75
  %77 = getelementptr i8, ptr %76, i32 -2
  %78 = add i32 %75, -2
  tail call void @skb_trim(ptr noundef %1, i32 noundef %78) #7
  %79 = and i32 %32, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %72
  %82 = load ptr, ptr %27, align 4
  %83 = getelementptr i8, ptr %82, i32 %32
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, -84
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %5, align 4
  %88 = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 36, i32 13
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 4
  br label %122

91:                                               ; preds = %81
  %92 = load i32, ptr %3, align 8
  %93 = add i32 %92, -1
  tail call void @skb_trim(ptr noundef %1, i32 noundef %93) #7
  br label %94

94:                                               ; preds = %91, %72
  %95 = load i32, ptr %3, align 8
  %96 = icmp eq i32 %95, %32
  br i1 %96, label %110, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %5, align 4
  %99 = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 36, i32 13
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 4
  %102 = getelementptr %struct.usbnet, ptr %0, i32 0, i32 21, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  %105 = icmp ult i32 %104, 6
  br i1 %105, label %122, label %106

106:                                              ; preds = %97
  %107 = tail call i32 @usbnet_write_cmd_async(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #7
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  store i32 0, ptr %102, align 4
  br label %122

110:                                              ; preds = %94
  %111 = getelementptr inbounds %struct.nc_header, ptr %28, i32 0, i32 2
  %112 = load i16, ptr %111, align 1
  %113 = load i16, ptr %77, align 1
  %114 = icmp eq i16 %112, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr %5, align 4
  %117 = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 36, i32 14
  %118 = load i32, ptr %117, align 8
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 8
  br label %122

120:                                              ; preds = %110
  %121 = getelementptr %struct.usbnet, ptr %0, i32 0, i32 21, i32 1
  store i32 0, ptr %121, align 4
  br label %122

122:                                              ; preds = %120, %115, %109, %106, %97, %86, %60, %57, %49, %45, %42, %34, %25, %22, %14, %2
  %123 = phi i32 [ 0, %86 ], [ 0, %115 ], [ 1, %120 ], [ 0, %2 ], [ 0, %14 ], [ 0, %22 ], [ 0, %25 ], [ 0, %34 ], [ 0, %42 ], [ 0, %45 ], [ 0, %49 ], [ 0, %57 ], [ 0, %60 ], [ 0, %97 ], [ 0, %106 ], [ 0, %109 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @net1080_tx_fixup(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 10
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %50

19:                                               ; preds = %12, %3
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %21 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %34 = load ptr, ptr %33, align 8
  %35 = ptrtoint ptr %32 to i32
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %35, %36
  %38 = icmp sle i32 %7, %37
  %39 = icmp ugt i32 %26, 5
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %53, label %41

41:                                               ; preds = %30, %19
  %42 = phi i32 [ %37, %30 ], [ 0, %19 ]
  %43 = sub nuw nsw i32 9, %6
  %44 = add i32 %42, %26
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %23, i32 6
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %47, ptr align 1 %21, i32 %5, i1 false)
  store ptr %47, ptr %20, align 4
  %48 = getelementptr i8, ptr %47, i32 %5
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  store ptr %48, ptr %49, align 8
  br label %53

50:                                               ; preds = %41, %12
  %51 = tail call ptr @skb_copy_expand(ptr noundef %1, i32 noundef 6, i32 noundef %7, i32 noundef %2) #7
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %72, label %53

53:                                               ; preds = %50, %46, %30
  %54 = phi ptr [ %51, %50 ], [ %1, %46 ], [ %1, %30 ]
  %55 = tail call ptr @skb_push(ptr noundef %54, i32 noundef 6) #7
  store i16 6, ptr %55, align 1
  %56 = trunc i32 %5 to i16
  %57 = getelementptr inbounds %struct.nc_header, ptr %55, i32 0, i32 1
  store i16 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 22
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4
  %61 = trunc i32 %59 to i16
  %62 = getelementptr inbounds %struct.nc_header, ptr %55, i32 0, i32 2
  store i16 %61, ptr %62, align 1
  %63 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 5
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = tail call ptr @skb_put(ptr noundef %54, i32 noundef 1) #7
  store i8 -84, ptr %68, align 1
  br label %69

69:                                               ; preds = %67, %53
  %70 = tail call ptr @skb_put(ptr noundef %54, i32 noundef 2) #7
  %71 = load i16, ptr %62, align 1
  store i16 %71, ptr %70, align 1
  br label %72

72:                                               ; preds = %69, %50
  %73 = phi ptr [ %54, %69 ], [ null, %50 ]
  ret ptr %73
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{!"auto-init"}
