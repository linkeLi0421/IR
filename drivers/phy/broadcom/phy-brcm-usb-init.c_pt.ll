; ModuleID = '/llk/IR/drivers/phy/broadcom/phy-brcm-usb-init.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-brcm-usb-init.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcm_usb_init_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.id_to_type = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.brcm_usb_init_params = type { [6 x ptr], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8 }

@usb_reg_bits_map_table = internal constant [10 x [18 x i32]] [[18 x i32] [i32 16384, i32 32768, i32 131072, i32 33554432, i32 -1073741824, i32 0, i32 0, i32 4194304, i32 -2147483648, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3145728, i32 3], [18 x i32] [i32 16384, i32 32768, i32 131072, i32 0, i32 -1073741824, i32 -2147483648, i32 0, i32 1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 805306368, i32 3], [18 x i32] [i32 0, i32 0, i32 131072, i32 33554432, i32 -1073741824, i32 0, i32 8388608, i32 4194304, i32 -2147483648, i32 0, i32 0, i32 0, i32 3, i32 1073741824, i32 67108864, i32 134217728, i32 3145728, i32 3], [18 x i32] [i32 16384, i32 32768, i32 131072, i32 0, i32 -1073741824, i32 -2147483648, i32 0, i32 1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 805306368, i32 3], [18 x i32] [i32 16384, i32 32768, i32 131072, i32 0, i32 -1073741824, i32 0, i32 0, i32 1073741824, i32 -2147483648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 805306368, i32 3], [18 x i32] [i32 16384, i32 32768, i32 65536, i32 0, i32 0, i32 -2147483648, i32 0, i32 0, i32 0, i32 131072, i32 268435456, i32 536870912, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3], [18 x i32] [i32 16384, i32 32768, i32 131072, i32 33554432, i32 -1073741824, i32 0, i32 8388608, i32 4194304, i32 -2147483648, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3145728, i32 3], [18 x i32] [i32 16384, i32 32768, i32 65536, i32 0, i32 -1073741824, i32 -2147483648, i32 0, i32 0, i32 0, i32 131072, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3145728, i32 3], [18 x i32] [i32 0, i32 0, i32 131072, i32 33554432, i32 -1073741824, i32 0, i32 8388608, i32 4194304, i32 -2147483648, i32 0, i32 0, i32 0, i32 3, i32 1073741824, i32 67108864, i32 134217728, i32 3145728, i32 3], [18 x i32] [i32 0, i32 0, i32 0, i32 33554432, i32 -1073741824, i32 0, i32 8388608, i32 4194304, i32 -2147483648, i32 0, i32 0, i32 0, i32 3, i32 1073741824, i32 0, i32 0, i32 0, i32 0]], align 4
@family_names = internal unnamed_addr constant [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], align 4
@bcm7445_ops = internal constant %struct.brcm_usb_init_ops { ptr @usb_init_ipp, ptr @usb_init_common, ptr @usb_init_eohci, ptr @usb_init_xhci, ptr @usb_uninit_common, ptr @usb_uninit_eohci, ptr @usb_uninit_xhci, ptr @usb_get_dual_select, ptr @usb_set_dual_select }, align 4
@id_to_type_table = internal unnamed_addr constant [13 x %struct.id_to_type] [%struct.id_to_type { i32 865075200, i32 0 }, %struct.id_to_type { i32 1917845520, i32 1 }, %struct.id_to_type { i32 1918894080, i32 8 }, %struct.id_to_type { i32 1918173184, i32 8 }, %struct.id_to_type { i32 1919418368, i32 2 }, %struct.id_to_type { i32 1920008192, i32 2 }, %struct.id_to_type { i32 1935933440, i32 3 }, %struct.id_to_type { i32 1936064544, i32 4 }, %struct.id_to_type { i32 121860352, i32 5 }, %struct.id_to_type { i32 1949892624, i32 6 }, %struct.id_to_type { i32 1950679088, i32 7 }, %struct.id_to_type { i32 1920466944, i32 9 }, %struct.id_to_type { i32 0, i32 2 }], align 4
@.str = private unnamed_addr constant [7 x i8] c"3390A0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"7250B0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"7271A0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"7364A0\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"7366C0\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"74371A0\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"7439B0\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"7445D0\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"7260A0\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"7278A0\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcm_usb_dvr_init_7445(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -16
  br label %5

5:                                                ; preds = %24, %1
  %6 = phi i32 [ 865075200, %1 ], [ %29, %24 ]
  %7 = phi i32 [ 0, %1 ], [ %27, %24 ]
  %8 = phi i32 [ 0, %1 ], [ %26, %24 ]
  %9 = phi i32 [ -1, %1 ], [ %25, %24 ]
  %10 = icmp eq i32 %4, %6
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr [13 x %struct.id_to_type], ptr @id_to_type_table, i32 0, i32 %7, i32 1
  %13 = load i32, ptr %12, align 4
  br label %34

14:                                               ; preds = %5
  %15 = xor i32 %6, %3
  %16 = icmp ult i32 %15, 256
  %17 = icmp ugt i32 %4, %6
  %18 = and i1 %17, %16
  %19 = icmp ult i32 %8, %6
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = getelementptr [13 x %struct.id_to_type], ptr @id_to_type_table, i32 0, i32 %7, i32 1
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = phi i32 [ %23, %21 ], [ %9, %14 ]
  %26 = phi i32 [ %6, %21 ], [ %8, %14 ]
  %27 = add nuw nsw i32 %7, 1
  %28 = getelementptr [13 x %struct.id_to_type], ptr @id_to_type_table, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, 12
  br i1 %30, label %31, label %5

31:                                               ; preds = %24
  %32 = icmp eq i32 %25, -1
  %33 = select i1 %32, i32 2, i32 %25
  br label %34

34:                                               ; preds = %31, %11
  %35 = phi i32 [ %13, %11 ], [ %33, %31 ]
  %36 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 6
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [10 x [18 x i32]], ptr @usb_reg_bits_map_table, i32 0, i32 %35
  %38 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 8
  store ptr %37, ptr %38, align 4
  %39 = getelementptr [10 x ptr], ptr @family_names, i32 0, i32 %35
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 7
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 9
  store ptr @bcm7445_ops, ptr %42, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_init_ipp(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i32, ptr %4, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %2, i32 96
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  %15 = or i32 %14, %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #4, !srcloc !9
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i32, ptr %21, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr i8, ptr %24, i32 96
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !8
  %27 = or i32 %26, %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %27) #4, !srcloc !9
  br label %28

28:                                               ; preds = %20, %16, %1
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !8
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i32, ptr %30, i32 15
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %29, %33
  %35 = getelementptr i32, ptr %30, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  br i1 %37, label %45, label %40

40:                                               ; preds = %28
  %41 = icmp eq i32 %39, 2
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = xor i32 %36, -1
  %44 = and i32 %34, %43
  br label %45

45:                                               ; preds = %42, %40, %28
  %46 = phi i32 [ %39, %42 ], [ 2, %40 ], [ %39, %28 ]
  %47 = phi i32 [ %44, %42 ], [ %34, %40 ], [ %34, %28 ]
  %48 = and i32 %47, -49
  %49 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = or i32 %48, 16
  %53 = select i1 %51, i32 %48, i32 %52
  %54 = icmp eq i32 %46, 1
  %55 = or i32 %53, 32
  %56 = select i1 %54, i32 %55, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %56) #4, !srcloc !9
  %57 = xor i32 %56, %29
  %58 = and i32 %57, 32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %45
  tail call void @msleep(i32 noundef 50) #4
  br label %61

