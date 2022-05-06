; ModuleID = '/llk/IR/drivers/net/ethernet/intel/igb/igb_hwmon.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/igb_hwmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.igb_adapter = type { [128 x i32], ptr, ptr, i32, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x ptr], i32, [16 x ptr], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, ptr, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i32, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, i32, [12 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x ptr], i32, i32, i16, i16, i32, ptr, i32, i32, i32, ptr, ptr, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.120], [32 x i8], ptr, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, ptr, i32, [128 x i8], i32, i32, %struct.e1000_info, i16, %struct.hlist_head, %struct.hlist_head, i32, %struct.spinlock, [3 x i8], ptr, %struct.vf_mac_filter, ptr, [36 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.116, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.116 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igb_ring = type { ptr, ptr, ptr, ptr, %union.anon.109, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.113, %struct.xdp_rxq_info }
%union.anon.109 = type { ptr }
%union.anon.113 = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, %struct.igb_rx_queue_stats, %struct.u64_stats_sync }
%struct.igb_rx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.120 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.e1000_info = type { ptr, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.vf_mac_filter = type { %struct.list_head, i32, i8, [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.hwmon_buff = type { %struct.attribute_group, [2 x ptr], [13 x ptr], [12 x %struct.hwmon_attr], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_attr = type { %struct.device_attribute, ptr, ptr, [12 x i8] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@i350_sensor_info = internal global %struct.i2c_board_info { [20 x i8] c"i350bb\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 124, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to create new i2c device.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"temp%u_label\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"temp%u_input\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"temp%u_max\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"temp%u_crit\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"loc%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @igb_sysfs_exit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_sysfs_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 4, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %118, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  %7 = tail call i32 %3(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %118

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 34
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 516, i32 noundef 3520) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %118, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 76
  store ptr %13, ptr %16, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 4, i32 26
  br label %18

18:                                               ; preds = %95, %15
  %19 = phi i32 [ 0, %15 ], [ %96, %95 ]
  %20 = getelementptr [3 x %struct.e1000_thermal_diode_data], ptr %17, i32 0, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %19, 1
  br label %95

25:                                               ; preds = %18
  %26 = load ptr, ptr %16, align 8
  %27 = getelementptr inbounds %struct.hwmon_buff, ptr %26, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.hwmon_buff, ptr %26, i32 0, i32 3, i32 %28
  %30 = getelementptr inbounds %struct.device_attribute, ptr %29, i32 0, i32 1
  store ptr @igb_hwmon_show_cautionthresh, ptr %30, align 4
  %31 = getelementptr %struct.hwmon_buff, ptr %26, i32 0, i32 3, i32 %28, i32 3
  %32 = add nuw nsw i32 %19, 1
  %33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %31, i32 noundef 12, ptr noundef nonnull @.str.3, i32 noundef %32) #6
  %34 = getelementptr %struct.hwmon_buff, ptr %26, i32 0, i32 3, i32 %28, i32 2
  store ptr %20, ptr %34, align 4
  %35 = getelementptr %struct.hwmon_buff, ptr %26, i32 0, i32 3, i32 %28, i32 1
  store ptr %6, ptr %35, align 4
  %36 = getelementptr inbounds %struct.device_attribute, ptr %29, i32 0, i32 2
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.attribute, ptr %29, i32 0, i32 1
  store i16 292, ptr %37, align 4
  store ptr %31, ptr %29, align 4
  %38 = load ptr, ptr %16, align 8
  %39 = getelementptr %struct.hwmon_buff, ptr %38, i32 0, i32 2, i32 %28
  store ptr %29, ptr %39, align 4
  %40 = load ptr, ptr %16, align 8
  %41 = getelementptr inbounds %struct.hwmon_buff, ptr %40, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = load ptr, ptr %16, align 8
  %45 = getelementptr inbounds %struct.hwmon_buff, ptr %44, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.hwmon_buff, ptr %44, i32 0, i32 3, i32 %46
  %48 = getelementptr inbounds %struct.device_attribute, ptr %47, i32 0, i32 1
  store ptr @igb_hwmon_show_location, ptr %48, align 4
  %49 = getelementptr %struct.hwmon_buff, ptr %44, i32 0, i32 3, i32 %46, i32 3
  %50 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %49, i32 noundef 12, ptr noundef nonnull @.str.1, i32 noundef %32) #6
  %51 = getelementptr %struct.hwmon_buff, ptr %44, i32 0, i32 3, i32 %46, i32 2
  store ptr %20, ptr %51, align 4
  %52 = getelementptr %struct.hwmon_buff, ptr %44, i32 0, i32 3, i32 %46, i32 1
  store ptr %6, ptr %52, align 4
  %53 = getelementptr inbounds %struct.device_attribute, ptr %47, i32 0, i32 2
  store ptr null, ptr %53, align 4
  %54 = getelementptr inbounds %struct.attribute, ptr %47, i32 0, i32 1
  store i16 292, ptr %54, align 4
  store ptr %49, ptr %47, align 4
  %55 = load ptr, ptr %16, align 8
  %56 = getelementptr %struct.hwmon_buff, ptr %55, i32 0, i32 2, i32 %46
  store ptr %47, ptr %56, align 4
  %57 = load ptr, ptr %16, align 8
  %58 = getelementptr inbounds %struct.hwmon_buff, ptr %57, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4
  %61 = load ptr, ptr %16, align 8
  %62 = getelementptr inbounds %struct.hwmon_buff, ptr %61, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr %struct.hwmon_buff, ptr %61, i32 0, i32 3, i32 %63
  %65 = getelementptr inbounds %struct.device_attribute, ptr %64, i32 0, i32 1
  store ptr @igb_hwmon_show_temp, ptr %65, align 4
  %66 = getelementptr %struct.hwmon_buff, ptr %61, i32 0, i32 3, i32 %63, i32 3
  %67 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %66, i32 noundef 12, ptr noundef nonnull @.str.2, i32 noundef %32) #6
  %68 = getelementptr %struct.hwmon_buff, ptr %61, i32 0, i32 3, i32 %63, i32 2
  store ptr %20, ptr %68, align 4
  %69 = getelementptr %struct.hwmon_buff, ptr %61, i32 0, i32 3, i32 %63, i32 1
  store ptr %6, ptr %69, align 4
  %70 = getelementptr inbounds %struct.device_attribute, ptr %64, i32 0, i32 2
  store ptr null, ptr %70, align 4
  %71 = getelementptr inbounds %struct.attribute, ptr %64, i32 0, i32 1
  store i16 292, ptr %71, align 4
  store ptr %66, ptr %64, align 4
  %72 = load ptr, ptr %16, align 8
  %73 = getelementptr %struct.hwmon_buff, ptr %72, i32 0, i32 2, i32 %63
  store ptr %64, ptr %73, align 4
  %74 = load ptr, ptr %16, align 8
  %75 = getelementptr inbounds %struct.hwmon_buff, ptr %74, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4
  %78 = load ptr, ptr %16, align 8
  %79 = getelementptr inbounds %struct.hwmon_buff, ptr %78, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr %struct.hwmon_buff, ptr %78, i32 0, i32 3, i32 %80
  %82 = getelementptr inbounds %struct.device_attribute, ptr %81, i32 0, i32 1
  store ptr @igb_hwmon_show_maxopthresh, ptr %82, align 4
  %83 = getelementptr %struct.hwmon_buff, ptr %78, i32 0, i32 3, i32 %80, i32 3
  %84 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %83, i32 noundef 12, ptr noundef nonnull @.str.4, i32 noundef %32) #6
  %85 = getelementptr %struct.hwmon_buff, ptr %78, i32 0, i32 3, i32 %80, i32 2
  store ptr %20, ptr %85, align 4
  %86 = getelementptr %struct.hwmon_buff, ptr %78, i32 0, i32 3, i32 %80, i32 1
  store ptr %6, ptr %86, align 4
  %87 = getelementptr inbounds %struct.device_attribute, ptr %81, i32 0, i32 2
  store ptr null, ptr %87, align 4
  %88 = getelementptr inbounds %struct.attribute, ptr %81, i32 0, i32 1
  store i16 292, ptr %88, align 4
  store ptr %83, ptr %81, align 4
  %89 = load ptr, ptr %16, align 8
  %90 = getelementptr %struct.hwmon_buff, ptr %89, i32 0, i32 2, i32 %80
  store ptr %81, ptr %90, align 4
  %91 = load ptr, ptr %16, align 8
  %92 = getelementptr inbounds %struct.hwmon_buff, ptr %91, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %25, %23
  %96 = phi i32 [ %24, %23 ], [ %32, %25 ]
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %18

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 79
  %100 = tail call ptr @i2c_new_client_device(ptr noundef %99, ptr noundef nonnull @i350_sensor_info) #6
  %101 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load ptr, ptr %10, align 4
  %104 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str) #7
  %105 = ptrtoint ptr %100 to i32
  br label %118

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 80
  store ptr %100, ptr %107, align 8
  %108 = getelementptr inbounds %struct.hwmon_buff, ptr %13, i32 0, i32 1
  store ptr %13, ptr %108, align 4
  %109 = getelementptr inbounds %struct.hwmon_buff, ptr %13, i32 0, i32 2
  %110 = getelementptr inbounds %struct.attribute_group, ptr %13, i32 0, i32 3
  store ptr %109, ptr %110, align 4
  %111 = load ptr, ptr %10, align 4
  %112 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %113 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 2
  %114 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %112, ptr noundef %113, ptr noundef nonnull %13, ptr noundef %108) #6
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  %116 = ptrtoint ptr %114 to i32
  %117 = select i1 %115, i32 %116, i32 0
  br label %118

118:                                              ; preds = %106, %102, %9, %5, %1
  %119 = phi i32 [ 0, %1 ], [ %7, %5 ], [ %105, %102 ], [ -12, %9 ], [ %117, %106 ]
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_hwmon_show_location(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.hwmon_attr, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_hwmon_show_temp(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.hwmon_attr, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %5, i32 0, i32 4, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %5) #6
  %9 = getelementptr inbounds %struct.hwmon_attr, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.e1000_thermal_diode_data, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = mul nuw nsw i32 %13, 1000
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %14)
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_hwmon_show_cautionthresh(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.hwmon_attr, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.e1000_thermal_diode_data, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 1000
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_hwmon_show_maxopthresh(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.hwmon_attr, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.e1000_thermal_diode_data, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 1000
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
