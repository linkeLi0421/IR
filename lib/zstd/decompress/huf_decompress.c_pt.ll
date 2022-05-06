; ModuleID = '/llk/IR/lib/zstd/decompress/huf_decompress.c_pt.bc'
source_filename = "../lib/zstd/decompress/huf_decompress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.algo_time_t = type { i32, i32 }
%struct.HUF_ReadDTableX1_Workspace = type { [16 x i32], [16 x i32], [218 x i32], [256 x i8], [256 x i8] }
%struct.HUF_DEltX1 = type { i8, i8 }
%struct.BIT_DStream_t = type { i32, i32, ptr, ptr, ptr }
%struct.HUF_ReadDTableX2_Workspace = type { [12 x [13 x i32]], [13 x i32], [14 x i32], [256 x %struct.sortedSymbol_t], [256 x i8], [218 x i32] }
%struct.sortedSymbol_t = type { i8, i8 }
%struct.HUF_DEltX2 = type { i16, i8, i8 }

@algoTime = internal unnamed_addr constant [16 x [3 x %struct.algo_time_t]] [[3 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }, %struct.algo_time_t { i32 2, i32 2 }], [3 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }, %struct.algo_time_t { i32 2, i32 2 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 38, i32 130 }, %struct.algo_time_t { i32 1313, i32 74 }, %struct.algo_time_t { i32 2151, i32 38 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 448, i32 128 }, %struct.algo_time_t { i32 1353, i32 74 }, %struct.algo_time_t { i32 2238, i32 41 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 556, i32 128 }, %struct.algo_time_t { i32 1353, i32 74 }, %struct.algo_time_t { i32 2238, i32 47 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 714, i32 128 }, %struct.algo_time_t { i32 1418, i32 74 }, %struct.algo_time_t { i32 2436, i32 53 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 883, i32 128 }, %struct.algo_time_t { i32 1437, i32 74 }, %struct.algo_time_t { i32 2464, i32 61 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 897, i32 128 }, %struct.algo_time_t { i32 1515, i32 75 }, %struct.algo_time_t { i32 2622, i32 68 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 926, i32 128 }, %struct.algo_time_t { i32 1613, i32 75 }, %struct.algo_time_t { i32 2730, i32 75 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 947, i32 128 }, %struct.algo_time_t { i32 1729, i32 77 }, %struct.algo_time_t { i32 3359, i32 77 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1107, i32 128 }, %struct.algo_time_t { i32 2083, i32 81 }, %struct.algo_time_t { i32 4006, i32 84 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1177, i32 128 }, %struct.algo_time_t { i32 2379, i32 87 }, %struct.algo_time_t { i32 4785, i32 88 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1242, i32 128 }, %struct.algo_time_t { i32 2415, i32 93 }, %struct.algo_time_t { i32 5155, i32 84 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1349, i32 128 }, %struct.algo_time_t { i32 2644, i32 106 }, %struct.algo_time_t { i32 5260, i32 106 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1455, i32 128 }, %struct.algo_time_t { i32 2422, i32 124 }, %struct.algo_time_t { i32 4174, i32 124 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 722, i32 128 }, %struct.algo_time_t { i32 1891, i32 145 }, %struct.algo_time_t { i32 1936, i32 146 }]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_readDTableX1_wksp(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_readDTableX1_wksp_bmi2(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4
  %9 = getelementptr i32, ptr %0, i32 1
  %10 = icmp ult i32 %4, 1512
  br i1 %10, label %217, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 4
  %13 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 2
  %14 = call i32 @HUF_readStats_wksp(ptr noundef %12, i32 noundef 256, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2, ptr noundef %13, i32 noundef 872, i32 noundef %5) #9
  %15 = icmp ult i32 %14, -119
  br i1 %15, label %16, label %217

16:                                               ; preds = %11
  %17 = load i32, ptr %0, align 4
  %18 = load i32, ptr %7, align 4
  %19 = and i32 %17, 255
  %20 = add nuw nsw i32 %19, 1
  %21 = icmp ugt i32 %18, %20
  br i1 %21, label %217, label %22

22:                                               ; preds = %16
  %23 = trunc i32 %17 to i8
  %24 = lshr i32 %17, 24
  %25 = trunc i32 %24 to i8
  %26 = trunc i32 %18 to i8
  store i8 %23, ptr %0, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 1
  store i8 0, ptr %27, align 1
  %28 = getelementptr inbounds i8, ptr %0, i32 2
  store i8 %26, ptr %28, align 2
  %29 = getelementptr inbounds i8, ptr %0, i32 3
  store i8 %25, ptr %29, align 1
  %30 = load i32, ptr %8, align 4
  %31 = add i32 %30, -3
  %32 = add i32 %18, 1
  %33 = icmp ult i32 %18, 2147483647
  br i1 %33, label %36, label %34

34:                                               ; preds = %36, %22
  %35 = icmp sgt i32 %31, 0
  br i1 %35, label %45, label %84

36:                                               ; preds = %36, %22
  %37 = phi i32 [ %41, %36 ], [ 0, %22 ]
  %38 = phi i32 [ %43, %36 ], [ 0, %22 ]
  %39 = getelementptr [16 x i32], ptr %3, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %37
  %42 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 1, i32 %38
  store i32 %37, ptr %42, align 4
  %43 = add nuw nsw i32 %38, 1
  %44 = icmp eq i32 %38, %18
  br i1 %44, label %34, label %36

45:                                               ; preds = %45, %34
  %46 = phi i32 [ %82, %45 ], [ 0, %34 ]
  %47 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 4, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = trunc i32 %46 to i8
  %51 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 1, i32 %49
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 3, i32 %52
  store i8 %50, ptr %54, align 1
  %55 = or i32 %46, 1
  %56 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 4, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = trunc i32 %55 to i8
  %60 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 1, i32 %58
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 3, i32 %61
  store i8 %59, ptr %63, align 1
  %64 = or i32 %46, 2
  %65 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 4, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = trunc i32 %64 to i8
  %69 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 1, i32 %67
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  %72 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 3, i32 %70
  store i8 %68, ptr %72, align 1
  %73 = or i32 %46, 3
  %74 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 4, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = trunc i32 %73 to i8
  %78 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 1, i32 %76
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  %81 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 3, i32 %79
  store i8 %77, ptr %81, align 1
  %82 = add i32 %46, 4
  %83 = icmp slt i32 %82, %31
  br i1 %83, label %45, label %84

84:                                               ; preds = %45, %34
  %85 = phi i32 [ 0, %34 ], [ %82, %45 ]
  %86 = icmp slt i32 %85, %30
  br i1 %86, label %87, label %99

87:                                               ; preds = %87, %84
  %88 = phi i32 [ %97, %87 ], [ %85, %84 ]
  %89 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 4, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = trunc i32 %88 to i8
  %93 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 1, i32 %91
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 4
  %96 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 3, i32 %94
  store i8 %92, ptr %96, align 1
  %97 = add nsw i32 %88, 1
  %98 = icmp eq i32 %97, %30
  br i1 %98, label %99, label %87

99:                                               ; preds = %87, %84
  %100 = icmp ugt i32 %32, 1
  br i1 %100, label %101, label %217

101:                                              ; preds = %99
  %102 = load i32, ptr %3, align 4
  br label %103

103:                                              ; preds = %211, %101
  %104 = phi i32 [ %214, %211 ], [ 0, %101 ]
  %105 = phi i32 [ %212, %211 ], [ %102, %101 ]
  %106 = phi i32 [ %215, %211 ], [ 1, %101 ]
  %107 = getelementptr [16 x i32], ptr %3, i32 0, i32 %106
  %108 = load i32, ptr %107, align 4
  %109 = shl nuw i32 1, %106
  %110 = ashr exact i32 %109, 1
  %111 = sub i32 %32, %106
  %112 = trunc i32 %111 to i8
  switch i32 %110, label %127 [
    i32 1, label %125
    i32 2, label %123
    i32 4, label %118
    i32 8, label %113
  ]

113:                                              ; preds = %103
  %114 = icmp sgt i32 %108, 0
  br i1 %114, label %115, label %211

115:                                              ; preds = %113
  %116 = shl i32 %111, 8
  %117 = and i32 %116, 65280
  br label %172

118:                                              ; preds = %103
  %119 = icmp sgt i32 %108, 0
  br i1 %119, label %120, label %211

120:                                              ; preds = %118
  %121 = shl i32 %111, 8
  %122 = and i32 %121, 65280
  br label %158

123:                                              ; preds = %103
  %124 = icmp sgt i32 %108, 0
  br i1 %124, label %144, label %211

125:                                              ; preds = %103
  %126 = icmp sgt i32 %108, 0
  br i1 %126, label %133, label %211

127:                                              ; preds = %103
  %128 = icmp sgt i32 %108, 0
  br i1 %128, label %129, label %211

129:                                              ; preds = %127
  %130 = shl i32 %111, 8
  %131 = and i32 %130, 65280
  %132 = icmp sgt i32 %109, 1
  br label %187

133:                                              ; preds = %133, %125
  %134 = phi i32 [ %142, %133 ], [ 0, %125 ]
  %135 = phi i32 [ %141, %133 ], [ %104, %125 ]
  %136 = add i32 %134, %105
  %137 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 3, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = getelementptr %struct.HUF_DEltX1, ptr %9, i32 %135
  store i8 %138, ptr %139, align 1
  %140 = getelementptr inbounds i8, ptr %139, i32 1
  store i8 %112, ptr %140, align 1
  %141 = add i32 %135, 1
  %142 = add nuw nsw i32 %134, 1
  %143 = icmp eq i32 %142, %108
  br i1 %143, label %211, label %133

144:                                              ; preds = %144, %123
  %145 = phi i32 [ %156, %144 ], [ 0, %123 ]
  %146 = phi i32 [ %155, %144 ], [ %104, %123 ]
  %147 = add i32 %145, %105
  %148 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 3, i32 %147
  %149 = load i8, ptr %148, align 1
  %150 = getelementptr %struct.HUF_DEltX1, ptr %9, i32 %146
  store i8 %149, ptr %150, align 1
  %151 = getelementptr inbounds i8, ptr %150, i32 1
  store i8 %112, ptr %151, align 1
  %152 = add i32 %146, 1
  %153 = getelementptr %struct.HUF_DEltX1, ptr %9, i32 %152
  store i8 %149, ptr %153, align 1
  %154 = getelementptr inbounds i8, ptr %153, i32 1
  store i8 %112, ptr %154, align 1
  %155 = add i32 %146, 2
  %156 = add nuw nsw i32 %145, 1
  %157 = icmp eq i32 %156, %108
  br i1 %157, label %211, label %144

158:                                              ; preds = %158, %120
  %159 = phi i32 [ 0, %120 ], [ %170, %158 ]
  %160 = phi i32 [ %104, %120 ], [ %169, %158 ]
  %161 = add i32 %159, %105
  %162 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 3, i32 %161
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = or i32 %122, %164
  %166 = zext i32 %165 to i64
  %167 = mul nuw i64 %166, 281479271743489
  %168 = getelementptr %struct.HUF_DEltX1, ptr %9, i32 %160
  store i64 %167, ptr %168, align 1
  %169 = add i32 %160, 4
  %170 = add nuw nsw i32 %159, 1
  %171 = icmp eq i32 %170, %108
  br i1 %171, label %211, label %158

172:                                              ; preds = %172, %115
  %173 = phi i32 [ 0, %115 ], [ %185, %172 ]
  %174 = phi i32 [ %104, %115 ], [ %184, %172 ]
  %175 = add i32 %173, %105
  %176 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 3, i32 %175
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = or i32 %117, %178
  %180 = zext i32 %179 to i64
  %181 = mul nuw i64 %180, 281479271743489
  %182 = getelementptr %struct.HUF_DEltX1, ptr %9, i32 %174
  store i64 %181, ptr %182, align 1
  %183 = getelementptr %struct.HUF_DEltX1, ptr %182, i32 4
  store i64 %181, ptr %183, align 1
  %184 = add i32 %174, 8
  %185 = add nuw nsw i32 %173, 1
  %186 = icmp eq i32 %185, %108
  br i1 %186, label %211, label %172

187:                                              ; preds = %207, %129
  %188 = phi i32 [ 0, %129 ], [ %209, %207 ]
  %189 = phi i32 [ %104, %129 ], [ %208, %207 ]
  %190 = add i32 %188, %105
  %191 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %3, i32 0, i32 3, i32 %190
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = or i32 %131, %193
  %195 = zext i32 %194 to i64
  %196 = mul nuw i64 %195, 281479271743489
  br i1 %132, label %197, label %207

197:                                              ; preds = %187
  %198 = getelementptr %struct.HUF_DEltX1, ptr %9, i32 %189
  br label %199

199:                                              ; preds = %199, %197
  %200 = phi i32 [ 0, %197 ], [ %205, %199 ]
  %201 = getelementptr %struct.HUF_DEltX1, ptr %198, i32 %200
  store i64 %196, ptr %201, align 1
  %202 = getelementptr %struct.HUF_DEltX1, ptr %201, i32 4
  store i64 %196, ptr %202, align 1
  %203 = getelementptr %struct.HUF_DEltX1, ptr %201, i32 8
  store i64 %196, ptr %203, align 1
  %204 = getelementptr %struct.HUF_DEltX1, ptr %201, i32 12
  store i64 %196, ptr %204, align 1
  %205 = add nuw nsw i32 %200, 16
  %206 = icmp slt i32 %205, %110
  br i1 %206, label %199, label %207

207:                                              ; preds = %199, %187
  %208 = add i32 %189, %110
  %209 = add nuw nsw i32 %188, 1
  %210 = icmp eq i32 %209, %108
  br i1 %210, label %211, label %187

211:                                              ; preds = %207, %172, %158, %144, %133, %127, %125, %123, %118, %113
  %212 = add i32 %108, %105
  %213 = mul i32 %108, %110
  %214 = add i32 %213, %104
  %215 = add nuw i32 %106, 1
  %216 = icmp eq i32 %106, %18
  br i1 %216, label %217, label %103

217:                                              ; preds = %211, %99, %16, %11, %6
  %218 = phi i32 [ -44, %6 ], [ %14, %11 ], [ -44, %16 ], [ %14, %99 ], [ %14, %211 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret i32 %218
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_readStats_wksp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X1_usingDTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #5 {
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 65280
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ -1, %5 ]
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #5 {
  %6 = getelementptr i8, ptr %0, i32 %1
  %7 = getelementptr i32, ptr %4, i32 1
  %8 = load i32, ptr %4, align 4
  %9 = lshr i32 %8, 16
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %221, label %11

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %2, i32 4
  %13 = icmp ugt i32 %3, 3
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = add i32 %3, -1
  %16 = getelementptr i8, ptr %2, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %221, label %47

19:                                               ; preds = %11
  %20 = load i8, ptr %2, align 1
  %21 = zext i8 %20 to i32
  switch i32 %3, label %35 [
    i32 2, label %28
    i32 3, label %22
  ]

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %2, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = or i32 %26, %21
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i32 [ %21, %19 ], [ %27, %22 ]
  %30 = getelementptr i8, ptr %2, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = add nsw i32 %33, %29
  br label %35

35:                                               ; preds = %28, %19
  %36 = phi i32 [ %21, %19 ], [ %34, %28 ]
  %37 = add nsw i32 %3, -1
  %38 = getelementptr i8, ptr %2, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %221, label %41

41:                                               ; preds = %35
  %42 = zext i8 %39 to i32
  %43 = tail call i32 @llvm.ctlz.i32(i32 %42, i1 true) #9, !range !8
  %44 = mul nsw i32 %3, -8
  %45 = add nsw i32 %44, 9
  %46 = add nsw i32 %45, %43
  br label %55

47:                                               ; preds = %14
  %48 = getelementptr i8, ptr %2, i32 %3
  %49 = getelementptr i8, ptr %48, i32 -4
  %50 = load i32, ptr %49, align 1
  %51 = zext i8 %17 to i32
  %52 = tail call i32 @llvm.ctlz.i32(i32 %51, i1 true) #9, !range !8
  %53 = add nsw i32 %52, -23
  %54 = icmp ult i32 %3, -119
  br i1 %54, label %55, label %221

55:                                               ; preds = %47, %41
  %56 = phi ptr [ %2, %41 ], [ %49, %47 ]
  %57 = phi i32 [ %46, %41 ], [ %53, %47 ]
  %58 = phi i32 [ %36, %41 ], [ %50, %47 ]
  %59 = ptrtoint ptr %6 to i32
  %60 = icmp ugt i32 %57, 32
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = sub nsw i32 0, %9
  %63 = and i32 %62, 31
  br label %123

64:                                               ; preds = %55
  %65 = getelementptr i8, ptr %6, i32 -3
  %66 = sub nsw i32 0, %9
  %67 = and i32 %66, 31
  %68 = ptrtoint ptr %2 to i32
  br label %69

69:                                               ; preds = %101, %64
  %70 = phi i32 [ %58, %64 ], [ %97, %101 ]
  %71 = phi i32 [ %57, %64 ], [ %120, %101 ]
  %72 = phi ptr [ %56, %64 ], [ %96, %101 ]
  %73 = phi ptr [ %0, %64 ], [ %121, %101 ]
  %74 = icmp ult ptr %72, %12
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = lshr i32 %71, 3
  %77 = and i32 %71, 7
  br label %91

78:                                               ; preds = %69
  %79 = icmp eq ptr %72, %2
  br i1 %79, label %132, label %80

80:                                               ; preds = %78
  %81 = lshr i32 %71, 3
  %82 = sub nsw i32 0, %81
  %83 = getelementptr i8, ptr %72, i32 %82
  %84 = icmp ult ptr %83, %2
  %85 = ptrtoint ptr %72 to i32
  %86 = sub i32 %85, %68
  %87 = select i1 %84, i32 %86, i32 %81
  %88 = zext i1 %84 to i32
  %89 = mul i32 %87, -8
  %90 = add i32 %89, %71
  br label %91

91:                                               ; preds = %80, %75
  %92 = phi i32 [ %87, %80 ], [ %76, %75 ]
  %93 = phi i32 [ %90, %80 ], [ %77, %75 ]
  %94 = phi i32 [ %88, %80 ], [ 0, %75 ]
  %95 = sub i32 0, %92
  %96 = getelementptr i8, ptr %72, i32 %95
  %97 = load i32, ptr %96, align 1
  %98 = icmp eq i32 %94, 0
  %99 = icmp ult ptr %73, %65
  %100 = and i1 %99, %98
  br i1 %100, label %101, label %123

101:                                              ; preds = %91
  %102 = and i32 %93, 31
  %103 = shl i32 %97, %102
  %104 = lshr i32 %103, %67
  %105 = getelementptr %struct.HUF_DEltX1, ptr %7, i32 %104
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr %struct.HUF_DEltX1, ptr %7, i32 %104, i32 1
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = add i32 %93, %109
  store i8 %106, ptr %73, align 1
  %111 = getelementptr i8, ptr %73, i32 1
  %112 = and i32 %110, 31
  %113 = shl i32 %97, %112
  %114 = lshr i32 %113, %67
  %115 = getelementptr %struct.HUF_DEltX1, ptr %7, i32 %114
  %116 = load i8, ptr %115, align 1
  %117 = getelementptr %struct.HUF_DEltX1, ptr %7, i32 %114, i32 1
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = add i32 %110, %119
  %121 = getelementptr i8, ptr %73, i32 2
  store i8 %116, ptr %111, align 1
  %122 = icmp ugt i32 %120, 32
  br i1 %122, label %161, label %69

123:                                              ; preds = %91, %61
  %124 = phi i32 [ %58, %61 ], [ %97, %91 ]
  %125 = phi i32 [ %57, %61 ], [ %93, %91 ]
  %126 = phi ptr [ %56, %61 ], [ %96, %91 ]
  %127 = phi i32 [ %63, %61 ], [ %67, %91 ]
  %128 = phi ptr [ %0, %61 ], [ %73, %91 ]
  %129 = icmp ugt i32 %125, 32
  br i1 %129, label %161, label %130

130:                                              ; preds = %123
  %131 = ptrtoint ptr %2 to i32
  br label %132

132:                                              ; preds = %130, %78
  %133 = phi i32 [ %131, %130 ], [ %68, %78 ]
  %134 = phi ptr [ %128, %130 ], [ %73, %78 ]
  %135 = phi i32 [ %127, %130 ], [ %67, %78 ]
  %136 = phi ptr [ %126, %130 ], [ %2, %78 ]
  %137 = phi i32 [ %125, %130 ], [ %71, %78 ]
  %138 = phi i32 [ %124, %130 ], [ %70, %78 ]
  br label %139

139:                                              ; preds = %188, %132
  %140 = phi ptr [ %134, %132 ], [ %198, %188 ]
  %141 = phi ptr [ %136, %132 ], [ %173, %188 ]
  %142 = phi i32 [ %137, %132 ], [ %197, %188 ]
  %143 = phi i32 [ %138, %132 ], [ %174, %188 ]
  %144 = icmp ult ptr %141, %12
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = lshr i32 %142, 3
  %147 = and i32 %142, 7
  br label %168

148:                                              ; preds = %139
  %149 = icmp eq ptr %141, %2
  br i1 %149, label %161, label %150

150:                                              ; preds = %148
  %151 = lshr i32 %142, 3
  %152 = sub nsw i32 0, %151
  %153 = getelementptr i8, ptr %141, i32 %152
  %154 = icmp ult ptr %153, %2
  %155 = ptrtoint ptr %141 to i32
  %156 = sub i32 %155, %133
  %157 = select i1 %154, i32 %156, i32 %151
  %158 = zext i1 %154 to i32
  %159 = mul i32 %157, -8
  %160 = add i32 %159, %142
  br label %168

161:                                              ; preds = %188, %148, %123, %101
  %162 = phi i32 [ %127, %123 ], [ %135, %148 ], [ %135, %188 ], [ %67, %101 ]
  %163 = phi i32 [ %124, %123 ], [ %174, %188 ], [ %143, %148 ], [ %97, %101 ]
  %164 = phi i32 [ %125, %123 ], [ %197, %188 ], [ %142, %148 ], [ %120, %101 ]
  %165 = phi ptr [ %126, %123 ], [ %173, %188 ], [ %2, %148 ], [ %96, %101 ]
  %166 = phi ptr [ %128, %123 ], [ %198, %188 ], [ %140, %148 ], [ %121, %101 ]
  %167 = icmp ult ptr %166, %6
  br i1 %167, label %179, label %214

168:                                              ; preds = %150, %145
  %169 = phi i32 [ %157, %150 ], [ %146, %145 ]
  %170 = phi i32 [ %160, %150 ], [ %147, %145 ]
  %171 = phi i32 [ %158, %150 ], [ 0, %145 ]
  %172 = sub i32 0, %169
  %173 = getelementptr i8, ptr %141, i32 %172
  %174 = load i32, ptr %173, align 1
  %175 = icmp eq i32 %171, 0
  %176 = icmp ult ptr %140, %6
  %177 = and i1 %176, %175
  br i1 %177, label %188, label %178

178:                                              ; preds = %168
  br i1 %176, label %179, label %214

179:                                              ; preds = %178, %161
  %180 = phi i32 [ %162, %161 ], [ %135, %178 ]
  %181 = phi ptr [ %166, %161 ], [ %140, %178 ]
  %182 = phi i32 [ %163, %161 ], [ %174, %178 ]
  %183 = phi ptr [ %165, %161 ], [ %173, %178 ]
  %184 = phi i32 [ %164, %161 ], [ %170, %178 ]
  %185 = ptrtoint ptr %181 to i32
  %186 = sub i32 %59, %185
  %187 = getelementptr i8, ptr %181, i32 %186
  br label %200

188:                                              ; preds = %168
  %189 = and i32 %170, 31
  %190 = shl i32 %174, %189
  %191 = lshr i32 %190, %135
  %192 = getelementptr %struct.HUF_DEltX1, ptr %7, i32 %191
  %193 = load i8, ptr %192, align 1
  %194 = getelementptr %struct.HUF_DEltX1, ptr %7, i32 %191, i32 1
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i32
  %197 = add i32 %170, %196
  %198 = getelementptr i8, ptr %140, i32 1
  store i8 %193, ptr %140, align 1
  %199 = icmp ugt i32 %197, 32
  br i1 %199, label %161, label %139

200:                                              ; preds = %200, %179
  %201 = phi i32 [ %184, %179 ], [ %211, %200 ]
  %202 = phi ptr [ %181, %179 ], [ %212, %200 ]
  %203 = and i32 %201, 31
  %204 = shl i32 %182, %203
  %205 = lshr i32 %204, %180
  %206 = getelementptr %struct.HUF_DEltX1, ptr %7, i32 %205
  %207 = load i8, ptr %206, align 1
  %208 = getelementptr %struct.HUF_DEltX1, ptr %7, i32 %205, i32 1
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i32
  %211 = add i32 %201, %210
  %212 = getelementptr i8, ptr %202, i32 1
  store i8 %207, ptr %202, align 1
  %213 = icmp eq ptr %212, %187
  br i1 %213, label %214, label %200

214:                                              ; preds = %200, %178, %161
  %215 = phi i32 [ %164, %161 ], [ %170, %178 ], [ %211, %200 ]
  %216 = phi ptr [ %165, %161 ], [ %173, %178 ], [ %183, %200 ]
  %217 = icmp eq ptr %216, %2
  %218 = icmp eq i32 %215, 32
  %219 = select i1 %217, i1 %218, i1 false
  %220 = select i1 %219, i32 %1, i32 -20
  br label %221

221:                                              ; preds = %214, %47, %35, %14, %5
  %222 = phi i32 [ %3, %47 ], [ -20, %35 ], [ -1, %14 ], [ -72, %5 ], [ %220, %214 ]
  ret i32 %222
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X1_DCtx_wksp(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 0) #9
  %9 = icmp ult i32 %8, -119
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ult i32 %8, %4
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %3, i32 %8
  %14 = sub i32 %4, %8
  %15 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %13, i32 noundef %14, ptr noundef %0)
  br label %16

16:                                               ; preds = %12, %10, %7
  %17 = phi i32 [ %15, %12 ], [ %8, %7 ], [ -72, %10 ]
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X1_usingDTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 65280
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ -1, %5 ]
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #5 {
  %6 = alloca %struct.BIT_DStream_t, align 4
  %7 = icmp ult i32 %3, 10
  br i1 %7, label %1004, label %8

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %0, i32 %1
  %10 = getelementptr i8, ptr %9, i32 -3
  %11 = getelementptr i32, ptr %4, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #9, !annotation !9
  %12 = load i16, ptr %2, align 1
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %2, i32 2
  %15 = load i16, ptr %14, align 1
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %2, i32 4
  %18 = load i16, ptr %17, align 1
  %19 = zext i16 %18 to i32
  %20 = add nuw nsw i32 %13, 6
  %21 = add nuw nsw i32 %20, %16
  %22 = add nuw nsw i32 %21, %19
  %23 = sub i32 %3, %22
  %24 = getelementptr i8, ptr %2, i32 6
  %25 = getelementptr i8, ptr %24, i32 %13
  %26 = getelementptr i8, ptr %25, i32 %16
  %27 = getelementptr i8, ptr %26, i32 %19
  %28 = add i32 %1, 3
  %29 = lshr i32 %28, 2
  %30 = getelementptr i8, ptr %0, i32 %29
  %31 = getelementptr i8, ptr %30, i32 %29
  %32 = getelementptr i8, ptr %31, i32 %29
  %33 = load i32, ptr %4, align 4
  %34 = lshr i32 %33, 16
  %35 = icmp ugt i32 %22, %3
  br i1 %35, label %1002, label %36