61:                                               ; preds = %60, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_init_common(ptr noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4
  %5 = and i32 %4, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #4, !srcloc !9
  %6 = getelementptr i8, ptr %2, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %7) #4, !srcloc !9
  %8 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i32, ptr %9, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  %17 = xor i32 %11, -1
  %18 = and i32 %16, %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %18) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %19 = load ptr, ptr %8, align 4
  br label %20

20:                                               ; preds = %13, %1
  %21 = phi ptr [ %19, %13 ], [ %9, %1 ]
  %22 = getelementptr i32, ptr %21, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr i8, ptr %26, i32 52
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !8
  %29 = xor i32 %23, -1
  %30 = and i32 %28, %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %30) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %31

31:                                               ; preds = %25, %20
  %32 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %37, 268435456
  %39 = select i1 %38, i32 8, i32 16
  %40 = lshr i32 %37, %39
  %41 = icmp eq i32 %40, 29540
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr i32, ptr %43, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %0, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #4, !srcloc !8
  %48 = or i32 %47, %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %48) #4, !srcloc !9
  br label %49

49:                                               ; preds = %42, %35, %31
  %50 = getelementptr i8, ptr %2, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !8
  %52 = or i32 %51, 134217728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %52) #4, !srcloc !9
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !8
  %54 = load i32, ptr %32, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr i32, ptr %57, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, %53
  br label %61

