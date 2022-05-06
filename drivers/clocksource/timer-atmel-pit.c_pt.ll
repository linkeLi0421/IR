; ModuleID = '/llk/IR/drivers/clocksource/timer-atmel-pit.c_pt.bc'
source_filename = "../drivers/clocksource/timer-atmel-pit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pit_data = type { %struct.clock_event_device, %struct.clocksource, ptr, i32, i32, i32, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_at91sam926x_pit = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-pit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam926x_pit_dt_init }, section "__timer_of_table", align 4
@.str = private unnamed_addr constant [40 x i8] c"\013AT91: PIT: Could not map PIT address\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013AT91: PIT: Unable to get mck clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\013AT91: PIT: Unable to enable mck\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\013AT91: PIT: Unable to get IRQ from DT\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"drivers/clocksource/timer-atmel-pit.c\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pit\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"\013AT91: PIT: Failed to register clocksource\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"at91_tick\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\013AT91: PIT: Unable to setup IRQ\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_at91sam926x_pit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91sam926x_pit_dt_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 320) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %108, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  %7 = getelementptr inbounds %struct.pit_data, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %106

11:                                               ; preds = %5
  %12 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #7
  %13 = getelementptr inbounds %struct.pit_data, ptr %3, i32 0, i32 6
  store ptr %12, ptr %13, align 8
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %17 = load ptr, ptr %13, align 8
  %18 = ptrtoint ptr %17 to i32
  br label %106

19:                                               ; preds = %11
  %20 = tail call i32 @clk_prepare(ptr noundef %12) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = tail call i32 @clk_enable(ptr noundef %12) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %12) #7
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ %23, %25 ], [ %20, %19 ]
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %106

29:                                               ; preds = %22
  %30 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #7
  %31 = getelementptr inbounds %struct.pit_data, ptr %3, i32 0, i32 5
  store i32 %30, ptr %31, align 4
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %106

35:                                               ; preds = %29
  %36 = load ptr, ptr %13, align 8
  %37 = tail call i32 @clk_get_rate(ptr noundef %36) #7
  %38 = lshr i32 %37, 4
  %39 = add nuw nsw i32 %38, 50
  %40 = udiv i32 %39, 100
  %41 = getelementptr inbounds %struct.pit_data, ptr %3, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = add nsw i32 %40, -1
  %43 = icmp ult i32 %42, 1048576
  br i1 %43, label %45, label %44, !prof !8

44:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 211, i32 noundef 9, ptr noundef null) #7
  br label %45

45:                                               ; preds = %44, %35
  %46 = load ptr, ptr %7, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #7, !srcloc !9
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr i8, ptr %47, i32 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !10
  %50 = and i32 %49, 1048575
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %52, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr i8, ptr %53, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #7, !srcloc !10
  %56 = and i32 %55, 1048575
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %52

58:                                               ; preds = %52, %45
  %59 = load ptr, ptr %7, align 8
  %60 = load i32, ptr %41, align 4
  %61 = add i32 %60, -1
  %62 = or i32 %61, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %62) #7, !srcloc !9
  %63 = load i32, ptr %41, align 4
  %64 = icmp eq i32 %63, 0
  %65 = tail call i32 @llvm.ctlz.i32(i32 %63, i1 false) #7, !range !13
  %66 = add nuw nsw i32 %65, 21
  %67 = select i1 %64, i32 53, i32 %66
  %68 = zext i32 %67 to i64
  %69 = lshr i64 -1, %68
  %70 = getelementptr inbounds %struct.pit_data, ptr %3, i32 0, i32 1
  %71 = getelementptr inbounds %struct.pit_data, ptr %3, i32 0, i32 1, i32 1
  store i64 %69, ptr %71, align 8
  %72 = getelementptr inbounds %struct.pit_data, ptr %3, i32 0, i32 1, i32 8
  store ptr @.str.5, ptr %72, align 16
  %73 = getelementptr inbounds %struct.pit_data, ptr %3, i32 0, i32 1, i32 10
  store i32 175, ptr %73, align 4
  store ptr @read_pit_clk, ptr %70, align 64
  %74 = getelementptr inbounds %struct.pit_data, ptr %3, i32 0, i32 1, i32 13
  store i32 1, ptr %74, align 8
  %75 = tail call i32 @__clocksource_register_scale(ptr noundef %70, i32 noundef 1, i32 noundef %38) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %58
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %106

