; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_samsung.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_samsung.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.11 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@samsung_nand_manuf_ops = dso_local local_unnamed_addr constant %struct.nand_manufacturer_ops { ptr @samsung_nand_decode_id, ptr @samsung_nand_init, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [36 x i8] c"drivers/mtd/nand/raw/nand_samsung.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid OOB size value\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Could not decode ECC info\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/mtd/rawnand.h\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", align 1
@switch.table.samsung_nand_decode_id = private unnamed_addr constant [3 x i32] [i32 24, i32 40, i32 60], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_nand_decode_id(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %73

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11, !prof !8

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  %10 = load i32, ptr %2, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ %7, %6 ]
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %73, label %14

14:                                               ; preds = %11
  %15 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %73, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 3
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 2048, %22
  %24 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  store i32 %23, ptr %25, align 4
  %26 = lshr i8 %20, 2
  %27 = zext i8 %26 to i32
  %28 = lshr i32 %27, 2
  %29 = and i32 %28, 4
  %30 = and i32 %27, 3
  %31 = or i32 %29, %30
  switch i32 %31, label %44 [
    i32 1, label %32
    i32 2, label %34
    i32 3, label %36
    i32 4, label %38
    i32 5, label %40
    i32 6, label %42
  ]

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 128, ptr %33, align 4
  br label %48

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 218, ptr %35, align 4
  br label %48

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 400, ptr %37, align 4
  br label %48

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 436, ptr %39, align 4
  br label %48

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 512, ptr %41, align 4
  br label %48

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 640, ptr %43, align 4
  br label %48

44:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  %45 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %24, align 4
  br label %48

48:                                               ; preds = %44, %42, %40, %38, %36, %34, %32
  %49 = phi i32 [ %47, %44 ], [ %23, %42 ], [ %23, %40 ], [ %23, %38 ], [ %23, %36 ], [ %23, %34 ], [ %23, %32 ]
  %50 = phi i32 [ %46, %44 ], [ 640, %42 ], [ 512, %40 ], [ 436, %38 ], [ 400, %36 ], [ 218, %34 ], [ 128, %32 ]
  %51 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  store i32 %50, ptr %51, align 4
  %52 = lshr i32 %27, 3
  %53 = and i32 %52, 4
  %54 = and i32 %28, 3
  %55 = or i32 %53, %54
  %56 = udiv i32 %55, %49
  %57 = shl i32 131072, %56
  %58 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  store i32 %57, ptr %58, align 4
  %59 = shl i32 131072, %55
  %60 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %59, ptr %60, align 8
  %61 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %62 = load i8, ptr %61, align 4
  %63 = lshr i8 %62, 4
  %64 = and i8 %63, 7
  %65 = zext i8 %64 to i32
  %66 = icmp ult i8 %64, 5
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = shl nuw nsw i32 1, %65
  br label %100

69:                                               ; preds = %48
  %70 = add nsw i32 %65, -5
  %71 = icmp ult i32 %70, 3
  br i1 %71, label %97, label %72

72:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.2) #3
  br label %100

73:                                               ; preds = %14, %11, %1
  tail call void @nand_decode_ext_id(ptr noundef %0) #3
  %74 = load i32, ptr %2, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78, !prof !8

76:                                               ; preds = %73
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  %77 = load i32, ptr %2, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %77, %76 ], [ %74, %73 ]
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 1
  %83 = load i8, ptr %82, align 1
  switch i8 %83, label %100 [
    i8 -36, label %84
    i8 -15, label %85
  ]

84:                                               ; preds = %81
  br label %100

85:                                               ; preds = %81
  %86 = load i32, ptr %3, align 8
  %87 = icmp sgt i32 %86, 4
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, 3
  %92 = icmp eq i8 %91, 1
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %95 = load i32, ptr %94, align 8
  %96 = or i32 %95, 512
  store i32 %96, ptr %94, align 8
  br label %100

97:                                               ; preds = %69
  %98 = getelementptr inbounds [3 x i32], ptr @switch.table.samsung_nand_decode_id, i32 0, i32 %70
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %93, %88, %85, %84, %81, %78, %72, %67
  %101 = phi i32 [ 0, %81 ], [ 0, %93 ], [ 0, %88 ], [ 0, %85 ], [ 512, %84 ], [ 0, %78 ], [ 512, %67 ], [ 0, %72 ], [ 1024, %97 ]
  %102 = phi i32 [ 0, %81 ], [ 0, %93 ], [ 0, %88 ], [ 0, %85 ], [ 1, %84 ], [ 0, %78 ], [ %68, %67 ], [ 0, %72 ], [ %99, %97 ]
  %103 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %103, i8 0, i32 12, i1 false)
  %104 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  store i32 %102, ptr %104, align 4
  %105 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  store i32 %101, ptr %105, align 4
  %106 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 5
  store i32 0, ptr %106, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_nand_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 512
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 8
  store i32 %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !8

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  %14 = load i32, ptr %10, align 8
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ %11, %9 ]
  %17 = icmp eq i32 %16, 1
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = select i1 %17, i32 50331648, i32 67108864
  %21 = or i32 %19, %20
  store i32 %21, ptr %18, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_decode_ext_id(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
