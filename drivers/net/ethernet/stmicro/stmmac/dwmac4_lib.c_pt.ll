; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac4_dma_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 4096
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %4 = or i32 %3, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #2, !srcloc !11
  %5 = tail call i64 @ktime_get() #2
  %6 = add i64 %5, 1000000000
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %13, %1
  %11 = tail call i64 @ktime_get() #2
  %12 = icmp sgt i64 %11, %6
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %10

17:                                               ; preds = %10
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !13
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13, %1
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ 0, %21 ], [ -110, %17 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac4_set_rx_tail_ptr(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !14
  tail call void @arm_heavy_mb() #2
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 4392
  %6 = getelementptr i8, ptr %0, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac4_set_tx_tail_ptr(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 4384
  %6 = getelementptr i8, ptr %0, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac4_dma_start_tx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 7
  %4 = add i32 %3, 4356
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !16
  %7 = or i32 %6, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #2, !srcloc !11
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !18
  %9 = or i32 %8, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !19
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %9) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac4_dma_stop_tx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 7
  %4 = add i32 %3, 4356
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !20
  %7 = and i32 %6, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac4_dma_start_rx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 7
  %4 = add i32 %3, 4360
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !22
  %7 = or i32 %6, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !23
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #2, !srcloc !11
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !24
  %9 = or i32 %8, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !25
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %9) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac4_dma_stop_rx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 7
  %4 = add i32 %3, 4360
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !26
  %7 = and i32 %6, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !27
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac4_set_tx_ring_len(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !28
  tail call void @arm_heavy_mb() #2
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 4396
  %6 = getelementptr i8, ptr %0, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac4_set_rx_ring_len(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !29
  tail call void @arm_heavy_mb() #2
  %4 = shl i32 %2, 7
  %5 = add i32 %4, 4400
  %6 = getelementptr i8, ptr %0, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac4_enable_dma_irq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 7
  %6 = add i32 %5, 4404
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !30
  %9 = or i32 %8, 64
  %10 = select i1 %2, i32 %9, i32 %8
  %11 = zext i1 %3 to i32
  %12 = or i32 %10, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !31
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %12) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac410_enable_dma_irq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 7
  %6 = add i32 %5, 4404
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !32
  %9 = or i32 %8, 64
  %10 = select i1 %2, i32 %9, i32 %8
  %11 = zext i1 %3 to i32
  %12 = or i32 %10, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !33
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %12) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac4_disable_dma_irq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 7
  %6 = add i32 %5, 4404
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !34
  %9 = and i32 %8, -65
  %10 = select i1 %2, i32 %9, i32 %8
  %11 = and i32 %10, -2
  %12 = select i1 %3, i32 %11, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !35
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %12) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac410_disable_dma_irq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 7
  %6 = add i32 %5, 4404
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !36
  %9 = and i32 %8, -65
  %10 = select i1 %2, i32 %9, i32 %8
  %11 = and i32 %10, -2
  %12 = select i1 %3, i32 %11, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !37
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %12) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac4_dma_interrupt(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = shl i32 %2, 7
  %6 = add i32 %5, 4448
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !38
  %9 = add i32 %5, 4404
  %10 = getelementptr i8, ptr %0, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !39
  switch i32 %3, label %16 [
    i32 1, label %12
    i32 2, label %14
  ]

12:                                               ; preds = %4
  %13 = and i32 %8, 3734464
  br label %16

14:                                               ; preds = %4
  %15 = and i32 %8, 62471
  br label %16

16:                                               ; preds = %14, %12, %4
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ], [ %8, %4 ]
  %18 = and i32 %17, 16384
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %63, label %20, !prof !40

20:                                               ; preds = %16
  %21 = and i32 %17, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !40

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 32
  %25 = load i32, ptr %24, align 64
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 64
  br label %27

27:                                               ; preds = %23, %20
  %28 = and i32 %17, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !40

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 33
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = and i32 %17, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 34
  %39 = load i32, ptr %38, align 8
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = and i32 %17, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44, !prof !40

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 35
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = and i32 %17, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !40

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 29
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i32 [ 1, %51 ], [ 0, %48 ]
  %57 = and i32 %17, 4096
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59, !prof !40

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 36
  %61 = load i32, ptr %60, align 16
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 16
  br label %63

