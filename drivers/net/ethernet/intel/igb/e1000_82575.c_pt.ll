; ModuleID = '/llk/IR/drivers/net/ethernet/intel/igb/e1000_82575.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_82575.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_info = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.igb_adapter = type { [128 x i32], ptr, ptr, i32, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x ptr], i32, [16 x ptr], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, ptr, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i32, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, i32, [12 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x ptr], i32, i32, i16, i16, i32, ptr, i32, i32, i32, ptr, ptr, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.120], [32 x i8], ptr, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, ptr, i32, [128 x i8], i32, i32, %struct.e1000_info, i16, %struct.hlist_head, %struct.hlist_head, i32, %struct.spinlock, [3 x i8], ptr, %struct.vf_mac_filter, ptr, [36 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igb_ring = type { ptr, ptr, ptr, ptr, %union.anon.110, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.114, %struct.xdp_rxq_info }
%union.anon.110 = type { ptr }
%union.anon.114 = type { %struct.anon.116 }
%struct.anon.116 = type { ptr, %struct.igb_rx_queue_stats, %struct.u64_stats_sync }
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
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.vf_mac_filter = type { %struct.list_head, i32, i8, [6 x i8] }

@e1000_82580_rxpbs_table = internal unnamed_addr constant [11 x i16] [i16 36, i16 72, i16 144, i16 1, i16 2, i16 4, i16 8, i16 16, i16 35, i16 70, i16 140], align 2
@e1000_mac_ops_82575 = internal global %struct.e1000_mac_operations { ptr @igb_check_for_link_82575, ptr null, ptr @igb_init_hw_82575, ptr null, ptr null, ptr @igb_rar_set, ptr @igb_read_mac_addr_82575, ptr @igb_get_link_up_info_82575, ptr null, ptr null, ptr @igb_get_thermal_sensor_data_generic, ptr @igb_init_thermal_sensor_thresh_generic, ptr null }, align 4
@e1000_phy_ops_82575 = internal constant %struct.e1000_phy_operations { ptr @igb_acquire_phy_82575, ptr null, ptr null, ptr null, ptr @igb_get_cfg_done_82575, ptr null, ptr null, ptr null, ptr @igb_release_phy_82575, ptr null, ptr null, ptr null, ptr null, ptr @igb_read_i2c_byte, ptr @igb_write_i2c_byte }, align 4
@e1000_nvm_ops_82575 = internal global %struct.e1000_nvm_operations { ptr @igb_acquire_nvm_82575, ptr @igb_read_nvm_eerd, ptr @igb_release_nvm_82575, ptr @igb_write_nvm_spi, ptr null, ptr null, ptr null }, align 4
@e1000_82575_info = dso_local local_unnamed_addr constant %struct.e1000_info { ptr @igb_get_invariants_82575, ptr @e1000_mac_ops_82575, ptr @e1000_phy_ops_82575, ptr @e1000_nvm_ops_82575 }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@e1000_emc_temp_data = internal unnamed_addr constant [4 x i8] c"\00\01#*", align 1
@e1000_emc_therm_limit = internal unnamed_addr constant [4 x i8] c" \19\1A0", align 1
@switch.table.igb_get_invariants_82575.1 = private unnamed_addr constant [3 x ptr] [ptr @igb_validate_nvm_checksum_82580, ptr @igb_validate_nvm_checksum_i350, ptr @igb_validate_nvm_checksum_i350], align 4
@switch.table.igb_get_invariants_82575.2 = private unnamed_addr constant [3 x ptr] [ptr @igb_update_nvm_checksum_82580, ptr @igb_update_nvm_checksum_i350, ptr @igb_update_nvm_checksum_i350], align 4
@switch.table.igb_get_invariants_82575.5 = private unnamed_addr constant [7 x i32] [i32 32, i32 32, i32 3588, i32 3588, i32 3588, i32 3588, i32 3588], align 4
@switch.table.igb_get_cfg_done_82575 = private unnamed_addr constant [3 x i32] [i32 524288, i32 1048576, i32 2097152], align 4
@switch.table.igb_release_phy_82575 = private unnamed_addr constant [3 x i16] [i16 4, i16 32, i16 64], align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_power_up_serdes_link_82575(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5, %1
  %10 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16896) #6
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !9

14:                                               ; preds = %9
  %15 = or i32 %10, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %16 = getelementptr i8, ptr %12, i32 16896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #6, !srcloc !11
  br label %17

17:                                               ; preds = %14, %9
  %18 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 24) #6
  %19 = load volatile ptr, ptr %11, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !9

21:                                               ; preds = %17
  %22 = and i32 %18, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %23 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #6, !srcloc !11
  br label %24

24:                                               ; preds = %21, %17
  %25 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %26

26:                                               ; preds = %24, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_shutdown_serdes_link_82575(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5, %1
  %10 = tail call zeroext i1 @igb_enable_mng_pass_thru(ptr noundef %0) #6
  br i1 %10, label %28, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16896) #6
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !9

16:                                               ; preds = %11
  %17 = and i32 %12, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %18 = getelementptr i8, ptr %14, i32 16896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #6, !srcloc !11
  br label %19

19:                                               ; preds = %16, %11
  %20 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 24) #6
  %21 = load volatile ptr, ptr %13, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !9

23:                                               ; preds = %19
  %24 = or i32 %20, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %25 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #6, !srcloc !11
  br label %26

26:                                               ; preds = %23, %19
  %27 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %28

28:                                               ; preds = %26, %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igb_enable_mng_pass_thru(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_power_down_phy_copper_82575(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @igb_enable_mng_pass_thru(ptr noundef %0) #6
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @igb_check_reset_block(ptr noundef %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @igb_power_down_phy_copper(ptr noundef %0) #6
  br label %7

7:                                                ; preds = %6, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_reset_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_power_down_phy_copper(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_rx_fifo_flush_82575(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 20488) #6
  %3 = or i32 %2, 65536
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !9

7:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %8 = getelementptr i8, ptr %5, i32 20488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %3) #6, !srcloc !11
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %127

13:                                               ; preds = %9
  %14 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 22560) #6
  %15 = and i32 %14, 131072
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %127, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 10280) #6
  %19 = load volatile ptr, ptr %4, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !9

21:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %22 = and i32 %18, -33554433
  %23 = getelementptr i8, ptr %19, i32 10280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #6, !srcloc !11
  br label %24

24:                                               ; preds = %21, %17
  %25 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 10536) #6
  %26 = load volatile ptr, ptr %4, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !9

28:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %29 = and i32 %25, -33554433
  %30 = getelementptr i8, ptr %26, i32 10536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #6, !srcloc !11
  br label %31

31:                                               ; preds = %28, %24
  %32 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 10792) #6
  %33 = load volatile ptr, ptr %4, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35, !prof !9

35:                                               ; preds = %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %36 = and i32 %32, -33554433
  %37 = getelementptr i8, ptr %33, i32 10792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #6, !srcloc !11
  br label %38

38:                                               ; preds = %35, %31
  %39 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 11048) #6
  %40 = load volatile ptr, ptr %4, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42, !prof !9

42:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %43 = and i32 %39, -33554433
  %44 = getelementptr i8, ptr %40, i32 11048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %43) #6, !srcloc !11
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %46, %45
  %47 = phi i32 [ %57, %46 ], [ 0, %45 ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %48 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 10280) #6
  %49 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 10536) #6
  %50 = or i32 %49, %48
  %51 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 10792) #6
  %52 = or i32 %51, %50
  %53 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 11048) #6
  %54 = or i32 %53, %52
  %55 = and i32 %54, 33554432
  %56 = icmp eq i32 %55, 0
  %57 = add nuw nsw i32 %47, 1
  %58 = icmp eq i32 %57, 10
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %60, label %46

60:                                               ; preds = %46
  %61 = load volatile ptr, ptr %4, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63, !prof !9

63:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %64 = and i32 %3, -262145
  %65 = getelementptr i8, ptr %61, i32 20488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %64) #6, !srcloc !11
  br label %66

66:                                               ; preds = %63, %60
  %67 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 20484) #6
  %68 = load volatile ptr, ptr %4, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70, !prof !9

70:                                               ; preds = %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %71 = getelementptr i8, ptr %68, i32 20484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 0) #6, !srcloc !11
  br label %72

72:                                               ; preds = %70, %66
  %73 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 256) #6
  %74 = and i32 %73, -39
  %75 = load volatile ptr, ptr %4, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77, !prof !9

77:                                               ; preds = %72
  %78 = or i32 %74, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %79 = getelementptr i8, ptr %75, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %78) #6, !srcloc !11
  br label %80

80:                                               ; preds = %77, %72
  %81 = load volatile ptr, ptr %4, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83, !prof !9

83:                                               ; preds = %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %84 = or i32 %74, 34
  %85 = getelementptr i8, ptr %81, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %84) #6, !srcloc !11
  br label %86

86:                                               ; preds = %83, %80
  %87 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  %88 = load volatile ptr, ptr %4, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90, !prof !9

90:                                               ; preds = %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %91 = getelementptr i8, ptr %88, i32 10280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %18) #6, !srcloc !11
  br label %92

92:                                               ; preds = %90, %86
  %93 = load volatile ptr, ptr %4, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95, !prof !9

95:                                               ; preds = %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %96 = getelementptr i8, ptr %93, i32 10536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %25) #6, !srcloc !11
  br label %97

97:                                               ; preds = %95, %92
  %98 = load volatile ptr, ptr %4, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100, !prof !9

100:                                              ; preds = %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %101 = getelementptr i8, ptr %98, i32 10792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %32) #6, !srcloc !11
  br label %102

102:                                              ; preds = %100, %97
  %103 = load volatile ptr, ptr %4, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105, !prof !9

105:                                              ; preds = %102
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %106 = getelementptr i8, ptr %103, i32 11048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %39) #6, !srcloc !11
  br label %107

107:                                              ; preds = %105, %102
  %108 = load volatile ptr, ptr %4, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110, !prof !9

110:                                              ; preds = %107
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %111 = getelementptr i8, ptr %108, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %73) #6, !srcloc !11
  br label %112

112:                                              ; preds = %110, %107
  %113 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %114 = load volatile ptr, ptr %4, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116, !prof !9

116:                                              ; preds = %112
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %117 = getelementptr i8, ptr %114, i32 20484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %67) #6, !srcloc !11
  br label %118

118:                                              ; preds = %116, %112
  %119 = load volatile ptr, ptr %4, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121, !prof !9

121:                                              ; preds = %118
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %122 = getelementptr i8, ptr %119, i32 20488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %3) #6, !srcloc !11
  br label %123

123:                                              ; preds = %121, %118
  %124 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16556) #6
  %125 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16544) #6
  %126 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16400) #6
  br label %127

127:                                              ; preds = %123, %13, %9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_vmdq_set_anti_spoofing_pf(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %26 [
    i32 2, label %7
    i32 4, label %6
    i32 5, label %6
  ]

6:                                                ; preds = %3, %3
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ 23244, %6 ], [ 13568, %3 ]
  %9 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %8) #6
  br i1 %1, label %10, label %17

10:                                               ; preds = %7
  %11 = or i32 %9, 65535
  %12 = shl nuw i32 1, %2
  %13 = add i32 %2, 8
  %14 = shl nuw i32 1, %13
  %15 = or i32 %14, %12
  %16 = xor i32 %11, %15
  br label %19

17:                                               ; preds = %7
  %18 = and i32 %9, -65536
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i32 [ %16, %10 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !9

24:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %25 = getelementptr i8, ptr %22, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #6, !srcloc !11
  br label %26

26:                                               ; preds = %24, %19, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_vmdq_set_loopback_pf(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %25 [
    i32 2, label %5
    i32 5, label %15
    i32 4, label %15
  ]

5:                                                ; preds = %2
  %6 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 13568) #6
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10, !prof !9

10:                                               ; preds = %5
  %11 = and i32 %6, 2147483647
  %12 = select i1 %1, i32 -2147483648, i32 0
  %13 = or i32 %11, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %14 = getelementptr i8, ptr %8, i32 13568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #6, !srcloc !11
  br label %25

15:                                               ; preds = %2, %2
  %16 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23244) #6
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20, !prof !9

20:                                               ; preds = %15
  %21 = and i32 %16, 2147483647
  %22 = select i1 %1, i32 -2147483648, i32 0
  %23 = or i32 %21, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %24 = getelementptr i8, ptr %18, i32 23244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #6, !srcloc !11
  br label %25

