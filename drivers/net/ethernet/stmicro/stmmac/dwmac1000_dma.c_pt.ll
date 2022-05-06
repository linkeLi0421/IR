; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwmac1000_dma_ops = dso_local local_unnamed_addr constant %struct.stmmac_dma_ops { ptr @dwmac_dma_reset, ptr @dwmac1000_dma_init, ptr null, ptr @dwmac1000_dma_init_rx, ptr @dwmac1000_dma_init_tx, ptr @dwmac1000_dma_axi, ptr @dwmac1000_dump_dma_regs, ptr @dwmac1000_dma_operation_mode_rx, ptr @dwmac1000_dma_operation_mode_tx, ptr null, ptr @dwmac_enable_dma_transmission, ptr @dwmac_enable_dma_irq, ptr @dwmac_disable_dma_irq, ptr @dwmac_dma_start_tx, ptr @dwmac_dma_stop_tx, ptr @dwmac_dma_start_rx, ptr @dwmac_dma_stop_rx, ptr @dwmac_dma_interrupt, ptr @dwmac1000_get_hw_feature, ptr @dwmac1000_rx_watchdog, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [50 x i8] c"\016dwmac1000: Master AXI performs %s burst length\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"any\00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac_dma_reset(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_dma_init(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 4096
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %6 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ %7, %3 ]
  %13 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, ptr %1, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i32 [ %17, %16 ], [ %14, %11 ]
  %20 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 3
  %21 = load i8, ptr %20, align 4, !range !10
  %22 = icmp eq i8 %21, 0
  %23 = or i32 %5, 16777216
  %24 = select i1 %22, i32 %5, i32 %23
  %25 = and i32 %24, -16662273
  %26 = shl i32 %12, 8
  %27 = shl i32 %19, 17
  %28 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 8388608, i32 8454144
  %32 = or i32 %27, %26
  %33 = or i32 %32, %25
  %34 = or i32 %33, %31
  %35 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = or i32 %34, 67108864
  %39 = select i1 %37, i32 %34, i32 %38
  %40 = icmp eq i32 %2, 0
  %41 = or i32 %39, 128
  %42 = select i1 %40, i32 %39, i32 %41
  %43 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 6
  %44 = load i8, ptr %43, align 4, !range !10
  %45 = icmp eq i8 %44, 0
  %46 = or i32 %42, 33554432
  %47 = select i1 %45, i32 %42, i32 %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %47) #3, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %48 = getelementptr i8, ptr %0, i32 4124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 106593) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_dma_init_rx(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %5 = getelementptr i8, ptr %0, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_dma_init_tx(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %5 = getelementptr i8, ptr %0, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_dma_axi(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 4136
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.1, ptr @.str.2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %7) #4
  %9 = load i8, ptr %1, align 4, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = or i32 %4, -2147483648
  %12 = select i1 %10, i32 %4, i32 %11
  %13 = getelementptr inbounds %struct.stmmac_axi, ptr %1, i32 0, i32 1
  %14 = load i8, ptr %13, align 1, !range !10
  %15 = icmp eq i8 %14, 0
  %16 = or i32 %12, 1073741824
  %17 = select i1 %15, i32 %12, i32 %16
  %18 = and i32 %17, -16711681
  %19 = getelementptr inbounds %struct.stmmac_axi, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 20
  %22 = and i32 %21, 15728640
  %23 = or i32 %18, %22
  %24 = getelementptr inbounds %struct.stmmac_axi, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 16
  %27 = and i32 %26, 983040
  %28 = or i32 %23, %27
  %29 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 0
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %45 [
    i32 256, label %31
    i32 128, label %33
    i32 64, label %35
    i32 32, label %37
    i32 16, label %39
    i32 8, label %41
    i32 4, label %43
  ]

31:                                               ; preds = %2
  %32 = or i32 %28, 128
  br label %45

33:                                               ; preds = %2
  %34 = or i32 %28, 64
  br label %45

35:                                               ; preds = %2
  %36 = or i32 %28, 32
  br label %45

37:                                               ; preds = %2
  %38 = or i32 %28, 16
  br label %45

39:                                               ; preds = %2
  %40 = or i32 %28, 8
  br label %45

41:                                               ; preds = %2
  %42 = or i32 %28, 4
  br label %45

43:                                               ; preds = %2
  %44 = or i32 %28, 2
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %2
  %46 = phi i32 [ %28, %2 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ]
  %47 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 1
  %48 = load i32, ptr %47, align 4
  switch i32 %48, label %63 [
    i32 256, label %61
    i32 128, label %59
    i32 64, label %57
    i32 32, label %55
    i32 16, label %53
    i32 8, label %51
    i32 4, label %49
  ]

