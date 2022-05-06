; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/phy.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/phy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@e1000_m88_cable_length_table = internal unnamed_addr constant [7 x i16] [i16 0, i16 50, i16 80, i16 110, i16 140, i16 140, i16 255], align 2
@e1000_igp_2_cable_length_table = internal unnamed_addr constant [113 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3, i16 5, i16 8, i16 11, i16 13, i16 16, i16 18, i16 21, i16 0, i16 0, i16 0, i16 3, i16 6, i16 10, i16 13, i16 16, i16 19, i16 23, i16 26, i16 29, i16 32, i16 35, i16 38, i16 41, i16 6, i16 10, i16 14, i16 18, i16 22, i16 26, i16 30, i16 33, i16 37, i16 41, i16 44, i16 48, i16 51, i16 54, i16 58, i16 61, i16 21, i16 26, i16 31, i16 35, i16 40, i16 44, i16 49, i16 53, i16 57, i16 61, i16 65, i16 68, i16 72, i16 75, i16 79, i16 82, i16 40, i16 45, i16 51, i16 56, i16 61, i16 66, i16 70, i16 75, i16 79, i16 83, i16 87, i16 91, i16 94, i16 98, i16 101, i16 104, i16 60, i16 66, i16 72, i16 77, i16 82, i16 87, i16 92, i16 96, i16 100, i16 104, i16 108, i16 111, i16 114, i16 117, i16 119, i16 121, i16 83, i16 89, i16 95, i16 100, i16 105, i16 109, i16 113, i16 116, i16 119, i16 122, i16 124, i16 104, i16 109, i16 114, i16 118, i16 121, i16 124], align 2
@switch.table.e1000e_check_downshift = private unnamed_addr constant [8 x i32] [i32 17, i32 17, i32 19, i32 17, i32 19, i32 17, i32 17, i32 17], align 4
@switch.table.e1000e_check_downshift.1 = private unnamed_addr constant [8 x i32] [i32 32, i32 32, i32 32768, i32 32, i32 32768, i32 32, i32 32, i32 32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_check_reset_block_generic(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 22560
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = and i32 %5, 262144
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 0, i32 12
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_phy_id(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 9
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 11
  %9 = call i32 %4(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %6
  %12 = load i16, ptr %2, align 2
  %13 = zext i16 %12 to i32
  %14 = shl nuw i32 %13, 16
  store i32 %14, ptr %7, align 4
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #5
  %15 = load ptr, ptr %3, align 4
  %16 = call i32 %15(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %11
  %19 = load i16, ptr %2, align 2
  %20 = and i16 %19, -16
  %21 = zext i16 %20 to i32
  %22 = load i32, ptr %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, ptr %7, align 4
  %24 = and i16 %19, 15
  %25 = zext i16 %24 to i32
  store i32 %25, ptr %8, align 4
  switch i32 %23, label %45 [
    i32 0, label %26
    i32 -16, label %26
  ]

26:                                               ; preds = %18, %18
  %27 = load ptr, ptr %3, align 4
  %28 = call i32 %27(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i16, ptr %2, align 2
  %32 = zext i16 %31 to i32
  %33 = shl nuw i32 %32, 16
  store i32 %33, ptr %7, align 4
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #5
  %34 = load ptr, ptr %3, align 4
  %35 = call i32 %34(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i16, ptr %2, align 2
  %39 = and i16 %38, -16
  %40 = zext i16 %39 to i32
  %41 = load i32, ptr %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, ptr %7, align 4
  %43 = and i16 %38, 15
  %44 = zext i16 %43 to i32
  store i32 %44, ptr %8, align 4
  br label %45

45:                                               ; preds = %37, %30, %26, %18, %11, %6, %1
  %46 = phi i32 [ 0, %1 ], [ %9, %6 ], [ %16, %11 ], [ 0, %18 ], [ %28, %26 ], [ %35, %30 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_reset_dsp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 30, i16 noundef zeroext 193) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 30, i16 noundef zeroext 0) #5
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ %4, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_mdic(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 31
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = shl nuw nsw i32 %1, 16
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 21
  %10 = or i32 %6, %9
  %11 = or i32 %10, 134217728
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %11) #5
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %13

13:                                               ; preds = %13, %5
  %14 = phi i32 [ 0, %5 ], [ %21, %13 ]
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 10737400) #5
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr i8, ptr %16, i32 32
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %19 = and i32 %18, 268435456
  %20 = icmp ne i32 %19, 0
  %21 = add nuw nsw i32 %14, 1
  %22 = icmp eq i32 %21, 1920
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %13

24:                                               ; preds = %13
  %25 = and i32 %18, 1342177280
  %26 = icmp eq i32 %25, 268435456
  %27 = lshr i32 %18, 16
  %28 = and i32 %27, 31
  %29 = icmp eq i32 %28, %1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = trunc i32 %18 to i16
  store i16 %32, ptr %2, align 2
  %33 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 21474800) #5
  br label %38

38:                                               ; preds = %36, %31, %24, %3
  %39 = phi i32 [ -4, %3 ], [ -2, %24 ], [ 0, %36 ], [ 0, %31 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_mdic(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 31
  br i1 %4, label %39, label %5

5:                                                ; preds = %3
  %6 = zext i16 %2 to i32
  %7 = shl nuw nsw i32 %1, 16
  %8 = or i32 %7, %6
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 21
  %12 = or i32 %8, %11
  %13 = or i32 %12, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %13) #5
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %15

15:                                               ; preds = %15, %5
  %16 = phi i32 [ 0, %5 ], [ %23, %15 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 10737400) #5
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = and i32 %20, 268435456
  %22 = icmp ne i32 %21, 0
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, 1920
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %15

26:                                               ; preds = %15
  %27 = and i32 %20, 1342177280
  %28 = icmp eq i32 %27, 268435456
  %29 = lshr i32 %20, 16
  %30 = and i32 %29, 31
  %31 = icmp eq i32 %30, %1
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 21474800) #5
  br label %39

39:                                               ; preds = %37, %33, %26, %3
  %40 = phi i32 [ -4, %3 ], [ -2, %26 ], [ 0, %37 ], [ 0, %33 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_m88(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %3
  %9 = and i32 %1, 31
  %10 = shl nuw nsw i32 %9, 16
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 21
  %14 = or i32 %13, %10
  %15 = or i32 %14, 134217728
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %15) #5
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %17

17:                                               ; preds = %17, %8
  %18 = phi i32 [ 0, %8 ], [ %25, %17 ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 10737400) #5
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %20, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %23 = and i32 %22, 268435456
  %24 = icmp ne i32 %23, 0
  %25 = add nuw nsw i32 %18, 1
  %26 = icmp eq i32 %25, 1920
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %17

28:                                               ; preds = %17
  %29 = and i32 %22, 1342177280
  %30 = icmp eq i32 %29, 268435456
  %31 = lshr i32 %22, 16
  %32 = and i32 %31, 31
  %33 = icmp eq i32 %32, %9
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = trunc i32 %22 to i16
  store i16 %36, ptr %2, align 2
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 21474800) #5
  br label %42

42:                                               ; preds = %40, %35, %28
  %43 = phi i32 [ -2, %28 ], [ 0, %40 ], [ 0, %35 ]
  %44 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %0) #5
  br label %46

46:                                               ; preds = %42, %3
  %47 = phi i32 [ %43, %42 ], [ %6, %3 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_m88(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %3
  %9 = and i32 %1, 31
  %10 = zext i16 %2 to i32
  %11 = shl nuw nsw i32 %9, 16
  %12 = or i32 %11, %10
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 21
  %16 = or i32 %15, %12
  %17 = or i32 %16, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %17) #5
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %19

19:                                               ; preds = %19, %8
  %20 = phi i32 [ 0, %8 ], [ %27, %19 ]
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 10737400) #5
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr i8, ptr %22, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %25 = and i32 %24, 268435456
  %26 = icmp ne i32 %25, 0
  %27 = add nuw nsw i32 %20, 1
  %28 = icmp eq i32 %27, 1920
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %19

30:                                               ; preds = %19
  %31 = and i32 %24, 1342177280
  %32 = icmp eq i32 %31, 268435456
  %33 = lshr i32 %24, 16
  %34 = and i32 %33, 31
  %35 = icmp eq i32 %34, %9
  %36 = select i1 %32, i1 %35, i1 false
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 21474800) #5
  br label %43

43:                                               ; preds = %41, %37, %30
  %44 = phi i32 [ -2, %30 ], [ 0, %41 ], [ 0, %37 ]
  %45 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %0) #5
  br label %47

47:                                               ; preds = %43, %3
  %48 = phi i32 [ %44, %43 ], [ %6, %3 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_set_page_igp(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 1, ptr %3, align 4
  %4 = zext i16 %1 to i32
  %5 = or i32 %4, 71237632
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %5) #5
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 0, %2 ], [ %15, %7 ]
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 10737400) #5
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %13 = and i32 %12, 268435456
  %14 = icmp ne i32 %13, 0
  %15 = add nuw nsw i32 %8, 1
  %16 = icmp eq i32 %15, 1920
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %7

18:                                               ; preds = %7
  %19 = and i32 %12, 1344208896
  %20 = icmp eq i32 %19, 270467072
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #5
  br label %27

27:                                               ; preds = %25, %21, %18
  %28 = phi i32 [ -2, %18 ], [ 0, %25 ], [ 0, %21 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_igp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__e1000e_read_phy_reg_igp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__e1000e_read_phy_reg_igp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  br i1 %3, label %12, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %81, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %81

12:                                               ; preds = %9, %4
  %13 = icmp ugt i32 %1, 15
  br i1 %13, label %14, label %42

14:                                               ; preds = %12
  %15 = and i32 %1, 65535
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 21
  %19 = or i32 %18, %15
  %20 = or i32 %19, 69140480
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %20) #5
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %22

22:                                               ; preds = %22, %14
  %23 = phi i32 [ 0, %14 ], [ %30, %22 ]
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 10737400) #5
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr i8, ptr %25, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %28 = and i32 %27, 268435456
  %29 = icmp ne i32 %28, 0
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, 1920
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %22

33:                                               ; preds = %22
  %34 = and i32 %27, 1344208896
  %35 = icmp eq i32 %34, 270467072
  br i1 %35, label %36, label %76

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 21474800) #5
  br label %42

42:                                               ; preds = %40, %36, %12
  %43 = and i32 %1, 31
  %44 = shl nuw nsw i32 %43, 16
  %45 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 21
  %48 = or i32 %47, %44
  %49 = or i32 %48, 134217728
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %49) #5
  %50 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %51

51:                                               ; preds = %51, %42
  %52 = phi i32 [ 0, %42 ], [ %59, %51 ]
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 10737400) #5
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr i8, ptr %54, i32 32
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %57 = and i32 %56, 268435456
  %58 = icmp ne i32 %57, 0
  %59 = add nuw nsw i32 %52, 1
  %60 = icmp eq i32 %59, 1920
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %62, label %51

62:                                               ; preds = %51
  %63 = and i32 %56, 1342177280
  %64 = icmp eq i32 %63, 268435456
  %65 = lshr i32 %56, 16
  %66 = and i32 %65, 31
  %67 = icmp eq i32 %66, %43
  %68 = select i1 %64, i1 %67, i1 false
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = trunc i32 %56 to i16
  store i16 %70, ptr %2, align 2
  %71 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 21474800) #5
  br label %76

76:                                               ; preds = %74, %69, %62, %33
  %77 = phi i32 [ -2, %33 ], [ -2, %62 ], [ 0, %74 ], [ 0, %69 ]
  br i1 %3, label %81, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %80 = load ptr, ptr %79, align 4
  tail call void %80(ptr noundef %0) #5
  br label %81

81:                                               ; preds = %78, %76, %9, %5
  %82 = phi i32 [ 0, %5 ], [ %10, %9 ], [ %77, %78 ], [ %77, %76 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_igp_locked(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__e1000e_read_phy_reg_igp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_igp(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__e1000e_write_phy_reg_igp(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__e1000e_write_phy_reg_igp(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  br i1 %3, label %12, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %82, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %82

12:                                               ; preds = %9, %4
  %13 = icmp ugt i32 %1, 15
  br i1 %13, label %14, label %42

14:                                               ; preds = %12
  %15 = and i32 %1, 65535
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 21
  %19 = or i32 %18, %15
  %20 = or i32 %19, 69140480
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %20) #5
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %22

22:                                               ; preds = %22, %14
  %23 = phi i32 [ 0, %14 ], [ %30, %22 ]
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 10737400) #5
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr i8, ptr %25, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %28 = and i32 %27, 268435456
  %29 = icmp ne i32 %28, 0
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, 1920
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %22

33:                                               ; preds = %22
  %34 = and i32 %27, 1344208896
  %35 = icmp eq i32 %34, 270467072
  br i1 %35, label %36, label %77

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 21474800) #5
  br label %42

42:                                               ; preds = %40, %36, %12
  %43 = and i32 %1, 31
  %44 = zext i16 %2 to i32
  %45 = shl nuw nsw i32 %43, 16
  %46 = or i32 %45, %44
  %47 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %48, 21
  %50 = or i32 %49, %46
  %51 = or i32 %50, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %51) #5
  %52 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %53

53:                                               ; preds = %53, %42
  %54 = phi i32 [ 0, %42 ], [ %61, %53 ]
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 10737400) #5
  %56 = load ptr, ptr %52, align 4
  %57 = getelementptr i8, ptr %56, i32 32
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %59 = and i32 %58, 268435456
  %60 = icmp ne i32 %59, 0
  %61 = add nuw nsw i32 %54, 1
  %62 = icmp eq i32 %61, 1920
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %64, label %53

