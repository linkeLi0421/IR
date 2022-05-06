; ModuleID = '/llk/IR/drivers/clocksource/timer-keystone.c_pt.bc'
source_filename = "../drivers/clocksource/timer-keystone.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.keystone_timer = type { ptr, i32, [56 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }

@__of_table_keystone_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keystone_timer_init }, section "__timer_of_table", align 4
@timer = internal global %struct.keystone_timer zeroinitializer, align 64
@.str = private unnamed_addr constant [32 x i8] c"\013%s: failed to map interrupts\0A\00", align 1
@__func__.keystone_timer_init = private unnamed_addr constant [20 x i8] c"keystone_timer_init\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\013%s: failed to map registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\013%s: failed to get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\013%s: failed to enable clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"timer-keystone\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"\013%s: failed to setup irq\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"\016keystone timer clock @%lu Hz\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_keystone_timer], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @keystone_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.keystone_timer_init) #5
  br label %50

6:                                                ; preds = %1
  %7 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  store ptr %7, ptr @timer, align 64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.keystone_timer_init) #5
  br label %50

11:                                               ; preds = %6
  %12 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.keystone_timer_init) #5
  %16 = load ptr, ptr @timer, align 64
  tail call void @iounmap(ptr noundef %16) #4
  %17 = ptrtoint ptr %12 to i32
  br label %50

18:                                               ; preds = %11
  %19 = tail call i32 @clk_prepare(ptr noundef %12) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = tail call i32 @clk_enable(ptr noundef %12) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %12) #4
  br label %45

25:                                               ; preds = %21
  %26 = tail call i32 @clk_get_rate(ptr noundef %12) #4
  %27 = load ptr, ptr @timer, align 64
  %28 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #4, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr @timer, align 64
  %30 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #4, !srcloc !8
  %31 = load ptr, ptr @timer, align 64
  %32 = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 3) #4, !srcloc !8
  %33 = load ptr, ptr @timer, align 64
  %34 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #4, !srcloc !8
  %35 = load ptr, ptr @timer, align 64
  %36 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #4, !srcloc !8
  %37 = add i32 %26, 99
  %38 = udiv i32 %37, 100
  store i32 %38, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 1), align 4
  %39 = load ptr, ptr @timer, align 64
  %40 = getelementptr i8, ptr %39, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 1) #4, !srcloc !8
  %41 = tail call i32 @request_threaded_irq(i32 noundef %2, ptr noundef nonnull @keystone_timer_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.4, ptr noundef getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3)) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %25
  store i32 3, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3, i32 9), align 4
  store ptr @keystone_set_next_event, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3, i32 1), align 4
  store ptr @keystone_shutdown, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3, i32 14), align 8
  store ptr @keystone_set_periodic, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3, i32 11), align 4
  store ptr @keystone_shutdown, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3, i32 12), align 64
  store ptr @__cpu_possible_mask, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3, i32 25), align 4
  store ptr null, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3, i32 27), align 64
  store ptr @.str.4, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3, i32 21), align 4
  store i32 %2, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3, i32 23), align 4
  tail call void @clockevents_config_and_register(ptr noundef getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 3), i32 noundef %26, i32 noundef 1, i32 noundef -1) #4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %26) #5
  br label %50

45:                                               ; preds = %25, %24, %18
  %46 = phi ptr [ @.str.3, %18 ], [ @.str.3, %24 ], [ @.str.5, %25 ]
  %47 = phi i32 [ %19, %18 ], [ %22, %24 ], [ %41, %25 ]
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %46, ptr noundef nonnull @__func__.keystone_timer_init) #5
  tail call void @clk_put(ptr noundef %12) #4
  %49 = load ptr, ptr @timer, align 64
  tail call void @iounmap(ptr noundef %49) #4
  br label %50

50:                                               ; preds = %45, %43, %14, %9, %4
  %51 = phi i32 [ %17, %14 ], [ %47, %45 ], [ 0, %43 ], [ -6, %9 ], [ -22, %4 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keystone_timer_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  %3 = load ptr, ptr %1, align 64
  tail call void %3(ptr noundef %1) #4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keystone_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = load ptr, ptr @timer, align 64
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !10
  %6 = and i32 %5, -193
  %7 = or i32 %5, 64
  %8 = load ptr, ptr @timer, align 64
  %9 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr @timer, align 64
  %11 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #4, !srcloc !8
  %12 = load ptr, ptr @timer, align 64
  %13 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #4, !srcloc !8
  %14 = load ptr, ptr @timer, align 64
  %15 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %0) #4, !srcloc !8
  %16 = load ptr, ptr @timer, align 64
  %17 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #4, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %18 = load ptr, ptr @timer, align 64
  %19 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %7) #4, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keystone_shutdown(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @timer, align 64
  %3 = getelementptr i8, ptr %2, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !10
  %5 = and i32 %4, -193
  %6 = load ptr, ptr @timer, align 64
  %7 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #4, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keystone_set_periodic(ptr nocapture noundef readnone %0) #3 {
  %2 = load i32, ptr getelementptr inbounds (%struct.keystone_timer, ptr @timer, i32 0, i32 1), align 4
  %3 = load ptr, ptr @timer, align 64
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !10
  %6 = and i32 %5, -193
  %7 = or i32 %5, 128
  %8 = load ptr, ptr @timer, align 64
  %9 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr @timer, align 64
  %11 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #4, !srcloc !8
  %12 = load ptr, ptr @timer, align 64
  %13 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #4, !srcloc !8
  %14 = load ptr, ptr @timer, align 64
  %15 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %2) #4, !srcloc !8
  %16 = load ptr, ptr @timer, align 64
  %17 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #4, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %18 = load ptr, ptr @timer, align 64
  %19 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %7) #4, !srcloc !8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2828785}
!9 = !{i64 2151337190}
!10 = !{i64 2829203}
