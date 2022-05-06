; ModuleID = '/llk/IR/drivers/scsi/scsi_common.c_pt.bc'
source_filename = "../drivers/scsi/scsi_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_command_size_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_command_size_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_command_size_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_type:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_type\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsilun_to_int:\09\09\09\09\09"
module asm "\09.asciz \09\22scsilun_to_int\22\09\09\09\09\09"
module asm "__kstrtabns_scsilun_to_int:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_int_to_scsilun:\09\09\09\09\09"
module asm "\09.asciz \09\22int_to_scsilun\22\09\09\09\09\09"
module asm "__kstrtabns_int_to_scsilun:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_normalize_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_normalize_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_normalize_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_sense_desc_find:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_sense_desc_find\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_sense_desc_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_build_sense_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_build_sense_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_build_sense_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_set_sense_information:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_set_sense_information\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_set_sense_information:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_set_sense_field_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_set_sense_field_pointer\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_set_sense_field_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_file100 = internal constant [42 x i8] c"scsi_common.file=drivers/scsi/scsi_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [27 x i8] c"scsi_common.license=GPL v2\00", section ".modinfo", align 1
@scsi_command_size_tbl = dso_local constant [8 x i8] c"\06\0A\0A\0C\10\0C\0A\0A", align 1
@__kstrtab_scsi_command_size_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_command_size_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_command_size_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_command_size_tbl to i32), ptr @__kstrtab_scsi_command_size_tbl, ptr @__kstrtabns_scsi_command_size_tbl }, section "___ksymtab+scsi_command_size_tbl", align 4
@.str = private unnamed_addr constant [18 x i8] c"Well-known LUN   \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No Device        \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown          \00", align 1
@scsi_device_types = internal unnamed_addr constant [21 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4
@__kstrtab_scsi_device_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_type = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_type to i32), ptr @__kstrtab_scsi_device_type, ptr @__kstrtabns_scsi_device_type }, section "___ksymtab+scsi_device_type", align 4
@__kstrtab_scsilun_to_int = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsilun_to_int = external dso_local constant [0 x i8], align 1
@__ksymtab_scsilun_to_int = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsilun_to_int to i32), ptr @__kstrtab_scsilun_to_int, ptr @__kstrtabns_scsilun_to_int }, section "___ksymtab+scsilun_to_int", align 4
@__kstrtab_int_to_scsilun = external dso_local constant [0 x i8], align 1
@__kstrtabns_int_to_scsilun = external dso_local constant [0 x i8], align 1
@__ksymtab_int_to_scsilun = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @int_to_scsilun to i32), ptr @__kstrtab_int_to_scsilun, ptr @__kstrtabns_int_to_scsilun }, section "___ksymtab+int_to_scsilun", align 4
@__kstrtab_scsi_normalize_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_normalize_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_normalize_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_normalize_sense to i32), ptr @__kstrtab_scsi_normalize_sense, ptr @__kstrtabns_scsi_normalize_sense }, section "___ksymtab+scsi_normalize_sense", align 4
@__kstrtab_scsi_sense_desc_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_sense_desc_find = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_sense_desc_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_sense_desc_find to i32), ptr @__kstrtab_scsi_sense_desc_find, ptr @__kstrtabns_scsi_sense_desc_find }, section "___ksymtab+scsi_sense_desc_find", align 4
@__kstrtab_scsi_build_sense_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_build_sense_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_build_sense_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_build_sense_buffer to i32), ptr @__kstrtab_scsi_build_sense_buffer, ptr @__kstrtabns_scsi_build_sense_buffer }, section "___ksymtab+scsi_build_sense_buffer", align 4
@__kstrtab_scsi_set_sense_information = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_set_sense_information = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_set_sense_information = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_set_sense_information to i32), ptr @__kstrtab_scsi_set_sense_information, ptr @__kstrtabns_scsi_set_sense_information }, section "___ksymtab+scsi_set_sense_information", align 4
@__kstrtab_scsi_set_sense_field_pointer = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_set_sense_field_pointer = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_set_sense_field_pointer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_set_sense_field_pointer to i32), ptr @__kstrtab_scsi_set_sense_field_pointer, ptr @__kstrtabns_scsi_set_sense_field_pointer }, section "___ksymtab+scsi_set_sense_field_pointer", align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Direct-Access    \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Sequential-Access\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Printer          \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Processor        \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"WORM             \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"CD-ROM           \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Scanner          \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Optical Device   \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Medium Changer   \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Communications   \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"ASC IT8          \00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"RAID             \00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Enclosure        \00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Direct-Access-RBC\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Optical card     \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Bridge controller\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Object storage   \00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Automation/Drive \00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Security Manager \00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Direct-Access-ZBC\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab_int_to_scsilun, ptr @__ksymtab_scsi_build_sense_buffer, ptr @__ksymtab_scsi_command_size_tbl, ptr @__ksymtab_scsi_device_type, ptr @__ksymtab_scsi_normalize_sense, ptr @__ksymtab_scsi_sense_desc_find, ptr @__ksymtab_scsi_set_sense_field_pointer, ptr @__ksymtab_scsi_set_sense_information, ptr @__ksymtab_scsilun_to_int], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @scsi_device_type(i32 noundef %0) #0 {
  switch i32 %0, label %3 [
    i32 30, label %8
    i32 31, label %2
  ]

