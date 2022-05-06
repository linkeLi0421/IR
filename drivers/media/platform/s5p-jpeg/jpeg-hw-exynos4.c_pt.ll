; ModuleID = '/llk/IR/drivers/media/platform/s5p-jpeg/jpeg-hw-exynos4.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-jpeg/jpeg-hw-exynos4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.s5p_jpeg_addr = type { i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_sw_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  %3 = and i32 %2, -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %3) #2, !srcloc !11
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %5 = and i32 %4, -536870913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %5) #2, !srcloc !11
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !14
  tail call void @arm_heavy_mb() #2
  %7 = or i32 %4, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %7) #2, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_enc_dec_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !15
  switch i32 %1, label %10 [
    i32 1, label %4
    i32 0, label %7
  ]

4:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !16
  tail call void @arm_heavy_mb() #2
  %5 = and i32 %3, -4
  %6 = or i32 %5, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #2, !srcloc !11
  br label %12

7:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %8 = and i32 %3, -4
  %9 = or i32 %8, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %9) #2, !srcloc !11
  br label %12

10:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  %11 = and i32 %3, -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %11) #2, !srcloc !11
  br label %12

12:                                               ; preds = %10, %7, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__exynos4_jpeg_set_img_fmt(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 2
  %5 = select i1 %4, i32 67108864, i32 134217728
  %6 = getelementptr i8, ptr %0, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !19
  %8 = and i32 %7, -65536
  switch i32 %1, label %37 [
    i32 1497715271, label %9
    i32 876758866, label %11
    i32 1346520914, label %13
    i32 875714126, label %15
    i32 842290766, label %17
    i32 1448695129, label %20
    i32 1431918169, label %22
    i32 909203022, label %25
    i32 825644622, label %27
    i32 842094158, label %30
    i32 825382478, label %32
    i32 842093913, label %35
  ]

9:                                                ; preds = %3
  %10 = or i32 %8, 32
  br label %37

11:                                               ; preds = %3
  %12 = or i32 %8, 321
  br label %37

13:                                               ; preds = %3
  %14 = or i32 %8, 257
  br label %37

15:                                               ; preds = %3
  %16 = or i32 %8, 2050
  br label %37

17:                                               ; preds = %3
  %18 = or i32 %8, %5
  %19 = or i32 %18, 2050
  br label %37

20:                                               ; preds = %3
  %21 = or i32 %8, 16387
  br label %37

22:                                               ; preds = %3
  %23 = or i32 %8, %5
  %24 = or i32 %23, 16387
  br label %37

25:                                               ; preds = %3
  %26 = or i32 %8, 20483
  br label %37

27:                                               ; preds = %3
  %28 = or i32 %8, %5
  %29 = or i32 %28, 20483
  br label %37

30:                                               ; preds = %3
  %31 = or i32 %8, 131076
  br label %37

32:                                               ; preds = %3
  %33 = or i32 %8, %5
  %34 = or i32 %33, 131076
  br label %37

35:                                               ; preds = %3
  %36 = or i32 %8, 163844
  br label %37

37:                                               ; preds = %35, %32, %30, %27, %25, %22, %20, %17, %15, %13, %11, %9, %3
  %38 = phi i32 [ %8, %3 ], [ %36, %35 ], [ %34, %32 ], [ %31, %30 ], [ %29, %27 ], [ %26, %25 ], [ %24, %22 ], [ %21, %20 ], [ %19, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !20
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %38) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__exynos4_jpeg_set_enc_out_fmt(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !21
  %6 = icmp eq i32 %2, 2
  %7 = select i1 %6, i32 -50331649, i32 -117440513
  %8 = and i32 %5, %7
  switch i32 %1, label %15 [
    i32 2, label %13
    i32 0, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3
  %10 = or i32 %8, 16777216
  br label %15

11:                                               ; preds = %3
  %12 = or i32 %8, 33554432
  br label %15

13:                                               ; preds = %3
  %14 = or i32 %8, 50331648
  br label %15

15:                                               ; preds = %13, %11, %9, %3
  %16 = phi i32 [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %3 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !22
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %16) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_interrupt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 2
  %4 = getelementptr i8, ptr %0, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2
  tail call void asm sideeffect "dsb ", "~{memory}"() #2
  br i1 %3, label %6, label %8

6:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !23
  tail call void @arm_heavy_mb() #2
  %7 = or i32 %5, 31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %7) #2, !srcloc !11
  br label %11

8:                                                ; preds = %2
  %9 = and i32 %5, -512
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !24
  tail call void @arm_heavy_mb() #2
  %10 = or i32 %9, 438
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %10) #2, !srcloc !11
  br label %11

11:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos4_jpeg_get_int_status(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !25
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos4_jpeg_get_fifo_status(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 80
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !26
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_huf_table_enable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !27
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !28
  tail call void @arm_heavy_mb() #2
  %6 = or i32 %3, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #2, !srcloc !11
  br label %9

7:                                                ; preds = %2
  %8 = and i32 %3, -524289
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !29
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %8) #2, !srcloc !11
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_sys_int_enable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !30
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !31
  tail call void @arm_heavy_mb() #2
  %6 = or i32 %3, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #2, !srcloc !11
  br label %9

7:                                                ; preds = %2
  %8 = and i32 %3, -268435457
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !32
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %8) #2, !srcloc !11
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_stream_buf_address(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !33
  tail call void @arm_heavy_mb() #2
  %3 = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_stream_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !34
  tail call void @arm_heavy_mb() #2
  %4 = getelementptr i8, ptr %0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !35
  tail call void @arm_heavy_mb() #2
  %5 = and i32 %1, 65535
  %6 = shl i32 %2, 16
  %7 = or i32 %6, %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %7) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_frame_buf_address(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !36
  tail call void @arm_heavy_mb() #2
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr i8, ptr %0, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !37
  tail call void @arm_heavy_mb() #2
  %5 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !38
  tail call void @arm_heavy_mb() #2
  %8 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_encode_tbl_select(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !39
  tail call void @arm_heavy_mb() #2
  %3 = getelementptr i8, ptr %0, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 3156) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_dec_components(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !40
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = or i32 %4, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !41
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_select_dec_q_tbl(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !42
  %6 = zext i8 %2 to i32
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 1
  %9 = add nsw i32 %8, -2
  %10 = shl i32 %6, %9
  %11 = or i32 %5, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !43
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %11) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_select_dec_h_tbl(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !44
  %6 = zext i8 %2 to i32
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 1
  %9 = add nuw nsw i32 %8, 4
  %10 = shl i32 %6, %9
  %11 = or i32 %5, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !45
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %11) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_encode_hoff_cnt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1497715271
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  %4 = getelementptr i8, ptr %0, i32 76
  br i1 %3, label %5, label %6

5:                                                ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 210) #2, !srcloc !11
  br label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 418) #2, !srcloc !11
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos4_jpeg_get_stream_size(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 68
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !46
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_dec_bitstream_size(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !47
  tail call void @arm_heavy_mb() #2
  %3 = getelementptr i8, ptr %0, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_get_frame_size(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 84
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !48
  %6 = and i32 %5, 65535
  store i32 %6, ptr %1, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !49
  %8 = lshr i32 %7, 16
  store i32 %8, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos4_jpeg_get_frame_fmt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 88
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !50
  %4 = and i32 %3, 3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos4_jpeg_set_timer_count(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !51
  tail call void @arm_heavy_mb() #2
  %3 = getelementptr i8, ptr %0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #2, !srcloc !11
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
!8 = !{i64 367387}
!9 = !{i64 2154736589}
!10 = !{i64 2154736818}
!11 = !{i64 366969}
!12 = !{i64 2154737316}
!13 = !{i64 2154737524}
!14 = !{i64 2154738429}
!15 = !{i64 2154738897}
!16 = !{i64 2154739144}
!17 = !{i64 2154739582}
!18 = !{i64 2154739995}
!19 = !{i64 2154740519}
!20 = !{i64 2154742706}
!21 = !{i64 2154743150}
!22 = !{i64 2154743526}
!23 = !{i64 2154744192}
!24 = !{i64 2154744889}
!25 = !{i64 2154745363}
!26 = !{i64 2154745684}
!27 = !{i64 2154746005}
!28 = !{i64 2154746221}
!29 = !{i64 2154746576}
!30 = !{i64 2154747048}
!31 = !{i64 2154747264}
!32 = !{i64 2154747619}
!33 = !{i64 2154747958}
!34 = !{i64 2154748273}
!35 = !{i64 2154748744}
!36 = !{i64 2154749190}
!37 = !{i64 2154749549}
!38 = !{i64 2154749910}
!39 = !{i64 2154750610}
!40 = !{i64 2154751054}
!41 = !{i64 2154751294}
!42 = !{i64 2154751738}
!43 = !{i64 2154751952}
!44 = !{i64 2154752396}
!45 = !{i64 2154752616}
!46 = !{i64 2154753806}
!47 = !{i64 2154753991}
!48 = !{i64 2154754437}
!49 = !{i64 2154754769}
!50 = !{i64 2154755101}
!51 = !{i64 2154755291}
