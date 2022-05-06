; ModuleID = '/llk/IR/drivers/media/platform/s5p-jpeg/jpeg-hw-exynos3250.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-jpeg/jpeg-hw-exynos3250.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.s5p_jpeg_addr = type { i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.exynos3250_jpeg_dec_scaling_ratio = private unnamed_addr constant [7 x i32] [i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_reset(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #2, !srcloc !9
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi i32 [ 1000, %1 ], [ %5, %7 ]
  %5 = add nsw i32 %4, -1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !11
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3

11:                                               ; preds = %7, %3
  %12 = getelementptr i8, ptr %0, i32 12
  br label %13

13:                                               ; preds = %17, %11
  %14 = phi i32 [ 1000, %11 ], [ %15, %17 ]
  %15 = add nsw i32 %14, -1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !14
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #2, !srcloc !9
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !17
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %13

21:                                               ; preds = %17, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #2, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_poweron(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !19
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_set_dma_num(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !20
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 460551) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_clk_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 308
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !22
  tail call void @arm_heavy_mb() #2
  %4 = or i32 %3, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_input_raw_fmt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 308
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !23
  %5 = and i32 %4, 2
  switch i32 %1, label %26 [
    i32 876758866, label %6
    i32 877807426, label %8
    i32 1346520914, label %10
    i32 1380075346, label %12
    i32 1448695129, label %14
    i32 1431918169, label %16
    i32 1498831189, label %18
    i32 1498765654, label %20
    i32 842093913, label %24
    i32 825382478, label %22
  ]

6:                                                ; preds = %2
  %7 = or i32 %5, 128
  br label %26

8:                                                ; preds = %2
  %9 = or i32 %5, 136
  br label %26

10:                                               ; preds = %2
  %11 = or i32 %5, 64
  br label %26

12:                                               ; preds = %2
  %13 = or i32 %5, 72
  br label %26

14:                                               ; preds = %2
  %15 = or i32 %5, 32
  br label %26

16:                                               ; preds = %2
  %17 = or i32 %5, 36
  br label %26

18:                                               ; preds = %2
  %19 = or i32 %5, 96
  br label %26

20:                                               ; preds = %2
  %21 = or i32 %5, 100
  br label %26

22:                                               ; preds = %2
  %23 = or i32 %5, 512
  br label %26

