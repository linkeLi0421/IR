; ModuleID = '/llk/IR/kernel/printk/sysctl.c_pt.bc'
source_filename = "../kernel/printk/sysctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@printk_sysctls = internal global [8 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr @console_printk, i32 16, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr getelementptr (i8, ptr @printk_ratelimit_state, i64 4), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr getelementptr (i8, ptr @printk_ratelimit_state, i64 8), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.5, ptr @printk_delay_msec, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @ten_thousand }, %struct.ctl_table { ptr @.str.6, ptr @devkmsg_log_str, i32 10, i16 420, ptr null, ptr @devkmsg_sysctl_set_loglvl, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.7, ptr @dmesg_restrict, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax_sysadmin, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.8, ptr @kptr_restrict, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax_sysadmin, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 12) }, %struct.ctl_table zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"printk_sysctls\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"printk\00", align 1
@console_printk = external dso_local global [0 x i32], align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"printk_ratelimit\00", align 1
@printk_ratelimit_state = external dso_local global %struct.ratelimit_state, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"printk_ratelimit_burst\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"printk_delay\00", align 1
@printk_delay_msec = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@ten_thousand = internal constant i32 10000, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"printk_devkmsg\00", align 1
@devkmsg_log_str = external dso_local global [0 x i8], align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"dmesg_restrict\00", align 1
@dmesg_restrict = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"kptr_restrict\00", align 1
@kptr_restrict = external dso_local global i32, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @printk_sysctl_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str, ptr noundef nonnull @printk_sysctls, ptr noundef nonnull @.str.1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devkmsg_sysctl_set_loglvl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_dointvec_minmax_sysadmin(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call zeroext i1 @capable(i32 noundef 21) #3
  br i1 %8, label %9, label %11

9:                                                ; preds = %7, %5
  %10 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %10, %9 ], [ -1, %7 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
