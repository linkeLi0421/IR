; ModuleID = '/llk/IR/drivers/net/can/sun4i_can.c_pt.bc'
source_filename = "../drivers/net/can/sun4i_can.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sun4ican_quirks = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.120, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.120 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.134 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.can_berr_counter = type { i16, i16 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.135, i8, i8, i8, [8 x i8] }
%union.anon.135 = type { i8 }

@__initcall__kmod_sun4i_can__422_908_sun4i_can_driver_init6 = internal global ptr @sun4i_can_driver_init, section ".initcall6.init", align 4
@sun4i_can_driver = internal global %struct.platform_driver { ptr @sun4ican_probe, ptr @sun4ican_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4ican_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun4i_can_driver_exit = internal global ptr @sun4i_can_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author423 = internal constant [51 x i8] c"sun4i_can.author=Peter Chen <xingkongcp@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author424 = internal constant [67 x i8] c"sun4i_can.author=Gerhard Bertelsmann <info@gerhard-bertelsmann.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file425 = internal constant [41 x i8] c"sun4i_can.file=drivers/net/can/sun4i_can\00", section ".modinfo", align 1
@__UNIQUE_ID_license426 = internal constant [31 x i8] c"sun4i_can.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description427 = internal constant [62 x i8] c"sun4i_can.description=CAN driver for Allwinner SoCs (A10/A20)\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sun4i_can\00", align 1
@sun4ican_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4ican_quirks_a10 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4ican_quirks_a10 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4ican_quirks_r40 }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to determine the quirks to use\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to request reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to request clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"could not allocate memory for CAN device\0A\00", align 1
@sun4ican_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @sun4ican_open, ptr @sun4ican_close, ptr @sun4ican_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sun4ican_bittiming_const = internal constant %struct.can_bittiming_const { [16 x i8] c"sun4i_can\00\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 64, i32 1 }, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"registering %s failed (err=%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"device registered (base=%p, irq=%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"request_irq err: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"could not deassert CAN reset\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"could not enable CAN peripheral clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"could not start CAN peripheral\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"wakeup interrupt\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"can't allocate buffer - clearing pending interrupts\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"setting controller into reset mode failed!\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"setting controller into normal mode failed!\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"could not enter reset mode\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"could not enter normal mode\0A\00", align 1
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"include/linux/can/skb.h\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"starting CAN controller failed!\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"could not enable clock\0A\00", align 1
@sun4ican_quirks_a10 = internal constant %struct.sun4ican_quirks zeroinitializer, align 1
@sun4ican_quirks_r40 = internal constant %struct.sun4ican_quirks { i8 1 }, align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author423, ptr @__UNIQUE_ID_author424, ptr @__UNIQUE_ID_description427, ptr @__UNIQUE_ID_file425, ptr @__UNIQUE_ID_license426, ptr @__exitcall_sun4i_can_driver_exit, ptr @__initcall__kmod_sun4i_can__422_908_sun4i_can_driver_init6, ptr @sun4i_can_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun4i_can_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_can_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_can_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_can_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4ican_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %57

8:                                                ; preds = %1
  %9 = load i8, ptr %5, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  %15 = ptrtoint ptr %12 to i32
  br label %57

16:                                               ; preds = %11, %8
  %17 = phi ptr [ %12, %11 ], [ null, %8 ]
  %18 = tail call ptr @of_clk_get(ptr noundef %4, i32 noundef 0) #6
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %57

21:                                               ; preds = %16
  %22 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  br label %57

29:                                               ; preds = %24
  %30 = tail call ptr @alloc_candev_mqs(i32 noundef 272, i32 noundef 1, i32 noundef 1, i32 noundef 1) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  br label %57

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 16
  store ptr @sun4ican_netdev_ops, ptr %34, align 8
  %35 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 59
  store i32 %22, ptr %35, align 8
  %36 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 14
  %37 = load i32, ptr %36, align 8
  %38 = or i32 %37, 262144
  store i32 %38, ptr %36, align 8
  %39 = tail call i32 @clk_get_rate(ptr noundef %18) #6
  %40 = getelementptr i8, ptr %30, i32 1544
  store i32 %39, ptr %40, align 4
  %41 = getelementptr i8, ptr %30, i32 1436
  store ptr @sun4ican_bittiming_const, ptr %41, align 4
  %42 = getelementptr i8, ptr %30, i32 1644
  store ptr @sun4ican_set_mode, ptr %42, align 4
  %43 = getelementptr i8, ptr %30, i32 1656
  store ptr @sun4ican_get_berr_counter, ptr %43, align 4
  %44 = getelementptr i8, ptr %30, i32 1584
  store i32 23, ptr %44, align 4
  %45 = getelementptr i8, ptr %30, i32 1664
  store ptr %25, ptr %45, align 4
  %46 = getelementptr i8, ptr %30, i32 1668
  store ptr %18, ptr %46, align 4
  %47 = getelementptr i8, ptr %30, i32 1672
  store ptr %17, ptr %47, align 4
  %48 = getelementptr i8, ptr %30, i32 1676
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %30, ptr %49, align 8
  %50 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 111, i32 1
  store ptr %2, ptr %50, align 4
  %51 = tail call i32 @register_candev(ptr noundef nonnull %30) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef %51) #7
  tail call void @free_candev(ptr noundef nonnull %30) #6
  br label %57

54:                                               ; preds = %33
  %55 = load ptr, ptr %45, align 4
  %56 = load i32, ptr %35, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %55, i32 noundef %56) #7
  br label %57

