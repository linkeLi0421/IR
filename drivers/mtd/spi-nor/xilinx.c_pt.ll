; ModuleID = '/llk/IR/drivers/mtd/spi-nor/xilinx.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/xilinx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.70, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.64 }
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
%union.anon.64 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.70 = type { ptr, ptr }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"xilinx\00", align 1
@xilinx_parts = internal constant [5 x %struct.flash_info] [%struct.flash_info { ptr @.str.1, [6 x i8] c"\1F\22\00\00\00\00", i8 3, i32 2112, i16 64, i16 264, i16 3, i8 0, i16 2304, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.2, [6 x i8] c"\1F$\00\00\00\00", i8 3, i32 2112, i16 256, i16 264, i16 3, i8 0, i16 2304, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.3, [6 x i8] c"\1F$\00\00\00\00", i8 3, i32 2112, i16 256, i16 264, i16 3, i8 0, i16 2304, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.4, [6 x i8] c"\1F%\00\00\00\00", i8 3, i32 2112, i16 512, i16 264, i16 3, i8 0, i16 2304, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.5, [6 x i8] c"\1F&\00\00\00\00", i8 3, i32 4224, i16 512, i16 528, i16 3, i8 0, i16 2304, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }], align 8
@xilinx_fixups = internal constant %struct.spi_nor_fixups { ptr null, ptr null, ptr null, ptr @xilinx_late_init }, align 4
@spi_nor_xilinx = dso_local local_unnamed_addr constant %struct.spi_nor_manufacturer { ptr @.str, ptr @xilinx_parts, i32 5, ptr @xilinx_fixups }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"3S50AN\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"3S200AN\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"3S400AN\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"3S700AN\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"3S1400AN\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @xilinx_late_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 14
  store ptr @xilinx_nor_setup, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_nor_setup(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @spi_nor_xread_sr(ptr noundef %0, ptr noundef %4) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 9
  store i8 80, ptr %8, align 1
  %9 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 12
  store i8 -126, ptr %9, align 8
  %10 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 10
  store i8 3, ptr %10, align 2
  %11 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 4
  store i32 %13, ptr %11, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %19 = load ptr, ptr %18, align 4
  br i1 %17, label %35, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %19, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 264
  %24 = select i1 %23, i32 256, i32 512
  store i32 %24, ptr %21, align 4
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 5
  store i32 %24, ptr %25, align 8
  %26 = shl nuw nsw i32 %24, 3
  %27 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.flash_info, ptr %28, i32 0, i32 4
  %30 = load i16, ptr %29, align 8
  %31 = zext i16 %30 to i32
  %32 = mul nuw nsw i32 %26, %31
  %33 = zext i32 %32 to i64
  %34 = load ptr, ptr %18, align 4
  store i64 %33, ptr %34, align 8
  br label %41

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %19, i32 0, i32 13
  store ptr @s3an_convert_addr, ptr %36, align 4
  %37 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.flash_info, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %35, %20
  %42 = phi i32 [ %26, %20 ], [ %40, %35 ]
  %43 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %42, ptr %43, align 8
  br label %44

44:                                               ; preds = %41, %2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_xread_sr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @s3an_convert_addr(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = freeze i32 %6
  %8 = udiv i32 %1, %7
  %9 = mul i32 %8, %7
  %10 = sub i32 %1, %9
  %11 = icmp ugt i32 %6, 512
  %12 = select i1 %11, i32 10, i32 9
  %13 = shl i32 %8, %12
  %14 = or i32 %13, %10
  ret i32 %14
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
