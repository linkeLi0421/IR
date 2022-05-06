; ModuleID = '/llk/IR/drivers/net/ethernet/intel/igb/e1000_i210.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_i210.c"
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
define dso_local i32 @igb_acquire_swfw_sync_i210(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i16 %1 to i32
  %4 = mul nuw i32 %3, 65537
  br label %5

5:                                                ; preds = %13, %2
  %6 = phi i32 [ 0, %2 ], [ %19, %13 ]
  %7 = tail call fastcc i32 @igb_get_hw_semaphore_i210(ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23388) #5
  %11 = and i32 %10, %4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  tail call void @igb_put_hw_semaphore(ptr noundef %0) #5
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #5
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #5
  %19 = add nuw nsw i32 %6, 1
  %20 = icmp eq i32 %19, 200
  br i1 %20, label %29, label %5

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !8

25:                                               ; preds = %21
  %26 = or i32 %10, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %27 = getelementptr i8, ptr %23, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #5, !srcloc !10
  br label %28

28:                                               ; preds = %25, %21
  tail call void @igb_put_hw_semaphore(ptr noundef %0) #5
  br label %29

29:                                               ; preds = %28, %13, %5
  %30 = phi i32 [ 0, %28 ], [ -13, %13 ], [ -13, %5 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @igb_get_hw_semaphore_i210(ptr noundef %0) unnamed_addr #0 {
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
  br i1 %14, label %17, label %6

15:                                               ; preds = %6
  %16 = icmp eq i32 %7, %5
  br i1 %16, label %17, label %33

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 11, i32 0, i32 3
  %19 = load i8, ptr %18, align 1, !range !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %17
  store i8 0, ptr %18, align 1
  tail call void @igb_put_hw_semaphore(ptr noundef %0) #5
  br label %22

22:                                               ; preds = %27, %21
  %23 = phi i32 [ 0, %21 ], [ %29, %27 ]
  %24 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23376) #5
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 10737400) #5
  %29 = add nuw nsw i32 %23, 1
  %30 = icmp eq i32 %23, %4
  br i1 %30, label %54, label %22

31:                                               ; preds = %22
  %32 = icmp eq i32 %23, %5
  br i1 %32, label %54, label %33

33:                                               ; preds = %31, %15
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %35

35:                                               ; preds = %47, %33
  %36 = phi i32 [ 0, %33 ], [ %49, %47 ]
  %37 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23376) #5
  %38 = load volatile ptr, ptr %34, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40, !prof !8

40:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %41 = or i32 %37, 2
  %42 = getelementptr i8, ptr %38, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #5, !srcloc !10
  br label %43

43:                                               ; preds = %40, %35
  %44 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23376) #5
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 10737400) #5
  %49 = add nuw nsw i32 %36, 1
  %50 = icmp eq i32 %36, %4
  br i1 %50, label %53, label %35

51:                                               ; preds = %43
  %52 = icmp eq i32 %36, %5
  br i1 %52, label %53, label %54

53:                                               ; preds = %51, %47
  tail call void @igb_put_hw_semaphore(ptr noundef %0) #5
  br label %54

