; ModuleID = '/llk/IR/drivers/net/ethernet/intel/igb/e1000_nvm.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_nvm.c"
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
%struct.e1000_fw_version = type { i32, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_acquire_nvm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !8

6:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %7 = or i32 %2, 64
  %8 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #6, !srcloc !10
  br label %9

9:                                                ; preds = %6, %1
  %10 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %13, %9
  %14 = phi i32 [ %17, %13 ], [ 1000, %9 ]
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #6
  %16 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %17 = add i32 %14, -1
  %18 = icmp eq i32 %17, 0
  %19 = xor i1 %18, true
  %20 = and i32 %16, 128
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %13, label %23

23:                                               ; preds = %13
  br i1 %18, label %24, label %30

24:                                               ; preds = %23
  %25 = load volatile ptr, ptr %3, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27, !prof !8

27:                                               ; preds = %24
  %28 = and i32 %16, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %29 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #6, !srcloc !10
  br label %30

30:                                               ; preds = %27, %24, %23, %9
  %31 = phi i32 [ 0, %23 ], [ -1, %27 ], [ -1, %24 ], [ 0, %9 ]
  ret i32 %31
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
define dso_local void @igb_release_nvm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !8

10:                                               ; preds = %6
  %11 = and i32 %2, -4
  %12 = or i32 %11, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %13 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #6, !srcloc !10
  br label %14

14:                                               ; preds = %10, %6
  %15 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 6
  %17 = load i16, ptr %16, align 2
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %19 = zext i16 %17 to i32
  tail call void %18(i32 noundef %19) #6
  br label %20

20:                                               ; preds = %14, %1
  %21 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !8

25:                                               ; preds = %20
  %26 = and i32 %21, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %27 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #6, !srcloc !10
  br label %28

28:                                               ; preds = %25, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_nvm_spi(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = icmp ugt i16 %7, %1
  br i1 %8, label %9, label %45

9:                                                ; preds = %4
  %10 = zext i16 %1 to i32
  %11 = zext i16 %7 to i32
  %12 = zext i16 %2 to i32
  %13 = sub nsw i32 %11, %10
  %14 = icmp slt i32 %13, %12
  %15 = icmp eq i16 %2, 0
  %16 = or i1 %15, %14
  br i1 %16, label %45, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 4
  %19 = tail call i32 %18(ptr noundef %0) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @igb_ready_nvm_eeprom(ptr noundef %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  tail call fastcc void @igb_standby_nvm(ptr noundef %0)
  %25 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 7
  %26 = load i16, ptr %25, align 4
  %27 = icmp eq i16 %26, 8
  %28 = icmp ugt i16 %1, 127
  %29 = and i1 %28, %27
  %30 = select i1 %29, i16 11, i16 3
  %31 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 8
  %32 = load i16, ptr %31, align 2
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext %30, i16 noundef zeroext %32)
  %33 = shl i16 %1, 1
  %34 = load i16, ptr %25, align 4
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext %33, i16 noundef zeroext %34)
  br label %35

35:                                               ; preds = %35, %24
  %36 = phi i32 [ %40, %35 ], [ 0, %24 ]
  %37 = tail call fastcc zeroext i16 @igb_shift_in_eec_bits(ptr noundef %0, i16 noundef zeroext 16)
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %39 = getelementptr i16, ptr %3, i32 %36
  store i16 %38, ptr %39, align 2
  %40 = add nuw nsw i32 %36, 1
  %41 = icmp eq i32 %40, %12
  br i1 %41, label %42, label %35

42:                                               ; preds = %35, %21
  %43 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %0) #6
  br label %45

