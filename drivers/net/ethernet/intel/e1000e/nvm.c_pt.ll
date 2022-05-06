; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/nvm.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/nvm.c"
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_poll_eerd_eewr_done(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %18, %2
  %6 = phi i32 [ 0, %2 ], [ %20, %18 ]
  %7 = load ptr, ptr %4, align 4
  br i1 %3, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %7, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  br label %14

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %7, i32 4140
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ %13, %11 ]
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 1073740) #5
  %20 = add nuw nsw i32 %6, 1
  %21 = icmp eq i32 %20, 100000
  br i1 %21, label %22, label %5

22:                                               ; preds = %18, %14
  %23 = phi i32 [ 0, %14 ], [ -1, %18 ]
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_acquire_nvm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = or i32 %5, 64
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %6) #5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %12, %1
  %13 = phi i32 [ %18, %12 ], [ 1000, %1 ]
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #5
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %18 = add i32 %13, -1
  %19 = icmp eq i32 %18, 0
  %20 = xor i1 %19, true
  %21 = and i32 %17, 128
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %12, label %24

24:                                               ; preds = %12
  br i1 %19, label %25, label %27

25:                                               ; preds = %24
  %26 = and i32 %17, -65
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %26) #5
  br label %27

27:                                               ; preds = %25, %24, %1
  %28 = phi i32 [ -1, %25 ], [ 0, %24 ], [ 0, %1 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_release_nvm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = and i32 %5, -4
  %11 = or i32 %10, 2
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %11) #5
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %15 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 6
  %16 = load i16, ptr %15, align 2
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %18 = zext i16 %16 to i32
  tail call void %17(i32 noundef %18) #5
  br label %19

19:                                               ; preds = %9, %1
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %23 = and i32 %22, -65
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %23) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_nvm_eerd(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = zext i16 %1 to i32
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = icmp ugt i16 %7, %1
  br i1 %8, label %9, label %43

9:                                                ; preds = %4
  %10 = zext i16 %7 to i32
  %11 = zext i16 %2 to i32
  %12 = sub nsw i32 %10, %5
  %13 = icmp slt i32 %12, %11
  %14 = icmp eq i16 %2, 0
  %15 = or i1 %14, %13
  br i1 %15, label %43, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  br label %18

18:                                               ; preds = %34, %16
  %19 = phi i32 [ 0, %16 ], [ %41, %34 ]
  %20 = add nuw nsw i32 %19, %5
  %21 = shl i32 %20, 2
  %22 = or i32 %21, 1
  tail call void @__ew32(ptr noundef %0, i32 noundef 20, i32 noundef %22) #5
  br label %23

23:                                               ; preds = %30, %18
  %24 = phi i32 [ 0, %18 ], [ %32, %30 ]
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr i8, ptr %25, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 1073740) #5
  %32 = add nuw nsw i32 %24, 1
  %33 = icmp eq i32 %32, 100000
  br i1 %33, label %43, label %23

34:                                               ; preds = %23
  %35 = load ptr, ptr %17, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %38 = lshr i32 %37, 16
  %39 = trunc i32 %38 to i16
  %40 = getelementptr i16, ptr %3, i32 %19
  store i16 %39, ptr %40, align 2
  %41 = add nuw nsw i32 %19, 1
  %42 = icmp eq i32 %41, %11
  br i1 %42, label %43, label %18

43:                                               ; preds = %34, %30, %9, %4
  %44 = phi i32 [ -1, %9 ], [ -1, %4 ], [ -1, %30 ], [ 0, %34 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_nvm_spi(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6
  %6 = zext i16 %1 to i32
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp ugt i16 %8, %1
  br i1 %9, label %10, label %197

10:                                               ; preds = %4
  %11 = zext i16 %8 to i32
  %12 = zext i16 %2 to i32
  %13 = sub nsw i32 %11, %6
  %14 = icmp sge i32 %13, %12
  %15 = icmp ne i16 %2, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %197

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %20 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 8
  %21 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 6
  %22 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 7
  %23 = icmp ugt i16 %1, 127
  %24 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 9
  %25 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 2
  br label %26

26:                                               ; preds = %193, %17
  %27 = phi i16 [ 0, %17 ], [ %194, %193 ]
  %28 = load ptr, ptr %5, align 4
  %29 = tail call i32 %28(ptr noundef %0) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %197

31:                                               ; preds = %26
  %32 = load ptr, ptr %18, align 4
  %33 = getelementptr i8, ptr %32, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %35 = load i32, ptr %19, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %102

37:                                               ; preds = %31
  %38 = and i32 %34, -4
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %38) #5
  %39 = load ptr, ptr %18, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #5
  br label %43

43:                                               ; preds = %97, %37
  %44 = phi i16 [ 5000, %37 ], [ %98, %97 ]
  %45 = load i16, ptr %20, align 2
  tail call fastcc void @e1000_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext 5, i16 noundef zeroext %45) #5
  %46 = load ptr, ptr %18, align 4
  %47 = getelementptr i8, ptr %46, i32 16
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %49 = and i32 %48, -13
  br label %50

