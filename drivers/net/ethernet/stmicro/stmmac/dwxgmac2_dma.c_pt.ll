; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwxgmac210_dma_ops = dso_local local_unnamed_addr constant %struct.stmmac_dma_ops { ptr @dwxgmac2_dma_reset, ptr @dwxgmac2_dma_init, ptr @dwxgmac2_dma_init_chan, ptr @dwxgmac2_dma_init_rx_chan, ptr @dwxgmac2_dma_init_tx_chan, ptr @dwxgmac2_dma_axi, ptr @dwxgmac2_dma_dump_regs, ptr @dwxgmac2_dma_rx_mode, ptr @dwxgmac2_dma_tx_mode, ptr null, ptr null, ptr @dwxgmac2_enable_dma_irq, ptr @dwxgmac2_disable_dma_irq, ptr @dwxgmac2_dma_start_tx, ptr @dwxgmac2_dma_stop_tx, ptr @dwxgmac2_dma_start_rx, ptr @dwxgmac2_dma_stop_rx, ptr @dwxgmac2_dma_interrupt, ptr @dwxgmac2_get_hw_feature, ptr @dwxgmac2_rx_watchdog, ptr @dwxgmac2_set_tx_ring_len, ptr @dwxgmac2_set_rx_ring_len, ptr @dwxgmac2_set_rx_tail_ptr, ptr @dwxgmac2_set_tx_tail_ptr, ptr @dwxgmac2_enable_tso, ptr @dwxgmac2_qmode, ptr @dwxgmac2_set_bfsize, ptr @dwxgmac2_enable_sph, ptr @dwxgmac2_enable_tbs }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_dma_reset(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 12288
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  %4 = or i32 %3, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #2, !srcloc !11
  %5 = tail call i64 @ktime_get() #2
  %6 = add i64 %5, 100000000
  br label %7

7:                                                ; preds = %11, %1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @ktime_get() #2
  %13 = icmp sgt i64 %12, %6
  br i1 %13, label %14, label %7

14:                                               ; preds = %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !13
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 -110
  br label %19

19:                                               ; preds = %14, %7
  %20 = phi i32 [ %18, %14 ], [ 0, %7 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_init(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 12292
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %6 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 6
  %7 = load i8, ptr %6, align 4, !range !15
  %8 = icmp eq i8 %7, 0
  %9 = or i32 %5, 4096
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 7
  %12 = load i8, ptr %11, align 1, !range !15
  %13 = icmp eq i8 %12, 0
  %14 = or i32 %10, 2048
  %15 = select i1 %13, i32 %10, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !16
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %15) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_init_chan(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 12544
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !17
  %8 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !15
  %10 = icmp eq i8 %9, 0
  %11 = or i32 %7, 65536
  %12 = select i1 %10, i32 %7, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %12) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !19
  tail call void @arm_heavy_mb() #2
  %13 = add i32 %4, 12600
  %14 = getelementptr i8, ptr %0, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 49345) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_init_rx_chan(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %13 = add i32 %12, 12552
  %14 = getelementptr i8, ptr %0, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !20
  %16 = and i32 %15, -4128769
  %17 = shl i32 %11, 16
  %18 = and i32 %17, 4128768
  %19 = or i32 %16, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %19) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !22
  tail call void @arm_heavy_mb() #2
  %20 = add i32 %12, 12568
  %21 = getelementptr i8, ptr %0, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !23
  tail call void @arm_heavy_mb() #2
  %22 = add i32 %12, 12572
  %23 = getelementptr i8, ptr %0, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %2) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_init_tx_chan(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %13 = add i32 %12, 12548
  %14 = getelementptr i8, ptr %0, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !24
  %16 = and i32 %15, -4128785
  %17 = shl i32 %11, 16
  %18 = and i32 %17, 4128768
  %19 = or i32 %18, %16
  %20 = or i32 %19, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !25
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %20) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !26
  tail call void @arm_heavy_mb() #2
  %21 = add i32 %12, 12560
  %22 = getelementptr i8, ptr %0, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !27
  tail call void @arm_heavy_mb() #2
  %23 = add i32 %12, 12564
  %24 = getelementptr i8, ptr %0, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %2) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_axi(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 12292
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !28
  %5 = load i8, ptr %1, align 4, !range !15
  %6 = icmp eq i8 %5, 0
  %7 = or i32 %4, 32768
  %8 = select i1 %6, i32 %4, i32 %7
  %9 = getelementptr inbounds %struct.stmmac_axi, ptr %1, i32 0, i32 1
  %10 = load i8, ptr %9, align 1, !range !15
  %11 = icmp eq i8 %10, 0
  %12 = or i32 %8, 16384
  %13 = select i1 %11, i32 %8, i32 %12
  %14 = and i32 %13, -1061093631
  %15 = getelementptr inbounds %struct.stmmac_axi, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 24
  %18 = and i32 %17, 1056964608
  %19 = or i32 %14, %18
  %20 = getelementptr inbounds %struct.stmmac_axi, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 16
  %23 = and i32 %22, 4128768
  %24 = or i32 %19, %23
  %25 = getelementptr inbounds %struct.stmmac_axi, ptr %1, i32 0, i32 6
  %26 = load i8, ptr %25, align 4, !range !15
  %27 = xor i8 %26, 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %24, %28
  %30 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 0
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %46 [
    i32 256, label %32
    i32 128, label %34
    i32 64, label %36
    i32 32, label %38
    i32 16, label %40
    i32 8, label %42
    i32 4, label %44
  ]

32:                                               ; preds = %2
  %33 = or i32 %29, 128
  br label %46

34:                                               ; preds = %2
  %35 = or i32 %29, 64
  br label %46

36:                                               ; preds = %2
  %37 = or i32 %29, 32
  br label %46

38:                                               ; preds = %2
  %39 = or i32 %29, 16
  br label %46

40:                                               ; preds = %2
  %41 = or i32 %29, 8
  br label %46

42:                                               ; preds = %2
  %43 = or i32 %29, 4
  br label %46

44:                                               ; preds = %2
  %45 = or i32 %29, 2
  br label %46

46:                                               ; preds = %44, %42, %40, %38, %36, %34, %32, %2
  %47 = phi i32 [ %29, %2 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ]
  %48 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 1
  %49 = load i32, ptr %48, align 4
  switch i32 %49, label %64 [
    i32 256, label %62
    i32 128, label %60
    i32 64, label %58
    i32 32, label %56
    i32 16, label %54
    i32 8, label %52
    i32 4, label %50
  ]

50:                                               ; preds = %46
  %51 = or i32 %47, 2
  br label %64

52:                                               ; preds = %46
  %53 = or i32 %47, 4
  br label %64

54:                                               ; preds = %46
  %55 = or i32 %47, 8
  br label %64

56:                                               ; preds = %46
  %57 = or i32 %47, 16
  br label %64

58:                                               ; preds = %46
  %59 = or i32 %47, 32
  br label %64

60:                                               ; preds = %46
  %61 = or i32 %47, 64
  br label %64

62:                                               ; preds = %46
  %63 = or i32 %47, 128
  br label %64

64:                                               ; preds = %62, %60, %58, %56, %54, %52, %50, %46
  %65 = phi i32 [ %47, %46 ], [ %51, %50 ], [ %53, %52 ], [ %55, %54 ], [ %57, %56 ], [ %59, %58 ], [ %61, %60 ], [ %63, %62 ]
  %66 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 2
  %67 = load i32, ptr %66, align 4
  switch i32 %67, label %82 [
    i32 256, label %80
    i32 128, label %78
    i32 64, label %76
    i32 32, label %74
    i32 16, label %72
    i32 8, label %70
    i32 4, label %68
  ]

68:                                               ; preds = %64
  %69 = or i32 %65, 2
  br label %82

70:                                               ; preds = %64
  %71 = or i32 %65, 4
  br label %82

72:                                               ; preds = %64
  %73 = or i32 %65, 8
  br label %82

74:                                               ; preds = %64
  %75 = or i32 %65, 16
  br label %82

76:                                               ; preds = %64
  %77 = or i32 %65, 32
  br label %82

78:                                               ; preds = %64
  %79 = or i32 %65, 64
  br label %82

80:                                               ; preds = %64
  %81 = or i32 %65, 128
  br label %82

82:                                               ; preds = %80, %78, %76, %74, %72, %70, %68, %64
  %83 = phi i32 [ %65, %64 ], [ %69, %68 ], [ %71, %70 ], [ %73, %72 ], [ %75, %74 ], [ %77, %76 ], [ %79, %78 ], [ %81, %80 ]
  %84 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 3
  %85 = load i32, ptr %84, align 4
  switch i32 %85, label %100 [
    i32 256, label %98
    i32 128, label %96
    i32 64, label %94
    i32 32, label %92
    i32 16, label %90
    i32 8, label %88
    i32 4, label %86
  ]

86:                                               ; preds = %82
  %87 = or i32 %83, 2
  br label %100

88:                                               ; preds = %82
  %89 = or i32 %83, 4
  br label %100

90:                                               ; preds = %82
  %91 = or i32 %83, 8
  br label %100

92:                                               ; preds = %82
  %93 = or i32 %83, 16
  br label %100

94:                                               ; preds = %82
  %95 = or i32 %83, 32
  br label %100

96:                                               ; preds = %82
  %97 = or i32 %83, 64
  br label %100

98:                                               ; preds = %82
  %99 = or i32 %83, 128
  br label %100

100:                                              ; preds = %98, %96, %94, %92, %90, %88, %86, %82
  %101 = phi i32 [ %83, %82 ], [ %87, %86 ], [ %89, %88 ], [ %91, %90 ], [ %93, %92 ], [ %95, %94 ], [ %97, %96 ], [ %99, %98 ]
  %102 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 4
  %103 = load i32, ptr %102, align 4
  switch i32 %103, label %118 [
    i32 256, label %116
    i32 128, label %114
    i32 64, label %112
    i32 32, label %110
    i32 16, label %108
    i32 8, label %106
    i32 4, label %104
  ]

104:                                              ; preds = %100
  %105 = or i32 %101, 2
  br label %118

106:                                              ; preds = %100
  %107 = or i32 %101, 4
  br label %118

108:                                              ; preds = %100
  %109 = or i32 %101, 8
  br label %118

110:                                              ; preds = %100
  %111 = or i32 %101, 16
  br label %118

112:                                              ; preds = %100
  %113 = or i32 %101, 32
  br label %118

114:                                              ; preds = %100
  %115 = or i32 %101, 64
  br label %118

116:                                              ; preds = %100
  %117 = or i32 %101, 128
  br label %118

118:                                              ; preds = %116, %114, %112, %110, %108, %106, %104, %100
  %119 = phi i32 [ %101, %100 ], [ %105, %104 ], [ %107, %106 ], [ %109, %108 ], [ %111, %110 ], [ %113, %112 ], [ %115, %114 ], [ %117, %116 ]
  %120 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 5
  %121 = load i32, ptr %120, align 4
  switch i32 %121, label %136 [
    i32 256, label %134
    i32 128, label %132
    i32 64, label %130
    i32 32, label %128
    i32 16, label %126
    i32 8, label %124
    i32 4, label %122
  ]

122:                                              ; preds = %118
  %123 = or i32 %119, 2
  br label %136

124:                                              ; preds = %118
  %125 = or i32 %119, 4
  br label %136

126:                                              ; preds = %118
  %127 = or i32 %119, 8
  br label %136

128:                                              ; preds = %118
  %129 = or i32 %119, 16
  br label %136

130:                                              ; preds = %118
  %131 = or i32 %119, 32
  br label %136

132:                                              ; preds = %118
  %133 = or i32 %119, 64
  br label %136

134:                                              ; preds = %118
  %135 = or i32 %119, 128
  br label %136

136:                                              ; preds = %134, %132, %130, %128, %126, %124, %122, %118
  %137 = phi i32 [ %119, %118 ], [ %123, %122 ], [ %125, %124 ], [ %127, %126 ], [ %129, %128 ], [ %131, %130 ], [ %133, %132 ], [ %135, %134 ]
  %138 = getelementptr %struct.stmmac_axi, ptr %1, i32 0, i32 5, i32 6
  %139 = load i32, ptr %138, align 4
  switch i32 %139, label %154 [
    i32 256, label %152
    i32 128, label %150
    i32 64, label %148
    i32 32, label %146
    i32 16, label %144
    i32 8, label %142
    i32 4, label %140
  ]

140:                                              ; preds = %136
  %141 = or i32 %137, 2
  br label %154

142:                                              ; preds = %136
  %143 = or i32 %137, 4
  br label %154

144:                                              ; preds = %136
  %145 = or i32 %137, 8
  br label %154

146:                                              ; preds = %136
  %147 = or i32 %137, 16
  br label %154

148:                                              ; preds = %136
  %149 = or i32 %137, 32
  br label %154

150:                                              ; preds = %136
  %151 = or i32 %137, 64
  br label %154

152:                                              ; preds = %136
  %153 = or i32 %137, 128
  br label %154

154:                                              ; preds = %152, %150, %148, %146, %144, %142, %140, %136
  %155 = phi i32 [ %137, %136 ], [ %141, %140 ], [ %143, %142 ], [ %145, %144 ], [ %147, %146 ], [ %149, %148 ], [ %151, %150 ], [ %153, %152 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !29
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %155) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !30
  tail call void @arm_heavy_mb() #2
  %156 = getelementptr i8, ptr %0, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 1073741823) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !31
  tail call void @arm_heavy_mb() #2
  %157 = getelementptr i8, ptr %0, i32 12356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 1073741823) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_dump_regs(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ 3072, %2 ], [ %9, %3 ]
  %5 = shl i32 %4, 2
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !32
  %8 = getelementptr i32, ptr %1, i32 %4
  store i32 %7, ptr %8, align 4
  %9 = add nuw nsw i32 %4, 1
  %10 = icmp eq i32 %9, 3647
  br i1 %10, label %11, label %3

