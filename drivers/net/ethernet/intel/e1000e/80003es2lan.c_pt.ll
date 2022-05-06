; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/80003es2lan.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/80003es2lan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_info = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [52 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [50 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.113 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.113 = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@es2_mac_ops = internal constant %struct.e1000_mac_operations { ptr @e1000e_id_led_init_generic, ptr @e1000e_blink_led_generic, ptr @e1000e_check_mng_mode_generic, ptr null, ptr @e1000e_cleanup_led_generic, ptr @e1000_clear_hw_cntrs_80003es2lan, ptr @e1000_clear_vfta_generic, ptr @e1000e_get_bus_info_pcie, ptr @e1000_set_lan_id_multi_port_pcie, ptr @e1000_get_link_up_info_80003es2lan, ptr @e1000e_led_on_generic, ptr @e1000e_led_off_generic, ptr @e1000e_update_mc_addr_list_generic, ptr @e1000_reset_hw_80003es2lan, ptr @e1000_init_hw_80003es2lan, ptr @e1000e_setup_link_generic, ptr null, ptr @e1000e_setup_led_generic, ptr @e1000_write_vfta_generic, ptr @e1000e_config_collision_dist_generic, ptr @e1000e_rar_set_generic, ptr @e1000_read_mac_addr_80003es2lan, ptr @e1000e_rar_get_count_generic }, align 4
@es2_phy_ops = internal constant %struct.e1000_phy_operations { ptr @e1000_acquire_phy_80003es2lan, ptr @e1000_cfg_on_link_up_80003es2lan, ptr @e1000_check_polarity_m88, ptr @e1000e_check_reset_block_generic, ptr @e1000e_phy_sw_reset, ptr @e1000_phy_force_speed_duplex_80003es2lan, ptr @e1000_get_cfg_done_80003es2lan, ptr @e1000_get_cable_length_80003es2lan, ptr @e1000e_get_phy_info_m88, ptr null, ptr @e1000_read_phy_reg_gg82563_80003es2lan, ptr null, ptr null, ptr @e1000_release_phy_80003es2lan, ptr @e1000e_phy_hw_reset_generic, ptr null, ptr @e1000e_set_d3_lplu_state, ptr @e1000_write_phy_reg_gg82563_80003es2lan, ptr null, ptr null, ptr null, ptr null }, align 4
@es2_nvm_ops = internal constant %struct.e1000_nvm_operations { ptr @e1000_acquire_nvm_80003es2lan, ptr @e1000e_read_nvm_eerd, ptr @e1000_release_nvm_80003es2lan, ptr @e1000e_reload_nvm_generic, ptr @e1000e_update_nvm_checksum_generic, ptr @e1000e_valid_led_default, ptr @e1000e_validate_nvm_checksum_generic, ptr @e1000_write_nvm_80003es2lan }, align 4
@e1000_es2_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 5, i32 25624748, i32 64, i32 38, i32 9234, ptr @e1000_get_variants_80003es2lan, ptr @es2_mac_ops, ptr @es2_phy_ops, ptr @es2_nvm_ops }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@e1000_gg82563_cable_length_table = internal unnamed_addr constant [11 x i16] [i16 0, i16 60, i16 115, i16 150, i16 150, i16 60, i16 115, i16 150, i16 180, i16 180, i16 255], align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_variants_80003es2lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %5 = load ptr, ptr %4, align 32
  %6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 4248
  %9 = select i1 %8, i32 3, i32 1
  %10 = select i1 %8, ptr @e1000e_check_for_serdes_link, ptr @e1000e_check_for_copper_link
  %11 = select i1 %8, ptr @e1000e_setup_fiber_serdes_link, ptr @e1000_setup_copper_link_80003es2lan
  %12 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 12
  store i32 %9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 3
  store ptr %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 16
  store ptr %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 16
  store i16 128, ptr %15, align 2
  %16 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 18
  store i16 15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 21
  store i8 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 23380
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %22 = and i32 %21, 14
  %23 = icmp ne i32 %22, 0
  %24 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 22
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 1
  %26 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 20
  store i8 0, ptr %26, align 1
  %27 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %2) #4
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr i8, ptr %29, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %32 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 8
  store i16 8, ptr %32, align 2
  %33 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 6
  store i16 1, ptr %33, align 2
  %34 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 2
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %40 [
    i32 2, label %36
    i32 1, label %38
  ]

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 9
  store i16 32, ptr %37, align 4
  br label %46

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 9
  store i16 8, ptr %39, align 4
  br label %46

40:                                               ; preds = %1
  %41 = and i32 %31, 1024
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i16 8, i16 32
  %44 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 9
  store i16 %43, ptr %44, align 4
  %45 = select i1 %42, i16 8, i16 16
  br label %46

