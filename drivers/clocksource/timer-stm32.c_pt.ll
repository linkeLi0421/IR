; ModuleID = '/llk/IR/drivers/clocksource/timer-stm32.c_pt.bc'
source_filename = "../drivers/clocksource/timer-stm32.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.timer_of = type { i32, ptr, [56 x i8], %struct.clock_event_device, %struct.of_timer_base, %struct.of_timer_irq, %struct.of_timer_clk, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.of_timer_base = type { ptr, ptr, i32 }
%struct.of_timer_irq = type { i32, i32, i32, ptr, i32, ptr }
%struct.of_timer_clk = type { ptr, ptr, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__of_table_stm32 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_timer_init }, section "__timer_of_table", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@stm32_timer_cnt = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [36 x i8] c"\016%s: STM32 sched_clock registered\0A\00", align 1
@stm32_timer_delay = internal global %struct.delay_timer zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\016%s: STM32 delay timer registered\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\016%pOF: STM32 clockevent driver initialized (%d bits)\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_stm32], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 320) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  store i32 7, ptr %3, align 64
  %6 = getelementptr inbounds %struct.timer_of, ptr %3, i32 0, i32 5, i32 5
  store ptr @stm32_clock_event_handler, ptr %6, align 8
  %7 = tail call i32 @timer_of_init(ptr noundef %0, ptr noundef nonnull %3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 4) #6
  %12 = getelementptr inbounds %struct.timer_of, ptr %3, i32 0, i32 7
  store ptr %11, ptr %12, align 8
  %13 = icmp eq ptr %11, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @__of_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @reset_control_assert(ptr noundef %15) #8
  %19 = tail call i32 @reset_control_deassert(ptr noundef %15) #8
  br label %20

20:                                               ; preds = %17, %14
  %21 = getelementptr inbounds %struct.timer_of, ptr %3, i32 0, i32 4
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -1) #8, !srcloc !8
  %24 = load ptr, ptr %21, align 64
  %25 = getelementptr i8, ptr %24, i32 44
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !9
  %27 = icmp eq i32 %26, -1
  %28 = select i1 %27, i32 32, i32 16
  %29 = load ptr, ptr %12, align 8
  store i32 %28, ptr %29, align 4
  tail call fastcc void @stm32_timer_set_prescaler(ptr noundef nonnull %3) #9
  %30 = tail call fastcc i32 @stm32_clocksource_init(ptr noundef nonnull %3) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  tail call fastcc void @stm32_clockevent_init(ptr noundef nonnull %3) #9
  br label %37

33:                                               ; preds = %20, %9
  %34 = phi i32 [ %30, %20 ], [ -12, %9 ]
  tail call void @timer_of_cleanup(ptr noundef nonnull %3) #7
  br label %35

35:                                               ; preds = %33, %5
  %36 = phi i32 [ %7, %5 ], [ %34, %33 ]
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %37

37:                                               ; preds = %35, %32, %1
  %38 = phi i32 [ %36, %35 ], [ 0, %32 ], [ -12, %1 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_clock_event_handler(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #8, !srcloc !8
  %6 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 16
  %8 = icmp eq i32 %7, 2
  %9 = load ptr, ptr %3, align 64
  br i1 %8, label %10, label %27

10:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 3) #8, !srcloc !8
  %11 = getelementptr i8, ptr %1, i32 244
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %3, align 64
  %14 = getelementptr i8, ptr %13, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  %16 = add i32 %15, %12
  %17 = load ptr, ptr %3, align 64
  %18 = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !8
  %19 = load ptr, ptr %3, align 64
  %20 = getelementptr i8, ptr %19, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !9
  %22 = sub i32 %16, %21
  %23 = icmp ugt i32 %22, %12
  br i1 %23, label %29, label %24

24:                                               ; preds = %10
  %25 = load ptr, ptr %3, align 64
  %26 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 2) #8, !srcloc !8
  br label %29

27:                                               ; preds = %2
  %28 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #8, !srcloc !8
  br label %29