57:                                               ; preds = %54, %53, %32, %27, %21, %20, %14, %7
  %58 = phi i32 [ 0, %54 ], [ %15, %14 ], [ -19, %20 ], [ %28, %27 ], [ %51, %53 ], [ -12, %32 ], [ -19, %7 ], [ -19, %21 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4ican_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_netdev(ptr noundef %3) #6
  tail call void @free_candev(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4ican_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @sun4i_can_start(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #7
  br label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 12
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @netif_tx_wake_queue(ptr noundef %10) #6
  br label %16

16:                                               ; preds = %15, %8, %7, %2
  %17 = phi i32 [ %5, %7 ], [ -95, %2 ], [ 0, %8 ], [ 0, %15 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4ican_get_berr_counter(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1668
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @clk_enable(ptr noundef %4) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #6
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i32 [ %8, %10 ], [ %5, %2 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #7
  br label %25

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %0, i32 1664
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %18 = trunc i32 %17 to i16
  %19 = and i16 %18, 255
  store i16 %19, ptr %1, align 2
  %20 = lshr i32 %17, 16
  %21 = trunc i32 %20 to i16
  %22 = and i16 %21, 255
  %23 = getelementptr inbounds %struct.can_berr_counter, ptr %1, i32 0, i32 1
  store i16 %22, ptr %23, align 2
  %24 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  br label %25

25:                                               ; preds = %13, %11
  %26 = phi i32 [ %12, %11 ], [ 0, %13 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4ican_open(ptr noundef %0) #2 {
  %2 = tail call i32 @open_candev(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %46

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @sun4i_can_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %0) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %7) #7
  br label %44

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 1672
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @reset_control_deassert(ptr noundef %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #7
  br label %40

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %0, i32 1668
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = tail call i32 @clk_enable(ptr noundef %18) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i32 [ %22, %24 ], [ %19, %16 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #7
  br label %36

27:                                               ; preds = %21
  %28 = tail call fastcc i32 @sun4i_can_start(ptr noundef %0)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.10) #7
  %31 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %31) #6
  tail call void @clk_unprepare(ptr noundef %31) #6
  br label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %34 = load ptr, ptr %33, align 64
  %35 = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %35) #6
  br label %46

36:                                               ; preds = %30, %25
  %37 = phi i32 [ %26, %25 ], [ %28, %30 ]
  %38 = load ptr, ptr %11, align 4
  %39 = tail call i32 @reset_control_assert(ptr noundef %38) #6
  br label %40

40:                                               ; preds = %36, %15
  %41 = phi i32 [ %13, %15 ], [ %37, %36 ]
  %42 = load i32, ptr %5, align 8
  %43 = tail call ptr @free_irq(i32 noundef %42, ptr noundef %0) #6
  br label %44

44:                                               ; preds = %40, %9
  %45 = phi i32 [ %7, %9 ], [ %41, %40 ]
  tail call void @close_candev(ptr noundef %0) #6
  br label %46

46:                                               ; preds = %44, %32, %1
  %47 = phi i32 [ %45, %44 ], [ 0, %32 ], [ %2, %1 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4ican_close(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #6
  %5 = getelementptr i8, ptr %0, i32 1576
  store i32 4, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 1664
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %9 = or i32 %8, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %10 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #6, !srcloc !13
  %11 = load ptr, ptr %6, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #7
  br label %19

16:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !13
  br label %19

19:                                               ; preds = %16, %15
  %20 = getelementptr i8, ptr %0, i32 1668
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  %22 = getelementptr i8, ptr %0, i32 1672
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @reset_control_assert(ptr noundef %23) #6
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %26 = load i32, ptr %25, align 8
  %27 = tail call ptr @free_irq(i32 noundef %26, ptr noundef %0) #6
  tail call void @close_candev(ptr noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4ican_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %6 = load i16, ptr %5, align 8
  switch i16 %6, label %65 [
    i16 3072, label %7
    i16 3328, label %15
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %65, !prof !16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp ugt i8 %13, 8
  br i1 %14, label %65, label %23, !prof !17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 72
  br i1 %18, label %19, label %65, !prof !16

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp ugt i8 %21, 64
  br i1 %22, label %65, label %23, !prof !17

23:                                               ; preds = %19, %11
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 8
  %26 = ptrtoint ptr %4 to i32
  %27 = ptrtoint ptr %25 to i32
  %28 = sub i32 %26, %27
  %29 = icmp ult i32 %28, 16
  %30 = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !17

33:                                               ; preds = %23
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
  br label %34

34:                                               ; preds = %33, %23
  br i1 %29, label %65, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 96
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %24, align 8
  store i32 %42, ptr %43, align 8
  %44 = load ptr, ptr %24, align 8
  %45 = getelementptr inbounds %struct.can_skb_priv, ptr %44, i32 0, i32 1
  store i32 0, ptr %45, align 4
  %46 = load i16, ptr %36, align 8
  %47 = and i16 %46, -97
  %48 = or i16 %47, 32
  store i16 %48, ptr %36, align 8
  %49 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 262144
  %52 = icmp eq i32 %51, 0
  %53 = and i16 %48, -72
  %54 = or i16 %53, 5
  %55 = select i1 %52, i16 %53, i16 %54
  store i16 %55, ptr %36, align 8
  %56 = load ptr, ptr %3, align 4
  %57 = load ptr, ptr %24, align 8
  %58 = ptrtoint ptr %56 to i32
  %59 = ptrtoint ptr %57 to i32
  %60 = sub i32 %58, %59
  %61 = trunc i32 %60 to i16
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %61, ptr %62, align 2
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %61, ptr %63, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %61, ptr %64, align 2
  br label %69

65:                                               ; preds = %34, %19, %15, %11, %7, %2
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #6
  %66 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 4
  br label %142

69:                                               ; preds = %40, %35
  %70 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %71 = load ptr, ptr %70, align 64
  %72 = getelementptr inbounds %struct.netdev_queue, ptr %71, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %72) #6
  %73 = load i32, ptr %4, align 8
  %74 = getelementptr inbounds %struct.can_frame, ptr %4, i32 0, i32 1
  %75 = load i8, ptr %74, align 4
  %76 = zext i8 %75 to i32
  %77 = lshr i32 %73, 24
  %78 = and i32 %77, 64
  %79 = or i32 %78, %76
  %80 = icmp sgt i32 %73, -1
  br i1 %80, label %100, label %81

81:                                               ; preds = %69
  %82 = or i32 %79, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %83 = lshr i32 %73, 21
  %84 = and i32 %83, 255
  %85 = getelementptr i8, ptr %1, i32 1664
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %84) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %88 = lshr i32 %73, 13
  %89 = and i32 %88, 255
  %90 = load ptr, ptr %85, align 4
  %91 = getelementptr i8, ptr %90, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %92 = lshr i32 %73, 5
  %93 = and i32 %92, 255
  %94 = load ptr, ptr %85, align 4
  %95 = getelementptr i8, ptr %94, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %96 = shl i32 %73, 3
  %97 = and i32 %96, 248
  %98 = load ptr, ptr %85, align 4
  %99 = getelementptr i8, ptr %98, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #6, !srcloc !13
  br label %110

100:                                              ; preds = %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %101 = lshr i32 %73, 3
  %102 = and i32 %101, 255
  %103 = getelementptr i8, ptr %1, i32 1664
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr i8, ptr %104, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %102) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %106 = shl i32 %73, 5
  %107 = and i32 %106, 224
  %108 = load ptr, ptr %103, align 4
  %109 = getelementptr i8, ptr %108, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #6, !srcloc !13
  br label %110

110:                                              ; preds = %100, %81
  %111 = phi i32 [ 84, %81 ], [ 76, %100 ]
  %112 = phi i32 [ %82, %81 ], [ %79, %100 ]
  %113 = icmp eq i8 %75, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %1, i32 1664
  br label %116

116:                                              ; preds = %116, %114
  %117 = phi i32 [ 0, %114 ], [ %125, %116 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %118 = getelementptr %struct.can_frame, ptr %4, i32 0, i32 5, i32 %117
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load ptr, ptr %115, align 4
  %122 = shl i32 %117, 2
  %123 = add nuw nsw i32 %122, %111
  %124 = getelementptr i8, ptr %121, i32 %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %120) #6, !srcloc !13
  %125 = add nuw nsw i32 %117, 1
  %126 = icmp eq i32 %125, %76
  br i1 %126, label %127, label %116

127:                                              ; preds = %116, %110
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %128 = getelementptr i8, ptr %1, i32 1664
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %112) #6, !srcloc !13
  %131 = tail call i32 @can_put_echo_skb(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #6
  %132 = getelementptr i8, ptr %1, i32 1580
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  %136 = getelementptr i8, ptr %1, i32 1676
  %137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %136) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  %138 = load ptr, ptr %128, align 4
  %139 = getelementptr i8, ptr %138, i32 4
  br i1 %135, label %141, label %140

140:                                              ; preds = %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 16) #6, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %137) #6
  br label %142

141:                                              ; preds = %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 1) #6, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %137) #6
  br label %142

142:                                              ; preds = %141, %140, %65
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_can_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr i8, ptr %1, i32 1664
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %325, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %14 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %15 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %17 = getelementptr i8, ptr %1, i32 1676
  %18 = getelementptr i8, ptr %1, i32 1576
  %19 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %21 = getelementptr i8, ptr %1, i32 1412
  %22 = getelementptr i8, ptr %1, i32 1428
  br label %23

23:                                               ; preds = %312, %11
  %24 = phi i32 [ %9, %11 ], [ %321, %312 ]
  %25 = phi i32 [ %8, %11 ], [ %320, %312 ]
  %26 = phi i32 [ 0, %11 ], [ %27, %312 ]
  %27 = add nuw nsw i32 %26, 1
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %31 = and i32 %25, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.11) #7
  br label %34

34:                                               ; preds = %33, %23
  %35 = and i32 %25, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = call i32 @can_get_echo_skb(ptr noundef %1, i32 noundef 0, ptr noundef null) #6
  %39 = load i32, ptr %12, align 4
  %40 = add i32 %39, %38
  store i32 %40, ptr %12, align 4
  %41 = load i32, ptr %13, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %13, align 4
  %43 = load ptr, ptr %14, align 64
  call void @netif_tx_wake_queue(ptr noundef %43) #6
  br label %44

44:                                               ; preds = %37, %34
  %45 = and i32 %25, 9
  %46 = icmp ne i32 %45, 1
  %47 = and i32 %30, 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %145, label %50

50:                                               ; preds = %139, %44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !28
  %51 = call ptr @alloc_can_skb(ptr noundef %1, ptr noundef nonnull %4) #6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %139, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr i8, ptr %54, i32 64
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %57 = and i32 %56, 15
  %58 = call i32 @llvm.umin.i32(i32 %57, i32 8) #6
  %59 = trunc i32 %58 to i8
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr inbounds %struct.can_frame, ptr %60, i32 0, i32 1
  store i8 %59, ptr %61, align 4
  %62 = and i32 %56, 128
  %63 = icmp eq i32 %62, 0
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr i8, ptr %64, i32 68
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #6
  call void asm sideeffect "dsb ", "~{memory}"() #6
  br i1 %63, label %86, label %67

67:                                               ; preds = %53
  %68 = shl i32 %66, 21
  %69 = load ptr, ptr %5, align 4
  %70 = getelementptr i8, ptr %69, i32 72
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %72 = shl i32 %71, 13
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr i8, ptr %73, i32 76
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  %76 = shl i32 %75, 5
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr i8, ptr %77, i32 80
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !32
  %80 = lshr i32 %79, 3
  %81 = and i32 %80, 31
  %82 = or i32 %68, %72
  %83 = or i32 %82, %76
  %84 = or i32 %83, %81
  %85 = or i32 %84, -2147483648
  br label %94

86:                                               ; preds = %53
  %87 = shl i32 %66, 3
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr i8, ptr %88, i32 72
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  %91 = lshr i32 %90, 5
  %92 = and i32 %91, 7
  %93 = or i32 %92, %87
  br label %94

94:                                               ; preds = %86, %67
  %95 = phi i32 [ %85, %67 ], [ %93, %86 ]
  %96 = phi i32 [ 84, %67 ], [ 76, %86 ]
  %97 = and i32 %56, 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load ptr, ptr %4, align 4
  %101 = getelementptr inbounds %struct.can_frame, ptr %100, i32 0, i32 1
  %102 = load i8, ptr %101, align 4
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %125, label %107

104:                                              ; preds = %94
  %105 = or i32 %95, 1073741824
  %106 = load ptr, ptr %4, align 4
  br label %130

107:                                              ; preds = %107, %99
  %108 = phi i32 [ %117, %107 ], [ 0, %99 ]
  %109 = load ptr, ptr %5, align 4
  %110 = getelementptr i8, ptr %109, i32 %96
  %111 = shl i32 %108, 2
  %112 = getelementptr i8, ptr %110, i32 %111
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %114 = trunc i32 %113 to i8
  %115 = load ptr, ptr %4, align 4
  %116 = getelementptr %struct.can_frame, ptr %115, i32 0, i32 5, i32 %108
  store i8 %114, ptr %116, align 1
  %117 = add nuw nsw i32 %108, 1
  %118 = load ptr, ptr %4, align 4
  %119 = getelementptr inbounds %struct.can_frame, ptr %118, i32 0, i32 1
  %120 = load i8, ptr %119, align 4
  %121 = zext i8 %120 to i32
  %122 = icmp ult i32 %117, %121
  br i1 %122, label %107, label %123

123:                                              ; preds = %107
  %124 = zext i8 %120 to i32
  br label %125

125:                                              ; preds = %123, %99
  %126 = phi ptr [ %100, %99 ], [ %118, %123 ]
  %127 = phi i32 [ 0, %99 ], [ %124, %123 ]
  %128 = load i32, ptr %16, align 4
  %129 = add i32 %128, %127
  store i32 %129, ptr %16, align 4
  br label %130

130:                                              ; preds = %125, %104
  %131 = phi ptr [ %106, %104 ], [ %126, %125 ]
  %132 = phi i32 [ %105, %104 ], [ %95, %125 ]
  %133 = load i32, ptr %15, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %15, align 4
  store i32 %132, ptr %131, align 8
  %135 = call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #6
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  call void @arm_heavy_mb() #6
  %136 = load ptr, ptr %5, align 4
  %137 = getelementptr i8, ptr %136, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 4) #6, !srcloc !13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %135) #6
  %138 = call i32 @netif_rx(ptr noundef nonnull %51) #6
  br label %139

139:                                              ; preds = %130, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %140 = load ptr, ptr %5, align 4
  %141 = getelementptr i8, ptr %140, i32 8
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !36
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %50

145:                                              ; preds = %139, %44
  %146 = phi i32 [ %30, %44 ], [ %142, %139 ]
  %147 = and i32 %25, 236
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %312, label %149

149:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !28
  %150 = load i32, ptr %18, align 4
  %151 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %3) #6
  %152 = load ptr, ptr %5, align 4
  %153 = getelementptr i8, ptr %152, i32 28
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !37
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  %157 = and i32 %154, 255
  %158 = icmp eq ptr %151, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = and i32 %25, 255
  %161 = and i32 %25, 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %208, label %179

