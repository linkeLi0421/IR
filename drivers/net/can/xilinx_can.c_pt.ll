; ModuleID = '/llk/IR/drivers/net/can/xilinx_can.c_pt.bc'
source_filename = "../drivers/net/can/xilinx_can.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xcan_devtype_data = type { i32, i32, ptr, ptr, i32, i32 }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.can_berr_counter = type { i16, i16 }
%struct.xcan_priv = type { %struct.can_priv, %struct.spinlock, i32, i32, i32, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.xcan_devtype_data }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_frame = type { i32, %union.anon.135, i8, i8, i8, [8 x i8] }
%union.anon.135 = type { i8 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
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
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }

@__initcall__kmod_xilinx_can__427_1866_xcan_driver_init6 = internal global ptr @xcan_driver_init, section ".initcall6.init", align 4
@xcan_driver = internal global %struct.platform_driver { ptr @xcan_probe, ptr @xcan_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xcan_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xcan_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_xcan_driver_exit = internal global ptr @xcan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file428 = internal constant [43 x i8] c"xilinx_can.file=drivers/net/can/xilinx_can\00", section ".modinfo", align 1
@__UNIQUE_ID_license429 = internal constant [23 x i8] c"xilinx_can.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author430 = internal constant [29 x i8] c"xilinx_can.author=Xilinx Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description431 = internal constant [44 x i8] c"xilinx_can.description=Xilinx CAN interface\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"xilinx_can\00", align 1
@xcan_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-can-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xcan_zynq_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-can-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xcan_axi_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,canfd-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xcan_canfd_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,canfd-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xcan_canfd2_data }, %struct.of_device_id zeroinitializer], align 4
@xcan_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @xcan_suspend, ptr @xcan_resume, ptr @xcan_suspend, ptr @xcan_resume, ptr @xcan_suspend, ptr @xcan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xcan_runtime_suspend, ptr @xcan_runtime_resume, ptr null }, align 4
@xcan_axi_data = internal constant %struct.xcan_devtype_data { i32 0, i32 0, ptr @xcan_bittiming_const, ptr @.str.11, i32 4, i32 7 }, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"tx-mailbox-count\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"tx-fifo-depth\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"missing %s property\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"rx-fifo-depth\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"missing rx-fifo-depth property (mailbox mode is not supported)\0A\00", align 1
@xcan_data_bittiming_const_canfd = internal global %struct.can_bittiming_const { [16 x i8] c"xilinx_can\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 8, i32 1, i32 256, i32 1 }, align 4
@xcan_data_bittiming_const_canfd2 = internal global %struct.can_bittiming_const { [16 x i8] c"xilinx_can\00\00\00\00\00\00", i32 1, i32 32, i32 1, i32 16, i32 16, i32 2, i32 256, i32 1 }, align 4
@xcan_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @xcan_open, ptr @xcan_close, ptr @xcan_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"can_clk\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"device clock not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"bus clock not found\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"%s: pm_runtime_get failed(%d)\0A\00", align 1
@__func__.xcan_probe = private unnamed_addr constant [11 x i8] c"xcan_probe\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"fail to register failed (err=%d)\0A\00", align 1
@xcan_bittiming_const = internal constant %struct.can_bittiming_const { [16 x i8] c"xilinx_can\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 256, i32 1 }, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"s_axi_aclk\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"xcan_chip_start failed!\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [27 x i8] c"timed out for config mode\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"BUG! Cannot set bittiming - CAN is not in config mode\0A\00", align 1
@__func__.xcan_get_berr_counter = private unnamed_addr constant [22 x i8] c"xcan_get_berr_counter\00", align 1
@__func__.xcan_open = private unnamed_addr constant [10 x i8] c"xcan_open\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"irq allocation for CAN failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"mode resetting failed!\0A\00", align 1
@xcan_tx_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"drivers/net/can/xilinx_can.c\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"RX match not finished, frame discarded\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"BUG!, TX full when queue awake!\0A\00", align 1
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"include/linux/can/skb.h\00", align 1
@xcan_zynq_data = internal constant %struct.xcan_devtype_data { i32 1, i32 1, ptr @xcan_bittiming_const, ptr @.str.21, i32 4, i32 7 }, align 4
@xcan_canfd_data = internal constant %struct.xcan_devtype_data { i32 2, i32 30, ptr @xcan_bittiming_const_canfd, ptr @.str.11, i32 8, i32 16 }, align 4
@xcan_canfd2_data = internal constant %struct.xcan_devtype_data { i32 3, i32 62, ptr @xcan_bittiming_const_canfd2, ptr @.str.11, i32 8, i32 16 }, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@xcan_bittiming_const_canfd = internal constant %struct.can_bittiming_const { [16 x i8] c"xilinx_can\00\00\00\00\00\00", i32 1, i32 64, i32 1, i32 16, i32 16, i32 1, i32 256, i32 1 }, align 4
@xcan_bittiming_const_canfd2 = internal constant %struct.can_bittiming_const { [16 x i8] c"xilinx_can\00\00\00\00\00\00", i32 1, i32 256, i32 1, i32 128, i32 128, i32 2, i32 256, i32 1 }, align 4
@.str.22 = private unnamed_addr constant [42 x i8] c"pm_runtime_force_resume failed on resume\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"xcan_chip_start failed on resume\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Cannot enable clock.\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author430, ptr @__UNIQUE_ID_description431, ptr @__UNIQUE_ID_file428, ptr @__UNIQUE_ID_license429, ptr @__exitcall_xcan_driver_exit, ptr @__initcall__kmod_xilinx_can__427_1866_xcan_driver_init6, ptr @xcan_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xcan_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @xcan_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xcan_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @xcan_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %133

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = tail call ptr @of_match_device(ptr noundef nonnull @xcan_of_match, ptr noundef %9) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @xcan_axi_data, ptr %14
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi ptr [ @xcan_axi_data, %8 ], [ %16, %12 ]
  %19 = getelementptr inbounds %struct.xcan_devtype_data, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.2, ptr @.str.1
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull %23, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull %23) #9
  br label %133

29:                                               ; preds = %17
  %30 = load ptr, ptr %24, align 8
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef %30, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5) #9
  br label %133

34:                                               ; preds = %29
  %35 = load i32, ptr %19, align 4
  %36 = and i32 %35, 9
  %37 = icmp eq i32 %36, 1
  %38 = load i32, ptr %2, align 4
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 2)
  %40 = select i1 %37, i32 %39, i32 1
  %41 = load i32, ptr %3, align 4
  %42 = call ptr @alloc_candev_mqs(i32 noundef 544, i32 noundef %40, i32 noundef 1, i32 noundef 1) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %133, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %42, i32 1408
  %46 = getelementptr i8, ptr %42, i32 1904
  store ptr %9, ptr %46, align 8
  %47 = getelementptr inbounds %struct.xcan_devtype_data, ptr %18, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %42, i32 1436
  store ptr %48, ptr %49, align 4
  %50 = getelementptr i8, ptr %42, i32 1644
  store ptr @xcan_do_set_mode, ptr %50, align 4
  %51 = getelementptr i8, ptr %42, i32 1656
  store ptr @xcan_get_berr_counter, ptr %51, align 8
  %52 = getelementptr i8, ptr %42, i32 1584
  store i32 17, ptr %52, align 8
  %53 = load i32, ptr %18, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = getelementptr i8, ptr %42, i32 1440
  store ptr @xcan_data_bittiming_const_canfd, ptr %56, align 8
  %57 = load i32, ptr %18, align 4
  br label %58

