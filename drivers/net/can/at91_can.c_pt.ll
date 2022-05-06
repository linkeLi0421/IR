; ModuleID = '/llk/IR/drivers/net/can/at91_can.c_pt.bc'
source_filename = "../drivers/net/can/at91_can.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.at91_devtype_data = type { i32, i32, i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.can_berr_counter = type { i16, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
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

@at91_can_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91_at91sam9x5_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91_at91sam9263_data }, %struct.of_device_id zeroinitializer], align 4
@at91_can_id_table = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"at91sam9x5_can\00\00\00\00\00\00", i32 ptrtoint (ptr @at91_at91sam9x5_data to i32) }, %struct.platform_device_id { [20 x i8] c"at91_can\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at91_at91sam9263_data to i32) }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author422 = internal constant [46 x i8] c"author=Marc Kleine-Budde <mkl@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_license423 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description424 = internal constant [42 x i8] c"description=at91_can CAN netdevice driver\00", section ".modinfo", align 1
@at91_at91sam9x5_data = internal constant %struct.at91_devtype_data { i32 0, i32 4, i32 5, i32 1, i32 1 }, align 4
@at91_at91sam9263_data = internal constant %struct.at91_devtype_data { i32 1, i32 8, i32 11, i32 2, i32 0 }, align 4
@at91_can_driver = internal global %struct.platform_driver { ptr @at91_can_probe, ptr @at91_can_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_can_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @at91_can_id_table, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"at91_can\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no driver data\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"can_clk\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"no clock defined\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@at91_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @at91_open, ptr @at91_close, ptr @at91_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91_bittiming_const = internal constant %struct.can_bittiming_const { [16 x i8] c"at91_can\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 2, i32 8, i32 4, i32 2, i32 128, i32 1 }, align 4
@at91_sysfs_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @at91_sysfs_attrs, ptr null }, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"registering netdev failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"device registered (reg_base=%p, irq=%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"no matching node found in dtb\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"BUG! hardware in undefined state\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"writing AT91_BR: 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"BUG! TX buffer full when queue awake!\0A\00", align 1
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"include/linux/can/skb.h\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"order of incoming frames cannot be guaranteed\0A\00", align 1
@at91_sysfs_attrs = internal global [2 x ptr] [ptr @dev_attr_mb0_id, ptr null], align 4
@dev_attr_mb0_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @mb0_id_show, ptr @mb0_id_store }, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"mb0_id\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0x%03x\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author422, ptr @__UNIQUE_ID_description424, ptr @__UNIQUE_ID_license423], section "llvm.metadata"

@__mod_of__at91_can_dt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @at91_can_dt_ids
@__mod_platform__at91_can_id_table_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @at91_can_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_can_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_can_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_can_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_match_node(ptr noundef nonnull @at91_can_dt_ids, ptr noundef nonnull %4) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #8
  br label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.platform_device_id, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = inttoptr i32 %17 to ptr
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi ptr [ %18, %13 ], [ %12, %10 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  br label %104

23:                                               ; preds = %19
  %24 = tail call ptr @clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #8
  br label %104

27:                                               ; preds = %23
  %28 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %29 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %30 = icmp eq ptr %28, null
  %31 = icmp slt i32 %29, 1
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %102, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %28, align 4
  %35 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 1, %34
  %38 = add i32 %37, %36
  %39 = load ptr, ptr %0, align 8
  %40 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %34, i32 noundef %38, ptr noundef %39, i32 noundef 0) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %102, label %42

42:                                               ; preds = %33
  %43 = load i32, ptr %28, align 4
  %44 = load i32, ptr %35, align 4
  %45 = sub i32 1, %43
  %46 = add i32 %45, %44
  %47 = tail call ptr @ioremap(i32 noundef %43, i32 noundef %46) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %96, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.at91_devtype_data, ptr %20, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = shl nuw i32 1, %51
  %53 = tail call ptr @alloc_candev_mqs(i32 noundef 528, i32 noundef %52, i32 noundef 1, i32 noundef 1) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %94, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 16
  store ptr @at91_netdev_ops, ptr %56, align 8
  %57 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 59
  store i32 %29, ptr %57, align 8
  %58 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 14
  %59 = load i32, ptr %58, align 8
  %60 = or i32 %59, 262144
  store i32 %60, ptr %58, align 8
  %61 = tail call i32 @clk_get_rate(ptr noundef %24) #7
  %62 = getelementptr i8, ptr %53, i32 1544
  store i32 %61, ptr %62, align 8
  %63 = getelementptr i8, ptr %53, i32 1436
  store ptr @at91_bittiming_const, ptr %63, align 4
  %64 = getelementptr i8, ptr %53, i32 1644
  store ptr @at91_set_mode, ptr %64, align 4
  %65 = getelementptr i8, ptr %53, i32 1656
  store ptr @at91_get_berr_counter, ptr %65, align 8
  %66 = getelementptr i8, ptr %53, i32 1584
  store i32 6, ptr %66, align 8
  %67 = getelementptr i8, ptr %53, i32 1880
  store ptr %47, ptr %67, align 8
  %68 = getelementptr i8, ptr %53, i32 1900
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %68, ptr noundef nonnull align 4 dereferenceable(20) %20, i32 20, i1 false)
  %69 = getelementptr i8, ptr %53, i32 1920
  store ptr %24, ptr %69, align 8
  %70 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %53, i32 1924
  store ptr %71, ptr %72, align 4
  %73 = getelementptr i8, ptr %53, i32 1928
  store i32 2047, ptr %73, align 8
  %74 = getelementptr i8, ptr %53, i32 1664
  %75 = getelementptr i8, ptr %53, i32 1908
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %68, align 4
  %78 = add i32 %76, 1
  %79 = sub i32 %78, %77
  tail call void @netif_napi_add(ptr noundef nonnull %53, ptr noundef %74, ptr noundef nonnull @at91_poll, i32 noundef %79) #7
  %80 = getelementptr i8, ptr %53, i32 1916
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %55
  %84 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 112
  store ptr @at91_sysfs_attr_group, ptr %84, align 8
  br label %85