29:                                               ; preds = %27, %24, %10
  %30 = load ptr, ptr %1, align 64
  tail call void %30(ptr noundef %1) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @stm32_timer_set_prescaler(ptr nocapture noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 6, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 5000
  %10 = udiv i32 %9, 10000
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 65535)
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %11, %6 ], [ 1, %1 ]
  %14 = add nsw i32 %13, -1
  %15 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 64
  %17 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #8, !srcloc !8
  %18 = load ptr, ptr %15, align 64
  %19 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #8, !srcloc !8
  %20 = load ptr, ptr %15, align 64
  %21 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #8, !srcloc !8
  %22 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 6, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %13, 1
  %25 = add i32 %23, %24
  %26 = udiv i32 %25, %13
  store i32 %26, ptr %22, align 4
  %27 = add i32 %26, 99
  %28 = udiv i32 %27, 100
  %29 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 6, i32 4
  store i32 %28, ptr %29, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @stm32_clocksource_init(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne i32 %4, 32
  %10 = load ptr, ptr @stm32_timer_cnt, align 4
  %11 = icmp ne ptr %10, null
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 3) #8, !srcloc !8
  %16 = load ptr, ptr %14, align 64
  %17 = getelementptr i8, ptr %16, i32 36
  store ptr %17, ptr @stm32_timer_cnt, align 4
  %18 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 6, i32 3
  %19 = load i32, ptr %18, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @stm32_read_sched_clock, i32 noundef 32, i32 noundef %19) #8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8) #7
  store ptr @stm32_read_delay, ptr @stm32_timer_delay, align 4
  %21 = load i32, ptr %18, align 4
  store i32 %21, ptr getelementptr inbounds (%struct.delay_timer, ptr @stm32_timer_delay, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @stm32_timer_delay) #8
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %8) #7
  br label %23

23:                                               ; preds = %13, %1
  %24 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 64
  %26 = getelementptr i8, ptr %25, i32 36
  %27 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 6, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %4, 32
  %30 = select i1 %29, i32 250, i32 100
  %31 = tail call i32 @clocksource_mmio_init(ptr noundef %26, ptr noundef %8, i32 noundef %28, i32 noundef %30, i32 noundef %4, ptr noundef nonnull @clocksource_mmio_readl_up) #8
  ret i32 %31
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @stm32_clockevent_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 21
  store ptr %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 9
  store i32 3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 14
  store ptr @stm32_clock_event_shutdown, ptr %12, align 8
  %13 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 11
  store ptr @stm32_clock_event_set_periodic, ptr %13, align 4
  %14 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 12
  store ptr @stm32_clock_event_set_oneshot, ptr %14, align 64
  %15 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 15
  store ptr @stm32_clock_event_shutdown, ptr %15, align 4
  %16 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 1
  store ptr @stm32_clock_event_set_next_event, ptr %16, align 4
  %17 = icmp eq i32 %4, 32
  %18 = select i1 %17, i32 250, i32 100
  %19 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 22
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 6, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = shl nsw i32 -1, %4
  %23 = xor i32 %22, -1
  tail call void @clockevents_config_and_register(ptr noundef %9, i32 noundef %21, i32 noundef 1, i32 noundef %23) #8
  %24 = load ptr, ptr %5, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %24, i32 noundef %4) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @timer_of_cleanup(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_clock_event_set_periodic(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 3) #8, !srcloc !8
  %4 = getelementptr i8, ptr %0, i32 244
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %2, align 64
  %7 = getelementptr i8, ptr %6, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !9
  %9 = add i32 %8, %5
  %10 = load ptr, ptr %2, align 64
  %11 = getelementptr i8, ptr %10, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !8
  %12 = load ptr, ptr %2, align 64
  %13 = getelementptr i8, ptr %12, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !9
  %15 = sub i32 %9, %14
  %16 = icmp ugt i32 %15, %5
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 64
  %19 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 2) #8, !srcloc !8
  br label %20

20:                                               ; preds = %17, %1
  %21 = phi i32 [ 0, %17 ], [ -62, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_clock_event_shutdown(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #8, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_clock_event_set_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  %7 = add i32 %6, %0
  %8 = load ptr, ptr %3, align 64
  %9 = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !8
  %10 = load ptr, ptr %3, align 64
  %11 = getelementptr i8, ptr %10, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !9
  %13 = sub i32 %7, %12
  %14 = icmp ugt i32 %13, %0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 64
  %17 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 2) #8, !srcloc !8
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i32 [ 0, %15 ], [ -62, %2 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @stm32_read_sched_clock() #1 {
  %1 = load ptr, ptr @stm32_timer_cnt, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !9
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_read_delay() #1 {
  %1 = load ptr, ptr @stm32_timer_cnt, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !9
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_clock_event_set_oneshot(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 3) #8, !srcloc !8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }

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
!8 = !{i64 2796355}
!9 = !{i64 2796773}