64:                                               ; preds = %53
  %65 = and i32 %58, 1342177280
  %66 = icmp eq i32 %65, 268435456
  %67 = lshr i32 %58, 16
  %68 = and i32 %67, 31
  %69 = icmp eq i32 %68, %43
  %70 = select i1 %66, i1 %69, i1 false
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 10
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 21474800) #5
  br label %77

77:                                               ; preds = %75, %71, %64, %33
  %78 = phi i32 [ -2, %33 ], [ -2, %64 ], [ 0, %75 ], [ 0, %71 ]
  br i1 %3, label %82, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %81 = load ptr, ptr %80, align 4
  tail call void %81(ptr noundef %0) #5
  br label %82

82:                                               ; preds = %79, %77, %9, %5
  %83 = phi i32 [ 0, %5 ], [ %10, %9 ], [ %78, %79 ], [ %78, %77 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_igp_locked(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__e1000e_write_phy_reg_igp(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_kmrn_reg(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = shl i32 %1, 16
  %12 = and i32 %11, 2031616
  %13 = or i32 %12, 2097152
  tail call void @__ew32(ptr noundef %0, i32 noundef 52, i32 noundef %13) #5
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496) #5
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr i8, ptr %19, i32 52
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %22 = trunc i32 %21 to i16
  store i16 %22, ptr %2, align 2
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %0) #5
  br label %25

25:                                               ; preds = %10, %7, %3
  %26 = phi i32 [ %8, %7 ], [ 0, %10 ], [ 0, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_kmrn_reg_locked(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = shl i32 %1, 16
  %5 = and i32 %4, 2031616
  %6 = or i32 %5, 2097152
  tail call void @__ew32(ptr noundef %0, i32 noundef 52, i32 noundef %6) #5
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #5
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %2, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_kmrn_reg(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = shl i32 %1, 16
  %12 = and i32 %11, 2031616
  %13 = zext i16 %2 to i32
  %14 = or i32 %12, %13
  tail call void @__ew32(ptr noundef %0, i32 noundef 52, i32 noundef %14) #5
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 429496) #5
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %0) #5
  br label %22

22:                                               ; preds = %10, %7, %3
  %23 = phi i32 [ %8, %7 ], [ 0, %10 ], [ 0, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_kmrn_reg_locked(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = shl i32 %1, 16
  %5 = and i32 %4, 2031616
  %6 = zext i16 %2 to i32
  %7 = or i32 %5, %6
  tail call void @__ew32(ptr noundef %0, i32 noundef 52, i32 noundef %7) #5
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 429496) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_copper_link_setup_82577(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !10
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 22, ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %1
  %9 = load i16, ptr %3, align 2
  %10 = or i16 %9, -29696
  store i16 %10, ptr %3, align 2
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef %0, i32 noundef 22, i16 noundef zeroext %10) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 4
  %17 = call i32 %16(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %3) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = load i16, ptr %3, align 2
  %21 = and i16 %20, -1537
  store i16 %21, ptr %3, align 2
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 18
  %23 = load i8, ptr %22, align 2
  switch i8 %23, label %26 [
    i8 1, label %28
    i8 2, label %24
  ]

24:                                               ; preds = %19
  %25 = or i16 %21, 512
  store i16 %25, ptr %3, align 2
  br label %28

26:                                               ; preds = %19
  %27 = or i16 %21, 1024
  store i16 %27, ptr %3, align 2
  br label %28

28:                                               ; preds = %26, %24, %19
  %29 = phi i16 [ %27, %26 ], [ %25, %24 ], [ %21, %19 ]
  %30 = load ptr, ptr %11, align 4
  %31 = call i32 %30(ptr noundef %0, i32 noundef 18, i16 noundef zeroext %29) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %34 = load ptr, ptr %4, align 4
  %35 = call i32 %34(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i16, ptr %2, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 4096
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %39, 2048
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 2, i32 1
  %45 = select i1 %41, i32 3, i32 %44
  %46 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 4
  %48 = load i32, ptr %47, align 4
  switch i32 %48, label %56 [
    i32 1, label %49
    i32 2, label %51
    i32 3, label %54
  ]

49:                                               ; preds = %37
  %50 = or i16 %38, 6144
  store i16 %50, ptr %2, align 2
  br label %56

51:                                               ; preds = %37
  %52 = and i16 %38, -6145
  %53 = or i16 %52, 4096
  store i16 %53, ptr %2, align 2
  br label %56

54:                                               ; preds = %37
  %55 = and i16 %38, -4097
  store i16 %55, ptr %2, align 2
  br label %56

56:                                               ; preds = %54, %51, %49, %37
  %57 = phi i16 [ %55, %54 ], [ %38, %37 ], [ %53, %51 ], [ %50, %49 ]
  %58 = load ptr, ptr %11, align 4
  %59 = call i32 %58(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %57) #5
  br label %60

60:                                               ; preds = %56, %33
  %61 = phi i32 [ %59, %56 ], [ %35, %33 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %62

62:                                               ; preds = %60, %28, %15, %8, %1
  %63 = phi i32 [ %61, %60 ], [ %6, %1 ], [ %13, %8 ], [ %17, %15 ], [ %31, %28 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_set_master_slave_mode(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2) #5
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
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 5
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 4
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
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %27) #5
  br label %31

31:                                               ; preds = %26, %1
  %32 = phi i32 [ %30, %26 ], [ %5, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_copper_link_setup_m88(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %130

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 8
  %11 = load i16, ptr %2, align 2
  %12 = or i16 %11, 2048
  %13 = select i1 %10, i16 %11, i16 %12
  %14 = and i16 %13, -97
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 18
  %16 = load i8, ptr %15, align 2
  switch i8 %16, label %21 [
    i8 1, label %23
    i8 2, label %17
    i8 3, label %19
  ]

17:                                               ; preds = %7
  %18 = or i16 %14, 32
  br label %23

19:                                               ; preds = %7
  %20 = or i16 %14, 64
  br label %23

21:                                               ; preds = %7
  %22 = or i16 %13, 96
  br label %23

23:                                               ; preds = %21, %19, %17, %7
  %24 = phi i16 [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %14, %7 ]
  %25 = and i16 %24, -3
  store i16 %25, ptr %2, align 2
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 19
  %27 = load i8, ptr %26, align 1, !range !11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = or i16 %24, 2
  store i16 %30, ptr %2, align 2
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i16 [ %30, %29 ], [ %25, %23 ]
  br i1 %10, label %33, label %53

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 21040305
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = and i16 %32, -2049
  store i16 %38, ptr %2, align 2
  %39 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 %40(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %38) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %130

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 %45(ptr noundef %0) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %130

48:                                               ; preds = %43
  %49 = load i16, ptr %2, align 2
  br label %50

50:                                               ; preds = %48, %33
  %51 = phi i16 [ %49, %48 ], [ %32, %33 ]
  %52 = or i16 %51, 2048
  store i16 %52, ptr %2, align 2
  br label %53

53:                                               ; preds = %50, %31
  %54 = phi i16 [ %52, %50 ], [ %32, %31 ]
  %55 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 %56(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %54) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %130

59:                                               ; preds = %53
  %60 = load i32, ptr %8, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %93

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 11
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %66, label %108

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 21040305
  br i1 %69, label %108, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %3, align 4
  %72 = call i32 %71(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %2) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %130

74:                                               ; preds = %70
  %75 = load i16, ptr %2, align 2
  %76 = or i16 %75, 112
  %77 = load i32, ptr %63, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, ptr %67, align 4
  %81 = icmp eq i32 %80, 21040320
  br i1 %81, label %83, label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi i16 [ -3841, %82 ], [ -3585, %79 ]
  %85 = phi i16 [ 256, %82 ], [ 2048, %79 ]
  %86 = and i16 %76, %84
  %87 = or i16 %86, %85
  store i16 %87, ptr %2, align 2
  %88 = load ptr, ptr %55, align 4
  %89 = call i32 %88(ptr noundef %0, i32 noundef 20, i16 noundef zeroext %87) #5
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %130

91:                                               ; preds = %83
  %92 = load i32, ptr %8, align 4
  br label %93

93:                                               ; preds = %91, %59
  %94 = phi i32 [ %60, %59 ], [ %92, %91 ]
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 9
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 21040305
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load ptr, ptr %55, align 4
  %102 = call i32 %101(ptr noundef %0, i32 noundef 29, i16 noundef zeroext 3) #5
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load ptr, ptr %55, align 4
  %106 = call i32 %105(ptr noundef %0, i32 noundef 30, i16 noundef zeroext 0) #5
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %104, %96, %93, %66, %62
  %109 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 4
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = call i32 %110(ptr noundef %0) #5
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %112, %108
  %116 = load i32, ptr %8, align 4
  %117 = icmp eq i32 %116, 9
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load ptr, ptr %3, align 4
  %120 = call i32 %119(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %2) #5
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i16, ptr %2, align 2
  %124 = and i16 %123, -61
  %125 = or i16 %124, 32
  store i16 %125, ptr %2, align 2
  %126 = load ptr, ptr %55, align 4
  %127 = call i32 %126(ptr noundef %0, i32 noundef 20, i16 noundef zeroext %125) #5
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122, %115
  br label %130

130:                                              ; preds = %129, %122, %118, %112, %104, %100, %83, %70, %53, %43, %37, %1
  %131 = phi i32 [ 0, %129 ], [ %5, %1 ], [ %41, %37 ], [ %46, %43 ], [ %57, %53 ], [ %72, %70 ], [ %89, %83 ], [ %102, %100 ], [ %106, %104 ], [ %113, %112 ], [ %120, %118 ], [ %127, %122 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_copper_link_setup_igp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %66

7:                                                ; preds = %1
  tail call void @msleep(i32 noundef 100) #5
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i32 %9(ptr noundef %0, i1 noundef zeroext false) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %2) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %14
  %20 = load i16, ptr %2, align 2
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 18
  %22 = load i8, ptr %21, align 2
  switch i8 %22, label %28 [
    i8 1, label %23
    i8 2, label %25
  ]

23:                                               ; preds = %19
  %24 = and i16 %20, -12289
  store i16 %24, ptr %2, align 2
  br label %30

25:                                               ; preds = %19
  %26 = and i16 %20, -12289
  %27 = or i16 %26, 8192
  store i16 %27, ptr %2, align 2
  br label %30

28:                                               ; preds = %19
  %29 = or i16 %20, 4096
  store i16 %29, ptr %2, align 2
  br label %30

30:                                               ; preds = %28, %25, %23
  %31 = phi i16 [ %29, %28 ], [ %27, %25 ], [ %24, %23 ]
  %32 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef %0, i32 noundef 18, i16 noundef zeroext %31) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 23
  %38 = load i8, ptr %37, align 2, !range !11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 13
  %42 = load i16, ptr %41, align 4
  %43 = icmp eq i16 %42, 32
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load ptr, ptr %15, align 4
  %46 = call i32 %45(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %2) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load i16, ptr %2, align 2
  %50 = and i16 %49, -129
  store i16 %50, ptr %2, align 2
  %51 = load ptr, ptr %32, align 4
  %52 = call i32 %51(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %50) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load ptr, ptr %15, align 4
  %56 = call i32 %55(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %2) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i16, ptr %2, align 2
  %60 = and i16 %59, -4097
  store i16 %60, ptr %2, align 2
  %61 = load ptr, ptr %32, align 4
  %62 = call i32 %61(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %60) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %40
  %65 = call fastcc i32 @e1000_set_master_slave_mode(ptr noundef %0)
  br label %66

66:                                               ; preds = %64, %58, %54, %48, %44, %36, %30, %14, %11, %1
  %67 = phi i32 [ %5, %1 ], [ %12, %11 ], [ %17, %14 ], [ %34, %30 ], [ %46, %44 ], [ %52, %48 ], [ %56, %54 ], [ %62, %58 ], [ %65, %64 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_setup_copper_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 23
  %8 = load i8, ptr %7, align 2, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %119, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #5
  store i16 0, ptr %6, align 2, !annotation !10
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 14
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 13
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, %12
  %16 = icmp eq i16 %15, 0
  %17 = select i1 %16, i16 %12, i16 %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 0, ptr %5, align 2
  store i16 %17, ptr %13, align 4
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %4) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %10
  %23 = load i16, ptr %11, align 2
  %24 = and i16 %23, 32
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %18, align 4
  %28 = call i32 %27(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %5) #5
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
  %52 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
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
  %65 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 %66(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %64) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i16, ptr %11, align 2
  %71 = and i16 %70, 32
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  br label %81

74:                                               ; preds = %63, %51, %26, %10
  %75 = phi i32 [ %67, %63 ], [ -3, %51 ], [ %28, %26 ], [ %20, %10 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  br label %115

76:                                               ; preds = %69
  %77 = load i16, ptr %5, align 2
  %78 = load ptr, ptr %65, align 4
  %79 = call i32 %78(ptr noundef %0, i32 noundef 9, i16 noundef zeroext %77) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %76, %73
  %82 = load ptr, ptr %18, align 4
  %83 = call i32 %82(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %6) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %81
  %86 = load i16, ptr %6, align 2
  %87 = or i16 %86, 4608
  store i16 %87, ptr %6, align 2
  %88 = load ptr, ptr %65, align 4
  %89 = call i32 %88(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %87) #5
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 24
  %93 = load i8, ptr %92, align 4, !range !11
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %117, label %95

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !10
  br label %96

96:                                               ; preds = %109, %95
  %97 = phi i16 [ 45, %95 ], [ %110, %109 ]
  %98 = load ptr, ptr %18, align 4
  %99 = call i32 %98(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load ptr, ptr %18, align 4
  %103 = call i32 %102(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i16, ptr %3, align 2
  %107 = and i16 %106, 32
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  call void @msleep(i32 noundef 100) #5
  %110 = add nsw i16 %97, -1
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %96

112:                                              ; preds = %109, %105
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %117

113:                                              ; preds = %101, %96
  %114 = phi i32 [ %99, %96 ], [ %103, %101 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %115

115:                                              ; preds = %113, %85, %81, %76, %74
  %116 = phi i32 [ %75, %74 ], [ %114, %113 ], [ %89, %85 ], [ %83, %81 ], [ %79, %76 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  br label %151

117:                                              ; preds = %112, %91
  %118 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 25
  store i8 1, ptr %118, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  br label %124

119:                                              ; preds = %1
  %120 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 %121(ptr noundef %0) #5
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %119, %117
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %125 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  br label %126

126:                                              ; preds = %141, %124
  %127 = phi i16 [ 0, %124 ], [ %143, %141 ]
  %128 = load ptr, ptr %125, align 4
  %129 = call i32 %128(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #5
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %132(i32 noundef 2147480) #5
  br label %133

133:                                              ; preds = %131, %126
  %134 = load ptr, ptr %125, align 4
  %135 = call i32 %134(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #5
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load i16, ptr %2, align 2
  %139 = and i16 %138, 4
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %142(i32 noundef 2147480) #5
  %143 = add nuw nsw i16 %127, 1
  %144 = icmp ult i16 %127, 9
  br i1 %144, label %126, label %145

145:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %151

146:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %151

147:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  %148 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 19
  %149 = load ptr, ptr %148, align 4
  call void %149(ptr noundef %0) #5
  %150 = call i32 @e1000e_config_fc_after_link_up(ptr noundef %0) #5
  br label %151

151:                                              ; preds = %147, %146, %145, %119, %115
  %152 = phi i32 [ %122, %119 ], [ %135, %146 ], [ %150, %147 ], [ %116, %115 ], [ 0, %145 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 0, ptr %5, align 2, !annotation !10
  store i8 0, ptr %3, align 1
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %9 = icmp ugt i32 %2, 999
  %10 = udiv i32 %2, 1000
  br label %11

11:                                               ; preds = %33, %7
  %12 = phi i16 [ 0, %7 ], [ %34, %33 ]
  %13 = load ptr, ptr %8, align 4
  %14 = call i32 %13(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  br i1 %9, label %17, label %18

17:                                               ; preds = %16
  call void @msleep(i32 noundef %10) #5
  br label %20

18:                                               ; preds = %16
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %19(i32 noundef %2) #5
  br label %20

20:                                               ; preds = %18, %17, %11
  %21 = load ptr, ptr %8, align 4
  %22 = call i32 %21(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i16, ptr %5, align 2
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i8 1, ptr %3, align 1
  br label %37

29:                                               ; preds = %24
  br i1 %9, label %30, label %31

30:                                               ; preds = %29
  call void @msleep(i32 noundef %10) #5
  br label %33

31:                                               ; preds = %29
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %32(i32 noundef %2) #5
  br label %33

33:                                               ; preds = %31, %30
  %34 = add i16 %12, 1
  %35 = zext i16 %34 to i32
  %36 = icmp ult i32 %35, %1
  br i1 %36, label %11, label %37

37:                                               ; preds = %33, %28, %20, %4
  %38 = phi i32 [ 0, %28 ], [ 0, %4 ], [ 0, %33 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_config_fc_after_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_force_speed_duplex_igp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %58

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %13 = load i16, ptr %2, align 2
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 19
  %15 = load i8, ptr %14, align 2
  %16 = and i8 %15, 5
  %17 = icmp eq i8 %16, 0
  %18 = and i32 %12, -6946
  %19 = or i16 %13, 256
  %20 = and i16 %13, -12609
  %21 = select i1 %17, i16 %19, i16 %20
  %22 = select i1 %17, i32 6145, i32 6144
  %23 = or i32 %22, %18
  %24 = and i8 %15, 12
  %25 = icmp eq i8 %24, 0
  %26 = and i16 %21, -12353
  %27 = or i32 %23, 256
  %28 = or i16 %26, 8192
  %29 = select i1 %25, i16 %26, i16 %28
  %30 = select i1 %25, i32 %23, i32 %27
  store i16 %29, ptr %2, align 2
  %31 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  call void %32(ptr noundef %0) #5
  call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %30) #5
  %33 = load i16, ptr %2, align 2
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %33) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %8
  %39 = load ptr, ptr %4, align 4
  %40 = call i32 %39(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %2) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i16, ptr %2, align 2
  %44 = and i16 %43, -12289
  store i16 %44, ptr %2, align 2
  %45 = load ptr, ptr %34, align 4
  %46 = call i32 %45(ptr noundef %0, i32 noundef 18, i16 noundef zeroext %44) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748) #5
  %50 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 24
  %51 = load i8, ptr %50, align 4, !range !11
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %3)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %3)
  br label %58

58:                                               ; preds = %56, %53, %48, %42, %38, %8, %1
  %59 = phi i32 [ %6, %1 ], [ %36, %8 ], [ %40, %38 ], [ %46, %42 ], [ %54, %53 ], [ %57, %56 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_phy_force_speed_duplex_setup(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %7 = load i16, ptr %1, align 2
  %8 = and i16 %7, -4097
  store i16 %8, ptr %1, align 2
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 19
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 5
  %12 = icmp eq i8 %11, 0
  %13 = and i32 %6, -6946
  %14 = or i16 %8, 256
  %15 = and i16 %7, -4353
  %16 = select i1 %12, i16 %14, i16 %15
  %17 = select i1 %12, i32 6145, i32 6144
  %18 = or i32 %13, %17
  store i16 %16, ptr %1, align 2
  %19 = load i8, ptr %9, align 2
  %20 = and i8 %19, 12
  %21 = icmp eq i8 %20, 0
  %22 = and i16 %16, -12353
  %23 = or i32 %18, 256
  %24 = and i16 %16, -12353
  %25 = or i16 %24, 8192
  %26 = select i1 %21, i16 %22, i16 %25
  %27 = select i1 %21, i32 %18, i32 %23
  store i16 %26, ptr %1, align 2
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %0) #5
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %27) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_force_speed_duplex_m88(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !10
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %2) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %107

8:                                                ; preds = %1
  %9 = load i16, ptr %2, align 2
  %10 = and i16 %9, -97
  store i16 %10, ptr %2, align 2
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %10) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %107

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 4
  %17 = call i32 %16(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %107

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %24 = load i16, ptr %2, align 2
  %25 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 19
  %26 = load i8, ptr %25, align 2
  %27 = and i8 %26, 5
  %28 = icmp eq i8 %27, 0
  %29 = and i32 %23, -6946
  %30 = or i16 %24, 256
  %31 = and i16 %24, -12609
  %32 = select i1 %28, i16 %30, i16 %31
  %33 = select i1 %28, i32 6145, i32 6144
  %34 = or i32 %33, %29
  %35 = and i8 %26, 12
  %36 = icmp eq i8 %35, 0
  %37 = and i16 %32, -12353
  %38 = or i32 %34, 256
  %39 = or i16 %37, 8192
  %40 = select i1 %36, i16 %37, i16 %39
  %41 = select i1 %36, i32 %34, i32 %38
  store i16 %40, ptr %2, align 2
  %42 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 19
  %43 = load ptr, ptr %42, align 4
  call void %43(ptr noundef %0) #5
  call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %41) #5
  %44 = load i16, ptr %2, align 2
  %45 = load ptr, ptr %11, align 4
  %46 = call i32 %45(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %44) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %107

48:                                               ; preds = %19
  %49 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = call i32 %50(ptr noundef %0) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %107

55:                                               ; preds = %52, %48
  %56 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 24
  %57 = load i8, ptr %56, align 4, !range !11
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %55
  %60 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %3)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %107

62:                                               ; preds = %59
  %63 = load i8, ptr %3, align 1, !range !11
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load ptr, ptr %11, align 4
  %71 = call i32 %70(ptr noundef %0, i32 noundef 29, i16 noundef zeroext 29) #5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %107

73:                                               ; preds = %69
  %74 = load ptr, ptr %11, align 4
  %75 = call i32 %74(ptr noundef %0, i32 noundef 30, i16 noundef zeroext 193) #5
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = load ptr, ptr %11, align 4
  %79 = call i32 %78(ptr noundef %0, i32 noundef 30, i16 noundef zeroext 0) #5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %77, %65, %62
  %82 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %3)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %81, %55
  %85 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load ptr, ptr %4, align 4
  %90 = call i32 %89(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %2) #5
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load i16, ptr %2, align 2
  %94 = or i16 %93, 112
  store i16 %94, ptr %2, align 2
  %95 = load ptr, ptr %11, align 4
  %96 = call i32 %95(ptr noundef %0, i32 noundef 20, i16 noundef zeroext %94) #5
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load ptr, ptr %4, align 4
  %100 = call i32 %99(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %2) #5
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i16, ptr %2, align 2
  %104 = or i16 %103, 2048
  store i16 %104, ptr %2, align 2
  %105 = load ptr, ptr %11, align 4
  %106 = call i32 %105(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %104) #5
  br label %107

107:                                              ; preds = %102, %98, %92, %88, %84, %81, %77, %73, %69, %59, %52, %19, %15, %8, %1
  %108 = phi i32 [ %106, %102 ], [ %6, %1 ], [ %13, %8 ], [ %17, %15 ], [ %46, %19 ], [ %53, %52 ], [ %60, %59 ], [ %71, %69 ], [ %79, %77 ], [ %82, %81 ], [ 0, %84 ], [ %90, %88 ], [ %96, %92 ], [ %100, %98 ], [ %75, %73 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_phy_force_speed_duplex_ife(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %60

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %13 = load i16, ptr %2, align 2
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 19
  %15 = load i8, ptr %14, align 2
  %16 = and i8 %15, 5
  %17 = icmp eq i8 %16, 0
  %18 = and i32 %12, -6946
  %19 = or i16 %13, 256
  %20 = and i16 %13, -12609
  %21 = select i1 %17, i16 %19, i16 %20
  %22 = select i1 %17, i32 6145, i32 6144
  %23 = or i32 %22, %18
  %24 = and i8 %15, 12
  %25 = icmp eq i8 %24, 0
  %26 = and i16 %21, -12353
  %27 = or i32 %23, 256
  %28 = or i16 %26, 8192
  %29 = select i1 %25, i16 %26, i16 %28
  %30 = select i1 %25, i32 %23, i32 %27
  store i16 %29, ptr %2, align 2
  %31 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  call void %32(ptr noundef %0) #5
  call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %30) #5
  %33 = load i16, ptr %2, align 2
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %33) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %8
  %39 = load ptr, ptr %4, align 4
  %40 = call i32 %39(ptr noundef %0, i32 noundef 28, ptr noundef nonnull %2) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i16, ptr %2, align 2
  %44 = and i16 %43, -193
  store i16 %44, ptr %2, align 2
  %45 = load ptr, ptr %34, align 4
  %46 = call i32 %45(ptr noundef %0, i32 noundef 28, i16 noundef zeroext %44) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748) #5
  %50 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 24
  %51 = load i8, ptr %50, align 4, !range !11
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %3)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = call i32 @e1000e_phy_has_link_generic(ptr noundef %0, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %3)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %48
  br label %60

60:                                               ; preds = %59, %56, %53, %42, %38, %8, %1
  %61 = phi i32 [ 0, %59 ], [ %6, %1 ], [ %36, %8 ], [ %40, %38 ], [ %46, %42 ], [ %54, %53 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_set_d3_lplu_state(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !10
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, i32 noundef 25, ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %60

8:                                                ; preds = %2
  br i1 %1, label %39, label %9

9:                                                ; preds = %8
  %10 = load i16, ptr %3, align 2
  %11 = and i16 %10, -5
  store i16 %11, ptr %3, align 2
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, i32 noundef 25, i16 noundef zeroext %11) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 7
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %58 [
    i32 1, label %19
    i32 2, label %29
  ]

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 4
  %21 = call i32 %20(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load i16, ptr %3, align 2
  %25 = or i16 %24, 128
  store i16 %25, ptr %3, align 2
  %26 = load ptr, ptr %12, align 4
  %27 = call i32 %26(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %25) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %58, label %60

29:                                               ; preds = %16
  %30 = load ptr, ptr %4, align 4
  %31 = call i32 %30(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i16, ptr %3, align 2
  %35 = and i16 %34, -129
  store i16 %35, ptr %3, align 2
  %36 = load ptr, ptr %12, align 4
  %37 = call i32 %36(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %35) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %60

39:                                               ; preds = %8
  %40 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 13
  %41 = load i16, ptr %40, align 4
  switch i16 %41, label %58 [
    i16 47, label %42
    i16 15, label %42
    i16 3, label %42
  ]

42:                                               ; preds = %39, %39, %39
  %43 = load i16, ptr %3, align 2
  %44 = or i16 %43, 4
  store i16 %44, ptr %3, align 2
  %45 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef %0, i32 noundef 25, i16 noundef zeroext %44) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load ptr, ptr %4, align 4
  %51 = call i32 %50(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %3) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i16, ptr %3, align 2
  %55 = and i16 %54, -129
  store i16 %55, ptr %3, align 2
  %56 = load ptr, ptr %45, align 4
  %57 = call i32 %56(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %55) #5
  br label %58

58:                                               ; preds = %53, %39, %33, %23, %16
  %59 = phi i32 [ %57, %53 ], [ 0, %23 ], [ 0, %33 ], [ 0, %16 ], [ 0, %39 ]
  br label %60

60:                                               ; preds = %58, %49, %42, %33, %29, %23, %19, %9, %2
  %61 = phi i32 [ %59, %58 ], [ %6, %2 ], [ %14, %9 ], [ %21, %19 ], [ %27, %23 ], [ %31, %29 ], [ %37, %33 ], [ %47, %42 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_check_downshift(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -2
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %9, label %7

7:                                                ; preds = %9, %1
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 23
  store i8 0, ptr %8, align 1
  br label %30

9:                                                ; preds = %1
  %10 = trunc i32 %5 to i8
  %11 = lshr i8 -35, %10
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %7, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [8 x i32], ptr @switch.table.e1000e_check_downshift, i32 0, i32 %5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds [8 x i32], ptr @switch.table.e1000e_check_downshift.1, i32 0, i32 %5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %2) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i16, ptr %2, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %18, %25
  %27 = icmp ne i32 %26, 0
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 23
  %29 = zext i1 %27 to i8
  store i8 %29, ptr %28, align 1
  br label %30

30:                                               ; preds = %23, %14, %7
  %31 = phi i32 [ 0, %7 ], [ 0, %23 ], [ %21, %14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_check_polarity_m88(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = lshr i16 %8, 1
  %10 = and i16 %9, 1
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_check_polarity_igp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = icmp ugt i16 %8, -16385
  %10 = select i1 %9, i32 180, i32 17
  %11 = load ptr, ptr %3, align 4
  %12 = call i32 %11(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %2) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = select i1 %9, i32 120, i32 2
  %16 = load i16, ptr %2, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %14, %7, %1
  %23 = phi i32 [ %5, %1 ], [ 0, %14 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_check_polarity_ife(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 21
  %4 = load i8, ptr %3, align 1, !range !11
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i32 17, i32 16
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %2) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = select i1 %5, i32 32, i32 256
  %13 = load i16, ptr %2, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_cable_length_m88(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #5
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
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 17
  store i16 %15, ptr %16, align 4
  %17 = add nuw nsw i32 %13, 1
  %18 = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %17
  %19 = load i16, ptr %18, align 2
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 16
  store i16 %19, ptr %20, align 2
  %21 = zext i16 %15 to i32
  %22 = zext i16 %19 to i32
  %23 = add nuw nsw i32 %22, %21
  %24 = lshr i32 %23, 1
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 15
  store i16 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %12, %7, %1
  %28 = phi i32 [ 0, %12 ], [ %5, %1 ], [ -2, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_cable_length_igp_2(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 4529, ptr noundef nonnull %2) #5
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
  %24 = call i32 %23(ptr noundef %0, i32 noundef 4785, ptr noundef nonnull %2) #5
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
  %48 = call i32 %47(ptr noundef %0, i32 noundef 5297, ptr noundef nonnull %2) #5
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
  %72 = call i32 %71(ptr noundef %0, i32 noundef 6321, ptr noundef nonnull %2) #5
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
  %110 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 17
  store i16 %109, ptr %110, align 4
  %111 = trunc i32 %106 to i16
  %112 = add nuw i16 %111, 15
  %113 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 16
  store i16 %112, ptr %113, align 2
  %114 = zext i16 %109 to i32
  %115 = zext i16 %112 to i32
  %116 = add nuw nsw i32 %114, %115
  %117 = lshr i32 %116, 1
  %118 = trunc i32 %117 to i16
  %119 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 15
  store i16 %118, ptr %119, align 4
  br label %120

120:                                              ; preds = %78, %74, %54, %50, %30, %26, %11, %7, %1
  %121 = phi i32 [ 0, %78 ], [ %5, %1 ], [ -2, %7 ], [ %24, %11 ], [ -2, %26 ], [ %48, %30 ], [ -2, %50 ], [ %72, %54 ], [ -2, %74 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_phy_info_m88(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %80

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !10
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 0) #5
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %9, align 4
  %17 = call i32 %16(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i16, ptr %3, align 2
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %80

25:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %80

26:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  %27 = load ptr, ptr %9, align 4
  %28 = call i32 %27(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %26
  %31 = load i16, ptr %4, align 2
  %32 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 21
  %33 = trunc i16 %31 to i8
  %34 = lshr i8 %33, 1
  %35 = and i8 %34, 1
  store i8 %35, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %36 = load ptr, ptr %9, align 4
  %37 = call i32 %36(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %80

40:                                               ; preds = %30
  %41 = load i16, ptr %2, align 2
  %42 = lshr i16 %41, 1
  %43 = and i16 %42, 1
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  store i32 %44, ptr %45, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  %46 = load ptr, ptr %9, align 4
  %47 = call i32 %46(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %4) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %40
  %50 = load i16, ptr %4, align 2
  %51 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 20
  %52 = trunc i16 %50 to i8
  %53 = lshr i8 %52, 6
  %54 = and i8 %53, 1
  store i8 %54, ptr %51, align 4
  %55 = and i16 %50, -16384
  %56 = icmp eq i16 %55, -32768
  br i1 %56, label %57, label %76

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 %59(ptr noundef %0) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load ptr, ptr %9, align 4
  %64 = call i32 %63(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %4) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i16, ptr %4, align 2
  %68 = lshr i16 %67, 13
  %69 = and i16 %68, 1
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 2
  store i32 %70, ptr %71, align 4
  %72 = lshr i16 %67, 12
  %73 = and i16 %72, 1
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 3
  store i32 %74, ptr %75, align 4
  br label %80

76:                                               ; preds = %49
  %77 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 15
  store i16 255, ptr %77, align 4
  %78 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 2
  store i32 255, ptr %78, align 4
  %79 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 3
  store i32 255, ptr %79, align 4
  br label %80

80:                                               ; preds = %76, %66, %62, %57, %40, %39, %26, %25, %23, %1
  %81 = phi i32 [ -3, %1 ], [ %17, %25 ], [ %28, %26 ], [ %37, %39 ], [ %47, %40 ], [ %60, %57 ], [ %64, %62 ], [ 0, %76 ], [ 0, %66 ], [ -3, %23 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_phy_info_igp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 %6(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 0) #5
  br label %11

11:                                               ; preds = %9, %1
  %12 = load ptr, ptr %5, align 4
  %13 = call i32 %12(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i16, ptr %3, align 2
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %77

21:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %77

22:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 21
  store i8 1, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %24 = load ptr, ptr %5, align 4
  %25 = call i32 %24(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i16, ptr %2, align 2
  %29 = icmp ugt i16 %28, -16385
  %30 = select i1 %29, i32 180, i32 17
  %31 = load ptr, ptr %5, align 4
  %32 = call i32 %31(ptr noundef %0, i32 noundef %30, ptr noundef nonnull %2) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27, %22
  %35 = phi i32 [ %32, %27 ], [ %25, %22 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %77

36:                                               ; preds = %27
  %37 = select i1 %29, i32 120, i32 2
  %38 = load i16, ptr %2, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  store i32 %42, ptr %43, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  %44 = load ptr, ptr %5, align 4
  %45 = call i32 %44(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %4) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %36
  %48 = load i16, ptr %4, align 2
  %49 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 20
  %50 = lshr i16 %48, 11
  %51 = trunc i16 %50 to i8
  %52 = and i8 %51, 1
  store i8 %52, ptr %49, align 4
  %53 = icmp ugt i16 %48, -16385
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 %56(ptr noundef %0) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load ptr, ptr %5, align 4
  %61 = call i32 %60(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %4) #5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load i16, ptr %4, align 2
  %65 = lshr i16 %64, 13
  %66 = and i16 %65, 1
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 2
  store i32 %67, ptr %68, align 4
  %69 = lshr i16 %64, 12
  %70 = and i16 %69, 1
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 3
  store i32 %71, ptr %72, align 4
  br label %77

73:                                               ; preds = %47
  %74 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 15
  store i16 255, ptr %74, align 4
  %75 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 2
  store i32 255, ptr %75, align 4
  %76 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 3
  store i32 255, ptr %76, align 4
  br label %77

77:                                               ; preds = %73, %63, %59, %54, %36, %34, %21, %19
  %78 = phi i32 [ %13, %21 ], [ %45, %36 ], [ %57, %54 ], [ %61, %59 ], [ 0, %73 ], [ 0, %63 ], [ -3, %19 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_get_phy_info_ife(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 %6(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 0) #5
  br label %11

11:                                               ; preds = %9, %1
  %12 = load ptr, ptr %5, align 4
  %13 = call i32 %12(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i16, ptr %3, align 2
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %67

21:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %67

22:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  %23 = load ptr, ptr %5, align 4
  %24 = call i32 %23(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %4) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = load i16, ptr %4, align 2
  %28 = and i16 %27, 16
  %29 = icmp eq i16 %28, 0
  %30 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 21
  %31 = lshr exact i16 %28, 4
  %32 = trunc i16 %31 to i8
  %33 = xor i8 %32, 1
  store i8 %33, ptr %30, align 1
  br i1 %29, label %34, label %49

34:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %35 = icmp eq i8 %33, 0
  %36 = select i1 %35, i32 17, i32 16
  %37 = load ptr, ptr %5, align 4
  %38 = call i32 %37(ptr noundef %0, i32 noundef %36, ptr noundef nonnull %2) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = select i1 %35, i32 32, i32 256
  %42 = load i16, ptr %2, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  store i32 %46, ptr %47, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %54

48:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %67

49:                                               ; preds = %26
  %50 = lshr i16 %27, 5
  %51 = and i16 %50, 1
  %52 = zext i16 %51 to i32
  %53 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %49, %40
  %55 = load ptr, ptr %5, align 4
  %56 = call i32 %55(ptr noundef %0, i32 noundef 28, ptr noundef nonnull %4) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i16, ptr %4, align 2
  %60 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 20
  %61 = trunc i16 %59 to i8
  %62 = lshr i8 %61, 5
  %63 = and i8 %62, 1
  store i8 %63, ptr %60, align 4
  %64 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 15
  store i16 255, ptr %64, align 4
  %65 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 2
  store i32 255, ptr %65, align 4
  %66 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 3
  store i32 255, ptr %66, align 4
  br label %67

67:                                               ; preds = %58, %54, %48, %22, %21, %19
  %68 = phi i32 [ 0, %58 ], [ %13, %21 ], [ %24, %22 ], [ %38, %48 ], [ %56, %54 ], [ -3, %19 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_sw_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = or i16 %8, -32768
  store i16 %9, ptr %2, align 2
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %9) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748) #5
  br label %16

16:                                               ; preds = %14, %7, %1
  %17 = phi i32 [ 0, %14 ], [ %5, %1 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_hw_reset_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %6, %1
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 %10(ptr noundef %0) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %17 = or i32 %16, -2147483648
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %17) #5
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #5
  tail call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %16) #5
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 300, i32 noundef 2) #5
  %27 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %0) #5
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %0) #5
  br label %32

32:                                               ; preds = %13, %9, %6
  %33 = phi i32 [ %31, %13 ], [ 0, %6 ], [ %11, %9 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_cfg_done_generic(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #5
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #5
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #5
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #5
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #5
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #5
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #5
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #5
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #5
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_init_script_igp3(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 12123, i16 noundef zeroext -28648) #5
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 12114, i16 noundef zeroext 0) #5
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 12209, i16 noundef zeroext -29916) #5
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef 12210, i16 noundef zeroext -1808) #5
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 8208, i16 noundef zeroext 4272) #5
  %13 = load ptr, ptr %2, align 4
  %14 = tail call i32 %13(ptr noundef %0, i32 noundef 8209, i16 noundef zeroext 0) #5
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef 8413, i16 noundef zeroext 9370) #5
  %17 = load ptr, ptr %2, align 4
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef 8414, i16 noundef zeroext 211) #5
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef 10420, i16 noundef zeroext 1230) #5
  %21 = load ptr, ptr %2, align 4
  %22 = tail call i32 %21(ptr noundef %0, i32 noundef 12144, i16 noundef zeroext 10724) #5
  %23 = load ptr, ptr %2, align 4
  %24 = tail call i32 %23(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 320) #5
  %25 = load ptr, ptr %2, align 4
  %26 = tail call i32 %25(ptr noundef %0, i32 noundef 7984, i16 noundef zeroext 5638) #5
  %27 = load ptr, ptr %2, align 4
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef 7985, i16 noundef zeroext -18412) #5
  %29 = load ptr, ptr %2, align 4
  %30 = tail call i32 %29(ptr noundef %0, i32 noundef 7989, i16 noundef zeroext 42) #5
  %31 = load ptr, ptr %2, align 4
  %32 = tail call i32 %31(ptr noundef %0, i32 noundef 7998, i16 noundef zeroext 103) #5
  %33 = load ptr, ptr %2, align 4
  %34 = tail call i32 %33(ptr noundef %0, i32 noundef 8020, i16 noundef zeroext 101) #5
  %35 = load ptr, ptr %2, align 4
  %36 = tail call i32 %35(ptr noundef %0, i32 noundef 8021, i16 noundef zeroext 42) #5
  %37 = load ptr, ptr %2, align 4
  %38 = tail call i32 %37(ptr noundef %0, i32 noundef 8022, i16 noundef zeroext 42) #5
  %39 = load ptr, ptr %2, align 4
  %40 = tail call i32 %39(ptr noundef %0, i32 noundef 8050, i16 noundef zeroext 16304) #5
  %41 = load ptr, ptr %2, align 4
  %42 = tail call i32 %41(ptr noundef %0, i32 noundef 8054, i16 noundef zeroext -16129) #5
  %43 = load ptr, ptr %2, align 4
  %44 = tail call i32 %43(ptr noundef %0, i32 noundef 8055, i16 noundef zeroext 7660) #5
  %45 = load ptr, ptr %2, align 4
  %46 = tail call i32 %45(ptr noundef %0, i32 noundef 8056, i16 noundef zeroext -1553) #5
  %47 = load ptr, ptr %2, align 4
  %48 = tail call i32 %47(ptr noundef %0, i32 noundef 8057, i16 noundef zeroext 528) #5
  %49 = load ptr, ptr %2, align 4
  %50 = tail call i32 %49(ptr noundef %0, i32 noundef 6293, i16 noundef zeroext 3) #5
  %51 = load ptr, ptr %2, align 4
  %52 = tail call i32 %51(ptr noundef %0, i32 noundef 6038, i16 noundef zeroext 8) #5
  %53 = load ptr, ptr %2, align 4
  %54 = tail call i32 %53(ptr noundef %0, i32 noundef 6040, i16 noundef zeroext -12280) #5
  %55 = load ptr, ptr %2, align 4
  %56 = tail call i32 %55(ptr noundef %0, i32 noundef 6296, i16 noundef zeroext -9960) #5
  %57 = load ptr, ptr %2, align 4
  %58 = tail call i32 %57(ptr noundef %0, i32 noundef 6266, i16 noundef zeroext 2048) #5
  %59 = load ptr, ptr %2, align 4
  %60 = tail call i32 %59(ptr noundef %0, i32 noundef 25, i16 noundef zeroext 141) #5
  %61 = load ptr, ptr %2, align 4
  %62 = tail call i32 %61(ptr noundef %0, i32 noundef 27, i16 noundef zeroext 8320) #5
  %63 = load ptr, ptr %2, align 4
  %64 = tail call i32 %63(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 69) #5
  %65 = load ptr, ptr %2, align 4
  %66 = tail call i32 %65(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 4928) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @e1000e_get_phy_type_from_id(i32 noundef %0) local_unnamed_addr #3 {
  switch i32 %0, label %11 [
    i32 21040176, label %12
    i32 21040208, label %12
    i32 21040320, label %12
    i32 21040160, label %12
    i32 44565376, label %2
    i32 21040288, label %3
    i32 44565392, label %4
    i32 44565296, label %5
    i32 44565280, label %5
    i32 44565264, label %5
    i32 21040304, label %6
    i32 21040305, label %6
    i32 5099584, label %7
    i32 22282320, label %8
    i32 22282384, label %9
    i32 22282400, label %10
  ]

2:                                                ; preds = %1
  br label %12

3:                                                ; preds = %1
  br label %12

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1, %1, %1
  br label %12

6:                                                ; preds = %1, %1
  br label %12

7:                                                ; preds = %1
  br label %12

8:                                                ; preds = %1
  br label %12

9:                                                ; preds = %1
  br label %12

10:                                               ; preds = %1
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1, %1, %1, %1
  %13 = phi i32 [ 0, %11 ], [ 12, %10 ], [ 11, %9 ], [ 10, %8 ], [ 9, %7 ], [ 8, %6 ], [ 7, %5 ], [ 6, %4 ], [ 5, %3 ], [ 4, %2 ], [ 2, %1 ], [ 2, %1 ], [ 2, %1 ], [ 2, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_determine_phy_address(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 9
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  br label %4

4:                                                ; preds = %35, %1
  %5 = phi i32 [ 0, %1 ], [ %36, %35 ]
  store i32 %5, ptr %3, align 4
  %6 = tail call i32 @e1000e_get_phy_id(ptr noundef %0)
  %7 = load i32, ptr %2, align 4
  switch i32 %7, label %8 [
    i32 21040176, label %38
    i32 21040208, label %38
    i32 21040320, label %38
    i32 21040160, label %38
    i32 44565376, label %38
    i32 21040288, label %38
    i32 44565392, label %38
    i32 44565296, label %38
    i32 44565280, label %38
    i32 44565264, label %38
    i32 21040304, label %38
    i32 21040305, label %38
    i32 5099584, label %38
    i32 22282320, label %38
    i32 22282384, label %38
    i32 22282400, label %38
  ]

8:                                                ; preds = %4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %9 = tail call i32 @e1000e_get_phy_id(ptr noundef %0)
  %10 = load i32, ptr %2, align 4
  switch i32 %10, label %11 [
    i32 21040176, label %38
    i32 21040208, label %38
    i32 21040320, label %38
    i32 21040160, label %38
    i32 44565376, label %38
    i32 21040288, label %38
    i32 44565392, label %38
    i32 44565296, label %38
    i32 44565280, label %38
    i32 44565264, label %38
    i32 21040304, label %38
    i32 21040305, label %38
    i32 5099584, label %38
    i32 22282320, label %38
    i32 22282384, label %38
    i32 22282400, label %38
  ]

11:                                               ; preds = %8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %12 = tail call i32 @e1000e_get_phy_id(ptr noundef %0)
  %13 = load i32, ptr %2, align 4
  switch i32 %13, label %14 [
    i32 21040176, label %38
    i32 21040208, label %38
    i32 21040320, label %38
    i32 21040160, label %38
    i32 44565376, label %38
    i32 21040288, label %38
    i32 44565392, label %38
    i32 44565296, label %38
    i32 44565280, label %38
    i32 44565264, label %38
    i32 21040304, label %38
    i32 21040305, label %38
    i32 5099584, label %38
    i32 22282320, label %38
    i32 22282384, label %38
    i32 22282400, label %38
  ]

14:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %15 = tail call i32 @e1000e_get_phy_id(ptr noundef %0)
  %16 = load i32, ptr %2, align 4
  switch i32 %16, label %17 [
    i32 21040176, label %38
    i32 21040208, label %38
    i32 21040320, label %38
    i32 21040160, label %38
    i32 44565376, label %38
    i32 21040288, label %38
    i32 44565392, label %38
    i32 44565296, label %38
    i32 44565280, label %38
    i32 44565264, label %38
    i32 21040304, label %38
    i32 21040305, label %38
    i32 5099584, label %38
    i32 22282320, label %38
    i32 22282384, label %38
    i32 22282400, label %38
  ]

17:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %18 = tail call i32 @e1000e_get_phy_id(ptr noundef %0)
  %19 = load i32, ptr %2, align 4
  switch i32 %19, label %20 [
    i32 21040176, label %38
    i32 21040208, label %38
    i32 21040320, label %38
    i32 21040160, label %38
    i32 44565376, label %38
    i32 21040288, label %38
    i32 44565392, label %38
    i32 44565296, label %38
    i32 44565280, label %38
    i32 44565264, label %38
    i32 21040304, label %38
    i32 21040305, label %38
    i32 5099584, label %38
    i32 22282320, label %38
    i32 22282384, label %38
    i32 22282400, label %38
  ]

20:                                               ; preds = %17
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %21 = tail call i32 @e1000e_get_phy_id(ptr noundef %0)
  %22 = load i32, ptr %2, align 4
  switch i32 %22, label %23 [
    i32 21040176, label %38
    i32 21040208, label %38
    i32 21040320, label %38
    i32 21040160, label %38
    i32 44565376, label %38
    i32 21040288, label %38
    i32 44565392, label %38
    i32 44565296, label %38
    i32 44565280, label %38
    i32 44565264, label %38
    i32 21040304, label %38
    i32 21040305, label %38
    i32 5099584, label %38
    i32 22282320, label %38
    i32 22282384, label %38
    i32 22282400, label %38
  ]

23:                                               ; preds = %20
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %24 = tail call i32 @e1000e_get_phy_id(ptr noundef %0)
  %25 = load i32, ptr %2, align 4
  switch i32 %25, label %26 [
    i32 21040176, label %38
    i32 21040208, label %38
    i32 21040320, label %38
    i32 21040160, label %38
    i32 44565376, label %38
    i32 21040288, label %38
    i32 44565392, label %38
    i32 44565296, label %38
    i32 44565280, label %38
    i32 44565264, label %38
    i32 21040304, label %38
    i32 21040305, label %38
    i32 5099584, label %38
    i32 22282320, label %38
    i32 22282384, label %38
    i32 22282400, label %38
  ]

26:                                               ; preds = %23
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %27 = tail call i32 @e1000e_get_phy_id(ptr noundef %0)
  %28 = load i32, ptr %2, align 4
  switch i32 %28, label %29 [
    i32 21040176, label %38
    i32 21040208, label %38
    i32 21040320, label %38
    i32 21040160, label %38
    i32 44565376, label %38
    i32 21040288, label %38
    i32 44565392, label %38
    i32 44565296, label %38
    i32 44565280, label %38
    i32 44565264, label %38
    i32 21040304, label %38
    i32 21040305, label %38
    i32 5099584, label %38
    i32 22282320, label %38
    i32 22282384, label %38
    i32 22282400, label %38
  ]

29:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %30 = tail call i32 @e1000e_get_phy_id(ptr noundef %0)
  %31 = load i32, ptr %2, align 4
  switch i32 %31, label %32 [
    i32 21040176, label %38
    i32 21040208, label %38
    i32 21040320, label %38
    i32 21040160, label %38
    i32 44565376, label %38
    i32 21040288, label %38
    i32 44565392, label %38
    i32 44565296, label %38
    i32 44565280, label %38
    i32 44565264, label %38
    i32 21040304, label %38
    i32 21040305, label %38
    i32 5099584, label %38
    i32 22282320, label %38
    i32 22282384, label %38
    i32 22282400, label %38
  ]

32:                                               ; preds = %29
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %33 = tail call i32 @e1000e_get_phy_id(ptr noundef %0)
  %34 = load i32, ptr %2, align 4
  switch i32 %34, label %35 [
    i32 21040176, label %38
    i32 21040208, label %38
    i32 21040320, label %38
    i32 21040160, label %38
    i32 44565376, label %38
    i32 21040288, label %38
    i32 44565392, label %38
    i32 44565296, label %38
    i32 44565280, label %38
    i32 44565264, label %38
    i32 21040304, label %38
    i32 21040305, label %38
    i32 5099584, label %38
    i32 22282320, label %38
    i32 22282384, label %38
    i32 22282400, label %38
  ]

35:                                               ; preds = %32
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %36 = add nuw nsw i32 %5, 1
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %4

38:                                               ; preds = %35, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %39 = phi i32 [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %20 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ -6, %35 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_bm(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i16, align 2
  store i16 %2, ptr %4, align 2
  %5 = lshr i32 %1, 5
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %96

10:                                               ; preds = %3
  %11 = icmp eq i32 %5, 800
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %92

14:                                               ; preds = %10
  %15 = icmp ugt i32 %1, 24575
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  switch i32 %1, label %18 [
    i32 31, label %17
    i32 25, label %17
  ]

17:                                               ; preds = %16, %16, %14
  br label %18

18:                                               ; preds = %17, %16
  %19 = phi i1 [ false, %16 ], [ true, %17 ]
  %20 = phi i32 [ 2, %16 ], [ 1, %17 ]
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 %20, ptr %21, align 4
  %22 = icmp ugt i32 %1, 15
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = select i1 %19, i32 5, i32 0
  %25 = select i1 %19, i32 31, i32 22
  %26 = shl nuw i32 %5, %24
  %27 = and i32 %26, 65535
  %28 = shl nuw nsw i32 %25, 16
  %29 = or i32 %27, %28
  %30 = shl nuw nsw i32 %20, 21
  %31 = or i32 %29, %30
  %32 = or i32 %31, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %32) #5
  %33 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %34

34:                                               ; preds = %34, %23
  %35 = phi i32 [ 0, %23 ], [ %42, %34 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 10737400) #5
  %37 = load ptr, ptr %33, align 4
  %38 = getelementptr i8, ptr %37, i32 32
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %40 = and i32 %39, 268435456
  %41 = icmp ne i32 %40, 0
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, 1920
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %45, label %34

45:                                               ; preds = %34
  %46 = and i32 %39, 1342177280
  %47 = icmp eq i32 %46, 268435456
  %48 = lshr i32 %39, 16
  %49 = and i32 %48, 31
  %50 = icmp eq i32 %49, %25
  %51 = select i1 %47, i1 %50, i1 false
  br i1 %51, label %52, label %92

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 21474800) #5
  br label %58

58:                                               ; preds = %56, %52, %18
  %59 = and i32 %1, 31
  %60 = zext i16 %2 to i32
  %61 = shl nuw nsw i32 %59, 16
  %62 = or i32 %61, %60
  %63 = load i32, ptr %21, align 4
  %64 = shl i32 %63, 21
  %65 = or i32 %64, %62
  %66 = or i32 %65, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %66) #5
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %68

68:                                               ; preds = %68, %58
  %69 = phi i32 [ 0, %58 ], [ %76, %68 ]
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 10737400) #5
  %71 = load ptr, ptr %67, align 4
  %72 = getelementptr i8, ptr %71, i32 32
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %74 = and i32 %73, 268435456
  %75 = icmp ne i32 %74, 0
  %76 = add nuw nsw i32 %69, 1
  %77 = icmp eq i32 %76, 1920
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %79, label %68

79:                                               ; preds = %68
  %80 = and i32 %73, 1342177280
  %81 = icmp eq i32 %80, 268435456
  %82 = lshr i32 %73, 16
  %83 = and i32 %82, 31
  %84 = icmp eq i32 %83, %59
  %85 = select i1 %81, i1 %84, i1 false
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 21474800) #5
  br label %92

92:                                               ; preds = %90, %86, %79, %45, %12
  %93 = phi i32 [ %13, %12 ], [ -2, %45 ], [ -2, %79 ], [ 0, %90 ], [ 0, %86 ]
  %94 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %95 = load ptr, ptr %94, align 4
  tail call void %95(ptr noundef %0) #5
  br label %96

96:                                               ; preds = %92, %3
  %97 = phi i32 [ %93, %92 ], [ %8, %3 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i16, align 2
  %7 = and i32 %1, 31
  %8 = lshr i32 %1, 16
  %9 = and i32 %8, 65504
  %10 = or i32 %7, %9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #5
  store i16 0, ptr %6, align 2
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 3856
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  br label %19

19:                                               ; preds = %14, %5
  br i1 %4, label %23, label %20

20:                                               ; preds = %19
  %21 = call i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef %0, ptr noundef nonnull %6)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %101

23:                                               ; preds = %20, %19
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 21
  %27 = or i32 %26, %10
  %28 = or i32 %27, 68222976
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %28) #5
  %29 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %30

30:                                               ; preds = %30, %23
  %31 = phi i32 [ 0, %23 ], [ %38, %30 ]
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 10737400) #5
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr i8, ptr %33, i32 32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %36 = and i32 %35, 268435456
  %37 = icmp ne i32 %36, 0
  %38 = add nuw nsw i32 %31, 1
  %39 = icmp eq i32 %38, 1920
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %41, label %30

41:                                               ; preds = %30
  %42 = and i32 %35, 1344208896
  %43 = icmp eq i32 %42, 269549568
  br i1 %43, label %44, label %101

44:                                               ; preds = %41
  %45 = load i32, ptr %11, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 21474800) #5
  br label %49

49:                                               ; preds = %47, %44
  br i1 %3, label %50, label %72

50:                                               ; preds = %49
  %51 = load i32, ptr %24, align 4
  %52 = shl i32 %51, 21
  %53 = or i32 %52, 135397376
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %53) #5
  br label %54

54:                                               ; preds = %54, %50
  %55 = phi i32 [ 0, %50 ], [ %62, %54 ]
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 10737400) #5
  %57 = load ptr, ptr %29, align 4
  %58 = getelementptr i8, ptr %57, i32 32
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %60 = and i32 %59, 268435456
  %61 = icmp ne i32 %60, 0
  %62 = add nuw nsw i32 %55, 1
  %63 = icmp eq i32 %62, 1920
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %65, label %54

65:                                               ; preds = %54
  %66 = and i32 %59, 1344208896
  %67 = icmp eq i32 %66, 269615104
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = trunc i32 %59 to i16
  store i16 %69, ptr %2, align 2
  %70 = load i32, ptr %11, align 4
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %96, label %98

72:                                               ; preds = %49
  %73 = load i16, ptr %2, align 2
  %74 = zext i16 %73 to i32
  %75 = load i32, ptr %24, align 4
  %76 = shl i32 %75, 21
  %77 = or i32 %76, %74
  %78 = or i32 %77, 68288512
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %78) #5
  br label %79

79:                                               ; preds = %79, %72
  %80 = phi i32 [ 0, %72 ], [ %87, %79 ]
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 10737400) #5
  %82 = load ptr, ptr %29, align 4
  %83 = getelementptr i8, ptr %82, i32 32
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %85 = and i32 %84, 268435456
  %86 = icmp ne i32 %85, 0
  %87 = add nuw nsw i32 %80, 1
  %88 = icmp eq i32 %87, 1920
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %79

90:                                               ; preds = %79
  %91 = and i32 %84, 1344208896
  %92 = icmp eq i32 %91, 269615104
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, ptr %11, align 4
  %95 = icmp eq i32 %94, 10
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %68
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 21474800) #5
  br label %98

98:                                               ; preds = %96, %93, %68
  br i1 %4, label %101, label %99

99:                                               ; preds = %98
  %100 = call i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef %0, ptr noundef nonnull %6)
  br label %101

101:                                              ; preds = %99, %98, %90, %65, %41, %20
  %102 = phi i32 [ %21, %20 ], [ 0, %98 ], [ %100, %99 ], [ -2, %41 ], [ -2, %65 ], [ -2, %90 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_bm(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %1, 5
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %94

9:                                                ; preds = %3
  %10 = icmp eq i32 %4, 800
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %90

13:                                               ; preds = %9
  %14 = icmp ugt i32 %1, 24575
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  switch i32 %1, label %17 [
    i32 31, label %16
    i32 25, label %16
  ]

16:                                               ; preds = %15, %15, %13
  br label %17

17:                                               ; preds = %16, %15
  %18 = phi i1 [ false, %15 ], [ true, %16 ]
  %19 = phi i32 [ 2, %15 ], [ 1, %16 ]
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 %19, ptr %20, align 4
  %21 = icmp ugt i32 %1, 15
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = select i1 %18, i32 5, i32 0
  %24 = select i1 %18, i32 31, i32 22
  %25 = shl nuw i32 %4, %23
  %26 = and i32 %25, 65535
  %27 = shl nuw nsw i32 %24, 16
  %28 = or i32 %26, %27
  %29 = shl nuw nsw i32 %19, 21
  %30 = or i32 %28, %29
  %31 = or i32 %30, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %31) #5
  %32 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %33

33:                                               ; preds = %33, %22
  %34 = phi i32 [ 0, %22 ], [ %41, %33 ]
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 10737400) #5
  %36 = load ptr, ptr %32, align 4
  %37 = getelementptr i8, ptr %36, i32 32
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %39 = and i32 %38, 268435456
  %40 = icmp ne i32 %39, 0
  %41 = add nuw nsw i32 %34, 1
  %42 = icmp eq i32 %41, 1920
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %44, label %33

44:                                               ; preds = %33
  %45 = and i32 %38, 1342177280
  %46 = icmp eq i32 %45, 268435456
  %47 = lshr i32 %38, 16
  %48 = and i32 %47, 31
  %49 = icmp eq i32 %48, %24
  %50 = select i1 %46, i1 %49, i1 false
  br i1 %50, label %51, label %90

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 21474800) #5
  br label %57

57:                                               ; preds = %55, %51, %17
  %58 = and i32 %1, 31
  %59 = shl nuw nsw i32 %58, 16
  %60 = load i32, ptr %20, align 4
  %61 = shl i32 %60, 21
  %62 = or i32 %61, %59
  %63 = or i32 %62, 134217728
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %63) #5
  %64 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %65

65:                                               ; preds = %65, %57
  %66 = phi i32 [ 0, %57 ], [ %73, %65 ]
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 10737400) #5
  %68 = load ptr, ptr %64, align 4
  %69 = getelementptr i8, ptr %68, i32 32
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %71 = and i32 %70, 268435456
  %72 = icmp ne i32 %71, 0
  %73 = add nuw nsw i32 %66, 1
  %74 = icmp eq i32 %73, 1920
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %65

76:                                               ; preds = %65
  %77 = and i32 %70, 1342177280
  %78 = icmp eq i32 %77, 268435456
  %79 = lshr i32 %70, 16
  %80 = and i32 %79, 31
  %81 = icmp eq i32 %80, %58
  %82 = select i1 %78, i1 %81, i1 false
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = trunc i32 %70 to i16
  store i16 %84, ptr %2, align 2
  %85 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 21474800) #5
  br label %90

90:                                               ; preds = %88, %83, %76, %44, %11
  %91 = phi i32 [ %12, %11 ], [ -2, %44 ], [ -2, %76 ], [ 0, %88 ], [ 0, %83 ]
  %92 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %93 = load ptr, ptr %92, align 4
  tail call void %93(ptr noundef %0) #5
  br label %94

94:                                               ; preds = %90, %3
  %95 = phi i32 [ %91, %90 ], [ %7, %3 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_bm2(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %1, 5
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %78

9:                                                ; preds = %3
  %10 = and i32 %1, 2097120
  %11 = icmp eq i32 %10, 25600
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %74

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 1, ptr %15, align 4
  %16 = icmp ugt i32 %1, 15
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = and i32 %4, 65535
  %19 = or i32 %18, 70647808
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %19) #5
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i32 [ 0, %17 ], [ %29, %21 ]
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 10737400) #5
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr i8, ptr %24, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %27 = and i32 %26, 268435456
  %28 = icmp ne i32 %27, 0
  %29 = add nuw nsw i32 %22, 1
  %30 = icmp eq i32 %29, 1920
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %21

32:                                               ; preds = %21
  %33 = and i32 %26, 1344208896
  %34 = icmp eq i32 %33, 269877248
  br i1 %34, label %35, label %74

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 21474800) #5
  br label %41

41:                                               ; preds = %39, %35, %14
  %42 = and i32 %1, 31
  %43 = shl nuw nsw i32 %42, 16
  %44 = load i32, ptr %15, align 4
  %45 = shl i32 %44, 21
  %46 = or i32 %45, %43
  %47 = or i32 %46, 134217728
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %47) #5
  %48 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %49

