; ModuleID = '/llk/IR/drivers/misc/eeprom/eeprom_93cx6.c_pt.bc'
source_filename = "../drivers/misc/eeprom/eeprom_93cx6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_read:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_read\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_multiread:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_multiread\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_multiread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_readb\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_multireadb:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_multireadb\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_multireadb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_wren:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_wren\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_wren:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eeprom_93cx6_write:\09\09\09\09\09"
module asm "\09.asciz \09\22eeprom_93cx6_write\22\09\09\09\09\09"
module asm "__kstrtabns_eeprom_93cx6_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_author154 = internal constant [51 x i8] c"eeprom_93cx6.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version155 = internal constant [25 x i8] c"eeprom_93cx6.version=1.0\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"eeprom_93cx6\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description156 = internal constant [50 x i8] c"eeprom_93cx6.description=EEPROM 93cx6 chip driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file157 = internal constant [51 x i8] c"eeprom_93cx6.file=drivers/misc/eeprom/eeprom_93cx6\00", section ".modinfo", align 1
@__UNIQUE_ID_license158 = internal constant [25 x i8] c"eeprom_93cx6.license=GPL\00", section ".modinfo", align 1
@__kstrtab_eeprom_93cx6_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_read = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_read to i32), ptr @__kstrtab_eeprom_93cx6_read, ptr @__kstrtabns_eeprom_93cx6_read }, section "___ksymtab_gpl+eeprom_93cx6_read", align 4
@__kstrtab_eeprom_93cx6_multiread = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_multiread = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_multiread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_multiread to i32), ptr @__kstrtab_eeprom_93cx6_multiread, ptr @__kstrtabns_eeprom_93cx6_multiread }, section "___ksymtab_gpl+eeprom_93cx6_multiread", align 4
@__kstrtab_eeprom_93cx6_readb = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_readb = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_readb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_readb to i32), ptr @__kstrtab_eeprom_93cx6_readb, ptr @__kstrtabns_eeprom_93cx6_readb }, section "___ksymtab_gpl+eeprom_93cx6_readb", align 4
@__kstrtab_eeprom_93cx6_multireadb = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_multireadb = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_multireadb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_multireadb to i32), ptr @__kstrtab_eeprom_93cx6_multireadb, ptr @__kstrtabns_eeprom_93cx6_multireadb }, section "___ksymtab_gpl+eeprom_93cx6_multireadb", align 4
@__kstrtab_eeprom_93cx6_wren = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_wren = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_wren = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_wren to i32), ptr @__kstrtab_eeprom_93cx6_wren, ptr @__kstrtabns_eeprom_93cx6_wren }, section "___ksymtab_gpl+eeprom_93cx6_wren", align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"\013%s: timeout\0A\00", align 1
@__func__.eeprom_93cx6_write = private unnamed_addr constant [19 x i8] c"eeprom_93cx6_write\00", align 1
@__kstrtab_eeprom_93cx6_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_eeprom_93cx6_write = external dso_local constant [0 x i8], align 1
@__ksymtab_eeprom_93cx6_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eeprom_93cx6_write to i32), ptr @__kstrtab_eeprom_93cx6_write, ptr @__kstrtabns_eeprom_93cx6_write }, section "___ksymtab_gpl+eeprom_93cx6_write", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author154, ptr @__UNIQUE_ID_description156, ptr @__UNIQUE_ID_file157, ptr @__UNIQUE_ID_license158, ptr @__UNIQUE_ID_version155, ptr @__ksymtab_eeprom_93cx6_multiread, ptr @__ksymtab_eeprom_93cx6_multireadb, ptr @__ksymtab_eeprom_93cx6_read, ptr @__ksymtab_eeprom_93cx6_readb, ptr @__ksymtab_eeprom_93cx6_wren, ptr @__ksymtab_eeprom_93cx6_write, ptr @__modver_attr], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_read(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 5
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 6
  store i8 0, ptr %7, align 2
  %8 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 7
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 8
  store i8 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 4
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0) #4
  store i8 1, ptr %8, align 1
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %0) #4
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #4
  store i8 0, ptr %8, align 1
  %15 = load ptr, ptr %11, align 4
  tail call void %15(ptr noundef %0) #4
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #4
  %17 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i16
  %20 = add i16 %19, 3
  %21 = load ptr, ptr %4, align 4
  tail call void %21(ptr noundef %0) #4
  store i8 0, ptr %7, align 2
  store i8 1, ptr %10, align 4
  %22 = icmp eq i16 %20, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %3
  %24 = shl i32 6, %18
  %25 = zext i8 %1 to i32
  %26 = zext i16 %20 to i32
  %27 = and i32 %24, 65534
  %28 = or i32 %27, %25
  br label %29