49:                                               ; preds = %45
  %50 = or i32 %46, 2
  br label %63

51:                                               ; preds = %45
  %52 = or i32 %46, 4
  br label %63

53:                                               ; preds = %45
  %54 = or i32 %46, 8
  br label %63

55:                                               ; preds = %45
  %56 = or i32 %46, 16
  br label %63

57:                                               ; preds = %45
  %58 = or i32 %46, 32
  br label %63

59:                                               ; preds = %45
  %60 = or i32 %46, 64
  br label %63

61:                                               ; preds = %45
  %62 = or i32 %46, 128
  br label %63

63:                                               ; preds = %61, %59, %57, %55, %53, %51, %49, %45
  %64 = phi i32 [ %46, %45 ], [ %50, %49 ], [ %52, %51 ], [ %54, %53 ], [ %56, %55 ], [ %58, %57 ], [ %60, %59 ], [ %62, %61 ]
  %65 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 2
  %66 = load i32, ptr %65, align 4
  switch i32 %66, label %81 [
    i32 256, label %79
    i32 128, label %77
    i32 64, label %75
    i32 32, label %73
    i32 16, label %71
    i32 8, label %69
    i32 4, label %67
  ]

67:                                               ; preds = %63
  %68 = or i32 %64, 2
  br label %81

69:                                               ; preds = %63
  %70 = or i32 %64, 4
  br label %81

71:                                               ; preds = %63
  %72 = or i32 %64, 8
  br label %81

73:                                               ; preds = %63
  %74 = or i32 %64, 16
  br label %81

75:                                               ; preds = %63
  %76 = or i32 %64, 32
  br label %81

77:                                               ; preds = %63
  %78 = or i32 %64, 64
  br label %81

79:                                               ; preds = %63
  %80 = or i32 %64, 128
  br label %81

81:                                               ; preds = %79, %77, %75, %73, %71, %69, %67, %63
  %82 = phi i32 [ %64, %63 ], [ %68, %67 ], [ %70, %69 ], [ %72, %71 ], [ %74, %73 ], [ %76, %75 ], [ %78, %77 ], [ %80, %79 ]
  %83 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 3
  %84 = load i32, ptr %83, align 4
  switch i32 %84, label %99 [
    i32 256, label %97
    i32 128, label %95
    i32 64, label %93
    i32 32, label %91
    i32 16, label %89
    i32 8, label %87
    i32 4, label %85
  ]

85:                                               ; preds = %81
  %86 = or i32 %82, 2
  br label %99

87:                                               ; preds = %81
  %88 = or i32 %82, 4
  br label %99

89:                                               ; preds = %81
  %90 = or i32 %82, 8
  br label %99

91:                                               ; preds = %81
  %92 = or i32 %82, 16
  br label %99

93:                                               ; preds = %81
  %94 = or i32 %82, 32
  br label %99

95:                                               ; preds = %81
  %96 = or i32 %82, 64
  br label %99

97:                                               ; preds = %81
  %98 = or i32 %82, 128
  br label %99

99:                                               ; preds = %97, %95, %93, %91, %89, %87, %85, %81
  %100 = phi i32 [ %82, %81 ], [ %86, %85 ], [ %88, %87 ], [ %90, %89 ], [ %92, %91 ], [ %94, %93 ], [ %96, %95 ], [ %98, %97 ]
  %101 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 4
  %102 = load i32, ptr %101, align 4
  switch i32 %102, label %117 [
    i32 256, label %115
    i32 128, label %113
    i32 64, label %111
    i32 32, label %109
    i32 16, label %107
    i32 8, label %105
    i32 4, label %103
  ]

103:                                              ; preds = %99
  %104 = or i32 %100, 2
  br label %117

105:                                              ; preds = %99
  %106 = or i32 %100, 4
  br label %117

107:                                              ; preds = %99
  %108 = or i32 %100, 8
  br label %117

109:                                              ; preds = %99
  %110 = or i32 %100, 16
  br label %117

111:                                              ; preds = %99
  %112 = or i32 %100, 32
  br label %117

113:                                              ; preds = %99
  %114 = or i32 %100, 64
  br label %117

115:                                              ; preds = %99
  %116 = or i32 %100, 128
  br label %117