54:                                               ; preds = %53, %51, %31, %27, %17
  %55 = phi i32 [ -1, %53 ], [ -1, %31 ], [ 0, %51 ], [ -1, %17 ], [ -1, %27 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_put_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_release_swfw_sync_i210(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call fastcc i32 @igb_get_hw_semaphore_i210(ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %3

6:                                                ; preds = %3
  %7 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23388) #5
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !8

11:                                               ; preds = %6
  %12 = zext i16 %1 to i32
  %13 = xor i32 %12, -1
  %14 = and i32 %7, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %15 = getelementptr i8, ptr %9, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #5, !srcloc !10
  br label %16

16:                                               ; preds = %11, %6
  tail call void @igb_put_hw_semaphore(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_invm_version(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %3, i8 0, i32 256, i1 false), !annotation !14
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %10, %4 ]
  %6 = shl nuw nsw i32 %5, 2
  %7 = add nuw nsw i32 %6, 74016
  %8 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %7) #5
  %9 = getelementptr [64 x i32], ptr %3, i32 0, i32 %5
  store i32 %8, ptr %9, align 4
  %10 = add nuw nsw i32 %5, 1
  %11 = icmp eq i32 %10, 64
  br i1 %11, label %12, label %4

12:                                               ; preds = %47, %4
  %13 = phi i32 [ %48, %47 ], [ 1, %4 ]
  %14 = sub nuw nsw i32 62, %13
  %15 = getelementptr [64 x i32], ptr %3, i32 0, i32 %14
  %16 = icmp eq i32 %13, 1
  %17 = load i32, ptr %15, align 4
  br i1 %16, label %18, label %27

18:                                               ; preds = %12
  %19 = and i32 %17, 8184
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %18
  %22 = and i32 %17, 8380416
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = lshr i32 %17, 3
  %26 = and i32 %25, 1023
  br label %50

27:                                               ; preds = %21, %12
  %28 = and i32 %17, 8187
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = and i32 %17, 3
  %32 = icmp ne i32 %31, 0
  %33 = icmp ne i32 %13, 1
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %41

35:                                               ; preds = %30, %27
  %36 = sub nuw nsw i32 63, %13
  %37 = getelementptr [64 x i32], ptr %3, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 13
  %40 = and i32 %39, 1023
  br label %50

41:                                               ; preds = %30
  %42 = and i32 %17, 8380419
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = lshr i32 %17, 3
  %46 = and i32 %45, 1023
  br label %50

47:                                               ; preds = %41
  %48 = add nuw nsw i32 %13, 1
  %49 = icmp eq i32 %48, 62
  br i1 %49, label %58, label %12

50:                                               ; preds = %44, %35, %24, %18
  %51 = phi i32 [ %46, %44 ], [ %40, %35 ], [ %26, %24 ], [ 0, %18 ]
  %52 = lshr i32 %51, 4
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 4
  store i8 %53, ptr %54, align 2
  %55 = trunc i32 %51 to i8
  %56 = and i8 %55, 15
  %57 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 5
  store i8 %56, ptr %57, align 1
  br label %58

58:                                               ; preds = %50, %47
  %59 = phi i32 [ 0, %50 ], [ -19, %47 ]
  br label %60

60:                                               ; preds = %84, %58
  %61 = phi i32 [ 1, %58 ], [ %85, %84 ]
  %62 = sub nuw nsw i32 62, %61
  %63 = getelementptr [64 x i32], ptr %3, i32 0, i32 %62
  %64 = icmp eq i32 %61, 1
  %65 = load i32, ptr %63, align 4
  %66 = and i32 %65, 528482304
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %64, i1 %67, i1 false
  br i1 %68, label %87, label %69

69:                                               ; preds = %60
  %70 = and i32 %65, 528482307
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = and i32 %65, 3
  %74 = icmp ne i32 %73, 0
  %75 = icmp ne i32 %61, 1
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %84

77:                                               ; preds = %72, %69
  %78 = sub nuw nsw i32 63, %61
  %79 = getelementptr [64 x i32], ptr %3, i32 0, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = lshr i32 %80, 23
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 63
  br label %87

84:                                               ; preds = %72
  %85 = add nuw nsw i32 %61, 1
  %86 = icmp eq i32 %85, 62
  br i1 %86, label %90, label %60

87:                                               ; preds = %77, %60
  %88 = phi i8 [ %83, %77 ], [ 0, %60 ]
  %89 = getelementptr inbounds %struct.e1000_fw_version, ptr %1, i32 0, i32 6
  store i8 %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = phi i32 [ 0, %87 ], [ %59, %84 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #5
  ret i32 %91
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @igb_get_flash_presence_i210(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %3 = and i32 %2, 524288
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_valid_led_default_i210(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef %1) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i16, ptr %1, align 2
  switch i16 %8, label %14 [
    i16 0, label %9
    i16 -1, label %9
  ]

9:                                                ; preds = %7, %7
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 3
  %13 = select i1 %12, i16 280, i16 2073
  store i16 %13, ptr %1, align 2
  br label %14

14:                                               ; preds = %9, %7, %2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_read_xmdio_reg(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %2 to i16
  %8 = tail call i32 %6(ptr noundef %0, i32 noundef 13, i16 noundef zeroext %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = load ptr, ptr %5, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 14, i16 noundef zeroext %1) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = or i16 %7, 16384
  %17 = tail call i32 %15(ptr noundef %0, i32 noundef 13, i16 noundef zeroext %16) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0, i32 noundef 14, ptr noundef %3) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 4
  %26 = tail call i32 %25(ptr noundef %0, i32 noundef 13, i16 noundef zeroext 0) #5
  br label %27

27:                                               ; preds = %24, %19, %14, %10, %4
  %28 = phi i32 [ %8, %4 ], [ %12, %10 ], [ %17, %14 ], [ %22, %19 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_write_xmdio_reg(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %2 to i16
  %8 = tail call i32 %6(ptr noundef %0, i32 noundef 13, i16 noundef zeroext %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = load ptr, ptr %5, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 14, i16 noundef zeroext %1) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = or i16 %7, 16384
  %17 = tail call i32 %15(ptr noundef %0, i32 noundef 13, i16 noundef zeroext %16) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 4
  %21 = tail call i32 %20(ptr noundef %0, i32 noundef 14, i16 noundef zeroext %3) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 4
  %25 = tail call i32 %24(ptr noundef %0, i32 noundef 13, i16 noundef zeroext 0) #5
  br label %26

26:                                               ; preds = %23, %19, %14, %10, %4
  %27 = phi i32 [ %8, %4 ], [ %12, %10 ], [ %17, %14 ], [ %21, %19 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_init_nvm_params_i210(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7
  store ptr @igb_acquire_nvm_i210, ptr %2, align 4
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 2
  store ptr @igb_release_nvm_i210, ptr %3, align 4
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 6
  store ptr @igb_valid_led_default_i210, ptr %4, align 4
  %5 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %6 = and i32 %5, 524288
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %1
  %10 = phi i32 [ 4, %8 ], [ 3, %1 ]
  %11 = phi ptr [ @igb_read_invm_i210, %8 ], [ @igb_read_nvm_srrd_i210, %1 ]
  %12 = phi ptr [ null, %8 ], [ @igb_write_nvm_srwr_i210, %1 ]
  %13 = phi ptr [ null, %8 ], [ @igb_validate_nvm_checksum_i210, %1 ]
  %14 = phi ptr [ null, %8 ], [ @igb_update_nvm_checksum_i210, %1 ]
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 1
  store i32 %10, ptr %15, align 4
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  store ptr %11, ptr %16, align 4
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 3
  store ptr %12, ptr %17, align 4
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 5
  store ptr %13, ptr %18, align 4
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 4
  store ptr %14, ptr %19, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_acquire_nvm_i210(ptr noundef %0) #0 {
  %2 = tail call i32 @igb_acquire_swfw_sync_i210(ptr noundef %0, i16 noundef zeroext 1)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_release_nvm_i210(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call fastcc i32 @igb_get_hw_semaphore_i210(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %2

5:                                                ; preds = %2
  %6 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 23388) #5
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !8

10:                                               ; preds = %5
  %11 = and i32 %6, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %12 = getelementptr i8, ptr %8, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #5, !srcloc !10
  br label %13

13:                                               ; preds = %10, %5
  tail call void @igb_put_hw_semaphore(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_read_nvm_srrd_i210(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7
  %6 = zext i16 %2 to i32
  %7 = icmp eq i16 %2, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 2
  br label %14

10:                                               ; preds = %19
  %11 = add nuw nsw i32 %15, 512
  %12 = and i32 %11, 65535
  %13 = icmp ult i32 %12, %6
  br i1 %13, label %14, label %27

14:                                               ; preds = %10, %8
  %15 = phi i32 [ 0, %8 ], [ %12, %10 ]
  %16 = load ptr, ptr %5, align 4
  %17 = tail call i32 %16(ptr noundef %0) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = sub nsw i32 %6, %15
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 512)
  %22 = trunc i32 %21 to i16
  %23 = getelementptr i16, ptr %3, i32 %15
  %24 = tail call i32 @igb_read_nvm_eerd(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %22, ptr noundef %23) #5
  %25 = load ptr, ptr %9, align 4
  tail call void %25(ptr noundef %0) #5
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %10, label %27

27:                                               ; preds = %19, %14, %10, %4
  %28 = phi i32 [ 0, %4 ], [ 13, %14 ], [ %24, %19 ], [ 0, %10 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_write_nvm_srwr_i210(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3) #0 {
  %5 = zext i16 %2 to i32
  %6 = icmp eq i16 %2, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7
  %9 = zext i16 %1 to i32
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 5
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 2
  br label %13

13:                                               ; preds = %61, %7
  %14 = phi i32 [ 0, %7 ], [ %64, %61 ]
  %15 = load ptr, ptr %8, align 4
  %16 = tail call i32 %15(ptr noundef %0) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %66

18:                                               ; preds = %13
  %19 = getelementptr i16, ptr %3, i32 %14
  %20 = load i16, ptr %10, align 4
  %21 = icmp ugt i16 %20, %1
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = sub nsw i32 %5, %14
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 512)
  %25 = trunc i32 %24 to i16
  %26 = zext i16 %20 to i32
  %27 = and i32 %24, 65535
  %28 = sub nsw i32 %26, %9
  %29 = icmp slt i32 %28, %27
  %30 = icmp eq i16 %25, 0
  %31 = or i1 %30, %29
  br i1 %31, label %59, label %32

32:                                               ; preds = %56, %22
  %33 = phi i32 [ %57, %56 ], [ 0, %22 ]
  %34 = getelementptr i16, ptr %19, i32 %33
  %35 = load i16, ptr %34, align 2
  %36 = load volatile ptr, ptr %11, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38, !prof !8

38:                                               ; preds = %32
  %39 = add nuw nsw i32 %33, %9
  %40 = shl i32 %39, 2
  %41 = zext i16 %35 to i32
  %42 = shl nuw i32 %41, 16
  %43 = or i32 %40, %42
  %44 = or i32 %43, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %45 = getelementptr i8, ptr %36, i32 73752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %44) #5, !srcloc !10
  br label %46

46:                                               ; preds = %38, %32
  br label %47

47:                                               ; preds = %52, %46
  %48 = phi i32 [ %54, %52 ], [ 0, %46 ]
  %49 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 73752) #5
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 1073740) #5
  %54 = add nuw nsw i32 %48, 1
  %55 = icmp eq i32 %54, 100000
  br i1 %55, label %56, label %47

56:                                               ; preds = %52, %47
  %57 = add nuw nsw i32 %33, 1
  %58 = icmp eq i32 %57, %27
  br i1 %58, label %61, label %32

59:                                               ; preds = %22, %18
  %60 = load ptr, ptr %12, align 4
  tail call void %60(ptr noundef %0) #5
  br label %66

61:                                               ; preds = %56
  %62 = load ptr, ptr %12, align 4
  tail call void %62(ptr noundef %0) #5
  %63 = add nuw nsw i32 %14, 512
  %64 = and i32 %63, 65535
  %65 = icmp ult i32 %64, %5
  br i1 %65, label %13, label %66

66:                                               ; preds = %61, %59, %13, %4
  %67 = phi i32 [ -1, %59 ], [ 0, %4 ], [ 0, %61 ], [ 13, %13 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_validate_nvm_checksum_i210(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  store ptr @igb_read_nvm_eerd, ptr %7, align 4
  %9 = tail call i32 @igb_validate_nvm_checksum(ptr noundef %0) #5
  store ptr %8, ptr %7, align 4
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #5
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %9, %6 ], [ 13, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_update_nvm_checksum_i210(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !14
  %3 = call i32 @igb_read_nvm_eerd(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %77

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 %7(ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %77

10:                                               ; preds = %15, %5
  %11 = phi i16 [ %18, %15 ], [ 0, %5 ]
  %12 = phi i16 [ %17, %15 ], [ 0, %5 ]
  %13 = call i32 @igb_read_nvm_eerd(ptr noundef %0, i16 noundef zeroext %11, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %10
  %16 = load i16, ptr %2, align 2
  %17 = add i16 %12, %16
  %18 = add nuw nsw i16 %11, 1
  %19 = icmp ult i16 %11, 62
  br i1 %19, label %10, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 5
  %22 = load i16, ptr %21, align 4
  %23 = icmp ugt i16 %22, 63
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28, !prof !8

28:                                               ; preds = %24
  %29 = sub i16 -17734, %17
  %30 = zext i16 %29 to i32
  %31 = shl nuw i32 %30, 16
  %32 = or i32 %31, 253
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  call void @arm_heavy_mb() #5
  %33 = getelementptr i8, ptr %26, i32 73752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #5, !srcloc !10
  br label %34

34:                                               ; preds = %28, %24
  br label %35

35:                                               ; preds = %40, %34
  %36 = phi i32 [ %42, %40 ], [ 0, %34 ]
  %37 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 73752) #5
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 1073740) #5
  %42 = add nuw nsw i32 %36, 1
  %43 = icmp eq i32 %42, 100000
  br i1 %43, label %44, label %35

44:                                               ; preds = %40, %35
  %45 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  call void %46(ptr noundef %0) #5
  br label %47

47:                                               ; preds = %52, %44
  %48 = phi i32 [ 0, %44 ], [ %54, %52 ]
  %49 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %50 = and i32 %49, 67108864
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 1073740) #5
  %54 = add nuw nsw i32 %48, 1
  %55 = icmp eq i32 %54, 20000
  br i1 %55, label %77, label %47

56:                                               ; preds = %47
  %57 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %58 = load volatile ptr, ptr %25, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60, !prof !8

60:                                               ; preds = %56
  %61 = or i32 %57, 8388608
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  call void @arm_heavy_mb() #5
  %62 = getelementptr i8, ptr %58, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %61) #5, !srcloc !10
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %69, %63
  %65 = phi i32 [ %71, %69 ], [ 0, %63 ]
  %66 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 16) #5
  %67 = and i32 %66, 67108864
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 1073740) #5
  %71 = add nuw nsw i32 %65, 1
  %72 = icmp eq i32 %71, 20000
  br i1 %72, label %77, label %64

73:                                               ; preds = %20, %10
  %74 = phi i32 [ -1, %20 ], [ %13, %10 ]
  %75 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 7, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  call void %76(ptr noundef %0) #5
  br label %77

77:                                               ; preds = %73, %69, %64, %52, %5, %1
  %78 = phi i32 [ %3, %1 ], [ -13, %5 ], [ %74, %73 ], [ -1, %69 ], [ 0, %64 ], [ -1, %52 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_read_invm_i210(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3) #0 {
  switch i16 %1, label %208 [
    i16 0, label %5
    i16 15, label %81
    i16 19, label %104
    i16 28, label %127
    i16 31, label %150
    i16 4, label %173
    i16 11, label %196
    i16 12, label %199
    i16 13, label %202
    i16 14, label %205
  ]

5:                                                ; preds = %23, %4
  %6 = phi i16 [ %25, %23 ], [ %1, %4 ]
  %7 = zext i16 %6 to i32
  %8 = shl nuw nsw i32 %7, 2
  %9 = add nuw nsw i32 %8, 74016
  %10 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %9) #5
  %11 = and i32 %10, 7
  switch i32 %11, label %14 [
    i32 0, label %27
    i32 2, label %12
  ]

12:                                               ; preds = %5
  %13 = add nuw nsw i16 %6, 1
  br label %23

14:                                               ; preds = %5
  %15 = icmp eq i32 %11, 4
  %16 = add nuw nsw i16 %6, 8
  %17 = select i1 %15, i16 %16, i16 %6
  %18 = and i32 %10, 65031
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = lshr i32 %10, 16
  %22 = trunc i32 %21 to i16
  store i16 %22, ptr %3, align 2
  br label %27

23:                                               ; preds = %14, %12
  %24 = phi i16 [ %13, %12 ], [ %17, %14 ]
  %25 = add nuw nsw i16 %24, 1
  %26 = icmp ult i16 %24, 63
  br i1 %26, label %5, label %27

27:                                               ; preds = %23, %20, %5
  %28 = phi i32 [ 0, %20 ], [ -19, %23 ], [ -19, %5 ]
  %29 = getelementptr i16, ptr %3, i32 1
  br label %30

30:                                               ; preds = %48, %27
  %31 = phi i16 [ 0, %27 ], [ %50, %48 ]
  %32 = zext i16 %31 to i32
  %33 = shl nuw nsw i32 %32, 2
  %34 = add nuw nsw i32 %33, 74016
  %35 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %34) #5
  %36 = and i32 %35, 7
  switch i32 %36, label %39 [
    i32 0, label %52
    i32 2, label %37
  ]

37:                                               ; preds = %30
  %38 = add nuw nsw i16 %31, 1
  br label %48

39:                                               ; preds = %30
  %40 = icmp eq i32 %36, 4
  %41 = add nuw nsw i16 %31, 8
  %42 = select i1 %40, i16 %41, i16 %31
  %43 = and i32 %35, 65031
  %44 = icmp eq i32 %43, 513
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = lshr i32 %35, 16
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %29, align 2
  br label %52

48:                                               ; preds = %39, %37
  %49 = phi i16 [ %38, %37 ], [ %42, %39 ]
  %50 = add nuw nsw i16 %49, 1
  %51 = icmp ult i16 %49, 63
  br i1 %51, label %30, label %52

52:                                               ; preds = %48, %45, %30
  %53 = phi i32 [ 0, %45 ], [ -19, %48 ], [ -19, %30 ]
  %54 = or i32 %53, %28
  %55 = getelementptr i16, ptr %3, i32 2
  br label %56

56:                                               ; preds = %74, %52
  %57 = phi i16 [ 0, %52 ], [ %76, %74 ]
  %58 = zext i16 %57 to i32
  %59 = shl nuw nsw i32 %58, 2
  %60 = add nuw nsw i32 %59, 74016
  %61 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %60) #5
  %62 = and i32 %61, 7
  switch i32 %62, label %65 [
    i32 0, label %78
    i32 2, label %63
  ]

63:                                               ; preds = %56
  %64 = add nuw nsw i16 %57, 1
  br label %74

65:                                               ; preds = %56
  %66 = icmp eq i32 %62, 4
  %67 = add nuw nsw i16 %57, 8
  %68 = select i1 %66, i16 %67, i16 %57
  %69 = and i32 %61, 65031
  %70 = icmp eq i32 %69, 1025
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = lshr i32 %61, 16
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr %55, align 2
  br label %78

74:                                               ; preds = %65, %63
  %75 = phi i16 [ %64, %63 ], [ %68, %65 ]
  %76 = add nuw nsw i16 %75, 1
  %77 = icmp ult i16 %75, 63
  br i1 %77, label %56, label %78

78:                                               ; preds = %74, %71, %56
  %79 = phi i32 [ 0, %71 ], [ -19, %74 ], [ -19, %56 ]
  %80 = or i32 %54, %79
  br label %209

81:                                               ; preds = %96, %4
  %82 = phi i16 [ %98, %96 ], [ 0, %4 ]
  %83 = zext i16 %82 to i32
  %84 = shl nuw nsw i32 %83, 2
  %85 = add nuw nsw i32 %84, 74016
  %86 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %85) #5
  %87 = and i32 %86, 7
  switch i32 %87, label %90 [
    i32 0, label %103
    i32 2, label %88
  ]

88:                                               ; preds = %81
  %89 = add nuw nsw i16 %82, 1
  br label %96

90:                                               ; preds = %81
  %91 = icmp eq i32 %87, 4
  %92 = add nuw nsw i16 %82, 8
  %93 = select i1 %91, i16 %92, i16 %82
  %94 = and i32 %86, 65031
  %95 = icmp eq i32 %94, 7681
  br i1 %95, label %100, label %96

96:                                               ; preds = %90, %88
  %97 = phi i16 [ %89, %88 ], [ %93, %90 ]
  %98 = add nuw nsw i16 %97, 1
  %99 = icmp ult i16 %97, 63
  br i1 %99, label %81, label %103

100:                                              ; preds = %90
  %101 = lshr i32 %86, 16
  %102 = trunc i32 %101 to i16
  store i16 %102, ptr %3, align 2
  br label %209

103:                                              ; preds = %96, %81
  store i16 29251, ptr %3, align 2
  br label %209

104:                                              ; preds = %119, %4
  %105 = phi i16 [ %121, %119 ], [ 0, %4 ]
  %106 = zext i16 %105 to i32
  %107 = shl nuw nsw i32 %106, 2
  %108 = add nuw nsw i32 %107, 74016
  %109 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %108) #5
  %110 = and i32 %109, 7
  switch i32 %110, label %113 [
    i32 0, label %126
    i32 2, label %111
  ]

111:                                              ; preds = %104
  %112 = add nuw nsw i16 %105, 1
  br label %119

113:                                              ; preds = %104
  %114 = icmp eq i32 %110, 4
  %115 = add nuw nsw i16 %105, 8
  %116 = select i1 %114, i16 %115, i16 %105
  %117 = and i32 %109, 65031
  %118 = icmp eq i32 %117, 9729
  br i1 %118, label %123, label %119

119:                                              ; preds = %113, %111
  %120 = phi i16 [ %112, %111 ], [ %116, %113 ]
  %121 = add nuw nsw i16 %120, 1
  %122 = icmp ult i16 %120, 63
  br i1 %122, label %104, label %126

123:                                              ; preds = %113
  %124 = lshr i32 %109, 16
  %125 = trunc i32 %124 to i16
  store i16 %125, ptr %3, align 2
  br label %209

126:                                              ; preds = %119, %104
  store i16 193, ptr %3, align 2
  br label %209

127:                                              ; preds = %142, %4
  %128 = phi i16 [ %144, %142 ], [ 0, %4 ]
  %129 = zext i16 %128 to i32
  %130 = shl nuw nsw i32 %129, 2
  %131 = add nuw nsw i32 %130, 74016
  %132 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %131) #5
  %133 = and i32 %132, 7
  switch i32 %133, label %136 [
    i32 0, label %149
    i32 2, label %134
  ]

134:                                              ; preds = %127
  %135 = add nuw nsw i16 %128, 1
  br label %142

136:                                              ; preds = %127
  %137 = icmp eq i32 %133, 4
  %138 = add nuw nsw i16 %128, 8
  %139 = select i1 %137, i16 %138, i16 %128
  %140 = and i32 %132, 65031
  %141 = icmp eq i32 %140, 14337
  br i1 %141, label %146, label %142

142:                                              ; preds = %136, %134
  %143 = phi i16 [ %135, %134 ], [ %139, %136 ]
  %144 = add nuw nsw i16 %143, 1
  %145 = icmp ult i16 %143, 63
  br i1 %145, label %127, label %149

146:                                              ; preds = %136
  %147 = lshr i32 %132, 16
  %148 = trunc i32 %147 to i16
  store i16 %148, ptr %3, align 2
  br label %209

149:                                              ; preds = %142, %127
  store i16 388, ptr %3, align 2
  br label %209

150:                                              ; preds = %165, %4
  %151 = phi i16 [ %167, %165 ], [ 0, %4 ]
  %152 = zext i16 %151 to i32
  %153 = shl nuw nsw i32 %152, 2
  %154 = add nuw nsw i32 %153, 74016
  %155 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %154) #5
  %156 = and i32 %155, 7
  switch i32 %156, label %159 [
    i32 0, label %172
    i32 2, label %157
  ]

