; ModuleID = '/llk/IR/lib/lzo/lzo1x_compress.c_pt.bc'
source_filename = "../lib/lzo/lzo1x_compress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lzo1x_1_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22lzo1x_1_compress\22\09\09\09\09\09"
module asm "__kstrtabns_lzo1x_1_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lzorle1x_1_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22lzorle1x_1_compress\22\09\09\09\09\09"
module asm "__kstrtabns_lzorle1x_1_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_lzo1x_1_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_lzo1x_1_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_lzo1x_1_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lzo1x_1_compress to i32), ptr @__kstrtab_lzo1x_1_compress, ptr @__kstrtabns_lzo1x_1_compress }, section "___ksymtab_gpl+lzo1x_1_compress", align 4
@__kstrtab_lzorle1x_1_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_lzorle1x_1_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_lzorle1x_1_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lzorle1x_1_compress to i32), ptr @__kstrtab_lzorle1x_1_compress, ptr @__kstrtabns_lzorle1x_1_compress }, section "___ksymtab_gpl+lzorle1x_1_compress", align 4
@__UNIQUE_ID_file101 = internal constant [39 x i8] c"lzo_compress.file=lib/lzo/lzo_compress\00", section ".modinfo", align 1
@__UNIQUE_ID_license102 = internal constant [25 x i8] c"lzo_compress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description103 = internal constant [44 x i8] c"lzo_compress.description=LZO1X-1 Compressor\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_description103, ptr @__UNIQUE_ID_file101, ptr @__UNIQUE_ID_license102, ptr @__ksymtab_lzo1x_1_compress, ptr @__ksymtab_lzorle1x_1_compress], section "llvm.metadata"

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lzo1x_1_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  tail call fastcc void @lzogeneric1x_1_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lzogeneric1x_1_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 -2, ptr %7, align 1
  %8 = icmp eq i8 %5, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr i8, ptr %2, i32 1
  store i8 17, ptr %2, align 1
  %11 = getelementptr i8, ptr %2, i32 2
  store i8 %5, ptr %10, align 1
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ 49151, %9 ], [ 49152, %6 ]
  %14 = phi ptr [ %11, %9 ], [ %2, %6 ]
  %15 = icmp ugt i32 %1, 20
  br i1 %15, label %16, label %35

16:                                               ; preds = %28, %12
  %17 = phi ptr [ %30, %28 ], [ %0, %12 ]
  %18 = phi ptr [ %32, %28 ], [ %14, %12 ]
  %19 = phi i32 [ %33, %28 ], [ %1, %12 ]
  %20 = phi i32 [ %29, %28 ], [ 0, %12 ]
  %21 = tail call i32 @llvm.umin.i32(i32 %19, i32 %13)
  %22 = ptrtoint ptr %17 to i32
  %23 = add i32 %21, %22
  %24 = add i32 %21, %20
  %25 = lshr i32 %24, 5
  %26 = add i32 %23, %25
  %27 = icmp ugt i32 %26, %23
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16384) %4, i8 0, i32 16384, i1 false)
  %29 = call fastcc i32 @lzo1x_1_do_compress(ptr noundef %17, i32 noundef %21, ptr noundef %18, ptr noundef %3, i32 noundef %20, ptr noundef %4, ptr noundef nonnull %7, i8 noundef zeroext %5)
  %30 = getelementptr i8, ptr %17, i32 %21
  %31 = load i32, ptr %3, align 4
  %32 = getelementptr i8, ptr %18, i32 %31
  %33 = sub i32 %19, %21
  %34 = icmp ugt i32 %33, 20
  br i1 %34, label %16, label %35

35:                                               ; preds = %28, %16, %12
  %36 = phi i32 [ 0, %12 ], [ %20, %16 ], [ %29, %28 ]
  %37 = phi i32 [ %1, %12 ], [ %19, %16 ], [ %33, %28 ]
  %38 = phi ptr [ %14, %12 ], [ %18, %16 ], [ %32, %28 ]
  %39 = add i32 %37, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %121, label %41

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %0, i32 %1
  %43 = sub i32 0, %39
  %44 = getelementptr i8, ptr %42, i32 %43
  %45 = icmp eq ptr %38, %14
  %46 = icmp ult i32 %39, 239
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %79, label %48