11:                                               ; preds = %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_rx_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 {
  %6 = shl i32 %2, 7
  %7 = add i32 %6, 4416
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !33
  %10 = sdiv i32 %3, 256
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = or i32 %9, 32
  br label %23

14:                                               ; preds = %5
  %15 = and i32 %9, -36
  %16 = icmp slt i32 %1, 65
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = icmp ult i32 %1, 97
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = or i32 %15, 2
  br label %23

21:                                               ; preds = %17
  %22 = or i32 %15, 3
  br label %23

23:                                               ; preds = %21, %19, %14, %12
  %24 = phi i32 [ %13, %12 ], [ %20, %19 ], [ %22, %21 ], [ %15, %14 ]
  %25 = and i32 %24, -67043329
  %26 = shl i32 %10, 16
  %27 = add i32 %26, 67043328
  %28 = and i32 %27, 67043328
  %29 = or i32 %25, %28
  %30 = icmp sgt i32 %3, 4095
  %31 = icmp ne i8 %4, 0
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = add i32 %6, 4432
  %35 = getelementptr i8, ptr %0, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !34
  %37 = or i32 %29, 128
  %38 = icmp eq i32 %3, 4096
  %39 = and i32 %36, 65537
  %40 = select i1 %38, i32 393218, i32 917512
  %41 = or i32 %40, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !35
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %41) #2, !srcloc !11
  br label %42

