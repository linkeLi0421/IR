; ModuleID = '/llk/IR/lib/sg_split.c_pt.bc'
source_filename = "../lib/sg_split.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_split:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_split\22\09\09\09\09\09"
module asm "__kstrtabns_sg_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sg_splitter = type { ptr, i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__kstrtab_sg_split = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_split = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_split to i32), ptr @__kstrtab_sg_split, ptr @__kstrtabns_sg_split }, section "___ksymtab+sg_split", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_sg_split], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_split(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6, i32 noundef %7) #0 {
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 20) #5
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %168, label %11, !prof !8

11:                                               ; preds = %8
  %12 = extractvalue { i32, i1 } %9, 0
  %13 = or i32 %7, 256
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef %13) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %168, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @sg_nents(ptr noundef %0) #5
  %18 = tail call fastcc i32 @sg_calculate_split(ptr noundef %0, i32 noundef %17, i32 noundef %3, i32 noundef %2, ptr noundef %4, ptr noundef nonnull %14, i1 noundef zeroext false)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %157, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %88, label %22

22:                                               ; preds = %35, %20
  %23 = phi i32 [ %36, %35 ], [ 0, %20 ]
  %24 = getelementptr %struct.sg_splitter, ptr %14, i32 %23, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 20) #5
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %28, label %30, !prof !8

28:                                               ; preds = %22
  %29 = getelementptr %struct.sg_splitter, ptr %14, i32 %23, i32 4
  store ptr null, ptr %29, align 4
  br label %157

30:                                               ; preds = %22
  %31 = extractvalue { i32, i1 } %26, 0
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef %7) #6
  %33 = getelementptr %struct.sg_splitter, ptr %14, i32 %23, i32 4
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %157, label %35

35:                                               ; preds = %30
  %36 = add nuw nsw i32 %23, 1
  %37 = icmp eq i32 %36, %3
  br i1 %37, label %38, label %22

38:                                               ; preds = %35
  br i1 %21, label %88, label %39

39:                                               ; preds = %76, %38
  %40 = phi ptr [ %86, %76 ], [ %14, %38 ]
  %41 = phi i32 [ %85, %76 ], [ 0, %38 ]
  %42 = getelementptr inbounds %struct.sg_splitter, ptr %40, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sg_splitter, ptr %40, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %39
  %48 = load ptr, ptr %40, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %43, ptr noundef align 4 dereferenceable(20) %48, i32 20, i1 false) #5
  %49 = getelementptr inbounds %struct.sg_splitter, ptr %40, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %50
  store i32 %53, ptr %51, align 4
  %54 = load i32, ptr %49, align 4
  %55 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 %56, %54
  store i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 3
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 4
  store i32 0, ptr %59, align 4
  %60 = tail call ptr @sg_next(ptr noundef %48) #5
  %61 = getelementptr %struct.scatterlist, ptr %43, i32 1
  %62 = load i32, ptr %44, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %76

64:                                               ; preds = %64, %47
  %65 = phi ptr [ %73, %64 ], [ %61, %47 ]
  %66 = phi ptr [ %71, %64 ], [ %60, %47 ]
  %67 = phi i32 [ %72, %64 ], [ 1, %47 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %65, ptr noundef align 4 dereferenceable(20) %66, i32 12, i1 false) #5
  %68 = getelementptr inbounds %struct.scatterlist, ptr %65, i32 0, i32 1
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.scatterlist, ptr %65, i32 0, i32 3
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.scatterlist, ptr %65, i32 0, i32 4
  store i32 0, ptr %70, align 4
  %71 = tail call ptr @sg_next(ptr noundef %66) #5
  %72 = add nuw nsw i32 %67, 1
  %73 = getelementptr %struct.scatterlist, ptr %65, i32 1
  %74 = load i32, ptr %44, align 4
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %64, label %76, !llvm.loop !9

76:                                               ; preds = %64, %47, %39
  %77 = phi ptr [ %43, %39 ], [ %61, %47 ], [ %73, %64 ]
  %78 = getelementptr inbounds %struct.sg_splitter, ptr %40, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr %struct.scatterlist, ptr %77, i32 -1
  %81 = getelementptr %struct.scatterlist, ptr %77, i32 -1, i32 2
  store i32 %79, ptr %81, align 4
  %82 = load i32, ptr %80, align 4
  %83 = and i32 %82, -4
  %84 = or i32 %83, 2
  store i32 %84, ptr %80, align 4
  %85 = add nuw nsw i32 %41, 1
  %86 = getelementptr %struct.sg_splitter, ptr %40, i32 1
  %87 = icmp eq i32 %85, %3
  br i1 %87, label %88, label %39

88:                                               ; preds = %76, %38, %20
  %89 = icmp eq i32 %1, 0
  br i1 %89, label %142, label %90

90:                                               ; preds = %88
  %91 = tail call fastcc i32 @sg_calculate_split(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %2, ptr noundef %4, ptr noundef nonnull %14, i1 noundef zeroext true)
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %157, label %93

