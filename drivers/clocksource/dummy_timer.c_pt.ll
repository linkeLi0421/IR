; ModuleID = '/llk/IR/drivers/clocksource/dummy_timer.c_pt.bc'
source_filename = "../drivers/clocksource/dummy_timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }

@__initcall__kmod_dummy_timer__162_37_dummy_timer_registerearly = internal global ptr @dummy_timer_register, section ".initcallearly.init", align 4
@.str = private unnamed_addr constant [33 x i8] c"clockevents/dummy_timer:starting\00", align 1
@dummy_timer_evt = internal global %struct.clock_event_device zeroinitializer, section ".data..percpu", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"dummy_timer\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_dummy_timer__162_37_dummy_timer_registerearly], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dummy_timer_register() #0 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 141, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef nonnull @dummy_timer_starting_cpu, ptr noundef null, i1 noundef zeroext false) #3
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dummy_timer_starting_cpu(i32 noundef %0) #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @dummy_timer_evt to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 21
  store ptr @.str.1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 9
  store i32 19, ptr %7, align 4
  %8 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 22
  store i32 100, ptr %8, align 8
  %9 = and i32 %0, 31
  %10 = add nuw nsw i32 %9, 1
  %11 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %10
  %12 = lshr i32 %0, 5
  %13 = sub nsw i32 0, %12
  %14 = getelementptr i32, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 25
  store ptr %14, ptr %15, align 4
  tail call void @clockevents_register_device(ptr noundef %5) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
