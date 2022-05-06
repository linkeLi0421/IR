; ModuleID = '/llk/IR/drivers/net/can/rcar/rcar_can.c_pt.bc'
source_filename = "../drivers/net/can/rcar/rcar_can.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.rcar_can_regs = type { [64 x %struct.rcar_can_mbox_regs], [8 x i32], [2 x i32], i32, i32, [2 x i32], i32, i32, [960 x i8], [64 x i8], i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [7 x i8], i8, i8, i8, i8 }
%struct.rcar_can_mbox_regs = type { i32, i8, i8, [8 x i8], i8, i8 }
%struct.can_berr_counter = type { i16, i16 }
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
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }

@rcar_can_of_table = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,can-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,can-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,can-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,can-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author422 = internal constant [29 x i8] c"author=Cogent Embedded, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_license423 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description424 = internal constant [45 x i8] c"description=CAN driver for Renesas R-Car SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias425 = internal constant [24 x i8] c"alias=platform:rcar_can\00", section ".modinfo", align 1
@rcar_can_driver = internal global %struct.platform_driver { ptr @rcar_can_probe, ptr @rcar_can_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_can_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_can_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"rcar_can\00", align 1
@rcar_can_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rcar_can_suspend, ptr @rcar_can_resume, ptr @rcar_can_suspend, ptr @rcar_can_resume, ptr @rcar_can_suspend, ptr @rcar_can_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"renesas,can-clock-select\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"alloc_candev() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"clkp1\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"cannot get peripheral clock, error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"invalid CAN clock selected\0A\00", align 1
@clock_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.3, ptr @.str.9, ptr null, ptr @.str.10], align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"cannot get CAN clock, error %d\0A\00", align 1
@rcar_can_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @rcar_can_open, ptr @rcar_can_close, ptr @rcar_can_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rcar_can_bittiming_const = internal constant %struct.can_bittiming_const { [16 x i8] c"rcar_can\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 2, i32 8, i32 4, i32 1, i32 1024, i32 1 }, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"register_candev() failed, error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"device registered (IRQ%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"clkp2\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"can_clk\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"failed to enable peripheral clock, error %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"failed to enable CAN clock, error %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"open_candev() failed, error %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"request_irq(%d) failed, error %d\0A\00", align 1
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"include/linux/can/skb.h\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"clk_enable() failed, error %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias425, ptr @__UNIQUE_ID_author422, ptr @__UNIQUE_ID_description424, ptr @__UNIQUE_ID_license423], section "llvm.metadata"

@__mod_of__rcar_can_of_table_device_table = dso_local alias [8 x %struct.of_device_id], ptr @rcar_can_of_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_can_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_can_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %7 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %65, label %9

9:                                                ; preds = %1
  %10 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = ptrtoint ptr %10 to i32
  br label %65

14:                                               ; preds = %9
  %15 = call ptr @alloc_candev_mqs(i32 noundef 504, i32 noundef 4, i32 noundef 1, i32 noundef 1) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %65

18:                                               ; preds = %14
  %19 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #6
  %20 = getelementptr i8, ptr %15, i32 1892
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %23) #7
  br label %63

24:                                               ; preds = %18
  %25 = load i32, ptr %2, align 4
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, 11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  br label %63

30:                                               ; preds = %24
  %31 = getelementptr [4 x ptr], ptr @clock_names, i32 0, i32 %25
  %32 = load ptr, ptr %31, align 4
  %33 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef %32) #6
  %34 = getelementptr i8, ptr %15, i32 1896
  store ptr %33, ptr %34, align 8
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = ptrtoint ptr %33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %37) #7
  br label %63

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 16
  store ptr @rcar_can_netdev_ops, ptr %39, align 8
  %40 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 59
  store i32 %7, ptr %40, align 8
  %41 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 14
  %42 = load i32, ptr %41, align 8
  %43 = or i32 %42, 262144
  store i32 %43, ptr %41, align 8
  %44 = getelementptr i8, ptr %15, i32 1664
  store ptr %15, ptr %44, align 8
  %45 = getelementptr i8, ptr %15, i32 1888
  store ptr %10, ptr %45, align 8
  %46 = load i32, ptr %2, align 4
  %47 = trunc i32 %46 to i8
  %48 = getelementptr i8, ptr %15, i32 1908
  store i8 %47, ptr %48, align 4
  %49 = call i32 @clk_get_rate(ptr noundef %33) #6
  %50 = getelementptr i8, ptr %15, i32 1544
  store i32 %49, ptr %50, align 8
  %51 = getelementptr i8, ptr %15, i32 1436
  store ptr @rcar_can_bittiming_const, ptr %51, align 4
  %52 = getelementptr i8, ptr %15, i32 1644
  store ptr @rcar_can_do_set_mode, ptr %52, align 4
  %53 = getelementptr i8, ptr %15, i32 1656
  store ptr @rcar_can_get_berr_counter, ptr %53, align 8
  %54 = getelementptr i8, ptr %15, i32 1584
  store i32 16, ptr %54, align 8
  %55 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %55, align 8
  %56 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 111, i32 1
  store ptr %3, ptr %56, align 4
  %57 = getelementptr i8, ptr %15, i32 1672
  call void @netif_napi_add(ptr noundef nonnull %15, ptr noundef %57, ptr noundef nonnull @rcar_can_rx_poll, i32 noundef 4) #6
  %58 = call i32 @register_candev(ptr noundef nonnull %15) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %58) #7
  call void @__netif_napi_del(ptr noundef %57) #6
  call void @synchronize_net() #6
  br label %63

