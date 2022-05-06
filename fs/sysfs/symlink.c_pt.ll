; ModuleID = '/llk/IR/fs/sysfs/symlink.c_pt.bc'
source_filename = "../fs/sysfs/symlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_create_link:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_create_link\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_create_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_create_link_nowarn:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_create_link_nowarn\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_create_link_nowarn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_remove_link:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_remove_link\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_remove_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_rename_link_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_rename_link_ns\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_rename_link_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }

@__kstrtab_sysfs_create_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_create_link = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_create_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_create_link to i32), ptr @__kstrtab_sysfs_create_link, ptr @__kstrtabns_sysfs_create_link }, section "___ksymtab_gpl+sysfs_create_link", align 4
@__kstrtab_sysfs_create_link_nowarn = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_create_link_nowarn = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_create_link_nowarn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_create_link_nowarn to i32), ptr @__kstrtab_sysfs_create_link_nowarn, ptr @__kstrtabns_sysfs_create_link_nowarn }, section "___ksymtab_gpl+sysfs_create_link_nowarn", align 4
@sysfs_symlink_target_lock = external dso_local global %struct.spinlock, align 4
@sysfs_root_kn = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_sysfs_remove_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_remove_link = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_remove_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_remove_link to i32), ptr @__kstrtab_sysfs_remove_link, ptr @__kstrtabns_sysfs_remove_link }, section "___ksymtab_gpl+sysfs_remove_link", align 4
@__kstrtab_sysfs_rename_link_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_rename_link_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_rename_link_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_rename_link_ns to i32), ptr @__kstrtab_sysfs_rename_link_ns, ptr @__kstrtabns_sysfs_rename_link_ns }, section "___ksymtab_gpl+sysfs_rename_link_ns", align 4
@.str = private unnamed_addr constant [19 x i8] c"fs/sysfs/symlink.c\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_sysfs_create_link, ptr @__ksymtab_sysfs_create_link_nowarn, ptr @__ksymtab_sysfs_remove_link, ptr @__ksymtab_sysfs_rename_link_ns], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_link_sd(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @sysfs_do_create_link_sd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysfs_do_create_link_sd(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  %6 = icmp eq ptr %0, null
  %7 = or i1 %6, %5
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 9, ptr noundef null) #2
  br label %28

9:                                                ; preds = %4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysfs_symlink_target_lock) #2
  %10 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  tail call void @kernfs_get(ptr noundef nonnull %11) #2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  %14 = load i16, ptr @sysfs_symlink_target_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @sysfs_symlink_target_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !12
  %16 = tail call ptr @kernfs_create_link(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %11) #2
  tail call void @kernfs_put(ptr noundef nonnull %11) #2
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = icmp ne i32 %3, 0
  %20 = icmp eq ptr %16, inttoptr (i32 -17 to ptr)
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @sysfs_warn_dup(ptr noundef nonnull %0, ptr noundef nonnull %2) #2
  br label %23

23:                                               ; preds = %22, %18
  %24 = ptrtoint ptr %16 to i32
  br label %28

25:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  %26 = load i16, ptr @sysfs_symlink_target_lock, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr @sysfs_symlink_target_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !12
  br label %28

28:                                               ; preds = %25, %23, %13, %8
  %29 = phi i32 [ -22, %8 ], [ %24, %23 ], [ 0, %13 ], [ -2, %25 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_link(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %6 = select i1 %4, ptr @sysfs_root_kn, ptr %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @sysfs_do_create_link_sd(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, i32 noundef 1) #2
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ -14, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_link_nowarn(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %6 = select i1 %4, ptr @sysfs_root_kn, ptr %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @sysfs_do_create_link_sd(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, i32 noundef 0) #2
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ -14, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_delete_link(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysfs_symlink_target_lock) #2
  %4 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 10
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %7, %3
  %18 = phi ptr [ %16, %14 ], [ null, %7 ], [ null, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  %19 = load i16, ptr @sysfs_symlink_target_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @sysfs_symlink_target_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !12
  %21 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @kernfs_remove_by_name_ns(ptr noundef %22, ptr noundef %2, ptr noundef %18) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_remove_by_name_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_remove_link(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %5 = select i1 %3, ptr @sysfs_root_kn, ptr %4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @kernfs_remove_by_name_ns(ptr noundef %6, ptr noundef %1, ptr noundef null) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_rename_link_ns(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %8 = select i1 %6, ptr @sysfs_root_kn, ptr %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi ptr [ %15, %13 ], [ null, %5 ]
  %18 = tail call ptr @kernfs_find_and_get_ns(ptr noundef %9, ptr noundef %2, ptr noundef %17) #2
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 10
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 15
  %24 = icmp eq i16 %23, 4
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 7
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.kernfs_node, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call i32 @kernfs_rename_ns(ptr noundef nonnull %18, ptr noundef %9, ptr noundef %3, ptr noundef %4) #2
  br label %33

33:                                               ; preds = %31, %25, %20, %16
  %34 = phi i32 [ -22, %20 ], [ -22, %25 ], [ %32, %31 ], [ -2, %16 ]
  tail call void @kernfs_put(ptr noundef %18) #2
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_find_and_get_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_rename_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_warn_dup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148999032}
!10 = !{i64 2148994856}
!11 = !{i64 2148994931, i64 2148994958, i64 2148995005, i64 2148995027, i64 2148995055, i64 2148995075}
!12 = !{i64 2149022035}