50:                                               ; preds = %50, %43
  %51 = phi i32 [ 0, %43 ], [ %70, %50 ]
  %52 = phi i32 [ %49, %43 ], [ %63, %50 ]
  %53 = or i32 %52, 1
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %53) #5
  %54 = load ptr, ptr %18, align 4
  %55 = getelementptr i8, ptr %54, i32 8
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %57 = load i16, ptr %21, align 2
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %59 = zext i16 %57 to i32
  tail call void %58(i32 noundef %59) #5
  %60 = load ptr, ptr %18, align 4
  %61 = getelementptr i8, ptr %60, i32 16
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %63 = and i32 %62, -6
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %63) #5
  %64 = load ptr, ptr %18, align 4
  %65 = getelementptr i8, ptr %64, i32 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %67 = load i16, ptr %21, align 2
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %69 = zext i16 %67 to i32
  tail call void %68(i32 noundef %69) #5
  %70 = add nuw nsw i32 %51, 1
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %72, label %50

72:                                               ; preds = %50
  %73 = and i32 %62, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %102, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 1073740) #5
  %77 = load ptr, ptr %18, align 4
  %78 = getelementptr i8, ptr %77, i32 16
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %80 = load i32, ptr %19, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = or i32 %79, 2
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %83) #5
  %84 = load ptr, ptr %18, align 4
  %85 = getelementptr i8, ptr %84, i32 8
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %87 = load i16, ptr %21, align 2
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %89 = zext i16 %87 to i32
  tail call void %88(i32 noundef %89) #5
  %90 = and i32 %79, -3
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %90) #5
  %91 = load ptr, ptr %18, align 4
  %92 = getelementptr i8, ptr %91, i32 8
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %94 = load i16, ptr %21, align 2
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %96 = zext i16 %94 to i32
  tail call void %95(i32 noundef %96) #5
  br label %97

97:                                               ; preds = %82, %75
  %98 = add nsw i16 %44, -1
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %43

100:                                              ; preds = %97
  %101 = load ptr, ptr %25, align 4
  tail call void %101(ptr noundef %0) #5
  br label %197

102:                                              ; preds = %72, %31
  %103 = load ptr, ptr %18, align 4
  %104 = getelementptr i8, ptr %103, i32 16
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %106 = load i32, ptr %19, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = or i32 %105, 2
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %109) #5
  %110 = load ptr, ptr %18, align 4
  %111 = getelementptr i8, ptr %110, i32 8
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %113 = load i16, ptr %21, align 2
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %115 = zext i16 %113 to i32
  tail call void %114(i32 noundef %115) #5
  %116 = and i32 %105, -3
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %116) #5
  %117 = load ptr, ptr %18, align 4
  %118 = getelementptr i8, ptr %117, i32 8
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %120 = load i16, ptr %21, align 2
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %122 = zext i16 %120 to i32
  tail call void %121(i32 noundef %122) #5
  br label %123

123:                                              ; preds = %108, %102
  %124 = load i16, ptr %20, align 2
  tail call fastcc void @e1000_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext 6, i16 noundef zeroext %124)
  %125 = load ptr, ptr %18, align 4
  %126 = getelementptr i8, ptr %125, i32 16
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %128 = load i32, ptr %19, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %145

130:                                              ; preds = %123
  %131 = or i32 %127, 2
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %131) #5
  %132 = load ptr, ptr %18, align 4
  %133 = getelementptr i8, ptr %132, i32 8
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %135 = load i16, ptr %21, align 2
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %137 = zext i16 %135 to i32
  tail call void %136(i32 noundef %137) #5
  %138 = and i32 %127, -3
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %138) #5
  %139 = load ptr, ptr %18, align 4
  %140 = getelementptr i8, ptr %139, i32 8
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %142 = load i16, ptr %21, align 2
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %144 = zext i16 %142 to i32
  tail call void %143(i32 noundef %144) #5
  br label %145