24:                                               ; preds = %2
  %25 = or i32 %5, 160
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %2
  %27 = phi i32 [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %2 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !24
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %27) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_set_y16(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 308
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !25
  %5 = and i32 %4, -3
  %6 = select i1 %1, i32 2, i32 0
  %7 = or i32 %5, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !26
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_proc_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i32 0, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !27
  %6 = and i32 %5, -9
  %7 = or i32 %6, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !28
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %7) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_subsampling_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %1, 2
  %6 = select i1 %5, i32 2, i32 %4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !29
  %8 = and i32 %7, -8
  %9 = or i32 %8, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !30
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %9) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos3250_jpeg_get_subsampling_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !31
  %3 = and i32 %2, 7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_dri(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !32
  tail call void @arm_heavy_mb() #2
  %4 = getelementptr i8, ptr %0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_qtbl(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !33
  %6 = shl i32 %1, 1
  %7 = add i32 %6, 6
  %8 = shl i32 3, %7
  %9 = xor i32 %8, -1
  %10 = and i32 %5, %9
  %11 = shl i32 %2, %7
  %12 = and i32 %11, %8
  %13 = or i32 %10, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !34
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %13) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_htbl_ac(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !35
  %5 = shl i32 %1, 1
  %6 = add i32 %5, -1
  %7 = shl nuw i32 1, %6
  %8 = xor i32 %7, -1
  %9 = and i32 %4, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !36
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %9) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_htbl_dc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !37
  %5 = shl i32 %1, 1
  %6 = add i32 %5, -2
  %7 = shl nuw i32 1, %6
  %8 = xor i32 %7, -1
  %9 = and i32 %4, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !38
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %9) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_set_y(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !39
  tail call void @arm_heavy_mb() #2
  %4 = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_set_x(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !40
  tail call void @arm_heavy_mb() #2
  %4 = getelementptr i8, ptr %0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_interrupts_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 28
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !41
  %4 = or i32 %3, 3896
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !42
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_enc_stream_bound(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 16777152
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !43
  tail call void @arm_heavy_mb() #2
  %4 = getelementptr i8, ptr %0, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_output_raw_fmt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %13 [
    i32 876758866, label %14
    i32 877807426, label %3
    i32 1346520914, label %4
    i32 1380075346, label %5
    i32 1448695129, label %6
    i32 1431918169, label %7
    i32 1498831189, label %8
    i32 1498765654, label %9
    i32 842094158, label %10
    i32 825382478, label %11
    i32 842093913, label %12
  ]

3:                                                ; preds = %2
  br label %14

4:                                                ; preds = %2
  br label %14

5:                                                ; preds = %2
  br label %14

6:                                                ; preds = %2
  br label %14

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  br label %14

9:                                                ; preds = %2
  br label %14

10:                                               ; preds = %2
  br label %14

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %15 = phi i32 [ 0, %13 ], [ 4, %12 ], [ 512, %11 ], [ 0, %10 ], [ 67, %9 ], [ 3, %8 ], [ 65, %7 ], [ 1, %6 ], [ 133, %5 ], [ 5, %4 ], [ 134, %3 ], [ 6, %2 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !44
  tail call void @arm_heavy_mb() #2
  %16 = getelementptr i8, ptr %0, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_jpgadr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !45
  tail call void @arm_heavy_mb() #2
  %3 = getelementptr i8, ptr %0, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_imgadr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !46
  tail call void @arm_heavy_mb() #2
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr i8, ptr %0, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !47
  tail call void @arm_heavy_mb() #2
  %5 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !48
  tail call void @arm_heavy_mb() #2
  %8 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_stride(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %1, label %11 [
    i32 876758866, label %4
    i32 1346520914, label %6
    i32 1380075346, label %6
    i32 1448695129, label %6
    i32 1431918169, label %6
    i32 1498831189, label %6
    i32 1498765654, label %6
    i32 842094158, label %8
    i32 825382478, label %8
    i32 842093913, label %9
  ]

4:                                                ; preds = %3
  %5 = shl i32 %2, 2
  br label %11

6:                                                ; preds = %3, %3, %3, %3, %3, %3
  %7 = shl i32 %2, 1
  br label %11

8:                                                ; preds = %3, %3
  br label %11

9:                                                ; preds = %3
  %10 = lshr i32 %2, 1
  br label %11

11:                                               ; preds = %9, %8, %6, %4, %3
  %12 = phi i32 [ 0, %3 ], [ %2, %9 ], [ %2, %8 ], [ %7, %6 ], [ %5, %4 ]
  %13 = phi i32 [ 0, %3 ], [ %10, %9 ], [ 0, %8 ], [ 0, %6 ], [ 0, %4 ]
  %14 = phi i32 [ 0, %3 ], [ %10, %9 ], [ %2, %8 ], [ 0, %6 ], [ 0, %4 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !49
  tail call void @arm_heavy_mb() #2
  %15 = getelementptr i8, ptr %0, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !50
  tail call void @arm_heavy_mb() #2
  %16 = getelementptr i8, ptr %0, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !51
  tail call void @arm_heavy_mb() #2
  %17 = getelementptr i8, ptr %0, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_offset(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = shl i32 %2, 18
  %5 = and i32 %4, 2147221504
  %6 = shl i32 %1, 2
  %7 = and i32 %6, 32764
  %8 = or i32 %5, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !52
  tail call void @arm_heavy_mb() #2
  %9 = getelementptr i8, ptr %0, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !53
  tail call void @arm_heavy_mb() #2
  %10 = getelementptr i8, ptr %0, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !54
  tail call void @arm_heavy_mb() #2
  %11 = getelementptr i8, ptr %0, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_coef(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  %4 = getelementptr i8, ptr %0, i32 296
  br i1 %3, label %5, label %8

5:                                                ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 20262430) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !55
  tail call void @arm_heavy_mb() #2
  %6 = getelementptr i8, ptr %0, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 11579011) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !56
  tail call void @arm_heavy_mb() #2
  %7 = getelementptr i8, ptr %0, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 34397203) #2, !srcloc !9
  br label %11

8:                                                ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 78119321) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !57
  tail call void @arm_heavy_mb() #2
  %9 = getelementptr i8, ptr %0, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 78225508) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !58
  tail call void @arm_heavy_mb() #2
  %10 = getelementptr i8, ptr %0, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 78119170) #2, !srcloc !9
  br label %11

11:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_start(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !59
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_rstart(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !60
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos3250_jpeg_get_int_status(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !61
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_clear_int_status(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !62
  tail call void @arm_heavy_mb() #2
  %3 = getelementptr i8, ptr %0, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos3250_jpeg_operating(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !63
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos3250_jpeg_compressed_size(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !64
  %4 = and i32 %3, 16777215
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_dec_stream_size(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !65
  tail call void @arm_heavy_mb() #2
  %3 = and i32 %1, 536870911
  %4 = getelementptr i8, ptr %0, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_dec_scaling_ratio(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, -2
  %4 = icmp ult i32 %3, 7
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds [7 x i32], ptr @switch.table.exynos3250_jpeg_dec_scaling_ratio, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 0, %2 ], [ %7, %5 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !66
  tail call void @arm_heavy_mb() #2
  %10 = getelementptr i8, ptr %0, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_set_timer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !67
  tail call void @arm_heavy_mb() #2
  %3 = or i32 %1, -2147483648
  %4 = getelementptr i8, ptr %0, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos3250_jpeg_get_timer_status(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 332
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !68
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_clear_timer_status(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !69
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 -2147483648) #2, !srcloc !9
  ret void
}

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
!8 = !{i64 2154740622}
!9 = !{i64 370394}
!10 = !{i64 2154741524}
!11 = !{i64 2154741366}
!12 = !{i64 370812}
!13 = !{i64 2154741852}
!14 = !{i64 2154742034}
!15 = !{i64 2154742935}
!16 = !{i64 2154742777}
!17 = !{i64 2154743259}
!18 = !{i64 2154743441}
!19 = !{i64 2154743764}
!20 = !{i64 2154744347}
!21 = !{i64 2154745012}
!22 = !{i64 2154745233}
!23 = !{i64 2154745708}
!24 = !{i64 2154747445}
!25 = !{i64 2154747894}
!26 = !{i64 2154748102}
!27 = !{i64 2154748571}
!28 = !{i64 2154748766}
!29 = !{i64 2154749243}
!30 = !{i64 2154749438}
!31 = !{i64 2154749882}
!32 = !{i64 2154750084}
!33 = !{i64 2154750528}
!34 = !{i64 2154750863}
!35 = !{i64 2154751307}
!36 = !{i64 2154751630}
!37 = !{i64 2154752074}
!38 = !{i64 2154752397}
!39 = !{i64 2154752711}
!40 = !{i64 2154753025}
!41 = !{i64 2154753469}
!42 = !{i64 2154753718}
!43 = !{i64 2154754036}
!44 = !{i64 2154755886}
!45 = !{i64 2154756197}
!46 = !{i64 2154756517}
!47 = !{i64 2154756852}
!48 = !{i64 2154757189}
!49 = !{i64 2154758752}
!50 = !{i64 2154759075}
!51 = !{i64 2154759394}
!52 = !{i64 2154759808}
!53 = !{i64 2154760220}
!54 = !{i64 2154760638}
!55 = !{i64 2154761425}
!56 = !{i64 2154761836}
!57 = !{i64 2154762658}
!58 = !{i64 2154763069}
!59 = !{i64 2154763414}
!60 = !{i64 2154763718}
!61 = !{i64 2154764159}
!62 = !{i64 2154764345}
!63 = !{i64 2154764793}
!64 = !{i64 2154765119}
!65 = !{i64 2154765339}
!66 = !{i64 2154765706}
!67 = !{i64 2154766111}
!68 = !{i64 2154766604}
!69 = !{i64 2154766843}
