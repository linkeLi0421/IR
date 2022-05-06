; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwmac4_dma_ops = dso_local local_unnamed_addr constant %struct.stmmac_dma_ops { ptr @dwmac4_dma_reset, ptr @dwmac4_dma_init, ptr @dwmac4_dma_init_channel, ptr @dwmac4_dma_init_rx_chan, ptr @dwmac4_dma_init_tx_chan, ptr @dwmac4_dma_axi, ptr @dwmac4_dump_dma_regs, ptr @dwmac4_dma_rx_chan_op_mode, ptr @dwmac4_dma_tx_chan_op_mode, ptr null, ptr null, ptr @dwmac4_enable_dma_irq, ptr @dwmac4_disable_dma_irq, ptr @dwmac4_dma_start_tx, ptr @dwmac4_dma_stop_tx, ptr @dwmac4_dma_start_rx, ptr @dwmac4_dma_stop_rx, ptr @dwmac4_dma_interrupt, ptr @dwmac4_get_hw_feature, ptr @dwmac4_rx_watchdog, ptr @dwmac4_set_tx_ring_len, ptr @dwmac4_set_rx_ring_len, ptr @dwmac4_set_rx_tail_ptr, ptr @dwmac4_set_tx_tail_ptr, ptr @dwmac4_enable_tso, ptr @dwmac4_qmode, ptr @dwmac4_set_bfsize, ptr @dwmac4_enable_sph, ptr null }, align 4
@dwmac410_dma_ops = dso_local local_unnamed_addr constant %struct.stmmac_dma_ops { ptr @dwmac4_dma_reset, ptr @dwmac4_dma_init, ptr @dwmac410_dma_init_channel, ptr @dwmac4_dma_init_rx_chan, ptr @dwmac4_dma_init_tx_chan, ptr @dwmac4_dma_axi, ptr @dwmac4_dump_dma_regs, ptr @dwmac4_dma_rx_chan_op_mode, ptr @dwmac4_dma_tx_chan_op_mode, ptr null, ptr null, ptr @dwmac410_enable_dma_irq, ptr @dwmac4_disable_dma_irq, ptr @dwmac4_dma_start_tx, ptr @dwmac4_dma_stop_tx, ptr @dwmac4_dma_start_rx, ptr @dwmac4_dma_stop_rx, ptr @dwmac4_dma_interrupt, ptr @dwmac4_get_hw_feature, ptr @dwmac4_rx_watchdog, ptr @dwmac4_set_tx_ring_len, ptr @dwmac4_set_rx_ring_len, ptr @dwmac4_set_rx_tail_ptr, ptr @dwmac4_set_tx_tail_ptr, ptr @dwmac4_enable_tso, ptr @dwmac4_qmode, ptr @dwmac4_set_bfsize, ptr @dwmac4_enable_sph, ptr @dwmac4_enable_tbs }, align 4
@.str = private unnamed_addr constant [47 x i8] c"\016dwmac4: Master AXI performs %s burst length\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"any\00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac4_dma_reset(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_dma_init(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 4100
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %6 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = or i32 %5, %9
  %11 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = or i32 %10, 16384
  %15 = select i1 %13, i32 %10, i32 %14
  %16 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 6
  %17 = load i8, ptr %16, align 4, !range !10
  %18 = icmp eq i8 %17, 0
  %19 = or i32 %15, 4096
  %20 = select i1 %18, i32 %15, i32 %19
  %21 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 7
  %22 = load i8, ptr %21, align 1, !range !10
  %23 = icmp eq i8 %22, 0
  %24 = or i32 %20, 2048
  %25 = select i1 %23, i32 %20, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %25) #3, !srcloc !12
  %26 = getelementptr i8, ptr %0, i32 4096
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  %28 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 8
  %29 = load i8, ptr %28, align 2, !range !10
  %30 = icmp eq i8 %29, 0
  %31 = and i32 %27, -196609
  %32 = or i32 %31, 65536
  %33 = select i1 %30, i32 %27, i32 %32
  %34 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 9
  %35 = load i8, ptr %34, align 1, !range !10
  %36 = icmp eq i8 %35, 0
  %37 = or i32 %33, 524288
  %38 = select i1 %36, i32 %33, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %38) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_dma_init_channel(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 4352
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  %8 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = or i32 %7, 65536
  %12 = select i1 %10, i32 %7, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %12) #3, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %13 = add i32 %4, 4404
  %14 = getelementptr i8, ptr %0, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 102465) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_dma_init_rx_chan(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ %6, %4 ]
  %12 = shl i32 %3, 7
  %13 = add i32 %12, 4360
  %14 = getelementptr i8, ptr %0, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !18
  %16 = shl i32 %11, 16
  %17 = or i32 %15, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %17) #3, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %18 = add i32 %12, 4380
  %19 = getelementptr i8, ptr %0, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %2) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_dma_init_tx_chan(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ %6, %4 ]
  %12 = shl i32 %3, 7
  %13 = add i32 %12, 4356
  %14 = getelementptr i8, ptr %0, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !21
  %16 = shl i32 %11, 16
  %17 = or i32 %16, %15
  %18 = or i32 %17, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %18) #3, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %19 = add i32 %12, 4372
  %20 = getelementptr i8, ptr %0, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %2) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_dma_axi(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 4100
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !24
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.2, ptr @.str.1
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
  %18 = and i32 %17, -252641281
  %19 = getelementptr inbounds %struct.stmmac_axi, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 24
  %22 = and i32 %21, 251658240
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
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %154) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_dump_dma_regs(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 4352
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !26
  %5 = getelementptr i32, ptr %1, i32 1088
  store i32 %4, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 4356
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !27
  %8 = getelementptr i32, ptr %1, i32 1089
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 4360
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !28
  %11 = getelementptr i32, ptr %1, i32 1090
  store i32 %10, ptr %11, align 4
  %12 = getelementptr i8, ptr %0, i32 4372
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !29
  %14 = getelementptr i32, ptr %1, i32 1093
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 4380
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !30
  %17 = getelementptr i32, ptr %1, i32 1095
  store i32 %16, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 4384
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !31
  %20 = getelementptr i32, ptr %1, i32 1096
  store i32 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 4392
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !32
  %23 = getelementptr i32, ptr %1, i32 1098
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 4396
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !33
  %26 = getelementptr i32, ptr %1, i32 1099
  store i32 %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %0, i32 4400
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !34
  %29 = getelementptr i32, ptr %1, i32 1100
  store i32 %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %0, i32 4404
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !35
  %32 = getelementptr i32, ptr %1, i32 1101
  store i32 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %0, i32 4408
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !36
  %35 = getelementptr i32, ptr %1, i32 1102
  store i32 %34, ptr %35, align 4
  %36 = getelementptr i8, ptr %0, i32 4412
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !37
  %38 = getelementptr i32, ptr %1, i32 1103
  store i32 %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %0, i32 4420
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !38
  %41 = getelementptr i32, ptr %1, i32 1105
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i8, ptr %0, i32 4428
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !39
  %44 = getelementptr i32, ptr %1, i32 1107
  store i32 %43, ptr %44, align 4
  %45 = getelementptr i8, ptr %0, i32 4436
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !40
  %47 = getelementptr i32, ptr %1, i32 1109
  store i32 %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %0, i32 4444
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !41
  %50 = getelementptr i32, ptr %1, i32 1111
  store i32 %49, ptr %50, align 4
  %51 = getelementptr i8, ptr %0, i32 4448
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !42
  %53 = getelementptr i32, ptr %1, i32 1112
  store i32 %52, ptr %53, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_dma_rx_chan_op_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #1 {
  %6 = shl i32 %2, 6
  %7 = add i32 %6, 3376
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !43
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = or i32 %9, 32
  br label %24

13:                                               ; preds = %5
  %14 = and i32 %9, 24
  %15 = icmp slt i32 %1, 33
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = or i32 %14, 8
  br label %24

18:                                               ; preds = %13
  %19 = icmp ult i32 %1, 65
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = icmp ult i32 %1, 97
  %22 = or i32 %14, 16
  %23 = select i1 %21, i32 %22, i32 24
  br label %24

24:                                               ; preds = %20, %18, %16, %11
  %25 = phi i32 [ %12, %11 ], [ %17, %16 ], [ %14, %18 ], [ %23, %20 ]
  %26 = sdiv i32 %3, 256
  %27 = and i32 %25, -1072693249
  %28 = shl i32 %26, 20
  %29 = add i32 %28, -1048576
  %30 = or i32 %27, %29
  %31 = icmp sgt i32 %3, 4095
  %32 = icmp ne i8 %4, 0
  %33 = and i1 %31, %32
  %34 = icmp eq i32 %3, 4096
  %35 = and i32 %30, -1048449
  %36 = select i1 %34, i32 49536, i32 115840
  %37 = or i32 %36, %35
  %38 = select i1 %33, i32 %37, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !44
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %38) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_dma_tx_chan_op_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #1 {
  %6 = shl i32 %2, 6
  %7 = add i32 %6, 3328
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !45
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = or i32 %9, 2
  br label %40