163:                                              ; preds = %149
  %164 = trunc i32 %154 to i8
  %165 = load ptr, ptr %3, align 4
  %166 = getelementptr %struct.can_frame, ptr %165, i32 0, i32 5, i32 6
  store i8 %164, ptr %166, align 2
  %167 = trunc i32 %155 to i8
  %168 = load ptr, ptr %3, align 4
  %169 = getelementptr %struct.can_frame, ptr %168, i32 0, i32 5, i32 7
  store i8 %167, ptr %169, align 1
  %170 = and i32 %25, 255
  %171 = and i32 %25, 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %208, label %173

173:                                              ; preds = %163
  %174 = load ptr, ptr %3, align 4
  %175 = load i32, ptr %174, align 8
  %176 = or i32 %175, 4
  store i32 %176, ptr %174, align 8
  %177 = load ptr, ptr %3, align 4
  %178 = getelementptr %struct.can_frame, ptr %177, i32 0, i32 5, i32 1
  store i8 1, ptr %178, align 1
  br label %179

179:                                              ; preds = %173, %159
  %180 = phi i32 [ %170, %173 ], [ %160, %159 ]
  %181 = load i32, ptr %19, align 4
  %182 = add i32 %181, 1
  store i32 %182, ptr %19, align 4
  %183 = load i32, ptr %20, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %20, align 4
  %185 = load ptr, ptr %5, align 4
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %187 = or i32 %186, 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  %188 = load ptr, ptr %5, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %187) #6, !srcloc !13
  %189 = load ptr, ptr %5, align 4
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %191 = and i32 %190, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %179
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.13) #7
  br label %194

