; ModuleID = '/llk/IR/drivers/clocksource/timer-ti-32k.c_pt.bc'
source_filename = "../drivers/clocksource/timer-ti-32k.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ti_32k = type { ptr, ptr, %struct.clocksource }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__of_table_ti_32k_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-counter32k\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_32k_timer_init }, section "__timer_of_table", align 4
@ti_32k_timer = internal global %struct.ti_32k { ptr null, ptr null, %struct.clocksource { ptr @ti_32k_read_cycles, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.4, %struct.list_head zeroinitializer, i32 250, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 8
@.str = private unnamed_addr constant [32 x i8] c"\013Can't ioremap 32k timer base\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ti,am43\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\016OMAP clocksource: 32k_counter at 32768 Hz\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\01332k_counter: can't register clocksource\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"32k_counter\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ti,sysc\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\014%s: could not get clock %s %li\0A\00", align 1
@__func__.ti_32k_timer_enable_clock = private unnamed_addr constant [26 x i8] c"ti_32k_timer_enable_clock\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\014%s: could not enable %s: %i\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_ti_32k_timer], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ti_32k_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  store ptr %2, ptr @ti_32k_timer, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %26

6:                                                ; preds = %1
  %7 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, ptr getelementptr inbounds (%struct.ti_32k, ptr @ti_32k_timer, i32 0, i32 2, i32 13), align 8
  %11 = or i32 %10, 128
  store i32 %11, ptr getelementptr inbounds (%struct.ti_32k, ptr @ti_32k_timer, i32 0, i32 2, i32 13), align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load ptr, ptr @ti_32k_timer, align 8
  store ptr %13, ptr getelementptr inbounds (%struct.ti_32k, ptr @ti_32k_timer, i32 0, i32 1), align 4
  tail call fastcc void @ti_32k_timer_module_init(ptr noundef %0, ptr noundef %13) #7
  %14 = load ptr, ptr @ti_32k_timer, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  %16 = icmp ult i32 %15, 1073741824
  %17 = load ptr, ptr getelementptr inbounds (%struct.ti_32k, ptr @ti_32k_timer, i32 0, i32 1), align 4
  %18 = select i1 %16, i32 16, i32 48
  %19 = getelementptr i8, ptr %17, i32 %18
  store ptr %19, ptr getelementptr inbounds (%struct.ti_32k, ptr @ti_32k_timer, i32 0, i32 1), align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  %21 = tail call i32 @__clocksource_register_scale(ptr noundef getelementptr inbounds (%struct.ti_32k, ptr @ti_32k_timer, i32 0, i32 2), i32 noundef 1, i32 noundef 32768) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %26

25:                                               ; preds = %12
  tail call void @sched_clock_register(ptr noundef nonnull @omap_32k_read_sched_clock, i32 noundef 32, i32 noundef 32768) #5
  br label %26

26:                                               ; preds = %25, %23, %4
  %27 = phi i32 [ %21, %23 ], [ 0, %25 ], [ -6, %4 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ti_32k_timer_module_init(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.5) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %1, i32 4
  tail call fastcc void @ti_32k_timer_enable_clock(ptr noundef %0, ptr noundef nonnull @.str.6) #7
  tail call fastcc void @ti_32k_timer_enable_clock(ptr noundef %0, ptr noundef nonnull @.str.7) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #5, !srcloc !9
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @omap_32k_read_sched_clock() #3 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.ti_32k, ptr @ti_32k_timer, i32 0, i32 1), align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !8
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ti_32k_read_cycles(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ti_32k_timer_enable_clock(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @of_clk_get_by_name(ptr noundef %4, ptr noundef %1) #5
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i32
  %9 = icmp eq ptr %5, inttoptr (i32 -22 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.7, ptr noundef %1, i32 noundef 3)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %10, %7
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ti_32k_timer_enable_clock, ptr noundef %1, i32 noundef %8) #6
  br label %25

15:                                               ; preds = %2
  %16 = tail call i32 @clk_prepare(ptr noundef %5) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = tail call i32 @clk_enable(ptr noundef %5) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ %19, %21 ], [ %16, %15 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.ti_32k_timer_enable_clock, ptr noundef %1, i32 noundef %23) #6
  br label %25

25:                                               ; preds = %22, %18, %13, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2822070}
!9 = !{i64 2821652}
