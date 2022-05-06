; ModuleID = '/llk/IR/kernel/ksysfs.c_pt.bc'
source_filename = "../kernel/ksysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_kobj\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }

@kernel_kobj = dso_local global ptr null, align 4
@__kstrtab_kernel_kobj = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_kobj = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_kobj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_kobj to i32), ptr @__kstrtab_kernel_kobj, ptr @__kstrtabns_kernel_kobj }, section "___ksymtab_gpl+kernel_kobj", align 4
@__initcall__kmod_ksysfs__227_269_ksysfs_init1 = internal global ptr @ksysfs_init, section ".initcall1.init", align 4
@rcu_expedited = dso_local global i32 0, align 4
@rcu_normal = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@kernel_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @kernel_attrs, ptr null }, align 4
@__stop_notes = extern_weak dso_local constant i8, align 1
@__start_notes = extern_weak dso_local constant i8, align 1
@notes_attr = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.13, i16 292 }, i32 0, ptr null, ptr null, ptr @notes_read, ptr null, ptr null }, section ".data..ro_after_init", align 4
@kernel_attrs = internal global [9 x ptr] [ptr @fscaps_attr, ptr @uevent_seqnum_attr, ptr @kexec_loaded_attr, ptr @kexec_crash_loaded_attr, ptr @kexec_crash_size_attr, ptr @vmcoreinfo_attr, ptr @rcu_expedited_attr, ptr @rcu_normal_attr, ptr null], align 4
@fscaps_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @fscaps_show, ptr null }, align 4
@uevent_seqnum_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @uevent_seqnum_show, ptr null }, align 4
@kexec_loaded_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @kexec_loaded_show, ptr null }, align 4
@kexec_crash_loaded_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @kexec_crash_loaded_show, ptr null }, align 4
@kexec_crash_size_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @kexec_crash_size_show, ptr @kexec_crash_size_store }, align 4
@vmcoreinfo_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @vmcoreinfo_show, ptr null }, align 4
@rcu_expedited_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @rcu_expedited_show, ptr @rcu_expedited_store }, align 4
@rcu_normal_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @rcu_normal_show, ptr @rcu_normal_store }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"fscaps\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@file_caps_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"uevent_seqnum\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@uevent_seqnum = external dso_local local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"kexec_loaded\00", align 1
@kexec_image = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"kexec_crash_loaded\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"kexec_crash_size\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"vmcoreinfo\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%pa %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"rcu_expedited\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"rcu_normal\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"notes\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_ksysfs__227_269_ksysfs_init1, ptr @__ksymtab_kernel_kobj], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ksysfs_init() #0 section ".init.text" {
  %1 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str, ptr noundef null) #8
  store ptr %1, ptr @kernel_kobj, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @sysfs_create_group(ptr noundef nonnull %1, ptr noundef nonnull @kernel_attr_group) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  br i1 icmp sgt (i32 sub (i32 ptrtoint (ptr @__stop_notes to i32), i32 ptrtoint (ptr @__start_notes to i32)), i32 0), label %7, label %16

7:                                                ; preds = %6
  store i32 sub (i32 ptrtoint (ptr @__stop_notes to i32), i32 ptrtoint (ptr @__start_notes to i32)), ptr getelementptr inbounds (%struct.bin_attribute, ptr @notes_attr, i32 0, i32 1), align 4
  %8 = load ptr, ptr @kernel_kobj, align 4
  %9 = tail call i32 @sysfs_create_bin_file(ptr noundef %8, ptr noundef nonnull @notes_attr) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @kernel_kobj, align 4
  tail call void @sysfs_remove_group(ptr noundef %12, ptr noundef nonnull @kernel_attr_group) #8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %4, %3 ], [ %9, %11 ]
  %15 = load ptr, ptr @kernel_kobj, align 4
  tail call void @kobject_put(ptr noundef %15) #8
  br label %16

16:                                               ; preds = %13, %7, %6, %0
  %17 = phi i32 [ 0, %7 ], [ 0, %6 ], [ %14, %13 ], [ -12, %0 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fscaps_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = load i32, ptr @file_caps_enabled, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uevent_seqnum_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = load i64, ptr @uevent_seqnum, align 8
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.4, i64 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kexec_loaded_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = load ptr, ptr @kexec_image, align 4
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kexec_crash_loaded_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = tail call i32 @kexec_crash_loaded() #8
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kexec_crash_loaded() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kexec_crash_size_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = tail call i32 @crash_get_memory_size() #8
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kexec_crash_size_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #5 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @crash_shrink_memory(i32 noundef %9) #8
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 %10, i32 %3
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ %12, %8 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crash_get_memory_size() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crash_shrink_memory(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vmcoreinfo_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = tail call i32 @paddr_vmcoreinfo_note() #8
  store i32 %5, ptr %4, align 4
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef nonnull %4, i32 noundef 4132)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paddr_vmcoreinfo_note() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcu_expedited_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = load volatile i32, ptr @rcu_expedited, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcu_expedited_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #5 {
  %5 = tail call i32 @kstrtoint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @rcu_expedited) #8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 %3, i32 -22
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcu_normal_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = load volatile i32, ptr @rcu_normal, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcu_normal_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #5 {
  %5 = tail call i32 @kstrtoint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @rcu_normal) #8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 %3, i32 -22
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @notes_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef returned %5) #6 {
  %7 = trunc i64 %4 to i32
  %8 = getelementptr i8, ptr @__start_notes, i32 %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %8, i32 %5, i1 false)
  ret i32 %5
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }

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
