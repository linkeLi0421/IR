; ModuleID = '/llk/IR/arch/arm/kernel/time.c_pt.bc'
source_filename = "../arch/arm/kernel/time.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_profile_pc:\09\09\09\09\09"
module asm "\09.asciz \09\22profile_pc\22\09\09\09\09\09"
module asm "__kstrtabns_profile_pc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stackframe = type { i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_profile_pc = external dso_local constant [0 x i8], align 1
@__kstrtabns_profile_pc = external dso_local constant [0 x i8], align 1
@__ksymtab_profile_pc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @profile_pc to i32), ptr @__kstrtab_profile_pc, ptr @__kstrtabns_profile_pc }, section "___ksymtab+profile_pc", align 4
@__read_persistent_clock = internal unnamed_addr global ptr @dummy_clock_access, align 4
@machine_desc = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_profile_pc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @profile_pc(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.stackframe, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  %3 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @in_lock_functions(i32 noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4
  br label %29

9:                                                ; preds = %1
  %10 = getelementptr [18 x i32], ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  %12 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stackframe, ptr %2, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr [18 x i32], ptr %0, i32 0, i32 14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stackframe, ptr %2, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %3, align 4
  %19 = getelementptr inbounds %struct.stackframe, ptr %2, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %23, %9
  %21 = call i32 @unwind_frame(ptr noundef nonnull %2) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %19, align 4
  %25 = call i32 @in_lock_functions(i32 noundef %24) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %20

27:                                               ; preds = %23
  %28 = load i32, ptr %19, align 4
  br label %29

29:                                               ; preds = %27, %20, %7
  %30 = phi i32 [ %28, %27 ], [ %8, %7 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_lock_functions(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unwind_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @read_persistent_clock64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @__read_persistent_clock, align 4
  tail call void %2(ptr noundef %0) #6
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local i32 @register_persistent_clock(ptr noundef %0) local_unnamed_addr #3 section ".init.text" {
  %2 = load ptr, ptr @__read_persistent_clock, align 4
  %3 = icmp eq ptr %2, @dummy_clock_access
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  store ptr %0, ptr @__read_persistent_clock, align 4
  br label %7

7:                                                ; preds = %6, %4, %1
  %8 = phi i32 [ 0, %6 ], [ 0, %4 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dummy_clock_access(ptr nocapture noundef writeonly %0) #4 {
  store i64 0, ptr %0, align 8
  %2 = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @time_init() local_unnamed_addr #5 section ".init.text" {
  %1 = load ptr, ptr @machine_desc, align 4
  %2 = getelementptr inbounds %struct.machine_desc, ptr %1, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void %3() #6
  br label %7

6:                                                ; preds = %0
  tail call void @of_clk_init(ptr noundef null) #6
  tail call void @timer_probe() #6
  tail call void @tick_setup_hrtimer_broadcast() #6
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_setup_hrtimer_broadcast() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }

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
