; ModuleID = '/llk/IR/drivers/net/ethernet/intel/igb/e1000_mbx.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_mbx.c"
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_mbx(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 4
  %11 = load i16, ptr %10, align 4
  %12 = tail call i16 @llvm.umin.i16(i16 %11, i16 %2)
  %13 = tail call i32 %7(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %12, i16 noundef zeroext %3, i1 noundef zeroext %4) #5
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i32 [ %13, %9 ], [ -15, %5 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_write_mbx(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 4
  %6 = load i16, ptr %5, align 4
  %7 = icmp ult i16 %6, %2
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #5
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ], [ -15, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_check_for_msg(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, i16 noundef zeroext %1) #5
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -15, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_check_for_ack(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, i16 noundef zeroext %1) #5
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -15, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_check_for_rst(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, i16 noundef zeroext %1) #5
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -15, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_unlock_mbx(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, i16 noundef zeroext %1) #5
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -15, %2 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @igb_init_mbx_params_pf(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 2
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 3
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 4
  store i16 16, ptr %4, align 4
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1
  store ptr @igb_read_mbx_pf, ptr %5, align 4
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 2
  store ptr @igb_write_mbx_pf, ptr %6, align 4
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 3
  store ptr @igb_read_posted_mbx, ptr %7, align 4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 4
  store ptr @igb_write_posted_mbx, ptr %8, align 4
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 5
  store ptr @igb_check_for_msg_pf, ptr %9, align 4
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 6
  store ptr @igb_check_for_ack_pf, ptr %10, align 4
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 7
  store ptr @igb_check_for_rst_pf, ptr %11, align 4
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 8
  store ptr @igb_release_mbx_lock_pf, ptr %12, align 4
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %13, i8 0, i64 20, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_read_mbx_pf(ptr noundef %0, ptr nocapture noundef writeonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = zext i16 %3 to i32
  %8 = shl nuw nsw i32 %7, 2
  %9 = add nuw nsw i32 %8, 3072
  br label %10

10:                                               ; preds = %26, %5
  %11 = phi i32 [ 10, %5 ], [ %28, %26 ]
  %12 = load volatile ptr, ptr %6, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !8

14:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %15 = getelementptr i8, ptr %12, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 8) #5, !srcloc !10
  br label %16

16:                                               ; preds = %14, %10
  %17 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %9) #5
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = icmp eq i16 %2, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %20
  %23 = shl nuw nsw i32 %7, 6
  %24 = add nuw nsw i32 %23, 2048
  %25 = zext i16 %2 to i32
  br label %30

26:                                               ; preds = %16
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #5
  %28 = add nsw i32 %11, -1
  %29 = icmp eq i32 %11, 0
  br i1 %29, label %51, label %10

30:                                               ; preds = %30, %22
  %31 = phi i32 [ 0, %22 ], [ %36, %30 ]
  %32 = shl nuw nsw i32 %31, 2
  %33 = add nuw nsw i32 %24, %32
  %34 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %33) #5
  %35 = getelementptr i32, ptr %1, i32 %31
  store i32 %34, ptr %35, align 4
  %36 = add nuw nsw i32 %31, 1
  %37 = icmp eq i32 %36, %25
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %20
  %39 = load volatile ptr, ptr %6, align 4
  %40 = icmp eq ptr %39, null
  br i1 %4, label %41, label %44

41:                                               ; preds = %38
  br i1 %40, label %47, label %42, !prof !8

42:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %43 = getelementptr i8, ptr %39, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 2) #5, !srcloc !10
  br label %47

44:                                               ; preds = %38
  br i1 %40, label %47, label %45, !prof !8

45:                                               ; preds = %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %46 = getelementptr i8, ptr %39, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 10) #5, !srcloc !10
  br label %47

47:                                               ; preds = %45, %44, %42, %41
  %48 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 1, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %26
  %52 = phi i32 [ 0, %47 ], [ -15, %26 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_write_mbx_pf(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %6 = zext i16 %3 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = add nuw nsw i32 %7, 3072
  br label %9

9:                                                ; preds = %19, %4
  %10 = phi i32 [ 10, %4 ], [ %21, %19 ]
  %11 = load volatile ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !8

13:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %14 = getelementptr i8, ptr %11, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 8) #5, !srcloc !10
  br label %15

15:                                               ; preds = %13, %9
  %16 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %8) #5
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #5
  %21 = add nsw i32 %10, -1
  %22 = icmp eq i32 %10, 0
  br i1 %22, label %79, label %9

23:                                               ; preds = %15
  %24 = shl nuw i32 1, %6
  %25 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3200) #5
  %26 = and i32 %25, %24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load volatile ptr, ptr %5, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !8

31:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %32 = getelementptr i8, ptr %29, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %24) #5, !srcloc !10
  br label %33

33:                                               ; preds = %31, %28
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 1, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = shl i32 65536, %6
  %39 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3200) #5
  %40 = and i32 %39, %38
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load volatile ptr, ptr %5, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !8