194:                                              ; preds = %193, %179
  %195 = load ptr, ptr %5, align 4
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !38
  %197 = and i32 %196, -2
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  call void @arm_heavy_mb() #6
  %198 = load ptr, ptr %5, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %197) #6, !srcloc !13
  %199 = load ptr, ptr %5, align 4
  %200 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !40
  %201 = and i32 %200, 1
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %194
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #7
  br label %204

204:                                              ; preds = %203, %194
  %205 = call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #6
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  call void @arm_heavy_mb() #6
  %206 = load ptr, ptr %5, align 4
  %207 = getelementptr i8, ptr %206, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 8) #6, !srcloc !13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %205) #6
  br label %208

208:                                              ; preds = %204, %163, %159
  %209 = phi i32 [ %170, %163 ], [ %180, %204 ], [ %160, %159 ]
  %210 = and i32 %209, 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %208
  %213 = and i32 %146, 128
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = lshr i32 %146, 6
  %217 = and i32 %216, 1
  br label %218

218:                                              ; preds = %215, %212, %208
  %219 = phi i32 [ %150, %208 ], [ 3, %212 ], [ %217, %215 ]
  %220 = and i32 %209, 128
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %264, label %222

222:                                              ; preds = %218
  %223 = load i32, ptr %21, align 4
  %224 = add i32 %223, 1
  store i32 %224, ptr %21, align 4
  %225 = load i32, ptr %20, align 4
  %226 = add i32 %225, 1
  store i32 %226, ptr %20, align 4
  br i1 %158, label %264, label %227, !prof !17

