; ModuleID = '/llk/IR/drivers/soc/qcom/mdt_loader.c_pt.bc'
source_filename = "../drivers/soc/qcom/mdt_loader.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_mdt_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_mdt_get_size\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_mdt_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_mdt_read_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_mdt_read_metadata\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_mdt_read_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_mdt_load:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_mdt_load\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_mdt_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_mdt_load_no_init:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_mdt_load_no_init\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_mdt_load_no_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_qcom_mdt_get_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_mdt_get_size = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_mdt_get_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_mdt_get_size to i32), ptr @__kstrtab_qcom_mdt_get_size, ptr @__kstrtabns_qcom_mdt_get_size }, section "___ksymtab_gpl+qcom_mdt_get_size", align 4
@__kstrtab_qcom_mdt_read_metadata = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_mdt_read_metadata = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_mdt_read_metadata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_mdt_read_metadata to i32), ptr @__kstrtab_qcom_mdt_read_metadata, ptr @__kstrtabns_qcom_mdt_read_metadata }, section "___ksymtab_gpl+qcom_mdt_read_metadata", align 4
@__kstrtab_qcom_mdt_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_mdt_load = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_mdt_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_mdt_load to i32), ptr @__kstrtab_qcom_mdt_load, ptr @__kstrtabns_qcom_mdt_load }, section "___ksymtab_gpl+qcom_mdt_load", align 4
@__kstrtab_qcom_mdt_load_no_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_mdt_load_no_init = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_mdt_load_no_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_mdt_load_no_init to i32), ptr @__kstrtab_qcom_mdt_load_no_init, ptr @__kstrtabns_qcom_mdt_load_no_init }, section "___ksymtab_gpl+qcom_mdt_load_no_init", align 4
@__UNIQUE_ID_description166 = internal constant [52 x i8] c"description=Firmware parser for Qualcomm MDT format\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [39 x i8] c"error %d reading firmware %s metadata\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"error %d initializing firmware %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"error %d setting up firmware %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"segment outside memory range\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"refusing to load segment %d with p_filesz > p_memsz\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"file %s segment %d would be truncated\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"b%02d\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"error %d loading %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"failed to load segment %d from truncated file %s\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description166, ptr @__UNIQUE_ID_license167, ptr @__ksymtab_qcom_mdt_get_size, ptr @__ksymtab_qcom_mdt_load, ptr @__ksymtab_qcom_mdt_load_no_init, ptr @__ksymtab_qcom_mdt_read_metadata], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @qcom_mdt_get_size(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.elf32_hdr, ptr %3, i32 1
  %5 = getelementptr inbounds %struct.elf32_hdr, ptr %3, i32 0, i32 10
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = icmp eq i16 %6, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %34, %1
  %10 = phi i32 [ %37, %34 ], [ 0, %1 ]
  %11 = phi i32 [ %36, %34 ], [ 0, %1 ]
  %12 = phi i32 [ %35, %34 ], [ -1, %1 ]
  %13 = getelementptr %struct.elf32_phdr, ptr %4, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.elf32_phdr, ptr %13, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 117440512
  %20 = icmp eq i32 %19, 33554432
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.elf32_phdr, ptr %13, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.elf32_phdr, ptr %13, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %12)
  %29 = add i32 %23, %27
  %30 = icmp ugt i32 %29, %11
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = add i32 %29, 4095
  %33 = and i32 %32, -4096
  br label %34

34:                                               ; preds = %31, %25, %21, %16, %9
  %35 = phi i32 [ %28, %31 ], [ %28, %25 ], [ %12, %21 ], [ %12, %9 ], [ %12, %16 ]
  %36 = phi i32 [ %33, %31 ], [ %11, %25 ], [ %11, %21 ], [ %11, %9 ], [ %11, %16 ]
  %37 = add nuw nsw i32 %10, 1
  %38 = icmp eq i32 %37, %7
  br i1 %38, label %39, label %9

