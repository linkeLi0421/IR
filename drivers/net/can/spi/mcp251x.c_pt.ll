; ModuleID = '/llk/IR/drivers/net/can/spi/mcp251x.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.120, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.120 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.134 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.mcp251x_priv = type { %struct.can_priv, ptr, ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i8, ptr, ptr, ptr, %struct.gpio_chip, i8 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.137, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
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
%struct.can_frame = type { i32, %union.anon.138, i8, i8, i8, [8 x i8] }
%union.anon.138 = type { i8 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@__initcall__kmod_mcp251x__468_1509_mcp251x_can_driver_init6 = internal global ptr @mcp251x_can_driver_init, section ".initcall6.init", align 4
@mcp251x_can_driver = internal global %struct.spi_driver { ptr @mcp251x_id_table, ptr @mcp251x_can_probe, ptr @mcp251x_can_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcp251x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcp251x_can_pm_ops, ptr null, ptr null } }, align 4
@__exitcall_mcp251x_can_driver_exit = internal global ptr @mcp251x_can_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author469 = internal constant [95 x i8] c"mcp251x.author=Chris Elston <celston@katalix.com>, Christian Pellegrin <chripell@evolware.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description470 = internal constant [52 x i8] c"mcp251x.description=Microchip 251x/25625 CAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file471 = internal constant [41 x i8] c"mcp251x.file=drivers/net/can/spi/mcp251x\00", section ".modinfo", align 1
@__UNIQUE_ID_license472 = internal constant [23 x i8] c"mcp251x.license=GPL v2\00", section ".modinfo", align 1
@mcp251x_id_table = internal constant [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"mcp2510\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9488 }, %struct.spi_device_id { [32 x i8] c"mcp2515\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9493 }, %struct.spi_device_id { [32 x i8] c"mcp25625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 153125 }, %struct.spi_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [8 x i8] c"mcp251x\00", align 1
@mcp251x_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp2510\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9488 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp2515\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9493 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp25625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 153125 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@mcp251x_can_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mcp251x_can_suspend, ptr @mcp251x_can_resume, ptr @mcp251x_can_suspend, ptr @mcp251x_can_resume, ptr @mcp251x_can_suspend, ptr @mcp251x_can_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@mcp251x_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @mcp251x_open, ptr @mcp251x_stop, ptr @mcp251x_hard_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mcp251x_bittiming_const = internal constant %struct.can_bittiming_const { [16 x i8] c"mcp251x\00\00\00\00\00\00\00\00\00", i32 3, i32 16, i32 2, i32 8, i32 4, i32 1, i32 64, i32 1 }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"xceiver\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"mcp251x_wq\00", align 1
@mcp251x_can_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"&priv->mcp_lock\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Cannot initialize MCP%x. Wrong wiring?\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"MCP%x successfully initialized.\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Probe failed, err=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"unable to set initial baudrate!\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"failed to acquire irq %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"spi transfer failed: ret = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"cannot allocate RX skb\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"spi write failed: ret = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"cannot allocate error skb\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"MCP251x didn't enter in config mode\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"MCP251x didn't enter in normal mode\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"hard_xmit called while tx busy\0A\00", align 1
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"include/linux/can/skb.h\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"MCP251x didn't enter in conf mode after reset\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@mcp251x_gpio_names = internal constant [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"TX0RTS\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"TX1RTS\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"TX2RTS\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"RX0BF\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"RX1BF\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author469, ptr @__UNIQUE_ID_description470, ptr @__UNIQUE_ID_file471, ptr @__UNIQUE_ID_license472, ptr @__exitcall_mcp251x_can_driver_exit, ptr @__initcall__kmod_mcp251x__468_1509_mcp251x_can_driver_init6, ptr @mcp251x_can_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mcp251x_can_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mcp251x_can_driver) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mcp251x_can_driver_exit() #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mcp251x_can_driver, i32 0, i32 4)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_can_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @device_get_match_data(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %4 = tail call ptr @devm_clk_get_optional(ptr noundef %0, ptr noundef null) #10
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %124

8:                                                ; preds = %1
  %9 = tail call i32 @clk_get_rate(ptr noundef %4) #10
  store i32 %9, ptr %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1) #10
  %13 = load i32, ptr %2, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %13, %11 ], [ %9, %8 ]
  %16 = add i32 %15, -25000001
  %17 = icmp ult i32 %16, -24000001
  br i1 %17, label %124, label %18

18:                                               ; preds = %14
  %19 = call ptr @alloc_candev_mqs(i32 noundef 672, i32 noundef 1, i32 noundef 1, i32 noundef 1) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %124, label %21

21:                                               ; preds = %18
  %22 = call fastcc i32 @clk_prepare_enable(ptr noundef %4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %121

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 16
  store ptr @mcp251x_netdev_ops, ptr %25, align 8
  %26 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 14
  %27 = load i32, ptr %26, align 8
  %28 = or i32 %27, 262144
  store i32 %28, ptr %26, align 8
  %29 = getelementptr i8, ptr %19, i32 1408
  %30 = getelementptr i8, ptr %19, i32 1436
  store ptr @mcp251x_bittiming_const, ptr %30, align 4
  %31 = getelementptr i8, ptr %19, i32 1644
  store ptr @mcp251x_do_set_mode, ptr %31, align 4
  %32 = load i32, ptr %2, align 4
  %33 = lshr i32 %32, 1
  %34 = getelementptr i8, ptr %19, i32 1544
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %19, i32 1584
  store i32 7, ptr %35, align 4
  %36 = icmp eq ptr %3, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %24
  %38 = ptrtoint ptr %3 to i32
  br label %43

39:                                               ; preds = %24
  %40 = call ptr @spi_get_device_id(ptr noundef %0) #10
  %41 = getelementptr inbounds %struct.spi_device_id, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %42, %39 ], [ %38, %37 ]
  %45 = getelementptr i8, ptr %19, i32 1672
  store i32 %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %19, i32 1664
  store ptr %19, ptr %46, align 4
  %47 = getelementptr i8, ptr %19, i32 1768
  store ptr %4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %29, ptr %48, align 8
  %49 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  store i8 8, ptr %49, align 1
  %50 = load i32, ptr %45, align 4
  %51 = icmp eq i32 %50, 9488
  %52 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %51, i32 5000000, i32 10000000
  %56 = select i1 %54, i32 %55, i32 %53
  store i32 %56, ptr %52, align 8
  %57 = call i32 @spi_setup(ptr noundef %0) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %119

59:                                               ; preds = %43
  %60 = call ptr @devm_regulator_get_optional(ptr noundef %0, ptr noundef nonnull @.str.2) #10
  %61 = getelementptr i8, ptr %19, i32 1760
  store ptr %60, ptr %61, align 4
  %62 = call ptr @devm_regulator_get_optional(ptr noundef %0, ptr noundef nonnull @.str.3) #10
  %63 = getelementptr i8, ptr %19, i32 1764
  store ptr %62, ptr %63, align 4
  %64 = load ptr, ptr %61, align 4
  %65 = icmp eq ptr %64, inttoptr (i32 -517 to ptr)
  %66 = icmp eq ptr %62, inttoptr (i32 -517 to ptr)
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %119, label %68

68:                                               ; preds = %59
  %69 = icmp eq ptr %64, null
  %70 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  %71 = or i1 %69, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = call i32 @regulator_enable(ptr noundef nonnull %64) #10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %119

75:                                               ; preds = %72, %68
  %76 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef 0) #10
  %77 = getelementptr i8, ptr %19, i32 1708
  store ptr %76, ptr %77, align 4
  %78 = icmp eq ptr %76, null
  br i1 %78, label %119, label %79

79:                                               ; preds = %75
  %80 = getelementptr i8, ptr %19, i32 1712
  store i32 -32, ptr %80, align 4
  %81 = getelementptr i8, ptr %19, i32 1716
  store volatile ptr %81, ptr %81, align 4
  %82 = getelementptr i8, ptr %19, i32 1720
  store ptr %81, ptr %82, align 4
  %83 = getelementptr i8, ptr %19, i32 1724
  store ptr @mcp251x_tx_work_handler, ptr %83, align 4
  %84 = getelementptr i8, ptr %19, i32 1728
  store i32 -32, ptr %84, align 4
  %85 = getelementptr i8, ptr %19, i32 1732
  store volatile ptr %85, ptr %85, align 4
  %86 = getelementptr i8, ptr %19, i32 1736
  store ptr %85, ptr %86, align 4
  %87 = getelementptr i8, ptr %19, i32 1740
  store ptr @mcp251x_restart_work_handler, ptr %87, align 4
  %88 = getelementptr i8, ptr %19, i32 1668
  store ptr %0, ptr %88, align 4
  %89 = getelementptr i8, ptr %19, i32 1676
  call void @__mutex_init(ptr noundef %89, ptr noundef nonnull @.str.5, ptr noundef nonnull @mcp251x_can_probe.__key) #10
  %90 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 14, i32 noundef 3520) #10
  %91 = getelementptr i8, ptr %19, i32 1696
  store ptr %90, ptr %91, align 4
  %92 = icmp eq ptr %90, null
  br i1 %92, label %110, label %93

93:                                               ; preds = %79
  %94 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 14, i32 noundef 3520) #10
  %95 = getelementptr i8, ptr %19, i32 1700
  store ptr %94, ptr %95, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %110, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 111, i32 1
  store ptr %0, ptr %98, align 4
  %99 = call fastcc i32 @mcp251x_hw_probe(ptr noundef %0)
  switch i32 %99, label %110 [
    i32 0, label %102
    i32 -19, label %100
  ]

100:                                              ; preds = %97
  %101 = load i32, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %101) #11
  br label %110

102:                                              ; preds = %97
  call fastcc void @mcp251x_hw_sleep(ptr noundef %0)
  %103 = call i32 @register_candev(ptr noundef nonnull %19) #10
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = call fastcc i32 @mcp251x_gpio_setup(ptr noundef %29)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, ptr %45, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %19, ptr noundef nonnull @.str.7, i32 noundef %109) #11
  br label %124

110:                                              ; preds = %105, %102, %100, %97, %93, %79
  %111 = phi i32 [ -19, %100 ], [ %103, %102 ], [ %106, %105 ], [ -12, %79 ], [ -12, %93 ], [ %99, %97 ]
  %112 = load ptr, ptr %77, align 4
  call void @destroy_workqueue(ptr noundef %112) #10
  store ptr null, ptr %77, align 4
  %113 = load ptr, ptr %61, align 4
  %114 = icmp eq ptr %113, null
  %115 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  %116 = or i1 %114, %115
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  %118 = call i32 @regulator_disable(ptr noundef nonnull %113) #10
  br label %119

119:                                              ; preds = %117, %110, %75, %72, %59, %43
  %120 = phi i32 [ %57, %43 ], [ %73, %72 ], [ -517, %59 ], [ -12, %75 ], [ %111, %110 ], [ %111, %117 ]
  call void @clk_disable(ptr noundef %4) #10
  call void @clk_unprepare(ptr noundef %4) #10
  br label %121

121:                                              ; preds = %119, %21
  %122 = phi i32 [ %22, %21 ], [ %120, %119 ]
  call void @free_candev(ptr noundef nonnull %19) #10
  %123 = sub i32 0, %122
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %123) #11
  br label %124

