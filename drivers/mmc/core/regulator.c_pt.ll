; ModuleID = '/llk/IR/drivers/mmc/core/regulator.c_pt.bc'
source_filename = "../drivers/mmc/core/regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_regulator_set_ocr:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_regulator_set_ocr\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_regulator_set_ocr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_regulator_set_vqmmc:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_regulator_set_vqmmc\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_regulator_set_vqmmc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_regulator_get_supply:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_regulator_get_supply\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_regulator_get_supply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_supply = type { ptr, ptr }

@.str = private unnamed_addr constant [34 x i8] c"could not set regulator OCR (%d)\0A\00", align 1
@__kstrtab_mmc_regulator_set_ocr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_regulator_set_ocr = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_regulator_set_ocr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_regulator_set_ocr to i32), ptr @__kstrtab_mmc_regulator_set_ocr, ptr @__kstrtabns_mmc_regulator_set_ocr }, section "___ksymtab_gpl+mmc_regulator_set_ocr", align 4
@__kstrtab_mmc_regulator_set_vqmmc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_regulator_set_vqmmc = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_regulator_set_vqmmc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_regulator_set_vqmmc to i32), ptr @__kstrtab_mmc_regulator_set_vqmmc, ptr @__kstrtabns_mmc_regulator_set_vqmmc }, section "___ksymtab_gpl+mmc_regulator_set_vqmmc", align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vmmc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"vqmmc\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed getting OCR mask: %d\0A\00", align 1
@__kstrtab_mmc_regulator_get_supply = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_regulator_get_supply = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_regulator_get_supply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_regulator_get_supply to i32), ptr @__kstrtab_mmc_regulator_get_supply, ptr @__kstrtabns_mmc_regulator_get_supply }, section "___ksymtab_gpl+mmc_regulator_get_supply", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_mmc_regulator_get_supply, ptr @__ksymtab_mmc_regulator_set_ocr, ptr @__ksymtab_mmc_regulator_set_vqmmc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_regulator_set_ocr(ptr nocapture noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = icmp eq i16 %2, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = zext i16 %2 to i32
  %7 = add nsw i32 %6, -7
  %8 = icmp eq i32 %7, 0
  %9 = mul i32 %7, 100000
  %10 = add i32 %9, 1900000
  %11 = add i32 %9, 2000000
  %12 = select i1 %8, i32 1650000, i32 %10
  %13 = select i1 %8, i32 1950000, i32 %11
  %14 = tail call i32 @regulator_set_voltage(ptr noundef %1, i32 noundef %12, i32 noundef %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 53
  %18 = load i8, ptr %17, align 8, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = tail call i32 @regulator_enable(ptr noundef %1) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  store i8 1, ptr %17, align 8
  br label %35

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 53
  %26 = load i8, ptr %25, align 8, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @regulator_disable(ptr noundef %1) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i8 0, ptr %25, align 8
  br label %35

32:                                               ; preds = %28, %20, %5
  %33 = phi i32 [ %21, %20 ], [ %14, %5 ], [ %29, %28 ]
  %34 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef %33) #5
  br label %35

35:                                               ; preds = %32, %31, %24, %23, %16
  %36 = phi i32 [ %33, %32 ], [ 0, %16 ], [ 0, %23 ], [ 0, %31 ], [ 0, %24 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_regulator_set_vqmmc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %70, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %70 [
    i8 2, label %9
    i8 1, label %20
    i8 0, label %31
  ]

9:                                                ; preds = %6
  %10 = tail call i32 @regulator_is_supported_voltage(ptr noundef %4, i32 noundef 1100000, i32 noundef 1300000) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %70, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @regulator_get_voltage(ptr noundef %4) #4
  %14 = icmp eq i32 %13, 1200000
  br i1 %14, label %70, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @regulator_set_voltage(ptr noundef %4, i32 noundef 1200000, i32 noundef 1300000) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @regulator_set_voltage(ptr noundef %4, i32 noundef 1100000, i32 noundef 1300000) #4
  br label %70

20:                                               ; preds = %6
  %21 = tail call i32 @regulator_is_supported_voltage(ptr noundef %4, i32 noundef 1700000, i32 noundef 1950000) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %70, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @regulator_get_voltage(ptr noundef %4) #4
  %25 = icmp eq i32 %24, 1800000
  br i1 %25, label %70, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @regulator_set_voltage(ptr noundef %4, i32 noundef 1800000, i32 noundef 1950000) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @regulator_set_voltage(ptr noundef %4, i32 noundef 1700000, i32 noundef 1950000) #4
  br label %70

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 1
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %70, label %35

35:                                               ; preds = %31
  %36 = zext i16 %33 to i32
  %37 = add nsw i32 %36, -7
  %38 = icmp eq i32 %37, 0
  %39 = mul i32 %37, 100000
  %40 = add i32 %39, 1900000
  %41 = select i1 %38, i32 1650000, i32 %40
  %42 = add i32 %41, -300000
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 2700000)
  %44 = add i32 %39, 2200000
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 3600000)
  %46 = select i1 %38, i32 2150000, i32 %45
  %47 = tail call i32 @regulator_is_supported_voltage(ptr noundef %4, i32 noundef %43, i32 noundef %46) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %35
  %50 = tail call i32 @regulator_get_voltage(ptr noundef %4) #4
  %51 = icmp eq i32 %50, %41
  br i1 %51, label %70, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @regulator_set_voltage(ptr noundef %4, i32 noundef %41, i32 noundef %46) #4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @regulator_set_voltage(ptr noundef %4, i32 noundef %43, i32 noundef %46) #4
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %70, label %58