157:                                              ; preds = %150
  %158 = add nuw nsw i16 %151, 1
  br label %165

159:                                              ; preds = %150
  %160 = icmp eq i32 %156, 4
  %161 = add nuw nsw i16 %151, 8
  %162 = select i1 %160, i16 %161, i16 %151
  %163 = and i32 %155, 65031
  %164 = icmp eq i32 %163, 15873
  br i1 %164, label %169, label %165

165:                                              ; preds = %159, %157
  %166 = phi i16 [ %158, %157 ], [ %162, %159 ]
  %167 = add nuw nsw i16 %166, 1
  %168 = icmp ult i16 %166, 63
  br i1 %168, label %150, label %172

169:                                              ; preds = %159
  %170 = lshr i32 %155, 16
  %171 = trunc i32 %170 to i16
  store i16 %171, ptr %3, align 2
  br label %209

172:                                              ; preds = %165, %150
  store i16 8204, ptr %3, align 2
  br label %209

173:                                              ; preds = %188, %4
  %174 = phi i16 [ %190, %188 ], [ 0, %4 ]
  %175 = zext i16 %174 to i32
  %176 = shl nuw nsw i32 %175, 2
  %177 = add nuw nsw i32 %176, 74016
  %178 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %177) #5
  %179 = and i32 %178, 7
  switch i32 %179, label %182 [
    i32 0, label %195
    i32 2, label %180
  ]