58:                                               ; preds = %55, %44
  %59 = phi i32 [ %57, %55 ], [ %53, %44 ]
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr i8, ptr %42, i32 1440
  store ptr @xcan_data_bittiming_const_canfd2, ptr %62, align 8
  %63 = load i32, ptr %18, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i32 [ %63, %61 ], [ %59, %58 ]
  %66 = and i32 %65, -2
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 49, ptr %52, align 8
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr i8, ptr %42, i32 1908
  store ptr %4, ptr %70, align 4
  %71 = getelementptr i8, ptr %42, i32 1676
  store i32 %40, ptr %71, align 4
  %72 = getelementptr i8, ptr %42, i32 1924
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %72, ptr noundef nonnull align 4 dereferenceable(24) %18, i32 24, i1 false)
  %73 = getelementptr i8, ptr %42, i32 1664
  store i32 0, ptr %73, align 8
  %74 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %131, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 59
  store i32 %74, ptr %77, align 8
  %78 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 14
  %79 = load i32, ptr %78, align 8
  %80 = or i32 %79, 262144
  store i32 %80, ptr %78, align 8
  %81 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %42, ptr %81, align 8
  %82 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 111, i32 1
  store ptr %9, ptr %82, align 4
  %83 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 16
  store ptr @xcan_netdev_ops, ptr %83, align 8
  %84 = call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.6) #8
  %85 = getelementptr i8, ptr %42, i32 1920
  store ptr %84, ptr %85, align 8
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = ptrtoint ptr %84 to i32
  %89 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %9, i32 noundef %88, ptr noundef nonnull @.str.7) #8
  br label %131

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.xcan_devtype_data, ptr %18, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = call ptr @devm_clk_get(ptr noundef %9, ptr noundef %92) #8
  %94 = getelementptr i8, ptr %42, i32 1916
  store ptr %93, ptr %94, align 4
  %95 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = ptrtoint ptr %93 to i32
  %98 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %9, i32 noundef %97, ptr noundef nonnull @.str.8) #8
  br label %131

99:                                               ; preds = %90
  %100 = getelementptr i8, ptr %42, i32 1900
  store ptr @xcan_write_reg_le, ptr %100, align 4
  %101 = getelementptr i8, ptr %42, i32 1896
  store ptr @xcan_read_reg_le, ptr %101, align 8
  call void @pm_runtime_enable(ptr noundef %9) #8
  %102 = call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %42, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.xcan_probe, i32 noundef %102) #9
  br label %127

105:                                              ; preds = %99
  %106 = load ptr, ptr %101, align 8
  %107 = call i32 %106(ptr noundef %45, i32 noundef 24) #8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store ptr @xcan_write_reg_be, ptr %100, align 4
  store ptr @xcan_read_reg_be, ptr %101, align 8
  br label %110

110:                                              ; preds = %109, %105
  %111 = load ptr, ptr %85, align 8
  %112 = call i32 @clk_get_rate(ptr noundef %111) #8
  %113 = getelementptr i8, ptr %42, i32 1544
  store i32 %112, ptr %113, align 8
  %114 = getelementptr i8, ptr %42, i32 1680
  call void @netif_napi_add(ptr noundef nonnull %42, ptr noundef %114, ptr noundef nonnull @xcan_rx_poll, i32 noundef %41) #8
  %115 = call i32 @register_candev(ptr noundef nonnull %42) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef %115) #9
  br label %127

118:                                              ; preds = %110
  %119 = call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 5) #8
  %120 = getelementptr i8, ptr %42, i32 1928
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr %100, align 4
  call void %125(ptr noundef %45, i32 noundef 2564, i32 noundef 0) #8
  %126 = load ptr, ptr %100, align 4
  call void %126(ptr noundef %45, i32 noundef 2560, i32 noundef 0) #8
  br label %133

127:                                              ; preds = %117, %104
  %128 = phi i32 [ %102, %104 ], [ %115, %117 ]
  %129 = load ptr, ptr %46, align 8
  %130 = call i32 @__pm_runtime_idle(ptr noundef %129, i32 noundef 5) #8
  call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #8
  br label %131

131:                                              ; preds = %127, %96, %87, %69
  %132 = phi i32 [ %74, %69 ], [ %89, %87 ], [ %98, %96 ], [ %128, %127 ]
  call void @free_candev(ptr noundef nonnull %42) #8
  br label %133

