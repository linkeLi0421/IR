; ModuleID = '/llk/IR/drivers/edac/edac_module.c_pt.bc'
source_filename = "../drivers/edac/edac_module.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_get_sysfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_get_sysfs_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_edac_get_sysfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"POLLED\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"INTERRUPT\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"POLL-INTR\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ALLOC\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"OFFLINE\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@edac_subsys = internal global %struct.bus_type { ptr @.str.6, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_edac_get_sysfs_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_get_sysfs_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_get_sysfs_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_get_sysfs_subsys to i32), ptr @__kstrtab_edac_get_sysfs_subsys, ptr @__kstrtabns_edac_get_sysfs_subsys }, section "___ksymtab_gpl+edac_get_sysfs_subsys", align 4
@__initcall__kmod_edac_core__228_163_edac_init4 = internal global ptr @edac_init, section ".initcall4.init", align 4
@__exitcall_edac_exit = internal global ptr @edac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [38 x i8] c"edac_core.file=drivers/edac/edac_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [22 x i8] c"edac_core.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [63 x i8] c"edac_core.author=Doug Thompson www.softwarebitmaker.com, et al\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [63 x i8] c"edac_core.description=Core library routines for EDAC reporting\00", section ".modinfo", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"edac\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\016EDAC MC: Ver: 3.0.0\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\013EDAC MC: Failure initializing workqueue\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"\013Error registering toplevel EDAC sysfs dir\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_edac_exit, ptr @__initcall__kmod_edac_core__228_163_edac_init4, ptr @__ksymtab_edac_get_sysfs_subsys, ptr @edac_exit], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @edac_op_state_to_string(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %6 [
    i32 513, label %7
    i32 514, label %2
    i32 515, label %3
    i32 256, label %4
    i32 768, label %5
  ]

2:                                                ; preds = %1
  br label %7

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  br label %7

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %5, %4, %3, %2, %1
  %8 = phi ptr [ @.str.1, %2 ], [ @.str.2, %3 ], [ @.str.3, %4 ], [ @.str.4, %5 ], [ @.str.5, %6 ], [ @.str, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @edac_get_sysfs_subsys() #0 {
  ret ptr @edac_subsys
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @edac_exit() #1 section ".exit.text" {
  tail call void @edac_workqueue_teardown() #4
  tail call void @edac_mc_sysfs_exit() #4
  tail call void @bus_unregister(ptr noundef nonnull @edac_subsys) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_workqueue_teardown() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_sysfs_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @edac_init() #1 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #5
  %2 = tail call i32 @subsys_system_register(ptr noundef nonnull @edac_subsys, ptr noundef null) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #5
  br label %16

6:                                                ; preds = %0
  tail call void @edac_pci_clear_parity_errors() #4
  %7 = tail call i32 @edac_mc_sysfs_init() #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = tail call i32 @edac_workqueue_setup() #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #5
  tail call void @edac_mc_sysfs_exit() #4
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi i32 [ %7, %6 ], [ %10, %12 ]
  tail call void @bus_unregister(ptr noundef nonnull @edac_subsys) #4
  br label %16

16:                                               ; preds = %14, %9, %4
  %17 = phi i32 [ %15, %14 ], [ %2, %4 ], [ 0, %9 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_pci_clear_parity_errors() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_sysfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_workqueue_setup() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
