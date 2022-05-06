; ModuleID = '/llk/IR/fs/autofs/init.c_pt.bc'
source_filename = "../fs/autofs/init.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}

@.str = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@autofs_fs_type = dso_local global %struct.file_system_type { ptr @.str, i32 0, ptr null, ptr null, ptr @autofs_mount, ptr @autofs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__UNIQUE_ID_alias200 = internal constant [24 x i8] c"autofs4.alias=fs-autofs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias201 = internal constant [21 x i8] c"autofs4.alias=autofs\00", section ".modinfo", align 1
@__initcall__kmod_autofs4__202_44_init_autofs_fs6 = internal global ptr @init_autofs_fs, section ".initcall6.init", align 4
@__exitcall_exit_autofs_fs = internal global ptr @exit_autofs_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file203 = internal constant [31 x i8] c"autofs4.file=fs/autofs/autofs4\00", section ".modinfo", align 1
@__UNIQUE_ID_license204 = internal constant [20 x i8] c"autofs4.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias200, ptr @__UNIQUE_ID_alias201, ptr @__UNIQUE_ID_file203, ptr @__UNIQUE_ID_license204, ptr @__exitcall_exit_autofs_fs, ptr @__initcall__kmod_autofs4__202_44_init_autofs_fs6, ptr @exit_autofs_fs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @autofs_mount(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = tail call ptr @mount_nodev(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull @autofs_fill_super) #3
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_kill_sb(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_autofs_fs() #2 section ".exit.text" {
  tail call void @autofs_dev_ioctl_exit() #3
  %1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @autofs_fs_type) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_dev_ioctl_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_autofs_fs() #2 section ".init.text" {
  %1 = tail call i32 @autofs_dev_ioctl_init() #3
  %2 = tail call i32 @register_filesystem(ptr noundef nonnull @autofs_fs_type) #3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @autofs_dev_ioctl_exit() #3
  br label %5

5:                                                ; preds = %4, %0
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_nodev(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_fill_super(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_dev_ioctl_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
