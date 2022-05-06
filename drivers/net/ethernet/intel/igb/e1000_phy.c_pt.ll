; ModuleID = '/llk/IR/drivers/net/ethernet/intel/igb/e1000_phy.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_phy.c"
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@e1000_m88_cable_length_table = internal unnamed_addr constant [7 x i16] [i16 0, i16 50, i16 80, i16 110, i16 140, i16 140, i16 255], align 2
@e1000_igp_2_cable_length_table = internal unnamed_addr constant [113 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3, i16 5, i16 8, i16 11, i16 13, i16 16, i16 18, i16 21, i16 0, i16 0, i16 0, i16 3, i16 6, i16 10, i16 13, i16 16, i16 19, i16 23, i16 26, i16 29, i16 32, i16 35, i16 38, i16 41, i16 6, i16 10, i16 14, i16 18, i16 22, i16 26, i16 30, i16 33, i16 37, i16 41, i16 44, i16 48, i16 51, i16 54, i16 58, i16 61, i16 21, i16 26, i16 31, i16 35, i16 40, i16 44, i16 49, i16 53, i16 57, i16 61, i16 65, i16 68, i16 72, i16 75, i16 79, i16 82, i16 40, i16 45, i16 51, i16 56, i16 61, i16 66, i16 70, i16 75, i16 79, i16 83, i16 87, i16 91, i16 94, i16 98, i16 101, i16 104, i16 60, i16 66, i16 72, i16 77, i16 82, i16 87, i16 92, i16 96, i16 100, i16 104, i16 108, i16 111, i16 114, i16 117, i16 119, i16 121, i16 83, i16 89, i16 95, i16 100, i16 105, i16 109, i16 113, i16 116, i16 119, i16 122, i16 124, i16 104, i16 109, i16 114, i16 118, i16 121, i16 124], align 2
@switch.table.igb_check_downshift = private unnamed_addr constant [8 x i32] [i32 17, i32 19, i32 19, i32 17, i32 19, i32 17, i32 17, i32 17], align 4
@switch.table.igb_check_downshift.1 = private unnamed_addr constant [8 x i32] [i32 32, i32 32768, i32 32768, i32 32, i32 32768, i32 32, i32 32, i32 32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_check_reset_block(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 22560) #4
  %3 = and i32 %2, 262144
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 12
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_phy_id(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 0) #4
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i16, ptr %2, align 2
  %18 = zext i16 %17 to i32
  %19 = shl nuw i32 %18, 16
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 4294960) #4
  %22 = load ptr, ptr %12, align 4
  %23 = call i32 %22(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load i16, ptr %2, align 2
  %27 = and i16 %26, -16
  %28 = zext i16 %27 to i32
  %29 = load i32, ptr %20, align 4
  %30 = or i32 %29, %28
  store i32 %30, ptr %20, align 4
  %31 = and i16 %26, 15
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 11
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %25, %16, %11
  %35 = phi i32 [ %14, %11 ], [ %23, %16 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_phy_reg_mdic(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 31
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !9

11:                                               ; preds = %5
  %12 = shl i32 %7, 21
  %13 = shl nuw nsw i32 %1, 16
  %14 = or i32 %13, %12
  %15 = or i32 %14, 134217728
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %16 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #4, !srcloc !11
  br label %17

17:                                               ; preds = %11, %5
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi i32 [ %24, %18 ], [ 0, %17 ]
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 10737400) #4
  %21 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 32) #4
  %22 = and i32 %21, 268435456
  %23 = icmp ne i32 %22, 0
  %24 = add nuw nsw i32 %19, 1
  %25 = icmp eq i32 %24, 1920
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %18

27:                                               ; preds = %18
  %28 = and i32 %21, 1342177280
  %29 = icmp eq i32 %28, 268435456
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = trunc i32 %21 to i16
  store i16 %31, ptr %2, align 2
  br label %32

32:                                               ; preds = %30, %27, %3
  %33 = phi i32 [ 0, %30 ], [ -4, %3 ], [ -2, %27 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_write_phy_reg_mdic(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 31
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !9

11:                                               ; preds = %5
  %12 = shl i32 %7, 21
  %13 = shl nuw nsw i32 %1, 16
  %14 = zext i16 %2 to i32
  %15 = or i32 %13, %14
  %16 = or i32 %15, %12
  %17 = or i32 %16, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %18 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #4, !srcloc !11
  br label %19

19:                                               ; preds = %11, %5
  br label %23

20:                                               ; preds = %23
  %21 = add nuw nsw i32 %24, 1
  %22 = icmp eq i32 %21, 1920
  br i1 %22, label %33, label %23

23:                                               ; preds = %20, %19
  %24 = phi i32 [ %21, %20 ], [ 0, %19 ]
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 10737400) #4
  %26 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 32) #4
  %27 = and i32 %26, 268435456
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %20, label %29

29:                                               ; preds = %23
  %30 = and i32 %26, 1073741824
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 -2
  br label %33

33:                                               ; preds = %29, %20, %3
  %34 = phi i32 [ -4, %3 ], [ %32, %29 ], [ -2, %20 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_phy_reg_i2c(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !prof !9

9:                                                ; preds = %3
  %10 = shl i32 %5, 24
  %11 = shl i32 %1, 16
  %12 = or i32 %11, %10
  %13 = or i32 %12, 134217728
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %14 = getelementptr i8, ptr %7, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #4, !srcloc !11
  br label %15

15:                                               ; preds = %9, %3
  br label %16

16:                                               ; preds = %16, %15
  %17 = phi i32 [ %22, %16 ], [ 0, %15 ]
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 10737400) #4
  %19 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 4136) #4
  %20 = and i32 %19, 536870912
  %21 = icmp ne i32 %20, 0
  %22 = add nuw nsw i32 %17, 1
  %23 = icmp eq i32 %22, 200
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %16

25:                                               ; preds = %16
  %26 = and i32 %19, -1610612736
  %27 = icmp eq i32 %26, 536870912
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = trunc i32 %19 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  store i16 %30, ptr %2, align 2
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ 0, %28 ], [ -2, %25 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_write_phy_reg_i2c(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -8
  %7 = icmp ult i32 %6, -7
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12, !prof !9

12:                                               ; preds = %8
  %13 = shl i32 %1, 16
  %14 = tail call i16 @llvm.bswap.i16(i16 %2)
  %15 = zext i16 %14 to i32
  %16 = or i32 %13, %15
  %17 = shl nuw nsw i32 %5, 24
  %18 = or i32 %16, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %19 = getelementptr i8, ptr %10, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #4, !srcloc !11
  br label %20

20:                                               ; preds = %12, %8
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i32 %25, 1
  %23 = icmp eq i32 %22, 200
  br i1 %23, label %33, label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ %22, %21 ], [ 0, %20 ]
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 10737400) #4
  %27 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 4136) #4
  %28 = and i32 %27, 536870912
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %21, label %30

30:                                               ; preds = %24
  %31 = icmp slt i32 %27, 0
  %32 = select i1 %31, i32 -2, i32 0
  br label %33

33:                                               ; preds = %30, %21, %3
  %34 = phi i32 [ -3, %3 ], [ %32, %30 ], [ -2, %21 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_sfp_data_byte(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp ugt i16 %1, 511
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !prof !9

9:                                                ; preds = %5
  %10 = zext i16 %1 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, 134217728
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %13 = getelementptr i8, ptr %7, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #4, !srcloc !11
  br label %14

14:                                               ; preds = %9, %5
  br label %15

15:                                               ; preds = %15, %14
  %16 = phi i32 [ %21, %15 ], [ 0, %14 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 10737400) #4
  %18 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 4136) #4
  %19 = and i32 %18, 536870912
  %20 = icmp ne i32 %19, 0
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, 200
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %15

24:                                               ; preds = %15
  %25 = and i32 %18, -1610612736
  %26 = icmp eq i32 %25, 536870912
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = trunc i32 %18 to i8
  store i8 %28, ptr %2, align 1
  br label %29

29:                                               ; preds = %27, %24, %3
  %30 = phi i32 [ 0, %27 ], [ -2, %3 ], [ -2, %24 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_phy_reg_igp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %69, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %7
  %11 = icmp ugt i32 %1, 15
  br i1 %11, label %12, label %37

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18, !prof !9

18:                                               ; preds = %12
  %19 = shl i32 %14, 21
  %20 = and i32 %1, 65535
  %21 = or i32 %19, %20
  %22 = or i32 %21, 69140480
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %23 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #4, !srcloc !11
  br label %24

24:                                               ; preds = %18, %12
  br label %28

25:                                               ; preds = %28
  %26 = add nuw nsw i32 %29, 1
  %27 = icmp eq i32 %26, 1920
  br i1 %27, label %65, label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ %26, %25 ], [ 0, %24 ]
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 10737400) #4
  %31 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 32) #4
  %32 = and i32 %31, 268435456
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %25, label %34

34:                                               ; preds = %28
  %35 = and i32 %31, 1073741824
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %34, %10
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43, !prof !9