93:                                               ; preds = %90
  br i1 %21, label %166, label %94

94:                                               ; preds = %134, %93
  %95 = phi ptr [ %140, %134 ], [ %14, %93 ]
  %96 = phi i32 [ %139, %134 ], [ 0, %93 ]
  %97 = getelementptr inbounds %struct.sg_splitter, ptr %95, i32 0, i32 4
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.sg_splitter, ptr %95, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %94
  %103 = load ptr, ptr %95, align 4
  %104 = getelementptr inbounds %struct.scatterlist, ptr %103, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.scatterlist, ptr %98, i32 0, i32 3
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.scatterlist, ptr %103, i32 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.scatterlist, ptr %98, i32 0, i32 4
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.sg_splitter, ptr %95, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, %105
  store i32 %112, ptr %106, align 4
  %113 = load i32, ptr %110, align 4
  %114 = sub i32 %108, %113
  store i32 %114, ptr %109, align 4
  %115 = tail call ptr @sg_next(ptr noundef %103) #5
  %116 = getelementptr %struct.scatterlist, ptr %98, i32 1
  %117 = load i32, ptr %99, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %134

119:                                              ; preds = %119, %102
  %120 = phi ptr [ %131, %119 ], [ %116, %102 ]
  %121 = phi ptr [ %129, %119 ], [ %115, %102 ]
  %122 = phi i32 [ %130, %119 ], [ 1, %102 ]
  %123 = getelementptr inbounds %struct.scatterlist, ptr %121, i32 0, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.scatterlist, ptr %120, i32 0, i32 3
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.scatterlist, ptr %121, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.scatterlist, ptr %120, i32 0, i32 4
  store i32 %127, ptr %128, align 4
  %129 = tail call ptr @sg_next(ptr noundef %121) #5
  %130 = add nuw nsw i32 %122, 1
  %131 = getelementptr %struct.scatterlist, ptr %120, i32 1
  %132 = load i32, ptr %99, align 4
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %119, label %134, !llvm.loop !11

134:                                              ; preds = %119, %102, %94
  %135 = phi ptr [ %98, %94 ], [ %116, %102 ], [ %131, %119 ]
  %136 = getelementptr inbounds %struct.sg_splitter, ptr %95, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr %struct.scatterlist, ptr %135, i32 -1, i32 4
  store i32 %137, ptr %138, align 4
  %139 = add nuw nsw i32 %96, 1
  %140 = getelementptr %struct.sg_splitter, ptr %95, i32 1
  %141 = icmp eq i32 %139, %3
  br i1 %141, label %142, label %94

142:                                              ; preds = %134, %88
  br i1 %21, label %166, label %143

143:                                              ; preds = %142
  %144 = icmp eq ptr %6, null
  br label %145

145:                                              ; preds = %154, %143
  %146 = phi i32 [ 0, %143 ], [ %155, %154 ]
  %147 = getelementptr %struct.sg_splitter, ptr %14, i32 %146, i32 4
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr ptr, ptr %5, i32 %146
  store ptr %148, ptr %149, align 4
  br i1 %144, label %154, label %150

150:                                              ; preds = %145
  %151 = getelementptr %struct.sg_splitter, ptr %14, i32 %146, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr i32, ptr %6, i32 %146
  store i32 %152, ptr %153, align 4
  br label %154

154:                                              ; preds = %150, %145
  %155 = add nuw nsw i32 %146, 1
  %156 = icmp eq i32 %155, %3
  br i1 %156, label %166, label %145

157:                                              ; preds = %90, %30, %28, %16
  %158 = phi i32 [ %18, %16 ], [ %91, %90 ], [ -12, %28 ], [ -12, %30 ]
  %159 = icmp sgt i32 %3, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %160, %157
  %161 = phi i32 [ %164, %160 ], [ 0, %157 ]
  %162 = getelementptr %struct.sg_splitter, ptr %14, i32 %161, i32 4
  %163 = load ptr, ptr %162, align 4
  tail call void @kfree(ptr noundef %163) #5
  %164 = add nuw nsw i32 %161, 1
  %165 = icmp eq i32 %164, %3
  br i1 %165, label %166, label %160

166:                                              ; preds = %160, %157, %154, %142, %93
  %167 = phi i32 [ 0, %93 ], [ 0, %142 ], [ %158, %157 ], [ %158, %160 ], [ 0, %154 ]
  tail call void @kfree(ptr noundef nonnull %14) #5
  br label %168