61:                                               ; preds = %38
  %62 = load i32, ptr %40, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %62) #7
  br label %65

63:                                               ; preds = %60, %36, %29, %22
  %64 = phi i32 [ %23, %22 ], [ %37, %36 ], [ %58, %60 ], [ -22, %29 ]
  call void @free_candev(ptr noundef nonnull %15) #6
  br label %65

65:                                               ; preds = %63, %61, %17, %12, %1
  %66 = phi i32 [ 0, %61 ], [ %13, %12 ], [ %64, %63 ], [ -12, %17 ], [ %7, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_candev(ptr noundef %3) #6
  %4 = getelementptr i8, ptr %3, i32 1672
  tail call void @__netif_napi_del(ptr noundef %4) #6
  tail call void @synchronize_net() #6
  tail call void @free_candev(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_do_set_mode(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  tail call fastcc void @rcar_can_start(ptr noundef %0)
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %6 = load ptr, ptr %5, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %6) #6
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ 0, %4 ], [ -95, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_get_berr_counter(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1892
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = tail call i32 @clk_enable(ptr noundef %4) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 1888
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.rcar_can_regs, ptr %12, i32 0, i32 21
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %1, align 2
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr inbounds %struct.rcar_can_regs, ptr %16, i32 0, i32 20
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %19 = zext i8 %18 to i16
  %20 = getelementptr inbounds %struct.can_berr_counter, ptr %1, i32 0, i32 1
  store i16 %19, ptr %20, align 2
  %21 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  br label %22

22:                                               ; preds = %10, %7
  %23 = phi ptr [ %21, %10 ], [ %4, %7 ]
  %24 = phi i32 [ 0, %10 ], [ %8, %7 ]
  tail call void @clk_unprepare(ptr noundef %23) #6
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi i32 [ %5, %2 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_rx_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %97

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 216
  %7 = getelementptr i8, ptr %0, i32 -8
  br label %8

8:                                                ; preds = %84, %5
  %9 = phi i32 [ 0, %5 ], [ %87, %84 ]
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.rcar_can_regs, ptr %10, i32 0, i32 32
  %12 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %13 = and i8 %12, 16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  %16 = and i8 %12, -17
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.rcar_can_regs, ptr %17, i32 0, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #6, !srcloc !13
  br label %19

19:                                               ; preds = %15, %8
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds %struct.rcar_can_regs, ptr %20, i32 0, i32 14
  %22 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %23 = icmp sgt i8 %22, -1
  br i1 %23, label %24, label %89

24:                                               ; preds = %19
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !15
  %27 = call ptr @alloc_can_skb(ptr noundef %25, ptr noundef nonnull %3) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  br label %84

33:                                               ; preds = %24
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %34, i32 0, i32 60
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = and i32 %36, 536870911
  %40 = or i32 %39, -2147483648
  %41 = load ptr, ptr %3, align 4
  store i32 %40, ptr %41, align 8
  br label %46

42:                                               ; preds = %33
  %43 = lshr i32 %36, 18
  %44 = and i32 %43, 2047
  %45 = load ptr, ptr %3, align 4
  store i32 %44, ptr %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %47, i32 0, i32 60, i32 2
  %49 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %50 = call i8 @llvm.umin.i8(i8 %49, i8 8) #6
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.can_frame, ptr %51, i32 0, i32 1
  store i8 %50, ptr %52, align 4
  %53 = and i32 %36, 1073741824
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = icmp eq i8 %50, 0
  br i1 %56, label %75, label %60

57:                                               ; preds = %46
  %58 = load i32, ptr %51, align 8
  %59 = or i32 %58, 1073741824
  store i32 %59, ptr %51, align 8
  br label %80

60:                                               ; preds = %60, %55
  %61 = phi i32 [ %67, %60 ], [ 0, %55 ]
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %62, i32 0, i32 60, i32 3, i32 %61
  %64 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %63) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr %struct.can_frame, ptr %65, i32 0, i32 5, i32 %61
  store i8 %64, ptr %66, align 1
  %67 = add nuw nsw i32 %61, 1
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr inbounds %struct.can_frame, ptr %68, i32 0, i32 1
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i32
  %72 = icmp ult i32 %67, %71
  br i1 %72, label %60, label %73

73:                                               ; preds = %60
  %74 = zext i8 %70 to i32
  br label %75

75:                                               ; preds = %73, %55
  %76 = phi i32 [ 0, %55 ], [ %74, %73 ]
  %77 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %76
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %75, %57
  %81 = load i32, ptr %26, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %26, align 4
  %83 = call i32 @netif_receive_skb(ptr noundef nonnull %27) #6
  br label %84

84:                                               ; preds = %80, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  call void @arm_heavy_mb() #6
  %85 = load ptr, ptr %6, align 8
  %86 = getelementptr inbounds %struct.rcar_can_regs, ptr %85, i32 0, i32 15
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 -1) #6, !srcloc !13
  %87 = add nuw nsw i32 %9, 1
  %88 = icmp eq i32 %87, %1
  br i1 %88, label %97, label %8

89:                                               ; preds = %19
  %90 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %9) #6
  %91 = getelementptr i8, ptr %0, i32 237
  %92 = load i8, ptr %91, align 1
  %93 = or i8 %92, 16
  store i8 %93, ptr %91, align 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  call void @arm_heavy_mb() #6
  %94 = load i8, ptr %91, align 1
  %95 = load ptr, ptr %6, align 8
  %96 = getelementptr inbounds %struct.rcar_can_regs, ptr %95, i32 0, i32 31
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %96, i8 %94) #6, !srcloc !13
  br label %97

