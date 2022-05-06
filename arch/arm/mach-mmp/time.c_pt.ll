; ModuleID = '/llk/IR/arch/arm/mach-mmp/time.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/time.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@ckevt = internal global %struct.clock_event_device { ptr null, ptr @timer_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0, ptr null, ptr @timer_set_shutdown, ptr null, ptr @timer_set_shutdown, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.2, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, align 64
@.str = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013Failed to request irq %d (timer)\0A\00", align 1
@cksrc = internal global %struct.clocksource { ptr @clksrc_read, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.3, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@__of_table_mmp_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp_dt_init_timer }, section "__timer_of_table", align 4
@mmp_timer_base = internal unnamed_addr global ptr inttoptr (i32 -33472512 to ptr), align 4
@mmp_chip_id = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"clockevent\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"clocksource\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_mmp_timer], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mmp_timer_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @timer_config() #4
  tail call void @sched_clock_register(ptr noundef nonnull @mmp_read_sched_clock, i32 noundef 32, i32 noundef %1) #5
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @ckevt, i32 0, i32 25), align 4
  %3 = tail call i32 @request_threaded_irq(i32 noundef %0, ptr noundef nonnull @timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str, ptr noundef nonnull @ckevt) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0) #6
  br label %7

7:                                                ; preds = %5, %2
  %8 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @cksrc, i32 noundef 1, i32 noundef %1) #5
  tail call void @clockevents_config_and_register(ptr noundef nonnull @ckevt, i32 noundef %1, i32 noundef 16, i32 noundef -2) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @timer_config() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @mmp_timer_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !8
  %3 = load ptr, ptr @mmp_timer_base, align 4
  %4 = getelementptr i8, ptr %3, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #5, !srcloc !9
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !10
  %6 = and i32 %5, 65280
  %7 = icmp ne i32 %6, 22528
  %8 = load i32, ptr @mmp_chip_id, align 4
  %9 = and i32 %8, 3583
  %10 = icmp ne i32 %9, 1040
  %11 = select i1 %7, i1 true, i1 %10
  %12 = and i32 %8, 65535
  %13 = icmp ne i32 %12, 8488
  %14 = select i1 %7, i1 true, i1 %13
  %15 = select i1 %11, i1 %14, i1 false
  %16 = select i1 %15, i32 15, i32 0
  %17 = and i32 %16, %2
  %18 = load ptr, ptr @mmp_timer_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #5, !srcloc !9
  %19 = load ptr, ptr @mmp_timer_base, align 4
  %20 = getelementptr i8, ptr %19, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 2) #5, !srcloc !9
  %21 = load ptr, ptr @mmp_timer_base, align 4
  %22 = getelementptr i8, ptr %21, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #5, !srcloc !9
  %23 = load ptr, ptr @mmp_timer_base, align 4
  %24 = getelementptr i8, ptr %23, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 7) #5, !srcloc !9
  %25 = load ptr, ptr @mmp_timer_base, align 4
  %26 = getelementptr i8, ptr %25, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #5, !srcloc !9
  %27 = load ptr, ptr @mmp_timer_base, align 4
  %28 = getelementptr i8, ptr %27, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #5, !srcloc !9
  %29 = load ptr, ptr @mmp_timer_base, align 4
  %30 = getelementptr i8, ptr %29, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 7) #5, !srcloc !9
  %31 = load ptr, ptr @mmp_timer_base, align 4
  %32 = getelementptr i8, ptr %31, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #5, !srcloc !9
  %33 = load ptr, ptr @mmp_timer_base, align 4
  %34 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 2) #5, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @mmp_read_sched_clock() #2 {
  %1 = load ptr, ptr @mmp_timer_base, align 4
  %2 = getelementptr i8, ptr %1, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #5, !srcloc !9
  br label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ 100, %0 ], [ %5, %3 ]
  %5 = add nsw i32 %4, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %3

7:                                                ; preds = %3
  %8 = load ptr, ptr @mmp_timer_base, align 4
  %9 = getelementptr i8, ptr %8, i32 168
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  %11 = zext i32 %10 to i64
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timer_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr @mmp_timer_base, align 4
  %4 = getelementptr i8, ptr %3, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #5, !srcloc !9
  %5 = load ptr, ptr @mmp_timer_base, align 4
  %6 = getelementptr i8, ptr %5, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2) #5, !srcloc !9
  %7 = load ptr, ptr %1, align 64
  tail call void %7(ptr noundef %1) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmp_dt_init_timer(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #5
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @clk_prepare(ptr noundef %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = tail call i32 @clk_enable(ptr noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %26

11:                                               ; preds = %7
  %12 = tail call i32 @clk_get_rate(ptr noundef %2) #5
  br label %18

13:                                               ; preds = %1
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !10
  %15 = and i32 %14, -15728896
  %16 = icmp eq i32 %15, 1443846144
  %17 = select i1 %16, i32 6500000, i32 3250000
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi i32 [ %12, %11 ], [ %17, %13 ]
  %20 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  store ptr %23, ptr @mmp_timer_base, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @mmp_timer_init(i32 noundef %20, i32 noundef %19) #4
  br label %26

26:                                               ; preds = %25, %22, %18, %10, %4
  %27 = phi i32 [ 0, %25 ], [ -22, %18 ], [ -12, %22 ], [ %8, %10 ], [ %5, %4 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timer_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !13
  %4 = load ptr, ptr @mmp_timer_base, align 4
  %5 = getelementptr i8, ptr %4, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 2) #5, !srcloc !9
  %6 = load ptr, ptr @mmp_timer_base, align 4
  %7 = getelementptr i8, ptr %6, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #5, !srcloc !9
  %8 = load ptr, ptr @mmp_timer_base, align 4
  %9 = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #5, !srcloc !9
  %10 = add i32 %0, -1
  %11 = load ptr, ptr @mmp_timer_base, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !9
  %13 = load ptr, ptr @mmp_timer_base, align 4
  %14 = getelementptr i8, ptr %13, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 3) #5, !srcloc !9
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #5, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timer_set_shutdown(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !13
  %3 = load ptr, ptr @mmp_timer_base, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #5, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @clksrc_read(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr @mmp_timer_base, align 4
  %3 = getelementptr i8, ptr %2, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1) #5, !srcloc !9
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ 100, %1 ], [ %6, %4 ]
  %6 = add nsw i32 %5, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = load ptr, ptr @mmp_timer_base, align 4
  %10 = getelementptr i8, ptr %9, i32 168
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  %12 = zext i32 %11 to i64
  ret i64 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 3053759}
!9 = !{i64 3053341}
!10 = !{i64 2151359499}
!11 = !{i64 2151363837}
!12 = !{i64 2151363679}
!13 = !{i64 321142, i64 321203}
!14 = !{i64 324159}