61:                                               ; preds = %56, %49
  %62 = phi i32 [ %60, %56 ], [ %53, %49 ]
  %63 = getelementptr i8, ptr %2, i32 44
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #4, !srcloc !8
  %65 = and i32 %64, -2049
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %65) #4, !srcloc !9
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #4, !srcloc !8
  %67 = and i32 %66, -134217729
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %67) #4, !srcloc !9
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !8
  %69 = and i32 %68, -1073741825
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %69) #4, !srcloc !9
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748) #4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !8
  %72 = or i32 %71, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %72) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %73 = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 2064544) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 35618976) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 2064544) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 706208) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 34260640) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 706208) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %74 = load ptr, ptr %8, align 4
  %75 = load i32, ptr %74, align 4
  %76 = or i32 %75, %62
  %77 = getelementptr i32, ptr %74, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = or i32 %76, %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %79) #4, !srcloc !9
  %80 = load i32, ptr %32, align 4
  %81 = icmp eq i32 %80, 7
  br i1 %81, label %82, label %94

82:                                               ; preds = %61
  %83 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, -4096
  switch i32 %85, label %94 [
    i32 1917976576, label %86
    i32 1950875648, label %86
    i32 1950941184, label %86
    i32 119873536, label %86
    i32 121929728, label %86
    i32 121933824, label %86
  ]

86:                                               ; preds = %82, %82, %82, %82, %82, %82
  %87 = load ptr, ptr %8, align 4
  %88 = getelementptr i32, ptr %87, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %0, align 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #4, !srcloc !8
  %92 = xor i32 %89, -1
  %93 = and i32 %91, %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %93) #4, !srcloc !9
  br label %94

94:                                               ; preds = %86, %82, %61
  %95 = load ptr, ptr %8, align 4
  %96 = getelementptr i32, ptr %95, i32 12
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %94
  %100 = getelementptr i8, ptr %2, i32 144
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #4, !srcloc !8
  %102 = load ptr, ptr %8, align 4
  %103 = getelementptr i32, ptr %102, i32 12
  %104 = load i32, ptr %103, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %101, %105
  %107 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = or i32 %106, %108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %109) #4, !srcloc !9
  %110 = load ptr, ptr %8, align 4
  br label %111

111:                                              ; preds = %99, %94
  %112 = phi ptr [ %110, %99 ], [ %95, %94 ]
  %113 = getelementptr i32, ptr %112, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %133, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  %120 = load ptr, ptr %0, align 4
  %121 = getelementptr i8, ptr %120, i32 52
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #4
  %123 = xor i32 %114, -1
  %124 = and i32 %122, %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %124) #4
  br i1 %119, label %133, label %125

125:                                              ; preds = %116
  %126 = load ptr, ptr %8, align 4
  %127 = getelementptr i32, ptr %126, i32 6
  %128 = load i32, ptr %127, align 4
  %129 = load ptr, ptr %0, align 4
  %130 = getelementptr i8, ptr %129, i32 52
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #4, !srcloc !8
  %132 = or i32 %131, %128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %132) #4, !srcloc !9
  br label %133

133:                                              ; preds = %125, %116, %111
  %134 = load ptr, ptr %8, align 4
  %135 = getelementptr i32, ptr %134, i32 14
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 3
  %142 = load ptr, ptr %0, align 4
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #4
  br i1 %141, label %144, label %146

144:                                              ; preds = %138
  %145 = or i32 %143, %136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %145) #4, !srcloc !9
  br label %149

146:                                              ; preds = %138
  %147 = xor i32 %136, -1
  %148 = and i32 %143, %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %148) #4, !srcloc !9
  br label %149