49:                                               ; preds = %49, %41
  %50 = phi i32 [ 0, %41 ], [ %57, %49 ]
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 10737400) #5
  %52 = load ptr, ptr %48, align 4
  %53 = getelementptr i8, ptr %52, i32 32
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %55 = and i32 %54, 268435456
  %56 = icmp ne i32 %55, 0
  %57 = add nuw nsw i32 %50, 1
  %58 = icmp eq i32 %57, 1920
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %60, label %49

60:                                               ; preds = %49
  %61 = and i32 %54, 1342177280
  %62 = icmp eq i32 %61, 268435456
  %63 = lshr i32 %54, 16
  %64 = and i32 %63, 31
  %65 = icmp eq i32 %64, %42
  %66 = select i1 %62, i1 %65, i1 false
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = trunc i32 %54 to i16
  store i16 %68, ptr %2, align 2
  %69 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 21474800) #5
  br label %74

74:                                               ; preds = %72, %67, %60, %32, %12
  %75 = phi i32 [ %13, %12 ], [ -2, %32 ], [ -2, %60 ], [ 0, %72 ], [ 0, %67 ]
  %76 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %0) #5
  br label %78

78:                                               ; preds = %74, %3
  %79 = phi i32 [ %75, %74 ], [ %7, %3 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_bm2(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i16, align 2
  store i16 %2, ptr %4, align 2
  %5 = lshr i32 %1, 5
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %80

10:                                               ; preds = %3
  %11 = and i32 %1, 2097120
  %12 = icmp eq i32 %11, 25600
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %76

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 1, ptr %16, align 4
  %17 = icmp ugt i32 %1, 15
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = and i32 %5, 65535
  %20 = or i32 %19, 70647808
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %20) #5
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %22

22:                                               ; preds = %22, %18
  %23 = phi i32 [ 0, %18 ], [ %30, %22 ]
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 10737400) #5
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr i8, ptr %25, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %28 = and i32 %27, 268435456
  %29 = icmp ne i32 %28, 0
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, 1920
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %22