227:                                              ; preds = %222
  %228 = load ptr, ptr %5, align 4
  %229 = getelementptr i8, ptr %228, i32 8
  %230 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %231 = load ptr, ptr %3, align 4
  %232 = load i32, ptr %231, align 8
  %233 = or i32 %232, 136
  store i32 %233, ptr %231, align 8
  %234 = and i32 %230, 12582912
  switch i32 %234, label %250 [
    i32 0, label %235
    i32 4194304, label %240
    i32 8388608, label %245
  ]

235:                                              ; preds = %227
  %236 = load ptr, ptr %3, align 4
  %237 = getelementptr %struct.can_frame, ptr %236, i32 0, i32 5, i32 2
  %238 = load i8, ptr %237, align 2
  %239 = or i8 %238, 1
  store i8 %239, ptr %237, align 2
  br label %256

240:                                              ; preds = %227
  %241 = load ptr, ptr %3, align 4
  %242 = getelementptr %struct.can_frame, ptr %241, i32 0, i32 5, i32 2
  %243 = load i8, ptr %242, align 2
  %244 = or i8 %243, 2
  store i8 %244, ptr %242, align 2
  br label %256

245:                                              ; preds = %227
  %246 = load ptr, ptr %3, align 4
  %247 = getelementptr %struct.can_frame, ptr %246, i32 0, i32 5, i32 2
  %248 = load i8, ptr %247, align 2
  %249 = or i8 %248, 4
  store i8 %249, ptr %247, align 2
  br label %256