29:                                               ; preds = %29, %23
  %30 = phi i32 [ %26, %23 ], [ %31, %29 ]
  %31 = add nsw i32 %30, -1
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %28
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i8
  store i8 %35, ptr %6, align 1
  %36 = load ptr, ptr %11, align 4
  tail call void %36(ptr noundef %0) #4
  store i8 1, ptr %8, align 1
  %37 = load ptr, ptr %11, align 4
  tail call void %37(ptr noundef %0) #4
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #4
  store i8 0, ptr %8, align 1
  %39 = load ptr, ptr %11, align 4
  tail call void %39(ptr noundef %0) #4
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #4
  %41 = icmp eq i32 %31, 0
  br i1 %41, label %42, label %29

42:                                               ; preds = %29, %3
  store i8 0, ptr %6, align 1
  %43 = load ptr, ptr %11, align 4
  tail call void %43(ptr noundef %0) #4
  %44 = load ptr, ptr %4, align 4
  tail call void %44(ptr noundef %0) #4
  store i8 0, ptr %6, align 1
  store i8 0, ptr %7, align 2
  store i8 0, ptr %10, align 4
  br label %45

45:                                               ; preds = %45, %42
  %46 = phi i16 [ 0, %42 ], [ %57, %45 ]
  %47 = phi i32 [ 16, %42 ], [ %53, %45 ]
  store i8 1, ptr %8, align 1
  %48 = load ptr, ptr %11, align 4
  tail call void %48(ptr noundef %0) #4
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #4
  %50 = load ptr, ptr %4, align 4
  tail call void %50(ptr noundef %0) #4
  store i8 0, ptr %6, align 1
  %51 = load i8, ptr %7, align 2
  %52 = icmp eq i8 %51, 0
  %53 = add nsw i32 %47, -1
  %54 = shl nuw i32 1, %53
  %55 = trunc i32 %54 to i16
  %56 = select i1 %52, i16 0, i16 %55
  %57 = or i16 %56, %46
  store i8 0, ptr %8, align 1
  %58 = load ptr, ptr %11, align 4
  tail call void %58(ptr noundef %0) #4
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #4
  %60 = icmp eq i32 %53, 0
  br i1 %60, label %61, label %45

61:                                               ; preds = %45
  store i16 %57, ptr %2, align 2
  %62 = load ptr, ptr %4, align 4
  tail call void %62(ptr noundef %0) #4
  store i8 0, ptr %6, align 1
  store i8 0, ptr %9, align 4
  %63 = load ptr, ptr %11, align 4
  tail call void %63(ptr noundef %0) #4
  store i8 1, ptr %8, align 1
  %64 = load ptr, ptr %11, align 4
  tail call void %64(ptr noundef %0) #4
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748) #4
  store i8 0, ptr %8, align 1
  %66 = load ptr, ptr %11, align 4
  tail call void %66(ptr noundef %0) #4
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_multiread(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, i16 noundef zeroext %3) #1 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #4
  %6 = zext i16 %3 to i32
  %7 = icmp eq i16 %3, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %4
  %9 = phi i32 [ %14, %8 ], [ 0, %4 ]
  store i16 0, ptr %5, align 2
  %10 = trunc i32 %9 to i8
  %11 = add i8 %10, %1
  call void @eeprom_93cx6_read(ptr noundef %0, i8 noundef zeroext %11, ptr noundef nonnull %5)
  %12 = load i16, ptr %5, align 2
  %13 = getelementptr i16, ptr %2, i32 %9
  store i16 %12, ptr %13, align 2
  %14 = add nuw nsw i32 %9, 1
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_readb(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 5
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 6
  store i8 0, ptr %7, align 2
  %8 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 7
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 8
  store i8 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 4
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0) #4
  store i8 1, ptr %8, align 1
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %0) #4
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #4
  store i8 0, ptr %8, align 1
  %15 = load ptr, ptr %11, align 4
  tail call void %15(ptr noundef %0) #4
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #4
  %17 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i16
  %20 = add i16 %19, 4
  %21 = load ptr, ptr %4, align 4
  tail call void %21(ptr noundef %0) #4
  store i8 0, ptr %7, align 2
  store i8 1, ptr %10, align 4
  %22 = icmp eq i16 %20, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %3
  %24 = add i32 %18, 1
  %25 = shl i32 6, %24
  %26 = zext i8 %1 to i32
  %27 = zext i16 %20 to i32
  %28 = and i32 %25, 65534
  %29 = or i32 %28, %26
  br label %30

30:                                               ; preds = %30, %23
  %31 = phi i32 [ %27, %23 ], [ %32, %30 ]
  %32 = add nsw i32 %31, -1
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %29
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i8
  store i8 %36, ptr %6, align 1
  %37 = load ptr, ptr %11, align 4
  tail call void %37(ptr noundef %0) #4
  store i8 1, ptr %8, align 1
  %38 = load ptr, ptr %11, align 4
  tail call void %38(ptr noundef %0) #4
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #4
  store i8 0, ptr %8, align 1
  %40 = load ptr, ptr %11, align 4
  tail call void %40(ptr noundef %0) #4
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #4
  %42 = icmp eq i32 %32, 0
  br i1 %42, label %43, label %30

