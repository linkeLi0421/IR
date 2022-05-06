; ModuleID = '/llk/IR/lib/mpi/mpi-add.c_pt.bc'
source_filename = "../lib/mpi/mpi-add.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_add:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_add\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_addm:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_addm\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_addm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_subm:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_subm\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_subm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_add = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_add to i32), ptr @__kstrtab_mpi_add, ptr @__kstrtabns_mpi_add }, section "___ksymtab_gpl+mpi_add", align 4
@__kstrtab_mpi_addm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_addm = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_addm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_addm to i32), ptr @__kstrtab_mpi_addm, ptr @__kstrtabns_mpi_addm }, section "___ksymtab_gpl+mpi_addm", align 4
@__kstrtab_mpi_subm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_subm = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_subm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_subm to i32), ptr @__kstrtab_mpi_subm, ptr @__kstrtabns_mpi_subm }, section "___ksymtab_gpl+mpi_subm", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_mpi_add, ptr @__ksymtab_mpi_addm, ptr @__ksymtab_mpi_subm], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_add_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %5, 1
  %9 = load i32, ptr %0, align 4
  %10 = icmp slt i32 %9, %8
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %8) #3
  br label %13

13:                                               ; preds = %11, %3
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq i32 %5, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  store i32 %2, ptr %17, align 4
  %20 = icmp ne i32 %2, 0
  %21 = zext i1 %20 to i32
  br label %107

22:                                               ; preds = %13
  %23 = icmp eq i32 %7, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %22
  %25 = getelementptr i32, ptr %15, i32 1
  %26 = load i32, ptr %15, align 4
  %27 = add i32 %26, %2
  %28 = getelementptr i32, ptr %17, i32 1
  store i32 %27, ptr %17, align 4
  %29 = icmp ult i32 %27, %26
  br i1 %29, label %30, label %42

30:                                               ; preds = %36, %24
  %31 = phi ptr [ %40, %36 ], [ %28, %24 ]
  %32 = phi ptr [ %37, %36 ], [ %25, %24 ]
  %33 = phi i32 [ %34, %36 ], [ %5, %24 ]
  %34 = add i32 %33, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %30
  %37 = getelementptr i32, ptr %32, i32 1
  %38 = load i32, ptr %32, align 4
  %39 = add i32 %38, 1
  %40 = getelementptr i32, ptr %31, i32 1
  store i32 %39, ptr %31, align 4
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %30, label %42

42:                                               ; preds = %36, %24
  %43 = phi ptr [ %28, %24 ], [ %40, %36 ]
  %44 = phi ptr [ %25, %24 ], [ %37, %36 ]
  %45 = phi i32 [ %5, %24 ], [ %34, %36 ]
  %46 = icmp eq ptr %43, %44
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = add i32 %45, -1
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %50, %47
  %51 = phi i32 [ %55, %50 ], [ 0, %47 ]
  %52 = getelementptr i32, ptr %44, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i32, ptr %43, i32 %51
  store i32 %53, ptr %54, align 4
  %55 = add nuw nsw i32 %51, 1
  %56 = icmp eq i32 %55, %48
  br i1 %56, label %57, label %50

57:                                               ; preds = %50, %47, %42, %30
  %58 = phi i32 [ 0, %42 ], [ 0, %47 ], [ 0, %50 ], [ 1, %30 ]
  %59 = getelementptr i32, ptr %17, i32 %5
  store i32 %58, ptr %59, align 4
  %60 = add i32 %58, %5
  br label %107

61:                                               ; preds = %22
  %62 = icmp eq i32 %5, 1
  %63 = load i32, ptr %15, align 4
  %64 = icmp ult i32 %63, %2
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = sub i32 %2, %63
  store i32 %67, ptr %17, align 4
  br label %107

68:                                               ; preds = %61
  %69 = getelementptr i32, ptr %15, i32 1
  %70 = sub i32 %63, %2
  %71 = getelementptr i32, ptr %17, i32 1
  store i32 %70, ptr %17, align 4
  %72 = icmp ult i32 %63, %2
  br i1 %72, label %73, label %85