25:                                               ; preds = %20, %15, %10, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_vmdq_set_replication_pf(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 22556) #6
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !9

7:                                                ; preds = %2
  %8 = and i32 %3, -1073741825
  %9 = select i1 %1, i32 1073741824, i32 0
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %11 = getelementptr i8, ptr %5, i32 22556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #6, !srcloc !11
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_phy_reg_82580(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = tail call i32 @igb_read_phy_reg_mdic(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #6
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %6, %3 ], [ %9, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_phy_reg_mdic(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_write_phy_reg_82580(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = tail call i32 @igb_write_phy_reg_mdic(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #6
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #6
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %6, %3 ], [ %9, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_phy_reg_mdic(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @igb_rxpbs_adjust_82580(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp ult i32 %0, 11
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr [11 x i16], ptr @e1000_82580_rxpbs_table, i32 0, i32 %0
  %5 = load i16, ptr %4, align 2
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i16 [ %5, %3 ], [ 0, %1 ]
  ret i16 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_emi_reg(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %1) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef 17, ptr noundef %2) #6
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ %6, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_set_eee_i350(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3640) #6
  %13 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3632) #6
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 2
  %15 = load i8, ptr %14, align 2, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3636) #6
  %19 = and i32 %12, -13
  %20 = select i1 %2, i32 4, i32 0
  %21 = select i1 %1, i32 8, i32 0
  %22 = or i32 %20, %21
  %23 = or i32 %22, %19
  %24 = or i32 %13, 458752
  br label %28

25:                                               ; preds = %11
  %26 = and i32 %12, -13
  %27 = and i32 %13, -458753
  br label %28

28:                                               ; preds = %25, %17
  %29 = phi i32 [ %27, %25 ], [ %24, %17 ]
  %30 = phi i32 [ %26, %25 ], [ %23, %17 ]
  %31 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !9

34:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %35 = getelementptr i8, ptr %32, i32 3640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %30) #6, !srcloc !11
  br label %36

36:                                               ; preds = %34, %28
  %37 = load volatile ptr, ptr %31, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !9

39:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %40 = getelementptr i8, ptr %37, i32 3632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %29) #6, !srcloc !11
  br label %41

41:                                               ; preds = %39, %36
  %42 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3640) #6
  %43 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3632) #6
  br label %44

44:                                               ; preds = %41, %7, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_set_eee_i354(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !31
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %54

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %54 [
    i32 21040800, label %11
    i32 21040592, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 2
  %13 = load i8, ptr %12, align 2, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 18) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = load i16, ptr %4, align 2
  %27 = or i16 %26, 1
  store i16 %27, ptr %4, align 2
  %28 = load ptr, ptr %16, align 4
  %29 = call i32 %28(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %27) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load ptr, ptr %16, align 4
  %33 = call i32 %32(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 0) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = call i32 @igb_read_xmdio_reg(ptr noundef %0, i16 noundef zeroext 60, i8 noundef zeroext 7, ptr noundef nonnull %4) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i16, ptr %4, align 2
  %40 = and i16 %39, -7
  %41 = select i1 %2, i16 2, i16 0
  %42 = select i1 %1, i16 4, i16 0
  %43 = or i16 %41, %42
  %44 = or i16 %43, %40
  br label %51

45:                                               ; preds = %11
  %46 = call i32 @igb_read_xmdio_reg(ptr noundef %0, i16 noundef zeroext 60, i8 noundef zeroext 7, ptr noundef nonnull %4) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i16, ptr %4, align 2
  %50 = and i16 %49, -7
  br label %51

51:                                               ; preds = %48, %38
  %52 = phi i16 [ %50, %48 ], [ %44, %38 ]
  store i16 %52, ptr %4, align 2
  %53 = call i32 @igb_write_xmdio_reg(ptr noundef %0, i16 noundef zeroext 60, i8 noundef zeroext 7, i16 noundef zeroext %52) #6
  br label %54

54:                                               ; preds = %51, %45, %35, %31, %25, %20, %15, %8, %3
  %55 = phi i32 [ 0, %3 ], [ %46, %45 ], [ %18, %15 ], [ %23, %20 ], [ %29, %25 ], [ %33, %31 ], [ %36, %35 ], [ 0, %8 ], [ %53, %51 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_xmdio_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_xmdio_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_eee_status_i354(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %18 [
    i32 21040800, label %10
    i32 21040592, label %10
  ]

10:                                               ; preds = %7, %7
  %11 = call i32 @igb_read_xmdio_reg(ptr noundef %0, i16 noundef zeroext 1, i8 noundef zeroext 3, ptr noundef nonnull %3) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i16, ptr %3, align 2
  %15 = and i16 %14, 3072
  %16 = icmp ne i16 %15, 0
  %17 = zext i1 %16 to i8
  store i8 %17, ptr %1, align 1
  br label %18

18:                                               ; preds = %13, %10, %7, %2
  %19 = phi i32 [ 0, %2 ], [ %11, %10 ], [ 0, %13 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_invariants_82575(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 12
  %8 = load i16, ptr %7, align 2
  switch i16 %8, label %445 [
    i16 4263, label %15
    i16 4265, label %15
    i16 4310, label %15
    i16 4297, label %9
    i16 5386, label %9
    i16 5400, label %9
    i16 4326, label %9
    i16 4327, label %9
    i16 4328, label %9
    i16 5414, label %9
    i16 5389, label %9
    i16 5390, label %10
    i16 5391, label %10
    i16 5415, label %10
    i16 5392, label %10
    i16 5393, label %10
    i16 5398, label %10
    i16 1080, label %10
    i16 1082, label %10
    i16 1084, label %10
    i16 1088, label %10
    i16 5409, label %11
    i16 5410, label %11
    i16 5411, label %11
    i16 5412, label %11
    i16 5427, label %12
    i16 5430, label %12
    i16 5431, label %12
    i16 5432, label %12
    i16 5499, label %12
    i16 5500, label %12
    i16 5433, label %13
    i16 8000, label %14
    i16 8001, label %14
    i16 8005, label %14
  ]

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  br label %15

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %15

11:                                               ; preds = %1, %1, %1, %1
  br label %15

12:                                               ; preds = %1, %1, %1, %1, %1, %1
  br label %15

13:                                               ; preds = %1
  br label %15

14:                                               ; preds = %1, %1, %1
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %1, %1, %1
  %16 = phi i32 [ 5, %14 ], [ 7, %13 ], [ 6, %12 ], [ 4, %11 ], [ 3, %10 ], [ 2, %9 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  store i32 1, ptr %18, align 4
  store i8 0, ptr %6, align 1
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 5
  store i8 0, ptr %19, align 1
  %20 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 24) #6
  %21 = and i32 %20, 12582912
  switch i32 %21, label %102 [
    i32 4194304, label %22
    i32 8388608, label %23
    i32 12582912, label %34
  ]

22:                                               ; preds = %15
  store i32 3, ptr %18, align 4
  br label %102

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  %27 = icmp ult i32 %26, 7
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = getelementptr inbounds [7 x i32], ptr @switch.table.igb_get_invariants_82575.5, i32 0, i32 %26
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %30) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, ptr %18, align 4
  store i8 1, ptr %6, align 1
  br label %102

34:                                               ; preds = %28, %23, %15
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1
  %36 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 24) #6
  %37 = and i32 %36, -129
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41, !prof !9

41:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %42 = or i32 %37, 33554432
  %43 = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #6, !srcloc !11
  br label %44

44:                                               ; preds = %41, %34
  %45 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %46 = call i32 @igb_read_sfp_data_byte(ptr noundef %0, i16 noundef zeroext 0, ptr noundef nonnull %5) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  call void @msleep(i32 noundef 100) #6
  %49 = call i32 @igb_read_sfp_data_byte(ptr noundef %0, i16 noundef zeroext 0, ptr noundef nonnull %5) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  call void @msleep(i32 noundef 100) #6
  %52 = call i32 @igb_read_sfp_data_byte(ptr noundef %0, i16 noundef zeroext 0, ptr noundef nonnull %5) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call void @msleep(i32 noundef 100) #6
  br label %77

55:                                               ; preds = %51, %48, %44
  %56 = call i32 @igb_read_sfp_data_byte(ptr noundef %0, i16 noundef zeroext 6, ptr noundef %35) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = load i8, ptr %5, align 1
  %60 = and i8 %59, -2
  %61 = icmp eq i8 %60, 2
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  store i8 1, ptr %19, align 1
  %63 = load i8, ptr %35, align 1
  %64 = and i8 %63, 3
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 3, ptr %18, align 4
  br label %77

67:                                               ; preds = %62
  %68 = and i8 %63, 48
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i8 1, ptr %6, align 1
  store i32 3, ptr %18, align 4
  br label %77

71:                                               ; preds = %67
  %72 = and i8 %63, 8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i8 1, ptr %6, align 1
  store i32 1, ptr %18, align 4
  br label %77

75:                                               ; preds = %71
  store i32 0, ptr %18, align 4
  br label %77

76:                                               ; preds = %58
  store i32 0, ptr %18, align 4
  br label %77

77:                                               ; preds = %76, %75, %74, %70, %66, %55, %54
  %78 = phi i32 [ %56, %55 ], [ 0, %75 ], [ 0, %66 ], [ 0, %74 ], [ 0, %70 ], [ 0, %76 ], [ 1, %54 ]
  %79 = load volatile ptr, ptr %38, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !9

81:                                               ; preds = %77
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !33
  call void @arm_heavy_mb() #6
  %82 = getelementptr i8, ptr %79, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %37) #6, !srcloc !11
  br label %83

83:                                               ; preds = %81, %77
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %84 = icmp eq i32 %78, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i32, ptr %18, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85, %83
  store i32 3, ptr %18, align 4
  %89 = icmp eq i32 %21, 8388608
  br i1 %89, label %90, label %102

90:                                               ; preds = %88
  store i32 1, ptr %18, align 4
  store i8 1, ptr %6, align 1
  br label %102

91:                                               ; preds = %85
  %92 = load i8, ptr %6, align 1, !range !8
  %93 = load volatile ptr, ptr %38, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95, !prof !9

95:                                               ; preds = %91
  %96 = icmp eq i8 %92, 0
  %97 = or i32 %20, 12582912
  %98 = and i32 %20, -12582913
  %99 = or i32 %98, 8388608
  %100 = select i1 %96, i32 %97, i32 %99
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  call void @arm_heavy_mb() #6
  %101 = getelementptr i8, ptr %93, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %100) #6, !srcloc !11
  br label %102

102:                                              ; preds = %95, %91, %90, %88, %33, %22, %15
  %103 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 9
  store i16 128, ptr %103, align 4
  %104 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 1
  %107 = select i1 %106, i16 0, i16 128
  %108 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 10
  store i16 %107, ptr %108, align 2
  switch i32 %105, label %111 [
    i32 2, label %109
    i32 3, label %115
    i32 4, label %117
    i32 5, label %117
  ]

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 12
  store i16 24, ptr %110, align 4
  br label %119

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 12
  store i16 16, ptr %112, align 4
  %113 = icmp ugt i32 %105, 2
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  br label %119

115:                                              ; preds = %102
  %116 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 12
  store i16 24, ptr %116, align 4
  br label %119

117:                                              ; preds = %102, %102
  %118 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 12
  store i16 32, ptr %118, align 4
  br label %119

119:                                              ; preds = %117, %115, %114, %111, %109
  %120 = phi ptr [ @igb_reset_hw_82580, %117 ], [ @igb_reset_hw_82580, %115 ], [ @igb_reset_hw_82580, %114 ], [ @igb_reset_hw_82575, %109 ], [ @igb_reset_hw_82575, %111 ]
  %121 = phi ptr [ @igb_acquire_swfw_sync_82575, %117 ], [ @igb_acquire_swfw_sync_82575, %115 ], [ @igb_acquire_swfw_sync_i210, %114 ], [ @igb_acquire_swfw_sync_82575, %109 ], [ @igb_acquire_swfw_sync_82575, %111 ]
  %122 = phi ptr [ @igb_release_swfw_sync_82575, %117 ], [ @igb_release_swfw_sync_82575, %115 ], [ @igb_release_swfw_sync_i210, %114 ], [ @igb_release_swfw_sync_82575, %109 ], [ @igb_release_swfw_sync_82575, %111 ]
  %123 = phi ptr [ @igb_write_vfta_i350, %117 ], [ @igb_write_vfta, %115 ], [ @igb_write_vfta, %114 ], [ @igb_write_vfta, %109 ], [ @igb_write_vfta, %111 ]
  %124 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr %120, ptr %124, align 4
  %125 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 8
  store ptr %121, ptr %125, align 4
  %126 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 9
  store ptr %122, ptr %126, align 4
  %127 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 12
  store ptr %123, ptr %127, align 4
  %128 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 16
  store i8 1, ptr %128, align 1
  %129 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 23380) #6
  %130 = and i32 %129, 14
  %131 = icmp ne i32 %130, 0
  %132 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 15
  %133 = zext i1 %131 to i8
  store i8 %133, ptr %132, align 4
  %134 = load i32, ptr %104, align 4
  %135 = icmp ugt i32 %134, 3
  %136 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 2
  br i1 %135, label %138, label %137