124:                                              ; preds = %121, %108, %18, %14, %6
  %125 = phi i32 [ %7, %6 ], [ %122, %121 ], [ 0, %108 ], [ -34, %14 ], [ -12, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_can_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @unregister_candev(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @regulator_disable(ptr noundef nonnull %7) #10
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  tail call void @destroy_workqueue(ptr noundef %15) #10
  store ptr null, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  tail call void @free_candev(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_do_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %36

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 1704
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 1756
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %8
  tail call void @consume_skb(ptr noundef %6) #10
  %17 = getelementptr i8, ptr %0, i32 1756
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 1664
  %22 = load ptr, ptr %21, align 4
  tail call void @can_free_echo_skb(ptr noundef %22, i32 noundef 0, ptr noundef null) #10
  br label %23

23:                                               ; preds = %20, %16
  store ptr null, ptr %5, align 4
  store i8 0, ptr %17, align 4
  %24 = getelementptr i8, ptr %0, i32 1576
  store i32 0, ptr %24, align 4
  %25 = getelementptr i8, ptr %0, i32 1752
  store i32 1, ptr %25, align 4
  %26 = getelementptr i8, ptr %0, i32 1588
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %0, i32 1748
  store i32 8, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = getelementptr i8, ptr %0, i32 1708
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %0, i32 1728
  %35 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %33, ptr noundef %34) #10
  br label %36

36:                                               ; preds = %31, %2
  %37 = phi i32 [ 0, %31 ], [ -95, %2 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcp251x_tx_work_handler(ptr noundef %0) #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 4
  %8 = alloca [14 x i8], align 1
  %9 = getelementptr i8, ptr %0, i32 -44
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 -48
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 -36
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %160, label %17

17:                                               ; preds = %1
  %18 = getelementptr i8, ptr %0, i32 -136
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %12, i32 1704
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %12, i32 1756
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %29, %25
  tail call void @consume_skb(ptr noundef %23) #10
  %34 = getelementptr i8, ptr %12, i32 1756
  %35 = load i8, ptr %34, align 4, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %12, i32 1664
  %39 = load ptr, ptr %38, align 4
  tail call void @can_free_echo_skb(ptr noundef %39, i32 noundef 0, ptr noundef null) #10
  br label %40

40:                                               ; preds = %37, %33
  store ptr null, ptr %22, align 4
  store i8 0, ptr %34, align 4
  br label %160

41:                                               ; preds = %17
  %42 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.can_frame, ptr %43, i32 0, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = icmp ugt i8 %45, 8
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i8 8, ptr %44, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = phi i8 [ 8, %47 ], [ %45, %41 ]
  %50 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %51 = load ptr, ptr %50, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %8) #10
  %52 = getelementptr inbounds i8, ptr %8, i32 6
  store i64 0, ptr %52, align 1, !annotation !9
  %53 = load i32, ptr %43, align 8
  %54 = lshr i32 %53, 18
  %55 = icmp slt i32 %53, 0
  %56 = select i1 %55, i32 %54, i32 %53
  store i8 64, ptr %8, align 1
  %57 = lshr i32 %56, 3
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds [14 x i8], ptr %8, i32 0, i32 1
  store i8 %58, ptr %59, align 1
  %60 = shl i32 %56, 5
  %61 = lshr i32 %53, 28
  %62 = and i32 %61, 8
  %63 = or i32 %60, %62
  %64 = lshr i32 %53, 16
  %65 = and i32 %64, 3
  %66 = or i32 %63, %65
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds [14 x i8], ptr %8, i32 0, i32 2
  store i8 %67, ptr %68, align 1
  %69 = lshr i32 %53, 8
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds [14 x i8], ptr %8, i32 0, i32 3
  store i8 %70, ptr %71, align 1
  %72 = trunc i32 %53 to i8
  %73 = getelementptr inbounds [14 x i8], ptr %8, i32 0, i32 4
  store i8 %72, ptr %73, align 1
  %74 = lshr i32 %53, 24
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 64
  %77 = or i8 %49, %76
  %78 = getelementptr inbounds [14 x i8], ptr %8, i32 0, i32 5
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds %struct.can_frame, ptr %43, i32 0, i32 5
  %80 = zext i8 %49 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %52, ptr align 8 %79, i32 %80, i1 false) #10
  %81 = getelementptr inbounds %struct.mcp251x_priv, ptr %51, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 9488
  br i1 %83, label %84, label %118

84:                                               ; preds = %48
  %85 = getelementptr inbounds i8, ptr %7, i32 4
  %86 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  %87 = getelementptr inbounds i8, ptr %6, i32 8
  %88 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %89 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  %90 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  %91 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  %92 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  %93 = add nuw nsw i32 %80, 5
  br label %94

94:                                               ; preds = %115, %84
  %95 = phi ptr [ %51, %84 ], [ %117, %115 ]
  %96 = phi i32 [ 1, %84 ], [ %116, %115 ]
  %97 = trunc i32 %96 to i8
  %98 = add i8 %97, 48
  %99 = getelementptr i8, ptr %8, i32 %96
  %100 = load i8, ptr %99, align 1
  %101 = getelementptr inbounds %struct.mcp251x_priv, ptr %95, i32 0, i32 5
  %102 = load ptr, ptr %101, align 4
  store i8 2, ptr %102, align 1
  %103 = load ptr, ptr %101, align 4
  %104 = getelementptr i8, ptr %103, i32 1
  store i8 %98, ptr %104, align 1
  %105 = load ptr, ptr %101, align 4
  %106 = getelementptr i8, ptr %105, i32 2
  store i8 %100, ptr %106, align 1
  %107 = load ptr, ptr %50, align 8
  %108 = getelementptr inbounds %struct.mcp251x_priv, ptr %107, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %85, i8 0, i64 92, i1 false) #10
  store ptr %109, ptr %7, align 4
  store i32 3, ptr %86, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %87, i8 0, i64 40, i1 false) #10
  store volatile ptr %6, ptr %6, align 4
  store volatile ptr %89, ptr %89, align 4
  store ptr %89, ptr %90, align 4
  store ptr %91, ptr %88, align 4
  store ptr %6, ptr %91, align 4
  store ptr %6, ptr %92, align 4
  store volatile ptr %91, ptr %6, align 4
  %110 = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %94
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %110) #11
  br label %113

113:                                              ; preds = %112, %94
  %114 = icmp eq i32 %96, %93
  br i1 %114, label %136, label %115

115:                                              ; preds = %113
  %116 = add nuw nsw i32 %96, 1
  %117 = load ptr, ptr %50, align 8
  br label %94

118:                                              ; preds = %48
  %119 = getelementptr inbounds %struct.mcp251x_priv, ptr %51, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = add nuw nsw i32 %80, 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %120, ptr noundef nonnull align 1 %8, i32 %121, i1 false) #10
  %122 = load ptr, ptr %50, align 8
  %123 = getelementptr inbounds %struct.mcp251x_priv, ptr %122, i32 0, i32 5
  %124 = load ptr, ptr %123, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #10
  %125 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %125, i8 0, i64 92, i1 false) #10
  store ptr %124, ptr %5, align 4
  %126 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 %121, ptr %126, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %127 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %127, i8 0, i64 40, i1 false) #10
  store volatile ptr %4, ptr %4, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %129 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %129, ptr %129, align 4
  %130 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %131, ptr %128, align 4
  store ptr %4, ptr %131, align 4
  %132 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %4, ptr %132, align 4
  store volatile ptr %131, ptr %4, align 4
  %133 = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #10
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %133) #11
  br label %136

136:                                              ; preds = %135, %118, %113
  %137 = getelementptr inbounds %struct.mcp251x_priv, ptr %51, i32 0, i32 5
  %138 = load ptr, ptr %137, align 4
  store i8 -127, ptr %138, align 1
  %139 = getelementptr inbounds %struct.mcp251x_priv, ptr %51, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.device, ptr %140, i32 0, i32 8
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.mcp251x_priv, ptr %142, i32 0, i32 5
  %144 = load ptr, ptr %143, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  %145 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %145, i8 0, i64 92, i1 false) #10
  store ptr %144, ptr %3, align 4
  %146 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 1, ptr %146, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  %147 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %147, i8 0, i64 40, i1 false) #10
  store volatile ptr %2, ptr %2, align 4
  %148 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %149 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %149, ptr %149, align 4
  %150 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %149, ptr %150, align 4
  %151 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %151, ptr %148, align 4
  store ptr %2, ptr %151, align 4
  %152 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %152, align 4
  store volatile ptr %151, ptr %2, align 4
  %153 = call i32 @spi_sync(ptr noundef %140, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.13, i32 noundef %153) #11
  br label %156

156:                                              ; preds = %155, %136
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %8) #10
  %157 = getelementptr i8, ptr %0, i32 44
  store i8 1, ptr %157, align 4
  %158 = load ptr, ptr %14, align 4
  %159 = call i32 @can_put_echo_skb(ptr noundef %158, ptr noundef %12, i32 noundef 0, i32 noundef 0) #10
  store ptr null, ptr %14, align 4
  br label %160

160:                                              ; preds = %156, %40, %1
  call void @mutex_unlock(ptr noundef %13) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcp251x_restart_work_handler(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 4
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 4
  %9 = getelementptr i8, ptr %0, i32 -60
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 -64
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 -52
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr i8, ptr %0, i32 20
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %105, label %17

17:                                               ; preds = %1
  %18 = and i32 %15, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc i32 @mcp251x_hw_reset(ptr noundef %10)
  tail call fastcc void @mcp251x_setup(ptr noundef %12, ptr noundef %10)
  %22 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.mcp251x_priv, ptr %23, i32 0, i32 19
  %25 = load i8, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mcp251x_priv, ptr %23, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  store i8 2, ptr %27, align 1
  %28 = load ptr, ptr %26, align 4
  %29 = getelementptr i8, ptr %28, i32 1
  store i8 12, ptr %29, align 1
  %30 = load ptr, ptr %26, align 4
  %31 = getelementptr i8, ptr %30, i32 2
  store i8 %25, ptr %31, align 1
  %32 = load ptr, ptr %22, align 8
  %33 = getelementptr inbounds %struct.mcp251x_priv, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #10
  %35 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %35, i8 0, i64 92, i1 false) #10
  store ptr %34, ptr %8, align 4
  %36 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 2
  store i32 3, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #10
  %37 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %37, i8 0, i64 40, i1 false) #10
  store volatile ptr %7, ptr %7, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %39 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18
  store ptr %41, ptr %38, align 4
  store ptr %7, ptr %41, align 4
  %42 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18, i32 1
  store ptr %7, ptr %42, align 4
  store volatile ptr %41, ptr %7, align 4
  %43 = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %43) #11
  br label %48

46:                                               ; preds = %17
  %47 = tail call fastcc i32 @mcp251x_hw_wake(ptr noundef %10)
  br label %48

48:                                               ; preds = %46, %45, %20
  %49 = getelementptr i8, ptr %0, i32 16
  store i32 0, ptr %49, align 4
  %50 = load i32, ptr %14, align 4
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = call fastcc i32 @mcp251x_set_normal_mode(ptr noundef %10)
  br label %104

55:                                               ; preds = %48
  %56 = and i32 %50, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %55
  call void @netif_device_attach(ptr noundef %12) #10
  %59 = getelementptr i8, ptr %12, i32 1704
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %12, i32 1756
  %64 = load i8, ptr %63, align 4, !range !8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %66, %62
  call void @consume_skb(ptr noundef %60) #10
  %71 = getelementptr i8, ptr %12, i32 1756
  %72 = load i8, ptr %71, align 4, !range !8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %12, i32 1664
  %76 = load ptr, ptr %75, align 4
  call void @can_free_echo_skb(ptr noundef %76, i32 noundef 0, ptr noundef null) #10
  br label %77

77:                                               ; preds = %74, %70
  store ptr null, ptr %59, align 4
  store i8 0, ptr %71, align 4
  %78 = call fastcc i32 @mcp251x_set_normal_mode(ptr noundef %10)
  %79 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 87
  %80 = load ptr, ptr %79, align 64
  call void @netif_tx_wake_queue(ptr noundef %80) #10
  br label %104

81:                                               ; preds = %55
  %82 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.mcp251x_priv, ptr %83, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  store i8 2, ptr %85, align 1
  %86 = load ptr, ptr %84, align 4
  %87 = getelementptr i8, ptr %86, i32 1
  store i8 15, ptr %87, align 1
  %88 = load ptr, ptr %84, align 4
  %89 = getelementptr i8, ptr %88, i32 2
  store i8 32, ptr %89, align 1
  %90 = load ptr, ptr %82, align 8
  %91 = getelementptr inbounds %struct.mcp251x_priv, ptr %90, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #10
  %93 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %93, i8 0, i64 92, i1 false) #10
  store ptr %92, ptr %6, align 4
  %94 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 3, ptr %94, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #10
  %95 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %95, i8 0, i64 40, i1 false) #10
  store volatile ptr %5, ptr %5, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %97 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  store volatile ptr %97, ptr %97, align 4
  %98 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  store ptr %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %99, ptr %96, align 4
  store ptr %5, ptr %99, align 4
  %100 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %5, ptr %100, align 4
  store volatile ptr %99, ptr %5, align 4
  %101 = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %101) #11
  br label %104