48:                                               ; preds = %41
  %49 = icmp ult i32 %39, 4
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = load i8, ptr %7, align 1
  %52 = sext i8 %51 to i32
  %53 = getelementptr i8, ptr %38, i32 %52
  %54 = load i8, ptr %53, align 1
  %55 = trunc i32 %39 to i8
  %56 = or i8 %54, %55
  store i8 %56, ptr %53, align 1
  br label %108

57:                                               ; preds = %48
  %58 = icmp ult i32 %39, 19
  br i1 %58, label %79, label %59

59:                                               ; preds = %57
  %60 = add i32 %39, -18
  store i8 0, ptr %38, align 1
  %61 = getelementptr i8, ptr %38, i32 1
  %62 = icmp ugt i32 %60, 255
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = add i32 %39, -274
  %65 = udiv i32 %64, 255
  %66 = add nuw nsw i32 %65, 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 %61, i8 0, i32 %66, i1 false)
  %67 = mul i32 %65, -255
  %68 = add nuw nsw i32 %65, 2
  %69 = getelementptr i8, ptr %38, i32 %66
  %70 = add i32 %39, -273
  %71 = add i32 %67, %70
  %72 = getelementptr i8, ptr %38, i32 %68
  br label %73

73:                                               ; preds = %63, %59
  %74 = phi i32 [ %60, %59 ], [ %71, %63 ]
  %75 = phi ptr [ %38, %59 ], [ %69, %63 ]
  %76 = phi ptr [ %61, %59 ], [ %72, %63 ]
  %77 = trunc i32 %74 to i8
  %78 = getelementptr i8, ptr %75, i32 2
  store i8 %77, ptr %76, align 1
  br label %86

79:                                               ; preds = %57, %41
  %80 = phi i8 [ 17, %41 ], [ -3, %57 ]
  %81 = phi ptr [ %14, %41 ], [ %38, %57 ]
  %82 = trunc i32 %39 to i8
  %83 = add i8 %80, %82
  %84 = getelementptr i8, ptr %81, i32 1
  store i8 %83, ptr %81, align 1
  %85 = icmp ugt i32 %39, 15
  br i1 %85, label %86, label %108

86:                                               ; preds = %79, %73
  %87 = phi ptr [ %84, %79 ], [ %78, %73 ]
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi ptr [ %103, %88 ], [ %44, %86 ]
  %90 = phi i32 [ %104, %88 ], [ %39, %86 ]
  %91 = phi ptr [ %102, %88 ], [ %87, %86 ]
  %92 = load i32, ptr %89, align 1
  store i32 %92, ptr %91, align 1
  %93 = getelementptr i8, ptr %91, i32 4
  %94 = getelementptr i8, ptr %89, i32 4
  %95 = load i32, ptr %94, align 1
  store i32 %95, ptr %93, align 1
  %96 = getelementptr i8, ptr %91, i32 8
  %97 = getelementptr i8, ptr %89, i32 8
  %98 = load i32, ptr %97, align 1
  store i32 %98, ptr %96, align 1
  %99 = getelementptr i8, ptr %91, i32 12
  %100 = getelementptr i8, ptr %89, i32 12
  %101 = load i32, ptr %100, align 1
  store i32 %101, ptr %99, align 1
  %102 = getelementptr i8, ptr %91, i32 16
  %103 = getelementptr i8, ptr %89, i32 16
  %104 = add i32 %90, -16
  %105 = icmp ugt i32 %104, 15
  br i1 %105, label %88, label %106

106:                                              ; preds = %88
  %107 = icmp eq i32 %104, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %106, %79, %50
  %109 = phi ptr [ %44, %79 ], [ %44, %50 ], [ %103, %106 ]
  %110 = phi i32 [ %39, %79 ], [ %39, %50 ], [ %104, %106 ]
  %111 = phi ptr [ %84, %79 ], [ %38, %50 ], [ %102, %106 ]
  br label %112