73:                                               ; preds = %79, %68
  %74 = phi ptr [ %83, %79 ], [ %71, %68 ]
  %75 = phi ptr [ %80, %79 ], [ %69, %68 ]
  %76 = phi i32 [ %77, %79 ], [ %5, %68 ]
  %77 = add i32 %76, -1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %73
  %80 = getelementptr i32, ptr %75, i32 1
  %81 = load i32, ptr %75, align 4
  %82 = add i32 %81, -1
  %83 = getelementptr i32, ptr %74, i32 1
  store i32 %82, ptr %74, align 4
  %84 = icmp eq i32 %81, 0
  br i1 %84, label %73, label %85

85:                                               ; preds = %79, %68
  %86 = phi ptr [ %71, %68 ], [ %83, %79 ]
  %87 = phi ptr [ %69, %68 ], [ %80, %79 ]
  %88 = phi i32 [ %5, %68 ], [ %77, %79 ]
  %89 = icmp eq ptr %86, %87
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = add i32 %88, -1
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %93, %90
  %94 = phi i32 [ %98, %93 ], [ 0, %90 ]
  %95 = getelementptr i32, ptr %87, i32 %94
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr i32, ptr %86, i32 %94
  store i32 %96, ptr %97, align 4
  %98 = add nuw nsw i32 %94, 1
  %99 = icmp eq i32 %98, %91
  br i1 %99, label %100, label %93

100:                                              ; preds = %93, %90, %85, %73
  %101 = add i32 %5, -1
  %102 = getelementptr i32, ptr %17, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  %105 = sext i1 %104 to i32
  %106 = add i32 %5, %105
  br label %107

107:                                              ; preds = %100, %66, %57, %19
  %108 = phi i32 [ 1, %66 ], [ %106, %100 ], [ %60, %57 ], [ %21, %19 ]
  %109 = phi i32 [ 0, %66 ], [ 1, %100 ], [ 0, %57 ], [ 0, %19 ]
  %110 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %108, ptr %110, align 4
  %111 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %109, ptr %111, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_add(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %7, 1
  %15 = load i32, ptr %0, align 4
  %16 = icmp slt i32 %15, %14
  br i1 %16, label %25, label %34

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %5, 1
  %23 = load i32, ptr %0, align 4
  %24 = icmp slt i32 %23, %22
  br i1 %24, label %25, label %34

25:                                               ; preds = %17, %9
  %26 = phi i32 [ %14, %9 ], [ %22, %17 ]
  %27 = phi ptr [ %2, %9 ], [ %1, %17 ]
  %28 = phi ptr [ %1, %9 ], [ %2, %17 ]
  %29 = phi i32 [ %7, %9 ], [ %5, %17 ]
  %30 = phi i32 [ %5, %9 ], [ %7, %17 ]
  %31 = phi i32 [ %11, %9 ], [ %19, %17 ]
  %32 = phi i32 [ %13, %9 ], [ %21, %17 ]
  %33 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %26) #3
  br label %34

34:                                               ; preds = %25, %17, %9
  %35 = phi ptr [ %2, %9 ], [ %1, %17 ], [ %27, %25 ]
  %36 = phi ptr [ %1, %9 ], [ %2, %17 ], [ %28, %25 ]
  %37 = phi i32 [ %7, %9 ], [ %5, %17 ], [ %29, %25 ]
  %38 = phi i32 [ %5, %9 ], [ %7, %17 ], [ %30, %25 ]
  %39 = phi i32 [ %11, %9 ], [ %19, %17 ], [ %31, %25 ]
  %40 = phi i32 [ %13, %9 ], [ %21, %17 ], [ %32, %25 ]
  %41 = getelementptr inbounds %struct.gcry_mpi, ptr %36, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.gcry_mpi, ptr %35, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq i32 %38, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %34
  %49 = icmp sgt i32 %37, 0
  br i1 %49, label %50, label %186

50:                                               ; preds = %50, %48
  %51 = phi i32 [ %55, %50 ], [ 0, %48 ]
  %52 = getelementptr i32, ptr %44, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i32, ptr %46, i32 %51
  store i32 %53, ptr %54, align 4
  %55 = add nuw nsw i32 %51, 1
  %56 = icmp eq i32 %55, %37
  br i1 %56, label %186, label %50