137:                                              ; preds = %119
  store i8 1, ptr %136, align 1
  br label %146

138:                                              ; preds = %119
  store i8 0, ptr %136, align 1
  %139 = icmp ugt i32 %134, 5
  br i1 %139, label %140, label %146

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 3
  store i8 1, ptr %141, align 1
  %142 = load i32, ptr %18, align 4
  %143 = icmp eq i32 %142, 1
  %144 = select i1 %143, ptr @igb_setup_copper_link_82575, ptr @igb_setup_serdes_link_82575
  %145 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 4
  store ptr %144, ptr %145, align 4
  br label %157

146:                                              ; preds = %138, %137
  %147 = load i32, ptr %18, align 4
  %148 = icmp eq i32 %147, 1
  %149 = select i1 %148, ptr @igb_setup_copper_link_82575, ptr @igb_setup_serdes_link_82575
  %150 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 4
  store ptr %149, ptr %150, align 4
  %151 = add nsw i32 %134, -3
  %152 = icmp ult i32 %151, 2
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load i16, ptr %7, align 2
  switch i16 %154, label %155 [
    i16 1080, label %157
    i16 1082, label %157
    i16 1084, label %157
    i16 1088, label %157
  ]

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 8
  store i8 1, ptr %156, align 4
  br label %157

157:                                              ; preds = %155, %153, %153, %153, %153, %146, %140
  %158 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7
  %159 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %160 = trunc i32 %159 to i16
  %161 = lshr i16 %160, 11
  %162 = and i16 %161, 15
  %163 = call i16 @llvm.umin.i16(i16 %162, i16 9) #6
  %164 = add nuw nsw i16 %163, 6
  %165 = zext i16 %164 to i32
  %166 = shl nuw nsw i32 1, %165
  %167 = trunc i32 %166 to i16
  %168 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 5
  store i16 %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 8
  store i16 8, ptr %169, align 2
  %170 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 6
  store i16 1, ptr %170, align 2
  %171 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 2
  %172 = load i32, ptr %171, align 4
  switch i32 %172, label %177 [
    i32 2, label %173
    i32 1, label %175
  ]

173:                                              ; preds = %157
  %174 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 9
  store i16 32, ptr %174, align 4
  br label %183

175:                                              ; preds = %157
  %176 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 9
  store i16 8, ptr %176, align 4
  br label %183

177:                                              ; preds = %157
  %178 = and i32 %159, 1024
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %179, i16 8, i16 32
  %181 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 9
  store i16 %180, ptr %181, align 4
  %182 = select i1 %179, i16 8, i16 16
  br label %183

183:                                              ; preds = %177, %175, %173
  %184 = phi i16 [ %182, %177 ], [ 8, %175 ], [ 16, %173 ]
  %185 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 7
  store i16 %184, ptr %185, align 4
  %186 = icmp eq i16 %167, -32768
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 9
  store i16 128, ptr %188, align 4
  br label %189

189:                                              ; preds = %187, %183
  %190 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  store i32 2, ptr %190, align 4
  store ptr @igb_acquire_nvm_82575, ptr %158, align 4
  %191 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 2
  store ptr @igb_release_nvm_82575, ptr %191, align 4
  %192 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 3
  store ptr @igb_write_nvm_spi, ptr %192, align 4
  %193 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 5
  store ptr @igb_validate_nvm_checksum, ptr %193, align 4
  %194 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 4
  store ptr @igb_update_nvm_checksum, ptr %194, align 4
  %195 = icmp sgt i16 %167, -1
  %196 = select i1 %195, ptr @igb_read_nvm_eerd, ptr @igb_read_nvm_spi
  %197 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  store ptr %196, ptr %197, align 4
  %198 = load i32, ptr %104, align 4
  %199 = add i32 %198, -3
  %200 = icmp ult i32 %199, 3
  br i1 %200, label %201, label %206

201:                                              ; preds = %189
  %202 = getelementptr inbounds [3 x ptr], ptr @switch.table.igb_get_invariants_82575.1, i32 0, i32 %199
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds [3 x ptr], ptr @switch.table.igb_get_invariants_82575.2, i32 0, i32 %199
  %205 = load ptr, ptr %204, align 4
  store ptr %203, ptr %193, align 4
  store ptr %205, ptr %194, align 4
  br label %214

206:                                              ; preds = %189
  %207 = and i32 %198, -2
  %208 = icmp eq i32 %207, 6
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = call i32 @igb_init_nvm_params_i210(ptr noundef %0) #6
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %445

212:                                              ; preds = %209
  %213 = load i32, ptr %104, align 4
  br label %214

214:                                              ; preds = %212, %206, %201
  %215 = phi i32 [ %198, %206 ], [ %213, %212 ], [ %198, %201 ]
  switch i32 %215, label %218 [
    i32 2, label %216
    i32 4, label %216
  ]

216:                                              ; preds = %214, %214
  %217 = call i32 @igb_init_mbx_params_pf(ptr noundef %0) #6
  br label %218

218:                                              ; preds = %216, %214
  %219 = load i32, ptr %18, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  store i32 1, ptr %222, align 4
  br label %445

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 14
  store i16 47, ptr %224, align 2
  %225 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 10
  store i32 100, ptr %225, align 4
  %226 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 24) #6
  %227 = load i8, ptr %6, align 1, !range !8
  %228 = icmp eq i8 %227, 0
  %229 = select i1 %228, ptr @igb_phy_hw_reset, ptr @igb_phy_hw_reset_sgmii_82575
  %230 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 9
  store ptr %229, ptr %230, align 4
  %231 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %232 = load volatile ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234, !prof !9

234:                                              ; preds = %223
  %235 = and i32 %226, -33554433
  %236 = select i1 %228, i32 0, i32 33554432
  %237 = or i32 %236, %235
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  call void @arm_heavy_mb() #6
  %238 = getelementptr i8, ptr %232, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %237) #6, !srcloc !11
  br label %239

239:                                              ; preds = %234, %223
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2
  %240 = load i32, ptr %104, align 4
  %241 = icmp eq i32 %240, 3
  br i1 %241, label %242, label %271

242:                                              ; preds = %239
  %243 = load i8, ptr %6, align 1, !range !8
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  br label %285

246:                                              ; preds = %242
  %247 = load ptr, ptr %197, align 4
  %248 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  %249 = load i16, ptr %248, align 4
  %250 = icmp eq i16 %249, 0
  %251 = shl i16 %249, 6
  %252 = add i16 %251, 100
  %253 = select i1 %250, i16 36, i16 %252
  %254 = call i32 %247(ptr noundef %0, i16 noundef zeroext %253, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %246
  %257 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 3588) #6
  %258 = load i16, ptr %3, align 2
  %259 = load volatile ptr, ptr %231, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %271, label %261, !prof !9

261:                                              ; preds = %256
  %262 = and i16 %258, 4
  %263 = zext i16 %262 to i32
  %264 = shl nuw i32 %263, 29
  %265 = or i32 %264, %257
  %266 = and i16 %258, 8
  %267 = zext i16 %266 to i32
  %268 = shl nuw nsw i32 %267, 27
  %269 = or i32 %265, %268
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  call void @arm_heavy_mb() #6
  %270 = getelementptr i8, ptr %259, i32 3588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %269) #6, !srcloc !11
  br label %271

271:                                              ; preds = %261, %256, %246, %239
  %272 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %285, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %104, align 4
  %276 = add i32 %275, -1
  %277 = icmp ult i32 %276, 7
  br i1 %277, label %278, label %283

278:                                              ; preds = %274
  %279 = getelementptr inbounds [7 x i32], ptr @switch.table.igb_get_invariants_82575.5, i32 0, i32 %276
  %280 = load i32, ptr %279, align 4
  %281 = call i32 @igb_rd32(ptr noundef %0, i32 noundef %280) #6
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %278, %274
  %284 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  store ptr @igb_read_phy_reg_sgmii_82575, ptr %284, align 4
  br label %292

285:                                              ; preds = %278, %271, %245
  %286 = load i32, ptr %104, align 4
  %287 = add i32 %286, -3
  %288 = icmp ult i32 %287, 5
  %289 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  br i1 %288, label %290, label %291

290:                                              ; preds = %285
  store ptr @igb_read_phy_reg_82580, ptr %289, align 4
  br label %292

291:                                              ; preds = %285
  store ptr @igb_read_phy_reg_igp, ptr %289, align 4
  br label %292

292:                                              ; preds = %291, %290, %283
  %293 = phi ptr [ @igb_write_phy_reg_82580, %290 ], [ @igb_write_phy_reg_igp, %291 ], [ @igb_write_phy_reg_sgmii_82575, %283 ]
  %294 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  store ptr %293, ptr %294, align 4
  %295 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %296 = trunc i32 %295 to i16
  %297 = lshr i16 %296, 2
  %298 = and i16 %297, 3
  %299 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  store i16 %298, ptr %299, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  %300 = load i32, ptr %104, align 4
  %301 = icmp eq i32 %300, 5
  br i1 %301, label %302, label %304

302:                                              ; preds = %292
  %303 = call i32 @igb_get_phy_id(ptr noundef %0) #6
  br label %304

304:                                              ; preds = %302, %292
  %305 = load i8, ptr %6, align 1, !range !8
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  store i32 1, ptr %308, align 4
  %309 = call i32 @igb_get_phy_id(ptr noundef %0) #6
  br label %371

310:                                              ; preds = %304
  %311 = load i32, ptr %104, align 4
  %312 = add i32 %311, -1
  %313 = icmp ult i32 %312, 7
  br i1 %313, label %314, label %331

314:                                              ; preds = %310
  %315 = getelementptr inbounds [7 x i32], ptr @switch.table.igb_get_invariants_82575.5, i32 0, i32 %312
  %316 = load i32, ptr %315, align 4
  %317 = call i32 @igb_rd32(ptr noundef %0, i32 noundef %316) #6
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %331

319:                                              ; preds = %314
  %320 = load i32, ptr %104, align 4
  %321 = add i32 %320, -1
  %322 = icmp ult i32 %321, 7
  br i1 %322, label %323, label %370

323:                                              ; preds = %319
  %324 = getelementptr inbounds [7 x i32], ptr @switch.table.igb_get_invariants_82575.5, i32 0, i32 %321
  %325 = load i32, ptr %324, align 4
  %326 = call i32 @igb_rd32(ptr noundef %0, i32 noundef %325) #6
  %327 = lshr i32 %326, 21
  %328 = and i32 %327, 31
  %329 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  store i32 %328, ptr %329, align 4
  %330 = call i32 @igb_get_phy_id(ptr noundef %0) #6
  br label %371

331:                                              ; preds = %314, %310
  %332 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 24) #6
  %333 = load volatile ptr, ptr %231, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %338, label %335, !prof !9

335:                                              ; preds = %331
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  call void @arm_heavy_mb() #6
  %336 = and i32 %332, -129
  %337 = getelementptr i8, ptr %333, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %337, i32 %336) #6, !srcloc !11
  br label %338

338:                                              ; preds = %335, %331
  %339 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  call void @msleep(i32 noundef 300) #6
  %340 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  %341 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  store i32 1, ptr %340, align 4
  %342 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 8
  br label %343