104:                                              ; preds = %103, %81, %77, %53
  store i32 0, ptr %14, align 4
  br label %105

105:                                              ; preds = %104, %1
  %106 = getelementptr i8, ptr %0, i32 24
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %165, label %109

109:                                              ; preds = %105
  store i32 0, ptr %106, align 4
  %110 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.mcp251x_priv, ptr %111, i32 0, i32 5
  %113 = load ptr, ptr %112, align 4
  store i8 2, ptr %113, align 1
  %114 = load ptr, ptr %112, align 4
  %115 = getelementptr i8, ptr %114, i32 1
  store i8 48, ptr %115, align 1
  %116 = load ptr, ptr %112, align 4
  %117 = getelementptr i8, ptr %116, i32 2
  store i8 0, ptr %117, align 1
  %118 = load ptr, ptr %110, align 8
  %119 = getelementptr inbounds %struct.mcp251x_priv, ptr %118, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #10
  %121 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %121, i8 0, i64 92, i1 false) #10
  store ptr %120, ptr %4, align 4
  %122 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 2
  store i32 3, ptr %122, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  %123 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %123, i8 0, i64 40, i1 false) #10
  store volatile ptr %3, ptr %3, align 4
  %124 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %125 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  store volatile ptr %125, ptr %125, align 4
  %126 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  store ptr %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  store ptr %127, ptr %124, align 4
  store ptr %3, ptr %127, align 4
  %128 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  store ptr %3, ptr %128, align 4
  store volatile ptr %127, ptr %3, align 4
  %129 = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #10
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %129) #11
  br label %132

132:                                              ; preds = %131, %109
  %133 = getelementptr i8, ptr %12, i32 1704
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = getelementptr i8, ptr %12, i32 1756
  %138 = load i8, ptr %137, align 4, !range !8
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136, %132
  %141 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 4
  br label %144

144:                                              ; preds = %140, %136
  call void @consume_skb(ptr noundef %134) #10
  %145 = getelementptr i8, ptr %12, i32 1756
  %146 = load i8, ptr %145, align 4, !range !8
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = getelementptr i8, ptr %12, i32 1664
  %150 = load ptr, ptr %149, align 4
  call void @can_free_echo_skb(ptr noundef %150, i32 noundef 0, ptr noundef null) #10
  br label %151

151:                                              ; preds = %148, %144
  store ptr null, ptr %133, align 4
  store i8 0, ptr %145, align 4
  %152 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 87
  %153 = load ptr, ptr %152, align 64
  call void @netif_tx_wake_queue(ptr noundef %153) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !9
  %154 = call ptr @alloc_can_err_skb(ptr noundef %12, ptr noundef nonnull %2) #10
  %155 = icmp eq ptr %154, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %2, align 4
  %158 = load i32, ptr %157, align 8
  %159 = or i32 %158, 256
  store i32 %159, ptr %157, align 8
  %160 = load ptr, ptr %2, align 4
  %161 = getelementptr %struct.can_frame, ptr %160, i32 0, i32 5, i32 1
  store i8 0, ptr %161, align 1
  %162 = call i32 @netif_rx_ni(ptr noundef nonnull %154) #10
  br label %164

163:                                              ; preds = %151
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.14) #11
  br label %164

164:                                              ; preds = %163, %156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %165

165:                                              ; preds = %164, %105
  call void @mutex_unlock(ptr noundef %13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mcp251x_hw_probe(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @mcp251x_hw_reset(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext 15)
  %6 = and i8 %5, 23
  %7 = icmp eq i8 %6, 7
  %8 = select i1 %7, i32 0, i32 -19
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ %2, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mcp251x_hw_sleep(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  store i8 2, ptr %7, align 1
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 1
  store i8 15, ptr %9, align 1
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 2
  store i8 32, ptr %11, align 1
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.mcp251x_priv, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  %15 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %15, i8 0, i64 92, i1 false) #10
  store ptr %14, ptr %3, align 4
  %16 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 3, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  %17 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %17, i8 0, i64 40, i1 false) #10
  store volatile ptr %2, ptr %2, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %21, ptr %18, align 4
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %22, align 4
  store volatile ptr %21, ptr %2, align 4
  %23 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %23) #11
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mcp251x_gpio_setup(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.20) #10
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 11
  store ptr %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 2
  store ptr %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 4
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 5
  store ptr @mcp251x_gpio_request, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 6
  store ptr @mcp251x_gpio_free, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 7
  store ptr @mcp251x_gpio_get_direction, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 10
  store ptr @mcp251x_gpio_get, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 11
  store ptr @mcp251x_gpio_get_multiple, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 12
  store ptr @mcp251x_gpio_set, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 13
  store ptr @mcp251x_gpio_set_multiple, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 19
  store i32 -1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 20
  store i16 5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 22
  store ptr @mcp251x_gpio_names, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mcp251x_priv, ptr %0, i32 0, i32 18, i32 23
  store i8 1, ptr %21, align 4
  %22 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %7, ptr noundef %6, ptr noundef %0, ptr noundef null, ptr noundef null) #10
  br label %23

23:                                               ; preds = %5, %1
  %24 = phi i32 [ %22, %5 ], [ 0, %1 ]
  ret i32 %24
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_open(ptr noundef %0) #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1668
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @open_candev(ptr noundef %0) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9) #11
  br label %83

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 1676
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = getelementptr i8, ptr %0, i32 1764
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @regulator_enable(ptr noundef nonnull %13) #10
  br label %19

19:                                               ; preds = %17, %10
  %20 = getelementptr i8, ptr %0, i32 1744
  store i32 0, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 1704
  store ptr null, ptr %21, align 4
  %22 = getelementptr i8, ptr %0, i32 1756
  store i8 0, ptr %22, align 4
  %23 = tail call ptr @dev_fwnode(ptr noundef %6) #10
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i32 8194, i32 8192
  %26 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load ptr, ptr %6, align 4
  br label %33

33:                                               ; preds = %31, %19
  %34 = phi ptr [ %32, %31 ], [ %29, %19 ]
  %35 = tail call i32 @request_threaded_irq(i32 noundef %27, ptr noundef null, ptr noundef nonnull @mcp251x_can_ist, i32 noundef %25, ptr noundef %34, ptr noundef %4) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %38) #11
  br label %74

39:                                               ; preds = %33
  %40 = tail call fastcc i32 @mcp251x_hw_wake(ptr noundef %6)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  tail call fastcc void @mcp251x_setup(ptr noundef %0, ptr noundef %6)
  %43 = tail call fastcc i32 @mcp251x_set_normal_mode(ptr noundef %6)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %47 = load ptr, ptr %46, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %47) #10
  tail call void @mutex_unlock(ptr noundef %11) #10
  br label %83

48:                                               ; preds = %42, %39
  %49 = phi i32 [ %40, %39 ], [ %43, %42 ]
  %50 = load i32, ptr %26, align 4
  %51 = tail call ptr @free_irq(i32 noundef %50, ptr noundef %4) #10
  %52 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.mcp251x_priv, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  store i8 2, ptr %55, align 1
  %56 = load ptr, ptr %54, align 4
  %57 = getelementptr i8, ptr %56, i32 1
  store i8 15, ptr %57, align 1
  %58 = load ptr, ptr %54, align 4
  %59 = getelementptr i8, ptr %58, i32 2
  store i8 32, ptr %59, align 1
  %60 = load ptr, ptr %52, align 8
  %61 = getelementptr inbounds %struct.mcp251x_priv, ptr %60, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  %63 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %63, i8 0, i64 92, i1 false) #10
  store ptr %62, ptr %3, align 4
  %64 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 3, ptr %64, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  %65 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %65, i8 0, i64 40, i1 false) #10
  store volatile ptr %2, ptr %2, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %67 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %67, ptr %67, align 4
  %68 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %69, ptr %66, align 4
  store ptr %2, ptr %69, align 4
  %70 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %70, align 4
  store volatile ptr %69, ptr %2, align 4
  %71 = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %71) #11
  br label %74

74:                                               ; preds = %73, %48, %37
  %75 = phi i32 [ %35, %37 ], [ %49, %48 ], [ %49, %73 ]
  %76 = load ptr, ptr %12, align 4
  %77 = icmp eq ptr %76, null
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  %79 = or i1 %77, %78
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = call i32 @regulator_disable(ptr noundef nonnull %76) #10
  br label %82

82:                                               ; preds = %80, %74
  call void @close_candev(ptr noundef %0) #10
  call void @mutex_unlock(ptr noundef %11) #10
  br label %83

83:                                               ; preds = %82, %45, %9
  %84 = phi i32 [ %7, %9 ], [ %75, %82 ], [ 0, %45 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_stop(ptr noundef %0) #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 4
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = getelementptr i8, ptr %0, i32 1668
  %10 = load ptr, ptr %9, align 4
  tail call void @close_candev(ptr noundef %0) #10
  %11 = getelementptr i8, ptr %0, i32 1744
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %8) #10
  %15 = getelementptr i8, ptr %0, i32 1676
  tail call void @mutex_lock(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.mcp251x_priv, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  store i8 2, ptr %19, align 1
  %20 = load ptr, ptr %18, align 4
  %21 = getelementptr i8, ptr %20, i32 1
  store i8 43, ptr %21, align 1
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr i8, ptr %22, i32 2
  store i8 0, ptr %23, align 1
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr i8, ptr %24, i32 3
  store i8 0, ptr %25, align 1
  %26 = load ptr, ptr %16, align 8
  %27 = getelementptr inbounds %struct.mcp251x_priv, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #10
  %29 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %29, i8 0, i64 92, i1 false) #10
  store ptr %28, ptr %7, align 4
  %30 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  store i32 4, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %31 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %31, i8 0, i64 40, i1 false) #10
  store volatile ptr %6, ptr %6, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %33 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  store ptr %35, ptr %32, align 4
  store ptr %6, ptr %35, align 4
  %36 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  store ptr %6, ptr %36, align 4
  store volatile ptr %35, ptr %6, align 4
  %37 = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %37) #11
  br label %40

40:                                               ; preds = %39, %1
  %41 = load ptr, ptr %16, align 8
  %42 = getelementptr inbounds %struct.mcp251x_priv, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  store i8 2, ptr %43, align 1
  %44 = load ptr, ptr %42, align 4
  %45 = getelementptr i8, ptr %44, i32 1
  store i8 48, ptr %45, align 1
  %46 = load ptr, ptr %42, align 4
  %47 = getelementptr i8, ptr %46, i32 2
  store i8 0, ptr %47, align 1
  %48 = load ptr, ptr %16, align 8
  %49 = getelementptr inbounds %struct.mcp251x_priv, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #10
  %51 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %51, i8 0, i64 92, i1 false) #10
  store ptr %50, ptr %5, align 4
  %52 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 3, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %53 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %53, i8 0, i64 40, i1 false) #10
  store volatile ptr %4, ptr %4, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %55 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %57, ptr %54, align 4
  store ptr %4, ptr %57, align 4
  %58 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %4, ptr %58, align 4
  store volatile ptr %57, ptr %4, align 4
  %59 = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %59) #11
  br label %62

62:                                               ; preds = %61, %40
  %63 = getelementptr i8, ptr %0, i32 1704
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %0, i32 1756
  %68 = load i8, ptr %67, align 4, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66, %62
  %71 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 4
  br label %74

74:                                               ; preds = %70, %66
  call void @consume_skb(ptr noundef %64) #10
  %75 = getelementptr i8, ptr %0, i32 1756
  %76 = load i8, ptr %75, align 4, !range !8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %0, i32 1664
  %80 = load ptr, ptr %79, align 4
  call void @can_free_echo_skb(ptr noundef %80, i32 noundef 0, ptr noundef null) #10
  br label %81

81:                                               ; preds = %78, %74
  store ptr null, ptr %63, align 4
  store i8 0, ptr %75, align 4
  %82 = load ptr, ptr %16, align 8
  %83 = getelementptr inbounds %struct.mcp251x_priv, ptr %82, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  store i8 2, ptr %84, align 1
  %85 = load ptr, ptr %83, align 4
  %86 = getelementptr i8, ptr %85, i32 1
  store i8 15, ptr %86, align 1
  %87 = load ptr, ptr %83, align 4
  %88 = getelementptr i8, ptr %87, i32 2
  store i8 32, ptr %88, align 1
  %89 = load ptr, ptr %16, align 8
  %90 = getelementptr inbounds %struct.mcp251x_priv, ptr %89, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  %92 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %92, i8 0, i64 92, i1 false) #10
  store ptr %91, ptr %3, align 4
  %93 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 3, ptr %93, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  %94 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %94, i8 0, i64 40, i1 false) #10
  store volatile ptr %2, ptr %2, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %96 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %96, ptr %96, align 4
  %97 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %98, ptr %95, align 4
  store ptr %2, ptr %98, align 4
  %99 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %99, align 4
  store volatile ptr %98, ptr %2, align 4
  %100 = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %100) #11
  br label %103