43:                                               ; preds = %37
  %44 = shl i32 %39, 21
  %45 = shl i32 %1, 16
  %46 = and i32 %45, 2031616
  %47 = or i32 %44, %46
  %48 = or i32 %47, 134217728
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %49 = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %48) #4, !srcloc !11
  br label %50

50:                                               ; preds = %43, %37
  br label %51

51:                                               ; preds = %51, %50
  %52 = phi i32 [ %57, %51 ], [ 0, %50 ]
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 10737400) #4
  %54 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 32) #4
  %55 = and i32 %54, 268435456
  %56 = icmp ne i32 %55, 0
  %57 = add nuw nsw i32 %52, 1
  %58 = icmp eq i32 %57, 1920
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %60, label %51

60:                                               ; preds = %51
  %61 = and i32 %54, 1342177280
  %62 = icmp eq i32 %61, 268435456
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = trunc i32 %54 to i16
  store i16 %64, ptr %2, align 2
  br label %65

65:                                               ; preds = %63, %60, %34, %25
  %66 = phi i32 [ -2, %34 ], [ 0, %63 ], [ -2, %60 ], [ -2, %25 ]
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  tail call void %68(ptr noundef %0) #4
  br label %69

69:                                               ; preds = %65, %7, %3
  %70 = phi i32 [ %8, %7 ], [ 0, %3 ], [ %66, %65 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_write_phy_reg_igp(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %7
  %11 = icmp ugt i32 %1, 15
  br i1 %11, label %12, label %37

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18, !prof !9

18:                                               ; preds = %12
  %19 = shl i32 %14, 21
  %20 = and i32 %1, 65535
  %21 = or i32 %19, %20
  %22 = or i32 %21, 69140480
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %23 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #4, !srcloc !11
  br label %24

24:                                               ; preds = %18, %12
  br label %28

25:                                               ; preds = %28
  %26 = add nuw nsw i32 %29, 1
  %27 = icmp eq i32 %26, 1920
  br i1 %27, label %66, label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ %26, %25 ], [ 0, %24 ]
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 10737400) #4
  %31 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 32) #4
  %32 = and i32 %31, 268435456
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %25, label %34

34:                                               ; preds = %28
  %35 = and i32 %31, 1073741824
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %34, %10
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43, !prof !9

43:                                               ; preds = %37
  %44 = shl i32 %39, 21
  %45 = shl i32 %1, 16
  %46 = and i32 %45, 2031616
  %47 = zext i16 %2 to i32
  %48 = or i32 %46, %47
  %49 = or i32 %44, %48
  %50 = or i32 %49, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %51 = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #4, !srcloc !11
  br label %52

52:                                               ; preds = %43, %37
  br label %56

53:                                               ; preds = %56
  %54 = add nuw nsw i32 %57, 1
  %55 = icmp eq i32 %54, 1920
  br i1 %55, label %66, label %56

56:                                               ; preds = %53, %52
  %57 = phi i32 [ %54, %53 ], [ 0, %52 ]
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 10737400) #4
  %59 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 32) #4
  %60 = and i32 %59, 268435456
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %53, label %62

62:                                               ; preds = %56
  %63 = and i32 %59, 1073741824
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 0, i32 -2
  br label %66

66:                                               ; preds = %62, %53, %34, %25
  %67 = phi i32 [ -2, %34 ], [ %65, %62 ], [ -2, %53 ], [ -2, %25 ]
  %68 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 8
  %69 = load ptr, ptr %68, align 4
  tail call void %69(ptr noundef %0) #4
  br label %70

