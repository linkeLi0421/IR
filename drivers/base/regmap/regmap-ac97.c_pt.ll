; ModuleID = '/llk/IR/drivers/base/regmap/regmap-ac97.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-ac97.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_ac97_default_volatile:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_ac97_default_volatile\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_ac97_default_volatile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_ac97:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_ac97\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_ac97:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_ac97:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_ac97\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_ac97:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.68, i8, i8, %struct.device, ptr, [2 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { i32, [28 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_regmap_ac97_default_volatile = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_ac97_default_volatile = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_ac97_default_volatile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_ac97_default_volatile to i32), ptr @__kstrtab_regmap_ac97_default_volatile, ptr @__kstrtabns_regmap_ac97_default_volatile }, section "___ksymtab_gpl+regmap_ac97_default_volatile", align 4
@ac97_regmap_bus = internal constant %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_ac97_reg_write, ptr null, ptr null, ptr @regmap_ac97_reg_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, align 4
@__kstrtab___regmap_init_ac97 = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_ac97 = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_ac97 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_ac97 to i32), ptr @__kstrtab___regmap_init_ac97, ptr @__kstrtabns___regmap_init_ac97 }, section "___ksymtab_gpl+__regmap_init_ac97", align 4
@__kstrtab___devm_regmap_init_ac97 = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_ac97 = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_ac97 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_ac97 to i32), ptr @__kstrtab___devm_regmap_init_ac97, ptr @__kstrtabns___devm_regmap_init_ac97 }, section "___ksymtab_gpl+__devm_regmap_init_ac97", align 4
@__UNIQUE_ID_license226 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_license226, ptr @__ksymtab___devm_regmap_init_ac97, ptr @__ksymtab___regmap_init_ac97, ptr @__ksymtab_regmap_ac97_default_volatile], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @regmap_ac97_default_volatile(ptr nocapture readnone %0, i32 noundef %1) #0 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 38, label %4
    i32 36, label %4
    i32 40, label %4
    i32 42, label %4
    i32 60, label %4
    i32 62, label %4
    i32 84, label %4
    i32 86, label %4
    i32 124, label %4
    i32 126, label %4
    i32 96, label %4
    i32 98, label %4
    i32 100, label %4
    i32 102, label %4
    i32 104, label %4
    i32 106, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_ac97(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.snd_ac97, ptr %0, i32 0, i32 27
  %6 = tail call ptr @__regmap_init(ptr noundef %5, ptr noundef nonnull @ac97_regmap_bus, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_ac97(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.snd_ac97, ptr %0, i32 0, i32 27
  %6 = tail call ptr @__devm_regmap_init(ptr noundef %5, ptr noundef nonnull @ac97_regmap_bus, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_ac97_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.snd_ac97, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = trunc i32 %1 to i16
  %10 = trunc i32 %2 to i16
  tail call void %8(ptr noundef %0, i16 noundef zeroext %9, i16 noundef zeroext %10) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_ac97_reg_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.snd_ac97, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = trunc i32 %1 to i16
  %10 = tail call zeroext i16 %8(ptr noundef %0, i16 noundef zeroext %9) #3
  %11 = zext i16 %10 to i32
  store i32 %11, ptr %2, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