13:                                               ; preds = %5
  %14 = and i32 %9, 112
  %15 = icmp slt i32 %1, 33
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = icmp ult i32 %1, 65
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = or i32 %14, 16
  br label %40

20:                                               ; preds = %16
  %21 = icmp ult i32 %1, 97
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = or i32 %14, 32
  br label %40

24:                                               ; preds = %20
  %25 = icmp ult i32 %1, 129
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = or i32 %14, 48
  br label %40

28:                                               ; preds = %24
  %29 = icmp ult i32 %1, 193
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = or i32 %14, 64
  br label %40

32:                                               ; preds = %28
  %33 = icmp ult i32 %1, 257
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = or i32 %14, 80
  br label %40

36:                                               ; preds = %32
  %37 = icmp ult i32 %1, 385
  %38 = or i32 %14, 96
  %39 = select i1 %37, i32 %38, i32 112
  br label %40

40:                                               ; preds = %36, %34, %30, %26, %22, %18, %13, %11
  %41 = phi i32 [ %12, %11 ], [ %19, %18 ], [ %23, %22 ], [ %27, %26 ], [ %31, %30 ], [ %35, %34 ], [ %14, %13 ], [ %39, %36 ]
  %42 = and i32 %41, -33488909
  %43 = icmp eq i8 %4, 0
  %44 = select i1 %43, i32 4, i32 8
  %45 = sdiv i32 %3, 256
  %46 = shl i32 %45, 16
  %47 = add i32 %46, -65536
  %48 = or i32 %47, %44
  %49 = or i32 %48, %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %49) #3, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_enable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_disable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_dma_start_tx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_dma_stop_tx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_dma_start_rx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_dma_stop_rx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac4_dma_interrupt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac4_get_hw_feature(ptr noundef %0, ptr noundef writeonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 284
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !47
  %5 = and i32 %4, 1
  store i32 %5, ptr %1, align 4
  %6 = lshr i32 %4, 1
  %7 = and i32 %6, 1
  %8 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = lshr i32 %4, 2
  %10 = and i32 %9, 1
  %11 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = lshr i32 %4, 4
  %13 = and i32 %12, 1
  %14 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 35
  store i32 %13, ptr %14, align 4
  %15 = lshr i32 %4, 18
  %16 = and i32 %15, 1
  %17 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  %18 = lshr i32 %4, 3
  %19 = and i32 %18, 1
  %20 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  %21 = lshr i32 %4, 5
  %22 = and i32 %21, 1
  %23 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 6
  store i32 %22, ptr %23, align 4
  %24 = lshr i32 %4, 6
  %25 = and i32 %24, 1
  %26 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 7
  store i32 %25, ptr %26, align 4
  %27 = lshr i32 %4, 7
  %28 = and i32 %27, 1
  %29 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 8
  store i32 %28, ptr %29, align 4
  %30 = lshr i32 %4, 8
  %31 = and i32 %30, 1
  %32 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 9
  store i32 %31, ptr %32, align 4
  %33 = lshr i32 %4, 12
  %34 = and i32 %33, 1
  %35 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 11
  store i32 %34, ptr %35, align 4
  %36 = lshr i32 %4, 13
  %37 = and i32 %36, 1
  %38 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 12
  store i32 %37, ptr %38, align 4
  %39 = lshr i32 %4, 14
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 16
  store i32 %40, ptr %41, align 4
  %42 = lshr i32 %4, 16
  %43 = and i32 %42, 1
  %44 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 17
  store i32 %43, ptr %44, align 4
  %45 = lshr i32 %4, 27
  %46 = and i32 %45, 1
  %47 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 37
  store i32 %46, ptr %47, align 4
  %48 = lshr i32 %4, 9
  %49 = and i32 %48, 1
  %50 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 40
  store i32 %49, ptr %50, align 4
  %51 = getelementptr i8, ptr %0, i32 288
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !48
  %53 = lshr i32 %52, 27
  %54 = and i32 %53, 15
  %55 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 39
  store i32 %54, ptr %55, align 4
  %56 = lshr i32 %52, 24
  %57 = and i32 %56, 3
  %58 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 14
  store i32 %57, ptr %58, align 4
  %59 = lshr i32 %52, 20
  %60 = and i32 %59, 1
  %61 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 13
  store i32 %60, ptr %61, align 4
  %62 = lshr i32 %52, 18
  %63 = and i32 %62, 1
  %64 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 15
  store i32 %63, ptr %64, align 4
  %65 = lshr i32 %52, 17
  %66 = and i32 %65, 1
  %67 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 36
  store i32 %66, ptr %67, align 4
  %68 = lshr i32 %52, 14
  %69 = and i32 %68, 3
  %70 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 33
  %71 = icmp eq i32 %69, 1
  %72 = select i1 %71, i32 40, i32 32
  %73 = icmp eq i32 %69, 2
  %74 = select i1 %73, i32 48, i32 %72
  store i32 %74, ptr %70, align 4
  %75 = lshr i32 %52, 6
  %76 = and i32 %75, 31
  %77 = shl i32 128, %76
  %78 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 27
  store i32 %77, ptr %78, align 4
  %79 = and i32 %52, 31
  %80 = shl i32 128, %79
  %81 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 28
  store i32 %80, ptr %81, align 4
  %82 = getelementptr i8, ptr %0, i32 292
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !49
  %84 = lshr i32 %83, 12
  %85 = and i32 %84, 15
  %86 = add nuw nsw i32 %85, 1
  %87 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 21
  store i32 %86, ptr %87, align 4
  %88 = lshr i32 %83, 18
  %89 = and i32 %88, 15
  %90 = add nuw nsw i32 %89, 1
  %91 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 22
  store i32 %90, ptr %91, align 4
  %92 = and i32 %83, 15
  %93 = add nuw nsw i32 %92, 1
  %94 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 23
  store i32 %93, ptr %94, align 4
  %95 = lshr i32 %83, 6
  %96 = and i32 %95, 15
  %97 = add nuw nsw i32 %96, 1
  %98 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 24
  store i32 %97, ptr %98, align 4
  %99 = lshr i32 %83, 24
  %100 = and i32 %99, 7
  %101 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 25
  store i32 %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 10
  store i32 0, ptr %102, align 4
  %103 = lshr i32 %83, 28
  %104 = and i32 %103, 7
  %105 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 46
  store i32 %104, ptr %105, align 4
  %106 = getelementptr i8, ptr %0, i32 296
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !50
  %108 = lshr i32 %107, 28
  %109 = and i32 %108, 3
  %110 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 29
  store i32 %109, ptr %110, align 4
  %111 = lshr i32 %107, 27
  %112 = and i32 %111, 1
  %113 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 45
  store i32 %112, ptr %113, align 4
  %114 = lshr i32 %107, 26
  %115 = and i32 %114, 1
  %116 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 44
  store i32 %115, ptr %116, align 4
  %117 = lshr i32 %107, 20
  %118 = and i32 %117, 3
  %119 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 41
  store i32 %118, ptr %119, align 4
  %120 = lshr i32 %107, 17
  %121 = and i32 %120, 7
  %122 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 42
  store i32 %121, ptr %122, align 4
  %123 = lshr i32 %107, 16
  %124 = and i32 %123, 1
  %125 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 43
  store i32 %124, ptr %125, align 4
  %126 = lshr i32 %107, 13
  %127 = and i32 %126, 3
  %128 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 32
  store i32 %127, ptr %128, align 4
  %129 = lshr i32 %107, 11
  %130 = and i32 %129, 3
  %131 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 31
  store i32 %130, ptr %131, align 4
  %132 = lshr i32 %107, 10
  %133 = and i32 %132, 1
  %134 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 30
  store i32 %133, ptr %134, align 4
  %135 = lshr i32 %107, 5
  %136 = and i32 %135, 1
  %137 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 38
  store i32 %136, ptr %137, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_rx_watchdog(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 4408
  %6 = getelementptr i8, ptr %0, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #3, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_set_tx_ring_len(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_set_rx_ring_len(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_set_rx_tail_ptr(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac4_set_tx_tail_ptr(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_enable_tso(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #1 {
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 4356
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3
  tail call void asm sideeffect "dsb ", "~{memory}"() #3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3
  tail call void @arm_heavy_mb() #3
  br i1 %1, label %8, label %10

8:                                                ; preds = %3
  %9 = or i32 %7, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %9) #3, !srcloc !12
  br label %12