33:                                               ; preds = %22
  %34 = and i32 %27, 1344208896
  %35 = icmp eq i32 %34, 269877248
  br i1 %35, label %36, label %76

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 21474800) #5
  br label %42

42:                                               ; preds = %40, %36, %15
  %43 = and i32 %1, 31
  %44 = zext i16 %2 to i32
  %45 = shl nuw nsw i32 %43, 16
  %46 = or i32 %45, %44
  %47 = load i32, ptr %16, align 4
  %48 = shl i32 %47, 21
  %49 = or i32 %48, %46
  %50 = or i32 %49, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %50) #5
  %51 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %52

52:                                               ; preds = %52, %42
  %53 = phi i32 [ 0, %42 ], [ %60, %52 ]
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 10737400) #5
  %55 = load ptr, ptr %51, align 4
  %56 = getelementptr i8, ptr %55, i32 32
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %58 = and i32 %57, 268435456
  %59 = icmp ne i32 %58, 0
  %60 = add nuw nsw i32 %53, 1
  %61 = icmp eq i32 %60, 1920
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %63, label %52

63:                                               ; preds = %52
  %64 = and i32 %57, 1342177280
  %65 = icmp eq i32 %64, 268435456
  %66 = lshr i32 %57, 16
  %67 = and i32 %66, 31
  %68 = icmp eq i32 %67, %43
  %69 = select i1 %65, i1 %68, i1 false
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 21474800) #5
  br label %76