180:                                              ; preds = %173
  %181 = add nuw nsw i16 %174, 1
  br label %188

182:                                              ; preds = %173
  %183 = icmp eq i32 %179, 4
  %184 = add nuw nsw i16 %174, 8
  %185 = select i1 %183, i16 %184, i16 %174
  %186 = and i32 %178, 65031
  %187 = icmp eq i32 %186, 2049
  br i1 %187, label %192, label %188

188:                                              ; preds = %182, %180
  %189 = phi i16 [ %181, %180 ], [ %185, %182 ]
  %190 = add nuw nsw i16 %189, 1
  %191 = icmp ult i16 %189, 63
  br i1 %191, label %173, label %195

192:                                              ; preds = %182
  %193 = lshr i32 %178, 16
  %194 = trunc i32 %193 to i16
  store i16 %194, ptr %3, align 2
  br label %209

195:                                              ; preds = %188, %173
  store i16 -1, ptr %3, align 2
  br label %209

196:                                              ; preds = %4
  %197 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 14
  %198 = load i16, ptr %197, align 2
  store i16 %198, ptr %3, align 2
  br label %209

199:                                              ; preds = %4
  %200 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 13
  %201 = load i16, ptr %200, align 4
  store i16 %201, ptr %3, align 2
  br label %209