112:                                              ; preds = %112, %108
  %113 = phi ptr [ %116, %112 ], [ %109, %108 ]
  %114 = phi i32 [ %119, %112 ], [ %110, %108 ]
  %115 = phi ptr [ %118, %112 ], [ %111, %108 ]
  %116 = getelementptr i8, ptr %113, i32 1
  %117 = load i8, ptr %113, align 1
  %118 = getelementptr i8, ptr %115, i32 1
  store i8 %117, ptr %115, align 1
  %119 = add i32 %114, -1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %112

121:                                              ; preds = %112, %106, %35
  %122 = phi ptr [ %38, %35 ], [ %102, %106 ], [ %118, %112 ]
  %123 = getelementptr i8, ptr %122, i32 1
  store i8 17, ptr %122, align 1
  %124 = getelementptr i8, ptr %122, i32 2
  store i8 0, ptr %123, align 1
  %125 = getelementptr i8, ptr %122, i32 3
  store i8 0, ptr %124, align 1
  %126 = ptrtoint ptr %125 to i32
  %127 = ptrtoint ptr %2 to i32
  %128 = sub i32 %126, %127
  store i32 %128, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lzorle1x_1_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  tail call fastcc void @lzogeneric1x_1_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 1)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lzo1x_1_do_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6, i8 noundef zeroext %7) unnamed_addr #3 {
  %9 = getelementptr i8, ptr %0, i32 %1
  %10 = getelementptr i8, ptr %9, i32 -20
  %11 = tail call i32 @llvm.usub.sat.i32(i32 4, i32 %4)
  %12 = getelementptr i8, ptr %0, i32 %11
  %13 = getelementptr i8, ptr %12, i32 1
  %14 = icmp ult ptr %13, %10
  br i1 %14, label %15, label %380, !prof !8

15:                                               ; preds = %8
  %16 = icmp ne i8 %7, 0
  %17 = ptrtoint ptr %0 to i32
  %18 = icmp eq i8 %7, 0
  br label %19

19:                                               ; preds = %375, %15
  %20 = phi i32 [ %4, %15 ], [ 0, %375 ]
  %21 = phi ptr [ %13, %15 ], [ %378, %375 ]
  %22 = phi ptr [ %2, %15 ], [ %377, %375 ]
  %23 = phi ptr [ %0, %15 ], [ %378, %375 ]
  %24 = phi ptr [ null, %15 ], [ %120, %375 ]
  %25 = ptrtoint ptr %23 to i32
  br label %33

26:                                               ; preds = %101
  %27 = ptrtoint ptr %34 to i32
  %28 = sub i32 %27, %25
  %29 = ashr i32 %28, 5
  %30 = add nsw i32 %29, 1
  %31 = getelementptr i8, ptr %34, i32 %30
  %32 = icmp ult ptr %31, %10
  br i1 %32, label %33, label %380, !prof !8

33:                                               ; preds = %26, %19
  %34 = phi ptr [ %31, %26 ], [ %21, %19 ]
  %35 = phi ptr [ %107, %26 ], [ %24, %19 ]
  %36 = load i32, ptr %34, align 1
  %37 = icmp eq i32 %36, 0
  %38 = and i1 %16, %37
  br i1 %38, label %39, label %101

39:                                               ; preds = %33
  %40 = ptrtoint ptr %23 to i32
  %41 = getelementptr i8, ptr %34, i32 4
  %42 = getelementptr i8, ptr %34, i32 2052
  %43 = icmp ult ptr %10, %42
  %44 = select i1 %43, ptr %10, ptr %42
  %45 = ptrtoint ptr %41 to i32
  %46 = add i32 %45, 3
  %47 = and i32 %46, -4
  %48 = inttoptr i32 %47 to ptr
  %49 = icmp ult ptr %41, %48
  %50 = icmp ult ptr %41, %44
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %58, %39
  %53 = phi ptr [ %59, %58 ], [ %41, %39 ]
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = ptrtoint ptr %53 to i32
  br label %69