76:                                               ; preds = %74, %70, %63, %33, %13
  %77 = phi i32 [ %14, %13 ], [ -2, %33 ], [ -2, %63 ], [ 0, %74 ], [ 0, %70 ]
  %78 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %0) #5
  br label %80

80:                                               ; preds = %76, %3
  %81 = phi i32 [ %77, %76 ], [ %8, %3 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 1, ptr %3, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef 71262240) #5
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %13, %5 ]
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 10737400) #5
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = and i32 %10, 268435456
  %12 = icmp ne i32 %11, 0
  %13 = add nuw nsw i32 %6, 1
  %14 = icmp eq i32 %13, 1920
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %5

16:                                               ; preds = %5
  %17 = and i32 %10, 1344208896
  %18 = icmp eq i32 %17, 270467072
  br i1 %18, label %19, label %97

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #5
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, ptr %3, align 4
  %27 = shl i32 %26, 21
  %28 = or i32 %27, 135331840
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %28) #5
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i32 [ 0, %25 ], [ %37, %29 ]
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 10737400) #5
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %35 = and i32 %34, 268435456
  %36 = icmp ne i32 %35, 0
  %37 = add nuw nsw i32 %30, 1
  %38 = icmp eq i32 %37, 1920
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %29

40:                                               ; preds = %29
  %41 = and i32 %34, 1344208896
  %42 = icmp eq i32 %41, 269549568
  br i1 %42, label %43, label %97