97:                                               ; preds = %89, %84, %2
  %98 = phi i32 [ %9, %89 ], [ 0, %2 ], [ %1, %84 ]
  ret i32 %98
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
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1892
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i32 [ %7, %9 ], [ %4, %1 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %11) #7
  br label %45

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %0, i32 1896
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %21

21:                                               ; preds = %20, %12
  %22 = phi i32 [ %18, %20 ], [ %15, %12 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %22) #7
  br label %42

23:                                               ; preds = %17
  %24 = tail call i32 @open_candev(ptr noundef %0) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %24) #7
  br label %39

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i32 1672
  tail call void @napi_enable(ptr noundef %28) #6
  %29 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @rcar_can_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %0) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %29, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %34, i32 noundef %31) #7
  tail call void @napi_disable(ptr noundef %28) #6
  tail call void @close_candev(ptr noundef %0) #6
  br label %39

35:                                               ; preds = %27
  tail call fastcc void @rcar_can_start(ptr noundef %0)
  %36 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %37 = load ptr, ptr %36, align 64
  %38 = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %38) #6
  br label %45

39:                                               ; preds = %33, %26
  %40 = phi i32 [ %24, %26 ], [ %31, %33 ]
  %41 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %41) #6
  tail call void @clk_unprepare(ptr noundef %41) #6
  br label %42

42:                                               ; preds = %39, %21
  %43 = phi i32 [ %22, %21 ], [ %40, %39 ]
  %44 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %44) #6
  tail call void @clk_unprepare(ptr noundef %44) #6
  br label %45

45:                                               ; preds = %42, %35, %10
  %46 = phi i32 [ 0, %35 ], [ %11, %10 ], [ %43, %42 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_close(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #6
  %5 = getelementptr i8, ptr %0, i32 1888
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rcar_can_regs, ptr %6, i32 0, i32 10
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #6, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %9 = or i16 %8, 768
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rcar_can_regs, ptr %10, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %9) #6, !srcloc !25
  br label %12

12:                                               ; preds = %12, %1
  %13 = phi i32 [ 0, %1 ], [ %19, %12 ]
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.rcar_can_regs, ptr %14, i32 0, i32 11
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #6, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %17 = and i16 %16, 256
  %18 = icmp ne i16 %17, 0
  %19 = add nuw nsw i32 %13, 1
  %20 = icmp eq i32 %19, 256
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %12

22:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.rcar_can_regs, ptr %23, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #6, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.rcar_can_regs, ptr %25, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #6, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.rcar_can_regs, ptr %27, i32 0, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 0) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds %struct.rcar_can_regs, ptr %29, i32 0, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 0) #6, !srcloc !13
  %31 = or i16 %8, 1792
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.rcar_can_regs, ptr %32, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %31) #6, !srcloc !25
  %34 = getelementptr i8, ptr %0, i32 1576
  store i32 4, ptr %34, align 8
  %35 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %36 = load i32, ptr %35, align 8
  %37 = tail call ptr @free_irq(i32 noundef %36, ptr noundef %0) #6
  %38 = getelementptr i8, ptr %0, i32 1672
  tail call void @napi_disable(ptr noundef %38) #6
  %39 = getelementptr i8, ptr %0, i32 1896
  %40 = load ptr, ptr %39, align 8
  tail call void @clk_disable(ptr noundef %40) #6
  tail call void @clk_unprepare(ptr noundef %40) #6
  %41 = getelementptr i8, ptr %0, i32 1892
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %42) #6
  tail call void @clk_unprepare(ptr noundef %42) #6
  tail call void @close_candev(ptr noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
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
  br i1 %10, label %11, label %65, !prof !33

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp ugt i8 %13, 8
  br i1 %14, label %65, label %23, !prof !34

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 72
  br i1 %18, label %19, label %65, !prof !33

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp ugt i8 %21, 64
  br i1 %22, label %65, label %23, !prof !34

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
  br i1 %32, label %33, label %34, !prof !34

33:                                               ; preds = %23
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
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
  br label %123

69:                                               ; preds = %40, %35
  %70 = load i32, ptr %4, align 8
  %71 = and i32 %70, 536870911
  %72 = or i32 %71, -2147483648
  %73 = shl i32 %70, 18
  %74 = and i32 %73, 536608768
  %75 = icmp slt i32 %70, 0
  %76 = select i1 %75, i32 %72, i32 %74
  %77 = and i32 %70, 1073741824
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.can_frame, ptr %4, i32 0, i32 1
  %81 = load i8, ptr %80, align 4
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %1, i32 1888
  br label %87

85:                                               ; preds = %69
  %86 = or i32 %76, 1073741824
  br label %97

87:                                               ; preds = %87, %83
  %88 = phi i32 [ 0, %83 ], [ %93, %87 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %89 = getelementptr %struct.can_frame, ptr %4, i32 0, i32 5, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = load ptr, ptr %84, align 8
  %92 = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %91, i32 0, i32 56, i32 3, i32 %88
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %92, i8 %90) #6, !srcloc !13
  %93 = add nuw nsw i32 %88, 1
  %94 = load i8, ptr %80, align 4
  %95 = zext i8 %94 to i32
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %87, label %97

97:                                               ; preds = %87, %85, %79
  %98 = phi i32 [ %86, %85 ], [ %76, %79 ], [ %76, %87 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %99 = getelementptr i8, ptr %1, i32 1888
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %100, i32 0, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %98) #6, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %102 = getelementptr inbounds %struct.can_frame, ptr %4, i32 0, i32 1
  %103 = load i8, ptr %102, align 4
  %104 = load ptr, ptr %99, align 8
  %105 = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %104, i32 0, i32 56, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %105, i8 %103) #6, !srcloc !13
  %106 = getelementptr i8, ptr %1, i32 1900
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 3
  %109 = tail call i32 @can_put_echo_skb(ptr noundef %0, ptr noundef %1, i32 noundef %108, i32 noundef 0) #6
  %110 = load i32, ptr %106, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %106, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %112 = load ptr, ptr %99, align 8
  %113 = getelementptr inbounds %struct.rcar_can_regs, ptr %112, i32 0, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %113, i8 -1) #6, !srcloc !13
  %114 = load i32, ptr %106, align 4
  %115 = getelementptr i8, ptr %1, i32 1904
  %116 = load i32, ptr %115, align 8
  %117 = sub i32 %114, %116
  %118 = icmp ugt i32 %117, 3
  br i1 %118, label %119, label %123