202:                                              ; preds = %4
  %203 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 12
  %204 = load i16, ptr %203, align 2
  store i16 %204, ptr %3, align 2
  br label %209

205:                                              ; preds = %4
  %206 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 15
  %207 = load i16, ptr %206, align 4
  store i16 %207, ptr %3, align 2
  br label %209

208:                                              ; preds = %4
  store i16 -1, ptr %3, align 2
  br label %209

209:                                              ; preds = %208, %205, %202, %199, %196, %195, %192, %172, %169, %149, %146, %126, %123, %103, %100, %78
  %210 = phi i32 [ 0, %208 ], [ 0, %205 ], [ 0, %202 ], [ 0, %199 ], [ 0, %196 ], [ 0, %195 ], [ 0, %192 ], [ 0, %172 ], [ 0, %169 ], [ 0, %149 ], [ 0, %146 ], [ 0, %126 ], [ 0, %123 ], [ 0, %103 ], [ 0, %100 ], [ %80, %78 ]
  ret i32 %210
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_pll_workaround_i210(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !14
  %4 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 22528) #5
  %5 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 3588) #5
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !8

9:                                                ; preds = %1
  %10 = and i32 %5, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %11 = getelementptr i8, ptr %7, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #5, !srcloc !10
  br label %12

12:                                               ; preds = %9, %1
  br label %13