58:                                               ; preds = %52
  %59 = getelementptr i8, ptr %53, i32 1
  %60 = ptrtoint ptr %59 to i32
  %61 = add i32 %60, 3
  %62 = and i32 %61, -4
  %63 = inttoptr i32 %62 to ptr
  %64 = icmp ult ptr %59, %63
  %65 = icmp ult ptr %59, %44
  %66 = and i1 %64, %65
  br i1 %66, label %52, label %67

67:                                               ; preds = %58
  %68 = ptrtoint ptr %59 to i32
  br label %69

69:                                               ; preds = %67, %56, %39
  %70 = phi i32 [ %45, %39 ], [ %57, %56 ], [ %68, %67 ]
  %71 = phi ptr [ %41, %39 ], [ %53, %56 ], [ %59, %67 ]
  %72 = and i32 %70, 3
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %78, %69
  %75 = phi ptr [ %76, %78 ], [ %71, %69 ]
  %76 = getelementptr i8, ptr %75, i32 4
  %77 = icmp ugt ptr %76, %44
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %75, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %74, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @llvm.cttz.i32(i32 %79, i1 true), !range !9
  %83 = lshr i32 %82, 3
  %84 = getelementptr i8, ptr %75, i32 %83
  br label %85

85:                                               ; preds = %81, %74, %69
  %86 = phi ptr [ %84, %81 ], [ %71, %69 ], [ %75, %74 ]
  %87 = icmp ult ptr %86, %44
  br i1 %87, label %88, label %95, !prof !8

88:                                               ; preds = %92, %85
  %89 = phi ptr [ %93, %92 ], [ %86, %85 ]
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = getelementptr i8, ptr %89, i32 1
  %94 = icmp ult ptr %93, %44
  br i1 %94, label %88, label %95, !prof !8

95:                                               ; preds = %92, %88, %85
  %96 = phi ptr [ %86, %85 ], [ %93, %92 ], [ %89, %88 ]
  %97 = ptrtoint ptr %96 to i32
  %98 = ptrtoint ptr %34 to i32
  %99 = sub i32 %97, %98
  %100 = tail call i32 @llvm.umin.i32(i32 %99, i32 2051)
  br label %116

101:                                              ; preds = %33
  %102 = mul i32 %36, 405029533
  %103 = lshr i32 %102, 19
  %104 = getelementptr i16, ptr %5, i32 %103
  %105 = load i16, ptr %104, align 2
  %106 = zext i16 %105 to i32
  %107 = getelementptr i8, ptr %0, i32 %106
  %108 = ptrtoint ptr %34 to i32
  %109 = sub i32 %108, %17
  %110 = trunc i32 %109 to i16
  store i16 %110, ptr %104, align 2
  %111 = load i32, ptr %107, align 1
  %112 = icmp eq i32 %36, %111
  br i1 %112, label %113, label %26, !prof !8

113:                                              ; preds = %101
  %114 = ptrtoint ptr %23 to i32
  %115 = ptrtoint ptr %34 to i32
  br label %116

116:                                              ; preds = %113, %95
  %117 = phi i32 [ %40, %95 ], [ %114, %113 ]
  %118 = phi i32 [ %98, %95 ], [ %115, %113 ]
  %119 = phi i32 [ %100, %95 ], [ 0, %113 ]
  %120 = phi ptr [ %35, %95 ], [ %107, %113 ]
  %121 = sub i32 0, %20
  %122 = getelementptr i8, ptr %23, i32 %121
  %123 = ptrtoint ptr %122 to i32
  %124 = sub i32 %118, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %217, label %126

126:                                              ; preds = %116
  %127 = icmp ult i32 %124, 4
  br i1 %127, label %128, label %135

