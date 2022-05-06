; ModuleID = '/llk/IR/drivers/clocksource/dw_apb_timer.c_pt.bc'
source_filename = "../drivers/clocksource/dw_apb_timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dw_apb_clock_event_device = type { %struct.clock_event_device, %struct.dw_apb_timer, ptr, [48 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dw_apb_timer = type { ptr, i32, i32 }
%struct.dw_apb_clocksource = type { %struct.dw_apb_timer, %struct.clocksource }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str = private unnamed_addr constant [31 x i8] c"\013failed to request timer irq\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\016Spurious APBT timer interrupt %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_apb_clockevent_pause(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 8
  tail call void @disable_irq(i32 noundef %4) #4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %8 = or i32 %7, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dw_apb_clockevent_init(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 256) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %8, i32 0, i32 1
  store ptr %3, ptr %11, align 64
  %12 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %8, i32 0, i32 1, i32 2
  store i32 %4, ptr %12, align 8
  %13 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %8, i32 0, i32 1, i32 1
  store i32 %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 6
  %15 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 7
  tail call void @clocks_calc_mult_shift(ptr noundef %14, ptr noundef %15, i32 noundef 1000000000, i32 noundef %5, i32 noundef 4) #4
  %16 = tail call i64 @clockevent_delta2ns(i32 noundef 2147483647, ptr noundef nonnull %8) #4
  %17 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 4
  store i64 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 20
  store i32 2147483647, ptr %18, align 32
  %19 = tail call i64 @clockevent_delta2ns(i32 noundef 5000, ptr noundef nonnull %8) #4
  %20 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 5
  store i64 %19, ptr %20, align 32
  %21 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 19
  store i32 5000, ptr %21, align 4
  %22 = icmp slt i32 %0, 0
  %23 = and i32 %0, 31
  %24 = add nuw nsw i32 %23, 1
  %25 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %24
  %26 = lshr i32 %0, 5
  %27 = sub nsw i32 0, %26
  %28 = getelementptr i32, ptr %25, i32 %27
  %29 = select i1 %22, ptr @__cpu_possible_mask, ptr %28
  %30 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 25
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 9
  store i32 35, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 14
  store ptr @apbt_shutdown, ptr %32, align 8
  %33 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 11
  store ptr @apbt_set_periodic, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 12
  store ptr @apbt_set_oneshot, ptr %34, align 64
  %35 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 13
  store ptr @apbt_shutdown, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 15
  store ptr @apbt_resume, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 1
  store ptr @apbt_next_event, ptr %37, align 4
  %38 = load i32, ptr %12, align 8
  %39 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 22
  store i32 %2, ptr %40, align 8
  %41 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 21
  store ptr %1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %8, i32 0, i32 2
  store ptr @apbt_eoi, ptr %42, align 4
  %43 = tail call i32 @request_threaded_irq(i32 noundef %4, ptr noundef nonnull @dw_apb_clockevent_irq, ptr noundef null, i32 noundef 88576, ptr noundef %1, ptr noundef nonnull %8) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %10
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  tail call void @kfree(ptr noundef nonnull %8) #4
  br label %47

47:                                               ; preds = %45, %10, %6
  %48 = phi ptr [ null, %6 ], [ null, %45 ], [ %8, %10 ]
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clockevent_delta2ns(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apbt_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %6 = and i32 %5, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apbt_set_periodic(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %0, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 99
  %6 = udiv i32 %5, 100
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %10 = or i32 %9, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #4, !srcloc !11
  %13 = and i32 %10, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !11
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %6) #4, !srcloc !11
  %18 = or i32 %9, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apbt_set_oneshot(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %6 = and i32 %5, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1) #4, !srcloc !11
  %12 = and i32 %5, -8
  %13 = or i32 %12, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apbt_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = and i32 %5, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apbt_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !8
  %7 = and i32 %6, -2
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !11
  %10 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %0) #4, !srcloc !11
  %11 = or i32 %6, 1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @apbt_eoi(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_apb_clockevent_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0) #6
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %1, i32 0, i32 1
  tail call void %9(ptr noundef %12) #4
  %13 = load ptr, ptr %1, align 64
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %3, %7 ]
  tail call void %15(ptr noundef %1) #4
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ 1, %14 ], [ 0, %5 ]
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_apb_clockevent_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %0, i32 0, i32 1, i32 2
  %3 = load i32, ptr %2, align 8
  tail call void @enable_irq(i32 noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_apb_clockevent_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %0, i32 0, i32 1, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_apb_clockevent_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #4, !srcloc !11
  tail call void @clockevents_register_device(ptr noundef %0) #4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %11 = and i32 %7, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #4, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_apb_clocksource_start(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %5 = and i32 %4, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #4, !srcloc !11
  %9 = and i32 %4, -8
  %10 = or i32 %9, 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #4, !srcloc !11
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @dw_apb_clocksource_read(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %5 = xor i32 %4, -1
  %6 = zext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @dw_apb_clocksource_init(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 120) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  store ptr %2, ptr %6, align 8
  %9 = getelementptr inbounds %struct.dw_apb_timer, ptr %6, i32 0, i32 1
  store i32 %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dw_apb_clocksource, ptr %6, i32 0, i32 1
  %11 = getelementptr inbounds %struct.dw_apb_clocksource, ptr %6, i32 0, i32 1, i32 8
  store ptr %1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.dw_apb_clocksource, ptr %6, i32 0, i32 1, i32 10
  store i32 %0, ptr %12, align 4
  store ptr @__apbt_read_clocksource, ptr %10, align 8
  %13 = getelementptr inbounds %struct.dw_apb_clocksource, ptr %6, i32 0, i32 1, i32 1
  store i64 4294967295, ptr %13, align 8
  %14 = getelementptr inbounds %struct.dw_apb_clocksource, ptr %6, i32 0, i32 1, i32 13
  store i32 1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.dw_apb_clocksource, ptr %6, i32 0, i32 1, i32 17
  store ptr @apbt_restart_clocksource, ptr %15, align 8
  br label %16

16:                                               ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__apbt_read_clocksource(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  %6 = xor i32 %5, -1
  %7 = zext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @apbt_restart_clocksource(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %6 = and i32 %5, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -1) #4, !srcloc !11
  %10 = and i32 %5, -8
  %11 = or i32 %10, 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #4, !srcloc !11
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_apb_clocksource_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dw_apb_clocksource, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dw_apb_timer, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @__clocksource_register_scale(ptr noundef %2, i32 noundef 1, i32 noundef %4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }
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
!8 = !{i64 2809166}
!9 = !{i64 2151272313}
!10 = !{i64 2151272668}
!11 = !{i64 2808748}
