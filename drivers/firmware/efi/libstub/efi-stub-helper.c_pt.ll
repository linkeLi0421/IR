; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/efi-stub-helper.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/efi-stub-helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.guid_t = type { [16 x i8] }
%struct.anon.12 = type { %struct.efi_vendor_dev_path, %struct.efi_generic_dev_path }
%struct.efi_vendor_dev_path = type { %struct.efi_generic_dev_path, %struct.guid_t, [0 x i8] }
%struct.efi_generic_dev_path = type { i8, i8, i16 }
%struct.efi_tcg2_event = type <{ i32, %struct.anon.14 }>
%struct.anon.14 = type <{ i32, i16, i32, i32 }>
%struct.efi_tcg2_tagged_event = type { i32, i32 }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon = type { ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.anon.5 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.7 = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i32, i32, ptr }
%struct.efi_boot_memmap = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.9 = type { %struct.guid_t, ptr }
%struct.anon.13 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.2 = type { ptr, ptr, ptr }

@efi_nokaslr = hidden local_unnamed_addr global i8 1, align 1
@efi_loglevel = hidden local_unnamed_addr global i32 7, align 4
@efi_system_table = external hidden local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [11 x i8] c"EFI stub: \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"[Message truncated]\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nokaslr\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"noinitrd\00", align 1
@efi_noinitrd = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"efi\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"nochunk\00", align 1
@efi_nochunk = hidden local_unnamed_addr global i8 0, align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"novamap\00", align 1
@efi_novamap = hidden local_unnamed_addr global i8 0, align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"disable_early_pci_dma\00", align 1
@efi_disable_pci_dma = internal unnamed_addr global i1 false, align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"no_disable_early_pci_dma\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"efifb:\00", align 1
@_ctype = external hidden local_unnamed_addr constant [0 x i8], align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"\013ERROR: Command line is too long: truncated to %d bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%.*ls\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"\016Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\016Loaded initrd from command line option\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"\013ERROR: Failed to load initrd: 0x%lx\0A\00", align 1
@__const.efi_load_initrd_dev_path.lf2_proto_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\C1\C0\06@\B3\FC>@\99mJl\87$\E0m" }, align 4
@initrd_dev_path = internal constant %struct.anon.12 { %struct.efi_vendor_dev_path { %struct.efi_generic_dev_path { i8 4, i8 3, i16 20 }, %struct.guid_t { [16 x i8] c"'\E4hU\FCh=O\ACt\CAUR1\CCh" }, [0 x i8] zeroinitializer }, %struct.efi_generic_dev_path { i8 127, i8 -1, i16 4 } }, align 1
@__const.efi_measure_initrd.tcg2_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"lv\7F`Ut\BEB\93\0B\E4\D7m\B2r\0F" }, align 4
@.str.19 = private unnamed_addr constant [49 x i8] c"\014WARNING: Failed to measure initrd data: 0x%lx\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"\016Measured initrd data into PCR %d\0A\00", align 1
@initrd_tcg2_event = internal constant <{ %struct.efi_tcg2_event, %struct.efi_tcg2_tagged_event, [13 x i8] }> <{ %struct.efi_tcg2_event <{ i32 39, %struct.anon.14 <{ i32 14, i16 1, i32 9, i32 6 }> }>, %struct.efi_tcg2_tagged_event { i32 -1891949844, i32 13 }, [13 x i8] c"Linux initrd\00" }>, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn uwtable(sync)
define hidden zeroext i1 @__efi_soft_reserve_enabled() local_unnamed_addr #0 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden void @efi_char16_puts(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @efi_system_table, align 4
  %3 = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %4, ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden void @efi_puts(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [128 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(256) %2, i8 0, i32 256, i1 false), !annotation !9
  br label %3

3:                                                ; preds = %87, %1
  %4 = phi ptr [ %0, %1 ], [ %80, %87 ]
  %5 = phi i32 [ 0, %1 ], [ %88, %87 ]
  %6 = load i8, ptr %4, align 1
  switch i8 %6, label %11 [
    i8 0, label %97
    i8 10, label %7
  ]

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %5, 1
  %9 = getelementptr [128 x i16], ptr %2, i32 0, i32 %5
  store i16 13, ptr %9, align 2
  %10 = load i8, ptr %4, align 1
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i8 [ %10, %7 ], [ %6, %3 ]
  %13 = phi i32 [ %8, %7 ], [ %5, %3 ]
  %14 = getelementptr i8, ptr %4, i32 1
  %15 = zext i8 %12 to i32
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %63, label %18

18:                                               ; preds = %18, %11
  %19 = phi i32 [ %22, %18 ], [ 0, %11 ]
  %20 = phi i8 [ %21, %18 ], [ %12, %11 ]
  %21 = shl i8 %20, 1
  %22 = add i32 %19, 1
  %23 = zext i8 %21 to i32
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %18

26:                                               ; preds = %18
  %27 = add i32 %19, -4
  %28 = icmp ult i32 %27, -3
  br i1 %28, label %63, label %29

29:                                               ; preds = %26
  %30 = lshr i32 %23, %22
  br label %31

31:                                               ; preds = %40, %29
  %32 = phi i32 [ %43, %40 ], [ 0, %29 ]
  %33 = phi i32 [ %42, %40 ], [ %30, %29 ]
  %34 = getelementptr i8, ptr %14, i32 %32
  %35 = load i8, ptr %34, align 1
  %36 = xor i8 %35, -128
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 192
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %31
  %41 = shl i32 %33, 6
  %42 = or i32 %41, %37
  %43 = add nuw nsw i32 %32, 1
  %44 = icmp eq i32 %43, %19
  br i1 %44, label %45, label %31

45:                                               ; preds = %40
  %46 = icmp ugt i32 %42, 1114111
  %47 = and i32 %33, 992
  %48 = icmp eq i32 %47, 864
  %49 = or i1 %48, %46
  br i1 %49, label %63, label %50

50:                                               ; preds = %45
  %51 = icmp ugt i32 %42, 127
  %52 = zext i1 %51 to i32
  %53 = icmp ugt i32 %42, 2047
  %54 = zext i1 %53 to i32
  %55 = add nuw nsw i32 %52, %54
  %56 = icmp ugt i32 %42, 65535
  %57 = zext i1 %56 to i32
  %58 = add nuw nsw i32 %55, %57
  %59 = icmp eq i32 %19, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = getelementptr i8, ptr %4, i32 %22
  %62 = icmp ult i32 %42, 65536
  br i1 %62, label %63, label %67

63:                                               ; preds = %60, %50, %45, %31, %26, %11
  %64 = phi i32 [ %42, %60 ], [ %15, %26 ], [ %15, %50 ], [ %15, %45 ], [ %15, %11 ], [ %15, %31 ]
  %65 = phi ptr [ %61, %60 ], [ %14, %26 ], [ %14, %50 ], [ %14, %45 ], [ %14, %11 ], [ %14, %31 ]
  %66 = trunc i32 %64 to i16
  br label %76

67:                                               ; preds = %60
  %68 = lshr i32 %41, 10
  %69 = trunc i32 %68 to i16
  %70 = add nuw nsw i16 %69, -10304
  %71 = add i32 %13, 1
  %72 = getelementptr [128 x i16], ptr %2, i32 0, i32 %13
  store i16 %70, ptr %72, align 2
  %73 = trunc i32 %42 to i16
  %74 = and i16 %73, 1023
  %75 = or i16 %74, -9216
  br label %76

76:                                               ; preds = %67, %63
  %77 = phi i32 [ 2, %67 ], [ 1, %63 ]
  %78 = phi i32 [ %71, %67 ], [ %13, %63 ]
  %79 = phi i16 [ %75, %67 ], [ %66, %63 ]
  %80 = phi ptr [ %61, %67 ], [ %65, %63 ]
  %81 = add i32 %13, %77
  %82 = getelementptr [128 x i16], ptr %2, i32 0, i32 %78
  store i16 %79, ptr %82, align 2
  %83 = load i8, ptr %80, align 1
  %84 = icmp eq i8 %83, 0
  %85 = icmp ugt i32 %81, 125
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %89, label %87

87:                                               ; preds = %89, %76
  %88 = phi i32 [ %81, %76 ], [ 0, %89 ]
  br label %3

89:                                               ; preds = %76
  %90 = getelementptr [128 x i16], ptr %2, i32 0, i32 %81
  store i16 0, ptr %90, align 2
  %91 = load ptr, ptr @efi_system_table, align 4
  %92 = getelementptr inbounds %struct.anon.1, ptr %91, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.anon, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 %95(ptr noundef %93, ptr noundef nonnull %2) #7
  br label %87

97:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_printk(ptr noundef %0, ...) local_unnamed_addr #1 {
  %2 = alloca [256 x i8], align 1
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %2, i8 0, i32 256, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %14 [
    i8 55, label %9
    i8 99, label %9
    i8 48, label %9
    i8 49, label %9
    i8 50, label %9
    i8 51, label %9
    i8 52, label %9
    i8 53, label %9
    i8 54, label %9
  ]

9:                                                ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6
  %10 = zext i8 %8 to i32
  %11 = add nsw i32 %10, -48
  %12 = icmp ult i32 %11, 10
  %13 = select i1 %12, i32 %11, i32 -1
  br label %14

14:                                               ; preds = %9, %6, %1
  %15 = phi i32 [ -1, %6 ], [ -1, %1 ], [ %13, %9 ]
  %16 = load i32, ptr @efi_loglevel, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = icmp sgt i32 %15, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  tail call void @efi_puts(ptr noundef nonnull @.str) #9
  %21 = load i8, ptr %0, align 1
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8 [ %21, %20 ], [ %4, %18 ]
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %0, i32 1
  %27 = load i8, ptr %26, align 1
  switch i8 %27, label %30 [
    i8 55, label %28
    i8 99, label %28
    i8 48, label %28
    i8 49, label %28
    i8 50, label %28
    i8 51, label %28
    i8 52, label %28
    i8 53, label %28
    i8 54, label %28
  ]

28:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25
  %29 = getelementptr i8, ptr %0, i32 2
  br label %30

30:                                               ; preds = %28, %25, %22
  %31 = phi ptr [ %29, %28 ], [ %0, %22 ], [ %0, %25 ]
  call void @llvm.va_start(ptr nonnull %3)
  %32 = load i32, ptr %3, align 4
  %33 = insertvalue [1 x i32] poison, i32 %32, 0
  %34 = call i32 @vsnprintf(ptr noundef nonnull %2, i32 noundef 256, ptr noundef %31, [1 x i32] %33) #7
  call void @llvm.va_end(ptr nonnull %3)
  call void @efi_puts(ptr noundef nonnull %2) #9
  %35 = icmp ugt i32 %34, 255
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void @efi_puts(ptr noundef nonnull @.str.1) #9
  br label %37

37:                                               ; preds = %36, %30, %14
  %38 = phi i32 [ -1, %36 ], [ 0, %14 ], [ %34, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #8
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @vsnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_parse_options(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %100, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @strnlen(ptr noundef nonnull %0, i32 noundef 1023) #7
  %8 = add i32 %7, 1
  %9 = load ptr, ptr @efi_system_table, align 4
  %10 = getelementptr inbounds %struct.anon.1, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon.5, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(i32 noundef 2, i32 noundef %8, ptr noundef nonnull %2) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %100

16:                                               ; preds = %6
  %17 = load ptr, ptr %2, align 4
  %18 = call ptr @memcpy(ptr noundef %17, ptr noundef nonnull %0, i32 noundef %7) #7
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 %7
  store i8 0, ptr %20, align 1
  %21 = load ptr, ptr %2, align 4
  %22 = call ptr @skip_spaces(ptr noundef %21) #7
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %92, label %25

25:                                               ; preds = %89, %16
  %26 = phi ptr [ %27, %89 ], [ %22, %16 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !9
  %27 = call ptr @next_arg(ptr noundef %26, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %28 = load ptr, ptr %4, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 4
  %32 = call i32 @strcmp(ptr noundef %31, ptr noundef nonnull @.str.2) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %92

35:                                               ; preds = %30, %25
  %36 = load ptr, ptr %3, align 4
  %37 = call i32 @strcmp(ptr noundef %36, ptr noundef nonnull @.str.3) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i8 1, ptr @efi_nokaslr, align 1
  br label %89

40:                                               ; preds = %35
  %41 = load ptr, ptr %3, align 4
  %42 = call i32 @strcmp(ptr noundef %41, ptr noundef nonnull @.str.4) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 4, ptr @efi_loglevel, align 4
  br label %89

45:                                               ; preds = %40
  %46 = load ptr, ptr %3, align 4
  %47 = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull @.str.5) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i1 true, ptr @efi_noinitrd, align 1
  br label %89

50:                                               ; preds = %45
  %51 = load ptr, ptr %3, align 4
  %52 = call i32 @strcmp(ptr noundef %51, ptr noundef nonnull @.str.6) #7
  %53 = icmp eq i32 %52, 0
  %54 = load ptr, ptr %4, align 4
  %55 = icmp ne ptr %54, null
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = call zeroext i1 @parse_option_str(ptr noundef nonnull %54, ptr noundef nonnull @.str.7) #7
  %59 = zext i1 %58 to i8
  store i8 %59, ptr @efi_nochunk, align 1
  %60 = load ptr, ptr %4, align 4
  %61 = call zeroext i1 @parse_option_str(ptr noundef %60, ptr noundef nonnull @.str.8) #7
  %62 = zext i1 %61 to i8
  store i8 %62, ptr @efi_novamap, align 1
  %63 = load ptr, ptr %4, align 4
  %64 = call zeroext i1 @parse_option_str(ptr noundef %63, ptr noundef nonnull @.str.9) #7
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i1 true, ptr @efi_disable_pci_dma, align 1
  br label %66

66:                                               ; preds = %65, %57
  %67 = load ptr, ptr %4, align 4
  %68 = call zeroext i1 @parse_option_str(ptr noundef %67, ptr noundef nonnull @.str.10) #7
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i1 false, ptr @efi_disable_pci_dma, align 1
  br label %70

70:                                               ; preds = %69, %66
  %71 = load ptr, ptr %4, align 4
  %72 = call zeroext i1 @parse_option_str(ptr noundef %71, ptr noundef nonnull @.str.11) #7
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  store i32 10, ptr @efi_loglevel, align 4
  br label %89

74:                                               ; preds = %50
  %75 = load ptr, ptr %3, align 4
  %76 = call i32 @strcmp(ptr noundef %75, ptr noundef nonnull @.str.12) #7
  %77 = icmp eq i32 %76, 0
  %78 = load ptr, ptr %4, align 4
  %79 = icmp ne ptr %78, null
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = call i32 @strlen(ptr noundef nonnull @.str.13) #7
  %83 = call i32 @strncmp(ptr noundef nonnull %78, ptr noundef nonnull @.str.13, i32 noundef %82) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load ptr, ptr %4, align 4
  %87 = call i32 @strlen(ptr noundef nonnull @.str.13) #7
  %88 = getelementptr i8, ptr %86, i32 %87
  call void @efi_parse_option_graphics(ptr noundef %88) #7
  br label %89

89:                                               ; preds = %85, %81, %74, %73, %70, %49, %44, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %90 = load i8, ptr %27, align 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %25

92:                                               ; preds = %89, %34, %16
  %93 = load ptr, ptr @efi_system_table, align 4
  %94 = getelementptr inbounds %struct.anon.1, ptr %93, i32 0, i32 10
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.anon.5, ptr %95, i32 0, i32 7
  %97 = load ptr, ptr %96, align 8
  %98 = load ptr, ptr %2, align 4
  %99 = call i32 %97(ptr noundef %98) #7
  br label %100

100:                                              ; preds = %92, %6, %1
  %101 = phi i32 [ 0, %92 ], [ 0, %1 ], [ %14, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strnlen(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @skip_spaces(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @next_arg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden zeroext i1 @parse_option_str(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_parse_option_graphics(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strlen(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn uwtable(sync)
define hidden void @efi_apply_loadoptions_quirk(ptr nocapture %0, ptr nocapture %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @efi_convert_cmdline(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 1
  br label %11

11:                                               ; preds = %56, %7
  %12 = phi i1 [ %61, %56 ], [ false, %7 ]
  %13 = phi i32 [ %60, %56 ], [ 0, %7 ]
  %14 = phi i32 [ %59, %56 ], [ 0, %7 ]
  %15 = phi ptr [ %58, %56 ], [ %5, %7 ]
  %16 = phi i32 [ %57, %56 ], [ %10, %7 ]
  %17 = add i32 %16, -1
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %65, label %19

19:                                               ; preds = %11
  %20 = getelementptr i16, ptr %15, i32 1
  %21 = load i16, ptr %15, align 2
  %22 = icmp ult i16 %21, 128
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  switch i16 %21, label %26 [
    i16 10, label %65
    i16 0, label %65
    i16 34, label %24
  ]

24:                                               ; preds = %23
  %25 = xor i1 %12, true
  br label %34

26:                                               ; preds = %23
  br i1 %12, label %34, label %27

27:                                               ; preds = %26
  %28 = zext i16 %21 to i32
  %29 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 32
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i32 %13, i32 %14
  br label %34

34:                                               ; preds = %27, %26, %24
  %35 = phi i32 [ %13, %24 ], [ %13, %26 ], [ %33, %27 ]
  %36 = phi i1 [ %25, %24 ], [ true, %26 ], [ false, %27 ]
  %37 = add nsw i32 %14, 1
  br label %56

38:                                               ; preds = %19
  %39 = icmp ugt i16 %21, 2047
  %40 = select i1 %39, i32 3, i32 2
  %41 = add nsw i32 %40, %14
  %42 = and i16 %21, -1024
  %43 = icmp eq i16 %42, -10240
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = icmp eq i32 %17, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = add i32 %41, -3
  br label %56

48:                                               ; preds = %44
  %49 = load i16, ptr %20, align 2
  %50 = and i16 %49, -1024
  %51 = icmp eq i16 %50, -9216
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = add nsw i32 %41, 1
  %54 = add i32 %16, -2
  %55 = getelementptr i16, ptr %15, i32 2
  br label %56

56:                                               ; preds = %52, %48, %46, %38, %34
  %57 = phi i32 [ %17, %34 ], [ 0, %46 ], [ %54, %52 ], [ %17, %48 ], [ %17, %38 ]
  %58 = phi ptr [ %20, %34 ], [ %20, %46 ], [ %55, %52 ], [ %20, %48 ], [ %20, %38 ]
  %59 = phi i32 [ %37, %34 ], [ %47, %46 ], [ %53, %52 ], [ %41, %48 ], [ %41, %38 ]
  %60 = phi i32 [ %35, %34 ], [ %13, %46 ], [ %13, %52 ], [ %13, %48 ], [ %13, %38 ]
  %61 = phi i1 [ %36, %34 ], [ %12, %46 ], [ %12, %52 ], [ %12, %48 ], [ %12, %38 ]
  %62 = icmp slt i32 %59, 1024
  br i1 %62, label %11, label %63

63:                                               ; preds = %56
  %64 = tail call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.14, i32 noundef %60) #9
  br label %65

65:                                               ; preds = %63, %23, %23, %11, %2
  %66 = phi i32 [ %60, %63 ], [ 0, %2 ], [ %14, %11 ], [ %14, %23 ], [ %14, %23 ]
  %67 = add i32 %66, 1
  %68 = load ptr, ptr @efi_system_table, align 4
  %69 = getelementptr inbounds %struct.anon.1, ptr %68, i32 0, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.anon.5, ptr %70, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 %72(i32 noundef 2, i32 noundef %67, ptr noundef nonnull %3) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load i32, ptr %3, align 4
  %77 = inttoptr i32 %76 to ptr
  %78 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %77, i32 noundef %67, ptr noundef nonnull @.str.15, i32 noundef %66, ptr noundef %5) #7
  store i32 %67, ptr %1, align 4
  %79 = load i32, ptr %3, align 4
  %80 = inttoptr i32 %79 to ptr
  br label %81

81:                                               ; preds = %75, %65
  %82 = phi ptr [ %80, %75 ], [ null, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret ptr %82
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @snprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_exit_boot_services(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = tail call i32 @efi_get_memory_map(ptr noundef %1) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %69

7:                                                ; preds = %4
  %8 = tail call i32 %3(ptr noundef %1, ptr noundef %2) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %7
  %11 = load i1, ptr @efi_disable_pci_dma, align 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @efi_pci_disable_bridge_busmaster() #7
  br label %13

13:                                               ; preds = %12, %10
  %14 = load ptr, ptr @efi_system_table, align 4
  %15 = getelementptr inbounds %struct.anon.1, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.anon.5, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.efi_boot_memmap, ptr %1, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 %18(ptr noundef %0, i32 noundef %21) #7
  %23 = icmp eq i32 %22, -2147483646
  br i1 %23, label %24, label %57

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.efi_boot_memmap, ptr %1, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.efi_boot_memmap, ptr %1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  store i32 %27, ptr %29, align 4
  %30 = load ptr, ptr @efi_system_table, align 4
  %31 = getelementptr inbounds %struct.anon.1, ptr %30, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.anon.5, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %28, align 4
  %36 = load ptr, ptr %1, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %19, align 4
  %39 = getelementptr inbounds %struct.efi_boot_memmap, ptr %1, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.efi_boot_memmap, ptr %1, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %34(ptr noundef %35, ptr noundef %37, ptr noundef %38, ptr noundef %40, ptr noundef %42) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %24
  %46 = tail call i32 %3(ptr noundef %1, ptr noundef %2) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load ptr, ptr @efi_system_table, align 4
  %50 = getelementptr inbounds %struct.anon.1, ptr %49, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.anon.5, ptr %51, i32 0, i32 27
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %19, align 4
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 %53(ptr noundef %0, i32 noundef %55) #7
  br label %57

57:                                               ; preds = %48, %13
  %58 = phi i32 [ %56, %48 ], [ %22, %13 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %69

60:                                               ; preds = %7
  %61 = load ptr, ptr @efi_system_table, align 4
  %62 = getelementptr inbounds %struct.anon.1, ptr %61, i32 0, i32 10
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.anon.5, ptr %63, i32 0, i32 7
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %1, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %65(ptr noundef %67) #7
  br label %69

69:                                               ; preds = %60, %57, %45, %24, %4
  %70 = phi i32 [ %5, %4 ], [ %8, %60 ], [ %43, %24 ], [ %46, %45 ], [ %58, %57 ]
  br label %71

71:                                               ; preds = %69, %57
  %72 = phi i32 [ %70, %69 ], [ 0, %57 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_get_memory_map(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_pci_disable_bridge_busmaster() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @get_efi_config_table([4 x i32] %0) local_unnamed_addr #1 {
  %2 = alloca %struct.guid_t, align 4
  %3 = alloca %struct.guid_t, align 4
  %4 = load ptr, ptr @efi_system_table, align 4
  %5 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %13 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  %14 = extractvalue [4 x i32] %0, 0
  %15 = extractvalue [4 x i32] %0, 1
  %16 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %17 = extractvalue [4 x i32] %0, 2
  %18 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %19 = extractvalue [4 x i32] %0, 3
  %20 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  br label %21

21:                                               ; preds = %38, %8
  %22 = phi i32 [ 0, %8 ], [ %40, %38 ]
  %23 = phi i32 [ %10, %8 ], [ %39, %38 ]
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds [4 x i32], ptr %24, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds [4 x i32], ptr %24, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds [4 x i32], ptr %24, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  store i32 %25, ptr %2, align 4
  store i32 %27, ptr %11, align 4
  store i32 %29, ptr %12, align 4
  store i32 %31, ptr %13, align 4
  store i32 %14, ptr %3, align 4
  store i32 %15, ptr %16, align 4
  store i32 %17, ptr %18, align 4
  store i32 %19, ptr %20, align 4
  %32 = call i32 @memcmp(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 16) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = inttoptr i32 %23 to ptr
  %36 = getelementptr inbounds %struct.anon.9, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  br label %42

38:                                               ; preds = %21
  %39 = add i32 %23, 20
  %40 = add nuw nsw i32 %22, 1
  %41 = icmp eq i32 %40, %6
  br i1 %41, label %42, label %21

42:                                               ; preds = %38, %34, %1
  %43 = phi ptr [ %37, %34 ], [ null, %1 ], [ null, %38 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_load_initrd(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.guid_t, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.guid_t, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = load i1, ptr @efi_noinitrd, align 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, ptr %2, align 4
  store i32 0, ptr %1, align 4
  br label %94

16:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_load_initrd_dev_path.lf2_proto_guid, i32 16, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store ptr null, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store i32 0, ptr %11, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  store i32 0, ptr %12, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store ptr null, ptr %13, align 4, !annotation !9
  store ptr @initrd_dev_path, ptr %9, align 4
  %17 = load ptr, ptr @efi_system_table, align 4
  %18 = getelementptr inbounds %struct.anon.1, ptr %17, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.anon.5, ptr %19, i32 0, i32 21
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 %21(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %13) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %16
  %25 = load ptr, ptr @efi_system_table, align 4
  %26 = getelementptr inbounds %struct.anon.1, ptr %25, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.anon.5, ptr %27, i32 0, i32 17
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %13, align 4
  %31 = call i32 %29(ptr noundef %30, ptr noundef nonnull %8, ptr noundef nonnull %10) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %24
  %34 = load ptr, ptr %10, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %9, align 4
  %37 = call i32 %35(ptr noundef %34, ptr noundef %36, i1 noundef zeroext false, ptr noundef nonnull %12, ptr noundef null) #7
  %38 = icmp eq i32 %37, -2147483643
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load i32, ptr %12, align 4
  %41 = call i32 @efi_allocate_pages(i32 noundef %40, ptr noundef nonnull %11, i32 noundef %4) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load ptr, ptr %10, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %9, align 4
  %47 = load i32, ptr %11, align 4
  %48 = inttoptr i32 %47 to ptr
  %49 = call i32 %45(ptr noundef %44, ptr noundef %46, i1 noundef zeroext false, ptr noundef nonnull %12, ptr noundef %48) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, ptr %12, align 4
  %53 = load i32, ptr %11, align 4
  call void @efi_free(i32 noundef %52, i32 noundef %53) #7
  br label %60

54:                                               ; preds = %43
  %55 = load i32, ptr %11, align 4
  store i32 %55, ptr %1, align 4
  %56 = load i32, ptr %12, align 4
  store i32 %56, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  %57 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.16) #9
  %58 = load i32, ptr %2, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %94, label %64

60:                                               ; preds = %51, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  br label %91

61:                                               ; preds = %39, %24, %16
  %62 = phi i32 [ %22, %16 ], [ %31, %24 ], [ %41, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  %63 = icmp eq i32 %62, -2147483634
  br i1 %63, label %86, label %91

64:                                               ; preds = %54
  %65 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_measure_initrd.tcg2_guid, i32 16, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store ptr null, ptr %7, align 4
  %66 = load ptr, ptr @efi_system_table, align 4
  %67 = getelementptr inbounds %struct.anon.1, ptr %66, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.anon.5, ptr %68, i32 0, i32 38
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %7) #7
  %72 = load ptr, ptr %7, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %85, label %74

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.anon.13, ptr %72, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = zext i32 %65 to i64
  %78 = zext i32 %58 to i64
  %79 = call i32 %76(ptr noundef nonnull %72, i64 noundef 0, i64 noundef %77, i64 noundef %78, ptr noundef nonnull @initrd_tcg2_event) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.19, i32 noundef %79) #7
  br label %85

83:                                               ; preds = %74
  %84 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.20, i32 noundef 9) #7
  br label %85

85:                                               ; preds = %83, %81, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  br label %94

86:                                               ; preds = %61
  store i32 0, ptr %2, align 4
  store i32 0, ptr %1, align 4
  %87 = load i32, ptr %2, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.17) #9
  br label %94

91:                                               ; preds = %61, %60
  %92 = phi i32 [ %62, %61 ], [ -2147483647, %60 ]
  %93 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.18, i32 noundef %92) #9
  store i32 0, ptr %2, align 4
  store i32 0, ptr %1, align 4
  br label %94

94:                                               ; preds = %91, %89, %86, %85, %54, %15
  %95 = phi i32 [ 0, %15 ], [ %92, %91 ], [ 0, %85 ], [ 0, %54 ], [ 0, %89 ], [ 0, %86 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_wait_for_key(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca [2 x ptr], align 8
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load ptr, ptr @efi_system_table, align 4
  %7 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %56, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.anon.2, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %3, align 8
  %13 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.anon.5, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(i32 noundef -2147483648, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %4) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %10
  %20 = load ptr, ptr @efi_system_table, align 4
  %21 = getelementptr inbounds %struct.anon.1, ptr %20, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.anon.5, ptr %22, i32 0, i32 9
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %4, align 4
  %26 = zext i32 %0 to i64
  %27 = mul nuw nsw i64 %26, 10
  %28 = call i32 %24(ptr noundef %25, i32 noundef 2, i64 noundef %27) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %19
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr inbounds ptr, ptr %3, i32 1
  store ptr %31, ptr %32, align 4
  %33 = load ptr, ptr @efi_system_table, align 4
  %34 = getelementptr inbounds %struct.anon.1, ptr %33, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.anon.5, ptr %35, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %5) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load i32, ptr %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.anon.2, ptr %8, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 %45(ptr noundef nonnull %8, ptr noundef %1) #7
  br label %47

47:                                               ; preds = %43, %40, %30
  %48 = phi i32 [ %46, %43 ], [ %38, %30 ], [ -2147483630, %40 ]
  %49 = load ptr, ptr @efi_system_table, align 4
  %50 = getelementptr inbounds %struct.anon.1, ptr %49, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.anon.5, ptr %51, i32 0, i32 12
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %4, align 4
  %55 = call i32 %53(ptr noundef %54) #7
  br label %56

56:                                               ; preds = %47, %19, %10, %2
  %57 = phi i32 [ %48, %47 ], [ -2147483645, %2 ], [ %17, %10 ], [ %28, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strncmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_allocate_pages(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_free(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nobuiltin nounwind optsize "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin optsize "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
