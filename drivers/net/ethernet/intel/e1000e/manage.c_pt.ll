; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/manage.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/manage.c"
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
define dso_local zeroext i1 @e1000e_check_mng_mode_generic(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 23380
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %6 = and i32 %5, 14
  %7 = icmp eq i32 %6, 6
  ret i1 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @e1000e_enable_tx_pkt_filtering(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 28
  store i8 1, ptr %3, align 1
  %4 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 %5(ptr noundef %0) #3
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8 0, ptr %3, align 1
  br label %101

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @e1000_mng_enable_host_if(ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 36592
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  store i32 %15, ptr %2, align 4
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr i8, ptr %16, i32 36596
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %19 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 1
  store i32 %18, ptr %19, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr i8, ptr %20, i32 36600
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %23 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 4
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr i8, ptr %24, i32 36604
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %27 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 5
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 7
  %29 = lshr i32 %26, 24
  %30 = trunc i32 %29 to i8
  store i8 0, ptr %28, align 1
  %31 = icmp eq ptr %2, null
  br i1 %31, label %85, label %33

32:                                               ; preds = %8
  store i8 0, ptr %3, align 1
  br label %101

33:                                               ; preds = %11
  %34 = lshr i32 %26, 16
  %35 = lshr i32 %26, 8
  %36 = load i8, ptr %2, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr i8, ptr %2, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nuw nsw i32 %37, %40
  %42 = getelementptr i8, ptr %2, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %41, %44
  %46 = getelementptr i8, ptr %2, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %45, %48
  %50 = load i8, ptr %19, align 1
  %51 = zext i8 %50 to i32
  %52 = add nuw nsw i32 %49, %51
  %53 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 2
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = add nuw nsw i32 %52, %55
  %57 = getelementptr %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nuw nsw i32 %56, %59
  %61 = getelementptr i8, ptr %2, i32 7
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add nuw nsw i32 %60, %63
  %65 = load i8, ptr %23, align 1
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %64, %66
  %68 = getelementptr i8, ptr %2, i32 9
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = add nuw nsw i32 %67, %70
  %72 = getelementptr i8, ptr %2, i32 10
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %71, %74
  %76 = getelementptr i8, ptr %2, i32 11
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add nuw nsw i32 %75, %78
  %80 = add i32 %79, %26
  %81 = add i32 %80, %35
  %82 = add i32 %81, %34
  %83 = trunc i32 %82 to i8
  %84 = sub i8 0, %83
  br label %85

85:                                               ; preds = %33, %11
  %86 = phi i8 [ %84, %33 ], [ 0, %11 ]
  %87 = icmp eq i8 %86, %30
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, ptr %2, align 4
  %90 = icmp eq i32 %89, 1414349129
  br i1 %90, label %92, label %91

91:                                               ; preds = %88, %85
  store i8 1, ptr %3, align 1
  br label %101

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 8, i32 1
  %94 = load i8, ptr %93, align 4
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i8, ptr %3, align 1, !range !11
  %99 = icmp ne i8 %98, 0
  br label %101

100:                                              ; preds = %92
  store i8 0, ptr %3, align 1
  br label %101

101:                                              ; preds = %100, %97, %91, %32, %7
  %102 = phi i1 [ false, %32 ], [ true, %91 ], [ false, %7 ], [ %99, %97 ], [ false, %100 ]
  ret i1 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_mng_enable_host_if(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 22
  %3 = load i8, ptr %2, align 1, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %83, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 36608
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %83, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 36608
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %83, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #3
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 36608
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %83, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #3
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 36608
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %83, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #3
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr i8, ptr %34, i32 36608
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %83, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #3
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 36608
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #3
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr i8, ptr %48, i32 36608
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %83, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #3
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr i8, ptr %55, i32 36608
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #3
  %62 = load ptr, ptr %6, align 4
  %63 = getelementptr i8, ptr %62, i32 36608
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #3
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr i8, ptr %69, i32 36608
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %67
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #3
  %76 = load ptr, ptr %6, align 4
  %77 = getelementptr i8, ptr %76, i32 36608
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #3
  br label %83

83:                                               ; preds = %81, %74, %67, %60, %53, %46, %39, %32, %25, %18, %12, %5, %1
  %84 = phi i32 [ -11, %1 ], [ -11, %5 ], [ -11, %81 ], [ 0, %74 ], [ 0, %67 ], [ 0, %60 ], [ 0, %53 ], [ 0, %46 ], [ 0, %39 ], [ 0, %32 ], [ 0, %25 ], [ 0, %18 ], [ 0, %12 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_mng_write_dhcp_info(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = trunc i16 %2 to i8
  %5 = lshr i16 %2, 8
  %6 = trunc i16 %5 to i8
  %7 = tail call fastcc i32 @e1000_mng_enable_host_if(ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %101

9:                                                ; preds = %3
  %10 = add i16 %2, -1777
  %11 = icmp ult i16 %10, -1776
  br i1 %11, label %101, label %12

12:                                               ; preds = %9
  %13 = and i16 %2, 3
  %14 = icmp ult i16 %2, 4
  br i1 %14, label %51, label %15

15:                                               ; preds = %12
  %16 = lshr i16 %2, 2
  %17 = zext i16 %16 to i32
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i8 [ 0, %15 ], [ %33, %18 ]
  %20 = phi i32 [ 0, %15 ], [ %46, %18 ]
  %21 = phi ptr [ %1, %15 ], [ %31, %18 ]
  %22 = getelementptr i8, ptr %21, i32 1
  %23 = load i8, ptr %21, align 1
  %24 = add i8 %23, %19
  %25 = getelementptr i8, ptr %21, i32 2
  %26 = load i8, ptr %22, align 1
  %27 = add i8 %24, %26
  %28 = getelementptr i8, ptr %21, i32 3
  %29 = load i8, ptr %25, align 1
  %30 = add i8 %27, %29
  %31 = getelementptr i8, ptr %21, i32 4
  %32 = load i8, ptr %28, align 1
  %33 = add i8 %30, %32
  %34 = shl nuw nsw i32 %20, 2
  %35 = add nuw nsw i32 %34, 34824
  %36 = zext i8 %32 to i32
  %37 = shl nuw i32 %36, 24
  %38 = zext i8 %29 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = zext i8 %26 to i32
  %41 = shl nuw nsw i32 %40, 8
  %42 = zext i8 %23 to i32
  %43 = or i32 %41, %42
  %44 = or i32 %43, %39
  %45 = or i32 %44, %37
  tail call void @__ew32(ptr noundef %0, i32 noundef %35, i32 noundef %45) #3
  %46 = add nuw nsw i32 %20, 1
  %47 = icmp eq i32 %46, %17
  br i1 %47, label %48, label %18

48:                                               ; preds = %18
  %49 = shl nuw nsw i32 %17, 2
  %50 = add nuw nsw i32 %49, 34824
  br label %51

51:                                               ; preds = %48, %12
  %52 = phi i8 [ 0, %12 ], [ %33, %48 ]
  %53 = phi ptr [ %1, %12 ], [ %31, %48 ]
  %54 = phi i32 [ 34824, %12 ], [ %50, %48 ]
  %55 = icmp eq i16 %13, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %51
  %57 = load i8, ptr %53, align 1
  %58 = add i8 %57, %52
  %59 = icmp eq i16 %13, 1
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %53, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = add i8 %62, %58
  %64 = icmp eq i16 %13, 3
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr i8, ptr %53, i32 2
  %67 = load i8, ptr %66, align 1
  br label %68

68:                                               ; preds = %65, %60, %56
  %69 = phi i8 [ %63, %65 ], [ %63, %60 ], [ %58, %56 ]
  %70 = phi i8 [ %62, %65 ], [ %62, %60 ], [ 0, %56 ]
  %71 = phi i8 [ %67, %65 ], [ 0, %60 ], [ 0, %56 ]
  %72 = add i8 %71, %69
  %73 = zext i8 %71 to i32
  %74 = shl nuw nsw i32 %73, 16
  %75 = zext i8 %70 to i32
  %76 = shl nuw nsw i32 %75, 8
  %77 = or i32 %74, %76
  %78 = zext i8 %57 to i32
  %79 = or i32 %77, %78
  tail call void @__ew32(ptr noundef %0, i32 noundef %54, i32 noundef %79) #3
  br label %80

80:                                               ; preds = %68, %51
  %81 = phi i8 [ %72, %68 ], [ %52, %51 ]
  %82 = add i8 %4, %6
  %83 = add i8 %82, %81
  %84 = sub i8 -64, %83
  %85 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %86 = zext i8 %84 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = or i32 %87, 64
  tail call void @__ew32(ptr noundef %0, i32 noundef 34816, i32 noundef %88) #3
  %89 = load ptr, ptr %85, align 4
  %90 = getelementptr i8, ptr %89, i32 8
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %92 = zext i16 %2 to i32
  %93 = shl nuw i32 %92, 16
  tail call void @__ew32(ptr noundef %0, i32 noundef 34820, i32 noundef %93) #3
  %94 = load ptr, ptr %85, align 4
  %95 = getelementptr i8, ptr %94, i32 8
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %97 = load ptr, ptr %85, align 4
  %98 = getelementptr i8, ptr %97, i32 36608
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %100 = or i32 %99, 2
  tail call void @__ew32(ptr noundef %0, i32 noundef 36608, i32 noundef %100) #3
  br label %101

101:                                              ; preds = %80, %9, %3
  %102 = phi i32 [ 0, %80 ], [ %7, %3 ], [ -4, %9 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @e1000e_enable_mng_pass_thru(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 22560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %7 = and i32 %6, 131072
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 21
  %11 = load i8, ptr %10, align 4, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 23380
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 23344
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %20 = and i32 %19, 536870912
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %16, 14
  %23 = icmp eq i32 %22, 4
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %51, label %50

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 3, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -3
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #3
  store i16 0, ptr %2, align 2, !annotation !12
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 23344
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %34 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 6, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %0, i16 noundef zeroext 15, i16 noundef zeroext 1, ptr noundef nonnull %2) #3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = and i32 %33, 536870912
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i16, ptr %2, align 2
  %43 = and i16 %42, 24576
  %44 = icmp eq i16 %43, 16384
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %30
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #3
  br label %51

46:                                               ; preds = %41, %38
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #3
  br label %50

47:                                               ; preds = %25
  %48 = and i32 %6, 3
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %46, %13
  br label %51

51:                                               ; preds = %50, %47, %45, %13, %1
  %52 = phi i1 [ false, %50 ], [ false, %1 ], [ true, %13 ], [ true, %47 ], [ %37, %45 ]
  ret i1 %52
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{i64 1589389}
!9 = !{i64 2155575196}
!10 = !{i64 2155577901}
!11 = !{i8 0, i8 2}
!12 = !{!"auto-init"}