36:                                               ; preds = %8
  %37 = icmp eq i16 %12, 0
  br i1 %37, label %1002, label %38

38:                                               ; preds = %36
  %39 = getelementptr i8, ptr %2, i32 10
  %40 = icmp ugt i16 %12, 3
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = add nsw i32 %13, -1
  %43 = getelementptr i8, ptr %24, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %1002, label %46

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %25, i32 -4
  %48 = load i32, ptr %47, align 1
  %49 = zext i8 %44 to i32
  %50 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 true) #9, !range !8
  %51 = add nsw i32 %50, -23
  br label %80

52:                                               ; preds = %38
  %53 = load i8, ptr %24, align 1
  %54 = zext i8 %53 to i32
  switch i16 %12, label %68 [
    i16 2, label %61
    i16 3, label %55
  ]

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %2, i32 8
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = or i32 %59, %54
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi i32 [ %54, %52 ], [ %60, %55 ]
  %63 = getelementptr i8, ptr %2, i32 7
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 8
  %67 = add nsw i32 %66, %62
  br label %68

68:                                               ; preds = %61, %52
  %69 = phi i32 [ %54, %52 ], [ %67, %61 ]
  %70 = add nsw i32 %13, -1
  %71 = getelementptr i8, ptr %24, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %1002, label %74

74:                                               ; preds = %68
  %75 = zext i8 %72 to i32
  %76 = tail call i32 @llvm.ctlz.i32(i32 %75, i1 true) #9, !range !8
  %77 = mul nsw i32 %13, -8
  %78 = add nsw i32 %77, 9
  %79 = add nsw i32 %78, %76
  br label %80

80:                                               ; preds = %74, %46
  %81 = phi i32 [ %48, %46 ], [ %69, %74 ]
  %82 = phi i32 [ %51, %46 ], [ %79, %74 ]
  %83 = phi ptr [ %47, %46 ], [ %24, %74 ]
  %84 = icmp eq i16 %15, 0
  br i1 %84, label %1002, label %85

85:                                               ; preds = %80
  %86 = getelementptr i8, ptr %25, i32 4
  %87 = icmp ugt i16 %15, 3
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = add nsw i32 %16, -1
  %90 = getelementptr i8, ptr %25, i32 %89
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %1002, label %93

93:                                               ; preds = %88
  %94 = getelementptr i8, ptr %26, i32 -4
  %95 = load i32, ptr %94, align 1
  %96 = zext i8 %91 to i32
  %97 = tail call i32 @llvm.ctlz.i32(i32 %96, i1 true) #9, !range !8
  %98 = add nsw i32 %97, -23
  br label %127

99:                                               ; preds = %85
  %100 = load i8, ptr %25, align 1
  %101 = zext i8 %100 to i32
  switch i16 %15, label %115 [
    i16 2, label %108
    i16 3, label %102
  ]

102:                                              ; preds = %99
  %103 = getelementptr i8, ptr %25, i32 2
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = or i32 %106, %101
  br label %108

108:                                              ; preds = %102, %99
  %109 = phi i32 [ %101, %99 ], [ %107, %102 ]
  %110 = getelementptr i8, ptr %25, i32 1
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 8
  %114 = add nsw i32 %113, %109
  br label %115

115:                                              ; preds = %108, %99
  %116 = phi i32 [ %101, %99 ], [ %114, %108 ]
  %117 = add nsw i32 %16, -1
  %118 = getelementptr i8, ptr %25, i32 %117
  %119 = load i8, ptr %118, align 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %1002, label %121

121:                                              ; preds = %115
  %122 = zext i8 %119 to i32
  %123 = tail call i32 @llvm.ctlz.i32(i32 %122, i1 true) #9, !range !8
  %124 = mul nsw i32 %16, -8
  %125 = add nsw i32 %124, 9
  %126 = add nsw i32 %125, %123
  br label %127

127:                                              ; preds = %121, %93
  %128 = phi i32 [ %95, %93 ], [ %116, %121 ]
  %129 = phi i32 [ %98, %93 ], [ %126, %121 ]
  %130 = phi ptr [ %94, %93 ], [ %25, %121 ]
  %131 = icmp eq i16 %18, 0
  br i1 %131, label %1002, label %132

132:                                              ; preds = %127
  %133 = getelementptr i8, ptr %26, i32 4
  %134 = icmp ugt i16 %18, 3
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = add nsw i32 %19, -1
  %137 = getelementptr i8, ptr %26, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %1002, label %140

140:                                              ; preds = %135
  %141 = getelementptr i8, ptr %27, i32 -4
  %142 = load i32, ptr %141, align 1
  %143 = zext i8 %138 to i32
  %144 = tail call i32 @llvm.ctlz.i32(i32 %143, i1 true) #9, !range !8
  %145 = add nsw i32 %144, -23
  br label %174

146:                                              ; preds = %132
  %147 = load i8, ptr %26, align 1
  %148 = zext i8 %147 to i32
  switch i16 %18, label %162 [
    i16 2, label %155
    i16 3, label %149
  ]

149:                                              ; preds = %146
  %150 = getelementptr i8, ptr %26, i32 2
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = shl nuw nsw i32 %152, 16
  %154 = or i32 %153, %148
  br label %155

155:                                              ; preds = %149, %146
  %156 = phi i32 [ %148, %146 ], [ %154, %149 ]
  %157 = getelementptr i8, ptr %26, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 8
  %161 = add nsw i32 %160, %156
  br label %162

162:                                              ; preds = %155, %146
  %163 = phi i32 [ %148, %146 ], [ %161, %155 ]
  %164 = add nsw i32 %19, -1
  %165 = getelementptr i8, ptr %26, i32 %164
  %166 = load i8, ptr %165, align 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %1002, label %168

168:                                              ; preds = %162
  %169 = zext i8 %166 to i32
  %170 = tail call i32 @llvm.ctlz.i32(i32 %169, i1 true) #9, !range !8
  %171 = mul nsw i32 %19, -8
  %172 = add nsw i32 %171, 9
  %173 = add nsw i32 %172, %170
  br label %174

174:                                              ; preds = %168, %140
  %175 = phi i32 [ %142, %140 ], [ %163, %168 ]
  %176 = phi i32 [ %145, %140 ], [ %173, %168 ]
  %177 = phi ptr [ %141, %140 ], [ %26, %168 ]
  %178 = call fastcc i32 @BIT_initDStream(ptr noundef nonnull %6, ptr noundef %27, i32 noundef %23) #9
  %179 = icmp ult i32 %178, -119
  br i1 %179, label %180, label %1002

180:                                              ; preds = %174
  %181 = icmp ult ptr %32, %10
  br i1 %181, label %182, label %344

182:                                              ; preds = %180
  %183 = sub nsw i32 0, %34
  %184 = and i32 %183, 31
  %185 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 1
  %186 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 2
  %187 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 4
  %188 = load ptr, ptr %187, align 4
  %189 = load i32, ptr %6, align 4
  %190 = load i32, ptr %185, align 4
  br label %191

191:                                              ; preds = %329, %182
  %192 = phi i32 [ %190, %182 ], [ %330, %329 ]
  %193 = phi i32 [ %189, %182 ], [ %331, %329 ]
  %194 = phi i32 [ 1, %182 ], [ %339, %329 ]
  %195 = phi ptr [ %32, %182 ], [ %287, %329 ]
  %196 = phi ptr [ %31, %182 ], [ %277, %329 ]
  %197 = phi ptr [ %30, %182 ], [ %267, %329 ]
  %198 = phi ptr [ %0, %182 ], [ %257, %329 ]
  %199 = phi ptr [ %177, %182 ], [ %320, %329 ]
  %200 = phi i32 [ %176, %182 ], [ %319, %329 ]
  %201 = phi i32 [ %175, %182 ], [ %318, %329 ]
  %202 = phi ptr [ %130, %182 ], [ %309, %329 ]
  %203 = phi i32 [ %129, %182 ], [ %308, %329 ]
  %204 = phi i32 [ %128, %182 ], [ %307, %329 ]
  %205 = phi ptr [ %83, %182 ], [ %298, %329 ]
  %206 = phi i32 [ %82, %182 ], [ %297, %329 ]
  %207 = phi i32 [ %81, %182 ], [ %296, %329 ]
  %208 = and i32 %206, 31
  %209 = shl i32 %207, %208
  %210 = lshr i32 %209, %184
  %211 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %210
  %212 = load i8, ptr %211, align 1
  %213 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %210, i32 1
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i32
  %216 = add i32 %206, %215
  %217 = getelementptr i8, ptr %198, i32 1
  store i8 %212, ptr %198, align 1
  %218 = and i32 %203, 31
  %219 = shl i32 %204, %218
  %220 = lshr i32 %219, %184
  %221 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %220
  %222 = load i8, ptr %221, align 1
  %223 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %220, i32 1
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = add i32 %203, %225
  %227 = getelementptr i8, ptr %197, i32 1
  store i8 %222, ptr %197, align 1
  %228 = and i32 %200, 31
  %229 = shl i32 %201, %228
  %230 = lshr i32 %229, %184
  %231 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %230
  %232 = load i8, ptr %231, align 1
  %233 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %230, i32 1
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i32
  %236 = add i32 %200, %235
  %237 = getelementptr i8, ptr %196, i32 1
  store i8 %232, ptr %196, align 1
  %238 = and i32 %192, 31
  %239 = shl i32 %193, %238
  %240 = lshr i32 %239, %184
  %241 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %240
  %242 = load i8, ptr %241, align 1
  %243 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %240, i32 1
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = add i32 %192, %245
  %247 = getelementptr i8, ptr %195, i32 1
  store i8 %242, ptr %195, align 1
  %248 = and i32 %216, 31
  %249 = shl i32 %207, %248
  %250 = lshr i32 %249, %184
  %251 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %250
  %252 = load i8, ptr %251, align 1
  %253 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %250, i32 1
  %254 = load i8, ptr %253, align 1
  %255 = zext i8 %254 to i32
  %256 = add i32 %216, %255
  %257 = getelementptr i8, ptr %198, i32 2
  store i8 %252, ptr %217, align 1
  %258 = and i32 %226, 31
  %259 = shl i32 %204, %258
  %260 = lshr i32 %259, %184
  %261 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %260
  %262 = load i8, ptr %261, align 1
  %263 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %260, i32 1
  %264 = load i8, ptr %263, align 1
  %265 = zext i8 %264 to i32
  %266 = add i32 %226, %265
  %267 = getelementptr i8, ptr %197, i32 2
  store i8 %262, ptr %227, align 1
  %268 = and i32 %236, 31
  %269 = shl i32 %201, %268
  %270 = lshr i32 %269, %184
  %271 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %270
  %272 = load i8, ptr %271, align 1
  %273 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %270, i32 1
  %274 = load i8, ptr %273, align 1
  %275 = zext i8 %274 to i32
  %276 = add i32 %236, %275
  %277 = getelementptr i8, ptr %196, i32 2
  store i8 %272, ptr %237, align 1
  %278 = and i32 %246, 31
  %279 = shl i32 %193, %278
  %280 = lshr i32 %279, %184
  %281 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %280
  %282 = load i8, ptr %281, align 1
  %283 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %280, i32 1
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i32
  %286 = add i32 %246, %285
  store i32 %286, ptr %185, align 4
  %287 = getelementptr i8, ptr %195, i32 2
  store i8 %282, ptr %247, align 1
  %288 = icmp ult ptr %205, %39
  br i1 %288, label %295, label %289, !prof !10

289:                                              ; preds = %191
  %290 = lshr i32 %256, 3
  %291 = sub nsw i32 0, %290
  %292 = getelementptr i8, ptr %205, i32 %291
  %293 = and i32 %256, 7
  %294 = load i32, ptr %292, align 1
  br label %295

295:                                              ; preds = %289, %191
  %296 = phi i32 [ %207, %191 ], [ %294, %289 ]
  %297 = phi i32 [ %256, %191 ], [ %293, %289 ]
  %298 = phi ptr [ %205, %191 ], [ %292, %289 ]
  %299 = icmp ult ptr %202, %86
  br i1 %299, label %306, label %300, !prof !10

300:                                              ; preds = %295
  %301 = lshr i32 %266, 3
  %302 = sub nsw i32 0, %301
  %303 = getelementptr i8, ptr %202, i32 %302
  %304 = and i32 %266, 7
  %305 = load i32, ptr %303, align 1
  br label %306

306:                                              ; preds = %300, %295
  %307 = phi i32 [ %204, %295 ], [ %305, %300 ]
  %308 = phi i32 [ %266, %295 ], [ %304, %300 ]
  %309 = phi ptr [ %202, %295 ], [ %303, %300 ]
  %310 = icmp ult ptr %199, %133
  br i1 %310, label %317, label %311, !prof !10

311:                                              ; preds = %306
  %312 = lshr i32 %276, 3
  %313 = sub nsw i32 0, %312
  %314 = getelementptr i8, ptr %199, i32 %313
  %315 = and i32 %276, 7
  %316 = load i32, ptr %314, align 1
  br label %317

317:                                              ; preds = %311, %306
  %318 = phi i32 [ %201, %306 ], [ %316, %311 ]
  %319 = phi i32 [ %276, %306 ], [ %315, %311 ]
  %320 = phi ptr [ %199, %306 ], [ %314, %311 ]
  %321 = load ptr, ptr %186, align 4
  %322 = icmp ult ptr %321, %188
  br i1 %322, label %329, label %323, !prof !10

323:                                              ; preds = %317
  %324 = lshr i32 %286, 3
  %325 = sub nsw i32 0, %324
  %326 = getelementptr i8, ptr %321, i32 %325
  store ptr %326, ptr %186, align 4
  %327 = and i32 %286, 7
  store i32 %327, ptr %185, align 4
  %328 = load i32, ptr %326, align 1
  store i32 %328, ptr %6, align 4
  br label %329

329:                                              ; preds = %323, %317
  %330 = phi i32 [ %286, %317 ], [ %327, %323 ]
  %331 = phi i32 [ %193, %317 ], [ %328, %323 ]
  %332 = xor i1 %322, true
  %333 = zext i1 %332 to i32
  %334 = or i1 %299, %288
  %335 = or i1 %310, %334
  %336 = xor i1 %335, true
  %337 = zext i1 %336 to i32
  %338 = and i32 %194, %337
  %339 = and i32 %338, %333
  %340 = icmp ult ptr %287, %10
  %341 = zext i1 %340 to i32
  %342 = and i32 %339, %341
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %191

344:                                              ; preds = %329, %180
  %345 = phi i32 [ %81, %180 ], [ %296, %329 ]
  %346 = phi i32 [ %82, %180 ], [ %297, %329 ]
  %347 = phi ptr [ %83, %180 ], [ %298, %329 ]
  %348 = phi i32 [ %128, %180 ], [ %307, %329 ]
  %349 = phi i32 [ %129, %180 ], [ %308, %329 ]
  %350 = phi ptr [ %130, %180 ], [ %309, %329 ]
  %351 = phi i32 [ %175, %180 ], [ %318, %329 ]
  %352 = phi i32 [ %176, %180 ], [ %319, %329 ]
  %353 = phi ptr [ %177, %180 ], [ %320, %329 ]
  %354 = phi ptr [ %0, %180 ], [ %257, %329 ]
  %355 = phi ptr [ %30, %180 ], [ %267, %329 ]
  %356 = phi ptr [ %31, %180 ], [ %277, %329 ]
  %357 = phi ptr [ %32, %180 ], [ %287, %329 ]
  %358 = icmp ugt ptr %354, %30
  %359 = icmp ugt ptr %355, %31
  %360 = select i1 %358, i1 true, i1 %359
  %361 = icmp ugt ptr %356, %32
  %362 = select i1 %360, i1 true, i1 %361
  br i1 %362, label %1002, label %363

363:                                              ; preds = %344
  %364 = ptrtoint ptr %30 to i32
  %365 = icmp ugt i32 %346, 32
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = sub nsw i32 0, %34
  %368 = and i32 %367, 31
  br label %456

369:                                              ; preds = %363
  %370 = getelementptr i8, ptr %30, i32 -3
  %371 = sub nsw i32 0, %34
  %372 = and i32 %371, 31
  %373 = ptrtoint ptr %24 to i32
  br label %374

374:                                              ; preds = %406, %369
  %375 = phi i32 [ %345, %369 ], [ %402, %406 ]
  %376 = phi i32 [ %346, %369 ], [ %425, %406 ]
  %377 = phi ptr [ %347, %369 ], [ %401, %406 ]
  %378 = phi ptr [ %354, %369 ], [ %426, %406 ]
  %379 = icmp ult ptr %377, %39
  br i1 %379, label %383, label %380

