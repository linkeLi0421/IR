; ModuleID = '/llk/IR/drivers/media/platform/s5p-jpeg/jpeg-hw-s5p.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-jpeg/jpeg-hw-s5p.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_reset(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #2, !srcloc !9
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %5, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !13
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %5

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_poweron(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_input_raw_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 32, i32 64
  %5 = getelementptr i8, ptr %0, i32 104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !16
  %7 = and i32 %6, -225
  %8 = or i32 %7, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %8) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_proc_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i32 0, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !18
  %6 = and i32 %5, -9
  %7 = or i32 %6, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !19
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %7) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_subsampling_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 2
  %4 = select i1 %3, i32 2, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !20
  %6 = and i32 %5, -8
  %7 = or i32 %6, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %7) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_jpeg_get_subsampling_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !22
  %3 = and i32 %2, 7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_dri(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !23
  %5 = and i32 %4, -256
  %6 = lshr i32 %1, 8
  %7 = and i32 %6, 255
  %8 = or i32 %5, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !24
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #2, !srcloc !9
  %9 = getelementptr i8, ptr %0, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !25
  %11 = and i32 %10, -256
  %12 = and i32 %1, 255
  %13 = or i32 %11, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !26
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %13) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_qtbl(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !27
  %6 = shl i32 %1, 1
  %7 = add i32 %6, -2
  %8 = shl i32 3, %7
  %9 = xor i32 %8, -1
  %10 = and i32 %5, %9
  %11 = shl i32 %2, %7
  %12 = and i32 %11, %8
  %13 = or i32 %10, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !28
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %13) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_htbl_ac(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !29
  %5 = shl i32 %1, 1
  %6 = add i32 %5, -1
  %7 = shl nuw i32 1, %6
  %8 = xor i32 %7, -1
  %9 = and i32 %4, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !30
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %9) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_htbl_dc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !31
  %5 = shl i32 %1, 1
  %6 = add i32 %5, -2
  %7 = shl nuw i32 1, %6
  %8 = xor i32 %7, -1
  %9 = and i32 %4, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !32
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %9) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_y(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !33
  %5 = and i32 %4, -256
  %6 = lshr i32 %1, 8
  %7 = and i32 %6, 255
  %8 = or i32 %5, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !34
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #2, !srcloc !9
  %9 = getelementptr i8, ptr %0, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !35
  %11 = and i32 %10, -256
  %12 = and i32 %1, 255
  %13 = or i32 %11, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !36
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %13) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_x(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !37
  %5 = and i32 %4, -256
  %6 = lshr i32 %1, 8
  %7 = and i32 %6, 255
  %8 = or i32 %5, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !38
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #2, !srcloc !9
  %9 = getelementptr i8, ptr %0, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !39
  %11 = and i32 %10, -256
  %12 = and i32 %1, 255
  %13 = or i32 %11, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !40
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %13) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_rst_int_enable(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !41
  %5 = and i32 %4, -129
  %6 = select i1 %1, i32 128, i32 0
  %7 = or i32 %5, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !42
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_data_num_int_enable(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !43
  %5 = and i32 %4, -65
  %6 = select i1 %1, i32 64, i32 0
  %7 = or i32 %5, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !44
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_final_mcu_num_int_enable(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !45
  %5 = and i32 %4, -33
  %6 = select i1 %1, i32 32, i32 0
  %7 = or i32 %5, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !46
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_jpeg_timer_stat(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 128
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !47
  %4 = lshr i32 %3, 31
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_clear_timer_stat(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 124
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !48
  %4 = and i32 %3, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !49
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_enc_stream_int(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 152
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !50
  %5 = and i32 %4, -33554432
  %6 = and i32 %1, 16777215
  %7 = or i32 %6, %5
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !51
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_jpeg_enc_stream_stat(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 156
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !52
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_clear_enc_stream_stat(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 152
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !53
  %4 = and i32 %3, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !54
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_outform_raw(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1
  %4 = zext i1 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 136
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !55
  %7 = and i32 %6, -2
  %8 = or i32 %7, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !56
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %8) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_jpgadr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !57
  tail call void @arm_heavy_mb() #2
  %3 = getelementptr i8, ptr %0, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_imgadr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !58
  tail call void @arm_heavy_mb() #2
  %3 = getelementptr i8, ptr %0, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_coef(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 2
  %6 = add i32 %5, 88
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !59
  %9 = mul i32 %2, -8
  %10 = add i32 %9, 24
  %11 = shl i32 255, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  %14 = shl i32 %3, %10
  %15 = and i32 %14, %11
  %16 = or i32 %13, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !60
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %16) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_start(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !61
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_jpeg_result_stat_ok(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 56
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !62
  %4 = lshr i32 %3, 6
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_jpeg_stream_stat_ok(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 56
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !63
  %4 = lshr i32 %3, 5
  %5 = and i32 %4, 1
  %6 = xor i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_jpeg_clear_int(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 56
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !64
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !65
  tail call void @arm_heavy_mb() #2
  %4 = getelementptr i8, ptr %0, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 4) #2, !srcloc !9
  %5 = getelementptr i8, ptr %0, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_jpeg_compressed_size(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 40
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !67
  %4 = shl i32 %3, 16
  %5 = and i32 %4, 16711680
  %6 = getelementptr i8, ptr %0, i32 44
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !68
  %8 = shl i32 %7, 8
  %9 = and i32 %8, 65280
  %10 = or i32 %9, %5
  %11 = getelementptr i8, ptr %0, i32 48
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !69
  %13 = and i32 %12, 255
  %14 = or i32 %10, %13
  ret i32 %14
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
!8 = !{i64 2154727614}
!9 = !{i64 365644}
!10 = !{i64 366062}
!11 = !{i64 2154728054}
!12 = !{i64 2154728300}
!13 = !{i64 2154728142}
!14 = !{i64 2154728624}
!15 = !{i64 2154728826}
!16 = !{i64 2154729321}
!17 = !{i64 2154729516}
!18 = !{i64 2154729995}
!19 = !{i64 2154730190}
!20 = !{i64 2154730656}
!21 = !{i64 2154730844}
!22 = !{i64 2154731288}
!23 = !{i64 2154731613}
!24 = !{i64 2154731797}
!25 = !{i64 2154732241}
!26 = !{i64 2154732425}
!27 = !{i64 2154732869}
!28 = !{i64 2154733174}
!29 = !{i64 2154733618}
!30 = !{i64 2154733929}
!31 = !{i64 2154734373}
!32 = !{i64 2154734684}
!33 = !{i64 2154735128}
!34 = !{i64 2154735312}
!35 = !{i64 2154735756}
!36 = !{i64 2154735940}
!37 = !{i64 2154736384}
!38 = !{i64 2154736568}
!39 = !{i64 2154737012}
!40 = !{i64 2154737196}
!41 = !{i64 2154737640}
!42 = !{i64 2154737846}
!43 = !{i64 2154738290}
!44 = !{i64 2154738496}
!45 = !{i64 2154738940}
!46 = !{i64 2154739146}
!47 = !{i64 2154739590}
!48 = !{i64 2154739953}
!49 = !{i64 2154740176}
!50 = !{i64 2154740620}
!51 = !{i64 2154740834}
!52 = !{i64 2154741278}
!53 = !{i64 2154741603}
!54 = !{i64 2154741799}
!55 = !{i64 2154742280}
!56 = !{i64 2154742475}
!57 = !{i64 2154742783}
!58 = !{i64 2154743093}
!59 = !{i64 2154743631}
!60 = !{i64 2154743980}
!61 = !{i64 2154744308}
!62 = !{i64 2154744748}
!63 = !{i64 2154745104}
!64 = !{i64 2154745460}
!65 = !{i64 2154745662}
!66 = !{i64 2154746120}
!67 = !{i64 2154746441}
!68 = !{i64 2154746762}
!69 = !{i64 2154747083}