103:                                              ; preds = %102, %81
  %104 = getelementptr i8, ptr %0, i32 1764
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  %107 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  %108 = or i1 %106, %107
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = call i32 @regulator_disable(ptr noundef nonnull %105) #10
  br label %111

111:                                              ; preds = %109, %103
  %112 = getelementptr i8, ptr %0, i32 1576
  store i32 4, ptr %112, align 4
  call void @mutex_unlock(ptr noundef %15) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_hard_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1668
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 1704
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %1, i32 1756
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.17) #11
  br label %88

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %17 = load i16, ptr %16, align 8
  switch i16 %17, label %76 [
    i16 3072, label %18
    i16 3328, label %26
  ]

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %76, !prof !10

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.canfd_frame, ptr %15, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = icmp ugt i8 %24, 8
  br i1 %25, label %76, label %34, !prof !11

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 72
  br i1 %29, label %30, label %76, !prof !10

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.canfd_frame, ptr %15, i32 0, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = icmp ugt i8 %32, 64
  br i1 %33, label %76, label %34, !prof !11

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %36 = load ptr, ptr %35, align 8
  %37 = ptrtoint ptr %15 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = icmp ult i32 %39, 16
  %41 = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !11

44:                                               ; preds = %34
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 104, i32 noundef 9, ptr noundef null) #10
  br label %45

45:                                               ; preds = %44, %34
  br i1 %40, label %76, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %48 = load i16, ptr %47, align 8
  %49 = and i16 %48, 96
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %35, align 8
  store i32 %53, ptr %54, align 8
  %55 = load ptr, ptr %35, align 8
  %56 = getelementptr inbounds %struct.can_skb_priv, ptr %55, i32 0, i32 1
  store i32 0, ptr %56, align 4
  %57 = load i16, ptr %47, align 8
  %58 = and i16 %57, -97
  %59 = or i16 %58, 32
  store i16 %59, ptr %47, align 8
  %60 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 262144
  %63 = icmp eq i32 %62, 0
  %64 = and i16 %59, -72
  %65 = or i16 %64, 5
  %66 = select i1 %63, i16 %64, i16 %65
  store i16 %66, ptr %47, align 8
  %67 = load ptr, ptr %14, align 4
  %68 = load ptr, ptr %35, align 8
  %69 = ptrtoint ptr %67 to i32
  %70 = ptrtoint ptr %68 to i32
  %71 = sub i32 %69, %70
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %72, ptr %73, align 2
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %72, ptr %74, align 4
  %75 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %72, ptr %75, align 2
  br label %80

76:                                               ; preds = %45, %30, %26, %22, %18, %13
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #10
  %77 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  br label %88

80:                                               ; preds = %51, %46
  %81 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %82 = load ptr, ptr %81, align 64
  %83 = getelementptr inbounds %struct.netdev_queue, ptr %82, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %83) #10
  store ptr %0, ptr %5, align 4
  %84 = getelementptr i8, ptr %1, i32 1708
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %1, i32 1712
  %87 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %85, ptr noundef %86) #10
  br label %88

88:                                               ; preds = %80, %76, %12
  %89 = phi i32 [ 16, %12 ], [ 0, %80 ], [ 0, %76 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_can_ist(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 4
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca %struct.spi_transfer, align 4
  %12 = alloca %struct.spi_transfer, align 4
  %13 = alloca %struct.spi_message, align 4
  %14 = alloca [2 x i8], align 2
  %15 = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %299

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %25 = getelementptr inbounds %struct.spi_device, ptr %16, i32 0, i32 1
  %26 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  %27 = getelementptr inbounds i8, ptr %12, i32 12
  %28 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 1
  %29 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 2
  %30 = getelementptr inbounds i8, ptr %13, i32 8
  %31 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %32 = getelementptr inbounds %struct.spi_message, ptr %13, i32 0, i32 10
  %33 = getelementptr inbounds %struct.spi_message, ptr %13, i32 0, i32 10, i32 1
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 18
  %35 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 18, i32 1
  %36 = getelementptr inbounds i8, ptr %11, i32 4
  %37 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 2
  %38 = getelementptr inbounds i8, ptr %10, i32 8
  %39 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %40 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 10
  %41 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 10, i32 1
  %42 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 18
  %43 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 18, i32 1
  %44 = getelementptr inbounds i8, ptr %9, i32 4
  %45 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 2
  %46 = getelementptr inbounds i8, ptr %8, i32 8
  %47 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %48 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10
  %49 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10, i32 1
  %50 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18
  %51 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18, i32 1
  %52 = getelementptr inbounds i8, ptr %7, i32 4
  %53 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  %54 = getelementptr inbounds i8, ptr %6, i32 8
  %55 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %56 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  %57 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  %58 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  %59 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  %60 = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 21
  %61 = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1, i32 1
  %62 = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1, i32 2
  %63 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 36, i32 11
  %64 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 36, i32 4
  %65 = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 24
  %66 = getelementptr inbounds %struct.mcp251x_priv, ptr %1, i32 0, i32 14
  %67 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 36, i32 1
  %68 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 36, i32 3
  %69 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 87
  br label %70

70:                                               ; preds = %296, %23
  %71 = load ptr, ptr %24, align 8
  %72 = getelementptr inbounds %struct.mcp251x_priv, ptr %71, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  store i8 3, ptr %73, align 1
  %74 = load ptr, ptr %72, align 4
  %75 = getelementptr i8, ptr %74, i32 1
  store i8 44, ptr %75, align 1
  %76 = load ptr, ptr %25, align 8
  %77 = getelementptr inbounds %struct.spi_controller, ptr %76, i32 0, i32 10
  %78 = load i16, ptr %77, align 4
  %79 = and i16 %78, 1
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i16 0, ptr %14, align 2
  %82 = load ptr, ptr %72, align 4
  %83 = call i32 @spi_write_then_read(ptr noundef %16, ptr noundef %82, i32 noundef 2, ptr noundef nonnull %14, i32 noundef 2) #10
  %84 = load i8, ptr %14, align 2
  %85 = load i8, ptr %26, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  br label %102

86:                                               ; preds = %70
  %87 = load ptr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %12) #10
  %88 = getelementptr inbounds %struct.mcp251x_priv, ptr %87, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(84) %27, i8 0, i64 84, i1 false) #10
  %89 = load ptr, ptr %88, align 4
  store ptr %89, ptr %12, align 4
  %90 = getelementptr inbounds %struct.mcp251x_priv, ptr %87, i32 0, i32 6
  %91 = load ptr, ptr %90, align 4
  store ptr %91, ptr %28, align 4
  store i32 4, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %30, i8 0, i64 40, i1 false) #10
  store volatile ptr %13, ptr %13, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %33, align 4
  store ptr %34, ptr %31, align 4
  store ptr %13, ptr %34, align 4
  store ptr %13, ptr %35, align 4
  store volatile ptr %34, ptr %13, align 4
  %92 = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %13) #10
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.11, i32 noundef %92) #11
  br label %95

95:                                               ; preds = %94, %86
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #10
  %96 = getelementptr inbounds %struct.mcp251x_priv, ptr %71, i32 0, i32 6
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 2
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %97, i32 3
  %101 = load i8, ptr %100, align 1
  br label %102

102:                                              ; preds = %95, %81
  %103 = phi i8 [ %99, %95 ], [ %84, %81 ]
  %104 = phi i8 [ %101, %95 ], [ %85, %81 ]
  %105 = and i8 %103, 63
  %106 = and i8 %103, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %128, label %108

108:                                              ; preds = %102
  call fastcc void @mcp251x_hw_rx(ptr noundef %16, i32 noundef 0)
  %109 = load ptr, ptr %24, align 8
  %110 = getelementptr inbounds %struct.mcp251x_priv, ptr %109, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 9488
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.mcp251x_priv, ptr %109, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  store i8 5, ptr %115, align 1
  %116 = load ptr, ptr %114, align 4
  %117 = getelementptr i8, ptr %116, i32 1
  store i8 44, ptr %117, align 1
  %118 = load ptr, ptr %114, align 4
  %119 = getelementptr i8, ptr %118, i32 2
  store i8 1, ptr %119, align 1
  %120 = load ptr, ptr %114, align 4
  %121 = getelementptr i8, ptr %120, i32 3
  store i8 0, ptr %121, align 1
  %122 = load ptr, ptr %24, align 8
  %123 = getelementptr inbounds %struct.mcp251x_priv, ptr %122, i32 0, i32 5
  %124 = load ptr, ptr %123, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %36, i8 0, i64 92, i1 false) #10
  store ptr %124, ptr %11, align 4
  store i32 4, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %38, i8 0, i64 40, i1 false) #10
  store volatile ptr %10, ptr %10, align 4
  store volatile ptr %40, ptr %40, align 4
  store ptr %40, ptr %41, align 4
  store ptr %42, ptr %39, align 4
  store ptr %10, ptr %42, align 4
  store ptr %10, ptr %43, align 4
  store volatile ptr %42, ptr %10, align 4
  %125 = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %11) #10
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef %125) #11
  br label %128

128:                                              ; preds = %127, %113, %108, %102
  %129 = and i8 %103, 2
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  call fastcc void @mcp251x_hw_rx(ptr noundef %16, i32 noundef 1)
  %132 = load ptr, ptr %24, align 8
  %133 = getelementptr inbounds %struct.mcp251x_priv, ptr %132, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 9488
  %136 = select i1 %135, i8 2, i8 0
  br label %137

137:                                              ; preds = %131, %128
  %138 = phi i8 [ 0, %128 ], [ %136, %131 ]
  %139 = and i8 %103, 60
  %140 = or i8 %138, %139
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %24, align 8
  %144 = getelementptr inbounds %struct.mcp251x_priv, ptr %143, i32 0, i32 5
  %145 = load ptr, ptr %144, align 4
  store i8 5, ptr %145, align 1
  %146 = load ptr, ptr %144, align 4
  %147 = getelementptr i8, ptr %146, i32 1
  store i8 44, ptr %147, align 1
  %148 = load ptr, ptr %144, align 4
  %149 = getelementptr i8, ptr %148, i32 2
  store i8 %140, ptr %149, align 1
  %150 = load ptr, ptr %144, align 4
  %151 = getelementptr i8, ptr %150, i32 3
  store i8 0, ptr %151, align 1
  %152 = load ptr, ptr %24, align 8
  %153 = getelementptr inbounds %struct.mcp251x_priv, ptr %152, i32 0, i32 5
  %154 = load ptr, ptr %153, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %44, i8 0, i64 92, i1 false) #10
  store ptr %154, ptr %9, align 4
  store i32 4, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %46, i8 0, i64 40, i1 false) #10
  store volatile ptr %8, ptr %8, align 4
  store volatile ptr %48, ptr %48, align 4
  store ptr %48, ptr %49, align 4
  store ptr %50, ptr %47, align 4
  store ptr %8, ptr %50, align 4
  store ptr %8, ptr %51, align 4
  store volatile ptr %50, ptr %8, align 4
  %155 = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #10
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %142
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef %155) #11
  br label %158

158:                                              ; preds = %157, %142, %137
  %159 = icmp ult i8 %104, 64
  br i1 %159, label %176, label %160