380:                                              ; preds = %374
  %381 = lshr i32 %376, 3
  %382 = and i32 %376, 7
  br label %396

383:                                              ; preds = %374
  %384 = icmp eq ptr %377, %24
  br i1 %384, label %430, label %385

385:                                              ; preds = %383
  %386 = lshr i32 %376, 3
  %387 = sub nsw i32 0, %386
  %388 = getelementptr i8, ptr %377, i32 %387
  %389 = icmp ult ptr %388, %24
  %390 = ptrtoint ptr %377 to i32
  %391 = sub i32 %390, %373
  %392 = select i1 %389, i32 %391, i32 %386
  %393 = zext i1 %389 to i32
  %394 = mul i32 %392, -8
  %395 = add i32 %394, %376
  br label %396

396:                                              ; preds = %385, %380
  %397 = phi i32 [ %392, %385 ], [ %381, %380 ]
  %398 = phi i32 [ %395, %385 ], [ %382, %380 ]
  %399 = phi i32 [ %393, %385 ], [ 0, %380 ]
  %400 = sub i32 0, %397
  %401 = getelementptr i8, ptr %377, i32 %400
  %402 = load i32, ptr %401, align 1
  %403 = icmp eq i32 %399, 0
  %404 = icmp ult ptr %378, %370
  %405 = and i1 %404, %403
  br i1 %405, label %406, label %428

406:                                              ; preds = %396
  %407 = and i32 %398, 31
  %408 = shl i32 %402, %407
  %409 = lshr i32 %408, %372
  %410 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %409
  %411 = load i8, ptr %410, align 1
  %412 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %409, i32 1
  %413 = load i8, ptr %412, align 1
  %414 = zext i8 %413 to i32
  %415 = add i32 %398, %414
  store i8 %411, ptr %378, align 1
  %416 = getelementptr i8, ptr %378, i32 1
  %417 = and i32 %415, 31
  %418 = shl i32 %402, %417
  %419 = lshr i32 %418, %372
  %420 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %419
  %421 = load i8, ptr %420, align 1
  %422 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %419, i32 1
  %423 = load i8, ptr %422, align 1
  %424 = zext i8 %423 to i32
  %425 = add i32 %415, %424
  %426 = getelementptr i8, ptr %378, i32 2
  store i8 %421, ptr %416, align 1
  %427 = icmp ugt i32 %425, 32
  br i1 %427, label %456, label %374

428:                                              ; preds = %396
  %429 = icmp ugt i32 %398, 32
  br i1 %429, label %456, label %430

430:                                              ; preds = %428, %383
  %431 = phi ptr [ %401, %428 ], [ %24, %383 ]
  %432 = phi i32 [ %398, %428 ], [ %376, %383 ]
  %433 = phi i32 [ %402, %428 ], [ %375, %383 ]
  br label %434

434:                                              ; preds = %483, %430
  %435 = phi ptr [ %493, %483 ], [ %378, %430 ]
  %436 = phi ptr [ %468, %483 ], [ %431, %430 ]
  %437 = phi i32 [ %492, %483 ], [ %432, %430 ]
  %438 = phi i32 [ %469, %483 ], [ %433, %430 ]
  %439 = icmp ult ptr %436, %39
  br i1 %439, label %443, label %440

440:                                              ; preds = %434
  %441 = lshr i32 %437, 3
  %442 = and i32 %437, 7
  br label %463

443:                                              ; preds = %434
  %444 = icmp eq ptr %436, %24
  br i1 %444, label %456, label %445

445:                                              ; preds = %443
  %446 = lshr i32 %437, 3
  %447 = sub nsw i32 0, %446
  %448 = getelementptr i8, ptr %436, i32 %447
  %449 = icmp ult ptr %448, %24
  %450 = ptrtoint ptr %436 to i32
  %451 = sub i32 %450, %373
  %452 = select i1 %449, i32 %451, i32 %446
  %453 = zext i1 %449 to i32
  %454 = mul i32 %452, -8
  %455 = add i32 %454, %437
  br label %463

456:                                              ; preds = %483, %443, %428, %406, %366
  %457 = phi i32 [ %372, %428 ], [ %368, %366 ], [ %372, %443 ], [ %372, %483 ], [ %372, %406 ]
  %458 = phi i32 [ %402, %428 ], [ %345, %366 ], [ %469, %483 ], [ %438, %443 ], [ %402, %406 ]
  %459 = phi i32 [ %398, %428 ], [ %346, %366 ], [ %492, %483 ], [ %437, %443 ], [ %425, %406 ]
  %460 = phi ptr [ %401, %428 ], [ %347, %366 ], [ %468, %483 ], [ %24, %443 ], [ %401, %406 ]
  %461 = phi ptr [ %378, %428 ], [ %354, %366 ], [ %493, %483 ], [ %435, %443 ], [ %426, %406 ]
  %462 = icmp ult ptr %461, %30
  br i1 %462, label %474, label %509

463:                                              ; preds = %445, %440
  %464 = phi i32 [ %452, %445 ], [ %441, %440 ]
  %465 = phi i32 [ %455, %445 ], [ %442, %440 ]
  %466 = phi i32 [ %453, %445 ], [ 0, %440 ]
  %467 = sub i32 0, %464
  %468 = getelementptr i8, ptr %436, i32 %467
  %469 = load i32, ptr %468, align 1
  %470 = icmp eq i32 %466, 0
  %471 = icmp ult ptr %435, %30
  %472 = and i1 %471, %470
  br i1 %472, label %483, label %473

473:                                              ; preds = %463
  br i1 %471, label %474, label %509

474:                                              ; preds = %473, %456
  %475 = phi i32 [ %457, %456 ], [ %372, %473 ]
  %476 = phi ptr [ %461, %456 ], [ %435, %473 ]
  %477 = phi i32 [ %458, %456 ], [ %469, %473 ]
  %478 = phi ptr [ %460, %456 ], [ %468, %473 ]
  %479 = phi i32 [ %459, %456 ], [ %465, %473 ]
  %480 = ptrtoint ptr %476 to i32
  %481 = sub i32 %364, %480
  %482 = getelementptr i8, ptr %476, i32 %481
  br label %495

483:                                              ; preds = %463
  %484 = and i32 %465, 31
  %485 = shl i32 %469, %484
  %486 = lshr i32 %485, %372
  %487 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %486
  %488 = load i8, ptr %487, align 1
  %489 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %486, i32 1
  %490 = load i8, ptr %489, align 1
  %491 = zext i8 %490 to i32
  %492 = add i32 %465, %491
  %493 = getelementptr i8, ptr %435, i32 1
  store i8 %488, ptr %435, align 1
  %494 = icmp ugt i32 %492, 32
  br i1 %494, label %456, label %434

495:                                              ; preds = %495, %474
  %496 = phi i32 [ %479, %474 ], [ %506, %495 ]
  %497 = phi ptr [ %476, %474 ], [ %507, %495 ]
  %498 = and i32 %496, 31
  %499 = shl i32 %477, %498
  %500 = lshr i32 %499, %475
  %501 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %500
  %502 = load i8, ptr %501, align 1
  %503 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %500, i32 1
  %504 = load i8, ptr %503, align 1
  %505 = zext i8 %504 to i32
  %506 = add i32 %496, %505
  %507 = getelementptr i8, ptr %497, i32 1
  store i8 %502, ptr %497, align 1
  %508 = icmp eq ptr %507, %482
  br i1 %508, label %509, label %495

509:                                              ; preds = %495, %473, %456
  %510 = phi i32 [ %459, %456 ], [ %465, %473 ], [ %506, %495 ]
  %511 = phi ptr [ %460, %456 ], [ %468, %473 ], [ %478, %495 ]
  %512 = ptrtoint ptr %31 to i32
  %513 = icmp ugt i32 %349, 32
  br i1 %513, label %514, label %517

514:                                              ; preds = %509
  %515 = sub nsw i32 0, %34
  %516 = and i32 %515, 31
  br label %604

517:                                              ; preds = %509
  %518 = getelementptr i8, ptr %31, i32 -3
  %519 = sub nsw i32 0, %34
  %520 = and i32 %519, 31
  %521 = ptrtoint ptr %25 to i32
  br label %522

522:                                              ; preds = %554, %517
  %523 = phi i32 [ %348, %517 ], [ %550, %554 ]
  %524 = phi i32 [ %349, %517 ], [ %573, %554 ]
  %525 = phi ptr [ %350, %517 ], [ %549, %554 ]
  %526 = phi ptr [ %355, %517 ], [ %574, %554 ]
  %527 = icmp ult ptr %525, %86
  br i1 %527, label %531, label %528

528:                                              ; preds = %522
  %529 = lshr i32 %524, 3
  %530 = and i32 %524, 7
  br label %544

531:                                              ; preds = %522
  %532 = icmp eq ptr %525, %25
  br i1 %532, label %578, label %533

533:                                              ; preds = %531
  %534 = lshr i32 %524, 3
  %535 = sub nsw i32 0, %534
  %536 = getelementptr i8, ptr %525, i32 %535
  %537 = icmp ult ptr %536, %25
  %538 = ptrtoint ptr %525 to i32
  %539 = sub i32 %538, %521
  %540 = select i1 %537, i32 %539, i32 %534
  %541 = zext i1 %537 to i32
  %542 = mul i32 %540, -8
  %543 = add i32 %542, %524
  br label %544

544:                                              ; preds = %533, %528
  %545 = phi i32 [ %540, %533 ], [ %529, %528 ]
  %546 = phi i32 [ %543, %533 ], [ %530, %528 ]
  %547 = phi i32 [ %541, %533 ], [ 0, %528 ]
  %548 = sub i32 0, %545
  %549 = getelementptr i8, ptr %525, i32 %548
  %550 = load i32, ptr %549, align 1
  %551 = icmp eq i32 %547, 0
  %552 = icmp ult ptr %526, %518
  %553 = and i1 %552, %551
  br i1 %553, label %554, label %576

554:                                              ; preds = %544
  %555 = and i32 %546, 31
  %556 = shl i32 %550, %555
  %557 = lshr i32 %556, %520
  %558 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %557
  %559 = load i8, ptr %558, align 1
  %560 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %557, i32 1
  %561 = load i8, ptr %560, align 1
  %562 = zext i8 %561 to i32
  %563 = add i32 %546, %562
  store i8 %559, ptr %526, align 1
  %564 = getelementptr i8, ptr %526, i32 1
  %565 = and i32 %563, 31
  %566 = shl i32 %550, %565
  %567 = lshr i32 %566, %520
  %568 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %567
  %569 = load i8, ptr %568, align 1
  %570 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %567, i32 1
  %571 = load i8, ptr %570, align 1
  %572 = zext i8 %571 to i32
  %573 = add i32 %563, %572
  %574 = getelementptr i8, ptr %526, i32 2
  store i8 %569, ptr %564, align 1
  %575 = icmp ugt i32 %573, 32
  br i1 %575, label %604, label %522

576:                                              ; preds = %544
  %577 = icmp ugt i32 %546, 32
  br i1 %577, label %604, label %578

578:                                              ; preds = %576, %531
  %579 = phi ptr [ %549, %576 ], [ %25, %531 ]
  %580 = phi i32 [ %546, %576 ], [ %524, %531 ]
  %581 = phi i32 [ %550, %576 ], [ %523, %531 ]
  br label %582

582:                                              ; preds = %631, %578
  %583 = phi ptr [ %641, %631 ], [ %526, %578 ]
  %584 = phi ptr [ %616, %631 ], [ %579, %578 ]
  %585 = phi i32 [ %640, %631 ], [ %580, %578 ]
  %586 = phi i32 [ %617, %631 ], [ %581, %578 ]
  %587 = icmp ult ptr %584, %86
  br i1 %587, label %591, label %588

588:                                              ; preds = %582
  %589 = lshr i32 %585, 3
  %590 = and i32 %585, 7
  br label %611

591:                                              ; preds = %582
  %592 = icmp eq ptr %584, %25
  br i1 %592, label %604, label %593

593:                                              ; preds = %591
  %594 = lshr i32 %585, 3
  %595 = sub nsw i32 0, %594
  %596 = getelementptr i8, ptr %584, i32 %595
  %597 = icmp ult ptr %596, %25
  %598 = ptrtoint ptr %584 to i32
  %599 = sub i32 %598, %521
  %600 = select i1 %597, i32 %599, i32 %594
  %601 = zext i1 %597 to i32
  %602 = mul i32 %600, -8
  %603 = add i32 %602, %585
  br label %611

604:                                              ; preds = %631, %591, %576, %554, %514
  %605 = phi i32 [ %520, %576 ], [ %516, %514 ], [ %520, %591 ], [ %520, %631 ], [ %520, %554 ]
  %606 = phi i32 [ %550, %576 ], [ %348, %514 ], [ %617, %631 ], [ %586, %591 ], [ %550, %554 ]
  %607 = phi i32 [ %546, %576 ], [ %349, %514 ], [ %640, %631 ], [ %585, %591 ], [ %573, %554 ]
  %608 = phi ptr [ %549, %576 ], [ %350, %514 ], [ %616, %631 ], [ %25, %591 ], [ %549, %554 ]
  %609 = phi ptr [ %526, %576 ], [ %355, %514 ], [ %641, %631 ], [ %583, %591 ], [ %574, %554 ]
  %610 = icmp ult ptr %609, %31
  br i1 %610, label %622, label %657

611:                                              ; preds = %593, %588
  %612 = phi i32 [ %600, %593 ], [ %589, %588 ]
  %613 = phi i32 [ %603, %593 ], [ %590, %588 ]
  %614 = phi i32 [ %601, %593 ], [ 0, %588 ]
  %615 = sub i32 0, %612
  %616 = getelementptr i8, ptr %584, i32 %615
  %617 = load i32, ptr %616, align 1
  %618 = icmp eq i32 %614, 0
  %619 = icmp ult ptr %583, %31
  %620 = and i1 %619, %618
  br i1 %620, label %631, label %621

621:                                              ; preds = %611
  br i1 %619, label %622, label %657

622:                                              ; preds = %621, %604
  %623 = phi i32 [ %605, %604 ], [ %520, %621 ]
  %624 = phi ptr [ %609, %604 ], [ %583, %621 ]
  %625 = phi i32 [ %606, %604 ], [ %617, %621 ]
  %626 = phi ptr [ %608, %604 ], [ %616, %621 ]
  %627 = phi i32 [ %607, %604 ], [ %613, %621 ]
  %628 = ptrtoint ptr %624 to i32
  %629 = sub i32 %512, %628
  %630 = getelementptr i8, ptr %624, i32 %629
  br label %643

631:                                              ; preds = %611
  %632 = and i32 %613, 31
  %633 = shl i32 %617, %632
  %634 = lshr i32 %633, %520
  %635 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %634
  %636 = load i8, ptr %635, align 1
  %637 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %634, i32 1
  %638 = load i8, ptr %637, align 1
  %639 = zext i8 %638 to i32
  %640 = add i32 %613, %639
  %641 = getelementptr i8, ptr %583, i32 1
  store i8 %636, ptr %583, align 1
  %642 = icmp ugt i32 %640, 32
  br i1 %642, label %604, label %582

643:                                              ; preds = %643, %622
  %644 = phi i32 [ %627, %622 ], [ %654, %643 ]
  %645 = phi ptr [ %624, %622 ], [ %655, %643 ]
  %646 = and i32 %644, 31
  %647 = shl i32 %625, %646
  %648 = lshr i32 %647, %623
  %649 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %648
  %650 = load i8, ptr %649, align 1
  %651 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %648, i32 1
  %652 = load i8, ptr %651, align 1
  %653 = zext i8 %652 to i32
  %654 = add i32 %644, %653
  %655 = getelementptr i8, ptr %645, i32 1
  store i8 %650, ptr %645, align 1
  %656 = icmp eq ptr %655, %630
  br i1 %656, label %657, label %643

657:                                              ; preds = %643, %621, %604
  %658 = phi i32 [ %607, %604 ], [ %613, %621 ], [ %654, %643 ]
  %659 = phi ptr [ %608, %604 ], [ %616, %621 ], [ %626, %643 ]
  %660 = ptrtoint ptr %32 to i32
  %661 = icmp ugt i32 %352, 32
  br i1 %661, label %662, label %665

662:                                              ; preds = %657
  %663 = sub nsw i32 0, %34
  %664 = and i32 %663, 31
  br label %752

665:                                              ; preds = %657
  %666 = getelementptr i8, ptr %32, i32 -3
  %667 = sub nsw i32 0, %34
  %668 = and i32 %667, 31
  %669 = ptrtoint ptr %26 to i32
  br label %670

670:                                              ; preds = %702, %665
  %671 = phi i32 [ %351, %665 ], [ %698, %702 ]
  %672 = phi i32 [ %352, %665 ], [ %721, %702 ]
  %673 = phi ptr [ %353, %665 ], [ %697, %702 ]
  %674 = phi ptr [ %356, %665 ], [ %722, %702 ]
  %675 = icmp ult ptr %673, %133
  br i1 %675, label %679, label %676

676:                                              ; preds = %670
  %677 = lshr i32 %672, 3
  %678 = and i32 %672, 7
  br label %692

679:                                              ; preds = %670
  %680 = icmp eq ptr %673, %26
  br i1 %680, label %726, label %681

681:                                              ; preds = %679
  %682 = lshr i32 %672, 3
  %683 = sub nsw i32 0, %682
  %684 = getelementptr i8, ptr %673, i32 %683
  %685 = icmp ult ptr %684, %26
  %686 = ptrtoint ptr %673 to i32
  %687 = sub i32 %686, %669
  %688 = select i1 %685, i32 %687, i32 %682
  %689 = zext i1 %685 to i32
  %690 = mul i32 %688, -8
  %691 = add i32 %690, %672
  br label %692

692:                                              ; preds = %681, %676
  %693 = phi i32 [ %688, %681 ], [ %677, %676 ]
  %694 = phi i32 [ %691, %681 ], [ %678, %676 ]
  %695 = phi i32 [ %689, %681 ], [ 0, %676 ]
  %696 = sub i32 0, %693
  %697 = getelementptr i8, ptr %673, i32 %696
  %698 = load i32, ptr %697, align 1
  %699 = icmp eq i32 %695, 0
  %700 = icmp ult ptr %674, %666
  %701 = and i1 %700, %699
  br i1 %701, label %702, label %724

702:                                              ; preds = %692
  %703 = and i32 %694, 31
  %704 = shl i32 %698, %703
  %705 = lshr i32 %704, %668
  %706 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %705
  %707 = load i8, ptr %706, align 1
  %708 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %705, i32 1
  %709 = load i8, ptr %708, align 1
  %710 = zext i8 %709 to i32
  %711 = add i32 %694, %710
  store i8 %707, ptr %674, align 1
  %712 = getelementptr i8, ptr %674, i32 1
  %713 = and i32 %711, 31
  %714 = shl i32 %698, %713
  %715 = lshr i32 %714, %668
  %716 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %715
  %717 = load i8, ptr %716, align 1
  %718 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %715, i32 1
  %719 = load i8, ptr %718, align 1
  %720 = zext i8 %719 to i32
  %721 = add i32 %711, %720
  %722 = getelementptr i8, ptr %674, i32 2
  store i8 %717, ptr %712, align 1
  %723 = icmp ugt i32 %721, 32
  br i1 %723, label %752, label %670

724:                                              ; preds = %692
  %725 = icmp ugt i32 %694, 32
  br i1 %725, label %752, label %726

726:                                              ; preds = %724, %679
  %727 = phi ptr [ %697, %724 ], [ %26, %679 ]
  %728 = phi i32 [ %694, %724 ], [ %672, %679 ]
  %729 = phi i32 [ %698, %724 ], [ %671, %679 ]
  br label %730

730:                                              ; preds = %779, %726
  %731 = phi ptr [ %789, %779 ], [ %674, %726 ]
  %732 = phi ptr [ %764, %779 ], [ %727, %726 ]
  %733 = phi i32 [ %788, %779 ], [ %728, %726 ]
  %734 = phi i32 [ %765, %779 ], [ %729, %726 ]
  %735 = icmp ult ptr %732, %133
  br i1 %735, label %739, label %736

736:                                              ; preds = %730
  %737 = lshr i32 %733, 3
  %738 = and i32 %733, 7
  br label %759

739:                                              ; preds = %730
  %740 = icmp eq ptr %732, %26
  br i1 %740, label %752, label %741

741:                                              ; preds = %739
  %742 = lshr i32 %733, 3
  %743 = sub nsw i32 0, %742
  %744 = getelementptr i8, ptr %732, i32 %743
  %745 = icmp ult ptr %744, %26
  %746 = ptrtoint ptr %732 to i32
  %747 = sub i32 %746, %669
  %748 = select i1 %745, i32 %747, i32 %742
  %749 = zext i1 %745 to i32
  %750 = mul i32 %748, -8
  %751 = add i32 %750, %733
  br label %759

752:                                              ; preds = %779, %739, %724, %702, %662
  %753 = phi i32 [ %668, %724 ], [ %664, %662 ], [ %668, %739 ], [ %668, %779 ], [ %668, %702 ]
  %754 = phi i32 [ %698, %724 ], [ %351, %662 ], [ %765, %779 ], [ %734, %739 ], [ %698, %702 ]
  %755 = phi i32 [ %694, %724 ], [ %352, %662 ], [ %788, %779 ], [ %733, %739 ], [ %721, %702 ]
  %756 = phi ptr [ %697, %724 ], [ %353, %662 ], [ %764, %779 ], [ %26, %739 ], [ %697, %702 ]
  %757 = phi ptr [ %674, %724 ], [ %356, %662 ], [ %789, %779 ], [ %731, %739 ], [ %722, %702 ]
  %758 = icmp ult ptr %757, %32
  br i1 %758, label %770, label %805