128:                                              ; preds = %126
  %129 = load i8, ptr %6, align 1
  %130 = sext i8 %129 to i32
  %131 = getelementptr i8, ptr %22, i32 %130
  %132 = load i8, ptr %131, align 1
  %133 = trunc i32 %124 to i8
  %134 = or i8 %132, %133
  store i8 %134, ptr %131, align 1
  br label %211

135:                                              ; preds = %126
  %136 = icmp ult i32 %124, 17
  br i1 %136, label %137, label %150

137:                                              ; preds = %135
  %138 = trunc i32 %124 to i8
  %139 = add nsw i8 %138, -3
  %140 = getelementptr i8, ptr %22, i32 1
  store i8 %139, ptr %22, align 1
  %141 = load i32, ptr %122, align 1
  store i32 %141, ptr %140, align 1
  %142 = getelementptr i8, ptr %22, i32 5
  %143 = getelementptr i8, ptr %122, i32 4
  %144 = load i32, ptr %143, align 1
  store i32 %144, ptr %142, align 1
  %145 = getelementptr i8, ptr %22, i32 9
  %146 = getelementptr i8, ptr %122, i32 8
  %147 = load i32, ptr %146, align 1
  store i32 %147, ptr %145, align 1
  %148 = getelementptr i8, ptr %22, i32 13
  %149 = getelementptr i8, ptr %146, i32 4
  br label %211

150:                                              ; preds = %135
  %151 = icmp ult i32 %124, 19
  br i1 %151, label %152, label %156

152:                                              ; preds = %150
  %153 = trunc i32 %124 to i8
  %154 = add nsw i8 %153, -3
  %155 = getelementptr i8, ptr %22, i32 1
  store i8 %154, ptr %22, align 1
  br label %180

156:                                              ; preds = %150
  %157 = add i32 %124, -18
  store i8 0, ptr %22, align 1
  %158 = getelementptr i8, ptr %22, i32 1
  %159 = icmp ugt i32 %157, 255
  br i1 %159, label %160, label %174, !prof !10

160:                                              ; preds = %156
  %161 = add i32 %20, -274
  %162 = add i32 %161, %118
  %163 = sub i32 %162, %117
  %164 = udiv i32 %163, 255
  %165 = add nuw nsw i32 %164, 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 %158, i8 0, i32 %165, i1 false)
  %166 = add i32 %20, -273
  %167 = add i32 %166, %118
  %168 = mul i32 %164, -255
  %169 = getelementptr i8, ptr %22, i32 2
  %170 = getelementptr i8, ptr %158, i32 %164
  %171 = sub i32 %167, %117
  %172 = add i32 %168, %171
  %173 = getelementptr i8, ptr %169, i32 %164
  br label %174

174:                                              ; preds = %160, %156
  %175 = phi i32 [ %157, %156 ], [ %172, %160 ]
  %176 = phi ptr [ %22, %156 ], [ %170, %160 ]
  %177 = phi ptr [ %158, %156 ], [ %173, %160 ]
  %178 = trunc i32 %175 to i8
  %179 = getelementptr i8, ptr %176, i32 2
  store i8 %178, ptr %177, align 1
  br label %180

180:                                              ; preds = %174, %152
  %181 = phi ptr [ %155, %152 ], [ %179, %174 ]
  br label %182

182:                                              ; preds = %182, %180
  %183 = phi i32 [ %198, %182 ], [ %124, %180 ]
  %184 = phi ptr [ %197, %182 ], [ %122, %180 ]
  %185 = phi ptr [ %196, %182 ], [ %181, %180 ]
  %186 = load i32, ptr %184, align 1
  store i32 %186, ptr %185, align 1
  %187 = getelementptr i8, ptr %185, i32 4
  %188 = getelementptr i8, ptr %184, i32 4
  %189 = load i32, ptr %188, align 1
  store i32 %189, ptr %187, align 1
  %190 = getelementptr i8, ptr %185, i32 8
  %191 = getelementptr i8, ptr %184, i32 8
  %192 = load i32, ptr %191, align 1
  store i32 %192, ptr %190, align 1
  %193 = getelementptr i8, ptr %185, i32 12
  %194 = getelementptr i8, ptr %184, i32 12
  %195 = load i32, ptr %194, align 1
  store i32 %195, ptr %193, align 1
  %196 = getelementptr i8, ptr %185, i32 16
  %197 = getelementptr i8, ptr %184, i32 16
  %198 = add i32 %183, -16
  %199 = icmp ugt i32 %198, 15
  br i1 %199, label %182, label %200

