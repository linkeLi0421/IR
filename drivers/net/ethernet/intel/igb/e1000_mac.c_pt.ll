; ModuleID = '/llk/IR/drivers/net/ethernet/intel/igb/e1000_mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_mac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.e1000_info = type { ptr, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.vf_mac_filter = type { %struct.list_head, i32, i8, [6 x i8] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.igb_id_led_init = private unnamed_addr constant [5 x i32] [i32 234881024, i32 251658240, i32 251658240, i32 234881024, i32 251658240], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_bus_info_pcie(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !8
  store i32 3, ptr %3, align 4
  %4 = call i32 @igb_read_pcie_cap_reg(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %2) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 2
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 1
  store i32 0, ptr %8, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load i16, ptr %2, align 2
  %11 = and i16 %10, 15
  %12 = icmp eq i16 %11, 2
  %13 = select i1 %12, i32 7, i32 0
  %14 = icmp eq i16 %11, 1
  %15 = select i1 %14, i32 6, i32 %13
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 1
  store i32 %15, ptr %16, align 4
  %17 = lshr i16 %10, 4
  %18 = and i16 %17, 63
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 2
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %9, %6
  %22 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  %23 = trunc i32 %22 to i16
  %24 = lshr i16 %23, 2
  %25 = and i16 %24, 3
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  store i16 %25, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_pcie_cap_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_clear_vfta(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 12
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ 128, %1 ], [ %5, %3 ]
  %5 = add nsw i32 %4, -1
  %6 = load ptr, ptr %2, align 4
  tail call void %6(ptr noundef %0, i32 noundef %5, i32 noundef 0) #5
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_write_vfta(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !9

8:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %9 = shl i32 %1, 2
  %10 = add i32 %9, 22016
  %11 = getelementptr i8, ptr %6, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %2) #5, !srcloc !11
  br label %12

12:                                               ; preds = %8, %3
  %13 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  %14 = getelementptr inbounds %struct.igb_adapter, ptr %4, i32 0, i32 55
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i32, ptr %15, i32 %1
  store i32 %2, ptr %16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_init_rx_addrs(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false)
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 1
  tail call void %5(ptr noundef %0, ptr noundef %6, i32 noundef 0) #5
  %7 = zext i16 %1 to i32
  %8 = icmp ugt i16 %1, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %12, %9 ], [ 1, %2 ]
  %11 = load ptr, ptr %4, align 4
  call void %11(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %10) #5
  %12 = add nuw nsw i32 %10, 1
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %14, label %9

14:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_vfta_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp ugt i32 %1, 4095
  %7 = icmp ugt i32 %2, 7
  %8 = or i1 %6, %7
  br i1 %8, label %90, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = lshr i32 %1, 5
  %12 = and i32 %1, 31
  %13 = shl nuw i32 1, %12
  %14 = getelementptr inbounds %struct.igb_adapter, ptr %10, i32 0, i32 55
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i32, ptr %15, i32 %11
  %17 = load i32, ptr %16, align 4
  %18 = sext i1 %3 to i32
  %19 = xor i32 %17, %18
  %20 = and i32 %19, %13
  %21 = xor i32 %20, %17
  %22 = getelementptr inbounds %struct.igb_adapter, ptr %10, i32 0, i32 50
  %23 = load i32, ptr %22, align 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %84, label %25

25:                                               ; preds = %9
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %25
  %28 = select i1 %4, i32 -17, i32 0
  br label %29

29:                                               ; preds = %37, %27
  %30 = phi i32 [ 31, %27 ], [ %42, %37 ]
  %31 = phi i32 [ %28, %27 ], [ %41, %37 ]
  %32 = shl i32 %30, 2
  %33 = add nuw nsw i32 %32, 23808
  %34 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %33) #5
  %35 = and i32 %34, 4095
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %46, label %37

37:                                               ; preds = %29
  %38 = icmp ne i32 %31, 0
  %39 = icmp ne i32 %35, 0
  %40 = select i1 %38, i1 true, i1 %39
  %41 = select i1 %40, i32 %31, i32 %30
  %42 = add nsw i32 %30, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %29

44:                                               ; preds = %37
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %44, %29
  %47 = phi i32 [ %41, %44 ], [ %30, %29 ]
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %47, %46 ], [ -17, %44 ]
  br i1 %4, label %84, label %90

51:                                               ; preds = %46, %25
  %52 = phi i32 [ %47, %46 ], [ 0, %25 ]
  %53 = shl i32 %52, 2
  %54 = add i32 %53, 23808
  %55 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %54) #5
  %56 = add i32 %2, 12
  %57 = shl nuw i32 1, %56
  %58 = or i32 %55, %57
  br i1 %3, label %74, label %59

59:                                               ; preds = %51
  %60 = xor i32 %58, %57
  %61 = and i32 %60, 1044480
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = icmp eq i32 %20, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 12
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef %0, i32 noundef %11, i32 noundef %21) #5
  br label %68

68:                                               ; preds = %65, %63
  %69 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %70 = load volatile ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %90, label %72, !prof !9

72:                                               ; preds = %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %73 = getelementptr i8, ptr %70, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #5, !srcloc !11
  br label %90

74:                                               ; preds = %59, %51
  %75 = phi i32 [ %20, %51 ], [ 0, %59 ]
  %76 = phi i32 [ %58, %51 ], [ %60, %59 ]
  %77 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %78 = load volatile ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80, !prof !9

80:                                               ; preds = %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %81 = or i32 %76, %1
  %82 = or i32 %81, -2147483648
  %83 = getelementptr i8, ptr %78, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %82) #5, !srcloc !11
  br label %84