117:                                              ; preds = %115, %113, %111, %109, %107, %105, %103, %99
  %118 = phi i32 [ %100, %99 ], [ %104, %103 ], [ %106, %105 ], [ %108, %107 ], [ %110, %109 ], [ %112, %111 ], [ %114, %113 ], [ %116, %115 ]
  %119 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 5
  %120 = load i32, ptr %119, align 4
  switch i32 %120, label %135 [
    i32 256, label %133
    i32 128, label %131
    i32 64, label %129
    i32 32, label %127
    i32 16, label %125
    i32 8, label %123
    i32 4, label %121
  ]

121:                                              ; preds = %117
  %122 = or i32 %118, 2
  br label %135

123:                                              ; preds = %117
  %124 = or i32 %118, 4
  br label %135

125:                                              ; preds = %117
  %126 = or i32 %118, 8
  br label %135

127:                                              ; preds = %117
  %128 = or i32 %118, 16
  br label %135

129:                                              ; preds = %117
  %130 = or i32 %118, 32
  br label %135

131:                                              ; preds = %117
  %132 = or i32 %118, 64
  br label %135

133:                                              ; preds = %117
  %134 = or i32 %118, 128
  br label %135

135:                                              ; preds = %133, %131, %129, %127, %125, %123, %121, %117
  %136 = phi i32 [ %118, %117 ], [ %122, %121 ], [ %124, %123 ], [ %126, %125 ], [ %128, %127 ], [ %130, %129 ], [ %132, %131 ], [ %134, %133 ]
  %137 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 6
  %138 = load i32, ptr %137, align 4
  switch i32 %138, label %153 [
    i32 256, label %151
    i32 128, label %149
    i32 64, label %147
    i32 32, label %145
    i32 16, label %143
    i32 8, label %141
    i32 4, label %139
  ]

139:                                              ; preds = %135
  %140 = or i32 %136, 2
  br label %153

141:                                              ; preds = %135
  %142 = or i32 %136, 4
  br label %153

143:                                              ; preds = %135
  %144 = or i32 %136, 8
  br label %153

145:                                              ; preds = %135
  %146 = or i32 %136, 16
  br label %153

147:                                              ; preds = %135
  %148 = or i32 %136, 32
  br label %153

149:                                              ; preds = %135
  %150 = or i32 %136, 64
  br label %153

151:                                              ; preds = %135
  %152 = or i32 %136, 128
  br label %153