45:                                               ; preds = %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %46 = getelementptr i8, ptr %43, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %38) #5, !srcloc !10
  br label %47

47:                                               ; preds = %45, %42
  %48 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 1, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %37
  %52 = icmp eq i16 %2, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %51
  %54 = shl nuw nsw i32 %6, 6
  %55 = add nuw nsw i32 %54, 2048
  %56 = zext i16 %2 to i32
  br label %57

57:                                               ; preds = %67, %53
  %58 = phi i32 [ 0, %53 ], [ %68, %67 ]
  %59 = load volatile ptr, ptr %5, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61, !prof !8

61:                                               ; preds = %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %62 = getelementptr i32, ptr %1, i32 %58
  %63 = load i32, ptr %62, align 4
  %64 = shl nuw nsw i32 %58, 2
  %65 = add nuw nsw i32 %55, %64
  %66 = getelementptr i8, ptr %59, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %63) #5, !srcloc !10
  br label %67

67:                                               ; preds = %61, %57
  %68 = add nuw nsw i32 %58, 1
  %69 = icmp eq i32 %68, %56
  br i1 %69, label %70, label %57

70:                                               ; preds = %67, %51
  %71 = load volatile ptr, ptr %5, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73, !prof !8

73:                                               ; preds = %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %74 = getelementptr i8, ptr %71, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 1) #5, !srcloc !10
  br label %75

75:                                               ; preds = %73, %70
  %76 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4
  br label %79

79:                                               ; preds = %75, %19
  %80 = phi i32 [ 0, %75 ], [ -15, %19 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_read_posted_mbx(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef %0, i16 noundef zeroext %3) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 3
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi i32 [ %10, %19 ], [ %23, %25 ]
  %23 = add i32 %22, -1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %20, align 4
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #5
  %28 = load ptr, ptr %13, align 4
  %29 = tail call i32 %28(ptr noundef %0, i16 noundef zeroext %3) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %21

31:                                               ; preds = %21
  store i32 0, ptr %9, align 4
  br label %35

32:                                               ; preds = %25, %16, %12
  %33 = load ptr, ptr %5, align 4
  %34 = tail call i32 %33(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext true) #5
  br label %35

35:                                               ; preds = %32, %31, %8, %4
  %36 = phi i32 [ %34, %32 ], [ -15, %4 ], [ -15, %31 ], [ -15, %8 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_write_posted_mbx(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %6(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load i32, ptr %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %0, i16 noundef zeroext %3) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 3
  br label %27

27:                                               ; preds = %31, %25
  %28 = phi i32 [ %16, %25 ], [ %29, %31 ]
  %29 = add i32 %28, -1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %26, align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %32) #5
  %34 = load ptr, ptr %19, align 4
  %35 = tail call i32 %34(ptr noundef %0, i16 noundef zeroext %3) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %27

37:                                               ; preds = %27
  store i32 0, ptr %9, align 4
  br label %38

38:                                               ; preds = %37, %31, %22, %18, %15, %12, %8, %4
  %39 = phi i32 [ %13, %12 ], [ -15, %8 ], [ -15, %4 ], [ 0, %18 ], [ -15, %37 ], [ -15, %15 ], [ 0, %22 ], [ 0, %31 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_check_for_msg_pf(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = zext i16 %1 to i32
  %4 = shl nuw i32 1, %3
  %5 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3200) #5
  %6 = and i32 %5, %4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !8

12:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr i8, ptr %10, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %4) #5, !srcloc !10
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 1, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i32 [ 0, %14 ], [ -15, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_check_for_ack_pf(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = zext i16 %1 to i32
  %4 = shl i32 65536, %3
  %5 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3200) #5
  %6 = and i32 %5, %4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !8

12:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr i8, ptr %10, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %4) #5, !srcloc !10
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 1, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i32 [ 0, %14 ], [ -15, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_check_for_rst_pf(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3208) #5
  %4 = zext i16 %1 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !8

12:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr i8, ptr %10, i32 3208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %5) #5, !srcloc !10
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 9, i32 1, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i32 [ 0, %14 ], [ -15, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_release_mbx_lock_pf(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = zext i16 %1 to i32
  %4 = shl nuw nsw i32 %3, 2
  %5 = add nuw nsw i32 %4, 3072
  %6 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %5) #5
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !8

13:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %14 = and i32 %6, -9
  %15 = getelementptr i8, ptr %11, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #5, !srcloc !10
  br label %16

16:                                               ; preds = %13, %9, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2154676843}
!10 = !{i64 2408388}
!11 = !{i64 2154692059}
!12 = !{i64 2154695638}
!13 = !{i64 2154669567}
!14 = !{i64 2154684848}
!15 = !{i64 2154688410}
!16 = !{i64 2154673272}
!17 = !{i64 2154681163}