2:                                                ; preds = %1
  br label %8

3:                                                ; preds = %1
  %4 = icmp ugt i32 %0, 20
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr [21 x ptr], ptr @scsi_device_types, i32 0, i32 %0
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3, %2, %1
  %9 = phi ptr [ @.str.1, %2 ], [ %7, %5 ], [ @.str, %1 ], [ @.str.2, %3 ]
  ret ptr %9
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @scsilun_to_int(ptr nocapture noundef readonly %0) #1 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 8
  %5 = getelementptr [8 x i8], ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i64
  %8 = or i64 %4, %7
  %9 = getelementptr [8 x i8], ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 24
  %13 = getelementptr [8 x i8], ptr %0, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = or i64 %12, %8
  %18 = or i64 %17, %16
  %19 = getelementptr [8 x i8], ptr %0, i32 0, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 40
  %23 = getelementptr [8 x i8], ptr %0, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 32
  %27 = or i64 %22, %18
  %28 = or i64 %27, %26
  %29 = getelementptr [8 x i8], ptr %0, i32 0, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i64
  %32 = shl nuw i64 %31, 56
  %33 = getelementptr [8 x i8], ptr %0, i32 0, i32 7
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 48
  %37 = or i64 %32, %28
  %38 = or i64 %37, %36
  ret i64 %38
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @int_to_scsilun(i64 noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = lshr i64 %0, 8
  %4 = trunc i64 %3 to i8
  store i8 %4, ptr %1, align 1
  %5 = trunc i64 %0 to i8
  %6 = getelementptr [8 x i8], ptr %1, i32 0, i32 1
  store i8 %5, ptr %6, align 1
  %7 = lshr i64 %0, 16
  %8 = lshr i64 %0, 24
  %9 = trunc i64 %8 to i8
  %10 = getelementptr [8 x i8], ptr %1, i32 0, i32 2
  store i8 %9, ptr %10, align 1
  %11 = trunc i64 %7 to i8
  %12 = getelementptr [8 x i8], ptr %1, i32 0, i32 3
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %0, 32
  %14 = lshr i64 %0, 40
  %15 = trunc i64 %14 to i8
  %16 = getelementptr [8 x i8], ptr %1, i32 0, i32 4
  store i8 %15, ptr %16, align 1
  %17 = trunc i64 %13 to i8
  %18 = getelementptr [8 x i8], ptr %1, i32 0, i32 5
  store i8 %17, ptr %18, align 1
  %19 = lshr i64 %0, 48
  %20 = lshr i64 %0, 56
  %21 = trunc i64 %20 to i8
  %22 = getelementptr [8 x i8], ptr %1, i32 0, i32 6
  store i8 %21, ptr %22, align 1
  %23 = trunc i64 %19 to i8
  %24 = getelementptr [8 x i8], ptr %1, i32 0, i32 7
  store i8 %23, ptr %24, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @scsi_normalize_sense(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #3 {
  store i64 0, ptr %2, align 1
  %4 = icmp ne ptr %0, null
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %62

7:                                                ; preds = %3
  %8 = load i8, ptr %0, align 1
  %9 = and i8 %8, 127
  store i8 %9, ptr %2, align 1
  %10 = icmp ne ptr %2, null
  %11 = and i8 %8, 112
  %12 = icmp eq i8 %11, 112
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %62

14:                                               ; preds = %7
  %15 = icmp ugt i8 %9, 113
  br i1 %15, label %16, label %38

16:                                               ; preds = %14
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %62

18:                                               ; preds = %16
  %19 = getelementptr i8, ptr %0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 15
  %22 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 1
  store i8 %21, ptr %22, align 1
  %23 = icmp eq i32 %1, 2
  br i1 %23, label %62, label %24

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %0, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 2
  store i8 %26, ptr %27, align 1
  %28 = icmp ugt i32 %1, 3
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 3
  store i8 %31, ptr %32, align 1
  %33 = icmp ugt i32 %1, 7
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %0, i32 7
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 7
  store i8 %36, ptr %37, align 1
  br label %62

38:                                               ; preds = %14
  %39 = icmp sgt i32 %1, 2
  br i1 %39, label %40, label %62

40:                                               ; preds = %38
  %41 = getelementptr i8, ptr %0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 15
  %44 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 1
  store i8 %43, ptr %44, align 1
  %45 = icmp ugt i32 %1, 7
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %0, i32 7
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %49, 8
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 %1)
  %52 = icmp ugt i32 %51, 12
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = getelementptr i8, ptr %0, i32 12
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 2
  store i8 %55, ptr %56, align 1
  %57 = icmp eq i32 %51, 13
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %0, i32 13
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 3
  store i8 %60, ptr %61, align 1
  br label %62

62:                                               ; preds = %58, %53, %46, %40, %38, %34, %29, %24, %18, %16, %7, %3
  %63 = phi i1 [ false, %3 ], [ true, %40 ], [ true, %58 ], [ true, %53 ], [ true, %29 ], [ true, %34 ], [ false, %7 ], [ true, %24 ], [ true, %18 ], [ true, %16 ], [ true, %38 ], [ true, %46 ]
  ret i1 %63
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @scsi_sense_desc_find(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = icmp slt i32 %1, 8
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 7
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %0, align 1
  %12 = add i8 %11, -116
  %13 = icmp ult i8 %12, -2
  br i1 %13, label %40, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %1, -8
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 %8)
  %17 = icmp ugt i32 %1, 8
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 8
  %20 = add nsw i32 %16, -1
  br label %21

21:                                               ; preds = %33, %18
  %22 = phi ptr [ %19, %18 ], [ %25, %33 ]
  %23 = phi i32 [ 0, %18 ], [ %38, %33 ]
  %24 = phi i32 [ 0, %18 ], [ %37, %33 ]
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = icmp slt i32 %23, %20
  %27 = load i8, ptr %25, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, %2
  br i1 %26, label %30, label %31

30:                                               ; preds = %21
  br i1 %29, label %40, label %33

31:                                               ; preds = %21
  %32 = select i1 %29, ptr %25, ptr null
  br label %40

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %25, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 2
  %38 = add i32 %37, %23
  %39 = icmp slt i32 %38, %16
  br i1 %39, label %21, label %40

40:                                               ; preds = %33, %31, %30, %14, %10, %5, %3
  %41 = phi ptr [ null, %5 ], [ null, %3 ], [ null, %10 ], [ %32, %31 ], [ null, %14 ], [ %25, %30 ], [ null, %33 ]
  ret ptr %41
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @scsi_build_sense_buffer(i32 noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #5 {
  %6 = icmp eq i32 %0, 0
  %7 = select i1 %6, i8 112, i8 114
  %8 = select i1 %6, i32 12, i32 1
  %9 = select i1 %6, i8 %3, i8 %2
  %10 = select i1 %6, i32 13, i32 3
  %11 = select i1 %6, i8 %2, i8 %3
  %12 = select i1 %6, i8 10, i8 0
  store i8 %7, ptr %1, align 1
  %13 = getelementptr i8, ptr %1, i32 %8
  store i8 %9, ptr %13, align 1
  %14 = getelementptr i8, ptr %1, i32 %10
  store i8 %4, ptr %14, align 1
  %15 = getelementptr i8, ptr %1, i32 2
  store i8 %11, ptr %15, align 1
  %16 = getelementptr i8, ptr %1, i32 7
  store i8 %12, ptr %16, align 1
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_set_sense_information(ptr noundef %0, i32 noundef %1, i64 noundef %2) #6 {
  %4 = load i8, ptr %0, align 1
  %5 = trunc i8 %4 to i7
  switch i7 %5, label %60 [
    i7 -14, label %6
    i7 -16, label %53
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 7
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  %11 = add i8 %4, -116
  %12 = icmp ult i8 %11, -2
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %39, label %14

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %0, i32 8
  %16 = add nsw i32 %9, -1
  br label %17

17:                                               ; preds = %30, %14
  %18 = phi ptr [ %15, %14 ], [ %21, %30 ]
  %19 = phi i32 [ 0, %14 ], [ %35, %30 ]
  %20 = phi i32 [ 0, %14 ], [ %34, %30 ]
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = icmp slt i32 %19, %16
  %23 = load i8, ptr %21, align 1
  br i1 %22, label %24, label %26

24:                                               ; preds = %17
  %25 = icmp eq i8 %23, 0
  br i1 %25, label %37, label %30

26:                                               ; preds = %17
  %27 = icmp ne i8 %23, 0
  %28 = icmp eq ptr %21, null
  %29 = or i1 %27, %28
  br i1 %29, label %39, label %43

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %21, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = add nuw nsw i32 %33, 2
  %35 = add i32 %34, %19
  %36 = icmp slt i32 %35, %9
  br i1 %36, label %17, label %39

37:                                               ; preds = %24
  %38 = icmp eq ptr %21, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %37, %30, %26, %6
  %40 = add i8 %8, 12
  store i8 %40, ptr %7, align 1
  %41 = getelementptr i8, ptr %0, i32 8
  %42 = getelementptr i8, ptr %41, i32 %9
  br label %43

43:                                               ; preds = %39, %37, %26
  %44 = phi ptr [ %21, %37 ], [ %42, %39 ], [ %21, %26 ]
  %45 = add nuw nsw i32 %9, 12
  %46 = icmp sgt i32 %45, %1
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  store i8 0, ptr %44, align 1
  %48 = getelementptr i8, ptr %44, i32 1
  store i8 10, ptr %48, align 1
  %49 = getelementptr i8, ptr %44, i32 2
  store i8 -128, ptr %49, align 1
  %50 = getelementptr i8, ptr %44, i32 3
  store i8 0, ptr %50, align 1
  %51 = getelementptr i8, ptr %44, i32 4
  %52 = tail call i64 @llvm.bswap.i64(i64 %2) #8
  store i64 %52, ptr %51, align 1
  br label %60

53:                                               ; preds = %3
  %54 = icmp ult i64 %2, 4294967296
  %55 = or i8 %4, -128
  %56 = select i1 %54, i8 %55, i8 112
  store i8 %56, ptr %0, align 1
  %57 = trunc i64 %2 to i32
  %58 = getelementptr i8, ptr %0, i32 3
  %59 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  store i32 %59, ptr %58, align 1
  br label %60

60:                                               ; preds = %53, %47, %43, %3
  %61 = phi i32 [ -22, %43 ], [ 0, %47 ], [ 0, %3 ], [ 0, %53 ]
  ret i32 %61
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_set_sense_field_pointer(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4) #6 {
  %6 = load i8, ptr %0, align 1
  %7 = trunc i8 %6 to i7
  switch i7 %7, label %74 [
    i7 -14, label %8
    i7 -16, label %58
  ]

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %0, i32 7
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 8
  %13 = icmp eq i8 %10, 0
  %14 = add i8 %6, -116
  %15 = icmp ult i8 %14, -2
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %42, label %17

17:                                               ; preds = %8
  %18 = getelementptr i8, ptr %0, i32 8
  %19 = add nsw i32 %11, -1
  br label %20

20:                                               ; preds = %33, %17
  %21 = phi ptr [ %18, %17 ], [ %24, %33 ]
  %22 = phi i32 [ 0, %17 ], [ %38, %33 ]
  %23 = phi i32 [ 0, %17 ], [ %37, %33 ]
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = icmp slt i32 %22, %19
  %26 = load i8, ptr %24, align 1
  br i1 %25, label %27, label %29

27:                                               ; preds = %20
  %28 = icmp eq i8 %26, 2
  br i1 %28, label %40, label %33

29:                                               ; preds = %20
  %30 = icmp ne i8 %26, 2
  %31 = icmp eq ptr %24, null
  %32 = or i1 %30, %31
  br i1 %32, label %42, label %46

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %24, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 2
  %38 = add i32 %37, %22
  %39 = icmp slt i32 %38, %11
  br i1 %39, label %20, label %42

40:                                               ; preds = %27
  %41 = icmp eq ptr %24, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %40, %33, %29, %8
  %43 = trunc i32 %12 to i8
  store i8 %43, ptr %9, align 1
  %44 = getelementptr i8, ptr %0, i32 8
  %45 = getelementptr i8, ptr %44, i32 %11
  br label %46

46:                                               ; preds = %42, %40, %29
  %47 = phi ptr [ %24, %40 ], [ %45, %42 ], [ %24, %29 ]
  %48 = icmp sgt i32 %12, %1
  br i1 %48, label %74, label %49

49:                                               ; preds = %46
  store i8 2, ptr %47, align 1
  %50 = getelementptr i8, ptr %47, i32 1
  store i8 6, ptr %50, align 1
  %51 = getelementptr i8, ptr %47, i32 4
  %52 = select i1 %4, i8 -64, i8 -128
  %53 = icmp ult i8 %3, 8
  %54 = or i8 %52, %3
  %55 = or i8 %54, 8
  %56 = select i1 %53, i8 %55, i8 %52
  store i8 %56, ptr %51, align 1
  %57 = getelementptr i8, ptr %47, i32 5
  br label %71

58:                                               ; preds = %5
  %59 = getelementptr i8, ptr %0, i32 7
  %60 = load i8, ptr %59, align 1
  %61 = icmp ult i8 %60, 18
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i8 18, ptr %59, align 1
  br label %63

63:                                               ; preds = %62, %58
  %64 = getelementptr i8, ptr %0, i32 15
  %65 = select i1 %4, i8 -64, i8 -128
  %66 = icmp ult i8 %3, 8
  %67 = or i8 %65, %3
  %68 = or i8 %67, 8
  %69 = select i1 %66, i8 %68, i8 %65
  store i8 %69, ptr %64, align 1
  %70 = getelementptr i8, ptr %0, i32 16
  br label %71

71:                                               ; preds = %63, %49
  %72 = phi ptr [ %57, %49 ], [ %70, %63 ]
  %73 = tail call i16 @llvm.bswap.i16(i16 %2) #8
  store i16 %73, ptr %72, align 1
  br label %74

74:                                               ; preds = %71, %46, %5
  %75 = phi i32 [ -22, %46 ], [ 0, %5 ], [ 0, %71 ]
  ret i32 %75
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