119:                                              ; preds = %97
  %120 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %121 = load ptr, ptr %120, align 64
  %122 = getelementptr inbounds %struct.netdev_queue, ptr %121, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %122) #6
  br label %123

123:                                              ; preds = %119, %97, %65
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = getelementptr i8, ptr %1, i32 1888
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rcar_can_regs, ptr %5, i32 0, i32 32
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %8 = zext i8 %7 to i32
  %9 = getelementptr i8, ptr %1, i32 1909
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, %7
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %319, label %13

13:                                               ; preds = %2
  %14 = and i32 %8, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %259, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !15
  %17 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %3) #6
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.rcar_can_regs, ptr %18, i32 0, i32 19
  %20 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !40
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.rcar_can_regs, ptr %25, i32 0, i32 21
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %26) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.rcar_can_regs, ptr %28, i32 0, i32 20
  %30 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !42
  %31 = icmp eq ptr %17, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %3, align 4
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 4
  store i32 %35, ptr %33, align 8
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr %struct.can_frame, ptr %36, i32 0, i32 5, i32 6
  store i8 %27, ptr %37, align 2
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr %struct.can_frame, ptr %38, i32 0, i32 5, i32 7
  store i8 %30, ptr %39, align 1
  br label %40

40:                                               ; preds = %32, %16
  %41 = phi i8 [ %30, %32 ], [ 0, %16 ]
  %42 = phi i8 [ %27, %32 ], [ 0, %16 ]
  %43 = and i32 %21, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %159, label %48

45:                                               ; preds = %24
  %46 = and i32 %21, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %159, label %54

48:                                               ; preds = %40
  %49 = icmp eq ptr %17, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %3, align 4
  %52 = load i32, ptr %51, align 8
  %53 = or i32 %52, 136
  store i32 %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %50, %48, %45
  %55 = phi i1 [ false, %50 ], [ true, %48 ], [ true, %45 ]
  %56 = phi i8 [ %41, %50 ], [ %41, %48 ], [ %30, %45 ]
  %57 = phi i8 [ %42, %50 ], [ %42, %48 ], [ %27, %45 ]
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.rcar_can_regs, ptr %58, i32 0, i32 22
  %60 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %59) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !43
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %54
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !44
  call void @arm_heavy_mb() #6
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.rcar_can_regs, ptr %65, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 -65) #6, !srcloc !13
  br i1 %55, label %70, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr %struct.can_frame, ptr %68, i32 0, i32 5, i32 3
  store i8 27, ptr %69, align 1
  br label %70

70:                                               ; preds = %67, %64, %54
  %71 = phi i32 [ 1, %67 ], [ 1, %64 ], [ 0, %54 ]
  %72 = and i32 %61, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = add nuw nsw i32 %71, 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  call void @arm_heavy_mb() #6
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds %struct.rcar_can_regs, ptr %76, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %77, i8 -33) #6, !srcloc !13
  br i1 %55, label %83, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr %struct.can_frame, ptr %79, i32 0, i32 5, i32 2
  %81 = load i8, ptr %80, align 2
  %82 = or i8 %81, 8
  store i8 %82, ptr %80, align 2
  br label %83

83:                                               ; preds = %78, %74, %70
  %84 = phi i32 [ %75, %78 ], [ %75, %74 ], [ %71, %70 ]
  %85 = and i32 %61, 16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = add nuw nsw i32 %84, 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  call void @arm_heavy_mb() #6
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr inbounds %struct.rcar_can_regs, ptr %89, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %90, i8 -17) #6, !srcloc !13
  br i1 %55, label %96, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %3, align 4
  %93 = getelementptr %struct.can_frame, ptr %92, i32 0, i32 5, i32 2
  %94 = load i8, ptr %93, align 2
  %95 = or i8 %94, 16
  store i8 %95, ptr %93, align 2
  br label %96

96:                                               ; preds = %91, %87, %83
  %97 = phi i32 [ %88, %91 ], [ %88, %87 ], [ %84, %83 ]
  %98 = and i32 %61, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  call void @arm_heavy_mb() #6
  %101 = load ptr, ptr %4, align 8
  %102 = getelementptr inbounds %struct.rcar_can_regs, ptr %101, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %102, i8 -9) #6, !srcloc !13
  br i1 %55, label %106, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %3, align 4
  %105 = getelementptr %struct.can_frame, ptr %104, i32 0, i32 5, i32 3
  store i8 8, ptr %105, align 1
  br label %106