43:                                               ; preds = %40
  %44 = trunc i32 %34 to i16
  store i16 %44, ptr %1, align 2
  %45 = load i32, ptr %20, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 21474800) #5
  %49 = load i16, ptr %1, align 2
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i16 [ %49, %47 ], [ %44, %43 ]
  %52 = and i16 %51, -53
  %53 = zext i16 %52 to i32
  %54 = load i32, ptr %3, align 4
  %55 = shl i32 %54, 21
  %56 = or i32 %55, %53
  %57 = or i32 %56, 68222980
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %57) #5
  br label %58

58:                                               ; preds = %58, %50
  %59 = phi i32 [ 0, %50 ], [ %66, %58 ]
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 10737400) #5
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr i8, ptr %61, i32 32
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %64 = and i32 %63, 268435456
  %65 = icmp ne i32 %64, 0
  %66 = add nuw nsw i32 %59, 1
  %67 = icmp eq i32 %66, 1920
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %69, label %58

69:                                               ; preds = %58
  %70 = and i32 %63, 1344208896
  %71 = icmp eq i32 %70, 269549568
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  %73 = load i32, ptr %20, align 4
  %74 = icmp eq i32 %73, 10
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 21474800) #5
  br label %77

77:                                               ; preds = %75, %72
  store i32 1, ptr %3, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef 71263232) #5
  br label %78

