; ModuleID = '/llk/IR/drivers/pci/controller/pcie-rcar.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-rcar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rcar_pcie = type { ptr, ptr }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_pci_write_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %4 = getelementptr inbounds %struct.rcar_pcie, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #3, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_pci_read_reg(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rcar_pcie, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_rmw32(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 3
  %6 = and i32 %5, 24
  %7 = and i32 %1, -4
  %8 = getelementptr inbounds %struct.rcar_pcie, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %12 = shl i32 %2, %6
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = shl i32 %3, %6
  %16 = or i32 %14, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr i8, ptr %17, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #3, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_pcie_wait_for_phyrdy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcar_pcie, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2032
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %1
  tail call void @msleep(i32 noundef 5) #3
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 2032
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %8
  tail call void @msleep(i32 noundef 5) #3
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 2032
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %14
  tail call void @msleep(i32 noundef 5) #3
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 2032
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  tail call void @msleep(i32 noundef 5) #3
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 2032
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %26
  tail call void @msleep(i32 noundef 5) #3
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 2032
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  tail call void @msleep(i32 noundef 5) #3
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 2032
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  tail call void @msleep(i32 noundef 5) #3
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 2032
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  tail call void @msleep(i32 noundef 5) #3
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 2032
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  tail call void @msleep(i32 noundef 5) #3
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr i8, ptr %57, i32 2032
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void @msleep(i32 noundef 5) #3
  br label %63

63:                                               ; preds = %62, %56, %50, %44, %38, %32, %26, %20, %14, %8, %1
  %64 = phi i32 [ 0, %1 ], [ 0, %8 ], [ 0, %14 ], [ 0, %20 ], [ 0, %26 ], [ 0, %32 ], [ 0, %38 ], [ 0, %44 ], [ 0, %50 ], [ 0, %56 ], [ -110, %62 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_pcie_wait_for_dl(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcar_pcie, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %10, %1
  %4 = phi i32 [ 9999, %1 ], [ %12, %10 ]
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 8196
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !13
  %12 = add nsw i32 %4, -1
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %14, label %3

14:                                               ; preds = %10, %3
  %15 = phi i32 [ 0, %3 ], [ -110, %10 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_pcie_set_outbound(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.resource_entry, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %1, 5
  %7 = add i32 %6, 13324
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %8 = getelementptr inbounds %struct.rcar_pcie, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #3, !srcloc !9
  %11 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %5, align 4
  %14 = add i32 %12, 1
  %15 = sub i32 %14, %13
  %16 = icmp ugt i32 %15, 128
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = add i32 %15, -1
  %19 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 false) #3, !range !14
  %20 = sub nuw nsw i32 32, %19
  %21 = shl nuw i32 1, %20
  %22 = add i32 %21, -128
  %23 = and i32 %22, -128
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi i32 [ %23, %17 ], [ 0, %3 ]
  %26 = add i32 %6, 13320
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr i8, ptr %27, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #3, !srcloc !9
  %29 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %5, align 4
  br i1 %32, label %36, label %34

34:                                               ; preds = %24
  %35 = tail call i32 @pci_pio_to_address(i32 noundef %33) #3
  br label %36

36:                                               ; preds = %34, %24
  %37 = phi i32 [ %35, %34 ], [ %33, %24 ]
  %38 = getelementptr inbounds %struct.resource_entry, ptr %2, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %37, %39
  %41 = add i32 %6, 13316
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr i8, ptr %42, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #3, !srcloc !9
  %44 = and i32 %40, -128
  %45 = add i32 %6, 13312
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr i8, ptr %46, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %44) #3, !srcloc !9
  %48 = load i32, ptr %29, align 4
  %49 = and i32 %48, 256
  %50 = or i32 %49, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %51 = load ptr, ptr %8, align 4
  %52 = getelementptr i8, ptr %51, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #3, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_pcie_set_inbound(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
  br i1 %5, label %7, label %28

7:                                                ; preds = %6
  %8 = trunc i64 %2 to i32
  %9 = shl i32 %4, 2
  %10 = add i32 %9, 8320
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %11 = getelementptr inbounds %struct.rcar_pcie, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %8) #3, !srcloc !9
  %14 = trunc i64 %1 to i32
  %15 = shl i32 %4, 5
  %16 = add i32 %15, 8704
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #3, !srcloc !9
  %19 = trunc i64 %3 to i32
  %20 = add i32 %15, 8712
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr i8, ptr %21, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #3, !srcloc !9
  %23 = lshr i64 %2, 32
  %24 = trunc i64 %23 to i32
  %25 = add i32 %9, 8324
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #3, !srcloc !9
  br label %39

28:                                               ; preds = %6
  %29 = trunc i64 %1 to i32
  %30 = shl i32 %4, 5
  %31 = add i32 %30, 8704
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %32 = getelementptr inbounds %struct.rcar_pcie, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %29) #3, !srcloc !9
  %35 = trunc i64 %3 to i32
  %36 = add i32 %30, 8712
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr i8, ptr %37, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %35) #3, !srcloc !9
  br label %39

39:                                               ; preds = %28, %7
  %40 = phi i32 [ %30, %28 ], [ %15, %7 ]
  %41 = lshr i64 %1, 32
  %42 = trunc i64 %41 to i32
  %43 = add i32 %40, 8736
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %44 = getelementptr inbounds %struct.rcar_pcie, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #3, !srcloc !9
  %47 = add i32 %40, 8744
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %48 = load ptr, ptr %44, align 4
  %49 = getelementptr i8, ptr %48, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #3, !srcloc !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2153147735}
!9 = !{i64 3823966}
!10 = !{i64 3824384}
!11 = !{i64 2153148194}
!12 = !{i64 2153149163}
!13 = !{i64 2153149005}
!14 = !{i32 0, i32 33}