160:                                              ; preds = %158
  %161 = load ptr, ptr %24, align 8
  %162 = getelementptr inbounds %struct.mcp251x_priv, ptr %161, i32 0, i32 5
  %163 = load ptr, ptr %162, align 4
  store i8 5, ptr %163, align 1
  %164 = load ptr, ptr %162, align 4
  %165 = getelementptr i8, ptr %164, i32 1
  store i8 45, ptr %165, align 1
  %166 = load ptr, ptr %162, align 4
  %167 = getelementptr i8, ptr %166, i32 2
  store i8 %104, ptr %167, align 1
  %168 = load ptr, ptr %162, align 4
  %169 = getelementptr i8, ptr %168, i32 3
  store i8 0, ptr %169, align 1
  %170 = load ptr, ptr %24, align 8
  %171 = getelementptr inbounds %struct.mcp251x_priv, ptr %170, i32 0, i32 5
  %172 = load ptr, ptr %171, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %52, i8 0, i64 92, i1 false) #10
  store ptr %172, ptr %7, align 4
  store i32 4, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %54, i8 0, i64 40, i1 false) #10
  store volatile ptr %6, ptr %6, align 4
  store volatile ptr %56, ptr %56, align 4
  store ptr %56, ptr %57, align 4
  store ptr %58, ptr %55, align 4
  store ptr %6, ptr %58, align 4
  store ptr %6, ptr %59, align 4
  store volatile ptr %58, ptr %6, align 4
  %173 = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #10
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %160
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef %173) #11
  br label %176

176:                                              ; preds = %175, %160, %158
  %177 = zext i8 %104 to i32
  %178 = and i32 %177, 32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %176
  %181 = and i32 %177, 16
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = and i32 %177, 8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = and i32 %177, 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = and i32 %177, 2
  %191 = icmp ne i32 %190, 0
  %192 = lshr exact i32 %190, 1
  %193 = shl nuw nsw i32 %190, 1
  br label %194

194:                                              ; preds = %189, %186, %183, %180, %176
  %195 = phi i1 [ true, %176 ], [ true, %180 ], [ true, %183 ], [ false, %186 ], [ false, %189 ]
  %196 = phi i1 [ true, %176 ], [ true, %180 ], [ true, %183 ], [ true, %186 ], [ %191, %189 ]
  %197 = phi i32 [ 3, %176 ], [ 2, %180 ], [ 2, %183 ], [ 1, %186 ], [ %192, %189 ]
  %198 = phi i32 [ 64, %176 ], [ 4, %180 ], [ 4, %183 ], [ 4, %186 ], [ %193, %189 ]
  %199 = phi i32 [ 0, %176 ], [ 32, %180 ], [ 16, %183 ], [ 8, %186 ], [ %193, %189 ]
  %200 = load i32, ptr %60, align 4
  switch i32 %200, label %209 [
    i32 0, label %201
    i32 1, label %205
  ]

201:                                              ; preds = %194
  br i1 %196, label %202, label %205

202:                                              ; preds = %201
  %203 = load i32, ptr %61, align 4
  %204 = add i32 %203, 1
  store i32 %204, ptr %61, align 4
  br label %205

205:                                              ; preds = %202, %201, %194
  br i1 %195, label %206, label %209

206:                                              ; preds = %205
  %207 = load i32, ptr %62, align 4
  %208 = add i32 %207, 1
  store i32 %208, ptr %62, align 4
  br label %209

209:                                              ; preds = %206, %205, %194
  store i32 %197, ptr %60, align 4
  %210 = and i8 %103, 32
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %249, label %212

212:                                              ; preds = %209
  %213 = and i32 %177, 192
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %233, label %215

215:                                              ; preds = %212
  %216 = and i32 %177, 64
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %215
  %219 = load i32, ptr %63, align 4
  %220 = add i32 %219, 1
  store i32 %220, ptr %63, align 4
  %221 = load i32, ptr %64, align 8
  %222 = add i32 %221, 1
  store i32 %222, ptr %64, align 8
  br label %223

223:                                              ; preds = %218, %215
  %224 = icmp sgt i8 %104, -1
  br i1 %224, label %230, label %225

225:                                              ; preds = %223
  %226 = load i32, ptr %63, align 4
  %227 = add i32 %226, 1
  store i32 %227, ptr %63, align 4
  %228 = load i32, ptr %64, align 8
  %229 = add i32 %228, 1
  store i32 %229, ptr %64, align 8
  br label %230

230:                                              ; preds = %225, %223
  %231 = or i32 %198, 4
  %232 = or i32 %199, 1
  br label %233

233:                                              ; preds = %230, %212
  %234 = phi i32 [ %231, %230 ], [ %198, %212 ]
  %235 = phi i32 [ %232, %230 ], [ %199, %212 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !9
  %236 = call ptr @alloc_can_err_skb(ptr noundef %18, ptr noundef nonnull %5) #10
  %237 = icmp eq ptr %236, null
  br i1 %237, label %246, label %238

238:                                              ; preds = %233
  %239 = load ptr, ptr %5, align 4
  %240 = load i32, ptr %239, align 8
  %241 = or i32 %240, %234
  store i32 %241, ptr %239, align 8
  %242 = trunc i32 %235 to i8
  %243 = load ptr, ptr %5, align 4
  %244 = getelementptr %struct.can_frame, ptr %243, i32 0, i32 5, i32 1
  store i8 %242, ptr %244, align 1
  %245 = call i32 @netif_rx_ni(ptr noundef nonnull %236) #10
  br label %247

246:                                              ; preds = %233
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.14) #11
  br label %247

247:                                              ; preds = %246, %238
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %248 = load i32, ptr %60, align 4
  br label %249

249:                                              ; preds = %247, %209
  %250 = phi i32 [ %248, %247 ], [ %197, %209 ]
  %251 = icmp eq i32 %250, 3
  br i1 %251, label %252, label %280

252:                                              ; preds = %249
  %253 = load i32, ptr %65, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %280

255:                                              ; preds = %252
  store i32 1, ptr %20, align 4
  %256 = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1, i32 3
  %257 = load i32, ptr %256, align 4
  %258 = add i32 %257, 1
  store i32 %258, ptr %256, align 4
  call void @can_bus_off(ptr noundef %18) #10
  %259 = load ptr, ptr %24, align 8
  %260 = getelementptr inbounds %struct.mcp251x_priv, ptr %259, i32 0, i32 5
  %261 = load ptr, ptr %260, align 4
  store i8 2, ptr %261, align 1
  %262 = load ptr, ptr %260, align 4
  %263 = getelementptr i8, ptr %262, i32 1
  store i8 15, ptr %263, align 1
  %264 = load ptr, ptr %260, align 4
  %265 = getelementptr i8, ptr %264, i32 2
  store i8 32, ptr %265, align 1
  %266 = load ptr, ptr %24, align 8
  %267 = getelementptr inbounds %struct.mcp251x_priv, ptr %266, i32 0, i32 5
  %268 = load ptr, ptr %267, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #10
  %269 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %269, i8 0, i64 92, i1 false) #10
  store ptr %268, ptr %4, align 4
  %270 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 2
  store i32 3, ptr %270, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  %271 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %271, i8 0, i64 40, i1 false) #10
  store volatile ptr %3, ptr %3, align 4
  %272 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %273 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  store volatile ptr %273, ptr %273, align 4
  %274 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  store ptr %273, ptr %274, align 4
  %275 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  store ptr %275, ptr %272, align 4
  store ptr %3, ptr %275, align 4
  %276 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  store ptr %3, ptr %276, align 4
  store volatile ptr %275, ptr %3, align 4
  %277 = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #10
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %299, label %279

279:                                              ; preds = %255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef %277) #11
  br label %299

280:                                              ; preds = %252, %249
  %281 = icmp eq i8 %105, 0
  br i1 %281, label %299, label %282

282:                                              ; preds = %280
  %283 = and i8 %103, 28
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %296, label %285

285:                                              ; preds = %282
  %286 = load i8, ptr %66, align 4, !range !8
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %294, label %288

288:                                              ; preds = %285
  %289 = load i32, ptr %67, align 4
  %290 = add i32 %289, 1
  store i32 %290, ptr %67, align 4
  %291 = call i32 @can_get_echo_skb(ptr noundef %18, i32 noundef 0, ptr noundef null) #10
  %292 = load i32, ptr %68, align 4
  %293 = add i32 %292, %291
  store i32 %293, ptr %68, align 4
  store i8 0, ptr %66, align 4
  br label %294

294:                                              ; preds = %288, %285
  %295 = load ptr, ptr %69, align 64
  call void @netif_tx_wake_queue(ptr noundef %295) #10
  br label %296

296:                                              ; preds = %294, %282
  %297 = load i32, ptr %20, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %70, label %299

299:                                              ; preds = %296, %280, %279, %255, %2
  call void @mutex_unlock(ptr noundef %19) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mcp251x_hw_wake(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 4
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  tail call void @disable_irq(i32 noundef %9) #10
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mcp251x_priv, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  store i8 2, ptr %13, align 1
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr i8, ptr %14, i32 1
  store i8 43, ptr %15, align 1
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr i8, ptr %16, i32 2
  store i8 64, ptr %17, align 1
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 3
  store i8 64, ptr %19, align 1
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr inbounds %struct.mcp251x_priv, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #10
  %23 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %23, i8 0, i64 92, i1 false) #10
  store ptr %22, ptr %7, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  store i32 4, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %25 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %25, i8 0, i64 40, i1 false) #10
  store volatile ptr %6, ptr %6, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  store ptr %29, ptr %26, align 4
  store ptr %6, ptr %29, align 4
  %30 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  store ptr %6, ptr %30, align 4
  store volatile ptr %29, ptr %6, align 4
  %31 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %31) #11
  br label %34

34:                                               ; preds = %33, %1
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #10
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #10
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #10
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #10
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #10
  %40 = load ptr, ptr %10, align 8
  %41 = getelementptr inbounds %struct.mcp251x_priv, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  store i8 2, ptr %42, align 1
  %43 = load ptr, ptr %41, align 4
  %44 = getelementptr i8, ptr %43, i32 1
  store i8 15, ptr %44, align 1
  %45 = load ptr, ptr %41, align 4
  %46 = getelementptr i8, ptr %45, i32 2
  store i8 -128, ptr %46, align 1
  %47 = load ptr, ptr %10, align 8
  %48 = getelementptr inbounds %struct.mcp251x_priv, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #10
  %50 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %50, i8 0, i64 92, i1 false) #10
  store ptr %49, ptr %5, align 4
  %51 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 3, ptr %51, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %52 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %52, i8 0, i64 40, i1 false) #10
  store volatile ptr %4, ptr %4, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %54 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %56, ptr %53, align 4
  store ptr %4, ptr %56, align 4
  %57 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %4, ptr %57, align 4
  store volatile ptr %56, ptr %4, align 4
  %58 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %34
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %58) #11
  br label %61

61:                                               ; preds = %60, %34
  %62 = call i64 @ktime_get() #10
  %63 = add i64 %62, 1000000000
  %64 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext 14) #10
  %65 = and i8 %64, -32
  %66 = icmp eq i8 %65, -128
  br i1 %66, label %79, label %67

67:                                               ; preds = %70, %61
  %68 = call i64 @ktime_get() #10
  %69 = icmp sgt i64 %68, %63
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #10
  %71 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext 14) #10
  %72 = and i8 %71, -32
  %73 = icmp eq i8 %72, -128
  br i1 %73, label %79, label %67

74:                                               ; preds = %67
  %75 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext 14) #10
  %76 = and i8 %75, -32
  %77 = icmp eq i8 %76, -128
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #11
  br label %105

79:                                               ; preds = %74, %70, %61
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds %struct.mcp251x_priv, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  store i8 2, ptr %82, align 1
  %83 = load ptr, ptr %81, align 4
  %84 = getelementptr i8, ptr %83, i32 1
  store i8 43, ptr %84, align 1
  %85 = load ptr, ptr %81, align 4
  %86 = getelementptr i8, ptr %85, i32 2
  store i8 0, ptr %86, align 1
  %87 = load ptr, ptr %81, align 4
  %88 = getelementptr i8, ptr %87, i32 3
  store i8 0, ptr %88, align 1
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds %struct.mcp251x_priv, ptr %89, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  %92 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %92, i8 0, i64 92, i1 false) #10
  store ptr %91, ptr %3, align 4
  %93 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 4, ptr %93, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  %94 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %94, i8 0, i64 40, i1 false) #10
  store volatile ptr %2, ptr %2, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %96 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %96, ptr %96, align 4
  %97 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %98, ptr %95, align 4
  store ptr %2, ptr %98, align 4
  %99 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %99, align 4
  store volatile ptr %98, ptr %2, align 4
  %100 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %100) #11
  br label %103