343:                                              ; preds = %354, %338
  %344 = load ptr, ptr %341, align 4
  %345 = call i32 %344(ptr noundef %0) #6
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %343
  %348 = call i32 @igb_read_phy_reg_i2c(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #6
  %349 = load ptr, ptr %342, align 4
  call void %349(ptr noundef %0) #6
  %350 = icmp eq i32 %348, 0
  %351 = load i16, ptr %2, align 2
  %352 = icmp eq i16 %351, 321
  %353 = select i1 %350, i1 %352, i1 false
  br i1 %353, label %358, label %354

354:                                              ; preds = %347, %343
  %355 = load i32, ptr %340, align 4
  %356 = add i32 %355, 1
  store i32 %356, ptr %340, align 4
  %357 = icmp ult i32 %356, 8
  br i1 %357, label %343, label %360

358:                                              ; preds = %347
  %359 = load i32, ptr %340, align 4
  br label %360

360:                                              ; preds = %358, %354
  %361 = phi i32 [ %359, %358 ], [ %356, %354 ]
  %362 = icmp eq i32 %361, 8
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  store i32 0, ptr %340, align 4
  br label %370

364:                                              ; preds = %360
  %365 = call i32 @igb_get_phy_id(ptr noundef %0) #6
  %366 = load volatile ptr, ptr %231, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %371, label %368, !prof !9

368:                                              ; preds = %364
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !38
  call void @arm_heavy_mb() #6
  %369 = getelementptr i8, ptr %366, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %332) #6, !srcloc !11
  br label %371

370:                                              ; preds = %363, %319
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %445

371:                                              ; preds = %368, %364, %323, %307
  %372 = phi i32 [ %330, %323 ], [ %309, %307 ], [ %365, %368 ], [ %365, %364 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %445

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %376 = load i32, ptr %375, align 4
  switch i32 %376, label %445 [
    i32 21040800, label %377
    i32 21040592, label %377
    i32 21040576, label %377
    i32 21040272, label %377
    i32 21040320, label %377
    i32 44565392, label %420
    i32 22283168, label %427
    i32 22283184, label %427
    i32 21040128, label %434
    i32 56778000, label %443
  ]

377:                                              ; preds = %374, %374, %374, %374, %374
  %378 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  store i32 2, ptr %378, align 4
  %379 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  store ptr @igb_check_polarity_m88, ptr %379, align 4
  %380 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 6
  store ptr @igb_get_phy_info_m88, ptr %380, align 4
  %381 = icmp eq i32 %376, 21040320
  %382 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 5
  br i1 %381, label %383, label %385

383:                                              ; preds = %377
  store ptr @igb_get_cable_length_m88, ptr %382, align 4
  %384 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 3
  store ptr @igb_phy_force_speed_duplex_m88, ptr %384, align 4
  br label %445

385:                                              ; preds = %377
  store ptr @igb_get_cable_length_m88_gen2, ptr %382, align 4
  %386 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 3
  store ptr @igb_phy_force_speed_duplex_m88, ptr %386, align 4
  %387 = icmp eq i32 %376, 21040272
  br i1 %387, label %388, label %407

388:                                              ; preds = %385
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !31
  %389 = load ptr, ptr %294, align 4
  %390 = call i32 %389(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 2) #6
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %405

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %394 = load ptr, ptr %393, align 4
  %395 = call i32 %394(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #6
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %405

397:                                              ; preds = %392
  %398 = load i16, ptr %4, align 2
  %399 = and i16 %398, 768
  %400 = icmp eq i16 %399, 256
  br i1 %400, label %401, label %403

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4
  store ptr @igb_check_for_link_media_swap, ptr %402, align 4
  br label %403

403:                                              ; preds = %401, %397
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  %404 = load i32, ptr %375, align 4
  br label %407

405:                                              ; preds = %392, %388
  %406 = phi i32 [ %390, %388 ], [ %395, %392 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  br label %445

407:                                              ; preds = %403, %385
  %408 = phi i32 [ %404, %403 ], [ %376, %385 ]
  %409 = icmp eq i32 %408, 21040592
  br i1 %409, label %410, label %415

410:                                              ; preds = %407
  %411 = call i32 @igb_initialize_M88E1512_phy(ptr noundef %0) #6
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %445

413:                                              ; preds = %410
  %414 = load i32, ptr %375, align 4
  br label %415

415:                                              ; preds = %413, %407
  %416 = phi i32 [ %414, %413 ], [ %408, %407 ]
  %417 = icmp eq i32 %416, 21040800
  br i1 %417, label %418, label %445

418:                                              ; preds = %415
  %419 = call i32 @igb_initialize_M88E1543_phy(ptr noundef %0) #6
  br label %445

420:                                              ; preds = %374
  %421 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  store i32 6, ptr %421, align 4
  %422 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 6
  store ptr @igb_get_phy_info_igp, ptr %422, align 4
  %423 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 5
  store ptr @igb_get_cable_length_igp_2, ptr %423, align 4
  %424 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 3
  store ptr @igb_phy_force_speed_duplex_igp, ptr %424, align 4
  %425 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 10
  store ptr @igb_set_d0_lplu_state_82575, ptr %425, align 4
  %426 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 11
  store ptr @igb_set_d3_lplu_state, ptr %426, align 4
  br label %445

427:                                              ; preds = %374, %374
  %428 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  store i32 8, ptr %428, align 4
  %429 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 3
  store ptr @igb_phy_force_speed_duplex_82580, ptr %429, align 4
  %430 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 5
  store ptr @igb_get_cable_length_82580, ptr %430, align 4
  %431 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 6
  store ptr @igb_get_phy_info_82580, ptr %431, align 4
  %432 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 10
  store ptr @igb_set_d0_lplu_state_82580, ptr %432, align 4
  %433 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 11
  store ptr @igb_set_d3_lplu_state_82580, ptr %433, align 4
  br label %445

434:                                              ; preds = %374
  %435 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  store i32 9, ptr %435, align 4
  %436 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  store ptr @igb_check_polarity_m88, ptr %436, align 4
  %437 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 4
  store ptr @igb_get_cfg_done_i210, ptr %437, align 4
  %438 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 6
  store ptr @igb_get_phy_info_m88, ptr %438, align 4
  %439 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 5
  store ptr @igb_get_cable_length_m88_gen2, ptr %439, align 4
  %440 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 10
  store ptr @igb_set_d0_lplu_state_82580, ptr %440, align 4
  %441 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 11
  store ptr @igb_set_d3_lplu_state_82580, ptr %441, align 4
  %442 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 3
  store ptr @igb_phy_force_speed_duplex_m88, ptr %442, align 4
  br label %445

443:                                              ; preds = %374
  %444 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  store i32 10, ptr %444, align 4
  br label %445

445:                                              ; preds = %443, %434, %427, %420, %418, %415, %410, %405, %383, %374, %371, %370, %221, %209, %1
  %446 = phi i32 [ -5, %1 ], [ %210, %209 ], [ %372, %371 ], [ 0, %221 ], [ 0, %443 ], [ 0, %434 ], [ 0, %427 ], [ 0, %420 ], [ %406, %405 ], [ %411, %410 ], [ %419, %418 ], [ 0, %415 ], [ -2, %374 ], [ -2, %370 ], [ 0, %383 ]
  ret i32 %446
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_init_nvm_params_i210(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_init_mbx_params_pf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_sfp_data_byte(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_reset_hw_82580(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 1
  %4 = load i8, ptr %3, align 1, !range !8
  store i8 0, ptr %3, align 1
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %6, 3
  %8 = icmp ne i8 %4, 0
  %9 = select i1 %7, i1 %8, i1 false
  %10 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #6
  %11 = tail call i32 @igb_disable_pcie_master(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !9

15:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %16 = getelementptr i8, ptr %13, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1) #6, !srcloc !11
  br label %17

17:                                               ; preds = %15, %1
  %18 = load volatile ptr, ptr %12, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !9

20:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %21 = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #6, !srcloc !11
  br label %22

22:                                               ; preds = %20, %17
  %23 = load volatile ptr, ptr %12, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !9

25:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %26 = getelementptr i8, ptr %23, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 8) #6, !srcloc !11
  br label %27

27:                                               ; preds = %25, %22
  %28 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  br i1 %9, label %29, label %38

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %0, i16 noundef zeroext 256) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %36 = and i32 %35, 1048576
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34, %29, %27
  %39 = phi i1 [ true, %34 ], [ false, %29 ], [ false, %27 ]
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ 67108864, %38 ], [ 536870912, %34 ]
  %42 = phi i1 [ %39, %38 ], [ true, %34 ]
  %43 = load volatile ptr, ptr %12, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !9

45:                                               ; preds = %40
  %46 = or i32 %10, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 %46) #6, !srcloc !11
  br label %47

47:                                               ; preds = %45, %40
  %48 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  br i1 %42, label %49, label %50

49:                                               ; preds = %47
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  br label %50

50:                                               ; preds = %49, %47
  %51 = tail call i32 @igb_get_auto_rd_done(ptr noundef %0) #6
  %52 = load volatile ptr, ptr %12, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !9

54:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %55 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 1048576) #6, !srcloc !11
  br label %56

56:                                               ; preds = %54, %50
  %57 = load volatile ptr, ptr %12, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !9

59:                                               ; preds = %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %60 = getelementptr i8, ptr %57, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 -1) #6, !srcloc !11
  br label %61

61:                                               ; preds = %59, %56
  %62 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 192) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2
  %63 = load i32, ptr %5, align 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %95

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11
  %67 = load i8, ptr %66, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %95, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  %73 = load i16, ptr %72, align 4
  %74 = icmp eq i16 %73, 0
  %75 = shl i16 %73, 6
  %76 = add i16 %75, 100
  %77 = select i1 %74, i16 36, i16 %76
  %78 = call i32 %71(ptr noundef %0, i16 noundef zeroext %77, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %69
  %81 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 3588) #6
  %82 = load i16, ptr %2, align 2
  %83 = load volatile ptr, ptr %12, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85, !prof !9

85:                                               ; preds = %80
  %86 = and i16 %82, 4
  %87 = zext i16 %86 to i32
  %88 = shl nuw i32 %87, 29
  %89 = or i32 %88, %81
  %90 = and i16 %82, 8
  %91 = zext i16 %90 to i32
  %92 = shl nuw nsw i32 %91, 27
  %93 = or i32 %89, %92
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  call void @arm_heavy_mb() #6
  %94 = getelementptr i8, ptr %83, i32 3588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %93) #6, !srcloc !11
  br label %95

95:                                               ; preds = %85, %80, %69, %65, %61
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %96 = call i32 @igb_check_alt_mac_addr(ptr noundef %0) #6
  br i1 %42, label %97, label %100

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 9
  %99 = load ptr, ptr %98, align 4
  call void %99(ptr noundef %0, i16 noundef zeroext 256) #6
  br label %100

100:                                              ; preds = %97, %95
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_reset_hw_82575(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = tail call i32 @igb_disable_pcie_master(ptr noundef %0) #6
  %4 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23296) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  %5 = and i32 %4, 61440
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = and i32 %4, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = or i32 %4, 4096
  br label %19

12:                                               ; preds = %7
  %13 = call i32 @igb_read_pcie_cap_reg(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %2) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i16, ptr %2, align 2
  %17 = or i16 %16, 5
  store i16 %17, ptr %2, align 2
  %18 = call i32 @igb_write_pcie_cap_reg(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %2) #6
  br label %19

19:                                               ; preds = %15, %12, %10, %1
  %20 = phi i32 [ %4, %1 ], [ %4, %12 ], [ %4, %15 ], [ %11, %10 ]
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !9

24:                                               ; preds = %19
  %25 = and i32 %20, -65537
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  call void @arm_heavy_mb() #6
  %26 = getelementptr i8, ptr %22, i32 23296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #6, !srcloc !11
  br label %27

27:                                               ; preds = %24, %19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %28 = load volatile ptr, ptr %21, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !9

30:                                               ; preds = %27
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  call void @arm_heavy_mb() #6
  %31 = getelementptr i8, ptr %28, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 -1) #6, !srcloc !11
  br label %32

32:                                               ; preds = %30, %27
  %33 = load volatile ptr, ptr %21, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !9

35:                                               ; preds = %32
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  call void @arm_heavy_mb() #6
  %36 = getelementptr i8, ptr %33, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #6, !srcloc !11
  br label %37

37:                                               ; preds = %35, %32
  %38 = load volatile ptr, ptr %21, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !9

40:                                               ; preds = %37
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  call void @arm_heavy_mb() #6
  %41 = getelementptr i8, ptr %38, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 8) #6, !srcloc !11
  br label %42

42:                                               ; preds = %40, %37
  %43 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %44 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #6
  %45 = load volatile ptr, ptr %21, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !9

