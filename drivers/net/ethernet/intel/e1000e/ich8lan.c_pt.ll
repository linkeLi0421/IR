; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/ich8lan.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/ich8lan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_info = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@ich8_mac_ops = internal constant %struct.e1000_mac_operations { ptr null, ptr null, ptr null, ptr @e1000_check_for_copper_link_ich8lan, ptr null, ptr @e1000_clear_hw_cntrs_ich8lan, ptr null, ptr @e1000_get_bus_info_ich8lan, ptr @e1000_set_lan_id_single_port, ptr @e1000_get_link_up_info_ich8lan, ptr null, ptr null, ptr @e1000e_update_mc_addr_list_generic, ptr @e1000_reset_hw_ich8lan, ptr @e1000_init_hw_ich8lan, ptr @e1000_setup_link_ich8lan, ptr @e1000_setup_copper_link_ich8lan, ptr null, ptr null, ptr @e1000e_config_collision_dist_generic, ptr @e1000e_rar_set_generic, ptr null, ptr @e1000e_rar_get_count_generic }, align 4
@ich8_phy_ops = internal constant %struct.e1000_phy_operations { ptr @e1000_acquire_swflag_ich8lan, ptr null, ptr null, ptr @e1000_check_reset_block_ich8lan, ptr null, ptr null, ptr @e1000_get_cfg_done_ich8lan, ptr @e1000e_get_cable_length_igp_2, ptr null, ptr null, ptr @e1000e_read_phy_reg_igp, ptr null, ptr null, ptr @e1000_release_swflag_ich8lan, ptr @e1000_phy_hw_reset_ich8lan, ptr @e1000_set_d0_lplu_state_ich8lan, ptr @e1000_set_d3_lplu_state_ich8lan, ptr @e1000e_write_phy_reg_igp, ptr null, ptr null, ptr null, ptr null }, align 4
@ich8_nvm_ops = internal constant %struct.e1000_nvm_operations { ptr @e1000_acquire_nvm_ich8lan, ptr @e1000_read_nvm_ich8lan, ptr @e1000_release_nvm_ich8lan, ptr @e1000e_reload_nvm_generic, ptr @e1000_update_nvm_checksum_ich8lan, ptr @e1000_valid_led_default_ich8lan, ptr @e1000_validate_nvm_checksum_ich8lan, ptr @e1000_write_nvm_ich8lan }, align 4
@e1000_ich8_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 6, i32 33323, i32 0, i32 8, i32 1522, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, align 4
@e1000_ich9_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 7, i32 33451, i32 0, i32 18, i32 9234, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, align 4
@e1000_ich10_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 8, i32 33451, i32 0, i32 18, i32 9234, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, align 4
@e1000_pch_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 9, i32 295595, i32 16, i32 26, i32 4096, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, align 4
@e1000_pch2_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 10, i32 49835, i32 16432, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, align 4
@e1000_pch_lpt_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 11, i32 49835, i32 16432, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @ich8_nvm_ops }, align 4
@spt_nvm_ops = internal constant %struct.e1000_nvm_operations { ptr @e1000_acquire_nvm_ich8lan, ptr @e1000_read_nvm_spt, ptr @e1000_release_nvm_ich8lan, ptr @e1000e_reload_nvm_generic, ptr @e1000_update_nvm_checksum_spt, ptr @e1000_valid_led_default_ich8lan, ptr @e1000_validate_nvm_checksum_ich8lan, ptr @e1000_write_nvm_ich8lan }, align 4
@e1000_pch_spt_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 12, i32 49835, i32 48, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @spt_nvm_ops }, align 4
@e1000_pch_cnp_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 13, i32 49835, i32 48, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @spt_nvm_ops }, align 4
@e1000_pch_tgp_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 14, i32 49835, i32 48, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @spt_nvm_ops }, align 4
@e1000_pch_adp_info = dso_local local_unnamed_addr constant %struct.e1000_info { i32 15, i32 49835, i32 48, i32 26, i32 9022, ptr @e1000_get_variants_ich8lan, ptr @ich8_mac_ops, ptr @ich8_phy_ops, ptr @spt_nvm_ops }, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to disable ULP\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Reset blocked by ME\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ME blocked access to PHY after reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"ULP_CONFIG_DONE took %d msec. This is a firmware bug\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nvm_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvm_mutex, i64 12), ptr getelementptr (i8, ptr @nvm_mutex, i64 12) } }, align 4
@switch.table.e1000_id_led_init_pchlan = private unnamed_addr constant [5 x i32] [i32 65536, i32 327680, i32 327680, i32 65536, i32 327680], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_read_emi_reg_locked(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %1) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef 17, ptr noundef %2) #8
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %6, %3 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_write_emi_reg_locked(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %1) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef 17, i16 noundef zeroext %2) #8
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %6, %3 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_set_eee_pchlan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %107 [
    i32 11, label %9
    i32 12, label %8
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %1
  %10 = phi i16 [ -32766, %8 ], [ 1039, %1 ]
  %11 = phi i16 [ -27647, %8 ], [ 6190, %1 ]
  %12 = phi i16 [ -32767, %8 ], [ 1038, %1 ]
  %13 = load ptr, ptr %5, align 4
  %14 = tail call i32 %13(ptr noundef %0) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %107

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(ptr noundef %0, i32 noundef 24724, ptr noundef nonnull %3) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %103

21:                                               ; preds = %16
  %22 = load i16, ptr %3, align 2
  %23 = and i16 %22, -24577
  store i16 %23, ptr %3, align 2
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 3
  %25 = load i8, ptr %24, align 1, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 4
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %10) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %103

33:                                               ; preds = %27
  %34 = load ptr, ptr %17, align 4
  %35 = call i32 %34(ptr noundef %0, i32 noundef 17, ptr noundef %28) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %103

37:                                               ; preds = %33
  %38 = load ptr, ptr %29, align 4
  %39 = call i32 %38(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %12) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %103

41:                                               ; preds = %37
  %42 = load ptr, ptr %17, align 4
  %43 = call i32 %42(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %103

45:                                               ; preds = %41
  %46 = load i16, ptr %2, align 2
  %47 = load i16, ptr %28, align 4
  %48 = and i16 %47, %46
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i16, ptr %3, align 2
  %53 = or i16 %52, 16384
  store i16 %53, ptr %3, align 2
  br label %54

54:                                               ; preds = %51, %45
  %55 = and i16 %48, 2
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %17, align 4
  %59 = call i32 %58(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %4) #8
  %60 = load i16, ptr %4, align 2
  %61 = and i16 %60, 256
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i16, ptr %3, align 2
  %65 = or i16 %64, 8192
  store i16 %65, ptr %3, align 2
  br label %69

66:                                               ; preds = %57
  %67 = load i16, ptr %28, align 4
  %68 = and i16 %67, -3
  store i16 %68, ptr %28, align 4
  br label %69

69:                                               ; preds = %66, %63, %54, %21
  %70 = load i32, ptr %6, align 4
  %71 = icmp eq i32 %70, 11
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 17426) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %72
  %78 = load ptr, ptr %17, align 4
  %79 = call i32 %78(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %4) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load i16, ptr %4, align 2
  %83 = and i16 %82, -5
  store i16 %83, ptr %4, align 2
  %84 = load ptr, ptr %73, align 4
  %85 = call i32 %84(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 17426) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load ptr, ptr %73, align 4
  %89 = call i32 %88(ptr noundef %0, i32 noundef 17, i16 noundef zeroext %83) #8
  br label %90

90:                                               ; preds = %87, %81, %69
  %91 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 %92(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %11) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load ptr, ptr %17, align 4
  %97 = call i32 %96(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %4) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i16, ptr %3, align 2
  %101 = load ptr, ptr %91, align 4
  %102 = call i32 %101(ptr noundef %0, i32 noundef 24724, i16 noundef zeroext %100) #8
  br label %103

103:                                              ; preds = %99, %95, %90, %77, %72, %41, %37, %33, %27, %16
  %104 = phi i32 [ %19, %16 ], [ %79, %77 ], [ %97, %95 ], [ %102, %99 ], [ %35, %33 ], [ %43, %41 ], [ %31, %27 ], [ %39, %37 ], [ %75, %72 ], [ %93, %90 ]
  %105 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %106 = load ptr, ptr %105, align 4
  call void %106(ptr noundef %0) #8
  br label %107

107:                                              ; preds = %103, %9, %1
  %108 = phi i32 [ %104, %103 ], [ 0, %1 ], [ %14, %9 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %108
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_enable_ulp_lpt_lp(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 11
  br i1 %7, label %141, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %9, i32 0, i32 64
  %11 = load ptr, ptr %10, align 32
  %12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %13 = load i16, ptr %12, align 2
  switch i16 %13, label %14 [
    i16 5434, label %141
    i16 5435, label %141
    i16 5536, label %141
    i16 5537, label %141
  ]

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %141, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 23380
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %23 = and i32 %22, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 23376
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %29 = or i32 %28, 6144
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %29) #8
  br label %140

30:                                               ; preds = %18
  br i1 %1, label %53, label %31

31:                                               ; preds = %30
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr i8, ptr %32, i32 44
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %46, %31
  %38 = phi i32 [ %47, %46 ], [ 0, %31 ]
  %39 = load ptr, ptr %19, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %141

44:                                               ; preds = %37
  %45 = icmp eq i32 %38, 100
  br i1 %45, label %53, label %46

46:                                               ; preds = %44
  %47 = add nuw nsw i32 %38, 1
  tail call void @msleep(i32 noundef 50) #8
  %48 = load ptr, ptr %19, align 4
  %49 = getelementptr i8, ptr %48, i32 44
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %37, label %53

53:                                               ; preds = %46, %44, %31, %30
  %54 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %0) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %141

58:                                               ; preds = %53
  %59 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24631, ptr noundef nonnull %3) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %127

61:                                               ; preds = %58
  %62 = load i16, ptr %3, align 2
  %63 = or i16 %62, 1
  store i16 %63, ptr %3, align 2
  %64 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24631, i16 noundef zeroext %63) #8
  %65 = load ptr, ptr %19, align 4
  %66 = getelementptr i8, ptr %65, i32 24
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %68 = or i32 %67, 2048
  call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %68) #8
  %69 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 12
  br i1 %71, label %72, label %84

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 11
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 6
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24601, ptr noundef nonnull %4) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %127

79:                                               ; preds = %76
  %80 = load i16, ptr %4, align 2
  %81 = or i16 %80, 68
  store i16 %81, ptr %3, align 2
  %82 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24601, i16 noundef zeroext %81) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %127

84:                                               ; preds = %79, %72, %61
  %85 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24944, ptr noundef nonnull %3) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %84
  %88 = load i16, ptr %3, align 2
  %89 = or i16 %88, 4352
  store i16 %89, ptr %3, align 2
  br i1 %1, label %90, label %101

90:                                               ; preds = %87
  %91 = load ptr, ptr %19, align 4
  %92 = getelementptr i8, ptr %91, i32 22536
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %94 = load i16, ptr %3, align 2
  %95 = and i16 %94, -113
  %96 = trunc i32 %93 to i16
  %97 = shl i16 %96, 6
  %98 = and i16 %97, 64
  %99 = or i16 %95, %98
  %100 = or i16 %99, 16
  br label %104

101:                                              ; preds = %87
  %102 = and i16 %88, -4465
  %103 = or i16 %102, 4384
  br label %104

104:                                              ; preds = %101, %90
  %105 = phi i16 [ %103, %101 ], [ %100, %90 ]
  store i16 %105, ptr %3, align 2
  %106 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24944, i16 noundef zeroext %105) #8
  %107 = load ptr, ptr %19, align 4
  %108 = getelementptr i8, ptr %107, i32 228
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %110 = or i32 %109, 32
  call void @__ew32(ptr noundef %0, i32 noundef 228, i32 noundef %110) #8
  %111 = load i16, ptr %3, align 2
  %112 = or i16 %111, 1
  store i16 %112, ptr %3, align 2
  %113 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24944, i16 noundef zeroext %112) #8
  %114 = load i32, ptr %69, align 4
  %115 = icmp eq i32 %114, 12
  br i1 %115, label %116, label %131

116:                                              ; preds = %104
  %117 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 11
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 6
  %120 = and i1 %119, %1
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load ptr, ptr %19, align 4
  %123 = getelementptr i8, ptr %122, i32 8
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %134

127:                                              ; preds = %84, %79, %76, %58
  %128 = phi i32 [ %85, %84 ], [ %82, %79 ], [ %77, %76 ], [ %59, %58 ]
  %129 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %130 = load ptr, ptr %129, align 4
  call void %130(ptr noundef %0) #8
  br label %141

131:                                              ; preds = %121, %116, %104
  %132 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %133 = load ptr, ptr %132, align 4
  call void %133(ptr noundef %0) #8
  br label %140

134:                                              ; preds = %121
  %135 = load i16, ptr %4, align 2
  %136 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24601, i16 noundef zeroext %135) #8
  %137 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %138 = load ptr, ptr %137, align 4
  call void %138(ptr noundef %0) #8
  %139 = icmp eq i32 %136, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %131, %25
  store i32 2, ptr %15, align 4
  br label %141

141:                                              ; preds = %140, %134, %127, %53, %37, %14, %8, %8, %8, %8, %2
  %142 = phi i32 [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %14 ], [ 0, %2 ], [ %136, %134 ], [ 0, %140 ], [ %128, %127 ], [ %56, %53 ], [ -2, %37 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret i32 %142
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_phy_reg_hv_locked(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_write_phy_reg_hv_locked(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_configure_k1_ich8lan(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2
  %4 = call i32 @e1000e_read_kmrn_reg_locked(ptr noundef %0, i32 noundef 7, ptr noundef nonnull %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = load i16, ptr %3, align 2
  %8 = and i16 %7, -3
  %9 = select i1 %1, i16 2, i16 0
  %10 = or i16 %8, %9
  store i16 %10, ptr %3, align 2
  %11 = call i32 @e1000e_write_kmrn_reg_locked(ptr noundef %0, i32 noundef 7, i16 noundef zeroext %10) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %6
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #8
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 24
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %18 = load ptr, ptr %14, align 4
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %20 = and i32 %19, -2817
  %21 = or i32 %20, 2048
  call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %21) #8
  %22 = or i32 %17, 32768
  call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %22) #8
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #8
  call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %19) #8
  call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %17) #8
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #8
  br label %29

29:                                               ; preds = %13, %6, %2
  %30 = phi i32 [ 0, %13 ], [ %4, %2 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_kmrn_reg_locked(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_kmrn_reg_locked(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000_copy_rx_addrs_to_phy_ich8lan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %80

7:                                                ; preds = %1
  %8 = call i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef %0, ptr noundef nonnull %2) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %77

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %75, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 19
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ 0, %14 ], [ %71, %17 ]
  %19 = icmp ult i32 %18, 16
  %20 = shl nuw nsw i32 %18, 3
  %21 = select i1 %19, i32 21504, i32 21600
  %22 = add nuw nsw i32 %20, %21
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr i8, ptr %23, i32 %22
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %26 = load ptr, ptr %16, align 4
  %27 = shl nuw nsw i32 %18, 2
  %28 = add nuw nsw i32 %27, 16
  %29 = and i32 %28, 28
  %30 = shl i32 %28, 16
  %31 = and i32 %30, -2097152
  %32 = or i32 %29, %31
  %33 = or i32 %32, 25600
  %34 = trunc i32 %25 to i16
  %35 = call i32 %26(ptr noundef %0, i32 noundef %33, i16 noundef zeroext %34) #8
  %36 = load ptr, ptr %16, align 4
  %37 = add nuw nsw i32 %27, 17
  %38 = and i32 %37, 29
  %39 = shl i32 %37, 16
  %40 = and i32 %39, -2097152
  %41 = or i32 %38, %40
  %42 = or i32 %41, 25600
  %43 = lshr i32 %25, 16
  %44 = trunc i32 %43 to i16
  %45 = call i32 %36(ptr noundef %0, i32 noundef %42, i16 noundef zeroext %44) #8
  %46 = select i1 %19, i32 21508, i32 21604
  %47 = add nuw nsw i32 %20, %46
  %48 = load ptr, ptr %15, align 4
  %49 = getelementptr i8, ptr %48, i32 %47
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %51 = load ptr, ptr %16, align 4
  %52 = add nuw nsw i32 %27, 18
  %53 = and i32 %52, 30
  %54 = shl i32 %52, 16
  %55 = and i32 %54, -2097152
  %56 = or i32 %53, %55
  %57 = or i32 %56, 25600
  %58 = trunc i32 %50 to i16
  %59 = call i32 %51(ptr noundef %0, i32 noundef %57, i16 noundef zeroext %58) #8
  %60 = load ptr, ptr %16, align 4
  %61 = add nuw nsw i32 %27, 19
  %62 = and i32 %61, 31
  %63 = shl i32 %61, 16
  %64 = and i32 %63, -2097152
  %65 = or i32 %62, %64
  %66 = or i32 %65, 25600
  %67 = lshr i32 %50, 16
  %68 = trunc i32 %67 to i16
  %69 = and i16 %68, -32768
  %70 = call i32 %60(ptr noundef %0, i32 noundef %66, i16 noundef zeroext %69) #8
  %71 = add nuw nsw i32 %18, 1
  %72 = load i16, ptr %11, align 4
  %73 = zext i16 %72 to i32
  %74 = icmp ult i32 %71, %73
  br i1 %74, label %17, label %75

75:                                               ; preds = %17, %10
  %76 = call i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef %0, ptr noundef nonnull %2) #8
  br label %77

77:                                               ; preds = %75, %7
  %78 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %79 = load ptr, ptr %78, align 4
  call void %79(ptr noundef %0) #8
  br label %80

80:                                               ; preds = %77, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_lv_jumbo_workaround_ich8lan(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %199, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %0, i32 noundef 24628, ptr noundef nonnull %3) #8
  %13 = load i16, ptr %3, align 2
  %14 = or i16 %13, 16384
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %0, i32 noundef 24628, i16 noundef zeroext %14) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %199

19:                                               ; preds = %9
  br i1 %1, label %20, label %131

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %66, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %26 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  %27 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  %28 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  %29 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  %30 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  br label %31

31:                                               ; preds = %61, %24
  %32 = phi i32 [ 0, %24 ], [ %62, %61 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false)
  %33 = icmp ult i32 %32, 16
  %34 = shl nuw nsw i32 %32, 3
  %35 = select i1 %33, i32 21508, i32 21604
  %36 = add nuw nsw i32 %34, %35
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr i8, ptr %37, i32 %36
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %61, label %41

41:                                               ; preds = %31
  %42 = select i1 %33, i32 21504, i32 21600
  %43 = add nuw nsw i32 %34, %42
  %44 = load ptr, ptr %25, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %47 = trunc i32 %46 to i8
  store i8 %47, ptr %5, align 1
  %48 = lshr i32 %46, 8
  %49 = trunc i32 %48 to i8
  store i8 %49, ptr %26, align 1
  %50 = lshr i32 %46, 16
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %27, align 1
  %52 = lshr i32 %46, 24
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %28, align 1
  %54 = trunc i32 %39 to i8
  store i8 %54, ptr %29, align 1
  %55 = lshr i32 %39, 8
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %30, align 1
  %57 = shl nuw nsw i32 %32, 2
  %58 = add nuw nsw i32 %57, 24400
  %59 = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %5, i32 noundef 6) #9
  %60 = xor i32 %59, -1
  call void @__ew32(ptr noundef %0, i32 noundef %58, i32 noundef %60) #8
  br label %61

61:                                               ; preds = %41, %31
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #8
  %62 = add nuw nsw i32 %32, 1
  %63 = load i16, ptr %21, align 4
  %64 = zext i16 %63 to i32
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %31, label %66

66:                                               ; preds = %61, %20
  call void @e1000_copy_rx_addrs_to_phy_ich8lan(ptr noundef %0)
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 24324
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %71 = and i32 %70, -245761
  %72 = or i32 %71, 229376
  call void @__ew32(ptr noundef %0, i32 noundef 24324, i32 noundef %72) #8
  %73 = load ptr, ptr %67, align 4
  %74 = getelementptr i8, ptr %73, i32 256
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %76 = or i32 %75, 67108864
  call void @__ew32(ptr noundef %0, i32 noundef 256, i32 noundef %76) #8
  %77 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %4) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %199

79:                                               ; preds = %66
  %80 = load i16, ptr %4, align 2
  %81 = or i16 %80, 1
  %82 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 1, i16 noundef zeroext %81) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %199

84:                                               ; preds = %79
  %85 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %199

87:                                               ; preds = %84
  %88 = load i16, ptr %4, align 2
  %89 = and i16 %88, -3841
  %90 = or i16 %89, 2816
  store i16 %90, ptr %4, align 2
  %91 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %90) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %199

93:                                               ; preds = %87
  %94 = load ptr, ptr %10, align 4
  %95 = call i32 %94(ptr noundef %0, i32 noundef 24631, ptr noundef nonnull %4) #8
  %96 = load i16, ptr %4, align 2
  %97 = and i16 %96, -4065
  %98 = or i16 %97, 1760
  store i16 %98, ptr %4, align 2
  %99 = load ptr, ptr %15, align 4
  %100 = call i32 %99(ptr noundef %0, i32 noundef 24631, i16 noundef zeroext %98) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %199

102:                                              ; preds = %93
  %103 = load ptr, ptr %10, align 4
  %104 = call i32 %103(ptr noundef %0, i32 noundef 24624, ptr noundef nonnull %4) #8
  %105 = load i16, ptr %4, align 2
  %106 = and i16 %105, -8193
  store i16 %106, ptr %4, align 2
  %107 = load ptr, ptr %15, align 4
  %108 = call i32 %107(ptr noundef %0, i32 noundef 24624, i16 noundef zeroext %106) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %199

110:                                              ; preds = %102
  %111 = load ptr, ptr %10, align 4
  %112 = call i32 %111(ptr noundef %0, i32 noundef 24852, ptr noundef nonnull %4) #8
  %113 = load i16, ptr %4, align 2
  %114 = and i16 %113, -4093
  %115 = or i16 %114, 124
  store i16 %115, ptr %4, align 2
  %116 = load ptr, ptr %15, align 4
  %117 = call i32 %116(ptr noundef %0, i32 noundef 24852, i16 noundef zeroext %115) #8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %199

119:                                              ; preds = %110
  %120 = load ptr, ptr %15, align 4
  %121 = call i32 %120(ptr noundef %0, i32 noundef 24855, i16 noundef zeroext -3840) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %199

123:                                              ; preds = %119
  %124 = load ptr, ptr %10, align 4
  %125 = call i32 %124(ptr noundef %0, i32 noundef 24657, ptr noundef nonnull %4) #8
  %126 = load i16, ptr %4, align 2
  %127 = or i16 %126, 1024
  %128 = load ptr, ptr %15, align 4
  %129 = call i32 %128(ptr noundef %0, i32 noundef 24657, i16 noundef zeroext %127) #8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %194, label %199

131:                                              ; preds = %19
  %132 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 24324
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %136 = and i32 %135, -245761
  call void @__ew32(ptr noundef %0, i32 noundef 24324, i32 noundef %136) #8
  %137 = load ptr, ptr %132, align 4
  %138 = getelementptr i8, ptr %137, i32 256
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %140 = and i32 %139, -67108865
  call void @__ew32(ptr noundef %0, i32 noundef 256, i32 noundef %140) #8
  %141 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %4) #8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %199