759:                                              ; preds = %741, %736
  %760 = phi i32 [ %748, %741 ], [ %737, %736 ]
  %761 = phi i32 [ %751, %741 ], [ %738, %736 ]
  %762 = phi i32 [ %749, %741 ], [ 0, %736 ]
  %763 = sub i32 0, %760
  %764 = getelementptr i8, ptr %732, i32 %763
  %765 = load i32, ptr %764, align 1
  %766 = icmp eq i32 %762, 0
  %767 = icmp ult ptr %731, %32
  %768 = and i1 %767, %766
  br i1 %768, label %779, label %769

769:                                              ; preds = %759
  br i1 %767, label %770, label %805

770:                                              ; preds = %769, %752
  %771 = phi i32 [ %753, %752 ], [ %668, %769 ]
  %772 = phi ptr [ %757, %752 ], [ %731, %769 ]
  %773 = phi i32 [ %754, %752 ], [ %765, %769 ]
  %774 = phi ptr [ %756, %752 ], [ %764, %769 ]
  %775 = phi i32 [ %755, %752 ], [ %761, %769 ]
  %776 = ptrtoint ptr %772 to i32
  %777 = sub i32 %660, %776
  %778 = getelementptr i8, ptr %772, i32 %777
  br label %791

779:                                              ; preds = %759
  %780 = and i32 %761, 31
  %781 = shl i32 %765, %780
  %782 = lshr i32 %781, %668
  %783 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %782
  %784 = load i8, ptr %783, align 1
  %785 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %782, i32 1
  %786 = load i8, ptr %785, align 1
  %787 = zext i8 %786 to i32
  %788 = add i32 %761, %787
  %789 = getelementptr i8, ptr %731, i32 1
  store i8 %784, ptr %731, align 1
  %790 = icmp ugt i32 %788, 32
  br i1 %790, label %752, label %730

791:                                              ; preds = %791, %770
  %792 = phi i32 [ %775, %770 ], [ %802, %791 ]
  %793 = phi ptr [ %772, %770 ], [ %803, %791 ]
  %794 = and i32 %792, 31
  %795 = shl i32 %773, %794
  %796 = lshr i32 %795, %771
  %797 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %796
  %798 = load i8, ptr %797, align 1
  %799 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %796, i32 1
  %800 = load i8, ptr %799, align 1
  %801 = zext i8 %800 to i32
  %802 = add i32 %792, %801
  %803 = getelementptr i8, ptr %793, i32 1
  store i8 %798, ptr %793, align 1
  %804 = icmp eq ptr %803, %778
  br i1 %804, label %805, label %791

805:                                              ; preds = %791, %769, %752
  %806 = phi i32 [ %755, %752 ], [ %761, %769 ], [ %802, %791 ]
  %807 = phi ptr [ %756, %752 ], [ %764, %769 ], [ %774, %791 ]
  %808 = ptrtoint ptr %9 to i32
  %809 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 3
  %810 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 1
  %811 = load i32, ptr %810, align 4
  %812 = icmp ugt i32 %811, 32
  br i1 %812, label %813, label %816

813:                                              ; preds = %805
  %814 = sub nsw i32 0, %34
  %815 = and i32 %814, 31
  br label %879

816:                                              ; preds = %805
  %817 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 2
  %818 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 4
  %819 = sub nsw i32 0, %34
  %820 = and i32 %819, 31
  %821 = load ptr, ptr %818, align 4
  %822 = load ptr, ptr %809, align 4
  %823 = ptrtoint ptr %822 to i32
  br label %824

824:                                              ; preds = %857, %816
  %825 = phi i32 [ %811, %816 ], [ %876, %857 ]
  %826 = phi ptr [ %357, %816 ], [ %877, %857 ]
  %827 = load ptr, ptr %817, align 4
  %828 = icmp ult ptr %827, %821
  br i1 %828, label %834, label %829

829:                                              ; preds = %824
  %830 = lshr i32 %825, 3
  %831 = sub nsw i32 0, %830
  %832 = getelementptr i8, ptr %827, i32 %831
  store ptr %832, ptr %817, align 4
  %833 = and i32 %825, 7
  br label %849

834:                                              ; preds = %824
  %835 = icmp eq ptr %827, %822
  br i1 %835, label %886, label %836

836:                                              ; preds = %834
  %837 = lshr i32 %825, 3
  %838 = sub nsw i32 0, %837
  %839 = getelementptr i8, ptr %827, i32 %838
  %840 = icmp ult ptr %839, %822
  %841 = ptrtoint ptr %827 to i32
  %842 = sub i32 %841, %823
  %843 = select i1 %840, i32 %842, i32 %837
  %844 = zext i1 %840 to i32
  %845 = sub i32 0, %843
  %846 = getelementptr i8, ptr %827, i32 %845
  store ptr %846, ptr %817, align 4
  %847 = mul i32 %843, -8
  %848 = add i32 %847, %825
  br label %849

849:                                              ; preds = %836, %829
  %850 = phi i32 [ %833, %829 ], [ %848, %836 ]
  %851 = phi ptr [ %832, %829 ], [ %846, %836 ]
  %852 = phi i32 [ 0, %829 ], [ %844, %836 ]
  store i32 %850, ptr %810, align 4
  %853 = load i32, ptr %851, align 1
  store i32 %853, ptr %6, align 4
  %854 = icmp eq i32 %852, 0
  %855 = icmp ult ptr %826, %10
  %856 = and i1 %855, %854
  br i1 %856, label %857, label %884

857:                                              ; preds = %849
  %858 = and i32 %850, 31
  %859 = shl i32 %853, %858
  %860 = lshr i32 %859, %820
  %861 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %860
  %862 = load i8, ptr %861, align 1
  %863 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %860, i32 1
  %864 = load i8, ptr %863, align 1
  %865 = zext i8 %864 to i32
  %866 = add i32 %850, %865
  store i8 %862, ptr %826, align 1
  %867 = getelementptr i8, ptr %826, i32 1
  %868 = and i32 %866, 31
  %869 = shl i32 %853, %868
  %870 = lshr i32 %869, %820
  %871 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %870
  %872 = load i8, ptr %871, align 1
  %873 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %870, i32 1
  %874 = load i8, ptr %873, align 1
  %875 = zext i8 %874 to i32
  %876 = add i32 %866, %875
  store i32 %876, ptr %810, align 4
  %877 = getelementptr i8, ptr %826, i32 2
  store i8 %872, ptr %867, align 1
  %878 = icmp ugt i32 %876, 32
  br i1 %878, label %879, label %824

879:                                              ; preds = %857, %813
  %880 = phi i32 [ %815, %813 ], [ %820, %857 ]
  %881 = phi i32 [ %811, %813 ], [ %876, %857 ]
  %882 = phi ptr [ %357, %813 ], [ %877, %857 ]
  %883 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 2
  br label %917

884:                                              ; preds = %849
  %885 = icmp ugt i32 %850, 32
  br i1 %885, label %917, label %886

886:                                              ; preds = %884, %834
  %887 = phi ptr [ %851, %884 ], [ %822, %834 ]
  %888 = phi i32 [ %850, %884 ], [ %825, %834 ]
  %889 = load ptr, ptr %809, align 4
  %890 = ptrtoint ptr %889 to i32
  %891 = load ptr, ptr %818, align 4
  br label %892

892:                                              ; preds = %954, %886
  %893 = phi ptr [ %927, %954 ], [ %887, %886 ]
  %894 = phi ptr [ %964, %954 ], [ %826, %886 ]
  %895 = phi i32 [ %963, %954 ], [ %888, %886 ]
  %896 = icmp ult ptr %893, %891
  br i1 %896, label %902, label %897

897:                                              ; preds = %892
  %898 = lshr i32 %895, 3
  %899 = sub nsw i32 0, %898
  %900 = getelementptr i8, ptr %893, i32 %899
  store ptr %900, ptr %817, align 4
  %901 = and i32 %895, 7
  br label %925

902:                                              ; preds = %892
  %903 = icmp eq ptr %893, %889
  br i1 %903, label %917, label %904

904:                                              ; preds = %902
  %905 = lshr i32 %895, 3
  %906 = sub nsw i32 0, %905
  %907 = getelementptr i8, ptr %893, i32 %906
  %908 = icmp ult ptr %907, %889
  %909 = ptrtoint ptr %893 to i32
  %910 = sub i32 %909, %890
  %911 = select i1 %908, i32 %910, i32 %905
  %912 = zext i1 %908 to i32
  %913 = sub i32 0, %911
  %914 = getelementptr i8, ptr %893, i32 %913
  store ptr %914, ptr %817, align 4
  %915 = mul i32 %911, -8
  %916 = add i32 %915, %895
  br label %925

917:                                              ; preds = %954, %902, %884, %879
  %918 = phi ptr [ %817, %884 ], [ %883, %879 ], [ %817, %902 ], [ %817, %954 ]
  %919 = phi i32 [ %820, %884 ], [ %880, %879 ], [ %820, %902 ], [ %820, %954 ]
  %920 = phi i32 [ %850, %884 ], [ %881, %879 ], [ %963, %954 ], [ %895, %902 ]
  %921 = phi ptr [ %826, %884 ], [ %882, %879 ], [ %964, %954 ], [ %894, %902 ]
  %922 = icmp ult ptr %921, %9
  br i1 %922, label %923, label %981

923:                                              ; preds = %917
  %924 = load i32, ptr %6, align 4
  br label %934

925:                                              ; preds = %904, %897
  %926 = phi i32 [ %901, %897 ], [ %916, %904 ]
  %927 = phi ptr [ %900, %897 ], [ %914, %904 ]
  %928 = phi i32 [ 0, %897 ], [ %912, %904 ]
  store i32 %926, ptr %810, align 4
  %929 = load i32, ptr %927, align 1
  store i32 %929, ptr %6, align 4
  %930 = icmp eq i32 %928, 0
  %931 = icmp ult ptr %894, %9
  %932 = and i1 %931, %930
  br i1 %932, label %954, label %933

933:                                              ; preds = %925
  br i1 %931, label %934, label %981

934:                                              ; preds = %933, %923
  %935 = phi ptr [ %918, %923 ], [ %817, %933 ]
  %936 = phi i32 [ %919, %923 ], [ %820, %933 ]
  %937 = phi i32 [ %924, %923 ], [ %929, %933 ]
  %938 = phi ptr [ %921, %923 ], [ %894, %933 ]
  %939 = phi i32 [ %920, %923 ], [ %926, %933 ]
  %940 = ptrtoint ptr %938 to i32
  %941 = sub i32 %808, %940
  %942 = getelementptr i8, ptr %938, i32 %941
  %943 = and i32 %939, 31
  %944 = shl i32 %937, %943
  %945 = lshr i32 %944, %936
  %946 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %945
  %947 = load i8, ptr %946, align 1
  %948 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %945, i32 1
  %949 = load i8, ptr %948, align 1
  %950 = zext i8 %949 to i32
  %951 = add i32 %939, %950
  store i32 %951, ptr %810, align 4
  %952 = getelementptr i8, ptr %938, i32 1
  store i8 %947, ptr %938, align 1
  %953 = icmp eq ptr %952, %942
  br i1 %953, label %981, label %966

954:                                              ; preds = %925
  %955 = and i32 %926, 31
  %956 = shl i32 %929, %955
  %957 = lshr i32 %956, %820
  %958 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %957
  %959 = load i8, ptr %958, align 1
  %960 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %957, i32 1
  %961 = load i8, ptr %960, align 1
  %962 = zext i8 %961 to i32
  %963 = add i32 %926, %962
  store i32 %963, ptr %810, align 4
  %964 = getelementptr i8, ptr %894, i32 1
  store i8 %959, ptr %894, align 1
  %965 = icmp ugt i32 %963, 32
  br i1 %965, label %917, label %892

966:                                              ; preds = %966, %934
  %967 = phi ptr [ %979, %966 ], [ %952, %934 ]
  %968 = load i32, ptr %810, align 4
  %969 = load i32, ptr %6, align 4
  %970 = and i32 %968, 31
  %971 = shl i32 %969, %970
  %972 = lshr i32 %971, %936
  %973 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %972
  %974 = load i8, ptr %973, align 1
  %975 = getelementptr %struct.HUF_DEltX1, ptr %11, i32 %972, i32 1
  %976 = load i8, ptr %975, align 1
  %977 = zext i8 %976 to i32
  %978 = add i32 %968, %977
  store i32 %978, ptr %810, align 4
  %979 = getelementptr i8, ptr %967, i32 1
  store i8 %974, ptr %967, align 1
  %980 = icmp eq ptr %979, %942
  br i1 %980, label %981, label %966

981:                                              ; preds = %966, %934, %933, %917
  %982 = phi ptr [ %935, %934 ], [ %918, %917 ], [ %817, %933 ], [ %935, %966 ]
  %983 = icmp eq ptr %511, %24
  %984 = icmp eq i32 %510, 32
  %985 = select i1 %983, i1 %984, i1 false
  %986 = icmp eq ptr %659, %25
  %987 = icmp eq i32 %658, 32
  %988 = select i1 %986, i1 %987, i1 false
  %989 = and i1 %985, %988
  %990 = icmp eq ptr %807, %26
  %991 = icmp eq i32 %806, 32
  %992 = select i1 %990, i1 %991, i1 false
  %993 = and i1 %989, %992
  %994 = load ptr, ptr %982, align 4
  %995 = load ptr, ptr %809, align 4
  %996 = icmp eq ptr %994, %995
  %997 = load i32, ptr %810, align 4
  %998 = icmp eq i32 %997, 32
  %999 = select i1 %996, i1 %998, i1 false
  %1000 = and i1 %993, %999
  %1001 = select i1 %1000, i32 %1, i32 -20
  br label %1002

1002:                                             ; preds = %981, %344, %174, %162, %135, %127, %115, %88, %80, %68, %41, %36, %8
  %1003 = phi i32 [ %178, %174 ], [ -20, %8 ], [ -20, %344 ], [ %1001, %981 ], [ -20, %68 ], [ -1, %41 ], [ -72, %36 ], [ -20, %115 ], [ -1, %88 ], [ -72, %80 ], [ -20, %162 ], [ -1, %135 ], [ -72, %127 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  br label %1004

1004:                                             ; preds = %1002, %5
  %1005 = phi i32 [ %1003, %1002 ], [ -20, %5 ]
  ret i32 %1005
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X1_DCtx_wksp(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 0) #9
  %9 = icmp ult i32 %8, -119
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ult i32 %8, %4
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %3, i32 %8
  %14 = sub i32 %4, %8
  %15 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %13, i32 noundef %14, ptr noundef %0) #9
  br label %16

16:                                               ; preds = %12, %10, %7
  %17 = phi i32 [ %15, %12 ], [ %8, %7 ], [ -72, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_readDTableX2_wksp(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = load i32, ptr %0, align 4
  %9 = trunc i32 %8 to i8
  %10 = lshr i32 %8, 24
  %11 = trunc i32 %10 to i8
  %12 = and i32 %8, 255
  %13 = getelementptr i32, ptr %0, i32 1
  %14 = icmp ult i32 %4, 2372
  br i1 %14, label %195, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 2
  %17 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 2, i32 1
  %18 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 1
  %19 = icmp ugt i32 %12, 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(108) %18, i8 0, i64 108, i1 false)
  br i1 %19, label %195, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 4
  %22 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 5
  %23 = call i32 @HUF_readStats_wksp(ptr noundef %21, i32 noundef 256, ptr noundef %18, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2, ptr noundef %22, i32 noundef 872, i32 noundef 0) #9
  %24 = icmp ult i32 %23, -119
  br i1 %24, label %25, label %195

25:                                               ; preds = %20
  %26 = load i32, ptr %6, align 4
  %27 = icmp ugt i32 %26, %12
  br i1 %27, label %195, label %28

28:                                               ; preds = %28, %25
  %29 = phi i32 [ %33, %28 ], [ %26, %25 ]
  %30 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 1, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = add i32 %29, -1
  br i1 %32, label %28, label %34

34:                                               ; preds = %28
  %35 = add i32 %29, -1
  %36 = icmp ult i32 %35, -2
  br i1 %36, label %37, label %46

37:                                               ; preds = %37, %34
  %38 = phi i32 [ %42, %37 ], [ 0, %34 ]
  %39 = phi i32 [ %44, %37 ], [ 1, %34 ]
  %40 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 1, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %38
  %43 = getelementptr i32, ptr %17, i32 %39
  store i32 %38, ptr %43, align 4
  %44 = add nuw i32 %39, 1
  %45 = icmp eq i32 %39, %29
  br i1 %45, label %46, label %37

46:                                               ; preds = %37, %34
  %47 = phi i32 [ 0, %34 ], [ %42, %37 ]
  store i32 %47, ptr %17, align 4
  %48 = load i32, ptr %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %50, %46
  %51 = phi i32 [ %61, %50 ], [ 0, %46 ]
  %52 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 4, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr i32, ptr %17, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = trunc i32 %51 to i8
  %59 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 3, i32 %56
  store i8 %58, ptr %59, align 2
  %60 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 3, i32 %56, i32 1
  store i8 %53, ptr %60, align 1
  %61 = add nuw i32 %51, 1
  %62 = icmp eq i32 %61, %48
  br i1 %62, label %63, label %50

63:                                               ; preds = %50, %46
  store i32 0, ptr %17, align 4
  %64 = xor i32 %26, -1
  %65 = add i32 %12, %64
  br i1 %36, label %66, label %77

66:                                               ; preds = %66, %63
  %67 = phi i32 [ %75, %66 ], [ 1, %63 ]
  %68 = phi i32 [ %73, %66 ], [ 0, %63 ]
  %69 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 1, i32 %67
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %65, %67
  %72 = shl i32 %70, %71
  %73 = add i32 %72, %68
  %74 = getelementptr i32, ptr %3, i32 %67
  store i32 %68, ptr %74, align 4
  %75 = add nuw i32 %67, 1
  %76 = icmp eq i32 %67, %29
  br i1 %76, label %77, label %66

77:                                               ; preds = %66, %63
  %78 = add i32 %26, 1
  %79 = sub i32 %78, %29
  %80 = add nuw nsw i32 %12, 1
  %81 = sub i32 %80, %79
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %94, %77
  %84 = phi i32 [ %95, %94 ], [ %79, %77 ]
  %85 = getelementptr [12 x [13 x i32]], ptr %3, i32 0, i32 %84
  br i1 %36, label %86, label %94

86:                                               ; preds = %86, %83
  %87 = phi i32 [ %92, %86 ], [ 1, %83 ]
  %88 = getelementptr i32, ptr %3, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = lshr i32 %89, %84
  %91 = getelementptr i32, ptr %85, i32 %87
  store i32 %90, ptr %91, align 4
  %92 = add nuw i32 %87, 1
  %93 = icmp eq i32 %87, %29
  br i1 %93, label %94, label %86

94:                                               ; preds = %86, %83
  %95 = add i32 %84, 1
  %96 = icmp ult i32 %95, %81
  br i1 %96, label %83, label %97

97:                                               ; preds = %94, %77
  %98 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 3
  %99 = sub i32 %78, %12
  %100 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %3, i32 0, i32 5, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %22, ptr noundef align 4 dereferenceable(52) %3, i32 52, i1 false) #9
  %101 = icmp eq i32 %47, 0
  br i1 %101, label %191, label %102

102:                                              ; preds = %186, %97
  %103 = phi i32 [ %189, %186 ], [ 0, %97 ]
  %104 = getelementptr %struct.sortedSymbol_t, ptr %98, i32 %103
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = getelementptr %struct.sortedSymbol_t, ptr %98, i32 %103, i32 1
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = sub i32 %78, %109
  %111 = getelementptr i32, ptr %22, i32 %109
  %112 = load i32, ptr %111, align 4
  %113 = sub i32 %12, %110
  %114 = shl nuw i32 1, %113
  %115 = icmp ult i32 %113, %79
  br i1 %115, label %173, label %116

116:                                              ; preds = %102
  %117 = add i32 %99, %110
  %118 = call i32 @llvm.smax.i32(i32 %117, i32 1) #9
  %119 = getelementptr i32, ptr %16, i32 %118
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr %struct.HUF_DEltX2, ptr %13, i32 %112
  %122 = getelementptr [13 x i32], ptr %3, i32 %110
  %123 = getelementptr %struct.sortedSymbol_t, ptr %98, i32 %120
  %124 = sub i32 %47, %120
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %100, ptr noundef align 4 dereferenceable(52) %122, i32 52, i1 false) #9
  %125 = icmp ugt i32 %118, 1
  br i1 %125, label %126, label %140

126:                                              ; preds = %116
  %127 = getelementptr i32, ptr %100, i32 %118
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = shl i32 %110, 16
  %132 = and i32 %131, 16711680
  %133 = or i32 %132, %106
  %134 = or i32 %133, 16777216
  br label %135

135:                                              ; preds = %135, %130
  %136 = phi i32 [ 0, %130 ], [ %138, %135 ]
  %137 = getelementptr %struct.HUF_DEltX2, ptr %121, i32 %136
  store i32 %134, ptr %137, align 2
  %138 = add nuw i32 %136, 1
  %139 = icmp eq i32 %138, %128
  br i1 %139, label %140, label %135

140:                                              ; preds = %135, %126, %116
  %141 = icmp eq i32 %47, %120
  br i1 %141, label %186, label %142

142:                                              ; preds = %168, %140
  %143 = phi i32 [ %171, %168 ], [ 0, %140 ]
  %144 = getelementptr %struct.sortedSymbol_t, ptr %123, i32 %143
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr %struct.sortedSymbol_t, ptr %123, i32 %143, i32 1
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = sub i32 %78, %149
  %151 = sub i32 %113, %150
  %152 = shl nuw i32 1, %151
  %153 = getelementptr i32, ptr %100, i32 %149
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %152, %154
  %156 = shl nuw nsw i32 %146, 8
  %157 = add i32 %150, %110
  %158 = shl i32 %157, 16
  %159 = and i32 %158, 16711680
  %160 = or i32 %156, %106
  %161 = or i32 %160, %159
  %162 = or i32 %161, 33554432
  br label %163