250:                                              ; preds = %227
  %251 = lshr i32 %230, 16
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 31
  %254 = load ptr, ptr %3, align 4
  %255 = getelementptr %struct.can_frame, ptr %254, i32 0, i32 5, i32 3
  store i8 %253, ptr %255, align 1
  br label %256

256:                                              ; preds = %250, %245, %240, %235
  %257 = and i32 %230, 2097152
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = load ptr, ptr %3, align 4
  %261 = getelementptr %struct.can_frame, ptr %260, i32 0, i32 5, i32 2
  %262 = load i8, ptr %261, align 2
  %263 = or i8 %262, -128
  store i8 %263, ptr %261, align 2
  br label %264

264:                                              ; preds = %259, %256, %222, %218
  %265 = and i32 %209, 32
  %266 = icmp eq i32 %265, 0
  %267 = icmp eq i32 %219, 2
  %268 = select i1 %267, i32 1, i32 2
  %269 = select i1 %266, i32 %219, i32 %268
  %270 = and i32 %209, 64
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %264
  %273 = load ptr, ptr %5, align 4
  %274 = getelementptr i8, ptr %273, i32 8
  %275 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %274) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !42
  %276 = load i32, ptr %22, align 4
  %277 = add i32 %276, 1
  store i32 %277, ptr %22, align 4
  br i1 %158, label %281, label %284, !prof !17