143:                                              ; preds = %131
  %144 = load i16, ptr %4, align 2
  %145 = and i16 %144, -2
  %146 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 1, i16 noundef zeroext %145) #8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %199

148:                                              ; preds = %143
  %149 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %199

151:                                              ; preds = %148
  %152 = load i16, ptr %4, align 2
  %153 = and i16 %152, -3841
  %154 = or i16 %153, 2816
  store i16 %154, ptr %4, align 2
  %155 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %154) #8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %199

157:                                              ; preds = %151
  %158 = load ptr, ptr %10, align 4
  %159 = call i32 %158(ptr noundef %0, i32 noundef 24631, ptr noundef nonnull %4) #8
  %160 = load i16, ptr %4, align 2
  %161 = and i16 %160, -4065
  store i16 %161, ptr %4, align 2
  %162 = load ptr, ptr %15, align 4
  %163 = call i32 %162(ptr noundef %0, i32 noundef 24631, i16 noundef zeroext %161) #8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %199

165:                                              ; preds = %157
  %166 = load ptr, ptr %10, align 4
  %167 = call i32 %166(ptr noundef %0, i32 noundef 24624, ptr noundef nonnull %4) #8
  %168 = load i16, ptr %4, align 2
  %169 = or i16 %168, 8192
  store i16 %169, ptr %4, align 2
  %170 = load ptr, ptr %15, align 4
  %171 = call i32 %170(ptr noundef %0, i32 noundef 24624, i16 noundef zeroext %169) #8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %199

173:                                              ; preds = %165
  %174 = load ptr, ptr %10, align 4
  %175 = call i32 %174(ptr noundef %0, i32 noundef 24852, ptr noundef nonnull %4) #8
  %176 = load i16, ptr %4, align 2
  %177 = and i16 %176, -4093
  %178 = or i16 %177, 32
  store i16 %178, ptr %4, align 2
  %179 = load ptr, ptr %15, align 4
  %180 = call i32 %179(ptr noundef %0, i32 noundef 24852, i16 noundef zeroext %178) #8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %199

182:                                              ; preds = %173
  %183 = load ptr, ptr %15, align 4
  %184 = call i32 %183(ptr noundef %0, i32 noundef 24855, i16 noundef zeroext 32256) #8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %182
  %187 = load ptr, ptr %10, align 4
  %188 = call i32 %187(ptr noundef %0, i32 noundef 24657, ptr noundef nonnull %4) #8
  %189 = load i16, ptr %4, align 2
  %190 = and i16 %189, -1025
  %191 = load ptr, ptr %15, align 4
  %192 = call i32 %191(ptr noundef %0, i32 noundef 24657, i16 noundef zeroext %190) #8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %186, %123
  %195 = load i16, ptr %3, align 2
  %196 = and i16 %195, -16385
  %197 = load ptr, ptr %15, align 4
  %198 = call i32 %197(ptr noundef %0, i32 noundef 24628, i16 noundef zeroext %196) #8
  br label %199

199:                                              ; preds = %194, %186, %182, %173, %165, %157, %151, %148, %143, %131, %123, %119, %110, %102, %93, %87, %84, %79, %66, %9, %2
  %200 = phi i32 [ %198, %194 ], [ 0, %2 ], [ %17, %9 ], [ %77, %66 ], [ %82, %79 ], [ %85, %84 ], [ %91, %87 ], [ %100, %93 ], [ %108, %102 ], [ %117, %110 ], [ %121, %119 ], [ %129, %123 ], [ %141, %131 ], [ %146, %143 ], [ %149, %148 ], [ %155, %151 ], [ %163, %157 ], [ %171, %165 ], [ %180, %173 ], [ %184, %182 ], [ %192, %186 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret i32 %200
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_kmrn_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_kmrn_reg(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_write_protect_nvm_ich8lan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 116
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %11 = and i32 %10, 1610670080
  %12 = and i32 %7, 536813567
  %13 = or i32 %12, %11
  %14 = or i32 %13, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !14
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %20 = or i16 %19, -32768
  %21 = zext i16 %20 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !14
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %0) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @e1000e_set_kmrn_lock_loss_workaround_ich8lan(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9
  %8 = zext i1 %1 to i8
  store i8 %8, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_igp3_phy_powerdown_workaround_ich8lan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %85

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 3856
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %15 = or i32 %14, 72
  call void @__ew32(ptr noundef %0, i32 noundef 3856, i32 noundef %15) #8
  %16 = load i32, ptr %9, align 4
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %34

18:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i16, ptr %2, align 2
  %26 = or i16 %25, 4096
  store i16 %26, ptr %2, align 2
  %27 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %26) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i16, ptr %2, align 2
  %31 = and i16 %30, -4097
  store i16 %31, ptr %2, align 2
  %32 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %31) #8
  br label %33

33:                                               ; preds = %29, %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %34

34:                                               ; preds = %33, %7
  %35 = load ptr, ptr %10, align 4
  %36 = call i32 %35(ptr noundef %0, i32 noundef 24850, ptr noundef nonnull %3) #8
  %37 = load i16, ptr %3, align 2
  %38 = and i16 %37, -769
  store i16 %38, ptr %3, align 2
  %39 = or i16 %38, 512
  %40 = load ptr, ptr %11, align 4
  %41 = call i32 %40(ptr noundef %0, i32 noundef 24850, i16 noundef zeroext %39) #8
  %42 = load ptr, ptr %10, align 4
  %43 = call i32 %42(ptr noundef %0, i32 noundef 24850, ptr noundef nonnull %3) #8
  %44 = load i16, ptr %3, align 2
  %45 = and i16 %44, 768
  store i16 %45, ptr %3, align 2
  %46 = icmp eq i16 %45, 512
  br i1 %46, label %85, label %47

47:                                               ; preds = %34
  %48 = load ptr, ptr %8, align 4
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %50 = or i32 %49, -2147483648
  call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %50) #8
  %51 = load ptr, ptr %8, align 4
  %52 = getelementptr i8, ptr %51, i32 3856
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %54 = or i32 %53, 72
  call void @__ew32(ptr noundef %0, i32 noundef 3856, i32 noundef %54) #8
  %55 = load i32, ptr %9, align 4
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %57, label %73

57:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %58 = load i32, ptr %4, align 4
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i16, ptr %2, align 2
  %65 = or i16 %64, 4096
  store i16 %65, ptr %2, align 2
  %66 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %65) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i16, ptr %2, align 2
  %70 = and i16 %69, -4097
  store i16 %70, ptr %2, align 2
  %71 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %70) #8
  br label %72

72:                                               ; preds = %68, %63, %60, %57
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %73

73:                                               ; preds = %72, %47
  %74 = load ptr, ptr %10, align 4
  %75 = call i32 %74(ptr noundef %0, i32 noundef 24850, ptr noundef nonnull %3) #8
  %76 = load i16, ptr %3, align 2
  %77 = and i16 %76, -769
  store i16 %77, ptr %3, align 2
  %78 = or i16 %77, 512
  %79 = load ptr, ptr %11, align 4
  %80 = call i32 %79(ptr noundef %0, i32 noundef 24850, i16 noundef zeroext %78) #8
  %81 = load ptr, ptr %10, align 4
  %82 = call i32 %81(ptr noundef %0, i32 noundef 24850, ptr noundef nonnull %3) #8
  %83 = load i16, ptr %3, align 2
  %84 = and i16 %83, 768
  store i16 %84, ptr %3, align 2
  br label %85

85:                                               ; preds = %73, %34, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_gig_downshift_workaround_ich8lan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i16, ptr %2, align 2
  %15 = or i16 %14, 4096
  store i16 %15, ptr %2, align 2
  %16 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i16, ptr %2, align 2
  %20 = and i16 %19, -4097
  store i16 %20, ptr %2, align 2
  %21 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %20) #8
  br label %22

22:                                               ; preds = %18, %13, %10, %6, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000_suspend_workarounds_ich8lan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 3856
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %10 = or i32 %9, 64
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %15, label %116

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.e1000_adapter, ptr %16, i32 0, i32 64
  %18 = load ptr, ptr %17, align 32
  %19 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %20 = load i16, ptr %19, align 2
  switch i16 %20, label %21 [
    i16 5539, label %25
    i16 5538, label %25
    i16 5466, label %25
    i16 5465, label %25
  ]

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 11
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %15, %15, %15, %15
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %26, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %29 = and i32 %28, -257
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %29) #8
  br label %30

30:                                               ; preds = %25, %21
  %31 = load ptr, ptr %11, align 4
  %32 = tail call i32 %31(ptr noundef %0) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %114

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 3
  %36 = load i8, ptr %35, align 1, !range !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i16 0, ptr %5, align 2, !annotation !8
  %39 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %0, i32 noundef 16, i16 noundef zeroext -32767) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 %45(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %5) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load i16, ptr %5, align 2
  %50 = and i16 %49, 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 4
  %54 = load i16, ptr %53, align 4
  %55 = and i16 %54, 2
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 13
  %59 = load i16, ptr %58, align 4
  %60 = and i16 %59, 8
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = and i32 %10, -7
  %64 = load ptr, ptr %44, align 4
  %65 = call i32 %64(ptr noundef %0, i32 noundef 24722, ptr noundef nonnull %4) #8
  %66 = load i16, ptr %4, align 2
  %67 = or i16 %66, 2048
  store i16 %67, ptr %4, align 2
  %68 = load ptr, ptr %39, align 4
  %69 = call i32 %68(ptr noundef %0, i32 noundef 24722, i16 noundef zeroext %67) #8
  br label %70

70:                                               ; preds = %62, %57, %52, %48
  %71 = phi i32 [ %10, %48 ], [ %10, %52 ], [ %10, %57 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  br label %73

72:                                               ; preds = %43, %38
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  br label %110

73:                                               ; preds = %70, %34
  %74 = phi i32 [ %10, %34 ], [ %71, %70 ]
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr i8, ptr %75, i32 23380
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %78 = and i32 %77, 32768
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 %82(ptr noundef %0, i32 noundef 4219910, ptr noundef nonnull %4) #8
  %84 = load i16, ptr %4, align 2
  %85 = or i16 %84, 128
  store i16 %85, ptr %4, align 2
  %86 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 %87(ptr noundef %0, i32 noundef 4219910, i16 noundef zeroext %85) #8
  %89 = load ptr, ptr %81, align 4
  %90 = call i32 %89(ptr noundef %0, i32 noundef 24636, ptr noundef nonnull %4) #8
  %91 = load i16, ptr %4, align 2
  %92 = or i16 %91, 4096
  store i16 %92, ptr %4, align 2
  %93 = load ptr, ptr %86, align 4
  %94 = call i32 %93(ptr noundef %0, i32 noundef 24636, i16 noundef zeroext %92) #8
  %95 = load ptr, ptr %81, align 4
  %96 = call i32 %95(ptr noundef %0, i32 noundef 24730, ptr noundef nonnull %4) #8
  %97 = load i16, ptr %4, align 2
  %98 = and i16 %97, -17
  store i16 %98, ptr %4, align 2
  %99 = load ptr, ptr %86, align 4
  %100 = call i32 %99(ptr noundef %0, i32 noundef 24730, i16 noundef zeroext %98) #8
  br label %101

101:                                              ; preds = %80, %73
  %102 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 %103(ptr noundef %0, i32 noundef 24733, ptr noundef nonnull %4) #8
  %105 = load i16, ptr %4, align 2
  %106 = or i16 %105, 2
  store i16 %106, ptr %4, align 2
  %107 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %108 = load ptr, ptr %107, align 4
  %109 = call i32 %108(ptr noundef %0, i32 noundef 24733, i16 noundef zeroext %106) #8
  br label %110

110:                                              ; preds = %101, %72
  %111 = phi i32 [ %74, %101 ], [ %10, %72 ]
  %112 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %113 = load ptr, ptr %112, align 4
  call void %113(ptr noundef %0) #8
  br label %114

114:                                              ; preds = %110, %30
  %115 = phi i32 [ %111, %110 ], [ %10, %30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %116

116:                                              ; preds = %114, %1
  %117 = phi i32 [ %115, %114 ], [ %10, %1 ]
  call void @__ew32(ptr noundef %0, i32 noundef 3856, i32 noundef %117) #8
  %118 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 6
  br i1 %120, label %121, label %138

121:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %122 = load i32, ptr %12, align 4
  %123 = icmp eq i32 %122, 7
  br i1 %123, label %136, label %124

124:                                              ; preds = %121
  %125 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %3) #8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i16, ptr %3, align 2
  %129 = or i16 %128, 4096
  store i16 %129, ptr %3, align 2
  %130 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %129) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i16, ptr %3, align 2
  %134 = and i16 %133, -4097
  store i16 %134, ptr %3, align 2
  %135 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %134) #8
  br label %136

136:                                              ; preds = %132, %127, %124, %121
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  %137 = load i32, ptr %118, align 4
  br label %138

138:                                              ; preds = %136, %116
  %139 = phi i32 [ %137, %136 ], [ %119, %116 ]
  %140 = icmp ugt i32 %139, 8
  br i1 %140, label %141, label %187

141:                                              ; preds = %138
  %142 = call fastcc i32 @e1000_oem_bits_config_ich8lan(ptr noundef %0, i1 noundef zeroext false)
  %143 = load i32, ptr %118, align 4
  %144 = icmp eq i32 %143, 9
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = call i32 @e1000e_phy_hw_reset_generic(ptr noundef %0) #8
  br label %147

147:                                              ; preds = %145, %141
  %148 = load ptr, ptr %11, align 4
  %149 = call i32 %148(ptr noundef %0) #8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %187

151:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %152 = load ptr, ptr %6, align 4
  %153 = getelementptr i8, ptr %152, i32 12
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %155 = lshr i32 %154, 12
  %156 = and i32 %155, 3
  %157 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24602, ptr noundef nonnull %2) #8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %184

159:                                              ; preds = %151
  %160 = load i16, ptr %2, align 2
  %161 = and i16 %160, -768
  %162 = lshr i32 %154, 17
  %163 = trunc i32 %162 to i16
  %164 = and i16 %163, 127
  %165 = or i16 %164, %161
  %166 = or i16 %165, 640
  store i16 %166, ptr %2, align 2
  %167 = load i32, ptr %12, align 4
  %168 = icmp ne i32 %167, 12
  %169 = icmp eq i32 %156, 0
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %181, label %171

171:                                              ; preds = %159
  %172 = and i16 %166, -4353
  %173 = trunc i32 %156 to i16
  %174 = add nsw i16 %173, -1
  %175 = shl nuw nsw i16 %174, 8
  %176 = and i16 %175, 256
  %177 = shl nuw nsw i16 %174, 11
  %178 = and i16 %177, 4096
  %179 = or i16 %178, %176
  %180 = or i16 %179, %172
  store i16 %180, ptr %2, align 2
  br label %181

181:                                              ; preds = %171, %159
  %182 = phi i16 [ %180, %171 ], [ %166, %159 ]
  %183 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24602, i16 noundef zeroext %182) #8
  br label %184

184:                                              ; preds = %181, %151
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %185 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %186 = load ptr, ptr %185, align 4
  call void %186(ptr noundef %0) #8
  br label %187

187:                                              ; preds = %184, %147, %138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_oem_bits_config_ich8lan(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 9
  br i1 %6, label %83, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %7
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, 9
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 3840
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %15, %12
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 40
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %27 = and i32 %26, 134217728
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %79, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %23, align 4
  %31 = getelementptr i8, ptr %30, i32 3856
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %33 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %0, i32 noundef 24601, ptr noundef nonnull %3) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %79

37:                                               ; preds = %29
  %38 = load i16, ptr %3, align 2
  %39 = and i16 %38, -69
  store i16 %39, ptr %3, align 2
  br i1 %1, label %40, label %43

40:                                               ; preds = %37
  %41 = and i32 %32, 66
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %66, label %58

43:                                               ; preds = %37
  %44 = and i32 %32, 72
  %45 = icmp eq i32 %44, 0
  %46 = or i16 %39, 64
  %47 = select i1 %45, i16 %39, i16 %46
  %48 = and i32 %32, 6
  %49 = icmp eq i32 %48, 0
  %50 = or i16 %47, 4
  %51 = select i1 %49, i16 %47, i16 %50
  %52 = and i32 %32, 78
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  store i16 %51, ptr %3, align 2
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, ptr %4, align 4
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %74, label %66

58:                                               ; preds = %40
  %59 = trunc i32 %32 to i16
  %60 = and i16 %59, 64
  %61 = or i16 %39, %60
  %62 = trunc i32 %32 to i16
  %63 = shl i16 %62, 1
  %64 = and i16 %63, 4
  %65 = or i16 %64, %61
  store i16 %65, ptr %3, align 2
  br label %66

66:                                               ; preds = %58, %55, %40
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 %68(ptr noundef %0) #8
  %70 = icmp eq i32 %69, 0
  %71 = load i16, ptr %3, align 2
  br i1 %70, label %72, label %74

72:                                               ; preds = %66
  %73 = or i16 %71, 1024
  store i16 %73, ptr %3, align 2
  br label %74

74:                                               ; preds = %72, %66, %55
  %75 = phi i16 [ %73, %72 ], [ %51, %55 ], [ %71, %66 ]
  %76 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 %77(ptr noundef %0, i32 noundef 24601, i16 noundef zeroext %75) #8
  br label %79

79:                                               ; preds = %74, %29, %22, %15
  %80 = phi i32 [ 0, %15 ], [ %35, %29 ], [ %78, %74 ], [ 0, %22 ]
  %81 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %82 = load ptr, ptr %81, align 4
  call void %82(ptr noundef %0) #8
  br label %83

83:                                               ; preds = %79, %7, %2
  %84 = phi i32 [ %80, %79 ], [ 0, %2 ], [ %10, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_hw_reset_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000_resume_workarounds_pchlan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %57, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @e1000_init_phy_workarounds_pchlan(ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %0, i32 noundef 24722, ptr noundef nonnull %2) #8
  %22 = load i16, ptr %2, align 2
  %23 = and i16 %22, -2049
  store i16 %23, ptr %2, align 2
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %0, i32 noundef 24722, i16 noundef zeroext %23) #8
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 23380
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %31 = and i32 %30, 32768
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %18
  %34 = load ptr, ptr %19, align 4
  %35 = call i32 %34(ptr noundef %0, i32 noundef 24730, ptr noundef nonnull %2) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i16, ptr %2, align 2
  %39 = or i16 %38, 16
  store i16 %39, ptr %2, align 2
  %40 = load ptr, ptr %24, align 4
  %41 = call i32 %40(ptr noundef %0, i32 noundef 24730, i16 noundef zeroext %39) #8
  %42 = load ptr, ptr %24, align 4
  %43 = call i32 %42(ptr noundef %0, i32 noundef 4219910, i16 noundef zeroext 0) #8
  br label %44

44:                                               ; preds = %37, %18
  %45 = load ptr, ptr %19, align 4
  %46 = call i32 %45(ptr noundef %0, i32 noundef 24733, ptr noundef nonnull %2) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i16, ptr %2, align 2
  %50 = and i16 %49, -3
  store i16 %50, ptr %2, align 2
  %51 = load ptr, ptr %24, align 4
  %52 = call i32 %51(ptr noundef %0, i32 noundef 24733, i16 noundef zeroext %50) #8
  br label %53

53:                                               ; preds = %48, %44, %33
  %54 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %55 = load ptr, ptr %54, align 4
  call void %55(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %57

56:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %57

57:                                               ; preds = %56, %53, %9, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_init_phy_workarounds_pchlan(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 23380
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 10
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 5
  store i32 0, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  br label %124

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 3840
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %17 = or i32 %16, 128
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %17) #8
  %18 = load i32, ptr %8, align 4
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 5
  store i32 0, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %20 = icmp ult i32 %18, 11
  br i1 %20, label %124, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.e1000_adapter, ptr %22, i32 0, i32 64
  %24 = load ptr, ptr %23, align 32
  %25 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 8
  %26 = load i16, ptr %25, align 2
  switch i16 %26, label %27 [
    i16 5434, label %124
    i16 5435, label %124
    i16 5536, label %124
    i16 5537, label %124
  ]

27:                                               ; preds = %21
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 23380
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %31 = and i32 %30, 32768
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %73, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %0, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 23376
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %38 = and i32 %37, -6145
  %39 = or i32 %38, 4096
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %39) #8
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 23380
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %43 = and i32 %42, 1024
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %49, %33
  %46 = phi i8 [ %55, %49 ], [ 0, %33 ]
  %47 = phi i32 [ %50, %49 ], [ 0, %33 ]
  %48 = icmp eq i32 %47, 250
  br i1 %48, label %125, label %49

49:                                               ; preds = %45
  %50 = add nuw nsw i32 %47, 1
  %51 = icmp ugt i32 %47, 99
  %52 = and i8 %46, 1
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  %55 = select i1 %54, i8 1, i8 %46
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr i8, ptr %56, i32 23380
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %59 = and i32 %58, 1024
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %45

61:                                               ; preds = %49
  %62 = and i8 %55, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = mul i32 %50, 10
  %66 = getelementptr inbounds %struct.e1000_adapter, ptr %34, i32 0, i32 63
  %67 = load ptr, ptr %66, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %67, ptr noundef nonnull @.str.3, i32 noundef %65) #10
  br label %68

68:                                               ; preds = %64, %61, %33
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i8, ptr %69, i32 23376
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %72 = and i32 %71, -4097
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %72) #8
  br label %123

73:                                               ; preds = %27
  %74 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 %75(ptr noundef %0) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %125

78:                                               ; preds = %73
  tail call fastcc void @e1000_toggle_lanphypc_pch_lpt(ptr noundef %0) #8
  %79 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24631, ptr noundef nonnull %2) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr i8, ptr %82, i32 24
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %85 = or i32 %84, 2048
  call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %85) #8
  call void @msleep(i32 noundef 50) #8
  %86 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24631, ptr noundef nonnull %2) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %81, %78
  %89 = load i16, ptr %2, align 2
  %90 = and i16 %89, -2
  store i16 %90, ptr %2, align 2
  %91 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24631, i16 noundef zeroext %90) #8
  %92 = load ptr, ptr %4, align 4
  %93 = getelementptr i8, ptr %92, i32 24
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %95 = and i32 %94, -2049
  call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %95) #8
  %96 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24657, ptr noundef nonnull %2) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %88
  %99 = load i16, ptr %2, align 2
  %100 = or i16 %99, 16384
  store i16 %100, ptr %2, align 2
  %101 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24657, i16 noundef zeroext %100) #8
  %102 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24944, ptr noundef nonnull %2) #8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load i16, ptr %2, align 2
  %106 = and i16 %105, -7541
  store i16 %106, ptr %2, align 2
  %107 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24944, i16 noundef zeroext %106) #8
  %108 = load i16, ptr %2, align 2
  %109 = or i16 %108, 1
  store i16 %109, ptr %2, align 2
  %110 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24944, i16 noundef zeroext %109) #8
  %111 = load ptr, ptr %4, align 4
  %112 = getelementptr i8, ptr %111, i32 228
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %114 = and i32 %113, -33
  call void @__ew32(ptr noundef %0, i32 noundef 228, i32 noundef %114) #8
  br label %115

115:                                              ; preds = %104, %98, %88, %81
  %116 = phi i32 [ %86, %81 ], [ %96, %88 ], [ %102, %98 ], [ 0, %104 ]
  %117 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %118 = load ptr, ptr %117, align 4
  call void %118(ptr noundef %0) #8
  %119 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 14
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 %120(ptr noundef %0) #8
  call void @msleep(i32 noundef 50) #8
  %122 = icmp eq i32 %116, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %115, %68
  store i32 1, ptr %19, align 4
  br label %124