106:                                              ; preds = %103, %100, %96
  %107 = phi i32 [ 1, %103 ], [ 1, %100 ], [ 0, %96 ]
  %108 = and i32 %61, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %106
  %111 = add nuw nsw i32 %97, 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  call void @arm_heavy_mb() #6
  %112 = load ptr, ptr %4, align 8
  %113 = getelementptr inbounds %struct.rcar_can_regs, ptr %112, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %113, i8 -5) #6, !srcloc !13
  br i1 %55, label %120, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %3, align 4
  %116 = load i32, ptr %115, align 8
  %117 = or i32 %116, 32
  store i32 %117, ptr %115, align 8
  %118 = load ptr, ptr %3, align 4
  %119 = getelementptr %struct.can_frame, ptr %118, i32 0, i32 5, i32 3
  store i8 25, ptr %119, align 1
  br label %120

120:                                              ; preds = %114, %110, %106
  %121 = phi i32 [ %111, %114 ], [ %111, %110 ], [ %97, %106 ]
  %122 = and i32 %61, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %120
  %125 = add nuw nsw i32 %107, 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !49
  call void @arm_heavy_mb() #6
  %126 = load ptr, ptr %4, align 8
  %127 = getelementptr inbounds %struct.rcar_can_regs, ptr %126, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %127, i8 -3) #6, !srcloc !13
  br i1 %55, label %133, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %3, align 4
  %130 = getelementptr %struct.can_frame, ptr %129, i32 0, i32 5, i32 2
  %131 = load i8, ptr %130, align 2
  %132 = or i8 %131, 2
  store i8 %132, ptr %130, align 2
  br label %133

133:                                              ; preds = %128, %124, %120
  %134 = phi i32 [ %125, %128 ], [ %125, %124 ], [ %107, %120 ]
  %135 = and i32 %61, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %133
  %138 = add nuw nsw i32 %134, 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !50
  call void @arm_heavy_mb() #6
  %139 = load ptr, ptr %4, align 8
  %140 = getelementptr inbounds %struct.rcar_can_regs, ptr %139, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %140, i8 -2) #6, !srcloc !13
  br i1 %55, label %146, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %3, align 4
  %143 = getelementptr %struct.can_frame, ptr %142, i32 0, i32 5, i32 2
  %144 = load i8, ptr %143, align 2
  %145 = or i8 %144, 4
  store i8 %145, ptr %143, align 2
  br label %146

146:                                              ; preds = %141, %137, %133
  %147 = phi i32 [ %138, %141 ], [ %138, %137 ], [ %134, %133 ]
  %148 = getelementptr i8, ptr %1, i32 1412
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, 1
  store i32 %150, ptr %148, align 4
  %151 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %152 = load i32, ptr %151, align 8
  %153 = add i32 %152, %147
  store i32 %153, ptr %151, align 8
  %154 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = add i32 %155, %121
  store i32 %156, ptr %154, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !51
  call void @arm_heavy_mb() #6
  %157 = load ptr, ptr %4, align 8
  %158 = getelementptr inbounds %struct.rcar_can_regs, ptr %157, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %158, i8 -2) #6, !srcloc !13
  br label %159

159:                                              ; preds = %146, %45, %40
  %160 = phi i8 [ %27, %45 ], [ %57, %146 ], [ %42, %40 ]
  %161 = phi i8 [ %30, %45 ], [ %56, %146 ], [ %41, %40 ]
  %162 = and i32 %21, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %177, label %164

164:                                              ; preds = %159
  %165 = getelementptr i8, ptr %1, i32 1576
  store i32 1, ptr %165, align 8
  %166 = getelementptr i8, ptr %1, i32 1416
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, 1
  store i32 %168, ptr %166, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !52
  call void @arm_heavy_mb() #6
  %169 = load ptr, ptr %4, align 8
  %170 = getelementptr inbounds %struct.rcar_can_regs, ptr %169, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %170, i8 -3) #6, !srcloc !13
  %171 = icmp eq ptr %17, null
  br i1 %171, label %177, label %172

172:                                              ; preds = %164
  %173 = icmp ugt i8 %160, %161
  %174 = select i1 %173, i8 8, i8 4
  %175 = load ptr, ptr %3, align 4
  %176 = getelementptr %struct.can_frame, ptr %175, i32 0, i32 5, i32 1
  store i8 %174, ptr %176, align 1
  br label %177

177:                                              ; preds = %172, %164, %159
  %178 = and i32 %21, 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %177
  %181 = getelementptr i8, ptr %1, i32 1576
  store i32 2, ptr %181, align 8
  %182 = getelementptr i8, ptr %1, i32 1420
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  call void @arm_heavy_mb() #6
  %185 = load ptr, ptr %4, align 8
  %186 = getelementptr inbounds %struct.rcar_can_regs, ptr %185, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %186, i8 -5) #6, !srcloc !13
  %187 = icmp eq ptr %17, null
  br i1 %187, label %193, label %188

188:                                              ; preds = %180
  %189 = icmp ugt i8 %160, %161
  %190 = select i1 %189, i8 32, i8 16
  %191 = load ptr, ptr %3, align 4
  %192 = getelementptr %struct.can_frame, ptr %191, i32 0, i32 5, i32 1
  store i8 %190, ptr %192, align 1
  br label %193

193:                                              ; preds = %188, %180, %177
  %194 = and i32 %21, 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %211, label %196