46:                                               ; preds = %40, %38, %36
  %47 = phi i16 [ %45, %40 ], [ 8, %38 ], [ 16, %36 ]
  %48 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 7
  store i16 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 1
  store i32 2, ptr %49, align 4
  %50 = trunc i32 %31 to i16
  %51 = lshr i16 %50, 11
  %52 = and i16 %51, 15
  %53 = tail call i16 @llvm.umin.i16(i16 %52, i16 8) #4
  %54 = add nuw nsw i16 %53, 6
  %55 = zext i16 %54 to i32
  %56 = shl nuw nsw i32 1, %55
  %57 = trunc i32 %56 to i16
  %58 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 5
  store i16 %57, ptr %58, align 4
  %59 = load i32, ptr %12, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %63, label %61

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  store i32 1, ptr %62, align 4
  br label %75

63:                                               ; preds = %46
  %64 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 20
  store ptr @e1000_power_up_phy_copper, ptr %64, align 4
  %65 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 21
  store ptr @e1000_power_down_phy_copper_80003es2lan, ptr %65, align 4
  %66 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 8
  store i32 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 14
  store i16 47, ptr %67, align 2
  %68 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 10
  store i32 100, ptr %68, align 4
  %69 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  store i32 5, ptr %69, align 4
  %70 = tail call i32 @e1000e_get_phy_id(ptr noundef %2) #4
  %71 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 9
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 21040288
  %74 = select i1 %73, i32 %70, i32 -2
  br label %75

75:                                               ; preds = %63, %61
  %76 = phi i32 [ 0, %61 ], [ %74, %63 ]
  ret i32 %76
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_for_serdes_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_fiber_serdes_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_for_copper_link(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_setup_copper_link_80003es2lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %6 = and i32 %5, -6209
  %7 = or i32 %6, 64
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %7) #4
  %8 = tail call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 1668, i16 noundef zeroext -1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 1673, ptr noundef nonnull %2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load i16, ptr %2, align 2
  %15 = or i16 %14, 63
  store i16 %15, ptr %2, align 2
  %16 = tail call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 1673, i16 noundef zeroext %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i16, ptr %2, align 2
  %23 = or i16 %22, 16
  store i16 %23, ptr %2, align 2
  %24 = tail call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 2, i16 noundef zeroext %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = tail call fastcc i32 @e1000_copper_link_setup_gg82563_80003es2lan(ptr noundef %0)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call i32 @e1000e_setup_copper_link(ptr noundef %0) #4
  br label %31

31:                                               ; preds = %29, %26, %21, %18, %13, %10, %1
  %32 = phi i32 [ %30, %29 ], [ %8, %1 ], [ %11, %10 ], [ %16, %13 ], [ %19, %18 ], [ %24, %21 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %0, i16 noundef zeroext 8) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 2031616
  %9 = zext i16 %2 to i32
  %10 = or i32 %8, %9
  tail call void @__ew32(ptr noundef %0, i32 noundef 52, i32 noundef %10) #4
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #4
  br label %16

16:                                               ; preds = %16, %6
  %17 = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %16

19:                                               ; preds = %16
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr i8, ptr %20, i32 23388
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %23 = and i32 %22, -9
  tail call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %23) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  br label %24

24:                                               ; preds = %19, %3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %0, i16 noundef zeroext 8) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 2031616
  %9 = or i32 %8, 2097152
  tail call void @__ew32(ptr noundef %0, i32 noundef 52, i32 noundef %9) #4
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #4
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 52
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr %2, align 2
  br label %19

19:                                               ; preds = %19, %6
  %20 = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %19

22:                                               ; preds = %19
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 23388
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %26 = and i32 %25, -9
  tail call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %26) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  br label %27

27:                                               ; preds = %22, %3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_copper_link_setup_gg82563_80003es2lan(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 85, ptr noundef nonnull %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %104

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = or i16 %8, 23
  store i16 %9, ptr %2, align 2
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %0, i32 noundef 85, i16 noundef zeroext %9) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %104

14:                                               ; preds = %7
  %15 = load ptr, ptr %3, align 4
  %16 = call i32 %15(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %2) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %104

18:                                               ; preds = %14
  %19 = load i16, ptr %2, align 2
  %20 = and i16 %19, -97
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 18
  %22 = load i8, ptr %21, align 2
  switch i8 %22, label %25 [
    i8 1, label %27
    i8 2, label %23
  ]

23:                                               ; preds = %18
  %24 = or i16 %20, 32
  br label %27

25:                                               ; preds = %18
  %26 = or i16 %19, 96
  br label %27

27:                                               ; preds = %25, %23, %18
  %28 = phi i16 [ %26, %25 ], [ %24, %23 ], [ %20, %18 ]
  %29 = and i16 %28, -3
  store i16 %29, ptr %2, align 2
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 19
  %31 = load i8, ptr %30, align 1, !range !11
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = or i16 %28, 2
  store i16 %34, ptr %2, align 2
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i16 [ %34, %33 ], [ %29, %27 ]
  %37 = load ptr, ptr %10, align 4
  %38 = call i32 %37(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %36) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %104

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %42(ptr noundef %0) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %104