58:                                               ; preds = %55, %35
  %59 = load ptr, ptr %3, align 4
  %60 = tail call i32 @regulator_is_supported_voltage(ptr noundef %59, i32 noundef 2700000, i32 noundef 3600000) #4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @regulator_get_voltage(ptr noundef %59) #4
  %64 = icmp eq i32 %63, %41
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @regulator_set_voltage(ptr noundef %59, i32 noundef %41, i32 noundef 3600000) #4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @regulator_set_voltage(ptr noundef %59, i32 noundef 2700000, i32 noundef 3600000) #4
  br label %70

70:                                               ; preds = %68, %65, %62, %58, %55, %52, %49, %31, %29, %26, %23, %20, %18, %15, %12, %9, %6, %2
  %71 = phi i32 [ -22, %2 ], [ %56, %55 ], [ -22, %6 ], [ -22, %9 ], [ 1, %12 ], [ %19, %18 ], [ 0, %15 ], [ -22, %20 ], [ 1, %23 ], [ %30, %29 ], [ 0, %26 ], [ -22, %31 ], [ -22, %58 ], [ 1, %62 ], [ %69, %68 ], [ 0, %65 ], [ 0, %52 ], [ 1, %49 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_regulator_get_supply(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = tail call ptr @devm_regulator_get_optional(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  store ptr %3, ptr %4, align 4
  %5 = tail call ptr @devm_regulator_get_optional(ptr noundef %2, ptr noundef nonnull @.str.2) #4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  store ptr %5, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = icmp eq ptr %7, inttoptr (i32 -517 to ptr)
  br i1 %10, label %48, label %44

11:                                               ; preds = %1
  %12 = tail call i32 @regulator_count_voltages(ptr noundef %7) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %11
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %25, %14
  %17 = phi i32 [ %27, %25 ], [ 0, %14 ]
  %18 = phi i32 [ %26, %25 ], [ 0, %14 ]
  %19 = tail call i32 @regulator_list_voltage(ptr noundef %7, i32 noundef %17) #4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = udiv i32 %19, 1000
  %23 = tail call i32 @mmc_vddrange_to_ocrmask(i32 noundef %22, i32 noundef %22) #4
  %24 = or i32 %23, %18
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %21 ]
  %27 = add nuw nsw i32 %17, 1
  %28 = icmp eq i32 %27, %12
  br i1 %28, label %29, label %16

29:                                               ; preds = %25
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %29, %14
  %32 = tail call i32 @regulator_get_voltage(ptr noundef %7) #4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = udiv i32 %32, 1000
  %36 = tail call i32 @mmc_vddrange_to_ocrmask(i32 noundef %35, i32 noundef %35) #4
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %26, %29 ], [ %36, %34 ]
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 8
  store i32 %38, ptr %41, align 8
  br label %44

42:                                               ; preds = %37, %31, %11
  %43 = phi i32 [ %38, %37 ], [ %32, %31 ], [ %12, %11 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %43) #5
  br label %44

44:                                               ; preds = %42, %40, %9
  %45 = load ptr, ptr %6, align 4
  %46 = icmp eq ptr %45, inttoptr (i32 -517 to ptr)
  %47 = select i1 %46, i32 -517, i32 0
  br label %48

48:                                               ; preds = %44, %9
  %49 = phi i32 [ -517, %9 ], [ %47, %44 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_count_voltages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_vddrange_to_ocrmask(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
