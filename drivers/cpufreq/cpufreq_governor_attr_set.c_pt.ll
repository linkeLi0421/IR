; ModuleID = '/llk/IR/drivers/cpufreq/cpufreq_governor_attr_set.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq_governor_attr_set.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_governor_sysfs_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22governor_sysfs_ops\22\09\09\09\09\09"
module asm "__kstrtabns_governor_sysfs_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gov_attr_set_init:\09\09\09\09\09"
module asm "\09.asciz \09\22gov_attr_set_init\22\09\09\09\09\09"
module asm "__kstrtabns_gov_attr_set_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gov_attr_set_get:\09\09\09\09\09"
module asm "\09.asciz \09\22gov_attr_set_get\22\09\09\09\09\09"
module asm "__kstrtabns_gov_attr_set_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gov_attr_set_put:\09\09\09\09\09"
module asm "\09.asciz \09\22gov_attr_set_put\22\09\09\09\09\09"
module asm "__kstrtabns_gov_attr_set_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.sysfs_ops = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.governor_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@governor_sysfs_ops = dso_local constant %struct.sysfs_ops { ptr @governor_show, ptr @governor_store }, align 4
@__kstrtab_governor_sysfs_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_governor_sysfs_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_governor_sysfs_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @governor_sysfs_ops to i32), ptr @__kstrtab_governor_sysfs_ops, ptr @__kstrtabns_governor_sysfs_ops }, section "___ksymtab_gpl+governor_sysfs_ops", align 4
@gov_attr_set_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [23 x i8] c"&attr_set->update_lock\00", align 1
@__kstrtab_gov_attr_set_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_gov_attr_set_init = external dso_local constant [0 x i8], align 1
@__ksymtab_gov_attr_set_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gov_attr_set_init to i32), ptr @__kstrtab_gov_attr_set_init, ptr @__kstrtabns_gov_attr_set_init }, section "___ksymtab_gpl+gov_attr_set_init", align 4
@__kstrtab_gov_attr_set_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_gov_attr_set_get = external dso_local constant [0 x i8], align 1
@__ksymtab_gov_attr_set_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gov_attr_set_get to i32), ptr @__kstrtab_gov_attr_set_get, ptr @__kstrtabns_gov_attr_set_get }, section "___ksymtab_gpl+gov_attr_set_get", align 4
@__kstrtab_gov_attr_set_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_gov_attr_set_put = external dso_local constant [0 x i8], align 1
@__ksymtab_gov_attr_set_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gov_attr_set_put to i32), ptr @__kstrtab_gov_attr_set_put, ptr @__kstrtabns_gov_attr_set_put }, section "___ksymtab_gpl+gov_attr_set_put", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_gov_attr_set_get, ptr @__ksymtab_gov_attr_set_init, ptr @__ksymtab_gov_attr_set_put, ptr @__ksymtab_governor_sysfs_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @governor_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.governor_attr, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, ptr noundef %2) #2
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @governor_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %5) #2
  %6 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.governor_attr, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, ptr noundef %2, i32 noundef %3) #2
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %12, %9 ], [ -16, %4 ]
  tail call void @mutex_unlock(ptr noundef %5) #2
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gov_attr_set_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @gov_attr_set_init.__key) #2
  %6 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 3
  store i32 1, ptr %6, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  store ptr %7, ptr %1, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %3, ptr %9, align 4
  store volatile ptr %1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gov_attr_set_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %3) #2
  %4 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  store ptr %8, ptr %1, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  store volatile ptr %1, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gov_attr_set_put(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %3) #2
  %4 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %8 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %3) #2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @kobject_put(ptr noundef %0) #2
  br label %13

13:                                               ; preds = %12, %2
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

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
