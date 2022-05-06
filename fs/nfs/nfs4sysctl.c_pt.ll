; ModuleID = '/llk/IR/fs/nfs/nfs4sysctl.c_pt.bc'
source_filename = "../fs/nfs/nfs4sysctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@nfs4_cb_sysctl_root = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr null, i32 0, i16 365, ptr @nfs4_cb_sysctl_dir, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@nfs4_callback_sysctl_table = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@nfs4_cb_sysctl_dir = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr null, i32 0, i16 365, ptr @nfs4_cb_sysctls, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@nfs4_cb_sysctls = internal global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr @nfs_callback_set_tcpport, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @nfs_set_port_min, ptr @nfs_set_port_max }, %struct.ctl_table { ptr @.str.3, ptr @nfs_idmap_cache_timeout, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"nfs_callback_tcpport\00", align 1
@nfs_callback_set_tcpport = external dso_local global i32, align 4
@nfs_set_port_min = internal constant i32 0, align 4
@nfs_set_port_max = internal constant i32 65535, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"idmap_cache_timeout\00", align 1
@nfs_idmap_cache_timeout = external dso_local global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_register_sysctl() local_unnamed_addr #0 {
  %1 = tail call ptr @register_sysctl_table(ptr noundef nonnull @nfs4_cb_sysctl_root) #2
  store ptr %1, ptr @nfs4_callback_sysctl_table, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_unregister_sysctl() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nfs4_callback_sysctl_table, align 4
  tail call void @unregister_sysctl_table(ptr noundef %1) #2
  store ptr null, ptr @nfs4_callback_sysctl_table, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