85:                                               ; preds = %83, %55
  %86 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %53, ptr %86, align 8
  %87 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 111, i32 1
  store ptr %2, ptr %87, align 4
  %88 = tail call i32 @register_candev(ptr noundef nonnull %53) #7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  tail call void @free_candev(ptr noundef nonnull %53) #7
  br label %94

91:                                               ; preds = %85
  %92 = load ptr, ptr %67, align 8
  %93 = load i32, ptr %57, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %92, i32 noundef %93) #8
  br label %104

94:                                               ; preds = %90, %49
  %95 = phi i32 [ %88, %90 ], [ -12, %49 ]
  tail call void @iounmap(ptr noundef nonnull %47) #7
  br label %96

96:                                               ; preds = %94, %42
  %97 = phi i32 [ %95, %94 ], [ -12, %42 ]
  %98 = load i32, ptr %28, align 4
  %99 = load i32, ptr %35, align 4
  %100 = sub i32 1, %98
  %101 = add i32 %100, %99
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %98, i32 noundef %101) #7
  br label %102

102:                                              ; preds = %96, %33, %27
  %103 = phi i32 [ %97, %96 ], [ -19, %27 ], [ -16, %33 ]
  tail call void @clk_put(ptr noundef %24) #7
  br label %104

104:                                              ; preds = %102, %91, %26, %22
  %105 = phi i32 [ 0, %91 ], [ -19, %26 ], [ %103, %102 ], [ -19, %22 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_can_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_netdev(ptr noundef %3) #7
  %4 = getelementptr i8, ptr %3, i32 1880
  %5 = load ptr, ptr %4, align 8
  tail call void @iounmap(ptr noundef %5) #7
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 1, %7
  %11 = add i32 %10, %9
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %11) #7
  %12 = getelementptr i8, ptr %3, i32 1920
  %13 = load ptr, ptr %12, align 8
  tail call void @clk_put(ptr noundef %13) #7
  tail call void @free_candev(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  tail call fastcc void @at91_chip_start(ptr noundef %0)
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %6 = load ptr, ptr %5, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %6) #7
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ 0, %4 ], [ -95, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_get_berr_counter(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1880
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  %7 = trunc i32 %6 to i16
  %8 = and i16 %7, 255
  %9 = getelementptr inbounds %struct.can_berr_counter, ptr %1, i32 0, i32 1
  store i16 %8, ptr %9, align 2
  %10 = lshr i32 %6, 16
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1880
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !8
  %13 = getelementptr i8, ptr %8, i32 1908
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = getelementptr i8, ptr %8, i32 1900
  %19 = load i32, ptr %18, align 4
  %20 = shl nsw i32 -1, %19
  %21 = and i32 %12, %17
  %22 = and i32 %21, %20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %199, label %24

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr i8, ptr %25, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !8
  store i32 %27, ptr %6, align 4
  %28 = getelementptr i8, ptr %8, i32 1896
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr i8, ptr %8, i32 1904
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  %33 = icmp ugt i32 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = shl nsw i32 -1, %31
  %36 = xor i32 %35, -1
  %37 = load i32, ptr %18, align 4
  %38 = shl nsw i32 -1, %37
  %39 = and i32 %27, %36
  %40 = and i32 %39, %38
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %8, ptr noundef nonnull @.str.11) #8
  %43 = load i32, ptr %28, align 8
  br label %44

44:                                               ; preds = %42, %34, %24
  %45 = phi i32 [ %43, %42 ], [ %29, %34 ], [ %29, %24 ]
  %46 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36
  %47 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 11
  %48 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 4
  %49 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 2
  %50 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 6
  %51 = load i32, ptr %13, align 4
  br label %52

52:                                               ; preds = %196, %44
  %53 = phi i32 [ %45, %44 ], [ %197, %196 ]
  %54 = phi i32 [ %51, %44 ], [ %185, %196 ]
  %55 = phi i32 [ %1, %44 ], [ %186, %196 ]
  %56 = phi i32 [ 0, %44 ], [ %188, %196 ]
  %57 = add i32 %54, 1
  %58 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef %57, i32 noundef %53) #7
  %59 = load i32, ptr %13, align 4
  %60 = add i32 %59, 1
  %61 = icmp ult i32 %58, %60
  %62 = icmp sgt i32 %55, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %184

64:                                               ; preds = %168, %52
  %65 = phi i32 [ %169, %168 ], [ %56, %52 ]
  %66 = phi i32 [ %178, %168 ], [ %58, %52 ]
  %67 = phi i32 [ %170, %168 ], [ %55, %52 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !9
  %68 = call ptr @alloc_can_skb(ptr noundef %8, ptr noundef nonnull %5) #7
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73, !prof !10

70:                                               ; preds = %64
  %71 = load i32, ptr %50, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %50, align 4
  br label %150

73:                                               ; preds = %64
  %74 = load ptr, ptr %5, align 4
  %75 = shl i32 %66, 5
  %76 = add i32 %75, 520
  %77 = load ptr, ptr %9, align 8
  %78 = getelementptr i8, ptr %77, i32 %76
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !8
  %80 = and i32 %79, 536870912
  %81 = icmp eq i32 %80, 0
  %82 = lshr i32 %79, 18
  %83 = and i32 %82, 2047
  %84 = and i32 %79, 536870911
  %85 = or i32 %84, -2147483648
  %86 = select i1 %81, i32 %83, i32 %85
  store i32 %86, ptr %74, align 8
  %87 = add i32 %75, 528
  %88 = load ptr, ptr %9, align 8
  %89 = getelementptr i8, ptr %88, i32 %87
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #7, !srcloc !8
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 15
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 8) #7
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds %struct.can_frame, ptr %74, i32 0, i32 1
  store i8 %94, ptr %95, align 4
  %96 = and i32 %90, 1048576
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %73
  %99 = load i32, ptr %74, align 8
  %100 = or i32 %99, 1073741824
  store i32 %100, ptr %74, align 8
  br label %112