10:                                               ; preds = %3
  %11 = and i32 %7, -4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %11) #3, !srcloc !12
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_qmode(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #1 {
  %4 = shl i32 %1, 6
  %5 = add i32 %4, 3328
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !52
  %8 = and i32 %7, -13
  %9 = icmp eq i8 %2, 0
  %10 = select i1 %9, i32 4, i32 8
  %11 = or i32 %8, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %11) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_set_bfsize(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 4360
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !54
  %8 = and i32 %7, -32767
  %9 = shl i32 %1, 1
  %10 = and i32 %9, 32766
  %11 = or i32 %8, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !55
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %11) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_enable_sph(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !56
  %6 = and i32 %5, -7340033
  %7 = or i32 %6, 2097152
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !57
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %7) #3, !srcloc !12
  %8 = shl i32 %2, 7
  %9 = add i32 %8, 4352
  %10 = getelementptr i8, ptr %0, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !58
  %12 = and i32 %11, -16777217
  %13 = select i1 %1, i32 16777216, i32 0
  %14 = or i32 %12, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %14) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac410_dma_init_channel(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 4352
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !60
  %8 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = or i32 %7, 65536
  %12 = select i1 %10, i32 %7, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !61
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %12) #3, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !62
  tail call void @arm_heavy_mb() #3
  %13 = add i32 %4, 4404
  %14 = getelementptr i8, ptr %0, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 53313) #3, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac410_enable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac4_enable_tbs(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #1 {
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 4356
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !63
  %8 = and i32 %7, -268435457
  %9 = select i1 %1, i32 268435456, i32 0
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !64
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %10) #3, !srcloc !12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !65
  %12 = and i32 %11, 268435456
  %13 = xor i1 %1, true
  %14 = icmp ne i32 %12, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !66
  tail call void @arm_heavy_mb() #3
  %17 = getelementptr i8, ptr %0, i32 4176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -255) #3, !srcloc !12
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ 0, %16 ], [ -5, %3 ]
  ret i32 %19
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
!8 = !{i64 376973}
!9 = !{i64 2155252189}
!10 = !{i8 0, i8 2}
!11 = !{i64 2155252723}
!12 = !{i64 376555}
!13 = !{i64 2155253209}
!14 = !{i64 2155254192}
!15 = !{i64 2155246944}
!16 = !{i64 2155247351}
!17 = !{i64 2155248629}
!18 = !{i64 2155240233}
!19 = !{i64 2155240576}
!20 = !{i64 2155242765}
!21 = !{i64 2155243565}
!22 = !{i64 2155243990}
!23 = !{i64 2155246179}
!24 = !{i64 2155236469}
!25 = !{i64 2155239533}
!26 = !{i64 2155254984}
!27 = !{i64 2155255684}
!28 = !{i64 2155256384}
!29 = !{i64 2155257089}
!30 = !{i64 2155257794}
!31 = !{i64 2155258499}
!32 = !{i64 2155259204}
!33 = !{i64 2155259909}
!34 = !{i64 2155260614}
!35 = !{i64 2155261319}
!36 = !{i64 2155262024}
!37 = !{i64 2155262729}
!38 = !{i64 2155263434}
!39 = !{i64 2155264139}
!40 = !{i64 2155264844}
!41 = !{i64 2155265549}
!42 = !{i64 2155266254}
!43 = !{i64 2155267356}
!44 = !{i64 2155271402}
!45 = !{i64 2155272131}
!46 = !{i64 2155275640}
!47 = !{i64 2155276165}
!48 = !{i64 2155277840}
!49 = !{i64 2155281876}
!50 = !{i64 2155286343}
!51 = !{i64 2155266600}
!52 = !{i64 2155293280}
!53 = !{i64 2155294458}
!54 = !{i64 2155295197}
!55 = !{i64 2155296905}
!56 = !{i64 2155297428}
!57 = !{i64 2155298356}
!58 = !{i64 2155299021}
!59 = !{i64 2155299512}
!60 = !{i64 2155249646}
!61 = !{i64 2155250053}
!62 = !{i64 2155251351}
!63 = !{i64 2155300240}
!64 = !{i64 2155300748}
!65 = !{i64 2155301485}
!66 = !{i64 2155302882}