84:                                               ; preds = %80, %74, %49, %9
  %85 = phi i32 [ %20, %49 ], [ %20, %9 ], [ %75, %80 ], [ %75, %74 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 12
  %89 = load ptr, ptr %88, align 4
  tail call void %89(ptr noundef %0, i32 noundef %11, i32 noundef %21) #5
  br label %90

90:                                               ; preds = %87, %84, %72, %68, %49, %5
  %91 = phi i32 [ -4, %5 ], [ %50, %49 ], [ 0, %72 ], [ 0, %68 ], [ 0, %87 ], [ 0, %84 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_check_alt_mac_addr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca [6 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 2
  br i1 %7, label %67, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, i16 noundef zeroext 55, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %8
  %14 = load i16, ptr %2, align 2
  %15 = add i16 %14, 1
  %16 = icmp ult i16 %15, 2
  br i1 %16, label %67, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  %19 = load i16, ptr %18, align 4
  switch i16 %19, label %26 [
    i16 1, label %20
    i16 2, label %22
    i16 3, label %24
  ]

20:                                               ; preds = %17
  %21 = add i16 %14, 3
  store i16 %21, ptr %2, align 2
  br label %26

22:                                               ; preds = %17
  %23 = add i16 %14, 6
  store i16 %23, ptr %2, align 2
  br label %26

24:                                               ; preds = %17
  %25 = add i16 %14, 9
  store i16 %25, ptr %2, align 2
  br label %26

26:                                               ; preds = %24, %22, %20, %17
  %27 = phi i16 [ %14, %17 ], [ %23, %22 ], [ %21, %20 ], [ %25, %24 ]
  %28 = load ptr, ptr %9, align 4
  %29 = call i32 %28(ptr noundef %0, i16 noundef zeroext %27, i16 noundef zeroext 1, ptr noundef nonnull %3) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load i16, ptr %3, align 2
  %33 = trunc i16 %32 to i8
  store i8 %33, ptr %4, align 4
  %34 = lshr i16 %32, 8
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %35, ptr %36, align 1
  %37 = load i16, ptr %2, align 2
  %38 = add i16 %37, 1
  %39 = load ptr, ptr %9, align 4
  %40 = call i32 %39(ptr noundef %0, i16 noundef zeroext %38, i16 noundef zeroext 1, ptr noundef nonnull %3) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %31
  %43 = load i16, ptr %3, align 2
  %44 = trunc i16 %43 to i8
  %45 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %44, ptr %45, align 2
  %46 = lshr i16 %43, 8
  %47 = trunc i16 %46 to i8
  %48 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  store i8 %47, ptr %48, align 1
  %49 = load i16, ptr %2, align 2
  %50 = add i16 %49, 2
  %51 = load ptr, ptr %9, align 4
  %52 = call i32 %51(ptr noundef %0, i16 noundef zeroext %50, i16 noundef zeroext 1, ptr noundef nonnull %3) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %42
  %55 = load i16, ptr %3, align 2
  %56 = trunc i16 %55 to i8
  %57 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  store i8 %56, ptr %57, align 4
  %58 = lshr i16 %55, 8
  %59 = trunc i16 %58 to i8
  %60 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 5
  store i8 %59, ptr %60, align 1
  %61 = load i32, ptr %4, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  call void %66(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #5
  br label %67

67:                                               ; preds = %64, %54, %42, %31, %26, %13, %8, %1
  %68 = phi i32 [ 0, %1 ], [ %11, %8 ], [ 0, %13 ], [ 0, %54 ], [ 0, %64 ], [ %29, %26 ], [ %40, %31 ], [ %52, %42 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_rar_set(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or i32 %9, %5
  %11 = getelementptr i8, ptr %1, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or i32 %10, %14
  %16 = getelementptr i8, ptr %1, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or i32 %15, %19
  %21 = getelementptr i8, ptr %1, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %1, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or i32 %27, %23
  %29 = icmp ne i32 %20, 0
  %30 = icmp ne i32 %28, 0
  %31 = select i1 %29, i1 true, i1 %30
  %32 = or i32 %28, -2147483648
  %33 = select i1 %31, i32 %32, i32 0
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37, !prof !9

37:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %38 = icmp ult i32 %2, 16
  %39 = shl i32 %2, 3
  %40 = select i1 %38, i32 21504, i32 21600
  %41 = add i32 %40, %39
  %42 = getelementptr i8, ptr %35, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %20) #5, !srcloc !11
  br label %43

43:                                               ; preds = %37, %3
  %44 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  %45 = load volatile ptr, ptr %34, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47, !prof !9

47:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %48 = icmp ult i32 %2, 16
  %49 = shl i32 %2, 3
  %50 = select i1 %48, i32 21508, i32 21604
  %51 = add i32 %50, %49
  %52 = getelementptr i8, ptr %45, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %33) #5, !srcloc !11
  br label %53

53:                                               ; preds = %47, %43
  %54 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_mta_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 5
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 9
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = add nuw nsw i32 %6, 134217727
  %8 = and i32 %7, %3
  %9 = shl nuw nsw i32 %8, 2
  %10 = add nuw nsw i32 %9, 20992
  %11 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %10) #5
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !9

15:                                               ; preds = %2
  %16 = and i32 %1, 31
  %17 = shl nuw i32 1, %16
  %18 = or i32 %11, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %19 = getelementptr i8, ptr %13, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #5, !srcloc !11
  br label %20

20:                                               ; preds = %15, %2
  %21 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_update_mc_addr_list(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(512) %4, i8 0, i32 512, i1 false)
  %5 = icmp eq i32 %2, 0
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 9
  %7 = load i16, ptr %6, align 4
  br i1 %5, label %54, label %8

8:                                                ; preds = %3
  %9 = zext i16 %7 to i32
  %10 = shl nuw nsw i32 %9, 5
  %11 = add nsw i32 %10, -1
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = add nsw i32 %9, -1
  br label %15

15:                                               ; preds = %30, %8
  %16 = phi ptr [ %1, %8 ], [ %51, %30 ]
  %17 = phi i32 [ 0, %8 ], [ %52, %30 ]
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i8 [ 0, %15 ], [ %23, %18 ]
  %20 = zext i8 %19 to i32
  %21 = lshr i32 %11, %20
  %22 = icmp eq i32 %21, 255
  %23 = add i8 %19, 1
  br i1 %22, label %24, label %18

24:                                               ; preds = %18
  switch i32 %13, label %30 [
    i32 3, label %28
    i32 1, label %25
    i32 2, label %26
  ]

25:                                               ; preds = %24
  br label %30

26:                                               ; preds = %24
  %27 = add i8 %19, 2
  br label %30

28:                                               ; preds = %24
  %29 = add i8 %19, 4
  br label %30

30:                                               ; preds = %28, %26, %25, %24
  %31 = phi i8 [ %19, %24 ], [ %27, %26 ], [ %23, %25 ], [ %29, %28 ]
  %32 = getelementptr i8, ptr %16, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = zext i8 %31 to i32
  %36 = sub nsw i32 8, %35
  %37 = lshr i32 %34, %36
  %38 = getelementptr i8, ptr %16, i32 5
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, %35
  %42 = or i32 %41, %37
  %43 = and i32 %42, %11
  %44 = lshr i32 %43, 5
  %45 = and i32 %44, %14
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 11, i32 %45
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %47, %49
  store i32 %50, ptr %48, align 4
  %51 = getelementptr i8, ptr %16, i32 6
  %52 = add nuw i32 %17, 1
  %53 = icmp eq i32 %52, %2
  br i1 %53, label %54, label %15

54:                                               ; preds = %30, %3
  %55 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 9
  %56 = icmp eq i16 %7, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %54
  %58 = zext i16 %7 to i32
  %59 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %60

60:                                               ; preds = %71, %57
  %61 = phi i32 [ %58, %57 ], [ %62, %71 ]
  %62 = add nsw i32 %61, -1
  %63 = load volatile ptr, ptr %59, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65, !prof !9

65:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %66 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 11, i32 %62
  %67 = load i32, ptr %66, align 4
  %68 = shl i32 %62, 2
  %69 = add nsw i32 %68, 20992
  %70 = getelementptr i8, ptr %63, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %67) #5, !srcloc !11
  br label %71

71:                                               ; preds = %65, %60
  %72 = icmp ugt i32 %61, 1
  br i1 %72, label %60, label %73

73:                                               ; preds = %71, %54
  %74 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  %75 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, -2
  %78 = icmp eq i32 %77, 6
  br i1 %78, label %79, label %158

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %81 = load i16, ptr %55, align 4
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %158, label %83

83:                                               ; preds = %79
  %84 = zext i16 %81 to i32
  br label %85

85:                                               ; preds = %103, %83
  %86 = phi i32 [ %88, %103 ], [ %84, %83 ]
  %87 = phi i1 [ %104, %103 ], [ false, %83 ]
  %88 = add nsw i32 %86, -1
  %89 = shl i32 %88, 2
  %90 = add nsw i32 %89, 20992
  %91 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %90) #5
  %92 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 11, i32 %88
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %85
  %96 = load volatile ptr, ptr %80, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98, !prof !9

98:                                               ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %99 = load i32, ptr %92, align 4
  %100 = getelementptr i8, ptr %96, i32 %90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %99) #5, !srcloc !11
  br label %101