45:                                               ; preds = %42, %17, %9, %4
  %46 = phi i32 [ %19, %17 ], [ %22, %42 ], [ -1, %9 ], [ -1, %4 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @igb_ready_nvm_eeprom(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !8

10:                                               ; preds = %6
  %11 = and i32 %2, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %12 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #6, !srcloc !10
  br label %13

13:                                               ; preds = %10, %6
  %14 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 8
  br label %17

17:                                               ; preds = %23, %13
  %18 = phi i16 [ 5000, %13 ], [ %25, %23 ]
  %19 = load i16, ptr %16, align 2
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext 5, i16 noundef zeroext %19)
  %20 = tail call fastcc zeroext i16 @igb_shift_in_eec_bits(ptr noundef %0, i16 noundef zeroext 8)
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #6
  tail call fastcc void @igb_standby_nvm(ptr noundef %0)
  %25 = add nsw i16 %18, -1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %17

27:                                               ; preds = %23, %17
  %28 = xor i1 %22, true
  %29 = sext i1 %28 to i32
  br label %30

30:                                               ; preds = %27, %1
  %31 = phi i32 [ 0, %1 ], [ %29, %27 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @igb_standby_nvm(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !8

10:                                               ; preds = %6
  %11 = or i32 %2, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %12 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #6, !srcloc !10
  br label %13

13:                                               ; preds = %10, %6
  %14 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 6
  %16 = load i16, ptr %15, align 2
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %18 = zext i16 %16 to i32
  tail call void %17(i32 noundef %18) #6
  %19 = load volatile ptr, ptr %7, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !8

21:                                               ; preds = %13
  %22 = and i32 %2, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %23 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #6, !srcloc !10
  br label %24

24:                                               ; preds = %21, %13
  %25 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %26 = load i16, ptr %15, align 2
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %28 = zext i16 %26 to i32
  tail call void %27(i32 noundef %28) #6
  br label %29

29:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @igb_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %5 = zext i16 %2 to i32
  %6 = add nsw i32 %5, -1
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = or i32 %4, 8
  %12 = select i1 %10, i32 %11, i32 %4
  %13 = zext i16 %1 to i32
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 6
  br label %16

16:                                               ; preds = %48, %3
  %17 = phi i32 [ %12, %3 ], [ %43, %48 ]
  %18 = phi i32 [ %7, %3 ], [ %53, %48 ]
  %19 = and i32 %17, -5
  %20 = and i32 %18, %13
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 4
  %23 = or i32 %22, %19
  %24 = load volatile ptr, ptr %14, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %27 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #6, !srcloc !10
  br label %28

28:                                               ; preds = %26, %16
  %29 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %30 = load i16, ptr %15, align 2
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %32 = zext i16 %30 to i32
  tail call void %31(i32 noundef %32) #6
  %33 = load volatile ptr, ptr %14, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35, !prof !8

35:                                               ; preds = %28
  %36 = or i32 %23, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %37 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #6, !srcloc !10
  br label %38

38:                                               ; preds = %35, %28
  %39 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %40 = load i16, ptr %15, align 2
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %42 = zext i16 %40 to i32
  tail call void %41(i32 noundef %42) #6
  %43 = and i32 %23, -2
  %44 = load volatile ptr, ptr %14, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %47 = getelementptr i8, ptr %44, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %43) #6, !srcloc !10
  br label %48

48:                                               ; preds = %46, %38
  %49 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %50 = load i16, ptr %15, align 2
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %52 = zext i16 %50 to i32
  tail call void %51(i32 noundef %52) #6
  %53 = lshr i32 %18, 1
  %54 = icmp ult i32 %18, 2
  br i1 %54, label %55, label %16

55:                                               ; preds = %48
  %56 = load volatile ptr, ptr %14, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58, !prof !8

58:                                               ; preds = %55
  %59 = and i32 %17, -6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %60 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %59) #6, !srcloc !10
  br label %61

61:                                               ; preds = %58, %55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @igb_shift_in_eec_bits(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %4 = zext i16 %1 to i32
  %5 = icmp eq i16 %1, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = and i32 %3, -13
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 6
  br label %10

10:                                               ; preds = %35, %6
  %11 = phi i16 [ 0, %6 ], [ %29, %35 ]
  %12 = phi i32 [ 0, %6 ], [ %40, %35 ]
  %13 = phi i32 [ %7, %6 ], [ %30, %35 ]
  %14 = shl i16 %11, 1
  %15 = load volatile ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17, !prof !8

17:                                               ; preds = %10
  %18 = or i32 %13, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %19 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #6, !srcloc !10
  br label %20

20:                                               ; preds = %17, %10
  %21 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %22 = load i16, ptr %9, align 2
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %24 = zext i16 %22 to i32
  tail call void %23(i32 noundef %24) #6
  %25 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #6
  %26 = trunc i32 %25 to i16
  %27 = lshr i16 %26, 3
  %28 = and i16 %27, 1
  %29 = or i16 %28, %14
  %30 = and i32 %25, -6
  %31 = load volatile ptr, ptr %8, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !8

33:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %34 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #6, !srcloc !10
  br label %35

35:                                               ; preds = %33, %20
  %36 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #6
  %37 = load i16, ptr %9, align 2
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %39 = zext i16 %37 to i32
  tail call void %38(i32 noundef %39) #6
  %40 = add nuw nsw i32 %12, 1
  %41 = icmp eq i32 %40, %4
  br i1 %41, label %42, label %10

42:                                               ; preds = %35, %2
  %43 = phi i16 [ 0, %2 ], [ %29, %35 ]
  ret i16 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_nvm_eerd(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = zext i16 %1 to i32
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = icmp ugt i16 %7, %1
  br i1 %8, label %9, label %44

9:                                                ; preds = %4
  %10 = zext i16 %7 to i32
  %11 = zext i16 %2 to i32
  %12 = sub nsw i32 %10, %5
  %13 = icmp slt i32 %12, %11
  %14 = icmp eq i16 %2, 0
  %15 = or i1 %14, %13
  br i1 %15, label %44, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %18

18:                                               ; preds = %37, %16
  %19 = phi i32 [ 0, %16 ], [ %42, %37 ]
  %20 = load volatile ptr, ptr %17, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22, !prof !8

22:                                               ; preds = %18
  %23 = add nuw nsw i32 %19, %5
  %24 = shl i32 %23, 2
  %25 = or i32 %24, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %26 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #6, !srcloc !10
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %33, %27
  %29 = phi i32 [ %35, %33 ], [ 0, %27 ]
  %30 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 20) #6
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 1073740) #6
  %35 = add nuw nsw i32 %29, 1
  %36 = icmp eq i32 %35, 100000
  br i1 %36, label %44, label %28

37:                                               ; preds = %28
  %38 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 20) #6
  %39 = lshr i32 %38, 16
  %40 = trunc i32 %39 to i16
  %41 = getelementptr i16, ptr %3, i32 %19
  store i16 %40, ptr %41, align 2
  %42 = add nuw nsw i32 %19, 1
  %43 = icmp eq i32 %42, %11
  br i1 %43, label %44, label %18