101:                                              ; preds = %73
  %102 = add i32 %75, 532
  %103 = load ptr, ptr %9, align 8
  %104 = getelementptr i8, ptr %103, i32 %102
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #7, !srcloc !8
  %106 = getelementptr inbounds %struct.can_frame, ptr %74, i32 0, i32 5
  store i32 %105, ptr %106, align 4
  %107 = add i32 %75, 536
  %108 = load ptr, ptr %9, align 8
  %109 = getelementptr i8, ptr %108, i32 %107
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #7, !srcloc !8
  %111 = getelementptr %struct.can_frame, ptr %74, i32 0, i32 5, i32 4
  store i32 %110, ptr %111, align 4
  br label %112

112:                                              ; preds = %101, %98
  %113 = load ptr, ptr %9, align 8
  %114 = getelementptr i8, ptr %113, i32 %76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 536870912) #7, !srcloc !11
  %115 = load i32, ptr %13, align 4
  %116 = icmp eq i32 %115, %66
  %117 = and i32 %90, 16777216
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %135, !prof !10

120:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !9
  %121 = load i32, ptr %47, align 4
  %122 = add i32 %121, 1
  store i32 %122, ptr %47, align 4
  %123 = load i32, ptr %48, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %48, align 4
  %125 = call ptr @alloc_can_err_skb(ptr noundef %8, ptr noundef nonnull %4) #7
  %126 = icmp eq ptr %125, null
  br i1 %126, label %134, label %127, !prof !10

127:                                              ; preds = %120
  %128 = load ptr, ptr %4, align 4
  %129 = load i32, ptr %128, align 8
  %130 = or i32 %129, 4
  store i32 %130, ptr %128, align 8
  %131 = load ptr, ptr %4, align 4
  %132 = getelementptr %struct.can_frame, ptr %131, i32 0, i32 5, i32 1
  store i8 1, ptr %132, align 1
  %133 = call i32 @netif_receive_skb(ptr noundef nonnull %125) #7
  br label %134

134:                                              ; preds = %127, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %135

135:                                              ; preds = %134, %112
  %136 = load i32, ptr %46, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %46, align 4
  %138 = load ptr, ptr %5, align 4
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 1073741824
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.can_frame, ptr %138, i32 0, i32 1
  %144 = load i8, ptr %143, align 4
  %145 = zext i8 %144 to i32
  %146 = load i32, ptr %49, align 4
  %147 = add i32 %146, %145
  store i32 %147, ptr %49, align 4
  br label %148

148:                                              ; preds = %142, %135
  %149 = call i32 @netif_receive_skb(ptr noundef nonnull %68) #7
  br label %150

150:                                              ; preds = %148, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %151 = load i32, ptr %30, align 4
  %152 = add i32 %151, -1
  %153 = icmp eq i32 %66, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = shl nsw i32 -1, %151
  %156 = xor i32 %155, -1
  %157 = load i32, ptr %18, align 4
  %158 = shl nsw i32 -1, %157
  %159 = and i32 %158, %156
  %160 = load ptr, ptr %9, align 8
  %161 = getelementptr i8, ptr %160, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #7, !srcloc !11
  br label %168

162:                                              ; preds = %150
  %163 = icmp ugt i32 %66, %152
  br i1 %163, label %164, label %168

164:                                              ; preds = %162
  %165 = shl nuw i32 1, %66
  %166 = load ptr, ptr %9, align 8
  %167 = getelementptr i8, ptr %166, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #7, !srcloc !11
  br label %168

168:                                              ; preds = %164, %162, %154
  %169 = add i32 %65, 1
  %170 = add nsw i32 %67, -1
  %171 = load ptr, ptr %9, align 8
  %172 = getelementptr i8, ptr %171, i32 16
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #7, !srcloc !8
  store i32 %173, ptr %6, align 4
  %174 = load i32, ptr %13, align 4
  %175 = add i32 %174, 1
  %176 = load i32, ptr %28, align 8
  %177 = add i32 %176, 1
  store i32 %177, ptr %28, align 8
  %178 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef %175, i32 noundef %177) #7
  %179 = load i32, ptr %13, align 4
  %180 = add i32 %179, 1
  %181 = icmp ult i32 %178, %180
  %182 = icmp sgt i32 %67, 1
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %64, label %184

184:                                              ; preds = %168, %52
  %185 = phi i32 [ %59, %52 ], [ %179, %168 ]
  %186 = phi i32 [ %55, %52 ], [ %170, %168 ]
  %187 = phi i32 [ %58, %52 ], [ %178, %168 ]
  %188 = phi i32 [ %56, %52 ], [ %169, %168 ]
  %189 = phi i1 [ %62, %52 ], [ %182, %168 ]
  %190 = load i32, ptr %28, align 8
  %191 = load i32, ptr %30, align 4
  %192 = add i32 %191, -1
  %193 = icmp ugt i32 %190, %192
  %194 = icmp ugt i32 %187, %185
  %195 = select i1 %193, i1 %194, i1 false
  br i1 %195, label %196, label %198

196:                                              ; preds = %184
  %197 = load i32, ptr %18, align 4
  store i32 %197, ptr %28, align 8
  br i1 %189, label %52, label %198

198:                                              ; preds = %196, %184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %199

199:                                              ; preds = %198, %2
  %200 = phi i32 [ %188, %198 ], [ 0, %2 ]
  %201 = getelementptr i8, ptr %8, i32 1884
  %202 = load i32, ptr %201, align 4
  %203 = or i32 %202, %12
  %204 = and i32 %203, 520093696
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %283, label %206

206:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !9
  %207 = icmp eq i32 %200, %1
  br i1 %207, label %280, label %208

208:                                              ; preds = %206
  %209 = call ptr @alloc_can_err_skb(ptr noundef %8, ptr noundef nonnull %3) #7
  %210 = icmp eq ptr %209, null
  br i1 %210, label %280, label %211, !prof !10