43:                                               ; preds = %30, %3
  store i8 0, ptr %6, align 1
  %44 = load ptr, ptr %11, align 4
  tail call void %44(ptr noundef %0) #4
  %45 = load ptr, ptr %4, align 4
  tail call void %45(ptr noundef %0) #4
  store i8 0, ptr %6, align 1
  store i8 0, ptr %7, align 2
  store i8 0, ptr %10, align 4
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi i16 [ 0, %43 ], [ %58, %46 ]
  %48 = phi i32 [ 8, %43 ], [ %54, %46 ]
  store i8 1, ptr %8, align 1
  %49 = load ptr, ptr %11, align 4
  tail call void %49(ptr noundef %0) #4
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #4
  %51 = load ptr, ptr %4, align 4
  tail call void %51(ptr noundef %0) #4
  store i8 0, ptr %6, align 1
  %52 = load i8, ptr %7, align 2
  %53 = icmp eq i8 %52, 0
  %54 = add nsw i32 %48, -1
  %55 = shl nuw i32 1, %54
  %56 = trunc i32 %55 to i16
  %57 = select i1 %53, i16 0, i16 %56
  %58 = or i16 %57, %47
  store i8 0, ptr %8, align 1
  %59 = load ptr, ptr %11, align 4
  tail call void %59(ptr noundef %0) #4
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748) #4
  %61 = icmp eq i32 %54, 0
  br i1 %61, label %62, label %46