124:                                              ; preds = %123, %21, %21, %21, %21, %13, %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %128

125:                                              ; preds = %115, %73, %45
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %126 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 63
  %127 = load ptr, ptr %126, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %127, ptr noundef nonnull @.str) #10
  br label %128

128:                                              ; preds = %125, %124
  %129 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  %131 = call i32 %130(ptr noundef %0) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %194

133:                                              ; preds = %128
  %134 = load i32, ptr %8, align 4
  switch i32 %134, label %165 [
    i32 11, label %135
    i32 12, label %135
    i32 13, label %135
    i32 14, label %135
    i32 15, label %135
    i32 16, label %135
    i32 17, label %135
    i32 10, label %142
    i32 9, label %147
  ]

135:                                              ; preds = %133, %133, %133, %133, %133, %133, %133
  %136 = call fastcc zeroext i1 @e1000_phy_is_accessible_pchlan(ptr noundef %0)
  br i1 %136, label %165, label %137

137:                                              ; preds = %135
  %138 = load ptr, ptr %4, align 4
  %139 = getelementptr i8, ptr %138, i32 24
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %141 = or i32 %140, 2048
  call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %141) #8
  call void @msleep(i32 noundef 50) #8
  br label %142

142:                                              ; preds = %137, %133
  %143 = call fastcc zeroext i1 @e1000_phy_is_accessible_pchlan(ptr noundef %0)
  br i1 %143, label %165, label %144

144:                                              ; preds = %142
  %145 = load i32, ptr %8, align 4
  %146 = icmp ne i32 %145, 9
  br label %147

147:                                              ; preds = %144, %133
  %148 = phi i1 [ %146, %144 ], [ false, %133 ]
  %149 = and i32 %7, 32768
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %148, i1 true, i1 %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = call i32 %154(ptr noundef %0) #8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %159 = load ptr, ptr %158, align 4
  call void %159(ptr noundef %0) #8
  br label %194

160:                                              ; preds = %152
  call fastcc void @e1000_toggle_lanphypc_pch_lpt(ptr noundef %0)
  %161 = load i32, ptr %8, align 4
  %162 = icmp ugt i32 %161, 10
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call fastcc zeroext i1 @e1000_phy_is_accessible_pchlan(ptr noundef %0)
  br i1 %164, label %165, label %168

165:                                              ; preds = %163, %160, %147, %142, %135, %133
  %166 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %167 = load ptr, ptr %166, align 4
  call void %167(ptr noundef %0) #8
  br label %176

168:                                              ; preds = %163
  %169 = load ptr, ptr %4, align 4
  %170 = getelementptr i8, ptr %169, i32 24
  %171 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %172 = and i32 %171, -2049
  call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %172) #8
  %173 = call fastcc zeroext i1 @e1000_phy_is_accessible_pchlan(ptr noundef %0)
  %174 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %175 = load ptr, ptr %174, align 4
  call void %175(ptr noundef %0) #8
  br i1 %173, label %176, label %194

176:                                              ; preds = %168, %165
  %177 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = call i32 %178(ptr noundef %0) #8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 63
  %183 = load ptr, ptr %182, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %183, ptr noundef nonnull @.str.1) #10
  br label %194

184:                                              ; preds = %176
  %185 = call i32 @e1000e_phy_hw_reset_generic(ptr noundef %0) #8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %184
  %188 = load ptr, ptr %177, align 4
  %189 = call i32 %188(ptr noundef %0) #8
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 63
  %193 = load ptr, ptr %192, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %193, ptr noundef nonnull @.str.2) #10
  br label %194

194:                                              ; preds = %191, %187, %184, %181, %168, %157, %128
  %195 = phi i32 [ %131, %128 ], [ -2, %168 ], [ 0, %181 ], [ %185, %184 ], [ %189, %191 ], [ 0, %187 ], [ -2, %157 ]
  %196 = load i32, ptr %8, align 4
  %197 = icmp eq i32 %196, 10
  %198 = and i32 %7, 32768
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %197, i1 %199, i1 false
  br i1 %200, label %201, label %209

201:                                              ; preds = %194
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %202 = load i32, ptr %8, align 4
  %203 = icmp ult i32 %202, 10
  br i1 %203, label %209, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %4, align 4
  %206 = getelementptr i8, ptr %205, i32 3840
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %208 = and i32 %207, -129
  call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %208) #8
  br label %209

209:                                              ; preds = %204, %201, %194
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_variants_ich8lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 12
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 16
  store i16 32, ptr %6, align 2
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 18
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 6
  %11 = select i1 %10, i16 6, i16 7
  store i16 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 21
  store i8 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 22
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 20
  store i8 1, ptr %14, align 1
  switch i32 %9, label %30 [
    i32 6, label %15
    i32 7, label %15
    i32 8, label %15
    i32 10, label %22
    i32 11, label %24
    i32 12, label %24
    i32 13, label %24
    i32 14, label %24
    i32 15, label %24
    i32 16, label %24
    i32 17, label %24
    i32 9, label %24
  ]

15:                                               ; preds = %1, %1, %1
  %16 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 2
  store ptr @e1000_check_mng_mode_ich8lan, ptr %16, align 4
  store ptr @e1000e_id_led_init_generic, ptr %4, align 4
  %17 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 1
  store ptr @e1000e_blink_led_generic, ptr %17, align 4
  %18 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 17
  store ptr @e1000e_setup_led_generic, ptr %18, align 4
  %19 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 4
  store ptr @e1000_cleanup_led_ich8lan, ptr %19, align 4
  %20 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 10
  store ptr @e1000_led_on_ich8lan, ptr %20, align 4
  %21 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 11
  store ptr @e1000_led_off_ich8lan, ptr %21, align 4
  br label %36

22:                                               ; preds = %1
  store i16 5, ptr %7, align 4
  %23 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 20
  store ptr @e1000_rar_set_pch2lan, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %1, %1, %1, %1, %1, %1, %1, %1
  %25 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 2
  store ptr @e1000_check_mng_mode_pchlan, ptr %25, align 4
  store ptr @e1000_id_led_init_pchlan, ptr %4, align 4
  %26 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 17
  store ptr @e1000_setup_led_pchlan, ptr %26, align 4
  %27 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 4
  store ptr @e1000_cleanup_led_pchlan, ptr %27, align 4
  %28 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 10
  store ptr @e1000_led_on_pchlan, ptr %28, align 4
  %29 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 11
  store ptr @e1000_led_off_pchlan, ptr %29, align 4
  br label %30

30:                                               ; preds = %24, %1
  %31 = icmp ugt i32 %9, 10
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  store i16 12, ptr %7, align 4
  %33 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 20
  store ptr @e1000_rar_set_pch_lpt, ptr %33, align 4
  %34 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 16
  store ptr @e1000_setup_copper_link_pch_lpt, ptr %34, align 4
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 22
  store ptr @e1000_rar_get_count_pch_lpt, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %30, %15
  br i1 %10, label %37, label %40

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 9
  store i8 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 1
  store i32 4, ptr %39, align 4
  br label %57

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 1
  store i32 4, ptr %41, align 4
  %42 = icmp ugt i32 %9, 11
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 4
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %49 = shl i32 %48, 11
  %50 = and i32 %49, 126976
  %51 = add nuw nsw i32 %50, 4096
  %52 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 3
  %53 = lshr exact i32 %51, 2
  store i32 %53, ptr %52, align 4
  %54 = load ptr, ptr %45, align 4
  %55 = getelementptr i8, ptr %54, i32 57344
  %56 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 2
  store ptr %55, ptr %56, align 4
  br label %73

57:                                               ; preds = %40, %37
  %58 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %246, label %61

61:                                               ; preds = %57
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %59) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %63 = and i32 %62, 8191
  %64 = lshr i32 %62, 16
  %65 = and i32 %64, 8191
  %66 = shl nuw nsw i32 %63, 12
  %67 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 4
  store i32 %66, ptr %67, align 4
  %68 = sub nsw i32 1, %63
  %69 = add nsw i32 %68, %65
  %70 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 3
  %71 = shl nsw i32 %69, 10
  %72 = and i32 %71, 1073740800
  store i32 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %61, %43
  %74 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 5
  store i16 2048, ptr %74, align 4
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ 0, %73 ], [ %79, %75 ]
  %77 = getelementptr %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 9, i32 0, i32 1, i32 %76
  %78 = getelementptr %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 9, i32 0, i32 1, i32 %76, i32 1
  store i8 0, ptr %78, align 2
  store i16 -1, ptr %77, align 2
  %79 = add nuw nsw i32 %76, 1
  %80 = icmp eq i32 %79, 2048
  br i1 %80, label %81, label %75

81:                                               ; preds = %75
  %82 = load i32, ptr %8, align 4
  switch i32 %82, label %83 [
    i32 6, label %86
    i32 7, label %86
    i32 8, label %86
    i32 9, label %137
    i32 10, label %137
    i32 11, label %137
    i32 12, label %137
    i32 13, label %137
    i32 14, label %137
    i32 15, label %137
    i32 16, label %137
    i32 17, label %137
  ]

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  %85 = load i32, ptr %84, align 4
  br label %200

86:                                               ; preds = %81, %81, %81
  %87 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 8
  store i32 1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 10
  store i32 100, ptr %88, align 4
  %89 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 20
  store ptr @e1000_power_up_phy_copper, ptr %89, align 4
  %90 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 21
  store ptr @e1000_power_down_phy_copper_ich8lan, ptr %90, align 4
  %91 = tail call i32 @e1000e_determine_phy_address(ptr noundef %3) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 17
  store ptr @e1000e_write_phy_reg_bm, ptr %94, align 4
  %95 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 10
  store ptr @e1000e_read_phy_reg_bm, ptr %95, align 4
  %96 = tail call i32 @e1000e_determine_phy_address(ptr noundef %3) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %246

98:                                               ; preds = %93, %86
  %99 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 9
  store i32 0, ptr %99, align 4
  %100 = tail call i32 @e1000e_get_phy_type_from_id(i32 noundef 0) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %106, %98
  %103 = phi i16 [ %107, %106 ], [ 0, %98 ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #8
  %104 = tail call i32 @e1000e_get_phy_id(ptr noundef %3) #8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %246

106:                                              ; preds = %102
  %107 = add nuw nsw i16 %103, 1
  %108 = load i32, ptr %99, align 4
  %109 = tail call i32 @e1000e_get_phy_type_from_id(i32 noundef %108) #8
  %110 = icmp eq i32 %109, 0
  %111 = icmp ult i16 %103, 99
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %102, label %113

113:                                              ; preds = %106, %98
  %114 = load i32, ptr %99, align 4
  switch i32 %114, label %246 [
    i32 44565392, label %115
    i32 44565296, label %120
    i32 44565280, label %120
    i32 44565264, label %120
    i32 21040304, label %123
  ]

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  store i32 6, ptr %116, align 4
  %117 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 14
  store i16 47, ptr %117, align 2
  %118 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 11
  store ptr @e1000e_read_phy_reg_igp_locked, ptr %118, align 4
  %119 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 18
  store ptr @e1000e_write_phy_reg_igp_locked, ptr %119, align 4
  br label %129

120:                                              ; preds = %113, %113, %113
  %121 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  store i32 7, ptr %121, align 4
  %122 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 14
  store i16 15, ptr %122, align 2
  br label %129

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  store i32 8, ptr %124, align 4
  %125 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 14
  store i16 47, ptr %125, align 2
  %126 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 10
  store ptr @e1000e_read_phy_reg_bm, ptr %126, align 4
  %127 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 17
  store ptr @e1000e_write_phy_reg_bm, ptr %127, align 4
  %128 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 4
  store ptr @e1000e_phy_sw_reset, ptr %128, align 4
  br label %129

129:                                              ; preds = %123, %120, %115
  %130 = phi i32 [ 6, %115 ], [ 7, %120 ], [ 8, %123 ]
  %131 = phi ptr [ @e1000e_get_phy_info_igp, %115 ], [ @e1000_get_phy_info_ife, %120 ], [ @e1000e_get_phy_info_m88, %123 ]
  %132 = phi ptr [ @e1000_check_polarity_igp, %115 ], [ @e1000_check_polarity_ife, %120 ], [ @e1000_check_polarity_m88, %123 ]
  %133 = phi ptr [ @e1000e_phy_force_speed_duplex_igp, %115 ], [ @e1000_phy_force_speed_duplex_ife, %120 ], [ @e1000e_phy_force_speed_duplex_m88, %123 ]
  %134 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 8
  store ptr %131, ptr %134, align 4
  %135 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 2
  store ptr %132, ptr %135, align 4
  %136 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 5
  store ptr %133, ptr %136, align 4
  br label %200

137:                                              ; preds = %81, %81, %81, %81, %81, %81, %81, %81, %81
  %138 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 8
  store i32 1, ptr %138, align 4
  %139 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 10
  store i32 100, ptr %139, align 4
  %140 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 9
  store ptr @e1000_set_page_igp, ptr %140, align 4
  %141 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 10
  store ptr @e1000_read_phy_reg_hv, ptr %141, align 4
  %142 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 11
  store ptr @e1000_read_phy_reg_hv_locked, ptr %142, align 4
  %143 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 12
  store ptr @e1000_read_phy_reg_page_hv, ptr %143, align 4
  %144 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 15
  store ptr @e1000_set_lplu_state_pchlan, ptr %144, align 4
  %145 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 16
  store ptr @e1000_set_lplu_state_pchlan, ptr %145, align 4
  %146 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 17
  store ptr @e1000_write_phy_reg_hv, ptr %146, align 4
  %147 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 18
  store ptr @e1000_write_phy_reg_hv_locked, ptr %147, align 4
  %148 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 19
  store ptr @e1000_write_phy_reg_page_hv, ptr %148, align 4
  %149 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 20
  store ptr @e1000_power_up_phy_copper, ptr %149, align 4
  %150 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 21
  store ptr @e1000_power_down_phy_copper_ich8lan, ptr %150, align 4
  %151 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 14
  store i16 47, ptr %151, align 2
  %152 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 9
  store i32 0, ptr %152, align 4
  %153 = tail call fastcc i32 @e1000_init_phy_workarounds_pchlan(ptr noundef %3) #8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %246

155:                                              ; preds = %137
  %156 = load i32, ptr %152, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %183

158:                                              ; preds = %155
  %159 = load i32, ptr %8, align 4
  %160 = add i32 %159, -10
  %161 = icmp ult i32 %160, 8
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = tail call i32 @e1000e_get_phy_id(ptr noundef %3) #8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %246

165:                                              ; preds = %162
  %166 = load i32, ptr %152, align 4
  switch i32 %166, label %183 [
    i32 0, label %167
    i32 -16, label %167
  ]

167:                                              ; preds = %165, %165, %158
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %168 = load ptr, ptr %141, align 4
  %169 = call i32 %168(ptr noundef %3, i32 noundef 24624, ptr noundef nonnull %2) #8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %246

172:                                              ; preds = %167
  %173 = load i16, ptr %2, align 2
  %174 = or i16 %173, 1024
  store i16 %174, ptr %2, align 2
  %175 = load ptr, ptr %146, align 4
  %176 = call i32 %175(ptr noundef %3, i32 noundef 24624, i16 noundef zeroext %174) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %246

178:                                              ; preds = %172
  %179 = call i32 @e1000e_get_phy_id(ptr noundef %3) #8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %246

181:                                              ; preds = %178
  %182 = load i32, ptr %152, align 4
  br label %183

183:                                              ; preds = %181, %165, %155
  %184 = phi i32 [ %182, %181 ], [ %166, %165 ], [ %156, %155 ]
  %185 = call i32 @e1000e_get_phy_type_from_id(i32 noundef %184) #8
  %186 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  store i32 %185, ptr %186, align 4
  switch i32 %185, label %246 [
    i32 10, label %187
    i32 11, label %187
    i32 12, label %187
    i32 9, label %193
  ]

187:                                              ; preds = %183, %183, %183
  %188 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 2
  store ptr @e1000_check_polarity_82577, ptr %188, align 4
  %189 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 5
  store ptr @e1000_phy_force_speed_duplex_82577, ptr %189, align 4
  %190 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 7
  store ptr @e1000_get_cable_length_82577, ptr %190, align 4
  %191 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 8
  store ptr @e1000_get_phy_info_82577, ptr %191, align 4
  %192 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 4
  store ptr @e1000e_phy_sw_reset, ptr %192, align 4
  br label %198

193:                                              ; preds = %183
  %194 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 2
  store ptr @e1000_check_polarity_m88, ptr %194, align 4
  %195 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 5
  store ptr @e1000e_phy_force_speed_duplex_m88, ptr %195, align 4
  %196 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 7
  store ptr @e1000e_get_cable_length_m88, ptr %196, align 4
  %197 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 8
  store ptr @e1000e_get_phy_info_m88, ptr %197, align 4
  br label %198

198:                                              ; preds = %193, %187
  %199 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  br label %204

200:                                              ; preds = %129, %83
  %201 = phi i32 [ %85, %83 ], [ %130, %129 ]
  %202 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  %203 = icmp eq i32 %201, 7
  br i1 %203, label %215, label %204

204:                                              ; preds = %200, %198
  %205 = phi ptr [ %199, %198 ], [ %202, %200 ]
  %206 = load i32, ptr %8, align 4
  %207 = icmp ugt i32 %206, 9
  br i1 %207, label %208, label %225

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr i8, ptr %210, i32 24
  %212 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %213 = and i32 %212, 4096
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %208, %200
  %216 = phi ptr [ %205, %208 ], [ %202, %200 ]
  %217 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %218 = load i32, ptr %217, align 8
  %219 = and i32 %218, -129
  store i32 %219, ptr %217, align 8
  %220 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 82
  store i32 1522, ptr %220, align 32
  %221 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 1
  store ptr null, ptr %221, align 4
  br label %222

222:                                              ; preds = %215, %208
  %223 = phi ptr [ %205, %208 ], [ %216, %215 ]
  %224 = load i32, ptr %8, align 4
  br label %225

225:                                              ; preds = %222, %204
  %226 = phi ptr [ %223, %222 ], [ %205, %204 ]
  %227 = phi i32 [ %224, %222 ], [ %206, %204 ]
  switch i32 %227, label %246 [
    i32 6, label %228
    i32 10, label %235
  ]

228:                                              ; preds = %225
  %229 = load i32, ptr %226, align 4
  %230 = icmp eq i32 %229, 7
  br i1 %230, label %246, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %233 = load i32, ptr %232, align 8
  %234 = or i32 %233, 33554432
  store i32 %234, ptr %232, align 8
  br label %246

235:                                              ; preds = %225
  %236 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr i8, ptr %237, i32 23380
  %239 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %238) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %240 = and i32 %239, 32768
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %244 = load i32, ptr %243, align 4
  %245 = or i32 %244, 2048
  store i32 %245, ptr %243, align 4
  br label %246

246:                                              ; preds = %242, %235, %231, %228, %225, %183, %178, %172, %171, %162, %137, %113, %102, %93, %57
  %247 = phi i32 [ 0, %242 ], [ 0, %235 ], [ -3, %57 ], [ %169, %171 ], [ -2, %183 ], [ %179, %178 ], [ %176, %172 ], [ %163, %162 ], [ %153, %137 ], [ -2, %113 ], [ %96, %93 ], [ 0, %231 ], [ 0, %228 ], [ 0, %225 ], [ %104, %102 ]
  ret i32 %247
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @e1000_phy_is_accessible_pchlan(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3) #8
  %7 = icmp ne i32 %6, 0
  %8 = load i16, ptr %3, align 2
  %9 = icmp eq i16 %8, -1
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 4
  %13 = call i32 %12(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %3) #8
  %14 = icmp ne i32 %13, 0
  %15 = load i16, ptr %3, align 2
  %16 = icmp eq i16 %15, -1
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %11, %1
  %19 = load ptr, ptr %4, align 4
  %20 = call i32 %19(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3) #8
  %21 = icmp ne i32 %20, 0
  %22 = load i16, ptr %3, align 2
  %23 = icmp eq i16 %22, -1
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %51, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %4, align 4
  %27 = call i32 %26(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %3) #8
  %28 = icmp ne i32 %27, 0
  %29 = load i16, ptr %3, align 2
  %30 = icmp eq i16 %29, -1
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %51, label %32

32:                                               ; preds = %25, %11
  %33 = phi i16 [ %8, %11 ], [ %22, %25 ]
  %34 = phi i16 [ %15, %11 ], [ %29, %25 ]
  %35 = zext i16 %33 to i32
  %36 = shl nuw i32 %35, 16
  %37 = and i16 %34, -16
  %38 = zext i16 %37 to i32
  %39 = or i32 %36, %38
  %40 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  %44 = icmp eq i32 %41, %39
  br i1 %44, label %81, label %51

45:                                               ; preds = %32
  %46 = icmp eq i32 %39, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %45
  store i32 %39, ptr %40, align 4
  %48 = and i16 %34, 15
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 11
  store i32 %49, ptr %50, align 4
  br label %81

51:                                               ; preds = %45, %43, %25, %18
  %52 = phi i32 [ 0, %45 ], [ 0, %43 ], [ %20, %18 ], [ %27, %25 ]
  %53 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %54 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %55, 11
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %59 = load ptr, ptr %58, align 4
  call void %59(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %60 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %0, i32 noundef 24624, ptr noundef nonnull %2) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %74

65:                                               ; preds = %57
  %66 = load i16, ptr %2, align 2
  %67 = or i16 %66, 1024
  store i16 %67, ptr %2, align 2
  %68 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 %69(ptr noundef %0, i32 noundef 24624, i16 noundef zeroext %67) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 @e1000e_get_phy_id(ptr noundef %0) #8
  br label %74

74:                                               ; preds = %72, %65, %64
  %75 = phi i32 [ %70, %65 ], [ %73, %72 ], [ %62, %64 ]
  %76 = load ptr, ptr %53, align 4
  %77 = call i32 %76(ptr noundef %0) #8
  br label %78

78:                                               ; preds = %74, %51
  %79 = phi i32 [ %75, %74 ], [ %52, %51 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %78, %47, %43
  %82 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = icmp ugt i32 %83, 10
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 23380
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %90 = and i32 %89, 32768
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load ptr, ptr %4, align 4
  %94 = call i32 %93(ptr noundef %0, i32 noundef 24631, ptr noundef nonnull %3) #8
  %95 = load i16, ptr %3, align 2
  %96 = and i16 %95, -2
  store i16 %96, ptr %3, align 2
  %97 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %98 = load ptr, ptr %97, align 4
  %99 = call i32 %98(ptr noundef %0, i32 noundef 24631, i16 noundef zeroext %96) #8
  %100 = load ptr, ptr %86, align 4
  %101 = getelementptr i8, ptr %100, i32 24
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %103 = and i32 %102, -2049
  call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %103) #8
  br label %104

104:                                              ; preds = %92, %85, %81, %78
  %105 = phi i1 [ false, %78 ], [ true, %85 ], [ true, %92 ], [ true, %81 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret i1 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_toggle_lanphypc_pch_lpt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %6 = and i32 %5, -201326593
  %7 = or i32 %6, 134217728
  tail call void @__ew32(ptr noundef %0, i32 noundef 60, i32 noundef %7) #8
  %8 = load ptr, ptr %2, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %10 = and i32 %9, -196609
  %11 = or i32 %10, 65536
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %11) #8
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %10) #8
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 11
  br i1 %20, label %31, label %21