45:                                               ; preds = %40
  store i16 2056, ptr %2, align 2
  %46 = call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 2056)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %104

48:                                               ; preds = %45
  %49 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 31, ptr noundef nonnull %2)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %104

51:                                               ; preds = %48
  %52 = load i16, ptr %2, align 2
  %53 = or i16 %52, 8192
  store i16 %53, ptr %2, align 2
  %54 = call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 31, i16 noundef zeroext %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %104

56:                                               ; preds = %51
  %57 = load ptr, ptr %3, align 4
  %58 = call i32 %57(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %2) #4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %56
  %61 = load i16, ptr %2, align 2
  %62 = and i16 %61, -8193
  store i16 %62, ptr %2, align 2
  %63 = load ptr, ptr %10, align 4
  %64 = call i32 %63(ptr noundef %0, i32 noundef 26, i16 noundef zeroext %62) #4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %104

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 24
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %71 = and i32 %70, -12582913
  call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %71) #4
  %72 = load ptr, ptr %3, align 4
  %73 = call i32 %72(ptr noundef %0, i32 noundef 6196, ptr noundef nonnull %2) #4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = call zeroext i1 %77(ptr noundef %0) #4
  br i1 %78, label %95, label %79

79:                                               ; preds = %75
  %80 = load i16, ptr %2, align 2
  %81 = or i16 %80, 1
  store i16 %81, ptr %2, align 2
  %82 = load ptr, ptr %10, align 4
  %83 = call i32 %82(ptr noundef %0, i32 noundef 6196, i16 noundef zeroext %81) #4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %79
  %86 = load ptr, ptr %3, align 4
  %87 = call i32 %86(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %2) #4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load i16, ptr %2, align 2
  %91 = and i16 %90, -2049
  store i16 %91, ptr %2, align 2
  %92 = load ptr, ptr %10, align 4
  %93 = call i32 %92(ptr noundef %0, i32 noundef 6192, i16 noundef zeroext %91) #4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %89, %75
  %96 = load ptr, ptr %3, align 4
  %97 = call i32 %96(ptr noundef %0, i32 noundef 6226, ptr noundef nonnull %2) #4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i16, ptr %2, align 2
  %101 = or i16 %100, 16
  store i16 %101, ptr %2, align 2
  %102 = load ptr, ptr %10, align 4
  %103 = call i32 %102(ptr noundef %0, i32 noundef 6226, i16 noundef zeroext %101) #4
  br label %104

104:                                              ; preds = %99, %95, %89, %85, %79, %66, %60, %56, %51, %48, %45, %40, %35, %14, %7, %1
  %105 = phi i32 [ %5, %1 ], [ %12, %7 ], [ %16, %14 ], [ %38, %35 ], [ %43, %40 ], [ %46, %45 ], [ %49, %48 ], [ %54, %51 ], [ %58, %56 ], [ %64, %60 ], [ %73, %66 ], [ %83, %79 ], [ %87, %85 ], [ %93, %89 ], [ %97, %95 ], [ %103, %99 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_copper_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = zext i16 %1 to i32
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = mul nuw i32 %3, 65537
  br label %6

6:                                                ; preds = %16, %2
  %7 = phi i32 [ 0, %2 ], [ %22, %16 ]
  %8 = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 23388
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %14 = and i32 %13, %5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  tail call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #4
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #4
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #4
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #4
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #4
  %22 = add nuw nsw i32 %7, 1
  %23 = icmp eq i32 %22, 50
  br i1 %23, label %26, label %6

24:                                               ; preds = %10
  %25 = or i32 %13, %3
  tail call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %25) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  br label %26

