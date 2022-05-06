; ModuleID = '/llk/IR/security/keys/sysctl.c_pt.bc'
source_filename = "../security/keys/sysctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"maxkeys\00", align 1
@key_quota_maxkeys = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"maxbytes\00", align 1
@key_quota_maxbytes = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"root_maxkeys\00", align 1
@key_quota_root_maxkeys = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"root_maxbytes\00", align 1
@key_quota_root_maxbytes = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"gc_delay\00", align 1
@key_gc_delay = external dso_local global i32, align 4
@key_sysctls = dso_local local_unnamed_addr global [6 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr @key_quota_maxkeys, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.1, ptr @key_quota_maxbytes, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.2, ptr @key_quota_root_maxkeys, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.3, ptr @key_quota_root_maxbytes, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.4, ptr @key_gc_delay, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table zeroinitializer], align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

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