200:                                              ; preds = %182
  %201 = icmp eq i32 %198, 0
  br i1 %201, label %217, label %202

202:                                              ; preds = %202, %200
  %203 = phi i32 [ %209, %202 ], [ %198, %200 ]
  %204 = phi ptr [ %206, %202 ], [ %197, %200 ]
  %205 = phi ptr [ %208, %202 ], [ %196, %200 ]
  %206 = getelementptr i8, ptr %204, i32 1
  %207 = load i8, ptr %204, align 1
  %208 = getelementptr i8, ptr %205, i32 1
  store i8 %207, ptr %205, align 1
  %209 = add i32 %203, -1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %217, label %202

211:                                              ; preds = %137, %128
  %212 = phi ptr [ %122, %128 ], [ %149, %137 ]
  %213 = phi ptr [ %22, %128 ], [ %148, %137 ]
  %214 = phi ptr [ %22, %128 ], [ %140, %137 ]
  %215 = load i32, ptr %212, align 1
  store i32 %215, ptr %213, align 1
  %216 = getelementptr i8, ptr %214, i32 %124
  br label %217

217:                                              ; preds = %211, %202, %200, %116
  %218 = phi ptr [ %196, %200 ], [ %22, %116 ], [ %216, %211 ], [ %208, %202 ]
  %219 = icmp eq i32 %119, 0
  br i1 %219, label %228, label %220, !prof !8

220:                                              ; preds = %217
  %221 = getelementptr i8, ptr %34, i32 %119
  %222 = add nsw i32 %119, -4
  %223 = shl i32 %222, 21
  %224 = and i32 %222, 7
  %225 = or i32 %223, %224
  %226 = or i32 %225, 16776216
  store i32 %226, ptr %218, align 1
  %227 = getelementptr i8, ptr %218, i32 4
  br label %375

228:                                              ; preds = %217
  %229 = getelementptr i8, ptr %34, i32 4
  %230 = load i32, ptr %229, align 1
  %231 = getelementptr i8, ptr %120, i32 4
  %232 = load i32, ptr %231, align 1
  %233 = xor i32 %232, %230
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %254, !prof !10

235:                                              ; preds = %248, %228
  %236 = phi i32 [ %245, %248 ], [ 4, %228 ]
  %237 = add i32 %236, 4
  %238 = getelementptr i8, ptr %34, i32 %237
  %239 = load i32, ptr %238, align 1
  %240 = getelementptr i8, ptr %120, i32 %237
  %241 = load i32, ptr %240, align 1
  %242 = xor i32 %241, %239
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %235
  %245 = add i32 %236, 8
  %246 = getelementptr i8, ptr %34, i32 %245
  %247 = icmp ult ptr %246, %10
  br i1 %247, label %248, label %260, !prof !8

248:                                              ; preds = %244
  %249 = load i32, ptr %246, align 1
  %250 = getelementptr i8, ptr %120, i32 %245
  %251 = load i32, ptr %250, align 1
  %252 = xor i32 %251, %249
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %235, label %254

254:                                              ; preds = %248, %235, %228
  %255 = phi i32 [ %233, %228 ], [ %252, %248 ], [ %242, %235 ]
  %256 = phi i32 [ 4, %228 ], [ %245, %248 ], [ %237, %235 ]
  %257 = tail call i32 @llvm.cttz.i32(i32 %255, i1 false), !range !9
  %258 = lshr i32 %257, 3
  %259 = add i32 %258, %256
  br label %260