133:                                              ; preds = %131, %124, %118, %34, %33, %28, %6
  %134 = phi i32 [ -12, %34 ], [ 0, %124 ], [ 0, %118 ], [ %7, %6 ], [ %26, %28 ], [ %31, %33 ], [ %132, %131 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_candev(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #8
  tail call void @free_candev(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_do_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @xcan_chip_start(ptr noundef %0)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  br label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %10 = load ptr, ptr %9, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %10) #8
  br label %11

11:                                               ; preds = %8, %7, %2
  %12 = phi i32 [ %5, %7 ], [ %5, %8 ], [ -95, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_get_berr_counter(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1904
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.xcan_get_berr_counter, i32 noundef %5) #9
  br label %20

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 1408
  %10 = getelementptr i8, ptr %0, i32 1896
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 %11(ptr noundef %9, i32 noundef 16) #8
  %13 = trunc i32 %12 to i16
  %14 = and i16 %13, 255
  store i16 %14, ptr %1, align 2
  %15 = load ptr, ptr %10, align 8
  %16 = tail call i32 %15(ptr noundef %9, i32 noundef 16) #8
  %17 = trunc i32 %16 to i16
  %18 = lshr i16 %17, 8
  %19 = getelementptr inbounds %struct.can_berr_counter, ptr %1, i32 0, i32 1
  store i16 %18, ptr %19, align 2
  br label %20

20:                                               ; preds = %8, %7
  %21 = phi i32 [ %5, %7 ], [ 0, %8 ]
  %22 = load ptr, ptr %3, align 8
  %23 = tail call i32 @__pm_runtime_idle(ptr noundef %22, i32 noundef 5) #8
  ret i32 %21
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xcan_write_reg_le(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.xcan_priv, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_read_reg_le(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.xcan_priv, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xcan_write_reg_be(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %2)
  %5 = getelementptr inbounds %struct.xcan_priv, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_read_reg_be(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.xcan_priv, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !10
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_rx_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1408
  %8 = getelementptr i8, ptr %6, i32 1928
  %9 = getelementptr i8, ptr %6, i32 1900
  %10 = getelementptr i8, ptr %6, i32 1896
  %11 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36
  %12 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 2
  %13 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 6
  br label %14

14:                                               ; preds = %243, %2
  %15 = phi i32 [ 0, %2 ], [ %245, %243 ]
  %16 = load i32, ptr %8, align 4
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %9, align 4
  call void %20(ptr noundef %7, i32 noundef 36, i32 noundef 16) #8
  %21 = load ptr, ptr %10, align 8
  %22 = call i32 %21(ptr noundef %7, i32 noundef 232) #8
  %23 = load i32, ptr %8, align 4
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 16128, i32 32512
  %27 = and i32 %26, %22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %19
  br i1 %25, label %34, label %30

30:                                               ; preds = %29
  %31 = and i32 %22, 63
  %32 = mul nuw nsw i32 %31, 72
  %33 = add nuw nsw i32 %32, 8448
  br label %45

34:                                               ; preds = %29
  %35 = and i32 %22, 31
  %36 = mul nuw nsw i32 %35, 72
  %37 = add nuw nsw i32 %36, 4352
  br label %45

38:                                               ; preds = %14
  %39 = load ptr, ptr %10, align 8
  %40 = call i32 %39(ptr noundef %7, i32 noundef 28) #8
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %19
  %44 = icmp slt i32 %15, %1
  br label %251

45:                                               ; preds = %38, %34, %30
  %46 = phi i32 [ 80, %38 ], [ %37, %34 ], [ %33, %30 ]
  %47 = icmp slt i32 %15, %1
  br i1 %47, label %48, label %251

48:                                               ; preds = %45
  %49 = load i32, ptr %8, align 4
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %167, label %52

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !14
  %53 = load ptr, ptr %10, align 8
  %54 = call i32 %53(ptr noundef %7, i32 noundef %46) #8
  %55 = load ptr, ptr %10, align 8
  %56 = add nuw nsw i32 %46, 4
  %57 = call i32 %55(ptr noundef %7, i32 noundef %56) #8
  %58 = and i32 %57, 134217728
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = call ptr @alloc_can_skb(ptr noundef %6, ptr noundef nonnull %4) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %73, !prof !15

63:                                               ; preds = %52
  %64 = call ptr @alloc_canfd_skb(ptr noundef %6, ptr noundef nonnull %4) #8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69, !prof !15

66:                                               ; preds = %63, %60
  %67 = load i32, ptr %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %13, align 4
  br label %165

69:                                               ; preds = %63
  %70 = lshr i32 %57, 28
  %71 = trunc i32 %70 to i8
  %72 = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %71) #8
  br label %77

73:                                               ; preds = %60
  %74 = lshr i32 %57, 28
  %75 = call i32 @llvm.umin.i32(i32 %74, i32 8) #8
  %76 = trunc i32 %75 to i8
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i8 [ %76, %73 ], [ %72, %69 ]
  %79 = phi ptr [ %61, %73 ], [ %64, %69 ]
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr inbounds %struct.canfd_frame, ptr %80, i32 0, i32 1
  store i8 %78, ptr %81, align 4
  %82 = and i32 %54, 524288
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %77
  %85 = lshr i32 %54, 3
  %86 = and i32 %85, 536608768
  store i32 %86, ptr %80, align 8
  %87 = lshr i32 %54, 1
  %88 = and i32 %87, 262143
  %89 = load ptr, ptr %4, align 4
  %90 = load i32, ptr %89, align 8
  %91 = or i32 %90, %88
  store i32 %91, ptr %89, align 8
  %92 = load ptr, ptr %4, align 4
  %93 = load i32, ptr %92, align 8
  %94 = or i32 %93, -2147483648
  store i32 %94, ptr %92, align 8
  %95 = and i32 %54, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %103

97:                                               ; preds = %77
  %98 = lshr i32 %54, 21
  store i32 %98, ptr %80, align 8
  %99 = xor i1 %59, true
  %100 = and i32 %54, 1048576
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %97, %84
  %104 = load ptr, ptr %4, align 4
  %105 = load i32, ptr %104, align 8
  %106 = or i32 %105, 1073741824
  store i32 %106, ptr %104, align 8
  br label %107

107:                                              ; preds = %103, %97, %84
  %108 = load ptr, ptr %4, align 4
  %109 = getelementptr inbounds %struct.canfd_frame, ptr %108, i32 0, i32 1
  %110 = load i8, ptr %109, align 4
  %111 = icmp eq i8 %110, 0
  br i1 %59, label %115, label %112

112:                                              ; preds = %107
  br i1 %111, label %151, label %113

113:                                              ; preds = %112
  %114 = add nuw nsw i32 %46, 8
  br label %118

115:                                              ; preds = %107
  br i1 %111, label %151, label %116

116:                                              ; preds = %115
  %117 = add nuw nsw i32 %46, 8
  br label %136

118:                                              ; preds = %118, %113
  %119 = phi i32 [ 0, %113 ], [ %130, %118 ]
  %120 = phi i32 [ 0, %113 ], [ %129, %118 ]
  %121 = shl i32 %120, 2
  %122 = add nuw nsw i32 %114, %121
  %123 = load ptr, ptr %10, align 8
  %124 = call i32 %123(ptr noundef %7, i32 noundef %122) #8
  %125 = call i32 @llvm.bswap.i32(i32 %124) #8
  %126 = load ptr, ptr %4, align 4
  %127 = getelementptr inbounds %struct.canfd_frame, ptr %126, i32 0, i32 5
  %128 = getelementptr i8, ptr %127, i32 %119
  store i32 %125, ptr %128, align 4
  %129 = add nuw nsw i32 %120, 1
  %130 = add nuw nsw i32 %119, 4
  %131 = load ptr, ptr %4, align 4
  %132 = getelementptr inbounds %struct.canfd_frame, ptr %131, i32 0, i32 1
  %133 = load i8, ptr %132, align 4
  %134 = zext i8 %133 to i32
  %135 = icmp ult i32 %130, %134
  br i1 %135, label %118, label %151

136:                                              ; preds = %136, %116
  %137 = phi i32 [ 0, %116 ], [ %145, %136 ]
  %138 = load ptr, ptr %10, align 8
  %139 = add nuw nsw i32 %117, %137
  %140 = call i32 %138(ptr noundef %7, i32 noundef %139) #8
  %141 = call i32 @llvm.bswap.i32(i32 %140) #8
  %142 = load ptr, ptr %4, align 4
  %143 = getelementptr inbounds %struct.canfd_frame, ptr %142, i32 0, i32 5
  %144 = getelementptr i8, ptr %143, i32 %137
  store i32 %141, ptr %144, align 4
  %145 = add nuw nsw i32 %137, 4
  %146 = load ptr, ptr %4, align 4
  %147 = getelementptr inbounds %struct.canfd_frame, ptr %146, i32 0, i32 1
  %148 = load i8, ptr %147, align 4
  %149 = zext i8 %148 to i32
  %150 = icmp ult i32 %145, %149
  br i1 %150, label %136, label %151

151:                                              ; preds = %136, %118, %115, %112
  %152 = phi i8 [ 0, %112 ], [ 0, %115 ], [ %148, %136 ], [ %133, %118 ]
  %153 = phi ptr [ %108, %112 ], [ %108, %115 ], [ %146, %136 ], [ %131, %118 ]
  %154 = load i32, ptr %153, align 8
  %155 = and i32 %154, 1073741824
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = zext i8 %152 to i32
  %159 = load i32, ptr %12, align 4
  %160 = add i32 %159, %158
  store i32 %160, ptr %12, align 4
  br label %161

161:                                              ; preds = %157, %151
  %162 = load i32, ptr %11, align 4
  %163 = add i32 %162, 1
  store i32 %163, ptr %11, align 4
  %164 = call i32 @netif_receive_skb(ptr noundef nonnull %79) #8
  br label %165

165:                                              ; preds = %161, %66
  %166 = phi i32 [ 0, %66 ], [ 1, %161 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %243

167:                                              ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !14
  %168 = call ptr @alloc_can_skb(ptr noundef %6, ptr noundef nonnull %3) #8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %173, !prof !15

170:                                              ; preds = %167
  %171 = load i32, ptr %13, align 4
  %172 = add i32 %171, 1
  store i32 %172, ptr %13, align 4
  br label %241

173:                                              ; preds = %167
  %174 = load ptr, ptr %10, align 8
  %175 = call i32 %174(ptr noundef %7, i32 noundef %46) #8
  %176 = load ptr, ptr %10, align 8
  %177 = add nuw nsw i32 %46, 4
  %178 = call i32 %176(ptr noundef %7, i32 noundef %177) #8
  %179 = lshr i32 %178, 28
  %180 = call i32 @llvm.umin.i32(i32 %179, i32 8) #8
  %181 = trunc i32 %180 to i8
  %182 = load ptr, ptr %3, align 4
  %183 = getelementptr inbounds %struct.can_frame, ptr %182, i32 0, i32 1
  store i8 %181, ptr %183, align 4
  %184 = and i32 %175, 524288
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %199, label %186

186:                                              ; preds = %173
  %187 = lshr i32 %175, 3
  %188 = and i32 %187, 536608768
  store i32 %188, ptr %182, align 8
  %189 = lshr i32 %175, 1
  %190 = and i32 %189, 262143
  %191 = load ptr, ptr %3, align 4
  %192 = load i32, ptr %191, align 8
  %193 = or i32 %192, %190
  store i32 %193, ptr %191, align 8
  %194 = load ptr, ptr %3, align 4
  %195 = load i32, ptr %194, align 8
  %196 = or i32 %195, -2147483648
  store i32 %196, ptr %194, align 8
  %197 = and i32 %175, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %207, label %203

199:                                              ; preds = %173
  %200 = lshr i32 %175, 21
  store i32 %200, ptr %182, align 8
  %201 = and i32 %175, 1048576
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %199, %186
  %204 = load ptr, ptr %3, align 4
  %205 = load i32, ptr %204, align 8
  %206 = or i32 %205, 1073741824
  store i32 %206, ptr %204, align 8
  br label %207

207:                                              ; preds = %203, %199, %186
  %208 = load ptr, ptr %10, align 8
  %209 = add nuw nsw i32 %46, 8
  %210 = call i32 %208(ptr noundef %7, i32 noundef %209) #8
  %211 = load ptr, ptr %10, align 8
  %212 = add nuw nsw i32 %46, 12
  %213 = call i32 %211(ptr noundef %7, i32 noundef %212) #8
  %214 = load ptr, ptr %3, align 4
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 1073741824
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %237

218:                                              ; preds = %207
  %219 = getelementptr inbounds %struct.can_frame, ptr %214, i32 0, i32 1
  %220 = load i8, ptr %219, align 4
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %232, label %222

222:                                              ; preds = %218
  %223 = call i32 @llvm.bswap.i32(i32 %210) #8
  %224 = getelementptr inbounds %struct.can_frame, ptr %214, i32 0, i32 5
  store i32 %223, ptr %224, align 8
  %225 = icmp ugt i8 %220, 4
  br i1 %225, label %226, label %232

226:                                              ; preds = %222
  %227 = call i32 @llvm.bswap.i32(i32 %213) #8
  %228 = getelementptr %struct.can_frame, ptr %214, i32 0, i32 5, i32 4
  store i32 %227, ptr %228, align 4
  %229 = load ptr, ptr %3, align 4
  %230 = getelementptr inbounds %struct.can_frame, ptr %229, i32 0, i32 1
  %231 = load i8, ptr %230, align 4
  br label %232

232:                                              ; preds = %226, %222, %218
  %233 = phi i8 [ 0, %218 ], [ %231, %226 ], [ %220, %222 ]
  %234 = zext i8 %233 to i32
  %235 = load i32, ptr %12, align 4
  %236 = add i32 %235, %234
  store i32 %236, ptr %12, align 4
  br label %237

237:                                              ; preds = %232, %207
  %238 = load i32, ptr %11, align 4
  %239 = add i32 %238, 1
  store i32 %239, ptr %11, align 4
  %240 = call i32 @netif_receive_skb(ptr noundef nonnull %168) #8
  br label %241

241:                                              ; preds = %237, %170
  %242 = phi i32 [ 0, %170 ], [ 1, %237 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %243

243:                                              ; preds = %241, %165
  %244 = phi i32 [ %166, %165 ], [ %242, %241 ]
  %245 = add i32 %244, %15
  %246 = load i32, ptr %8, align 4
  %247 = and i32 %246, 16
  %248 = icmp eq i32 %247, 0
  %249 = load ptr, ptr %9, align 4
  %250 = select i1 %248, i32 36, i32 232
  call void %249(ptr noundef %7, i32 noundef %250, i32 noundef 128) #8
  br label %14

251:                                              ; preds = %45, %43
  %252 = phi i1 [ %44, %43 ], [ false, %45 ]
  %253 = icmp eq i32 %15, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  call fastcc void @xcan_update_error_state_after_rxtx(ptr noundef %6)
  br label %255

255:                                              ; preds = %254, %251
  br i1 %252, label %256, label %266

256:                                              ; preds = %255
  %257 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %15) #8
  %258 = load ptr, ptr %10, align 8
  %259 = call i32 %258(ptr noundef %7, i32 noundef 32) #8
  %260 = load i32, ptr %8, align 4
  %261 = and i32 %260, 16
  %262 = icmp eq i32 %261, 0
  %263 = select i1 %262, i32 128, i32 16
  %264 = or i32 %263, %259
  %265 = load ptr, ptr %9, align 4
  call void %265(ptr noundef %7, i32 noundef 32, i32 noundef %264) #8
  br label %266

266:                                              ; preds = %256, %255
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xcan_chip_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1900
  %4 = load ptr, ptr %3, align 4
  tail call void %4(ptr noundef %2, i32 noundef 0, i32 noundef 1) #8
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, 100
  %7 = getelementptr i8, ptr %0, i32 1896
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 %8(ptr noundef %2, i32 noundef 24) #8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %17, %1
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 %6, %13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.13) #9
  br label %108

17:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 10000, i32 noundef 2) #8
  %18 = load ptr, ptr %7, align 8
  %19 = tail call i32 %18(ptr noundef %2, i32 noundef 24) #8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %12, label %22

22:                                               ; preds = %17, %1
  %23 = getelementptr i8, ptr %0, i32 1668
  store i32 0, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 1672
  store i32 0, ptr %24, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = tail call i32 %25(ptr noundef %2, i32 noundef 24) #8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %83, label %29

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %0, i32 1472
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  %33 = getelementptr i8, ptr %0, i32 1456
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %0, i32 1460
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %34, -1
  %38 = add i32 %37, %36
  %39 = getelementptr i8, ptr %0, i32 1464
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -1
  %42 = getelementptr i8, ptr %0, i32 1924
  %43 = getelementptr i8, ptr %0, i32 1940
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %41, %44
  %46 = or i32 %45, %38
  %47 = getelementptr i8, ptr %0, i32 1468
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  %50 = getelementptr i8, ptr %0, i32 1944
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %49, %51
  %53 = or i32 %46, %52
  %54 = load ptr, ptr %3, align 4
  tail call void %54(ptr noundef %2, i32 noundef 8, i32 noundef %32) #8
  %55 = load ptr, ptr %3, align 4
  tail call void %55(ptr noundef %2, i32 noundef 12, i32 noundef %53) #8
  %56 = load i32, ptr %42, align 4
  %57 = and i32 %56, -2
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %84

59:                                               ; preds = %29
  %60 = getelementptr i8, ptr %0, i32 1504
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -1
  %63 = getelementptr i8, ptr %0, i32 1488
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %0, i32 1492
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %64, -1
  %68 = add i32 %67, %66
  %69 = getelementptr i8, ptr %0, i32 1496
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, -1
  %72 = load i32, ptr %43, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %73, %68
  %75 = getelementptr i8, ptr %0, i32 1500
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, -1
  %78 = load i32, ptr %50, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %74, %79
  %81 = load ptr, ptr %3, align 4
  tail call void %81(ptr noundef %2, i32 noundef 136, i32 noundef %62) #8
  %82 = load ptr, ptr %3, align 4
  tail call void %82(ptr noundef %2, i32 noundef 140, i32 noundef %80) #8
  br label %84

83:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %0, ptr noundef nonnull @.str.14) #9
  br label %108

84:                                               ; preds = %59, %29
  %85 = getelementptr i8, ptr %0, i32 1928
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 16
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 128, i32 16
  %90 = and i32 %86, 2
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 3907, i32 134979
  %93 = or i32 %89, %92
  %94 = load ptr, ptr %3, align 4
  tail call void %94(ptr noundef %2, i32 noundef 32, i32 noundef %93) #8
  %95 = getelementptr i8, ptr %0, i32 1580
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 %96, 1
  %98 = and i32 %97, 2
  %99 = load i32, ptr %85, align 4
  %100 = and i32 %99, 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %84
  %103 = load ptr, ptr %3, align 4
  tail call void %103(ptr noundef %2, i32 noundef 224, i32 noundef 1) #8
  br label %104

104:                                              ; preds = %102, %84
  %105 = load ptr, ptr %3, align 4
  tail call void %105(ptr noundef %2, i32 noundef 4, i32 noundef %98) #8
  %106 = load ptr, ptr %3, align 4
  tail call void %106(ptr noundef %2, i32 noundef 0, i32 noundef 2) #8
  %107 = getelementptr i8, ptr %0, i32 1576
  store i32 0, ptr %107, align 8
  br label %108

108:                                              ; preds = %104, %83, %16
  %109 = phi i32 [ 0, %104 ], [ -1, %83 ], [ -110, %16 ]
  ret i32 %109
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1904
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.xcan_open, i32 noundef %5) #9
  br label %54

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr i8, ptr %0, i32 1912
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef nonnull @xcan_interrupt, ptr noundef null, i32 noundef %12, ptr noundef %0, ptr noundef %0) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #9
  br label %54

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %0, i32 1900
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %2, i32 noundef 0, i32 noundef 1) #8
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = add i32 %19, 100
  %21 = getelementptr i8, ptr %0, i32 1896
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 %22(ptr noundef %2, i32 noundef 24) #8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %30, %16
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = sub i32 %20, %27
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 10000, i32 noundef 2) #8
  %31 = load ptr, ptr %21, align 8
  %32 = tail call i32 %31(ptr noundef %2, i32 noundef 24) #8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %26, label %36

35:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.13) #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #9
  br label %50

36:                                               ; preds = %30, %16
  %37 = getelementptr i8, ptr %0, i32 1668
  store i32 0, ptr %37, align 4
  %38 = getelementptr i8, ptr %0, i32 1672
  store i32 0, ptr %38, align 8
  %39 = tail call i32 @open_candev(ptr noundef %0) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = tail call fastcc i32 @xcan_chip_start(ptr noundef %0)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  tail call void @close_candev(ptr noundef %0) #8
  br label %50

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %0, i32 1680
  tail call void @napi_enable(ptr noundef %46) #8
  %47 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %48 = load ptr, ptr %47, align 64
  %49 = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %49) #8
  br label %58

50:                                               ; preds = %44, %36, %35
  %51 = phi i32 [ -110, %35 ], [ %39, %36 ], [ %42, %44 ]
  %52 = load i32, ptr %9, align 8
  %53 = tail call ptr @free_irq(i32 noundef %52, ptr noundef %0) #8
  br label %54

54:                                               ; preds = %50, %15, %7
  %55 = phi i32 [ %5, %7 ], [ %13, %15 ], [ %51, %50 ]
  %56 = load ptr, ptr %3, align 8
  %57 = tail call i32 @__pm_runtime_idle(ptr noundef %56, i32 noundef 5) #8
  br label %58

