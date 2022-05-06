; ModuleID = '/llk/IR/drivers/clocksource/nomadik-mtu.c_pt.bc'
source_filename = "../drivers/clocksource/nomadik-mtu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.delay_timer = type { ptr, i32 }

@__of_table_nomadik_mtu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,nomadik-mtu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nmdk_timer_of_init }, section "__timer_of_table", align 4
@.str = private unnamed_addr constant [25 x i8] c"\013Can't remap registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\013could not get apb_pclk\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"timclk\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\013could not get timclk\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\013Can't parse IRQ\0A\00", align 1
@mtu_base = internal unnamed_addr global ptr null, align 4
@clk_prescale = internal unnamed_addr global i1 false, align 4
@nmdk_cycle = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"mtu_0\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\013timer: failed to initialize clock source %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Nomadik Timer Tick\00", align 1
@nmdk_clkevt = internal global %struct.clock_event_device { ptr null, ptr @nmdk_clkevt_next, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 35, i32 0, ptr @nmdk_clkevt_set_periodic, ptr @nmdk_clkevt_set_oneshot, ptr null, ptr @nmdk_clkevt_shutdown, ptr null, ptr null, ptr null, ptr @nmdk_clkevt_resume, i32 0, i32 0, ptr @.str.10, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, align 64
@.str.9 = private unnamed_addr constant [28 x i8] c"\013%s: request_irq() failed\0A\00", align 1
@mtu_delay_timer = internal global %struct.delay_timer zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"mtu_1\00", align 1
@clkevt_periodic = internal unnamed_addr global i1 false, align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_nomadik_mtu], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nmdk_timer_of_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %25

6:                                                ; preds = %1
  %7 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  %11 = ptrtoint ptr %7 to i32
  br label %25

12:                                               ; preds = %6
  %13 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  %17 = ptrtoint ptr %13 to i32
  br label %25

18:                                               ; preds = %12
  %19 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #5
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %25

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @nmdk_timer_init(ptr noundef nonnull %2, i32 noundef %19, ptr noundef %7, ptr noundef %13) #7
  br label %25

25:                                               ; preds = %23, %21, %15, %9, %4
  %26 = phi i32 [ %11, %9 ], [ %17, %15 ], [ -22, %21 ], [ %24, %23 ], [ -6, %4 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @nmdk_timer_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 section ".init.text" {
  store ptr %0, ptr @mtu_base, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call i32 @clk_enable(ptr noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %11

11:                                               ; preds = %10, %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/nomadik-mtu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #5, !srcloc !8
  unreachable

12:                                               ; preds = %7
  %13 = tail call i32 @clk_prepare(ptr noundef %3) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @clk_enable(ptr noundef %3) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %19

19:                                               ; preds = %18, %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/nomadik-mtu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

20:                                               ; preds = %15
  %21 = tail call i32 @clk_get_rate(ptr noundef %3) #5
  %22 = icmp ugt i32 %21, 32000000
  %23 = lshr i32 %21, 4
  %24 = select i1 %22, i32 %23, i32 %21
  store i1 %22, ptr @clk_prescale, align 4
  %25 = add nuw nsw i32 %24, 50
  %26 = udiv i32 %25, 100
  store i32 %26, ptr @nmdk_cycle, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr @mtu_base, align 4
  %28 = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %29 = load i32, ptr @nmdk_cycle, align 4
  %30 = load ptr, ptr @mtu_base, align 4
  %31 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %32 = load i32, ptr @nmdk_cycle, align 4
  %33 = load ptr, ptr @mtu_base, align 4
  %34 = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %35 = load i1, ptr @clk_prescale, align 4
  %36 = select i1 %35, i32 134, i32 130
  %37 = load ptr, ptr @mtu_base, align 4
  %38 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #5, !srcloc !11
  %39 = load ptr, ptr @mtu_base, align 4
  %40 = getelementptr i8, ptr %39, i32 20
  %41 = tail call i32 @clocksource_mmio_init(ptr noundef %40, ptr noundef nonnull @.str.6, i32 noundef %24, i32 noundef 200, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %20
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6) #6
  br label %53

45:                                               ; preds = %20
  tail call void @sched_clock_register(ptr noundef nonnull @nomadik_read_sched_clock, i32 noundef 32, i32 noundef %24) #5
  %46 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @nmdk_timer_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.8, ptr noundef nonnull @nmdk_clkevt) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #6
  br label %50

50:                                               ; preds = %48, %45
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @nmdk_clkevt, i32 0, i32 25), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.clock_event_device, ptr @nmdk_clkevt, i32 0, i32 23), align 4
  %51 = icmp ult i32 %24, 100000
  %52 = select i1 %51, i32 5, i32 2
  tail call void @clockevents_config_and_register(ptr noundef nonnull @nmdk_clkevt, i32 noundef %24, i32 noundef %52, i32 noundef -1) #5
  store ptr @nmdk_timer_read_current_timer, ptr @mtu_delay_timer, align 4
  store i32 %24, ptr getelementptr inbounds (%struct.delay_timer, ptr @mtu_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @mtu_delay_timer) #5
  br label %53