103:                                              ; preds = %102, %79
  %104 = load i32, ptr %8, align 4
  call void @enable_irq(i32 noundef %104) #10
  br label %105

105:                                              ; preds = %103, %78
  %106 = phi i32 [ -110, %78 ], [ 0, %103 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mcp251x_setup(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 4
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 4
  %9 = alloca %struct.spi_message, align 4
  %10 = alloca %struct.spi_transfer, align 4
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca %struct.spi_transfer, align 4
  %13 = getelementptr i8, ptr %0, i32 1668
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 1468
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 6
  %18 = add i32 %17, 192
  %19 = getelementptr i8, ptr %0, i32 1472
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 255
  %22 = or i32 %18, %21
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.mcp251x_priv, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  store i8 2, ptr %27, align 1
  %28 = load ptr, ptr %26, align 4
  %29 = getelementptr i8, ptr %28, i32 1
  store i8 42, ptr %29, align 1
  %30 = load ptr, ptr %26, align 4
  %31 = getelementptr i8, ptr %30, i32 2
  store i8 %23, ptr %31, align 1
  %32 = load ptr, ptr %24, align 8
  %33 = getelementptr inbounds %struct.mcp251x_priv, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %12) #10
  %35 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %35, i8 0, i64 92, i1 false) #10
  store ptr %34, ptr %12, align 4
  %36 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 2
  store i32 3, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #10
  %37 = getelementptr inbounds i8, ptr %11, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %37, i8 0, i64 40, i1 false) #10
  store volatile ptr %11, ptr %11, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %39 = getelementptr inbounds %struct.spi_message, ptr %11, i32 0, i32 10
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_message, ptr %11, i32 0, i32 10, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 18
  store ptr %41, ptr %38, align 4
  store ptr %11, ptr %41, align 4
  %42 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 18, i32 1
  store ptr %11, ptr %42, align 4
  store volatile ptr %41, ptr %11, align 4
  %43 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %43) #11
  br label %46

46:                                               ; preds = %45, %2
  %47 = getelementptr i8, ptr %0, i32 1580
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %48, 4
  %50 = and i32 %49, 64
  %51 = getelementptr i8, ptr %0, i32 1460
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 %52, 3
  %54 = add i32 %53, 120
  %55 = or i32 %54, %50
  %56 = getelementptr i8, ptr %0, i32 1456
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 127
  %59 = or i32 %55, %58
  %60 = trunc i32 %59 to i8
  %61 = or i8 %60, -128
  %62 = load ptr, ptr %24, align 8
  %63 = getelementptr inbounds %struct.mcp251x_priv, ptr %62, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  store i8 2, ptr %64, align 1
  %65 = load ptr, ptr %63, align 4
  %66 = getelementptr i8, ptr %65, i32 1
  store i8 41, ptr %66, align 1
  %67 = load ptr, ptr %63, align 4
  %68 = getelementptr i8, ptr %67, i32 2
  store i8 %61, ptr %68, align 1
  %69 = load ptr, ptr %24, align 8
  %70 = getelementptr inbounds %struct.mcp251x_priv, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #10
  %72 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %72, i8 0, i64 92, i1 false) #10
  store ptr %71, ptr %10, align 4
  %73 = getelementptr inbounds %struct.spi_transfer, ptr %10, i32 0, i32 2
  store i32 3, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #10
  %74 = getelementptr inbounds i8, ptr %9, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %74, i8 0, i64 40, i1 false) #10
  store volatile ptr %9, ptr %9, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %76 = getelementptr inbounds %struct.spi_message, ptr %9, i32 0, i32 10
  store volatile ptr %76, ptr %76, align 4
  %77 = getelementptr inbounds %struct.spi_message, ptr %9, i32 0, i32 10, i32 1
  store ptr %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.spi_transfer, ptr %10, i32 0, i32 18
  store ptr %78, ptr %75, align 4
  store ptr %9, ptr %78, align 4
  %79 = getelementptr inbounds %struct.spi_transfer, ptr %10, i32 0, i32 18, i32 1
  store ptr %9, ptr %79, align 4
  store volatile ptr %78, ptr %9, align 4
  %80 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %80) #11
  br label %83

83:                                               ; preds = %82, %46
  %84 = getelementptr i8, ptr %0, i32 1464
  %85 = load i32, ptr %84, align 4
  %86 = trunc i32 %85 to i8
  %87 = add i8 %86, -1
  %88 = load ptr, ptr %24, align 8
  %89 = getelementptr inbounds %struct.mcp251x_priv, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  store i8 5, ptr %90, align 1
  %91 = load ptr, ptr %89, align 4
  %92 = getelementptr i8, ptr %91, i32 1
  store i8 40, ptr %92, align 1
  %93 = load ptr, ptr %89, align 4
  %94 = getelementptr i8, ptr %93, i32 2
  store i8 7, ptr %94, align 1
  %95 = load ptr, ptr %89, align 4
  %96 = getelementptr i8, ptr %95, i32 3
  store i8 %87, ptr %96, align 1
  %97 = load ptr, ptr %24, align 8
  %98 = getelementptr inbounds %struct.mcp251x_priv, ptr %97, i32 0, i32 5
  %99 = load ptr, ptr %98, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #10
  %100 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %100, i8 0, i64 92, i1 false) #10
  store ptr %99, ptr %8, align 4
  %101 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 2
  store i32 4, ptr %101, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #10
  %102 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %102, i8 0, i64 40, i1 false) #10
  store volatile ptr %7, ptr %7, align 4
  %103 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %104 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10
  store volatile ptr %104, ptr %104, align 4
  %105 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10, i32 1
  store ptr %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18
  store ptr %106, ptr %103, align 4
  store ptr %7, ptr %106, align 4
  %107 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18, i32 1
  store ptr %7, ptr %107, align 4
  store volatile ptr %106, ptr %7, align 4
  %108 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #10
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %108) #11
  br label %111

111:                                              ; preds = %110, %83
  %112 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.mcp251x_priv, ptr %113, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  store i8 2, ptr %115, align 1
  %116 = load ptr, ptr %114, align 4
  %117 = getelementptr i8, ptr %116, i32 1
  store i8 96, ptr %117, align 1
  %118 = load ptr, ptr %114, align 4
  %119 = getelementptr i8, ptr %118, i32 2
  store i8 100, ptr %119, align 1
  %120 = load ptr, ptr %112, align 8
  %121 = getelementptr inbounds %struct.mcp251x_priv, ptr %120, i32 0, i32 5
  %122 = load ptr, ptr %121, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #10
  %123 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %123, i8 0, i64 92, i1 false) #10
  store ptr %122, ptr %6, align 4
  %124 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 3, ptr %124, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #10
  %125 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %125, i8 0, i64 40, i1 false) #10
  store volatile ptr %5, ptr %5, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %127 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  store volatile ptr %127, ptr %127, align 4
  %128 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  store ptr %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %129, ptr %126, align 4
  store ptr %5, ptr %129, align 4
  %130 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %5, ptr %130, align 4
  store volatile ptr %129, ptr %5, align 4
  %131 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #10
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %111
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %131) #11
  br label %134

134:                                              ; preds = %133, %111
  %135 = load ptr, ptr %112, align 8
  %136 = getelementptr inbounds %struct.mcp251x_priv, ptr %135, i32 0, i32 5
  %137 = load ptr, ptr %136, align 4
  store i8 2, ptr %137, align 1
  %138 = load ptr, ptr %136, align 4
  %139 = getelementptr i8, ptr %138, i32 1
  store i8 112, ptr %139, align 1
  %140 = load ptr, ptr %136, align 4
  %141 = getelementptr i8, ptr %140, i32 2
  store i8 96, ptr %141, align 1
  %142 = load ptr, ptr %112, align 8
  %143 = getelementptr inbounds %struct.mcp251x_priv, ptr %142, i32 0, i32 5
  %144 = load ptr, ptr %143, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #10
  %145 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %145, i8 0, i64 92, i1 false) #10
  store ptr %144, ptr %4, align 4
  %146 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 2
  store i32 3, ptr %146, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  %147 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %147, i8 0, i64 40, i1 false) #10
  store volatile ptr %3, ptr %3, align 4
  %148 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %149 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  store volatile ptr %149, ptr %149, align 4
  %150 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  store ptr %149, ptr %150, align 4
  %151 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  store ptr %151, ptr %148, align 4
  store ptr %3, ptr %151, align 4
  %152 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  store ptr %3, ptr %152, align 4
  store volatile ptr %151, ptr %3, align 4
  %153 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #10
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %134
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %153) #11
  br label %156

156:                                              ; preds = %155, %134
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mcp251x_set_normal_mode(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mcp251x_priv, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  store i8 2, ptr %13, align 1
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr i8, ptr %14, i32 1
  store i8 43, ptr %15, align 1
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr i8, ptr %16, i32 2
  store i8 63, ptr %17, align 1
  %18 = load ptr, ptr %10, align 8
  %19 = getelementptr inbounds %struct.mcp251x_priv, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #10
  %21 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %21, i8 0, i64 92, i1 false) #10
  store ptr %20, ptr %9, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 2
  store i32 3, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #10
  %23 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %23, i8 0, i64 40, i1 false) #10
  store volatile ptr %8, ptr %8, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %25 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 10, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18
  store ptr %27, ptr %24, align 4
  store ptr %8, ptr %27, align 4
  %28 = getelementptr inbounds %struct.spi_transfer, ptr %9, i32 0, i32 18, i32 1
  store ptr %8, ptr %28, align 4
  store volatile ptr %27, ptr %8, align 4
  %29 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %29) #11
  br label %32

32:                                               ; preds = %31, %1
  %33 = getelementptr inbounds %struct.can_priv, ptr %11, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr inbounds %struct.mcp251x_priv, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  store i8 2, ptr %40, align 1
  %41 = load ptr, ptr %39, align 4
  %42 = getelementptr i8, ptr %41, i32 1
  store i8 15, ptr %42, align 1
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr i8, ptr %43, i32 2
  store i8 64, ptr %44, align 1
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds %struct.mcp251x_priv, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #10
  %48 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %48, i8 0, i64 92, i1 false) #10
  store ptr %47, ptr %7, align 4
  %49 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  store i32 3, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %50 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %50, i8 0, i64 40, i1 false) #10
  store volatile ptr %6, ptr %6, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %52 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  store ptr %54, ptr %51, align 4
  store ptr %6, ptr %54, align 4
  %55 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  store ptr %6, ptr %55, align 4
  store volatile ptr %54, ptr %6, align 4
  %56 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %114, label %112

58:                                               ; preds = %32
  %59 = and i32 %34, 2
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr inbounds %struct.mcp251x_priv, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  store i8 2, ptr %63, align 1
  %64 = load ptr, ptr %62, align 4
  %65 = getelementptr i8, ptr %64, i32 1
  store i8 15, ptr %65, align 1
  %66 = load ptr, ptr %62, align 4
  %67 = getelementptr i8, ptr %66, i32 2
  br i1 %60, label %82, label %68

68:                                               ; preds = %58
  store i8 96, ptr %67, align 1
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr inbounds %struct.mcp251x_priv, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #10
  %72 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %72, i8 0, i64 92, i1 false) #10
  store ptr %71, ptr %5, align 4
  %73 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 3, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %74 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %74, i8 0, i64 40, i1 false) #10
  store volatile ptr %4, ptr %4, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %76 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %76, ptr %76, align 4
  %77 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %78, ptr %75, align 4
  store ptr %4, ptr %78, align 4
  %79 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %4, ptr %79, align 4
  store volatile ptr %78, ptr %4, align 4
  %80 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %114, label %112

82:                                               ; preds = %58
  store i8 0, ptr %67, align 1
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds %struct.mcp251x_priv, ptr %83, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  %86 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %86, i8 0, i64 92, i1 false) #10
  store ptr %85, ptr %3, align 4
  %87 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 3, ptr %87, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  %88 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %88, i8 0, i64 40, i1 false) #10
  store volatile ptr %2, ptr %2, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %90 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %90, ptr %90, align 4
  %91 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %92, ptr %89, align 4
  store ptr %2, ptr %92, align 4
  %93 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %93, align 4
  store volatile ptr %92, ptr %2, align 4
  %94 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %82
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %94) #11
  br label %97