101:                                              ; preds = %98, %95
  %102 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  br label %103

103:                                              ; preds = %101, %85
  %104 = phi i1 [ true, %101 ], [ %87, %85 ]
  %105 = icmp ugt i32 %86, 1
  br i1 %105, label %85, label %106

106:                                              ; preds = %103
  br i1 %104, label %107, label %158

107:                                              ; preds = %106
  %108 = load i16, ptr %55, align 4
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %158, label %110

110:                                              ; preds = %107
  %111 = zext i16 %108 to i32
  br label %112

112:                                              ; preds = %130, %110
  %113 = phi i32 [ %115, %130 ], [ %111, %110 ]
  %114 = phi i1 [ %131, %130 ], [ false, %110 ]
  %115 = add nsw i32 %113, -1
  %116 = shl i32 %115, 2
  %117 = add nsw i32 %116, 20992
  %118 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %117) #5
  %119 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 11, i32 %115
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %130, label %122

122:                                              ; preds = %112
  %123 = load volatile ptr, ptr %80, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %128, label %125, !prof !9

125:                                              ; preds = %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %126 = load i32, ptr %119, align 4
  %127 = getelementptr i8, ptr %123, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %126) #5, !srcloc !11
  br label %128

128:                                              ; preds = %125, %122
  %129 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  br label %130

130:                                              ; preds = %128, %112
  %131 = phi i1 [ true, %128 ], [ %114, %112 ]
  %132 = icmp ugt i32 %113, 1
  br i1 %132, label %112, label %133

133:                                              ; preds = %130
  br i1 %131, label %134, label %158

134:                                              ; preds = %133
  %135 = load i16, ptr %55, align 4
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %158, label %137

137:                                              ; preds = %134
  %138 = zext i16 %135 to i32
  br label %139

139:                                              ; preds = %156, %137
  %140 = phi i32 [ %141, %156 ], [ %138, %137 ]
  %141 = add nsw i32 %140, -1
  %142 = shl i32 %141, 2
  %143 = add nsw i32 %142, 20992
  %144 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %143) #5
  %145 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 11, i32 %141
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %139
  %149 = load volatile ptr, ptr %80, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151, !prof !9

151:                                              ; preds = %148
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %152 = load i32, ptr %145, align 4
  %153 = getelementptr i8, ptr %149, i32 %143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %152) #5, !srcloc !11
  br label %154

154:                                              ; preds = %151, %148
  %155 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  br label %156

156:                                              ; preds = %154, %139
  %157 = icmp ugt i32 %140, 1
  br i1 %157, label %139, label %158

