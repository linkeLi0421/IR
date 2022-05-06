; ModuleID = '/llk/IR/lib/xz/xz_dec_bcj.c_pt.bc'
source_filename = "../lib/xz/xz_dec_bcj.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xz_dec_bcj = type { i32, i32, i8, i32, i32, ptr, i32, i32, %struct.anon }
%struct.anon = type { i32, i32, [16 x i8] }
%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }

@bcj_x86.mask_to_bit_num = internal unnamed_addr constant [8 x i8] c"\00\01\02\02\03\03\03\03", align 1
@bcj_ia64.branch_table = internal unnamed_addr constant [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\06\06\00\00\07\07\04\04\00\00\04\04\00\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xz_dec_bcj_run(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8, i32 1
  %10 = load i32, ptr %9, align 4
  br label %35

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = tail call i32 @llvm.umin.i32(i32 %6, i32 %16) #8
  %18 = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %15
  %21 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 4 %21, i32 %17, i1 false) #8
  %22 = load i32, ptr %14, align 4
  %23 = add i32 %22, %17
  store i32 %23, ptr %14, align 4
  %24 = load i32, ptr %5, align 4
  %25 = sub i32 %24, %17
  store i32 %25, ptr %5, align 4
  %26 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %27, %17
  store i32 %28, ptr %26, align 4
  %29 = getelementptr i8, ptr %21, i32 %17
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %21, ptr align 1 %29, i32 %28, i1 false) #8
  %30 = icmp eq i32 %24, %17
  br i1 %30, label %31, label %127

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %127, label %35

35:                                               ; preds = %31, %8
  %36 = phi i32 [ %10, %8 ], [ %28, %31 ]
  %37 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8, i32 1
  %38 = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %39, %41
  %43 = icmp ult i32 %36, %42
  %44 = icmp eq i32 %36, 0
  %45 = or i1 %44, %43
  br i1 %45, label %46, label %78

46:                                               ; preds = %35
  store i32 %41, ptr %4, align 4
  %47 = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 %41
  %50 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 4 %50, i32 %36, i1 false)
  %51 = load i32, ptr %37, align 4
  %52 = load i32, ptr %40, align 4
  %53 = add i32 %52, %51
  store i32 %53, ptr %40, align 4
  %54 = tail call i32 @xz_dec_lzma2_run(ptr noundef %1, ptr noundef %2) #8
  %55 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  switch i32 %54, label %127 [
    i32 1, label %60
    i32 0, label %56
  ]

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 2
  %58 = load i8, ptr %57, align 4, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %127

60:                                               ; preds = %56, %46
  %61 = load ptr, ptr %47, align 4
  %62 = load i32, ptr %40, align 4
  call fastcc void @bcj_apply(ptr noundef %0, ptr noundef %61, ptr noundef nonnull %4, i32 noundef %62)
  %63 = load i32, ptr %55, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %127, label %65

65:                                               ; preds = %60
  %66 = load i32, ptr %40, align 4
  %67 = load i32, ptr %4, align 4
  %68 = sub i32 %66, %67
  store i32 %68, ptr %37, align 4
  %69 = load i32, ptr %40, align 4
  %70 = sub i32 %69, %68
  store i32 %70, ptr %40, align 4
  %71 = load ptr, ptr %47, align 4
  %72 = getelementptr i8, ptr %71, i32 %70
  %73 = load i32, ptr %37, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %50, ptr align 1 %72, i32 %73, i1 false)
  %74 = load i32, ptr %40, align 4
  %75 = add i32 %74, %73
  %76 = load i32, ptr %38, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %127, label %78