149:                                              ; preds = %146, %144, %133
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_init_eohci(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i32, ptr %4, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %2, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  %11 = or i32 %10, %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #4, !srcloc !9
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %2, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  %19 = or i32 %18, 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #4, !srcloc !9
  br label %20

20:                                               ; preds = %16, %12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !8
  %22 = and i32 %21, -16
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i32, ptr %23, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %26) #4, !srcloc !9
  %27 = load i32, ptr %13, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = getelementptr i8, ptr %2, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !8
  %32 = or i32 %31, 134217728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %32) #4, !srcloc !9
  br label %33

33:                                               ; preds = %29, %20
  %34 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1918173184
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %2, i32 12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !8
  %40 = and i32 %39, -3969
  %41 = or i32 %40, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %41) #4, !srcloc !9
  br label %42

42:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_init_xhci(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 112
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  %5 = and i32 %4, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %6 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 268435456
  %9 = select i1 %8, i32 8, i32 16
  %10 = lshr i32 %7, %9
  %11 = icmp eq i32 %10, 29542
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  %14 = or i32 %13, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %14) #4, !srcloc !9
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  %16 = or i32 %15, 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %16) #4, !srcloc !9
  br label %17

17:                                               ; preds = %12, %1
  %18 = getelementptr i8, ptr %2, i32 96
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  %20 = and i32 %19, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %20) #4, !srcloc !9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  %22 = or i32 %21, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %22) #4, !srcloc !9
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419264) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2111864832) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419264) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147019517) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2113465085) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147019517) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %32 [
    i32 0, label %47
    i32 1, label %47
    i32 4, label %47
    i32 5, label %47
    i32 6, label %47
    i32 7, label %47
    i32 8, label %47
    i32 3, label %28
  ]

28:                                               ; preds = %17
  %29 = load i32, ptr %6, align 4
  %30 = and i32 %29, 224
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %28, %17
  %33 = getelementptr i8, ptr %25, i32 96
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !8
  %35 = and i32 %34, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #4, !srcloc !9
  %36 = getelementptr i8, ptr %25, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2145419264) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2111864832) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2145419264) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146412668) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2112858236) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146412668) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146369072) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2112814640) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146369072) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146296344) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2112741912) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146296344) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146194816) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2112640384) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146194816) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146138074) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2112583642) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146138074) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146107324) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2112552892) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146107324) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146009088) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2112454656) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2146009088) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2145974191) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2112419759) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2145974191) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2145910784) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2112356352) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2145910784) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  br label %37

37:                                               ; preds = %37, %32
  %38 = phi i1 [ true, %32 ], [ false, %37 ]
  %39 = phi i32 [ 0, %32 ], [ 4096, %37 ]
  %40 = or i32 %39, -2145419200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %40) #4, !srcloc !9
  %41 = or i32 %39, -2111864768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %41) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %40) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2147286896) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2113732464) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2147286896) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2147221196) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2113666764) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2147221196) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %42 = or i32 %39, -2145419232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %42) #4, !srcloc !9
  %43 = or i32 %39, -2111864800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %43) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %42) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2147417886) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2113863454) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2147417886) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  br i1 %38, label %37, label %44

44:                                               ; preds = %37
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !8
  %46 = or i32 %45, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %46) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %47