78:                                               ; preds = %78, %77
  %79 = phi i32 [ 0, %77 ], [ %86, %78 ]
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 10737400) #5
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr i8, ptr %81, i32 32
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %84 = and i32 %83, 268435456
  %85 = icmp ne i32 %84, 0
  %86 = add nuw nsw i32 %79, 1
  %87 = icmp eq i32 %86, 1920
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %89, label %78

89:                                               ; preds = %78
  %90 = and i32 %83, 1344208896
  %91 = icmp eq i32 %90, 270467072
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, ptr %20, align 4
  %94 = icmp eq i32 %93, 10
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 21474800) #5
  br label %97

97:                                               ; preds = %95, %92, %89, %69, %40, %16
  %98 = phi i32 [ -2, %16 ], [ -2, %40 ], [ -2, %69 ], [ -2, %89 ], [ 0, %95 ], [ 0, %92 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 1, ptr %3, align 4
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef 71262240) #5
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %13, %5 ]
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 10737400) #5
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = and i32 %10, 268435456
  %12 = icmp ne i32 %11, 0
  %13 = add nuw nsw i32 %6, 1
  %14 = icmp eq i32 %13, 1920
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %5

16:                                               ; preds = %5
  %17 = and i32 %10, 1344208896
  %18 = icmp eq i32 %17, 270467072
  br i1 %18, label %19, label %51

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #5
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i16, ptr %1, align 2
  %27 = zext i16 %26 to i32
  %28 = load i32, ptr %3, align 4
  %29 = shl i32 %28, 21
  %30 = or i32 %29, %27
  %31 = or i32 %30, 68222976
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %31) #5
  br label %32

32:                                               ; preds = %32, %25
  %33 = phi i32 [ 0, %25 ], [ %40, %32 ]
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 10737400) #5
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 32
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %38 = and i32 %37, 268435456
  %39 = icmp ne i32 %38, 0
  %40 = add nuw nsw i32 %33, 1
  %41 = icmp eq i32 %40, 1920
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %43, label %32

43:                                               ; preds = %32
  %44 = and i32 %37, 1344208896
  %45 = icmp eq i32 %44, 269549568
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, ptr %20, align 4
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 21474800) #5
  br label %51

51:                                               ; preds = %49, %46, %43, %16
  %52 = phi i32 [ -2, %16 ], [ -2, %43 ], [ 0, %49 ], [ 0, %46 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000_power_up_phy_copper(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #5
  %6 = load i16, ptr %2, align 2
  %7 = and i16 %6, -2049
  store i16 %7, ptr %2, align 2
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %7) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000_power_down_phy_copper(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #5
  %6 = load i16, ptr %2, align 2
  %7 = or i16 %6, 2048
  store i16 %7, ptr %2, align 2
  %8 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %7) #5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_read_phy_reg_hv(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__e1000_read_phy_reg_hv(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__e1000_read_phy_reg_hv(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = lshr i32 %1, 5
  %7 = and i32 %1, 31
  %8 = lshr i32 %1, 16
  %9 = and i32 %8, 65504
  %10 = or i32 %9, %7
  %11 = and i32 %6, 65535
  %12 = icmp ugt i32 %11, 767
  %13 = select i1 %12, i32 1, i32 2
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 %13, ptr %14, align 4
  br i1 %3, label %20, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %99

20:                                               ; preds = %15, %5
  %21 = icmp eq i32 %11, 800
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = tail call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext %4)
  br label %94

24:                                               ; preds = %20
  %25 = add nsw i32 %11, -1
  %26 = icmp ult i32 %25, 767
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @e1000_access_phy_debug_regs_hv(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true)
  br label %94

29:                                               ; preds = %24
  %30 = icmp ult i32 %10, 16
  %31 = or i1 %30, %4
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, ptr %14, align 4
  br label %62

34:                                               ; preds = %29
  %35 = icmp eq i32 %11, 768
  %36 = and i32 %1, 65504
  store i32 1, ptr %14, align 4
  %37 = or i32 %36, 71237632
  %38 = select i1 %35, i32 71237632, i32 %37
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %38) #5
  %39 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %40

40:                                               ; preds = %40, %34
  %41 = phi i32 [ 0, %34 ], [ %48, %40 ]
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 10737400) #5
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr i8, ptr %43, i32 32
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %46 = and i32 %45, 268435456
  %47 = icmp ne i32 %46, 0
  %48 = add nuw nsw i32 %41, 1
  %49 = icmp eq i32 %48, 1920
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %51, label %40

51:                                               ; preds = %40
  %52 = and i32 %45, 1344208896
  %53 = icmp eq i32 %52, 270467072
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 21474800) #5
  br label %60

60:                                               ; preds = %58, %54
  store i32 %13, ptr %14, align 4
  br label %62

61:                                               ; preds = %51
  store i32 %13, ptr %14, align 4
  br label %94

62:                                               ; preds = %60, %32
  %63 = phi i32 [ %33, %32 ], [ %13, %60 ]
  %64 = shl nuw nsw i32 %7, 16
  %65 = shl i32 %63, 21
  %66 = or i32 %65, %64
  %67 = or i32 %66, 134217728
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %67) #5
  %68 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %69

69:                                               ; preds = %69, %62
  %70 = phi i32 [ 0, %62 ], [ %77, %69 ]
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 10737400) #5
  %72 = load ptr, ptr %68, align 4
  %73 = getelementptr i8, ptr %72, i32 32
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %75 = and i32 %74, 268435456
  %76 = icmp ne i32 %75, 0
  %77 = add nuw nsw i32 %70, 1
  %78 = icmp eq i32 %77, 1920
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %80, label %69

80:                                               ; preds = %69
  %81 = and i32 %74, 1342177280
  %82 = icmp eq i32 %81, 268435456
  %83 = lshr i32 %74, 16
  %84 = and i32 %83, 31
  %85 = icmp eq i32 %84, %7
  %86 = select i1 %82, i1 %85, i1 false
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = trunc i32 %74 to i16
  store i16 %88, ptr %2, align 2
  %89 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 21474800) #5
  br label %94

94:                                               ; preds = %92, %87, %80, %61, %27, %22
  %95 = phi i32 [ %23, %22 ], [ %28, %27 ], [ -2, %61 ], [ -2, %80 ], [ 0, %92 ], [ 0, %87 ]
  br i1 %3, label %99, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %98 = load ptr, ptr %97, align 4
  tail call void %98(ptr noundef %0) #5
  br label %99