78:                                               ; preds = %65, %35
  %79 = phi i32 [ %39, %35 ], [ %76, %65 ]
  %80 = phi i32 [ %41, %35 ], [ %74, %65 ]
  %81 = icmp ult i32 %80, %79
  br i1 %81, label %82, label %124

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 5
  store ptr %84, ptr %85, align 4
  %86 = load i32, ptr %40, align 4
  %87 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 6
  store i32 %86, ptr %87, align 4
  %88 = load i32, ptr %38, align 4
  %89 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 7
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8, i32 2
  store ptr %90, ptr %83, align 4
  %91 = load i32, ptr %37, align 4
  store i32 %91, ptr %40, align 4
  store i32 16, ptr %38, align 4
  %92 = tail call i32 @xz_dec_lzma2_run(ptr noundef %1, ptr noundef %2) #8
  %93 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 1
  store i32 %92, ptr %93, align 4
  %94 = load i32, ptr %40, align 4
  store i32 %94, ptr %37, align 4
  %95 = load ptr, ptr %85, align 4
  store ptr %95, ptr %83, align 4
  %96 = load i32, ptr %87, align 4
  store i32 %96, ptr %40, align 4
  %97 = load i32, ptr %89, align 4
  store i32 %97, ptr %38, align 4
  %98 = load i32, ptr %93, align 4
  %99 = icmp ult i32 %98, 2
  br i1 %99, label %100, label %127

100:                                              ; preds = %82
  %101 = load i32, ptr %37, align 4
  tail call fastcc void @bcj_apply(ptr noundef %0, ptr noundef %90, ptr noundef %5, i32 noundef %101)
  %102 = load i32, ptr %93, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %5, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, ptr %37, align 4
  store i32 %107, ptr %5, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load i32, ptr %38, align 4
  %111 = load i32, ptr %40, align 4
  %112 = sub i32 %110, %111
  %113 = tail call i32 @llvm.umin.i32(i32 %109, i32 %112) #8
  %114 = load ptr, ptr %83, align 4
  %115 = getelementptr i8, ptr %114, i32 %111
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %115, ptr align 4 %90, i32 %113, i1 false) #8
  %116 = load i32, ptr %40, align 4
  %117 = add i32 %116, %113
  store i32 %117, ptr %40, align 4
  %118 = load i32, ptr %5, align 4
  %119 = sub i32 %118, %113
  store i32 %119, ptr %5, align 4
  %120 = load i32, ptr %37, align 4
  %121 = sub i32 %120, %113
  store i32 %121, ptr %37, align 4
  %122 = getelementptr i8, ptr %90, i32 %113
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %90, ptr align 1 %122, i32 %121, i1 false) #8
  %123 = icmp eq i32 %118, %113
  br i1 %123, label %124, label %127