145:                                              ; preds = %130, %123
  %146 = load i16, ptr %22, align 4
  %147 = icmp eq i16 %146, 8
  %148 = and i1 %23, %147
  %149 = select i1 %148, i16 10, i16 2
  %150 = load i16, ptr %20, align 2
  tail call fastcc void @e1000_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext %149, i16 noundef zeroext %150)
  %151 = add i16 %27, %1
  %152 = shl i16 %151, 1
  %153 = load i16, ptr %22, align 4
  tail call fastcc void @e1000_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext %152, i16 noundef zeroext %153)
  %154 = zext i16 %27 to i32
  %155 = call i16 @llvm.umax.i16(i16 %27, i16 %2)
  %156 = zext i16 %155 to i32
  br label %157

157:                                              ; preds = %160, %145
  %158 = phi i32 [ %164, %160 ], [ %154, %145 ]
  %159 = icmp eq i32 %158, %156
  br i1 %159, label %193, label %160

160:                                              ; preds = %157
  %161 = getelementptr i16, ptr %3, i32 %158
  %162 = load i16, ptr %161, align 2
  %163 = tail call i16 @llvm.bswap.i16(i16 %162)
  tail call fastcc void @e1000_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext %163, i16 noundef zeroext 16)
  %164 = add nuw nsw i32 %158, 1
  %165 = add nuw nsw i32 %164, %6
  %166 = shl nuw nsw i32 %165, 1
  %167 = load i16, ptr %24, align 4
  %168 = zext i16 %167 to i32
  %169 = urem i32 %166, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %157

171:                                              ; preds = %160
  %172 = trunc i32 %164 to i16
  %173 = load ptr, ptr %18, align 4
  %174 = getelementptr i8, ptr %173, i32 16
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %176 = load i32, ptr %19, align 4
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %193

178:                                              ; preds = %171
  %179 = or i32 %175, 2
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %179) #5
  %180 = load ptr, ptr %18, align 4
  %181 = getelementptr i8, ptr %180, i32 8
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %183 = load i16, ptr %21, align 2
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %185 = zext i16 %183 to i32
  tail call void %184(i32 noundef %185) #5
  %186 = and i32 %175, -3
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %186) #5
  %187 = load ptr, ptr %18, align 4
  %188 = getelementptr i8, ptr %187, i32 8
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %190 = load i16, ptr %21, align 2
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %192 = zext i16 %190 to i32
  tail call void %191(i32 noundef %192) #5
  br label %193

193:                                              ; preds = %178, %171, %157
  %194 = phi i16 [ %172, %171 ], [ %172, %178 ], [ %155, %157 ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  %195 = load ptr, ptr %25, align 4
  tail call void %195(ptr noundef %0) #5
  %196 = icmp ult i16 %194, %2
  br i1 %196, label %26, label %197

197:                                              ; preds = %193, %100, %26, %10, %4
  %198 = phi i32 [ -1, %10 ], [ -1, %4 ], [ -1, %100 ], [ 0, %193 ], [ %29, %26 ]
  ret i32 %198
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_shift_out_eec_bits(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = zext i16 %2 to i32
  %9 = add nsw i32 %8, -1
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  %14 = or i32 %7, 8
  %15 = select i1 %13, i32 %14, i32 %7
  %16 = zext i16 %1 to i32
  %17 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 6
  br label %18

18:                                               ; preds = %18, %3
  %19 = phi i32 [ %15, %3 ], [ %39, %18 ]
  %20 = phi i32 [ %10, %3 ], [ %46, %18 ]
  %21 = and i32 %19, -5
  %22 = and i32 %20, %16
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 4
  %25 = or i32 %24, %21
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %25) #5
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %29 = load i16, ptr %17, align 2
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %31 = zext i16 %29 to i32
  tail call void %30(i32 noundef %31) #5
  %32 = or i32 %25, 1
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %32) #5
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %36 = load i16, ptr %17, align 2
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %38 = zext i16 %36 to i32
  tail call void %37(i32 noundef %38) #5
  %39 = and i32 %25, -2
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %39) #5
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %43 = load i16, ptr %17, align 2
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %45 = zext i16 %43 to i32
  tail call void %44(i32 noundef %45) #5
  %46 = lshr i32 %20, 1
  %47 = icmp ult i32 %20, 2
  br i1 %47, label %48, label %18