44:                                               ; preds = %37, %33, %9, %4
  %45 = phi i32 [ -1, %9 ], [ -1, %4 ], [ -1, %33 ], [ 0, %37 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_write_nvm_spi(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7
  %6 = zext i16 %1 to i32
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp ugt i16 %8, %1
  br i1 %9, label %10, label %66

10:                                               ; preds = %4
  %11 = zext i16 %8 to i32
  %12 = zext i16 %2 to i32
  %13 = sub nsw i32 %11, %6
  %14 = icmp sge i32 %13, %12
  %15 = icmp ne i16 %2, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %66

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 8
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 7
  %20 = icmp ugt i16 %1, 127
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 9
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 2
  br label %23

23:                                               ; preds = %62, %17
  %24 = phi i16 [ 0, %17 ], [ %63, %62 ]
  %25 = load ptr, ptr %5, align 4
  %26 = tail call i32 %25(ptr noundef %0) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %23
  %29 = tail call fastcc i32 @igb_ready_nvm_eeprom(ptr noundef %0)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %22, align 4
  tail call void %32(ptr noundef %0) #6
  br label %66

33:                                               ; preds = %28
  tail call fastcc void @igb_standby_nvm(ptr noundef %0)
  %34 = load i16, ptr %18, align 2
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext 6, i16 noundef zeroext %34)
  tail call fastcc void @igb_standby_nvm(ptr noundef %0)
  %35 = load i16, ptr %19, align 4
  %36 = icmp eq i16 %35, 8
  %37 = and i1 %20, %36
  %38 = select i1 %37, i16 10, i16 2
  %39 = load i16, ptr %18, align 2
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext %38, i16 noundef zeroext %39)
  %40 = add i16 %24, %1
  %41 = shl i16 %40, 1
  %42 = load i16, ptr %19, align 4
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext %41, i16 noundef zeroext %42)
  %43 = zext i16 %24 to i32
  %44 = call i16 @llvm.umax.i16(i16 %24, i16 %2)
  %45 = zext i16 %44 to i32
  br label %46