211:                                              ; preds = %208
  %212 = load ptr, ptr %3, align 4
  %213 = and i32 %203, 16777216
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 4
  %217 = load i32, ptr %216, align 8
  %218 = add i32 %217, 1
  store i32 %218, ptr %216, align 8
  %219 = getelementptr i8, ptr %8, i32 1412
  %220 = load i32, ptr %219, align 4
  %221 = add i32 %220, 1
  store i32 %221, ptr %219, align 4
  %222 = load i32, ptr %212, align 8
  %223 = or i32 %222, 136
  store i32 %223, ptr %212, align 8
  br label %224

224:                                              ; preds = %215, %211
  %225 = and i32 %203, 33554432
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %239, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 4
  %229 = load i32, ptr %228, align 8
  %230 = add i32 %229, 1
  store i32 %230, ptr %228, align 8
  %231 = getelementptr i8, ptr %8, i32 1412
  %232 = load i32, ptr %231, align 4
  %233 = add i32 %232, 1
  store i32 %233, ptr %231, align 4
  %234 = load i32, ptr %212, align 8
  %235 = or i32 %234, 136
  store i32 %235, ptr %212, align 8
  %236 = getelementptr %struct.can_frame, ptr %212, i32 0, i32 5, i32 2
  %237 = load i8, ptr %236, align 2
  %238 = or i8 %237, 4
  store i8 %238, ptr %236, align 2
  br label %239

239:                                              ; preds = %227, %224
  %240 = and i32 %203, 67108864
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 5
  %244 = load i32, ptr %243, align 4
  %245 = add i32 %244, 1
  store i32 %245, ptr %243, align 4
  %246 = load i32, ptr %212, align 8
  %247 = or i32 %246, 32
  store i32 %247, ptr %212, align 8
  br label %248

248:                                              ; preds = %242, %239
  %249 = and i32 %203, 134217728
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %263, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 4
  %253 = load i32, ptr %252, align 8
  %254 = add i32 %253, 1
  store i32 %254, ptr %252, align 8
  %255 = getelementptr i8, ptr %8, i32 1412
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %256, 1
  store i32 %257, ptr %255, align 4
  %258 = load i32, ptr %212, align 8
  %259 = or i32 %258, 136
  store i32 %259, ptr %212, align 8
  %260 = getelementptr %struct.can_frame, ptr %212, i32 0, i32 5, i32 2
  %261 = load i8, ptr %260, align 2
  %262 = or i8 %261, 2
  store i8 %262, ptr %260, align 2
  br label %263

263:                                              ; preds = %251, %248
  %264 = and i32 %203, 268435456
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %278, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 5
  %268 = load i32, ptr %267, align 4
  %269 = add i32 %268, 1
  store i32 %269, ptr %267, align 4
  %270 = getelementptr i8, ptr %8, i32 1412
  %271 = load i32, ptr %270, align 4
  %272 = add i32 %271, 1
  store i32 %272, ptr %270, align 4
  %273 = load i32, ptr %212, align 8
  %274 = or i32 %273, 136
  store i32 %274, ptr %212, align 8
  %275 = getelementptr %struct.can_frame, ptr %212, i32 0, i32 5, i32 2
  %276 = load i8, ptr %275, align 2
  %277 = or i8 %276, 1
  store i8 %277, ptr %275, align 2
  br label %278

278:                                              ; preds = %266, %263
  %279 = call i32 @netif_receive_skb(ptr noundef nonnull %209) #7
  br label %280

280:                                              ; preds = %278, %208, %206
  %281 = phi i32 [ 1, %278 ], [ 0, %206 ], [ 0, %208 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %282 = add i32 %281, %200
  br label %283

283:                                              ; preds = %280, %199
  %284 = phi i32 [ %282, %280 ], [ %200, %199 ]
  %285 = icmp slt i32 %284, %1
  br i1 %285, label %286, label %302

286:                                              ; preds = %283
  %287 = load i32, ptr %13, align 4
  %288 = add i32 %287, 1
  %289 = shl nsw i32 -1, %288
  %290 = xor i32 %289, -1
  %291 = load i32, ptr %18, align 4
  %292 = shl nsw i32 -1, %291
  %293 = and i32 %292, %290
  %294 = getelementptr i8, ptr %8, i32 1896
  %295 = load i32, ptr %294, align 8
  %296 = shl nsw i32 -1, %295
  %297 = and i32 %293, %296
  %298 = or i32 %297, 520093696
  %299 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %284) #7
  %300 = load ptr, ptr %9, align 8
  %301 = getelementptr i8, ptr %300, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %301, i32 %298) #7, !srcloc !11
  br label %302

302:                                              ; preds = %286, %283
  ret i32 %284
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1920
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %27

10:                                               ; preds = %6
  %11 = tail call i32 @open_candev(ptr noundef %0) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @at91_irq, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %0) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @close_candev(ptr noundef %0) #7
  br label %24

19:                                               ; preds = %13
  tail call fastcc void @at91_chip_start(ptr noundef %0)
  %20 = getelementptr i8, ptr %0, i32 1664
  tail call void @napi_enable(ptr noundef %20) #7
  %21 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %23) #7
  br label %27

24:                                               ; preds = %18, %10
  %25 = phi i32 [ %11, %10 ], [ -11, %18 ]
  %26 = load ptr, ptr %2, align 8
  tail call void @clk_disable(ptr noundef %26) #7
  tail call void @clk_unprepare(ptr noundef %26) #7
  br label %27