158:                                              ; preds = %156, %134, %133, %107, %106, %79, %73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_clear_hw_cntrs_base(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16384) #5
  %3 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16392) #5
  %4 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16400) #5
  %5 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16404) #5
  %6 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16408) #5
  %7 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16412) #5
  %8 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16416) #5
  %9 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16424) #5
  %10 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16432) #5
  %11 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16440) #5
  %12 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16448) #5
  %13 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16456) #5
  %14 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16460) #5
  %15 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16464) #5
  %16 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16468) #5
  %17 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16472) #5
  %18 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16500) #5
  %19 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16504) #5
  %20 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16508) #5
  %21 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16512) #5
  %22 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16520) #5
  %23 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16524) #5
  %24 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16528) #5
  %25 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16532) #5
  %26 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16544) #5
  %27 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16548) #5
  %28 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16552) #5
  %29 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16556) #5
  %30 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16560) #5
  %31 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16576) #5
  %32 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16580) #5
  %33 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16584) #5
  %34 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16588) #5
  %35 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16592) #5
  %36 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16596) #5
  %37 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16624) #5
  %38 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16628) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_check_for_copper_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #5
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 20
  %4 = load i8, ptr %3, align 1, !range !19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = call i32 @igb_phy_has_link(ptr noundef %0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %2) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load i8, ptr %2, align 1, !range !19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %9
  store i8 0, ptr %3, align 1
  %13 = call i32 @igb_check_downshift(ptr noundef %0) #5
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 17
  %15 = load i8, ptr %14, align 2, !range !19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 1024) #5
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !9

22:                                               ; preds = %17
  %23 = and i32 %18, -4190209
  %24 = or i32 %23, 258048
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %25 = getelementptr i8, ptr %20, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #5, !srcloc !11
  br label %26

26:                                               ; preds = %22, %17
  %27 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  %28 = call i32 @igb_config_fc_after_link_up(ptr noundef %0)
  br label %29

29:                                               ; preds = %26, %12, %9, %6, %1
  %30 = phi i32 [ %7, %6 ], [ %28, %26 ], [ 0, %9 ], [ 0, %1 ], [ -3, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #5
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_has_link(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_downshift(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_config_collision_dist(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 1024) #5
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !9

6:                                                ; preds = %1
  %7 = and i32 %2, -4190209
  %8 = or i32 %7, 258048
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %9 = getelementptr i8, ptr %4, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #5, !srcloc !11
  br label %10

10:                                               ; preds = %6, %1
  %11 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_config_fc_after_link_up(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #5
  store i16 0, ptr %6, align 2, !annotation !8
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 18
  %8 = load i8, ptr %7, align 1, !range !19
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %11 = load i32, ptr %10, align 4
  br i1 %9, label %34, label %12

12:                                               ; preds = %1
  %13 = icmp eq i32 %11, 3
  br i1 %13, label %14, label %56

14:                                               ; preds = %12
  %15 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #5
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %214 [
    i32 0, label %18
    i32 1, label %20
    i32 2, label %23
    i32 3, label %26
  ]

18:                                               ; preds = %14
  %19 = and i32 %15, -402653185
  br label %28

20:                                               ; preds = %14
  %21 = and i32 %15, -402653185
  %22 = or i32 %21, 134217728
  br label %28

23:                                               ; preds = %14
  %24 = and i32 %15, -402653185
  %25 = or i32 %24, 268435456
  br label %28

26:                                               ; preds = %14
  %27 = or i32 %15, 402653184
  br label %28

28:                                               ; preds = %26, %23, %20, %18
  %29 = phi i32 [ %27, %26 ], [ %25, %23 ], [ %22, %20 ], [ %19, %18 ]
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33, !prof !9

33:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 %29) #5, !srcloc !11
  br label %56

34:                                               ; preds = %1
  %35 = icmp eq i32 %11, 1
  br i1 %35, label %36, label %56

36:                                               ; preds = %34
  %37 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #5
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %214 [
    i32 0, label %40
    i32 1, label %42
    i32 2, label %45
    i32 3, label %48
  ]

40:                                               ; preds = %36
  %41 = and i32 %37, -402653185
  br label %50

42:                                               ; preds = %36
  %43 = and i32 %37, -402653185
  %44 = or i32 %43, 134217728
  br label %50

45:                                               ; preds = %36
  %46 = and i32 %37, -402653185
  %47 = or i32 %46, 268435456
  br label %50

48:                                               ; preds = %36
  %49 = or i32 %37, 402653184
  br label %50

50:                                               ; preds = %48, %45, %42, %40
  %51 = phi i32 [ %49, %48 ], [ %47, %45 ], [ %44, %42 ], [ %41, %40 ]
  %52 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !9

55:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 %51) #5, !srcloc !11
  br label %56

56:                                               ; preds = %55, %50, %34, %33, %28, %12
  %57 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %141

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 17
  %62 = load i8, ptr %61, align 2, !range !19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %214, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 %66(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %214

69:                                               ; preds = %64
  %70 = load ptr, ptr %65, align 4
  %71 = call i32 %70(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %214

73:                                               ; preds = %69
  %74 = load i16, ptr %2, align 2
  %75 = and i16 %74, 32
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %214, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %65, align 4
  %79 = call i32 %78(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %214

81:                                               ; preds = %77
  %82 = load ptr, ptr %65, align 4
  %83 = call i32 %82(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %4) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %214

85:                                               ; preds = %81
  %86 = load i16, ptr %3, align 2
  %87 = and i16 %86, 1024
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %85
  %90 = load i16, ptr %4, align 2
  %91 = and i16 %90, 1024
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 3
  %97 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  br i1 %96, label %98, label %99

98:                                               ; preds = %93
  store i32 3, ptr %97, align 4
  br label %126

99:                                               ; preds = %93
  store i32 1, ptr %97, align 4
  br label %126

100:                                              ; preds = %89, %85
  %101 = trunc i16 %86 to i12
  %102 = and i12 %101, -1024
  switch i12 %102, label %115 [
    i12 -2048, label %103
    i12 -1024, label %109
  ]

103:                                              ; preds = %100
  %104 = load i16, ptr %4, align 2
  %105 = and i16 %104, 3072
  %106 = icmp eq i16 %105, 3072
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 2, ptr %108, align 4
  br label %126

109:                                              ; preds = %100
  %110 = load i16, ptr %4, align 2
  %111 = and i16 %110, 3072
  %112 = icmp eq i16 %111, 2048
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 1, ptr %114, align 4
  br label %126

115:                                              ; preds = %109, %103, %100
  %116 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  %117 = load i32, ptr %116, align 4
  switch i32 %117, label %118 [
    i32 0, label %122
    i32 2, label %122
  ]

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 4
  %120 = load i8, ptr %119, align 1, !range !19
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118, %115, %115
  %123 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 0, ptr %123, align 4
  br label %126

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 1, ptr %125, align 4
  br label %126

126:                                              ; preds = %124, %122, %113, %107, %99, %98
  %127 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 7
  %128 = load ptr, ptr %127, align 4
  %129 = call i32 %128(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %214

131:                                              ; preds = %126
  %132 = load i16, ptr %6, align 2
  %133 = icmp eq i16 %132, 1
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 0, ptr %135, align 4
  br label %136

136:                                              ; preds = %134, %131
  %137 = call i32 @igb_force_mac_fc(ptr noundef %0)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %214

139:                                              ; preds = %136
  %140 = load i32, ptr %57, align 4
  br label %141

141:                                              ; preds = %139, %56
  %142 = phi i32 [ %58, %56 ], [ %140, %139 ]
  %143 = icmp eq i32 %142, 3
  br i1 %143, label %144, label %214

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 17
  %146 = load i8, ptr %145, align 2, !range !19
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %214, label %148

148:                                              ; preds = %144
  %149 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 16908) #5
  %150 = and i32 %149, 65536
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %214, label %152

152:                                              ; preds = %148
  %153 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 16920) #5
  %154 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 16924) #5
  %155 = and i32 %153, 128
  %156 = icmp eq i32 %155, 0
  %157 = and i32 %154, 128
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %156, i1 true, i1 %158
  br i1 %159, label %167, label %160

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 3
  %164 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  br i1 %163, label %165, label %166

165:                                              ; preds = %160
  store i32 3, ptr %164, align 4
  br label %187

166:                                              ; preds = %160
  store i32 1, ptr %164, align 4
  br label %187

167:                                              ; preds = %152
  %168 = xor i1 %156, true
  %169 = and i32 %153, 256
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %168, i1 true, i1 %170
  %172 = select i1 %171, i1 true, i1 %158
  %173 = and i32 %154, 256
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %172, i1 true, i1 %174
  br i1 %175, label %178, label %176

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 2, ptr %177, align 4
  br label %187

178:                                              ; preds = %167
  %179 = and i32 %153, 384
  %180 = icmp eq i32 %179, 384
  %181 = select i1 %180, i1 %158, i1 false
  %182 = xor i1 %181, true
  %183 = select i1 %182, i1 true, i1 %174
  %184 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  br i1 %183, label %186, label %185

185:                                              ; preds = %178
  store i32 1, ptr %184, align 4
  br label %187

186:                                              ; preds = %178
  store i32 0, ptr %184, align 4
  br label %187

187:                                              ; preds = %186, %185, %176, %166, %165
  %188 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 16904) #5
  %189 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %190 = load volatile ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %195, label %192, !prof !9

192:                                              ; preds = %187
  %193 = or i32 %188, 128
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  call void @arm_heavy_mb() #5
  %194 = getelementptr i8, ptr %190, i32 16904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %193) #5, !srcloc !11
  br label %195

195:                                              ; preds = %192, %187
  %196 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #5
  %197 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  %198 = load i32, ptr %197, align 4
  switch i32 %198, label %214 [
    i32 0, label %199
    i32 1, label %201
    i32 2, label %204
    i32 3, label %207
  ]

199:                                              ; preds = %195
  %200 = and i32 %196, -402653185
  br label %209

201:                                              ; preds = %195
  %202 = and i32 %196, -402653185
  %203 = or i32 %202, 134217728
  br label %209

204:                                              ; preds = %195
  %205 = and i32 %196, -402653185
  %206 = or i32 %205, 268435456
  br label %209

207:                                              ; preds = %195
  %208 = or i32 %196, 402653184
  br label %209

209:                                              ; preds = %207, %204, %201, %199
  %210 = phi i32 [ %208, %207 ], [ %206, %204 ], [ %203, %201 ], [ %200, %199 ]
  %211 = load volatile ptr, ptr %189, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %214, label %213, !prof !9

213:                                              ; preds = %209
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %211, i32 %210) #5, !srcloc !11
  br label %214