13:                                               ; preds = %28, %12
  %14 = phi i16 [ %30, %28 ], [ 0, %12 ]
  %15 = zext i16 %14 to i32
  %16 = shl nuw nsw i32 %15, 2
  %17 = add nuw nsw i32 %16, 74016
  %18 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef %17) #5
  %19 = and i32 %18, 7
  switch i32 %19, label %22 [
    i32 0, label %35
    i32 2, label %20
  ]

20:                                               ; preds = %13
  %21 = add nuw nsw i16 %14, 1
  br label %28

22:                                               ; preds = %13
  %23 = icmp eq i32 %19, 4
  %24 = add nuw nsw i16 %14, 8
  %25 = select i1 %23, i16 %24, i16 %14
  %26 = and i32 %18, 65031
  %27 = icmp eq i32 %26, 5121
  br i1 %27, label %32, label %28

28:                                               ; preds = %22, %20
  %29 = phi i16 [ %21, %20 ], [ %25, %22 ]
  %30 = add nuw nsw i16 %29, 1
  %31 = icmp ult i16 %29, 63
  br i1 %31, label %13, label %35

32:                                               ; preds = %22
  %33 = lshr i32 %18, 16
  %34 = trunc i32 %33 to i16
  br label %35

35:                                               ; preds = %32, %28, %13
  %36 = phi i16 [ %34, %32 ], [ 8239, %28 ], [ 8239, %13 ]
  %37 = or i16 %36, 16
  %38 = tail call i32 @igb_write_phy_reg_82580(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 252) #5
  store i16 255, ptr %2, align 2
  %39 = zext i16 %37 to i32
  %40 = shl nuw i32 %39, 16
  %41 = or i32 %40, 160
  %42 = zext i16 %36 to i32
  %43 = shl nuw i32 %42, 16
  %44 = or i32 %43, 160
  br label %45