27:                                               ; preds = %24, %19, %9, %1
  %28 = phi i32 [ %25, %24 ], [ 0, %19 ], [ %7, %9 ], [ %4, %1 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_close(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #7
  %5 = getelementptr i8, ptr %0, i32 1664
  tail call void @napi_disable(ptr noundef %5) #7
  %6 = getelementptr i8, ptr %0, i32 1880
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 536870911) #7, !srcloc !11
  %9 = load ptr, ptr %6, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  %11 = and i32 %10, -2
  %12 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #7, !srcloc !11
  %13 = getelementptr i8, ptr %0, i32 1576
  store i32 4, ptr %13, align 8
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %15 = load i32, ptr %14, align 8
  %16 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %0) #7
  %17 = getelementptr i8, ptr %0, i32 1920
  %18 = load ptr, ptr %17, align 8
  tail call void @clk_disable(ptr noundef %18) #7
  tail call void @clk_unprepare(ptr noundef %18) #7
  tail call void @close_candev(ptr noundef %0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
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
  br i1 %10, label %11, label %65, !prof !12

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp ugt i8 %13, 8
  br i1 %14, label %65, label %23, !prof !10

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 72
  br i1 %18, label %19, label %65, !prof !12

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp ugt i8 %21, 64
  br i1 %22, label %65, label %23, !prof !10

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
  br i1 %32, label %33, label %34, !prof !10

33:                                               ; preds = %23
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 104, i32 noundef 9, ptr noundef null) #7
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
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  %66 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 4
  br label %171

69:                                               ; preds = %40, %35
  %70 = getelementptr i8, ptr %1, i32 1888
  %71 = load i32, ptr %70, align 8
  %72 = getelementptr i8, ptr %1, i32 1912
  %73 = load i32, ptr %72, align 4
  %74 = shl nsw i32 -1, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %71, %75
  %77 = getelementptr i8, ptr %1, i32 1908
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  %80 = add i32 %79, %76
  %81 = shl i32 %80, 5
  %82 = add i32 %81, 528
  %83 = getelementptr i8, ptr %1, i32 1880
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr i8, ptr %84, i32 %82
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #7, !srcloc !8
  %87 = and i32 %86, 8388608
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93, !prof !10

89:                                               ; preds = %69
  %90 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %91 = load ptr, ptr %90, align 64
  %92 = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %92) #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #8
  br label %171

93:                                               ; preds = %69
  %94 = lshr i32 %71, %73
  %95 = load i32, ptr %4, align 8
  %96 = and i32 %95, 536870911
  %97 = or i32 %96, 536870912
  %98 = shl i32 %95, 18
  %99 = and i32 %98, 536608768
  %100 = icmp slt i32 %95, 0
  %101 = select i1 %100, i32 %97, i32 %99
  %102 = lshr i32 %95, 10
  %103 = and i32 %102, 1048576
  %104 = getelementptr inbounds %struct.can_frame, ptr %4, i32 0, i32 1
  %105 = load i8, ptr %104, align 4
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 16
  %108 = or i32 %103, %107
  %109 = or i32 %108, 8388608
  %110 = add i32 %81, 512
  %111 = load ptr, ptr %83, align 8
  %112 = getelementptr i8, ptr %111, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 0) #7, !srcloc !11
  %113 = add i32 %81, 520
  %114 = load ptr, ptr %83, align 8
  %115 = getelementptr i8, ptr %114, i32 %113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %101) #7, !srcloc !11
  %116 = shl i32 %94, 16
  %117 = and i32 %116, 983040
  %118 = or i32 %117, 50331648
  %119 = load ptr, ptr %83, align 8
  %120 = getelementptr i8, ptr %119, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #7, !srcloc !11
  %121 = add i32 %81, 532
  %122 = getelementptr inbounds %struct.can_frame, ptr %4, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %83, align 8
  %125 = getelementptr i8, ptr %124, i32 %121
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #7, !srcloc !11
  %126 = add i32 %81, 536
  %127 = getelementptr %struct.can_frame, ptr %4, i32 0, i32 5, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = load ptr, ptr %83, align 8
  %130 = getelementptr i8, ptr %129, i32 %126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #7, !srcloc !11
  %131 = add i32 %81, 540
  %132 = load ptr, ptr %83, align 8
  %133 = getelementptr i8, ptr %132, i32 %131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %109) #7, !srcloc !11
  %134 = load i32, ptr %77, align 4
  %135 = xor i32 %134, -1
  %136 = add i32 %80, %135
  %137 = tail call i32 @can_put_echo_skb(ptr noundef %0, ptr noundef %1, i32 noundef %136, i32 noundef 0) #7
  %138 = load i32, ptr %70, align 8
  %139 = add i32 %138, 1
  store i32 %139, ptr %70, align 8
  %140 = load i32, ptr %72, align 4
  %141 = shl nsw i32 -1, %140
  %142 = xor i32 %141, -1
  %143 = and i32 %139, %142
  %144 = load i32, ptr %77, align 4
  %145 = add i32 %144, 1
  %146 = add i32 %145, %143
  %147 = shl i32 %146, 5
  %148 = add i32 %147, 528
  %149 = load ptr, ptr %83, align 8
  %150 = getelementptr i8, ptr %149, i32 %148
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #7, !srcloc !8
  %152 = and i32 %151, 8388608
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %93
  %155 = load i32, ptr %70, align 8
  %156 = load i32, ptr %72, align 4
  %157 = shl nsw i32 -1, %156
  %158 = xor i32 %157, -1
  %159 = shl i32 15, %156
  %160 = or i32 %159, %158
  %161 = and i32 %160, %155
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %154, %93
  %164 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %165 = load ptr, ptr %164, align 64
  %166 = getelementptr inbounds %struct.netdev_queue, ptr %165, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %166) #7
  br label %167

167:                                              ; preds = %163, %154
  %168 = shl nuw i32 1, %80
  %169 = load ptr, ptr %83, align 8
  %170 = getelementptr i8, ptr %169, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #7, !srcloc !11
  br label %171