58:                                               ; preds = %54, %45
  %59 = phi i32 [ %55, %54 ], [ 0, %45 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_close(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #8
  %6 = getelementptr i8, ptr %0, i32 1680
  tail call void @napi_disable(ptr noundef %6) #8
  %7 = getelementptr i8, ptr %0, i32 1900
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %2, i32 noundef 0, i32 noundef 1) #8
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = add i32 %9, 100
  %11 = getelementptr i8, ptr %0, i32 1896
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 %12(ptr noundef %2, i32 noundef 24) #8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %21, %1
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = sub i32 %10, %17
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.13) #9
  br label %29

21:                                               ; preds = %16
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 10000, i32 noundef 2) #8
  %22 = load ptr, ptr %11, align 8
  %23 = tail call i32 %22(ptr noundef %2, i32 noundef 24) #8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %16, label %26

26:                                               ; preds = %21, %1
  %27 = getelementptr i8, ptr %0, i32 1668
  store i32 0, ptr %27, align 4
  %28 = getelementptr i8, ptr %0, i32 1672
  store i32 0, ptr %28, align 8
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr i8, ptr %0, i32 1576
  store i32 4, ptr %30, align 8
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %32 = load i32, ptr %31, align 8
  %33 = tail call ptr @free_irq(i32 noundef %32, ptr noundef %0) #8
  tail call void @close_candev(ptr noundef %0) #8
  %34 = getelementptr i8, ptr %0, i32 1904
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %7 = load i16, ptr %6, align 8
  switch i16 %7, label %66 [
    i16 3072, label %8
    i16 3328, label %16
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 16
  br i1 %11, label %12, label %66, !prof !16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp ugt i8 %14, 8
  br i1 %15, label %66, label %24, !prof !15

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 72
  br i1 %19, label %20, label %66, !prof !16

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = icmp ugt i8 %22, 64
  br i1 %23, label %66, label %24, !prof !15

24:                                               ; preds = %20, %12
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %5 to i32
  %28 = ptrtoint ptr %26 to i32
  %29 = sub i32 %27, %28
  %30 = icmp ult i32 %29, 16
  %31 = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !15

34:                                               ; preds = %24
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 104, i32 noundef 9, ptr noundef null) #8
  br label %35

35:                                               ; preds = %34, %24
  br i1 %30, label %66, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %38 = load i16, ptr %37, align 8
  %39 = and i16 %38, 96
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %25, align 8
  store i32 %43, ptr %44, align 8
  %45 = load ptr, ptr %25, align 8
  %46 = getelementptr inbounds %struct.can_skb_priv, ptr %45, i32 0, i32 1
  store i32 0, ptr %46, align 4
  %47 = load i16, ptr %37, align 8
  %48 = and i16 %47, -97
  %49 = or i16 %48, 32
  store i16 %49, ptr %37, align 8
  %50 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 262144
  %53 = icmp eq i32 %52, 0
  %54 = and i16 %49, -72
  %55 = or i16 %54, 5
  %56 = select i1 %53, i16 %54, i16 %55
  store i16 %56, ptr %37, align 8
  %57 = load ptr, ptr %4, align 4
  %58 = load ptr, ptr %25, align 8
  %59 = ptrtoint ptr %57 to i32
  %60 = ptrtoint ptr %58 to i32
  %61 = sub i32 %59, %60
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %62, ptr %63, align 2
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %62, ptr %64, align 4
  %65 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %62, ptr %65, align 2
  br label %70

66:                                               ; preds = %35, %20, %16, %12, %8, %2
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #8
  %67 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  br label %120

70:                                               ; preds = %41, %36
  %71 = getelementptr i8, ptr %1, i32 1928
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr i8, ptr %1, i32 1896
  %76 = load ptr, ptr %75, align 8
  br i1 %74, label %89, label %77

77:                                               ; preds = %70
  %78 = tail call i32 %76(ptr noundef %3, i32 noundef 144) #8
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %116, !prof !16

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %1, i32 1664
  %83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %82) #8
  tail call fastcc void @xcan_write_frame(ptr noundef %1, ptr noundef %0, i32 noundef 256) #8
  %84 = getelementptr i8, ptr %1, i32 1900
  %85 = load ptr, ptr %84, align 4
  tail call void %85(ptr noundef %3, i32 noundef 144, i32 noundef 1) #8
  %86 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %87 = load ptr, ptr %86, align 64
  %88 = getelementptr inbounds %struct.netdev_queue, ptr %87, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %88) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %82, i32 noundef %83) #8
  br label %120

89:                                               ; preds = %70
  %90 = tail call i32 %76(ptr noundef %3, i32 noundef 24) #8
  %91 = and i32 %90, 1024
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %116, !prof !16

93:                                               ; preds = %89
  %94 = getelementptr i8, ptr %1, i32 1664
  %95 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %94) #8
  tail call fastcc void @xcan_write_frame(ptr noundef %1, ptr noundef %0, i32 noundef 48) #8
  %96 = getelementptr i8, ptr %1, i32 1676
  %97 = load i32, ptr %96, align 4
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = getelementptr i8, ptr %1, i32 1900
  %101 = load ptr, ptr %100, align 4
  tail call void %101(ptr noundef %3, i32 noundef 36, i32 noundef 16384) #8
  %102 = load i32, ptr %96, align 4
  br label %103