196:                                              ; preds = %193
  call void @can_free_echo_skb(ptr noundef %1, i32 noundef 0, ptr noundef null) #6
  call void @can_free_echo_skb(ptr noundef %1, i32 noundef 1, ptr noundef null) #6
  call void @can_free_echo_skb(ptr noundef %1, i32 noundef 2, ptr noundef null) #6
  call void @can_free_echo_skb(ptr noundef %1, i32 noundef 3, ptr noundef null) #6
  store i8 32, ptr %9, align 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !54
  call void @arm_heavy_mb() #6
  %197 = load i8, ptr %9, align 1
  %198 = load ptr, ptr %4, align 8
  %199 = getelementptr inbounds %struct.rcar_can_regs, ptr %198, i32 0, i32 31
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %199, i8 %197) #6, !srcloc !13
  %200 = getelementptr i8, ptr %1, i32 1576
  store i32 3, ptr %200, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !55
  call void @arm_heavy_mb() #6
  %201 = load ptr, ptr %4, align 8
  %202 = getelementptr inbounds %struct.rcar_can_regs, ptr %201, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %202, i8 -9) #6, !srcloc !13
  %203 = getelementptr i8, ptr %1, i32 1424
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, 1
  store i32 %205, ptr %203, align 4
  call void @can_bus_off(ptr noundef %1) #6
  %206 = icmp eq ptr %17, null
  br i1 %206, label %211, label %207

207:                                              ; preds = %196
  %208 = load ptr, ptr %3, align 4
  %209 = load i32, ptr %208, align 8
  %210 = or i32 %209, 64
  store i32 %210, ptr %208, align 8
  br label %211

211:                                              ; preds = %207, %196, %193
  %212 = and i32 %21, 32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %230, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %216 = load i32, ptr %215, align 4
  %217 = add i32 %216, 1
  store i32 %217, ptr %215, align 4
  %218 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %219 = load i32, ptr %218, align 8
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %221 = load ptr, ptr %4, align 8
  %222 = getelementptr inbounds %struct.rcar_can_regs, ptr %221, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %222, i8 -33) #6, !srcloc !13
  %223 = icmp eq ptr %17, null
  br i1 %223, label %233, label %224

224:                                              ; preds = %214
  %225 = load ptr, ptr %3, align 4
  %226 = load i32, ptr %225, align 8
  %227 = or i32 %226, 4
  store i32 %227, ptr %225, align 8
  %228 = load ptr, ptr %3, align 4
  %229 = getelementptr %struct.can_frame, ptr %228, i32 0, i32 5, i32 1
  store i8 1, ptr %229, align 1
  br label %230

230:                                              ; preds = %224, %211
  %231 = and i32 %21, 64
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %254, label %236

233:                                              ; preds = %214
  %234 = and i32 %21, 64
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %258, label %236

236:                                              ; preds = %233, %230
  %237 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, 1
  store i32 %239, ptr %237, align 4
  %240 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %241 = load i32, ptr %240, align 8
  %242 = add i32 %241, 1
  store i32 %242, ptr %240, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !57
  call void @arm_heavy_mb() #6
  %243 = load ptr, ptr %4, align 8
  %244 = getelementptr inbounds %struct.rcar_can_regs, ptr %243, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %244, i8 -65) #6, !srcloc !13
  %245 = icmp eq ptr %17, null
  br i1 %245, label %258, label %246

246:                                              ; preds = %236
  %247 = load ptr, ptr %3, align 4
  %248 = load i32, ptr %247, align 8
  %249 = or i32 %248, 8
  store i32 %249, ptr %247, align 8
  %250 = load ptr, ptr %3, align 4
  %251 = getelementptr %struct.can_frame, ptr %250, i32 0, i32 5, i32 2
  %252 = load i8, ptr %251, align 2
  %253 = or i8 %252, 32
  store i8 %253, ptr %251, align 2
  br label %256

254:                                              ; preds = %230
  %255 = icmp eq ptr %17, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %254, %246
  %257 = call i32 @netif_rx(ptr noundef nonnull %17) #6
  br label %258

258:                                              ; preds = %256, %254, %236, %233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %259

259:                                              ; preds = %258, %13
  %260 = and i32 %8, 8
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %307, label %262

262:                                              ; preds = %259
  %263 = load ptr, ptr %4, align 8
  %264 = getelementptr inbounds %struct.rcar_can_regs, ptr %263, i32 0, i32 16
  %265 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %264) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !58
  %266 = lshr i8 %265, 1
  %267 = and i8 %266, 7
  %268 = getelementptr i8, ptr %1, i32 1900
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr i8, ptr %1, i32 1904
  %271 = load i32, ptr %270, align 8
  %272 = sub i32 %269, %271
  %273 = zext i8 %267 to i32
  %274 = icmp ugt i32 %272, %273
  br i1 %274, label %275, label %300

275:                                              ; preds = %262
  %276 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %277 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %278 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  br label %279

279:                                              ; preds = %279, %275
  %280 = phi i32 [ %271, %275 ], [ %296, %279 ]
  %281 = load i32, ptr %276, align 4
  %282 = add i32 %281, 1
  store i32 %282, ptr %276, align 4
  %283 = and i32 %280, 3
  %284 = call i32 @can_get_echo_skb(ptr noundef %1, i32 noundef %283, ptr noundef null) #6
  %285 = load i32, ptr %277, align 4
  %286 = add i32 %285, %284
  store i32 %286, ptr %277, align 4
  %287 = load i32, ptr %270, align 8
  %288 = add i32 %287, 1
  store i32 %288, ptr %270, align 8
  %289 = load ptr, ptr %278, align 64
  call void @netif_tx_wake_queue(ptr noundef %289) #6
  %290 = load ptr, ptr %4, align 8
  %291 = getelementptr inbounds %struct.rcar_can_regs, ptr %290, i32 0, i32 16
  %292 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %291) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !58
  %293 = lshr i8 %292, 1
  %294 = and i8 %293, 7
  %295 = load i32, ptr %268, align 4
  %296 = load i32, ptr %270, align 8
  %297 = sub i32 %295, %296
  %298 = zext i8 %294 to i32
  %299 = icmp ugt i32 %297, %298
  br i1 %299, label %279, label %300