260:                                              ; preds = %254, %244
  %261 = phi i32 [ %259, %254 ], [ %245, %244 ]
  %262 = ptrtoint ptr %120 to i32
  %263 = sub i32 %118, %262
  %264 = getelementptr i8, ptr %34, i32 %261
  %265 = icmp ult i32 %261, 9
  %266 = icmp ult i32 %263, 2049
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %268, label %280

268:                                              ; preds = %260
  %269 = add nsw i32 %263, -1
  %270 = shl nuw nsw i32 %261, 5
  %271 = add nuw nsw i32 %270, 224
  %272 = shl nsw i32 %269, 2
  %273 = and i32 %272, 28
  %274 = or i32 %271, %273
  %275 = trunc i32 %274 to i8
  %276 = getelementptr i8, ptr %218, i32 1
  store i8 %275, ptr %218, align 1
  %277 = lshr i32 %269, 3
  %278 = trunc i32 %277 to i8
  %279 = getelementptr i8, ptr %218, i32 2
  store i8 %278, ptr %276, align 1
  br label %375

280:                                              ; preds = %260
  %281 = icmp ult i32 %263, 16385
  br i1 %281, label %282, label %318

282:                                              ; preds = %280
  %283 = add nsw i32 %263, -1
  %284 = icmp ult i32 %261, 34
  br i1 %284, label %285, label %290

285:                                              ; preds = %282
  %286 = trunc i32 %261 to i8
  %287 = add nsw i8 %286, -2
  %288 = or i8 %287, 32
  %289 = getelementptr i8, ptr %218, i32 1
  store i8 %288, ptr %218, align 1
  br label %310

290:                                              ; preds = %282
  %291 = add i32 %261, -33
  store i8 32, ptr %218, align 1
  %292 = getelementptr i8, ptr %218, i32 1
  %293 = icmp ugt i32 %291, 255
  br i1 %293, label %294, label %304, !prof !10

294:                                              ; preds = %290
  %295 = add i32 %261, -289
  %296 = udiv i32 %295, 255
  %297 = add nuw nsw i32 %296, 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 %292, i8 0, i32 %297, i1 false)
  %298 = getelementptr i8, ptr %292, i32 %296
  %299 = mul i32 %296, -255
  %300 = getelementptr i8, ptr %218, i32 2
  %301 = add i32 %261, -288
  %302 = add i32 %299, %301
  %303 = getelementptr i8, ptr %300, i32 %296
  br label %304

304:                                              ; preds = %294, %290
  %305 = phi i32 [ %291, %290 ], [ %302, %294 ]
  %306 = phi ptr [ %218, %290 ], [ %298, %294 ]
  %307 = phi ptr [ %292, %290 ], [ %303, %294 ]
  %308 = trunc i32 %305 to i8
  %309 = getelementptr i8, ptr %306, i32 2
  store i8 %308, ptr %307, align 1
  br label %310

310:                                              ; preds = %304, %285
  %311 = phi ptr [ %289, %285 ], [ %309, %304 ]
  %312 = trunc i32 %283 to i8
  %313 = shl i8 %312, 2
  %314 = getelementptr i8, ptr %311, i32 1
  store i8 %313, ptr %311, align 1
  %315 = lshr i32 %283, 6
  %316 = trunc i32 %315 to i8
  %317 = getelementptr i8, ptr %311, i32 2
  store i8 %316, ptr %314, align 1
  br label %375

318:                                              ; preds = %280
  %319 = add i32 %263, -16384
  %320 = icmp ult i32 %261, 10
  br i1 %320, label %321, label %329

321:                                              ; preds = %318
  %322 = lshr i32 %319, 11
  %323 = and i32 %322, 8
  %324 = add nuw nsw i32 %261, 254
  %325 = or i32 %324, %323
  %326 = trunc i32 %325 to i8
  %327 = or i8 %326, 16
  %328 = getelementptr i8, ptr %218, i32 1
  store i8 %327, ptr %218, align 1
  br label %366

