; ModuleID = '/llk/IR/fs/sysfs/dir.c_pt.bc'
source_filename = "../fs/sysfs/dir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_create_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_create_mount_point\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_create_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_remove_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_remove_mount_point\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_remove_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.1, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.1 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }

@sysfs_symlink_target_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@.str = private unnamed_addr constant [51 x i8] c"\014sysfs: cannot create duplicate filename '%s/%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fs/sysfs/dir.c\00", align 1
@sysfs_root_kn = external dso_local local_unnamed_addr global ptr, align 4
@sysfs_remove_dir.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sysfs_create_mount_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_create_mount_point = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_create_mount_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_create_mount_point to i32), ptr @__kstrtab_sysfs_create_mount_point, ptr @__kstrtabns_sysfs_create_mount_point }, section "___ksymtab_gpl+sysfs_create_mount_point", align 4
@__kstrtab_sysfs_remove_mount_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_remove_mount_point = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_remove_mount_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_remove_mount_point to i32), ptr @__kstrtab_sysfs_remove_mount_point, ptr @__kstrtabns_sysfs_remove_mount_point }, section "___ksymtab_gpl+sysfs_remove_mount_point", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_sysfs_create_mount_point, ptr @__ksymtab_sysfs_remove_mount_point], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_warn_dup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4096) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @kernfs_path_from_node(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, i32 noundef 4096) #6
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %4, ptr noundef %1) #7
  tail call void @dump_stack() #7
  tail call void @kfree(ptr noundef %4) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_dir_ns(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.kuid_t, align 4
  %4 = alloca %struct.kgid_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 46, i32 noundef 9, ptr noundef null) #6
  br label %37

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.kobject, ptr %9, i32 0, i32 5
  %12 = select i1 %10, ptr @sysfs_root_kn, ptr %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %7
  call void @kobject_get_ownership(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %16 = load ptr, ptr %0, align 4
  %17 = load i32, ptr %3, align 4
  %18 = insertvalue [1 x i32] poison, i32 %17, 0
  %19 = load i32, ptr %4, align 4
  %20 = insertvalue [1 x i32] poison, i32 %19, 0
  %21 = call ptr @kernfs_create_dir_ns(ptr noundef nonnull %13, ptr noundef %16, i16 noundef zeroext 493, [1 x i32] %18, [1 x i32] %20, ptr noundef nonnull %0, ptr noundef %1) #6
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = ptrtoint ptr %21 to i32
  %25 = icmp eq ptr %21, inttoptr (i32 -17 to ptr)
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load ptr, ptr %0, align 4
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %29 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 4096) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @kernfs_path_from_node(ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %29, i32 noundef 4096) #6
  br label %33

33:                                               ; preds = %31, %26
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %29, ptr noundef %27) #7
  call void @dump_stack() #7
  call void @kfree(ptr noundef %29) #6
  br label %37

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  store ptr %21, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %33, %23, %7, %6
  %38 = phi i32 [ -22, %6 ], [ 0, %35 ], [ -2, %7 ], [ -17, %33 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_get_ownership(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_create_dir_ns(ptr noundef, ptr noundef, i16 noundef zeroext, [1 x i32], [1 x i32], ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_remove_dir(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysfs_symlink_target_lock) #6
  store ptr null, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %4 = load i16, ptr @sysfs_symlink_target_lock, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr @sysfs_symlink_target_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %6 = icmp eq ptr %3, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 10
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 15
  %11 = icmp ne i16 %10, 1
  %12 = load i1, ptr @sysfs_remove_dir.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %7
  store i1 true, ptr @sysfs_remove_dir.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef 9, ptr noundef null) #6
  br label %16

16:                                               ; preds = %15, %7
  tail call void @kernfs_remove(ptr noundef nonnull %3) #6
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_rename_dir_ns(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @kernfs_get_parent(ptr noundef %5) #6
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @kernfs_rename_ns(ptr noundef %7, ptr noundef %6, ptr noundef %1, ptr noundef %2) #6
  tail call void @kernfs_put(ptr noundef %6) #6
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_rename_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_move_dir_ns(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %3
  %12 = load ptr, ptr @sysfs_root_kn, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @kernfs_rename_ns(ptr noundef %5, ptr noundef %14, ptr noundef %16, ptr noundef %2) #6
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_mount_point(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @kernfs_create_empty_dir(ptr noundef %4, ptr noundef %1) #6
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i32
  %9 = icmp eq ptr %5, inttoptr (i32 -17 to ptr)
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4096) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @kernfs_path_from_node(ptr noundef %4, ptr noundef null, ptr noundef nonnull %12, i32 noundef 4096) #6
  br label %16

16:                                               ; preds = %14, %10
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %12, ptr noundef %1) #7
  tail call void @dump_stack() #7
  tail call void @kfree(ptr noundef %12) #6
  br label %18

18:                                               ; preds = %16, %7, %2
  %19 = phi i32 [ 0, %2 ], [ -17, %16 ], [ %8, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_create_empty_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_remove_mount_point(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @kernfs_remove_by_name_ns(ptr noundef %4, ptr noundef %1, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_remove_by_name_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148998241}
!11 = !{i64 2148994065}
!12 = !{i64 2148994140, i64 2148994167, i64 2148994214, i64 2148994236, i64 2148994264, i64 2148994284}
!13 = !{i64 2149021244}
