; ModuleID = '/llk/IR/drivers/clocksource/renesas-ostm.c_pt.bc'
source_filename = "../drivers/clocksource/renesas-ostm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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

@__of_table_ostm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ostm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ostm_init }, section "__timer_of_table", align 4
@system_clock = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [30 x i8] c"\016%pOF: used for clocksource\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\016%pOF: used for clock events\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_ostm], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ostm_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 320) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__of_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %39

10:                                               ; preds = %5
  %11 = tail call i32 @reset_control_deassert(ptr noundef %6) #6
  store i32 3, ptr %3, align 64
  %12 = load ptr, ptr @system_clock, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  store i32 7, ptr %3, align 64
  %15 = getelementptr inbounds %struct.timer_of, ptr %3, i32 0, i32 5, i32 4
  store i32 86528, ptr %15, align 4
  %16 = getelementptr inbounds %struct.timer_of, ptr %3, i32 0, i32 5, i32 5
  store ptr @ostm_timer_interrupt, ptr %16, align 8
  br label %17

17:                                               ; preds = %14, %10
  %18 = tail call i32 @timer_of_init(ptr noundef %0, ptr noundef nonnull %3) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load ptr, ptr @system_clock, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @ostm_init_clksrc(ptr noundef nonnull %3) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.timer_of, ptr %3, i32 0, i32 4
  %28 = load ptr, ptr %27, align 64
  %29 = getelementptr i8, ptr %28, i32 4
  store ptr %29, ptr @system_clock, align 4
  %30 = getelementptr inbounds %struct.timer_of, ptr %3, i32 0, i32 6, i32 3
  %31 = load i32, ptr %30, align 8
  tail call void @sched_clock_register(ptr noundef nonnull @ostm_read_sched_clock, i32 noundef 32, i32 noundef %31) #6
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #7
  br label %41

33:                                               ; preds = %20
  tail call fastcc void @ostm_init_clkevt(ptr noundef nonnull %3) #8
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #7
  br label %41

35:                                               ; preds = %23
  tail call void @timer_of_cleanup(ptr noundef nonnull %3) #7
  br label %36

36:                                               ; preds = %35, %17
  %37 = phi i32 [ %18, %17 ], [ %24, %35 ]
  %38 = tail call i32 @reset_control_assert(ptr noundef %6) #6
  tail call void @reset_control_put(ptr noundef %6) #6
  br label %39

39:                                               ; preds = %36, %8
  %40 = phi i32 [ %9, %8 ], [ %37, %36 ]
  tail call void @kfree(ptr noundef nonnull %3) #6
  br label %41

41:                                               ; preds = %39, %33, %26, %1
  %42 = phi i32 [ %40, %39 ], [ -12, %1 ], [ 0, %33 ], [ 0, %26 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ostm_timer_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 192
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %7, align 64
  %15 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 1) #6, !srcloc !11
  br label %16

16:                                               ; preds = %16, %13
  %17 = load ptr, ptr %7, align 64
  %18 = getelementptr i8, ptr %17, i32 16
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %6, %2
  %23 = load ptr, ptr %1, align 64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void %23(ptr noundef %1) #6
  br label %26

26:                                               ; preds = %25, %22
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ostm_init_clksrc(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  tail call fastcc void @ostm_timer_stop(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %2 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %4 = load ptr, ptr %2, align 64
  %5 = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 2) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %6 = load ptr, ptr %2, align 64
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 1) #6, !srcloc !11
  %8 = load ptr, ptr %2, align 64
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 6, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @clocksource_mmio_init(ptr noundef %9, ptr noundef %13, i32 noundef %15, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #6
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ostm_init_clkevt(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 9
  store i32 3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 14
  store ptr @ostm_shutdown, ptr %4, align 8
  %5 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 11
  store ptr @ostm_set_periodic, ptr %5, align 4
  %6 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 12
  store ptr @ostm_set_oneshot, ptr %6, align 64
  %7 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 1
  store ptr @ostm_clock_event_next, ptr %7, align 4
  %8 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 7
  store i32 32, ptr %8, align 4
  %9 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 22
  store i32 300, ptr %9, align 8
  %10 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 3, i32 25
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %10, align 4
  %11 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 6, i32 3
  %12 = load i32, ptr %11, align 4
  tail call void @clockevents_config_and_register(ptr noundef %2, i32 noundef %12, i32 noundef 15, i32 noundef -1) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @timer_of_cleanup(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ostm_timer_stop(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %9 = load ptr, ptr %2, align 64
  %10 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 1) #6, !srcloc !11
  br label %11

11:                                               ; preds = %11, %8
  %12 = load ptr, ptr %2, align 64
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ostm_read_sched_clock() #2 {
  %1 = load ptr, ptr @system_clock, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ostm_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %9 = load ptr, ptr %2, align 64
  %10 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 1) #6, !srcloc !11
  br label %11

11:                                               ; preds = %11, %8
  %12 = load ptr, ptr %2, align 64
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ostm_set_periodic(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 16
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 192
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %7, align 64
  %15 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 1) #6, !srcloc !11
  br label %16

16:                                               ; preds = %16, %13
  %17 = load ptr, ptr %7, align 64
  %18 = getelementptr i8, ptr %17, i32 16
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %6, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %23 = getelementptr i8, ptr %0, i32 244
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  %26 = getelementptr i8, ptr %0, i32 192
  %27 = load ptr, ptr %26, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %28 = load ptr, ptr %26, align 64
  %29 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 0) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %30 = load ptr, ptr %26, align 64
  %31 = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 1) #6, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ostm_set_oneshot(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %9 = load ptr, ptr %2, align 64
  %10 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 1) #6, !srcloc !11
  br label %11

11:                                               ; preds = %11, %8
  %12 = load ptr, ptr %2, align 64
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ostm_clock_event_next(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %10 = load ptr, ptr %3, align 64
  %11 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 1) #6, !srcloc !11
  br label %12

12:                                               ; preds = %12, %9
  %13 = load ptr, ptr %3, align 64
  %14 = getelementptr i8, ptr %13, i32 16
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %12

18:                                               ; preds = %12, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %19 = load ptr, ptr %3, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %0) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %20 = load ptr, ptr %3, align 64
  %21 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 2) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %3, align 64
  %23 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 1) #6, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

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
!8 = !{i64 2829257}
!9 = !{i64 2151727789}
!10 = !{i64 2151727999}
!11 = !{i64 2828862}
!12 = !{i64 2151728288}
!13 = !{i64 2151728682}
!14 = !{i64 2829059}
!15 = !{i64 2151729020}
!16 = !{i64 2151729289}
!17 = !{i64 2829477}
!18 = !{i64 2151729722}
!19 = !{i64 2151731019}
!20 = !{i64 2151731401}
!21 = !{i64 2151731670}
!22 = !{i64 2151730121}
!23 = !{i64 2151730467}
!24 = !{i64 2151730736}
