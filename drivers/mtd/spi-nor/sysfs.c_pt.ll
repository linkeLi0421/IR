; ModuleID = '/llk/IR/drivers/mtd/spi-nor/sysfs.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spi_mem = type { ptr, ptr, ptr }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.74, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.68 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.68 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.anon.74 = type { ptr, ptr }
%struct.sfdp = type { i32, ptr }
%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }

@spi_nor_sysfs_group = internal constant %struct.attribute_group { ptr @.str, ptr null, ptr @spi_nor_sysfs_is_bin_visible, ptr @spi_nor_sysfs_entries, ptr @spi_nor_sysfs_bin_entries }, align 4
@spi_nor_sysfs_groups = dso_local local_unnamed_addr global [2 x ptr] [ptr @spi_nor_sysfs_group, ptr null], align 4
@.str = private unnamed_addr constant [8 x i8] c"spi-nor\00", align 1
@spi_nor_sysfs_entries = internal global [4 x ptr] [ptr @dev_attr_manufacturer, ptr @dev_attr_partname, ptr @dev_attr_jedec_id, ptr null], align 4
@spi_nor_sysfs_bin_entries = internal global [2 x ptr] [ptr @bin_attr_sfdp, ptr null], align 4
@bin_attr_sfdp = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.1, i16 292 }, i32 0, ptr null, ptr null, ptr @sfdp_read, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sfdp\00", align 1
@dev_attr_manufacturer = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @manufacturer_show, ptr null }, align 4
@dev_attr_partname = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @partname_show, ptr null }, align 4
@dev_attr_jedec_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @jedec_id_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"partname\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"jedec_id\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%*phN\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @spi_nor_sysfs_is_bin_visible(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, @bin_attr_sfdp
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spi_mem, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.spi_nor, ptr %9, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5, %3
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i16 [ 0, %13 ], [ 292, %5 ]
  ret i16 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sfdp_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = alloca i64, align 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spi_mem, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.spi_nor, ptr %11, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 2
  %16 = getelementptr inbounds %struct.sfdp, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @memory_read_from_buffer(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %7, ptr noundef %17, i32 noundef %15) #3
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @manufacturer_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_mem, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_nor, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %10) #3
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @partname_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_mem, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_nor, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %10) #3
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jedec_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_mem, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_nor, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.flash_info, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.flash_info, ptr %9, i32 0, i32 1
  %14 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %12, ptr noundef %13) #3
  ret i32 %14
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