153:                                              ; preds = %151, %149, %147, %145, %143, %141, %139, %135
  %154 = phi i32 [ %136, %135 ], [ %140, %139 ], [ %142, %141 ], [ %144, %143 ], [ %146, %145 ], [ %148, %147 ], [ %150, %149 ], [ %152, %151 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %154) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_dump_dma_regs(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 4096
  br label %4

4:                                                ; preds = %14, %2
  %5 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %6 = add nsw i32 %5, -18
  %7 = icmp ult i32 %6, -6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = shl i32 %5, 2
  %10 = getelementptr i8, ptr %3, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !18
  %12 = add nuw nsw i32 %5, 1024
  %13 = getelementptr i32, ptr %1, i32 %12
  store i32 %11, ptr %13, align 4
  br label %14

14:                                               ; preds = %8, %4
  %15 = add nuw nsw i32 %5, 1
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %17, label %4

17:                                               ; preds = %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_dma_operation_mode_rx(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #1 {
  %6 = getelementptr i8, ptr %0, i32 4120
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !19
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = or i32 %7, 33554432
  br label %24

11:                                               ; preds = %5
  %12 = and i32 %7, -33554457
  %13 = icmp slt i32 %1, 33
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = or i32 %12, 8
  br label %24

16:                                               ; preds = %11
  %17 = icmp ult i32 %1, 65
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = icmp ult i32 %1, 97
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = or i32 %12, 16
  br label %24

22:                                               ; preds = %18
  %23 = or i32 %12, 24
  br label %24

24:                                               ; preds = %22, %20, %16, %14, %9
  %25 = phi i32 [ %10, %9 ], [ %15, %14 ], [ %21, %20 ], [ %23, %22 ], [ %12, %16 ]
  %26 = icmp slt i32 %3, 4096
  %27 = and i32 %25, -12590849
  %28 = or i32 %27, 2304
  %29 = select i1 %26, i32 %27, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %29) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_dma_operation_mode_tx(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #1 {
  %6 = getelementptr i8, ptr %0, i32 4120
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !21
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = or i32 %7, 2097156
  br label %28

11:                                               ; preds = %5
  %12 = and i32 %7, -2211841
  %13 = icmp slt i32 %1, 33
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = or i32 %12, 81920
  br label %28

16:                                               ; preds = %11
  %17 = icmp ult i32 %1, 65
  br i1 %17, label %28, label %18

18:                                               ; preds = %16
  %19 = icmp ult i32 %1, 129
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = or i32 %12, 16384
  br label %28

22:                                               ; preds = %18
  %23 = icmp ult i32 %1, 193
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = or i32 %12, 32768
  br label %28

26:                                               ; preds = %22
  %27 = or i32 %12, 49152
  br label %28

28:                                               ; preds = %26, %24, %20, %16, %14, %9
  %29 = phi i32 [ %10, %9 ], [ %15, %14 ], [ %21, %20 ], [ %25, %24 ], [ %27, %26 ], [ %12, %16 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %29) #3, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_enable_dma_transmission(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_enable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_disable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_start_tx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_stop_tx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_start_rx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_stop_rx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac_dma_interrupt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac1000_get_hw_feature(ptr noundef %0, ptr noundef writeonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 4184
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %68, label %6

6:                                                ; preds = %2
  %7 = and i32 %4, 1
  store i32 %7, ptr %1, align 4
  %8 = lshr i32 %4, 1
  %9 = and i32 %8, 1
  %10 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = lshr i32 %4, 2
  %12 = and i32 %11, 1
  %13 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = lshr i32 %4, 4
  %15 = and i32 %14, 1
  %16 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = lshr i32 %4, 5
  %18 = and i32 %17, 1
  %19 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 4
  store i32 %18, ptr %19, align 4
  %20 = lshr i32 %4, 6
  %21 = and i32 %20, 1
  %22 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 5
  store i32 %21, ptr %22, align 4
  %23 = lshr i32 %4, 8
  %24 = and i32 %23, 1
  %25 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 6
  store i32 %24, ptr %25, align 4
  %26 = lshr i32 %4, 9
  %27 = and i32 %26, 1
  %28 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 7
  store i32 %27, ptr %28, align 4
  %29 = lshr i32 %4, 10
  %30 = and i32 %29, 1
  %31 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 8
  store i32 %30, ptr %31, align 4
  %32 = lshr i32 %4, 11
  %33 = and i32 %32, 1
  %34 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 9
  store i32 %33, ptr %34, align 4
  %35 = lshr i32 %4, 12
  %36 = and i32 %35, 1
  %37 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 10
  store i32 %36, ptr %37, align 4
  %38 = lshr i32 %4, 13
  %39 = and i32 %38, 1
  %40 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = lshr i32 %4, 14
  %42 = and i32 %41, 1
  %43 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 12
  store i32 %42, ptr %43, align 4
  %44 = lshr i32 %4, 15
  %45 = and i32 %44, 1
  %46 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 13
  store i32 %45, ptr %46, align 4
  %47 = lshr i32 %4, 16
  %48 = and i32 %47, 1
  %49 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 16
  store i32 %48, ptr %49, align 4
  %50 = lshr i32 %4, 17
  %51 = and i32 %50, 1
  %52 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 18
  store i32 %51, ptr %52, align 4
  %53 = lshr i32 %4, 18
  %54 = and i32 %53, 1
  %55 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 19
  store i32 %54, ptr %55, align 4
  %56 = lshr i32 %4, 19
  %57 = and i32 %56, 1
  %58 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 20
  store i32 %57, ptr %58, align 4
  %59 = lshr i32 %4, 20
  %60 = and i32 %59, 3
  %61 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 21
  store i32 %60, ptr %61, align 4
  %62 = lshr i32 %4, 22
  %63 = and i32 %62, 3
  %64 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 22
  store i32 %63, ptr %64, align 4
  %65 = lshr i32 %4, 24
  %66 = and i32 %65, 1
  %67 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 26
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %6, %2
  %69 = phi i32 [ 0, %6 ], [ -95, %2 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac1000_rx_watchdog(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %4 = getelementptr i8, ptr %0, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %1) #3, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 177905}
!9 = !{i64 2155224811}
!10 = !{i8 0, i8 2}
!11 = !{i64 2155225104}
!12 = !{i64 177487}
!13 = !{i64 2155225750}
!14 = !{i64 2155226317}
!15 = !{i64 2155226782}
!16 = !{i64 2155221246}
!17 = !{i64 2155224325}
!18 = !{i64 2155232118}
!19 = !{i64 2155228123}
!20 = !{i64 2155229621}
!21 = !{i64 2155230105}
!22 = !{i64 2155231596}
!23 = !{i64 2155232469}
!24 = !{i64 2155232902}