163:                                              ; preds = %163, %142
  %164 = phi i32 [ %154, %142 ], [ %165, %163 ]
  %165 = add i32 %164, 1
  %166 = getelementptr %struct.HUF_DEltX2, ptr %121, i32 %164
  store i32 %162, ptr %166, align 2
  %167 = icmp ult i32 %165, %155
  br i1 %167, label %163, label %168

168:                                              ; preds = %163
  %169 = load i32, ptr %153, align 4
  %170 = add i32 %169, %152
  store i32 %170, ptr %153, align 4
  %171 = add nuw i32 %143, 1
  %172 = icmp eq i32 %171, %124
  br i1 %172, label %186, label %142

173:                                              ; preds = %102
  %174 = add i32 %114, %112
  %175 = icmp ult i32 %112, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = shl i32 %110, 16
  %178 = and i32 %177, 16711680
  %179 = or i32 %178, %106
  %180 = or i32 %179, 16777216
  br label %181

181:                                              ; preds = %181, %176
  %182 = phi i32 [ %112, %176 ], [ %184, %181 ]
  %183 = getelementptr %struct.HUF_DEltX2, ptr %13, i32 %182
  store i32 %180, ptr %183, align 2
  %184 = add nuw i32 %182, 1
  %185 = icmp eq i32 %184, %174
  br i1 %185, label %186, label %181

186:                                              ; preds = %181, %173, %168, %140
  %187 = load i32, ptr %111, align 4
  %188 = add i32 %187, %114
  store i32 %188, ptr %111, align 4
  %189 = add nuw i32 %103, 1
  %190 = icmp eq i32 %189, %47
  br i1 %190, label %191, label %102

191:                                              ; preds = %186, %97
  store i8 %9, ptr %0, align 4
  %192 = getelementptr inbounds i8, ptr %0, i32 1
  store i8 1, ptr %192, align 1
  %193 = getelementptr inbounds i8, ptr %0, i32 2
  store i8 %9, ptr %193, align 2
  %194 = getelementptr inbounds i8, ptr %0, i32 3
  store i8 %11, ptr %194, align 1
  br label %195

195:                                              ; preds = %191, %25, %20, %15, %5
  %196 = phi i32 [ %23, %191 ], [ -1, %5 ], [ -44, %15 ], [ %23, %20 ], [ -44, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %196
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X2_usingDTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #5 {
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 65280
  %8 = icmp eq i32 %7, 256
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ -1, %5 ]
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #5 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %254, label %7

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %2, i32 4
  %9 = icmp ugt i32 %3, 3
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = add i32 %3, -1
  %12 = getelementptr i8, ptr %2, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %254, label %43

15:                                               ; preds = %7
  %16 = load i8, ptr %2, align 1
  %17 = zext i8 %16 to i32
  switch i32 %3, label %31 [
    i32 2, label %24
    i32 3, label %18
  ]

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %2, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = or i32 %22, %17
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i32 [ %17, %15 ], [ %23, %18 ]
  %26 = getelementptr i8, ptr %2, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = add nsw i32 %29, %25
  br label %31

31:                                               ; preds = %24, %15
  %32 = phi i32 [ %17, %15 ], [ %30, %24 ]
  %33 = add nsw i32 %3, -1
  %34 = getelementptr i8, ptr %2, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %254, label %37

37:                                               ; preds = %31
  %38 = zext i8 %35 to i32
  %39 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 true) #9, !range !8
  %40 = mul nsw i32 %3, -8
  %41 = add nsw i32 %40, 9
  %42 = add nsw i32 %41, %39
  br label %51

43:                                               ; preds = %10
  %44 = getelementptr i8, ptr %2, i32 %3
  %45 = getelementptr i8, ptr %44, i32 -4
  %46 = load i32, ptr %45, align 1
  %47 = zext i8 %13 to i32
  %48 = tail call i32 @llvm.ctlz.i32(i32 %47, i1 true) #9, !range !8
  %49 = add nsw i32 %48, -23
  %50 = icmp ult i32 %3, -119
  br i1 %50, label %51, label %254

51:                                               ; preds = %43, %37
  %52 = phi ptr [ %2, %37 ], [ %45, %43 ]
  %53 = phi i32 [ %42, %37 ], [ %49, %43 ]
  %54 = phi i32 [ %32, %37 ], [ %46, %43 ]
  %55 = getelementptr i8, ptr %0, i32 %1
  %56 = getelementptr i32, ptr %4, i32 1
  %57 = load i32, ptr %4, align 4
  %58 = lshr i32 %57, 16
  %59 = icmp ugt i32 %53, 32
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = sub nsw i32 0, %58
  %62 = and i32 %61, 31
  br label %132

63:                                               ; preds = %51
  %64 = getelementptr i8, ptr %55, i32 -3
  %65 = sub nsw i32 0, %58
  %66 = and i32 %65, 31
  %67 = ptrtoint ptr %2 to i32
  br label %68

68:                                               ; preds = %102, %63
  %69 = phi i32 [ %54, %63 ], [ %98, %102 ]
  %70 = phi i32 [ %53, %63 ], [ %124, %102 ]
  %71 = phi ptr [ %52, %63 ], [ %97, %102 ]
  %72 = phi ptr [ %0, %63 ], [ %128, %102 ]
  %73 = icmp ult ptr %71, %8
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = lshr i32 %70, 3
  %76 = and i32 %70, 7
  br label %92

77:                                               ; preds = %68
  %78 = icmp eq ptr %71, %2
  br i1 %78, label %79, label %81

79:                                               ; preds = %77
  %80 = getelementptr i8, ptr %55, i32 -2
  br label %142

81:                                               ; preds = %77
  %82 = lshr i32 %70, 3
  %83 = sub nsw i32 0, %82
  %84 = getelementptr i8, ptr %71, i32 %83
  %85 = icmp ult ptr %84, %2
  %86 = ptrtoint ptr %71 to i32
  %87 = sub i32 %86, %67
  %88 = select i1 %85, i32 %87, i32 %82
  %89 = zext i1 %85 to i32
  %90 = mul i32 %88, -8
  %91 = add i32 %90, %70
  br label %92

92:                                               ; preds = %81, %74
  %93 = phi i32 [ %88, %81 ], [ %75, %74 ]
  %94 = phi i32 [ %91, %81 ], [ %76, %74 ]
  %95 = phi i32 [ %89, %81 ], [ 0, %74 ]
  %96 = sub i32 0, %93
  %97 = getelementptr i8, ptr %71, i32 %96
  %98 = load i32, ptr %97, align 1
  %99 = icmp eq i32 %95, 0
  %100 = icmp ult ptr %72, %64
  %101 = and i1 %100, %99
  br i1 %101, label %102, label %132

102:                                              ; preds = %92
  %103 = and i32 %94, 31
  %104 = shl i32 %98, %103
  %105 = lshr i32 %104, %66
  %106 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %105
  %107 = load i16, ptr %106, align 2
  store i16 %107, ptr %72, align 1
  %108 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %105, i32 1
  %109 = load i8, ptr %108, align 2
  %110 = zext i8 %109 to i32
  %111 = add i32 %94, %110
  %112 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %105, i32 2
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = getelementptr i8, ptr %72, i32 %114
  %116 = and i32 %111, 31
  %117 = shl i32 %98, %116
  %118 = lshr i32 %117, %66
  %119 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %118
  %120 = load i16, ptr %119, align 2
  store i16 %120, ptr %115, align 1
  %121 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %118, i32 1
  %122 = load i8, ptr %121, align 2
  %123 = zext i8 %122 to i32
  %124 = add i32 %111, %123
  %125 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %118, i32 2
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = getelementptr i8, ptr %115, i32 %127
  %129 = icmp ugt i32 %124, 32
  br i1 %129, label %130, label %68

130:                                              ; preds = %102
  %131 = getelementptr i8, ptr %55, i32 -2
  br label %182

132:                                              ; preds = %92, %60
  %133 = phi i32 [ %54, %60 ], [ %98, %92 ]
  %134 = phi i32 [ %53, %60 ], [ %94, %92 ]
  %135 = phi ptr [ %52, %60 ], [ %97, %92 ]
  %136 = phi i32 [ %62, %60 ], [ %66, %92 ]
  %137 = phi ptr [ %0, %60 ], [ %72, %92 ]
  %138 = getelementptr i8, ptr %55, i32 -2
  %139 = icmp ugt i32 %134, 32
  br i1 %139, label %182, label %140

140:                                              ; preds = %132
  %141 = ptrtoint ptr %2 to i32
  br label %142

142:                                              ; preds = %140, %79
  %143 = phi i32 [ %141, %140 ], [ %67, %79 ]
  %144 = phi ptr [ %138, %140 ], [ %80, %79 ]
  %145 = phi ptr [ %137, %140 ], [ %72, %79 ]
  %146 = phi i32 [ %136, %140 ], [ %66, %79 ]
  %147 = phi ptr [ %135, %140 ], [ %2, %79 ]
  %148 = phi i32 [ %134, %140 ], [ %70, %79 ]
  %149 = phi i32 [ %133, %140 ], [ %69, %79 ]
  br label %150

150:                                              ; preds = %190, %142
  %151 = phi ptr [ %145, %142 ], [ %203, %190 ]
  %152 = phi ptr [ %147, %142 ], [ %177, %190 ]
  %153 = phi i32 [ %148, %142 ], [ %199, %190 ]
  %154 = phi i32 [ %149, %142 ], [ %178, %190 ]
  %155 = icmp ult ptr %152, %8
  br i1 %155, label %159, label %156

156:                                              ; preds = %150
  %157 = lshr i32 %153, 3
  %158 = and i32 %153, 7
  br label %172

159:                                              ; preds = %150
  %160 = icmp eq ptr %152, %2
  br i1 %160, label %182, label %161

161:                                              ; preds = %159
  %162 = lshr i32 %153, 3
  %163 = sub nsw i32 0, %162
  %164 = getelementptr i8, ptr %152, i32 %163
  %165 = icmp ult ptr %164, %2
  %166 = ptrtoint ptr %152 to i32
  %167 = sub i32 %166, %143
  %168 = select i1 %165, i32 %167, i32 %162
  %169 = zext i1 %165 to i32
  %170 = mul i32 %168, -8
  %171 = add i32 %170, %153
  br label %172

172:                                              ; preds = %161, %156
  %173 = phi i32 [ %168, %161 ], [ %157, %156 ]
  %174 = phi i32 [ %171, %161 ], [ %158, %156 ]
  %175 = phi i32 [ %169, %161 ], [ 0, %156 ]
  %176 = sub i32 0, %173
  %177 = getelementptr i8, ptr %152, i32 %176
  %178 = load i32, ptr %177, align 1
  %179 = icmp eq i32 %175, 0
  %180 = icmp ule ptr %151, %144
  %181 = and i1 %180, %179
  br i1 %181, label %190, label %182

182:                                              ; preds = %190, %172, %159, %132, %130
  %183 = phi ptr [ %138, %132 ], [ %131, %130 ], [ %144, %159 ], [ %144, %172 ], [ %144, %190 ]
  %184 = phi i32 [ %136, %132 ], [ %66, %130 ], [ %146, %159 ], [ %146, %172 ], [ %146, %190 ]
  %185 = phi ptr [ %137, %132 ], [ %128, %130 ], [ %203, %190 ], [ %151, %172 ], [ %151, %159 ]
  %186 = phi i32 [ %133, %132 ], [ %98, %130 ], [ %178, %190 ], [ %178, %172 ], [ %154, %159 ]
  %187 = phi i32 [ %134, %132 ], [ %124, %130 ], [ %199, %190 ], [ %174, %172 ], [ %153, %159 ]
  %188 = phi ptr [ %135, %132 ], [ %97, %130 ], [ %177, %190 ], [ %177, %172 ], [ %2, %159 ]
  %189 = icmp ugt ptr %185, %183
  br i1 %189, label %222, label %205

190:                                              ; preds = %172
  %191 = and i32 %174, 31
  %192 = shl i32 %178, %191
  %193 = lshr i32 %192, %146
  %194 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %193
  %195 = load i16, ptr %194, align 2
  store i16 %195, ptr %151, align 1
  %196 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %193, i32 1
  %197 = load i8, ptr %196, align 2
  %198 = zext i8 %197 to i32
  %199 = add i32 %174, %198
  %200 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %193, i32 2
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i32
  %203 = getelementptr i8, ptr %151, i32 %202
  %204 = icmp ugt i32 %199, 32
  br i1 %204, label %182, label %150

205:                                              ; preds = %205, %182
  %206 = phi i32 [ %216, %205 ], [ %187, %182 ]
  %207 = phi ptr [ %220, %205 ], [ %185, %182 ]
  %208 = and i32 %206, 31
  %209 = shl i32 %186, %208
  %210 = lshr i32 %209, %184
  %211 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %210
  %212 = load i16, ptr %211, align 2
  store i16 %212, ptr %207, align 1
  %213 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %210, i32 1
  %214 = load i8, ptr %213, align 2
  %215 = zext i8 %214 to i32
  %216 = add i32 %206, %215
  %217 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %210, i32 2
  %218 = load i8, ptr %217, align 1
  %219 = zext i8 %218 to i32
  %220 = getelementptr i8, ptr %207, i32 %219
  %221 = icmp ugt ptr %220, %183
  br i1 %221, label %222, label %205

222:                                              ; preds = %205, %182
  %223 = phi i32 [ %187, %182 ], [ %216, %205 ]
  %224 = phi ptr [ %185, %182 ], [ %220, %205 ]
  %225 = icmp ult ptr %224, %55
  br i1 %225, label %226, label %248

226:                                              ; preds = %222
  %227 = and i32 %223, 31
  %228 = shl i32 %186, %227
  %229 = lshr i32 %228, %184
  %230 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %229
  %231 = load i8, ptr %230, align 2
  store i8 %231, ptr %224, align 1
  %232 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %229, i32 2
  %233 = load i8, ptr %232, align 1
  %234 = icmp eq i8 %233, 1
  br i1 %234, label %235, label %240

235:                                              ; preds = %226
  %236 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %229, i32 1
  %237 = load i8, ptr %236, align 2
  %238 = zext i8 %237 to i32
  %239 = add i32 %223, %238
  br label %248

240:                                              ; preds = %226
  %241 = icmp ult i32 %223, 32
  br i1 %241, label %242, label %248

242:                                              ; preds = %240
  %243 = getelementptr %struct.HUF_DEltX2, ptr %56, i32 %229, i32 1
  %244 = load i8, ptr %243, align 2
  %245 = zext i8 %244 to i32
  %246 = add nuw nsw i32 %223, %245
  %247 = tail call i32 @llvm.umin.i32(i32 %246, i32 32) #9
  br label %248

248:                                              ; preds = %242, %240, %235, %222
  %249 = phi i32 [ %223, %240 ], [ %223, %222 ], [ %247, %242 ], [ %239, %235 ]
  %250 = icmp eq ptr %188, %2
  %251 = icmp eq i32 %249, 32
  %252 = select i1 %250, i1 %251, i1 false
  %253 = select i1 %252, i32 %1, i32 -20
  br label %254

254:                                              ; preds = %248, %43, %31, %10, %5
  %255 = phi i32 [ %3, %43 ], [ -20, %31 ], [ -1, %10 ], [ -72, %5 ], [ %253, %248 ]
  ret i32 %255
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X2_DCtx_wksp(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6)
  %9 = icmp ult i32 %8, -119
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ult i32 %8, %4
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %3, i32 %8
  %14 = sub i32 %4, %8
  %15 = tail call fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %13, i32 noundef %14, ptr noundef %0)
  br label %16

16:                                               ; preds = %12, %10, %7
  %17 = phi i32 [ %15, %12 ], [ %8, %7 ], [ -72, %10 ]
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X2_usingDTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 65280
  %8 = icmp eq i32 %7, 256
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ -1, %5 ]
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #5 {
  %6 = alloca %struct.BIT_DStream_t, align 4
  %7 = icmp ult i32 %3, 10
  br i1 %7, label %1162, label %8

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %0, i32 %1
  %10 = getelementptr i8, ptr %9, i32 -3
  %11 = getelementptr i32, ptr %4, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #9, !annotation !9
  %12 = load i16, ptr %2, align 1
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %2, i32 2
  %15 = load i16, ptr %14, align 1
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %2, i32 4
  %18 = load i16, ptr %17, align 1
  %19 = zext i16 %18 to i32
  %20 = add nuw nsw i32 %13, 6
  %21 = add nuw nsw i32 %20, %16
  %22 = add nuw nsw i32 %21, %19
  %23 = sub i32 %3, %22
  %24 = getelementptr i8, ptr %2, i32 6
  %25 = getelementptr i8, ptr %24, i32 %13
  %26 = getelementptr i8, ptr %25, i32 %16
  %27 = getelementptr i8, ptr %26, i32 %19
  %28 = add i32 %1, 3
  %29 = lshr i32 %28, 2
  %30 = getelementptr i8, ptr %0, i32 %29
  %31 = getelementptr i8, ptr %30, i32 %29
  %32 = getelementptr i8, ptr %31, i32 %29
  %33 = load i32, ptr %4, align 4
  %34 = lshr i32 %33, 16
  %35 = icmp ugt i32 %22, %3
  br i1 %35, label %1160, label %36

36:                                               ; preds = %8
  %37 = icmp eq i16 %12, 0
  br i1 %37, label %1160, label %38

38:                                               ; preds = %36
  %39 = getelementptr i8, ptr %2, i32 10
  %40 = icmp ugt i16 %12, 3
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = add nsw i32 %13, -1
  %43 = getelementptr i8, ptr %24, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %1160, label %46

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %25, i32 -4
  %48 = load i32, ptr %47, align 1
  %49 = zext i8 %44 to i32
  %50 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 true) #9, !range !8
  %51 = add nsw i32 %50, -23
  br label %80

52:                                               ; preds = %38
  %53 = load i8, ptr %24, align 1
  %54 = zext i8 %53 to i32
  switch i16 %12, label %68 [
    i16 2, label %61
    i16 3, label %55
  ]

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %2, i32 8
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = or i32 %59, %54
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi i32 [ %54, %52 ], [ %60, %55 ]
  %63 = getelementptr i8, ptr %2, i32 7
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 8
  %67 = add nsw i32 %66, %62
  br label %68

68:                                               ; preds = %61, %52
  %69 = phi i32 [ %54, %52 ], [ %67, %61 ]
  %70 = add nsw i32 %13, -1
  %71 = getelementptr i8, ptr %24, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %1160, label %74

74:                                               ; preds = %68
  %75 = zext i8 %72 to i32
  %76 = tail call i32 @llvm.ctlz.i32(i32 %75, i1 true) #9, !range !8
  %77 = mul nsw i32 %13, -8
  %78 = add nsw i32 %77, 9
  %79 = add nsw i32 %78, %76
  br label %80

80:                                               ; preds = %74, %46
  %81 = phi i32 [ %48, %46 ], [ %69, %74 ]
  %82 = phi i32 [ %51, %46 ], [ %79, %74 ]
  %83 = phi ptr [ %47, %46 ], [ %24, %74 ]
  %84 = icmp eq i16 %15, 0
  br i1 %84, label %1160, label %85

85:                                               ; preds = %80
  %86 = getelementptr i8, ptr %25, i32 4
  %87 = icmp ugt i16 %15, 3
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = add nsw i32 %16, -1
  %90 = getelementptr i8, ptr %25, i32 %89
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %1160, label %93

93:                                               ; preds = %88
  %94 = getelementptr i8, ptr %26, i32 -4
  %95 = load i32, ptr %94, align 1
  %96 = zext i8 %91 to i32
  %97 = tail call i32 @llvm.ctlz.i32(i32 %96, i1 true) #9, !range !8
  %98 = add nsw i32 %97, -23
  br label %127

99:                                               ; preds = %85
  %100 = load i8, ptr %25, align 1
  %101 = zext i8 %100 to i32
  switch i16 %15, label %115 [
    i16 2, label %108
    i16 3, label %102
  ]

102:                                              ; preds = %99
  %103 = getelementptr i8, ptr %25, i32 2
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = or i32 %106, %101
  br label %108

108:                                              ; preds = %102, %99
  %109 = phi i32 [ %101, %99 ], [ %107, %102 ]
  %110 = getelementptr i8, ptr %25, i32 1
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 8
  %114 = add nsw i32 %113, %109
  br label %115

115:                                              ; preds = %108, %99
  %116 = phi i32 [ %101, %99 ], [ %114, %108 ]
  %117 = add nsw i32 %16, -1
  %118 = getelementptr i8, ptr %25, i32 %117
  %119 = load i8, ptr %118, align 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %1160, label %121

121:                                              ; preds = %115
  %122 = zext i8 %119 to i32
  %123 = tail call i32 @llvm.ctlz.i32(i32 %122, i1 true) #9, !range !8
  %124 = mul nsw i32 %16, -8
  %125 = add nsw i32 %124, 9
  %126 = add nsw i32 %125, %123
  br label %127

127:                                              ; preds = %121, %93
  %128 = phi i32 [ %95, %93 ], [ %116, %121 ]
  %129 = phi i32 [ %98, %93 ], [ %126, %121 ]
  %130 = phi ptr [ %94, %93 ], [ %25, %121 ]
  %131 = icmp eq i16 %18, 0
  br i1 %131, label %1160, label %132

132:                                              ; preds = %127
  %133 = getelementptr i8, ptr %26, i32 4
  %134 = icmp ugt i16 %18, 3
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = add nsw i32 %19, -1
  %137 = getelementptr i8, ptr %26, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %1160, label %140

140:                                              ; preds = %135
  %141 = getelementptr i8, ptr %27, i32 -4
  %142 = load i32, ptr %141, align 1
  %143 = zext i8 %138 to i32
  %144 = tail call i32 @llvm.ctlz.i32(i32 %143, i1 true) #9, !range !8
  %145 = add nsw i32 %144, -23
  br label %174

146:                                              ; preds = %132
  %147 = load i8, ptr %26, align 1
  %148 = zext i8 %147 to i32
  switch i16 %18, label %162 [
    i16 2, label %155
    i16 3, label %149
  ]

149:                                              ; preds = %146
  %150 = getelementptr i8, ptr %26, i32 2
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = shl nuw nsw i32 %152, 16
  %154 = or i32 %153, %148
  br label %155