53:                                               ; preds = %50, %43
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @nomadik_read_sched_clock() #3 {
  %1 = load ptr, ptr @mtu_base, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3, !prof !15

3:                                                ; preds = %0
  %4 = getelementptr i8, ptr %1, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %6 = sub i32 0, %5
  %7 = zext i32 %6 to i64
  br label %8

8:                                                ; preds = %3, %0
  %9 = phi i64 [ %7, %3 ], [ 0, %0 ]
  ret i64 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmdk_timer_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @mtu_base, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 2) #5, !srcloc !11
  %5 = load ptr, ptr %1, align 64
  tail call void %5(ptr noundef %1) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmdk_timer_read_current_timer() #3 {
  %1 = load ptr, ptr @mtu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !16
  %4 = xor i32 %3, -1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmdk_clkevt_next(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @mtu_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 2) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %4 = load ptr, ptr @mtu_base, align 4
  %5 = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %0) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %6 = load i1, ptr @clk_prescale, align 4
  %7 = select i1 %6, i32 135, i32 131
  %8 = load ptr, ptr @mtu_base, align 4
  %9 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmdk_clkevt_set_periodic(ptr nocapture noundef readnone %0) #3 {
  store i1 true, ptr @clkevt_periodic, align 1
  tail call fastcc void @nmdk_clkevt_reset()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nmdk_clkevt_set_oneshot(ptr nocapture noundef readnone %0) #4 {
  store i1 false, ptr @clkevt_periodic, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmdk_clkevt_shutdown(ptr nocapture noundef readnone %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %2 = load ptr, ptr @mtu_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @mtu_base, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %5 = load ptr, ptr @mtu_base, align 4
  %6 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmdk_clkevt_resume(ptr nocapture noundef readnone %0) #3 {
  tail call fastcc void @nmdk_clkevt_reset()
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %2 = load ptr, ptr @mtu_base, align 4
  %3 = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %4 = load i32, ptr @nmdk_cycle, align 4
  %5 = load ptr, ptr @mtu_base, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %7 = load i32, ptr @nmdk_cycle, align 4
  %8 = load ptr, ptr @mtu_base, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %10 = load i1, ptr @clk_prescale, align 4
  %11 = select i1 %10, i32 134, i32 130
  %12 = load ptr, ptr @mtu_base, align 4
  %13 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nmdk_clkevt_reset() unnamed_addr #3 {
  %1 = load i1, ptr @clkevt_periodic, align 1
  br i1 %1, label %2, label %14

2:                                                ; preds = %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %3 = load i32, ptr @nmdk_cycle, align 4
  %4 = load ptr, ptr @mtu_base, align 4
  %5 = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %6 = load i32, ptr @nmdk_cycle, align 4
  %7 = load ptr, ptr @mtu_base, align 4
  %8 = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %9 = load i1, ptr @clk_prescale, align 4
  %10 = select i1 %9, i32 198, i32 194
  %11 = load ptr, ptr @mtu_base, align 4
  %12 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %13 = load ptr, ptr @mtu_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 2) #5, !srcloc !11
  br label %23

14:                                               ; preds = %0
  %15 = load i32, ptr @nmdk_cycle, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr @mtu_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 2) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %17 = load ptr, ptr @mtu_base, align 4
  %18 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %19 = load i1, ptr @clk_prescale, align 4
  %20 = select i1 %19, i32 135, i32 131
  %21 = load ptr, ptr @mtu_base, align 4
  %22 = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !11
  br label %23

23:                                               ; preds = %14, %2
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { cold }

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
!8 = !{i64 2151787257, i64 2151787755, i64 2151787294, i64 2151787350, i64 2151787384, i64 2151787408, i64 2151787449, i64 2151787470, i64 2151787498, i64 2151787532}
!9 = !{i64 2151788337, i64 2151788835, i64 2151788374, i64 2151788430, i64 2151788464, i64 2151788488, i64 2151788529, i64 2151788550, i64 2151788578, i64 2151788612}
!10 = !{i64 2151784926}
!11 = !{i64 3055834}
!12 = !{i64 2151785316}
!13 = !{i64 2151785724}
!14 = !{i64 2151786158}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 3056252}
!17 = !{i64 2151776415}
!18 = !{i64 2151786573}
!19 = !{i64 2151776877}
!20 = !{i64 2151777246}
!21 = !{i64 2151777678}
!22 = !{i64 2151779719}
!23 = !{i64 2151780076}
!24 = !{i64 2151784527}
!25 = !{i64 2151778132}
!26 = !{i64 2151778540}
!27 = !{i64 2151778986}
!28 = !{i64 2151779388}
