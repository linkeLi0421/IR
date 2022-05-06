; ModuleID = '/llk/IR/drivers/mtd/chips/chipreg.c_pt.bc'
source_filename = "../drivers/mtd/chips/chipreg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_mtd_chip_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22register_mtd_chip_driver\22\09\09\09\09\09"
module asm "__kstrtabns_register_mtd_chip_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_mtd_chip_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_mtd_chip_driver\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_mtd_chip_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_map_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22do_map_probe\22\09\09\09\09\09"
module asm "__kstrtabns_do_map_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_map_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22map_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_map_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }

@chip_drvs_lock = internal global %struct.spinlock zeroinitializer, align 4
@chip_drvs_list = internal global %struct.list_head { ptr @chip_drvs_list, ptr @chip_drvs_list }, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_register_mtd_chip_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_mtd_chip_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_register_mtd_chip_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_mtd_chip_driver to i32), ptr @__kstrtab_register_mtd_chip_driver, ptr @__kstrtabns_register_mtd_chip_driver }, section "___ksymtab+register_mtd_chip_driver", align 4
@__kstrtab_unregister_mtd_chip_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_mtd_chip_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_mtd_chip_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_mtd_chip_driver to i32), ptr @__kstrtab_unregister_mtd_chip_driver, ptr @__kstrtabns_unregister_mtd_chip_driver }, section "___ksymtab+unregister_mtd_chip_driver", align 4
@__kstrtab_do_map_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_map_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_do_map_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_map_probe to i32), ptr @__kstrtab_do_map_probe, ptr @__kstrtabns_do_map_probe }, section "___ksymtab+do_map_probe", align 4
@__kstrtab_map_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_map_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_map_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @map_destroy to i32), ptr @__kstrtab_map_destroy, ptr @__kstrtabns_map_destroy }, section "___ksymtab+map_destroy", align 4
@__UNIQUE_ID_file168 = internal constant [39 x i8] c"chipreg.file=drivers/mtd/chips/chipreg\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [20 x i8] c"chipreg.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author170 = internal constant [53 x i8] c"chipreg.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [80 x i8] c"chipreg.description=Core routines for registering and invoking MTD chip drivers\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file168, ptr @__UNIQUE_ID_license169, ptr @__ksymtab_do_map_probe, ptr @__ksymtab_map_destroy, ptr @__ksymtab_register_mtd_chip_driver, ptr @__ksymtab_unregister_mtd_chip_driver], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @register_mtd_chip_driver(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @chip_drvs_lock) #3
  %2 = getelementptr inbounds %struct.mtd_chip_driver, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr @chip_drvs_list, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  store ptr %3, ptr %2, align 4
  %5 = getelementptr inbounds %struct.mtd_chip_driver, ptr %0, i32 0, i32 4, i32 1
  store ptr @chip_drvs_list, ptr %5, align 4
  store volatile ptr %2, ptr @chip_drvs_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %6 = load i16, ptr @chip_drvs_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @chip_drvs_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_mtd_chip_driver(ptr nocapture noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @chip_drvs_lock) #3
  %2 = getelementptr inbounds %struct.mtd_chip_driver, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.mtd_chip_driver, ptr %0, i32 0, i32 4, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %7 = load i16, ptr @chip_drvs_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @chip_drvs_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @do_map_probe(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @chip_drvs_lock) #3
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @chip_drvs_list, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @chip_drvs_list
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %0) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %5, i32 -16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %5, i32 -8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call zeroext i1 @try_module_get(ptr noundef %17) #3
  %19 = select i1 %18, ptr %13, ptr null
  br label %20

20:                                               ; preds = %15, %12, %3
  %21 = phi ptr [ null, %12 ], [ %19, %15 ], [ null, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %22 = load i16, ptr @chip_drvs_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @chip_drvs_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  %24 = icmp eq ptr %21, null
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %0) #3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  tail call void @_raw_spin_lock(ptr noundef nonnull @chip_drvs_lock) #3
  br label %29

29:                                               ; preds = %33, %28
  %30 = phi ptr [ @chip_drvs_list, %28 ], [ %31, %33 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, @chip_drvs_list
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 -4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @strcmp(ptr noundef %35, ptr noundef %0) #3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %29

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %31, i32 -16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %31, i32 -8
  %43 = load ptr, ptr %42, align 4
  %44 = tail call zeroext i1 @try_module_get(ptr noundef %43) #3
  %45 = select i1 %44, ptr %39, ptr null
  br label %46

46:                                               ; preds = %41, %38, %29
  %47 = phi ptr [ null, %38 ], [ %45, %41 ], [ null, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %48 = load i16, ptr @chip_drvs_lock, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr @chip_drvs_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  %50 = icmp eq ptr %47, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %46, %20
  %52 = phi ptr [ %47, %46 ], [ %21, %20 ]
  %53 = load ptr, ptr %52, align 4
  %54 = tail call ptr %53(ptr noundef %1) #3
  %55 = getelementptr inbounds %struct.mtd_chip_driver, ptr %52, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  tail call void @module_put(ptr noundef %56) #3
  br label %57

57:                                               ; preds = %51, %46, %25
  %58 = phi ptr [ %54, %51 ], [ null, %46 ], [ null, %25 ]
  ret ptr %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @map_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.map_info, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtd_chip_driver, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %0) #3
  %10 = load ptr, ptr %4, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ %5, %1 ]
  %13 = getelementptr inbounds %struct.mtd_chip_driver, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @module_put(ptr noundef %14) #3
  tail call void @kfree(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2148926633}
!9 = !{i64 2148922457}
!10 = !{i64 2148922532, i64 2148922559, i64 2148922606, i64 2148922628, i64 2148922656, i64 2148922676}
!11 = !{i64 2148949636}