168:                                              ; preds = %166, %11, %8
  %169 = phi i32 [ -12, %11 ], [ -12, %8 ], [ %167, %166 ]
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sg_calculate_split(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
  %8 = load i32, ptr %4, align 4
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %12, %7
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %18, label %95

12:                                               ; preds = %12, %7
  %13 = phi i32 [ %16, %12 ], [ 0, %7 ]
  %14 = getelementptr %struct.sg_splitter, ptr %5, i32 %13
  store ptr null, ptr %14, align 4
  %15 = getelementptr %struct.sg_splitter, ptr %5, i32 %13, i32 1
  store i32 0, ptr %15, align 4
  %16 = add nuw nsw i32 %13, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %10, label %12

18:                                               ; preds = %86, %10
  %19 = phi i32 [ %91, %86 ], [ %2, %10 ]
  %20 = phi i32 [ %90, %86 ], [ %3, %10 ]
  %21 = phi ptr [ %89, %86 ], [ %4, %10 ]
  %22 = phi i32 [ %92, %86 ], [ 0, %10 ]
  %23 = phi i32 [ %88, %86 ], [ %8, %10 ]
  %24 = phi ptr [ %93, %86 ], [ %0, %10 ]
  %25 = phi ptr [ %87, %86 ], [ %5, %10 ]
  %26 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 4
  %27 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 2
  %28 = select i1 %6, ptr %26, ptr %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %20, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = sub i32 %20, %29
  br label %86

33:                                               ; preds = %18
  %34 = sub i32 %29, %20
  %35 = tail call i32 @llvm.umin.i32(i32 %23, i32 %34)
  %36 = load ptr, ptr %25, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  store ptr %24, ptr %25, align 4
  %39 = getelementptr inbounds %struct.sg_splitter, ptr %25, i32 0, i32 2
  store i32 %20, ptr %39, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = sub i32 %23, %35
  %42 = getelementptr inbounds %struct.sg_splitter, ptr %25, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.sg_splitter, ptr %25, i32 0, i32 3
  store i32 %35, ptr %45, align 4
  %46 = icmp eq i32 %41, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %40
  %48 = add i32 %19, -1
  %49 = call i32 @llvm.smin.i32(i32 %48, i32 0)
  br label %50

50:                                               ; preds = %61, %47
  %51 = phi i32 [ %59, %61 ], [ %19, %47 ]
  %52 = phi i32 [ %56, %61 ], [ %20, %47 ]
  %53 = phi ptr [ %63, %61 ], [ %21, %47 ]
  %54 = phi ptr [ %62, %61 ], [ %25, %47 ]
  %55 = phi i32 [ %66, %61 ], [ %35, %47 ]
  %56 = add i32 %52, %55
  %57 = icmp ugt i32 %29, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %50
  %59 = add i32 %51, -1
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = getelementptr %struct.sg_splitter, ptr %54, i32 1
  %63 = getelementptr i32, ptr %53, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %29, %56
  %66 = tail call i32 @llvm.umin.i32(i32 %64, i32 %65)
  store ptr %24, ptr %62, align 4
  %67 = getelementptr %struct.sg_splitter, ptr %54, i32 1, i32 2
  store i32 %56, ptr %67, align 4
  %68 = getelementptr %struct.sg_splitter, ptr %54, i32 1, i32 1
  store i32 1, ptr %68, align 4
  %69 = getelementptr %struct.sg_splitter, ptr %54, i32 1, i32 3
  store i32 %66, ptr %69, align 4
  %70 = sub i32 %64, %66
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %50, label %86

72:                                               ; preds = %58, %50
  %73 = phi i32 [ %51, %50 ], [ %49, %58 ]
  %74 = add i32 %73, -1
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr %struct.sg_splitter, ptr %54, i32 1
  %78 = getelementptr i32, ptr %53, i32 1
  %79 = load i32, ptr %78, align 4
  br label %86

80:                                               ; preds = %72, %40
  %81 = phi ptr [ %54, %72 ], [ %25, %40 ]
  %82 = phi i32 [ 0, %72 ], [ %41, %40 ]
  %83 = phi ptr [ %53, %72 ], [ %21, %40 ]
  %84 = phi i32 [ %74, %72 ], [ %19, %40 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %80, %76, %61, %31
  %87 = phi ptr [ %25, %31 ], [ %81, %80 ], [ %77, %76 ], [ %62, %61 ]
  %88 = phi i32 [ %23, %31 ], [ %82, %80 ], [ %79, %76 ], [ %70, %61 ]
  %89 = phi ptr [ %21, %31 ], [ %83, %80 ], [ %78, %76 ], [ %63, %61 ]
  %90 = phi i32 [ %32, %31 ], [ 0, %80 ], [ 0, %76 ], [ 0, %61 ]
  %91 = phi i32 [ %19, %31 ], [ %84, %80 ], [ %74, %76 ], [ %59, %61 ]
  %92 = add nuw nsw i32 %22, 1
  %93 = tail call ptr @sg_next(ptr noundef %24) #5
  %94 = icmp eq i32 %92, %1
  br i1 %94, label %95, label %18

95:                                               ; preds = %86, %80, %10
  %96 = phi i32 [ %8, %10 ], [ %82, %80 ], [ %88, %86 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load ptr, ptr %5, align 4
  %100 = icmp eq ptr %99, null
  %101 = select i1 %100, i32 -22, i32 0
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i32 [ -22, %95 ], [ %101, %98 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = distinct !{!11, !10}
