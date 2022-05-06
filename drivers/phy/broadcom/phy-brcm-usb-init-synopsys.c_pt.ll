; ModuleID = '/llk/IR/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcm_usb_init_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcm_usb_init_params = type { [6 x ptr], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8 }

@.str = private unnamed_addr constant [5 x i8] c"7216\00", align 1
@bcm7216_ops = internal constant %struct.brcm_usb_init_ops { ptr @usb_init_ipp, ptr @usb_init_common, ptr null, ptr @usb_init_xhci, ptr @usb_uninit_common, ptr null, ptr @usb_uninit_xhci, ptr @usb_get_dual_select, ptr @usb_set_dual_select }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"7211\00", align 1
@bcm7211b0_ops = internal constant %struct.brcm_usb_init_ops { ptr @usb_init_ipp, ptr @usb_init_common_7211b0, ptr null, ptr @usb_init_xhci, ptr @usb_uninit_common_7211b0, ptr null, ptr @usb_uninit_xhci, ptr @usb_get_dual_select, ptr @usb_set_dual_select }, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @brcm_usb_dvr_init_7216(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 7
  store ptr @.str, ptr %2, align 4
  %3 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 9
  store ptr @bcm7216_ops, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @brcm_usb_dvr_init_7211b0(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 7
  store ptr @.str.1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 9
  store ptr @bcm7211b0_ops, ptr %3, align 4
  %4 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 12
  store i8 1, ptr %4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_init_ipp(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  %4 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  %7 = and i32 %3, -33554481
  %8 = select i1 %6, i32 %3, i32 %7
  %9 = and i32 %8, -49
  %10 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = or i32 %9, 16
  %14 = select i1 %12, i32 %9, i32 %13
  %15 = icmp eq i32 %5, 1
  %16 = or i32 %14, 32
  %17 = select i1 %15, i32 %16, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %17) #3, !srcloc !9
  %18 = xor i32 %17, %3
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  tail call void @msleep(i32 noundef 50) #3
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_init_common(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  %5 = and i32 %4, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #3, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  %6 = getelementptr i8, ptr %2, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  %8 = and i32 %7, -4
  %9 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %8, %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %11) #3, !srcloc !9
  %12 = load i32, ptr %9, align 4
  %13 = icmp eq i32 %12, 0
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3
  %15 = and i32 %14, -8388609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %15) #3
  br i1 %13, label %19, label %16

16:                                               ; preds = %1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  %18 = or i32 %17, 8388608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %18) #3, !srcloc !9
  br label %19

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_init_xhci(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3
  %5 = or i32 %4, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #3, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_uninit_common(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  %5 = or i32 %4, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #3, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_uninit_xhci(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 11
  %3 = load i8, ptr %2, align 4, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3
  %9 = and i32 %8, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #3, !srcloc !9
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_get_dual_select(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  %5 = and i32 %4, 3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_set_dual_select(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  %6 = and i32 %5, -4
  %7 = or i32 %6, %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %7) #3, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_init_common_7211b0(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr [6 x ptr], ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr [6 x ptr], ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %8, i32 noundef 8, i32 noundef 1611657216, i32 noundef 1610612736, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr i8, ptr %2, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #3, !srcloc !8
  %15 = and i32 %14, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #3, !srcloc !9
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 80
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #3
  %19 = and i32 %18, -262145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #3, !srcloc !9
  %20 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 11
  %21 = load i8, ptr %20, align 4, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %12
  %24 = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #3, !srcloc !9
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  %26 = or i32 %25, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %26) #3, !srcloc !9
  %27 = getelementptr i8, ptr %4, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #3, !srcloc !8
  %29 = or i32 %28, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %29) #3, !srcloc !9
  br label %30

30:                                               ; preds = %23, %12
  %31 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 7) #3, !srcloc !9
  %32 = getelementptr i8, ptr %4, i32 32
  br label %33

33:                                               ; preds = %38, %30
  %34 = phi i32 [ 199, %30 ], [ %39, %38 ]
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #3, !srcloc !8
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  %39 = add nsw i32 %34, -1
  %40 = icmp eq i32 %34, 0
  br i1 %40, label %41, label %33

41:                                               ; preds = %38, %33
  %42 = getelementptr i8, ptr %4, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #3, !srcloc !8
  %44 = and i32 %43, -13
  %45 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 2
  %48 = or i32 %47, %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %48) #3, !srcloc !9
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr i8, ptr %49, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #3, !srcloc !8
  %52 = and i32 %51, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %52) #3, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  %53 = getelementptr i8, ptr %49, i32 16
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #3, !srcloc !8
  %55 = and i32 %54, -4
  %56 = load i32, ptr %45, align 4
  %57 = or i32 %55, %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %57) #3, !srcloc !9
  %58 = load i32, ptr %45, align 4
  %59 = icmp eq i32 %58, 0
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #3
  %61 = and i32 %60, -8388609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %61) #3
  br i1 %59, label %65, label %62

62:                                               ; preds = %41
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #3, !srcloc !8
  %64 = or i32 %63, 8388608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %64) #3, !srcloc !9
  br label %65

65:                                               ; preds = %62, %41
  %66 = load i32, ptr %45, align 4
  %67 = icmp ne i32 %66, 0
  %68 = icmp ne ptr %6, null
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr i8, ptr %6, i32 12
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #3, !srcloc !8
  %73 = and i32 %72, 268435455
  %74 = or i32 %73, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %74) #3, !srcloc !9
  br label %75

75:                                               ; preds = %70, %65
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #3, !srcloc !8
  %77 = and i32 %76, -2049
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %77) #3, !srcloc !9
  %78 = getelementptr [6 x ptr], ptr %0, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 -1) #3, !srcloc !9
  br label %81

81:                                               ; preds = %81, %75
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #3, !srcloc !8
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %81

84:                                               ; preds = %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 1501462688) #3, !srcloc !9
  br label %85

85:                                               ; preds = %85, %84
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #3, !srcloc !8
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %85

88:                                               ; preds = %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 0) #3, !srcloc !9
  br label %89

89:                                               ; preds = %89, %88
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #3, !srcloc !8
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %89

92:                                               ; preds = %89
  %93 = load ptr, ptr %78, align 4
  %94 = getelementptr i8, ptr %93, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 -1) #3, !srcloc !9
  br label %95

95:                                               ; preds = %95, %92
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #3, !srcloc !8
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %98, label %95

98:                                               ; preds = %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 1495975584) #3, !srcloc !9
  br label %99

99:                                               ; preds = %99, %98
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #3, !srcloc !8
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %102, label %99

102:                                              ; preds = %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 0) #3, !srcloc !9
  br label %103

103:                                              ; preds = %103, %102
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #3, !srcloc !8
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %106, label %103

106:                                              ; preds = %103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_uninit_common_7211b0(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %0, i32 0, i32 11
  %4 = load i8, ptr %3, align 4, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %2, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  %9 = or i32 %8, 46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #3, !srcloc !9
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr i8, ptr %10, i32 80
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3
  %13 = or i32 %12, 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #3, !srcloc !9
  br label %24

14:                                               ; preds = %1
  %15 = getelementptr [6 x ptr], ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %2, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #3, !srcloc !8
  %19 = or i32 %18, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #3, !srcloc !9
  %20 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #3, !srcloc !9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #3, !srcloc !8
  %22 = and i32 %21, -1073741825
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %22) #3, !srcloc !9
  %23 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 1) #3, !srcloc !9
  br label %24

24:                                               ; preds = %14, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2394284}
!9 = !{i64 2393866}
!10 = !{i8 0, i8 2}
