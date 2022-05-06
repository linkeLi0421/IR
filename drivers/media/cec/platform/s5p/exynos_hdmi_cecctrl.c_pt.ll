; ModuleID = '/llk/IR/drivers/media/cec/platform/s5p/exynos_hdmi_cecctrl.c_pt.bc'
source_filename = "../drivers/media/cec/platform/s5p/exynos_hdmi_cecctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.s5p_cec_dev = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, i32, i32, %struct.cec_msg }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [28 x i8] c"failed to read phy control\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to write phy control\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_set_divider(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 1792, ptr noundef nonnull %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #6
  br label %30

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, -67043329
  %13 = or i32 %12, 4849664
  store i32 %13, ptr %2, align 4
  %14 = load ptr, ptr %3, align 8
  %15 = call i32 @regmap_write(ptr noundef %14, i32 noundef 1792, i32 noundef %13) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.1) #6
  br label %30

20:                                               ; preds = %10
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  %21 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 60
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 0) #5, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr i8, ptr %24, i32 56
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 0) #5, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr i8, ptr %26, i32 52
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 0) #5, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  call void @arm_heavy_mb() #5
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr i8, ptr %28, i32 48
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 15) #5, !srcloc !10
  br label %30

30:                                               ; preds = %20, %17, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_enable_rx(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 192
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %6 = or i8 %5, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_mask_rx_interrupts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %6 = or i8 %5, 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_unmask_rx_interrupts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %6 = and i8 %5, -49
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_mask_tx_interrupts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %6 = or i8 %5, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_unmask_tx_interrupts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %6 = and i8 %5, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 -128) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 -128) #5, !srcloc !10
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 196
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  %10 = and i8 %9, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %10) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_tx_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 -128) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_rx_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 -128) #5, !srcloc !10
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 196
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %8 = and i8 %7, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %8) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_threshold(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 388
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 21) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 384
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 0) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_copy_packet(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %10 = getelementptr i8, ptr %1, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = load ptr, ptr %7, align 4
  %13 = shl i32 %9, 2
  %14 = add i32 %13, 128
  %15 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %11) #5, !srcloc !10
  %16 = add nuw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %19 = trunc i32 %2 to i8
  %20 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %19) #5, !srcloc !10
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr i8, ptr %23, i32 64
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !37
  %26 = and i8 %25, -116
  %27 = shl i8 %3, 4
  %28 = load i8, ptr %1, align 1
  %29 = and i8 %28, 15
  %30 = icmp eq i8 %29, 15
  %31 = select i1 %30, i8 2, i8 0
  %32 = or i8 %27, %26
  %33 = or i8 %32, %31
  %34 = or i8 %33, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %35 = load ptr, ptr %20, align 4
  %36 = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %34) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_set_addr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %3 = trunc i32 %1 to i8
  %4 = and i8 %3, 15
  %5 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %4) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_cec_get_status(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !40
  %5 = and i8 %4, 15
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 100
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !41
  %9 = shl i8 %8, 4
  %10 = or i8 %9, %5
  %11 = zext i8 %10 to i32
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !42
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %16, %11
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !43
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = or i32 %22, %17
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !44
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = or i32 %28, %23
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_clr_pending_tx(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 3) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_clr_pending_rx(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 48) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_cec_get_rx_buf(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [40 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.s5p_cec_dev, ptr %0, i32 0, i32 7
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %20, %8 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 256
  %12 = shl i32 %9, 2
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !47
  %15 = getelementptr i8, ptr %2, i32 %9
  store i8 %14, ptr %15, align 1
  %16 = shl i32 %9, 1
  %17 = getelementptr i8, ptr %4, i32 %16
  %18 = zext i8 %14 to i32
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %18)
  %20 = add nuw i32 %9, 1
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %8

22:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i64 2153396889}
!10 = !{i64 363203}
!11 = !{i64 2153397142}
!12 = !{i64 2153397395}
!13 = !{i64 2153397652}
!14 = !{i64 363598}
!15 = !{i64 2153397929}
!16 = !{i64 2153398132}
!17 = !{i64 2153398405}
!18 = !{i64 2153398615}
!19 = !{i64 2153398888}
!20 = !{i64 2153399098}
!21 = !{i64 2153399371}
!22 = !{i64 2153399581}
!23 = !{i64 2153399854}
!24 = !{i64 2153400064}
!25 = !{i64 2153400327}
!26 = !{i64 2153400593}
!27 = !{i64 2153400852}
!28 = !{i64 2153401035}
!29 = !{i64 2153401294}
!30 = !{i64 2153401560}
!31 = !{i64 2153401819}
!32 = !{i64 2153402002}
!33 = !{i64 2153402257}
!34 = !{i64 2153402509}
!35 = !{i64 2153402777}
!36 = !{i64 2153403049}
!37 = !{i64 2153403324}
!38 = !{i64 2153404543}
!39 = !{i64 2153405463}
!40 = !{i64 2153405744}
!41 = !{i64 2153405960}
!42 = !{i64 2153406176}
!43 = !{i64 2153406392}
!44 = !{i64 2153406608}
!45 = !{i64 2153407373}
!46 = !{i64 2153407664}
!47 = !{i64 2153407969}