57:                                               ; preds = %34
  %58 = icmp eq i32 %39, %40
  br i1 %58, label %141, label %59

59:                                               ; preds = %57
  %60 = icmp eq i32 %37, %38
  br i1 %60, label %108, label %61

61:                                               ; preds = %59
  %62 = tail call i32 @mpihelp_sub_n(ptr noundef %46, ptr noundef %44, ptr noundef %42, i32 noundef %38) #3
  %63 = sub i32 %37, %38
  %64 = getelementptr i32, ptr %46, i32 %38
  %65 = getelementptr i32, ptr %44, i32 %38
  %66 = getelementptr i32, ptr %65, i32 1
  %67 = load i32, ptr %65, align 4
  %68 = sub i32 %67, %62
  %69 = getelementptr i32, ptr %64, i32 1
  store i32 %68, ptr %64, align 4
  %70 = icmp ult i32 %67, %62
  br i1 %70, label %71, label %83

71:                                               ; preds = %77, %61
  %72 = phi ptr [ %81, %77 ], [ %69, %61 ]
  %73 = phi ptr [ %78, %77 ], [ %66, %61 ]
  %74 = phi i32 [ %75, %77 ], [ %63, %61 ]
  %75 = add i32 %74, -1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %71
  %78 = getelementptr i32, ptr %73, i32 1
  %79 = load i32, ptr %73, align 4
  %80 = add i32 %79, -1
  %81 = getelementptr i32, ptr %72, i32 1
  store i32 %80, ptr %72, align 4
  %82 = icmp eq i32 %79, 0
  br i1 %82, label %71, label %83

83:                                               ; preds = %77, %61
  %84 = phi ptr [ %69, %61 ], [ %81, %77 ]
  %85 = phi ptr [ %66, %61 ], [ %78, %77 ]
  %86 = phi i32 [ %63, %61 ], [ %75, %77 ]
  %87 = icmp eq ptr %84, %85
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = add i32 %86, -1
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %91, %88
  %92 = phi i32 [ %96, %91 ], [ 0, %88 ]
  %93 = getelementptr i32, ptr %85, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr i32, ptr %84, i32 %92
  store i32 %94, ptr %95, align 4
  %96 = add nuw nsw i32 %92, 1
  %97 = icmp eq i32 %96, %89
  br i1 %97, label %98, label %91

98:                                               ; preds = %91, %88, %83, %71
  %99 = call i32 @llvm.smin.i32(i32 %37, i32 0)
  br label %100

100:                                              ; preds = %103, %98
  %101 = phi i32 [ %37, %98 ], [ %104, %103 ]
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %186

103:                                              ; preds = %100
  %104 = add nsw i32 %101, -1
  %105 = getelementptr i32, ptr %46, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %100, label %186

108:                                              ; preds = %59
  %109 = tail call i32 @mpihelp_cmp(ptr noundef %44, ptr noundef %42, i32 noundef %37) #3
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = tail call i32 @mpihelp_sub_n(ptr noundef %46, ptr noundef %42, ptr noundef %44, i32 noundef %37) #3
  %113 = call i32 @llvm.smin.i32(i32 %37, i32 0)
  br label %114

114:                                              ; preds = %117, %111
  %115 = phi i32 [ %37, %111 ], [ %118, %117 ]
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = add nsw i32 %115, -1
  %119 = getelementptr i32, ptr %46, i32 %118
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %114, label %122

122:                                              ; preds = %117, %114
  %123 = phi i32 [ %115, %117 ], [ %113, %114 ]
  %124 = icmp eq i32 %39, 0
  %125 = zext i1 %124 to i32
  br label %186

126:                                              ; preds = %108
  %127 = tail call i32 @mpihelp_sub_n(ptr noundef %46, ptr noundef %44, ptr noundef %42, i32 noundef %37) #3
  %128 = call i32 @llvm.smin.i32(i32 %37, i32 0)
  br label %129

129:                                              ; preds = %132, %126
  %130 = phi i32 [ %37, %126 ], [ %133, %132 ]
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = add nsw i32 %130, -1
  %134 = getelementptr i32, ptr %46, i32 %133
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %129, label %137