26:                                               ; preds = %24, %16, %6
  %27 = phi i32 [ 0, %24 ], [ -13, %16 ], [ -13, %6 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_put_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_up_phy_copper(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_power_down_phy_copper_80003es2lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call zeroext i1 %3(ptr noundef %0) #4
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @e1000_power_down_phy_copper(ptr noundef %0) #4
  br label %11

11:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_down_phy_copper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_id_led_init_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_blink_led_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000e_check_mng_mode_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_cleanup_led_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_clear_hw_cntrs_80003es2lan(ptr noundef %0) #0 {
  tail call void @e1000e_clear_hw_cntrs_base(ptr noundef %0) #4
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16476
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 16480
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 16484
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 16488
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 16492
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 16496
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 16600
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 16604
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 16608
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 16612
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 16616
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 16620
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 16388
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr i8, ptr %42, i32 16396
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 16436
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr i8, ptr %48, i32 16444
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 16632
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr i8, ptr %54, i32 16636
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr i8, ptr %57, i32 16564
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %60 = load ptr, ptr %2, align 4
  %61 = getelementptr i8, ptr %60, i32 16568
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr i8, ptr %63, i32 16572
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr i8, ptr %66, i32 16640
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr i8, ptr %69, i32 16676
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %72 = load ptr, ptr %2, align 4
  %73 = getelementptr i8, ptr %72, i32 16644
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %75 = load ptr, ptr %2, align 4
  %76 = getelementptr i8, ptr %75, i32 16648
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %78 = load ptr, ptr %2, align 4
  %79 = getelementptr i8, ptr %78, i32 16652
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %81 = load ptr, ptr %2, align 4
  %82 = getelementptr i8, ptr %81, i32 16656
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %84 = load ptr, ptr %2, align 4
  %85 = getelementptr i8, ptr %84, i32 16664
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %87 = load ptr, ptr %2, align 4
  %88 = getelementptr i8, ptr %87, i32 16668
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %90 = load ptr, ptr %2, align 4
  %91 = getelementptr i8, ptr %90, i32 16672
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_clear_vfta_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_bus_info_pcie(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_set_lan_id_multi_port_pcie(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_link_up_info_80003es2lan(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call i32 @e1000e_get_speed_and_duplex_copper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0) #4
  br label %14

12:                                               ; preds = %3
  %13 = tail call i32 @e1000e_get_speed_and_duplex_fiber_serdes(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_led_on_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_led_off_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_update_mc_addr_list_generic(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_reset_hw_80003es2lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = tail call i32 @e1000e_disable_pcie_master(ptr noundef %0) #4
  tail call void @__ew32(ptr noundef %0, i32 noundef 216, i32 noundef -1) #4
  tail call void @__ew32(ptr noundef %0, i32 noundef 256, i32 noundef 0) #4
  tail call void @__ew32(ptr noundef %0, i32 noundef 1024, i32 noundef 8) #4
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #4
  %8 = load ptr, ptr %4, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, i16 2, i16 4
  %14 = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %0, i16 noundef zeroext %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %1
  %17 = or i32 %9, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %17) #4
  %18 = load i16, ptr %10, align 4
  br label %19

19:                                               ; preds = %19, %16
  %20 = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %19

22:                                               ; preds = %19
  %23 = icmp eq i16 %18, 0
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 23388
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %27 = select i1 %23, i32 -3, i32 -5
  %28 = and i32 %26, %27
  tail call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %28) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  %29 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i16, ptr %2, align 2
  %33 = or i16 %32, 512
  store i16 %33, ptr %2, align 2
  %34 = tail call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %33)
  br label %35

35:                                               ; preds = %31, %22
  %36 = tail call i32 @e1000e_get_auto_rd_done(ptr noundef %0) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  tail call void @__ew32(ptr noundef %0, i32 noundef 216, i32 noundef -1) #4
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i8, ptr %39, i32 192
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %42 = tail call i32 @e1000_check_alt_mac_addr_generic(ptr noundef %0) #4
  br label %43

43:                                               ; preds = %38, %35, %1
  %44 = phi i32 [ %42, %38 ], [ %14, %1 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_init_hw_80003es2lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 14376
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = or i32 %8, 4194304
  tail call void @__ew32(ptr noundef %0, i32 noundef 14376, i32 noundef %9) #4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 14632
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %13 = or i32 %12, 4194304
  tail call void @__ew32(ptr noundef %0, i32 noundef 14632, i32 noundef %13) #4
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 14400
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  %20 = select i1 %19, i32 -2013265921, i32 -2014314497
  %21 = and i32 %20, %16
  tail call void @__ew32(ptr noundef %0, i32 noundef 14400, i32 noundef %21) #4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 14656
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i8, ptr %25, i32 1024
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %28 = and i32 %27, 268435456
  %29 = and i32 %24, -268435457
  %30 = or i32 %28, %29
  %31 = xor i32 %30, 268435456
  tail call void @__ew32(ptr noundef %0, i32 noundef 14656, i32 noundef %31) #4
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 20488
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %35 = or i32 %34, 196608
  tail call void @__ew32(ptr noundef %0, i32 noundef 20488, i32 noundef %35) #4
  %36 = load ptr, ptr %4, align 4
  %37 = tail call i32 %36(ptr noundef %0) #4
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %0) #4
  %40 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %41 = load i16, ptr %40, align 4
  tail call void @e1000e_init_rx_addrs(ptr noundef %0, i16 noundef zeroext %41) #4
  %42 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 16
  %43 = load i16, ptr %42, align 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %45, %1
  %46 = phi i32 [ %49, %45 ], [ 0, %1 ]
  %47 = shl nuw nsw i32 %46, 2
  %48 = add nuw nsw i32 %47, 20992
  tail call void @__ew32(ptr noundef %0, i32 noundef %48, i32 noundef 0) #4
  %49 = add nuw nsw i32 %46, 1
  %50 = load i16, ptr %42, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %45, label %53

53:                                               ; preds = %45
  %54 = trunc i32 %49 to i16
  br label %55

55:                                               ; preds = %53, %1
  %56 = phi i16 [ 0, %1 ], [ %54, %53 ]
  store i16 %56, ptr %3, align 2
  %57 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 15
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef %0) #4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %106

61:                                               ; preds = %55
  %62 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i16, ptr %2, align 2
  %66 = or i16 %65, 512
  store i16 %66, ptr %2, align 2
  %67 = tail call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load ptr, ptr %5, align 4
  %70 = getelementptr i8, ptr %69, i32 14376
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %72 = and i32 %71, -25100289
  %73 = or i32 %72, 21037056
  tail call void @__ew32(ptr noundef %0, i32 noundef 14376, i32 noundef %73) #4
  %74 = load ptr, ptr %5, align 4
  %75 = getelementptr i8, ptr %74, i32 14632
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %77 = and i32 %76, -25100289
  %78 = or i32 %77, 21037056
  tail call void @__ew32(ptr noundef %0, i32 noundef 14632, i32 noundef %78) #4
  %79 = load ptr, ptr %5, align 4
  %80 = getelementptr i8, ptr %79, i32 1024
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %82 = or i32 %81, 16777216
  tail call void @__ew32(ptr noundef %0, i32 noundef 1024, i32 noundef %82) #4
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr i8, ptr %83, i32 1028
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %86 = and i32 %85, -1047553
  %87 = or i32 %86, 65536
  tail call void @__ew32(ptr noundef %0, i32 noundef 1028, i32 noundef %87) #4
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr i8, ptr %88, i32 1040
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %91 = and i32 %90, -1024
  %92 = or i32 %91, 8
  tail call void @__ew32(ptr noundef %0, i32 noundef 1040, i32 noundef %92) #4
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr i8, ptr %93, i32 24324
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %96 = and i32 %95, -1048577
  tail call void @__ew32(ptr noundef %0, i32 noundef 24324, i32 noundef %96) #4
  %97 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9
  store i8 1, ptr %97, align 4
  %98 = call fastcc i32 @e1000_read_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 31, ptr noundef nonnull %3)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %68
  %101 = load i16, ptr %3, align 2
  %102 = and i16 %101, 12
  %103 = icmp eq i16 %102, 4
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i8 0, ptr %97, align 4
  br label %105

105:                                              ; preds = %104, %100, %68
  tail call void @e1000_clear_hw_cntrs_80003es2lan(ptr noundef %0)
  br label %106

106:                                              ; preds = %105, %55
  %107 = phi i32 [ %98, %105 ], [ %59, %55 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_link_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_led_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_write_vfta_generic(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_config_collision_dist_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_set_generic(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_read_mac_addr_80003es2lan(ptr noundef %0) #0 {
  %2 = tail call i32 @e1000_check_alt_mac_addr_generic(ptr noundef %0) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @e1000_read_mac_addr_generic(ptr noundef %0) #4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_get_count_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_clear_hw_cntrs_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_speed_and_duplex_copper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_speed_and_duplex_fiber_serdes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_disable_pcie_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_acquire_phy_80003es2lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  %5 = select i1 %4, i16 2, i16 4
  %6 = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %0, i16 noundef zeroext %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_release_phy_80003es2lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %3 = load i16, ptr %2, align 4
  br label %4

4:                                                ; preds = %4, %1
  %5 = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %4

7:                                                ; preds = %4
  %8 = icmp eq i16 %3, 0
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 23388
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %13 = select i1 %8, i32 -3, i32 -5
  %14 = and i32 %12, %13
  tail call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %14) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_auto_rd_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_alt_mac_addr_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_init_rx_addrs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_mac_addr_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_cfg_on_link_up_80003es2lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #4
  store i16 0, ptr %6, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #4
  store i16 0, ptr %7, align 2, !annotation !10
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %173

11:                                               ; preds = %1
  %12 = call i32 @e1000e_get_speed_and_duplex_copper(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %173

14:                                               ; preds = %11
  %15 = load i16, ptr %6, align 2
  %16 = icmp eq i16 %15, 1000
  br i1 %16, label %17, label %93

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #4
  store i16 0, ptr %5, align 2, !annotation !10
  store i16 0, ptr %4, align 2
  %18 = call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 0) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %91

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 1040
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %25 = and i32 %24, -1024
  %26 = or i32 %25, 8
  call void @__ew32(ptr noundef %0, i32 noundef 1040, i32 noundef %26) #4
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %4) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %91

31:                                               ; preds = %20
  %32 = load ptr, ptr %27, align 4
  %33 = call i32 %32(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %5) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %91

35:                                               ; preds = %31
  %36 = load i16, ptr %4, align 2
  %37 = load i16, ptr %5, align 2
  %38 = icmp eq i16 %36, %37
  br i1 %38, label %85, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %27, align 4
  %41 = call i32 %40(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %4) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %39
  %44 = load ptr, ptr %27, align 4
  %45 = call i32 %44(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %5) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %43
  %48 = load i16, ptr %4, align 2
  %49 = load i16, ptr %5, align 2
  %50 = icmp eq i16 %48, %49
  br i1 %50, label %85, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %27, align 4
  %53 = call i32 %52(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %4) #4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load ptr, ptr %27, align 4
  %57 = call i32 %56(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %5) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load i16, ptr %4, align 2
  %61 = load i16, ptr %5, align 2
  %62 = icmp eq i16 %60, %61
  br i1 %62, label %85, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %27, align 4
  %65 = call i32 %64(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %4) #4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load ptr, ptr %27, align 4
  %69 = call i32 %68(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %5) #4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i16, ptr %4, align 2
  %73 = load i16, ptr %5, align 2
  %74 = icmp eq i16 %72, %73
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %27, align 4
  %77 = call i32 %76(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %4) #4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load ptr, ptr %27, align 4
  %81 = call i32 %80(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %5) #4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i16, ptr %4, align 2
  br label %85

85:                                               ; preds = %83, %71, %59, %47, %35
  %86 = phi i16 [ %36, %35 ], [ %48, %47 ], [ %60, %59 ], [ %72, %71 ], [ %84, %83 ]
  %87 = and i16 %86, -2049
  store i16 %87, ptr %4, align 2
  %88 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 %89(ptr noundef %0, i32 noundef 6192, i16 noundef zeroext %87) #4
  br label %91

91:                                               ; preds = %85, %79, %75, %67, %63, %55, %51, %43, %39, %31, %20, %17
  %92 = phi i32 [ %90, %85 ], [ %18, %17 ], [ %29, %20 ], [ %33, %31 ], [ %41, %39 ], [ %45, %43 ], [ %53, %51 ], [ %57, %55 ], [ %65, %63 ], [ %69, %67 ], [ %77, %75 ], [ %81, %79 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  br label %173

93:                                               ; preds = %14
  %94 = load i16, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !10
  store i16 4, ptr %2, align 2
  %95 = call fastcc i32 @e1000_write_kmrn_reg_80003es2lan(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 4) #4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %171

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 1040
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %102 = and i32 %101, -1024
  %103 = or i32 %102, 9
  call void @__ew32(ptr noundef %0, i32 noundef 1040, i32 noundef %103) #4
  %104 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 %105(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %2) #4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %171

108:                                              ; preds = %97
  %109 = load ptr, ptr %104, align 4
  %110 = call i32 %109(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %3) #4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %171

112:                                              ; preds = %108
  %113 = load i16, ptr %2, align 2
  %114 = load i16, ptr %3, align 2
  %115 = icmp eq i16 %113, %114
  br i1 %115, label %162, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %104, align 4
  %118 = call i32 %117(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %2) #4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %171

120:                                              ; preds = %116
  %121 = load ptr, ptr %104, align 4
  %122 = call i32 %121(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %3) #4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %171

124:                                              ; preds = %120
  %125 = load i16, ptr %2, align 2
  %126 = load i16, ptr %3, align 2
  %127 = icmp eq i16 %125, %126
  br i1 %127, label %162, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %104, align 4
  %130 = call i32 %129(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %2) #4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %171

132:                                              ; preds = %128
  %133 = load ptr, ptr %104, align 4
  %134 = call i32 %133(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %3) #4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %171

136:                                              ; preds = %132
  %137 = load i16, ptr %2, align 2
  %138 = load i16, ptr %3, align 2
  %139 = icmp eq i16 %137, %138
  br i1 %139, label %162, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %104, align 4
  %142 = call i32 %141(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %2) #4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %171

144:                                              ; preds = %140
  %145 = load ptr, ptr %104, align 4
  %146 = call i32 %145(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %3) #4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %144
  %149 = load i16, ptr %2, align 2
  %150 = load i16, ptr %3, align 2
  %151 = icmp eq i16 %149, %150
  br i1 %151, label %162, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %104, align 4
  %154 = call i32 %153(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %2) #4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %152
  %157 = load ptr, ptr %104, align 4
  %158 = call i32 %157(ptr noundef %0, i32 noundef 6192, ptr noundef nonnull %3) #4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = load i16, ptr %2, align 2
  br label %162

162:                                              ; preds = %160, %148, %136, %124, %112
  %163 = phi i16 [ %113, %112 ], [ %125, %124 ], [ %137, %136 ], [ %149, %148 ], [ %161, %160 ]
  %164 = icmp eq i16 %94, 1
  %165 = and i16 %163, -2049
  %166 = select i1 %164, i16 2048, i16 0
  %167 = or i16 %165, %166
  store i16 %167, ptr %2, align 2
  %168 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %169 = load ptr, ptr %168, align 4
  %170 = call i32 %169(ptr noundef %0, i32 noundef 6192, i16 noundef zeroext %167) #4
  br label %171

171:                                              ; preds = %162, %156, %152, %144, %140, %132, %128, %120, %116, %108, %97, %93
  %172 = phi i32 [ %170, %162 ], [ %95, %93 ], [ %106, %97 ], [ %110, %108 ], [ %118, %116 ], [ %122, %120 ], [ %130, %128 ], [ %134, %132 ], [ %142, %140 ], [ %146, %144 ], [ %154, %152 ], [ %158, %156 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %173

173:                                              ; preds = %171, %91, %11, %1
  %174 = phi i32 [ %12, %11 ], [ %92, %91 ], [ %172, %171 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #4
  ret i32 %174
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_reset_block_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_sw_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_phy_force_speed_duplex_80003es2lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #4
  store i8 0, ptr %3, align 1, !annotation !10
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %2) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %58

8:                                                ; preds = %1
  %9 = load i16, ptr %2, align 2
  %10 = and i16 %9, -97
  store i16 %10, ptr %2, align 2
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %10) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 4
  %17 = call i32 %16(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  call void @e1000e_phy_force_speed_duplex_setup(ptr noundef %0, ptr noundef nonnull %2) #4
  %20 = load i16, ptr %2, align 2
  %21 = or i16 %20, -32768
  store i16 %21, ptr %2, align 2
  %22 = load ptr, ptr %11, align 4
  %23 = call i32 %22(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %21) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748) #4
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 24
  %28 = load i8, ptr %27, align 4, !range !11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %3) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i8, ptr %3, align 1, !range !11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 @e1000e_phy_reset_dsp(ptr noundef %0) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36, %33
  %40 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %3) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39, %25
  %43 = load ptr, ptr %4, align 4
  %44 = call i32 %43(ptr noundef %0, i32 noundef 85, ptr noundef nonnull %2) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i16, ptr %2, align 2
  %48 = and i16 %47, -24
  %49 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 19
  %50 = load i8, ptr %49, align 2
  %51 = and i8 %50, 3
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i16 5, i16 4
  %54 = or i16 %48, %53
  %55 = or i16 %54, 16
  store i16 %55, ptr %2, align 2
  %56 = load ptr, ptr %11, align 4
  %57 = call i32 %56(ptr noundef %0, i32 noundef 85, i16 noundef zeroext %55) #4
  br label %58

58:                                               ; preds = %46, %42, %39, %36, %30, %19, %15, %8, %1
  %59 = phi i32 [ %57, %46 ], [ %6, %1 ], [ %13, %8 ], [ %17, %15 ], [ %23, %19 ], [ %31, %30 ], [ %37, %36 ], [ %40, %39 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_cfg_done_80003es2lan(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 1
  %5 = select i1 %4, i32 524288, i32 262144
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %14, %1
  %8 = phi i32 [ 100, %1 ], [ %15, %14 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 4112
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %12 = and i32 %11, %5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %15 = add nsw i32 %8, -1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %7

17:                                               ; preds = %14, %7
  %18 = phi i32 [ 0, %7 ], [ -9, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_cable_length_80003es2lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 186, ptr noundef nonnull %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = and i16 %8, 7
  %10 = icmp ugt i16 %9, 5
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = zext i16 %9 to i32
  %13 = getelementptr [11 x i16], ptr @e1000_gg82563_cable_length_table, i32 0, i32 %12
  %14 = load i16, ptr %13, align 2
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 17
  store i16 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %12, 5
  %17 = getelementptr [11 x i16], ptr @e1000_gg82563_cable_length_table, i32 0, i32 %16
  %18 = load i16, ptr %17, align 2
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 16
  store i16 %18, ptr %19, align 2
  %20 = zext i16 %14 to i32
  %21 = zext i16 %18 to i32
  %22 = add nuw nsw i32 %21, %20
  %23 = lshr i32 %22, 1
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 15
  store i16 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %11, %7, %1
  %27 = phi i32 [ 0, %11 ], [ %5, %1 ], [ -2, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_info_m88(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_read_phy_reg_gg82563_80003es2lan(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %7, i16 2, i16 4
  %9 = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %0, i16 noundef zeroext %8) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %3
  %12 = and i32 %1, 31
  %13 = icmp ugt i32 %12, 29
  %14 = select i1 %13, i32 29, i32 22
  %15 = lshr i32 %1, 5
  %16 = and i32 %15, 2047
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %4, align 2
  %18 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %0, i32 noundef %14, i16 noundef zeroext %17) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %11
  %21 = load i16, ptr %5, align 4
  br label %22

22:                                               ; preds = %22, %20
  %23 = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %22

25:                                               ; preds = %22
  %26 = icmp eq i16 %21, 0
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 23388
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %31 = select i1 %26, i32 -3, i32 -5
  %32 = and i32 %30, %31
  tail call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %32) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  br label %73

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9
  %35 = load i8, ptr %34, align 4, !range !11
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  %38 = call i32 @e1000e_read_phy_reg_mdic(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %4) #4
  %39 = load i16, ptr %4, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %16, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = load i16, ptr %5, align 4
  br label %44

44:                                               ; preds = %44, %42
  %45 = call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %44

47:                                               ; preds = %44
  %48 = icmp eq i16 %43, 0
  %49 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 23388
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %53 = select i1 %48, i32 -3, i32 -5
  %54 = and i32 %52, %53
  call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %54) #4
  call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  br label %73

55:                                               ; preds = %37
  call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  %56 = call i32 @e1000e_read_phy_reg_mdic(ptr noundef %0, i32 noundef %12, ptr noundef %2) #4
  call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  br label %59

57:                                               ; preds = %33
  %58 = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %0, i32 noundef %12, ptr noundef %2) #4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load i16, ptr %5, align 4
  br label %62

62:                                               ; preds = %62, %59
  %63 = call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %62

65:                                               ; preds = %62
  %66 = icmp eq i16 %61, 0
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 23388
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %71 = select i1 %66, i32 -3, i32 -5
  %72 = and i32 %70, %71
  call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %72) #4
  call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  br label %73

73:                                               ; preds = %65, %47, %25, %3
  %74 = phi i32 [ %18, %25 ], [ -2, %47 ], [ %60, %65 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_hw_reset_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_set_d3_lplu_state(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_write_phy_reg_gg82563_80003es2lan(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %7, i16 2, i16 4
  %9 = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %0, i16 noundef zeroext %8) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %3
  %12 = and i32 %1, 31
  %13 = icmp ugt i32 %12, 29
  %14 = select i1 %13, i32 29, i32 22
  %15 = lshr i32 %1, 5
  %16 = and i32 %15, 2047
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %4, align 2
  %18 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %0, i32 noundef %14, i16 noundef zeroext %17) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %11
  %21 = load i16, ptr %5, align 4
  br label %22

22:                                               ; preds = %22, %20
  %23 = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %22

25:                                               ; preds = %22
  %26 = icmp eq i16 %21, 0
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 23388
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %31 = select i1 %26, i32 -3, i32 -5
  %32 = and i32 %30, %31
  tail call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %32) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  br label %73

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9
  %35 = load i8, ptr %34, align 4, !range !11
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  %38 = call i32 @e1000e_read_phy_reg_mdic(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %4) #4
  %39 = load i16, ptr %4, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %16, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = load i16, ptr %5, align 4
  br label %44

44:                                               ; preds = %44, %42
  %45 = call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %44

47:                                               ; preds = %44
  %48 = icmp eq i16 %43, 0
  %49 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 23388
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %53 = select i1 %48, i32 -3, i32 -5
  %54 = and i32 %52, %53
  call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %54) #4
  call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  br label %73

55:                                               ; preds = %37
  call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  %56 = call i32 @e1000e_write_phy_reg_mdic(ptr noundef %0, i32 noundef %12, i16 noundef zeroext %2) #4
  call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #4
  br label %59

57:                                               ; preds = %33
  %58 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %0, i32 noundef %12, i16 noundef zeroext %2) #4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load i16, ptr %5, align 4
  br label %62