47:                                               ; preds = %42
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !49
  call void @arm_heavy_mb() #6
  %48 = or i32 %44, 67108864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 %48) #6, !srcloc !11
  br label %49

49:                                               ; preds = %47, %42
  %50 = call i32 @igb_get_auto_rd_done(ptr noundef %0) #6
  %51 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 36, i32 noundef 0, i8 noundef zeroext 12) #6
  %60 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 36, i32 noundef 1, i8 noundef zeroext 120) #6
  %61 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 36, i32 noundef 27, i8 noundef zeroext 35) #6
  %62 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 36, i32 noundef 35, i8 noundef zeroext 21) #6
  %63 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 23368, i32 noundef 20, i8 noundef zeroext 0) #6
  %64 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 23368, i32 noundef 16, i8 noundef zeroext 0) #6
  %65 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 23364, i32 noundef 0, i8 noundef zeroext -20) #6
  %66 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 23364, i32 noundef 97, i8 noundef zeroext -33) #6
  %67 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 23364, i32 noundef 52, i8 noundef zeroext 5) #6
  %68 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 23364, i32 noundef 47, i8 noundef zeroext -127) #6
  %69 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 23372, i32 noundef 2, i8 noundef zeroext 71) #6
  %70 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 23372, i32 noundef 20, i8 noundef zeroext 0) #6
  %71 = call i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef 23372, i32 noundef 16, i8 noundef zeroext 0) #6
  br label %72

72:                                               ; preds = %58, %54, %49
  %73 = load volatile ptr, ptr %21, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !9

75:                                               ; preds = %72
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !50
  call void @arm_heavy_mb() #6
  %76 = getelementptr i8, ptr %73, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 -1) #6, !srcloc !11
  br label %77

77:                                               ; preds = %75, %72
  %78 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 192) #6
  %79 = call i32 @igb_check_alt_mac_addr(ptr noundef %0) #6
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_acquire_swfw_sync_i210(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_release_swfw_sync_i210(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_acquire_swfw_sync_82575(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = zext i16 %1 to i32
  %4 = mul nuw i32 %3, 65537
  br label %5

5:                                                ; preds = %13, %2
  %6 = phi i32 [ 0, %2 ], [ %19, %13 ]
  %7 = tail call i32 @igb_get_hw_semaphore(ptr noundef %0) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23388) #6
  %11 = and i32 %10, %4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  tail call void @igb_put_hw_semaphore(ptr noundef %0) #6
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  %19 = add nuw nsw i32 %6, 1
  %20 = icmp eq i32 %19, 200
  br i1 %20, label %29, label %5

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !9

25:                                               ; preds = %21
  %26 = or i32 %10, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %27 = getelementptr i8, ptr %23, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #6, !srcloc !11
  br label %28

28:                                               ; preds = %25, %21
  tail call void @igb_put_hw_semaphore(ptr noundef %0) #6
  br label %29

29:                                               ; preds = %28, %13, %5
  %30 = phi i32 [ 0, %28 ], [ -13, %13 ], [ -13, %5 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_release_swfw_sync_82575(ptr noundef %0, i16 noundef zeroext %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call i32 @igb_get_hw_semaphore(ptr noundef %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %3

6:                                                ; preds = %3
  %7 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23388) #6
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !9

11:                                               ; preds = %6
  %12 = zext i16 %1 to i32
  %13 = xor i32 %12, -1
  %14 = and i32 %7, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %15 = getelementptr i8, ptr %9, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #6, !srcloc !11
  br label %16

16:                                               ; preds = %11, %6
  tail call void @igb_put_hw_semaphore(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_write_vfta_i350(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = shl i32 %1, 2
  %7 = add i32 %6, 22016
  %8 = load volatile ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !9

10:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %11 = getelementptr i8, ptr %8, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %2) #6, !srcloc !11
  br label %12

12:                                               ; preds = %10, %3
  %13 = load volatile ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !9

15:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %16 = getelementptr i8, ptr %13, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %2) #6, !srcloc !11
  br label %17

17:                                               ; preds = %15, %12
  %18 = load volatile ptr, ptr %5, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !9

20:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %21 = getelementptr i8, ptr %18, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %2) #6, !srcloc !11
  br label %22

22:                                               ; preds = %20, %17
  %23 = load volatile ptr, ptr %5, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !9

25:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %26 = getelementptr i8, ptr %23, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %2) #6, !srcloc !11
  br label %27

27:                                               ; preds = %25, %22
  %28 = load volatile ptr, ptr %5, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !9

30:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %31 = getelementptr i8, ptr %28, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %2) #6, !srcloc !11
  br label %32

32:                                               ; preds = %30, %27
  %33 = load volatile ptr, ptr %5, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !9

35:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %36 = getelementptr i8, ptr %33, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %2) #6, !srcloc !11
  br label %37

37:                                               ; preds = %35, %32
  %38 = load volatile ptr, ptr %5, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !9

40:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %41 = getelementptr i8, ptr %38, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %2) #6, !srcloc !11
  br label %42

42:                                               ; preds = %40, %37
  %43 = load volatile ptr, ptr %5, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !9

45:                                               ; preds = %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %46 = getelementptr i8, ptr %43, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %2) #6, !srcloc !11
  br label %47

47:                                               ; preds = %45, %42
  %48 = load volatile ptr, ptr %5, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !9

50:                                               ; preds = %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %51 = getelementptr i8, ptr %48, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %2) #6, !srcloc !11
  br label %52

52:                                               ; preds = %50, %47
  %53 = load volatile ptr, ptr %5, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !9

55:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %56 = getelementptr i8, ptr %53, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %2) #6, !srcloc !11
  br label %57

57:                                               ; preds = %55, %52
  %58 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %59 = getelementptr inbounds %struct.igb_adapter, ptr %4, i32 0, i32 55
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i32, ptr %60, i32 %1
  store i32 %2, ptr %61, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_write_vfta(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_setup_copper_link_82575(ptr noundef %0) #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #6
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !9

6:                                                ; preds = %1
  %7 = and i32 %2, -6209
  %8 = or i32 %7, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 %8) #6, !srcloc !11
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %19 [
    i32 3, label %12
    i32 4, label %12
    i32 6, label %12
    i32 7, label %12
  ]

12:                                               ; preds = %9, %9, %9, %9
  %13 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3604) #6
  %14 = load volatile ptr, ptr %3, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !9

16:                                               ; preds = %12
  %17 = and i32 %13, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %18 = getelementptr i8, ptr %14, i32 3604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #6, !srcloc !11
  br label %19

19:                                               ; preds = %16, %12, %9
  %20 = tail call i32 @igb_setup_serdes_link_82575(ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 23
  %28 = load i8, ptr %27, align 2, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  tail call void @msleep(i32 noundef 300) #6
  %31 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %0) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30, %26, %22
  %36 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %37 = load i32, ptr %36, align 4
  switch i32 %37, label %54 [
    i32 9, label %38
    i32 2, label %38
    i32 6, label %45
    i32 8, label %47
    i32 10, label %52
  ]

38:                                               ; preds = %35, %35
  %39 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %40 = load i32, ptr %39, align 4
  switch i32 %40, label %43 [
    i32 21040576, label %41
    i32 21040272, label %41
    i32 21040800, label %41
    i32 21040592, label %41
    i32 21040128, label %41
  ]

41:                                               ; preds = %38, %38, %38, %38, %38
  %42 = tail call i32 @igb_copper_link_setup_m88_gen2(ptr noundef %0) #6
  br label %49

43:                                               ; preds = %38
  %44 = tail call i32 @igb_copper_link_setup_m88(ptr noundef %0) #6
  br label %49

45:                                               ; preds = %35
  %46 = tail call i32 @igb_copper_link_setup_igp(ptr noundef %0) #6
  br label %49

47:                                               ; preds = %35
  %48 = tail call i32 @igb_copper_link_setup_82580(ptr noundef %0) #6
  br label %49

49:                                               ; preds = %47, %45, %43, %41
  %50 = phi i32 [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %42, %41 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %35
  %53 = tail call i32 @igb_setup_copper_link(ptr noundef %0) #6
  br label %54

54:                                               ; preds = %52, %49, %35, %30, %19
  %55 = phi i32 [ %20, %19 ], [ %50, %49 ], [ %53, %52 ], [ %33, %30 ], [ -2, %35 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_setup_serdes_link_82575(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %109, label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !9

14:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %15 = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1024) #6, !srcloc !11
  br label %16

16:                                               ; preds = %14, %10
  %17 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 24) #6
  %18 = load volatile ptr, ptr %11, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !9

20:                                               ; preds = %16
  %21 = and i32 %17, -33554561
  %22 = or i32 %21, 33554432
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %23 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #6, !srcloc !11
  br label %24

24:                                               ; preds = %20, %16
  %25 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #6
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %25, 64
  %29 = add i32 %27, -1
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = or i32 %25, 786496
  %33 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 52) #6
  %34 = load volatile ptr, ptr %11, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !9

36:                                               ; preds = %31
  %37 = or i32 %33, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %38 = getelementptr i8, ptr %34, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #6, !srcloc !11
  br label %39

39:                                               ; preds = %36, %31, %24
  %40 = phi i32 [ %28, %24 ], [ %32, %36 ], [ %32, %31 ]
  %41 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16904) #6
  %42 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 17
  %43 = load i8, ptr %42, align 2, !range !8
  %44 = and i32 %17, 12582912
  %45 = icmp ne i8 %43, 0
  switch i32 %44, label %49 [
    i32 8388608, label %46
    i32 4194304, label %48
  ]

46:                                               ; preds = %39
  %47 = and i32 %41, -262145
  br label %68

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %39
  %50 = phi i1 [ %45, %39 ], [ false, %48 ]
  %51 = load i32, ptr %26, align 4
  %52 = add i32 %51, -1
  %53 = icmp ult i32 %52, 2
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 %56(ptr noundef %0, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %54
  %60 = load i16, ptr %2, align 2
  %61 = and i16 %60, 16384
  %62 = icmp eq i16 %61, 0
  %63 = select i1 %62, i1 %50, i1 false
  br label %64

64:                                               ; preds = %59, %49
  %65 = phi i1 [ %50, %49 ], [ %63, %59 ]
  %66 = or i32 %40, 6657
  %67 = or i32 %41, 12
  br label %68

68:                                               ; preds = %64, %46
  %69 = phi i1 [ %65, %64 ], [ true, %46 ]
  %70 = phi i32 [ %67, %64 ], [ %47, %46 ]
  %71 = phi i32 [ %66, %64 ], [ %40, %46 ]
  %72 = load volatile ptr, ptr %11, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74, !prof !9

74:                                               ; preds = %68
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !59
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %72, i32 %71) #6, !srcloc !11
  br label %75

75:                                               ; preds = %74, %68
  br i1 %69, label %76, label %93

76:                                               ; preds = %75
  %77 = and i32 %70, -196786
  %78 = or i32 %77, 196608
  %79 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 16920) #6
  %80 = and i32 %79, -385
  %81 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  %82 = load i32, ptr %81, align 4
  switch i32 %82, label %87 [
    i32 3, label %83
    i32 1, label %83
    i32 2, label %85
  ]

83:                                               ; preds = %76, %76
  %84 = or i32 %79, 384
  br label %87

85:                                               ; preds = %76
  %86 = or i32 %80, 256
  br label %87

87:                                               ; preds = %85, %83, %76
  %88 = phi i32 [ %80, %76 ], [ %86, %85 ], [ %84, %83 ]
  %89 = load volatile ptr, ptr %11, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91, !prof !9

91:                                               ; preds = %87
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %92 = getelementptr i8, ptr %89, i32 16920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %88) #6, !srcloc !11
  br label %96

93:                                               ; preds = %75
  %94 = and i32 %70, -65714
  %95 = or i32 %94, 144
  br label %96

96:                                               ; preds = %93, %91, %87
  %97 = phi i32 [ %95, %93 ], [ %78, %91 ], [ %78, %87 ]
  %98 = load volatile ptr, ptr %11, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100, !prof !9

100:                                              ; preds = %96
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !61
  call void @arm_heavy_mb() #6
  %101 = getelementptr i8, ptr %98, i32 16904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %97) #6, !srcloc !11
  br label %102

102:                                              ; preds = %100, %96
  br i1 %69, label %109, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11
  %105 = load i8, ptr %104, align 1, !range !8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 @igb_force_mac_fc(ptr noundef %0) #6
  br label %109