62:                                               ; preds = %46
  %63 = trunc i16 %58 to i8
  store i8 %63, ptr %2, align 1
  %64 = load ptr, ptr %4, align 4
  tail call void %64(ptr noundef %0) #4
  store i8 0, ptr %6, align 1
  store i8 0, ptr %9, align 4
  %65 = load ptr, ptr %11, align 4
  tail call void %65(ptr noundef %0) #4
  store i8 1, ptr %8, align 1
  %66 = load ptr, ptr %11, align 4
  tail call void %66(ptr noundef %0) #4
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #4
  store i8 0, ptr %8, align 1
  %68 = load ptr, ptr %11, align 4
  tail call void %68(ptr noundef %0) #4
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_multireadb(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, i16 noundef zeroext %3) #1 {
  %5 = zext i16 %3 to i32
  %6 = icmp eq i16 %3, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ %12, %7 ], [ 0, %4 ]
  %9 = trunc i32 %8 to i8
  %10 = add i8 %9, %1
  %11 = getelementptr i8, ptr %2, i32 %8
  tail call void @eeprom_93cx6_readb(ptr noundef %0, i8 noundef zeroext %10, ptr noundef %11)
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp eq i32 %12, %5
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_wren(ptr noundef %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void %4(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 5
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 6
  store i8 0, ptr %6, align 2
  %7 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 7
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 8
  store i8 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 4
  store i8 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #4
  store i8 1, ptr %7, align 1
  %12 = load ptr, ptr %10, align 4
  tail call void %12(ptr noundef %0) #4
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #4
  store i8 0, ptr %7, align 1
  %14 = load ptr, ptr %10, align 4
  tail call void %14(ptr noundef %0) #4
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #4
  %16 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i16
  %19 = add i16 %18, 3
  %20 = load ptr, ptr %3, align 4
  tail call void %20(ptr noundef %0) #4
  store i8 0, ptr %6, align 2
  store i8 1, ptr %9, align 4
  %21 = icmp eq i16 %19, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %2
  %23 = select i1 %1, i32 19, i32 16
  %24 = add i32 %17, -2
  %25 = shl i32 %23, %24
  %26 = zext i16 %19 to i32
  %27 = and i32 %25, 65535
  br label %28

28:                                               ; preds = %28, %22
  %29 = phi i32 [ %26, %22 ], [ %30, %28 ]
  %30 = add nsw i32 %29, -1
  %31 = shl nuw i32 1, %30
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %5, align 1
  %35 = load ptr, ptr %10, align 4
  tail call void %35(ptr noundef %0) #4
  store i8 1, ptr %7, align 1
  %36 = load ptr, ptr %10, align 4
  tail call void %36(ptr noundef %0) #4
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #4
  store i8 0, ptr %7, align 1
  %38 = load ptr, ptr %10, align 4
  tail call void %38(ptr noundef %0) #4
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #4
  %40 = icmp eq i32 %30, 0
  br i1 %40, label %41, label %28

41:                                               ; preds = %28, %2
  store i8 0, ptr %5, align 1
  %42 = load ptr, ptr %10, align 4
  tail call void %42(ptr noundef %0) #4
  %43 = load ptr, ptr %3, align 4
  tail call void %43(ptr noundef %0) #4
  store i8 0, ptr %5, align 1
  store i8 0, ptr %8, align 4
  %44 = load ptr, ptr %10, align 4
  tail call void %44(ptr noundef %0) #4
  store i8 1, ptr %7, align 1
  %45 = load ptr, ptr %10, align 4
  tail call void %45(ptr noundef %0) #4
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #4
  store i8 0, ptr %7, align 1
  %47 = load ptr, ptr %10, align 4
  tail call void %47(ptr noundef %0) #4
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @eeprom_93cx6_write(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 5
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 6
  store i8 0, ptr %7, align 2
  %8 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 7
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 8
  store i8 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 4
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0) #4
  store i8 1, ptr %8, align 1
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %0) #4
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #4
  store i8 0, ptr %8, align 1
  %15 = load ptr, ptr %11, align 4
  tail call void %15(ptr noundef %0) #4
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #4
  %17 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i16
  %20 = add i16 %19, 3
  %21 = load ptr, ptr %4, align 4
  tail call void %21(ptr noundef %0) #4
  store i8 0, ptr %7, align 2
  store i8 1, ptr %10, align 4
  %22 = icmp eq i16 %20, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %3
  %24 = shl i32 5, %18
  %25 = zext i8 %1 to i32
  %26 = zext i16 %20 to i32
  %27 = and i32 %24, 65535
  %28 = or i32 %27, %25
  br label %29

29:                                               ; preds = %29, %23
  %30 = phi i32 [ %26, %23 ], [ %31, %29 ]
  %31 = add nsw i32 %30, -1
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %28
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i8
  store i8 %35, ptr %6, align 1
  %36 = load ptr, ptr %11, align 4
  tail call void %36(ptr noundef %0) #4
  store i8 1, ptr %8, align 1
  %37 = load ptr, ptr %11, align 4
  tail call void %37(ptr noundef %0) #4
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #4
  store i8 0, ptr %8, align 1
  %39 = load ptr, ptr %11, align 4
  tail call void %39(ptr noundef %0) #4
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #4
  %41 = icmp eq i32 %31, 0
  br i1 %41, label %42, label %29

42:                                               ; preds = %29, %3
  store i8 0, ptr %6, align 1
  %43 = load ptr, ptr %11, align 4
  tail call void %43(ptr noundef %0) #4
  %44 = load ptr, ptr %4, align 4
  tail call void %44(ptr noundef %0) #4
  store i8 0, ptr %7, align 2
  store i8 1, ptr %10, align 4
  %45 = zext i16 %2 to i32
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi i32 [ 16, %42 ], [ %48, %46 ]
  %48 = add nsw i32 %47, -1
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %45
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i8
  store i8 %52, ptr %6, align 1
  %53 = load ptr, ptr %11, align 4
  tail call void %53(ptr noundef %0) #4
  store i8 1, ptr %8, align 1
  %54 = load ptr, ptr %11, align 4
  tail call void %54(ptr noundef %0) #4
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #4
  store i8 0, ptr %8, align 1
  %56 = load ptr, ptr %11, align 4
  tail call void %56(ptr noundef %0) #4
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #4
  %58 = icmp eq i32 %48, 0
  br i1 %58, label %59, label %46

59:                                               ; preds = %46
  store i8 0, ptr %6, align 1
  %60 = load ptr, ptr %11, align 4
  tail call void %60(ptr noundef %0) #4
  store i8 0, ptr %10, align 4
  store i8 1, ptr %9, align 4
  %61 = load ptr, ptr %11, align 4
  tail call void %61(ptr noundef %0) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %62

62:                                               ; preds = %67, %59
  %63 = phi i32 [ 100, %59 ], [ %68, %67 ]
  %64 = load ptr, ptr %4, align 4
  tail call void %64(ptr noundef %0) #4
  %65 = load i8, ptr %7, align 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %68 = add nsw i32 %63, -1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %62

70:                                               ; preds = %67
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.eeprom_93cx6_write) #5
  br label %72

72:                                               ; preds = %70, %62
  %73 = load ptr, ptr %4, align 4
  tail call void %73(ptr noundef %0) #4
  store i8 0, ptr %6, align 1
  store i8 0, ptr %9, align 4
  %74 = load ptr, ptr %11, align 4
  tail call void %74(ptr noundef %0) #4
  store i8 1, ptr %8, align 1
  %75 = load ptr, ptr %11, align 4
  tail call void %75(ptr noundef %0) #4
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748) #4
  store i8 0, ptr %8, align 1
  %77 = load ptr, ptr %11, align 4
  tail call void %77(ptr noundef %0) #4
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
