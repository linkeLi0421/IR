; ModuleID = '/llk/IR/drivers/base/init.c_pt.bc'
source_filename = "../drivers/base/init.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @driver_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @devtmpfs_init() #2
  %2 = tail call i32 @devices_init() #2
  %3 = tail call i32 @buses_init() #2
  %4 = tail call i32 @classes_init() #2
  %5 = tail call i32 @firmware_init() #2
  tail call void @of_core_init() #2
  %6 = tail call i32 @platform_bus_init() #2
  tail call void @cpu_dev_init() #2
  tail call void @container_dev_init() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devtmpfs_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devices_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @buses_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @classes_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_core_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_bus_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_dev_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @container_dev_init() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