109:                                              ; preds = %107, %103, %102, %54, %6
  %110 = phi i32 [ 0, %6 ], [ %57, %54 ], [ 0, %107 ], [ 0, %103 ], [ 0, %102 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_disable_pcie_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_auto_rd_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_alt_mac_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_pcie_cap_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_pcie_cap_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_8bit_ctrl_reg(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_put_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_copper_link_setup_m88_gen2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_copper_link_setup_m88(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_copper_link_setup_igp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_copper_link_setup_82580(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_setup_copper_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_force_mac_fc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_acquire_nvm_82575(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i16 noundef zeroext 1) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = tail call i32 @igb_acquire_nvm(ptr noundef %0) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0, i16 noundef zeroext 1) #6
  br label %12

12:                                               ; preds = %9, %6, %1
  %13 = phi i32 [ %4, %1 ], [ %7, %9 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_release_nvm_82575(ptr noundef %0) #0 {
  tail call void @igb_release_nvm(ptr noundef %0) #6
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  tail call void %3(ptr noundef %0, i16 noundef zeroext 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_nvm_spi(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_validate_nvm_checksum(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_update_nvm_checksum(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_nvm_eerd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_nvm_spi(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_validate_nvm_checksum_82580(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = load i16, ptr %3, align 2
  %10 = icmp sgt i16 %9, -1
  %11 = select i1 %10, i32 1, i32 4
  br label %15

12:                                               ; preds = %39
  %13 = add nuw nsw i32 %16, 1
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %41, label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %17 = icmp eq i32 %16, 0
  %18 = trunc i32 %16 to i16
  %19 = shl i16 %18, 6
  %20 = add i16 %19, 64
  %21 = select i1 %17, i16 0, i16 %20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, 64
  br label %24

24:                                               ; preds = %31, %15
  %25 = phi i16 [ %21, %15 ], [ %35, %31 ]
  %26 = phi i32 [ 0, %15 ], [ %36, %31 ]
  %27 = load ptr, ptr %4, align 4
  %28 = call i32 %27(ptr noundef %0, i16 noundef zeroext %25, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %41

31:                                               ; preds = %24
  %32 = load i16, ptr %2, align 2
  %33 = zext i16 %32 to i32
  %34 = add nuw nsw i32 %26, %33
  %35 = add i16 %25, 1
  %36 = and i32 %34, 65535
  %37 = zext i16 %35 to i32
  %38 = icmp ugt i32 %23, %37
  br i1 %38, label %24, label %39

39:                                               ; preds = %31
  %40 = icmp eq i32 %36, 47802
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br i1 %40, label %12, label %41

41:                                               ; preds = %39, %30, %12, %1
  %42 = phi i32 [ %6, %1 ], [ %28, %30 ], [ 0, %12 ], [ -1, %39 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_update_nvm_checksum_82580(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !31
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 %6(ptr noundef %0, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %4) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %88

9:                                                ; preds = %1
  %10 = load i16, ptr %4, align 2
  %11 = icmp sgt i16 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = or i16 %10, -32768
  store i16 %13, ptr %4, align 2
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %4) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %88

18:                                               ; preds = %12, %9
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  br label %70

20:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  br label %21

21:                                               ; preds = %27, %20
  %22 = phi i16 [ 0, %20 ], [ %29, %27 ]
  %23 = phi i16 [ 128, %20 ], [ %30, %27 ]
  %24 = load ptr, ptr %5, align 4
  %25 = call i32 %24(ptr noundef %0, i16 noundef zeroext %23, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %21
  %28 = load i16, ptr %3, align 2
  %29 = add i16 %28, %22
  %30 = add nuw nsw i16 %23, 1
  %31 = icmp ult i16 %23, 190
  br i1 %31, label %21, label %32

32:                                               ; preds = %27
  %33 = sub i16 -17734, %29
  store i16 %33, ptr %2, align 2
  %34 = load ptr, ptr %19, align 4
  %35 = call i32 %34(ptr noundef %0, i16 noundef zeroext 191, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %88

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  br label %38

38:                                               ; preds = %44, %37
  %39 = phi i16 [ 0, %37 ], [ %46, %44 ]
  %40 = phi i16 [ 192, %37 ], [ %47, %44 ]
  %41 = load ptr, ptr %5, align 4
  %42 = call i32 %41(ptr noundef %0, i16 noundef zeroext %40, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %38
  %45 = load i16, ptr %3, align 2
  %46 = add i16 %45, %39
  %47 = add nuw nsw i16 %40, 1
  %48 = icmp ult i16 %40, 254
  br i1 %48, label %38, label %49

49:                                               ; preds = %44
  %50 = sub i16 -17734, %46
  store i16 %50, ptr %2, align 2
  %51 = load ptr, ptr %19, align 4
  %52 = call i32 %51(ptr noundef %0, i16 noundef zeroext 255, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  br label %55

55:                                               ; preds = %61, %54
  %56 = phi i16 [ 0, %54 ], [ %63, %61 ]
  %57 = phi i16 [ 256, %54 ], [ %64, %61 ]
  %58 = load ptr, ptr %5, align 4
  %59 = call i32 %58(ptr noundef %0, i16 noundef zeroext %57, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load i16, ptr %3, align 2
  %63 = add i16 %62, %56
  %64 = add nuw nsw i16 %57, 1
  %65 = icmp ult i16 %57, 318
  br i1 %65, label %55, label %66

66:                                               ; preds = %61
  %67 = sub i16 -17734, %63
  store i16 %67, ptr %2, align 2
  %68 = load ptr, ptr %19, align 4
  %69 = call i32 %68(ptr noundef %0, i16 noundef zeroext 319, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %88

70:                                               ; preds = %78, %18
  %71 = phi i16 [ 0, %18 ], [ %80, %78 ]
  %72 = phi i16 [ 0, %18 ], [ %81, %78 ]
  %73 = load ptr, ptr %5, align 4
  %74 = call i32 %73(ptr noundef %0, i16 noundef zeroext %72, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %70, %55, %38, %21
  %77 = phi i32 [ %59, %55 ], [ %42, %38 ], [ %25, %21 ], [ %74, %70 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %88

78:                                               ; preds = %70
  %79 = load i16, ptr %3, align 2
  %80 = add i16 %79, %71
  %81 = add nuw nsw i16 %72, 1
  %82 = icmp ult i16 %72, 62
  br i1 %82, label %70, label %83

83:                                               ; preds = %78
  %84 = sub i16 -17734, %80
  store i16 %84, ptr %2, align 2
  %85 = load ptr, ptr %19, align 4
  %86 = call i32 %85(ptr noundef %0, i16 noundef zeroext 63, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %20, label %88

88:                                               ; preds = %83, %76, %66, %49, %32, %12, %1
  %89 = phi i32 [ %7, %1 ], [ %16, %12 ], [ %77, %76 ], [ %86, %83 ], [ %35, %32 ], [ %52, %49 ], [ %69, %66 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_validate_nvm_checksum_i350(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  br label %56

4:                                                ; preds = %72
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  br label %5

5:                                                ; preds = %12, %4
  %6 = phi i32 [ %16, %12 ], [ 128, %4 ]
  %7 = phi i32 [ %17, %12 ], [ 0, %4 ]
  %8 = load ptr, ptr %3, align 4
  %9 = trunc i32 %6 to i16
  %10 = call i32 %8(ptr noundef %0, i16 noundef zeroext %9, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %5
  %13 = load i16, ptr %2, align 2
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %7, %14
  %16 = add nuw nsw i32 %6, 1
  %17 = and i32 %15, 65535
  %18 = icmp eq i32 %16, 192
  br i1 %18, label %19, label %5

19:                                               ; preds = %12
  %20 = icmp eq i32 %17, 47802
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br i1 %20, label %21, label %74

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  br label %22

22:                                               ; preds = %29, %21
  %23 = phi i32 [ %33, %29 ], [ 192, %21 ]
  %24 = phi i32 [ %34, %29 ], [ 0, %21 ]
  %25 = load ptr, ptr %3, align 4
  %26 = trunc i32 %23 to i16
  %27 = call i32 %25(ptr noundef %0, i16 noundef zeroext %26, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %22
  %30 = load i16, ptr %2, align 2
  %31 = zext i16 %30 to i32
  %32 = add nuw nsw i32 %24, %31
  %33 = add nuw nsw i32 %23, 1
  %34 = and i32 %32, 65535
  %35 = icmp eq i32 %33, 256
  br i1 %35, label %36, label %22

36:                                               ; preds = %29
  %37 = icmp eq i32 %34, 47802
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br i1 %37, label %38, label %74

38:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  br label %39

39:                                               ; preds = %46, %38
  %40 = phi i32 [ %50, %46 ], [ 256, %38 ]
  %41 = phi i32 [ %51, %46 ], [ 0, %38 ]
  %42 = load ptr, ptr %3, align 4
  %43 = trunc i32 %40 to i16
  %44 = call i32 %42(ptr noundef %0, i16 noundef zeroext %43, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load i16, ptr %2, align 2
  %48 = zext i16 %47 to i32
  %49 = add nuw nsw i32 %41, %48
  %50 = add nuw nsw i32 %40, 1
  %51 = and i32 %49, 65535
  %52 = icmp eq i32 %50, 320
  br i1 %52, label %53, label %39

53:                                               ; preds = %46
  %54 = icmp ne i32 %51, 47802
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %55 = sext i1 %54 to i32
  br label %74

56:                                               ; preds = %65, %1
  %57 = phi i32 [ %69, %65 ], [ 0, %1 ]
  %58 = phi i32 [ %70, %65 ], [ 0, %1 ]
  %59 = load ptr, ptr %3, align 4
  %60 = trunc i32 %57 to i16
  %61 = call i32 %59(ptr noundef %0, i16 noundef zeroext %60, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56, %39, %22, %5
  %64 = phi i32 [ %44, %39 ], [ %27, %22 ], [ %10, %5 ], [ %61, %56 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %74

65:                                               ; preds = %56
  %66 = load i16, ptr %2, align 2
  %67 = zext i16 %66 to i32
  %68 = add nuw nsw i32 %58, %67
  %69 = add nuw nsw i32 %57, 1
  %70 = and i32 %68, 65535
  %71 = icmp eq i32 %69, 64
  br i1 %71, label %72, label %56

72:                                               ; preds = %65
  %73 = icmp eq i32 %70, 47802
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br i1 %73, label %4, label %74

74:                                               ; preds = %72, %63, %53, %36, %19
  %75 = phi i32 [ %64, %63 ], [ -1, %72 ], [ -1, %19 ], [ -1, %36 ], [ %55, %53 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_update_nvm_checksum_i350(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  br label %56

6:                                                ; preds = %69
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  br label %7

7:                                                ; preds = %13, %6
  %8 = phi i16 [ 0, %6 ], [ %15, %13 ]
  %9 = phi i16 [ 128, %6 ], [ %16, %13 ]
  %10 = load ptr, ptr %4, align 4
  %11 = call i32 %10(ptr noundef %0, i16 noundef zeroext %9, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %7
  %14 = load i16, ptr %3, align 2
  %15 = add i16 %14, %8
  %16 = add nuw nsw i16 %9, 1
  %17 = icmp ult i16 %9, 190
  br i1 %17, label %7, label %18

18:                                               ; preds = %13
  %19 = sub i16 -17734, %15
  store i16 %19, ptr %2, align 2
  %20 = load ptr, ptr %5, align 4
  %21 = call i32 %20(ptr noundef %0, i16 noundef zeroext 191, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  br label %24

24:                                               ; preds = %30, %23
  %25 = phi i16 [ 0, %23 ], [ %32, %30 ]
  %26 = phi i16 [ 192, %23 ], [ %33, %30 ]
  %27 = load ptr, ptr %4, align 4
  %28 = call i32 %27(ptr noundef %0, i16 noundef zeroext %26, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = load i16, ptr %3, align 2
  %32 = add i16 %31, %25
  %33 = add nuw nsw i16 %26, 1
  %34 = icmp ult i16 %26, 254
  br i1 %34, label %24, label %35

35:                                               ; preds = %30
  %36 = sub i16 -17734, %32
  store i16 %36, ptr %2, align 2
  %37 = load ptr, ptr %5, align 4
  %38 = call i32 %37(ptr noundef %0, i16 noundef zeroext 255, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  br label %41

41:                                               ; preds = %47, %40
  %42 = phi i16 [ 0, %40 ], [ %49, %47 ]
  %43 = phi i16 [ 256, %40 ], [ %50, %47 ]
  %44 = load ptr, ptr %4, align 4
  %45 = call i32 %44(ptr noundef %0, i16 noundef zeroext %43, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load i16, ptr %3, align 2
  %49 = add i16 %48, %42
  %50 = add nuw nsw i16 %43, 1
  %51 = icmp ult i16 %43, 318
  br i1 %51, label %41, label %52

52:                                               ; preds = %47
  %53 = sub i16 -17734, %49
  store i16 %53, ptr %2, align 2
  %54 = load ptr, ptr %5, align 4
  %55 = call i32 %54(ptr noundef %0, i16 noundef zeroext 319, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %74

56:                                               ; preds = %64, %1
  %57 = phi i16 [ 0, %1 ], [ %66, %64 ]
  %58 = phi i16 [ 0, %1 ], [ %67, %64 ]
  %59 = load ptr, ptr %4, align 4
  %60 = call i32 %59(ptr noundef %0, i16 noundef zeroext %58, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56, %41, %24, %7
  %63 = phi i32 [ %45, %41 ], [ %28, %24 ], [ %11, %7 ], [ %60, %56 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %74

64:                                               ; preds = %56
  %65 = load i16, ptr %3, align 2
  %66 = add i16 %65, %57
  %67 = add nuw nsw i16 %58, 1
  %68 = icmp ult i16 %58, 62
  br i1 %68, label %56, label %69

69:                                               ; preds = %64
  %70 = sub i16 -17734, %66
  store i16 %70, ptr %2, align 2
  %71 = load ptr, ptr %5, align 4
  %72 = call i32 %71(ptr noundef %0, i16 noundef zeroext 63, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %6, label %74

74:                                               ; preds = %69, %62, %52, %35, %18
  %75 = phi i32 [ %63, %62 ], [ %72, %69 ], [ %21, %18 ], [ %38, %35 ], [ %55, %52 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_acquire_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_release_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_phy_hw_reset_sgmii_82575(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 27, i16 noundef zeroext -32636) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = tail call i32 @igb_phy_sw_reset(ptr noundef %0) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 21040592
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call i32 @igb_initialize_M88E1512_phy(ptr noundef %0) #6
  %15 = load i32, ptr %10, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ %15, %13 ], [ %11, %9 ]
  %18 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %19 = icmp eq i32 %17, 21040800
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i32 @igb_initialize_M88E1543_phy(ptr noundef %0) #6
  br label %22

22:                                               ; preds = %20, %16, %6, %1
  %23 = phi i32 [ %4, %1 ], [ %7, %6 ], [ %21, %20 ], [ %18, %16 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_hw_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_read_phy_reg_sgmii_82575(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt i32 %1, 255
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = tail call i32 @igb_read_phy_reg_i2c(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0) #6
  br label %14

14:                                               ; preds = %10, %5, %3
  %15 = phi i32 [ -4, %3 ], [ %8, %5 ], [ %11, %10 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_write_phy_reg_sgmii_82575(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = icmp ugt i32 %1, 255
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = tail call i32 @igb_write_phy_reg_i2c(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #6
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0) #6
  br label %14

14:                                               ; preds = %10, %5, %3
  %15 = phi i32 [ -4, %3 ], [ %8, %5 ], [ %11, %10 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_phy_reg_igp(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_phy_reg_igp(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_polarity_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_phy_info_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_cable_length_m88_gen2(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_cable_length_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_force_speed_duplex_m88(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_check_for_link_media_swap(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %7
  %13 = load i16, ptr %2, align 2
  %14 = trunc i16 %13 to i8
  %15 = lshr i8 %14, 2
  %16 = and i8 %15, 1
  %17 = load ptr, ptr %3, align 4
  %18 = call i32 %17(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 1) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %12
  %21 = load ptr, ptr %8, align 4
  %22 = call i32 %21(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load i16, ptr %2, align 2
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %27, i8 %16, i8 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 6
  %32 = load i8, ptr %31, align 2
  %33 = icmp eq i8 %32, %28
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  store i8 %28, ptr %31, align 2
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 7
  store i8 1, ptr %35, align 1
  br label %36

36:                                               ; preds = %34, %30
  %37 = icmp eq i8 %28, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = load ptr, ptr %3, align 4
  %40 = call i32 %39(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 0) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = call i32 @igb_check_for_link_82575(ptr noundef %0)
  br label %49

44:                                               ; preds = %36, %24
  %45 = call i32 @igb_check_for_link_82575(ptr noundef %0)
  %46 = load ptr, ptr %3, align 4
  %47 = call i32 %46(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 0) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %42
  br label %50

50:                                               ; preds = %49, %44, %38, %20, %12, %7, %1
  %51 = phi i32 [ 0, %49 ], [ %5, %1 ], [ %10, %7 ], [ %18, %12 ], [ %22, %20 ], [ %40, %38 ], [ %47, %44 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_initialize_M88E1512_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_initialize_M88E1543_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_phy_info_igp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_cable_length_igp_2(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_force_speed_duplex_igp(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_d0_lplu_state_82575(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 25, ptr noundef nonnull %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load i16, ptr %3, align 2
  br i1 %1, label %10, label %21

10:                                               ; preds = %8
  %11 = or i16 %9, 2
  store i16 %11, ptr %3, align 2
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, i32 noundef 25, i16 noundef zeroext %11) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 4
  %18 = call i32 %17(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #6
  %19 = load i16, ptr %3, align 2
  %20 = and i16 %19, -129
  store i16 %20, ptr %3, align 2
  br label %42

21:                                               ; preds = %8
  %22 = and i16 %9, -3
  store i16 %22, ptr %3, align 2
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 %24(ptr noundef %0, i32 noundef 25, i16 noundef zeroext %22) #6
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 7
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %47 [
    i32 1, label %28
    i32 2, label %35
  ]

28:                                               ; preds = %21
  %29 = load ptr, ptr %4, align 4
  %30 = call i32 %29(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i16, ptr %3, align 2
  %34 = or i16 %33, 128
  store i16 %34, ptr %3, align 2
  br label %42

35:                                               ; preds = %21
  %36 = load ptr, ptr %4, align 4
  %37 = call i32 %36(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i16, ptr %3, align 2
  %41 = and i16 %40, -129
  store i16 %41, ptr %3, align 2
  br label %42

42:                                               ; preds = %39, %32, %16
  %43 = phi ptr [ %23, %39 ], [ %23, %32 ], [ %12, %16 ]
  %44 = phi i16 [ %41, %39 ], [ %34, %32 ], [ %20, %16 ]
  %45 = load ptr, ptr %43, align 4
  %46 = call i32 %45(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %44) #6
  br label %47

47:                                               ; preds = %42, %35, %28, %21, %10, %2
  %48 = phi i32 [ %6, %2 ], [ %14, %10 ], [ %30, %28 ], [ %37, %35 ], [ %25, %21 ], [ %46, %42 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_set_d3_lplu_state(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_force_speed_duplex_82580(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_cable_length_82580(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_phy_info_82580(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_d0_lplu_state_82580(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3604) #6
  %4 = trunc i32 %3 to i16
  br i1 %1, label %5, label %8

5:                                                ; preds = %2
  %6 = and i16 %4, -4
  %7 = or i16 %6, 2
  br label %16

8:                                                ; preds = %2
  %9 = and i16 %4, -3
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 7
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %16 [
    i32 1, label %12
    i32 2, label %14
  ]

12:                                               ; preds = %8
  %13 = or i16 %9, 1
  br label %16

14:                                               ; preds = %8
  %15 = and i16 %4, -4
  br label %16

16:                                               ; preds = %14, %12, %8, %5
  %17 = phi i16 [ %7, %5 ], [ %13, %12 ], [ %15, %14 ], [ %9, %8 ]
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !9

21:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %22 = zext i16 %17 to i32
  %23 = getelementptr i8, ptr %19, i32 3604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #6, !srcloc !11
  br label %24

24:                                               ; preds = %21, %16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_d3_lplu_state_82580(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3604) #6
  %4 = trunc i32 %3 to i16
  br i1 %1, label %13, label %5

5:                                                ; preds = %2
  %6 = and i16 %4, -5
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 7
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %19 [
    i32 1, label %9
    i32 2, label %11
  ]

9:                                                ; preds = %5
  %10 = or i16 %6, 1
  br label %19

11:                                               ; preds = %5
  %12 = and i16 %4, -6
  br label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 13
  %15 = load i16, ptr %14, align 4
  switch i16 %15, label %19 [
    i16 47, label %16
    i16 15, label %16
    i16 3, label %16
  ]

16:                                               ; preds = %13, %13, %13
  %17 = and i16 %4, -6
  %18 = or i16 %17, 4
  br label %19

19:                                               ; preds = %16, %13, %11, %9, %5
  %20 = phi i16 [ %18, %16 ], [ %10, %9 ], [ %12, %11 ], [ %6, %5 ], [ %4, %13 ]
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !9

24:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %25 = zext i16 %20 to i32
  %26 = getelementptr i8, ptr %22, i32 3604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #6, !srcloc !11
  br label %27

27:                                               ; preds = %24, %19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_cfg_done_i210(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_sw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_phy_reg_i2c(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_phy_reg_i2c(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_phy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_check_for_link_82575(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 24
  store i8 0, ptr %6, align 1
  %7 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16908) #6
  %8 = and i32 %7, 17
  %9 = icmp eq i32 %8, 17
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  store i8 1, ptr %6, align 1
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  br label %16

16:                                               ; preds = %14, %10, %5
  %17 = load i8, ptr %6, align 1, !range !8
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 20
  %19 = xor i8 %17, 1
  store i8 %19, ptr %18, align 1
  %20 = tail call i32 @igb_config_fc_after_link_up(ptr noundef %0) #6
  br label %23

21:                                               ; preds = %1
  %22 = tail call i32 @igb_check_for_copper_link(ptr noundef %0) #6
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i32 [ %20, %16 ], [ %22, %21 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_config_fc_after_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_for_copper_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_init_hw_82575(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 12
  %3 = load i16, ptr %2, align 4
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = tail call zeroext i1 @igb_get_flash_presence_i210(ptr noundef %0) #6
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @igb_pll_workaround_i210(ptr noundef %0) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %107

12:                                               ; preds = %9, %7, %1
  %13 = tail call i32 @igb_id_led_init(ptr noundef %0) #6
  tail call void @igb_clear_vfta(ptr noundef %0) #6
  tail call void @igb_init_rx_addrs(ptr noundef %0, i16 noundef zeroext %3) #6
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 9
  %15 = load i16, ptr %14, align 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %25

19:                                               ; preds = %35, %12
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 10
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %40

25:                                               ; preds = %35, %17
  %26 = phi i16 [ %15, %17 ], [ %36, %35 ]
  %27 = phi i32 [ 0, %17 ], [ %37, %35 ]
  %28 = load volatile ptr, ptr %18, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30, !prof !9

30:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %31 = shl nuw nsw i32 %27, 2
  %32 = add nuw nsw i32 %31, 20992
  %33 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #6, !srcloc !11
  %34 = load i16, ptr %14, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i16 [ %34, %30 ], [ %26, %25 ]
  %37 = add nuw nsw i32 %27, 1
  %38 = zext i16 %36 to i32
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %25, label %19

40:                                               ; preds = %50, %23
  %41 = phi i16 [ %21, %23 ], [ %51, %50 ]
  %42 = phi i32 [ 0, %23 ], [ %52, %50 ]
  %43 = load volatile ptr, ptr %24, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45, !prof !9

45:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %46 = shl nuw nsw i32 %42, 2
  %47 = add nuw nsw i32 %46, 40960
  %48 = getelementptr i8, ptr %43, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #6, !srcloc !11
  %49 = load i16, ptr %20, align 2
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i16 [ %49, %45 ], [ %41, %40 ]
  %52 = add nuw nsw i32 %42, 1
  %53 = zext i16 %51 to i32
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %40, label %55

55:                                               ; preds = %50, %19
  %56 = tail call i32 @igb_setup_link(ptr noundef %0) #6
  tail call void @igb_clear_hw_cntrs_base(ptr noundef %0) #6
  %57 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16476) #6
  %58 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16480) #6
  %59 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16484) #6
  %60 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16488) #6
  %61 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16492) #6
  %62 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16496) #6
  %63 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16600) #6
  %64 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16604) #6
  %65 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16608) #6
  %66 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16612) #6
  %67 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16616) #6
  %68 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16620) #6
  %69 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16388) #6
  %70 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16396) #6
  %71 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16436) #6
  %72 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16444) #6
  %73 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16632) #6
  %74 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16636) #6
  %75 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16564) #6
  %76 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16568) #6
  %77 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16572) #6
  %78 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16640) #6
  %79 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16676) #6
  %80 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16644) #6
  %81 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16648) #6
  %82 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16652) #6
  %83 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16656) #6
  %84 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16664) #6
  %85 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16668) #6
  %86 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16672) #6
  %87 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16428) #6
  %88 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16444) #6
  %89 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16636) #6
  %90 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16644) #6
  %91 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16664) #6
  %92 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16676) #6
  %93 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16680) #6
  %94 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16684) #6
  %95 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16688) #6
  %96 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16692) #6
  %97 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16696) #6
  %98 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %105, label %101

101:                                              ; preds = %55
  %102 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11
  %103 = load i8, ptr %102, align 1, !range !8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101, %55
  %106 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16936) #6
  br label %107

107:                                              ; preds = %105, %101, %9
  %108 = phi i32 [ %10, %9 ], [ %56, %101 ], [ %56, %105 ]
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_rar_set(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_read_mac_addr_82575(ptr noundef %0) #0 {
  %2 = tail call i32 @igb_check_alt_mac_addr(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @igb_read_mac_addr(ptr noundef %0) #6
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %2, %1 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_link_up_info_82575(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 24
  store i8 0, ptr %8, align 1
  store i16 0, ptr %1, align 2
  store i16 0, ptr %2, align 2
  %9 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16908) #6
  %10 = and i32 %9, 17
  %11 = icmp eq i32 %10, 17
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  store i8 1, ptr %8, align 1
  %13 = and i32 %9, 4
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %9, 2
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i16 10, i16 100
  %18 = select i1 %14, i16 %17, i16 1000
  store i16 %18, ptr %1, align 2
  %19 = and i32 %9, 8
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i16 1, i16 2
  store i16 %21, ptr %2, align 2
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %27 = and i32 %26, 12288
  %28 = icmp eq i32 %27, 4096
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  store i16 2500, ptr %1, align 2
  store i16 2, ptr %2, align 2
  br label %32

30:                                               ; preds = %3
  %31 = tail call i32 @igb_get_speed_and_duplex_copper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  br label %32

32:                                               ; preds = %30, %29, %25, %12, %7
  %33 = phi i32 [ %31, %30 ], [ 0, %7 ], [ 0, %12 ], [ 0, %25 ], [ 0, %29 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_thermal_sensor_data_generic(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !31
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 26
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %59

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 33024) #6
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 26, i32 0, i32 0, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(ptr noundef %0, i16 noundef zeroext 62, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %20 = load i16, ptr %2, align 2
  %21 = add i16 %20, 1
  %22 = icmp ult i16 %21, 2
  br i1 %22, label %59, label %23

23:                                               ; preds = %13
  %24 = load ptr, ptr %17, align 4
  %25 = call i32 %24(ptr noundef %0, i16 noundef zeroext %20, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %26 = load i16, ptr %3, align 2
  %27 = and i16 %26, 56
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = trunc i16 %26 to i8
  %31 = and i8 %30, 7
  %32 = call i8 @llvm.umin.i8(i8 %31, i8 3)
  %33 = icmp ugt i8 %32, 1
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 13
  %36 = zext i8 %32 to i32
  br label %37

37:                                               ; preds = %56, %34
  %38 = phi i32 [ 1, %34 ], [ %57, %56 ]
  %39 = load ptr, ptr %17, align 4
  %40 = load i16, ptr %2, align 2
  %41 = trunc i32 %38 to i16
  %42 = add i16 %40, %41
  %43 = call i32 %39(ptr noundef %0, i16 noundef zeroext %42, i16 noundef zeroext 1, ptr noundef nonnull %4) #6
  %44 = load i16, ptr %4, align 2
  %45 = and i16 %44, 15360
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %37
  %48 = lshr i16 %44, 8
  %49 = and i16 %48, 3
  %50 = zext i16 %49 to i32
  %51 = load ptr, ptr %35, align 4
  %52 = getelementptr [4 x i8], ptr @e1000_emc_temp_data, i32 0, i32 %50
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr [3 x %struct.e1000_thermal_diode_data], ptr %5, i32 0, i32 %38, i32 1
  %55 = call i32 %51(ptr noundef %0, i8 noundef zeroext %53, i8 noundef zeroext -8, ptr noundef %54) #6
  br label %56

56:                                               ; preds = %47, %37
  %57 = add nuw nsw i32 %38, 1
  %58 = icmp eq i32 %57, %36
  br i1 %58, label %59, label %37

59:                                               ; preds = %56, %29, %23, %13, %9, %1
  %60 = phi i32 [ 14, %9 ], [ 14, %1 ], [ 0, %13 ], [ 14, %23 ], [ 0, %29 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_init_thermal_sensor_thresh_generic(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !31
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 26
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %74

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 26, i32 0, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %14, i8 0, i32 11, i1 false)
  store i8 1, ptr %5, align 1
  %15 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 33036) #6
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 26, i32 0, i32 0, i32 2
  store i8 %16, ptr %17, align 1
  %18 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 33028) #6
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 26, i32 0, i32 0, i32 3
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %0, i16 noundef zeroext 62, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %24 = load i16, ptr %2, align 2
  %25 = add i16 %24, 1
  %26 = icmp ult i16 %25, 2
  br i1 %26, label %74, label %27

27:                                               ; preds = %13
  %28 = load ptr, ptr %21, align 4
  %29 = call i32 %28(ptr noundef %0, i16 noundef zeroext %24, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %30 = load i16, ptr %3, align 2
  %31 = and i16 %30, 56
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %27
  %34 = lshr i16 %30, 6
  %35 = trunc i16 %34 to i8
  %36 = and i8 %35, 31
  %37 = and i16 %30, 7
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 14
  %41 = add nuw nsw i16 %37, 1
  %42 = zext i16 %41 to i32
  br label %43

43:                                               ; preds = %70, %39
  %44 = phi i32 [ 1, %39 ], [ %71, %70 ]
  %45 = phi i16 [ 1, %39 ], [ %72, %70 ]
  %46 = load ptr, ptr %21, align 4
  %47 = load i16, ptr %2, align 2
  %48 = add i16 %47, %45
  %49 = call i32 %46(ptr noundef %0, i16 noundef zeroext %48, i16 noundef zeroext 1, ptr noundef nonnull %4) #6
  %50 = load i16, ptr %4, align 2
  %51 = lshr i16 %50, 8
  %52 = and i16 %51, 3
  %53 = zext i16 %52 to i32
  %54 = lshr i16 %50, 10
  %55 = trunc i16 %54 to i8
  %56 = and i8 %55, 15
  %57 = trunc i16 %50 to i8
  %58 = load ptr, ptr %40, align 4
  %59 = getelementptr [4 x i8], ptr @e1000_emc_therm_limit, i32 0, i32 %53
  %60 = load i8, ptr %59, align 1
  %61 = call i32 %58(ptr noundef %0, i8 noundef zeroext %60, i8 noundef zeroext -8, i8 noundef zeroext %57) #6
  %62 = icmp ult i32 %44, 3
  %63 = icmp ne i8 %56, 0
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %70

65:                                               ; preds = %43
  %66 = getelementptr [3 x %struct.e1000_thermal_diode_data], ptr %5, i32 0, i32 %44
  store i8 %56, ptr %66, align 1
  %67 = getelementptr [3 x %struct.e1000_thermal_diode_data], ptr %5, i32 0, i32 %44, i32 2
  store i8 %57, ptr %67, align 1
  %68 = sub i8 %57, %36
  %69 = getelementptr [3 x %struct.e1000_thermal_diode_data], ptr %5, i32 0, i32 %44, i32 3
  store i8 %68, ptr %69, align 1
  br label %70

70:                                               ; preds = %65, %43
  %71 = add nuw nsw i32 %44, 1
  %72 = trunc i32 %71 to i16
  %73 = icmp eq i32 %71, %42
  br i1 %73, label %74, label %43

74:                                               ; preds = %70, %33, %27, %13, %9, %1
  %75 = phi i32 [ 14, %9 ], [ 14, %1 ], [ 0, %13 ], [ 14, %27 ], [ 0, %33 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igb_get_flash_presence_i210(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_pll_workaround_i210(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_id_led_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_clear_vfta(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_init_rx_addrs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_setup_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_clear_hw_cntrs_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_mac_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_speed_and_duplex_copper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_acquire_phy_82575(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  %3 = load i16, ptr %2, align 4
  %4 = add i16 %3, -1
  %5 = icmp ult i16 %4, 3
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = sext i16 %4 to i32
  %8 = getelementptr inbounds [3 x i16], ptr @switch.table.igb_release_phy_82575, i32 0, i32 %7
  %9 = load i16, ptr %8, align 2
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i16 [ %9, %6 ], [ 2, %1 ]
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, i16 noundef zeroext %11) #6
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_cfg_done_82575(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  %3 = load i16, ptr %2, align 4
  %4 = add i16 %3, -1
  %5 = icmp ult i16 %4, 3
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = sext i16 %4 to i32
  %8 = getelementptr inbounds [3 x i32], ptr @switch.table.igb_get_cfg_done_82575, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ 262144, %1 ]
  br label %12

12:                                               ; preds = %17, %10
  %13 = phi i32 [ 100, %10 ], [ %18, %17 ]
  %14 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 4112) #6
  %15 = and i32 %14, %11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %18 = add nsw i32 %13, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12

20:                                               ; preds = %17, %12
  %21 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 6
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call i32 @igb_phy_init_script_igp3(ptr noundef %0) #6
  br label %30

30:                                               ; preds = %28, %24, %20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_release_phy_82575(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  %3 = load i16, ptr %2, align 4
  %4 = add i16 %3, -1
  %5 = icmp ult i16 %4, 3
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = sext i16 %4 to i32
  %8 = getelementptr inbounds [3 x i16], ptr @switch.table.igb_release_phy_82575, i32 0, i32 %7
  %9 = load i16, ptr %8, align 2
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i16 [ %9, %6 ], [ 2, %1 ]
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0, i16 noundef zeroext %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_i2c_byte(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_i2c_byte(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_init_script_igp3(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2156623081}
!11 = !{i64 4845022}
!12 = !{i64 2156626534}
!13 = !{i64 2156630573}
!14 = !{i64 2156638087}
!15 = !{i64 2156699125}
!16 = !{i64 2156703042}
!17 = !{i64 2156707054}
!18 = !{i64 2156710526}
!19 = !{i64 2156714009}
!20 = !{i64 2156717476}
!21 = !{i64 2156721217}
!22 = !{i64 2156724710}
!23 = !{i64 2156728185}
!24 = !{i64 2156731599}
!25 = !{i64 2156738875}
!26 = !{i64 2156742502}
!27 = !{i64 2156746124}
!28 = !{i64 2156749746}
!29 = !{i64 2156781746}
!30 = !{i64 2156785156}
!31 = !{!"auto-init"}
!32 = !{i64 2156586930}
!33 = !{i64 2156590755}
!34 = !{i64 2156594585}
!35 = !{i64 2156582802}
!36 = !{i64 2156753511}
!37 = !{i64 2156598762}
!38 = !{i64 2156602843}
!39 = !{i64 2156757482}
!40 = !{i64 2156760898}
!41 = !{i64 2156764325}
!42 = !{i64 2156767879}
!43 = !{i64 2156771619}
!44 = !{i64 2156775053}
!45 = !{i64 2156735214}
!46 = !{i64 2156642328}
!47 = !{i64 2156645744}
!48 = !{i64 2156649171}
!49 = !{i64 2156652969}
!50 = !{i64 2156656708}
!51 = !{i64 2156615524}
!52 = !{i64 2156618990}
!53 = !{i64 2156578900}
!54 = !{i64 2156668193}
!55 = !{i64 2156671644}
!56 = !{i64 2156675358}
!57 = !{i64 2156678838}
!58 = !{i64 2156682363}
!59 = !{i64 2156686284}
!60 = !{i64 2156689844}
!61 = !{i64 2156693800}
!62 = !{i64 2156606678}
!63 = !{i64 2156610484}
!64 = !{i64 2156660959}
!65 = !{i64 2156664693}
