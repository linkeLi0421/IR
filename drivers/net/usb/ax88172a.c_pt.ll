; ModuleID = '/llk/IR/drivers/net/usb/ax88172a.c_pt.bc'
source_filename = "../drivers/net/usb/ax88172a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.111, i32 }
%union.anon.111 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.91, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.91 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
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
%struct.ax88172a_private = type { ptr, ptr, [20 x i8], i16, i16, i32, %struct.asix_rx_fixup_info }
%struct.asix_rx_fixup_info = type { ptr, i32, i16, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }

@.str = private unnamed_addr constant [31 x i8] c"ASIX AX88172A USB 2.0 Ethernet\00", align 1
@ax88172a_info = dso_local local_unnamed_addr constant %struct.driver_info { ptr @.str, i32 10336, ptr @ax88172a_bind, ptr @ax88172a_unbind, ptr @ax88172a_reset, ptr @ax88172a_stop, ptr null, ptr null, ptr @ax88172a_status, ptr null, ptr @ax88172a_rx_fixup, ptr @asix_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read MAC address: %d\0A\00", align 1
@ax88172a_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @asix_set_multicast, ptr @asix_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ax88172a_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @asix_get_drvinfo, ptr null, ptr null, ptr @asix_get_wol, ptr @asix_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @usbnet_get_link, ptr null, ptr @asix_get_eeprom_len, ptr @asix_get_eeprom, ptr @asix_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Failed to read software interface selection register: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Interface mode not supported by driver\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not allocate MDIO bus\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Asix MDIO Bus\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"usb-%03d:%03d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Could not register MDIO bus\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"registered mdio bus %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"deregistering mdio bus %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Write IPG,IPG1,IPG2 failed: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Could not connect to PHY device %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Connected to phy %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Disconnecting from phy %s\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88172a_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %4 = tail call i32 @usbnet_get_endpoints(ptr noundef %0, ptr noundef %1) #9
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 48) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %94, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  store ptr %6, ptr %9, align 4
  %10 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 19, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef nonnull %3, i32 noundef 0) #9
  %11 = icmp slt i32 %10, 6
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  br i1 %11, label %14, label %15

14:                                               ; preds = %8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef %10) #11
  br label %92

15:                                               ; preds = %8
  call void @dev_addr_mod(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #9
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 16
  store ptr @ax88172a_netdev_ops, ptr %17, align 8
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 42
  store ptr @ax88172a_ethtool_ops, ptr %19, align 8
  %20 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %3, i32 noundef 0) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.2, i32 noundef %20) #11
  br label %92

24:                                               ; preds = %15
  %25 = load i8, ptr %3, align 1
  %26 = and i8 %25, 12
  %27 = zext i8 %26 to i32
  switch i32 %27, label %29 [
    i32 0, label %31
    i32 4, label %28
  ]

28:                                               ; preds = %24
  br label %31

29:                                               ; preds = %24
  %30 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.3) #11
  br label %92

31:                                               ; preds = %28, %24
  %32 = phi i32 [ 0, %28 ], [ 1, %24 ]
  %33 = phi i1 [ false, %28 ], [ true, %24 ]
  %34 = getelementptr inbounds %struct.ax88172a_private, ptr %6, i32 0, i32 5
  store i32 %32, ptr %34, align 8
  %35 = call i32 @asix_read_phy_addr(ptr noundef %0, i1 noundef zeroext %33) #9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %92, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ax88172a_private, ptr %6, i32 0, i32 5
  %39 = trunc i32 %35 to i16
  %40 = getelementptr inbounds %struct.ax88172a_private, ptr %6, i32 0, i32 3
  store i16 %39, ptr %40, align 4
  %41 = load i32, ptr %38, align 8
  %42 = call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 64, i32 noundef 0) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  call void @msleep(i32 noundef 150) #9
  %45 = call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 0) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  call void @msleep(i32 noundef 150) #9
  %48 = icmp eq i32 %41, 0
  %49 = select i1 %48, i8 64, i8 32
  %50 = call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext %49, i32 noundef 0) #9
  br label %51

51:                                               ; preds = %47, %44, %37
  %52 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.driver_info, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  store i32 2048, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %51
  %61 = load ptr, ptr %9, align 4
  %62 = call ptr @mdiobus_alloc_size(i32 noundef 0) #9
  store ptr %62, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %65, ptr noundef nonnull @.str.4) #11
  br label %92

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.mii_bus, ptr %62, i32 0, i32 3
  store ptr %0, ptr %67, align 8
  %68 = load ptr, ptr %61, align 4
  %69 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 4
  store ptr @asix_mdio_bus_read, ptr %69, align 4
  %70 = load ptr, ptr %61, align 4
  %71 = getelementptr inbounds %struct.mii_bus, ptr %70, i32 0, i32 5
  store ptr @asix_mdio_bus_write, ptr %71, align 8
  %72 = load ptr, ptr %61, align 4
  %73 = getelementptr inbounds %struct.mii_bus, ptr %72, i32 0, i32 1
  store ptr @.str.5, ptr %73, align 4
  %74 = load ptr, ptr %61, align 4
  %75 = getelementptr inbounds %struct.mii_bus, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr inbounds %struct.usb_device, ptr %76, i32 0, i32 12
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.usb_bus, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %76, align 8
  %82 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %75, i32 noundef 61, ptr noundef nonnull @.str.6, i32 noundef %80, i32 noundef %81) #9
  %83 = load ptr, ptr %61, align 4
  %84 = call i32 @__mdiobus_register(ptr noundef %83, ptr noundef null) #9
  %85 = icmp eq i32 %84, 0
  %86 = load ptr, ptr %12, align 4
  br i1 %85, label %89, label %87