155:                                              ; preds = %149, %146
  %156 = phi i32 [ %148, %146 ], [ %154, %149 ]
  %157 = getelementptr i8, ptr %26, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 8
  %161 = add nsw i32 %160, %156
  br label %162

162:                                              ; preds = %155, %146
  %163 = phi i32 [ %148, %146 ], [ %161, %155 ]
  %164 = add nsw i32 %19, -1
  %165 = getelementptr i8, ptr %26, i32 %164
  %166 = load i8, ptr %165, align 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %1160, label %168

168:                                              ; preds = %162
  %169 = zext i8 %166 to i32
  %170 = tail call i32 @llvm.ctlz.i32(i32 %169, i1 true) #9, !range !8
  %171 = mul nsw i32 %19, -8
  %172 = add nsw i32 %171, 9
  %173 = add nsw i32 %172, %170
  br label %174

174:                                              ; preds = %168, %140
  %175 = phi i32 [ %142, %140 ], [ %163, %168 ]
  %176 = phi i32 [ %145, %140 ], [ %173, %168 ]
  %177 = phi ptr [ %141, %140 ], [ %26, %168 ]
  %178 = call fastcc i32 @BIT_initDStream(ptr noundef nonnull %6, ptr noundef %27, i32 noundef %23) #9
  %179 = icmp ult i32 %178, -119
  br i1 %179, label %180, label %1160

180:                                              ; preds = %174
  %181 = icmp ult ptr %32, %10
  br i1 %181, label %182, label %365

182:                                              ; preds = %180
  %183 = sub nsw i32 0, %34
  %184 = and i32 %183, 31
  %185 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 1
  %186 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 2
  %187 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 4
  %188 = load ptr, ptr %187, align 4
  %189 = load i32, ptr %6, align 4
  %190 = load i32, ptr %185, align 4
  br label %191

191:                                              ; preds = %357, %182
  %192 = phi i32 [ %190, %182 ], [ %358, %357 ]
  %193 = phi i32 [ %189, %182 ], [ %359, %357 ]
  %194 = phi ptr [ %32, %182 ], [ %310, %357 ]
  %195 = phi ptr [ %31, %182 ], [ %297, %357 ]
  %196 = phi ptr [ %30, %182 ], [ %284, %357 ]
  %197 = phi ptr [ %0, %182 ], [ %271, %357 ]
  %198 = phi ptr [ %177, %182 ], [ %346, %357 ]
  %199 = phi i32 [ %176, %182 ], [ %345, %357 ]
  %200 = phi i32 [ %175, %182 ], [ %344, %357 ]
  %201 = phi ptr [ %130, %182 ], [ %333, %357 ]
  %202 = phi i32 [ %129, %182 ], [ %332, %357 ]
  %203 = phi i32 [ %128, %182 ], [ %331, %357 ]
  %204 = phi ptr [ %83, %182 ], [ %321, %357 ]
  %205 = phi i32 [ %82, %182 ], [ %320, %357 ]
  %206 = phi i32 [ %81, %182 ], [ %319, %357 ]
  %207 = and i32 %205, 31
  %208 = shl i32 %206, %207
  %209 = lshr i32 %208, %184
  %210 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %209
  %211 = load i16, ptr %210, align 2
  store i16 %211, ptr %197, align 1
  %212 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %209, i32 1
  %213 = load i8, ptr %212, align 2
  %214 = zext i8 %213 to i32
  %215 = add i32 %205, %214
  %216 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %209, i32 2
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i32
  %219 = getelementptr i8, ptr %197, i32 %218
  %220 = and i32 %202, 31
  %221 = shl i32 %203, %220
  %222 = lshr i32 %221, %184
  %223 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %222
  %224 = load i16, ptr %223, align 2
  store i16 %224, ptr %196, align 1
  %225 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %222, i32 1
  %226 = load i8, ptr %225, align 2
  %227 = zext i8 %226 to i32
  %228 = add i32 %202, %227
  %229 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %222, i32 2
  %230 = load i8, ptr %229, align 1
  %231 = zext i8 %230 to i32
  %232 = getelementptr i8, ptr %196, i32 %231
  %233 = and i32 %199, 31
  %234 = shl i32 %200, %233
  %235 = lshr i32 %234, %184
  %236 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %235
  %237 = load i16, ptr %236, align 2
  store i16 %237, ptr %195, align 1
  %238 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %235, i32 1
  %239 = load i8, ptr %238, align 2
  %240 = zext i8 %239 to i32
  %241 = add i32 %199, %240
  %242 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %235, i32 2
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i32
  %245 = getelementptr i8, ptr %195, i32 %244
  %246 = and i32 %192, 31
  %247 = shl i32 %193, %246
  %248 = lshr i32 %247, %184
  %249 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %248
  %250 = load i16, ptr %249, align 2
  store i16 %250, ptr %194, align 1
  %251 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %248, i32 1
  %252 = load i8, ptr %251, align 2
  %253 = zext i8 %252 to i32
  %254 = add i32 %192, %253
  %255 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %248, i32 2
  %256 = load i8, ptr %255, align 1
  %257 = zext i8 %256 to i32
  %258 = getelementptr i8, ptr %194, i32 %257
  %259 = and i32 %215, 31
  %260 = shl i32 %206, %259
  %261 = lshr i32 %260, %184
  %262 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %261
  %263 = load i16, ptr %262, align 2
  store i16 %263, ptr %219, align 1
  %264 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %261, i32 1
  %265 = load i8, ptr %264, align 2
  %266 = zext i8 %265 to i32
  %267 = add i32 %215, %266
  %268 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %261, i32 2
  %269 = load i8, ptr %268, align 1
  %270 = zext i8 %269 to i32
  %271 = getelementptr i8, ptr %219, i32 %270
  %272 = and i32 %228, 31
  %273 = shl i32 %203, %272
  %274 = lshr i32 %273, %184
  %275 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %274
  %276 = load i16, ptr %275, align 2
  store i16 %276, ptr %232, align 1
  %277 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %274, i32 1
  %278 = load i8, ptr %277, align 2
  %279 = zext i8 %278 to i32
  %280 = add i32 %228, %279
  %281 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %274, i32 2
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i32
  %284 = getelementptr i8, ptr %232, i32 %283
  %285 = and i32 %241, 31
  %286 = shl i32 %200, %285
  %287 = lshr i32 %286, %184
  %288 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %287
  %289 = load i16, ptr %288, align 2
  store i16 %289, ptr %245, align 1
  %290 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %287, i32 1
  %291 = load i8, ptr %290, align 2
  %292 = zext i8 %291 to i32
  %293 = add i32 %241, %292
  %294 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %287, i32 2
  %295 = load i8, ptr %294, align 1
  %296 = zext i8 %295 to i32
  %297 = getelementptr i8, ptr %245, i32 %296
  %298 = and i32 %254, 31
  %299 = shl i32 %193, %298
  %300 = lshr i32 %299, %184
  %301 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %300
  %302 = load i16, ptr %301, align 2
  store i16 %302, ptr %258, align 1
  %303 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %300, i32 1
  %304 = load i8, ptr %303, align 2
  %305 = zext i8 %304 to i32
  %306 = add i32 %254, %305
  store i32 %306, ptr %185, align 4
  %307 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %300, i32 2
  %308 = load i8, ptr %307, align 1
  %309 = zext i8 %308 to i32
  %310 = getelementptr i8, ptr %258, i32 %309
  %311 = icmp ult ptr %204, %39
  br i1 %311, label %318, label %312, !prof !10

312:                                              ; preds = %191
  %313 = lshr i32 %267, 3
  %314 = sub nsw i32 0, %313
  %315 = getelementptr i8, ptr %204, i32 %314
  %316 = and i32 %267, 7
  %317 = load i32, ptr %315, align 1
  br label %318

318:                                              ; preds = %312, %191
  %319 = phi i32 [ %206, %191 ], [ %317, %312 ]
  %320 = phi i32 [ %267, %191 ], [ %316, %312 ]
  %321 = phi ptr [ %204, %191 ], [ %315, %312 ]
  %322 = phi i32 [ 3, %191 ], [ 0, %312 ]
  %323 = icmp ult ptr %201, %86
  br i1 %323, label %330, label %324, !prof !10

324:                                              ; preds = %318
  %325 = lshr i32 %280, 3
  %326 = sub nsw i32 0, %325
  %327 = getelementptr i8, ptr %201, i32 %326
  %328 = and i32 %280, 7
  %329 = load i32, ptr %327, align 1
  br label %330

330:                                              ; preds = %324, %318
  %331 = phi i32 [ %203, %318 ], [ %329, %324 ]
  %332 = phi i32 [ %280, %318 ], [ %328, %324 ]
  %333 = phi ptr [ %201, %318 ], [ %327, %324 ]
  %334 = phi i32 [ 3, %318 ], [ 0, %324 ]
  %335 = or i32 %334, %322
  %336 = icmp ult ptr %198, %133
  br i1 %336, label %343, label %337, !prof !10

337:                                              ; preds = %330
  %338 = lshr i32 %293, 3
  %339 = sub nsw i32 0, %338
  %340 = getelementptr i8, ptr %198, i32 %339
  %341 = and i32 %293, 7
  %342 = load i32, ptr %340, align 1
  br label %343

343:                                              ; preds = %337, %330
  %344 = phi i32 [ %200, %330 ], [ %342, %337 ]
  %345 = phi i32 [ %293, %330 ], [ %341, %337 ]
  %346 = phi ptr [ %198, %330 ], [ %340, %337 ]
  %347 = phi i32 [ 3, %330 ], [ 0, %337 ]
  %348 = or i32 %335, %347
  %349 = load ptr, ptr %186, align 4
  %350 = icmp ult ptr %349, %188
  br i1 %350, label %357, label %351, !prof !10

351:                                              ; preds = %343
  %352 = lshr i32 %306, 3
  %353 = sub nsw i32 0, %352
  %354 = getelementptr i8, ptr %349, i32 %353
  store ptr %354, ptr %186, align 4
  %355 = and i32 %306, 7
  store i32 %355, ptr %185, align 4
  %356 = load i32, ptr %354, align 1
  store i32 %356, ptr %6, align 4
  br label %357

357:                                              ; preds = %351, %343
  %358 = phi i32 [ %355, %351 ], [ %306, %343 ]
  %359 = phi i32 [ %356, %351 ], [ %193, %343 ]
  %360 = phi i32 [ 0, %351 ], [ 3, %343 ]
  %361 = or i32 %348, %360
  %362 = icmp ne i32 %361, 0
  %363 = icmp uge ptr %310, %10
  %364 = or i1 %363, %362
  br i1 %364, label %365, label %191

365:                                              ; preds = %357, %180
  %366 = phi i32 [ %81, %180 ], [ %319, %357 ]
  %367 = phi i32 [ %82, %180 ], [ %320, %357 ]
  %368 = phi ptr [ %83, %180 ], [ %321, %357 ]
  %369 = phi i32 [ %128, %180 ], [ %331, %357 ]
  %370 = phi i32 [ %129, %180 ], [ %332, %357 ]
  %371 = phi ptr [ %130, %180 ], [ %333, %357 ]
  %372 = phi i32 [ %175, %180 ], [ %344, %357 ]
  %373 = phi i32 [ %176, %180 ], [ %345, %357 ]
  %374 = phi ptr [ %177, %180 ], [ %346, %357 ]
  %375 = phi ptr [ %0, %180 ], [ %271, %357 ]
  %376 = phi ptr [ %30, %180 ], [ %284, %357 ]
  %377 = phi ptr [ %31, %180 ], [ %297, %357 ]
  %378 = phi ptr [ %32, %180 ], [ %310, %357 ]
  %379 = icmp ugt ptr %375, %30
  %380 = icmp ugt ptr %376, %31
  %381 = select i1 %379, i1 true, i1 %380
  %382 = icmp ugt ptr %377, %32
  %383 = select i1 %381, i1 true, i1 %382
  br i1 %383, label %1160, label %384

384:                                              ; preds = %365
  %385 = icmp ugt i32 %367, 32
  br i1 %385, label %386, label %389

386:                                              ; preds = %384
  %387 = sub nsw i32 0, %34
  %388 = and i32 %387, 31
  br label %456

389:                                              ; preds = %384
  %390 = getelementptr i8, ptr %30, i32 -3
  %391 = sub nsw i32 0, %34
  %392 = and i32 %391, 31
  %393 = ptrtoint ptr %24 to i32
  br label %394

394:                                              ; preds = %428, %389
  %395 = phi i32 [ %366, %389 ], [ %424, %428 ]
  %396 = phi i32 [ %367, %389 ], [ %450, %428 ]
  %397 = phi ptr [ %368, %389 ], [ %423, %428 ]
  %398 = phi ptr [ %375, %389 ], [ %454, %428 ]
  %399 = icmp ult ptr %397, %39
  br i1 %399, label %403, label %400

400:                                              ; preds = %394
  %401 = lshr i32 %396, 3
  %402 = and i32 %396, 7
  br label %418

403:                                              ; preds = %394
  %404 = icmp eq ptr %397, %24
  br i1 %404, label %405, label %407

405:                                              ; preds = %403
  %406 = getelementptr i8, ptr %30, i32 -2
  br label %466

407:                                              ; preds = %403
  %408 = lshr i32 %396, 3
  %409 = sub nsw i32 0, %408
  %410 = getelementptr i8, ptr %397, i32 %409
  %411 = icmp ult ptr %410, %24
  %412 = ptrtoint ptr %397 to i32
  %413 = sub i32 %412, %393
  %414 = select i1 %411, i32 %413, i32 %408
  %415 = zext i1 %411 to i32
  %416 = mul i32 %414, -8
  %417 = add i32 %416, %396
  br label %418

418:                                              ; preds = %407, %400
  %419 = phi i32 [ %414, %407 ], [ %401, %400 ]
  %420 = phi i32 [ %417, %407 ], [ %402, %400 ]
  %421 = phi i32 [ %415, %407 ], [ 0, %400 ]
  %422 = sub i32 0, %419
  %423 = getelementptr i8, ptr %397, i32 %422
  %424 = load i32, ptr %423, align 1
  %425 = icmp eq i32 %421, 0
  %426 = icmp ult ptr %398, %390
  %427 = and i1 %426, %425
  br i1 %427, label %428, label %463

428:                                              ; preds = %418
  %429 = and i32 %420, 31
  %430 = shl i32 %424, %429
  %431 = lshr i32 %430, %392
  %432 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %431
  %433 = load i16, ptr %432, align 2
  store i16 %433, ptr %398, align 1
  %434 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %431, i32 1
  %435 = load i8, ptr %434, align 2
  %436 = zext i8 %435 to i32
  %437 = add i32 %420, %436
  %438 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %431, i32 2
  %439 = load i8, ptr %438, align 1
  %440 = zext i8 %439 to i32
  %441 = getelementptr i8, ptr %398, i32 %440
  %442 = and i32 %437, 31
  %443 = shl i32 %424, %442
  %444 = lshr i32 %443, %392
  %445 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %444
  %446 = load i16, ptr %445, align 2
  store i16 %446, ptr %441, align 1
  %447 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %444, i32 1
  %448 = load i8, ptr %447, align 2
  %449 = zext i8 %448 to i32
  %450 = add i32 %437, %449
  %451 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %444, i32 2
  %452 = load i8, ptr %451, align 1
  %453 = zext i8 %452 to i32
  %454 = getelementptr i8, ptr %441, i32 %453
  %455 = icmp ugt i32 %450, 32
  br i1 %455, label %456, label %394

456:                                              ; preds = %428, %386
  %457 = phi i32 [ %366, %386 ], [ %424, %428 ]
  %458 = phi i32 [ %367, %386 ], [ %450, %428 ]
  %459 = phi ptr [ %368, %386 ], [ %423, %428 ]
  %460 = phi i32 [ %388, %386 ], [ %392, %428 ]
  %461 = phi ptr [ %375, %386 ], [ %454, %428 ]
  %462 = getelementptr i8, ptr %30, i32 -2
  br label %503

463:                                              ; preds = %418
  %464 = getelementptr i8, ptr %30, i32 -2
  %465 = icmp ugt i32 %420, 32
  br i1 %465, label %503, label %466

466:                                              ; preds = %463, %405
  %467 = phi ptr [ %406, %405 ], [ %464, %463 ]
  %468 = phi ptr [ %24, %405 ], [ %423, %463 ]
  %469 = phi i32 [ %396, %405 ], [ %420, %463 ]
  %470 = phi i32 [ %395, %405 ], [ %424, %463 ]
  br label %471

471:                                              ; preds = %511, %466
  %472 = phi ptr [ %398, %466 ], [ %524, %511 ]
  %473 = phi ptr [ %468, %466 ], [ %498, %511 ]
  %474 = phi i32 [ %469, %466 ], [ %520, %511 ]
  %475 = phi i32 [ %470, %466 ], [ %499, %511 ]
  %476 = icmp ult ptr %473, %39
  br i1 %476, label %480, label %477

477:                                              ; preds = %471
  %478 = lshr i32 %474, 3
  %479 = and i32 %474, 7
  br label %493

480:                                              ; preds = %471
  %481 = icmp eq ptr %473, %24
  br i1 %481, label %503, label %482

482:                                              ; preds = %480
  %483 = lshr i32 %474, 3
  %484 = sub nsw i32 0, %483
  %485 = getelementptr i8, ptr %473, i32 %484
  %486 = icmp ult ptr %485, %24
  %487 = ptrtoint ptr %473 to i32
  %488 = sub i32 %487, %393
  %489 = select i1 %486, i32 %488, i32 %483
  %490 = zext i1 %486 to i32
  %491 = mul i32 %489, -8
  %492 = add i32 %491, %474
  br label %493

493:                                              ; preds = %482, %477
  %494 = phi i32 [ %489, %482 ], [ %478, %477 ]
  %495 = phi i32 [ %492, %482 ], [ %479, %477 ]
  %496 = phi i32 [ %490, %482 ], [ 0, %477 ]
  %497 = sub i32 0, %494
  %498 = getelementptr i8, ptr %473, i32 %497
  %499 = load i32, ptr %498, align 1
  %500 = icmp eq i32 %496, 0
  %501 = icmp ule ptr %472, %467
  %502 = and i1 %501, %500
  br i1 %502, label %511, label %503

503:                                              ; preds = %511, %493, %480, %463, %456
  %504 = phi ptr [ %464, %463 ], [ %462, %456 ], [ %467, %480 ], [ %467, %493 ], [ %467, %511 ]
  %505 = phi i32 [ %392, %463 ], [ %460, %456 ], [ %392, %480 ], [ %392, %493 ], [ %392, %511 ]
  %506 = phi ptr [ %398, %463 ], [ %461, %456 ], [ %524, %511 ], [ %472, %493 ], [ %472, %480 ]
  %507 = phi i32 [ %424, %463 ], [ %457, %456 ], [ %499, %511 ], [ %499, %493 ], [ %475, %480 ]
  %508 = phi i32 [ %420, %463 ], [ %458, %456 ], [ %520, %511 ], [ %495, %493 ], [ %474, %480 ]
  %509 = phi ptr [ %423, %463 ], [ %459, %456 ], [ %498, %511 ], [ %498, %493 ], [ %24, %480 ]
  %510 = icmp ugt ptr %506, %504
  br i1 %510, label %543, label %526

511:                                              ; preds = %493
  %512 = and i32 %495, 31
  %513 = shl i32 %499, %512
  %514 = lshr i32 %513, %392
  %515 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %514
  %516 = load i16, ptr %515, align 2
  store i16 %516, ptr %472, align 1
  %517 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %514, i32 1
  %518 = load i8, ptr %517, align 2
  %519 = zext i8 %518 to i32
  %520 = add i32 %495, %519
  %521 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %514, i32 2
  %522 = load i8, ptr %521, align 1
  %523 = zext i8 %522 to i32
  %524 = getelementptr i8, ptr %472, i32 %523
  %525 = icmp ugt i32 %520, 32
  br i1 %525, label %503, label %471

526:                                              ; preds = %526, %503
  %527 = phi i32 [ %537, %526 ], [ %508, %503 ]
  %528 = phi ptr [ %541, %526 ], [ %506, %503 ]
  %529 = and i32 %527, 31
  %530 = shl i32 %507, %529
  %531 = lshr i32 %530, %505
  %532 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %531
  %533 = load i16, ptr %532, align 2
  store i16 %533, ptr %528, align 1
  %534 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %531, i32 1
  %535 = load i8, ptr %534, align 2
  %536 = zext i8 %535 to i32
  %537 = add i32 %527, %536
  %538 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %531, i32 2
  %539 = load i8, ptr %538, align 1
  %540 = zext i8 %539 to i32
  %541 = getelementptr i8, ptr %528, i32 %540
  %542 = icmp ugt ptr %541, %504
  br i1 %542, label %543, label %526

543:                                              ; preds = %526, %503
  %544 = phi i32 [ %508, %503 ], [ %537, %526 ]
  %545 = phi ptr [ %506, %503 ], [ %541, %526 ]
  %546 = icmp ult ptr %545, %30
  br i1 %546, label %547, label %569

547:                                              ; preds = %543
  %548 = and i32 %544, 31
  %549 = shl i32 %507, %548
  %550 = lshr i32 %549, %505
  %551 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %550
  %552 = load i8, ptr %551, align 2
  store i8 %552, ptr %545, align 1
  %553 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %550, i32 2
  %554 = load i8, ptr %553, align 1
  %555 = icmp eq i8 %554, 1
  br i1 %555, label %556, label %561

556:                                              ; preds = %547
  %557 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %550, i32 1
  %558 = load i8, ptr %557, align 2
  %559 = zext i8 %558 to i32
  %560 = add i32 %544, %559
  br label %569

561:                                              ; preds = %547
  %562 = icmp ult i32 %544, 32
  br i1 %562, label %563, label %569

563:                                              ; preds = %561
  %564 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %550, i32 1
  %565 = load i8, ptr %564, align 2
  %566 = zext i8 %565 to i32
  %567 = add nuw nsw i32 %544, %566
  %568 = tail call i32 @llvm.umin.i32(i32 %567, i32 32) #9
  br label %569