97:                                               ; preds = %96, %82
  %98 = call i64 @ktime_get() #10
  %99 = add i64 %98, 1000000000
  %100 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext 14) #10
  %101 = icmp ult i8 %100, 32
  br i1 %101, label %114, label %102

102:                                              ; preds = %105, %97
  %103 = call i64 @ktime_get() #10
  %104 = icmp sgt i64 %103, %99
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #10
  %106 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext 14) #10
  %107 = icmp ult i8 %106, 32
  br i1 %107, label %114, label %102

108:                                              ; preds = %102
  %109 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext 14) #10
  %110 = icmp ult i8 %109, 32
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #11
  br label %116

112:                                              ; preds = %68, %37
  %113 = phi i32 [ %56, %37 ], [ %80, %68 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %113) #11
  br label %114

114:                                              ; preds = %112, %108, %105, %97, %68, %37
  %115 = getelementptr inbounds %struct.can_priv, ptr %11, i32 0, i32 21
  store i32 0, ptr %115, align 4
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi i32 [ 0, %114 ], [ -110, %111 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mcp251x_hw_rx(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.spi_transfer, align 4
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca ptr, align 4
  %6 = alloca [14 x i8], align 1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %6, i8 0, i32 14, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.mcp251x_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call ptr @alloc_can_skb(ptr noundef %10, ptr noundef nonnull %5) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #11
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 36, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8
  br label %203

18:                                               ; preds = %2
  %19 = load ptr, ptr %7, align 8
  %20 = getelementptr inbounds %struct.mcp251x_priv, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 9488
  br i1 %22, label %23, label %92

23:                                               ; preds = %18
  %24 = shl i32 %1, 4
  %25 = trunc i32 %24 to i8
  %26 = add i8 %25, 97
  %27 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %26) #10
  %28 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %27, ptr %28, align 1
  %29 = add i8 %25, 98
  %30 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %29) #10
  %31 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 %30, ptr %31, align 1
  %32 = add i8 %25, 99
  %33 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %32) #10
  %34 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 %33, ptr %34, align 1
  %35 = add i8 %25, 100
  %36 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %35) #10
  %37 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 %36, ptr %37, align 1
  %38 = add i8 %25, 101
  %39 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %38) #10
  %40 = getelementptr inbounds i8, ptr %6, i32 5
  store i8 %39, ptr %40, align 1
  %41 = and i8 %39, 15
  %42 = call i8 @llvm.umin.i8(i8 %41, i8 8) #10
  %43 = add nuw nsw i8 %42, 6
  %44 = icmp eq i8 %42, 0
  br i1 %44, label %131, label %45

45:                                               ; preds = %23
  %46 = trunc i32 %24 to i8
  %47 = add i8 %46, 102
  %48 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %47) #10
  %49 = getelementptr inbounds i8, ptr %6, i32 6
  store i8 %48, ptr %49, align 1
  %50 = icmp eq i8 %43, 7
  br i1 %50, label %131, label %51

51:                                               ; preds = %45
  %52 = trunc i32 %24 to i8
  %53 = add i8 %52, 103
  %54 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %53) #10
  %55 = getelementptr inbounds i8, ptr %6, i32 7
  store i8 %54, ptr %55, align 1
  %56 = icmp eq i8 %43, 8
  br i1 %56, label %131, label %57

57:                                               ; preds = %51
  %58 = trunc i32 %24 to i8
  %59 = add i8 %58, 104
  %60 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %59) #10
  %61 = getelementptr inbounds i8, ptr %6, i32 8
  store i8 %60, ptr %61, align 1
  %62 = icmp eq i8 %43, 9
  br i1 %62, label %131, label %63

63:                                               ; preds = %57
  %64 = trunc i32 %24 to i8
  %65 = add i8 %64, 105
  %66 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %65) #10
  %67 = getelementptr inbounds i8, ptr %6, i32 9
  store i8 %66, ptr %67, align 1
  %68 = icmp eq i8 %43, 10
  br i1 %68, label %131, label %69

69:                                               ; preds = %63
  %70 = trunc i32 %24 to i8
  %71 = add i8 %70, 106
  %72 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %71) #10
  %73 = getelementptr inbounds i8, ptr %6, i32 10
  store i8 %72, ptr %73, align 1
  %74 = icmp eq i8 %43, 11
  br i1 %74, label %131, label %75

75:                                               ; preds = %69
  %76 = trunc i32 %24 to i8
  %77 = add i8 %76, 107
  %78 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %77) #10
  %79 = getelementptr inbounds i8, ptr %6, i32 11
  store i8 %78, ptr %79, align 1
  %80 = icmp eq i8 %43, 12
  br i1 %80, label %131, label %81

81:                                               ; preds = %75
  %82 = trunc i32 %24 to i8
  %83 = add i8 %82, 108
  %84 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %83) #10
  %85 = getelementptr inbounds i8, ptr %6, i32 12
  store i8 %84, ptr %85, align 1
  %86 = icmp eq i8 %43, 13
  br i1 %86, label %131, label %87

87:                                               ; preds = %81
  %88 = trunc i32 %24 to i8
  %89 = add i8 %88, 109
  %90 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %89) #10
  %91 = getelementptr inbounds i8, ptr %6, i32 13
  store i8 %90, ptr %91, align 1
  br label %131

92:                                               ; preds = %18
  %93 = icmp eq i32 %1, 0
  %94 = select i1 %93, i8 -112, i8 -108
  %95 = getelementptr inbounds %struct.mcp251x_priv, ptr %19, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  store i8 %94, ptr %96, align 1
  %97 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.spi_controller, ptr %98, i32 0, i32 10
  %100 = load i16, ptr %99, align 4
  %101 = and i16 %100, 1
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %92
  %104 = load ptr, ptr %95, align 4
  %105 = getelementptr inbounds %struct.mcp251x_priv, ptr %19, i32 0, i32 6
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 @spi_write_then_read(ptr noundef %0, ptr noundef %104, i32 noundef 1, ptr noundef %106, i32 noundef 14) #10
  %108 = getelementptr inbounds i8, ptr %6, i32 1
  %109 = load ptr, ptr %105, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %108, ptr noundef align 1 dereferenceable(13) %109, i32 13, i1 false) #10
  br label %131

110:                                              ; preds = %92
  %111 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  %112 = getelementptr inbounds %struct.mcp251x_priv, ptr %111, i32 0, i32 5
  %113 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(84) %113, i8 0, i64 84, i1 false) #10
  %114 = load ptr, ptr %112, align 4
  store ptr %114, ptr %3, align 4
  %115 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %116 = getelementptr inbounds %struct.mcp251x_priv, ptr %111, i32 0, i32 6
  %117 = load ptr, ptr %116, align 4
  store ptr %117, ptr %115, align 4
  %118 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 14, ptr %118, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %119 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %119, i8 0, i64 40, i1 false) #10
  store volatile ptr %4, ptr %4, align 4
  %120 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %121 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %121, ptr %121, align 4
  %122 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %123, ptr %120, align 4
  store ptr %4, ptr %123, align 4
  %124 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %4, ptr %124, align 4
  store volatile ptr %123, ptr %4, align 4
  %125 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %4) #10
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %125) #11
  br label %128

128:                                              ; preds = %127, %110
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  %129 = getelementptr inbounds %struct.mcp251x_priv, ptr %19, i32 0, i32 6
  %130 = load ptr, ptr %129, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %6, ptr noundef align 1 dereferenceable(14) %130, i32 14, i1 false) #10
  br label %131

131:                                              ; preds = %128, %103, %87, %81, %75, %69, %63, %57, %51, %45, %23
  %132 = getelementptr inbounds [14 x i8], ptr %6, i32 0, i32 2
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %165, label %137

137:                                              ; preds = %131
  %138 = load ptr, ptr %5, align 4
  store i32 -2147483648, ptr %138, align 8
  %139 = shl nuw nsw i32 %134, 16
  %140 = and i32 %139, 196608
  %141 = getelementptr inbounds [14 x i8], ptr %6, i32 0, i32 3
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 8
  %145 = or i32 %144, %140
  %146 = getelementptr inbounds [14 x i8], ptr %6, i32 0, i32 4
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %145, %148
  %150 = getelementptr inbounds [14 x i8], ptr %6, i32 0, i32 1
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = shl nuw nsw i32 %152, 21
  %154 = shl nuw nsw i32 %134, 13
  %155 = and i32 %154, 1835008
  %156 = or i32 %153, %155
  %157 = or i32 %156, %149
  %158 = load ptr, ptr %5, align 4
  %159 = load i32, ptr %158, align 8
  %160 = or i32 %157, %159
  store i32 %160, ptr %158, align 8
  %161 = getelementptr inbounds [14 x i8], ptr %6, i32 0, i32 5
  %162 = load i8, ptr %161, align 1
  %163 = and i8 %162, 64
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %179, label %175

165:                                              ; preds = %131
  %166 = getelementptr inbounds [14 x i8], ptr %6, i32 0, i32 1
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i32
  %169 = shl nuw nsw i32 %168, 3
  %170 = lshr i32 %134, 5
  %171 = or i32 %169, %170
  %172 = load ptr, ptr %5, align 4
  store i32 %171, ptr %172, align 8
  %173 = and i8 %133, 16
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %165, %137
  %176 = load ptr, ptr %5, align 4
  %177 = load i32, ptr %176, align 8
  %178 = or i32 %177, 1073741824
  store i32 %178, ptr %176, align 8
  br label %179

179:                                              ; preds = %175, %165, %137
  %180 = getelementptr inbounds [14 x i8], ptr %6, i32 0, i32 5
  %181 = load i8, ptr %180, align 1
  %182 = and i8 %181, 15
  %183 = call i8 @llvm.umin.i8(i8 %182, i8 8)
  %184 = load ptr, ptr %5, align 4
  %185 = getelementptr inbounds %struct.can_frame, ptr %184, i32 0, i32 1
  store i8 %183, ptr %185, align 4
  %186 = load i32, ptr %184, align 8
  %187 = and i32 %186, 1073741824
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %179
  %190 = getelementptr inbounds %struct.can_frame, ptr %184, i32 0, i32 5
  %191 = getelementptr inbounds i8, ptr %6, i32 6
  %192 = zext i8 %183 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %190, ptr align 1 %191, i32 %192, i1 false)
  %193 = load ptr, ptr %9, align 4
  %194 = getelementptr inbounds %struct.net_device, ptr %193, i32 0, i32 36, i32 2
  %195 = load i32, ptr %194, align 8
  %196 = add i32 %195, %192
  store i32 %196, ptr %194, align 8
  br label %197

197:                                              ; preds = %189, %179
  %198 = load ptr, ptr %9, align 4
  %199 = getelementptr inbounds %struct.net_device, ptr %198, i32 0, i32 36
  %200 = load i32, ptr %199, align 8
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 8
  %202 = call i32 @netif_rx_ni(ptr noundef nonnull %11) #10
  br label %203

203:                                              ; preds = %197, %13
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca %struct.spi_transfer, align 4
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1
  %8 = getelementptr inbounds %struct.mcp251x_priv, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  store i8 3, ptr %9, align 1
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr i8, ptr %10, i32 1
  store i8 %1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.spi_controller, ptr %13, i32 0, i32 10
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr %8, align 4
  %20 = call i32 @spi_write_then_read(ptr noundef %0, ptr noundef %19, i32 noundef 2, ptr noundef nonnull %5, i32 noundef 1) #10
  br label %43

21:                                               ; preds = %2
  %22 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  %23 = getelementptr inbounds %struct.mcp251x_priv, ptr %22, i32 0, i32 5
  %24 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(84) %24, i8 0, i64 84, i1 false) #10
  %25 = load ptr, ptr %23, align 4
  store ptr %25, ptr %3, align 4
  %26 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %27 = getelementptr inbounds %struct.mcp251x_priv, ptr %22, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 3, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %30 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %30, i8 0, i64 40, i1 false) #10
  store volatile ptr %4, ptr %4, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %34, ptr %31, align 4
  store ptr %4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %4, ptr %35, align 4
  store volatile ptr %34, ptr %4, align 4
  %36 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %4) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %36) #11
  br label %39

39:                                               ; preds = %38, %21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  %40 = getelementptr inbounds %struct.mcp251x_priv, ptr %7, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 2
  br label %43