45:                                               ; preds = %88, %35
  %46 = phi i32 [ 0, %35 ], [ %89, %88 ]
  %47 = call i32 @igb_read_phy_reg_82580(ptr noundef %0, i32 noundef 14, ptr noundef nonnull %2) #5
  %48 = load i16, ptr %2, align 2
  %49 = and i16 %48, 255
  %50 = icmp eq i16 %49, 255
  br i1 %50, label %51, label %91

51:                                               ; preds = %45
  %52 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 0) #5
  %53 = load volatile ptr, ptr %6, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !8

55:                                               ; preds = %51
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  call void @arm_heavy_mb() #5
  %56 = or i32 %52, -2147483648
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 %56) #5, !srcloc !10
  br label %57

57:                                               ; preds = %55, %51
  %58 = call i32 @igb_rd32(ptr noundef %0, i32 noundef 24) #5
  %59 = load volatile ptr, ptr %6, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61, !prof !8

61:                                               ; preds = %57
  %62 = or i32 %58, 1310720
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  call void @arm_heavy_mb() #5
  %63 = getelementptr i8, ptr %59, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %62) #5, !srcloc !10
  br label %64

64:                                               ; preds = %61, %57
  %65 = load volatile ptr, ptr %6, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !8

67:                                               ; preds = %64
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %68 = getelementptr i8, ptr %65, i32 22528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 0) #5, !srcloc !10
  br label %69