103:                                              ; preds = %99, %93
  %104 = phi i32 [ %102, %99 ], [ %97, %93 ]
  %105 = getelementptr i8, ptr %1, i32 1668
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i8, ptr %1, i32 1672
  %108 = load i32, ptr %107, align 8
  %109 = sub i32 %106, %108
  %110 = icmp eq i32 %109, %104
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %113 = load ptr, ptr %112, align 64
  %114 = getelementptr inbounds %struct.netdev_queue, ptr %113, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %114) #8
  br label %115

115:                                              ; preds = %111, %103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %94, i32 noundef %95) #8
  br label %120

116:                                              ; preds = %89, %77
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #9
  %117 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %118 = load ptr, ptr %117, align 64
  %119 = getelementptr inbounds %struct.netdev_queue, ptr %118, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %119) #8
  br label %120

120:                                              ; preds = %116, %115, %81, %66
  %121 = phi i32 [ 16, %116 ], [ 0, %66 ], [ 0, %115 ], [ 0, %81 ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.can_frame, align 8
  %4 = alloca ptr, align 4
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 1928
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 128, i32 16
  %11 = getelementptr i8, ptr %1, i32 1896
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 %12(ptr noundef %5, i32 noundef 28) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %311, label %15

15:                                               ; preds = %2
  %16 = and i32 %13, 3072
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %1, i32 1900
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %5, i32 noundef 36, i32 noundef 3072) #8
  %21 = and i32 %13, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %1, i32 1576
  store i32 5, ptr %24, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = and i32 %13, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %1, i32 1576
  store i32 0, ptr %29, align 8
  br label %30

30:                                               ; preds = %28, %25, %15
  %31 = and i32 %13, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %101, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %1, i32 1664
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #8
  %36 = getelementptr i8, ptr %1, i32 1668
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %1, i32 1672
  %39 = load i32, ptr %38, align 8
  %40 = sub i32 %37, %39
  %41 = icmp eq i32 %37, %39
  %42 = load i1, ptr @xcan_tx_interrupt.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %46, label %45, !prof !15

45:                                               ; preds = %33
  br i1 %41, label %47, label %50

46:                                               ; preds = %33
  store i1 true, ptr @xcan_tx_interrupt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1250, i32 noundef 9, ptr noundef null) #8
  br label %47

47:                                               ; preds = %46, %45
  %48 = getelementptr i8, ptr %1, i32 1900
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %5, i32 noundef 36, i32 noundef 2) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #8
  br label %101

50:                                               ; preds = %45
  %51 = icmp eq i32 %40, 1
  br i1 %51, label %73, label %52

52:                                               ; preds = %50
  %53 = getelementptr i8, ptr %1, i32 1676
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %40, %54
  br i1 %55, label %56, label %57, !prof !15

56:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1261, i32 noundef 9, ptr noundef null) #8
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr i8, ptr %1, i32 1900
  br label %63

59:                                               ; preds = %63
  %60 = add nuw nsw i32 %64, 1
  %61 = icmp eq i32 %60, 100
  br i1 %61, label %62, label %63, !prof !15

62:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1274, i32 noundef 9, ptr noundef null) #8
  br label %70

63:                                               ; preds = %59, %57
  %64 = phi i32 [ 1, %57 ], [ %60, %59 ]
  %65 = load ptr, ptr %58, align 4
  tail call void %65(ptr noundef %5, i32 noundef 36, i32 noundef 2) #8
  %66 = load ptr, ptr %11, align 8
  %67 = tail call i32 %66(ptr noundef %5, i32 noundef 28) #8
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %59

70:                                               ; preds = %63, %62
  %71 = and i32 %67, 16384
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %76

73:                                               ; preds = %50
  %74 = getelementptr i8, ptr %1, i32 1900
  %75 = load ptr, ptr %74, align 4
  tail call void %75(ptr noundef %5, i32 noundef 36, i32 noundef 2) #8
  br label %78

76:                                               ; preds = %70
  %77 = icmp eq i32 %40, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %76, %73, %70
  %79 = phi i32 [ %40, %76 ], [ 1, %73 ], [ 1, %70 ]
  %80 = getelementptr i8, ptr %1, i32 1676
  %81 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %82 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %83 = load i32, ptr %38, align 8
  br label %84

84:                                               ; preds = %84, %78
  %85 = phi i32 [ %83, %78 ], [ %94, %84 ]
  %86 = phi i32 [ %79, %78 ], [ %87, %84 ]
  %87 = add i32 %86, -1
  %88 = load i32, ptr %80, align 4
  %89 = urem i32 %85, %88
  %90 = tail call i32 @can_get_echo_skb(ptr noundef %1, i32 noundef %89, ptr noundef null) #8
  %91 = load i32, ptr %81, align 4
  %92 = add i32 %91, %90
  store i32 %92, ptr %81, align 4
  %93 = load i32, ptr %38, align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr %38, align 8
  %95 = load i32, ptr %82, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %82, align 4
  %97 = icmp eq i32 %87, 0
  br i1 %97, label %98, label %84

98:                                               ; preds = %84, %76
  %99 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %100 = load ptr, ptr %99, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %100) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #8
  tail call fastcc void @xcan_update_error_state_after_rxtx(ptr noundef %1) #8
  br label %101

101:                                              ; preds = %98, %47, %30
  %102 = and i32 %13, 131905
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %298, label %104

104:                                              ; preds = %101
  %105 = getelementptr i8, ptr %1, i32 1900
  %106 = load ptr, ptr %105, align 4
  tail call void %106(ptr noundef %5, i32 noundef 36, i32 noundef %102) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8
  %107 = load ptr, ptr %11, align 8
  %108 = tail call i32 %107(ptr noundef %5, i32 noundef 20) #8
  %109 = load ptr, ptr %105, align 4
  tail call void %109(ptr noundef %5, i32 noundef 20, i32 noundef %108) #8
  %110 = and i32 %13, 512
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %104
  %113 = getelementptr i8, ptr %1, i32 1576
  store i32 3, ptr %113, align 8
  %114 = getelementptr i8, ptr %1, i32 1424
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  %117 = load ptr, ptr %105, align 4
  tail call void %117(ptr noundef %5, i32 noundef 0, i32 noundef 1) #8
  tail call void @can_bus_off(ptr noundef %1) #8
  store i32 64, ptr %3, align 8
  br label %143

118:                                              ; preds = %104
  %119 = load ptr, ptr %11, align 8
  %120 = tail call i32 %119(ptr noundef %5, i32 noundef 24) #8
  %121 = and i32 %120, 384
  %122 = icmp eq i32 %121, 384
  %123 = lshr i32 %120, 6
  %124 = and i32 %123, 1
  %125 = select i1 %122, i32 2, i32 %124
  %126 = getelementptr i8, ptr %1, i32 1576
  %127 = load i32, ptr %126, align 8
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %143, label %129

129:                                              ; preds = %118
  %130 = load ptr, ptr %11, align 8
  %131 = tail call i32 %130(ptr noundef %5, i32 noundef 16) #8
  %132 = and i32 %131, 255
  %133 = lshr i32 %131, 8
  %134 = and i32 %133, 255
  %135 = icmp ult i32 %132, %134
  %136 = select i1 %135, i32 0, i32 %125
  %137 = icmp ugt i32 %132, %134
  %138 = select i1 %137, i32 0, i32 %125
  call void @can_change_state(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %136, i32 noundef %138) #8
  %139 = trunc i32 %131 to i8
  %140 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5, i32 6
  store i8 %139, ptr %140, align 2
  %141 = trunc i32 %133 to i8
  %142 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5, i32 7
  store i8 %141, ptr %142, align 1
  br label %143

143:                                              ; preds = %129, %118, %112
  %144 = and i32 %13, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = getelementptr i8, ptr %1, i32 1428
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, 1
  store i32 %149, ptr %147, align 4
  %150 = load i32, ptr %3, align 8
  %151 = or i32 %150, 2
  store i32 %151, ptr %3, align 8
  %152 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5
  store i8 0, ptr %152, align 8
  br label %153