569:                                              ; preds = %563, %561, %556, %543
  %570 = phi i32 [ %544, %561 ], [ %544, %543 ], [ %568, %563 ], [ %560, %556 ]
  %571 = icmp ugt i32 %370, 32
  br i1 %571, label %572, label %575

572:                                              ; preds = %569
  %573 = sub nsw i32 0, %34
  %574 = and i32 %573, 31
  br label %642

575:                                              ; preds = %569
  %576 = getelementptr i8, ptr %31, i32 -3
  %577 = sub nsw i32 0, %34
  %578 = and i32 %577, 31
  %579 = ptrtoint ptr %25 to i32
  br label %580

580:                                              ; preds = %614, %575
  %581 = phi i32 [ %369, %575 ], [ %610, %614 ]
  %582 = phi i32 [ %370, %575 ], [ %636, %614 ]
  %583 = phi ptr [ %371, %575 ], [ %609, %614 ]
  %584 = phi ptr [ %376, %575 ], [ %640, %614 ]
  %585 = icmp ult ptr %583, %86
  br i1 %585, label %589, label %586

586:                                              ; preds = %580
  %587 = lshr i32 %582, 3
  %588 = and i32 %582, 7
  br label %604

589:                                              ; preds = %580
  %590 = icmp eq ptr %583, %25
  br i1 %590, label %591, label %593

591:                                              ; preds = %589
  %592 = getelementptr i8, ptr %31, i32 -2
  br label %652

593:                                              ; preds = %589
  %594 = lshr i32 %582, 3
  %595 = sub nsw i32 0, %594
  %596 = getelementptr i8, ptr %583, i32 %595
  %597 = icmp ult ptr %596, %25
  %598 = ptrtoint ptr %583 to i32
  %599 = sub i32 %598, %579
  %600 = select i1 %597, i32 %599, i32 %594
  %601 = zext i1 %597 to i32
  %602 = mul i32 %600, -8
  %603 = add i32 %602, %582
  br label %604

604:                                              ; preds = %593, %586
  %605 = phi i32 [ %600, %593 ], [ %587, %586 ]
  %606 = phi i32 [ %603, %593 ], [ %588, %586 ]
  %607 = phi i32 [ %601, %593 ], [ 0, %586 ]
  %608 = sub i32 0, %605
  %609 = getelementptr i8, ptr %583, i32 %608
  %610 = load i32, ptr %609, align 1
  %611 = icmp eq i32 %607, 0
  %612 = icmp ult ptr %584, %576
  %613 = and i1 %612, %611
  br i1 %613, label %614, label %649

614:                                              ; preds = %604
  %615 = and i32 %606, 31
  %616 = shl i32 %610, %615
  %617 = lshr i32 %616, %578
  %618 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %617
  %619 = load i16, ptr %618, align 2
  store i16 %619, ptr %584, align 1
  %620 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %617, i32 1
  %621 = load i8, ptr %620, align 2
  %622 = zext i8 %621 to i32
  %623 = add i32 %606, %622
  %624 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %617, i32 2
  %625 = load i8, ptr %624, align 1
  %626 = zext i8 %625 to i32
  %627 = getelementptr i8, ptr %584, i32 %626
  %628 = and i32 %623, 31
  %629 = shl i32 %610, %628
  %630 = lshr i32 %629, %578
  %631 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %630
  %632 = load i16, ptr %631, align 2
  store i16 %632, ptr %627, align 1
  %633 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %630, i32 1
  %634 = load i8, ptr %633, align 2
  %635 = zext i8 %634 to i32
  %636 = add i32 %623, %635
  %637 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %630, i32 2
  %638 = load i8, ptr %637, align 1
  %639 = zext i8 %638 to i32
  %640 = getelementptr i8, ptr %627, i32 %639
  %641 = icmp ugt i32 %636, 32
  br i1 %641, label %642, label %580

642:                                              ; preds = %614, %572
  %643 = phi i32 [ %369, %572 ], [ %610, %614 ]
  %644 = phi i32 [ %370, %572 ], [ %636, %614 ]
  %645 = phi ptr [ %371, %572 ], [ %609, %614 ]
  %646 = phi i32 [ %574, %572 ], [ %578, %614 ]
  %647 = phi ptr [ %376, %572 ], [ %640, %614 ]
  %648 = getelementptr i8, ptr %31, i32 -2
  br label %689

649:                                              ; preds = %604
  %650 = getelementptr i8, ptr %31, i32 -2
  %651 = icmp ugt i32 %606, 32
  br i1 %651, label %689, label %652

652:                                              ; preds = %649, %591
  %653 = phi ptr [ %592, %591 ], [ %650, %649 ]
  %654 = phi ptr [ %25, %591 ], [ %609, %649 ]
  %655 = phi i32 [ %582, %591 ], [ %606, %649 ]
  %656 = phi i32 [ %581, %591 ], [ %610, %649 ]
  br label %657

657:                                              ; preds = %697, %652
  %658 = phi ptr [ %584, %652 ], [ %710, %697 ]
  %659 = phi ptr [ %654, %652 ], [ %684, %697 ]
  %660 = phi i32 [ %655, %652 ], [ %706, %697 ]
  %661 = phi i32 [ %656, %652 ], [ %685, %697 ]
  %662 = icmp ult ptr %659, %86
  br i1 %662, label %666, label %663

663:                                              ; preds = %657
  %664 = lshr i32 %660, 3
  %665 = and i32 %660, 7
  br label %679

666:                                              ; preds = %657
  %667 = icmp eq ptr %659, %25
  br i1 %667, label %689, label %668

668:                                              ; preds = %666
  %669 = lshr i32 %660, 3
  %670 = sub nsw i32 0, %669
  %671 = getelementptr i8, ptr %659, i32 %670
  %672 = icmp ult ptr %671, %25
  %673 = ptrtoint ptr %659 to i32
  %674 = sub i32 %673, %579
  %675 = select i1 %672, i32 %674, i32 %669
  %676 = zext i1 %672 to i32
  %677 = mul i32 %675, -8
  %678 = add i32 %677, %660
  br label %679

679:                                              ; preds = %668, %663
  %680 = phi i32 [ %675, %668 ], [ %664, %663 ]
  %681 = phi i32 [ %678, %668 ], [ %665, %663 ]
  %682 = phi i32 [ %676, %668 ], [ 0, %663 ]
  %683 = sub i32 0, %680
  %684 = getelementptr i8, ptr %659, i32 %683
  %685 = load i32, ptr %684, align 1
  %686 = icmp eq i32 %682, 0
  %687 = icmp ule ptr %658, %653
  %688 = and i1 %687, %686
  br i1 %688, label %697, label %689

689:                                              ; preds = %697, %679, %666, %649, %642
  %690 = phi ptr [ %650, %649 ], [ %648, %642 ], [ %653, %666 ], [ %653, %679 ], [ %653, %697 ]
  %691 = phi i32 [ %578, %649 ], [ %646, %642 ], [ %578, %666 ], [ %578, %679 ], [ %578, %697 ]
  %692 = phi ptr [ %584, %649 ], [ %647, %642 ], [ %710, %697 ], [ %658, %679 ], [ %658, %666 ]
  %693 = phi i32 [ %610, %649 ], [ %643, %642 ], [ %685, %697 ], [ %685, %679 ], [ %661, %666 ]
  %694 = phi i32 [ %606, %649 ], [ %644, %642 ], [ %706, %697 ], [ %681, %679 ], [ %660, %666 ]
  %695 = phi ptr [ %609, %649 ], [ %645, %642 ], [ %684, %697 ], [ %684, %679 ], [ %25, %666 ]
  %696 = icmp ugt ptr %692, %690
  br i1 %696, label %729, label %712

697:                                              ; preds = %679
  %698 = and i32 %681, 31
  %699 = shl i32 %685, %698
  %700 = lshr i32 %699, %578
  %701 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %700
  %702 = load i16, ptr %701, align 2
  store i16 %702, ptr %658, align 1
  %703 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %700, i32 1
  %704 = load i8, ptr %703, align 2
  %705 = zext i8 %704 to i32
  %706 = add i32 %681, %705
  %707 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %700, i32 2
  %708 = load i8, ptr %707, align 1
  %709 = zext i8 %708 to i32
  %710 = getelementptr i8, ptr %658, i32 %709
  %711 = icmp ugt i32 %706, 32
  br i1 %711, label %689, label %657

712:                                              ; preds = %712, %689
  %713 = phi i32 [ %723, %712 ], [ %694, %689 ]
  %714 = phi ptr [ %727, %712 ], [ %692, %689 ]
  %715 = and i32 %713, 31
  %716 = shl i32 %693, %715
  %717 = lshr i32 %716, %691
  %718 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %717
  %719 = load i16, ptr %718, align 2
  store i16 %719, ptr %714, align 1
  %720 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %717, i32 1
  %721 = load i8, ptr %720, align 2
  %722 = zext i8 %721 to i32
  %723 = add i32 %713, %722
  %724 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %717, i32 2
  %725 = load i8, ptr %724, align 1
  %726 = zext i8 %725 to i32
  %727 = getelementptr i8, ptr %714, i32 %726
  %728 = icmp ugt ptr %727, %690
  br i1 %728, label %729, label %712

729:                                              ; preds = %712, %689
  %730 = phi i32 [ %694, %689 ], [ %723, %712 ]
  %731 = phi ptr [ %692, %689 ], [ %727, %712 ]
  %732 = icmp ult ptr %731, %31
  br i1 %732, label %733, label %755

733:                                              ; preds = %729
  %734 = and i32 %730, 31
  %735 = shl i32 %693, %734
  %736 = lshr i32 %735, %691
  %737 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %736
  %738 = load i8, ptr %737, align 2
  store i8 %738, ptr %731, align 1
  %739 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %736, i32 2
  %740 = load i8, ptr %739, align 1
  %741 = icmp eq i8 %740, 1
  br i1 %741, label %742, label %747

742:                                              ; preds = %733
  %743 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %736, i32 1
  %744 = load i8, ptr %743, align 2
  %745 = zext i8 %744 to i32
  %746 = add i32 %730, %745
  br label %755

747:                                              ; preds = %733
  %748 = icmp ult i32 %730, 32
  br i1 %748, label %749, label %755

749:                                              ; preds = %747
  %750 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %736, i32 1
  %751 = load i8, ptr %750, align 2
  %752 = zext i8 %751 to i32
  %753 = add nuw nsw i32 %730, %752
  %754 = tail call i32 @llvm.umin.i32(i32 %753, i32 32) #9
  br label %755

755:                                              ; preds = %749, %747, %742, %729
  %756 = phi i32 [ %730, %747 ], [ %730, %729 ], [ %754, %749 ], [ %746, %742 ]
  %757 = icmp ugt i32 %373, 32
  br i1 %757, label %758, label %761

758:                                              ; preds = %755
  %759 = sub nsw i32 0, %34
  %760 = and i32 %759, 31
  br label %828

761:                                              ; preds = %755
  %762 = getelementptr i8, ptr %32, i32 -3
  %763 = sub nsw i32 0, %34
  %764 = and i32 %763, 31
  %765 = ptrtoint ptr %26 to i32
  br label %766

766:                                              ; preds = %800, %761
  %767 = phi i32 [ %372, %761 ], [ %796, %800 ]
  %768 = phi i32 [ %373, %761 ], [ %822, %800 ]
  %769 = phi ptr [ %374, %761 ], [ %795, %800 ]
  %770 = phi ptr [ %377, %761 ], [ %826, %800 ]
  %771 = icmp ult ptr %769, %133
  br i1 %771, label %775, label %772

772:                                              ; preds = %766
  %773 = lshr i32 %768, 3
  %774 = and i32 %768, 7
  br label %790

775:                                              ; preds = %766
  %776 = icmp eq ptr %769, %26
  br i1 %776, label %777, label %779

777:                                              ; preds = %775
  %778 = getelementptr i8, ptr %32, i32 -2
  br label %838

779:                                              ; preds = %775
  %780 = lshr i32 %768, 3
  %781 = sub nsw i32 0, %780
  %782 = getelementptr i8, ptr %769, i32 %781
  %783 = icmp ult ptr %782, %26
  %784 = ptrtoint ptr %769 to i32
  %785 = sub i32 %784, %765
  %786 = select i1 %783, i32 %785, i32 %780
  %787 = zext i1 %783 to i32
  %788 = mul i32 %786, -8
  %789 = add i32 %788, %768
  br label %790

790:                                              ; preds = %779, %772
  %791 = phi i32 [ %786, %779 ], [ %773, %772 ]
  %792 = phi i32 [ %789, %779 ], [ %774, %772 ]
  %793 = phi i32 [ %787, %779 ], [ 0, %772 ]
  %794 = sub i32 0, %791
  %795 = getelementptr i8, ptr %769, i32 %794
  %796 = load i32, ptr %795, align 1
  %797 = icmp eq i32 %793, 0
  %798 = icmp ult ptr %770, %762
  %799 = and i1 %798, %797
  br i1 %799, label %800, label %835

800:                                              ; preds = %790
  %801 = and i32 %792, 31
  %802 = shl i32 %796, %801
  %803 = lshr i32 %802, %764
  %804 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %803
  %805 = load i16, ptr %804, align 2
  store i16 %805, ptr %770, align 1
  %806 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %803, i32 1
  %807 = load i8, ptr %806, align 2
  %808 = zext i8 %807 to i32
  %809 = add i32 %792, %808
  %810 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %803, i32 2
  %811 = load i8, ptr %810, align 1
  %812 = zext i8 %811 to i32
  %813 = getelementptr i8, ptr %770, i32 %812
  %814 = and i32 %809, 31
  %815 = shl i32 %796, %814
  %816 = lshr i32 %815, %764
  %817 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %816
  %818 = load i16, ptr %817, align 2
  store i16 %818, ptr %813, align 1
  %819 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %816, i32 1
  %820 = load i8, ptr %819, align 2
  %821 = zext i8 %820 to i32
  %822 = add i32 %809, %821
  %823 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %816, i32 2
  %824 = load i8, ptr %823, align 1
  %825 = zext i8 %824 to i32
  %826 = getelementptr i8, ptr %813, i32 %825
  %827 = icmp ugt i32 %822, 32
  br i1 %827, label %828, label %766

828:                                              ; preds = %800, %758
  %829 = phi i32 [ %372, %758 ], [ %796, %800 ]
  %830 = phi i32 [ %373, %758 ], [ %822, %800 ]
  %831 = phi ptr [ %374, %758 ], [ %795, %800 ]
  %832 = phi i32 [ %760, %758 ], [ %764, %800 ]
  %833 = phi ptr [ %377, %758 ], [ %826, %800 ]
  %834 = getelementptr i8, ptr %32, i32 -2
  br label %875

835:                                              ; preds = %790
  %836 = getelementptr i8, ptr %32, i32 -2
  %837 = icmp ugt i32 %792, 32
  br i1 %837, label %875, label %838

838:                                              ; preds = %835, %777
  %839 = phi ptr [ %778, %777 ], [ %836, %835 ]
  %840 = phi ptr [ %26, %777 ], [ %795, %835 ]
  %841 = phi i32 [ %768, %777 ], [ %792, %835 ]
  %842 = phi i32 [ %767, %777 ], [ %796, %835 ]
  br label %843

843:                                              ; preds = %883, %838
  %844 = phi ptr [ %770, %838 ], [ %896, %883 ]
  %845 = phi ptr [ %840, %838 ], [ %870, %883 ]
  %846 = phi i32 [ %841, %838 ], [ %892, %883 ]
  %847 = phi i32 [ %842, %838 ], [ %871, %883 ]
  %848 = icmp ult ptr %845, %133
  br i1 %848, label %852, label %849

849:                                              ; preds = %843
  %850 = lshr i32 %846, 3
  %851 = and i32 %846, 7
  br label %865

852:                                              ; preds = %843
  %853 = icmp eq ptr %845, %26
  br i1 %853, label %875, label %854

854:                                              ; preds = %852
  %855 = lshr i32 %846, 3
  %856 = sub nsw i32 0, %855
  %857 = getelementptr i8, ptr %845, i32 %856
  %858 = icmp ult ptr %857, %26
  %859 = ptrtoint ptr %845 to i32
  %860 = sub i32 %859, %765
  %861 = select i1 %858, i32 %860, i32 %855
  %862 = zext i1 %858 to i32
  %863 = mul i32 %861, -8
  %864 = add i32 %863, %846
  br label %865

865:                                              ; preds = %854, %849
  %866 = phi i32 [ %861, %854 ], [ %850, %849 ]
  %867 = phi i32 [ %864, %854 ], [ %851, %849 ]
  %868 = phi i32 [ %862, %854 ], [ 0, %849 ]
  %869 = sub i32 0, %866
  %870 = getelementptr i8, ptr %845, i32 %869
  %871 = load i32, ptr %870, align 1
  %872 = icmp eq i32 %868, 0
  %873 = icmp ule ptr %844, %839
  %874 = and i1 %873, %872
  br i1 %874, label %883, label %875

875:                                              ; preds = %883, %865, %852, %835, %828
  %876 = phi ptr [ %836, %835 ], [ %834, %828 ], [ %839, %852 ], [ %839, %865 ], [ %839, %883 ]
  %877 = phi i32 [ %764, %835 ], [ %832, %828 ], [ %764, %852 ], [ %764, %865 ], [ %764, %883 ]
  %878 = phi ptr [ %770, %835 ], [ %833, %828 ], [ %896, %883 ], [ %844, %865 ], [ %844, %852 ]
  %879 = phi i32 [ %796, %835 ], [ %829, %828 ], [ %871, %883 ], [ %871, %865 ], [ %847, %852 ]
  %880 = phi i32 [ %792, %835 ], [ %830, %828 ], [ %892, %883 ], [ %867, %865 ], [ %846, %852 ]
  %881 = phi ptr [ %795, %835 ], [ %831, %828 ], [ %870, %883 ], [ %870, %865 ], [ %26, %852 ]
  %882 = icmp ugt ptr %878, %876
  br i1 %882, label %915, label %898

883:                                              ; preds = %865
  %884 = and i32 %867, 31
  %885 = shl i32 %871, %884
  %886 = lshr i32 %885, %764
  %887 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %886
  %888 = load i16, ptr %887, align 2
  store i16 %888, ptr %844, align 1
  %889 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %886, i32 1
  %890 = load i8, ptr %889, align 2
  %891 = zext i8 %890 to i32
  %892 = add i32 %867, %891
  %893 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %886, i32 2
  %894 = load i8, ptr %893, align 1
  %895 = zext i8 %894 to i32
  %896 = getelementptr i8, ptr %844, i32 %895
  %897 = icmp ugt i32 %892, 32
  br i1 %897, label %875, label %843

898:                                              ; preds = %898, %875
  %899 = phi i32 [ %909, %898 ], [ %880, %875 ]
  %900 = phi ptr [ %913, %898 ], [ %878, %875 ]
  %901 = and i32 %899, 31
  %902 = shl i32 %879, %901
  %903 = lshr i32 %902, %877
  %904 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %903
  %905 = load i16, ptr %904, align 2
  store i16 %905, ptr %900, align 1
  %906 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %903, i32 1
  %907 = load i8, ptr %906, align 2
  %908 = zext i8 %907 to i32
  %909 = add i32 %899, %908
  %910 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %903, i32 2
  %911 = load i8, ptr %910, align 1
  %912 = zext i8 %911 to i32
  %913 = getelementptr i8, ptr %900, i32 %912
  %914 = icmp ugt ptr %913, %876
  br i1 %914, label %915, label %898

915:                                              ; preds = %898, %875
  %916 = phi i32 [ %880, %875 ], [ %909, %898 ]
  %917 = phi ptr [ %878, %875 ], [ %913, %898 ]
  %918 = icmp ult ptr %917, %32
  br i1 %918, label %919, label %941

919:                                              ; preds = %915
  %920 = and i32 %916, 31
  %921 = shl i32 %879, %920
  %922 = lshr i32 %921, %877
  %923 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %922
  %924 = load i8, ptr %923, align 2
  store i8 %924, ptr %917, align 1
  %925 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %922, i32 2
  %926 = load i8, ptr %925, align 1
  %927 = icmp eq i8 %926, 1
  br i1 %927, label %928, label %933

928:                                              ; preds = %919
  %929 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %922, i32 1
  %930 = load i8, ptr %929, align 2
  %931 = zext i8 %930 to i32
  %932 = add i32 %916, %931
  br label %941

933:                                              ; preds = %919
  %934 = icmp ult i32 %916, 32
  br i1 %934, label %935, label %941

935:                                              ; preds = %933
  %936 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %922, i32 1
  %937 = load i8, ptr %936, align 2
  %938 = zext i8 %937 to i32
  %939 = add nuw nsw i32 %916, %938
  %940 = tail call i32 @llvm.umin.i32(i32 %939, i32 32) #9
  br label %941

941:                                              ; preds = %935, %933, %928, %915
  %942 = phi i32 [ %916, %933 ], [ %916, %915 ], [ %940, %935 ], [ %932, %928 ]
  %943 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 3
  %944 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 1
  %945 = load i32, ptr %944, align 4
  %946 = icmp ugt i32 %945, 32
  br i1 %946, label %947, label %950

947:                                              ; preds = %941
  %948 = sub nsw i32 0, %34
  %949 = and i32 %948, 31
  br label %1021

950:                                              ; preds = %941
  %951 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 2
  %952 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 4
  %953 = sub nsw i32 0, %34
  %954 = and i32 %953, 31
  %955 = load ptr, ptr %952, align 4
  %956 = load ptr, ptr %943, align 4
  %957 = ptrtoint ptr %956 to i32
  br label %958

958:                                              ; preds = %993, %950
  %959 = phi i32 [ %945, %950 ], [ %1015, %993 ]
  %960 = phi ptr [ %378, %950 ], [ %1019, %993 ]
  %961 = load ptr, ptr %951, align 4
  %962 = icmp ult ptr %961, %955
  br i1 %962, label %968, label %963