62:                                               ; preds = %62, %59
  %63 = call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %62

65:                                               ; preds = %62
  %66 = icmp eq i16 %61, 0
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 23388
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %71 = select i1 %66, i32 -3, i32 -5
  %72 = and i32 %70, %71
  call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %72) #4
  call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  br label %73

73:                                               ; preds = %65, %47, %25, %3
  %74 = phi i32 [ %18, %25 ], [ -2, %47 ], [ %60, %65 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_phy_force_speed_duplex_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_has_link_generic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_reset_dsp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_mdic(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_mdic(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_acquire_nvm_80003es2lan(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @e1000_acquire_swfw_sync_80003es2lan(ptr noundef %0, i16 noundef zeroext 1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = tail call i32 @e1000e_acquire_nvm(ptr noundef %0) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %7, %4
  %8 = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %7

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 23388
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %15 = and i32 %14, -2
  tail call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %15) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  br label %16

16:                                               ; preds = %10, %4, %1
  %17 = phi i32 [ %2, %1 ], [ %5, %10 ], [ 0, %4 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_nvm_eerd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_release_nvm_80003es2lan(ptr noundef %0) #0 {
  tail call void @e1000e_release_nvm(ptr noundef %0) #4
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call i32 @e1000e_get_hw_semaphore(ptr noundef %0) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %2

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 23388
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %10 = and i32 %9, -2
  tail call void @__ew32(ptr noundef %0, i32 noundef 23388, i32 noundef %10) #4
  tail call void @e1000e_put_hw_semaphore(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reload_nvm_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_update_nvm_checksum_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_valid_led_default(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_validate_nvm_checksum_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_write_nvm_80003es2lan(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = tail call i32 @e1000e_write_nvm_spi(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_acquire_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_release_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_nvm_spi(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = !{i64 1618128}
!9 = !{i64 2155603935}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{i64 2155613748}