214:                                              ; preds = %213, %209, %195, %148, %144, %141, %136, %126, %81, %77, %73, %69, %64, %60, %36, %14
  %215 = phi i32 [ 0, %148 ], [ -3, %195 ], [ %67, %64 ], [ %71, %69 ], [ %79, %77 ], [ %83, %81 ], [ %129, %126 ], [ %137, %136 ], [ 0, %144 ], [ 0, %141 ], [ 0, %73 ], [ -3, %14 ], [ -3, %36 ], [ 0, %213 ], [ 0, %209 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_setup_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = tail call i32 @igb_check_reset_block(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %92

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 255
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !8
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  %15 = load i16, ptr %14, align 4
  %16 = icmp eq i16 %15, 0
  %17 = shl i16 %15, 6
  %18 = add i16 %17, 79
  %19 = select i1 %16, i16 15, i16 %18
  br label %20

20:                                               ; preds = %13, %9
  %21 = phi i16 [ %19, %13 ], [ 15, %9 ]
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 %23(ptr noundef %0, i16 noundef zeroext %21, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i16, ptr %2, align 2
  %28 = trunc i16 %27 to i14
  %29 = and i14 %28, -4096
  %30 = icmp eq i14 %29, -8192
  %31 = select i1 %30, i32 2, i32 3
  %32 = icmp eq i14 %29, 0
  %33 = select i1 %32, i32 0, i32 %31
  store i32 %33, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %35

34:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %92

35:                                               ; preds = %26, %5
  %36 = phi i32 [ %33, %26 ], [ %7, %5 ]
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 %39(ptr noundef %0) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !9

46:                                               ; preds = %42
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %47 = getelementptr i8, ptr %44, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 34824) #5, !srcloc !11
  br label %48

48:                                               ; preds = %46, %42
  %49 = load volatile ptr, ptr %43, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !9

51:                                               ; preds = %48
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %52 = getelementptr i8, ptr %49, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 256) #5, !srcloc !11
  br label %53

53:                                               ; preds = %51, %48
  %54 = load volatile ptr, ptr %43, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !9

56:                                               ; preds = %53
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  call void @arm_heavy_mb() #5
  %57 = getelementptr i8, ptr %54, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 12746753) #5, !srcloc !11
  br label %58

