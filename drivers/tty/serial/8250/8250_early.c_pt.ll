; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_early.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_early.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@__UNIQUE_ID___earlycon_uart8250210 = internal constant %struct.earlycon_id { [15 x i8] c"uart8250\00\00\00\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_uart211 = internal constant %struct.earlycon_id { [15 x i8] c"uart\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_ns16550212 = internal constant %struct.earlycon_id { [15 x i8] c"ns16550\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ns16550\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_ns16550a213 = internal constant %struct.earlycon_id { [15 x i8] c"ns16550a\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ns16550a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_uart214 = internal constant %struct.earlycon_id { [15 x i8] c"uart\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"nvidia,tegra20-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_uart215 = internal constant %struct.earlycon_id { [15 x i8] c"uart\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"snps,dw-apb-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_omap8250216 = internal constant %struct.earlycon_id { [15 x i8] c"omap8250\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ti,omap2-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_omap8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_omap8250217 = internal constant %struct.earlycon_id { [15 x i8] c"omap8250\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ti,omap3-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_omap8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_omap8250218 = internal constant %struct.earlycon_id { [15 x i8] c"omap8250\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ti,omap4-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_omap8250_setup }, section "__earlycon_table", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___earlycon_ns16550212, ptr @__UNIQUE_ID___earlycon_ns16550a213, ptr @__UNIQUE_ID___earlycon_omap8250216, ptr @__UNIQUE_ID___earlycon_omap8250217, ptr @__UNIQUE_ID___earlycon_omap8250218, ptr @__UNIQUE_ID___earlycon_uart211, ptr @__UNIQUE_ID___earlycon_uart214, ptr @__UNIQUE_ID___earlycon_uart215, ptr @__UNIQUE_ID___earlycon_uart8250210], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @early_serial8250_setup(ptr noundef %0, ptr nocapture readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @serial8250_early_in(ptr noundef %3, i32 noundef 1)
  %17 = and i32 %16, 64
  tail call fastcc void @serial8250_early_out(ptr noundef %3, i32 noundef 1, i32 noundef %17)
  br label %19

18:                                               ; preds = %11
  tail call fastcc void @init_port(ptr noundef %0) #5
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.console, ptr %20, i32 0, i32 1
  store ptr @early_serial8250_write, ptr %21, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.console, ptr %22, i32 0, i32 2
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %19, %7
  %25 = phi i32 [ 0, %19 ], [ -19, %7 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @serial8250_early_in(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl i32 %1, %5
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %8 = load i8, ptr %7, align 2
  switch i8 %8, label %45 [
    i8 2, label %9
    i8 7, label %15
    i8 3, label %21
    i8 6, label %26
    i8 0, label %32
    i8 4, label %41
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %6
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %14 = zext i8 %13 to i32
  br label %45

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %6
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %20 = zext i16 %19 to i32
  br label %45

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %6
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  br label %45

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %6
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !12
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  br label %45

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %6
  %36 = and i32 %35, 1048575
  %37 = or i32 %36, -18874368
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %40 = zext i8 %39 to i32
  br label %45

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %0, i32 noundef %1) #6
  br label %45

45:                                               ; preds = %41, %32, %26, %21, %15, %9, %2
  %46 = phi i32 [ %44, %41 ], [ %40, %32 ], [ %31, %26 ], [ %25, %21 ], [ %20, %15 ], [ %14, %9 ], [ 0, %2 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @serial8250_early_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %1, %6
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %9 = load i8, ptr %8, align 2
  switch i8 %9, label %40 [
    i8 2, label %10
    i8 7, label %15
    i8 3, label %20
    i8 6, label %24
    i8 0, label %29
    i8 4, label %37
  ]

10:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %11 = trunc i32 %2 to i8
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %11) #6, !srcloc !17
  br label %40

15:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %16 = trunc i32 %2 to i16
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %16) #6, !srcloc !19
  br label %40

20:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %2) #6, !srcloc !21
  br label %40

24:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %2)
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #6, !srcloc !21
  br label %40

29:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %30 = trunc i32 %2 to i8
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %7
  %34 = and i32 %33, 1048575
  %35 = or i32 %34, -18874368
  %36 = inttoptr i32 %35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %30) #6, !srcloc !17
  br label %40

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6
  br label %40

40:                                               ; preds = %37, %29, %24, %20, %15, %10, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @init_port(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1
  tail call fastcc void @serial8250_early_out(ptr noundef %2, i32 noundef 3, i32 noundef 3)
  %3 = tail call fastcc i32 @serial8250_early_in(ptr noundef %2, i32 noundef 1)
  %4 = and i32 %3, 64
  tail call fastcc void @serial8250_early_out(ptr noundef %2, i32 noundef 1, i32 noundef %4)
  tail call fastcc void @serial8250_early_out(ptr noundef %2, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @serial8250_early_out(ptr noundef %2, i32 noundef 4, i32 noundef 3)
  %5 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 4
  %12 = lshr exact i32 %11, 1
  %13 = add i32 %12, %6
  %14 = udiv i32 %13, %11
  %15 = tail call fastcc i32 @serial8250_early_in(ptr noundef %2, i32 noundef 3)
  %16 = and i32 %15, 127
  %17 = or i32 %16, 128
  tail call fastcc void @serial8250_early_out(ptr noundef %2, i32 noundef 3, i32 noundef %17)
  %18 = and i32 %14, 255
  tail call fastcc void @serial8250_early_out(ptr noundef %2, i32 noundef 0, i32 noundef %18)
  %19 = lshr i32 %14, 8
  %20 = and i32 %19, 255
  tail call fastcc void @serial8250_early_out(ptr noundef %2, i32 noundef 1, i32 noundef %20)
  tail call fastcc void @serial8250_early_out(ptr noundef %2, i32 noundef 3, i32 noundef %16)
  br label %21

21:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @early_serial8250_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @serial_putc) #6
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @early_omap8250_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #2 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 25
  store i8 2, ptr %11, align 1
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.console, ptr %12, i32 0, i32 1
  store ptr @early_serial8250_write, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 0, %10 ], [ -19, %6 ]
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial_putc(ptr noundef %0, i32 noundef %1) #1 {
  tail call fastcc void @serial8250_early_out(ptr noundef %0, i32 noundef 0, i32 noundef %1)
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  br label %8

8:                                                ; preds = %47, %2
  %9 = load i8, ptr %3, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 5, %10
  %12 = load i8, ptr %4, align 2
  switch i8 %12, label %47 [
    i8 2, label %13
    i8 7, label %18
    i8 3, label %23
    i8 6, label %27
    i8 0, label %32
    i8 4, label %40
  ]

13:                                               ; preds = %8
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 %11
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %17 = zext i8 %16 to i32
  br label %43

18:                                               ; preds = %8
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 %11
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %22 = zext i16 %21 to i32
  br label %43

23:                                               ; preds = %8
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr i8, ptr %24, i32 %11
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  br label %43

27:                                               ; preds = %8
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i8, ptr %28, i32 %11
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !12
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  br label %43

32:                                               ; preds = %8
  %33 = load i32, ptr %6, align 4
  %34 = add i32 %33, %11
  %35 = and i32 %34, 1048575
  %36 = or i32 %35, -18874368
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %39 = zext i8 %38 to i32
  br label %43

40:                                               ; preds = %8
  %41 = load ptr, ptr %5, align 4
  %42 = tail call i32 %41(ptr noundef %0, i32 noundef 5) #6
  br label %43

43:                                               ; preds = %40, %32, %27, %23, %18, %13
  %44 = phi i32 [ %42, %40 ], [ %39, %32 ], [ %31, %27 ], [ %26, %23 ], [ %22, %18 ], [ %17, %13 ]
  %45 = and i32 %44, 96
  %46 = icmp eq i32 %45, 96
  br i1 %46, label %48, label %47

47:                                               ; preds = %43, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !24
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !25
  br label %8

48:                                               ; preds = %43
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold }
attributes #6 = { nounwind }

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
!8 = !{i64 4839775}
!9 = !{i64 2152647877}
!10 = !{i64 4839157}
!11 = !{i64 2152648246}
!12 = !{i64 4839995}
!13 = !{i64 2152648615}
!14 = !{i64 2152649046}
!15 = !{i64 2152649339}
!16 = !{i64 2152649566}
!17 = !{i64 4839380}
!18 = !{i64 2152649840}
!19 = !{i64 4838957}
!20 = !{i64 2152650190}
!21 = !{i64 4839577}
!22 = !{i64 2152650569}
!23 = !{i64 2152650897}
!24 = !{i64 2152651380}
!25 = !{i64 2152651222}
