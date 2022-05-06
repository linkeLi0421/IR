; ModuleID = '/llk/IR/drivers/clocksource/timer-probe.c_pt.bc'
source_filename = "../drivers/clocksource/timer-probe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@__timer_of_table = external dso_local global [0 x %struct.of_device_id], align 4
@.str = private unnamed_addr constant [35 x i8] c"\013Failed to initialize '%pOF': %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\012%s: no matching timers found\0A\00", align 1
@__func__.timer_probe = private unnamed_addr constant [12 x i8] c"timer_probe\00", align 1
@__timer_of_table_sentinel = internal constant %struct.of_device_id zeroinitializer, section "__timer_of_table_end", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__timer_of_table_sentinel], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @timer_probe() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #4
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @__timer_of_table, ptr noundef nonnull %1) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %17, %0
  %5 = phi ptr [ %19, %17 ], [ %2, %0 ]
  %6 = phi i32 [ %18, %17 ], [ 0, %0 ]
  %7 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %5) #4
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef nonnull %5) #4
  switch i32 %12, label %13 [
    i32 0, label %15
    i32 -517, label %17
  ]

13:                                               ; preds = %8
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %5, i32 noundef %12) #5
  br label %17

15:                                               ; preds = %8
  %16 = add i32 %6, 1
  br label %17

17:                                               ; preds = %15, %13, %8, %4
  %18 = phi i32 [ %6, %13 ], [ %16, %15 ], [ %6, %4 ], [ %6, %8 ]
  %19 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %5, ptr noundef nonnull @__timer_of_table, ptr noundef nonnull %1) #4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %4

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21, %0
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.timer_probe) #5
  br label %25

25:                                               ; preds = %23, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
