; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_esmt.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_esmt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.11 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@esmt_nand_manuf_ops = dso_local local_unnamed_addr constant %struct.nand_manufacturer_ops { ptr @esmt_nand_decode_id, ptr @esmt_nand_init, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/nand_esmt.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Could not get ECC info\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/mtd/rawnand.h\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", align 1
@switch.table.esmt_nand_decode_id = private unnamed_addr constant [3 x i32] [i32 4, i32 2, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esmt_nand_decode_id(ptr noundef %0) #0 {
  tail call void @nand_decode_ext_id(ptr noundef %0) #3
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 4
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11, !prof !8

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  %10 = load i32, ptr %6, align 8
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %7, %5 ]
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  br label %24

20:                                               ; preds = %14
  %21 = zext i8 %17 to i32
  %22 = getelementptr inbounds [3 x i32], ptr @switch.table.esmt_nand_decode_id, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %19, %11, %1
  %25 = phi i32 [ 0, %19 ], [ 0, %11 ], [ 0, %1 ], [ 512, %20 ]
  %26 = phi i32 [ 0, %19 ], [ 0, %11 ], [ 0, %1 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %27, i8 0, i32 12, i1 false)
  %28 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  store i32 %26, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  store i32 %25, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 5
  store i32 0, ptr %30, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esmt_nand_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  %6 = load i32, ptr %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = or i32 %12, 117440512
  store i32 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_decode_ext_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

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