79:                                               ; preds = %58
  %80 = load i32, ptr %31, align 4
  %81 = tail call i32 @request_threaded_irq(i32 noundef %80, ptr noundef nonnull @at91sam926x_pit_interrupt, ptr noundef null, i32 noundef 86656, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  %85 = tail call i32 @clocksource_unregister(ptr noundef %70) #7
  br label %106

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 21
  store ptr @.str.5, ptr %87, align 4
  %88 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 9
  store i32 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 7
  store i32 32, ptr %89, align 4
  %90 = zext i32 %38 to i64
  %91 = shl nuw nsw i64 %90, 32
  %92 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %91, i32 0) #9, !srcloc !14
  %93 = extractvalue { i64, i32 } %92, 0
  %94 = extractvalue { i64, i32 } %92, 1
  %95 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %91, i64 %93, i32 %94) #9, !srcloc !15
  %96 = extractvalue { i64, i32 } %95, 0
  %97 = lshr i64 %96, 29
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 6
  store i32 %98, ptr %99, align 8
  %100 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 22
  store i32 100, ptr %100, align 8
  %101 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 25
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %101, align 4
  %102 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 14
  store ptr @pit_clkevt_shutdown, ptr %102, align 8
  %103 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 11
  store ptr @pit_clkevt_set_periodic, ptr %103, align 4
  %104 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 18
  store ptr @at91sam926x_pit_resume, ptr %104, align 8
  %105 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 17
  store ptr @at91sam926x_pit_suspend, ptr %105, align 4
  tail call void @clockevents_register_device(ptr noundef nonnull %3) #7
  br label %108

106:                                              ; preds = %83, %77, %33, %26, %15, %9
  %107 = phi i32 [ %18, %15 ], [ %27, %26 ], [ %75, %77 ], [ %81, %83 ], [ -22, %33 ], [ -6, %9 ]
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %108

108:                                              ; preds = %106, %86, %1
  %109 = phi i32 [ %107, %106 ], [ 0, %86 ], [ -12, %1 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @read_pit_clk(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !16
  %3 = getelementptr i8, ptr %0, i32 112
  %4 = load i32, ptr %3, align 16
  %5 = getelementptr i8, ptr %0, i32 104
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #7, !srcloc !17
  %9 = lshr i32 %8, 20
  %10 = getelementptr i8, ptr %0, i32 108
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %9
  %13 = and i32 %8, 1048575
  %14 = add i32 %13, %4
  %15 = add i32 %14, %12
  %16 = zext i32 %15 to i64
  ret i64 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91sam926x_pit_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pit_data, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !10
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.pit_data, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !10
  %19 = lshr i32 %18, 20
  %20 = mul i32 %19, %15
  %21 = getelementptr inbounds %struct.pit_data, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 16
  %23 = add i32 %20, %22
  store i32 %23, ptr %21, align 16
  %24 = load ptr, ptr %1, align 64
  tail call void %24(ptr noundef %1) #7
  br label %25

25:                                               ; preds = %13, %6, %2
  %26 = phi i32 [ 1, %13 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pit_clkevt_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.pit_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pit_data, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pit_clkevt_set_periodic(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pit_data, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pit_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !10
  %8 = lshr i32 %7, 20
  %9 = mul i32 %8, %3
  %10 = getelementptr inbounds %struct.pit_data, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 16
  %12 = add i32 %9, %11
  store i32 %12, ptr %10, align 16
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %2, align 4
  %15 = add i32 %14, -1
  %16 = or i32 %15, 50331648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %16) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91sam926x_pit_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.pit_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !9
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !10
  %7 = and i32 %6, 1048575
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !10
  %13 = and i32 %12, 1048575
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.pit_data, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = or i32 %19, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %20) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91sam926x_pit_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.pit_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2830444}
!10 = !{i64 2830862}
!11 = !{i64 2151345292}
!12 = !{i64 2151345134}
!13 = !{i32 0, i32 33}
!14 = !{i64 875622, i64 875649, i64 875671, i64 875699}
!15 = !{i64 876030, i64 876057, i64 876090, i64 876111, i64 876138, i64 876164}
!16 = !{i64 341042, i64 341103}
!17 = !{i64 344059}