39:                                               ; preds = %34, %1
  %40 = phi i32 [ -1, %1 ], [ %35, %34 ]
  %41 = phi i32 [ 0, %1 ], [ %36, %34 ]
  %42 = icmp ugt i32 %41, %40
  %43 = sub i32 %41, %40
  %44 = select i1 %42, i32 %43, i32 -22
  ret i32 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @qcom_mdt_read_metadata(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elf32_hdr, ptr %4, i32 0, i32 10
  %6 = load i16, ptr %5, align 4
  %7 = icmp ult i16 %6, 2
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.elf32_hdr, ptr %4, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = getelementptr %struct.elf32_hdr, ptr %4, i32 2, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 117440512
  %16 = icmp eq i32 %15, 33554432
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = getelementptr %struct.elf32_hdr, ptr %4, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.elf32_hdr, ptr %4, i32 1, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %3, align 4
  %27 = load i32, ptr %0, align 4
  %28 = icmp eq i32 %22, %27
  %29 = getelementptr %struct.elf32_hdr, ptr %4, i32 1, i32 7
  %30 = select i1 %28, ptr %18, ptr %29
  %31 = load i32, ptr %30, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %23, ptr align 1 %26, i32 %19, i1 false)
  %32 = getelementptr i8, ptr %23, i32 %19
  %33 = getelementptr i8, ptr %26, i32 %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %33, i32 %21, i1 false)
  store i32 %22, ptr %1, align 4
  br label %34

34:                                               ; preds = %25, %17, %12, %8, %2
  %35 = phi ptr [ %23, %25 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %12 ], [ inttoptr (i32 -12 to ptr), %17 ]
  ret ptr %35
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_mdt_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #2 {
  %9 = tail call fastcc i32 @__qcom_mdt_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i1 noundef zeroext true)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__qcom_mdt_load(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef writeonly %7, i1 noundef zeroext %8) unnamed_addr #2 {
  %10 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  store ptr null, ptr %10, align 4, !annotation !8
  %11 = icmp ne ptr %1, null
  %12 = icmp ne ptr %4, null
  %13 = and i1 %11, %12
  %14 = icmp ne i32 %5, 0
  %15 = and i1 %13, %14
  %16 = icmp ne i32 %6, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %200

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.elf32_hdr, ptr %20, i32 1
  %22 = tail call i32 @strlen(ptr noundef %2)
  %23 = icmp ult i32 %22, 5
  br i1 %23, label %200, label %24

24:                                               ; preds = %18
  %25 = tail call noalias ptr @kstrdup(ptr noundef %2, i32 noundef 3264) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %200, label %27

27:                                               ; preds = %24
  br i1 %8, label %28, label %67

28:                                               ; preds = %27
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr inbounds %struct.elf32_hdr, ptr %29, i32 0, i32 10
  %31 = load i16, ptr %30, align 4
  %32 = icmp ult i16 %31, 2
  br i1 %32, label %60, label %33

33:                                               ; preds = %28
  %34 = getelementptr %struct.elf32_hdr, ptr %29, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %60, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.elf32_hdr, ptr %29, i32 2, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 117440512
  %41 = icmp eq i32 %40, 33554432
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = getelementptr %struct.elf32_hdr, ptr %29, i32 1, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.elf32_hdr, ptr %29, i32 1, i32 12
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 3264) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %19, align 4
  %52 = load i32, ptr %1, align 4
  %53 = icmp eq i32 %47, %52
  %54 = getelementptr %struct.elf32_hdr, ptr %29, i32 1, i32 7
  %55 = select i1 %53, ptr %43, ptr %54
  %56 = load i32, ptr %55, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %48, ptr align 1 %51, i32 %44, i1 false) #12
  %57 = getelementptr i8, ptr %48, i32 %44
  %58 = getelementptr i8, ptr %51, i32 %56
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %57, ptr align 1 %58, i32 %46, i1 false) #12
  %59 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %63

60:                                               ; preds = %50, %42, %37, %33, %28
  %61 = phi ptr [ %48, %50 ], [ inttoptr (i32 -12 to ptr), %42 ], [ inttoptr (i32 -22 to ptr), %37 ], [ inttoptr (i32 -22 to ptr), %33 ], [ inttoptr (i32 -22 to ptr), %28 ]
  %62 = ptrtoint ptr %61 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %62, ptr noundef nonnull %25) #13
  br label %198

