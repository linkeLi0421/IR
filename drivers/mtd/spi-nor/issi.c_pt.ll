; ModuleID = '/llk/IR/drivers/mtd/spi-nor/issi.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/issi.c"
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

@.str = private unnamed_addr constant [5 x i8] c"issi\00", align 1
@issi_parts = internal constant [15 x %struct.flash_info] [%struct.flash_info { ptr @.str.1, [6 x i8] c"\7F\9D \00\00\00", i8 3, i32 32768, i16 2, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.2, [6 x i8] c"\9D@\13\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.3, [6 x i8] c"\9D`\15\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.4, [6 x i8] c"\9D`\14\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.5, [6 x i8] c"\9D`\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 10, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.6, [6 x i8] c"\9D`\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 10, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.7, [6 x i8] c"\9D`\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 0, i8 10, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.8, [6 x i8] c"\9D`\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 1, i16 0, i8 0, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @is25lp256_fixups }, %struct.flash_info { ptr @.str.9, [6 x i8] c"\9Dp\16\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.10, [6 x i8] c"\9Dp\17\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.11, [6 x i8] c"\9Dp\18\00\00\00", i8 3, i32 65536, i16 256, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.12, [6 x i8] c"\9Dp\19\00\00\00", i8 3, i32 65536, i16 512, i16 256, i16 0, i8 0, i16 0, i8 26, i8 1, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @is25lp256_fixups }, %struct.flash_info { ptr @.str.13, [6 x i8] zeroinitializer, i8 0, i32 32768, i16 2, i16 256, i16 0, i8 0, i16 0, i8 4, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.14, [6 x i8] zeroinitializer, i8 0, i32 32768, i16 4, i16 256, i16 0, i8 0, i16 0, i8 4, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.15, [6 x i8] c"\7F\9DF\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 0, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }], align 8
@issi_fixups = internal constant %struct.spi_nor_fixups { ptr @issi_default_init, ptr null, ptr null, ptr null }, align 4
@spi_nor_issi = dso_local local_unnamed_addr constant %struct.spi_nor_manufacturer { ptr @.str, ptr @issi_parts, i32 15, ptr @issi_fixups }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"is25cd512\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"is25lq040b\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"is25lp016d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"is25lp080d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"is25lp032\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"is25lp064\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"is25lp128\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"is25lp256\00", align 1
@is25lp256_fixups = internal constant %struct.spi_nor_fixups { ptr null, ptr @is25lp256_post_bfpt_fixups, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"is25wp032\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"is25wp064\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"is25wp128\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"is25wp256\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"pm25lv512\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"pm25lv010\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"pm25lq032\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @is25lp256_post_bfpt_fixups(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 393216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  store i8 4, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @issi_default_init(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 11
  store ptr @spi_nor_sr1_bit6_quad_enable, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_sr1_bit6_quad_enable(ptr noundef) #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

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