58:                                               ; preds = %56, %53
  %59 = load volatile ptr, ptr %43, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61, !prof !9

61:                                               ; preds = %58
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  call void @arm_heavy_mb() #5
  %62 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 2
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %59, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %64) #5, !srcloc !11
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, ptr %37, align 4
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %72 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 3
  %75 = load i8, ptr %74, align 2, !range !19
  %76 = icmp eq i8 %75, 0
  %77 = or i32 %73, -2147483648
  %78 = select i1 %76, i32 %73, i32 %77
  %79 = load i32, ptr %71, align 4
  br label %80

80:                                               ; preds = %70, %66
  %81 = phi i32 [ %79, %70 ], [ 0, %66 ]
  %82 = phi i32 [ %78, %70 ], [ 0, %66 ]
  %83 = load volatile ptr, ptr %43, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85, !prof !9

85:                                               ; preds = %80
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  call void @arm_heavy_mb() #5
  %86 = getelementptr i8, ptr %83, i32 8544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %82) #5, !srcloc !11
  br label %87

87:                                               ; preds = %85, %80
  %88 = load volatile ptr, ptr %43, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90, !prof !9

90:                                               ; preds = %87
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  call void @arm_heavy_mb() #5
  %91 = getelementptr i8, ptr %88, i32 8552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %81) #5, !srcloc !11
  br label %92

92:                                               ; preds = %90, %87, %35, %34, %1
  %93 = phi i32 [ 0, %1 ], [ %24, %34 ], [ %40, %35 ], [ 0, %87 ], [ 0, %90 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_reset_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_force_mac_fc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #5
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %21 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
  ]

5:                                                ; preds = %1
  %6 = and i32 %2, -402653185
  br label %15

7:                                                ; preds = %1
  %8 = and i32 %2, -402653185
  %9 = or i32 %8, 134217728
  br label %15

10:                                               ; preds = %1
  %11 = and i32 %2, -402653185
  %12 = or i32 %11, 268435456
  br label %15

13:                                               ; preds = %1
  %14 = or i32 %2, 402653184
  br label %15

15:                                               ; preds = %13, %10, %7, %5
  %16 = phi i32 [ %14, %13 ], [ %12, %10 ], [ %9, %7 ], [ %6, %5 ]
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !9

20:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %16) #5, !srcloc !11
  br label %21

21:                                               ; preds = %20, %15, %1
  %22 = phi i32 [ -3, %1 ], [ 0, %20 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_speed_and_duplex_copper(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %4, 64
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i16 10, i16 100
  %10 = select i1 %6, i16 %9, i16 1000
  store i16 %10, ptr %1, align 2
  %11 = and i32 %4, 1
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i16 1, i16 2
  store i16 %13, ptr %2, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_hw_semaphore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 5
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = add nuw nsw i32 %4, 1
  br label %6

6:                                                ; preds = %11, %1
  %7 = phi i32 [ 0, %1 ], [ %13, %11 ]
  %8 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23376) #5
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 10737400) #5
  %13 = add nuw nsw i32 %7, 1
  %14 = icmp eq i32 %7, %4
  br i1 %14, label %44, label %6

15:                                               ; preds = %6
  %16 = icmp eq i32 %7, %5
  br i1 %16, label %44, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %19

19:                                               ; preds = %31, %17
  %20 = phi i32 [ 0, %17 ], [ %33, %31 ]
  %21 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23376) #5
  %22 = load volatile ptr, ptr %18, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !9

24:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %25 = or i32 %21, 2
  %26 = getelementptr i8, ptr %22, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #5, !srcloc !11
  br label %27

27:                                               ; preds = %24, %19
  %28 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23376) #5
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 10737400) #5
  %33 = add nuw nsw i32 %20, 1
  %34 = icmp eq i32 %20, %4
  br i1 %34, label %37, label %19

35:                                               ; preds = %27
  %36 = icmp eq i32 %20, %5
  br i1 %36, label %37, label %44

37:                                               ; preds = %35, %31
  %38 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23376) #5
  %39 = load volatile ptr, ptr %18, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41, !prof !9

41:                                               ; preds = %37
  %42 = and i32 %38, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %43 = getelementptr i8, ptr %39, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #5, !srcloc !11
  br label %44

44:                                               ; preds = %41, %37, %35, %15, %11
  %45 = phi i32 [ 0, %35 ], [ -1, %15 ], [ -1, %37 ], [ -1, %41 ], [ -1, %11 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_put_hw_semaphore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23376) #5
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !9