46:                                               ; preds = %49, %33
  %47 = phi i32 [ %53, %49 ], [ %43, %33 ]
  %48 = icmp eq i32 %47, %45
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = getelementptr i16, ptr %3, i32 %47
  %51 = load i16, ptr %50, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext %52, i16 noundef zeroext 16)
  %53 = add nuw nsw i32 %47, 1
  %54 = add nuw nsw i32 %53, %6
  %55 = shl nuw nsw i32 %54, 1
  %56 = load i16, ptr %21, align 4
  %57 = zext i16 %56 to i32
  %58 = urem i32 %55, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %46

60:                                               ; preds = %49
  %61 = trunc i32 %53 to i16
  tail call fastcc void @igb_standby_nvm(ptr noundef %0)
  br label %62

62:                                               ; preds = %60, %46
  %63 = phi i16 [ %61, %60 ], [ %44, %46 ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %64 = load ptr, ptr %22, align 4
  tail call void %64(ptr noundef %0) #6
  %65 = icmp ult i16 %63, %2
  br i1 %65, label %23, label %66

66:                                               ; preds = %62, %31, %23, %10, %4
  %67 = phi i32 [ -1, %10 ], [ -1, %4 ], [ %29, %31 ], [ 0, %62 ], [ %26, %23 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_part_string(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #6
  store i16 0, ptr %5, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #6
  store i16 0, ptr %6, align 2, !annotation !21
  %7 = icmp eq ptr %1, null
  br i1 %7, label %132, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef nonnull %4) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %132

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 4
  %15 = call i32 %14(ptr noundef %0, i16 noundef zeroext 9, i16 noundef zeroext 1, ptr noundef nonnull %5) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %132

17:                                               ; preds = %13
  %18 = load i16, ptr %4, align 2
  %19 = icmp eq i16 %18, -1286
  br i1 %19, label %83, label %20

20:                                               ; preds = %17
  %21 = icmp ult i32 %2, 11
  br i1 %21, label %132, label %22

22:                                               ; preds = %20
  %23 = lshr i16 %18, 12
  %24 = trunc i16 %23 to i8
  %25 = lshr i16 %18, 8
  %26 = trunc i16 %25 to i8
  %27 = and i8 %26, 15
  %28 = getelementptr i8, ptr %1, i32 1
  %29 = trunc i16 %18 to i8
  %30 = lshr i8 %29, 4
  %31 = getelementptr i8, ptr %1, i32 2
  %32 = and i8 %29, 15
  %33 = getelementptr i8, ptr %1, i32 3
  store i8 %32, ptr %33, align 1
  %34 = load i16, ptr %5, align 2
  %35 = lshr i16 %34, 12
  %36 = trunc i16 %35 to i8
  %37 = getelementptr i8, ptr %1, i32 4
  store i8 %36, ptr %37, align 1
  %38 = lshr i16 %34, 8
  %39 = trunc i16 %38 to i8
  %40 = and i8 %39, 15
  %41 = getelementptr i8, ptr %1, i32 5
  store i8 %40, ptr %41, align 1
  %42 = getelementptr i8, ptr %1, i32 6
  store i8 45, ptr %42, align 1
  %43 = getelementptr i8, ptr %1, i32 7
  store i8 0, ptr %43, align 1
  %44 = trunc i16 %34 to i8
  %45 = lshr i8 %44, 4
  %46 = getelementptr i8, ptr %1, i32 8
  store i8 %45, ptr %46, align 1
  %47 = and i8 %44, 15
  %48 = getelementptr i8, ptr %1, i32 9
  store i8 %47, ptr %48, align 1
  %49 = getelementptr i8, ptr %1, i32 10
  store i8 0, ptr %49, align 1
  %50 = icmp ult i8 %24, 10
  %51 = or i8 %24, 48
  %52 = add nuw nsw i8 %24, 55
  %53 = select i1 %50, i8 %51, i8 %52
  store i8 %53, ptr %1, align 1
  %54 = icmp ult i8 %27, 10
  %55 = or i8 %27, 48
  %56 = add nuw nsw i8 %27, 55
  %57 = select i1 %54, i8 %55, i8 %56
  store i8 %57, ptr %28, align 1
  %58 = icmp ult i8 %29, -96
  %59 = or i8 %30, 48
  %60 = add nuw nsw i8 %30, 55
  %61 = select i1 %58, i8 %59, i8 %60
  store i8 %61, ptr %31, align 1
  %62 = icmp ult i8 %32, 10
  %63 = or i8 %32, 48
  %64 = add nuw nsw i8 %32, 55
  %65 = select i1 %62, i8 %63, i8 %64
  store i8 %65, ptr %33, align 1
  %66 = icmp ult i8 %36, 10
  %67 = or i8 %36, 48
  %68 = add nuw nsw i8 %36, 55
  %69 = select i1 %66, i8 %67, i8 %68
  store i8 %69, ptr %37, align 1
  %70 = icmp ult i8 %40, 10
  %71 = or i8 %40, 48
  %72 = add nuw nsw i8 %40, 55
  %73 = select i1 %70, i8 %71, i8 %72
  store i8 %73, ptr %41, align 1
  store i8 48, ptr %43, align 1
  %74 = icmp ult i8 %44, -96
  %75 = or i8 %45, 48
  %76 = add nuw nsw i8 %45, 55
  %77 = select i1 %74, i8 %75, i8 %76
  store i8 %77, ptr %46, align 1
  %78 = icmp ult i8 %47, 10
  br i1 %78, label %81, label %79

79:                                               ; preds = %22
  %80 = add nuw nsw i8 %47, 55
  store i8 %80, ptr %48, align 1
  br label %132

81:                                               ; preds = %22
  %82 = or i8 %47, 48
  store i8 %82, ptr %48, align 1
  br label %132

83:                                               ; preds = %17
  %84 = load ptr, ptr %9, align 4
  %85 = load i16, ptr %5, align 2
  %86 = call i32 %84(ptr noundef %0, i16 noundef zeroext %85, i16 noundef zeroext 1, ptr noundef nonnull %6) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %132

88:                                               ; preds = %83
  %89 = load i16, ptr %6, align 2
  %90 = add i16 %89, 1
  %91 = icmp ult i16 %90, 2
  br i1 %91, label %132, label %92

92:                                               ; preds = %88
  %93 = zext i16 %89 to i32
  %94 = shl nuw nsw i32 %93, 1
  %95 = add nsw i32 %94, -1
  %96 = icmp ugt i32 %95, %2
  br i1 %96, label %132, label %97

97:                                               ; preds = %92
  %98 = load i16, ptr %5, align 2
  %99 = add i16 %98, 1
  store i16 %99, ptr %5, align 2
  %100 = add i16 %89, -1
  store i16 %100, ptr %6, align 2
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %129, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %9, align 4
  %104 = call i32 %103(ptr noundef %0, i16 noundef zeroext %99, i16 noundef zeroext 1, ptr noundef nonnull %4) #6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %120, %102
  %107 = phi i32 [ %116, %120 ], [ 0, %102 ]
  %108 = load i16, ptr %4, align 2
  %109 = lshr i16 %108, 8
  %110 = trunc i16 %109 to i8
  %111 = shl nuw nsw i32 %107, 1
  %112 = getelementptr i8, ptr %1, i32 %111
  store i8 %110, ptr %112, align 1
  %113 = trunc i16 %108 to i8
  %114 = or i32 %111, 1
  %115 = getelementptr i8, ptr %1, i32 %114
  store i8 %113, ptr %115, align 1
  %116 = add nuw nsw i32 %107, 1
  %117 = load i16, ptr %6, align 2
  %118 = zext i16 %117 to i32
  %119 = icmp ult i32 %116, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %106
  %121 = load i16, ptr %5, align 2
  %122 = load ptr, ptr %9, align 4
  %123 = trunc i32 %116 to i16
  %124 = add i16 %121, %123
  %125 = call i32 %122(ptr noundef %0, i16 noundef zeroext %124, i16 noundef zeroext 1, ptr noundef nonnull %4) #6
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %106, label %132

127:                                              ; preds = %106
  %128 = shl nuw i32 %116, 1
  br label %129

129:                                              ; preds = %127, %97
  %130 = phi i32 [ 0, %97 ], [ %128, %127 ]
  %131 = getelementptr i8, ptr %1, i32 %130
  store i8 0, ptr %131, align 1
  br label %132

132:                                              ; preds = %129, %120, %102, %92, %88, %83, %81, %79, %20, %13, %8, %3
  %133 = phi i32 [ 17, %20 ], [ %11, %8 ], [ %15, %13 ], [ %86, %83 ], [ 0, %129 ], [ 16, %3 ], [ 18, %88 ], [ 17, %92 ], [ 0, %81 ], [ 0, %79 ], [ %104, %102 ], [ %125, %120 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_mac_addr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 21508) #6
  %3 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 21504) #6
  %4 = trunc i32 %3 to i8
  %5 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 2, i32 0
  store i8 %4, ptr %5, align 1
  %6 = lshr i32 %3, 8
  %7 = trunc i32 %6 to i8
  %8 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 2, i32 1
  store i8 %7, ptr %8, align 1
  %9 = lshr i32 %3, 16
  %10 = trunc i32 %9 to i8
  %11 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 2, i32 2
  store i8 %10, ptr %11, align 1
  %12 = lshr i32 %3, 24
  %13 = trunc i32 %12 to i8
  %14 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 2, i32 3
  store i8 %13, ptr %14, align 1
  %15 = trunc i32 %2 to i8
  %16 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 2, i32 4
  store i8 %15, ptr %16, align 1
  %17 = lshr i32 %2, 8
  %18 = trunc i32 %17 to i8
  %19 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 2, i32 5
  store i8 %18, ptr %19, align 1
  %20 = getelementptr i8, ptr %0, i32 68
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %20, ptr noundef align 1 dereferenceable(6) %5, i32 6, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_validate_nvm_checksum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !21
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi i16 [ 0, %1 ], [ %14, %10 ]
  %6 = phi i32 [ 0, %1 ], [ %15, %10 ]
  %7 = load ptr, ptr %3, align 4
  %8 = call i32 %7(ptr noundef %0, i16 noundef zeroext %5, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load i16, ptr %2, align 2
  %12 = zext i16 %11 to i32
  %13 = add nuw nsw i32 %6, %12
  %14 = add nuw nsw i16 %5, 1
  %15 = and i32 %13, 65535
  %16 = icmp ult i16 %5, 63
  br i1 %16, label %4, label %17

17:                                               ; preds = %10
  %18 = icmp ne i32 %15, 47802
  %19 = sext i1 %18 to i32
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i32 [ %19, %17 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_update_nvm_checksum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !21
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  br label %5

5:                                                ; preds = %11, %1
  %6 = phi i16 [ 0, %1 ], [ %13, %11 ]
  %7 = phi i16 [ 0, %1 ], [ %14, %11 ]
  %8 = load ptr, ptr %4, align 4
  %9 = call i32 %8(ptr noundef %0, i16 noundef zeroext %7, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = load i16, ptr %3, align 2
  %13 = add i16 %6, %12
  %14 = add nuw nsw i16 %7, 1
  %15 = icmp ult i16 %7, 62
  br i1 %15, label %5, label %16

16:                                               ; preds = %11
  %17 = sub i16 -17734, %13
  store i16 %17, ptr %2, align 2
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %0, i16 noundef zeroext 63, i16 noundef zeroext 1, ptr noundef nonnull %2) #6
  br label %21

21:                                               ; preds = %16, %5
  %22 = phi i32 [ %20, %16 ], [ %9, %5 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_get_fw_version(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #6
  store i16 0, ptr %5, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #6
  store i16 0, ptr %6, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #6
  store i16 0, ptr %7, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #6
  store i16 0, ptr %8, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #6
  store i16 0, ptr %9, align 2, !annotation !21
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %1, i8 0, i32 20, i1 false)
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %0, i16 noundef zeroext 67, i16 noundef zeroext 1, ptr noundef nonnull %5) #6
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %98 [
    i32 7, label %15
    i32 1, label %17
    i32 2, label %17
    i32 3, label %17
    i32 6, label %32
    i32 4, label %36
  ]

15:                                               ; preds = %2
  %16 = call i32 @igb_read_invm_version(ptr noundef %0, ptr noundef %1) #6
  br label %98

17:                                               ; preds = %2, %2, %2
  %18 = load i16, ptr %5, align 2
  %19 = and i16 %18, -4096
  %20 = icmp eq i16 %19, -32768
  br i1 %20, label %67, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %10, align 4
  %23 = call i32 %22(ptr noundef %0, i16 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %6) #6
  %24 = load i16, ptr %6, align 2
  %25 = lshr i16 %24, 12
  %26 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 1
  store i16 %25, ptr %26, align 4
  %27 = lshr i16 %24, 4
  %28 = and i16 %27, 255
  %29 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 2
  store i16 %28, ptr %29, align 2
  %30 = and i16 %24, 15
  %31 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 3
  store i16 %30, ptr %31, align 4
  br label %83

32:                                               ; preds = %2
  %33 = call zeroext i1 @igb_get_flash_presence_i210(ptr noundef %0) #6
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = call i32 @igb_read_invm_version(ptr noundef %0, ptr noundef %1) #6
  br label %98

36:                                               ; preds = %32, %2
  %37 = load ptr, ptr %10, align 4
  %38 = call i32 %37(ptr noundef %0, i16 noundef zeroext 61, i16 noundef zeroext 1, ptr noundef nonnull %9) #6
  %39 = load i16, ptr %9, align 2
  %40 = add i16 %39, -1
  %41 = icmp ult i16 %40, -2
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load ptr, ptr %10, align 4
  %44 = add i16 %39, 132
  %45 = call i32 %43(ptr noundef %0, i16 noundef zeroext %44, i16 noundef zeroext 1, ptr noundef nonnull %7) #6
  %46 = load ptr, ptr %10, align 4
  %47 = load i16, ptr %9, align 2
  %48 = add i16 %47, 131
  %49 = call i32 %46(ptr noundef %0, i16 noundef zeroext %48, i16 noundef zeroext 1, ptr noundef nonnull %8) #6
  %50 = load i16, ptr %7, align 2
  %51 = icmp ne i16 %50, 0
  %52 = load i16, ptr %8, align 2
  %53 = icmp ne i16 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  %55 = icmp ne i16 %50, -1
  %56 = and i1 %55, %54
  %57 = icmp ne i16 %52, -1
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %67

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 7
  store i8 1, ptr %60, align 1
  %61 = lshr i16 %52, 8
  %62 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 8
  store i16 %61, ptr %62, align 2
  %63 = call i16 @llvm.fshl.i16(i16 %52, i16 %50, i16 8)
  %64 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 9
  store i16 %63, ptr %64, align 4
  %65 = and i16 %50, 255
  %66 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 10
  store i16 %65, ptr %66, align 2
  br label %67

67:                                               ; preds = %59, %42, %36, %17
  %68 = load ptr, ptr %10, align 4
  %69 = call i32 %68(ptr noundef %0, i16 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %6) #6
  %70 = load i16, ptr %6, align 2
  %71 = lshr i16 %70, 12
  %72 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 1
  store i16 %71, ptr %72, align 4
  %73 = and i16 %70, 3840
  %74 = icmp eq i16 %73, 0
  %75 = lshr i16 %70, 4
  %76 = select i1 %74, i16 %70, i16 %75
  %77 = and i16 %76, 255
  store i16 %77, ptr %4, align 2
  %78 = lshr i16 %77, 4
  %79 = mul nuw nsw i16 %78, 10
  %80 = and i16 %76, 15
  %81 = add nuw nsw i16 %79, %80
  %82 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 2
  store i16 %81, ptr %82, align 2
  br label %83

83:                                               ; preds = %67, %21
  %84 = load i16, ptr %5, align 2
  %85 = and i16 %84, -4096
  %86 = icmp eq i16 %85, -32768
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load ptr, ptr %10, align 4
  %89 = call i32 %88(ptr noundef %0, i16 noundef zeroext 66, i16 noundef zeroext 1, ptr noundef nonnull %4) #6
  %90 = load ptr, ptr %10, align 4
  %91 = call i32 %90(ptr noundef %0, i16 noundef zeroext 67, i16 noundef zeroext 1, ptr noundef nonnull %3) #6
  %92 = load i16, ptr %3, align 2
  %93 = zext i16 %92 to i32
  %94 = shl nuw i32 %93, 16
  %95 = load i16, ptr %4, align 2
  %96 = zext i16 %95 to i32
  %97 = or i32 %94, %96
  store i32 %97, ptr %1, align 4
  br label %98

98:                                               ; preds = %87, %83, %34, %15, %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_invm_version(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igb_get_flash_presence_i210(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2154692208}
!10 = !{i64 4784881}
!11 = !{i64 2154696274}
!12 = !{i64 2154679704}
!13 = !{i64 2154708260}
!14 = !{i64 2154711728}
!15 = !{i64 2154699969}
!16 = !{i64 2154704073}
!17 = !{i64 2154683886}
!18 = !{i64 2154675578}
!19 = !{i64 2154687990}
!20 = !{i64 2154717014}
!21 = !{!"auto-init"}