63:                                               ; preds = %50
  %64 = tail call i32 @qcom_scm_pas_init_image(i32 noundef %3, ptr noundef nonnull %48, i32 noundef %47) #12
  tail call void @kfree(ptr noundef nonnull %48) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %64, ptr noundef nonnull %25) #13
  br label %198

67:                                               ; preds = %63, %27
  %68 = getelementptr inbounds %struct.elf32_hdr, ptr %20, i32 0, i32 10
  %69 = load i16, ptr %68, align 4
  %70 = zext i16 %69 to i32
  %71 = icmp eq i16 %69, 0
  br i1 %71, label %193, label %72

72:                                               ; preds = %101, %67
  %73 = phi i32 [ %105, %101 ], [ 0, %67 ]
  %74 = phi i1 [ %104, %101 ], [ false, %67 ]
  %75 = phi i32 [ %103, %101 ], [ 0, %67 ]
  %76 = phi i32 [ %102, %101 ], [ -1, %67 ]
  %77 = getelementptr %struct.elf32_phdr, ptr %21, i32 %73
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %101

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.elf32_phdr, ptr %77, i32 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 117440512
  %84 = icmp eq i32 %83, 33554432
  br i1 %84, label %101, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.elf32_phdr, ptr %77, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = and i32 %82, 134217728
  %91 = icmp ne i32 %90, 0
  %92 = select i1 %91, i1 true, i1 %74
  %93 = getelementptr inbounds %struct.elf32_phdr, ptr %77, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = tail call i32 @llvm.umin.i32(i32 %94, i32 %76)
  %96 = add i32 %87, %94
  %97 = icmp ugt i32 %96, %75
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = add i32 %96, 4095
  %100 = and i32 %99, -4096
  br label %101

101:                                              ; preds = %98, %89, %85, %80, %72
  %102 = phi i32 [ %95, %98 ], [ %95, %89 ], [ %76, %85 ], [ %76, %72 ], [ %76, %80 ]
  %103 = phi i32 [ %100, %98 ], [ %75, %89 ], [ %75, %85 ], [ %75, %72 ], [ %75, %80 ]
  %104 = phi i1 [ %92, %98 ], [ %92, %89 ], [ %74, %85 ], [ %74, %72 ], [ %74, %80 ]
  %105 = add nuw nsw i32 %73, 1
  %106 = icmp eq i32 %105, %70
  br i1 %106, label %107, label %72

107:                                              ; preds = %101
  %108 = and i1 %104, %8
  %109 = select i1 %104, i32 %102, i32 %5
  br i1 %108, label %110, label %118

110:                                              ; preds = %107
  %111 = sub i32 %103, %102
  %112 = tail call i32 @qcom_scm_pas_mem_setup(i32 noundef %3, i32 noundef %5, i32 noundef %111) #12
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i16, ptr %68, align 4
  %116 = icmp eq i16 %115, 0
  br label %118

117:                                              ; preds = %110
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %112, ptr noundef nonnull %25) #13
  br label %198

118:                                              ; preds = %114, %107
  %119 = phi i1 [ %116, %114 ], [ false, %107 ]
  %120 = phi i32 [ %102, %114 ], [ %109, %107 ]
  br i1 %119, label %193, label %121

121:                                              ; preds = %118
  %122 = getelementptr i8, ptr %25, i32 %22
  %123 = getelementptr i8, ptr %122, i32 -3
  br label %124

124:                                              ; preds = %188, %121
  %125 = phi i32 [ 0, %121 ], [ %189, %188 ]
  %126 = getelementptr %struct.elf32_phdr, ptr %21, i32 %125
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %188

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.elf32_phdr, ptr %126, i32 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, 117440512
  %133 = icmp eq i32 %132, 33554432
  br i1 %133, label %188, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.elf32_phdr, ptr %126, i32 0, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %188, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.elf32_phdr, ptr %126, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = sub i32 %140, %120
  %142 = icmp slt i32 %141, 0
  %143 = add i32 %136, %141
  %144 = icmp ugt i32 %143, %6
  %145 = select i1 %142, i1 true, i1 %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #13
  br label %193