278:                                              ; preds = %264
  %279 = load i32, ptr %18, align 4
  %280 = icmp eq i32 %269, %279
  br i1 %280, label %308, label %295

281:                                              ; preds = %272
  %282 = load i32, ptr %18, align 4
  %283 = icmp eq i32 %269, %282
  br i1 %283, label %311, label %304

284:                                              ; preds = %272
  %285 = load ptr, ptr %3, align 4
  %286 = load i32, ptr %285, align 8
  %287 = or i32 %286, 2
  store i32 %287, ptr %285, align 8
  %288 = lshr i32 %275, 8
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 31
  %291 = load ptr, ptr %3, align 4
  %292 = getelementptr inbounds %struct.can_frame, ptr %291, i32 0, i32 5
  store i8 %290, ptr %292, align 8
  %293 = load i32, ptr %18, align 4
  %294 = icmp eq i32 %269, %293
  br i1 %294, label %309, label %298

295:                                              ; preds = %278
  br i1 %158, label %304, label %296, !prof !17

296:                                              ; preds = %295
  %297 = load ptr, ptr %3, align 4
  br label %298

298:                                              ; preds = %296, %284
  %299 = phi ptr [ %297, %296 ], [ %291, %284 ]
  %300 = icmp ugt i32 %157, %156
  %301 = select i1 %300, i32 0, i32 %269
  %302 = icmp ult i32 %157, %156
  %303 = select i1 %302, i32 0, i32 %269
  call void @can_change_state(ptr noundef %1, ptr noundef %299, i32 noundef %303, i32 noundef %301) #6
  br label %305

304:                                              ; preds = %295, %281
  store i32 %269, ptr %18, align 4
  br label %305

305:                                              ; preds = %304, %298
  %306 = icmp eq i32 %269, 3
  br i1 %306, label %307, label %308

307:                                              ; preds = %305
  call void @can_bus_off(ptr noundef %1) #6
  br label %308

308:                                              ; preds = %307, %305, %278
  br i1 %158, label %311, label %309, !prof !17

309:                                              ; preds = %308, %284
  %310 = call i32 @netif_rx(ptr noundef nonnull %151) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %312

311:                                              ; preds = %308, %281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.12) #7
  br label %312