70:                                               ; preds = %66, %7, %3
  %71 = phi i32 [ %8, %7 ], [ 0, %3 ], [ %67, %66 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_copper_link_setup_82580(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 23
  %4 = load i8, ptr %3, align 2, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 %17(ptr noundef %0, i32 noundef 22, ptr noundef nonnull %2) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load i16, ptr %2, align 2
  %22 = or i16 %21, -29696
  store i16 %22, ptr %2, align 2
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 %24(ptr noundef %0, i32 noundef 22, i16 noundef zeroext %22) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load ptr, ptr %16, align 4
  %29 = call i32 %28(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %2) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i16, ptr %2, align 2
  %33 = and i16 %32, -1537
  store i16 %33, ptr %2, align 2
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 19
  %35 = load i8, ptr %34, align 2
  switch i8 %35, label %38 [
    i8 1, label %40
    i8 2, label %36
  ]

36:                                               ; preds = %31
  %37 = or i16 %33, 512
  store i16 %37, ptr %2, align 2
  br label %40

38:                                               ; preds = %31
  %39 = or i16 %33, 1024
  store i16 %39, ptr %2, align 2
  br label %40

40:                                               ; preds = %38, %36, %31
  %41 = phi i16 [ %39, %38 ], [ %37, %36 ], [ %33, %31 ]
  %42 = load ptr, ptr %23, align 4
  %43 = call i32 %42(ptr noundef %0, i32 noundef 18, i16 noundef zeroext %41) #4
  br label %44

44:                                               ; preds = %40, %27, %20, %15, %10, %1
  %45 = phi i32 [ %13, %10 ], [ %18, %15 ], [ %25, %20 ], [ %29, %27 ], [ %43, %40 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_copper_link_setup_m88(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 23
  %5 = load i8, ptr %4, align 2, !range !16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %80

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %80

12:                                               ; preds = %7
  %13 = load i16, ptr %3, align 2
  %14 = and i16 %13, -2145
  %15 = or i16 %14, 2048
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 19
  %17 = load i8, ptr %16, align 2
  switch i8 %17, label %22 [
    i8 1, label %24
    i8 2, label %18
    i8 3, label %20
  ]

18:                                               ; preds = %12
  %19 = or i16 %14, 2080
  br label %24

20:                                               ; preds = %12
  %21 = or i16 %14, 2112
  br label %24

22:                                               ; preds = %12
  %23 = or i16 %13, 2144
  br label %24

24:                                               ; preds = %22, %20, %18, %12
  %25 = phi i16 [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %15, %12 ]
  %26 = and i16 %25, -3
  store i16 %26, ptr %3, align 2
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 20
  %28 = load i8, ptr %27, align 1, !range !16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = or i16 %25, 2
  store i16 %31, ptr %3, align 2
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i16 [ %31, %30 ], [ %26, %24 ]
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %33) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load ptr, ptr %8, align 4
  %44 = call i32 %43(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %3) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load i16, ptr %3, align 2
  %48 = or i16 %47, 112
  %49 = load i32, ptr %39, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 21040320
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i16 [ -3841, %55 ], [ -3585, %51 ]
  %58 = phi i16 [ 256, %55 ], [ 2048, %51 ]
  %59 = and i16 %48, %57
  %60 = or i16 %59, %58
  store i16 %60, ptr %3, align 2
  %61 = load ptr, ptr %34, align 4
  %62 = call i32 %61(ptr noundef %0, i32 noundef 20, i16 noundef zeroext %60) #4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %56, %38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %65 = load ptr, ptr %8, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = call i32 %65(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i16, ptr %2, align 2
  %72 = or i16 %71, -32768
  store i16 %72, ptr %2, align 2
  %73 = load ptr, ptr %34, align 4
  %74 = call i32 %73(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %72) #4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 214748) #4
  br label %78

78:                                               ; preds = %76, %70, %67, %64
  %79 = phi i32 [ %68, %67 ], [ %74, %70 ], [ 0, %76 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %80

80:                                               ; preds = %78, %56, %42, %32, %7, %1
  %81 = phi i32 [ %10, %7 ], [ %36, %32 ], [ %44, %42 ], [ %62, %56 ], [ %79, %78 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_phy_sw_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = call i32 %4(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i16, ptr %2, align 2
  %11 = or i16 %10, -32768
  store i16 %11, ptr %2, align 2
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %11) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748) #4
  br label %18

18:                                               ; preds = %16, %9, %6, %1
  %19 = phi i32 [ %7, %6 ], [ %14, %9 ], [ 0, %16 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_copper_link_setup_m88_gen2(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 23
  %6 = load i8, ptr %5, align 2, !range !16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %89

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %89

13:                                               ; preds = %8
  %14 = load i16, ptr %4, align 2
  %15 = and i16 %14, -97
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 19
  %17 = load i8, ptr %16, align 2
  switch i8 %17, label %26 [
    i8 1, label %28
    i8 2, label %18
    i8 3, label %20
  ]

18:                                               ; preds = %13
  %19 = or i16 %15, 32
  br label %28

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 21040272
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = or i16 %15, 64
  br label %28

26:                                               ; preds = %20, %13
  %27 = or i16 %14, 96
  br label %28

28:                                               ; preds = %26, %24, %18, %13
  %29 = phi i16 [ %27, %26 ], [ %25, %24 ], [ %19, %18 ], [ %15, %13 ]
  %30 = and i16 %29, -3
  %31 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 20
  %32 = load i8, ptr %31, align 1, !range !16
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i16 0, i16 2
  %35 = or i16 %30, %34
  %36 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 21040800
  br i1 %38, label %39, label %63

39:                                               ; preds = %28
  %40 = and i16 %35, -2049
  store i16 %40, ptr %4, align 2
  %41 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %42(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %40) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  %46 = load ptr, ptr %9, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = call i32 %46(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i16, ptr %3, align 2
  %53 = or i16 %52, -32768
  store i16 %53, ptr %3, align 2
  %54 = load ptr, ptr %41, align 4
  %55 = call i32 %54(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %53) #4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 214748) #4
  br label %59

59:                                               ; preds = %57, %45
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  %60 = load i16, ptr %4, align 2
  br label %63

61:                                               ; preds = %51, %48
  %62 = phi i32 [ %49, %48 ], [ %55, %51 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  br label %89

63:                                               ; preds = %59, %28
  %64 = phi i16 [ %60, %59 ], [ %35, %28 ]
  %65 = and i16 %64, -30721
  %66 = or i16 %65, 22528
  store i16 %66, ptr %4, align 2
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 %68(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %66) #4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %72 = load ptr, ptr %9, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %71
  %75 = call i32 %72(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i16, ptr %2, align 2
  %79 = or i16 %78, -32768
  store i16 %79, ptr %2, align 2
  %80 = load ptr, ptr %67, align 4
  %81 = call i32 %80(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %79) #4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 214748) #4
  br label %87

85:                                               ; preds = %77, %74
  %86 = phi i32 [ %75, %74 ], [ %81, %77 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %89

87:                                               ; preds = %83, %71
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  %88 = call fastcc i32 @igb_set_master_slave_mode(ptr noundef %0)
  br label %89

89:                                               ; preds = %87, %85, %63, %61, %39, %8, %1
  %90 = phi i32 [ 0, %1 ], [ %11, %8 ], [ %43, %39 ], [ %62, %61 ], [ %69, %63 ], [ %86, %85 ], [ %88, %87 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @igb_set_master_slave_mode(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 4096
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %9, 2048
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 2, i32 1
  %15 = select i1 %11, i32 3, i32 %14
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 5
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 4
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %26 [
    i32 1, label %19
    i32 2, label %21
    i32 3, label %24
  ]

19:                                               ; preds = %7
  %20 = or i16 %8, 6144
  store i16 %20, ptr %2, align 2
  br label %26

21:                                               ; preds = %7
  %22 = and i16 %8, -6145
  %23 = or i16 %22, 4096
  store i16 %23, ptr %2, align 2
  br label %26

24:                                               ; preds = %7
  %25 = and i16 %8, -4097
  store i16 %25, ptr %2, align 2
  br label %26

26:                                               ; preds = %24, %21, %19, %7
  %27 = phi i16 [ %25, %24 ], [ %8, %7 ], [ %23, %21 ], [ %20, %19 ]
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %27) #4
  br label %31

31:                                               ; preds = %26, %1
  %32 = phi i32 [ %30, %26 ], [ %5, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_copper_link_setup_igp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 23
  %4 = load i8, ptr %3, align 2, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %104

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %104

11:                                               ; preds = %6
  tail call void @msleep(i32 noundef 100) #4
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %0, i1 noundef zeroext false) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %104

22:                                               ; preds = %19, %15, %11
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0, i1 noundef zeroext false) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %104

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %2) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %104

32:                                               ; preds = %27
  %33 = load i16, ptr %2, align 2
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 19
  %35 = load i8, ptr %34, align 2
  switch i8 %35, label %41 [
    i8 1, label %36
    i8 2, label %38
  ]

36:                                               ; preds = %32
  %37 = and i16 %33, -12289
  store i16 %37, ptr %2, align 2
  br label %43

38:                                               ; preds = %32
  %39 = and i16 %33, -12289
  %40 = or i16 %39, 8192
  store i16 %40, ptr %2, align 2
  br label %43

41:                                               ; preds = %32
  %42 = or i16 %33, 4096
  store i16 %42, ptr %2, align 2
  br label %43

43:                                               ; preds = %41, %38, %36
  %44 = phi i16 [ %42, %41 ], [ %40, %38 ], [ %37, %36 ]
  %45 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef %0, i32 noundef 18, i16 noundef zeroext %44) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %104

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 17
  %51 = load i8, ptr %50, align 2, !range !16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %104, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 13
  %55 = load i16, ptr %54, align 4
  %56 = icmp eq i16 %55, 32
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load ptr, ptr %28, align 4
  %59 = call i32 %58(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %2) #4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = load i16, ptr %2, align 2
  %63 = and i16 %62, -129
  store i16 %63, ptr %2, align 2
  %64 = load ptr, ptr %45, align 4
  %65 = call i32 %64(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %63) #4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %61
  %68 = load ptr, ptr %28, align 4
  %69 = call i32 %68(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2) #4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load i16, ptr %2, align 2
  %73 = and i16 %72, -4097
  store i16 %73, ptr %2, align 2
  %74 = load ptr, ptr %45, align 4
  %75 = call i32 %74(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %73) #4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %71, %53
  %78 = load ptr, ptr %28, align 4
  %79 = call i32 %78(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2) #4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %77
  %82 = load i16, ptr %2, align 2
  %83 = zext i16 %82 to i32
  %84 = and i32 %83, 4096
  %85 = icmp eq i32 %84, 0
  %86 = and i32 %83, 2048
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 2, i32 1
  %89 = select i1 %85, i32 3, i32 %88
  %90 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 5
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 4
  %92 = load i32, ptr %91, align 4
  switch i32 %92, label %100 [
    i32 1, label %93
    i32 2, label %95
    i32 3, label %98
  ]

93:                                               ; preds = %81
  %94 = or i16 %82, 6144
  store i16 %94, ptr %2, align 2
  br label %100

95:                                               ; preds = %81
  %96 = and i16 %82, -6145
  %97 = or i16 %96, 4096
  store i16 %97, ptr %2, align 2
  br label %100

98:                                               ; preds = %81
  %99 = and i16 %82, -4097
  store i16 %99, ptr %2, align 2
  br label %100

100:                                              ; preds = %98, %95, %93, %81
  %101 = phi i16 [ %82, %81 ], [ %99, %98 ], [ %97, %95 ], [ %94, %93 ]
  %102 = load ptr, ptr %45, align 4
  %103 = call i32 %102(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %101) #4
  br label %104

104:                                              ; preds = %100, %77, %71, %67, %61, %57, %49, %43, %27, %22, %19, %6, %1
  %105 = phi i32 [ %9, %6 ], [ %20, %19 ], [ %25, %22 ], [ %30, %27 ], [ %47, %43 ], [ %59, %57 ], [ %65, %61 ], [ %69, %67 ], [ %75, %71 ], [ %79, %77 ], [ %103, %100 ], [ 0, %49 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_setup_copper_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 17
  %8 = load i8, ptr %7, align 2, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %119, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #4
  store i16 0, ptr %6, align 2, !annotation !8
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 14
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 13
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, %12
  %16 = icmp eq i16 %15, 0
  %17 = select i1 %16, i16 %12, i16 %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #4
  store i16 0, ptr %5, align 2
  store i16 %17, ptr %13, align 4
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %4) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %10
  %23 = load i16, ptr %11, align 2
  %24 = and i16 %23, 32
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %18, align 4
  %28 = call i32 %27(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %5) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = load i16, ptr %5, align 2
  %32 = and i16 %31, -769
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i16 [ %32, %30 ], [ 0, %22 ]
  %35 = load i16, ptr %4, align 2
  %36 = and i16 %35, -481
  store i16 %34, ptr %5, align 2
  %37 = load i16, ptr %13, align 4
  %38 = shl i16 %37, 5
  %39 = and i16 %38, 32
  %40 = or i16 %39, %36
  %41 = and i16 %38, 64
  %42 = or i16 %40, %41
  %43 = and i16 %38, 128
  %44 = or i16 %42, %43
  %45 = and i16 %38, 256
  %46 = or i16 %44, %45
  %47 = and i16 %37, 32
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %33
  %50 = or i16 %34, 512
  store i16 %50, ptr %5, align 2
  br label %51

51:                                               ; preds = %49, %33
  %52 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  %53 = load i32, ptr %52, align 4
  switch i32 %53, label %74 [
    i32 0, label %54
    i32 1, label %56
    i32 2, label %58
    i32 3, label %61
  ]

54:                                               ; preds = %51
  %55 = and i16 %46, -3073
  store i16 %55, ptr %4, align 2
  br label %63

56:                                               ; preds = %51
  %57 = or i16 %46, 3072
  store i16 %57, ptr %4, align 2
  br label %63

58:                                               ; preds = %51
  %59 = and i16 %46, -3073
  %60 = or i16 %59, 2048
  store i16 %60, ptr %4, align 2
  br label %63

61:                                               ; preds = %51
  %62 = or i16 %46, 3072
  store i16 %62, ptr %4, align 2
  br label %63

63:                                               ; preds = %61, %58, %56, %54
  %64 = phi i16 [ %62, %61 ], [ %60, %58 ], [ %57, %56 ], [ %55, %54 ]
  %65 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 %66(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %64) #4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i16, ptr %11, align 2
  %71 = and i16 %70, 32
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  br label %81

74:                                               ; preds = %63, %51, %26, %10
  %75 = phi i32 [ -3, %51 ], [ %67, %63 ], [ %28, %26 ], [ %20, %10 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  br label %115

76:                                               ; preds = %69
  %77 = load ptr, ptr %65, align 4
  %78 = load i16, ptr %5, align 2
  %79 = call i32 %77(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %78) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %76, %73
  %82 = load ptr, ptr %18, align 4
  %83 = call i32 %82(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %6) #4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %81
  %86 = load i16, ptr %6, align 2
  %87 = or i16 %86, 4608
  store i16 %87, ptr %6, align 2
  %88 = load ptr, ptr %65, align 4
  %89 = call i32 %88(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %87) #4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 25
  %93 = load i8, ptr %92, align 4, !range !16
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %117, label %95

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  br label %96

96:                                               ; preds = %109, %95
  %97 = phi i16 [ 45, %95 ], [ %110, %109 ]
  %98 = load ptr, ptr %18, align 4
  %99 = call i32 %98(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load ptr, ptr %18, align 4
  %103 = call i32 %102(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i16, ptr %3, align 2
  %107 = and i16 %106, 32
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  call void @msleep(i32 noundef 100) #4
  %110 = add nsw i16 %97, -1
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %96

112:                                              ; preds = %109, %105
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  br label %117

113:                                              ; preds = %101, %96
  %114 = phi i32 [ %99, %96 ], [ %103, %101 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  br label %115

115:                                              ; preds = %113, %85, %81, %76, %74
  %116 = phi i32 [ %75, %74 ], [ %114, %113 ], [ %89, %85 ], [ %83, %81 ], [ %79, %76 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #4
  br label %149

117:                                              ; preds = %112, %91
  %118 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 20
  store i8 1, ptr %118, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #4
  br label %124

119:                                              ; preds = %1
  %120 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 %121(ptr noundef %0) #4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %119, %117
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %125 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  br label %126

126:                                              ; preds = %141, %124
  %127 = phi i16 [ 0, %124 ], [ %143, %141 ]
  %128 = load ptr, ptr %125, align 4
  %129 = call i32 %128(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %132(i32 noundef 2147480) #4
  br label %133

133:                                              ; preds = %131, %126
  %134 = load ptr, ptr %125, align 4
  %135 = call i32 %134(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load i16, ptr %2, align 2
  %139 = and i16 %138, 4
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %142(i32 noundef 2147480) #4
  %143 = add nuw nsw i16 %127, 1
  %144 = icmp ult i16 %127, 9
  br i1 %144, label %126, label %145

145:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %149

146:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %149

147:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  call void @igb_config_collision_dist(ptr noundef %0) #4
  %148 = call i32 @igb_config_fc_after_link_up(ptr noundef %0) #4
  br label %149

149:                                              ; preds = %147, %146, %145, %119, %115
  %150 = phi i32 [ %135, %146 ], [ %148, %147 ], [ %122, %119 ], [ %116, %115 ], [ 0, %145 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_phy_has_link(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #4
  store i16 0, ptr %5, align 2, !annotation !8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %9 = icmp ne i32 %2, 0
  %10 = icmp ugt i32 %2, 999
  %11 = udiv i32 %2, 1000
  br label %12

12:                                               ; preds = %42, %7
  %13 = phi i16 [ 0, %7 ], [ %43, %42 ]
  %14 = load ptr, ptr %8, align 4
  %15 = call i32 %14(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5) #4
  %16 = icmp ne i32 %15, 0
  %17 = and i1 %9, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  br i1 %10, label %19, label %24

19:                                               ; preds = %19, %18
  %20 = phi i32 [ %21, %19 ], [ %11, %18 ]
  %21 = add nsw i32 %20, -1
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #4
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %26, label %19

24:                                               ; preds = %18
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %25(i32 noundef %2) #4
  br label %26

26:                                               ; preds = %24, %19, %12
  %27 = load ptr, ptr %8, align 4
  %28 = call i32 %27(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i16, ptr %5, align 2
  %32 = and i16 %31, 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  br i1 %10, label %35, label %40

35:                                               ; preds = %35, %34
  %36 = phi i32 [ %37, %35 ], [ %11, %34 ]
  %37 = add nsw i32 %36, -1
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #4
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %42, label %35

40:                                               ; preds = %34
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %41(i32 noundef %2) #4
  br label %42

42:                                               ; preds = %40, %35
  %43 = add i16 %13, 1
  %44 = zext i16 %43 to i32
  %45 = icmp ult i32 %44, %1
  br i1 %45, label %12, label %46

46:                                               ; preds = %42, %30, %26, %4
  %47 = phi i1 [ false, %4 ], [ true, %30 ], [ true, %26 ], [ false, %42 ]
  %48 = phi i32 [ 0, %4 ], [ 0, %30 ], [ %28, %26 ], [ 0, %42 ]
  %49 = zext i1 %47 to i8
  store i8 %49, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_config_collision_dist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_config_fc_after_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_phy_force_speed_duplex_igp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 0, ptr %9, align 4
  %10 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #4
  %11 = load i16, ptr %2, align 2
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 13
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 5
  %15 = icmp eq i8 %14, 0
  %16 = or i16 %11, 256
  %17 = and i16 %11, -12609
  %18 = select i1 %15, i16 %16, i16 %17
  %19 = and i8 %13, 12
  %20 = icmp eq i8 %19, 0
  %21 = and i16 %18, -12353
  %22 = or i16 %21, 8192
  %23 = select i1 %20, i16 %21, i16 %22
  store i16 %23, ptr %2, align 2
  call void @igb_config_collision_dist(ptr noundef %0) #4
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27, !prof !9

27:                                               ; preds = %8
  %28 = and i32 %10, -6946
  %29 = select i1 %15, i32 6145, i32 6144
  %30 = or i32 %29, %28
  %31 = or i32 %30, 256
  %32 = select i1 %20, i32 %30, i32 %31
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %32) #4, !srcloc !11
  br label %33

33:                                               ; preds = %27, %8
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = load i16, ptr %2, align 2
  %37 = call i32 %35(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %36) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = load ptr, ptr %4, align 4
  %41 = call i32 %40(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %2) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i16, ptr %2, align 2
  %45 = and i16 %44, -12289
  store i16 %45, ptr %2, align 2
  %46 = load ptr, ptr %34, align 4
  %47 = call i32 %46(ptr noundef %0, i32 noundef 18, i16 noundef zeroext %45) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748) #4
  %51 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 25
  %52 = load i8, ptr %51, align 4, !range !16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = call i32 @igb_phy_has_link(ptr noundef %0, i32 noundef 20, i32 noundef 10000, ptr noundef nonnull %3)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @igb_phy_has_link(ptr noundef %0, i32 noundef 20, i32 noundef 10000, ptr noundef nonnull %3)
  br label %59

59:                                               ; preds = %57, %54, %49, %43, %39, %33, %1
  %60 = phi i32 [ %6, %1 ], [ %37, %33 ], [ %41, %39 ], [ %47, %43 ], [ %55, %54 ], [ %58, %57 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_phy_force_speed_duplex_m88(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %130

13:                                               ; preds = %8
  %14 = load i16, ptr %3, align 2
  %15 = and i16 %14, -97
  store i16 %15, ptr %3, align 2
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 %17(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %15) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %130

20:                                               ; preds = %13, %1
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %130

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 0, ptr %26, align 4
  %27 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #4
  %28 = load i16, ptr %3, align 2
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 13
  %30 = load i8, ptr %29, align 2
  %31 = and i8 %30, 5
  %32 = icmp eq i8 %31, 0
  %33 = or i16 %28, 256
  %34 = and i16 %28, -12609
  %35 = select i1 %32, i16 %33, i16 %34
  %36 = and i8 %30, 12
  %37 = icmp eq i8 %36, 0
  %38 = and i16 %35, -12353
  %39 = or i16 %38, 8192
  %40 = select i1 %37, i16 %38, i16 %39
  store i16 %40, ptr %3, align 2
  call void @igb_config_collision_dist(ptr noundef %0) #4
  %41 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44, !prof !9

44:                                               ; preds = %25
  %45 = and i32 %27, -6946
  %46 = select i1 %32, i32 6145, i32 6144
  %47 = or i32 %46, %45
  %48 = or i32 %47, 256
  %49 = select i1 %37, i32 %47, i32 %48
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 %49) #4, !srcloc !11
  br label %50

50:                                               ; preds = %44, %25
  %51 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %52 = load ptr, ptr %51, align 4
  %53 = load i16, ptr %3, align 2
  %54 = call i32 %52(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %53) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %130

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %57 = load ptr, ptr %21, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  %60 = call i32 %57(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i16, ptr %2, align 2
  %64 = or i16 %63, -32768
  store i16 %64, ptr %2, align 2
  %65 = load ptr, ptr %51, align 4
  %66 = call i32 %65(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %64) #4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748) #4
  br label %72

70:                                               ; preds = %62, %59
  %71 = phi i32 [ %60, %59 ], [ %66, %62 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %130

72:                                               ; preds = %68, %56
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  %73 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 25
  %74 = load i8, ptr %73, align 4, !range !16
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %105, label %76

76:                                               ; preds = %72
  %77 = call i32 @igb_phy_has_link(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %4)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %130

79:                                               ; preds = %76
  %80 = load i8, ptr %4, align 1, !range !16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %84 = load i32, ptr %83, align 4
  switch i32 %84, label %85 [
    i32 21040576, label %102
    i32 21040272, label %102
    i32 21040800, label %102
    i32 21040592, label %102
    i32 21040128, label %102
  ]

85:                                               ; preds = %82
  %86 = load i32, ptr %5, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load ptr, ptr %51, align 4
  %90 = call i32 %89(ptr noundef %0, i32 noundef 29, i16 noundef zeroext 29) #4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %130

92:                                               ; preds = %88
  %93 = load ptr, ptr %51, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = call i32 %93(ptr noundef %0, i32 noundef 30, i16 noundef zeroext 193) #4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %130

98:                                               ; preds = %95
  %99 = load ptr, ptr %51, align 4
  %100 = call i32 %99(ptr noundef %0, i32 noundef 30, i16 noundef zeroext 0) #4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %98, %92, %85, %82, %82, %82, %82, %82, %79
  %103 = call i32 @igb_phy_has_link(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %4)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %102, %72
  %106 = load i32, ptr %5, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %130

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %110 = load i32, ptr %109, align 4
  switch i32 %110, label %111 [
    i32 21040576, label %130
    i32 21040272, label %130
    i32 21040800, label %130
    i32 21040592, label %130
    i32 21040128, label %130
  ]

111:                                              ; preds = %108
  %112 = load ptr, ptr %21, align 4
  %113 = call i32 %112(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %3) #4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load i16, ptr %3, align 2
  %117 = or i16 %116, 112
  store i16 %117, ptr %3, align 2
  %118 = load ptr, ptr %51, align 4
  %119 = call i32 %118(ptr noundef %0, i32 noundef 20, i16 noundef zeroext %117) #4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load ptr, ptr %21, align 4
  %123 = call i32 %122(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i16, ptr %3, align 2
  %127 = or i16 %126, 2048
  store i16 %127, ptr %3, align 2
  %128 = load ptr, ptr %51, align 4
  %129 = call i32 %128(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %127) #4
  br label %130

130:                                              ; preds = %125, %121, %115, %111, %108, %108, %108, %108, %108, %105, %102, %98, %95, %88, %76, %70, %50, %20, %13, %8
  %131 = phi i32 [ %11, %8 ], [ %18, %13 ], [ %23, %20 ], [ %54, %50 ], [ %71, %70 ], [ %77, %76 ], [ %103, %102 ], [ 0, %105 ], [ 0, %108 ], [ %113, %111 ], [ %119, %115 ], [ %123, %121 ], [ %129, %125 ], [ 0, %108 ], [ 0, %108 ], [ 0, %108 ], [ 0, %108 ], [ %100, %98 ], [ %90, %88 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_set_d3_lplu_state(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %57, label %7

7:                                                ; preds = %2
  %8 = call i32 %5(ptr noundef %0, i32 noundef 25, ptr noundef nonnull %3) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %7
  br i1 %1, label %35, label %11

11:                                               ; preds = %10
  %12 = load i16, ptr %3, align 2
  %13 = and i16 %12, -5
  store i16 %13, ptr %3, align 2
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, i32 noundef 25, i16 noundef zeroext %13) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 7
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %57 [
    i32 1, label %21
    i32 2, label %28
  ]

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 4
  %23 = call i32 %22(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = load i16, ptr %3, align 2
  %27 = or i16 %26, 128
  store i16 %27, ptr %3, align 2
  br label %52

28:                                               ; preds = %18
  %29 = load ptr, ptr %4, align 4
  %30 = call i32 %29(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load i16, ptr %3, align 2
  %34 = and i16 %33, -129
  store i16 %34, ptr %3, align 2
  br label %52

35:                                               ; preds = %10
  %36 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 13
  %37 = load i16, ptr %36, align 4
  switch i16 %37, label %57 [
    i16 47, label %38
    i16 15, label %38
    i16 3, label %38
  ]

38:                                               ; preds = %35, %35, %35
  %39 = load i16, ptr %3, align 2
  %40 = or i16 %39, 4
  store i16 %40, ptr %3, align 2
  %41 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %42(ptr noundef %0, i32 noundef 25, i16 noundef zeroext %40) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load ptr, ptr %4, align 4
  %47 = call i32 %46(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i16, ptr %3, align 2
  %51 = and i16 %50, -129
  store i16 %51, ptr %3, align 2
  br label %52

52:                                               ; preds = %49, %32, %25
  %53 = phi ptr [ %14, %32 ], [ %14, %25 ], [ %41, %49 ]
  %54 = phi i16 [ %34, %32 ], [ %27, %25 ], [ %51, %49 ]
  %55 = load ptr, ptr %53, align 4
  %56 = call i32 %55(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %54) #4
  br label %57

57:                                               ; preds = %52, %45, %38, %35, %28, %21, %18, %11, %7, %2
  %58 = phi i32 [ %8, %7 ], [ %43, %38 ], [ %47, %45 ], [ %16, %11 ], [ %23, %21 ], [ %30, %28 ], [ 0, %2 ], [ 0, %18 ], [ 0, %35 ], [ %56, %52 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_check_downshift(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -2
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %9, label %7

7:                                                ; preds = %9, %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 24
  store i8 0, ptr %8, align 1
  br label %30

9:                                                ; preds = %1
  %10 = trunc i32 %5 to i8
  %11 = lshr i8 -97, %10
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %7, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [8 x i32], ptr @switch.table.igb_check_downshift, i32 0, i32 %5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds [8 x i32], ptr @switch.table.igb_check_downshift.1, i32 0, i32 %5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %2) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i16, ptr %2, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %18, %25
  %27 = icmp ne i32 %26, 0
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 24
  %29 = zext i1 %27 to i8
  store i8 %29, ptr %28, align 1
  br label %30

30:                                               ; preds = %23, %14, %7
  %31 = phi i32 [ 0, %7 ], [ %21, %14 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_check_polarity_m88(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = lshr i16 %8, 1
  %10 = and i16 %9, 1
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 6
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_cable_length_m88(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = lshr i16 %8, 7
  %10 = and i16 %9, 7
  %11 = icmp ugt i16 %10, 5
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = zext i16 %10 to i32
  %14 = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %13
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 17
  store i16 %15, ptr %16, align 4
  %17 = add nuw nsw i32 %13, 1
  %18 = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %17
  %19 = load i16, ptr %18, align 2
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 16
  store i16 %19, ptr %20, align 2
  %21 = zext i16 %15 to i32
  %22 = zext i16 %19 to i32
  %23 = add nuw nsw i32 %22, %21
  %24 = lshr i32 %23, 1
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 15
  store i16 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %12, %7, %1
  %28 = phi i32 [ %5, %1 ], [ 0, %12 ], [ -2, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_cable_length_m88_gen2(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %114 [
    i32 21040800, label %7
    i32 21040592, label %7
    i32 21040576, label %7
    i32 21040128, label %7
    i32 21040272, label %77
  ]

7:                                                ; preds = %1, %1, %1, %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef 22, ptr noundef nonnull %4) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %114

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 7) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %114

17:                                               ; preds = %12
  %18 = load ptr, ptr %8, align 4
  %19 = call i32 %18(ptr noundef %0, i32 noundef 21, ptr noundef nonnull %3) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %114

21:                                               ; preds = %17
  %22 = load i16, ptr %3, align 2
  %23 = load ptr, ptr %8, align 4
  %24 = call i32 %23(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %2) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %114

26:                                               ; preds = %21
  %27 = load i16, ptr %2, align 2
  %28 = and i16 %22, 1024
  %29 = icmp eq i16 %28, 0
  %30 = select i1 %29, i16 100, i16 1
  %31 = udiv i16 %27, %30
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 18
  store i16 %31, ptr %33, align 2
  %34 = load ptr, ptr %8, align 4
  %35 = call i32 %34(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %114

37:                                               ; preds = %26
  %38 = load i16, ptr %2, align 2
  %39 = udiv i16 %38, %30
  %40 = zext i16 %39 to i32
  %41 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 18, i32 1
  store i16 %39, ptr %41, align 2
  %42 = load ptr, ptr %8, align 4
  %43 = call i32 %42(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %2) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %114

45:                                               ; preds = %37
  %46 = load i16, ptr %2, align 2
  %47 = udiv i16 %46, %30
  %48 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 18, i32 2
  store i16 %47, ptr %48, align 2
  %49 = load ptr, ptr %8, align 4
  %50 = call i32 %49(ptr noundef %0, i32 noundef 19, ptr noundef nonnull %2) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %114

52:                                               ; preds = %45
  %53 = zext i16 %47 to i32
  %54 = call i32 @llvm.umax.i32(i32 %32, i32 %40)
  %55 = call i32 @llvm.umax.i32(i32 %54, i32 %53)
  %56 = call i32 @llvm.umin.i32(i32 %32, i32 %40)
  %57 = call i32 @llvm.umin.i32(i32 %56, i32 %53)
  %58 = add nuw nsw i32 %40, %32
  %59 = add nuw nsw i32 %58, %53
  %60 = load i16, ptr %2, align 2
  %61 = udiv i16 %60, %30
  %62 = zext i16 %61 to i32
  %63 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 18, i32 3
  store i16 %61, ptr %63, align 2
  %64 = add nuw nsw i32 %59, %62
  %65 = call i32 @llvm.umin.i32(i32 %57, i32 %62)
  %66 = trunc i32 %65 to i16
  %67 = call i32 @llvm.umax.i32(i32 %55, i32 %62)
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 17
  store i16 %66, ptr %69, align 4
  %70 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 16
  store i16 %68, ptr %70, align 2
  %71 = lshr i32 %64, 2
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 15
  store i16 %72, ptr %73, align 4
  %74 = load ptr, ptr %13, align 4
  %75 = load i16, ptr %4, align 2
  %76 = call i32 %74(ptr noundef %0, i32 noundef 22, i16 noundef zeroext %75) #4
  br label %114

77:                                               ; preds = %1
  %78 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 %79(ptr noundef %0, i32 noundef 22, ptr noundef nonnull %4) #4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %84 = load ptr, ptr %83, align 4
  %85 = call i32 %84(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 5) #4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %82
  %88 = load ptr, ptr %78, align 4
  %89 = call i32 %88(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %2) #4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load i16, ptr %2, align 2
  %93 = lshr i16 %92, 7
  %94 = and i16 %93, 7
  %95 = icmp ugt i16 %94, 5
  br i1 %95, label %114, label %96

96:                                               ; preds = %91
  %97 = zext i16 %94 to i32
  %98 = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %97
  %99 = load i16, ptr %98, align 2
  %100 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 17
  store i16 %99, ptr %100, align 4
  %101 = add nuw nsw i32 %97, 1
  %102 = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %101
  %103 = load i16, ptr %102, align 2
  %104 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 16
  store i16 %103, ptr %104, align 2
  %105 = zext i16 %99 to i32
  %106 = zext i16 %103 to i32
  %107 = add nuw nsw i32 %106, %105
  %108 = lshr i32 %107, 1
  %109 = trunc i32 %108 to i16
  %110 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 15
  store i16 %109, ptr %110, align 4
  %111 = load ptr, ptr %83, align 4
  %112 = load i16, ptr %4, align 2
  %113 = call i32 %111(ptr noundef %0, i32 noundef 22, i16 noundef zeroext %112) #4
  br label %114

114:                                              ; preds = %96, %91, %87, %82, %77, %52, %45, %37, %26, %21, %17, %12, %7, %1
  %115 = phi i32 [ %80, %77 ], [ %85, %82 ], [ %89, %87 ], [ %113, %96 ], [ %10, %7 ], [ %15, %12 ], [ %19, %17 ], [ %24, %21 ], [ %35, %26 ], [ %43, %37 ], [ %50, %45 ], [ %76, %52 ], [ -2, %91 ], [ -2, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_cable_length_igp_2(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 4529, ptr noundef nonnull %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %120

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = add i16 %8, 7680
  %10 = icmp ult i16 %9, 8192
  br i1 %10, label %120, label %11

11:                                               ; preds = %7
  %12 = lshr i16 %8, 9
  %13 = zext i16 %12 to i32
  %14 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %13
  %15 = load i16, ptr %14, align 2
  %16 = icmp ne i16 %12, 106
  %17 = icmp ne i16 %12, 112
  %18 = and i1 %16, %17
  %19 = select i1 %18, i16 %12, i16 112
  %20 = icmp eq i16 %15, 0
  %21 = select i1 %20, i16 0, i16 %12
  %22 = zext i16 %15 to i32
  %23 = load ptr, ptr %3, align 4
  %24 = call i32 %23(ptr noundef %0, i32 noundef 4785, ptr noundef nonnull %2) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %120

26:                                               ; preds = %11
  %27 = load i16, ptr %2, align 2
  %28 = add i16 %27, 7680
  %29 = icmp ult i16 %28, 8192
  br i1 %29, label %120, label %30

30:                                               ; preds = %26
  %31 = lshr i16 %27, 9
  %32 = zext i16 %31 to i32
  %33 = zext i16 %19 to i32
  %34 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %33
  %35 = load i16, ptr %34, align 2
  %36 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %32
  %37 = load i16, ptr %36, align 2
  %38 = icmp ugt i16 %35, %37
  %39 = select i1 %38, i16 %31, i16 %19
  %40 = zext i16 %21 to i32
  %41 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %40
  %42 = load i16, ptr %41, align 2
  %43 = icmp ult i16 %42, %37
  %44 = select i1 %43, i16 %31, i16 %21
  %45 = zext i16 %37 to i32
  %46 = add nuw nsw i32 %22, %45
  %47 = load ptr, ptr %3, align 4
  %48 = call i32 %47(ptr noundef %0, i32 noundef 5297, ptr noundef nonnull %2) #4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %120

50:                                               ; preds = %30
  %51 = load i16, ptr %2, align 2
  %52 = add i16 %51, 7680
  %53 = icmp ult i16 %52, 8192
  br i1 %53, label %120, label %54

54:                                               ; preds = %50
  %55 = lshr i16 %51, 9
  %56 = zext i16 %55 to i32
  %57 = zext i16 %39 to i32
  %58 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %57
  %59 = load i16, ptr %58, align 2
  %60 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %56
  %61 = load i16, ptr %60, align 2
  %62 = icmp ugt i16 %59, %61
  %63 = select i1 %62, i16 %55, i16 %39
  %64 = zext i16 %44 to i32
  %65 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %64
  %66 = load i16, ptr %65, align 2
  %67 = icmp ult i16 %66, %61
  %68 = select i1 %67, i16 %55, i16 %44
  %69 = zext i16 %61 to i32
  %70 = add nuw nsw i32 %46, %69
  %71 = load ptr, ptr %3, align 4
  %72 = call i32 %71(ptr noundef %0, i32 noundef 6321, ptr noundef nonnull %2) #4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %120

74:                                               ; preds = %54
  %75 = load i16, ptr %2, align 2
  %76 = add i16 %75, 7680
  %77 = icmp ult i16 %76, 8192
  br i1 %77, label %120, label %78

78:                                               ; preds = %74
  %79 = lshr i16 %75, 9
  %80 = zext i16 %79 to i32
  %81 = zext i16 %63 to i32
  %82 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %81
  %83 = load i16, ptr %82, align 2
  %84 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %80
  %85 = load i16, ptr %84, align 2
  %86 = icmp ugt i16 %83, %85
  %87 = select i1 %86, i16 %79, i16 %63
  %88 = zext i16 %68 to i32
  %89 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %88
  %90 = load i16, ptr %89, align 2
  %91 = icmp ult i16 %90, %85
  %92 = select i1 %91, i16 %79, i16 %68
  %93 = zext i16 %85 to i32
  %94 = add nuw nsw i32 %70, %93
  %95 = zext i16 %87 to i32
  %96 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %95
  %97 = load i16, ptr %96, align 2
  %98 = zext i16 %97 to i32
  %99 = zext i16 %92 to i32
  %100 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %99
  %101 = load i16, ptr %100, align 2
  %102 = zext i16 %101 to i32
  %103 = add nuw nsw i32 %98, %102
  %104 = sub nsw i32 %94, %103
  %105 = lshr i32 %104, 1
  %106 = and i32 %105, 32767
  %107 = call i32 @llvm.smax.i32(i32 %106, i32 15)
  %108 = trunc i32 %107 to i16
  %109 = add nsw i16 %108, -15
  %110 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 17
  store i16 %109, ptr %110, align 4
  %111 = trunc i32 %106 to i16
  %112 = add nuw i16 %111, 15
  %113 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 16
  store i16 %112, ptr %113, align 2
  %114 = zext i16 %109 to i32
  %115 = zext i16 %112 to i32
  %116 = add nuw nsw i32 %114, %115
  %117 = lshr i32 %116, 1
  %118 = trunc i32 %117 to i16
  %119 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 15
  store i16 %118, ptr %119, align 4
  br label %120

120:                                              ; preds = %78, %74, %54, %50, %30, %26, %11, %7, %1
  %121 = phi i32 [ 0, %78 ], [ %5, %1 ], [ -2, %7 ], [ %24, %11 ], [ -2, %26 ], [ %48, %30 ], [ -2, %50 ], [ %72, %54 ], [ -2, %74 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_phy_info_m88(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %76

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #4
  %12 = load ptr, ptr %9, align 4
  %13 = call i32 %12(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load i16, ptr %3, align 2
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  br label %76

21:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  br label %76

22:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  %23 = load ptr, ptr %9, align 4
  %24 = call i32 %23(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %22
  %27 = load i16, ptr %4, align 2
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 22
  %29 = trunc i16 %27 to i8
  %30 = lshr i8 %29, 1
  %31 = and i8 %30, 1
  store i8 %31, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %32 = load ptr, ptr %9, align 4
  %33 = call i32 %32(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %76

36:                                               ; preds = %26
  %37 = load i16, ptr %2, align 2
  %38 = lshr i16 %37, 1
  %39 = and i16 %38, 1
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 6
  store i32 %40, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  %42 = load ptr, ptr %9, align 4
  %43 = call i32 %42(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %4) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %36
  %46 = load i16, ptr %4, align 2
  %47 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 21
  %48 = trunc i16 %46 to i8
  %49 = lshr i8 %48, 6
  %50 = and i8 %49, 1
  store i8 %50, ptr %47, align 4
  %51 = and i16 %46, -16384
  %52 = icmp eq i16 %51, -32768
  br i1 %52, label %53, label %72

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %0) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load ptr, ptr %9, align 4
  %60 = call i32 %59(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %4) #4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i16, ptr %4, align 2
  %64 = lshr i16 %63, 13
  %65 = and i16 %64, 1
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 2
  store i32 %66, ptr %67, align 4
  %68 = lshr i16 %63, 12
  %69 = and i16 %68, 1
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  store i32 %70, ptr %71, align 4
  br label %76

72:                                               ; preds = %45
  %73 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 15
  store i16 255, ptr %73, align 4
  %74 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 2
  store i32 255, ptr %74, align 4
  %75 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  store i32 255, ptr %75, align 4
  br label %76

76:                                               ; preds = %72, %62, %58, %53, %36, %35, %22, %21, %19, %1
  %77 = phi i32 [ %13, %21 ], [ %24, %22 ], [ %33, %35 ], [ %43, %36 ], [ %56, %53 ], [ %60, %58 ], [ 0, %62 ], [ 0, %72 ], [ -3, %1 ], [ -3, %19 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_phy_info_igp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 %6(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #4
  %8 = load ptr, ptr %5, align 4
  %9 = call i32 %8(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i16, ptr %3, align 2
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  br label %73

17:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  br label %73

18:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 22
  store i8 1, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %20 = load ptr, ptr %5, align 4
  %21 = call i32 %20(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i16, ptr %2, align 2
  %25 = icmp ugt i16 %24, -16385
  %26 = select i1 %25, i32 180, i32 17
  %27 = load ptr, ptr %5, align 4
  %28 = call i32 %27(ptr noundef %0, i32 noundef %26, ptr noundef nonnull %2) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23, %18
  %31 = phi i32 [ %28, %23 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %73

32:                                               ; preds = %23
  %33 = select i1 %25, i32 120, i32 2
  %34 = load i16, ptr %2, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 6
  store i32 %38, ptr %39, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  %40 = load ptr, ptr %5, align 4
  %41 = call i32 %40(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %4) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %32
  %44 = load i16, ptr %4, align 2
  %45 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 21
  %46 = lshr i16 %44, 11
  %47 = trunc i16 %46 to i8
  %48 = and i8 %47, 1
  store i8 %48, ptr %45, align 4
  %49 = icmp ugt i16 %44, -16385
  br i1 %49, label %50, label %69

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 %52(ptr noundef %0) #4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load ptr, ptr %5, align 4
  %57 = call i32 %56(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %4) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i16, ptr %4, align 2
  %61 = lshr i16 %60, 13
  %62 = and i16 %61, 1
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 2
  store i32 %63, ptr %64, align 4
  %65 = lshr i16 %60, 12
  %66 = and i16 %65, 1
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  store i32 %67, ptr %68, align 4
  br label %73

69:                                               ; preds = %43
  %70 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 15
  store i16 255, ptr %70, align 4
  %71 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 2
  store i32 255, ptr %71, align 4
  %72 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  store i32 255, ptr %72, align 4
  br label %73

73:                                               ; preds = %69, %59, %55, %50, %32, %30, %17, %15
  %74 = phi i32 [ %9, %17 ], [ %41, %32 ], [ %53, %50 ], [ %57, %55 ], [ 0, %59 ], [ 0, %69 ], [ -3, %15 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_phy_hw_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 22560) #4
  %3 = and i32 %2, 262144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %5
  %11 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #4
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !9

15:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %16 = or i32 %11, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %16) #4, !srcloc !11
  br label %17

17:                                               ; preds = %15, %10
  %18 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #4
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #4
  %22 = load volatile ptr, ptr %12, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %11) #4, !srcloc !11
  br label %25

25:                                               ; preds = %24, %17
  %26 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 8) #4
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 32212200) #4
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %0) #4
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %0) #4
  br label %33

33:                                               ; preds = %25, %5, %1
  %34 = phi i32 [ %8, %5 ], [ %32, %25 ], [ 0, %1 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_phy_init_script_igp3(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 12123, i16 noundef zeroext -28648) #4
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 12114, i16 noundef zeroext 0) #4
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 12209, i16 noundef zeroext -29916) #4
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef 12210, i16 noundef zeroext -1808) #4
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 8208, i16 noundef zeroext 4272) #4
  %13 = load ptr, ptr %2, align 4
  %14 = tail call i32 %13(ptr noundef %0, i32 noundef 8209, i16 noundef zeroext 0) #4
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef 8413, i16 noundef zeroext 9370) #4
  %17 = load ptr, ptr %2, align 4
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef 8414, i16 noundef zeroext 211) #4
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef 10420, i16 noundef zeroext 1230) #4
  %21 = load ptr, ptr %2, align 4
  %22 = tail call i32 %21(ptr noundef %0, i32 noundef 12144, i16 noundef zeroext 10724) #4
  %23 = load ptr, ptr %2, align 4
  %24 = tail call i32 %23(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 320) #4
  %25 = load ptr, ptr %2, align 4
  %26 = tail call i32 %25(ptr noundef %0, i32 noundef 7984, i16 noundef zeroext 5638) #4
  %27 = load ptr, ptr %2, align 4
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef 7985, i16 noundef zeroext -18412) #4
  %29 = load ptr, ptr %2, align 4
  %30 = tail call i32 %29(ptr noundef %0, i32 noundef 7989, i16 noundef zeroext 42) #4
  %31 = load ptr, ptr %2, align 4
  %32 = tail call i32 %31(ptr noundef %0, i32 noundef 7998, i16 noundef zeroext 103) #4
  %33 = load ptr, ptr %2, align 4
  %34 = tail call i32 %33(ptr noundef %0, i32 noundef 8020, i16 noundef zeroext 101) #4
  %35 = load ptr, ptr %2, align 4
  %36 = tail call i32 %35(ptr noundef %0, i32 noundef 8021, i16 noundef zeroext 42) #4
  %37 = load ptr, ptr %2, align 4
  %38 = tail call i32 %37(ptr noundef %0, i32 noundef 8022, i16 noundef zeroext 42) #4
  %39 = load ptr, ptr %2, align 4
  %40 = tail call i32 %39(ptr noundef %0, i32 noundef 8050, i16 noundef zeroext 16304) #4
  %41 = load ptr, ptr %2, align 4
  %42 = tail call i32 %41(ptr noundef %0, i32 noundef 8054, i16 noundef zeroext -16129) #4
  %43 = load ptr, ptr %2, align 4
  %44 = tail call i32 %43(ptr noundef %0, i32 noundef 8055, i16 noundef zeroext 7660) #4
  %45 = load ptr, ptr %2, align 4
  %46 = tail call i32 %45(ptr noundef %0, i32 noundef 8056, i16 noundef zeroext -1553) #4
  %47 = load ptr, ptr %2, align 4
  %48 = tail call i32 %47(ptr noundef %0, i32 noundef 8057, i16 noundef zeroext 528) #4
  %49 = load ptr, ptr %2, align 4
  %50 = tail call i32 %49(ptr noundef %0, i32 noundef 6293, i16 noundef zeroext 3) #4
  %51 = load ptr, ptr %2, align 4
  %52 = tail call i32 %51(ptr noundef %0, i32 noundef 6038, i16 noundef zeroext 8) #4
  %53 = load ptr, ptr %2, align 4
  %54 = tail call i32 %53(ptr noundef %0, i32 noundef 6040, i16 noundef zeroext -12280) #4
  %55 = load ptr, ptr %2, align 4
  %56 = tail call i32 %55(ptr noundef %0, i32 noundef 6296, i16 noundef zeroext -9960) #4
  %57 = load ptr, ptr %2, align 4
  %58 = tail call i32 %57(ptr noundef %0, i32 noundef 6266, i16 noundef zeroext 2048) #4
  %59 = load ptr, ptr %2, align 4
  %60 = tail call i32 %59(ptr noundef %0, i32 noundef 25, i16 noundef zeroext 141) #4
  %61 = load ptr, ptr %2, align 4
  %62 = tail call i32 %61(ptr noundef %0, i32 noundef 27, i16 noundef zeroext 8320) #4
  %63 = load ptr, ptr %2, align 4
  %64 = tail call i32 %63(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 69) #4
  %65 = load ptr, ptr %2, align 4
  %66 = tail call i32 %65(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 4928) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_initialize_M88E1512_phy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 255) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %62

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 17, i16 noundef zeroext 8523) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %62

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 8516) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef 17, i16 noundef zeroext 3112) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 8518) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 4
  %24 = tail call i32 %23(ptr noundef %0, i32 noundef 17, i16 noundef zeroext -19917) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 4
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 8525) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 4
  %32 = tail call i32 %31(ptr noundef %0, i32 noundef 17, i16 noundef zeroext -13300) #4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 4
  %36 = tail call i32 %35(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 8537) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load ptr, ptr %2, align 4
  %40 = tail call i32 %39(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 251) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 4
  %44 = tail call i32 %43(ptr noundef %0, i32 noundef 7, i16 noundef zeroext 13) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load ptr, ptr %2, align 4
  %48 = tail call i32 %47(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 18) #4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load ptr, ptr %2, align 4
  %52 = tail call i32 %51(ptr noundef %0, i32 noundef 20, i16 noundef zeroext -32767) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load ptr, ptr %2, align 4
  %56 = tail call i32 %55(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 0) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = tail call i32 @igb_phy_sw_reset(ptr noundef %0)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %62

62:                                               ; preds = %61, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6, %1
  %63 = phi i32 [ %59, %58 ], [ %4, %1 ], [ %8, %6 ], [ %12, %10 ], [ %16, %14 ], [ %20, %18 ], [ %24, %22 ], [ %28, %26 ], [ %32, %30 ], [ %36, %34 ], [ %40, %38 ], [ %44, %42 ], [ %48, %46 ], [ %52, %50 ], [ %56, %54 ], [ 0, %61 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_initialize_M88E1543_phy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 255) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %70

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 17, i16 noundef zeroext 8523) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 8516) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef 17, i16 noundef zeroext 3112) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 8518) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 4
  %24 = tail call i32 %23(ptr noundef %0, i32 noundef 17, i16 noundef zeroext -19917) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 4
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 8525) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 4
  %32 = tail call i32 %31(ptr noundef %0, i32 noundef 17, i16 noundef zeroext -9204) #4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 4
  %36 = tail call i32 %35(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 8537) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load ptr, ptr %2, align 4
  %40 = tail call i32 %39(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 251) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 4
  %44 = tail call i32 %43(ptr noundef %0, i32 noundef 7, i16 noundef zeroext 3085) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load ptr, ptr %2, align 4
  %48 = tail call i32 %47(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 18) #4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load ptr, ptr %2, align 4
  %52 = tail call i32 %51(ptr noundef %0, i32 noundef 20, i16 noundef zeroext -32767) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load ptr, ptr %2, align 4
  %56 = tail call i32 %55(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 1) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load ptr, ptr %2, align 4
  %60 = tail call i32 %59(ptr noundef %0, i32 noundef 0, i16 noundef zeroext -28352) #4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load ptr, ptr %2, align 4
  %64 = tail call i32 %63(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 0) #4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = tail call i32 @igb_phy_sw_reset(ptr noundef %0)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %70

70:                                               ; preds = %69, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6, %1
  %71 = phi i32 [ %67, %66 ], [ %4, %1 ], [ %8, %6 ], [ %12, %10 ], [ %16, %14 ], [ %20, %18 ], [ %24, %22 ], [ %28, %26 ], [ %32, %30 ], [ %36, %34 ], [ %40, %38 ], [ %44, %42 ], [ %48, %46 ], [ %52, %50 ], [ %56, %54 ], [ %60, %58 ], [ %64, %62 ], [ 0, %69 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_power_up_phy_copper(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #4
  %6 = load i16, ptr %2, align 2
  %7 = and i16 %6, -2049
  store i16 %7, ptr %2, align 2
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %7) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_power_down_phy_copper(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #4
  %6 = load i16, ptr %2, align 2
  %7 = or i16 %6, 2048
  store i16 %7, ptr %2, align 2
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %7) #4
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_phy_force_speed_duplex_82580(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 0, ptr %9, align 4
  %10 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #4
  %11 = load i16, ptr %2, align 2
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 13
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 5
  %15 = icmp eq i8 %14, 0
  %16 = or i16 %11, 256
  %17 = and i16 %11, -12609
  %18 = select i1 %15, i16 %16, i16 %17
  %19 = and i8 %13, 12
  %20 = icmp eq i8 %19, 0
  %21 = and i16 %18, -12353
  %22 = or i16 %21, 8192
  %23 = select i1 %20, i16 %21, i16 %22
  store i16 %23, ptr %2, align 2
  call void @igb_config_collision_dist(ptr noundef %0) #4
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27, !prof !9

27:                                               ; preds = %8
  %28 = and i32 %10, -6946
  %29 = select i1 %15, i32 6145, i32 6144
  %30 = or i32 %29, %28
  %31 = or i32 %30, 256
  %32 = select i1 %20, i32 %30, i32 %31
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %32) #4, !srcloc !11
  br label %33

33:                                               ; preds = %27, %8
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = load i16, ptr %2, align 2
  %37 = call i32 %35(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %36) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = load ptr, ptr %4, align 4
  %41 = call i32 %40(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %2) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i16, ptr %2, align 2
  %45 = and i16 %44, -1537
  store i16 %45, ptr %2, align 2
  %46 = load ptr, ptr %34, align 4
  %47 = call i32 %46(ptr noundef %0, i32 noundef 18, i16 noundef zeroext %45) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748) #4
  %51 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 25
  %52 = load i8, ptr %51, align 4, !range !16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = call i32 @igb_phy_has_link(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %3)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @igb_phy_has_link(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %3)
  br label %59

59:                                               ; preds = %57, %54, %49, %43, %39, %33, %1
  %60 = phi i32 [ %6, %1 ], [ %37, %33 ], [ %41, %39 ], [ %47, %43 ], [ %55, %54 ], [ %58, %57 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_phy_info_82580(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 %6(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #4
  %8 = load ptr, ptr %5, align 4
  %9 = call i32 %8(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i16, ptr %3, align 2
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  br label %64

17:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  br label %64

18:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 22
  store i8 1, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %20 = load ptr, ptr %5, align 4
  %21 = call i32 %20(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %2) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %64

24:                                               ; preds = %18
  %25 = load i16, ptr %2, align 2
  %26 = lshr i16 %25, 10
  %27 = and i16 %26, 1
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 6
  store i32 %28, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  %30 = load ptr, ptr %5, align 4
  %31 = call i32 %30(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %4) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %24
  %34 = load i16, ptr %4, align 2
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 21
  %36 = lshr i16 %34, 11
  %37 = trunc i16 %36 to i8
  %38 = and i8 %37, 1
  store i8 %38, ptr %35, align 4
  %39 = and i16 %34, 768
  %40 = icmp eq i16 %39, 512
  br i1 %40, label %41, label %60

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %0) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load ptr, ptr %5, align 4
  %48 = call i32 %47(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %4) #4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i16, ptr %4, align 2
  %52 = lshr i16 %51, 13
  %53 = and i16 %52, 1
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 2
  store i32 %54, ptr %55, align 4
  %56 = lshr i16 %51, 12
  %57 = and i16 %56, 1
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  store i32 %58, ptr %59, align 4
  br label %64

60:                                               ; preds = %33
  %61 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 15
  store i16 255, ptr %61, align 4
  %62 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 2
  store i32 255, ptr %62, align 4
  %63 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 3
  store i32 255, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %50, %46, %41, %24, %23, %17, %15
  %65 = phi i32 [ %9, %17 ], [ %21, %23 ], [ %31, %24 ], [ %44, %41 ], [ %48, %46 ], [ 0, %50 ], [ 0, %60 ], [ -3, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_cable_length_82580(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 31, ptr noundef nonnull %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = lshr i16 %8, 2
  %10 = and i16 %9, 255
  %11 = icmp eq i16 %10, 255
  %12 = select i1 %11, i32 -2, i32 0
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 15
  store i16 %10, ptr %13, align 4
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i32 [ %5, %1 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154727060}
!11 = !{i64 4835452}
!12 = !{i64 2154731801}
!13 = !{i64 2154736285}
!14 = !{i64 2154741079}
!15 = !{i64 2154745879}
!16 = !{i8 0, i8 2}
!17 = !{i64 2154760429}
!18 = !{i64 2154785524}
!19 = !{i64 2154789667}