63:                                               ; preds = %59, %55, %16
  %64 = phi i32 [ 1, %59 ], [ %56, %55 ], [ 0, %16 ]
  %65 = and i32 %17, 32768
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !41

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 41
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = and i32 %17, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74, !prof !41

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 42
  %76 = load i32, ptr %75, align 8
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 8
  %78 = getelementptr %struct.stmmac_extra_stats, ptr %1, i32 0, i32 119, i32 %2, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  %81 = or i32 %64, 4
  br label %82

82:                                               ; preds = %74, %71
  %83 = phi i32 [ %81, %74 ], [ %64, %71 ]
  %84 = and i32 %17, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86, !prof !41

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 44
  %88 = load i32, ptr %87, align 16
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 16
  %90 = getelementptr %struct.stmmac_extra_stats, ptr %1, i32 0, i32 118, i32 %2, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  %93 = or i32 %83, 8
  br label %94

94:                                               ; preds = %86, %82
  %95 = phi i32 [ %93, %86 ], [ %83, %82 ]
  %96 = and i32 %17, 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98, !prof !40

98:                                               ; preds = %94
  %99 = or i32 %95, 8
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i32 [ %99, %98 ], [ %95, %94 ]
  %102 = and i32 %17, 2048
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104, !prof !40

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 37
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !42
  tail call void @arm_heavy_mb() #2
  %109 = and i32 %17, %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %109) #2, !srcloc !11
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_dwmac4_set_mac_addr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %1, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = getelementptr i8, ptr %1, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !43
  tail call void @arm_heavy_mb() #2
  %12 = or i32 %8, %11
  %13 = or i32 %12, -2147483648
  %14 = getelementptr i8, ptr %0, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #2, !srcloc !11
  %15 = getelementptr i8, ptr %1, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = getelementptr i8, ptr %1, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = or i32 %22, %18
  %24 = getelementptr i8, ptr %1, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or i32 %23, %27
  %29 = load i8, ptr %1, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !44
  tail call void @arm_heavy_mb() #2
  %32 = getelementptr i8, ptr %0, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_dwmac4_set_mac(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !45
  %4 = and i32 %3, -4
  %5 = select i1 %1, i32 3, i32 0
  %6 = or i32 %4, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !46
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_dwmac4_get_mac_addr(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %0, i32 %2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !47
  %7 = getelementptr i8, ptr %0, i32 %3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !48
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %1, align 1
  %10 = lshr i32 %8, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr i8, ptr %1, i32 1
  store i8 %11, ptr %12, align 1
  %13 = lshr i32 %8, 16
  %14 = trunc i32 %13 to i8
  %15 = getelementptr i8, ptr %1, i32 2
  store i8 %14, ptr %15, align 1
  %16 = lshr i32 %8, 24
  %17 = trunc i32 %16 to i8
  %18 = getelementptr i8, ptr %1, i32 3
  store i8 %17, ptr %18, align 1
  %19 = trunc i32 %6 to i8
  %20 = getelementptr i8, ptr %1, i32 4
  store i8 %19, ptr %20, align 1
  %21 = lshr i32 %6, 8
  %22 = trunc i32 %21 to i8
  %23 = getelementptr i8, ptr %1, i32 5
  store i8 %22, ptr %23, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i64 365610}
!9 = !{i64 2155225098}
!10 = !{i64 2155225380}
!11 = !{i64 365192}
!12 = !{i64 2155227092}
!13 = !{i64 2155227432}
!14 = !{i64 2155227781}
!15 = !{i64 2155228305}
!16 = !{i64 2155229049}
!17 = !{i64 2155229471}
!18 = !{i64 2155229994}
!19 = !{i64 2155230276}
!20 = !{i64 2155230976}
!21 = !{i64 2155231398}
!22 = !{i64 2155232135}
!23 = !{i64 2155232557}
!24 = !{i64 2155233080}
!25 = !{i64 2155233362}
!26 = !{i64 2155234062}
!27 = !{i64 2155234484}
!28 = !{i64 2155234996}
!29 = !{i64 2155235505}
!30 = !{i64 2155236243}
!31 = !{i64 2155236797}
!32 = !{i64 2155237539}
!33 = !{i64 2155238093}
!34 = !{i64 2155238835}
!35 = !{i64 2155239389}
!36 = !{i64 2155240131}
!37 = !{i64 2155240685}
!38 = !{i64 2155241427}
!39 = !{i64 2155241996}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2155246867}
!43 = !{i64 2155247374}
!44 = !{i64 2155247744}
!45 = !{i64 2155248221}
!46 = !{i64 2155248749}
!47 = !{i64 2155249206}
!48 = !{i64 2155249525}