300:                                              ; preds = %279, %262
  %301 = load ptr, ptr %4, align 8
  %302 = getelementptr inbounds %struct.rcar_can_regs, ptr %301, i32 0, i32 32
  %303 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %302) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !59
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %304 = and i8 %303, -9
  %305 = load ptr, ptr %4, align 8
  %306 = getelementptr inbounds %struct.rcar_can_regs, ptr %305, i32 0, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %306, i8 %304) #6, !srcloc !13
  br label %307

307:                                              ; preds = %300, %259
  %308 = and i32 %8, 16
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %319, label %310

310:                                              ; preds = %307
  %311 = getelementptr i8, ptr %1, i32 1672
  %312 = call zeroext i1 @napi_schedule_prep(ptr noundef %311) #6
  br i1 %312, label %313, label %319

313:                                              ; preds = %310
  %314 = load i8, ptr %9, align 1
  %315 = and i8 %314, -17
  store i8 %315, ptr %9, align 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !61
  call void @arm_heavy_mb() #6
  %316 = load i8, ptr %9, align 1
  %317 = load ptr, ptr %4, align 8
  %318 = getelementptr inbounds %struct.rcar_can_regs, ptr %317, i32 0, i32 31
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %318, i8 %316) #6, !srcloc !13
  call void @__napi_schedule(ptr noundef %311) #6
  br label %319

319:                                              ; preds = %313, %310, %307, %2
  %320 = phi i32 [ 0, %2 ], [ 1, %310 ], [ 1, %313 ], [ 1, %307 ]
  ret i32 %320
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_can_start(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1888
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_can_regs, ptr %3, i32 0, i32 10
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #6, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !62
  %6 = and i16 %5, -1025
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.rcar_can_regs, ptr %7, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #6, !srcloc !25
  %9 = or i16 %6, 768
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.rcar_can_regs, ptr %10, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %9) #6, !srcloc !25
  br label %12

12:                                               ; preds = %12, %1
  %13 = phi i32 [ 0, %1 ], [ %19, %12 ]
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.rcar_can_regs, ptr %14, i32 0, i32 11
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #6, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !65
  %17 = and i16 %16, 256
  %18 = icmp ne i16 %17, 0
  %19 = add nuw nsw i32 %13, 1
  %20 = icmp eq i32 %19, 256
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %12

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %0, i32 1460
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 1456
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = shl i32 %27, 20
  %29 = add i32 %28, 15728640
  %30 = and i32 %29, 15728640
  %31 = getelementptr i8, ptr %0, i32 1472
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %32, 8
  %34 = add i32 %33, 261888
  %35 = and i32 %34, 261888
  %36 = or i32 %30, %35
  %37 = getelementptr i8, ptr %0, i32 1468
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 4
  %40 = add i32 %39, 48
  %41 = and i32 %40, 48
  %42 = or i32 %36, %41
  %43 = getelementptr i8, ptr %0, i32 1464
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 7
  %46 = and i32 %45, 7
  %47 = or i32 %42, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %48 = shl nuw i32 %47, 8
  %49 = getelementptr i8, ptr %0, i32 1908
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i32
  %52 = or i32 %48, %51
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds %struct.rcar_can_regs, ptr %53, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #6, !srcloc !28
  %55 = or i16 %6, 2829
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.rcar_can_regs, ptr %56, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %57, i16 %55) #6, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr %struct.rcar_can_regs, ptr %58, i32 0, i32 1, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #6, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr %struct.rcar_can_regs, ptr %60, i32 0, i32 1, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #6, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr inbounds %struct.rcar_can_regs, ptr %62, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #6, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct.rcar_can_regs, ptr %64, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #6, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr %struct.rcar_can_regs, ptr %66, i32 0, i32 2, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 -1073741824) #6, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.rcar_can_regs, ptr %68, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 285212672) #6, !srcloc !28
  %70 = getelementptr i8, ptr %0, i32 1909
  store i8 56, ptr %70, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %71 = load i8, ptr %70, align 1
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds %struct.rcar_can_regs, ptr %72, i32 0, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %73, i8 %71) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %74 = load ptr, ptr %2, align 8
  %75 = getelementptr inbounds %struct.rcar_can_regs, ptr %74, i32 0, i32 22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 -128) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %76 = getelementptr i8, ptr %0, i32 1580
  %77 = load i32, ptr %76, align 4
  %78 = trunc i32 %77 to i8
  %79 = lshr i8 %78, 4
  %80 = or i8 %79, 110
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct.rcar_can_regs, ptr %81, i32 0, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %82, i8 %80) #6, !srcloc !13
  %83 = getelementptr i8, ptr %0, i32 1576
  store i32 0, ptr %83, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %84 = and i16 %55, -1793
  %85 = load ptr, ptr %2, align 8
  %86 = getelementptr inbounds %struct.rcar_can_regs, ptr %85, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %86, i16 %84) #6, !srcloc !25
  br label %87

