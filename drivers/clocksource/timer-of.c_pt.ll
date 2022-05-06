; ModuleID = '/llk/IR/drivers/clocksource/timer-of.c_pt.bc'
source_filename = "../drivers/clocksource/timer-of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@.str = private unnamed_addr constant [24 x i8] c"\013Failed to iomap (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\013Failed to get clock for %pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\013Failed for enable clock for %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013Failed to get clock rate for %pOF\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\013Failed to get interrupt %s for %pOF\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\013Failed to map interrupt for %pOF\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\013Failed to request irq %d for %pOF\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @timer_of_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = load i32, ptr %1, align 64
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.timer_of, ptr %1, i32 0, i32 4
  %8 = tail call fastcc i32 @timer_of_base_init(ptr noundef %0, ptr noundef %7) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %63

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 64
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %3, %2 ], [ %11, %10 ]
  %14 = phi i32 [ -22, %2 ], [ 0, %10 ]
  %15 = phi i32 [ 0, %2 ], [ 1, %10 ]
  %16 = and i32 %13, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.timer_of, ptr %1, i32 0, i32 6
  %20 = tail call fastcc i32 @timer_of_clk_init(ptr noundef %0, ptr noundef %19) #3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = or i32 %15, 2
  %24 = load i32, ptr %1, align 64
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %24, %22 ], [ %13, %12 ]
  %27 = phi i32 [ 0, %22 ], [ %14, %12 ]
  %28 = phi i32 [ %23, %22 ], [ %15, %12 ]
  %29 = and i32 %26, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.timer_of, ptr %1, i32 0, i32 5
  %33 = tail call fastcc i32 @timer_of_irq_init(ptr noundef %0, ptr noundef %32) #3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31, %25
  %36 = phi i32 [ %27, %25 ], [ 0, %31 ]
  %37 = getelementptr inbounds %struct.timer_of, ptr %1, i32 0, i32 3, i32 21
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  store ptr %42, ptr %37, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = getelementptr inbounds %struct.timer_of, ptr %1, i32 0, i32 1
  store ptr %0, ptr %44, align 4
  br label %63

45:                                               ; preds = %31, %18
  %46 = phi i32 [ %20, %18 ], [ %33, %31 ]
  %47 = phi i32 [ %15, %18 ], [ %28, %31 ]
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.timer_of, ptr %1, i32 0, i32 5
  tail call fastcc void @timer_of_irq_exit(ptr noundef %51) #3
  br label %52

52:                                               ; preds = %50, %45
  %53 = and i32 %47, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.timer_of, ptr %1, i32 0, i32 6
  tail call fastcc void @timer_of_clk_exit(ptr noundef %56) #3
  br label %57

57:                                               ; preds = %55, %52
  %58 = and i32 %47, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.timer_of, ptr %1, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  tail call void @iounmap(ptr noundef %62) #4
  br label %63

63:                                               ; preds = %60, %57, %43, %6
  %64 = phi i32 [ %36, %43 ], [ %46, %60 ], [ %46, %57 ], [ %8, %6 ]
  ret i32 %64
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @timer_of_base_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.of_timer_base, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.of_timer_base, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  br i1 %5, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %4) #4
  br label %12

10:                                               ; preds = %2
  %11 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef %7) #4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  store ptr %13, ptr %1, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %16) #5
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i32 [ %19, %15 ], [ 0, %12 ]
  ret i32 %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @timer_of_clk_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.of_timer_clk, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull %4) #4
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.of_timer_clk, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef %10) #4
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi ptr [ %7, %6 ], [ %11, %8 ]
  store ptr %13, ptr %1, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = icmp eq ptr %13, inttoptr (i32 -517 to ptr)
  br i1 %16, label %42, label %17

17:                                               ; preds = %15
  %18 = ptrtoint ptr %13 to i32
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #5
  br label %42