171:                                              ; preds = %167, %89, %65
  %172 = phi i32 [ 16, %89 ], [ 0, %167 ], [ 0, %65 ]
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = getelementptr i8, ptr %1, i32 1880
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %237, label %13

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %1, i32 1908
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  %17 = shl nsw i32 -1, %16
  %18 = xor i32 %17, -1
  %19 = getelementptr i8, ptr %1, i32 1900
  %20 = load i32, ptr %19, align 4
  %21 = shl nsw i32 -1, %20
  %22 = and i32 %21, %18
  %23 = or i32 %22, 520093696
  %24 = and i32 %23, %11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %13
  %27 = getelementptr i8, ptr %1, i32 1884
  store i32 %11, ptr %27, align 4
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %23) #7, !srcloc !11
  %30 = getelementptr i8, ptr %1, i32 1664
  %31 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %30) #7
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call void @__napi_schedule(ptr noundef %30) #7
  br label %33

33:                                               ; preds = %32, %26, %13
  %34 = load i32, ptr %14, align 4
  %35 = getelementptr i8, ptr %1, i32 1912
  %36 = load i32, ptr %35, align 4
  %37 = shl nuw i32 1, %36
  %38 = add i32 %34, 1
  %39 = add i32 %37, %38
  %40 = shl nsw i32 -1, %39
  %41 = xor i32 %40, -1
  %42 = shl nsw i32 -1, %38
  %43 = and i32 %42, %11
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %115, label %46

46:                                               ; preds = %33
  %47 = getelementptr i8, ptr %1, i32 1888
  %48 = getelementptr i8, ptr %1, i32 1892
  %49 = load i32, ptr %47, align 8
  %50 = load i32, ptr %48, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %99, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %54 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %55 = shl nsw i32 -1, %36
  %56 = xor i32 %55, -1
  %57 = and i32 %50, %56
  %58 = add i32 %38, %57
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %99, label %72

62:                                               ; preds = %93
  %63 = shl nsw i32 -1, %98
  %64 = xor i32 %63, -1
  %65 = and i32 %95, %64
  %66 = load i32, ptr %14, align 4
  %67 = add i32 %66, 1
  %68 = add i32 %67, %65
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %99, label %72

72:                                               ; preds = %62, %52
  %73 = phi i32 [ %69, %62 ], [ %59, %52 ]
  %74 = phi i32 [ %68, %62 ], [ %58, %52 ]
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr i8, ptr %75, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %73) #7, !srcloc !11
  %77 = shl i32 %74, 5
  %78 = add i32 %77, 528
  %79 = load ptr, ptr %4, align 8
  %80 = getelementptr i8, ptr %79, i32 %78
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !8
  %82 = and i32 %81, 12582912
  %83 = icmp eq i32 %82, 8388608
  br i1 %83, label %84, label %93, !prof !12

84:                                               ; preds = %72
  %85 = load i32, ptr %14, align 4
  %86 = xor i32 %85, -1
  %87 = add i32 %74, %86
  %88 = tail call i32 @can_get_echo_skb(ptr noundef %1, i32 noundef %87, ptr noundef null) #7
  %89 = load i32, ptr %53, align 4
  %90 = add i32 %89, %88
  store i32 %90, ptr %53, align 4
  %91 = load i32, ptr %54, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %54, align 4
  br label %93

93:                                               ; preds = %84, %72
  %94 = load i32, ptr %48, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %48, align 4
  %96 = load i32, ptr %47, align 8
  %97 = icmp eq i32 %96, %95
  %98 = load i32, ptr %35, align 4
  br i1 %97, label %99, label %62

99:                                               ; preds = %93, %62, %52, %46
  %100 = phi i32 [ %36, %46 ], [ %36, %52 ], [ %98, %93 ], [ %98, %62 ]
  %101 = phi i32 [ %49, %46 ], [ %49, %52 ], [ %96, %62 ], [ %95, %93 ]
  %102 = phi i32 [ %49, %46 ], [ %50, %52 ], [ %95, %93 ], [ %95, %62 ]
  %103 = shl nsw i32 -1, %100
  %104 = xor i32 %103, -1
  %105 = shl i32 15, %100
  %106 = or i32 %105, %104
  %107 = and i32 %106, %101
  %108 = icmp ne i32 %107, 0
  %109 = and i32 %106, %102
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %108, i1 true, i1 %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %99
  %113 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %114 = load ptr, ptr %113, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %114) #7
  br label %115

115:                                              ; preds = %112, %99, %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !9
  %116 = getelementptr i8, ptr %1, i32 1916
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  %119 = load ptr, ptr %4, align 8
  br i1 %118, label %120, label %135

120:                                              ; preds = %115
  %121 = getelementptr i8, ptr %119, i32 16
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #7, !srcloc !8
  %123 = and i32 %122, 524288
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %152, !prof !12

125:                                              ; preds = %120
  %126 = and i32 %122, 262144
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %152, !prof !12

128:                                              ; preds = %125
  %129 = and i32 %122, 131072
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %152, !prof !12

131:                                              ; preds = %128
  %132 = and i32 %122, 65536
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %152, !prof !10

134:                                              ; preds = %131
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #8
  br label %236

135:                                              ; preds = %115
  %136 = getelementptr i8, ptr %119, i32 32
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #7, !srcloc !8
  %138 = trunc i32 %137 to i16
  %139 = and i16 %138, 255
  %140 = lshr i32 %137, 16
  %141 = trunc i32 %140 to i16
  %142 = icmp ult i16 %141, 96
  %143 = icmp ult i16 %139, 96
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %152, label %145

145:                                              ; preds = %135
  %146 = icmp ult i16 %141, 128
  %147 = icmp ult i16 %139, 128
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = icmp ult i16 %141, 256
  %151 = select i1 %150, i32 2, i32 3
  br label %152

152:                                              ; preds = %149, %145, %135, %131, %128, %125, %120
  %153 = phi i32 [ 3, %120 ], [ 2, %125 ], [ 1, %128 ], [ 0, %131 ], [ 0, %135 ], [ 1, %145 ], [ %151, %149 ]
  %154 = getelementptr i8, ptr %1, i32 1576
  %155 = load i32, ptr %154, align 8
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %236, label %157, !prof !12