963:                                              ; preds = %958
  %964 = lshr i32 %959, 3
  %965 = sub nsw i32 0, %964
  %966 = getelementptr i8, ptr %961, i32 %965
  store ptr %966, ptr %951, align 4
  %967 = and i32 %959, 7
  br label %985

968:                                              ; preds = %958
  %969 = icmp eq ptr %961, %956
  br i1 %969, label %970, label %972

970:                                              ; preds = %968
  %971 = getelementptr i8, ptr %9, i32 -2
  br label %1030

972:                                              ; preds = %968
  %973 = lshr i32 %959, 3
  %974 = sub nsw i32 0, %973
  %975 = getelementptr i8, ptr %961, i32 %974
  %976 = icmp ult ptr %975, %956
  %977 = ptrtoint ptr %961 to i32
  %978 = sub i32 %977, %957
  %979 = select i1 %976, i32 %978, i32 %973
  %980 = zext i1 %976 to i32
  %981 = sub i32 0, %979
  %982 = getelementptr i8, ptr %961, i32 %981
  store ptr %982, ptr %951, align 4
  %983 = mul i32 %979, -8
  %984 = add i32 %983, %959
  br label %985

985:                                              ; preds = %972, %963
  %986 = phi i32 [ %967, %963 ], [ %984, %972 ]
  %987 = phi ptr [ %966, %963 ], [ %982, %972 ]
  %988 = phi i32 [ 0, %963 ], [ %980, %972 ]
  store i32 %986, ptr %944, align 4
  %989 = load i32, ptr %987, align 1
  store i32 %989, ptr %6, align 4
  %990 = icmp eq i32 %988, 0
  %991 = icmp ult ptr %960, %10
  %992 = and i1 %991, %990
  br i1 %992, label %993, label %1027

993:                                              ; preds = %985
  %994 = and i32 %986, 31
  %995 = shl i32 %989, %994
  %996 = lshr i32 %995, %954
  %997 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %996
  %998 = load i16, ptr %997, align 2
  store i16 %998, ptr %960, align 1
  %999 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %996, i32 1
  %1000 = load i8, ptr %999, align 2
  %1001 = zext i8 %1000 to i32
  %1002 = add i32 %986, %1001
  %1003 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %996, i32 2
  %1004 = load i8, ptr %1003, align 1
  %1005 = zext i8 %1004 to i32
  %1006 = getelementptr i8, ptr %960, i32 %1005
  %1007 = and i32 %1002, 31
  %1008 = shl i32 %989, %1007
  %1009 = lshr i32 %1008, %954
  %1010 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1009
  %1011 = load i16, ptr %1010, align 2
  store i16 %1011, ptr %1006, align 1
  %1012 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1009, i32 1
  %1013 = load i8, ptr %1012, align 2
  %1014 = zext i8 %1013 to i32
  %1015 = add i32 %1002, %1014
  store i32 %1015, ptr %944, align 4
  %1016 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1009, i32 2
  %1017 = load i8, ptr %1016, align 1
  %1018 = zext i8 %1017 to i32
  %1019 = getelementptr i8, ptr %1006, i32 %1018
  %1020 = icmp ugt i32 %1015, 32
  br i1 %1020, label %1021, label %958

1021:                                             ; preds = %993, %947
  %1022 = phi i32 [ %949, %947 ], [ %954, %993 ]
  %1023 = phi i32 [ %945, %947 ], [ %1015, %993 ]
  %1024 = phi ptr [ %378, %947 ], [ %1019, %993 ]
  %1025 = getelementptr i8, ptr %9, i32 -2
  %1026 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 2
  br label %1070

1027:                                             ; preds = %985
  %1028 = getelementptr i8, ptr %9, i32 -2
  %1029 = icmp ugt i32 %986, 32
  br i1 %1029, label %1070, label %1030

1030:                                             ; preds = %1027, %970
  %1031 = phi ptr [ %956, %970 ], [ %987, %1027 ]
  %1032 = phi ptr [ %971, %970 ], [ %1028, %1027 ]
  %1033 = phi i32 [ %959, %970 ], [ %986, %1027 ]
  %1034 = load ptr, ptr %943, align 4
  %1035 = ptrtoint ptr %1034 to i32
  %1036 = load ptr, ptr %952, align 4
  br label %1037

1037:                                             ; preds = %1077, %1030
  %1038 = phi ptr [ %1064, %1077 ], [ %1031, %1030 ]
  %1039 = phi ptr [ %1090, %1077 ], [ %960, %1030 ]
  %1040 = phi i32 [ %1086, %1077 ], [ %1033, %1030 ]
  %1041 = icmp ult ptr %1038, %1036
  br i1 %1041, label %1047, label %1042

1042:                                             ; preds = %1037
  %1043 = lshr i32 %1040, 3
  %1044 = sub nsw i32 0, %1043
  %1045 = getelementptr i8, ptr %1038, i32 %1044
  store ptr %1045, ptr %951, align 4
  %1046 = and i32 %1040, 7
  br label %1062

1047:                                             ; preds = %1037
  %1048 = icmp eq ptr %1038, %1034
  br i1 %1048, label %1070, label %1049

1049:                                             ; preds = %1047
  %1050 = lshr i32 %1040, 3
  %1051 = sub nsw i32 0, %1050
  %1052 = getelementptr i8, ptr %1038, i32 %1051
  %1053 = icmp ult ptr %1052, %1034
  %1054 = ptrtoint ptr %1038 to i32
  %1055 = sub i32 %1054, %1035
  %1056 = select i1 %1053, i32 %1055, i32 %1050
  %1057 = zext i1 %1053 to i32
  %1058 = sub i32 0, %1056
  %1059 = getelementptr i8, ptr %1038, i32 %1058
  store ptr %1059, ptr %951, align 4
  %1060 = mul i32 %1056, -8
  %1061 = add i32 %1060, %1040
  br label %1062

1062:                                             ; preds = %1049, %1042
  %1063 = phi i32 [ %1046, %1042 ], [ %1061, %1049 ]
  %1064 = phi ptr [ %1045, %1042 ], [ %1059, %1049 ]
  %1065 = phi i32 [ 0, %1042 ], [ %1057, %1049 ]
  store i32 %1063, ptr %944, align 4
  %1066 = load i32, ptr %1064, align 1
  store i32 %1066, ptr %6, align 4
  %1067 = icmp eq i32 %1065, 0
  %1068 = icmp ule ptr %1039, %1032
  %1069 = and i1 %1068, %1067
  br i1 %1069, label %1077, label %1070

1070:                                             ; preds = %1077, %1062, %1047, %1027, %1021
  %1071 = phi ptr [ %951, %1027 ], [ %1026, %1021 ], [ %951, %1047 ], [ %951, %1062 ], [ %951, %1077 ]
  %1072 = phi ptr [ %1028, %1027 ], [ %1025, %1021 ], [ %1032, %1047 ], [ %1032, %1062 ], [ %1032, %1077 ]
  %1073 = phi i32 [ %954, %1027 ], [ %1022, %1021 ], [ %954, %1047 ], [ %954, %1062 ], [ %954, %1077 ]
  %1074 = phi ptr [ %960, %1027 ], [ %1024, %1021 ], [ %1090, %1077 ], [ %1039, %1062 ], [ %1039, %1047 ]
  %1075 = phi i32 [ %986, %1027 ], [ %1023, %1021 ], [ %1086, %1077 ], [ %1063, %1062 ], [ %1040, %1047 ]
  %1076 = icmp ugt ptr %1074, %1072
  br i1 %1076, label %1111, label %1092

1077:                                             ; preds = %1062
  %1078 = and i32 %1063, 31
  %1079 = shl i32 %1066, %1078
  %1080 = lshr i32 %1079, %954
  %1081 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1080
  %1082 = load i16, ptr %1081, align 2
  store i16 %1082, ptr %1039, align 1
  %1083 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1080, i32 1
  %1084 = load i8, ptr %1083, align 2
  %1085 = zext i8 %1084 to i32
  %1086 = add i32 %1063, %1085
  store i32 %1086, ptr %944, align 4
  %1087 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1080, i32 2
  %1088 = load i8, ptr %1087, align 1
  %1089 = zext i8 %1088 to i32
  %1090 = getelementptr i8, ptr %1039, i32 %1089
  %1091 = icmp ugt i32 %1086, 32
  br i1 %1091, label %1070, label %1037

1092:                                             ; preds = %1092, %1070
  %1093 = phi i32 [ %1105, %1092 ], [ %1075, %1070 ]
  %1094 = phi ptr [ %1109, %1092 ], [ %1074, %1070 ]
  %1095 = load i32, ptr %6, align 4
  %1096 = and i32 %1093, 31
  %1097 = shl i32 %1095, %1096
  %1098 = lshr i32 %1097, %1073
  %1099 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1098
  %1100 = load i16, ptr %1099, align 2
  store i16 %1100, ptr %1094, align 1
  %1101 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1098, i32 1
  %1102 = load i8, ptr %1101, align 2
  %1103 = zext i8 %1102 to i32
  %1104 = load i32, ptr %944, align 4
  %1105 = add i32 %1104, %1103
  store i32 %1105, ptr %944, align 4
  %1106 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1098, i32 2
  %1107 = load i8, ptr %1106, align 1
  %1108 = zext i8 %1107 to i32
  %1109 = getelementptr i8, ptr %1094, i32 %1108
  %1110 = icmp ugt ptr %1109, %1072
  br i1 %1110, label %1111, label %1092

1111:                                             ; preds = %1092, %1070
  %1112 = phi i32 [ %1075, %1070 ], [ %1105, %1092 ]
  %1113 = phi ptr [ %1074, %1070 ], [ %1109, %1092 ]
  %1114 = icmp ult ptr %1113, %9
  br i1 %1114, label %1115, label %1140

1115:                                             ; preds = %1111
  %1116 = load i32, ptr %6, align 4
  %1117 = and i32 %1112, 31
  %1118 = shl i32 %1116, %1117
  %1119 = lshr i32 %1118, %1073
  %1120 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1119
  %1121 = load i8, ptr %1120, align 2
  store i8 %1121, ptr %1113, align 1
  %1122 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1119, i32 2
  %1123 = load i8, ptr %1122, align 1
  %1124 = icmp eq i8 %1123, 1
  br i1 %1124, label %1125, label %1131

1125:                                             ; preds = %1115
  %1126 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1119, i32 1
  %1127 = load i8, ptr %1126, align 2
  %1128 = zext i8 %1127 to i32
  %1129 = load i32, ptr %944, align 4
  %1130 = add i32 %1129, %1128
  br label %1140

1131:                                             ; preds = %1115
  %1132 = load i32, ptr %944, align 4
  %1133 = icmp ult i32 %1132, 32
  br i1 %1133, label %1134, label %1140

1134:                                             ; preds = %1131
  %1135 = getelementptr %struct.HUF_DEltX2, ptr %11, i32 %1119, i32 1
  %1136 = load i8, ptr %1135, align 2
  %1137 = zext i8 %1136 to i32
  %1138 = add nuw nsw i32 %1132, %1137
  %1139 = tail call i32 @llvm.umin.i32(i32 %1138, i32 32) #9
  br label %1140

1140:                                             ; preds = %1134, %1131, %1125, %1111
  %1141 = phi i32 [ %1112, %1111 ], [ %1132, %1131 ], [ %1139, %1134 ], [ %1130, %1125 ]
  %1142 = icmp eq ptr %509, %24
  %1143 = icmp eq i32 %570, 32
  %1144 = select i1 %1142, i1 %1143, i1 false
  %1145 = icmp eq ptr %695, %25
  %1146 = icmp eq i32 %756, 32
  %1147 = select i1 %1145, i1 %1146, i1 false
  %1148 = and i1 %1144, %1147
  %1149 = icmp eq ptr %881, %26
  %1150 = icmp eq i32 %942, 32
  %1151 = select i1 %1149, i1 %1150, i1 false
  %1152 = and i1 %1148, %1151
  %1153 = load ptr, ptr %1071, align 4
  %1154 = load ptr, ptr %943, align 4
  %1155 = icmp eq ptr %1153, %1154
  %1156 = icmp eq i32 %1141, 32
  %1157 = select i1 %1155, i1 %1156, i1 false
  %1158 = and i1 %1152, %1157
  %1159 = select i1 %1158, i32 %1, i32 -20
  br label %1160

1160:                                             ; preds = %1140, %365, %174, %162, %135, %127, %115, %88, %80, %68, %41, %36, %8
  %1161 = phi i32 [ %178, %174 ], [ -20, %8 ], [ -20, %365 ], [ %1159, %1140 ], [ -20, %68 ], [ -1, %41 ], [ -72, %36 ], [ -20, %115 ], [ -1, %88 ], [ -72, %80 ], [ -20, %162 ], [ -1, %135 ], [ -72, %127 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  br label %1162

1162:                                             ; preds = %1160, %5
  %1163 = phi i32 [ %1161, %1160 ], [ -20, %5 ]
  ret i32 %1163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X2_DCtx_wksp(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #9
  %9 = icmp ult i32 %8, -119
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ult i32 %8, %4
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %3, i32 %8
  %14 = sub i32 %4, %8
  %15 = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %13, i32 noundef %14, ptr noundef %0) #9
  br label %16

16:                                               ; preds = %12, %10, %7
  %17 = phi i32 [ %15, %12 ], [ %8, %7 ], [ -72, %10 ]
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X_usingDTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #5 {
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 65280
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %13

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X_usingDTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 65280
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %13

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @HUF_selectDecoder(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp ult i32 %1, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = shl i32 %1, 4
  %6 = udiv i32 %5, %0
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %6, %4 ], [ 15, %2 ]
  %9 = lshr i32 %0, 8
  %10 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.algo_time_t, ptr %10, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %9
  %15 = add i32 %14, %11
  %16 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %8, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %8, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %19, %9
  %21 = add i32 %20, %17
  %22 = lshr i32 %21, 3
  %23 = add i32 %22, %21
  %24 = icmp ult i32 %23, %15
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X_hufOnly_wksp(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %9
  %12 = icmp ult i32 %4, %2
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = shl i32 %4, 4
  %15 = udiv i32 %14, %2
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i32 [ %15, %13 ], [ 15, %11 ]
  %18 = lshr i32 %2, 8
  %19 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %17
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.algo_time_t, ptr %19, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, %18
  %24 = add i32 %23, %20
  %25 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %17, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %17, i32 1, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %28, %18
  %30 = add i32 %29, %26
  %31 = lshr i32 %30, 3
  %32 = add i32 %31, %30
  %33 = icmp ult i32 %32, %24
  br i1 %33, label %34, label %43

34:                                               ; preds = %16
  %35 = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #9
  %36 = icmp ult i32 %35, -119
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = icmp ult i32 %35, %4
  br i1 %38, label %39, label %52

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %3, i32 %35
  %41 = sub i32 %4, %35
  %42 = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %40, i32 noundef %41, ptr noundef %0) #9
  br label %52

43:                                               ; preds = %16
  %44 = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 0) #9
  %45 = icmp ult i32 %44, -119
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = icmp ult i32 %44, %4
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = getelementptr i8, ptr %3, i32 %44
  %50 = sub i32 %4, %44
  %51 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %49, i32 noundef %50, ptr noundef %0) #9
  br label %52

52:                                               ; preds = %48, %46, %43, %39, %37, %34, %9, %7
  %53 = phi i32 [ -70, %7 ], [ -20, %9 ], [ %42, %39 ], [ %35, %34 ], [ -72, %37 ], [ %51, %48 ], [ %44, %43 ], [ -72, %46 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X_DCtx_wksp(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %59, label %9

9:                                                ; preds = %7
  %10 = icmp ugt i32 %4, %2
  br i1 %10, label %59, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %4, %2
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %3, i32 %2, i1 false)
  br label %59

14:                                               ; preds = %11
  %15 = icmp eq i32 %4, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = load i8, ptr %3, align 1
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 %17, i32 %2, i1 false)
  br label %59

18:                                               ; preds = %14
  %19 = icmp ult i32 %4, %2
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = shl i32 %4, 4
  %22 = udiv i32 %21, %2
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %22, %20 ], [ 15, %18 ]
  %25 = lshr i32 %2, 8
  %26 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %24
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.algo_time_t, ptr %26, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, %25
  %31 = add i32 %30, %27
  %32 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %24, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %24, i32 1, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %25
  %37 = add i32 %36, %33
  %38 = lshr i32 %37, 3
  %39 = add i32 %38, %37
  %40 = icmp ult i32 %39, %31
  br i1 %40, label %41, label %50

41:                                               ; preds = %23
  %42 = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #9
  %43 = icmp ult i32 %42, -119
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = icmp ult i32 %42, %4
  br i1 %45, label %46, label %59

46:                                               ; preds = %44
  %47 = getelementptr i8, ptr %3, i32 %42
  %48 = sub i32 %4, %42
  %49 = tail call fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %47, i32 noundef %48, ptr noundef %0) #9
  br label %59

50:                                               ; preds = %23
  %51 = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 0) #9
  %52 = icmp ult i32 %51, -119
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = icmp ult i32 %51, %4
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = getelementptr i8, ptr %3, i32 %51
  %57 = sub i32 %4, %51
  %58 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %56, i32 noundef %57, ptr noundef %0) #9
  br label %59

59:                                               ; preds = %55, %53, %50, %46, %44, %41, %16, %13, %9, %7
  %60 = phi i32 [ %2, %13 ], [ %2, %16 ], [ -70, %7 ], [ -20, %9 ], [ %49, %46 ], [ %42, %41 ], [ -72, %44 ], [ %58, %55 ], [ %51, %50 ], [ -72, %53 ]
  ret i32 %60
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X_usingDTable_bmi2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #5 {
  %7 = load i32, ptr %4, align 4
  %8 = and i32 %7, 65280
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %14

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X1_DCtx_wksp_bmi2(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7)
  %10 = icmp ult i32 %9, -119
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp ult i32 %9, %4
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %3, i32 %9
  %15 = sub i32 %4, %9
  %16 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %14, i32 noundef %15, ptr noundef %0)
  br label %17

17:                                               ; preds = %13, %11, %8
  %18 = phi i32 [ %16, %13 ], [ %9, %8 ], [ -72, %11 ]
  ret i32 %18
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X_usingDTable_bmi2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
  %7 = load i32, ptr %4, align 4
  %8 = and i32 %7, 65280
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %14

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X_hufOnly_wksp_bmi2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %10
  %13 = icmp ult i32 %4, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = shl i32 %4, 4
  %16 = udiv i32 %15, %2
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %16, %14 ], [ 15, %12 ]
  %19 = lshr i32 %2, 8
  %20 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %18
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.algo_time_t, ptr %20, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %19
  %25 = add i32 %24, %21
  %26 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %18, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %18, i32 1, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, %19
  %31 = add i32 %30, %27
  %32 = lshr i32 %31, 3
  %33 = add i32 %32, %31
  %34 = icmp ult i32 %33, %25
  br i1 %34, label %35, label %44

35:                                               ; preds = %17
  %36 = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #9
  %37 = icmp ult i32 %36, -119
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = icmp ult i32 %36, %4
  br i1 %39, label %40, label %53

40:                                               ; preds = %38
  %41 = getelementptr i8, ptr %3, i32 %36
  %42 = sub i32 %4, %36
  %43 = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %41, i32 noundef %42, ptr noundef %0) #9
  br label %53

44:                                               ; preds = %17
  %45 = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #9
  %46 = icmp ult i32 %45, -119
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = icmp ult i32 %45, %4
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = getelementptr i8, ptr %3, i32 %45
  %51 = sub i32 %4, %45
  %52 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %1, i32 noundef %2, ptr noundef %50, i32 noundef %51, ptr noundef %0) #9
  br label %53

53:                                               ; preds = %49, %47, %44, %40, %38, %35, %10, %8
  %54 = phi i32 [ -70, %8 ], [ -20, %10 ], [ %43, %40 ], [ %36, %35 ], [ -72, %38 ], [ %52, %49 ], [ %45, %44 ], [ -72, %47 ]
  ret i32 %54
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @BIT_initDStream(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %0, i8 0, i32 20, i1 false)
  br label %58

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 3
  store ptr %1, ptr %7, align 4
  %8 = getelementptr i8, ptr %1, i32 4
  %9 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 4
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt i32 %2, 3
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %1, i32 %2
  %13 = getelementptr i8, ptr %12, i32 -4
  %14 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = load i32, ptr %13, align 1
  store i32 %15, ptr %0, align 4
  %16 = add i32 %2, -1
  %17 = getelementptr i8, ptr %1, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %11
  %21 = zext i8 %18 to i32
  %22 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 true) #9, !range !8
  %23 = add nsw i32 %22, -23
  %24 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  br label %58

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 1
  store i32 0, ptr %26, align 4
  br label %58

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 2
  store ptr %1, ptr %28, align 4
  %29 = load i8, ptr %1, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, ptr %0, align 4
  switch i32 %2, label %44 [
    i32 2, label %37
    i32 3, label %31
  ]

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %1, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or i32 %35, %30
  store i32 %36, ptr %0, align 4
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i32 [ %30, %27 ], [ %36, %31 ]
  %39 = getelementptr i8, ptr %1, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = add nsw i32 %42, %38
  store i32 %43, ptr %0, align 4
  br label %44

44:                                               ; preds = %37, %27
  %45 = add nsw i32 %2, -1
  %46 = getelementptr i8, ptr %1, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 1
  store i32 0, ptr %50, align 4
  br label %58

51:                                               ; preds = %44
  %52 = zext i8 %47 to i32
  %53 = tail call i32 @llvm.ctlz.i32(i32 %52, i1 true) #9, !range !8
  %54 = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 1
  %55 = mul nsw i32 %2, -8
  %56 = add nsw i32 %55, 9
  %57 = add nsw i32 %56, %53
  store i32 %57, ptr %54, align 4
  br label %58

58:                                               ; preds = %51, %49, %25, %20, %5
  %59 = phi i32 [ -72, %5 ], [ -1, %25 ], [ -20, %49 ], [ %2, %20 ], [ %2, %51 ]
  ret i32 %59
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