20:                                               ; preds = %12
  %21 = tail call i32 @clk_prepare(ptr noundef %13) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = tail call i32 @clk_enable(ptr noundef %13) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %13) #4
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32 [ %24, %26 ], [ %21, %20 ]
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #5
  br label %44

30:                                               ; preds = %23
  %31 = load ptr, ptr %1, align 4
  %32 = tail call i32 @clk_get_rate(ptr noundef %31) #4
  %33 = getelementptr inbounds %struct.of_timer_clk, ptr %1, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #5
  %37 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %37) #4
  tail call void @clk_unprepare(ptr noundef %37) #4
  br label %44

38:                                               ; preds = %30
  %39 = add i32 %32, 99
  %40 = udiv i32 %39, 100
  %41 = getelementptr inbounds %struct.of_timer_clk, ptr %1, i32 0, i32 4
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %44, %38, %17, %15
  %43 = phi i32 [ %18, %17 ], [ -517, %15 ], [ %45, %44 ], [ 0, %38 ]
  ret i32 %43

44:                                               ; preds = %35, %27
  %45 = phi i32 [ %28, %27 ], [ -22, %35 ]
  %46 = load ptr, ptr %1, align 4
  tail call void @clk_put(ptr noundef %46) #4
  br label %42
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @timer_of_irq_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr i8, ptr %1, i32 -204
  %4 = getelementptr inbounds %struct.of_timer_irq, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @of_irq_get_byname(ptr noundef %0, ptr noundef nonnull %5) #4
  store i32 %8, ptr %1, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %11, ptr noundef %0) #5
  br label %48

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.of_timer_irq, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef %15) #4
  store i32 %16, ptr %1, align 4
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %8, %7 ], [ %16, %13 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #5
  br label %48

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.of_timer_irq, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.of_timer_irq, ptr %1, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  br i1 %25, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @__request_percpu_irq(i32 noundef %18, ptr noundef %27, i32 noundef 0, ptr noundef %30, ptr noundef %3) #4
  br label %40

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.of_timer_irq, ptr %1, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 82432, i32 %34
  %37 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef %27, ptr noundef null, i32 noundef %36, ptr noundef %38, ptr noundef %3) #4
  br label %40

40:                                               ; preds = %32, %28
  %41 = phi i32 [ %31, %28 ], [ %39, %32 ]
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr %1, align 4
  br i1 %42, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %43, ptr noundef %0) #5
  br label %48

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %1, i32 -96
  store i32 %43, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %44, %20, %10
  %49 = phi i32 [ %8, %10 ], [ %41, %44 ], [ 0, %46 ], [ -22, %20 ]
  ret i32 %49
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @timer_of_irq_exit(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr i8, ptr %0, i32 -204
  %3 = getelementptr inbounds %struct.of_timer_irq, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %0, align 4
  br i1 %5, label %8, label %7

7:                                                ; preds = %1
  tail call void @free_percpu_irq(i32 noundef %6, ptr noundef %2) #4
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %2) #4
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @timer_of_clk_exit(ptr nocapture noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.of_timer_clk, ptr %0, i32 0, i32 3
  store i32 0, ptr %2, align 4
  %3 = load ptr, ptr %0, align 4
  tail call void @clk_disable(ptr noundef %3) #4
  tail call void @clk_unprepare(ptr noundef %3) #4
  %4 = load ptr, ptr %0, align 4
  tail call void @clk_put(ptr noundef %4) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @timer_of_cleanup(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 5
  tail call fastcc void @timer_of_irq_exit(ptr noundef %6) #3
  %7 = load i32, ptr %0, align 64
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ %2, %1 ]
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 6
  tail call fastcc void @timer_of_clk_exit(ptr noundef %13) #3
  %14 = load i32, ptr %0, align 64
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ %14, %12 ], [ %9, %8 ]
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.timer_of, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  tail call void @iounmap(ptr noundef %21) #4
  br label %22

22:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