157:                                              ; preds = %152
  %158 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %3) #7
  %159 = icmp eq ptr %158, null
  br i1 %159, label %236, label %160, !prof !10

160:                                              ; preds = %157
  %161 = load ptr, ptr %3, align 4
  %162 = load ptr, ptr %4, align 8
  %163 = getelementptr i8, ptr %162, i32 32
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #7, !srcloc !8
  %165 = trunc i32 %164 to i16
  %166 = and i16 %165, 255
  %167 = lshr i32 %164, 16
  %168 = trunc i32 %167 to i16
  %169 = load i32, ptr %154, align 8
  switch i32 %169, label %204 [
    i32 0, label %170
    i32 1, label %182
    i32 3, label %194
  ]

170:                                              ; preds = %160
  %171 = add nsw i32 %153, -1
  %172 = icmp ult i32 %171, 3
  br i1 %172, label %173, label %205

173:                                              ; preds = %170
  %174 = getelementptr i8, ptr %1, i32 1416
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %175, 1
  store i32 %176, ptr %174, align 4
  %177 = load i32, ptr %161, align 8
  %178 = or i32 %177, 4
  store i32 %178, ptr %161, align 8
  %179 = icmp ult i16 %166, %168
  %180 = select i1 %179, i8 8, i8 4
  %181 = getelementptr %struct.can_frame, ptr %161, i32 0, i32 5, i32 1
  store i8 %180, ptr %181, align 1
  br label %182

182:                                              ; preds = %173, %160
  %183 = and i32 %153, 2
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %204, label %185

185:                                              ; preds = %182
  %186 = getelementptr i8, ptr %1, i32 1420
  %187 = load i32, ptr %186, align 4
  %188 = add i32 %187, 1
  store i32 %188, ptr %186, align 4
  %189 = load i32, ptr %161, align 8
  %190 = or i32 %189, 4
  store i32 %190, ptr %161, align 8
  %191 = icmp ult i16 %166, %168
  %192 = select i1 %191, i8 32, i8 16
  %193 = getelementptr %struct.can_frame, ptr %161, i32 0, i32 5, i32 1
  store i8 %192, ptr %193, align 1
  br label %204

194:                                              ; preds = %160
  %195 = icmp eq i32 %153, 3
  br i1 %195, label %210, label %196

196:                                              ; preds = %194
  %197 = load i32, ptr %161, align 8
  %198 = or i32 %197, 256
  store i32 %198, ptr %161, align 8
  %199 = getelementptr i8, ptr %1, i32 1432
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 4
  call void @netif_carrier_on(ptr noundef %1) #7
  %202 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %203 = load ptr, ptr %202, align 64
  call void @netif_tx_wake_queue(ptr noundef %203) #7
  br label %204

204:                                              ; preds = %196, %185, %182, %160
  switch i32 %153, label %226 [
    i32 0, label %205
    i32 1, label %227
    i32 2, label %209
    i32 3, label %210
  ]

205:                                              ; preds = %204, %170
  %206 = load i32, ptr %161, align 8
  %207 = or i32 %206, 8
  store i32 %207, ptr %161, align 8
  %208 = getelementptr %struct.can_frame, ptr %161, i32 0, i32 5, i32 2
  store i8 64, ptr %208, align 2
  br label %227

209:                                              ; preds = %204
  br label %227

210:                                              ; preds = %204, %194
  %211 = load i32, ptr %161, align 8
  %212 = or i32 %211, 64
  store i32 %212, ptr %161, align 8
  call void @netif_carrier_off(ptr noundef %1) #7
  %213 = getelementptr i8, ptr %1, i32 1424
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, 1
  store i32 %215, ptr %213, align 4
  %216 = getelementptr i8, ptr %1, i32 1588
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %210
  %220 = load ptr, ptr %4, align 8
  %221 = getelementptr i8, ptr %220, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 536870911) #7, !srcloc !11
  %222 = load ptr, ptr %4, align 8
  %223 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #7, !srcloc !8
  %224 = and i32 %223, -2
  %225 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %224) #7, !srcloc !11
  store i32 3, ptr %154, align 8
  br label %234

226:                                              ; preds = %204
  unreachable

227:                                              ; preds = %210, %209, %205, %204
  %228 = phi i32 [ 983040, %210 ], [ 458752, %209 ], [ 720896, %205 ], [ 720896, %204 ]
  %229 = phi i32 [ 0, %210 ], [ 524288, %209 ], [ 262144, %205 ], [ 262144, %204 ]
  %230 = load ptr, ptr %4, align 8
  %231 = getelementptr i8, ptr %230, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %228) #7, !srcloc !11
  %232 = load ptr, ptr %4, align 8
  %233 = getelementptr i8, ptr %232, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %229) #7, !srcloc !11
  br label %234

234:                                              ; preds = %227, %219
  %235 = call i32 @netif_rx(ptr noundef nonnull %158) #7
  store i32 %153, ptr %154, align 8
  br label %236

236:                                              ; preds = %234, %157, %152, %134
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %237

237:                                              ; preds = %236, %2
  %238 = phi i32 [ 1, %236 ], [ 0, %2 ]
  ret i32 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_chip_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1880
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 536870911) #7, !srcloc !11
  %5 = load ptr, ptr %2, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  %7 = and i32 %6, -2
  %8 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #7, !srcloc !11
  %9 = getelementptr i8, ptr %0, i32 1580
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 22
  %12 = and i32 %11, 16777216
  %13 = getelementptr i8, ptr %0, i32 1472
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 16
  %16 = add i32 %15, -65536
  %17 = or i32 %16, %12
  %18 = getelementptr i8, ptr %0, i32 1468
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 12
  %21 = add i32 %20, -4096
  %22 = or i32 %17, %21
  %23 = getelementptr i8, ptr %0, i32 1456
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 8
  %26 = add i32 %25, -256
  %27 = or i32 %22, %26
  %28 = getelementptr i8, ptr %0, i32 1460
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 4
  %31 = add i32 %30, -16
  %32 = or i32 %27, %31
  %33 = getelementptr i8, ptr %0, i32 1464
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  %36 = or i32 %32, %35
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %36) #8
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #7, !srcloc !11
  %39 = getelementptr i8, ptr %0, i32 1928
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 536870911
  %42 = or i32 %41, 536870912
  %43 = shl i32 %40, 18
  %44 = and i32 %43, 536608768
  %45 = icmp slt i32 %40, 0
  %46 = select i1 %45, i32 %42, i32 %44
  %47 = getelementptr i8, ptr %0, i32 1900
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %55, %1
  %51 = phi i32 [ 0, %1 ], [ %68, %55 ]
  %52 = getelementptr i8, ptr %0, i32 1908
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %51, %53
  br i1 %54, label %70, label %79

