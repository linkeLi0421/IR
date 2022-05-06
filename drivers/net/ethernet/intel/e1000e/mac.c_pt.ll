; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/mac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.e1000e_setup_fiber_serdes_link = private unnamed_addr constant [4 x i32] [i32 -2147483616, i32 -2147483232, i32 -2147483360, i32 -2147483232], align 4
@switch.table.e1000e_id_led_init_generic = private unnamed_addr constant [5 x i32] [i32 234881024, i32 251658240, i32 251658240, i32 234881024, i32 251658240], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_bus_info_pcie(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %5 = load ptr, ptr %4, align 32
  %6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 18
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = zext i8 %7 to i32
  %11 = add nuw nsw i32 %10, 18
  %12 = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef %11, ptr noundef nonnull %2) #6
  %13 = load i16, ptr %2, align 2
  %14 = lshr i16 %13, 4
  %15 = and i16 %14, 63
  %16 = zext i16 %15 to i32
  br label %17

17:                                               ; preds = %9, %1
  %18 = phi i32 [ %16, %9 ], [ 0, %1 ]
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  call void %21(ptr noundef %0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000_set_lan_id_multi_port_pcie(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %6 = trunc i32 %5 to i16
  %7 = lshr i16 %6, 2
  %8 = and i16 %7, 3
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  store i16 %8, ptr %9, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @e1000_set_lan_id_single_port(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  store i16 0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000_clear_vfta_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ 0, %1 ], [ %10, %3 ]
  %5 = shl nuw nsw i32 %4, 2
  %6 = add nuw nsw i32 %5, 22016
  tail call void @__ew32(ptr noundef %0, i32 noundef %6, i32 noundef 0) #6
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = add nuw nsw i32 %4, 1
  %11 = icmp eq i32 %10, 128
  br i1 %11, label %12, label %3

12:                                               ; preds = %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000_write_vfta_generic(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = shl i32 %1, 2
  %5 = add i32 %4, 22016
  tail call void @__ew32(ptr noundef %0, i32 noundef %5, i32 noundef %2) #6
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_init_rx_addrs(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false)
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 1
  %7 = tail call i32 %5(ptr noundef %0, ptr noundef %6, i32 noundef 0) #6
  %8 = zext i16 %1 to i32
  %9 = icmp ugt i16 %1, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %10, %2
  %11 = phi i32 [ %14, %10 ], [ 1, %2 ]
  %12 = load ptr, ptr %4, align 4
  %13 = call i32 %12(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %11) #6
  %14 = add nuw nsw i32 %11, 1
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %16, label %10

16:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_check_alt_mac_addr_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca [6 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 %6(ptr noundef %0, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %69

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %69, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  %15 = call i32 %14(ptr noundef %0, i16 noundef zeroext 55, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %13
  %18 = load i16, ptr %2, align 2
  %19 = add i16 %18, 1
  %20 = icmp ult i16 %19, 2
  br i1 %20, label %69, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = add i16 %18, 3
  store i16 %26, ptr %2, align 2
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i16 [ %26, %25 ], [ %18, %21 ]
  %29 = load ptr, ptr %5, align 4
  %30 = call i32 %29(ptr noundef %0, i16 noundef zeroext %28, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %27
  %33 = load i16, ptr %3, align 2
  %34 = trunc i16 %33 to i8
  store i8 %34, ptr %4, align 4
  %35 = lshr i16 %33, 8
  %36 = trunc i16 %35 to i8
  %37 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %36, ptr %37, align 1
  %38 = load i16, ptr %2, align 2
  %39 = add i16 %38, 1
  %40 = load ptr, ptr %5, align 4
  %41 = call i32 %40(ptr noundef %0, i16 noundef zeroext %39, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %32
  %44 = load i16, ptr %3, align 2
  %45 = trunc i16 %44 to i8
  %46 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %45, ptr %46, align 2
  %47 = lshr i16 %44, 8
  %48 = trunc i16 %47 to i8
  %49 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  store i8 %48, ptr %49, align 1
  %50 = load i16, ptr %2, align 2
  %51 = add i16 %50, 2
  %52 = load ptr, ptr %5, align 4
  %53 = call i32 %52(ptr noundef %0, i16 noundef zeroext %51, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %43
  %56 = load i16, ptr %3, align 2
  %57 = trunc i16 %56 to i8
  %58 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  store i8 %57, ptr %58, align 4
  %59 = lshr i16 %56, 8
  %60 = trunc i16 %59 to i8
  %61 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 5
  store i8 %60, ptr %61, align 1
  %62 = load i32, ptr %4, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 20
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 %67(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #6
  br label %69

69:                                               ; preds = %65, %55, %43, %32, %27, %17, %13, %9, %1
  %70 = phi i32 [ 0, %65 ], [ %7, %1 ], [ 0, %9 ], [ %15, %13 ], [ 0, %17 ], [ 0, %55 ], [ %30, %27 ], [ %41, %32 ], [ %53, %43 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 %70
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @e1000e_rar_get_count_generic(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 18
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_rar_set_generic(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
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
  %34 = icmp ult i32 %2, 16
  %35 = shl i32 %2, 3
  %36 = select i1 %34, i32 21504, i32 21600
  %37 = add i32 %36, %35
  tail call void @__ew32(ptr noundef %0, i32 noundef %37, i32 noundef %20) #6
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %42 = select i1 %34, i32 21508, i32 21604
  %43 = add i32 %42, %35
  tail call void @__ew32(ptr noundef %0, i32 noundef %43, i32 noundef %33) #6
  %44 = load ptr, ptr %38, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_update_mc_addr_list_generic(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 17
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(512) %4, i8 0, i32 512, i1 false)
  %5 = icmp eq i32 %2, 0
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 16
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  br i1 %5, label %9, label %11

9:                                                ; preds = %3
  %10 = add nsw i32 %8, -1
  br label %56

11:                                               ; preds = %3
  %12 = shl nuw nsw i32 %8, 5
  %13 = add nsw i32 %12, -1
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = add nsw i32 %8, -1
  br label %17

17:                                               ; preds = %32, %11
  %18 = phi i32 [ 0, %11 ], [ %54, %32 ]
  %19 = phi ptr [ %1, %11 ], [ %53, %32 ]
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i8 [ 0, %17 ], [ %25, %20 ]
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %13, %22
  %24 = icmp eq i32 %23, 255
  %25 = add i8 %21, 1
  br i1 %24, label %26, label %20

26:                                               ; preds = %20
  switch i32 %15, label %32 [
    i32 3, label %30
    i32 1, label %27
    i32 2, label %28
  ]

27:                                               ; preds = %26
  br label %32

28:                                               ; preds = %26
  %29 = add i8 %21, 2
  br label %32

30:                                               ; preds = %26
  %31 = add i8 %21, 4
  br label %32

32:                                               ; preds = %30, %28, %27, %26
  %33 = phi i8 [ %21, %26 ], [ %29, %28 ], [ %25, %27 ], [ %31, %30 ]
  %34 = getelementptr i8, ptr %19, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = zext i8 %33 to i32
  %38 = sub nsw i32 8, %37
  %39 = lshr i32 %36, %38
  %40 = getelementptr i8, ptr %19, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, %37
  %44 = or i32 %43, %39
  %45 = and i32 %44, %13
  %46 = lshr i32 %45, 5
  %47 = and i32 %46, %16
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 17, i32 %47
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %49, %51
  store i32 %52, ptr %50, align 4
  %53 = getelementptr i8, ptr %19, i32 6
  %54 = add nuw i32 %18, 1
  %55 = icmp eq i32 %54, %2
  br i1 %55, label %56, label %17

56:                                               ; preds = %32, %9
  %57 = phi i32 [ %10, %9 ], [ %16, %32 ]
  %58 = icmp eq i16 %7, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %59, %56
  %60 = phi i32 [ %65, %59 ], [ %57, %56 ]
  %61 = shl i32 %60, 2
  %62 = add nsw i32 %61, 20992
  %63 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 17, i32 %60
  %64 = load i32, ptr %63, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef %62, i32 noundef %64) #6
  %65 = add nsw i32 %60, -1
  %66 = icmp sgt i32 %60, 0
  br i1 %66, label %59, label %67

67:                                               ; preds = %59, %56
  %68 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 8
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_clear_hw_cntrs_base(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16384
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 16392
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 16400
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 16404
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 16408
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 16412
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 16416
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 16424
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 16432
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 16440
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 16448
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 16456
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 16460
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr i8, ptr %42, i32 16464
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 16468
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr i8, ptr %48, i32 16472
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 16500
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr i8, ptr %54, i32 16504
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr i8, ptr %57, i32 16508
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %60 = load ptr, ptr %2, align 4
  %61 = getelementptr i8, ptr %60, i32 16512
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr i8, ptr %63, i32 16520
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr i8, ptr %66, i32 16524
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr i8, ptr %69, i32 16528
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %72 = load ptr, ptr %2, align 4
  %73 = getelementptr i8, ptr %72, i32 16532
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %75 = load ptr, ptr %2, align 4
  %76 = getelementptr i8, ptr %75, i32 16544
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %78 = load ptr, ptr %2, align 4
  %79 = getelementptr i8, ptr %78, i32 16548
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %81 = load ptr, ptr %2, align 4
  %82 = getelementptr i8, ptr %81, i32 16552
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %84 = load ptr, ptr %2, align 4
  %85 = getelementptr i8, ptr %84, i32 16556
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %87 = load ptr, ptr %2, align 4
  %88 = getelementptr i8, ptr %87, i32 16560
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %90 = load ptr, ptr %2, align 4
  %91 = getelementptr i8, ptr %90, i32 16576
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %93 = load ptr, ptr %2, align 4
  %94 = getelementptr i8, ptr %93, i32 16580
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %96 = load ptr, ptr %2, align 4
  %97 = getelementptr i8, ptr %96, i32 16584
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %99 = load ptr, ptr %2, align 4
  %100 = getelementptr i8, ptr %99, i32 16588
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %102 = load ptr, ptr %2, align 4
  %103 = getelementptr i8, ptr %102, i32 16592
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %105 = load ptr, ptr %2, align 4
  %106 = getelementptr i8, ptr %105, i32 16596
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %108 = load ptr, ptr %2, align 4
  %109 = getelementptr i8, ptr %108, i32 16624
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %111 = load ptr, ptr %2, align 4
  %112 = getelementptr i8, ptr %111, i32 16628
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_check_for_copper_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 25
  %4 = load i8, ptr %3, align 4, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  store i8 0, ptr %3, align 4
  %7 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %2) #6
  %8 = icmp ne i32 %7, 0
  %9 = load i8, ptr %2, align 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = call i32 @e1000e_check_downshift(ptr noundef %0) #6
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 23
  %15 = load i8, ptr %14, align 2, !range !11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  call void %19(ptr noundef %0) #6
  %20 = call i32 @e1000e_config_fc_after_link_up(ptr noundef %0)
  br label %22

21:                                               ; preds = %6
  store i8 1, ptr %3, align 4
  br label %22

22:                                               ; preds = %21, %17, %12, %1
  %23 = phi i32 [ %7, %21 ], [ %20, %17 ], [ 0, %1 ], [ -3, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_phy_has_link_generic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_downshift(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_config_fc_after_link_up(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #6
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #6
  store i16 0, ptr %6, align 2, !annotation !8
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 24
  %8 = load i8, ptr %7, align 1, !range !11
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %11 = load i32, ptr %10, align 4
  br i1 %9, label %31, label %12

12:                                               ; preds = %1
  %13 = and i32 %11, -2
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %201 [
    i32 0, label %21
    i32 1, label %23
    i32 2, label %26
    i32 3, label %29
  ]

21:                                               ; preds = %15
  %22 = and i32 %18, -402653185
  br label %49

23:                                               ; preds = %15
  %24 = and i32 %18, -402653185
  %25 = or i32 %24, 134217728
  br label %49

26:                                               ; preds = %15
  %27 = and i32 %18, -402653185
  %28 = or i32 %27, 268435456
  br label %49

29:                                               ; preds = %15
  %30 = or i32 %18, 402653184
  br label %49

31:                                               ; preds = %1
  %32 = icmp eq i32 %11, 1
  br i1 %32, label %33, label %51

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %201 [
    i32 0, label %39
    i32 1, label %41
    i32 2, label %44
    i32 3, label %47
  ]

39:                                               ; preds = %33
  %40 = and i32 %36, -402653185
  br label %49

41:                                               ; preds = %33
  %42 = and i32 %36, -402653185
  %43 = or i32 %42, 134217728
  br label %49

44:                                               ; preds = %33
  %45 = and i32 %36, -402653185
  %46 = or i32 %45, 268435456
  br label %49

47:                                               ; preds = %33
  %48 = or i32 %36, 402653184
  br label %49

49:                                               ; preds = %47, %44, %41, %39, %29, %26, %23, %21
  %50 = phi i32 [ %30, %29 ], [ %28, %26 ], [ %25, %23 ], [ %22, %21 ], [ %48, %47 ], [ %46, %44 ], [ %43, %41 ], [ %40, %39 ]
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %50) #6
  br label %51

51:                                               ; preds = %49, %31, %12
  %52 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %127

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 23
  %57 = load i8, ptr %56, align 2, !range !11
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %201, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %201

64:                                               ; preds = %59
  %65 = load ptr, ptr %60, align 4
  %66 = call i32 %65(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %201

68:                                               ; preds = %64
  %69 = load i16, ptr %2, align 2
  %70 = and i16 %69, 32
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %201, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %60, align 4
  %74 = call i32 %73(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %201

76:                                               ; preds = %72
  %77 = load ptr, ptr %60, align 4
  %78 = call i32 %77(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %4) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %201

80:                                               ; preds = %76
  %81 = load i16, ptr %3, align 2
  %82 = and i16 %81, 1024
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %80
  %85 = load i16, ptr %4, align 2
  %86 = and i16 %85, 1024
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 7
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 3
  %92 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  br i1 %91, label %93, label %94

93:                                               ; preds = %88
  store i32 3, ptr %92, align 4
  br label %112

94:                                               ; preds = %88
  store i32 1, ptr %92, align 4
  br label %112

95:                                               ; preds = %84, %80
  %96 = trunc i16 %81 to i12
  %97 = and i12 %96, -1024
  switch i12 %97, label %110 [
    i12 -2048, label %98
    i12 -1024, label %104
  ]

98:                                               ; preds = %95
  %99 = load i16, ptr %4, align 2
  %100 = and i16 %99, 3072
  %101 = icmp eq i16 %100, 3072
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 2, ptr %103, align 4
  br label %112

104:                                              ; preds = %95
  %105 = load i16, ptr %4, align 2
  %106 = and i16 %105, 3072
  %107 = icmp eq i16 %106, 2048
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 1, ptr %109, align 4
  br label %112

110:                                              ; preds = %104, %98, %95
  %111 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 0, ptr %111, align 4
  br label %112

112:                                              ; preds = %110, %108, %102, %94, %93
  %113 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 9
  %114 = load ptr, ptr %113, align 4
  %115 = call i32 %114(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %201

117:                                              ; preds = %112
  %118 = load i16, ptr %6, align 2
  %119 = icmp eq i16 %118, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 0, ptr %121, align 4
  br label %122

122:                                              ; preds = %120, %117
  %123 = call i32 @e1000e_force_mac_fc(ptr noundef %0)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %201

125:                                              ; preds = %122
  %126 = load i32, ptr %52, align 4
  br label %127

127:                                              ; preds = %125, %51
  %128 = phi i32 [ %53, %51 ], [ %126, %125 ]
  %129 = icmp eq i32 %128, 3
  br i1 %129, label %130, label %201

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 23
  %132 = load i8, ptr %131, align 2, !range !11
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %201, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr i8, ptr %136, i32 16908
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %139 = and i32 %138, 65536
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %201, label %141

141:                                              ; preds = %134
  %142 = load ptr, ptr %135, align 4
  %143 = getelementptr i8, ptr %142, i32 16920
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %145 = load ptr, ptr %135, align 4
  %146 = getelementptr i8, ptr %145, i32 16924
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %148 = and i32 %144, 128
  %149 = icmp eq i32 %148, 0
  %150 = and i32 %147, 128
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %149, i1 true, i1 %151
  br i1 %152, label %160, label %153

153:                                              ; preds = %141
  %154 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 7
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 3
  %157 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  br i1 %156, label %158, label %159

158:                                              ; preds = %153
  store i32 3, ptr %157, align 4
  br label %180

159:                                              ; preds = %153
  store i32 1, ptr %157, align 4
  br label %180

160:                                              ; preds = %141
  %161 = xor i1 %149, true
  %162 = and i32 %144, 256
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %161, i1 true, i1 %163
  %165 = select i1 %164, i1 true, i1 %151
  %166 = and i32 %147, 256
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %165, i1 true, i1 %167
  br i1 %168, label %171, label %169

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 2, ptr %170, align 4
  br label %180

171:                                              ; preds = %160
  %172 = and i32 %144, 384
  %173 = icmp eq i32 %172, 384
  %174 = select i1 %173, i1 %151, i1 false
  %175 = xor i1 %174, true
  %176 = select i1 %175, i1 true, i1 %167
  %177 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  br i1 %176, label %179, label %178

178:                                              ; preds = %171
  store i32 1, ptr %177, align 4
  br label %180

179:                                              ; preds = %171
  store i32 0, ptr %177, align 4
  br label %180

180:                                              ; preds = %179, %178, %169, %159, %158
  %181 = load ptr, ptr %135, align 4
  %182 = getelementptr i8, ptr %181, i32 16904
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %184 = or i32 %183, 128
  call void @__ew32(ptr noundef %0, i32 noundef 16904, i32 noundef %184) #6
  %185 = load ptr, ptr %135, align 4
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %187 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  %188 = load i32, ptr %187, align 4
  switch i32 %188, label %201 [
    i32 0, label %189
    i32 1, label %191
    i32 2, label %194
    i32 3, label %197
  ]

189:                                              ; preds = %180
  %190 = and i32 %186, -402653185
  br label %199

191:                                              ; preds = %180
  %192 = and i32 %186, -402653185
  %193 = or i32 %192, 134217728
  br label %199

194:                                              ; preds = %180
  %195 = and i32 %186, -402653185
  %196 = or i32 %195, 268435456
  br label %199

197:                                              ; preds = %180
  %198 = or i32 %186, 402653184
  br label %199

199:                                              ; preds = %197, %194, %191, %189
  %200 = phi i32 [ %198, %197 ], [ %196, %194 ], [ %193, %191 ], [ %190, %189 ]
  call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %200) #6
  br label %201

201:                                              ; preds = %199, %180, %134, %130, %127, %122, %112, %76, %72, %68, %64, %59, %55, %33, %15
  %202 = phi i32 [ %62, %59 ], [ %66, %64 ], [ 0, %68 ], [ %74, %72 ], [ %78, %76 ], [ %115, %112 ], [ %123, %122 ], [ 0, %134 ], [ -3, %15 ], [ -3, %33 ], [ -3, %180 ], [ 0, %199 ], [ 0, %130 ], [ 0, %127 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 %202
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_check_for_fiber_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 384
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %11 = and i32 %4, 524288
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %7, 2
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  %16 = and i32 %10, 536870912
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 24
  %21 = load i8, ptr %20, align 1, !range !11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8 1, ptr %20, align 1
  br label %43

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2147483647
  tail call void @__ew32(ptr noundef %0, i32 noundef 376, i32 noundef %27) #6
  %28 = load ptr, ptr %2, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %30 = or i32 %29, 65
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %30) #6
  %31 = tail call i32 @e1000e_config_fc_after_link_up(ptr noundef %0)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %43

33:                                               ; preds = %1
  %34 = and i32 %4, 64
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i1 true, i1 %17
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 10
  %39 = load i32, ptr %38, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 376, i32 noundef %39) #6
  %40 = and i32 %4, -65
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %40) #6
  %41 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 1, ptr %41, align 2
  br label %42

42:                                               ; preds = %37, %33, %24
  br label %43

43:                                               ; preds = %42, %24, %23
  %44 = phi i32 [ 0, %42 ], [ 0, %23 ], [ %31, %24 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_check_for_serdes_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 384
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %11 = and i32 %7, 2
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %10, 536870912
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 24
  %18 = load i8, ptr %17, align 1, !range !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8 1, ptr %17, align 1
  br label %82

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2147483647
  tail call void @__ew32(ptr noundef %0, i32 noundef 376, i32 noundef %24) #6
  %25 = load ptr, ptr %2, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %27 = or i32 %26, 65
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %27) #6
  %28 = tail call i32 @e1000e_config_fc_after_link_up(ptr noundef %0)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %55, label %82

30:                                               ; preds = %1
  %31 = and i32 %4, 64
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i1 true, i1 %14
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 10
  %36 = load i32, ptr %35, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 376, i32 noundef %36) #6
  %37 = and i32 %4, -65
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %37) #6
  br label %52

38:                                               ; preds = %30
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 376
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %44 = load ptr, ptr %2, align 4
  %45 = getelementptr i8, ptr %44, i32 384
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %47 = and i32 %46, 1073741824
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = and i32 %46, 134217728
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %43, %34
  %53 = phi i8 [ 1, %34 ], [ 1, %49 ], [ 0, %43 ]
  %54 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 %53, ptr %54, align 2
  br label %55

55:                                               ; preds = %52, %49, %38, %21
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr i8, ptr %56, i32 376
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %82, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %60
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %67 = load ptr, ptr %2, align 4
  %68 = getelementptr i8, ptr %67, i32 384
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %70 = and i32 %69, 1073741824
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = and i32 %69, 134217728
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  br i1 %74, label %76, label %77

76:                                               ; preds = %72
  store i8 1, ptr %75, align 2
  br label %82

77:                                               ; preds = %72
  store i8 0, ptr %75, align 2
  br label %82

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 0, ptr %79, align 2
  br label %82

80:                                               ; preds = %60
  %81 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 27
  store i8 0, ptr %81, align 2
  br label %82

82:                                               ; preds = %80, %78, %77, %76, %55, %21, %20
  %83 = phi i32 [ 0, %20 ], [ %28, %21 ], [ 0, %80 ], [ 0, %76 ], [ 0, %77 ], [ 0, %78 ], [ 0, %55 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_setup_link_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !8
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, i16 noundef zeroext 15, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i16, ptr %2, align 2
  %20 = trunc i16 %19 to i14
  %21 = and i14 %20, -4096
  %22 = icmp eq i14 %21, -8192
  %23 = select i1 %22, i32 2, i32 3
  %24 = icmp eq i14 %21, 0
  %25 = select i1 %24, i32 0, i32 %23
  store i32 %25, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %27

26:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %54

27:                                               ; preds = %18, %9
  %28 = phi i32 [ %25, %18 ], [ %11, %9 ]
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 16
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef %0) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  call void @__ew32(ptr noundef %0, i32 noundef 48, i32 noundef 34824) #6
  call void @__ew32(ptr noundef %0, i32 noundef 44, i32 noundef 256) #6
  call void @__ew32(ptr noundef %0, i32 noundef 40, i32 noundef 12746753) #6
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 2
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  call void @__ew32(ptr noundef %0, i32 noundef 368, i32 noundef %37) #6
  %38 = load i32, ptr %29, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4
  %43 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 4
  %46 = load i8, ptr %45, align 4, !range !11
  %47 = icmp eq i8 %46, 0
  %48 = or i32 %44, -2147483648
  %49 = select i1 %47, i32 %44, i32 %48
  %50 = load i32, ptr %42, align 4
  br label %51

51:                                               ; preds = %41, %34
  %52 = phi i32 [ %49, %41 ], [ 0, %34 ]
  %53 = phi i32 [ %50, %41 ], [ 0, %34 ]
  call void @__ew32(ptr noundef %0, i32 noundef 8544, i32 noundef %52) #6
  call void @__ew32(ptr noundef %0, i32 noundef 8552, i32 noundef %53) #6
  br label %54

54:                                               ; preds = %51, %27, %26, %6
  %55 = phi i32 [ 0, %51 ], [ 0, %6 ], [ %16, %26 ], [ %32, %27 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_set_fc_watermarks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 4
  %11 = load i8, ptr %10, align 4, !range !11
  %12 = icmp eq i8 %11, 0
  %13 = or i32 %9, -2147483648
  %14 = select i1 %12, i32 %9, i32 %13
  %15 = load i32, ptr %7, align 4
  br label %16

16:                                               ; preds = %6, %1
  %17 = phi i32 [ %14, %6 ], [ 0, %1 ]
  %18 = phi i32 [ %15, %6 ], [ 0, %1 ]
  tail call void @__ew32(ptr noundef %0, i32 noundef 8544, i32 noundef %17) #6
  tail call void @__ew32(ptr noundef %0, i32 noundef 8552, i32 noundef %18) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_setup_fiber_serdes_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = getelementptr inbounds [4 x i32], ptr @switch.table.e1000e_setup_fiber_serdes_link, i32 0, i32 %8
  %12 = load i32, ptr %11, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 376, i32 noundef %12) #6
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 10
  store i32 %12, ptr %13, align 4
  %14 = and i32 %4, -9
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %14) #6
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %26, label %21

21:                                               ; preds = %10
  %22 = load ptr, ptr %2, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %24 = and i32 %23, 524288
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %21, %10
  br label %27

27:                                               ; preds = %34, %26
  %28 = phi i32 [ %35, %34 ], [ 0, %26 ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = add nuw nsw i32 %28, 1
  %36 = icmp eq i32 %35, 50
  br i1 %36, label %37, label %27

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 24
  store i8 1, ptr %38, align 1
  %39 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %0) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %47

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 24
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi ptr [ %44, %43 ], [ %38, %37 ]
  store i8 0, ptr %46, align 1
  br label %47

47:                                               ; preds = %45, %37, %21, %1
  %48 = phi i32 [ 0, %21 ], [ -3, %1 ], [ %41, %37 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_config_collision_dist_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1024
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %6 = and i32 %5, -4190209
  %7 = or i32 %6, 258048
  tail call void @__ew32(ptr noundef %0, i32 noundef 1024, i32 noundef %7) #6
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_force_mac_fc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %19 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %12
    i32 3, label %15
  ]

7:                                                ; preds = %1
  %8 = and i32 %4, -402653185
  br label %17

9:                                                ; preds = %1
  %10 = and i32 %4, -402653185
  %11 = or i32 %10, 134217728
  br label %17

12:                                               ; preds = %1
  %13 = and i32 %4, -402653185
  %14 = or i32 %13, 268435456
  br label %17

15:                                               ; preds = %1
  %16 = or i32 %4, 402653184
  br label %17

17:                                               ; preds = %15, %12, %9, %7
  %18 = phi i32 [ %16, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %7 ]
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %18) #6
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i32 [ 0, %17 ], [ -3, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_speed_and_duplex_copper(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %7, 64
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 10, i16 100
  %13 = select i1 %9, i16 %12, i16 1000
  store i16 %13, ptr %1, align 2
  %14 = and i32 %7, 1
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i16 1, i16 2
  store i16 %16, ptr %2, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @e1000e_get_speed_and_duplex_fiber_serdes(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  store i16 1000, ptr %1, align 2
  store i16 2, ptr %2, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_hw_semaphore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 5
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = add nuw nsw i32 %4, 1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %14, %1
  %8 = phi i32 [ 0, %1 ], [ %16, %14 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 23376
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #6
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %8, %4
  br i1 %17, label %42, label %7

18:                                               ; preds = %7
  %19 = icmp eq i32 %8, %5
  br i1 %19, label %42, label %20

20:                                               ; preds = %31, %18
  %21 = phi i32 [ %33, %31 ], [ 0, %18 ]
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 23376
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %25 = or i32 %24, 2
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %25) #6
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %26, i32 23376
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 21474800) #6
  %33 = add nuw nsw i32 %21, 1
  %34 = icmp eq i32 %21, %4
  br i1 %34, label %37, label %20

35:                                               ; preds = %20
  %36 = icmp eq i32 %21, %5
  br i1 %36, label %37, label %42

37:                                               ; preds = %35, %31
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr i8, ptr %38, i32 23376
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %41 = and i32 %40, -4
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %41) #6
  br label %42

42:                                               ; preds = %37, %35, %18, %14
  %43 = phi i32 [ -1, %37 ], [ -1, %18 ], [ 0, %35 ], [ -1, %14 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_put_hw_semaphore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 23376
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %6 = and i32 %5, -4
  tail call void @__ew32(ptr noundef %0, i32 noundef 23376, i32 noundef %6) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_auto_rd_done(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 16
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %42 = and i32 %41, 512
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %48 = and i32 %47, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr i8, ptr %57, i32 16
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %60 = and i32 %59, 512
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %63

63:                                               ; preds = %62, %56, %50, %44, %38, %32, %26, %20, %14, %8, %1
  %64 = phi i32 [ -9, %62 ], [ 0, %56 ], [ 0, %50 ], [ 0, %44 ], [ 0, %38 ], [ 0, %32 ], [ 0, %26 ], [ 0, %20 ], [ 0, %14 ], [ 0, %8 ], [ 0, %1 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_valid_led_default(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef %1) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i16, ptr %1, align 2
  switch i16 %8, label %10 [
    i16 0, label %9
    i16 -1, label %9
  ]

9:                                                ; preds = %7, %7
  store i16 -30447, ptr %1, align 2
  br label %10

10:                                               ; preds = %9, %7, %2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_id_led_init_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, ptr noundef nonnull %2) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %88

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 3584
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
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
  %20 = phi i32 [ 15, %18 ], [ 14, %7 ], [ 14, %7 ], [ 14, %7 ]
  %21 = and i32 %11, -256
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
  %26 = phi i32 [ 15, %23 ], [ 14, %7 ], [ 14, %19 ], [ 14, %19 ]
  %27 = phi i32 [ %24, %23 ], [ %11, %7 ], [ %22, %19 ], [ %22, %19 ]
  %28 = and i32 %11, -256
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
  %37 = phi i32 [ 3584, %35 ], [ 3840, %30 ], [ 3840, %30 ], [ 3840, %30 ]
  %38 = and i32 %32, -65281
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
  %43 = phi i32 [ 3840, %40 ], [ 3584, %36 ], [ 3584, %36 ], [ 3584, %30 ]
  %44 = phi i32 [ %41, %40 ], [ %39, %36 ], [ %39, %36 ], [ %32, %30 ]
  %45 = and i32 %31, -65281
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
  %54 = phi i32 [ 917504, %52 ], [ 983040, %47 ], [ 983040, %47 ], [ 983040, %47 ]
  %55 = and i32 %49, -16711681
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
  %60 = phi i32 [ 983040, %57 ], [ 917504, %53 ], [ 917504, %53 ], [ 917504, %47 ]
  %61 = phi i32 [ %58, %57 ], [ %56, %53 ], [ %56, %53 ], [ %49, %47 ]
  %62 = and i32 %48, -16711681
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
  %70 = phi i32 [ 234881024, %68 ], [ 251658240, %64 ], [ 251658240, %64 ], [ 251658240, %64 ]
  %71 = and i32 %66, 16777215
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
  %82 = getelementptr inbounds [5 x i32], ptr @switch.table.e1000e_id_led_init_generic, i32 0, i32 %73
  %83 = load i32, ptr %82, align 4
  br label %84

84:                                               ; preds = %81, %75, %64
  %85 = phi i32 [ 251658240, %75 ], [ 234881024, %64 ], [ %83, %81 ]
  %86 = and i32 %65, 16777215
  %87 = or i32 %86, %85
  store i32 %87, ptr %14, align 4
  br label %88

88:                                               ; preds = %84, %76, %69, %64, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_setup_led_generic(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @e1000e_setup_led_generic
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %21 [
    i32 2, label %8
    i32 1, label %16
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 3584
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 5
  store i32 %12, ptr %13, align 4
  %14 = and i32 %12, -208
  %15 = or i32 %14, 15
  br label %19

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 6
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi i32 [ %15, %8 ], [ %18, %16 ]
  tail call void @__ew32(ptr noundef %0, i32 noundef 3584, i32 noundef %20) #6
  br label %21

21:                                               ; preds = %19, %5, %1
  %22 = phi i32 [ -3, %1 ], [ 0, %5 ], [ 0, %19 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_cleanup_led_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 5
  %3 = load i32, ptr %2, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 3584, i32 noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_blink_led_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %70, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 5
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
  tail call void @__ew32(ptr noundef %0, i32 noundef 3584, i32 noundef %71) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_led_on_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %13 [
    i32 2, label %4
    i32 1, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %8 = and i32 %7, -4456449
  %9 = or i32 %8, 4194304
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %9) #6
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 7
  %12 = load i32, ptr %11, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 3584, i32 noundef %12) #6
  br label %13

13:                                               ; preds = %10, %4, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_led_off_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %12 [
    i32 2, label %4
    i32 1, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %8 = or i32 %7, 4456448
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %8) #6
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 6
  %11 = load i32, ptr %10, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 3584, i32 noundef %11) #6
  br label %12

12:                                               ; preds = %9, %4, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_set_pcie_no_snoop(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 23296
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %9 = and i32 %8, -64
  %10 = or i32 %9, %1
  tail call void @__ew32(ptr noundef %0, i32 noundef 23296, i32 noundef %10) #6
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_disable_pcie_master(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %5 = or i32 %4, 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %5) #6
  br label %6

6:                                                ; preds = %13, %1
  %7 = phi i32 [ 800, %1 ], [ %14, %13 ]
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %11 = and i32 %10, 524288
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %14 = add nsw i32 %7, -1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %6

16:                                               ; preds = %13, %6
  %17 = phi i32 [ 0, %6 ], [ -10, %13 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_reset_adaptive(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 20
  %3 = load i8, ptr %2, align 1, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 11
  store i16 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 13
  store i16 40, ptr %7, align 4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 12
  store i16 80, ptr %8, align 2
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 15
  store i16 10, ptr %9, align 4
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 14
  store i16 4, ptr %10, align 2
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 26
  store i8 0, ptr %11, align 1
  tail call void @__ew32(ptr noundef %0, i32 noundef 1112, i32 noundef 0) #6
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_update_adaptive(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 20
  %3 = load i8, ptr %2, align 1, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 14
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = mul i32 %7, %10
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %5
  %16 = icmp ugt i32 %13, 1000
  br i1 %16, label %17, label %46

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 26
  store i8 1, ptr %18, align 1
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 11
  %20 = load i16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 12
  %22 = load i16, ptr %21, align 2
  %23 = icmp ult i16 %20, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = icmp eq i16 %20, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 13
  %28 = load i16, ptr %27, align 4
  br label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 15
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, %20
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i16 [ %28, %26 ], [ %32, %29 ]
  store i16 %34, ptr %19, align 4
  %35 = zext i16 %34 to i32
  br label %44

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 26
  %38 = load i8, ptr %37, align 1, !range !11
  %39 = icmp ne i8 %38, 0
  %40 = icmp ult i32 %13, 1001
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 11
  store i16 0, ptr %43, align 4
  store i8 0, ptr %37, align 1
  br label %44

44:                                               ; preds = %42, %33
  %45 = phi i32 [ %35, %33 ], [ 0, %42 ]
  tail call void @__ew32(ptr noundef %0, i32 noundef 1112, i32 noundef %45) #6
  br label %46

46:                                               ; preds = %44, %36, %17, %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 1632711}
!10 = !{i64 2155618518}
!11 = !{i8 0, i8 2}