87:                                               ; preds = %66
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %86, ptr noundef nonnull @.str.7) #11
  %88 = load ptr, ptr %61, align 4
  call void @mdiobus_free(ptr noundef %88) #9
  br label %92

89:                                               ; preds = %66
  %90 = load ptr, ptr %61, align 4
  %91 = getelementptr inbounds %struct.mii_bus, ptr %90, i32 0, i32 2
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %86, ptr noundef nonnull @.str.8, ptr noundef %91) #11
  br label %94

92:                                               ; preds = %87, %64, %31, %29, %22, %14
  %93 = phi i32 [ -5, %14 ], [ %20, %22 ], [ -524, %29 ], [ %35, %31 ], [ -12, %64 ], [ %84, %87 ]
  call void @kfree(ptr noundef nonnull %6) #9
  br label %94

94:                                               ; preds = %92, %89, %2
  %95 = phi i32 [ %93, %92 ], [ -12, %2 ], [ 0, %89 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #9
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88172a_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef %8) #11
  %9 = load ptr, ptr %4, align 4
  tail call void @mdiobus_unregister(ptr noundef %9) #9
  %10 = load ptr, ptr %4, align 4
  tail call void @mdiobus_free(ptr noundef %10) #9
  tail call void @kfree(ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88172a_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ax88172a_private, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 64, i32 noundef 0) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  tail call void @msleep(i32 noundef 150) #9
  %9 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 0) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  tail call void @msleep(i32 noundef 150) #9
  %12 = icmp eq i32 %5, 0
  %13 = select i1 %12, i8 64, i8 32
  %14 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext %13, i32 noundef 0) #9
  br label %15

15:                                               ; preds = %11, %8, %1
  tail call void @msleep(i32 noundef 150) #9
  %16 = tail call zeroext i16 @asix_read_rx_ctl(ptr noundef %0, i32 noundef 0) #9
  %17 = tail call i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 0) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %15
  %20 = tail call zeroext i16 @asix_read_rx_ctl(ptr noundef %0, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 150) #9
  %21 = tail call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 18, i16 noundef zeroext 29, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.10, i32 noundef %21) #11
  br label %59

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 2
  %28 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 72
  %31 = load ptr, ptr %30, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %27, ptr noundef align 1 dereferenceable(6) %31, i32 6, i1 false)
  %32 = tail call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %27, i32 noundef 0) #9
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %26
  %35 = tail call i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext 136, i32 noundef 0) #9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %34
  %38 = tail call zeroext i16 @asix_read_rx_ctl(ptr noundef %0, i32 noundef 0) #9
  %39 = tail call zeroext i16 @asix_read_medium_status(ptr noundef %0, i32 noundef 0) #9
  %40 = getelementptr inbounds %struct.ax88172a_private, ptr %3, i32 0, i32 2
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr inbounds %struct.mii_bus, ptr %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.ax88172a_private, ptr %3, i32 0, i32 3
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  %46 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %40, i32 noundef 20, ptr noundef nonnull @.str.11, ptr noundef %42, i32 noundef %45)
  %47 = load ptr, ptr %28, align 4
  %48 = tail call ptr @phy_connect(ptr noundef %47, ptr noundef %40, ptr noundef nonnull @ax88172a_adjust_link, i32 noundef 2) #9
  %49 = getelementptr inbounds %struct.ax88172a_private, ptr %3, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  %51 = load ptr, ptr %28, align 4
  br i1 %50, label %52, label %55

52:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.12, ptr noundef %40) #11
  %53 = load ptr, ptr %49, align 4
  %54 = ptrtoint ptr %53 to i32
  br label %59

55:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %51, ptr noundef nonnull @.str.13, ptr noundef %40) #11
  %56 = load ptr, ptr %49, align 4
  %57 = tail call i32 @genphy_resume(ptr noundef %56) #9
  %58 = load ptr, ptr %49, align 4
  tail call void @phy_start(ptr noundef %58) #9
  br label %59

59:                                               ; preds = %55, %52, %34, %26, %23, %15
  %60 = phi i32 [ 0, %55 ], [ %17, %15 ], [ %21, %23 ], [ %32, %26 ], [ %35, %34 ], [ %54, %52 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88172a_stop(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ax88172a_private, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ax88172a_private, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef %10) #11
  %11 = load ptr, ptr %4, align 4
  tail call void @phy_stop(ptr noundef %11) #9
  %12 = load ptr, ptr %4, align 4
  tail call void @phy_disconnect(ptr noundef %12) #9
  br label %13

13:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @ax88172a_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88172a_rx_fixup(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ax88172a_private, ptr %4, i32 0, i32 6
  %6 = tail call i32 @asix_rx_fixup_internal(ptr noundef %0, ptr noundef %1, ptr noundef %5) #9
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asix_tx_fixup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_read_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_read_phy_addr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_set_multicast(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_mac_address(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_get_drvinfo(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_get_wol(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_wol(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_get_eeprom_len(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_get_eeprom(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_eeprom(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_sw_reset(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_bus_read(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_bus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @asix_read_rx_ctl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_rx_ctl(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @asix_read_medium_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88172a_adjust_link(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1424
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 8192
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i16 820, i16 822
  %16 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 100
  %19 = and i16 %15, 310
  %20 = select i1 %18, i16 %15, i16 %19
  br label %21

21:                                               ; preds = %11, %1
  %22 = phi i16 [ 0, %1 ], [ %20, %11 ]
  %23 = getelementptr inbounds %struct.ax88172a_private, ptr %6, i32 0, i32 4
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %22, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @asix_write_medium_mode(ptr noundef %4, i16 noundef zeroext %22, i32 noundef 0) #9
  store i16 %22, ptr %23, align 2
  tail call void @phy_print_status(ptr noundef %3) #9
  br label %28

28:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_medium_mode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_rx_fixup_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
