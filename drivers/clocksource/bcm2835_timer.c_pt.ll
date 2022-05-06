; ModuleID = '/llk/IR/drivers/clocksource/bcm2835_timer.c_pt.bc'
source_filename = "../drivers/clocksource/bcm2835_timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bcm2835_timer = type { ptr, ptr, i32, [52 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }

@__of_table_bcm2835 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-system-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_timer_init }, section "__timer_of_table", align 4
@.str = private unnamed_addr constant [25 x i8] c"\013Can't remap registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\013Can't read clock-frequency\0A\00", align 1
@system_clock = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"\013Can't parse IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\013Can't set up timer IRQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\016bcm2835: system timer (irq = %d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_bcm2835], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %46

7:                                                ; preds = %1
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %44

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %3, i32 4
  store ptr %13, ptr @system_clock, align 4
  %14 = load i32, ptr %2, align 4
  call void @sched_clock_register(ptr noundef nonnull @bcm2835_sched_read, i32 noundef 32, i32 noundef %14) #6
  %15 = load ptr, ptr %0, align 4
  %16 = load i32, ptr %2, align 4
  %17 = call i32 @clocksource_mmio_init(ptr noundef %13, ptr noundef %15, i32 noundef %16, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #6
  %18 = call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 3) #6
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %44

22:                                               ; preds = %12
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %24 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 256) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  store ptr %3, ptr %24, align 64
  %27 = getelementptr i8, ptr %3, i32 24
  %28 = getelementptr inbounds %struct.bcm2835_timer, ptr %24, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.bcm2835_timer, ptr %24, i32 0, i32 2
  store i32 8, ptr %29, align 8
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.bcm2835_timer, ptr %24, i32 0, i32 4, i32 21
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.bcm2835_timer, ptr %24, i32 0, i32 4, i32 22
  store i32 300, ptr %32, align 8
  %33 = getelementptr inbounds %struct.bcm2835_timer, ptr %24, i32 0, i32 4, i32 9
  store i32 2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.bcm2835_timer, ptr %24, i32 0, i32 4, i32 1
  store ptr @bcm2835_time_set_next_event, ptr %34, align 4
  %35 = getelementptr inbounds %struct.bcm2835_timer, ptr %24, i32 0, i32 4, i32 25
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %35, align 4
  %36 = call i32 @request_threaded_irq(i32 noundef %18, ptr noundef nonnull @bcm2835_time_interrupt, ptr noundef null, i32 noundef 82560, ptr noundef %30, ptr noundef nonnull %24) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %26
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  call void @kfree(ptr noundef nonnull %24) #6
  br label %44

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.bcm2835_timer, ptr %24, i32 0, i32 4
  %42 = load i32, ptr %2, align 4
  call void @clockevents_config_and_register(ptr noundef %41, i32 noundef %42, i32 noundef 15, i32 noundef -1) #6
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %18) #7
  br label %46

44:                                               ; preds = %38, %22, %20, %10
  %45 = phi i32 [ %8, %10 ], [ -22, %20 ], [ %36, %38 ], [ -12, %22 ]
  call void @iounmap(ptr noundef nonnull %3) #6
  br label %46

46:                                               ; preds = %44, %40, %5
  %47 = phi i32 [ %45, %44 ], [ 0, %40 ], [ -6, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @bcm2835_sched_read() #4 {
  %1 = load ptr, ptr @system_clock, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !9
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_time_set_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr @system_clock, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = add i32 %4, %0
  %6 = getelementptr i8, ptr %1, i32 -60
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_time_interrupt(i32 noundef %0, ptr noundef %1) #4 {
  %3 = load ptr, ptr %1, align 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = getelementptr inbounds %struct.bcm2835_timer, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, %4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #6, !srcloc !10
  %11 = getelementptr inbounds %struct.bcm2835_timer, ptr %1, i32 0, i32 4
  %12 = load volatile ptr, ptr %11, align 64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void %12(ptr noundef %11) #6
  br label %15

15:                                               ; preds = %14, %9, %2
  %16 = phi i32 [ 1, %14 ], [ 1, %9 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
!9 = !{i64 2798811}
!10 = !{i64 2798393}
