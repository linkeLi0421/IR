; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_set_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_set_mac_addr\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_set_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_get_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_get_mac_addr\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_get_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"\014%s: unexpected status %08x\0A\00", align 1
@__func__.dwmac_dma_interrupt = private unnamed_addr constant [20 x i8] c"dwmac_dma_interrupt\00", align 1
@__kstrtab_stmmac_set_mac_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_set_mac_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_set_mac_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_set_mac_addr to i32), ptr @__kstrtab_stmmac_set_mac_addr, ptr @__kstrtabns_stmmac_set_mac_addr }, section "___ksymtab_gpl+stmmac_set_mac_addr", align 4
@__kstrtab_stmmac_get_mac_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_get_mac_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_get_mac_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_get_mac_addr to i32), ptr @__kstrtab_stmmac_get_mac_addr, ptr @__kstrtabns_stmmac_get_mac_addr }, section "___ksymtab_gpl+stmmac_get_mac_addr", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_stmmac_get_mac_addr, ptr @__ksymtab_stmmac_set_mac_addr], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac_dma_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 4096
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %4 = or i32 %3, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #3, !srcloc !11
  %5 = tail call i64 @ktime_get() #3
  %6 = add i64 %5, 200000000
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %13, %1
  %11 = tail call i64 @ktime_get() #3
  %12 = icmp sgt i64 %11, %6
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #3
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %10

17:                                               ; preds = %10
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
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
define dso_local void @dwmac_enable_dma_transmission(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %2 = getelementptr i8, ptr %0, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac_enable_dma_irq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %0, i32 4124
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  %7 = or i32 %6, 64
  %8 = select i1 %2, i32 %7, i32 %6
  %9 = zext i1 %3 to i32
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac_disable_dma_irq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %0, i32 4124
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !17
  %7 = and i32 %6, -65
  %8 = select i1 %2, i32 %7, i32 %6
  %9 = and i32 %8, -2
  %10 = select i1 %3, i32 %9, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac_dma_start_tx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 4120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !19
  %5 = or i32 %4, 8192
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac_dma_stop_tx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 4120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !21
  %5 = and i32 %4, -8193
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac_dma_start_rx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 4120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !23
  %5 = or i32 %4, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac_dma_stop_rx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 4120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !25
  %5 = and i32 %4, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac_dma_interrupt(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %0, i32 4116
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !27
  switch i32 %3, label %11 [
    i32 1, label %7
    i32 2, label %9
  ]

7:                                                ; preds = %4
  %8 = and i32 %6, 123856
  br label %11

9:                                                ; preds = %4
  %10 = and i32 %6, 107567
  br label %11

11:                                               ; preds = %9, %7, %4
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ], [ %6, %4 ]
  %13 = and i32 %12, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %80, label %15, !prof !28

15:                                               ; preds = %11
  %16 = and i32 %12, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !28

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 28
  %20 = load i32, ptr %19, align 16
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 16
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ 2, %18 ], [ 0, %15 ]
  %24 = and i32 %12, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 30
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = and i32 %12, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !28

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 31
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = and i32 %12, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40, !prof !28

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 32
  %42 = load i32, ptr %41, align 64
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 64
  br label %44

44:                                               ; preds = %40, %37
  %45 = and i32 %12, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !28

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 33
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = and i32 %12, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !28

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 34
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = and i32 %12, 1024
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61, !prof !28

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 35
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = and i32 %12, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68, !prof !28

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 29
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i32 [ 1, %68 ], [ %23, %65 ]
  %74 = and i32 %12, 8192
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76, !prof !28

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 36
  %78 = load i32, ptr %77, align 16
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 16
  br label %80

80:                                               ; preds = %76, %72, %11
  %81 = phi i32 [ 1, %76 ], [ %73, %72 ], [ 0, %11 ]
  %82 = and i32 %12, 65536
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %117, label %84, !prof !29

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 41
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 4
  %88 = and i32 %12, 64
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90, !prof !29

90:                                               ; preds = %84
  %91 = getelementptr i8, ptr %0, i32 4124
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !30
  %93 = and i32 %92, 64
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95, !prof !29

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 42
  %97 = load i32, ptr %96, align 8
  %98 = add i32 %97, 1
  store i32 %98, ptr %96, align 8
  %99 = or i32 %81, 4
  br label %100

100:                                              ; preds = %95, %90, %84
  %101 = phi i32 [ %81, %84 ], [ %99, %95 ], [ %81, %90 ]
  %102 = and i32 %12, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104, !prof !29

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 44
  %106 = load i32, ptr %105, align 16
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 16
  %108 = or i32 %101, 8
  br label %109

109:                                              ; preds = %104, %100
  %110 = phi i32 [ %108, %104 ], [ %101, %100 ]
  %111 = and i32 %12, 16384
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113, !prof !28

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 37
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  br label %117

117:                                              ; preds = %113, %109, %80
  %118 = phi i32 [ %110, %113 ], [ %110, %109 ], [ %81, %80 ]
  %119 = and i32 %12, 469762048
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121, !prof !28

121:                                              ; preds = %117
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dwmac_dma_interrupt, i32 noundef %12) #4
  br label %123

123:                                              ; preds = %121, %117
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %124 = and i32 %12, 131071
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %124) #3, !srcloc !11
  ret i32 %118
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac_dma_flush_tx_fifo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 4120
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !32
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %4 = or i32 %3, 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #3, !srcloc !11
  br label %5

5:                                                ; preds = %5, %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !34
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_set_mac_addr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = getelementptr i8, ptr %1, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %12 = or i32 %8, %11
  %13 = or i32 %12, -2147483648
  %14 = getelementptr i8, ptr %0, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #3, !srcloc !11
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
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %32 = getelementptr i8, ptr %0, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_set_mac(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !37
  %4 = and i32 %3, -13
  %5 = select i1 %1, i32 12, i32 0
  %6 = or i32 %4, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_get_mac_addr(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 %2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !39
  %7 = getelementptr i8, ptr %0, i32 %3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !40
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
!8 = !{i64 366901}
!9 = !{i64 2155206968}
!10 = !{i64 2155207179}
!11 = !{i64 366483}
!12 = !{i64 2155208749}
!13 = !{i64 2155209089}
!14 = !{i64 2155209289}
!15 = !{i64 2155209767}
!16 = !{i64 2155210027}
!17 = !{i64 2155210513}
!18 = !{i64 2155210773}
!19 = !{i64 2155211259}
!20 = !{i64 2155211470}
!21 = !{i64 2155211956}
!22 = !{i64 2155212167}
!23 = !{i64 2155212653}
!24 = !{i64 2155212864}
!25 = !{i64 2155213350}
!26 = !{i64 2155213561}
!27 = !{i64 2155214047}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2155215830}
!31 = !{i64 2155216848}
!32 = !{i64 2155217370}
!33 = !{i64 2155217596}
!34 = !{i64 2155218112}
!35 = !{i64 2155218329}
!36 = !{i64 2155218663}
!37 = !{i64 2155220453}
!38 = !{i64 2155220697}
!39 = !{i64 2155221154}
!40 = !{i64 2155221473}
