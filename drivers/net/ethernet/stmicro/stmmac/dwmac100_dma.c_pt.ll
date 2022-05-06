; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }

@dwmac100_dma_ops = dso_local local_unnamed_addr constant %struct.stmmac_dma_ops { ptr @dwmac_dma_reset, ptr @dwmac100_dma_init, ptr null, ptr @dwmac100_dma_init_rx, ptr @dwmac100_dma_init_tx, ptr null, ptr @dwmac100_dump_dma_regs, ptr null, ptr @dwmac100_dma_operation_mode_tx, ptr @dwmac100_dma_diagnostic_fr, ptr @dwmac_enable_dma_transmission, ptr @dwmac_enable_dma_irq, ptr @dwmac_disable_dma_irq, ptr @dwmac_dma_start_tx, ptr @dwmac_dma_stop_tx, ptr @dwmac_dma_start_rx, ptr @dwmac_dma_stop_rx, ptr @dwmac_dma_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac_dma_reset(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac100_dma_init(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  %4 = load i32, ptr %1, align 4
  %5 = shl i32 %4, 8
  %6 = getelementptr i8, ptr %0, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  %7 = getelementptr i8, ptr %0, i32 4124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 106593) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac100_dma_init_rx(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  %5 = getelementptr i8, ptr %0, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac100_dma_init_tx(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !12
  tail call void @arm_heavy_mb() #2
  %5 = getelementptr i8, ptr %0, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac100_dump_dma_regs(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 4096
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %5 = getelementptr i32, ptr %1, i32 1024
  store i32 %4, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 4100
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %8 = getelementptr i32, ptr %1, i32 1025
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 4104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %11 = getelementptr i32, ptr %1, i32 1026
  store i32 %10, ptr %11, align 4
  %12 = getelementptr i8, ptr %0, i32 4108
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %14 = getelementptr i32, ptr %1, i32 1027
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 4112
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %17 = getelementptr i32, ptr %1, i32 1028
  store i32 %16, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 4116
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %20 = getelementptr i32, ptr %1, i32 1029
  store i32 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 4120
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %23 = getelementptr i32, ptr %1, i32 1030
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 4124
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %26 = getelementptr i32, ptr %1, i32 1031
  store i32 %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %0, i32 4128
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %29 = getelementptr i32, ptr %1, i32 1032
  store i32 %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %0, i32 4176
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !15
  %32 = getelementptr i32, ptr %1, i32 1044
  store i32 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %0, i32 4180
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !16
  %35 = getelementptr i32, ptr %1, i32 1045
  store i32 %34, ptr %35, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac100_dma_operation_mode_tx(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #1 {
  %6 = getelementptr i8, ptr %0, i32 4120
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !17
  %8 = icmp slt i32 %1, 33
  %9 = icmp ult i32 %1, 65
  %10 = select i1 %9, i32 16384, i32 32768
  %11 = select i1 %8, i32 4227072, i32 %10
  %12 = or i32 %7, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %12) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac100_dma_diagnostic_fr(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %2, i32 4128
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7, !prof !20

7:                                                ; preds = %3
  %8 = and i32 %5, 268435456
  %9 = icmp eq i32 %8, 0
  %10 = lshr i32 %5, 17
  %11 = and i32 %10, 2047
  %12 = select i1 %9, i32 %11, i32 2048
  %13 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %12
  store i32 %18, ptr %16, align 4
  %19 = and i32 %5, 65536
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %5, 65535
  %22 = select i1 %20, i32 %21, i32 65535
  %23 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 15
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 24
  %27 = load i32, ptr %26, align 32
  %28 = add i32 %27, %22
  store i32 %28, ptr %26, align 32
  br label %29

29:                                               ; preds = %7, %3
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2155208432}
!9 = !{i64 172852}
!10 = !{i64 2155209134}
!11 = !{i64 2155209701}
!12 = !{i64 2155210166}
!13 = !{i64 173270}
!14 = !{i64 2155211434}
!15 = !{i64 2155211796}
!16 = !{i64 2155212158}
!17 = !{i64 2155210714}
!18 = !{i64 2155210913}
!19 = !{i64 2155212509}
!20 = !{!"branch_weights", i32 2000, i32 1}