21:                                               ; preds = %21, %1
  %22 = phi i16 [ %28, %21 ], [ 20, %1 ]
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #8
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %26 = and i32 %25, 4
  %27 = icmp ne i32 %26, 0
  %28 = add nsw i16 %22, -1
  %29 = icmp eq i16 %22, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %21

31:                                               ; preds = %21, %1
  %32 = phi i32 [ 50, %1 ], [ 30, %21 ]
  tail call void @msleep(i32 noundef %32) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @e1000_check_mng_mode_ich8lan(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 23380
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %6 = and i32 %5, 32782
  %7 = icmp eq i32 %6, 32772
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_id_led_init_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_blink_led_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_led_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_cleanup_led_ich8lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 27, i16 noundef zeroext 0) #8
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 5
  %11 = load i32, ptr %10, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 3584, i32 noundef %11) #8
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %8, %5 ], [ 0, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_led_on_ich8lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 27, i16 noundef zeroext 39) #8
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 7
  %11 = load i32, ptr %10, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 3584, i32 noundef %11) #8
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %8, %5 ], [ 0, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_led_off_ich8lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 27, i16 noundef zeroext 38) #8
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 6
  %11 = load i32, ptr %10, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 3584, i32 noundef %11) #8
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %8, %5 ], [ 0, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_rar_set_pch2lan(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  tail call void @__ew32(ptr noundef %0, i32 noundef 21504, i32 noundef %20) #8
  %36 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  tail call void @__ew32(ptr noundef %0, i32 noundef 21508, i32 noundef %33) #8
  %40 = load ptr, ptr %36, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %82

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = icmp ugt i32 %46, %2
  br i1 %47, label %48, label %82

48:                                               ; preds = %43
  %49 = tail call i32 @e1000_acquire_swflag_ich8lan(ptr noundef %0)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %48
  %52 = shl i32 %2, 3
  %53 = add i32 %52, 21552
  tail call void @__ew32(ptr noundef %0, i32 noundef %53, i32 noundef %20) #8
  %54 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %58 = add i32 %52, 21556
  tail call void @__ew32(ptr noundef %0, i32 noundef %58, i32 noundef %33) #8
  %59 = load ptr, ptr %54, align 4
  %60 = getelementptr i8, ptr %59, i32 8
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %62 = load ptr, ptr %54, align 4
  %63 = getelementptr i8, ptr %62, i32 3840
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %65 = and i32 %64, 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %51
  %68 = and i32 %64, -33
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %68) #8
  br label %69

69:                                               ; preds = %67, %51
  %70 = load ptr, ptr %0, align 4
  %71 = getelementptr inbounds %struct.e1000_adapter, ptr %70, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %71) #8
  %72 = load ptr, ptr %54, align 4
  %73 = getelementptr i8, ptr %72, i32 %53
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %75 = icmp eq i32 %74, %20
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load ptr, ptr %54, align 4
  %78 = getelementptr i8, ptr %77, i32 %58
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %80 = icmp eq i32 %79, %33
  br i1 %80, label %82, label %81

81:                                               ; preds = %76, %69
  br label %82

82:                                               ; preds = %81, %76, %48, %43, %35
  %83 = phi i32 [ 0, %35 ], [ -3, %43 ], [ 0, %76 ], [ -3, %48 ], [ -3, %81 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @e1000_check_mng_mode_pchlan(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 23380
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %6 = and i32 %5, 32772
  %7 = icmp eq i32 %6, 32772
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_id_led_init_pchlan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, ptr noundef nonnull %2) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %88

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 3584
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 5
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 6
  store i32 %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 7
  store i32 %11, ptr %14, align 4
  %15 = load i16, ptr %2, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 15
  switch i32 %17, label %30 [
    i32 4, label %19
    i32 5, label %19
    i32 6, label %19
    i32 7, label %18
    i32 8, label %18
    i32 9, label %18
    i32 2, label %25
    i32 3, label %23
  ]

18:                                               ; preds = %7, %7, %7
  br label %19

19:                                               ; preds = %18, %7, %7, %7
  %20 = phi i32 [ 10, %18 ], [ 2, %7 ], [ 2, %7 ], [ 2, %7 ]
  %21 = and i32 %11, -32
  %22 = or i32 %21, %20
  store i32 %22, ptr %13, align 4
  switch i32 %17, label %30 [
    i32 9, label %23
    i32 5, label %25
    i32 8, label %25
    i32 6, label %23
  ]

23:                                               ; preds = %19, %19, %7
  %24 = phi i32 [ %22, %19 ], [ %22, %19 ], [ %11, %7 ]
  br label %25

25:                                               ; preds = %23, %19, %19, %7
  %26 = phi i32 [ 10, %23 ], [ %17, %7 ], [ 2, %19 ], [ 2, %19 ]
  %27 = phi i32 [ %24, %23 ], [ %11, %7 ], [ %22, %19 ], [ %22, %19 ]
  %28 = and i32 %11, -32
  %29 = or i32 %28, %26
  store i32 %29, ptr %14, align 4
  br label %30

30:                                               ; preds = %25, %19, %7
  %31 = phi i32 [ %11, %7 ], [ %11, %19 ], [ %29, %25 ]
  %32 = phi i32 [ %11, %7 ], [ %22, %19 ], [ %27, %25 ]
  %33 = lshr i32 %16, 4
  %34 = and i32 %33, 15
  switch i32 %34, label %47 [
    i32 4, label %35
    i32 5, label %35
    i32 6, label %35
    i32 7, label %36
    i32 8, label %36
    i32 9, label %36
    i32 2, label %42
    i32 3, label %40
  ]

35:                                               ; preds = %30, %30, %30
  br label %36

36:                                               ; preds = %35, %30, %30, %30
  %37 = phi i32 [ 64, %35 ], [ 320, %30 ], [ 320, %30 ], [ 320, %30 ]
  %38 = and i32 %32, -993
  %39 = or i32 %38, %37
  store i32 %39, ptr %13, align 4
  switch i32 %34, label %47 [
    i32 9, label %40
    i32 5, label %42
    i32 8, label %42
    i32 6, label %40
  ]

40:                                               ; preds = %36, %36, %30
  %41 = phi i32 [ %39, %36 ], [ %39, %36 ], [ %32, %30 ]
  br label %42

42:                                               ; preds = %40, %36, %36, %30
  %43 = phi i32 [ 320, %40 ], [ 64, %36 ], [ 64, %36 ], [ 64, %30 ]
  %44 = phi i32 [ %41, %40 ], [ %39, %36 ], [ %39, %36 ], [ %32, %30 ]
  %45 = and i32 %31, -993
  %46 = or i32 %45, %43
  store i32 %46, ptr %14, align 4
  br label %47

47:                                               ; preds = %42, %36, %30
  %48 = phi i32 [ %31, %36 ], [ %31, %30 ], [ %46, %42 ]
  %49 = phi i32 [ %39, %36 ], [ %32, %30 ], [ %44, %42 ]
  %50 = lshr i32 %16, 8
  %51 = and i32 %50, 15
  switch i32 %51, label %64 [
    i32 4, label %52
    i32 5, label %52
    i32 6, label %52
    i32 7, label %53
    i32 8, label %53
    i32 9, label %53
    i32 2, label %59
    i32 3, label %57
  ]

52:                                               ; preds = %47, %47, %47
  br label %53

53:                                               ; preds = %52, %47, %47, %47
  %54 = phi i32 [ 2048, %52 ], [ 10240, %47 ], [ 10240, %47 ], [ 10240, %47 ]
  %55 = and i32 %49, -31745
  %56 = or i32 %55, %54
  store i32 %56, ptr %13, align 4
  switch i32 %51, label %64 [
    i32 9, label %57
    i32 5, label %59
    i32 8, label %59
    i32 6, label %57
  ]

57:                                               ; preds = %53, %53, %47
  %58 = phi i32 [ %56, %53 ], [ %56, %53 ], [ %49, %47 ]
  br label %59

59:                                               ; preds = %57, %53, %53, %47
  %60 = phi i32 [ 10240, %57 ], [ 2048, %53 ], [ 2048, %53 ], [ 2048, %47 ]
  %61 = phi i32 [ %58, %57 ], [ %56, %53 ], [ %56, %53 ], [ %49, %47 ]
  %62 = and i32 %48, -31745
  %63 = or i32 %62, %60
  store i32 %63, ptr %14, align 4
  br label %64

64:                                               ; preds = %59, %53, %47
  %65 = phi i32 [ %48, %53 ], [ %48, %47 ], [ %63, %59 ]
  %66 = phi i32 [ %56, %53 ], [ %49, %47 ], [ %61, %59 ]
  %67 = lshr i32 %16, 12
  switch i32 %67, label %88 [
    i32 4, label %68
    i32 5, label %68
    i32 6, label %68
    i32 7, label %69
    i32 8, label %69
    i32 9, label %69
    i32 2, label %84
    i32 3, label %75
  ]

68:                                               ; preds = %64, %64, %64
  br label %69

69:                                               ; preds = %68, %64, %64, %64
  %70 = phi i32 [ 65536, %68 ], [ 327680, %64 ], [ 327680, %64 ], [ 327680, %64 ]
  %71 = and i32 %66, -1015809
  %72 = or i32 %71, %70
  store i32 %72, ptr %13, align 4
  %73 = add nsw i32 %67, -5
  %74 = icmp ult i32 %73, 5
  br i1 %74, label %76, label %88

75:                                               ; preds = %64
  br label %84

76:                                               ; preds = %69
  %77 = trunc i32 %73 to i8
  %78 = lshr i8 27, %77
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds [5 x i32], ptr @switch.table.e1000_id_led_init_pchlan, i32 0, i32 %73
  %83 = load i32, ptr %82, align 4
  br label %84

84:                                               ; preds = %81, %75, %64
  %85 = phi i32 [ 327680, %75 ], [ 65536, %64 ], [ %83, %81 ]
  %86 = and i32 %65, -1015809
  %87 = or i32 %86, %85
  store i32 %87, ptr %14, align 4
  br label %88

88:                                               ; preds = %84, %76, %69, %64, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_setup_led_pchlan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef 24606, i16 noundef zeroext %4) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_cleanup_led_pchlan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef 24606, i16 noundef zeroext %4) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_led_on_pchlan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = and i32 %3, 7
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = and i32 %3, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = and i16 %4, -9
  br label %21

19:                                               ; preds = %14
  %20 = or i16 %4, 8
  br label %21

21:                                               ; preds = %19, %17, %11
  %22 = phi i16 [ %4, %11 ], [ %18, %17 ], [ %20, %19 ]
  %23 = lshr i16 %22, 5
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 7
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = and i32 %24, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = and i16 %22, -257
  br label %34

32:                                               ; preds = %27
  %33 = or i16 %22, 256
  br label %34

34:                                               ; preds = %32, %30, %21
  %35 = phi i16 [ %22, %21 ], [ %31, %30 ], [ %33, %32 ]
  %36 = lshr i16 %35, 10
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 7
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = and i32 %37, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = and i16 %35, -8193
  br label %47

45:                                               ; preds = %40
  %46 = or i16 %35, 8192
  br label %47

47:                                               ; preds = %45, %43, %34, %1
  %48 = phi i16 [ %4, %1 ], [ %35, %34 ], [ %44, %43 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %0, i32 noundef 24606, i16 noundef zeroext %48) #8
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_led_off_pchlan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = and i32 %3, 7
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = and i32 %3, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = and i16 %4, -9
  br label %21

19:                                               ; preds = %14
  %20 = or i16 %4, 8
  br label %21

21:                                               ; preds = %19, %17, %11
  %22 = phi i16 [ %4, %11 ], [ %18, %17 ], [ %20, %19 ]
  %23 = lshr i16 %22, 5
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 7
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = and i32 %24, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = and i16 %22, -257
  br label %34

32:                                               ; preds = %27
  %33 = or i16 %22, 256
  br label %34

34:                                               ; preds = %32, %30, %21
  %35 = phi i16 [ %22, %21 ], [ %31, %30 ], [ %33, %32 ]
  %36 = lshr i16 %35, 10
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 7
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = and i32 %37, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = and i16 %35, -8193
  br label %47

45:                                               ; preds = %40
  %46 = or i16 %35, 8192
  br label %47

47:                                               ; preds = %45, %43, %34, %1
  %48 = phi i16 [ %4, %1 ], [ %35, %34 ], [ %44, %43 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %0, i32 noundef 24606, i16 noundef zeroext %48) #8
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_rar_set_pch_lpt(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  tail call void @__ew32(ptr noundef %0, i32 noundef 21504, i32 noundef %20) #8
  %36 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  tail call void @__ew32(ptr noundef %0, i32 noundef 21508, i32 noundef %33) #8
  %40 = load ptr, ptr %36, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %90

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = icmp ugt i32 %46, %2
  br i1 %47, label %48, label %90

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 23380
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %53 = lshr i32 %52, 7
  %54 = and i32 %53, 7
  switch i32 %54, label %55 [
    i32 1, label %90
    i32 0, label %57
  ]

55:                                               ; preds = %48
  %56 = icmp ult i32 %54, %2
  br i1 %56, label %90, label %57

57:                                               ; preds = %55, %48
  %58 = tail call i32 @e1000_acquire_swflag_ich8lan(ptr noundef %0)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %57
  %61 = shl i32 %2, 3
  %62 = add i32 %61, 21504
  tail call void @__ew32(ptr noundef %0, i32 noundef %62, i32 noundef %20) #8
  %63 = load ptr, ptr %49, align 4
  %64 = getelementptr i8, ptr %63, i32 8
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %66 = add i32 %61, 21508
  tail call void @__ew32(ptr noundef %0, i32 noundef %66, i32 noundef %33) #8
  %67 = load ptr, ptr %49, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %70 = load ptr, ptr %49, align 4
  %71 = getelementptr i8, ptr %70, i32 3840
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %73 = and i32 %72, 32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %60
  %76 = and i32 %72, -33
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %76) #8
  br label %77

77:                                               ; preds = %75, %60
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr inbounds %struct.e1000_adapter, ptr %78, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %79) #8
  %80 = load ptr, ptr %49, align 4
  %81 = getelementptr i8, ptr %80, i32 %62
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %83 = icmp eq i32 %82, %20
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load ptr, ptr %49, align 4
  %86 = getelementptr i8, ptr %85, i32 %66
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %88 = icmp eq i32 %87, %33
  br i1 %88, label %90, label %89

89:                                               ; preds = %84, %77
  br label %90