99:                                               ; preds = %96, %94, %15
  %100 = phi i32 [ %18, %15 ], [ %95, %96 ], [ %95, %94 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_read_phy_reg_hv_locked(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__e1000_read_phy_reg_hv(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_read_phy_reg_page_hv(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__e1000_read_phy_reg_hv(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_write_phy_reg_hv(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__e1000_write_phy_reg_hv(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__e1000_write_phy_reg_hv(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i16 %2, ptr %6, align 2
  %8 = lshr i32 %1, 5
  %9 = and i32 %1, 31
  %10 = lshr i32 %1, 16
  %11 = and i32 %10, 65504
  %12 = or i32 %11, %9
  %13 = and i32 %8, 65535
  %14 = icmp ugt i32 %13, 767
  %15 = select i1 %14, i32 1, i32 2
  %16 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 %15, ptr %16, align 4
  br i1 %3, label %22, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %119

22:                                               ; preds = %17, %5
  %23 = icmp eq i32 %13, 800
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, i1 noundef zeroext false, i1 noundef zeroext %4)
  br label %114

26:                                               ; preds = %22
  %27 = add nsw i32 %13, -1
  %28 = icmp ult i32 %27, 767
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call fastcc i32 @e1000_access_phy_debug_regs_hv(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, i1 noundef zeroext false)
  br label %114

31:                                               ; preds = %26
  br i1 %4, label %81, label %32

32:                                               ; preds = %31
  %33 = icmp eq i32 %13, 768
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %16, align 4
  %43 = icmp ne i32 %42, 2
  %44 = icmp ne i32 %9, 0
  %45 = or i1 %44, %43
  %46 = and i16 %2, 2048
  %47 = icmp eq i16 %46, 0
  %48 = or i1 %47, %45
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #5
  store i16 32511, ptr %7, align 2
  %50 = call fastcc i32 @e1000_access_phy_debug_regs_hv(ptr noundef %0, i32 noundef 67, ptr noundef nonnull %7, i1 noundef zeroext false)
  %51 = icmp eq i32 %50, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #5
  br i1 %51, label %52, label %114

52:                                               ; preds = %49, %41, %37, %32
  %53 = icmp ugt i32 %12, 15
  br i1 %53, label %54, label %81

54:                                               ; preds = %52
  %55 = and i32 %1, 65504
  store i32 1, ptr %16, align 4
  %56 = or i32 %55, 71237632
  %57 = select i1 %33, i32 71237632, i32 %56
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %57) #5
  %58 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %59

59:                                               ; preds = %59, %54
  %60 = phi i32 [ 0, %54 ], [ %67, %59 ]
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 10737400) #5
  %62 = load ptr, ptr %58, align 4
  %63 = getelementptr i8, ptr %62, i32 32
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %65 = and i32 %64, 268435456
  %66 = icmp ne i32 %65, 0
  %67 = add nuw nsw i32 %60, 1
  %68 = icmp eq i32 %67, 1920
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %70, label %59

70:                                               ; preds = %59
  %71 = and i32 %64, 1344208896
  %72 = icmp eq i32 %71, 270467072
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 21474800) #5
  br label %79

79:                                               ; preds = %77, %73
  store i32 %15, ptr %16, align 4
  br label %81

80:                                               ; preds = %70
  store i32 %15, ptr %16, align 4
  br label %114

81:                                               ; preds = %79, %52, %31
  %82 = zext i16 %2 to i32
  %83 = shl nuw nsw i32 %9, 16
  %84 = or i32 %83, %82
  %85 = load i32, ptr %16, align 4
  %86 = shl i32 %85, 21
  %87 = or i32 %86, %84
  %88 = or i32 %87, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %88) #5
  %89 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %90

90:                                               ; preds = %90, %81
  %91 = phi i32 [ 0, %81 ], [ %98, %90 ]
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 10737400) #5
  %93 = load ptr, ptr %89, align 4
  %94 = getelementptr i8, ptr %93, i32 32
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %96 = and i32 %95, 268435456
  %97 = icmp ne i32 %96, 0
  %98 = add nuw nsw i32 %91, 1
  %99 = icmp eq i32 %98, 1920
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %101, label %90

101:                                              ; preds = %90
  %102 = and i32 %95, 1342177280
  %103 = icmp eq i32 %102, 268435456
  %104 = lshr i32 %95, 16
  %105 = and i32 %104, 31
  %106 = icmp eq i32 %105, %9
  %107 = select i1 %103, i1 %106, i1 false
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 10
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 21474800) #5
  br label %114

114:                                              ; preds = %112, %108, %101, %80, %49, %29, %24
  %115 = phi i32 [ %25, %24 ], [ %30, %29 ], [ -2, %80 ], [ %50, %49 ], [ -2, %101 ], [ 0, %112 ], [ 0, %108 ]
  br i1 %3, label %119, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 13
  %118 = load ptr, ptr %117, align 4
  tail call void %118(ptr noundef %0) #5
  br label %119

119:                                              ; preds = %116, %114, %17
  %120 = phi i32 [ %20, %17 ], [ %115, %116 ], [ %115, %114 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_write_phy_reg_hv_locked(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__e1000_write_phy_reg_hv(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext true, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_write_phy_reg_page_hv(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__e1000_write_phy_reg_hv(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_link_stall_workaround_hv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #5
  %10 = load i16, ptr %2, align 2
  %11 = and i16 %10, 16384
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %6
  %14 = load ptr, ptr %7, align 4
  %15 = call i32 %14(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %2) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i16, ptr %2, align 2
  %19 = and i16 %18, -13312
  store i16 %19, ptr %2, align 2
  %20 = icmp eq i16 %19, -29696
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  call void @msleep(i32 noundef 200) #5
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 %23(ptr noundef %0, i32 noundef 24848, i16 noundef zeroext 1028) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 4
  %28 = call i32 %27(ptr noundef %0, i32 noundef 24848, i16 noundef zeroext 1024) #5
  br label %29

29:                                               ; preds = %26, %21, %17, %13, %6, %1
  %30 = phi i32 [ %28, %26 ], [ 0, %1 ], [ 0, %6 ], [ %15, %13 ], [ 0, %17 ], [ %24, %21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_check_polarity_82577(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = lshr i16 %8, 10
  %10 = and i16 %9, 1
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_phy_force_speed_duplex_82577(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 %6(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %82

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 4, i32 6
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = load i16, ptr %4, align 2
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 19
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, 5
  %18 = icmp eq i8 %17, 0
  %19 = and i32 %13, -6946
  %20 = or i16 %14, 256
  %21 = and i16 %14, -12609
  %22 = select i1 %18, i16 %20, i16 %21
  %23 = select i1 %18, i32 6145, i32 6144
  %24 = or i32 %23, %19
  %25 = and i8 %16, 12
  %26 = icmp eq i8 %25, 0
  %27 = and i16 %22, -12353
  %28 = or i32 %24, 256
  %29 = or i16 %27, 8192
  %30 = select i1 %26, i16 %27, i16 %29
  %31 = select i1 %26, i32 %24, i32 %28
  store i16 %30, ptr %4, align 2
  %32 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  call void %33(ptr noundef %0) #5
  call void @__ew32(ptr noundef %0, i32 noundef 0, i32 noundef %31) #5
  %34 = load i16, ptr %4, align 2
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 %36(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %34) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %9
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748) #5
  %41 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 24
  %42 = load i8, ptr %41, align 4, !range !11
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %82, label %44

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !10
  br label %45

45:                                               ; preds = %59, %44
  %46 = phi i16 [ 0, %44 ], [ %60, %59 ]
  %47 = load ptr, ptr %5, align 4
  %48 = call i32 %47(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  call void @msleep(i32 noundef 100) #5
  br label %51

51:                                               ; preds = %50, %45
  %52 = load ptr, ptr %5, align 4
  %53 = call i32 %52(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i16, ptr %3, align 2
  %57 = and i16 %56, 4
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  call void @msleep(i32 noundef 100) #5
  %60 = add nuw nsw i16 %46, 1
  %61 = icmp ult i16 %46, 19
  br i1 %61, label %45, label %63

62:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %82

63:                                               ; preds = %59, %55
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  br label %64

64:                                               ; preds = %78, %63
  %65 = phi i16 [ 0, %63 ], [ %79, %78 ]
  %66 = load ptr, ptr %5, align 4
  %67 = call i32 %66(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  call void @msleep(i32 noundef 100) #5
  br label %70

70:                                               ; preds = %69, %64
  %71 = load ptr, ptr %5, align 4
  %72 = call i32 %71(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i16, ptr %2, align 2
  %76 = and i16 %75, 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  call void @msleep(i32 noundef 100) #5
  %79 = add nuw nsw i16 %65, 1
  %80 = icmp ult i16 %65, 19
  br i1 %80, label %64, label %81

81:                                               ; preds = %78, %74, %70
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %82

82:                                               ; preds = %81, %62, %39, %9, %1
  %83 = phi i32 [ %7, %1 ], [ %37, %9 ], [ %53, %62 ], [ %72, %81 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_get_phy_info_82577(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !10
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 %6(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 0) #5
  br label %11

11:                                               ; preds = %9, %1
  %12 = load ptr, ptr %5, align 4
  %13 = call i32 %12(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i16, ptr %3, align 2
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %68

21:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  br label %68

22:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  %23 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 21
  store i8 1, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %24 = load ptr, ptr %5, align 4
  %25 = call i32 %24(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %2) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  br label %68

28:                                               ; preds = %22
  %29 = load i16, ptr %2, align 2
  %30 = lshr i16 %29, 10
  %31 = and i16 %30, 1
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 6
  store i32 %32, ptr %33, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  %34 = load ptr, ptr %5, align 4
  %35 = call i32 %34(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %4) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %28
  %38 = load i16, ptr %4, align 2
  %39 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 20
  %40 = lshr i16 %38, 11
  %41 = trunc i16 %40 to i8
  %42 = and i8 %41, 1
  store i8 %42, ptr %39, align 4
  %43 = and i16 %38, 768
  %44 = icmp eq i16 %43, 512
  br i1 %44, label %45, label %64

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 %47(ptr noundef %0) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 4
  %52 = call i32 %51(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %4) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load i16, ptr %4, align 2
  %56 = lshr i16 %55, 13
  %57 = and i16 %56, 1
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 2
  store i32 %58, ptr %59, align 4
  %60 = lshr i16 %55, 12
  %61 = and i16 %60, 1
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 3
  store i32 %62, ptr %63, align 4
  br label %68

64:                                               ; preds = %37
  %65 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 15
  store i16 255, ptr %65, align 4
  %66 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 2
  store i32 255, ptr %66, align 4
  %67 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 3
  store i32 255, ptr %67, align 4
  br label %68

68:                                               ; preds = %64, %54, %50, %45, %28, %27, %21, %19
  %69 = phi i32 [ %13, %21 ], [ %25, %27 ], [ %35, %28 ], [ %48, %45 ], [ %52, %50 ], [ 0, %64 ], [ 0, %54 ], [ -3, %19 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_get_cable_length_82577(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 %4(ptr noundef %0, i32 noundef 31, ptr noundef nonnull %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i16, ptr %2, align 2
  %9 = lshr i16 %8, 2
  %10 = and i16 %9, 255
  %11 = icmp eq i16 %10, 255
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 15
  store i16 %10, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %7, %1
  %15 = phi i32 [ 0, %12 ], [ %5, %1 ], [ -2, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_access_phy_debug_regs_hv(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 9
  %8 = select i1 %7, i32 29, i32 16
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 5, i32 8
  store i32 2, ptr %9, align 4
  %10 = and i32 %1, 63
  %11 = shl nuw nsw i32 %8, 16
  %12 = or i32 %11, %10
  %13 = or i32 %12, 71303168
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %13) #5
  %14 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %15

15:                                               ; preds = %15, %4
  %16 = phi i32 [ 0, %4 ], [ %23, %15 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 10737400) #5
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = and i32 %20, 268435456
  %22 = icmp ne i32 %21, 0
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, 1920
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %15

26:                                               ; preds = %15
  %27 = add nuw nsw i32 %8, 1
  %28 = and i32 %20, 1342177280
  %29 = icmp eq i32 %28, 268435456
  %30 = lshr i32 %20, 16
  %31 = and i32 %30, 31
  %32 = icmp eq i32 %31, %8
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %34, label %101

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 21474800) #5
  br label %40

40:                                               ; preds = %38, %34
  br i1 %3, label %41, label %69

41:                                               ; preds = %40
  %42 = shl nuw nsw i32 %27, 16
  %43 = load i32, ptr %9, align 4
  %44 = shl i32 %43, 21
  %45 = or i32 %44, %42
  %46 = or i32 %45, 134217728
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %46) #5
  br label %47

47:                                               ; preds = %47, %41
  %48 = phi i32 [ 0, %41 ], [ %55, %47 ]
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 10737400) #5
  %50 = load ptr, ptr %14, align 4
  %51 = getelementptr i8, ptr %50, i32 32
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %53 = and i32 %52, 268435456
  %54 = icmp ne i32 %53, 0
  %55 = add nuw nsw i32 %48, 1
  %56 = icmp eq i32 %55, 1920
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %58, label %47

58:                                               ; preds = %47
  %59 = and i32 %52, 1342177280
  %60 = icmp eq i32 %59, 268435456
  %61 = lshr i32 %52, 16
  %62 = and i32 %61, 31
  %63 = icmp eq i32 %62, %27
  %64 = select i1 %60, i1 %63, i1 false
  br i1 %64, label %65, label %101

65:                                               ; preds = %58
  %66 = trunc i32 %52 to i16
  store i16 %66, ptr %2, align 2
  %67 = load i32, ptr %35, align 4
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %99, label %101

69:                                               ; preds = %40
  %70 = load i16, ptr %2, align 2
  %71 = zext i16 %70 to i32
  %72 = shl nuw nsw i32 %27, 16
  %73 = or i32 %72, %71
  %74 = load i32, ptr %9, align 4
  %75 = shl i32 %74, 21
  %76 = or i32 %73, %75
  %77 = or i32 %76, 67108864
  tail call void @__ew32(ptr noundef %0, i32 noundef 32, i32 noundef %77) #5
  br label %78

78:                                               ; preds = %78, %69
  %79 = phi i32 [ 0, %69 ], [ %86, %78 ]
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 10737400) #5
  %81 = load ptr, ptr %14, align 4
  %82 = getelementptr i8, ptr %81, i32 32
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %84 = and i32 %83, 268435456
  %85 = icmp ne i32 %84, 0
  %86 = add nuw nsw i32 %79, 1
  %87 = icmp eq i32 %86, 1920
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %89, label %78

89:                                               ; preds = %78
  %90 = and i32 %83, 1342177280
  %91 = icmp eq i32 %90, 268435456
  %92 = lshr i32 %83, 16
  %93 = and i32 %92, 31
  %94 = icmp eq i32 %93, %27
  %95 = select i1 %91, i1 %94, i1 false
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, ptr %35, align 4
  %98 = icmp eq i32 %97, 10
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %65
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 21474800) #5
  br label %101

101:                                              ; preds = %99, %96, %89, %65, %58, %26
  %102 = phi i32 [ -2, %26 ], [ -2, %58 ], [ 0, %65 ], [ -2, %89 ], [ 0, %96 ], [ 0, %99 ]
  ret i32 %102
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 1669082}
!9 = !{i64 2155654889}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