124:                                              ; preds = %108, %78
  %125 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %108, %82, %65, %60, %56, %46, %31, %11
  %128 = phi i32 [ %126, %124 ], [ 0, %11 ], [ 1, %31 ], [ 1, %60 ], [ 0, %65 ], [ %98, %82 ], [ 0, %108 ], [ %54, %46 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %128
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_lzma2_run(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcj_apply(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = load i32, ptr %2, align 4
  %6 = getelementptr i8, ptr %1, i32 %5
  %7 = sub i32 %3, %5
  %8 = load i32, ptr %0, align 4
  switch i32 %8, label %361 [
    i32 4, label %9
    i32 5, label %108
    i32 6, label %131
    i32 7, label %238
    i32 8, label %279
    i32 9, label %335
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 4
  %11 = icmp ult i32 %7, 5
  br i1 %11, label %361, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 4
  %14 = add i32 %7, -4
  %15 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 3
  br label %16

16:                                               ; preds = %96, %12
  %17 = phi i32 [ %13, %12 ], [ %99, %96 ]
  %18 = phi i32 [ -1, %12 ], [ %98, %96 ]
  %19 = phi i32 [ 0, %12 ], [ %100, %96 ]
  %20 = getelementptr i8, ptr %6, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, -2
  %23 = icmp eq i8 %22, -24
  br i1 %23, label %24, label %96

24:                                               ; preds = %16
  %25 = sub i32 %19, %18
  %26 = icmp ugt i32 %25, 3
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = add nsw i32 %25, -1
  %29 = shl i32 %17, %28
  %30 = and i32 %29, 7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %27
  %33 = lshr i32 232, %30
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = add i32 %19, 4
  %38 = getelementptr [8 x i8], ptr @bcj_x86.mask_to_bit_num, i32 0, i32 %30
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = sub i32 %37, %40
  %42 = getelementptr i8, ptr %6, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = add i8 %43, -1
  %45 = icmp ult i8 %44, -2
  br i1 %45, label %49, label %46

46:                                               ; preds = %36, %32
  %47 = shl nuw nsw i32 %30, 1
  %48 = or i32 %47, 1
  br label %96

49:                                               ; preds = %36, %27, %24
  %50 = phi i32 [ %30, %36 ], [ 0, %27 ], [ 0, %24 ]
  %51 = add i32 %19, 4
  %52 = getelementptr i8, ptr %6, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = add i8 %53, -1
  %55 = icmp ult i8 %54, -2
  br i1 %55, label %93, label %56

56:                                               ; preds = %49
  %57 = getelementptr i8, ptr %20, i32 1
  %58 = load i32, ptr %57, align 1
  %59 = load i32, ptr %15, align 4
  %60 = sub i32 -5, %19
  %61 = icmp eq i32 %50, 0
  %62 = add i32 %58, %60
  %63 = sub i32 %62, %59
  br i1 %61, label %87, label %64

64:                                               ; preds = %56
  %65 = getelementptr [8 x i8], ptr @bcj_x86.mask_to_bit_num, i32 0, i32 %50
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 3
  %69 = sub nsw i32 24, %68
  %70 = lshr i32 %63, %69
  %71 = trunc i32 %70 to i8
  %72 = add i8 %71, -1
  %73 = icmp ult i8 %72, -2
  br i1 %73, label %87, label %74

74:                                               ; preds = %64
  %75 = sub nsw i32 32, %68
  %76 = shl nsw i32 -1, %75
  %77 = sub i32 %60, %59
  br label %78

78:                                               ; preds = %78, %74
  %79 = phi i32 [ %63, %74 ], [ %82, %78 ]
  %80 = xor i32 %76, %79
  %81 = xor i32 %80, -1
  %82 = add i32 %77, %81
  %83 = lshr i32 %82, %69
  %84 = trunc i32 %83 to i8
  %85 = add i8 %84, -1
  %86 = icmp ult i8 %85, -2
  br i1 %86, label %87, label %78

87:                                               ; preds = %78, %64, %56
  %88 = phi i32 [ %63, %56 ], [ %63, %64 ], [ %82, %78 ]
  %89 = and i32 %88, 33554431
  %90 = and i32 %88, 16777216
  %91 = sub nsw i32 0, %90
  %92 = or i32 %89, %91
  store i32 %92, ptr %57, align 1
  br label %96

93:                                               ; preds = %49
  %94 = shl nuw nsw i32 %50, 1
  %95 = or i32 %94, 1
  br label %96

96:                                               ; preds = %93, %87, %46, %16
  %97 = phi i32 [ %19, %16 ], [ %51, %87 ], [ %19, %93 ], [ %19, %46 ]
  %98 = phi i32 [ %18, %16 ], [ %19, %87 ], [ %19, %93 ], [ %19, %46 ]
  %99 = phi i32 [ %17, %16 ], [ %50, %87 ], [ %95, %93 ], [ %48, %46 ]
  %100 = add i32 %97, 1
  %101 = icmp ult i32 %100, %14
  br i1 %101, label %16, label %102

102:                                              ; preds = %96
  %103 = sub i32 %100, %98
  %104 = icmp ugt i32 %103, 3
  %105 = add i32 %103, -1
  %106 = shl i32 %99, %105
  %107 = select i1 %104, i32 0, i32 %106
  store i32 %107, ptr %10, align 4
  br label %361

108:                                              ; preds = %4
  %109 = icmp ult i32 %7, 4
  br i1 %109, label %361, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 3
  br label %112

112:                                              ; preds = %128, %110
  %113 = phi i32 [ 4, %110 ], [ %129, %128 ]
  %114 = phi i32 [ 0, %110 ], [ %113, %128 ]
  %115 = getelementptr i8, ptr %6, i32 %114
  %116 = load i32, ptr %115, align 1
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #8
  %118 = and i32 %117, -67108861
  %119 = icmp eq i32 %118, 1207959553
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = and i32 %117, 67108860
  %122 = load i32, ptr %111, align 4
  %123 = add i32 %114, %122
  %124 = sub i32 %121, %123
  %125 = and i32 %124, 67108860
  %126 = or i32 %125, 1207959553
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #8
  store i32 %127, ptr %115, align 1
  br label %128

128:                                              ; preds = %120, %112
  %129 = add i32 %113, 4
  %130 = icmp ugt i32 %129, %7
  br i1 %130, label %361, label %112

131:                                              ; preds = %4
  %132 = icmp ult i32 %7, 16
  br i1 %132, label %361, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 3
  br label %138

135:                                              ; preds = %234
  %136 = add i32 %139, 16
  %137 = icmp ugt i32 %136, %7
  br i1 %137, label %361, label %138

138:                                              ; preds = %135, %133
  %139 = phi i32 [ 16, %133 ], [ %136, %135 ]
  %140 = phi i32 [ 0, %133 ], [ %139, %135 ]
  %141 = getelementptr i8, ptr %6, i32 %140
  %142 = load i8, ptr %141, align 1
  %143 = and i8 %142, 31
  %144 = zext i8 %143 to i32
  %145 = getelementptr [32 x i8], ptr @bcj_ia64.branch_table, i32 0, i32 %144
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  br label %148

148:                                              ; preds = %234, %138
  %149 = phi i32 [ 5, %138 ], [ %236, %234 ]
  %150 = phi i32 [ 0, %138 ], [ %235, %234 ]
  %151 = shl nuw nsw i32 1, %150
  %152 = and i32 %151, %147
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %234, label %154

154:                                              ; preds = %148
  %155 = lshr i32 %149, 3
  %156 = add i32 %155, %140
  %157 = getelementptr i8, ptr %6, i32 %156
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i64
  %160 = add i32 %156, 1
  %161 = getelementptr i8, ptr %6, i32 %160
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i64
  %164 = shl nuw nsw i64 %163, 8
  %165 = or i64 %164, %159
  %166 = add i32 %156, 2
  %167 = getelementptr i8, ptr %6, i32 %166
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i64
  %170 = shl nuw nsw i64 %169, 16
  %171 = or i64 %165, %170
  %172 = add i32 %156, 3
  %173 = getelementptr i8, ptr %6, i32 %172
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i64
  %176 = shl nuw nsw i64 %175, 24
  %177 = or i64 %171, %176
  %178 = add i32 %156, 4
  %179 = getelementptr i8, ptr %6, i32 %178
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i64
  %182 = shl nuw nsw i64 %181, 32
  %183 = or i64 %177, %182
  %184 = add i32 %156, 5
  %185 = getelementptr i8, ptr %6, i32 %184
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i64
  %188 = shl nuw nsw i64 %187, 40
  %189 = or i64 %183, %188
  %190 = and i32 %149, 7
  %191 = zext i32 %190 to i64
  %192 = lshr i64 %189, %191
  %193 = and i64 %192, 2061584305664
  %194 = icmp eq i64 %193, 687194767360
  br i1 %194, label %195, label %234

195:                                              ; preds = %154
  %196 = lshr i64 %192, 13
  %197 = trunc i64 %196 to i32
  %198 = and i32 %197, 1048575
  %199 = lshr i64 %192, 16
  %200 = trunc i64 %199 to i32
  %201 = and i32 %200, 1048576
  %202 = or i32 %198, %201
  %203 = shl nuw nsw i32 %202, 4
  %204 = load i32, ptr %134, align 4
  %205 = add i32 %140, %204
  %206 = sub i32 %203, %205
  %207 = lshr i32 %206, 4
  %208 = and i64 %192, -77309403137
  %209 = and i32 %207, 1048575
  %210 = zext i32 %209 to i64
  %211 = shl nuw nsw i64 %210, 13
  %212 = or i64 %211, %208
  %213 = and i32 %207, 1048576
  %214 = zext i32 %213 to i64
  %215 = shl nuw nsw i64 %214, 16
  %216 = or i64 %212, %215
  %217 = shl nsw i32 -1, %190
  %218 = xor i32 %217, -1
  %219 = zext i32 %218 to i64
  %220 = and i64 %159, %219
  %221 = shl i64 %216, %191
  %222 = or i64 %221, %220
  %223 = trunc i64 %222 to i8
  store i8 %223, ptr %157, align 1
  %224 = lshr i64 %221, 8
  %225 = trunc i64 %224 to i8
  store i8 %225, ptr %161, align 1
  %226 = lshr i64 %221, 16
  %227 = trunc i64 %226 to i8
  store i8 %227, ptr %167, align 1
  %228 = lshr i64 %221, 24
  %229 = trunc i64 %228 to i8
  store i8 %229, ptr %173, align 1
  %230 = lshr i64 %221, 32
  %231 = trunc i64 %230 to i8
  store i8 %231, ptr %179, align 1
  %232 = lshr i64 %221, 40
  %233 = trunc i64 %232 to i8
  store i8 %233, ptr %185, align 1
  br label %234

234:                                              ; preds = %195, %154, %148
  %235 = add nuw nsw i32 %150, 1
  %236 = add nuw nsw i32 %149, 41
  %237 = icmp eq i32 %235, 3
  br i1 %237, label %135, label %148

238:                                              ; preds = %4
  %239 = icmp ult i32 %7, 4
  br i1 %239, label %361, label %240

240:                                              ; preds = %238
  %241 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 3
  br label %242

242:                                              ; preds = %276, %240
  %243 = phi i32 [ 4, %240 ], [ %277, %276 ]
  %244 = phi i32 [ 0, %240 ], [ %243, %276 ]
  %245 = or i32 %244, 3
  %246 = getelementptr i8, ptr %6, i32 %245
  %247 = load i8, ptr %246, align 1
  %248 = icmp eq i8 %247, -21
  br i1 %248, label %249, label %276

249:                                              ; preds = %242
  %250 = getelementptr i8, ptr %6, i32 %244
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i32
  %253 = or i32 %244, 1
  %254 = getelementptr i8, ptr %6, i32 %253
  %255 = load i8, ptr %254, align 1
  %256 = zext i8 %255 to i32
  %257 = or i32 %244, 2
  %258 = getelementptr i8, ptr %6, i32 %257
  %259 = load i8, ptr %258, align 1
  %260 = zext i8 %259 to i32
  %261 = shl nuw nsw i32 %260, 18
  %262 = shl nuw nsw i32 %256, 10
  %263 = shl nuw nsw i32 %252, 2
  %264 = or i32 %262, %263
  %265 = or i32 %264, %261
  %266 = load i32, ptr %241, align 4
  %267 = add i32 %244, %266
  %268 = sub i32 -8, %267
  %269 = add i32 %268, %265
  %270 = lshr i32 %269, 2
  %271 = trunc i32 %270 to i8
  store i8 %271, ptr %250, align 1
  %272 = lshr i32 %269, 10
  %273 = trunc i32 %272 to i8
  store i8 %273, ptr %254, align 1
  %274 = lshr i32 %269, 18
  %275 = trunc i32 %274 to i8
  store i8 %275, ptr %258, align 1
  br label %276

276:                                              ; preds = %249, %242
  %277 = add i32 %243, 4
  %278 = icmp ugt i32 %277, %7
  br i1 %278, label %361, label %242

279:                                              ; preds = %4
  %280 = icmp ult i32 %7, 4
  br i1 %280, label %361, label %281

281:                                              ; preds = %279
  %282 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 3
  br label %283

283:                                              ; preds = %330, %281
  %284 = phi i32 [ 0, %281 ], [ %332, %330 ]
  %285 = add i32 %284, 1
  %286 = getelementptr i8, ptr %6, i32 %285
  %287 = load i8, ptr %286, align 1
  %288 = zext i8 %287 to i32
  %289 = and i32 %288, 248
  %290 = icmp eq i32 %289, 240
  br i1 %290, label %291, label %330

291:                                              ; preds = %283
  %292 = add i32 %284, 3
  %293 = getelementptr i8, ptr %6, i32 %292
  %294 = load i8, ptr %293, align 1
  %295 = zext i8 %294 to i32
  %296 = and i32 %295, 248
  %297 = icmp eq i32 %296, 248
  br i1 %297, label %298, label %330

298:                                              ; preds = %291
  %299 = shl nuw nsw i32 %288, 19
  %300 = and i32 %299, 3670016
  %301 = getelementptr i8, ptr %6, i32 %284
  %302 = load i8, ptr %301, align 1
  %303 = zext i8 %302 to i32
  %304 = shl nuw nsw i32 %303, 11
  %305 = or i32 %304, %300
  %306 = shl nuw nsw i32 %295, 8
  %307 = and i32 %306, 1792
  %308 = or i32 %305, %307
  %309 = add i32 %284, 2
  %310 = getelementptr i8, ptr %6, i32 %309
  %311 = load i8, ptr %310, align 1
  %312 = zext i8 %311 to i32
  %313 = or i32 %308, %312
  %314 = shl nuw nsw i32 %313, 1
  %315 = load i32, ptr %282, align 4
  %316 = add i32 %284, %315
  %317 = sub i32 -4, %316
  %318 = add i32 %317, %314
  %319 = lshr i32 %318, 1
  %320 = lshr i32 %318, 20
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 7
  %323 = or i8 %322, -16
  store i8 %323, ptr %286, align 1
  %324 = lshr i32 %318, 12
  %325 = trunc i32 %324 to i8
  store i8 %325, ptr %301, align 1
  %326 = lshr i32 %318, 9
  %327 = trunc i32 %326 to i8
  %328 = or i8 %327, -8
  store i8 %328, ptr %293, align 1
  %329 = trunc i32 %319 to i8
  store i8 %329, ptr %310, align 1
  br label %330

330:                                              ; preds = %298, %291, %283
  %331 = phi i32 [ %309, %298 ], [ %284, %291 ], [ %284, %283 ]
  %332 = add i32 %331, 2
  %333 = add i32 %331, 6
  %334 = icmp ugt i32 %333, %7
  br i1 %334, label %361, label %283

335:                                              ; preds = %4
  %336 = icmp ult i32 %7, 4
  br i1 %336, label %361, label %337

337:                                              ; preds = %335
  %338 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 3
  br label %339

339:                                              ; preds = %358, %337
  %340 = phi i32 [ 4, %337 ], [ %359, %358 ]
  %341 = phi i32 [ 0, %337 ], [ %340, %358 ]
  %342 = getelementptr i8, ptr %6, i32 %341
  %343 = load i32, ptr %342, align 1
  %344 = tail call i32 @llvm.bswap.i32(i32 %343) #8
  %345 = lshr i32 %344, 22
  switch i32 %345, label %358 [
    i32 511, label %346
    i32 256, label %346
  ]

346:                                              ; preds = %339, %339
  %347 = shl i32 %344, 2
  %348 = load i32, ptr %338, align 4
  %349 = add i32 %341, %348
  %350 = sub i32 %347, %349
  %351 = lshr i32 %350, 2
  %352 = and i32 %351, 4194304
  %353 = sub nuw nsw i32 1073741824, %352
  %354 = and i32 %351, 4194303
  %355 = or i32 %353, %354
  %356 = or i32 %355, 1073741824
  %357 = tail call i32 @llvm.bswap.i32(i32 %356) #8
  store i32 %357, ptr %342, align 1
  br label %358

358:                                              ; preds = %346, %339
  %359 = add i32 %340, 4
  %360 = icmp ugt i32 %359, %7
  br i1 %360, label %361, label %339

361:                                              ; preds = %358, %335, %330, %279, %276, %238, %135, %131, %128, %108, %102, %9, %4
  %362 = phi i32 [ 0, %4 ], [ %100, %102 ], [ 0, %9 ], [ 0, %108 ], [ 0, %131 ], [ 0, %238 ], [ 0, %279 ], [ 0, %335 ], [ %113, %128 ], [ %139, %135 ], [ %243, %276 ], [ %332, %330 ], [ %340, %358 ]
  %363 = load i32, ptr %2, align 4
  %364 = add i32 %363, %362
  store i32 %364, ptr %2, align 4
  %365 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 3
  %366 = load i32, ptr %365, align 4
  %367 = add i32 %366, %362
  store i32 %367, ptr %365, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @xz_dec_bcj_create(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 56) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = zext i1 %0 to i8
  %7 = getelementptr inbounds %struct.xz_dec_bcj, ptr %3, i32 0, i32 2
  store i8 %6, ptr %7, align 8
  br label %8

8:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @xz_dec_bcj_reset(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = add i8 %1, -4
  %4 = icmp ult i8 %3, 6
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = zext i8 %1 to i32
  store i32 %6, ptr %0, align 4
  %7 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xz_dec_bcj, ptr %0, i32 0, i32 8, i32 1
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi i32 [ 0, %5 ], [ 6, %2 ]
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