48:                                               ; preds = %18
  %49 = and i32 %19, -6
  tail call void @__ew32(ptr noundef %0, i32 noundef 16, i32 noundef %49) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_read_pba_string_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 0, ptr %5, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #5
  store i16 0, ptr %6, align 2, !annotation !10
  %7 = icmp eq ptr %1, null
  br i1 %7, label %132, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef nonnull %4) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %132

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 4
  %15 = call i32 %14(ptr noundef %0, i16 noundef zeroext 9, i16 noundef zeroext 1, ptr noundef nonnull %5) #5
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
  %84 = load i16, ptr %5, align 2
  %85 = load ptr, ptr %9, align 4
  %86 = call i32 %85(ptr noundef %0, i16 noundef zeroext %84, i16 noundef zeroext 1, ptr noundef nonnull %6) #5
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
  %104 = call i32 %103(ptr noundef %0, i16 noundef zeroext %99, i16 noundef zeroext 1, ptr noundef nonnull %4) #5
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
  %122 = trunc i32 %116 to i16
  %123 = add i16 %121, %122
  %124 = load ptr, ptr %9, align 4
  %125 = call i32 %124(ptr noundef %0, i16 noundef zeroext %123, i16 noundef zeroext 1, ptr noundef nonnull %4) #5
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
  %133 = phi i32 [ 0, %129 ], [ -16, %3 ], [ %11, %8 ], [ %15, %13 ], [ 17, %20 ], [ %86, %83 ], [ -18, %88 ], [ -17, %92 ], [ 0, %81 ], [ 0, %79 ], [ %104, %102 ], [ %125, %120 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000_read_mac_addr_generic(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 21508
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 21504
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %9 = trunc i32 %8 to i8
  %10 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 2, i32 0
  store i8 %9, ptr %10, align 1
  %11 = lshr i32 %8, 8
  %12 = trunc i32 %11 to i8
  %13 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 2, i32 1
  store i8 %12, ptr %13, align 1
  %14 = lshr i32 %8, 16
  %15 = trunc i32 %14 to i8
  %16 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 2, i32 2
  store i8 %15, ptr %16, align 1
  %17 = lshr i32 %8, 24
  %18 = trunc i32 %17 to i8
  %19 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 2, i32 3
  store i8 %18, ptr %19, align 1
  %20 = trunc i32 %5 to i8
  %21 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 2, i32 4
  store i8 %20, ptr %21, align 1
  %22 = lshr i32 %5, 8
  %23 = trunc i32 %22 to i8
  %24 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 2, i32 5
  store i8 %23, ptr %24, align 1
  %25 = getelementptr i8, ptr %0, i32 104
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %25, ptr noundef align 1 dereferenceable(6) %10, i32 6, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_validate_nvm_checksum_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !10
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi i16 [ 0, %1 ], [ %14, %10 ]
  %6 = phi i32 [ 0, %1 ], [ %15, %10 ]
  %7 = load ptr, ptr %3, align 4
  %8 = call i32 %7(ptr noundef %0, i16 noundef zeroext %5, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
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
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_update_nvm_checksum_generic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !10
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  br label %5

5:                                                ; preds = %11, %1
  %6 = phi i16 [ 0, %1 ], [ %13, %11 ]
  %7 = phi i16 [ 0, %1 ], [ %14, %11 ]
  %8 = load ptr, ptr %4, align 4
  %9 = call i32 %8(ptr noundef %0, i16 noundef zeroext %7, i16 noundef zeroext 1, ptr noundef nonnull %3) #5
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
  %18 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %0, i16 noundef zeroext 63, i16 noundef zeroext 1, ptr noundef nonnull %2) #5
  br label %21

21:                                               ; preds = %16, %5
  %22 = phi i32 [ %20, %16 ], [ %9, %5 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_reload_nvm_generic(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = or i32 %5, 8192
  tail call void @__ew32(ptr noundef %0, i32 noundef 24, i32 noundef %6) #5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 1595658}
!9 = !{i64 2155581465}
!10 = !{!"auto-init"}
