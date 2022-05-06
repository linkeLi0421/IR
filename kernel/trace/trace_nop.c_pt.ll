; ModuleID = '/llk/IR/kernel/trace/trace_nop.c_pt.bc'
source_filename = "../kernel/trace/trace_nop.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracer_flags = type { i32, ptr, ptr }
%struct.tracer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.tracer_opt = type { ptr, i32 }

@.str = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@nop_flags = internal global %struct.tracer_flags { i32 0, ptr @nop_opts, ptr null }, align 4
@nop_trace = dso_local local_unnamed_addr global %struct.tracer { ptr @.str, ptr @nop_trace_init, ptr @nop_trace_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nop_set_flag, ptr null, ptr null, ptr @nop_flags, i32 0, i8 0, i8 1, i8 0 }, section ".data..read_mostly", align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"\017nop_test_accept flag set to %d: we accept. Now cat trace_options to see the result\0A\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"\017nop_test_refuse flag set to %d: we refuse. Now cat trace_options to see the result\0A\00", align 1
@nop_opts = internal global [3 x %struct.tracer_opt] [%struct.tracer_opt { ptr @.str.3, i32 1 }, %struct.tracer_opt { ptr @.str.4, i32 2 }, %struct.tracer_opt zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"test_nop_accept\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"test_nop_refuse\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nop_trace_init(ptr noundef %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @nop_trace_reset(ptr nocapture noundef %0) #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nop_set_flag(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  switch i32 %2, label %10 [
    i32 1, label %6
    i32 2, label %5
  ]

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi ptr [ @.str.2, %5 ], [ @.str.1, %4 ]
  %8 = phi i32 [ -22, %5 ], [ 0, %4 ]
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %7, i32 noundef %3) #4
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ 0, %4 ], [ %8, %6 ]
  ret i32 %11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }

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