43:                                               ; preds = %39, %18
  %44 = phi ptr [ %42, %39 ], [ %5, %18 ]
  %45 = load i8, ptr %44, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i8 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mcp251x_hw_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #10
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #10
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #10
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #10
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #10
  %11 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  store i8 -64, ptr %12, align 1
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.mcp251x_priv, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  %16 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %16, i8 0, i64 92, i1 false) #10
  store ptr %15, ptr %3, align 4
  %17 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 1, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  %18 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %18, i8 0, i64 40, i1 false) #10
  store volatile ptr %2, ptr %2, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %20 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %22, ptr %19, align 4
  store ptr %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %23, align 4
  store volatile ptr %22, ptr %2, align 4
  %24 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #10
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #10
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #10
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #10
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #10
  %32 = call i64 @ktime_get() #10
  %33 = add i64 %32, 1000000000
  %34 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext 14) #10
  %35 = and i8 %34, -32
  %36 = icmp eq i8 %35, -128
  br i1 %36, label %50, label %38

37:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %24) #11
  br label %50

38:                                               ; preds = %41, %26
  %39 = call i64 @ktime_get() #10
  %40 = icmp sgt i64 %39, %33
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #10
  %42 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext 14) #10
  %43 = and i8 %42, -32
  %44 = icmp eq i8 %43, -128
  br i1 %44, label %50, label %38

45:                                               ; preds = %38
  %46 = call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %0, i8 noundef zeroext 14) #10
  %47 = and i8 %46, -32
  %48 = icmp eq i8 %47, -128
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #11
  br label %50

50:                                               ; preds = %49, %45, %41, %37, %26
  %51 = phi i32 [ -110, %49 ], [ 0, %45 ], [ %24, %37 ], [ 0, %26 ], [ 0, %41 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_gpio_request(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %6 = icmp ult i32 %1, 3
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = add i32 %1, -3
  %9 = shl i32 4, %8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.mcp251x_priv, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  store i8 5, ptr %17, align 1
  %18 = load ptr, ptr %16, align 4
  %19 = getelementptr i8, ptr %18, i32 1
  store i8 12, ptr %19, align 1
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %20, i32 2
  store i8 %10, ptr %21, align 1
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr i8, ptr %22, i32 3
  store i8 %10, ptr %23, align 1
  %24 = load ptr, ptr %14, align 8
  %25 = getelementptr inbounds %struct.mcp251x_priv, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #10
  %27 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %27, i8 0, i64 92, i1 false) #10
  store ptr %26, ptr %4, align 4
  %28 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 2
  store i32 4, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  %29 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %29, i8 0, i64 40, i1 false) #10
  store volatile ptr %3, ptr %3, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  store ptr %33, ptr %30, align 4
  store ptr %3, ptr %33, align 4
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  store ptr %3, ptr %34, align 4
  store volatile ptr %33, ptr %3, align 4
  %35 = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef %35) #11
  br label %38

38:                                               ; preds = %37, %7
  call void @mutex_unlock(ptr noundef %11) #10
  %39 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 19
  %40 = load i8, ptr %39, align 4
  %41 = or i8 %40, %10
  store i8 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %38, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcp251x_gpio_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %6 = icmp ult i32 %1, 3
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = add i32 %1, -3
  %9 = shl i32 4, %8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.mcp251x_priv, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  store i8 5, ptr %17, align 1
  %18 = load ptr, ptr %16, align 4
  %19 = getelementptr i8, ptr %18, i32 1
  store i8 12, ptr %19, align 1
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %20, i32 2
  store i8 %10, ptr %21, align 1
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr i8, ptr %22, i32 3
  store i8 0, ptr %23, align 1
  %24 = load ptr, ptr %14, align 8
  %25 = getelementptr inbounds %struct.mcp251x_priv, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #10
  %27 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %27, i8 0, i64 92, i1 false) #10
  store ptr %26, ptr %4, align 4
  %28 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 2
  store i32 4, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  %29 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %29, i8 0, i64 40, i1 false) #10
  store volatile ptr %3, ptr %3, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  store ptr %33, ptr %30, align 4
  store ptr %3, ptr %33, align 4
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  store ptr %3, ptr %34, align 4
  store volatile ptr %33, ptr %3, align 4
  %35 = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef %35) #11
  br label %38

38:                                               ; preds = %37, %7
  call void @mutex_unlock(ptr noundef %11) #10
  %39 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 19
  %40 = load i8, ptr %39, align 4
  %41 = xor i8 %10, -1
  %42 = and i8 %40, %41
  store i8 %42, ptr %39, align 4
  br label %43

43:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mcp251x_gpio_get_direction(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  %3 = icmp ult i32 %1, 3
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %4 = icmp ult i32 %1, 3
  %5 = shl i32 8, %1
  %6 = add i32 %1, -3
  %7 = shl i32 16, %6
  %8 = select i1 %4, i8 13, i8 12
  %9 = select i1 %4, i32 %5, i32 %7
  %10 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %10) #10
  %11 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %12, i8 noundef zeroext %8)
  tail call void @mutex_unlock(ptr noundef %10) #10
  %14 = zext i8 %13 to i32
  %15 = and i32 %9, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_gpio_get_multiple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.mcp251x_priv, ptr %4, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = load i32, ptr %1, align 4
  %7 = and i32 %6, 7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mcp251x_priv, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %11, i8 noundef zeroext 13)
  %13 = lshr i8 %12, 3
  %14 = and i8 %13, 7
  %15 = zext i8 %14 to i32
  %16 = load i32, ptr %1, align 4
  br label %17

17:                                               ; preds = %9, %3
  %18 = phi i32 [ %16, %9 ], [ %6, %3 ]
  %19 = phi i32 [ %15, %9 ], [ 0, %3 ]
  %20 = and i32 %18, 24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mcp251x_priv, ptr %4, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call fastcc zeroext i8 @mcp251x_read_reg(ptr noundef %24, i8 noundef zeroext 12)
  %26 = lshr i8 %25, 1
  %27 = and i8 %26, 24
  %28 = zext i8 %27 to i32
  %29 = or i32 %19, %28
  br label %30

30:                                               ; preds = %22, %17
  %31 = phi i32 [ %29, %22 ], [ %19, %17 ]
  tail call void @mutex_unlock(ptr noundef %5) #10
  store i32 %31, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcp251x_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %7 = add i32 %1, -3
  %8 = shl i32 16, %7
  %9 = trunc i32 %8 to i8
  %10 = icmp eq i32 %2, 0
  %11 = select i1 %10, i8 0, i8 %9
  %12 = getelementptr inbounds %struct.mcp251x_priv, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.mcp251x_priv, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.mcp251x_priv, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  store i8 5, ptr %18, align 1
  %19 = load ptr, ptr %17, align 4
  %20 = getelementptr i8, ptr %19, i32 1
  store i8 12, ptr %20, align 1
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr i8, ptr %21, i32 2
  store i8 %9, ptr %22, align 1
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr i8, ptr %23, i32 3
  store i8 %11, ptr %24, align 1
  %25 = load ptr, ptr %15, align 8
  %26 = getelementptr inbounds %struct.mcp251x_priv, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #10
  %28 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %28, i8 0, i64 92, i1 false) #10
  store ptr %27, ptr %5, align 4
  %29 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 4, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %30 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %30, i8 0, i64 40, i1 false) #10
  store volatile ptr %4, ptr %4, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %34, ptr %31, align 4
  store ptr %4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %4, ptr %35, align 4
  store volatile ptr %34, ptr %4, align 4
  %36 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %36) #11
  br label %39

39:                                               ; preds = %38, %3
  call void @mutex_unlock(ptr noundef %12) #10
  %40 = getelementptr inbounds %struct.mcp251x_priv, ptr %6, i32 0, i32 19
  %41 = load i8, ptr %40, align 4
  %42 = xor i8 %9, -1
  %43 = and i8 %41, %42
  %44 = or i8 %43, %11
  store i8 %44, ptr %40, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcp251x_gpio_set_multiple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %7 = load i32, ptr %1, align 4
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 3
  %10 = and i8 %9, 3
  %11 = shl nuw nsw i8 %10, 4
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %2, align 4
  %15 = trunc i32 %14 to i8
  %16 = shl i8 %15, 1
  %17 = and i8 %16, 48
  %18 = getelementptr inbounds %struct.mcp251x_priv, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.mcp251x_priv, ptr %6, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.mcp251x_priv, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  store i8 5, ptr %24, align 1
  %25 = load ptr, ptr %23, align 4
  %26 = getelementptr i8, ptr %25, i32 1
  store i8 12, ptr %26, align 1
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr i8, ptr %27, i32 2
  store i8 %11, ptr %28, align 1
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr i8, ptr %29, i32 3
  store i8 %17, ptr %30, align 1
  %31 = load ptr, ptr %21, align 8
  %32 = getelementptr inbounds %struct.mcp251x_priv, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #10
  %34 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %34, i8 0, i64 92, i1 false) #10
  store ptr %33, ptr %5, align 4
  %35 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 4, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %36 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %36, i8 0, i64 40, i1 false) #10
  store volatile ptr %4, ptr %4, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %38 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %40, ptr %37, align 4
  store ptr %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %4, ptr %41, align 4
  store volatile ptr %40, ptr %4, align 4
  %42 = call i32 @spi_sync(ptr noundef %20, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.13, i32 noundef %42) #11
  br label %45

45:                                               ; preds = %44, %13
  call void @mutex_unlock(ptr noundef %18) #10
  %46 = xor i8 %11, -1
  %47 = getelementptr inbounds %struct.mcp251x_priv, ptr %6, i32 0, i32 19
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, %46
  %50 = or i8 %49, %17
  store i8 %50, ptr %47, align 4
  br label %51

51:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_can_suspend(ptr noundef %0) #2 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca %struct.spi_transfer, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 11
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  tail call void @disable_irq(i32 noundef %10) #10
  %11 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %1
  tail call void @netif_device_detach(ptr noundef %7) #10
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.mcp251x_priv, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  store i8 2, ptr %18, align 1
  %19 = load ptr, ptr %17, align 4
  %20 = getelementptr i8, ptr %19, i32 1
  store i8 15, ptr %20, align 1
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr i8, ptr %21, i32 2
  store i8 32, ptr %22, align 1
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.mcp251x_priv, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  %26 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %26, i8 0, i64 92, i1 false) #10
  store ptr %25, ptr %3, align 4
  %27 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 3, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  %28 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %28, i8 0, i64 40, i1 false) #10
  store volatile ptr %2, ptr %2, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %30 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %32, ptr %29, align 4
  store ptr %2, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %2, ptr %33, align 4
  store volatile ptr %32, ptr %2, align 4
  %34 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %34) #11
  br label %37

37:                                               ; preds = %36, %15
  %38 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %42 = or i1 %40, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = call i32 @regulator_disable(ptr noundef nonnull %39) #10
  br label %45

45:                                               ; preds = %43, %37, %1
  %46 = phi i32 [ 1, %37 ], [ 1, %43 ], [ 2, %1 ]
  %47 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 12
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  %52 = or i1 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = call i32 @regulator_disable(ptr noundef nonnull %49) #10
  %55 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 12
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi i32 [ %46, %45 ], [ %56, %53 ]
  %59 = getelementptr inbounds %struct.mcp251x_priv, ptr %5, i32 0, i32 12
  %60 = or i32 %58, 4
  store i32 %60, ptr %59, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcp251x_can_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = tail call i32 @regulator_enable(ptr noundef nonnull %10) #10
  %16 = load i32, ptr %4, align 4
  br label %17

17:                                               ; preds = %14, %8, %1
  %18 = phi i32 [ %16, %14 ], [ %5, %8 ], [ %5, %1 ]
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %26 = or i1 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = tail call i32 @regulator_enable(ptr noundef nonnull %23) #10
  %29 = load i32, ptr %4, align 4
  br label %30

30:                                               ; preds = %27, %21, %17
  %31 = phi i32 [ %29, %27 ], [ %18, %21 ], [ %18, %17 ]
  %32 = and i32 %31, 5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 10
  %38 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %36, ptr noundef %37) #10
  br label %40

39:                                               ; preds = %30
  store i32 0, ptr %4, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = getelementptr inbounds %struct.mcp251x_priv, ptr %3, i32 0, i32 11
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  tail call void @enable_irq(i32 noundef %43) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
