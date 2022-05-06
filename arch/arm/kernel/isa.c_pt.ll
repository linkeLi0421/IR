; ModuleID = '/llk/IR/arch/arm/kernel/isa.c_pt.bc'
source_filename = "../arch/arm/kernel/isa.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@isa_membase = internal global i32 0, align 4
@isa_portbase = internal global i32 0, align 4
@isa_portshift = internal global i32 0, align 4
@ctl_bus = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr null, i32 0, i16 365, ptr @ctl_isa, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@isa_sysctl_header = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@ctl_isa = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr null, i32 0, i16 365, ptr @ctl_isa_vars, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@ctl_isa_vars = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr @isa_membase, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr @isa_portbase, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr @isa_portshift, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"membase\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"portbase\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"portshift\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @register_isa_ports(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  store i32 %0, ptr @isa_membase, align 4
  store i32 %1, ptr @isa_portbase, align 4
  store i32 %2, ptr @isa_portshift, align 4
  %4 = tail call ptr @register_sysctl_table(ptr noundef nonnull @ctl_bus) #2
  store ptr %4, ptr @isa_sysctl_header, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