42:                                               ; preds = %33, %23
  %43 = phi i32 [ %37, %33 ], [ %29, %23 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !36
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %43) #2, !srcloc !11
  %44 = add i32 %6, 4464
  %45 = getelementptr i8, ptr %0, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !37
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !38
  tail call void @arm_heavy_mb() #2
  %47 = or i32 %46, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %47) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_tx_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 {
  %6 = shl i32 %2, 7
  %7 = add i32 %6, 4352
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !39
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = or i32 %9, 2
  br label %38

13:                                               ; preds = %5
  %14 = and i32 %9, -115
  %15 = icmp slt i32 %1, 65
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = icmp ult i32 %1, 97
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = or i32 %14, 32
  br label %38

20:                                               ; preds = %16
  %21 = icmp ult i32 %1, 129
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = or i32 %14, 48
  br label %38

24:                                               ; preds = %20
  %25 = icmp ult i32 %1, 193
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = or i32 %14, 64
  br label %38

28:                                               ; preds = %24
  %29 = icmp ult i32 %1, 257
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = or i32 %14, 80
  br label %38

32:                                               ; preds = %28
  %33 = icmp ult i32 %1, 385
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = or i32 %14, 96
  br label %38

36:                                               ; preds = %32
  %37 = or i32 %14, 112
  br label %38

38:                                               ; preds = %36, %34, %30, %26, %22, %18, %13, %11
  %39 = phi i32 [ %12, %11 ], [ %19, %18 ], [ %23, %22 ], [ %27, %26 ], [ %31, %30 ], [ %35, %34 ], [ %37, %36 ], [ %14, %13 ]
  %40 = shl i32 %2, 8
  %41 = and i32 %40, 1792
  %42 = and i32 %39, -67043341
  %43 = icmp eq i8 %4, 0
  %44 = select i1 %43, i32 4, i32 8
  %45 = sdiv i32 %3, 256
  %46 = shl i32 %45, 16
  %47 = add i32 %46, 67043328
  %48 = and i32 %47, 67043328
  %49 = or i32 %44, %41
  %50 = or i32 %49, %48
  %51 = or i32 %50, %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !40
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %51) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_enable_dma_irq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = shl i32 %1, 7
  %6 = add i32 %5, 12600
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !41
  %9 = or i32 %8, 192
  %10 = select i1 %2, i32 %9, i32 %8
  %11 = zext i1 %3 to i32
  %12 = or i32 %10, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !42
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %12) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_disable_dma_irq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = shl i32 %1, 7
  %6 = add i32 %5, 12600
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !43
  %9 = and i32 %8, -193
  %10 = select i1 %2, i32 %9, i32 %8
  %11 = and i32 %10, -2
  %12 = select i1 %3, i32 %11, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !44
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %12) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_start_tx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 7
  %4 = add i32 %3, 12548
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !45
  %7 = or i32 %6, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !46
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #2, !srcloc !11
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !47
  %9 = or i32 %8, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !48
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %9) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_stop_tx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 7
  %4 = add i32 %3, 12548
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !49
  %7 = and i32 %6, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !50
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #2, !srcloc !11
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !51
  %9 = and i32 %8, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !52
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %9) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_start_rx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 7
  %4 = add i32 %3, 12552
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !53
  %7 = or i32 %6, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !54
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #2, !srcloc !11
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !55
  %10 = or i32 %9, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !56
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_stop_rx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 7
  %4 = add i32 %3, 12552
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !57
  %7 = and i32 %6, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !58
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_dma_interrupt(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %2, 7
  %6 = add i32 %5, 12640
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !59
  %9 = add i32 %5, 12600
  %10 = getelementptr i8, ptr %0, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !60
  switch i32 %3, label %16 [
    i32 1, label %12
    i32 2, label %14
  ]

12:                                               ; preds = %4
  %13 = and i32 %8, 53440
  br label %16

14:                                               ; preds = %4
  %15 = and i32 %8, 53255
  br label %16

16:                                               ; preds = %14, %12, %4
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ], [ %8, %4 ]
  %18 = and i32 %17, 16384
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20, !prof !61