329:                                              ; preds = %318
  %330 = and i32 %319, 16447
  %331 = icmp eq i32 %330, 16447
  %332 = icmp ugt i32 %261, 260
  %333 = select i1 %331, i1 %332, i1 false
  %334 = icmp ult i32 %261, 265
  %335 = select i1 %333, i1 %334, i1 false
  br i1 %335, label %336, label %340, !prof !10

336:                                              ; preds = %329
  %337 = getelementptr i8, ptr %34, i32 260
  %338 = select i1 %18, i32 %261, i32 260, !prof !10
  %339 = select i1 %18, ptr %264, ptr %337, !prof !10
  br label %340

340:                                              ; preds = %336, %329
  %341 = phi i32 [ %261, %329 ], [ %338, %336 ]
  %342 = phi ptr [ %264, %329 ], [ %339, %336 ]
  %343 = add i32 %341, -9
  %344 = lshr i32 %319, 11
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 8
  %347 = or i8 %346, 16
  store i8 %347, ptr %218, align 1
  %348 = getelementptr i8, ptr %218, i32 1
  %349 = icmp ugt i32 %343, 255
  br i1 %349, label %350, label %360, !prof !10

350:                                              ; preds = %340
  %351 = add i32 %341, -265
  %352 = udiv i32 %351, 255
  %353 = add nuw nsw i32 %352, 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 %348, i8 0, i32 %353, i1 false)
  %354 = getelementptr i8, ptr %348, i32 %352
  %355 = mul i32 %352, -255
  %356 = getelementptr i8, ptr %218, i32 2
  %357 = add i32 %341, -264
  %358 = add i32 %355, %357
  %359 = getelementptr i8, ptr %356, i32 %352
  br label %360

360:                                              ; preds = %350, %340
  %361 = phi i32 [ %343, %340 ], [ %358, %350 ]
  %362 = phi ptr [ %218, %340 ], [ %354, %350 ]
  %363 = phi ptr [ %348, %340 ], [ %359, %350 ]
  %364 = trunc i32 %361 to i8
  %365 = getelementptr i8, ptr %362, i32 2
  store i8 %364, ptr %363, align 1
  br label %366

366:                                              ; preds = %360, %321
  %367 = phi ptr [ %328, %321 ], [ %365, %360 ]
  %368 = phi ptr [ %264, %321 ], [ %342, %360 ]
  %369 = trunc i32 %319 to i8
  %370 = shl i8 %369, 2
  %371 = getelementptr i8, ptr %367, i32 1
  store i8 %370, ptr %367, align 1
  %372 = lshr i32 %319, 6
  %373 = trunc i32 %372 to i8
  %374 = getelementptr i8, ptr %367, i32 2
  store i8 %373, ptr %371, align 1
  br label %375

375:                                              ; preds = %366, %310, %268, %220
  %376 = phi i8 [ -3, %220 ], [ -2, %310 ], [ -2, %366 ], [ -2, %268 ]
  %377 = phi ptr [ %227, %220 ], [ %317, %310 ], [ %374, %366 ], [ %279, %268 ]
  %378 = phi ptr [ %221, %220 ], [ %264, %310 ], [ %368, %366 ], [ %264, %268 ]
  store i8 %376, ptr %6, align 1
  %379 = icmp ult ptr %378, %10
  br i1 %379, label %19, label %380, !prof !8

380:                                              ; preds = %375, %26, %8
  %381 = phi ptr [ %0, %8 ], [ %23, %26 ], [ %378, %375 ]
  %382 = phi ptr [ %2, %8 ], [ %22, %26 ], [ %377, %375 ]
  %383 = phi i32 [ %4, %8 ], [ %20, %26 ], [ 0, %375 ]
  %384 = ptrtoint ptr %382 to i32
  %385 = ptrtoint ptr %2 to i32
  %386 = sub i32 %384, %385
  store i32 %386, ptr %3, align 4
  %387 = sub i32 0, %383
  %388 = getelementptr i8, ptr %381, i32 %387
  %389 = ptrtoint ptr %9 to i32
  %390 = ptrtoint ptr %388 to i32
  %391 = sub i32 %389, %390
  ret i32 %391
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
