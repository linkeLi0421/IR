; ModuleID = '/llk/IR/fs/nfs/nfs2super.c_pt.bc'
source_filename = "../fs/nfs/nfs2super.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nfs_v2 = internal global %struct.nfs_subversion { ptr null, ptr @nfs_fs_type, ptr @nfs_version2, ptr @nfs_v2_clientops, ptr @nfs_sops, ptr null, %struct.list_head zeroinitializer }, align 4
@__UNIQUE_ID_file448 = internal constant [24 x i8] c"nfsv2.file=fs/nfs/nfsv2\00", section ".modinfo", align 1
@__UNIQUE_ID_license449 = internal constant [18 x i8] c"nfsv2.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_nfsv2__450_31_init_nfs_v26 = internal global ptr @init_nfs_v2, section ".initcall6.init", align 4
@__exitcall_exit_nfs_v2 = internal global ptr @exit_nfs_v2, section ".exitcall.exit", align 4
@nfs_fs_type = external dso_local global %struct.file_system_type, align 4
@nfs_version2 = external dso_local constant %struct.rpc_version, align 4
@nfs_v2_clientops = external dso_local constant %struct.nfs_rpc_ops, align 4
@nfs_sops = external dso_local constant %struct.super_operations, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file448, ptr @__UNIQUE_ID_license449, ptr @__exitcall_exit_nfs_v2, ptr @__initcall__kmod_nfsv2__450_31_init_nfs_v26, ptr @exit_nfs_v2], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_nfs_v2() #0 section ".exit.text" {
  tail call void @unregister_nfs_version(ptr noundef nonnull @nfs_v2) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_nfs_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_nfs_v2() #0 section ".init.text" {
  tail call void @register_nfs_version(ptr noundef nonnull @nfs_v2) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_nfs_version(ptr noundef) local_unnamed_addr #1

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