153:                                              ; preds = %146, %143
  %154 = and i32 %13, 64
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 4
  %160 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, 1
  store i32 %162, ptr %160, align 4
  %163 = load i32, ptr %3, align 8
  %164 = or i32 %163, 4
  store i32 %164, ptr %3, align 8
  %165 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5, i32 1
  %166 = load i8, ptr %165, align 1
  %167 = or i8 %166, 1
  store i8 %167, ptr %165, align 1
  br label %168

168:                                              ; preds = %156, %153
  %169 = and i32 %13, 131072
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 4
  %175 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %176 = load i32, ptr %175, align 4
  %177 = add i32 %176, 1
  store i32 %177, ptr %175, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.18) #9
  %178 = load i32, ptr %3, align 8
  %179 = or i32 %178, 4
  store i32 %179, ptr %3, align 8
  br label %180

180:                                              ; preds = %171, %168
  %181 = and i32 %13, 256
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %280, label %183

183:                                              ; preds = %180
  %184 = getelementptr i8, ptr %1, i32 1580
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, 16
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = and i32 %108, 16
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %206, label %196

191:                                              ; preds = %183
  %192 = load i32, ptr %3, align 8
  %193 = or i32 %192, 136
  store i32 %193, ptr %3, align 8
  %194 = and i32 %108, 16
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %206, label %200

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, 1
  store i32 %199, ptr %197, align 4
  br label %206

200:                                              ; preds = %191
  %201 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %202 = load i32, ptr %201, align 4
  %203 = add i32 %202, 1
  store i32 %203, ptr %201, align 4
  %204 = or i32 %192, 168
  store i32 %204, ptr %3, align 8
  %205 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5, i32 3
  store i8 25, ptr %205, align 1
  br label %206

206:                                              ; preds = %200, %196, %191, %188
  %207 = and i32 %108, 8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %211 = load i32, ptr %210, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %210, align 4
  br i1 %187, label %216, label %223

213:                                              ; preds = %206
  %214 = and i32 %108, 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %243, label %233

216:                                              ; preds = %209
  %217 = and i32 %108, 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %243, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %221 = load i32, ptr %220, align 4
  %222 = add i32 %221, 1
  store i32 %222, ptr %220, align 4
  br label %243

223:                                              ; preds = %209
  %224 = load i32, ptr %3, align 8
  %225 = or i32 %224, 8
  store i32 %225, ptr %3, align 8
  %226 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5, i32 2
  store i8 1, ptr %226, align 2
  %227 = and i32 %108, 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %243, label %229

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %231 = load i32, ptr %230, align 4
  %232 = add i32 %231, 1
  store i32 %232, ptr %230, align 4
  br label %239

233:                                              ; preds = %213
  %234 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %235 = load i32, ptr %234, align 4
  %236 = add i32 %235, 1
  store i32 %236, ptr %234, align 4
  br i1 %187, label %243, label %237

237:                                              ; preds = %233
  %238 = load i32, ptr %3, align 8
  br label %239

239:                                              ; preds = %237, %229
  %240 = phi i32 [ %238, %237 ], [ %225, %229 ]
  %241 = or i32 %240, 8
  store i32 %241, ptr %3, align 8
  %242 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5, i32 2
  store i8 4, ptr %242, align 2
  br label %243

243:                                              ; preds = %239, %233, %223, %219, %216, %213
  %244 = and i32 %108, 2
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %248 = load i32, ptr %247, align 4
  %249 = add i32 %248, 1
  store i32 %249, ptr %247, align 4
  br i1 %187, label %253, label %258

250:                                              ; preds = %243
  %251 = and i32 %108, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %276, label %266

253:                                              ; preds = %246
  %254 = and i32 %108, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %276, label %256

256:                                              ; preds = %253
  %257 = add i32 %248, 2
  store i32 %257, ptr %247, align 4
  br label %276

258:                                              ; preds = %246
  %259 = load i32, ptr %3, align 8
  %260 = or i32 %259, 8
  store i32 %260, ptr %3, align 8
  %261 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5, i32 2
  store i8 2, ptr %261, align 2
  %262 = and i32 %108, 1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %276, label %264

264:                                              ; preds = %258
  %265 = add i32 %248, 2
  store i32 %265, ptr %247, align 4
  br label %272

266:                                              ; preds = %250
  %267 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %268 = load i32, ptr %267, align 4
  %269 = add i32 %268, 1
  store i32 %269, ptr %267, align 4
  br i1 %187, label %276, label %270

270:                                              ; preds = %266
  %271 = load i32, ptr %3, align 8
  br label %272

272:                                              ; preds = %270, %264
  %273 = phi i32 [ %271, %270 ], [ %260, %264 ]
  %274 = or i32 %273, 8
  store i32 %274, ptr %3, align 8
  %275 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5, i32 3
  store i8 8, ptr %275, align 1
  br label %276

276:                                              ; preds = %272, %266, %258, %256, %253, %250
  %277 = getelementptr i8, ptr %1, i32 1412
  %278 = load i32, ptr %277, align 4
  %279 = add i32 %278, 1
  store i32 %279, ptr %277, align 4
  br label %280

280:                                              ; preds = %276, %180
  %281 = load i32, ptr %3, align 8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %297, label %283

283:                                              ; preds = %280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !14
  %284 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %4) #8
  %285 = icmp eq ptr %284, null
  br i1 %285, label %296, label %286

286:                                              ; preds = %283
  %287 = load i32, ptr %3, align 8
  %288 = load ptr, ptr %4, align 4
  %289 = load i32, ptr %288, align 8
  %290 = or i32 %289, %287
  store i32 %290, ptr %288, align 8
  %291 = load ptr, ptr %4, align 4
  %292 = getelementptr inbounds %struct.can_frame, ptr %291, i32 0, i32 5
  %293 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5
  %294 = load i64, ptr %293, align 8
  store i64 %294, ptr %292, align 8
  %295 = call i32 @netif_rx(ptr noundef nonnull %284) #8
  br label %296

296:                                              ; preds = %286, %283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %297

297:                                              ; preds = %296, %280
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %298

298:                                              ; preds = %297, %101
  %299 = and i32 %10, %13
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %311, label %301

301:                                              ; preds = %298
  %302 = load ptr, ptr %11, align 8
  %303 = call i32 %302(ptr noundef %5, i32 noundef 32) #8
  %304 = xor i32 %10, -1
  %305 = and i32 %303, %304
  %306 = getelementptr i8, ptr %1, i32 1900
  %307 = load ptr, ptr %306, align 4
  call void %307(ptr noundef %5, i32 noundef 32, i32 noundef %305) #8
  %308 = getelementptr i8, ptr %1, i32 1680
  %309 = call zeroext i1 @napi_schedule_prep(ptr noundef %308) #8
  br i1 %309, label %310, label %311

310:                                              ; preds = %301
  call void @__napi_schedule(ptr noundef %308) #8
  br label %311