20:                                               ; preds = %16
  %21 = and i32 %17, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !61

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 32
  %25 = load i32, ptr %24, align 64
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 64
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i32 [ 4, %23 ], [ 0, %20 ]
  %29 = and i32 %17, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31, !prof !61

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 29
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = or i32 %28, 1
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i32 [ %35, %31 ], [ %28, %27 ]
  %38 = and i32 %17, 4096
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40, !prof !61

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 36
  %42 = load i32, ptr %41, align 16
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 16
  %44 = or i32 %37, 1
  br label %45

45:                                               ; preds = %40, %36, %16
  %46 = phi i32 [ %44, %40 ], [ %37, %36 ], [ 0, %16 ]
  %47 = and i32 %17, 32768
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %69, label %49, !prof !62

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 41
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = and i32 %17, 64
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55, !prof !62

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 42
  %57 = load i32, ptr %56, align 8
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8
  %59 = or i32 %46, 4
  br label %60

60:                                               ; preds = %55, %49
  %61 = phi i32 [ %59, %55 ], [ %46, %49 ]
  %62 = and i32 %17, 5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64, !prof !62

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 44
  %66 = load i32, ptr %65, align 16
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 16
  %68 = or i32 %61, 8
  br label %69

69:                                               ; preds = %64, %60, %45
  %70 = phi i32 [ %68, %64 ], [ %61, %60 ], [ %46, %45 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !63
  tail call void @arm_heavy_mb() #2
  %71 = and i32 %17, %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %71) #2, !srcloc !11
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_get_hw_feature(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 284
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !64
  %5 = lshr i32 %4, 27
  %6 = and i32 %5, 1
  %7 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 37
  store i32 %6, ptr %7, align 4
  %8 = lshr i32 %4, 16
  %9 = and i32 %8, 1
  %10 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 17
  store i32 %9, ptr %10, align 4
  %11 = lshr i32 %4, 14
  %12 = and i32 %11, 1
  %13 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 16
  store i32 %12, ptr %13, align 4
  %14 = lshr i32 %4, 13
  %15 = and i32 %14, 1
  %16 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 12
  store i32 %15, ptr %16, align 4
  %17 = lshr i32 %4, 12
  %18 = and i32 %17, 1
  %19 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 11
  store i32 %18, ptr %19, align 4
  %20 = lshr i32 %4, 11
  %21 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 13
  %22 = lshr i32 %4, 10
  %23 = and i32 %22, 1
  %24 = xor i32 %23, 1
  %25 = and i32 %24, %20
  store i32 %25, ptr %21, align 4
  %26 = lshr i32 %4, 9
  %27 = and i32 %26, 1
  %28 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 40
  store i32 %27, ptr %28, align 4
  %29 = lshr i32 %4, 8
  %30 = and i32 %29, 1
  %31 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 9
  store i32 %30, ptr %31, align 4
  %32 = lshr i32 %4, 7
  %33 = and i32 %32, 1
  %34 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 8
  store i32 %33, ptr %34, align 4
  %35 = lshr i32 %4, 6
  %36 = and i32 %35, 1
  %37 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 7
  store i32 %36, ptr %37, align 4
  %38 = lshr i32 %4, 4
  %39 = and i32 %38, 1
  %40 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 35
  store i32 %39, ptr %40, align 4
  %41 = lshr i32 %4, 1
  %42 = and i32 %41, 1
  %43 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr i8, ptr %0, i32 288
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !65
  %46 = lshr i32 %45, 27
  %47 = and i32 %46, 15
  %48 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 39
  store i32 %47, ptr %48, align 4
  %49 = lshr i32 %45, 24
  %50 = and i32 %49, 3
  %51 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 14
  store i32 %50, ptr %51, align 4
  %52 = lshr i32 %45, 20
  %53 = and i32 %52, 1
  %54 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 34
  store i32 %53, ptr %54, align 4
  %55 = lshr i32 %45, 18
  %56 = and i32 %55, 1
  %57 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 15
  store i32 %56, ptr %57, align 4
  %58 = lshr i32 %45, 17
  %59 = and i32 %58, 1
  %60 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 36
  store i32 %59, ptr %60, align 4
  %61 = lshr i32 %45, 14
  %62 = and i32 %61, 3
  %63 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 33
  %64 = icmp eq i32 %62, 1
  %65 = select i1 %64, i32 40, i32 32
  %66 = icmp eq i32 %62, 2
  %67 = select i1 %66, i32 48, i32 %65
  store i32 %67, ptr %63, align 4
  %68 = lshr i32 %45, 6
  %69 = and i32 %68, 31
  %70 = shl i32 128, %69
  %71 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 27
  store i32 %70, ptr %71, align 4
  %72 = and i32 %45, 31
  %73 = shl i32 128, %72
  %74 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 28
  store i32 %73, ptr %74, align 4
  %75 = getelementptr i8, ptr %0, i32 292
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !66
  %77 = lshr i32 %76, 24
  %78 = and i32 %77, 7
  %79 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 25
  store i32 %78, ptr %79, align 4
  %80 = lshr i32 %76, 18
  %81 = and i32 %80, 15
  %82 = add nuw nsw i32 %81, 1
  %83 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 22
  store i32 %82, ptr %83, align 4
  %84 = lshr i32 %76, 12
  %85 = and i32 %84, 15
  %86 = add nuw nsw i32 %85, 1
  %87 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 21
  store i32 %86, ptr %87, align 4
  %88 = lshr i32 %76, 6
  %89 = and i32 %88, 15
  %90 = add nuw nsw i32 %89, 1
  %91 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 24
  store i32 %90, ptr %91, align 4
  %92 = and i32 %76, 15
  %93 = add nuw nsw i32 %92, 1
  %94 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 23
  store i32 %93, ptr %94, align 4
  %95 = getelementptr i8, ptr %0, i32 296
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !67
  %97 = lshr i32 %96, 27
  %98 = and i32 %97, 1
  %99 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 45
  store i32 %98, ptr %99, align 4
  %100 = lshr i32 %96, 26
  %101 = and i32 %100, 1
  %102 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 44
  store i32 %101, ptr %102, align 4
  %103 = lshr i32 %96, 23
  %104 = and i32 %103, 3
  %105 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 41
  store i32 %104, ptr %105, align 4
  %106 = lshr i32 %96, 20
  %107 = and i32 %106, 7
  %108 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 42
  store i32 %107, ptr %108, align 4
  %109 = lshr i32 %96, 19
  %110 = and i32 %109, 1
  %111 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 43
  store i32 %110, ptr %111, align 4
  %112 = lshr i32 %96, 14
  %113 = and i32 %112, 3
  %114 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 29
  store i32 %113, ptr %114, align 4
  %115 = lshr i32 %96, 13
  %116 = and i32 %115, 1
  %117 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 38
  store i32 %116, ptr %117, align 4
  %118 = lshr i32 %96, 11
  %119 = and i32 %118, 3
  %120 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 32
  store i32 %119, ptr %120, align 4
  %121 = lshr i32 %96, 9
  %122 = and i32 %121, 3
  %123 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 31
  store i32 %122, ptr %123, align 4
  %124 = lshr i32 %96, 3
  %125 = and i32 %124, 1
  %126 = getelementptr inbounds %struct.dma_features, ptr %1, i32 0, i32 30
  store i32 %125, ptr %126, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_rx_watchdog(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !68
  tail call void @arm_heavy_mb() #2
  %4 = and i32 %1, 255
  %5 = shl i32 %2, 7
  %6 = add i32 %5, 12604
  %7 = getelementptr i8, ptr %0, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_tx_ring_len(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !69
  tail call void @arm_heavy_mb() #2
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 12592
  %6 = getelementptr i8, ptr %0, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_rx_ring_len(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !70
  tail call void @arm_heavy_mb() #2
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 12596
  %6 = getelementptr i8, ptr %0, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_rx_tail_ptr(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !71
  tail call void @arm_heavy_mb() #2
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 12588
  %6 = getelementptr i8, ptr %0, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_tx_tail_ptr(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !72
  tail call void @arm_heavy_mb() #2
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 12580
  %6 = getelementptr i8, ptr %0, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_enable_tso(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 12548
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !73
  %8 = and i32 %7, -4097
  %9 = select i1 %1, i32 4096, i32 0
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !74
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %10) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_qmode(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = shl i32 %1, 7
  %5 = add i32 %4, 4352
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !75
  %8 = getelementptr i8, ptr %0, i32 144
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !76
  %10 = and i32 %7, -13
  %11 = icmp eq i8 %2, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = or i32 %10, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !77
  tail call void @arm_heavy_mb() #2
  %14 = add i32 %4, 4368
  %15 = getelementptr i8, ptr %0, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #2, !srcloc !11
  br label %19

16:                                               ; preds = %3
  %17 = or i32 %10, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !78
  tail call void @arm_heavy_mb() #2
  %18 = and i32 %9, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %18) #2, !srcloc !11
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %13, %12 ], [ %17, %16 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !79
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %20) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_bfsize(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 12552
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !80
  %8 = and i32 %7, -32767
  %9 = shl i32 %1, 1
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !81
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %10) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_enable_sph(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !82
  %6 = and i32 %5, -28673
  %7 = or i32 %6, 8192
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !83
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %7) #2, !srcloc !11
  %8 = shl i32 %2, 7
  %9 = add i32 %8, 12544
  %10 = getelementptr i8, ptr %0, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !84
  %12 = and i32 %11, -16777217
  %13 = select i1 %1, i32 16777216, i32 0
  %14 = or i32 %12, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !85
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %14) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_enable_tbs(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 12548
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !86
  %8 = and i32 %7, -268435457
  %9 = select i1 %1, i32 268435456, i32 0
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !87
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %10) #2, !srcloc !11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !88
  %12 = and i32 %11, 268435456
  %13 = xor i1 %1, true
  %14 = icmp ne i32 %12, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !89
  tail call void @arm_heavy_mb() #2
  %17 = getelementptr i8, ptr %0, i32 12372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -255) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !90
  tail call void @arm_heavy_mb() #2
  %18 = getelementptr i8, ptr %0, i32 12376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -255) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !91
  tail call void @arm_heavy_mb() #2
  %19 = getelementptr i8, ptr %0, i32 12380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 -255) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !92
  tail call void @arm_heavy_mb() #2
  %20 = getelementptr i8, ptr %0, i32 12384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -255) #2, !srcloc !11
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i32 [ 0, %16 ], [ -5, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 2405423}
!9 = !{i64 2156007365}
!10 = !{i64 2156007677}
!11 = !{i64 2405005}
!12 = !{i64 2156009434}
!13 = !{i64 2156009774}
!14 = !{i64 2156010129}
!15 = !{i8 0, i8 2}
!16 = !{i64 2156010497}
!17 = !{i64 2156011071}
!18 = !{i64 2156011399}
!19 = !{i64 2156012430}
!20 = !{i64 2156013322}
!21 = !{i64 2156014953}
!22 = !{i64 2156015410}
!23 = !{i64 2156015915}
!24 = !{i64 2156016559}
!25 = !{i64 2156018272}
!26 = !{i64 2156018729}
!27 = !{i64 2156019234}
!28 = !{i64 2156019790}
!29 = !{i64 2156024264}
!30 = !{i64 2156025564}
!31 = !{i64 2156027428}
!32 = !{i64 2156028496}
!33 = !{i64 2156028947}
!34 = !{i64 2156031635}
!35 = !{i64 2156033346}
!36 = !{i64 2156033754}
!37 = !{i64 2156034365}
!38 = !{i64 2156034730}
!39 = !{i64 2156035403}
!40 = !{i64 2156039261}
!41 = !{i64 2156039860}
!42 = !{i64 2156040387}
!43 = !{i64 2156040983}
!44 = !{i64 2156041510}
!45 = !{i64 2156042106}
!46 = !{i64 2156042432}
!47 = !{i64 2156042940}
!48 = !{i64 2156043222}
!49 = !{i64 2156047857}
!50 = !{i64 2156048183}
!51 = !{i64 2156048691}
!52 = !{i64 2156048973}
!53 = !{i64 2156049547}
!54 = !{i64 2156049873}
!55 = !{i64 2156050381}
!56 = !{i64 2156050663}
!57 = !{i64 2156051237}
!58 = !{i64 2156051563}
!59 = !{i64 2156052159}
!60 = !{i64 2156052598}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2156055160}
!64 = !{i64 2156055700}
!65 = !{i64 2156057131}
!66 = !{i64 2156061167}
!67 = !{i64 2156064942}
!68 = !{i64 2156070017}
!69 = !{i64 2156071384}
!70 = !{i64 2156070989}
!71 = !{i64 2156071779}
!72 = !{i64 2156072174}
!73 = !{i64 2156072766}
!74 = !{i64 2156073178}
!75 = !{i64 2156073786}
!76 = !{i64 2156074137}
!77 = !{i64 2156075063}
!78 = !{i64 2156075533}
!79 = !{i64 2156075986}
!80 = !{i64 2156076585}
!81 = !{i64 2156077514}
!82 = !{i64 2156078022}
!83 = !{i64 2156078951}
!84 = !{i64 2156079525}
!85 = !{i64 2156079937}
!86 = !{i64 2156080533}
!87 = !{i64 2156080945}
!88 = !{i64 2156081541}
!89 = !{i64 2156082934}
!90 = !{i64 2156085008}
!91 = !{i64 2156087082}
!92 = !{i64 2156089156}