47:                                               ; preds = %44, %28, %17, %17, %17, %17, %17, %17, %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419200) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2111864768) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419200) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2130640896) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %48 = getelementptr i8, ptr %23, i32 24
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  %50 = and i32 %49, 65520
  %51 = or i32 %50, -2147418097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %51) #4, !srcloc !9
  %52 = or i32 %50, -2113863665
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %52) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %51) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145415104) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2111860672) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145415104) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2130640896) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  %54 = and i32 %53, 65520
  %55 = or i32 %54, -2147418097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %55) #4, !srcloc !9
  %56 = or i32 %54, -2113863665
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %56) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %55) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419264) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2111864832) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419264) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2146500608) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2129723392) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2146500608) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  %58 = and i32 %57, 65023
  %59 = or i32 %58, -2146500096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %59) #4, !srcloc !9
  %60 = or i32 %58, -2112945664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %60) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %59) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419136) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2111864704) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419136) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147155968) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2130378752) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147155968) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  %62 = and i32 %61, 32752
  %63 = or i32 %62, -2147123187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %63) #4, !srcloc !9
  %64 = or i32 %62, -2113568755
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %64) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %63) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145415040) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2111860608) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145415040) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147155968) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2130378752) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147155968) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  %66 = and i32 %65, 32752
  %67 = or i32 %66, -2147123187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %67) #4, !srcloc !9
  %68 = or i32 %66, -2113568755
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %68) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %67) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419168) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2111864736) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419168) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2130640896) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  %70 = and i32 %69, 65023
  %71 = or i32 %70, -2147417600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %71) #4, !srcloc !9
  %72 = or i32 %70, -2113863168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %72) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %71) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145415072) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2111860640) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145415072) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2130640896) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  %74 = and i32 %73, 65023
  %75 = or i32 %74, -2147417600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %75) #4, !srcloc !9
  %76 = or i32 %74, -2113863168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %76) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %75) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419040) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2111864608) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145419040) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2130640896) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  %78 = and i32 %77, 65527
  %79 = or i32 %78, -2147418112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %79) #4, !srcloc !9
  %80 = or i32 %78, -2113863680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %80) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %79) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145414944) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2111860512) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2145414944) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2130640896) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147418112) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  %82 = and i32 %81, 65527
  %83 = or i32 %82, -2147418112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %83) #4, !srcloc !9
  %84 = or i32 %82, -2113863680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %84) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %83) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %85 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 8
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i32, ptr %86, i32 7
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %47
  %91 = load ptr, ptr %0, align 4
  %92 = getelementptr i8, ptr %91, i32 52
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #4, !srcloc !8
  %94 = or i32 %93, %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %94) #4, !srcloc !9
  br label %102

95:                                               ; preds = %47
  %96 = getelementptr i32, ptr %86, i32 9
  %97 = load i32, ptr %96, align 4
  %98 = load ptr, ptr %0, align 4
  %99 = getelementptr i8, ptr %98, i32 96
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #4, !srcloc !8
  %101 = or i32 %100, %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %101) #4, !srcloc !9
  br label %102

102:                                              ; preds = %95, %90
  %103 = getelementptr [6 x ptr], ptr %0, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = load i32, ptr %6, align 4
  %106 = icmp eq i32 %105, 1949765632
  %107 = icmp ne ptr %104, null
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = getelementptr i8, ptr %104, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 41484) #4, !srcloc !9
  %111 = getelementptr i8, ptr %104, i32 1628
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #4, !srcloc !8
  %113 = or i32 %112, 134217728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %113) #4, !srcloc !9
  %114 = load ptr, ptr %0, align 4
  %115 = getelementptr i8, ptr %114, i32 96
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #4, !srcloc !8
  %117 = and i32 %116, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %117) #4, !srcloc !9
  %118 = load ptr, ptr %0, align 4
  %119 = getelementptr i8, ptr %118, i32 96
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #4, !srcloc !8
  %121 = or i32 %120, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %121) #4, !srcloc !9
  br label %122

122:                                              ; preds = %109, %102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_uninit_common(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i32, ptr %3, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  %11 = or i32 %10, %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #4, !srcloc !9
  %12 = load ptr, ptr %2, align 4
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi ptr [ %12, %7 ], [ %3, %1 ]
  %15 = getelementptr i32, ptr %14, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  %22 = or i32 %21, %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %22) #4, !srcloc !9
  br label %23

23:                                               ; preds = %18, %13
  %24 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 11
  %25 = load i8, ptr %24, align 4, !range !10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr i8, ptr %28, i32 52
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4
  %31 = or i32 %30, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %31) #4, !srcloc !9
  br label %32

32:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @usb_uninit_eohci(ptr nocapture noundef %0) #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_uninit_xhci(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i32, ptr %3, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  %11 = xor i32 %5, -1
  %12 = and i32 %10, %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %12) #4, !srcloc !9
  br label %21

13:                                               ; preds = %1
  %14 = getelementptr i32, ptr %3, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 96
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  %19 = xor i32 %15, -1
  %20 = and i32 %18, %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %20) #4, !srcloc !9
  br label %21

21:                                               ; preds = %13, %7
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr i8, ptr %22, i32 112
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  %25 = or i32 %24, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_get_dual_select(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i32, ptr %3, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 144
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i32, ptr %11, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %10
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i32 [ %14, %7 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_set_dual_select(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i32, ptr %4, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i8, ptr %9, i32 144
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i32, ptr %12, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = or i32 %16, %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %17) #4, !srcloc !9
  br label %18

18:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2415498}
!9 = !{i64 2415080}
!10 = !{i8 0, i8 2}