147:                                              ; preds = %138
  %148 = getelementptr inbounds %struct.elf32_phdr, ptr %126, i32 0, i32 4
  %149 = load i32, ptr %148, align 4
  %150 = icmp ugt i32 %149, %136
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %125) #13
  br label %193

152:                                              ; preds = %147
  %153 = getelementptr i8, ptr %4, i32 %141
  %154 = icmp eq i32 %149, 0
  br i1 %154, label %181, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.elf32_phdr, ptr %126, i32 0, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = load i32, ptr %1, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = add i32 %157, %149
  %162 = icmp ugt i32 %161, %158
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %25, i32 noundef %125) #13
  br label %193

164:                                              ; preds = %160
  %165 = load ptr, ptr %19, align 4
  %166 = getelementptr i8, ptr %165, i32 %157
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %153, ptr align 1 %166, i32 %149, i1 false)
  br label %181

167:                                              ; preds = %155
  %168 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %123, ptr noundef nonnull @.str.6, i32 noundef %125)
  %169 = load i32, ptr %148, align 4
  %170 = call i32 @request_firmware_into_buf(ptr noundef nonnull %10, ptr noundef nonnull %25, ptr noundef %0, ptr noundef %153, i32 noundef %169) #12
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %170, ptr noundef nonnull %25) #13
  br label %193

173:                                              ; preds = %167
  %174 = load ptr, ptr %10, align 4
  %175 = load i32, ptr %174, align 4
  %176 = load i32, ptr %148, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %125, ptr noundef nonnull %25) #13
  %179 = load ptr, ptr %10, align 4
  call void @release_firmware(ptr noundef %179) #12
  br label %193

180:                                              ; preds = %173
  call void @release_firmware(ptr noundef %174) #12
  br label %181

181:                                              ; preds = %180, %164, %152
  %182 = load i32, ptr %135, align 4
  %183 = load i32, ptr %148, align 4
  %184 = icmp ugt i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = getelementptr i8, ptr %153, i32 %183
  %187 = sub i32 %182, %183
  call void @llvm.memset.p0.i32(ptr align 1 %186, i8 0, i32 %187, i1 false)
  br label %188

188:                                              ; preds = %185, %181, %134, %129, %124
  %189 = add nuw nsw i32 %125, 1
  %190 = load i16, ptr %68, align 4
  %191 = zext i16 %190 to i32
  %192 = icmp ult i32 %189, %191
  br i1 %192, label %124, label %193

193:                                              ; preds = %188, %178, %172, %163, %151, %146, %118, %67
  %194 = phi i32 [ %120, %146 ], [ %120, %151 ], [ %120, %163 ], [ %120, %172 ], [ %120, %178 ], [ %120, %118 ], [ %5, %67 ], [ %120, %188 ]
  %195 = phi i32 [ -22, %146 ], [ -22, %151 ], [ -22, %163 ], [ %170, %172 ], [ -22, %178 ], [ 0, %118 ], [ 0, %67 ], [ 0, %188 ]
  %196 = icmp eq ptr %7, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  store i32 %194, ptr %7, align 4
  br label %198

198:                                              ; preds = %197, %193, %117, %66, %60
  %199 = phi i32 [ %62, %60 ], [ %64, %66 ], [ %112, %117 ], [ %195, %197 ], [ %195, %193 ]
  call void @kfree(ptr noundef nonnull %25) #12
  br label %200

200:                                              ; preds = %198, %24, %18, %9
  %201 = phi i32 [ %199, %198 ], [ -22, %9 ], [ -22, %18 ], [ -12, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  ret i32 %201
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_mdt_load_no_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #2 {
  %9 = tail call fastcc i32 @__qcom_mdt_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i1 noundef zeroext false)
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_init_image(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_mem_setup(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_into_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!8 = !{!"auto-init"}