137:                                              ; preds = %132, %129
  %138 = phi i32 [ %130, %132 ], [ %128, %129 ]
  %139 = icmp ne i32 %39, 0
  %140 = zext i1 %139 to i32
  br label %186

141:                                              ; preds = %57
  %142 = tail call i32 @mpihelp_add_n(ptr noundef %46, ptr noundef %44, ptr noundef %42, i32 noundef %38) #3
  %143 = icmp eq i32 %37, %38
  br i1 %143, label %180, label %144

144:                                              ; preds = %141
  %145 = sub i32 %37, %38
  %146 = getelementptr i32, ptr %46, i32 %38
  %147 = getelementptr i32, ptr %44, i32 %38
  %148 = getelementptr i32, ptr %147, i32 1
  %149 = load i32, ptr %147, align 4
  %150 = add i32 %149, %142
  %151 = getelementptr i32, ptr %146, i32 1
  store i32 %150, ptr %146, align 4
  %152 = icmp ult i32 %150, %149
  br i1 %152, label %153, label %165

153:                                              ; preds = %159, %144
  %154 = phi ptr [ %163, %159 ], [ %151, %144 ]
  %155 = phi ptr [ %160, %159 ], [ %148, %144 ]
  %156 = phi i32 [ %157, %159 ], [ %145, %144 ]
  %157 = add i32 %156, -1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %180, label %159

159:                                              ; preds = %153
  %160 = getelementptr i32, ptr %155, i32 1
  %161 = load i32, ptr %155, align 4
  %162 = add i32 %161, 1
  %163 = getelementptr i32, ptr %154, i32 1
  store i32 %162, ptr %154, align 4
  %164 = icmp eq i32 %162, 0
  br i1 %164, label %153, label %165

165:                                              ; preds = %159, %144
  %166 = phi ptr [ %151, %144 ], [ %163, %159 ]
  %167 = phi ptr [ %148, %144 ], [ %160, %159 ]
  %168 = phi i32 [ %145, %144 ], [ %157, %159 ]
  %169 = icmp eq ptr %166, %167
  br i1 %169, label %180, label %170

170:                                              ; preds = %165
  %171 = add i32 %168, -1
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %173, %170
  %174 = phi i32 [ %178, %173 ], [ 0, %170 ]
  %175 = getelementptr i32, ptr %167, i32 %174
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr i32, ptr %166, i32 %174
  store i32 %176, ptr %177, align 4
  %178 = add nuw nsw i32 %174, 1
  %179 = icmp eq i32 %178, %171
  br i1 %179, label %180, label %173

180:                                              ; preds = %173, %170, %165, %153, %141
  %181 = phi i32 [ %142, %141 ], [ 0, %165 ], [ 0, %170 ], [ 0, %173 ], [ 1, %153 ]
  %182 = getelementptr i32, ptr %46, i32 %37
  store i32 %181, ptr %182, align 4
  %183 = add i32 %181, %37
  %184 = icmp ne i32 %39, 0
  %185 = zext i1 %184 to i32
  br label %186

186:                                              ; preds = %180, %137, %122, %103, %100, %50, %48
  %187 = phi i32 [ %183, %180 ], [ %123, %122 ], [ %138, %137 ], [ %37, %48 ], [ %37, %50 ], [ %99, %100 ], [ %101, %103 ]
  %188 = phi i32 [ %185, %180 ], [ %125, %122 ], [ %140, %137 ], [ %39, %48 ], [ %39, %50 ], [ %39, %103 ], [ %39, %100 ]
  %189 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %187, ptr %189, align 4
  %190 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %188, ptr %190, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_sub(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @mpi_copy(ptr noundef %2) #3
  %5 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  store i32 %8, ptr %5, align 4
  tail call void @mpi_add(ptr noundef %0, ptr noundef %1, ptr noundef %4)
  tail call void @mpi_free(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_addm(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  tail call void @mpi_add(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @mpi_mod(ptr noundef %0, ptr noundef %0, ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_mod(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_subm(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @mpi_copy(ptr noundef %2) #3
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %6, align 4
  tail call void @mpi_add(ptr noundef %0, ptr noundef %1, ptr noundef %5) #3
  tail call void @mpi_free(ptr noundef %5) #3
  tail call void @mpi_mod(ptr noundef %0, ptr noundef %0, ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