55:                                               ; preds = %55, %1
  %56 = phi i32 [ %67, %55 ], [ 0, %1 ]
  %57 = shl i32 %56, 5
  %58 = add i32 %57, 512
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr i8, ptr %59, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #7, !srcloc !11
  %61 = add i32 %57, 520
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr i8, ptr %62, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %46) #7, !srcloc !11
  %64 = add i32 %57, 540
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr i8, ptr %65, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #7, !srcloc !11
  %67 = add nuw i32 %56, 1
  %68 = load i32, ptr %47, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %55, label %50

70:                                               ; preds = %70, %50
  %71 = phi i32 [ %76, %70 ], [ %51, %50 ]
  %72 = shl i32 %71, 5
  %73 = add i32 %72, 512
  %74 = load ptr, ptr %2, align 8
  %75 = getelementptr i8, ptr %74, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 16777216) #7, !srcloc !11
  %76 = add nuw i32 %71, 1
  %77 = load i32, ptr %52, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %70, label %79

79:                                               ; preds = %70, %50
  %80 = phi i32 [ %53, %50 ], [ %77, %70 ]
  %81 = shl i32 %80, 5
  %82 = add i32 %81, 512
  %83 = load ptr, ptr %2, align 8
  %84 = getelementptr i8, ptr %83, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 33554432) #7, !srcloc !11
  %85 = load i32, ptr %47, align 4
  %86 = load i32, ptr %52, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %97, %79
  %89 = phi i32 [ %86, %79 ], [ %107, %97 ]
  %90 = getelementptr i8, ptr %0, i32 1912
  %91 = load i32, ptr %90, align 4
  %92 = shl nuw i32 1, %91
  %93 = add i32 %92, %89
  %94 = icmp ult i32 %89, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %88
  %96 = add nuw i32 %89, 1
  br label %109

97:                                               ; preds = %97, %79
  %98 = phi i32 [ %106, %97 ], [ %85, %79 ]
  %99 = shl i32 %98, 5
  %100 = add i32 %99, 516
  %101 = load ptr, ptr %2, align 8
  %102 = getelementptr i8, ptr %101, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 0) #7, !srcloc !11
  %103 = add i32 %99, 520
  %104 = load ptr, ptr %2, align 8
  %105 = getelementptr i8, ptr %104, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 536870912) #7, !srcloc !11
  %106 = add i32 %98, 1
  %107 = load i32, ptr %52, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %88, label %97

109:                                              ; preds = %109, %95
  %110 = phi i32 [ %115, %109 ], [ %96, %95 ]
  %111 = shl i32 %110, 5
  %112 = add i32 %111, 512
  %113 = load ptr, ptr %2, align 8
  %114 = getelementptr i8, ptr %113, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 50331648) #7, !srcloc !11
  %115 = add i32 %110, 1
  %116 = load i32, ptr %52, align 4
  %117 = load i32, ptr %90, align 4
  %118 = shl nuw i32 1, %117
  %119 = add i32 %118, %116
  %120 = icmp ugt i32 %115, %119
  br i1 %120, label %121, label %109

121:                                              ; preds = %109, %88
  %122 = getelementptr i8, ptr %0, i32 1892
  store i32 0, ptr %122, align 4
  %123 = getelementptr i8, ptr %0, i32 1888
  store i32 0, ptr %123, align 8
  %124 = load i32, ptr %47, align 4
  %125 = getelementptr i8, ptr %0, i32 1896
  store i32 %124, ptr %125, align 8
  %126 = load i32, ptr %9, align 4
  %127 = and i32 %126, 2
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, i32 1, i32 5
  %130 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %129) #7, !srcloc !11
  %131 = getelementptr i8, ptr %0, i32 1576
  store i32 0, ptr %131, align 8
  %132 = load i32, ptr %52, align 4
  %133 = add i32 %132, 1
  %134 = shl nsw i32 -1, %133
  %135 = xor i32 %134, -1
  %136 = load i32, ptr %47, align 4
  %137 = shl nsw i32 -1, %136
  %138 = and i32 %137, %135
  %139 = or i32 %138, 520355840
  %140 = load ptr, ptr %2, align 8
  %141 = getelementptr i8, ptr %140, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 536870911) #7, !srcloc !11
  %142 = load ptr, ptr %2, align 8
  %143 = getelementptr i8, ptr %142, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %139) #7, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb0_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1240
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, -1
  %7 = select i1 %6, ptr @.str.14, ptr @.str.13
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull %7, i32 noundef %5) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb0_id_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  tail call void @rtnl_lock() #7
  %6 = getelementptr i8, ptr %0, i32 -584
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, i32 -1610612737, i32 2047
  %17 = and i32 %16, %14
  store i32 %17, ptr %5, align 4
  %18 = getelementptr i8, ptr %0, i32 1240
  store i32 %17, ptr %18, align 8
  br label %19

19:                                               ; preds = %13, %10, %4
  %20 = phi i32 [ %3, %13 ], [ -16, %4 ], [ %11, %10 ]
  call void @rtnl_unlock() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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
!8 = !{i64 4832495}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 4832077}
!12 = !{!"branch_weights", i32 2000, i32 1}