311:                                              ; preds = %310, %301, %298, %2
  %312 = phi i32 [ 0, %2 ], [ 1, %298 ], [ 1, %301 ], [ 1, %310 ]
  ret i32 %312
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xcan_update_error_state_after_rxtx(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1576
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %42, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 1896
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 %10(ptr noundef %3, i32 noundef 24) #8
  %12 = and i32 %11, 384
  %13 = icmp eq i32 %12, 384
  %14 = lshr i32 %11, 6
  %15 = and i32 %14, 1
  %16 = select i1 %13, i32 2, i32 %15
  %17 = icmp eq i32 %16, %5
  br i1 %17, label %42, label %18

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !14
  %19 = call ptr @alloc_can_err_skb(ptr noundef %0, ptr noundef nonnull %2) #8
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %2, align 4
  %22 = select i1 %20, ptr null, ptr %21
  %23 = load ptr, ptr %9, align 8
  %24 = call i32 %23(ptr noundef %3, i32 noundef 16) #8
  %25 = and i32 %24, 255
  %26 = lshr i32 %24, 8
  %27 = and i32 %26, 255
  %28 = icmp ult i32 %25, %27
  %29 = select i1 %28, i32 0, i32 %16
  %30 = icmp ugt i32 %25, %27
  %31 = select i1 %30, i32 0, i32 %16
  call void @can_change_state(ptr noundef %0, ptr noundef %22, i32 noundef %29, i32 noundef %31) #8
  %32 = icmp eq ptr %22, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %18
  %34 = trunc i32 %24 to i8
  %35 = getelementptr %struct.can_frame, ptr %22, i32 0, i32 5, i32 6
  store i8 %34, ptr %35, align 2
  %36 = trunc i32 %26 to i8
  %37 = getelementptr %struct.can_frame, ptr %22, i32 0, i32 5, i32 7
  store i8 %36, ptr %37, align 1
  br label %38

38:                                               ; preds = %33, %18
  br i1 %20, label %41, label %39

39:                                               ; preds = %38
  %40 = call i32 @netif_rx(ptr noundef nonnull %19) #8
  br label %41

41:                                               ; preds = %39, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %42

42:                                               ; preds = %41, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xcan_write_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = load i32, ptr %5, align 8
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = shl i32 %7, 1
  %11 = and i32 %10, 524286
  %12 = shl i32 %7, 3
  %13 = and i32 %12, -2097152
  %14 = or i32 %11, %13
  %15 = and i32 %7, 1073741824
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 1572864, i32 1572865
  %18 = or i32 %14, %17
  br label %24

19:                                               ; preds = %3
  %20 = shl i32 %7, 21
  %21 = lshr i32 %7, 10
  %22 = and i32 %21, 1048576
  %23 = or i32 %22, %20
  br label %24

24:                                               ; preds = %19, %9
  %25 = phi i32 [ %18, %9 ], [ %23, %19 ]
  %26 = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %27) #8
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 28
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 72
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 26
  %40 = or i32 %39, %30
  %41 = or i32 %40, 134217728
  br label %42

42:                                               ; preds = %34, %24
  %43 = phi i32 [ %41, %34 ], [ %30, %24 ]
  %44 = getelementptr i8, ptr %0, i32 1924
  %45 = getelementptr i8, ptr %0, i32 1928
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 9
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = getelementptr i8, ptr %0, i32 1668
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %0, i32 1676
  %53 = load i32, ptr %52, align 4
  %54 = urem i32 %51, %53
  br label %55

55:                                               ; preds = %49, %42
  %56 = phi i32 [ %54, %49 ], [ 0, %42 ]
  %57 = tail call i32 @can_put_echo_skb(ptr noundef %1, ptr noundef %0, i32 noundef %56, i32 noundef 0) #8
  %58 = getelementptr i8, ptr %0, i32 1668
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4
  %61 = getelementptr i8, ptr %0, i32 1900
  %62 = load ptr, ptr %61, align 4
  tail call void %62(ptr noundef %6, i32 noundef %2, i32 noundef %25) #8
  %63 = load ptr, ptr %61, align 4
  %64 = add i32 %2, 4
  tail call void %63(ptr noundef %6, i32 noundef %64, i32 noundef %43) #8
  %65 = load i32, ptr %44, align 4
  %66 = and i32 %65, -2
  %67 = icmp eq i32 %66, 2
  %68 = load i8, ptr %26, align 4
  %69 = icmp eq i8 %68, 0
  br i1 %67, label %70, label %88

70:                                               ; preds = %55
  br i1 %69, label %109, label %71

71:                                               ; preds = %70
  %72 = add i32 %2, 8
  %73 = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 5
  br label %74

74:                                               ; preds = %74, %71
  %75 = phi i32 [ 0, %71 ], [ %84, %74 ]
  %76 = phi i32 [ 0, %71 ], [ %83, %74 ]
  %77 = shl i32 %76, 2
  %78 = add i32 %72, %77
  %79 = load ptr, ptr %61, align 4
  %80 = getelementptr i8, ptr %73, i32 %75
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #8
  tail call void %79(ptr noundef %6, i32 noundef %78, i32 noundef %82) #8
  %83 = add nuw nsw i32 %76, 1
  %84 = add nuw nsw i32 %75, 4
  %85 = load i8, ptr %26, align 4
  %86 = zext i8 %85 to i32
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %74, label %109

88:                                               ; preds = %55
  br i1 %69, label %98, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.canfd_frame, ptr %5, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  %93 = icmp ugt i8 %68, 4
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = getelementptr %struct.canfd_frame, ptr %5, i32 0, i32 5, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #8
  br label %98

98:                                               ; preds = %94, %89, %88
  %99 = phi i32 [ %92, %94 ], [ %92, %89 ], [ 0, %88 ]
  %100 = phi i32 [ %97, %94 ], [ 0, %89 ], [ 0, %88 ]
  %101 = load i32, ptr %5, align 8
  %102 = and i32 %101, 1073741824
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load ptr, ptr %61, align 4
  %106 = add i32 %2, 8
  tail call void %105(ptr noundef %6, i32 noundef %106, i32 noundef %99) #8
  %107 = load ptr, ptr %61, align 4
  %108 = add i32 %2, 12
  tail call void %107(ptr noundef %6, i32 noundef %108, i32 noundef %100) #8
  br label %109

109:                                              ; preds = %104, %98, %74, %70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #8
  tail call void @netif_device_detach(ptr noundef %3) #8
  %12 = getelementptr i8, ptr %3, i32 1408
  %13 = getelementptr i8, ptr %3, i32 1900
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %12, i32 noundef 0, i32 noundef 1) #8
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = add i32 %15, 100
  %17 = getelementptr i8, ptr %3, i32 1896
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 %18(ptr noundef %12, i32 noundef 24) #8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %27, %8
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = sub i32 %16, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.13) #9
  br label %35

27:                                               ; preds = %22
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 10000, i32 noundef 2) #8
  %28 = load ptr, ptr %17, align 8
  %29 = tail call i32 %28(ptr noundef %12, i32 noundef 24) #8
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %22, label %32

32:                                               ; preds = %27, %8
  %33 = getelementptr i8, ptr %3, i32 1668
  store i32 0, ptr %33, align 4
  %34 = getelementptr i8, ptr %3, i32 1672
  store i32 0, ptr %34, align 8
  br label %35

35:                                               ; preds = %32, %26
  %36 = getelementptr i8, ptr %3, i32 1576
  store i32 4, ptr %36, align 8
  br label %37

37:                                               ; preds = %35, %1
  %38 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #8
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22) #9
  br label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @xcan_chip_start(ptr noundef %3)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #9
  br label %20

16:                                               ; preds = %12
  tail call void @netif_device_attach(ptr noundef %3) #8
  %17 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %19) #8
  br label %20

20:                                               ; preds = %16, %15, %7, %6
  %21 = phi i32 [ %4, %6 ], [ %13, %15 ], [ 0, %16 ], [ 0, %7 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1916
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = getelementptr i8, ptr %3, i32 1920
  %7 = load ptr, ptr %6, align 8
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xcan_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1916
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #9
  br label %26

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %3, i32 1920
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = tail call i32 @clk_enable(ptr noundef %16) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #8
  br label %23

23:                                               ; preds = %22, %14
  %24 = phi i32 [ %20, %22 ], [ %17, %14 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #9
  %25 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %25) #8
  tail call void @clk_unprepare(ptr noundef %25) #8
  br label %26

26:                                               ; preds = %23, %19, %12
  %27 = phi i32 [ %13, %12 ], [ %24, %23 ], [ 0, %19 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 2150674311}
!9 = !{i64 3133218}
!10 = !{i64 3133636}
!11 = !{i64 2150673089}
!12 = !{i64 2155665595}
!13 = !{i64 2155666108}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
