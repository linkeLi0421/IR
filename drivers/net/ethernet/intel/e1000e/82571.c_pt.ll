; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/82571.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/82571.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_info = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [52 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [50 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
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

@e82571_mac_ops = internal constant %struct.e1000_mac_operations { ptr @e1000e_id_led_init_generic, ptr null, ptr null, ptr null, ptr @e1000e_cleanup_led_generic, ptr @e1000_clear_hw_cntrs_82571, ptr @e1000_clear_vfta_82571, ptr @e1000e_get_bus_info_pcie, ptr @e1000_set_lan_id_multi_port_pcie, ptr null, ptr null, ptr @e1000e_led_off_generic, ptr @e1000e_update_mc_addr_list_generic, ptr @e1000_reset_hw_82571, ptr @e1000_init_hw_82571, ptr @e1000_setup_link_82571, ptr null, ptr @e1000e_setup_led_generic, ptr @e1000_write_vfta_generic, ptr @e1000e_config_collision_dist_generic, ptr @e1000e_rar_set_generic, ptr @e1000_read_mac_addr_82571, ptr @e1000e_rar_get_count_generic }, align 4
@e82_phy_ops_igp = internal constant %struct.e1000_phy_operations { ptr @e1000_get_hw_semaphore_82571, ptr null, ptr @e1000_check_polarity_igp, ptr @e1000e_check_reset_block_generic, ptr null, ptr @e1000e_phy_force_speed_duplex_igp, ptr @e1000_get_cfg_done_82571, ptr @e1000e_get_cable_length_igp_2, ptr @e1000e_get_phy_info_igp, ptr null, ptr @e1000e_read_phy_reg_igp, ptr null, ptr null, ptr @e1000_put_hw_semaphore_82571, ptr @e1000e_phy_hw_reset_generic, ptr @e1000_set_d0_lplu_state_82571, ptr @e1000e_set_d3_lplu_state, ptr @e1000e_write_phy_reg_igp, ptr null, ptr null, ptr null, ptr null }, align 4
@e82571_nvm_ops = internal constant %struct.e1000_nvm_operations { ptr @e1000_acquire_nvm_82571, ptr @e1000e_read_nvm_eerd, ptr @e1000_release_nvm_82571, ptr @e1000e_reload_nvm_generic, ptr @e1000_update_nvm_checksum_82571, ptr @e1000_valid_led_default_82571, ptr @e1000_validate_nvm_checksum_82571, ptr @e1000_write_nvm_82571 }, align 4
@e1000_82571_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 0, i32 6490284, i32 72, i32 38, i32 9234, ptr @e1000_get_variants_82571, ptr @e82571_mac_ops, ptr @e82_phy_ops_igp, ptr @e82571_nvm_ops }, align 4
@e1000_82572_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 1, i32 4260012, i32 72, i32 38, i32 9234, ptr @e1000_get_variants_82571, ptr @e82571_mac_ops, ptr @e82_phy_ops_igp, ptr @e82571_nvm_ops }, align 4
@e82_phy_ops_m88 = internal constant %struct.e1000_phy_operations { ptr @e1000_get_hw_semaphore_82571, ptr null, ptr @e1000_check_polarity_m88, ptr @e1000e_check_reset_block_generic, ptr @e1000e_phy_sw_reset, ptr @e1000e_phy_force_speed_duplex_m88, ptr @e1000e_get_cfg_done_generic, ptr @e1000e_get_cable_length_m88, ptr @e1000e_get_phy_info_m88, ptr null, ptr @e1000e_read_phy_reg_m88, ptr null, ptr null, ptr @e1000_put_hw_semaphore_82571, ptr @e1000e_phy_hw_reset_generic, ptr @e1000_set_d0_lplu_state_82571, ptr @e1000e_set_d3_lplu_state, ptr @e1000e_write_phy_reg_m88, ptr null, ptr null, ptr null, ptr null }, align 4
@e1000_82573_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 2, i32 67661, i32 136, i32 20, i32 1522, ptr @e1000_get_variants_82571, ptr @e82571_mac_ops, ptr @e82_phy_ops_m88, ptr @e82571_nvm_ops }, align 4
@e82_phy_ops_bm = internal constant %struct.e1000_phy_operations { ptr @e1000_get_hw_semaphore_82571, ptr null, ptr @e1000_check_polarity_m88, ptr @e1000e_check_reset_block_generic, ptr @e1000e_phy_sw_reset, ptr @e1000e_phy_force_speed_duplex_m88, ptr @e1000e_get_cfg_done_generic, ptr @e1000e_get_cable_length_m88, ptr @e1000e_get_phy_info_m88, ptr null, ptr @e1000e_read_phy_reg_bm2, ptr null, ptr null, ptr @e1000_put_hw_semaphore_82571, ptr @e1000e_phy_hw_reset_generic, ptr @e1000_set_d0_lplu_state_82571, ptr @e1000e_set_d3_lplu_state, ptr @e1000e_write_phy_reg_bm2, ptr null, ptr null, ptr null, ptr null }, align 4
@e1000_82574_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 3, i32 85165, i32 18120, i32 32, i32 9234, ptr @e1000_get_variants_82571, ptr @e82571_mac_ops, ptr @e82_phy_ops_bm, ptr @e82571_nvm_ops }, align 4
@e1000_82583_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 4, i32 84141, i32 17544, i32 32, i32 9234, ptr @e1000_get_variants_82571, ptr @e82571_mac_ops, ptr @e82_phy_ops_bm, ptr @e82571_nvm_ops }, align 4
@e1000_get_variants_82571.global_quad_port_a = internal unnamed_addr global i32 0, align 4
@swflag_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swflag_mutex, i64 12), ptr getelementptr (i8, ptr @swflag_mutex, i64 12) } }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @e1000_check_phy_82574(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 21, ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i16, ptr %3, align 2
  %10 = icmp eq i16 %9, -1
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 4
  %13 = call i32 %12(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %2) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i16, ptr %2, align 2
  %17 = and i16 %16, 255
  %18 = icmp eq i16 %17, 255
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %8
  br label %20

20:                                               ; preds = %19, %15, %11, %1
  %21 = phi i1 [ false, %19 ], [ false, %1 ], [ false, %11 ], [ true, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i1 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @e1000e_get_laa_state_82571(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp ne i8 %7, 0
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ %8, %5 ], [ false, %1 ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_set_laa_state_82571(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = zext i1 %1 to i8
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9
  store i8 %7, ptr %8, align 4
  br i1 %1, label %9, label %18

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 1
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = add nsw i32 %15, -1
  %17 = tail call i32 %11(ptr noundef %0, ptr noundef %12, i32 noundef %16) #5
  br label %18

18:                                               ; preds = %9, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_variants_82571(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %5 = load ptr, ptr %4, align 32
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %10 = and i32 %9, 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %13 = load ptr, ptr %12, align 32
  %14 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8
  %15 = load i16, ptr %14, align 2
  switch i16 %15, label %17 [
    i16 4191, label %18
    i16 4222, label %18
    i16 4261, label %18
    i16 4192, label %16
    i16 4313, label %16
    i16 4314, label %16
    i16 4223, label %16
  ]

16:                                               ; preds = %1, %1, %1, %1
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %16, %1, %1, %1
  %19 = phi i32 [ 1, %17 ], [ 3, %16 ], [ 2, %1 ], [ 2, %1 ], [ 2, %1 ]
  %20 = phi ptr [ @e1000_setup_copper_link_82571, %17 ], [ @e1000_setup_fiber_serdes_link_82571, %16 ], [ @e1000_setup_fiber_serdes_link_82571, %1 ], [ @e1000_setup_fiber_serdes_link_82571, %1 ], [ @e1000_setup_fiber_serdes_link_82571, %1 ]
  %21 = phi ptr [ @e1000e_check_for_copper_link, %17 ], [ @e1000_check_for_serdes_link_82571, %16 ], [ @e1000e_check_for_fiber_link, %1 ], [ @e1000e_check_for_fiber_link, %1 ], [ @e1000e_check_for_fiber_link, %1 ]
  %22 = phi ptr [ @e1000e_get_speed_and_duplex_copper, %17 ], [ @e1000e_get_speed_and_duplex_fiber_serdes, %16 ], [ @e1000e_get_speed_and_duplex_fiber_serdes, %1 ], [ @e1000e_get_speed_and_duplex_fiber_serdes, %1 ], [ @e1000e_get_speed_and_duplex_fiber_serdes, %1 ]
  %23 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 12
  store i32 %19, ptr %23, align 4
  %24 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 16
  store ptr %20, ptr %24, align 4
  %25 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 3
  store ptr %21, ptr %25, align 4
  %26 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 9
  store ptr %22, ptr %26, align 4
  %27 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 16
  store i16 128, ptr %27, align 2
  %28 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 18
  store i16 15, ptr %28, align 4
  %29 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 20
  store i8 1, ptr %29, align 1
  %30 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %50 [
    i32 2, label %32
    i32 3, label %46
    i32 4, label %46
  ]

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 8
  store ptr @e1000_set_lan_id_single_port, ptr %33, align 4
  %34 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 2
  store ptr @e1000e_check_mng_mode_generic, ptr %34, align 4
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 10
  store ptr @e1000e_led_on_generic, ptr %35, align 4
  %36 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 1
  store ptr @e1000e_blink_led_generic, ptr %36, align 4
  %37 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 21
  store i8 1, ptr %37, align 4
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr i8, ptr %38, i32 23380
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %41 = and i32 %40, 14
  %42 = icmp ne i32 %41, 0
  %43 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 22
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 1
  %45 = load i32, ptr %30, align 4
  br label %55

46:                                               ; preds = %18, %18
  %47 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 8
  store ptr @e1000_set_lan_id_single_port, ptr %47, align 4
  %48 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 2
  store ptr @e1000_check_mng_mode_82574, ptr %48, align 4
  %49 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 10
  store ptr @e1000_led_on_82574, ptr %49, align 4
  br label %66

50:                                               ; preds = %18
  %51 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 2
  store ptr @e1000e_check_mng_mode_generic, ptr %51, align 4
  %52 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 10
  store ptr @e1000e_led_on_generic, ptr %52, align 4
  %53 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 1
  store ptr @e1000e_blink_led_generic, ptr %53, align 4
  %54 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 21
  store i8 1, ptr %54, align 4
  br label %55

55:                                               ; preds = %50, %32
  %56 = phi i32 [ %31, %50 ], [ %45, %32 ]
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load ptr, ptr %6, align 4
  %60 = getelementptr i8, ptr %59, i32 23384
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = or i32 %61, 2
  tail call void @__ew32(ptr noundef %3, i32 noundef 23384, i32 noundef %65) #5
  br label %66

66:                                               ; preds = %64, %55, %46
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr i8, ptr %67, i32 23376
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %70 = and i32 %69, -2
  tail call void @__ew32(ptr noundef %3, i32 noundef 23376, i32 noundef %70) #5
  br label %71

71:                                               ; preds = %66, %58
  %72 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 9, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr i8, ptr %74, i32 16
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %77 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 8
  store i16 8, ptr %77, align 2
  %78 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 6
  store i16 1, ptr %78, align 2
  %79 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 2
  %80 = load i32, ptr %79, align 4
  switch i32 %80, label %85 [
    i32 2, label %81
    i32 1, label %83
  ]

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 9
  store i16 32, ptr %82, align 4
  br label %91

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 9
  store i16 8, ptr %84, align 4
  br label %91

85:                                               ; preds = %71
  %86 = and i32 %76, 1024
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i16 8, i16 32
  %89 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 9
  store i16 %88, ptr %89, align 4
  %90 = select i1 %87, i16 8, i16 16
  br label %91

91:                                               ; preds = %85, %83, %81
  %92 = phi i16 [ %90, %85 ], [ 8, %83 ], [ 16, %81 ]
  %93 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 7
  store i16 %92, ptr %93, align 4
  %94 = load i32, ptr %30, align 4
  %95 = add i32 %94, -2
  %96 = icmp ult i32 %95, 3
  %97 = and i32 %76, 98304
  %98 = icmp eq i32 %97, 98304
  %99 = select i1 %96, i1 %98, i1 false
  %100 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 1
  br i1 %99, label %101, label %105

101:                                              ; preds = %91
  store i32 3, ptr %100, align 4
  %102 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 5
  store i16 2048, ptr %102, align 4
  %103 = and i32 %76, -1048577
  tail call void @__ew32(ptr noundef %3, i32 noundef 16, i32 noundef %103) #5
  %104 = load i32, ptr %30, align 4
  br label %115

105:                                              ; preds = %91
  store i32 2, ptr %100, align 4
  %106 = trunc i32 %76 to i16
  %107 = lshr i16 %106, 11
  %108 = and i16 %107, 15
  %109 = tail call i16 @llvm.umin.i16(i16 %108, i16 8) #5
  %110 = add nuw nsw i16 %109, 6
  %111 = zext i16 %110 to i32
  %112 = shl nuw nsw i32 1, %111
  %113 = trunc i32 %112 to i16
  %114 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 5
  store i16 %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %105, %101
  %116 = phi i32 [ %94, %105 ], [ %104, %101 ]
  %117 = add i32 %116, -3
  %118 = icmp ult i32 %117, 2
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  store ptr @e1000_get_hw_semaphore_82574, ptr %73, align 4
  %120 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 0, i32 2
  store ptr @e1000_put_hw_semaphore_82574, ptr %120, align 4
  br label %121

121:                                              ; preds = %119, %115
  %122 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5
  %123 = load i32, ptr %23, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  store i32 1, ptr %126, align 4
  br label %185

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 8
  store i32 1, ptr %128, align 4
  %129 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 14
  store i16 47, ptr %129, align 2
  %130 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 10
  store i32 100, ptr %130, align 4
  %131 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 20
  store ptr @e1000_power_up_phy_copper, ptr %131, align 4
  %132 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 21
  store ptr @e1000_power_down_phy_copper_82571, ptr %132, align 4
  switch i32 %116, label %237 [
    i32 0, label %133
    i32 1, label %133
    i32 2, label %135
    i32 3, label %139
    i32 4, label %139
  ]

133:                                              ; preds = %127, %127
  %134 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  store i32 4, ptr %134, align 4
  br label %144

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  store i32 2, ptr %136, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  %137 = tail call i32 @e1000e_get_phy_id(ptr noundef %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %171, label %237

139:                                              ; preds = %127, %127
  %140 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  store i32 8, ptr %140, align 4
  store ptr @e1000_get_hw_semaphore_82574, ptr %122, align 4
  %141 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 13
  store ptr @e1000_put_hw_semaphore_82574, ptr %141, align 4
  %142 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 15
  store ptr @e1000_set_d0_lplu_state_82574, ptr %142, align 4
  %143 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 16
  store ptr @e1000_set_d3_lplu_state_82574, ptr %143, align 4
  br label %144

144:                                              ; preds = %139, %133
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2
  switch i32 %116, label %168 [
    i32 0, label %145
    i32 1, label %145
    i32 4, label %147
    i32 3, label %147
  ]

145:                                              ; preds = %144, %144
  %146 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 9
  store i32 44565376, ptr %146, align 4
  br label %170

147:                                              ; preds = %144, %144
  %148 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 10
  %149 = load ptr, ptr %148, align 4
  %150 = call i32 %149(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %2) #5
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %147
  %153 = load i16, ptr %2, align 2
  %154 = zext i16 %153 to i32
  %155 = shl nuw i32 %154, 16
  %156 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 9
  store i32 %155, ptr %156, align 4
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #5
  %157 = load ptr, ptr %148, align 4
  %158 = call i32 %157(ptr noundef %3, i32 noundef 3, ptr noundef nonnull %2) #5
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %152
  %161 = load i16, ptr %2, align 2
  %162 = zext i16 %161 to i32
  %163 = load i32, ptr %156, align 4
  %164 = or i32 %163, %162
  store i32 %164, ptr %156, align 4
  %165 = and i16 %161, 15
  %166 = zext i16 %165 to i32
  %167 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 11
  store i32 %166, ptr %167, align 4
  br label %170

168:                                              ; preds = %152, %147, %144
  %169 = phi i32 [ -2, %144 ], [ %158, %152 ], [ %150, %147 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %237

170:                                              ; preds = %160, %145
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %171

171:                                              ; preds = %170, %135
  %172 = load i32, ptr %30, align 4
  switch i32 %172, label %237 [
    i32 0, label %173
    i32 1, label %173
    i32 2, label %177
    i32 3, label %181
    i32 4, label %181
  ]

173:                                              ; preds = %171, %171
  %174 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 9
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 44565376
  br i1 %176, label %185, label %237

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 9
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 21040320
  br i1 %180, label %185, label %237

181:                                              ; preds = %171, %171
  %182 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 9
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 21040305
  br i1 %184, label %185, label %237

185:                                              ; preds = %181, %177, %173, %125
  %186 = phi i32 [ %172, %181 ], [ 2, %177 ], [ %172, %173 ], [ %116, %125 ]
  %187 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %188 = load i16, ptr %187, align 2
  switch i16 %188, label %201 [
    i16 4260, label %189
    i16 4261, label %189
    i16 4284, label %189
    i16 4309, label %189
  ]

189:                                              ; preds = %185, %185, %185, %185
  %190 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %191 = load i32, ptr %190, align 8
  %192 = or i32 %191, 8192
  store i32 %192, ptr %190, align 8
  %193 = load i32, ptr @e1000_get_variants_82571.global_quad_port_a, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = or i32 %191, 12288
  store i32 %196, ptr %190, align 8
  br label %197

197:                                              ; preds = %195, %189
  %198 = add i32 %193, 1
  %199 = icmp eq i32 %198, 4
  %200 = select i1 %199, i32 0, i32 %198
  store i32 %200, ptr @e1000_get_variants_82571.global_quad_port_a, align 4
  br label %201

201:                                              ; preds = %197, %185
  switch i32 %186, label %237 [
    i32 0, label %202
    i32 2, label %229
  ]

202:                                              ; preds = %201
  %203 = load i16, ptr %187, align 2
  %204 = add i16 %203, -4191
  %205 = icmp ult i16 %204, 2
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = icmp eq i16 %203, 4190
  %208 = icmp ne i32 %10, 0
  %209 = select i1 %207, i1 %208, i1 false
  br i1 %209, label %212, label %216

210:                                              ; preds = %202
  %211 = icmp eq i32 %10, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %210, %206
  %213 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, -9
  store i32 %215, ptr %213, align 8
  br label %216

216:                                              ; preds = %212, %210, %206
  %217 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %218 = load i32, ptr %217, align 8
  %219 = and i32 %218, 12288
  %220 = icmp eq i32 %219, 8192
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = and i32 %218, -9
  store i32 %222, ptr %217, align 8
  br label %223

223:                                              ; preds = %221, %216
  %224 = phi i32 [ %222, %221 ], [ %218, %216 ]
  %225 = load i16, ptr %187, align 2
  %226 = icmp eq i16 %225, 4314
  br i1 %226, label %227, label %237

227:                                              ; preds = %223
  %228 = and i32 %224, -9
  store i32 %228, ptr %217, align 8
  br label %237

229:                                              ; preds = %201
  %230 = load i16, ptr %187, align 2
  %231 = icmp eq i16 %230, 4250
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %234 = load i32, ptr %233, align 8
  %235 = or i32 %234, 128
  store i32 %235, ptr %233, align 8
  %236 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 82
  store i32 9234, ptr %236, align 32
  br label %237

237:                                              ; preds = %232, %229, %227, %223, %201, %181, %177, %173, %171, %168, %135, %127
  %238 = phi i32 [ 0, %201 ], [ 0, %229 ], [ 0, %232 ], [ 0, %223 ], [ 0, %227 ], [ %169, %168 ], [ -2, %171 ], [ -2, %181 ], [ -2, %177 ], [ -2, %173 ], [ %137, %135 ], [ -2, %127 ]
  ret i32 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_setup_fiber_serdes_link_82571(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @__ew32(ptr noundef %0, i32 noundef 36, i32 noundef 1024) #5
  br label %6

6:                                                ; preds = %5, %1
  %7 = tail call i32 @e1000e_setup_fiber_serdes_link(ptr noundef %0) #5
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_for_fiber_link(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_speed_and_duplex_fiber_serdes(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_check_for_serdes_link_82571(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 384
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 384
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %14 = and i32 %13, 1073741824
  %15 = icmp eq i32 %14, 0
  %16 = xor i1 %15, true
  %17 = and i32 %13, 134217728
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %63

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 29
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %58 [
    i32 2, label %23
    i32 3, label %30
    i32 1, label %40
  ]

23:                                               ; preds = %20
  %24 = and i32 %7, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  store i32 1, ptr %21, align 4
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 0, ptr %27, align 2
  br label %122

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 1, ptr %29, align 2
  br label %122

30:                                               ; preds = %20
  %31 = and i32 %13, 536870912
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 10
  %35 = load i32, ptr %34, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 376, i32 noundef %35) #5
  %36 = and i32 %4, -65
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %36) #5
  store i32 1, ptr %21, align 4
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 0, ptr %37, align 2
  br label %122

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 1, ptr %39, align 2
  br label %122

40:                                               ; preds = %20
  %41 = and i32 %13, 536870912
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = and i32 %7, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  store i32 2, ptr %21, align 4
  %47 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 1, ptr %47, align 2
  br label %122

48:                                               ; preds = %43
  store i32 0, ptr %21, align 4
  br label %122

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 2147483647
  tail call void @__ew32(ptr noundef %0, i32 noundef 376, i32 noundef %52) #5
  %53 = or i32 %4, 65
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %53) #5
  %54 = tail call i32 @e1000e_config_fc_after_link_up(ptr noundef %0) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %122

56:                                               ; preds = %49
  store i32 3, ptr %21, align 4
  %57 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 1, ptr %57, align 2
  br label %122

58:                                               ; preds = %20
  %59 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 10
  %60 = load i32, ptr %59, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 376, i32 noundef %60) #5
  %61 = and i32 %4, -65
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %61) #5
  store i32 1, ptr %21, align 4
  %62 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 0, ptr %62, align 2
  br label %122

63:                                               ; preds = %1
  br i1 %15, label %73, label %64

64:                                               ; preds = %63
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr i8, ptr %65, i32 384
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %68 = and i32 %67, 1610612736
  %69 = icmp eq i32 %68, 1610612736
  %70 = and i32 %67, 134217728
  %71 = icmp eq i32 %70, 0
  %72 = or i1 %69, %71
  br i1 %72, label %79, label %76

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 0, ptr %74, align 2
  %75 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 29
  store i32 0, ptr %75, align 4
  br label %122

76:                                               ; preds = %106, %97, %88, %79, %64
  %77 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 0, ptr %77, align 2
  %78 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 29
  store i32 0, ptr %78, align 4
  br label %122

79:                                               ; preds = %64
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %80 = load ptr, ptr %2, align 4
  %81 = getelementptr i8, ptr %80, i32 384
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %83 = and i32 %82, 1610612736
  %84 = icmp eq i32 %83, 1610612736
  %85 = and i32 %82, 134217728
  %86 = icmp eq i32 %85, 0
  %87 = or i1 %84, %86
  br i1 %87, label %88, label %76

88:                                               ; preds = %79
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %89 = load ptr, ptr %2, align 4
  %90 = getelementptr i8, ptr %89, i32 384
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %92 = and i32 %91, 1610612736
  %93 = icmp eq i32 %92, 1610612736
  %94 = and i32 %91, 134217728
  %95 = icmp eq i32 %94, 0
  %96 = or i1 %93, %95
  br i1 %96, label %97, label %76

97:                                               ; preds = %88
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %98 = load ptr, ptr %2, align 4
  %99 = getelementptr i8, ptr %98, i32 384
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %101 = and i32 %100, 1610612736
  %102 = icmp eq i32 %101, 1610612736
  %103 = and i32 %100, 134217728
  %104 = icmp eq i32 %103, 0
  %105 = or i1 %102, %104
  br i1 %105, label %106, label %76

106:                                              ; preds = %97
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %107 = load ptr, ptr %2, align 4
  %108 = getelementptr i8, ptr %107, i32 384
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %110 = and i32 %109, 1610612736
  %111 = icmp eq i32 %110, 1610612736
  %112 = and i32 %109, 134217728
  %113 = icmp eq i32 %112, 0
  %114 = or i1 %111, %113
  br i1 %114, label %115, label %76

115:                                              ; preds = %106
  %116 = load ptr, ptr %2, align 4
  %117 = getelementptr i8, ptr %116, i32 376
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %119 = or i32 %118, -2147483648
  tail call void @__ew32(ptr noundef %0, i32 noundef 376, i32 noundef %119) #5
  %120 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 29
  store i32 1, ptr %120, align 4
  %121 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 0, ptr %121, align 2
  br label %122

122:                                              ; preds = %115, %76, %73, %58, %56, %49, %48, %46, %38, %33, %28, %26
  %123 = phi i32 [ 0, %115 ], [ 0, %73 ], [ 0, %58 ], [ 0, %46 ], [ 0, %48 ], [ %54, %49 ], [ 0, %56 ], [ 0, %33 ], [ 0, %38 ], [ 0, %28 ], [ 0, %26 ], [ 0, %76 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_setup_copper_link_82571(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %5 = and i32 %4, -6209
  %6 = or i32 %5, 64
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %6) #5
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %18 [
    i32 2, label %9
    i32 8, label %9
    i32 4, label %11
  ]

9:                                                ; preds = %1, %1
  %10 = tail call i32 @e1000e_copper_link_setup_m88(ptr noundef %0) #5
  br label %13

11:                                               ; preds = %1
  %12 = tail call i32 @e1000e_copper_link_setup_igp(ptr noundef %0) #5
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %12, %11 ], [ %10, %9 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @e1000e_setup_copper_link(ptr noundef %0) #5
  br label %18

18:                                               ; preds = %16, %13, %1
  %19 = phi i32 [ %17, %16 ], [ -2, %1 ], [ %14, %13 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_for_copper_link(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_speed_and_duplex_copper(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_set_lan_id_single_port(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000e_check_mng_mode_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_led_on_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_blink_led_generic(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @e1000_check_mng_mode_82574(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !11
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i16 noundef zeroext 15, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
  %6 = load i16, ptr %2, align 2
  %7 = and i16 %6, 24576
  %8 = icmp ne i16 %7, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_led_on_82574(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 14
  %14 = select i1 %13, i32 64, i32 0
  %15 = or i32 %14, %3
  %16 = and i32 %11, 65280
  %17 = icmp eq i32 %16, 3584
  %18 = select i1 %17, i32 16384, i32 0
  %19 = or i32 %18, %15
  %20 = and i32 %11, 16711680
  %21 = icmp eq i32 %20, 917504
  %22 = select i1 %21, i32 4194304, i32 0
  %23 = or i32 %22, %19
  %24 = and i32 %11, -16777216
  %25 = icmp eq i32 %24, 234881024
  %26 = select i1 %25, i32 1073741824, i32 0
  %27 = or i32 %26, %23
  br label %28

28:                                               ; preds = %10, %1
  %29 = phi i32 [ %3, %1 ], [ %27, %10 ]
  tail call void @__ew32(ptr noundef %0, i32 noundef 3584, i32 noundef %29) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_fiber_serdes_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_config_fc_after_link_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_copper_link_setup_m88(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_copper_link_setup_igp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_copper_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_hw_semaphore_82574(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @swflag_mutex) #5
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 3840
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  br label %6

6:                                                ; preds = %15, %1
  %7 = phi i32 [ %5, %1 ], [ %12, %15 ]
  %8 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %9 = or i32 %7, 32
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %9) #5
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 3840
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %6
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #5
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %6

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 3840
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %22 = and i32 %21, -33
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %22) #5
  tail call void @mutex_unlock(ptr noundef nonnull @swflag_mutex) #5
  br label %23

23:                                               ; preds = %18, %6
  %24 = phi i32 [ -2, %18 ], [ 0, %6 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_put_hw_semaphore_82574(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 3840
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %6 = and i32 %5, -33
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %6) #5
  tail call void @mutex_unlock(ptr noundef nonnull @swflag_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_up_phy_copper(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_power_down_phy_copper_82571(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 %7(ptr noundef %0) #5
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 %10(ptr noundef %0) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @e1000_power_down_phy_copper(ptr noundef %0) #5
  br label %14

14:                                               ; preds = %13, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_d0_lplu_state_82574(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3856
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %7 = and i32 %6, -3
  %8 = select i1 %1, i32 2, i32 0
  %9 = or i32 %7, %8
  tail call void @__ew32(ptr noundef %0, i32 noundef 3856, i32 noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_d3_lplu_state_82574(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3856
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  br i1 %1, label %9, label %7

7:                                                ; preds = %2
  %8 = and i32 %6, -5
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 13
  %11 = load i16, ptr %10, align 4
  switch i16 %11, label %14 [
    i16 47, label %12
    i16 15, label %12
    i16 3, label %12
  ]

12:                                               ; preds = %9, %9, %9
  %13 = or i32 %6, 4
  br label %14

14:                                               ; preds = %12, %9, %7
  %15 = phi i32 [ %13, %12 ], [ %8, %7 ], [ %6, %9 ]
  tail call void @__ew32(ptr noundef %0, i32 noundef 3856, i32 noundef %15) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_down_phy_copper(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_id_led_init_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_cleanup_led_generic(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_clear_hw_cntrs_82571(ptr noundef %0) #0 {
  tail call void @e1000e_clear_hw_cntrs_base(ptr noundef %0) #5
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16476
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 16480
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 16484
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 16488
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 16492
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 16496
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 16600
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 16604
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 16608
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 16612
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 16616
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 16620
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 16388
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr i8, ptr %42, i32 16396
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 16436
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr i8, ptr %48, i32 16444
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 16632
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr i8, ptr %54, i32 16636
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr i8, ptr %57, i32 16564
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %60 = load ptr, ptr %2, align 4
  %61 = getelementptr i8, ptr %60, i32 16568
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr i8, ptr %63, i32 16572
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr i8, ptr %66, i32 16640
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr i8, ptr %69, i32 16676
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %72 = load ptr, ptr %2, align 4
  %73 = getelementptr i8, ptr %72, i32 16644
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %75 = load ptr, ptr %2, align 4
  %76 = getelementptr i8, ptr %75, i32 16648
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %78 = load ptr, ptr %2, align 4
  %79 = getelementptr i8, ptr %78, i32 16652
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %81 = load ptr, ptr %2, align 4
  %82 = getelementptr i8, ptr %81, i32 16656
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %84 = load ptr, ptr %2, align 4
  %85 = getelementptr i8, ptr %84, i32 16664
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %87 = load ptr, ptr %2, align 4
  %88 = getelementptr i8, ptr %87, i32 16668
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %90 = load ptr, ptr %2, align 4
  %91 = getelementptr i8, ptr %90, i32 16672
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_clear_vfta_82571(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -2
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = zext i16 %8 to i32
  %12 = lshr i32 %11, 5
  %13 = and i32 %12, 127
  %14 = and i32 %11, 31
  %15 = shl nuw i32 1, %14
  br label %16

16:                                               ; preds = %10, %6, %1
  %17 = phi i32 [ 0, %1 ], [ %13, %10 ], [ 0, %6 ]
  %18 = phi i32 [ 0, %1 ], [ %15, %10 ], [ 0, %6 ]
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi i32 [ 0, %16 ], [ %29, %20 ]
  %22 = icmp eq i32 %21, %17
  %23 = select i1 %22, i32 %18, i32 0
  %24 = shl nuw nsw i32 %21, 2
  %25 = add nuw nsw i32 %24, 22016
  tail call void @__ew32(ptr noundef %0, i32 noundef %25, i32 noundef %23) #5
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %29 = add nuw nsw i32 %21, 1
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %20

31:                                               ; preds = %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_bus_info_pcie(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_set_lan_id_multi_port_pcie(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_led_off_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_update_mc_addr_list_generic(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_reset_hw_82571(ptr noundef %0) #0 {
  %2 = tail call i32 @e1000e_disable_pcie_master(ptr noundef %0) #5
  tail call void @__ew32(ptr noundef %0, i32 noundef 216, i32 noundef -1) #5
  tail call void @__ew32(ptr noundef %0, i32 noundef 256, i32 noundef 0) #5
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %7 = and i32 %6, -3
  tail call void @__ew32(ptr noundef %0, i32 noundef 1024, i32 noundef %7) #5
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %36 [
    i32 2, label %13
    i32 3, label %34
    i32 4, label %34
  ]

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 3840
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  br label %17

17:                                               ; preds = %26, %13
  %18 = phi i32 [ %16, %13 ], [ %23, %26 ]
  %19 = phi i32 [ 0, %13 ], [ %27, %26 ]
  %20 = or i32 %18, 32
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %20) #5
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 3840
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #5
  %27 = add nuw nsw i32 %19, 1
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %17

29:                                               ; preds = %26
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %30, i32 3840
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %33 = and i32 %32, -33
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %33) #5
  br label %36

34:                                               ; preds = %1, %1
  %35 = tail call i32 @e1000_get_hw_semaphore_82574(ptr noundef %0)
  br label %36

36:                                               ; preds = %34, %29, %17, %1
  %37 = phi i32 [ %2, %1 ], [ %35, %34 ], [ -2, %29 ], [ 0, %17 ]
  %38 = load ptr, ptr %3, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %40 = or i32 %39, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %40) #5
  %41 = load i32, ptr %11, align 4
  switch i32 %41, label %56 [
    i32 2, label %42
    i32 3, label %49
    i32 4, label %49
  ]

42:                                               ; preds = %36
  %43 = icmp eq i32 %37, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %42
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr i8, ptr %45, i32 3840
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %48 = and i32 %47, -33
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %48) #5
  br label %56

49:                                               ; preds = %36, %36
  %50 = icmp eq i32 %37, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr i8, ptr %52, i32 3840
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %55 = and i32 %54, -33
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %55) #5
  tail call void @mutex_unlock(ptr noundef nonnull @swflag_mutex) #5
  br label %56

56:                                               ; preds = %51, %49, %44, %42, %36
  %57 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr i8, ptr %61, i32 24
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %64 = or i32 %63, 8192
  tail call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %64) #5
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr i8, ptr %65, i32 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  br label %68

68:                                               ; preds = %60, %56
  %69 = tail call i32 @e1000e_get_auto_rd_done(ptr noundef %0) #5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  %72 = load i32, ptr %11, align 4
  switch i32 %72, label %79 [
    i32 0, label %73
    i32 1, label %73
    i32 2, label %78
    i32 3, label %78
    i32 4, label %78
  ]

73:                                               ; preds = %71, %71
  %74 = load ptr, ptr %3, align 4
  %75 = getelementptr i8, ptr %74, i32 16
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %77 = and i32 %76, -193
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %77) #5
  br label %79

78:                                               ; preds = %71, %71, %71
  tail call void @msleep(i32 noundef 25) #5
  br label %79

79:                                               ; preds = %78, %73, %71
  tail call void @__ew32(ptr noundef %0, i32 noundef 216, i32 noundef -1) #5
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr i8, ptr %80, i32 192
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %83 = load i32, ptr %11, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = tail call i32 @e1000_check_alt_mac_addr_generic(ptr noundef %0) #5
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load i32, ptr %11, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9
  store i8 1, ptr %92, align 4
  %93 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 20
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 1
  %96 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %97 = load i16, ptr %96, align 4
  %98 = zext i16 %97 to i32
  %99 = add nsw i32 %98, -1
  %100 = tail call i32 %94(ptr noundef %0, ptr noundef %95, i32 noundef %99) #5
  br label %101

101:                                              ; preds = %91, %88, %79
  %102 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 29
  store i32 0, ptr %106, align 4
  br label %107

107:                                              ; preds = %105, %101, %85, %68
  %108 = phi i32 [ %69, %68 ], [ %86, %85 ], [ 0, %105 ], [ 0, %101 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_init_hw_82571(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %4 = load i16, ptr %3, align 4
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 14376
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %9 = or i32 %8, 4194304
  tail call void @__ew32(ptr noundef %0, i32 noundef 14376, i32 noundef %9) #5
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 14632
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %13 = or i32 %12, 4194304
  tail call void @__ew32(ptr noundef %0, i32 noundef 14632, i32 noundef %13) #5
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 14400
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %17 = and i32 %16, -2013265921
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %24 [
    i32 0, label %20
    i32 1, label %20
    i32 3, label %22
    i32 4, label %22
  ]

20:                                               ; preds = %1, %1
  %21 = or i32 %17, 125829120
  br label %24

22:                                               ; preds = %1, %1
  %23 = or i32 %17, 67108864
  br label %24

24:                                               ; preds = %22, %20, %1
  %25 = phi i32 [ %17, %1 ], [ %23, %22 ], [ %21, %20 ]
  tail call void @__ew32(ptr noundef %0, i32 noundef 14400, i32 noundef %25) #5
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr i8, ptr %26, i32 14656
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %29 = load i32, ptr %18, align 4
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 1024
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %35 = and i32 %34, 268435456
  %36 = and i32 %28, -2000683009
  %37 = or i32 %35, %36
  %38 = xor i32 %37, 390070272
  tail call void @__ew32(ptr noundef %0, i32 noundef 14656, i32 noundef %38) #5
  %39 = load i32, ptr %18, align 4
  br label %40

40:                                               ; preds = %31, %24
  %41 = phi i32 [ %29, %24 ], [ %39, %31 ]
  %42 = add i32 %41, -2
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load ptr, ptr %5, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %47 = and i32 %46, -536870913
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %47) #5
  %48 = load i32, ptr %18, align 4
  %49 = add i32 %48, -2
  %50 = icmp ult i32 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr i8, ptr %52, i32 24
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %55 = and i32 %54, -12582913
  %56 = or i32 %55, 4194304
  tail call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %56) #5
  %57 = load i32, ptr %18, align 4
  br label %58

58:                                               ; preds = %51, %44, %40
  %59 = phi i32 [ %48, %44 ], [ %57, %51 ], [ %41, %40 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr i8, ptr %62, i32 4352
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %65 = or i32 %64, 1
  tail call void @__ew32(ptr noundef %0, i32 noundef 4352, i32 noundef %65) #5
  %66 = load i32, ptr %18, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = phi i32 [ %66, %61 ], [ %59, %58 ]
  %69 = icmp ult i32 %68, 2
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr i8, ptr %71, i32 24
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %74 = and i32 %73, -524289
  tail call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %74) #5
  %75 = load i32, ptr %18, align 4
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i32 [ %68, %67 ], [ %75, %70 ]
  %78 = icmp ult i32 %77, 3
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr i8, ptr %80, i32 20488
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %83 = or i32 %82, 196608
  tail call void @__ew32(ptr noundef %0, i32 noundef 20488, i32 noundef %83) #5
  %84 = load i32, ptr %18, align 4
  br label %85

85:                                               ; preds = %79, %76
  %86 = phi i32 [ %84, %79 ], [ %77, %76 ]
  %87 = add i32 %86, -3
  %88 = icmp ult i32 %87, 2
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr i8, ptr %90, i32 23296
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %93 = or i32 %92, 4194304
  tail call void @__ew32(ptr noundef %0, i32 noundef 23296, i32 noundef %93) #5
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr i8, ptr %94, i32 23396
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %97 = or i32 %96, 1
  tail call void @__ew32(ptr noundef %0, i32 noundef 23396, i32 noundef %97) #5
  br label %98

98:                                               ; preds = %89, %85
  %99 = load ptr, ptr %2, align 4
  %100 = tail call i32 %99(ptr noundef %0) #5
  %101 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 6
  %102 = load ptr, ptr %101, align 4
  tail call void %102(ptr noundef %0) #5
  %103 = load i32, ptr %18, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9
  %107 = load i8, ptr %106, align 4, !range !8
  %108 = sub nsw i8 0, %107
  %109 = sext i8 %108 to i16
  %110 = add i16 %4, %109
  br label %111

111:                                              ; preds = %105, %98
  %112 = phi i16 [ %4, %98 ], [ %110, %105 ]
  tail call void @e1000e_init_rx_addrs(ptr noundef %0, i16 noundef zeroext %112) #5
  %113 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 16
  %114 = load i16, ptr %113, align 2
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %116, %111
  %117 = phi i32 [ %120, %116 ], [ 0, %111 ]
  %118 = shl nuw nsw i32 %117, 2
  %119 = add nuw nsw i32 %118, 20992
  tail call void @__ew32(ptr noundef %0, i32 noundef %119, i32 noundef 0) #5
  %120 = add nuw nsw i32 %117, 1
  %121 = load i16, ptr %113, align 2
  %122 = zext i16 %121 to i32
  %123 = icmp ult i32 %120, %122
  br i1 %123, label %116, label %124

124:                                              ; preds = %116, %111
  %125 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 15
  %126 = load ptr, ptr %125, align 4
  %127 = tail call i32 %126(ptr noundef %0) #5
  %128 = load ptr, ptr %5, align 4
  %129 = getelementptr i8, ptr %128, i32 14376
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %131 = and i32 %130, -25100289
  %132 = or i32 %131, 21037056
  tail call void @__ew32(ptr noundef %0, i32 noundef 14376, i32 noundef %132) #5
  %133 = load i32, ptr %18, align 4
  switch i32 %133, label %141 [
    i32 2, label %134
    i32 3, label %136
    i32 4, label %136
  ]

134:                                              ; preds = %124
  %135 = tail call zeroext i1 @e1000e_enable_tx_pkt_filtering(ptr noundef %0) #5
  br label %136

136:                                              ; preds = %134, %124, %124
  %137 = load ptr, ptr %5, align 4
  %138 = getelementptr i8, ptr %137, i32 23296
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %140 = or i32 %139, 134217728
  tail call void @__ew32(ptr noundef %0, i32 noundef 23296, i32 noundef %140) #5
  br label %147

141:                                              ; preds = %124
  %142 = load ptr, ptr %5, align 4
  %143 = getelementptr i8, ptr %142, i32 14632
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %145 = and i32 %144, -25100289
  %146 = or i32 %145, 21037056
  tail call void @__ew32(ptr noundef %0, i32 noundef 14632, i32 noundef %146) #5
  br label %147

147:                                              ; preds = %141, %136
  tail call void @e1000_clear_hw_cntrs_82571(ptr noundef %0)
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_setup_link_82571(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -2
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 255
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 3, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %6, %1
  %12 = tail call i32 @e1000e_setup_link_generic(ptr noundef %0) #5
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_led_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_write_vfta_generic(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_config_collision_dist_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_set_generic(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_read_mac_addr_82571(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call i32 @e1000_check_alt_mac_addr_generic(ptr noundef %0) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %1
  %9 = tail call i32 @e1000_read_mac_addr_generic(ptr noundef %0) #5
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_get_count_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_clear_hw_cntrs_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_disable_pcie_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_auto_rd_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_alt_mac_addr_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_init_rx_addrs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000e_enable_tx_pkt_filtering(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_link_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_mac_addr_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_hw_semaphore_82571(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 5
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = add nuw nsw i32 %4, 1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 2
  %9 = select i1 %8, i32 1, i32 %5
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %18, %1
  %12 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr i8, ptr %13, i32 23376
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #5
  %19 = add nuw nsw i32 %12, 1
  %20 = icmp eq i32 %19, %9
  br i1 %20, label %23, label %11

21:                                               ; preds = %11
  %22 = icmp eq i32 %12, %9
  br i1 %22, label %23, label %26

23:                                               ; preds = %21, %18
  %24 = load i32, ptr %6, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %6, align 4
  br label %26

26:                                               ; preds = %23, %21
  br label %27

27:                                               ; preds = %38, %26
  %28 = phi i32 [ %39, %38 ], [ 0, %26 ]
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr i8, ptr %29, i32 23376
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %32 = or i32 %31, 2
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %32) #5
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr i8, ptr %33, i32 23376
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #5
  %39 = add nuw nsw i32 %28, 1
  %40 = icmp eq i32 %28, %4
  br i1 %40, label %43, label %27

41:                                               ; preds = %27
  %42 = icmp eq i32 %28, %5
  br i1 %42, label %43, label %48

43:                                               ; preds = %41, %38
  %44 = load ptr, ptr %10, align 4
  %45 = getelementptr i8, ptr %44, i32 23376
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %47 = and i32 %46, -4
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %47) #5
  br label %48

48:                                               ; preds = %43, %41
  %49 = phi i32 [ -1, %43 ], [ 0, %41 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_igp(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_reset_block_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_force_speed_duplex_igp(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_cfg_done_82571(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %10, %1
  %4 = phi i32 [ 100, %1 ], [ %11, %10 ]
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 4112
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %8 = and i32 %7, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %11 = add nsw i32 %4, -1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %3

13:                                               ; preds = %10, %3
  %14 = phi i32 [ 0, %3 ], [ -9, %10 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cable_length_igp_2(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_info_igp(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_igp(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_put_hw_semaphore_82571(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 23376
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %6 = and i32 %5, -4
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_hw_reset_generic(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_d0_lplu_state_82571(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !11
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 25, ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %2
  %9 = load i16, ptr %3, align 2
  br i1 %1, label %10, label %26

10:                                               ; preds = %8
  %11 = or i16 %9, 2
  store i16 %11, ptr %3, align 2
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, i32 noundef 25, i16 noundef zeroext %11) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 4
  %18 = call i32 %17(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load i16, ptr %3, align 2
  %22 = and i16 %21, -129
  store i16 %22, ptr %3, align 2
  %23 = load ptr, ptr %12, align 4
  %24 = call i32 %23(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %22) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %55, label %56

26:                                               ; preds = %8
  %27 = and i16 %9, -3
  store i16 %27, ptr %3, align 2
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %0, i32 noundef 25, i16 noundef zeroext %27) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 7
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %55 [
    i32 1, label %35
    i32 2, label %45
  ]

35:                                               ; preds = %32
  %36 = load ptr, ptr %4, align 4
  %37 = call i32 %36(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i16, ptr %3, align 2
  %41 = or i16 %40, 128
  store i16 %41, ptr %3, align 2
  %42 = load ptr, ptr %28, align 4
  %43 = call i32 %42(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %41) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %56

45:                                               ; preds = %32
  %46 = load ptr, ptr %4, align 4
  %47 = call i32 %46(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i16, ptr %3, align 2
  %51 = and i16 %50, -129
  store i16 %51, ptr %3, align 2
  %52 = load ptr, ptr %28, align 4
  %53 = call i32 %52(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %51) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %39, %32, %20
  br label %56

56:                                               ; preds = %55, %49, %45, %39, %35, %26, %20, %16, %10, %2
  %57 = phi i32 [ 0, %55 ], [ %6, %2 ], [ %14, %10 ], [ %18, %16 ], [ %24, %20 ], [ %30, %26 ], [ %37, %35 ], [ %43, %39 ], [ %47, %45 ], [ %53, %49 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_set_d3_lplu_state(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_igp(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_acquire_nvm_82571(ptr noundef %0) #0 {
  %2 = tail call i32 @e1000_get_hw_semaphore_82571(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @e1000e_acquire_nvm(ptr noundef %0) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 23376
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %16 = and i32 %15, -4
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %16) #5
  br label %17

17:                                               ; preds = %11, %8, %4, %1
  %18 = phi i32 [ -1, %1 ], [ %9, %11 ], [ 0, %8 ], [ 0, %4 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_nvm_eerd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_release_nvm_82571(ptr noundef %0) #0 {
  tail call void @e1000e_release_nvm(ptr noundef %0) #5
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 23376
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %6 = and i32 %5, -4
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reload_nvm_generic(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_update_nvm_checksum_82571(ptr noundef %0) #0 {
  %2 = tail call i32 @e1000e_update_nvm_checksum_generic(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %49

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %49

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %17, %8
  %11 = phi i16 [ 0, %8 ], [ %18, %17 ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %15 = and i32 %14, 524288
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = add nuw nsw i16 %11, 1
  %19 = icmp ult i16 %11, 1999
  br i1 %19, label %10, label %49

20:                                               ; preds = %10
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 4156
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %24 = and i32 %23, 65280
  %25 = icmp eq i32 %24, 56064
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  tail call void @__ew32(ptr noundef %0, i32 noundef 36608, i32 noundef 64) #5
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  tail call void @__ew32(ptr noundef %0, i32 noundef 36608, i32 noundef 128) #5
  br label %30

30:                                               ; preds = %26, %20
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %34 = or i32 %33, 524288
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %34) #5
  br label %35

35:                                               ; preds = %42, %30
  %36 = phi i16 [ 0, %30 ], [ %43, %42 ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %40 = and i32 %39, 524288
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = add nuw nsw i16 %36, 1
  %44 = icmp ult i16 %36, 1999
  br i1 %44, label %35, label %45

45:                                               ; preds = %42, %35
  %46 = phi i16 [ %36, %35 ], [ 2000, %42 ]
  %47 = icmp eq i16 %46, 2000
  %48 = sext i1 %47 to i32
  br label %49

49:                                               ; preds = %45, %17, %4, %1
  %50 = phi i32 [ %2, %1 ], [ 0, %4 ], [ %48, %45 ], [ -1, %17 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_valid_led_default_82571(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef %1) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -2
  %11 = icmp ult i32 %10, 3
  %12 = load i16, ptr %1, align 2
  br i1 %11, label %13, label %15

13:                                               ; preds = %7
  %14 = icmp eq i16 %12, -2234
  br i1 %14, label %16, label %18

15:                                               ; preds = %7
  switch i16 %12, label %18 [
    i16 0, label %16
    i16 -1, label %16
  ]

16:                                               ; preds = %15, %15, %13
  %17 = phi i16 [ 6161, %13 ], [ -30447, %15 ], [ -30447, %15 ]
  store i16 %17, ptr %1, align 2
  br label %18

18:                                               ; preds = %16, %15, %13, %2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_validate_nvm_checksum_82571(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !11
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, i16 noundef zeroext 16, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %6
  %12 = load i16, ptr %2, align 2
  %13 = and i16 %12, 16
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 4
  %17 = call i32 %16(ptr noundef %0, i16 noundef zeroext 35, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i16, ptr %2, align 2
  %21 = icmp sgt i16 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = or i16 %20, -32768
  store i16 %23, ptr %2, align 2
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %0, i16 noundef zeroext 35, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %0) #5
  br label %32

32:                                               ; preds = %28, %22, %19, %15, %11, %6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %33

33:                                               ; preds = %32, %1
  %34 = call i32 @e1000e_validate_nvm_checksum_generic(ptr noundef %0) #5
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_write_nvm_82571(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %39 [
    i32 2, label %7
    i32 3, label %7
    i32 4, label %7
    i32 0, label %37
    i32 1, label %37
  ]

7:                                                ; preds = %4, %4, %4
  %8 = zext i16 %1 to i32
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 5
  %10 = load i16, ptr %9, align 4
  %11 = icmp ugt i16 %10, %1
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = zext i16 %10 to i32
  %14 = zext i16 %2 to i32
  %15 = sub nsw i32 %13, %8
  %16 = icmp slt i32 %15, %14
  %17 = icmp eq i16 %2, 0
  %18 = or i1 %17, %16
  br i1 %18, label %39, label %22

19:                                               ; preds = %28
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %39, label %22

22:                                               ; preds = %19, %12
  %23 = phi i32 [ %20, %19 ], [ 0, %12 ]
  %24 = getelementptr i16, ptr %3, i32 %23
  %25 = load i16, ptr %24, align 2
  %26 = tail call i32 @e1000e_poll_eerd_eewr_done(ptr noundef %0, i32 noundef 1) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = zext i16 %25 to i32
  %30 = shl nuw i32 %29, 16
  %31 = add nuw nsw i32 %23, %8
  %32 = shl i32 %31, 2
  %33 = or i32 %32, %30
  %34 = or i32 %33, 1
  tail call void @__ew32(ptr noundef %0, i32 noundef 4140, i32 noundef %34) #5
  %35 = tail call i32 @e1000e_poll_eerd_eewr_done(ptr noundef %0, i32 noundef 1) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %19, label %39

37:                                               ; preds = %4, %4
  %38 = tail call i32 @e1000e_write_nvm_spi(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) #5
  br label %39

39:                                               ; preds = %37, %28, %22, %19, %12, %7, %4
  %40 = phi i32 [ %38, %37 ], [ -1, %4 ], [ -1, %12 ], [ -1, %7 ], [ 0, %19 ], [ %26, %22 ], [ %35, %28 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_acquire_nvm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_release_nvm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_update_nvm_checksum_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_validate_nvm_checksum_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_nvm_spi(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_poll_eerd_eewr_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_m88(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_sw_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_force_speed_duplex_m88(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cfg_done_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cable_length_m88(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_info_m88(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_m88(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_m88(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_bm2(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_bm2(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 1635590}
!10 = !{i64 2155621397}
!11 = !{!"auto-init"}