90:                                               ; preds = %89, %84, %57, %55, %48, %43, %35
  %91 = phi i32 [ 0, %35 ], [ -3, %48 ], [ -3, %43 ], [ -3, %55 ], [ 0, %84 ], [ -3, %57 ], [ -3, %89 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_setup_copper_link_pch_lpt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %5 = and i32 %4, -6209
  %6 = or i32 %5, 64
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %6) #8
  %7 = tail call i32 @e1000_copper_link_setup_82577(ptr noundef %0) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 @e1000e_setup_copper_link(ptr noundef %0) #8
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ %7, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_rar_get_count_pch_lpt(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 23380
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 7
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %14
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  br label %14

12:                                               ; preds = %1
  %13 = add nuw nsw i32 %7, 1
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = phi i32 [ %13, %12 ], [ %11, %8 ], [ %7, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_acquire_swflag_ich8lan(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 13
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %15, %6
  %9 = phi i32 [ 100, %6 ], [ %17, %15 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 3840
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #8
  %17 = add nsw i32 %9, -1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %8

19:                                               ; preds = %8
  %20 = or i32 %12, 32
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %20) #8
  br label %21

21:                                               ; preds = %28, %19
  %22 = phi i32 [ 1000, %19 ], [ %30, %28 ]
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 3840
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #8
  %30 = add nsw i32 %22, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %21

32:                                               ; preds = %28
  %33 = and i32 %25, -33
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %33) #8
  br label %34

34:                                               ; preds = %32, %15
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.e1000_adapter, ptr %35, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %36) #8
  br label %37

37:                                               ; preds = %34, %21, %1
  %38 = phi i32 [ -2, %1 ], [ -3, %34 ], [ 0, %21 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_release_swflag_ich8lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 3840
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = and i32 %5, -33
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %9) #8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %12) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_copper_link_setup_82577(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_copper_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_up_phy_copper(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_power_down_phy_copper_ich8lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call zeroext i1 %3(ptr noundef %0) #8
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @e1000_power_down_phy_copper(ptr noundef %0) #8
  br label %11

11:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_determine_phy_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_bm(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_bm(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_type_from_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_igp_locked(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_igp_locked(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_info_igp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_igp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_force_speed_duplex_igp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_get_phy_info_ife(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_ife(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_phy_force_speed_duplex_ife(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_sw_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_phy_info_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_force_speed_duplex_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_down_phy_copper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_set_page_igp(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_phy_reg_hv(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_phy_reg_page_hv(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_lplu_state_pchlan(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 24601, ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i16, ptr %3, align 2
  %10 = and i16 %9, -5
  %11 = select i1 %1, i16 4, i16 0
  %12 = or i16 %10, %11
  store i16 %12, ptr %3, align 2
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %0) #8
  %16 = icmp eq i32 %15, 0
  %17 = load i16, ptr %3, align 2
  br i1 %16, label %18, label %20

18:                                               ; preds = %8
  %19 = or i16 %17, 1024
  store i16 %19, ptr %3, align 2
  br label %20

20:                                               ; preds = %18, %8
  %21 = phi i16 [ %19, %18 ], [ %17, %8 ]
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 %23(ptr noundef %0, i32 noundef 24601, i16 noundef zeroext %21) #8
  br label %25

25:                                               ; preds = %20, %2
  %26 = phi i32 [ %24, %20 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_write_phy_reg_hv(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_write_phy_reg_page_hv(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_polarity_82577(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_phy_force_speed_duplex_82577(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_get_cable_length_82577(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_get_phy_info_82577(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cable_length_m88(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_check_for_copper_link_ich8lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i16 0, ptr %8, align 2, !annotation !8
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 25
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %400, label %16

16:                                               ; preds = %1
  store i8 0, ptr %13, align 4
  %17 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %7) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %398

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i8, ptr %7, align 1, !range !9
  %25 = icmp ne i8 %24, 0
  %26 = call fastcc i32 @e1000_k1_gig_workaround_hv(ptr noundef %0, i1 noundef zeroext %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %398

28:                                               ; preds = %23
  %29 = load i32, ptr %20, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi i32 [ %29, %28 ], [ %21, %19 ]
  %32 = icmp ult i32 %31, 10
  %33 = load i8, ptr %7, align 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %151, label %36

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  store i16 0, ptr %9, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #8
  store i16 0, ptr %10, align 2, !annotation !8
  %37 = call i32 @e1000e_get_speed_and_duplex_copper(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 1040
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %42 = and i32 %41, -1024
  %43 = load i16, ptr %10, align 2
  %44 = icmp eq i16 %43, 1
  %45 = load i16, ptr %9, align 2
  %46 = icmp eq i16 %45, 10
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %56, label %48

48:                                               ; preds = %36
  %49 = load i32, ptr %20, align 4
  %50 = icmp ugt i32 %49, 11
  %51 = icmp eq i16 %43, 2
  %52 = select i1 %50, i1 %51, i1 false
  %53 = icmp ne i16 %45, 1000
  %54 = select i1 %52, i1 %53, i1 false
  %55 = select i1 %54, i32 12, i32 8
  br label %56

56:                                               ; preds = %48, %36
  %57 = phi i32 [ 255, %36 ], [ %55, %48 ]
  %58 = phi i16 [ 0, %36 ], [ 1, %48 ]
  %59 = or i32 %42, %57
  call void @__ew32(ptr noundef %0, i32 noundef 1040, i32 noundef %59) #8
  %60 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %0) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %147

64:                                               ; preds = %56
  %65 = load i32, ptr %20, align 4
  %66 = icmp eq i32 %65, 10
  %67 = select i1 %66, i16 13330, i16 -19956
  %68 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 %69(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %67) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load ptr, ptr %68, align 4
  %74 = call i32 %73(ptr noundef %0, i32 noundef 17, i16 noundef zeroext %58) #8
  br label %75

75:                                               ; preds = %72, %64
  %76 = phi i32 [ %70, %64 ], [ %74, %72 ]
  %77 = load i32, ptr %20, align 4
  %78 = icmp ugt i32 %77, 10
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  store i16 0, ptr %11, align 2, !annotation !8
  %80 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 %81(ptr noundef %0, i32 noundef 24732, ptr noundef nonnull %11) #8
  %83 = load i16, ptr %11, align 2
  %84 = and i16 %83, -2048
  %85 = load i16, ptr %9, align 2
  %86 = icmp eq i16 %85, 100
  %87 = icmp eq i16 %85, 10
  %88 = or i1 %86, %87
  %89 = select i1 %88, i16 1000, i16 250
  %90 = or i16 %84, %89
  store i16 %90, ptr %11, align 2
  %91 = load ptr, ptr %68, align 4
  %92 = call i32 %91(ptr noundef %0, i32 noundef 24732, i16 noundef zeroext %90) #8
  %93 = load i16, ptr %9, align 2
  %94 = icmp eq i16 %93, 1000
  br i1 %94, label %95, label %102

95:                                               ; preds = %79
  %96 = load ptr, ptr %80, align 4
  %97 = call i32 %96(ptr noundef %0, i32 noundef 24657, ptr noundef nonnull %11) #8
  %98 = load i16, ptr %11, align 2
  %99 = or i16 %98, 512
  store i16 %99, ptr %11, align 2
  %100 = load ptr, ptr %68, align 4
  %101 = call i32 %100(ptr noundef %0, i32 noundef 24657, i16 noundef zeroext %99) #8
  br label %102

102:                                              ; preds = %95, %79
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  br label %103

103:                                              ; preds = %102, %75
  %104 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %105 = load ptr, ptr %104, align 4
  call void %105(ptr noundef %0) #8
  %106 = icmp eq i32 %76, 0
  br i1 %106, label %107, label %147

107:                                              ; preds = %103
  %108 = load i32, ptr %20, align 4
  %109 = icmp ugt i32 %108, 11
  br i1 %109, label %110, label %149

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #8
  store i16 0, ptr %12, align 2, !annotation !8
  %111 = load i16, ptr %9, align 2
  %112 = icmp eq i16 %111, 1000
  %113 = load ptr, ptr %60, align 4
  %114 = call i32 %113(ptr noundef %0) #8
  %115 = icmp eq i32 %114, 0
  br i1 %112, label %116, label %137

116:                                              ; preds = %110
  br i1 %115, label %117, label %143

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 %119(ptr noundef %0, i32 noundef 24852, ptr noundef nonnull %12) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = load ptr, ptr %104, align 4
  call void %123(ptr noundef %0) #8
  br label %143

124:                                              ; preds = %117
  %125 = load i16, ptr %12, align 2
  %126 = and i16 %125, 4064
  %127 = icmp ult i16 %126, 96
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %104, align 4
  call void %129(ptr noundef %0) #8
  br label %145

130:                                              ; preds = %124
  %131 = and i16 %125, -4093
  %132 = or i16 %131, 96
  store i16 %132, ptr %12, align 2
  %133 = load ptr, ptr %68, align 4
  %134 = call i32 %133(ptr noundef %0, i32 noundef 24852, i16 noundef zeroext %132) #8
  %135 = load ptr, ptr %104, align 4
  call void %135(ptr noundef %0) #8
  %136 = icmp eq i32 %134, 0
  br i1 %136, label %145, label %143

137:                                              ; preds = %110
  br i1 %115, label %138, label %143

138:                                              ; preds = %137
  %139 = load ptr, ptr %68, align 4
  %140 = call i32 %139(ptr noundef %0, i32 noundef 24852, i16 noundef zeroext -16349) #8
  %141 = load ptr, ptr %104, align 4
  call void %141(ptr noundef %0) #8
  %142 = icmp eq i32 %140, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138, %137, %130, %122, %116
  %144 = phi i32 [ %140, %138 ], [ %114, %137 ], [ %134, %130 ], [ %114, %116 ], [ %120, %122 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  br label %147

145:                                              ; preds = %138, %130, %128
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  %146 = load i32, ptr %20, align 4
  br label %149

147:                                              ; preds = %143, %103, %56
  %148 = phi i32 [ %144, %143 ], [ %76, %103 ], [ %62, %56 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  br label %398

149:                                              ; preds = %145, %107
  %150 = phi i32 [ %108, %107 ], [ %146, %145 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  br label %151

151:                                              ; preds = %149, %30
  %152 = phi i32 [ %150, %149 ], [ %31, %30 ]
  %153 = icmp ugt i32 %152, 10
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr i8, ptr %156, i32 36
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %159 = or i32 %158, 7
  call void @__ew32(ptr noundef %0, i32 noundef 36, i32 noundef %159) #8
  br label %160

160:                                              ; preds = %154, %151
  %161 = load ptr, ptr %0, align 4
  %162 = getelementptr inbounds %struct.e1000_adapter, ptr %161, i32 0, i32 64
  %163 = load ptr, ptr %162, align 32
  %164 = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 8
  %165 = load i16, ptr %164, align 2
  switch i16 %165, label %240 [
    i16 5466, label %166
    i16 5465, label %166
    i16 5538, label %166
    i16 5539, label %166
  ]

166:                                              ; preds = %160, %160, %160, %160
  %167 = load i8, ptr %7, align 1, !range !9
  %168 = icmp ne i8 %167, 0
  %169 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr i8, ptr %170, i32 16
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %173 = load ptr, ptr %169, align 4
  %174 = getelementptr i8, ptr %173, i32 8
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i16 0, ptr %6, align 2, !annotation !8
  %176 = xor i1 %168, true
  %177 = and i32 %175, 128
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %193, label %180

180:                                              ; preds = %166
  %181 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %182 = load ptr, ptr %181, align 4
  %183 = call i32 %182(ptr noundef %0) #8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %227

185:                                              ; preds = %180
  %186 = call i32 @e1000e_read_kmrn_reg_locked(ptr noundef %0, i32 noundef 7, ptr noundef nonnull %6) #8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %229

188:                                              ; preds = %185
  %189 = load i16, ptr %6, align 2
  %190 = and i16 %189, -3
  %191 = call i32 @e1000e_write_kmrn_reg_locked(ptr noundef %0, i32 noundef 7, i16 noundef zeroext %190) #8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %233, label %229

193:                                              ; preds = %166
  %194 = and i32 %172, -257
  %195 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 11
  %196 = load i32, ptr %195, align 4
  %197 = icmp ult i32 %196, 6
  %198 = and i1 %168, %197
  br i1 %198, label %199, label %225

199:                                              ; preds = %193
  %200 = and i32 %175, 64
  %201 = icmp eq i32 %200, 0
  %202 = and i32 %175, 65
  %203 = icmp eq i32 %202, 65
  br i1 %203, label %225, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %206 = load ptr, ptr %205, align 4
  %207 = call i32 %206(ptr noundef %0, i32 noundef 24658, ptr noundef nonnull %6) #8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %204
  %210 = load i16, ptr %6, align 2
  %211 = and i16 %210, -16129
  br i1 %201, label %215, label %212

212:                                              ; preds = %209
  %213 = or i16 %211, 1280
  store i16 %213, ptr %6, align 2
  %214 = and i32 %172, -769
  br label %218

215:                                              ; preds = %209
  %216 = or i16 %211, 12800
  store i16 %216, ptr %6, align 2
  %217 = or i32 %194, 512
  br label %218

218:                                              ; preds = %215, %212
  %219 = phi i16 [ %213, %212 ], [ %216, %215 ]
  %220 = phi i32 [ %214, %212 ], [ %217, %215 ]
  %221 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %222 = load ptr, ptr %221, align 4
  %223 = call i32 %222(ptr noundef %0, i32 noundef 24658, i16 noundef zeroext %219) #8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %218, %199, %193
  %226 = phi i32 [ %194, %193 ], [ %220, %218 ], [ %194, %199 ]
  call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %226) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  br label %240

227:                                              ; preds = %218, %204, %180
  %228 = phi i32 [ %223, %218 ], [ %207, %204 ], [ %183, %180 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  br label %398

229:                                              ; preds = %188, %185
  %230 = phi i32 [ %191, %188 ], [ %186, %185 ]
  %231 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %232 = load ptr, ptr %231, align 4
  call void %232(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  br label %398

233:                                              ; preds = %188
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %234 = or i32 %172, 256
  call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %234) #8
  %235 = load i16, ptr %6, align 2
  %236 = call i32 @e1000e_write_kmrn_reg_locked(ptr noundef %0, i32 noundef 7, i16 noundef zeroext %235) #8
  %237 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %238 = load ptr, ptr %237, align 4
  call void %238(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  %239 = icmp eq i32 %236, 0
  br i1 %239, label %240, label %398

240:                                              ; preds = %233, %225, %160
  %241 = load i32, ptr %20, align 4
  %242 = icmp ugt i32 %241, 10
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 4
  store i16 0, ptr %244, align 4
  br label %347

245:                                              ; preds = %240
  %246 = load i8, ptr %7, align 1, !range !9
  %247 = icmp eq i8 %246, 0
  %248 = select i1 %247, i32 1073741824, i32 -1073709056
  br i1 %247, label %325, label %249

249:                                              ; preds = %245
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i16 0, ptr %5, align 2, !annotation !8
  %250 = load ptr, ptr %0, align 4
  %251 = getelementptr inbounds %struct.e1000_adapter, ptr %250, i32 0, i32 61
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %324, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 9
  %256 = load ptr, ptr %255, align 4
  %257 = call i32 %256(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %258 = load i16, ptr %2, align 2
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %324, label %260

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr i8, ptr %262, i32 4096
  %264 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %265 = shl i32 %264, 9
  %266 = and i32 %265, 33553920
  %267 = load ptr, ptr %0, align 4
  %268 = getelementptr inbounds %struct.e1000_adapter, ptr %267, i32 0, i32 61
  %269 = load i32, ptr %268, align 4
  %270 = icmp ugt i32 %266, %269
  br i1 %270, label %271, label %288

271:                                              ; preds = %260
  %272 = sub i32 %266, %269
  %273 = load i16, ptr %2, align 2
  %274 = udiv i16 16000, %273
  %275 = zext i16 %274 to i32
  %276 = mul i32 %272, %275
  %277 = zext i32 %276 to i64
  %278 = icmp ugt i32 %276, 1023
  br i1 %278, label %279, label %288

279:                                              ; preds = %279, %271
  %280 = phi i64 [ %284, %279 ], [ %277, %271 ]
  %281 = phi i16 [ %282, %279 ], [ 0, %271 ]
  %282 = add i16 %281, 1
  %283 = add nuw nsw i64 %280, 31
  %284 = lshr i64 %283, 5
  %285 = icmp ugt i64 %280, 32736
  br i1 %285, label %279, label %286

286:                                              ; preds = %279
  %287 = icmp ugt i16 %282, 5
  br i1 %287, label %324, label %288

288:                                              ; preds = %286, %271, %260
  %289 = phi i64 [ %284, %286 ], [ %277, %271 ], [ 0, %260 ]
  %290 = phi i16 [ %282, %286 ], [ 0, %271 ], [ 0, %260 ]
  %291 = zext i16 %290 to i32
  %292 = shl nuw nsw i32 %291, 10
  %293 = zext i32 %292 to i64
  %294 = or i64 %289, %293
  %295 = trunc i64 %294 to i16
  %296 = getelementptr inbounds %struct.e1000_adapter, ptr %267, i32 0, i32 64
  %297 = load ptr, ptr %296, align 32
  %298 = call i32 @pci_read_config_word(ptr noundef %297, i32 noundef 168, ptr noundef nonnull %4) #8
  %299 = load ptr, ptr %0, align 4
  %300 = getelementptr inbounds %struct.e1000_adapter, ptr %299, i32 0, i32 64
  %301 = load ptr, ptr %300, align 32
  %302 = call i32 @pci_read_config_word(ptr noundef %301, i32 noundef 170, ptr noundef nonnull %5) #8
  %303 = load i16, ptr %4, align 2
  %304 = load i16, ptr %5, align 2
  %305 = call i16 @llvm.umax.i16(i16 %303, i16 %304) #8
  %306 = trunc i64 %294 to i32
  %307 = and i32 %306, 1023
  %308 = lshr i32 %306, 10
  %309 = and i32 %308, 7
  %310 = mul nuw nsw i32 %309, 5
  %311 = shl i32 %307, %310
  %312 = zext i16 %305 to i32
  %313 = and i32 %312, 1023
  %314 = lshr i32 %312, 10
  %315 = and i32 %314, 7
  %316 = mul nuw nsw i32 %315, 5
  %317 = shl i32 %313, %316
  %318 = and i32 %311, 65535
  %319 = and i32 %317, 65535
  %320 = icmp ugt i32 %318, %319
  %321 = select i1 %320, i16 %305, i16 %295
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %322 = zext i16 %321 to i32
  %323 = mul nuw i32 %322, 65537
  br label %325

324:                                              ; preds = %286, %254, %249
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %398

325:                                              ; preds = %288, %245
  %326 = phi i32 [ %323, %288 ], [ 0, %245 ]
  %327 = or i32 %326, %248
  call void @__ew32(ptr noundef %0, i32 noundef 248, i32 noundef %327) #8
  %328 = load i32, ptr %20, align 4
  %329 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 4
  store i16 0, ptr %329, align 4
  %330 = icmp ugt i32 %328, 10
  br i1 %330, label %331, label %347

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr i8, ptr %333, i32 16
  %335 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %334) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %336 = load i32, ptr %20, align 4
  %337 = icmp eq i32 %336, 12
  br i1 %337, label %338, label %345

338:                                              ; preds = %331
  %339 = load ptr, ptr %332, align 4
  %340 = getelementptr i8, ptr %339, i32 3864
  %341 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %340) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %342 = and i32 %335, 2147483647
  %343 = and i32 %341, -2147483648
  %344 = or i32 %343, %342
  br label %345

345:                                              ; preds = %338, %331
  %346 = phi i32 [ %344, %338 ], [ %335, %331 ]
  call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %346) #8
  br label %347

347:                                              ; preds = %345, %325, %243
  %348 = load i8, ptr %7, align 1, !range !9
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %398, label %350

350:                                              ; preds = %347
  %351 = load i32, ptr %20, align 4
  switch i32 %351, label %382 [
    i32 10, label %352
    i32 9, label %355
  ]

352:                                              ; preds = %350
  %353 = call fastcc i32 @e1000_k1_workaround_lv(ptr noundef %0)
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %400

355:                                              ; preds = %352, %350
  %356 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %357 = load i32, ptr %356, align 4
  %358 = icmp eq i32 %357, 9
  br i1 %358, label %359, label %362

359:                                              ; preds = %355
  %360 = call i32 @e1000_link_stall_workaround_hv(ptr noundef %0) #8
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %400

362:                                              ; preds = %359, %355
  %363 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %364 = load ptr, ptr %363, align 4
  %365 = call i32 %364(ptr noundef %0, i32 noundef 24656, ptr noundef nonnull %8) #8
  %366 = load i16, ptr %8, align 2
  %367 = and i16 %366, -28673
  store i16 %367, ptr %8, align 2
  %368 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %369 = load ptr, ptr %368, align 4
  %370 = getelementptr i8, ptr %369, i32 8
  %371 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %370) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %372 = and i32 %371, 1
  %373 = icmp eq i32 %372, 0
  %374 = load i16, ptr %8, align 2
  br i1 %373, label %375, label %377

375:                                              ; preds = %362
  %376 = or i16 %374, 4096
  store i16 %376, ptr %8, align 2
  br label %377

377:                                              ; preds = %375, %362
  %378 = phi i16 [ %376, %375 ], [ %374, %362 ]
  %379 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %380 = load ptr, ptr %379, align 4
  %381 = call i32 %380(ptr noundef %0, i32 noundef 24656, i16 noundef zeroext %378) #8
  br label %382

382:                                              ; preds = %377, %350
  %383 = call i32 @e1000e_check_downshift(ptr noundef %0) #8
  %384 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %385 = load i32, ptr %384, align 4
  %386 = icmp ugt i32 %385, 11
  br i1 %386, label %387, label %390

387:                                              ; preds = %382
  %388 = call i32 @e1000_set_eee_pchlan(ptr noundef %0)
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %400

390:                                              ; preds = %387, %382
  %391 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 23
  %392 = load i8, ptr %391, align 2, !range !9
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %400, label %394

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 19
  %396 = load ptr, ptr %395, align 4
  call void %396(ptr noundef %0) #8
  %397 = call i32 @e1000e_config_fc_after_link_up(ptr noundef %0) #8
  br label %400

398:                                              ; preds = %347, %324, %233, %229, %227, %147, %23, %16
  %399 = phi i32 [ %17, %16 ], [ %26, %23 ], [ %236, %233 ], [ -3, %324 ], [ 0, %347 ], [ %148, %147 ], [ %228, %227 ], [ %230, %229 ]
  store i8 1, ptr %13, align 4
  br label %400

400:                                              ; preds = %398, %394, %390, %387, %359, %352, %1
  %401 = phi i32 [ %399, %398 ], [ %397, %394 ], [ 0, %1 ], [ %353, %352 ], [ %360, %359 ], [ %388, %387 ], [ -3, %390 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  ret i32 %401
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_clear_hw_cntrs_ich8lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  tail call void @e1000e_clear_hw_cntrs_base(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16388
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 16396
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 16436
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 16444
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 16632
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 16636
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 16564
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 16568
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 16572
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 16640
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 16676
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -9
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %84

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %0) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 9
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %48(ptr noundef %0, i16 noundef zeroext 24896) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 12
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 %53(ptr noundef %0, i32 noundef 24912, ptr noundef nonnull %2) #8
  %55 = load ptr, ptr %52, align 4
  %56 = call i32 %55(ptr noundef %0, i32 noundef 24913, ptr noundef nonnull %2) #8
  %57 = load ptr, ptr %52, align 4
  %58 = call i32 %57(ptr noundef %0, i32 noundef 24914, ptr noundef nonnull %2) #8
  %59 = load ptr, ptr %52, align 4
  %60 = call i32 %59(ptr noundef %0, i32 noundef 24915, ptr noundef nonnull %2) #8
  %61 = load ptr, ptr %52, align 4
  %62 = call i32 %61(ptr noundef %0, i32 noundef 24916, ptr noundef nonnull %2) #8
  %63 = load ptr, ptr %52, align 4
  %64 = call i32 %63(ptr noundef %0, i32 noundef 24917, ptr noundef nonnull %2) #8
  %65 = load ptr, ptr %52, align 4
  %66 = call i32 %65(ptr noundef %0, i32 noundef 24919, ptr noundef nonnull %2) #8
  %67 = load ptr, ptr %52, align 4
  %68 = call i32 %67(ptr noundef %0, i32 noundef 24920, ptr noundef nonnull %2) #8
  %69 = load ptr, ptr %52, align 4
  %70 = call i32 %69(ptr noundef %0, i32 noundef 24921, ptr noundef nonnull %2) #8
  %71 = load ptr, ptr %52, align 4
  %72 = call i32 %71(ptr noundef %0, i32 noundef 24922, ptr noundef nonnull %2) #8
  %73 = load ptr, ptr %52, align 4
  %74 = call i32 %73(ptr noundef %0, i32 noundef 24923, ptr noundef nonnull %2) #8
  %75 = load ptr, ptr %52, align 4
  %76 = call i32 %75(ptr noundef %0, i32 noundef 24924, ptr noundef nonnull %2) #8
  %77 = load ptr, ptr %52, align 4
  %78 = call i32 %77(ptr noundef %0, i32 noundef 24925, ptr noundef nonnull %2) #8
  %79 = load ptr, ptr %52, align 4
  %80 = call i32 %79(ptr noundef %0, i32 noundef 24926, ptr noundef nonnull %2) #8
  br label %81

81:                                               ; preds = %51, %46
  %82 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %83 = load ptr, ptr %82, align 4
  call void %83(ptr noundef %0) #8
  br label %84

84:                                               ; preds = %81, %41, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_bus_info_ich8lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7
  %3 = tail call i32 @e1000e_get_bus_info_pcie(ptr noundef %0) #8
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %7

7:                                                ; preds = %6, %1
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_set_lan_id_single_port(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_link_up_info_ich8lan(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = tail call i32 @e1000e_get_speed_and_duplex_copper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %80

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %13, label %80

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %80

17:                                               ; preds = %13
  %18 = load i16, ptr %1, align 2
  %19 = icmp eq i16 %18, 1000
  br i1 %19, label %20, label %80

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !8
  %22 = load i8, ptr %21, align 4, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %78, label %24

24:                                               ; preds = %20
  %25 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %6) #8
  %26 = load i8, ptr %6, align 1, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %78, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 14
  br label %31

31:                                               ; preds = %44, %28
  %32 = phi i16 [ 0, %28 ], [ %52, %44 ]
  %33 = load ptr, ptr %29, align 4
  %34 = call i32 %33(ptr noundef %0, i32 noundef 24659, ptr noundef nonnull %5) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %31
  %37 = load ptr, ptr %29, align 4
  %38 = call i32 %37(ptr noundef %0, i32 noundef 24659, ptr noundef nonnull %5) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i16, ptr %5, align 2
  %42 = and i16 %41, 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %78, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %30, align 4
  %46 = call i32 %45(ptr noundef %0) #8
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #8
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #8
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #8
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #8
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #8
  %52 = add nuw nsw i16 %32, 1
  %53 = icmp ult i16 %32, 9
  br i1 %53, label %31, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 3856
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %59 = or i32 %58, 72
  call void @__ew32(ptr noundef %0, i32 noundef 3856, i32 noundef %59) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %60 = load i32, ptr %10, align 4
  %61 = icmp eq i32 %60, 6
  br i1 %61, label %62, label %77

62:                                               ; preds = %54
  %63 = load i32, ptr %14, align 4
  %64 = icmp eq i32 %63, 7
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %4) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i16, ptr %4, align 2
  %70 = or i16 %69, 4096
  store i16 %70, ptr %4, align 2
  %71 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %70) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i16, ptr %4, align 2
  %75 = and i16 %74, -4097
  store i16 %75, ptr %4, align 2
  %76 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %75) #8
  br label %77

77:                                               ; preds = %73, %68, %65, %62, %54
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %78

78:                                               ; preds = %77, %40, %36, %31, %24, %20
  %79 = phi i32 [ -2, %77 ], [ 0, %20 ], [ 0, %24 ], [ %34, %31 ], [ %38, %36 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  br label %80

80:                                               ; preds = %78, %17, %13, %9, %3
  %81 = phi i32 [ %7, %3 ], [ %79, %78 ], [ 0, %17 ], [ 0, %13 ], [ 0, %9 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_update_mc_addr_list_generic(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_reset_hw_ich8lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = tail call i32 @e1000e_disable_pcie_master(ptr noundef %0) #8
  tail call void @__ew32(ptr noundef %0, i32 noundef 216, i32 noundef -1) #8
  tail call void @__ew32(ptr noundef %0, i32 noundef 256, i32 noundef 0) #8
  tail call void @__ew32(ptr noundef %0, i32 noundef 1024, i32 noundef 8) #8
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  tail call void @__ew32(ptr noundef %0, i32 noundef 4096, i32 noundef 8) #8
  tail call void @__ew32(ptr noundef %0, i32 noundef 4104, i32 noundef 16) #8
  %12 = load i32, ptr %8, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi i32 [ %12, %11 ], [ %9, %1 ]
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(ptr noundef %0, i16 noundef zeroext 27, i16 noundef zeroext 1, ptr noundef nonnull %2) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %90

21:                                               ; preds = %16
  %22 = load i16, ptr %2, align 2
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 2
  %24 = trunc i16 %22 to i8
  %25 = and i8 %24, 1
  store i8 %25, ptr %23, align 2
  br label %26

26:                                               ; preds = %21, %13
  %27 = load ptr, ptr %4, align 4
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %0) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = or i32 %28, -2147483648
  %35 = load i32, ptr %8, align 4
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 23380
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %41 = and i32 %40, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i32, ptr %8, align 4
  %45 = icmp ult i32 %44, 10
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i8, ptr %47, i32 3840
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %50 = or i32 %49, 128
  call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %50) #8
  br label %51

51:                                               ; preds = %46, %43, %37, %33, %26
  %52 = phi i32 [ %28, %26 ], [ %34, %37 ], [ %34, %33 ], [ %34, %43 ], [ %34, %46 ]
  %53 = call i32 @e1000_acquire_swflag_ich8lan(ptr noundef %0)
  %54 = or i32 %52, 67108864
  call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %54) #8
  call void @msleep(i32 noundef 20) #8
  %55 = load i32, ptr %8, align 4
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i8, ptr %58, i32 60
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %61 = and i32 %60, -201326593
  %62 = or i32 %61, 134217728
  call void @__ew32(ptr noundef %0, i32 noundef 60, i32 noundef %62) #8
  br label %63

63:                                               ; preds = %57, %51
  %64 = icmp eq i32 %53, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load ptr, ptr %0, align 4
  %67 = getelementptr inbounds %struct.e1000_adapter, ptr %66, i32 0, i32 13
  call void @_clear_bit(i32 noundef 2, ptr noundef %67) #8
  br label %68

68:                                               ; preds = %65, %63
  %69 = icmp sgt i32 %52, -1
  br i1 %69, label %78, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 %72(ptr noundef %0) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = call fastcc i32 @e1000_post_phy_reset_ich8lan(ptr noundef %0)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75, %68
  %79 = load i32, ptr %8, align 4
  %80 = icmp eq i32 %79, 9
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call void @__ew32(ptr noundef %0, i32 noundef 24400, i32 noundef 1701143909) #8
  br label %82

82:                                               ; preds = %81, %78
  call void @__ew32(ptr noundef %0, i32 noundef 216, i32 noundef -1) #8
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr i8, ptr %83, i32 192
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %86 = load ptr, ptr %4, align 4
  %87 = getelementptr i8, ptr %86, i32 12292
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %89 = or i32 %88, 327680
  call void @__ew32(ptr noundef %0, i32 noundef 12292, i32 noundef %89) #8
  br label %90

90:                                               ; preds = %82, %75, %70, %16
  %91 = phi i32 [ 0, %82 ], [ %19, %16 ], [ %73, %70 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_init_hw_ich8lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 8
  %11 = select i1 %10, i32 5242880, i32 4194304
  %12 = or i32 %11, %7
  tail call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %12) #8
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 14376
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %16 = or i32 %15, 4194304
  tail call void @__ew32(ptr noundef %0, i32 noundef 14376, i32 noundef %16) #8
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 14632
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %20 = or i32 %19, 4194304
  tail call void @__ew32(ptr noundef %0, i32 noundef 14632, i32 noundef %20) #8
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 14400
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %24 = load i32, ptr %8, align 4
  %25 = icmp eq i32 %24, 6
  %26 = or i32 %23, 805306368
  %27 = select i1 %25, i32 %26, i32 %23
  %28 = or i32 %27, 226492416
  tail call void @__ew32(ptr noundef %0, i32 noundef 14400, i32 noundef %28) #8
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 14656
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 1024
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %35 = and i32 %34, 268435456
  %36 = and i32 %31, -1426063361
  %37 = or i32 %35, %36
  %38 = xor i32 %37, 1426063360
  tail call void @__ew32(ptr noundef %0, i32 noundef 14656, i32 noundef %38) #8
  %39 = load i32, ptr %8, align 4
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %46

41:                                               ; preds = %1
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %45 = and i32 %44, 2147483647
  tail call void @__ew32(ptr noundef %0, i32 noundef 8, i32 noundef %45) #8
  br label %46

46:                                               ; preds = %41, %1
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i8, ptr %47, i32 20488
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %50 = load i32, ptr %8, align 4
  %51 = icmp eq i32 %50, 6
  %52 = select i1 %51, i32 196800, i32 192
  %53 = or i32 %52, %49
  tail call void @__ew32(ptr noundef %0, i32 noundef 20488, i32 noundef %53) #8
  %54 = load i32, ptr %8, align 4
  %55 = icmp ugt i32 %54, 10
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 4108
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %60 = or i32 %59, 65536
  tail call void @__ew32(ptr noundef %0, i32 noundef 4108, i32 noundef %60) #8
  %61 = load ptr, ptr %4, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %63 = or i32 %62, 524288
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %63) #8
  br label %64

64:                                               ; preds = %56, %46
  %65 = load ptr, ptr %3, align 4
  %66 = tail call i32 %65(ptr noundef %0) #8
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %68 = load i16, ptr %67, align 4
  tail call void @e1000e_init_rx_addrs(ptr noundef %0, i16 noundef zeroext %68) #8
  %69 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 16
  %70 = load i16, ptr %69, align 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %72, %64
  %73 = phi i32 [ %76, %72 ], [ 0, %64 ]
  %74 = shl nuw nsw i32 %73, 2
  %75 = add nuw nsw i32 %74, 20992
  tail call void @__ew32(ptr noundef %0, i32 noundef %75, i32 noundef 0) #8
  %76 = add nuw nsw i32 %73, 1
  %77 = load i16, ptr %69, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %72, label %80

80:                                               ; preds = %72
  %81 = trunc i32 %76 to i16
  br label %82

82:                                               ; preds = %80, %64
  %83 = phi i16 [ 0, %64 ], [ %81, %80 ]
  store i16 %83, ptr %2, align 2
  %84 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %87, label %118

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 %89(ptr noundef %0, i32 noundef 24625, ptr noundef nonnull %2) #8
  %91 = load i16, ptr %2, align 2
  %92 = and i16 %91, -17
  store i16 %92, ptr %2, align 2
  %93 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 %94(ptr noundef %0, i32 noundef 24625, i16 noundef zeroext %92) #8
  %96 = load i32, ptr %8, align 4
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %112

98:                                               ; preds = %87
  %99 = load ptr, ptr %4, align 4
  %100 = getelementptr i8, ptr %99, i32 23380
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %102 = and i32 %101, 32768
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load i32, ptr %8, align 4
  %106 = icmp ult i32 %105, 10
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %4, align 4
  %109 = getelementptr i8, ptr %108, i32 3840
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %111 = or i32 %110, 128
  call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %111) #8
  br label %112

112:                                              ; preds = %107, %104, %98, %87
  %113 = call i32 @e1000e_phy_hw_reset_generic(ptr noundef %0) #8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %147

115:                                              ; preds = %112
  %116 = call fastcc i32 @e1000_post_phy_reset_ich8lan(ptr noundef %0) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %147

118:                                              ; preds = %115, %82
  %119 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 15
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 %120(ptr noundef %0) #8
  %122 = load ptr, ptr %4, align 4
  %123 = getelementptr i8, ptr %122, i32 14376
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %125 = and i32 %124, -20906048
  %126 = or i32 %125, 16842783
  call void @__ew32(ptr noundef %0, i32 noundef 14376, i32 noundef %126) #8
  %127 = load ptr, ptr %4, align 4
  %128 = getelementptr i8, ptr %127, i32 14632
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %130 = and i32 %129, -20906048
  %131 = or i32 %130, 16842783
  call void @__ew32(ptr noundef %0, i32 noundef 14632, i32 noundef %131) #8
  %132 = load i32, ptr %8, align 4
  %133 = icmp eq i32 %132, 6
  %134 = select i1 %133, i32 63, i32 -64
  call void @e1000e_set_pcie_no_snoop(ptr noundef %0, i32 noundef %134) #8
  %135 = load i32, ptr %8, align 4
  %136 = icmp ugt i32 %135, 13
  br i1 %136, label %137, label %142

137:                                              ; preds = %118
  %138 = load ptr, ptr %4, align 4
  %139 = getelementptr i8, ptr %138, i32 24324
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %141 = or i32 %140, 4096
  call void @__ew32(ptr noundef %0, i32 noundef 24324, i32 noundef %141) #8
  br label %142

142:                                              ; preds = %137, %118
  %143 = load ptr, ptr %4, align 4
  %144 = getelementptr i8, ptr %143, i32 24
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %146 = or i32 %145, 131072
  call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %146) #8
  call void @e1000_clear_hw_cntrs_ich8lan(ptr noundef %0)
  br label %147

147:                                              ; preds = %142, %115, %112
  %148 = phi i32 [ %121, %142 ], [ %116, %115 ], [ %113, %112 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_setup_link_ich8lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 255
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 9
  %14 = select i1 %13, i32 1, i32 3
  store i32 %14, ptr %7, align 4
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  tail call void @__ew32(ptr noundef %0, i32 noundef 368, i32 noundef %25) #8
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -9
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  tail call void @__ew32(ptr noundef %0, i32 noundef 24384, i32 noundef %33) #8
  %34 = load i16, ptr %23, align 4
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, i32 noundef 24635, i16 noundef zeroext %34) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30, %22
  %40 = tail call i32 @e1000e_set_fc_watermarks(ptr noundef %0) #8
  br label %41

41:                                               ; preds = %39, %30, %15, %1
  %42 = phi i32 [ %40, %39 ], [ 0, %1 ], [ %20, %15 ], [ %37, %30 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_setup_copper_link_ich8lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %6 = and i32 %5, -6209
  %7 = or i32 %6, 64
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %7) #8
  %8 = tail call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 4, i16 noundef zeroext -1) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %1
  %11 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %10
  %14 = load i16, ptr %2, align 2
  %15 = or i16 %14, 63
  store i16 %15, ptr %2, align 2
  %16 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %52 [
    i32 6, label %21
    i32 8, label %24
    i32 9, label %24
    i32 10, label %27
    i32 11, label %27
    i32 7, label %30
  ]

21:                                               ; preds = %18
  %22 = call i32 @e1000e_copper_link_setup_igp(ptr noundef %0) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %52, label %54

24:                                               ; preds = %18, %18
  %25 = call i32 @e1000e_copper_link_setup_m88(ptr noundef %0) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %52, label %54

27:                                               ; preds = %18, %18
  %28 = call i32 @e1000_copper_link_setup_82577(ptr noundef %0) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %52, label %54

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %0, i32 noundef 28, ptr noundef nonnull %2) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load i16, ptr %2, align 2
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 18
  %38 = load i8, ptr %37, align 2
  switch i8 %38, label %44 [
    i8 1, label %39
    i8 2, label %41
  ]

39:                                               ; preds = %35
  %40 = and i16 %36, -193
  store i16 %40, ptr %2, align 2
  br label %46

41:                                               ; preds = %35
  %42 = and i16 %36, -193
  %43 = or i16 %42, 64
  store i16 %43, ptr %2, align 2
  br label %46

44:                                               ; preds = %35
  %45 = or i16 %36, 128
  store i16 %45, ptr %2, align 2
  br label %46

46:                                               ; preds = %44, %41, %39
  %47 = phi i16 [ %45, %44 ], [ %43, %41 ], [ %40, %39 ]
  %48 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 %49(ptr noundef %0, i32 noundef 28, i16 noundef zeroext %47) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %27, %24, %21, %18
  %53 = call i32 @e1000e_setup_copper_link(ptr noundef %0) #8
  br label %54

54:                                               ; preds = %52, %46, %30, %27, %24, %21, %13, %10, %1
  %55 = phi i32 [ %53, %52 ], [ %8, %1 ], [ %11, %10 ], [ %16, %13 ], [ %22, %21 ], [ %25, %24 ], [ %28, %27 ], [ %33, %30 ], [ %50, %46 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_config_collision_dist_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_set_generic(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_rar_get_count_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_has_link_generic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_k1_gig_workaround_hv(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 2
  %5 = load i8, ptr %4, align 2, !range !9
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %63

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %9
  br i1 %1, label %15, label %50

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 %21(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %3) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %19
  %25 = load i16, ptr %3, align 2
  %26 = and i16 %25, -13312
  store i16 %26, ptr %3, align 2
  %27 = icmp eq i16 %26, -29696
  %28 = select i1 %27, i8 0, i8 %5
  %29 = load i32, ptr %16, align 4
  br label %30

30:                                               ; preds = %24, %15
  %31 = phi i32 [ %29, %24 ], [ %17, %15 ]
  %32 = phi i8 [ %28, %24 ], [ %5, %15 ]
  %33 = icmp eq i32 %31, 10
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 %36(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %3) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load i16, ptr %3, align 2
  %41 = and i16 %40, 4928
  store i16 %41, ptr %3, align 2
  %42 = icmp eq i16 %41, 4672
  %43 = select i1 %42, i8 0, i8 %32
  br label %44

44:                                               ; preds = %39, %30
  %45 = phi i8 [ %32, %30 ], [ %43, %39 ]
  %46 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 %47(ptr noundef %0, i32 noundef 24659, i16 noundef zeroext 256) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %59

50:                                               ; preds = %14
  %51 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %0, i32 noundef 24659, i16 noundef zeroext 16640) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50, %44
  %56 = phi i8 [ %45, %44 ], [ %5, %50 ]
  %57 = icmp ne i8 %56, 0
  %58 = call i32 @e1000_configure_k1_ich8lan(ptr noundef %0, i1 noundef zeroext %57)
  br label %59

59:                                               ; preds = %55, %50, %44, %34, %19
  %60 = phi i32 [ %22, %19 ], [ %37, %34 ], [ %48, %44 ], [ %58, %55 ], [ %53, %50 ]
  %61 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %62 = load ptr, ptr %61, align 4
  call void %62(ptr noundef %0) #8
  br label %63

63:                                               ; preds = %59, %9, %2
  %64 = phi i32 [ %60, %59 ], [ 0, %2 ], [ %12, %9 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_speed_and_duplex_copper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_k1_workaround_lv(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %2) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  %13 = load i16, ptr %2, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 4160
  %16 = icmp eq i32 %15, 4160
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = and i32 %14, 768
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %21 = load ptr, ptr %8, align 4
  %22 = call i32 %21(ptr noundef %0, i32 noundef 24657, ptr noundef nonnull %3) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %40

25:                                               ; preds = %20
  %26 = load i16, ptr %3, align 2
  %27 = and i16 %26, -16385
  store i16 %27, ptr %3, align 2
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %0, i32 noundef 24657, i16 noundef zeroext %27) #8
  %31 = icmp eq i32 %30, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br i1 %31, label %39, label %40

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 36
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %37 = and i32 %36, -8
  %38 = or i32 %37, 3
  call void @__ew32(ptr noundef %0, i32 noundef 36, i32 noundef %38) #8
  br label %39

39:                                               ; preds = %32, %25, %12
  br label %40

40:                                               ; preds = %39, %25, %24, %7, %1
  %41 = phi i32 [ 0, %39 ], [ %30, %25 ], [ 0, %1 ], [ %10, %7 ], [ %22, %24 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_link_stall_workaround_hv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_downshift(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_config_fc_after_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_clear_hw_cntrs_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_bus_info_pcie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_disable_pcie_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_post_phy_reset_ich8lan(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i16 0, ptr %8, align 2, !annotation !8
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %345

14:                                               ; preds = %1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %158 [
    i32 9, label %17
    i32 10, label %116
  ]

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i16 0, ptr %7, align 2, !annotation !8
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i16 0, ptr %6, align 2, !annotation !8
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 %23(ptr noundef %0, i32 noundef 24624, ptr noundef nonnull %6) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  br label %106

27:                                               ; preds = %21
  %28 = load i16, ptr %6, align 2
  %29 = or i16 %28, 1024
  store i16 %29, ptr %6, align 2
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef %0, i32 noundef 24624, i16 noundef zeroext %29) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %106

34:                                               ; preds = %27
  %35 = load i32, ptr %18, align 4
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %49, label %73

42:                                               ; preds = %34, %17
  %43 = phi i32 [ %35, %34 ], [ %19, %17 ]
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %64

49:                                               ; preds = %45, %37
  %50 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 %51(ptr noundef %0, i32 noundef 24633, i16 noundef zeroext 17457) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %106

54:                                               ; preds = %49
  %55 = load ptr, ptr %50, align 4
  %56 = call i32 %55(ptr noundef %0, i32 noundef 24656, i16 noundef zeroext -24060) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %106

58:                                               ; preds = %54
  %59 = load i32, ptr %18, align 4
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 11
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %45
  %65 = phi i32 [ %63, %61 ], [ %47, %45 ]
  %66 = icmp ult i32 %65, 2
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = call i32 @e1000e_phy_sw_reset(ptr noundef %0) #8
  %69 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 12608) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %67, %64, %58, %42, %37
  %74 = load ptr, ptr %9, align 4
  %75 = call i32 %74(ptr noundef %0) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 1, ptr %78, align 4
  %79 = call i32 @e1000e_write_phy_reg_mdic(ptr noundef %0, i32 noundef 31, i16 noundef zeroext 0) #8
  %80 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %81 = load ptr, ptr %80, align 4
  call void %81(ptr noundef %0) #8
  %82 = icmp eq i32 %79, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %77
  %84 = call fastcc i32 @e1000_k1_gig_workaround_hv(ptr noundef %0, i1 noundef zeroext true) #8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load ptr, ptr %9, align 4
  %88 = call i32 %87(ptr noundef %0) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 11
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 %92(ptr noundef %0, i32 noundef 24625, ptr noundef nonnull %7) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i16, ptr %7, align 2
  %97 = and i16 %96, 255
  %98 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 %99(ptr noundef %0, i32 noundef 24625, i16 noundef zeroext %97) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load ptr, ptr %98, align 4
  %104 = call i32 %103(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 2183) #8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %108

106:                                              ; preds = %86, %83, %77, %73, %67, %54, %49, %27, %26
  %107 = phi i32 [ %24, %26 ], [ %88, %86 ], [ %84, %83 ], [ %79, %77 ], [ %75, %73 ], [ %71, %67 ], [ %56, %54 ], [ %52, %49 ], [ %32, %27 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  br label %345

108:                                              ; preds = %102, %95, %90
  %109 = phi i32 [ %104, %102 ], [ %100, %95 ], [ %93, %90 ]
  %110 = load ptr, ptr %80, align 4
  call void %110(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  br label %345

111:                                              ; preds = %102
  %112 = load ptr, ptr %98, align 4
  %113 = call i32 %112(ptr noundef %0, i32 noundef 17, i16 noundef zeroext 52) #8
  %114 = load ptr, ptr %80, align 4
  call void %114(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %156, label %345

116:                                              ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i16 0, ptr %5, align 2, !annotation !8
  %117 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %118 = load ptr, ptr %117, align 4
  %119 = call i32 %118(ptr noundef %0, i32 noundef 24624, ptr noundef nonnull %5) #8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  br label %345

122:                                              ; preds = %116
  %123 = load i16, ptr %5, align 2
  %124 = or i16 %123, 1024
  store i16 %124, ptr %5, align 2
  %125 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %126 = load ptr, ptr %125, align 4
  %127 = call i32 %126(ptr noundef %0, i32 noundef 24624, i16 noundef zeroext %124) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %345

129:                                              ; preds = %122
  %130 = load ptr, ptr %9, align 4
  %131 = call i32 %130(ptr noundef %0) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %345

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %135 = load ptr, ptr %134, align 4
  %136 = call i32 %135(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 2127) #8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load ptr, ptr %134, align 4
  %140 = call i32 %139(ptr noundef %0, i32 noundef 17, i16 noundef zeroext 52) #8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load ptr, ptr %134, align 4
  %144 = call i32 %143(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 9233) #8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142, %138, %133
  %147 = phi i32 [ %136, %133 ], [ %144, %142 ], [ %140, %138 ]
  %148 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %149 = load ptr, ptr %148, align 4
  call void %149(ptr noundef %0) #8
  br label %345

150:                                              ; preds = %142
  %151 = load ptr, ptr %134, align 4
  %152 = call i32 %151(ptr noundef %0, i32 noundef 17, i16 noundef zeroext 5) #8
  %153 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %154 = load ptr, ptr %153, align 4
  call void %154(ptr noundef %0) #8
  %155 = icmp eq i32 %152, 0
  br i1 %155, label %156, label %345

156:                                              ; preds = %150, %111
  %157 = load i32, ptr %15, align 4
  br label %158

158:                                              ; preds = %156, %14
  %159 = phi i32 [ %157, %156 ], [ %16, %14 ]
  %160 = icmp ugt i32 %159, 8
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %163 = load ptr, ptr %162, align 4
  %164 = call i32 %163(ptr noundef %0, i32 noundef 24625, ptr noundef nonnull %8) #8
  %165 = load i16, ptr %8, align 2
  %166 = and i16 %165, -17
  store i16 %166, ptr %8, align 2
  %167 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %168 = load ptr, ptr %167, align 4
  %169 = call i32 %168(ptr noundef %0, i32 noundef 24625, i16 noundef zeroext %166) #8
  %170 = load i32, ptr %15, align 4
  br label %171

171:                                              ; preds = %161, %158
  %172 = phi i32 [ %170, %161 ], [ %159, %158 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  switch i32 %172, label %302 [
    i32 6, label %173
    i32 9, label %185
    i32 10, label %185
    i32 11, label %185
    i32 12, label %185
    i32 13, label %185
    i32 14, label %185
    i32 15, label %185
    i32 16, label %185
    i32 17, label %185
  ]

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 6
  br i1 %176, label %177, label %302

177:                                              ; preds = %173
  %178 = load ptr, ptr %0, align 4
  %179 = getelementptr inbounds %struct.e1000_adapter, ptr %178, i32 0, i32 64
  %180 = load ptr, ptr %179, align 32
  %181 = getelementptr inbounds %struct.pci_dev, ptr %180, i32 0, i32 8
  %182 = load i16, ptr %181, align 2
  %183 = and i16 %182, -2
  %184 = icmp eq i16 %183, 4170
  br i1 %184, label %186, label %185

185:                                              ; preds = %177, %171, %171, %171, %171, %171, %171, %171, %171, %171
  br label %186

186:                                              ; preds = %185, %177
  %187 = phi i32 [ 134217728, %185 ], [ 1, %177 ]
  %188 = load ptr, ptr %9, align 4
  %189 = call i32 %188(ptr noundef %0) #8
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %345

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr i8, ptr %194, i32 40
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %197 = and i32 %196, %187
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %307, label %199

199:                                              ; preds = %192
  %200 = load ptr, ptr %193, align 4
  %201 = getelementptr i8, ptr %200, i32 3840
  %202 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %203 = load i32, ptr %15, align 4
  %204 = icmp ugt i32 %203, 9
  %205 = and i32 %202, 1
  %206 = icmp eq i32 %205, 0
  %207 = select i1 %204, i1 true, i1 %206
  br i1 %207, label %208, label %307

208:                                              ; preds = %199
  %209 = load ptr, ptr %193, align 4
  %210 = getelementptr i8, ptr %209, i32 3848
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %212 = lshr i32 %211, 16
  %213 = and i32 %212, 255
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %307, label %215

215:                                              ; preds = %208
  %216 = load i32, ptr %15, align 4
  %217 = icmp eq i32 %216, 9
  %218 = and i32 %202, 8
  %219 = icmp eq i32 %218, 0
  %220 = select i1 %217, i1 %219, i1 false
  %221 = icmp ugt i32 %216, 9
  %222 = or i1 %221, %220
  br i1 %222, label %223, label %266

223:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %224 = load ptr, ptr %193, align 4
  %225 = getelementptr i8, ptr %224, i32 12
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %227 = lshr i32 %226, 12
  %228 = and i32 %227, 3
  %229 = call i32 @e1000_read_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24602, ptr noundef nonnull %2) #8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %223
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %303

232:                                              ; preds = %223
  %233 = load i16, ptr %2, align 2
  %234 = and i16 %233, -768
  %235 = lshr i32 %226, 17
  %236 = trunc i32 %235 to i16
  %237 = and i16 %236, 127
  %238 = or i16 %237, %234
  %239 = or i16 %238, 640
  store i16 %239, ptr %2, align 2
  %240 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = icmp ne i32 %241, 12
  %243 = icmp eq i32 %228, 0
  %244 = select i1 %242, i1 true, i1 %243
  br i1 %244, label %255, label %245

245:                                              ; preds = %232
  %246 = and i16 %239, -4353
  %247 = trunc i32 %228 to i16
  %248 = add nsw i16 %247, -1
  %249 = shl nuw nsw i16 %248, 8
  %250 = and i16 %249, 256
  %251 = shl nuw nsw i16 %248, 11
  %252 = and i16 %251, 4096
  %253 = or i16 %252, %250
  %254 = or i16 %253, %246
  store i16 %254, ptr %2, align 2
  br label %255

255:                                              ; preds = %245, %232
  %256 = phi i16 [ %254, %245 ], [ %239, %232 ]
  %257 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24602, i16 noundef zeroext %256) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %303

259:                                              ; preds = %255
  %260 = load ptr, ptr %193, align 4
  %261 = getelementptr i8, ptr %260, i32 3584
  %262 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %263 = trunc i32 %262 to i16
  %264 = call i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef 24606, i16 noundef zeroext %263) #8
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %303

266:                                              ; preds = %259, %215
  %267 = lshr i32 %202, 15
  %268 = and i32 %267, 8190
  %269 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %270 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  br label %271

271:                                              ; preds = %298, %266
  %272 = phi i16 [ 0, %266 ], [ %299, %298 ]
  %273 = phi i32 [ 0, %266 ], [ %300, %298 ]
  %274 = shl nuw i32 %273, 1
  %275 = add nuw nsw i32 %274, %268
  %276 = trunc i32 %275 to i16
  %277 = load ptr, ptr %269, align 4
  %278 = call i32 %277(ptr noundef %0, i16 noundef zeroext %276, i16 noundef zeroext 1, ptr noundef nonnull %3) #8
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %303

280:                                              ; preds = %271
  %281 = or i16 %276, 1
  %282 = load ptr, ptr %269, align 4
  %283 = call i32 %282(ptr noundef %0, i16 noundef zeroext %281, i16 noundef zeroext 1, ptr noundef nonnull %4) #8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %303

285:                                              ; preds = %280
  %286 = load i16, ptr %4, align 2
  %287 = icmp eq i16 %286, 31
  br i1 %287, label %288, label %290

288:                                              ; preds = %285
  %289 = load i16, ptr %3, align 2
  br label %298

290:                                              ; preds = %285
  %291 = and i16 %286, 31
  %292 = or i16 %291, %272
  store i16 %292, ptr %4, align 2
  %293 = zext i16 %292 to i32
  %294 = load i16, ptr %3, align 2
  %295 = load ptr, ptr %270, align 4
  %296 = call i32 %295(ptr noundef %0, i32 noundef %293, i16 noundef zeroext %294) #8
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %290, %288
  %299 = phi i16 [ %289, %288 ], [ %272, %290 ]
  %300 = add nuw nsw i32 %273, 1
  %301 = icmp eq i32 %300, %213
  br i1 %301, label %307, label %271

302:                                              ; preds = %173, %171
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %310

303:                                              ; preds = %290, %280, %271, %259, %255, %231
  %304 = phi i32 [ %229, %231 ], [ %264, %259 ], [ %257, %255 ], [ %278, %271 ], [ %283, %280 ], [ %296, %290 ]
  %305 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %306 = load ptr, ptr %305, align 4
  call void %306(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %345

307:                                              ; preds = %298, %208, %199, %192
  %308 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %309 = load ptr, ptr %308, align 4
  call void %309(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %310

310:                                              ; preds = %307, %302
  %311 = call fastcc i32 @e1000_oem_bits_config_ich8lan(ptr noundef %0, i1 noundef zeroext true)
  %312 = load i32, ptr %15, align 4
  %313 = icmp eq i32 %312, 10
  br i1 %313, label %314, label %345

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %316 = load ptr, ptr %315, align 4
  %317 = getelementptr i8, ptr %316, i32 23380
  %318 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %319 = and i32 %318, 32768
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %314
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %322 = load i32, ptr %15, align 4
  %323 = icmp ult i32 %322, 10
  br i1 %323, label %329, label %324

324:                                              ; preds = %321
  %325 = load ptr, ptr %315, align 4
  %326 = getelementptr i8, ptr %325, i32 3840
  %327 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %326) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %328 = and i32 %327, -129
  call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %328) #8
  br label %329

329:                                              ; preds = %324, %321, %314
  %330 = load ptr, ptr %9, align 4
  %331 = call i32 %330(ptr noundef %0) #8
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 18
  %335 = load ptr, ptr %334, align 4
  %336 = call i32 %335(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 18437) #8
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %333
  %339 = load ptr, ptr %334, align 4
  %340 = call i32 %339(ptr noundef %0, i32 noundef 17, i16 noundef zeroext 4999) #8
  br label %341

341:                                              ; preds = %338, %333
  %342 = phi i32 [ %336, %333 ], [ %340, %338 ]
  %343 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %344 = load ptr, ptr %343, align 4
  call void %344(ptr noundef %0) #8
  br label %345

345:                                              ; preds = %341, %329, %310, %303, %191, %150, %146, %129, %122, %121, %111, %108, %106, %1
  %346 = phi i32 [ 0, %1 ], [ %113, %111 ], [ %152, %150 ], [ %331, %329 ], [ %342, %341 ], [ %311, %310 ], [ %107, %106 ], [ %109, %108 ], [ %147, %146 ], [ %189, %191 ], [ %304, %303 ], [ %119, %121 ], [ %131, %129 ], [ %127, %122 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  ret i32 %346
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_mdic(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_init_rx_addrs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_phy_hw_reset_ich8lan(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 23380
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  %13 = load i32, ptr %2, align 4
  %14 = icmp ult i32 %13, 10
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 3840
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %19 = or i32 %18, 128
  tail call void @__ew32(ptr noundef %0, i32 noundef 3840, i32 noundef %19) #8
  br label %20

20:                                               ; preds = %15, %12, %5, %1
  %21 = tail call i32 @e1000e_phy_hw_reset_generic(ptr noundef %0) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @e1000_post_phy_reset_ich8lan(ptr noundef %0)
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %24, %23 ], [ %21, %20 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_set_pcie_no_snoop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_set_fc_watermarks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_copper_link_setup_igp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_copper_link_setup_m88(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_check_reset_block_ich8lan(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 22
  %3 = load i8, ptr %2, align 2, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 23380
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %15, %5
  %13 = phi i32 [ %16, %15 ], [ 0, %5 ]
  %14 = icmp eq i32 %13, 30
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = add nuw nsw i32 %13, 1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 23380
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %12, label %22

22:                                               ; preds = %15, %12, %5, %1
  %23 = phi i32 [ 1, %1 ], [ 0, %5 ], [ 0, %15 ], [ 12, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_cfg_done_ich8lan(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %3 = tail call i32 @e1000e_get_cfg_done_generic(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 7
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 1500, %7 ], [ %16, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %14 = and i32 %13, 512
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %15 = icmp ne i32 %14, 0
  %16 = add nsw i32 %10, -1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %9

19:                                               ; preds = %9
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %23 = and i32 %22, -513
  tail call void @__ew32(ptr noundef %0, i32 noundef 8, i32 noundef %23) #8
  br label %26

24:                                               ; preds = %1
  %25 = tail call i32 @e1000e_get_auto_rd_done(ptr noundef %0) #8
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = and i32 %30, -1025
  tail call void @__ew32(ptr noundef %0, i32 noundef 8, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i32, ptr %4, align 4
  %37 = icmp ult i32 %36, 8
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load ptr, ptr %27, align 4
  %40 = getelementptr i8, ptr %39, i32 16
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = tail call i32 @e1000e_phy_init_script_igp3(ptr noundef %0) #8
  br label %54

50:                                               ; preds = %35
  %51 = call fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr noundef %0, ptr noundef nonnull %2)
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 0, i32 -3
  br label %54

54:                                               ; preds = %50, %48, %44, %38
  %55 = phi i32 [ 0, %38 ], [ 0, %48 ], [ 0, %44 ], [ %53, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cable_length_igp_2(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_igp(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_d0_lplu_state_ich8lan(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %78, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 3856
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br i1 %1, label %13, label %46

13:                                               ; preds = %8
  %14 = or i32 %12, 2
  tail call void @__ew32(ptr noundef %0, i32 noundef 3856, i32 noundef %14) #8
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %78

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %22 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %3) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i16, ptr %3, align 2
  %26 = or i16 %25, 4096
  store i16 %26, ptr %3, align 2
  %27 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %26) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i16, ptr %3, align 2
  %31 = and i16 %30, -4097
  store i16 %31, ptr %3, align 2
  %32 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %31) #8
  br label %33

33:                                               ; preds = %29, %24, %21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %34

34:                                               ; preds = %33, %17
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 %36(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = load i16, ptr %4, align 2
  %41 = and i16 %40, -129
  store i16 %41, ptr %4, align 2
  %42 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %41) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %77, label %78

46:                                               ; preds = %8
  %47 = and i32 %12, -3
  tail call void @__ew32(ptr noundef %0, i32 noundef 3856, i32 noundef %47) #8
  %48 = load i32, ptr %5, align 4
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 7
  %52 = load i32, ptr %51, align 4
  switch i32 %52, label %77 [
    i32 1, label %53
    i32 2, label %65
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load i16, ptr %4, align 2
  %60 = or i16 %59, 128
  store i16 %60, ptr %4, align 2
  %61 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %60) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %78

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 %67(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i16, ptr %4, align 2
  %72 = and i16 %71, -129
  store i16 %72, ptr %4, align 2
  %73 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %72) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %58, %50, %39
  br label %78

78:                                               ; preds = %77, %70, %65, %58, %53, %46, %39, %34, %13, %2
  %79 = phi i32 [ 0, %77 ], [ 0, %2 ], [ 0, %13 ], [ %37, %34 ], [ %44, %39 ], [ 0, %46 ], [ %56, %53 ], [ %63, %58 ], [ %68, %65 ], [ %75, %70 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_d3_lplu_state_ich8lan(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 3856
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br i1 %1, label %41, label %9

9:                                                ; preds = %2
  %10 = and i32 %8, -5
  tail call void @__ew32(ptr noundef %0, i32 noundef 3856, i32 noundef %10) #8
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %79

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 7
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %77 [
    i32 1, label %17
    i32 2, label %29
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %17
  %23 = load i16, ptr %4, align 2
  %24 = or i16 %23, 128
  store i16 %24, ptr %4, align 2
  %25 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %24) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %77, label %79

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %29
  %35 = load i16, ptr %4, align 2
  %36 = and i16 %35, -129
  store i16 %36, ptr %4, align 2
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %36) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %77, label %79

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 13
  %43 = load i16, ptr %42, align 4
  switch i16 %43, label %77 [
    i16 47, label %44
    i16 15, label %44
    i16 3, label %44
  ]

44:                                               ; preds = %41, %41, %41
  %45 = or i32 %8, 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 3856, i32 noundef %45) #8
  %46 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %79

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 6
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %54 = call i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %3) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i16, ptr %3, align 2
  %58 = or i16 %57, 4096
  store i16 %58, ptr %3, align 2
  %59 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %58) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i16, ptr %3, align 2
  %63 = and i16 %62, -4097
  store i16 %63, ptr %3, align 2
  %64 = call i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef 3, i16 noundef zeroext %63) #8
  br label %65

65:                                               ; preds = %61, %56, %53
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %66

66:                                               ; preds = %65, %49
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 %68(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i16, ptr %4, align 2
  %73 = and i16 %72, -129
  store i16 %73, ptr %4, align 2
  %74 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %73) #8
  br label %77

77:                                               ; preds = %71, %41, %34, %22, %14
  %78 = phi i32 [ %76, %71 ], [ 0, %22 ], [ 0, %34 ], [ 0, %14 ], [ 0, %41 ]
  br label %79

79:                                               ; preds = %77, %66, %44, %34, %29, %22, %17, %9
  %80 = phi i32 [ %78, %77 ], [ 0, %9 ], [ %20, %17 ], [ %27, %22 ], [ %32, %29 ], [ %39, %34 ], [ 0, %44 ], [ %69, %66 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_write_phy_reg_igp(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_cfg_done_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_get_auto_rd_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_init_script_igp3(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %38 [
    i32 12, label %11
    i32 13, label %11
    i32 14, label %11
    i32 15, label %11
    i32 16, label %11
    i32 17, label %11
    i32 6, label %28
    i32 7, label %28
  ]

11:                                               ; preds = %2, %2, %2, %2, %2, %2
  store i32 0, ptr %1, align 4
  %12 = call fastcc i32 @e1000_read_flash_dword_ich8lan(ptr noundef %0, i32 noundef 19, ptr noundef nonnull %5)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  %15 = load i32, ptr %5, align 4
  %16 = and i32 %15, 49152
  %17 = icmp eq i32 %16, 32768
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, ptr %1, align 4
  br label %65

19:                                               ; preds = %14
  %20 = add i32 %7, 19
  %21 = call fastcc i32 @e1000_read_flash_dword_ich8lan(ptr noundef %0, i32 noundef %20, ptr noundef nonnull %5)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %19
  %24 = load i32, ptr %5, align 4
  %25 = and i32 %24, 49152
  %26 = icmp eq i32 %25, 32768
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  store i32 1, ptr %1, align 4
  br label %65

28:                                               ; preds = %2, %2
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %33 = and i32 %32, 768
  %34 = icmp eq i32 %33, 768
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = lshr i32 %32, 22
  %37 = and i32 %36, 1
  store i32 %37, ptr %1, align 4
  br label %65

38:                                               ; preds = %28, %2
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2
  %39 = load i32, ptr %9, align 4
  %40 = icmp ugt i32 %39, 11
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call fastcc i32 @e1000_read_flash_data_ich8lan(ptr noundef %0, i32 noundef 39, i8 noundef zeroext 1, ptr noundef nonnull %4) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %42, %41 ], [ -1, %38 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %65

46:                                               ; preds = %41
  %47 = load i16, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  %48 = and i16 %47, 192
  %49 = icmp eq i16 %48, 128
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, ptr %1, align 4
  br label %65

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2
  %52 = load i32, ptr %9, align 4
  %53 = icmp ugt i32 %52, 11
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = add i32 %8, 39
  %56 = call fastcc i32 @e1000_read_flash_data_ich8lan(ptr noundef %0, i32 noundef %55, i8 noundef zeroext 1, ptr noundef nonnull %3) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54, %51
  %59 = phi i32 [ %56, %54 ], [ -1, %51 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %65

60:                                               ; preds = %54
  %61 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  %62 = and i16 %61, 192
  %63 = icmp eq i16 %62, 128
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1, ptr %1, align 4
  br label %65

65:                                               ; preds = %64, %60, %58, %50, %44, %35, %27, %23, %19, %18, %11
  %66 = phi i32 [ 0, %50 ], [ 0, %64 ], [ 0, %35 ], [ 0, %18 ], [ 0, %27 ], [ %12, %11 ], [ %21, %19 ], [ -1, %23 ], [ -1, %60 ], [ %45, %44 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_read_flash_dword_ich8lan(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = shl i32 %1, 1
  %5 = icmp ugt i32 %4, 16777215
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 12
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %4
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  br label %15

15:                                               ; preds = %36, %10
  %16 = phi i8 [ 0, %10 ], [ %41, %36 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #8
  %18 = tail call fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr noundef %0) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %24 = and i32 %23, -50790400
  %25 = or i32 %24, 50331648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %13) #8, !srcloc !14
  %30 = tail call fastcc i32 @e1000_flash_cycle_ich8lan(ptr noundef %0) #8
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr %14, align 4
  br i1 %31, label %33, label %36

33:                                               ; preds = %20
  %34 = getelementptr i8, ptr %32, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  store i32 %35, ptr %2, align 4
  br label %44

36:                                               ; preds = %20
  %37 = getelementptr i8, ptr %32, i32 4
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %37) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %39 = and i16 %38, 3
  %40 = icmp ne i16 %39, 0
  %41 = add nuw nsw i8 %16, 1
  %42 = icmp ult i8 %16, 10
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %15, label %44

44:                                               ; preds = %36, %33, %15, %6, %3
  %45 = phi i32 [ -1, %6 ], [ -1, %3 ], [ 0, %33 ], [ %18, %15 ], [ -1, %36 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %6 = and i16 %5, 16384
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %56, label %8

8:                                                ; preds = %1
  %9 = or i16 %5, 6
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 11
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = zext i16 %9 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !14
  br label %20

17:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %9) #8, !srcloc !18
  br label %20

20:                                               ; preds = %17, %13
  %21 = and i16 %5, 32
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = or i16 %5, 7
  %25 = load i32, ptr %10, align 4
  %26 = icmp ugt i32 %25, 11
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = zext i16 %24 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #8, !srcloc !14
  br label %56

31:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %24) #8, !srcloc !18
  br label %56

34:                                               ; preds = %41, %20
  %35 = phi i32 [ %43, %41 ], [ 0, %20 ]
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 4
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %37) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %39 = and i16 %38, 32
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #8
  %43 = add nuw nsw i32 %35, 1
  %44 = icmp eq i32 %43, 10000000
  br i1 %44, label %56, label %34

45:                                               ; preds = %34
  %46 = or i16 %38, 1
  %47 = load i32, ptr %10, align 4
  %48 = icmp ugt i32 %47, 11
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = zext i16 %46 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #8, !srcloc !14
  br label %56

53:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %55, i16 %46) #8, !srcloc !18
  br label %56

56:                                               ; preds = %53, %49, %41, %31, %27, %1
  %57 = phi i32 [ -1, %1 ], [ 0, %31 ], [ 0, %27 ], [ 0, %49 ], [ 0, %53 ], [ -1, %41 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_flash_cycle_ich8lan(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 11
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %6, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %10 = lshr i32 %9, 16
  %11 = trunc i32 %10 to i16
  br label %15

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %6, i32 6
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i16 [ %11, %7 ], [ %14, %12 ]
  %17 = or i16 %16, 1
  %18 = load i32, ptr %2, align 4
  %19 = icmp ugt i32 %18, 11
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = zext i16 %17 to i32
  %22 = shl nuw i32 %21, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #8, !srcloc !14
  br label %30

26:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 %17) #8, !srcloc !18
  br label %30

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  br label %32

32:                                               ; preds = %39, %30
  %33 = phi i32 [ 0, %30 ], [ %41, %39 ]
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr i8, ptr %34, i32 4
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #8
  %41 = add nuw nsw i32 %33, 1
  %42 = icmp eq i32 %41, 10000001
  br i1 %42, label %46, label %32

43:                                               ; preds = %32
  %44 = and i16 %36, 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ -1, %46 ], [ 0, %43 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_read_flash_data_ich8lan(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = icmp ugt i32 %1, 16777215
  br i1 %5, label %48, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  %11 = add i8 %2, 3
  %12 = and i8 %11, 3
  %13 = zext i8 %12 to i16
  %14 = shl nuw nsw i16 %13, 8
  br label %15

15:                                               ; preds = %40, %6
  %16 = phi i8 [ 0, %6 ], [ %45, %40 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #8
  %18 = tail call fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr noundef %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 6
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %24 = and i16 %23, -775
  %25 = or i16 %24, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr i8, ptr %26, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #8, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %9) #8, !srcloc !14
  %30 = tail call fastcc i32 @e1000_flash_cycle_ich8lan(ptr noundef %0)
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr %10, align 4
  br i1 %31, label %33, label %40

33:                                               ; preds = %20
  %34 = getelementptr i8, ptr %32, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %36 = icmp eq i8 %2, 1
  %37 = trunc i32 %35 to i16
  %38 = and i16 %37, 255
  %39 = select i1 %36, i16 %38, i16 %37
  store i16 %39, ptr %3, align 2
  br label %48

40:                                               ; preds = %20
  %41 = getelementptr i8, ptr %32, i32 4
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %41) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %43 = and i16 %42, 3
  %44 = icmp ne i16 %43, 0
  %45 = add nuw nsw i8 %16, 1
  %46 = icmp ult i8 %16, 10
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %15, label %48

48:                                               ; preds = %40, %33, %15, %4
  %49 = phi i32 [ -1, %4 ], [ 0, %33 ], [ -1, %40 ], [ -1, %15 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_acquire_nvm_ich8lan(ptr nocapture noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nvm_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_read_nvm_ich8lan(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i16 0, ptr %6, align 2, !annotation !8
  %8 = zext i16 %1 to i32
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 5
  %10 = load i16, ptr %9, align 4
  %11 = icmp ugt i16 %10, %1
  br i1 %11, label %12, label %56

12:                                               ; preds = %4
  %13 = zext i16 %10 to i32
  %14 = zext i16 %2 to i32
  %15 = sub nsw i32 %13, %8
  %16 = icmp slt i32 %15, %14
  %17 = icmp eq i16 %2, 0
  %18 = or i1 %17, %16
  br i1 %18, label %56, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 4
  %21 = tail call i32 %20(ptr noundef %0) #8
  %22 = call fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr noundef %0, ptr noundef nonnull %5)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, ptr %5, align 4
  br label %31

25:                                               ; preds = %19
  %26 = load i32, ptr %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %25, %24
  %32 = phi i32 [ %30, %28 ], [ 0, %25 ], [ 0, %24 ]
  br label %33

33:                                               ; preds = %46, %31
  %34 = phi i32 [ 0, %31 ], [ %50, %46 ]
  %35 = add nuw nsw i32 %34, %8
  %36 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %35, i32 1
  %37 = load i8, ptr %36, align 2, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %35
  br label %46

41:                                               ; preds = %33
  %42 = add i32 %35, %32
  %43 = shl i32 %42, 1
  %44 = call fastcc i32 @e1000_read_flash_data_ich8lan(ptr noundef %0, i32 noundef %43, i8 noundef zeroext 2, ptr noundef nonnull %6) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41, %39
  %47 = phi ptr [ %40, %39 ], [ %6, %41 ]
  %48 = load i16, ptr %47, align 2
  %49 = getelementptr i16, ptr %3, i32 %34
  store i16 %48, ptr %49, align 2
  %50 = add nuw nsw i32 %34, 1
  %51 = icmp eq i32 %50, %14
  br i1 %51, label %52, label %33

52:                                               ; preds = %46, %41
  %53 = phi i32 [ 0, %46 ], [ %44, %41 ]
  %54 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef %0) #8
  br label %56

56:                                               ; preds = %52, %12, %4
  %57 = phi i32 [ %53, %52 ], [ -1, %12 ], [ -1, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_release_nvm_ich8lan(ptr nocapture noundef readnone %0) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @nvm_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reload_nvm_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_update_nvm_checksum_ich8lan(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2
  %5 = tail call i32 @e1000e_update_nvm_checksum_generic(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %119

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %119

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 4
  %13 = tail call i32 %12(ptr noundef %0) #8
  %14 = call fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr noundef %0, ptr noundef nonnull %2)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, ptr %2, align 4
  br label %20

17:                                               ; preds = %11
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17, %16
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call fastcc i32 @e1000_erase_flash_bank_ich8lan(ptr noundef %0, i32 noundef 1)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %107

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call fastcc i32 @e1000_erase_flash_bank_ich8lan(ptr noundef %0, i32 noundef 0)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %107

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %22, %20 ], [ 0, %25 ]
  %32 = phi i32 [ 0, %20 ], [ %27, %25 ]
  br label %33

33:                                               ; preds = %80, %30
  %34 = phi i32 [ 0, %30 ], [ %81, %80 ]
  %35 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %34, i32 1
  %36 = load i8, ptr %35, align 2, !range !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %34
  %40 = load i16, ptr %39, align 2
  store i16 %40, ptr %3, align 2
  br label %46

41:                                               ; preds = %33
  %42 = add i32 %34, %32
  %43 = shl i32 %42, 1
  %44 = call fastcc i32 @e1000_read_flash_data_ich8lan(ptr noundef %0, i32 noundef %43, i8 noundef zeroext 2, ptr noundef nonnull %3) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %107

46:                                               ; preds = %41, %38
  %47 = icmp eq i32 %34, 19
  %48 = load i16, ptr %3, align 2
  %49 = lshr i16 %48, 8
  %50 = trunc i16 %49 to i8
  br i1 %47, label %51, label %55

51:                                               ; preds = %46
  %52 = or i16 %48, -16384
  store i16 %52, ptr %3, align 2
  %53 = lshr i16 %52, 8
  %54 = trunc i16 %53 to i8
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i8 [ %54, %51 ], [ %50, %46 ]
  %57 = trunc i16 %48 to i8
  %58 = add i32 %34, %31
  %59 = shl i32 %58, 1
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %60 = tail call fastcc i32 @e1000_write_flash_byte_ich8lan(ptr noundef %0, i32 noundef %59, i8 noundef zeroext %57) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %66, %55
  %63 = phi i16 [ %67, %66 ], [ 0, %55 ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %64 = tail call fastcc i32 @e1000_write_flash_byte_ich8lan(ptr noundef %0, i32 noundef %59, i8 noundef zeroext %57) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = add nuw nsw i16 %63, 1
  %68 = icmp ult i16 %63, 99
  br i1 %68, label %62, label %111

69:                                               ; preds = %62, %55
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %70 = or i32 %59, 1
  %71 = tail call fastcc i32 @e1000_write_flash_byte_ich8lan(ptr noundef %0, i32 noundef %70, i8 noundef zeroext %56) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %77, %69
  %74 = phi i16 [ %78, %77 ], [ 0, %69 ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %75 = tail call fastcc i32 @e1000_write_flash_byte_ich8lan(ptr noundef %0, i32 noundef %70, i8 noundef zeroext %56) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = add nuw nsw i16 %74, 1
  %79 = icmp ult i16 %74, 99
  br i1 %79, label %73, label %107

80:                                               ; preds = %73, %69
  %81 = add nuw nsw i32 %34, 1
  %82 = icmp eq i32 %81, 2048
  br i1 %82, label %83, label %33

83:                                               ; preds = %80
  %84 = shl i32 %31, 1
  %85 = add i32 %84, 38
  %86 = call fastcc i32 @e1000_read_flash_data_ich8lan(ptr noundef %0, i32 noundef %85, i8 noundef zeroext 2, ptr noundef nonnull %3) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load i16, ptr %3, align 2
  %90 = or i32 %85, 1
  %91 = lshr i16 %89, 8
  %92 = trunc i16 %91 to i8
  %93 = and i8 %92, -65
  %94 = tail call fastcc i32 @e1000_retry_write_flash_byte_ich8lan(ptr noundef %0, i32 noundef %90, i8 noundef zeroext %93)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = shl i32 %32, 1
  %98 = add i32 %97, 39
  %99 = tail call fastcc i32 @e1000_retry_write_flash_byte_ich8lan(ptr noundef %0, i32 noundef %98, i8 noundef zeroext 0)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %101, %96
  %102 = phi i32 [ %105, %101 ], [ 0, %96 ]
  %103 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %102
  %104 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %102, i32 1
  store i8 0, ptr %104, align 2
  store i16 -1, ptr %103, align 2
  %105 = add nuw nsw i32 %102, 1
  %106 = icmp eq i32 %105, 2048
  br i1 %106, label %114, label %101

107:                                              ; preds = %96, %88, %83, %77, %41, %25, %20
  %108 = phi i32 [ %28, %25 ], [ -1, %96 ], [ -1, %88 ], [ -1, %83 ], [ %23, %20 ], [ -1, %77 ], [ -1, %41 ]
  %109 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  tail call void %110(ptr noundef %0) #8
  br label %119

111:                                              ; preds = %66
  %112 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  tail call void %113(ptr noundef %0) #8
  br label %119

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  tail call void %116(ptr noundef %0) #8
  %117 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  tail call void %118(ptr noundef %0) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  br label %119

119:                                              ; preds = %114, %111, %107, %7, %1
  %120 = phi i32 [ %5, %1 ], [ 0, %7 ], [ -1, %111 ], [ 0, %114 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_valid_led_default_ich8lan(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef %1) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i16, ptr %1, align 2
  switch i16 %8, label %10 [
    i16 0, label %9
    i16 -1, label %9
  ]

9:                                                ; preds = %7, %7
  store i16 6529, ptr %1, align 2
  br label %10

10:                                               ; preds = %9, %7, %2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_validate_nvm_checksum_ich8lan(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -11
  %6 = icmp ult i32 %5, 7
  %7 = select i1 %6, i16 3, i16 25
  %8 = select i1 %6, i32 1, i32 64
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, i16 noundef zeroext %7, i16 noundef zeroext 1, ptr noundef nonnull %2) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load i16, ptr %2, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %8, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load i32, ptr %3, align 4
  %20 = icmp ult i32 %19, 14
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = trunc i32 %8 to i16
  %23 = or i16 %14, %22
  store i16 %23, ptr %2, align 2
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %0, i16 noundef zeroext %7, i16 noundef zeroext 1, ptr noundef nonnull %2) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %0) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %18, %13
  %34 = call i32 @e1000e_validate_nvm_checksum_generic(ptr noundef %0) #8
  br label %35

35:                                               ; preds = %33, %28, %21, %1
  %36 = phi i32 [ %34, %33 ], [ %11, %1 ], [ %26, %21 ], [ %31, %28 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_write_nvm_ich8lan(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  %6 = zext i16 %1 to i32
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp ugt i16 %8, %1
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = zext i16 %8 to i32
  %12 = zext i16 %2 to i32
  %13 = sub nsw i32 %11, %6
  %14 = icmp slt i32 %13, %12
  %15 = icmp eq i16 %2, 0
  %16 = or i1 %15, %14
  br i1 %16, label %32, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %5, align 4
  %19 = tail call i32 %18(ptr noundef %0) #8
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ 0, %17 ], [ %27, %20 ]
  %22 = add nuw nsw i32 %21, %6
  %23 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %22
  %24 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %22, i32 1
  store i8 1, ptr %24, align 2
  %25 = getelementptr i16, ptr %3, i32 %21
  %26 = load i16, ptr %25, align 2
  store i16 %26, ptr %23, align 2
  %27 = add nuw nsw i32 %21, 1
  %28 = icmp eq i32 %27, %12
  br i1 %28, label %29, label %20

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0) #8
  br label %32

32:                                               ; preds = %29, %10, %4
  %33 = phi i32 [ 0, %29 ], [ -1, %10 ], [ -1, %4 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_update_nvm_checksum_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_erase_flash_bank_ich8lan(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %10 = lshr i16 %9, 3
  %11 = and i16 %10, 3
  %12 = zext i16 %11 to i32
  switch i32 %12, label %15 [
    i32 0, label %16
    i32 1, label %19
    i32 2, label %13
    i32 3, label %14
  ]

13:                                               ; preds = %2
  br label %19

14:                                               ; preds = %2
  br label %19

15:                                               ; preds = %2
  unreachable

16:                                               ; preds = %2
  %17 = lshr i32 %5, 8
  %18 = icmp ult i32 %5, 256
  br i1 %18, label %84, label %19

19:                                               ; preds = %16, %14, %13, %2
  %20 = phi i32 [ 256, %16 ], [ 4096, %2 ], [ 8192, %13 ], [ 65536, %14 ]
  %21 = phi i32 [ %17, %16 ], [ %12, %2 ], [ 1, %13 ], [ 1, %14 ]
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %1, 0
  %25 = select i1 %24, i32 0, i32 %5
  %26 = add i32 %23, %25
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  br label %28

28:                                               ; preds = %80, %19
  %29 = phi i32 [ 0, %19 ], [ %82, %80 ]
  %30 = phi i32 [ 0, %19 ], [ %81, %80 ]
  %31 = phi i32 [ %26, %19 ], [ %66, %80 ]
  %32 = mul i32 %29, %20
  %33 = add i32 %30, 1
  %34 = call i32 @llvm.smax.i32(i32 %33, i32 10)
  br label %35

35:                                               ; preds = %77, %28
  %36 = phi i32 [ %66, %77 ], [ %31, %28 ]
  %37 = phi i32 [ %78, %77 ], [ %30, %28 ]
  %38 = tail call fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr noundef %0)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %35
  %41 = load i32, ptr %27, align 4
  %42 = icmp ugt i32 %41, 11
  %43 = load ptr, ptr %6, align 4
  br i1 %42, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %43, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %47 = lshr i32 %46, 16
  %48 = trunc i32 %47 to i16
  br label %52

49:                                               ; preds = %40
  %50 = getelementptr i8, ptr %43, i32 6
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %50) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i16 [ %48, %44 ], [ %51, %49 ]
  %54 = or i16 %53, 6
  %55 = load i32, ptr %27, align 4
  %56 = icmp ugt i32 %55, 11
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = zext i16 %54 to i32
  %59 = shl nuw i32 %58, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #8, !srcloc !14
  br label %65

62:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr i8, ptr %63, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %64, i16 %54) #8, !srcloc !18
  br label %65

65:                                               ; preds = %62, %57
  %66 = add i32 %36, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #8, !srcloc !14
  %69 = tail call fastcc i32 @e1000_flash_cycle_ich8lan(ptr noundef %0)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %6, align 4
  %73 = getelementptr i8, ptr %72, i32 4
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %73) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %75 = and i16 %74, 3
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = add i32 %37, 1
  %79 = icmp eq i32 %78, %34
  br i1 %79, label %80, label %35

80:                                               ; preds = %77, %65
  %81 = phi i32 [ %34, %77 ], [ %37, %65 ]
  %82 = add nuw nsw i32 %29, 1
  %83 = icmp eq i32 %82, %21
  br i1 %83, label %84, label %28

84:                                               ; preds = %80, %71, %35, %16
  %85 = phi i32 [ 0, %16 ], [ %69, %71 ], [ -1, %35 ], [ 0, %80 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_retry_write_flash_byte_ich8lan(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @e1000_write_flash_byte_ich8lan(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %10, %3
  %7 = phi i16 [ %11, %10 ], [ 0, %3 ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %8 = tail call fastcc i32 @e1000_write_flash_byte_ich8lan(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i16 %7, 1
  %12 = icmp ult i16 %7, 99
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi i16 [ %7, %6 ], [ 100, %10 ]
  %15 = icmp eq i16 %14, 100
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i32 [ 0, %3 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_write_flash_byte_ich8lan(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 11
  %7 = icmp ugt i32 %1, 16777215
  %8 = or i1 %7, %6
  br i1 %8, label %62, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %1
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  %14 = zext i8 %2 to i32
  br label %15

15:                                               ; preds = %53, %9
  %16 = phi i8 [ 0, %9 ], [ %59, %53 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #8
  %18 = tail call fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr noundef %0) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load i32, ptr %4, align 4
  %22 = icmp ugt i32 %21, 11
  %23 = load ptr, ptr %13, align 4
  br i1 %22, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %23, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %27 = lshr i32 %26, 16
  %28 = trunc i32 %27 to i16
  br label %32

29:                                               ; preds = %20
  %30 = getelementptr i8, ptr %23, i32 6
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i16 [ %28, %24 ], [ %31, %29 ]
  %34 = and i16 %33, -775
  %35 = or i16 %34, 4
  %36 = load i32, ptr %4, align 4
  %37 = icmp ugt i32 %36, 11
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = zext i16 %35 to i32
  %40 = shl nuw i32 %39, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %41 = load ptr, ptr %13, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !14
  br label %46

43:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %13, align 4
  %45 = getelementptr i8, ptr %44, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %45, i16 %35) #8, !srcloc !18
  br label %46

46:                                               ; preds = %43, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %47 = load ptr, ptr %13, align 4
  %48 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %12) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %14) #8, !srcloc !14
  %51 = tail call fastcc i32 @e1000_flash_cycle_ich8lan(ptr noundef %0) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %55) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %57 = and i16 %56, 3
  %58 = icmp ne i16 %57, 0
  %59 = add nuw nsw i8 %16, 1
  %60 = icmp ult i8 %16, 10
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %15, label %62

62:                                               ; preds = %53, %46, %15, %3
  %63 = phi i32 [ -1, %3 ], [ -1, %15 ], [ 0, %46 ], [ -1, %53 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_validate_nvm_checksum_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_read_nvm_spt(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  %8 = zext i16 %1 to i32
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 5
  %10 = load i16, ptr %9, align 4
  %11 = icmp ugt i16 %10, %1
  br i1 %11, label %12, label %111

12:                                               ; preds = %4
  %13 = zext i16 %10 to i32
  %14 = zext i16 %2 to i32
  %15 = sub nsw i32 %13, %8
  %16 = icmp slt i32 %15, %14
  %17 = icmp eq i16 %2, 0
  %18 = or i1 %17, %16
  br i1 %18, label %111, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 4
  %21 = tail call i32 %20(ptr noundef %0) #8
  %22 = call fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr noundef %0, ptr noundef nonnull %5)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, ptr %5, align 4
  br label %31

25:                                               ; preds = %19
  %26 = load i32, ptr %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %25, %24
  %32 = phi i32 [ %30, %28 ], [ 0, %25 ], [ 0, %24 ]
  %33 = add i32 %32, %8
  br label %34

34:                                               ; preds = %100, %31
  %35 = phi i32 [ %105, %100 ], [ 0, %31 ]
  %36 = phi i32 [ %104, %100 ], [ 0, %31 ]
  %37 = sub nsw i32 %14, %35
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = add nuw nsw i32 %35, %8
  %41 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %40, i32 1
  %42 = load i8, ptr %41, align 2, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %40
  %46 = load i16, ptr %45, align 2
  br label %100

47:                                               ; preds = %39
  %48 = add i32 %35, %33
  %49 = and i32 %48, 65534
  %50 = call fastcc i32 @e1000_read_flash_dword_ich8lan(ptr noundef %0, i32 noundef %49, ptr noundef nonnull %6)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %107

52:                                               ; preds = %47
  %53 = and i32 %48, 1
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr %6, align 4
  br i1 %54, label %56, label %58

56:                                               ; preds = %52
  %57 = trunc i32 %55 to i16
  br label %100

58:                                               ; preds = %52
  %59 = lshr i32 %55, 16
  %60 = trunc i32 %59 to i16
  br label %100

61:                                               ; preds = %34
  %62 = add i32 %36, %33
  %63 = add nuw nsw i32 %35, %8
  %64 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %63
  %65 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %63, i32 1
  %66 = load i8, ptr %65, align 2, !range !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = add nuw nsw i32 %63, 1
  %70 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %69, i32 1
  %71 = load i8, ptr %70, align 2, !range !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68, %61
  %74 = and i32 %62, 65535
  %75 = call fastcc i32 @e1000_read_flash_dword_ich8lan(ptr noundef %0, i32 noundef %74, ptr noundef nonnull %6)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = load i8, ptr %65, align 2, !range !9
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77, %68
  %81 = load i16, ptr %64, align 2
  br label %85

82:                                               ; preds = %77
  %83 = load i32, ptr %6, align 4
  %84 = trunc i32 %83 to i16
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i16 [ %84, %82 ], [ %81, %80 ]
  %87 = getelementptr i16, ptr %3, i32 %35
  store i16 %86, ptr %87, align 2
  %88 = load i8, ptr %65, align 2, !range !9
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = add nuw nsw i32 %63, 1
  %92 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %91
  %93 = load i16, ptr %92, align 2
  %94 = add nuw nsw i32 %35, 1
  br label %100

95:                                               ; preds = %85
  %96 = load i32, ptr %6, align 4
  %97 = lshr i32 %96, 16
  %98 = trunc i32 %97 to i16
  %99 = add nuw nsw i32 %35, 1
  br label %100

100:                                              ; preds = %95, %90, %58, %56, %44
  %101 = phi i32 [ %35, %56 ], [ %35, %58 ], [ %35, %44 ], [ %99, %95 ], [ %94, %90 ]
  %102 = phi i16 [ %57, %56 ], [ %60, %58 ], [ %46, %44 ], [ %98, %95 ], [ %93, %90 ]
  %103 = getelementptr i16, ptr %3, i32 %101
  store i16 %102, ptr %103, align 2
  %104 = add nuw nsw i32 %35, 2
  %105 = and i32 %104, 65535
  %106 = icmp ult i32 %105, %14
  br i1 %106, label %34, label %107

107:                                              ; preds = %100, %73, %47
  %108 = phi i32 [ 0, %100 ], [ %50, %47 ], [ %75, %73 ]
  %109 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  tail call void %110(ptr noundef %0) #8
  br label %111

111:                                              ; preds = %107, %12, %4
  %112 = phi i32 [ %108, %107 ], [ -1, %12 ], [ -1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_update_nvm_checksum_spt(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %5 = tail call i32 @e1000e_update_nvm_checksum_generic(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %119

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %119

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 4
  %13 = tail call i32 %12(ptr noundef %0) #8
  %14 = call fastcc i32 @e1000_valid_nvm_bank_detect_ich8lan(ptr noundef %0, ptr noundef nonnull %2)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, ptr %2, align 4
  br label %20

17:                                               ; preds = %11
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17, %16
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call fastcc i32 @e1000_erase_flash_bank_ich8lan(ptr noundef %0, i32 noundef 1)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %107

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call fastcc i32 @e1000_erase_flash_bank_ich8lan(ptr noundef %0, i32 noundef 0)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %107

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %22, %20 ], [ 0, %25 ]
  %32 = phi i32 [ 0, %20 ], [ %27, %25 ]
  br label %33

33:                                               ; preds = %80, %30
  %34 = phi i32 [ 0, %30 ], [ %81, %80 ]
  %35 = add i32 %34, %32
  %36 = call fastcc i32 @e1000_read_flash_dword_ich8lan(ptr noundef %0, i32 noundef %35, ptr noundef nonnull %3)
  %37 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %34, i32 1
  %38 = load i8, ptr %37, align 2, !range !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %34
  %42 = load i32, ptr %3, align 4
  %43 = and i32 %42, -65536
  %44 = load i16, ptr %41, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %43, %45
  store i32 %46, ptr %3, align 4
  br label %47

47:                                               ; preds = %40, %33
  %48 = or i32 %34, 1
  %49 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %48, i32 1
  %50 = load i8, ptr %49, align 2, !range !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %48
  %54 = load i32, ptr %3, align 4
  %55 = and i32 %54, 65535
  %56 = load i16, ptr %53, align 2
  %57 = zext i16 %56 to i32
  %58 = shl nuw i32 %57, 16
  %59 = or i32 %58, %55
  store i32 %59, ptr %3, align 4
  br label %60

60:                                               ; preds = %52, %47
  %61 = icmp eq i32 %36, 0
  br i1 %61, label %62, label %107

62:                                               ; preds = %60
  %63 = icmp eq i32 %34, 18
  %64 = load i32, ptr %3, align 4
  br i1 %63, label %65, label %67

65:                                               ; preds = %62
  %66 = or i32 %64, -1073741824
  store i32 %66, ptr %3, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %66, %65 ], [ %64, %62 ]
  %69 = add i32 %34, %31
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %70 = shl i32 %69, 1
  %71 = tail call fastcc i32 @e1000_write_flash_data32_ich8lan(ptr noundef %0, i32 noundef %70, i32 noundef %68) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %77, %67
  %74 = phi i16 [ %78, %77 ], [ 0, %67 ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %75 = tail call fastcc i32 @e1000_write_flash_data32_ich8lan(ptr noundef %0, i32 noundef %70, i32 noundef %68) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = add nuw nsw i16 %74, 1
  %79 = icmp ult i16 %74, 99
  br i1 %79, label %73, label %111

80:                                               ; preds = %73, %67
  %81 = add nuw nsw i32 %34, 2
  %82 = icmp ult i32 %34, 2046
  br i1 %82, label %33, label %83

83:                                               ; preds = %80
  %84 = add i32 %31, 18
  %85 = call fastcc i32 @e1000_read_flash_dword_ich8lan(ptr noundef %0, i32 noundef %84, ptr noundef nonnull %3)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %83
  %88 = load i32, ptr %3, align 4
  %89 = and i32 %88, -1073741825
  store i32 %89, ptr %3, align 4
  %90 = tail call fastcc i32 @e1000_retry_write_flash_dword_ich8lan(ptr noundef %0, i32 noundef %84, i32 noundef %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = add i32 %32, 18
  %94 = call fastcc i32 @e1000_read_flash_dword_ich8lan(ptr noundef %0, i32 noundef %93, ptr noundef nonnull %3)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i32, ptr %3, align 4
  %98 = and i32 %97, 16777215
  %99 = tail call fastcc i32 @e1000_retry_write_flash_dword_ich8lan(ptr noundef %0, i32 noundef %93, i32 noundef %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %101, %96
  %102 = phi i32 [ %105, %101 ], [ 0, %96 ]
  %103 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %102
  %104 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1, i32 %102, i32 1
  store i8 0, ptr %104, align 2
  store i16 -1, ptr %103, align 2
  %105 = add nuw nsw i32 %102, 1
  %106 = icmp eq i32 %105, 2048
  br i1 %106, label %114, label %101

107:                                              ; preds = %96, %92, %87, %83, %60, %25, %20
  %108 = phi i32 [ %28, %25 ], [ -1, %96 ], [ %94, %92 ], [ -1, %87 ], [ %85, %83 ], [ %23, %20 ], [ %36, %60 ]
  %109 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  tail call void %110(ptr noundef %0) #8
  br label %119

111:                                              ; preds = %77
  %112 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  tail call void %113(ptr noundef %0) #8
  br label %119

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  tail call void %116(ptr noundef %0) #8
  %117 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  tail call void %118(ptr noundef %0) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  br label %119

119:                                              ; preds = %114, %111, %107, %7, %1
  %120 = phi i32 [ %5, %1 ], [ 0, %7 ], [ -1, %111 ], [ 0, %114 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_retry_write_flash_dword_ich8lan(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = shl i32 %1, 1
  %5 = tail call fastcc i32 @e1000_write_flash_data32_ich8lan(ptr noundef %0, i32 noundef %4, i32 noundef %2)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %11, %3
  %8 = phi i16 [ %12, %11 ], [ 0, %3 ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %9 = tail call fastcc i32 @e1000_write_flash_data32_ich8lan(ptr noundef %0, i32 noundef %4, i32 noundef %2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = add nuw nsw i16 %8, 1
  %13 = icmp ult i16 %8, 99
  br i1 %13, label %7, label %14

14:                                               ; preds = %11, %7
  %15 = phi i16 [ %8, %7 ], [ 100, %11 ]
  %16 = icmp eq i16 %15, 100
  %17 = sext i1 %16 to i32
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i32 [ 0, %3 ], [ %17, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_write_flash_data32_ich8lan(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 11
  %7 = icmp ugt i32 %1, 16777215
  %8 = and i1 %7, %6
  br i1 %8, label %62, label %9

9:                                                ; preds = %3
  %10 = and i32 %1, 16777215
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 2
  br label %15

15:                                               ; preds = %53, %9
  %16 = phi i8 [ 0, %9 ], [ %59, %53 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #8
  %18 = tail call fastcc i32 @e1000_flash_cycle_init_ich8lan(ptr noundef %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load i32, ptr %4, align 4
  %22 = icmp ugt i32 %21, 11
  %23 = load ptr, ptr %14, align 4
  br i1 %22, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %23, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %27 = lshr i32 %26, 16
  %28 = trunc i32 %27 to i16
  br label %32

29:                                               ; preds = %20
  %30 = getelementptr i8, ptr %23, i32 6
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i16 [ %28, %24 ], [ %31, %29 ]
  %34 = and i16 %33, -775
  %35 = or i16 %34, 772
  %36 = load i32, ptr %4, align 4
  %37 = icmp ugt i32 %36, 11
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = zext i16 %35 to i32
  %40 = shl nuw i32 %39, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !14
  br label %46

43:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %14, align 4
  %45 = getelementptr i8, ptr %44, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %45, i16 %35) #8, !srcloc !18
  br label %46

46:                                               ; preds = %43, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %47 = load ptr, ptr %14, align 4
  %48 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %13) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %49 = load ptr, ptr %14, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %2) #8, !srcloc !14
  %51 = tail call fastcc i32 @e1000_flash_cycle_ich8lan(ptr noundef %0)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %14, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %55) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %57 = and i16 %56, 3
  %58 = icmp ne i16 %57, 0
  %59 = add nuw nsw i8 %16, 1
  %60 = icmp ult i8 %16, 10
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %15, label %62

62:                                               ; preds = %53, %46, %15, %3
  %63 = phi i32 [ -1, %3 ], [ -1, %53 ], [ 0, %46 ], [ -1, %15 ]
  ret i32 %63
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 1749126}
!11 = !{i64 2155734933}
!12 = !{i64 2155735975}
!13 = !{i64 2155736830}
!14 = !{i64 1748708}
!15 = !{i64 1748288}
!16 = !{i64 2155735454}
!17 = !{i64 2155736335}
!18 = !{i64 1748088}