87:                                               ; preds = %87, %22
  %88 = phi i32 [ 0, %22 ], [ %94, %87 ]
  %89 = load ptr, ptr %2, align 8
  %90 = getelementptr inbounds %struct.rcar_can_regs, ptr %89, i32 0, i32 11
  %91 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %90) #6, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !78
  %92 = and i16 %91, 256
  %93 = icmp eq i16 %92, 0
  %94 = add nuw nsw i32 %88, 1
  %95 = icmp eq i32 %94, 256
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %97, label %87

97:                                               ; preds = %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %98 = load ptr, ptr %2, align 8
  %99 = getelementptr inbounds %struct.rcar_can_regs, ptr %98, i32 0, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %99, i8 1) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %100 = load ptr, ptr %2, align 8
  %101 = getelementptr inbounds %struct.rcar_can_regs, ptr %100, i32 0, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %101, i8 1) #6, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #6
  tail call void @netif_device_detach(ptr noundef %3) #6
  %12 = getelementptr i8, ptr %3, i32 1888
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.rcar_can_regs, ptr %13, i32 0, i32 10
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #6, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !81
  %16 = or i16 %15, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr %12, align 8
  %18 = getelementptr inbounds %struct.rcar_can_regs, ptr %17, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %16) #6, !srcloc !25
  %19 = or i16 %15, 1536
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %20 = load ptr, ptr %12, align 8
  %21 = getelementptr inbounds %struct.rcar_can_regs, ptr %20, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #6, !srcloc !25
  %22 = getelementptr i8, ptr %3, i32 1576
  store i32 5, ptr %22, align 8
  %23 = getelementptr i8, ptr %3, i32 1892
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  br label %25

25:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_can_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %3, i32 1892
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_enable(ptr noundef %10) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %11) #7
  br label %29

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %3, i32 1888
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rcar_can_regs, ptr %16, i32 0, i32 10
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #6, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !84
  %19 = and i16 %18, -1025
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %20 = load ptr, ptr %15, align 8
  %21 = getelementptr inbounds %struct.rcar_can_regs, ptr %20, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #6, !srcloc !25
  %22 = and i16 %18, -1793
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %15, align 8
  %24 = getelementptr inbounds %struct.rcar_can_regs, ptr %23, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %22) #6, !srcloc !25
  %25 = getelementptr i8, ptr %3, i32 1576
  store i32 0, ptr %25, align 8
  tail call void @netif_device_attach(ptr noundef %3) #6
  %26 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %27 = load ptr, ptr %26, align 64
  %28 = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %28) #6
  br label %29

29:                                               ; preds = %14, %13, %1
  %30 = phi i32 [ %11, %13 ], [ 0, %14 ], [ 0, %1 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

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
!8 = !{i64 3483304}
!9 = !{i64 2155587354}
!10 = !{i64 2155587557}
!11 = !{i64 2155586151}
!12 = !{i64 2155586366}
!13 = !{i64 3482909}
!14 = !{i64 2155586636}
!15 = !{!"auto-init"}
!16 = !{i64 3483524}
!17 = !{i64 2155582658}
!18 = !{i64 2155582929}
!19 = !{i64 2155584766}
!20 = !{i64 2155586832}
!21 = !{i64 2155587088}
!22 = !{i64 3482686}
!23 = !{i64 2155579008}
!24 = !{i64 2155579203}
!25 = !{i64 3482486}
!26 = !{i64 2155579671}
!27 = !{i64 2155579864}
!28 = !{i64 3483106}
!29 = !{i64 2155580174}
!30 = !{i64 2155580482}
!31 = !{i64 2155580717}
!32 = !{i64 2155580966}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2155581376}
!36 = !{i64 2155581647}
!37 = !{i64 2155581985}
!38 = !{i64 2155582241}
!39 = !{i64 2155571830}
!40 = !{i64 2155564495}
!41 = !{i64 2155564716}
!42 = !{i64 2155564919}
!43 = !{i64 2155565310}
!44 = !{i64 2155565662}
!45 = !{i64 2155566082}
!46 = !{i64 2155566503}
!47 = !{i64 2155566912}
!48 = !{i64 2155567321}
!49 = !{i64 2155567743}
!50 = !{i64 2155568154}
!51 = !{i64 2155568422}
!52 = !{i64 2155568840}
!53 = !{i64 2155569268}
!54 = !{i64 2155569694}
!55 = !{i64 2155569955}
!56 = !{i64 2155570393}
!57 = !{i64 2155570848}
!58 = !{i64 2155571130}
!59 = !{i64 2155571356}
!60 = !{i64 2155571562}
!61 = !{i64 2155572056}
!62 = !{i64 2155572997}
!63 = !{i64 2155573193}
!64 = !{i64 2155573519}
!65 = !{i64 2155573987}
!66 = !{i64 2155572479}
!67 = !{i64 2155574219}
!68 = !{i64 2155574539}
!69 = !{i64 2155574859}
!70 = !{i64 2155575176}
!71 = !{i64 2155575491}
!72 = !{i64 2155575847}
!73 = !{i64 2155576240}
!74 = !{i64 2155576623}
!75 = !{i64 2155576882}
!76 = !{i64 2155577288}
!77 = !{i64 2155577653}
!78 = !{i64 2155578147}
!79 = !{i64 2155578355}
!80 = !{i64 2155578614}
!81 = !{i64 2155592054}
!82 = !{i64 2155592249}
!83 = !{i64 2155592576}
!84 = !{i64 2155597130}
!85 = !{i64 2155597326}
!86 = !{i64 2155597652}