6:                                                ; preds = %1
  %7 = and i32 %2, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %8 = getelementptr i8, ptr %4, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #5, !srcloc !11
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_auto_rd_done(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %3 = and i32 %2, 512
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %6 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %10 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %14 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %18 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %22 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %26 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %30 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %34 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %35 = and i32 %34, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %38 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %39 = and i32 %38, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %42

42:                                               ; preds = %41, %37, %33, %29, %25, %21, %17, %13, %9, %5, %1
  %43 = phi i32 [ -9, %41 ], [ 0, %37 ], [ 0, %33 ], [ 0, %29 ], [ 0, %25 ], [ 0, %21 ], [ 0, %17 ], [ 0, %13 ], [ 0, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_id_led_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %100

12:                                               ; preds = %7
  %13 = load i16, ptr %2, align 2
  switch i16 %13, label %22 [
    i16 0, label %14
    i16 -1, label %14
  ]

14:                                               ; preds = %12, %12
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 3
  %18 = select i1 %17, i16 4376, i16 -30447
  store i16 %18, ptr %2, align 2
  br label %22

19:                                               ; preds = %1
  %20 = call i32 @igb_valid_led_default_i210(ptr noundef %0, ptr noundef nonnull %2) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %100

22:                                               ; preds = %19, %14, %12
  %23 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 3584) #5
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 4
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 5
  store i32 %23, ptr %25, align 4
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 %23, ptr %26, align 4
  %27 = load i16, ptr %2, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 15
  switch i32 %29, label %42 [
    i32 4, label %31
    i32 5, label %31
    i32 6, label %31
    i32 7, label %30
    i32 8, label %30
    i32 9, label %30
    i32 2, label %37
    i32 3, label %35
  ]

30:                                               ; preds = %22, %22, %22
  br label %31

31:                                               ; preds = %30, %22, %22, %22
  %32 = phi i32 [ 15, %30 ], [ 14, %22 ], [ 14, %22 ], [ 14, %22 ]
  %33 = and i32 %23, -256
  %34 = or i32 %33, %32
  store i32 %34, ptr %25, align 4
  switch i32 %29, label %42 [
    i32 9, label %35
    i32 5, label %37
    i32 8, label %37
    i32 6, label %35
  ]

35:                                               ; preds = %31, %31, %22
  %36 = phi i32 [ %34, %31 ], [ %34, %31 ], [ %23, %22 ]
  br label %37

37:                                               ; preds = %35, %31, %31, %22
  %38 = phi i32 [ 15, %35 ], [ 14, %22 ], [ 14, %31 ], [ 14, %31 ]
  %39 = phi i32 [ %36, %35 ], [ %23, %22 ], [ %34, %31 ], [ %34, %31 ]
  %40 = and i32 %23, -256
  %41 = or i32 %40, %38
  store i32 %41, ptr %26, align 4
  br label %42

42:                                               ; preds = %37, %31, %22
  %43 = phi i32 [ %23, %22 ], [ %23, %31 ], [ %41, %37 ]
  %44 = phi i32 [ %23, %22 ], [ %34, %31 ], [ %39, %37 ]
  %45 = lshr i32 %28, 4
  %46 = and i32 %45, 15
  switch i32 %46, label %59 [
    i32 4, label %47
    i32 5, label %47
    i32 6, label %47
    i32 7, label %48
    i32 8, label %48
    i32 9, label %48
    i32 2, label %54
    i32 3, label %52
  ]

47:                                               ; preds = %42, %42, %42
  br label %48

48:                                               ; preds = %47, %42, %42, %42
  %49 = phi i32 [ 3584, %47 ], [ 3840, %42 ], [ 3840, %42 ], [ 3840, %42 ]
  %50 = and i32 %44, -65281
  %51 = or i32 %50, %49
  store i32 %51, ptr %25, align 4
  switch i32 %46, label %59 [
    i32 9, label %52
    i32 5, label %54
    i32 8, label %54
    i32 6, label %52
  ]

52:                                               ; preds = %48, %48, %42
  %53 = phi i32 [ %51, %48 ], [ %51, %48 ], [ %44, %42 ]
  br label %54

54:                                               ; preds = %52, %48, %48, %42
  %55 = phi i32 [ 3840, %52 ], [ 3584, %48 ], [ 3584, %48 ], [ 3584, %42 ]
  %56 = phi i32 [ %53, %52 ], [ %51, %48 ], [ %51, %48 ], [ %44, %42 ]
  %57 = and i32 %43, -65281
  %58 = or i32 %57, %55
  store i32 %58, ptr %26, align 4
  br label %59

59:                                               ; preds = %54, %48, %42
  %60 = phi i32 [ %43, %48 ], [ %43, %42 ], [ %58, %54 ]
  %61 = phi i32 [ %51, %48 ], [ %44, %42 ], [ %56, %54 ]
  %62 = lshr i32 %28, 8
  %63 = and i32 %62, 15
  switch i32 %63, label %76 [
    i32 4, label %64
    i32 5, label %64
    i32 6, label %64
    i32 7, label %65
    i32 8, label %65
    i32 9, label %65
    i32 2, label %71
    i32 3, label %69
  ]

64:                                               ; preds = %59, %59, %59
  br label %65

65:                                               ; preds = %64, %59, %59, %59
  %66 = phi i32 [ 917504, %64 ], [ 983040, %59 ], [ 983040, %59 ], [ 983040, %59 ]
  %67 = and i32 %61, -16711681
  %68 = or i32 %67, %66
  store i32 %68, ptr %25, align 4
  switch i32 %63, label %76 [
    i32 9, label %69
    i32 5, label %71
    i32 8, label %71
    i32 6, label %69
  ]

69:                                               ; preds = %65, %65, %59
  %70 = phi i32 [ %68, %65 ], [ %68, %65 ], [ %61, %59 ]
  br label %71

71:                                               ; preds = %69, %65, %65, %59
  %72 = phi i32 [ 983040, %69 ], [ 917504, %65 ], [ 917504, %65 ], [ 917504, %59 ]
  %73 = phi i32 [ %70, %69 ], [ %68, %65 ], [ %68, %65 ], [ %61, %59 ]
  %74 = and i32 %60, -16711681
  %75 = or i32 %74, %72
  store i32 %75, ptr %26, align 4
  br label %76

76:                                               ; preds = %71, %65, %59
  %77 = phi i32 [ %60, %65 ], [ %60, %59 ], [ %75, %71 ]
  %78 = phi i32 [ %68, %65 ], [ %61, %59 ], [ %73, %71 ]
  %79 = lshr i32 %28, 12
  switch i32 %79, label %100 [
    i32 4, label %80
    i32 5, label %80
    i32 6, label %80
    i32 7, label %81
    i32 8, label %81
    i32 9, label %81
    i32 2, label %96
    i32 3, label %87
  ]

80:                                               ; preds = %76, %76, %76
  br label %81

81:                                               ; preds = %80, %76, %76, %76
  %82 = phi i32 [ 234881024, %80 ], [ 251658240, %76 ], [ 251658240, %76 ], [ 251658240, %76 ]
  %83 = and i32 %78, 16777215
  %84 = or i32 %83, %82
  store i32 %84, ptr %25, align 4
  %85 = add nsw i32 %79, -5
  %86 = icmp ult i32 %85, 5
  br i1 %86, label %88, label %100

87:                                               ; preds = %76
  br label %96

88:                                               ; preds = %81
  %89 = trunc i32 %85 to i8
  %90 = lshr i8 27, %89
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds [5 x i32], ptr @switch.table.igb_id_led_init, i32 0, i32 %85
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %93, %87, %76
  %97 = phi i32 [ 251658240, %87 ], [ 234881024, %76 ], [ %95, %93 ]
  %98 = and i32 %77, 16777215
  %99 = or i32 %98, %97
  store i32 %99, ptr %26, align 4
  br label %100

100:                                              ; preds = %96, %88, %81, %76, %19, %7
  %101 = phi i32 [ %20, %19 ], [ %10, %7 ], [ 0, %81 ], [ 0, %76 ], [ 0, %96 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_valid_led_default_i210(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_cleanup_led(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #5, !srcloc !11
  br label %9

9:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_blink_led(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %70, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 15
  %11 = and i32 %9, 64
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i32 %10, 14
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = icmp ne i32 %11, 0
  %17 = icmp eq i32 %10, 15
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %5
  %20 = and i32 %7, -144
  %21 = or i32 %20, 142
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ %21, %19 ], [ %7, %15 ]
  %24 = lshr i32 %7, 8
  %25 = and i32 %24, 15
  %26 = lshr i32 %9, 8
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %25, 14
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = icmp ne i32 %27, 0
  %33 = icmp eq i32 %25, 15
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %22
  %36 = and i32 %23, -36609
  %37 = or i32 %36, 36352
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i32 [ %37, %35 ], [ %23, %31 ]
  %40 = lshr i32 %7, 16
  %41 = and i32 %40, 15
  %42 = lshr i32 %9, 16
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  %45 = icmp eq i32 %41, 14
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = icmp ne i32 %43, 0
  %49 = icmp eq i32 %41, 15
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %38
  %52 = and i32 %39, -9371649
  %53 = or i32 %52, 9306112
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i32 [ %53, %51 ], [ %39, %47 ]
  %56 = lshr i32 %7, 24
  %57 = and i32 %56, 15
  %58 = lshr i32 %9, 24
  %59 = and i32 %58, 64
  %60 = icmp eq i32 %59, 0
  %61 = icmp eq i32 %57, 14
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = icmp ne i32 %59, 0
  %65 = icmp eq i32 %57, 15
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %54
  %68 = and i32 %55, 1895825407
  %69 = or i32 %68, -1912602624
  br label %70

70:                                               ; preds = %67, %63, %1
  %71 = phi i32 [ 142, %1 ], [ %69, %67 ], [ %55, %63 ]
  %72 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !9

75:                                               ; preds = %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %76 = getelementptr i8, ptr %73, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %71) #5, !srcloc !11
  br label %77

77:                                               ; preds = %75, %70
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_led_off(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !9

9:                                                ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %7, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #5, !srcloc !11
  br label %13

13:                                               ; preds = %9, %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_disable_pcie_master(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #5
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !9

10:                                               ; preds = %5
  %11 = or i32 %6, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %11) #5, !srcloc !11
  br label %12

12:                                               ; preds = %10, %5
  br label %13

13:                                               ; preds = %18, %12
  %14 = phi i32 [ %20, %18 ], [ 800, %12 ]
  %15 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #5
  %16 = and i32 %15, 524288
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #5
  %20 = add nsw i32 %14, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %13

22:                                               ; preds = %18, %13, %1
  %23 = phi i32 [ 0, %1 ], [ -10, %18 ], [ 0, %13 ]
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @igb_validate_mdi_setting(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 2
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 17
  %7 = load i8, ptr %6, align 2, !range !19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 19
  %11 = load i8, ptr %10, align 2
  switch i8 %11, label %13 [
    i8 0, label %12
    i8 3, label %12
  ]

12:                                               ; preds = %9, %9
  store i8 1, ptr %10, align 2
  br label %13

13:                                               ; preds = %12, %9, %5, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %5 ], [ -3, %12 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_write_8bit_ctrl_reg(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !9

8:                                                ; preds = %4
  %9 = zext i8 %3 to i32
  %10 = shl i32 %2, 8
  %11 = or i32 %10, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %12 = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #5, !srcloc !11
  br label %13

13:                                               ; preds = %8, %4
  br label %14

14:                                               ; preds = %14, %13
  %15 = phi i32 [ %19, %14 ], [ 0, %13 ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 1073740) #5
  %17 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %1) #5
  %18 = icmp slt i32 %17, 0
  %19 = add nuw nsw i32 %15, 1
  %20 = icmp eq i32 %19, 640
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %14

22:                                               ; preds = %14
  %23 = icmp slt i32 %17, 0
  %24 = select i1 %23, i32 0, i32 -2
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @igb_enable_mng_pass_thru(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 16
  %3 = load i8, ptr %2, align 1, !range !19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 22560) #5
  %7 = and i32 %6, 131072
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 15
  %11 = load i8, ptr %10, align 4, !range !19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23380) #5
  %15 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23344) #5
  %16 = and i32 %15, 536870912
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %14, 14
  %19 = icmp eq i32 %18, 4
  %20 = select i1 %17, i1 %19, i1 false
  br label %24

21:                                               ; preds = %9
  %22 = and i32 %6, 3
  %23 = icmp eq i32 %22, 1
  br label %24

24:                                               ; preds = %21, %13, %5, %1
  %25 = phi i1 [ false, %5 ], [ false, %1 ], [ %20, %13 ], [ %23, %21 ]
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2156548186}
!11 = !{i64 4814338}
!12 = !{i64 2156552744}
!13 = !{i64 2156556300}
!14 = !{i64 2156560762}
!15 = !{i64 2156564585}
!16 = !{i64 2156568412}
!17 = !{i64 2156576165}
!18 = !{i64 2156572124}
!19 = !{i8 0, i8 2}
!20 = !{i64 2156595699}
!21 = !{i64 2156606951}
!22 = !{i64 2156618736}
!23 = !{i64 2156581880}
!24 = !{i64 2156585317}
!25 = !{i64 2156588762}
!26 = !{i64 2156592210}
!27 = !{i64 2156599185}
!28 = !{i64 2156602599}
!29 = !{i64 2156624431}
!30 = !{i64 2156628752}
!31 = !{i64 2156633145}
!32 = !{i64 2156636691}
!33 = !{i64 2156640149}
!34 = !{i64 2156643642}
!35 = !{i64 2156648122}