312:                                              ; preds = %311, %309, %145
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !43
  call void @arm_heavy_mb() #6
  %313 = load ptr, ptr %5, align 4
  %314 = getelementptr i8, ptr %313, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %24) #6, !srcloc !13
  %315 = load ptr, ptr %5, align 4
  %316 = getelementptr i8, ptr %315, i32 12
  %317 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %316) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !44
  %318 = load ptr, ptr %5, align 4
  %319 = getelementptr i8, ptr %318, i32 12
  %320 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %319) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %321 = and i32 %320, 255
  %322 = icmp ne i32 %321, 0
  %323 = icmp ult i32 %26, 19
  %324 = select i1 %322, i1 %323, i1 false
  br i1 %324, label %23, label %325

325:                                              ; preds = %312, %2
  %326 = xor i1 %10, true
  %327 = zext i1 %326 to i32
  ret i32 %327
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_can_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1664
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %5 = or i32 %4, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #6, !srcloc !13
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #7
  br label %79

12:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !13
  %19 = getelementptr i8, ptr %0, i32 1580
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  br i1 %22, label %26, label %25

25:                                               ; preds = %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 255) #6, !srcloc !13
  br label %27

26:                                               ; preds = %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 127) #6, !srcloc !13
  br label %27

27:                                               ; preds = %26, %25
  %28 = load ptr, ptr %2, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !48
  %30 = load i32, ptr %19, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %30, 2
  %34 = select i1 %32, i32 %33, i32 4
  %35 = or i32 %29, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %36 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #6, !srcloc !13
  %37 = getelementptr i8, ptr %0, i32 1472
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1023
  %40 = and i32 %39, 1023
  %41 = getelementptr i8, ptr %0, i32 1468
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 14
  %44 = add i32 %43, 49152
  %45 = and i32 %44, 49152
  %46 = or i32 %45, %40
  %47 = getelementptr i8, ptr %0, i32 1456
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %0, i32 1460
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %48
  %52 = shl i32 %51, 16
  %53 = add i32 %52, 983040
  %54 = and i32 %53, 983040
  %55 = or i32 %46, %54
  %56 = getelementptr i8, ptr %0, i32 1464
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, 20
  %59 = add i32 %58, 7340032
  %60 = and i32 %59, 7340032
  %61 = or i32 %55, %60
  %62 = load i32, ptr %19, align 4
  %63 = shl i32 %62, 21
  %64 = and i32 %63, 8388608
  %65 = or i32 %61, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr i8, ptr %66, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #6, !srcloc !13
  %68 = load ptr, ptr %2, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !38
  %70 = and i32 %69, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %71 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #6, !srcloc !13
  %72 = load ptr, ptr %2, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !40
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #7
  br label %79

77:                                               ; preds = %27
  %78 = getelementptr i8, ptr %0, i32 1576
  store i32 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %76, %11
  %80 = phi i32 [ -110, %11 ], [ -110, %76 ], [ 0, %77 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 5251072}
!10 = !{i64 2155653688}
!11 = !{i64 2155651921}
!12 = !{i64 2155652205}
!13 = !{i64 5250654}
!14 = !{i64 2155652781}
!15 = !{i64 2155656600}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2155657133}
!19 = !{i64 2155657500}
!20 = !{i64 2155657867}
!21 = !{i64 2155658234}
!22 = !{i64 2155658607}
!23 = !{i64 2155658971}
!24 = !{i64 2155659331}
!25 = !{i64 2155659687}
!26 = !{i64 2155671915}
!27 = !{i64 2155672265}
!28 = !{!"auto-init"}
!29 = !{i64 2155660348}
!30 = !{i64 2155662796}
!31 = !{i64 2155663143}
!32 = !{i64 2155663490}
!33 = !{i64 2155664203}
!34 = !{i64 2155664655}
!35 = !{i64 2155650142}
!36 = !{i64 2155673034}
!37 = !{i64 2155665084}
!38 = !{i64 2155650624}
!39 = !{i64 2155650908}
!40 = !{i64 2155651484}
!41 = !{i64 2155670475}
!42 = !{i64 2155671460}
!43 = !{i64 2155673639}
!44 = !{i64 2155674119}
!45 = !{i64 2155653889}
!46 = !{i64 2155654235}
!47 = !{i64 2155654572}
!48 = !{i64 2155655885}
!49 = !{i64 2155656261}
!50 = !{i64 2155653210}