69:                                               ; preds = %67, %64
  %70 = load volatile ptr, ptr %6, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72, !prof !8

72:                                               ; preds = %69
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  call void @arm_heavy_mb() #5
  %73 = getelementptr i8, ptr %70, i32 73764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %41) #5, !srcloc !10
  br label %74

74:                                               ; preds = %72, %69
  call void @igb_read_pci_cfg(ptr noundef %0, i32 noundef 68, ptr noundef nonnull %3) #5
  %75 = load i16, ptr %3, align 2
  %76 = or i16 %75, 3
  store i16 %76, ptr %3, align 2
  call void @igb_write_pci_cfg(ptr noundef %0, i32 noundef 68, ptr noundef nonnull %3) #5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %77 = load i16, ptr %3, align 2
  %78 = and i16 %77, -4
  store i16 %78, ptr %3, align 2
  call void @igb_write_pci_cfg(ptr noundef %0, i32 noundef 68, ptr noundef nonnull %3) #5
  %79 = load volatile ptr, ptr %6, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !8

81:                                               ; preds = %74
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  call void @arm_heavy_mb() #5
  %82 = getelementptr i8, ptr %79, i32 73764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %44) #5, !srcloc !10
  br label %83

83:                                               ; preds = %81, %74
  %84 = load volatile ptr, ptr %6, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !8

86:                                               ; preds = %83
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  call void @arm_heavy_mb() #5
  %87 = getelementptr i8, ptr %84, i32 22528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %4) #5, !srcloc !10
  br label %88

88:                                               ; preds = %86, %83
  %89 = add nuw nsw i32 %46, 1
  %90 = icmp eq i32 %89, 5
  br i1 %90, label %91, label %45

91:                                               ; preds = %88, %45
  %92 = phi i32 [ -2, %88 ], [ 0, %45 ]
  %93 = call i32 @igb_write_phy_reg_82580(ptr noundef %0, i32 noundef 22, i16 noundef zeroext 0) #5
  %94 = load volatile ptr, ptr %6, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96, !prof !8

96:                                               ; preds = %91
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  call void @arm_heavy_mb() #5
  %97 = getelementptr i8, ptr %94, i32 3588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %5) #5, !srcloc !10
  br label %98

98:                                               ; preds = %96, %91
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_phy_reg_82580(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_phy_reg_82580(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_read_pci_cfg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_write_pci_cfg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_get_cfg_done_i210(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i32 [ 100, %1 ], [ %8, %7 ]
  %4 = tail call i32 @igb_rd32(ptr noundef %0, i32 noundef 73776) #5
  %5 = and i32 %4, 262144
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %8 = add nsw i32 %3, -1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2

10:                                               ; preds = %7, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_nvm_eerd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_validate_nvm_checksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2154697854}
!10 = !{i64 4789401}
!11 = !{i8 0, i8 2}
!12 = !{i64 2154691963}
!13 = !{i64 2154701320}
!14 = !{!"auto-init"}
!15 = !{i64 2154705006}
!16 = !{i64 2154712505}
!17 = !{i64 2154716947}
!18 = !{i64 2154720489}
!19 = !{i64 2154723989}
!20 = !{i64 2154727401}
!21 = !{i64 2154730816}
!22 = !{i64 2154734268}
!23 = !{i64 2154737682}
!24 = !{i64 2154741101}
