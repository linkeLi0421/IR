; ModuleID = '/llk/IR/drivers/clocksource/clksrc_st_lpc.c_pt.bc'
source_filename = "../drivers/clocksource/clksrc_st_lpc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@__of_table_ddata = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-lpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_clksrc_of_register }, section "__timer_of_table", align 4
@.str = private unnamed_addr constant [12 x i8] c"st,lpc-mode\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\013clksrc-st-lpc: An LPC mode must be provided\0A\00", align 1
@ddata.0 = internal unnamed_addr global ptr null, align 4
@ddata.1 = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"\013clksrc-st-lpc: Unable to map iomem\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"\016clksrc-st-lpc: clocksource initialised - running @ %luHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\013clksrc-st-lpc: Failed to get LPC clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\013clksrc-st-lpc: Failed to enable LPC clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"\013clksrc-st-lpc: Failed to get LPC clock rate\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"clksrc-st-lpc\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"\013clksrc-st-lpc: Failed to register clocksource\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_ddata], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @st_clksrc_of_register(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %30

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  store ptr %11, ptr @ddata.1, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %30

15:                                               ; preds = %10
  %16 = call fastcc i32 @st_clksrc_setup_clk(ptr noundef %0) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @ddata.1, align 4
  call void @iounmap(ptr noundef %19) #5
  br label %30

20:                                               ; preds = %15
  %21 = call fastcc i32 @st_clksrc_init() #7
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr @ddata.0, align 4
  br i1 %22, label %27, label %24

24:                                               ; preds = %20
  call void @clk_disable(ptr noundef %23) #5
  call void @clk_unprepare(ptr noundef %23) #5
  %25 = load ptr, ptr @ddata.0, align 4
  call void @clk_put(ptr noundef %25) #5
  %26 = load ptr, ptr @ddata.1, align 4
  call void @iounmap(ptr noundef %26) #5
  br label %30

27:                                               ; preds = %20
  %28 = call i32 @clk_get_rate(ptr noundef %23) #5
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %28) #6
  br label %30

30:                                               ; preds = %27, %24, %18, %13, %7, %5
  %31 = phi i32 [ %3, %5 ], [ %16, %18 ], [ %21, %24 ], [ 0, %27 ], [ -6, %13 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @st_clksrc_setup_clk(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #5
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  %6 = ptrtoint ptr %2 to i32
  br label %22

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef %2) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %14

14:                                               ; preds = %13, %7
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %22

16:                                               ; preds = %10
  %17 = tail call i32 @clk_get_rate(ptr noundef %2) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  tail call void @clk_disable(ptr noundef %2) #5
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %22

21:                                               ; preds = %16
  store ptr %2, ptr @ddata.0, align 4
  br label %22

22:                                               ; preds = %21, %19, %14, %4
  %23 = phi i32 [ %6, %4 ], [ -22, %14 ], [ 0, %21 ], [ -22, %19 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @st_clksrc_init() unnamed_addr #0 section ".init.text" {
  tail call fastcc void @st_clksrc_reset() #7
  %1 = load ptr, ptr @ddata.0, align 4
  %2 = tail call i32 @clk_get_rate(ptr noundef %1) #5
  tail call void @sched_clock_register(ptr noundef nonnull @st_clksrc_sched_clock_read, i32 noundef 32, i32 noundef %2) #5
  %3 = load ptr, ptr @ddata.1, align 4
  %4 = getelementptr i8, ptr %3, i32 1024
  %5 = tail call i32 @clocksource_mmio_init(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  br label %9

9:                                                ; preds = %7, %0
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @st_clksrc_reset() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @ddata.1, align 4
  %2 = getelementptr i8, ptr %1, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #5, !srcloc !9
  %3 = load ptr, ptr @ddata.1, align 4
  %4 = getelementptr i8, ptr %3, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #5, !srcloc !9
  %5 = load ptr, ptr @ddata.1, align 4
  %6 = getelementptr i8, ptr %5, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #5, !srcloc !9
  %7 = load ptr, ptr @ddata.1, align 4
  %8 = getelementptr i8, ptr %7, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #5, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @st_clksrc_sched_clock_read() #4 {
  %1 = load ptr, ptr @ddata.1, align 4
  %2 = getelementptr i8, ptr %1, i32 1024
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !10
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2818779}
!10 = !{i64 2819197}
