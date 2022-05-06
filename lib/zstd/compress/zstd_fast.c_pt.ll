; ModuleID = '/llk/IR/lib/zstd/compress/zstd_fast.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_fast.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.ZSTD_matchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, ptr, ptr, ptr, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32 }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.seqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.seqDef_s = type { i32, i16, i16 }

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ZSTD_fillHashTable(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = getelementptr i8, ptr %1, i32 -6
  %14 = getelementptr i8, ptr %12, i32 3
  %15 = icmp ult ptr %14, %13
  br i1 %15, label %16, label %125

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = ptrtoint ptr %9 to i32
  %20 = sub i32 64, %18
  %21 = zext i32 %20 to i64
  %22 = sub i32 32, %18
  %23 = icmp eq i32 %2, 0
  br label %24

24:                                               ; preds = %122, %16
  %25 = phi ptr [ %14, %16 ], [ %123, %122 ]
  %26 = phi ptr [ %12, %16 ], [ %25, %122 ]
  %27 = ptrtoint ptr %26 to i32
  %28 = sub i32 %27, %19
  switch i32 %7, label %29 [
    i32 8, label %48
    i32 5, label %33
    i32 6, label %38
    i32 7, label %43
  ]

29:                                               ; preds = %24
  %30 = load i32, ptr %26, align 1
  %31 = mul i32 %30, -1640531535
  %32 = lshr i32 %31, %22
  br label %53

33:                                               ; preds = %24
  %34 = load i64, ptr %26, align 1
  %35 = mul i64 %34, -3523014627271114752
  %36 = lshr i64 %35, %21
  %37 = trunc i64 %36 to i32
  br label %53

38:                                               ; preds = %24
  %39 = load i64, ptr %26, align 1
  %40 = mul i64 %39, -3523014627193847808
  %41 = lshr i64 %40, %21
  %42 = trunc i64 %41 to i32
  br label %53

43:                                               ; preds = %24
  %44 = load i64, ptr %26, align 1
  %45 = mul i64 %44, -3523014627193167104
  %46 = lshr i64 %45, %21
  %47 = trunc i64 %46 to i32
  br label %53

48:                                               ; preds = %24
  %49 = load i64, ptr %26, align 1
  %50 = mul i64 %49, -3523014627327384477
  %51 = lshr i64 %50, %21
  %52 = trunc i64 %51 to i32
  br label %53

53:                                               ; preds = %48, %43, %38, %33, %29
  %54 = phi i32 [ %32, %29 ], [ %47, %43 ], [ %42, %38 ], [ %37, %33 ], [ %52, %48 ]
  %55 = getelementptr i32, ptr %5, i32 %54
  store i32 %28, ptr %55, align 4
  br i1 %23, label %122, label %56

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %26, i32 1
  switch i32 %7, label %58 [
    i32 8, label %77
    i32 5, label %62
    i32 6, label %67
    i32 7, label %72
  ]

58:                                               ; preds = %56
  %59 = load i32, ptr %57, align 1
  %60 = mul i32 %59, -1640531535
  %61 = lshr i32 %60, %22
  br label %82

62:                                               ; preds = %56
  %63 = load i64, ptr %57, align 1
  %64 = mul i64 %63, -3523014627271114752
  %65 = lshr i64 %64, %21
  %66 = trunc i64 %65 to i32
  br label %82

67:                                               ; preds = %56
  %68 = load i64, ptr %57, align 1
  %69 = mul i64 %68, -3523014627193847808
  %70 = lshr i64 %69, %21
  %71 = trunc i64 %70 to i32
  br label %82

72:                                               ; preds = %56
  %73 = load i64, ptr %57, align 1
  %74 = mul i64 %73, -3523014627193167104
  %75 = lshr i64 %74, %21
  %76 = trunc i64 %75 to i32
  br label %82

77:                                               ; preds = %56
  %78 = load i64, ptr %57, align 1
  %79 = mul i64 %78, -3523014627327384477
  %80 = lshr i64 %79, %21
  %81 = trunc i64 %80 to i32
  br label %82

82:                                               ; preds = %77, %72, %67, %62, %58
  %83 = phi i32 [ %61, %58 ], [ %76, %72 ], [ %71, %67 ], [ %66, %62 ], [ %81, %77 ]
  %84 = getelementptr i32, ptr %5, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = add i32 %28, 1
  store i32 %88, ptr %84, align 4
  br label %89

89:                                               ; preds = %87, %82
  %90 = getelementptr i8, ptr %26, i32 2
  switch i32 %7, label %111 [
    i32 8, label %106
    i32 5, label %101
    i32 6, label %96
    i32 7, label %91
  ]

91:                                               ; preds = %89
  %92 = load i64, ptr %90, align 1
  %93 = mul i64 %92, -3523014627193167104
  %94 = lshr i64 %93, %21
  %95 = trunc i64 %94 to i32
  br label %115

96:                                               ; preds = %89
  %97 = load i64, ptr %90, align 1
  %98 = mul i64 %97, -3523014627193847808
  %99 = lshr i64 %98, %21
  %100 = trunc i64 %99 to i32
  br label %115

101:                                              ; preds = %89
  %102 = load i64, ptr %90, align 1
  %103 = mul i64 %102, -3523014627271114752
  %104 = lshr i64 %103, %21
  %105 = trunc i64 %104 to i32
  br label %115

106:                                              ; preds = %89
  %107 = load i64, ptr %90, align 1
  %108 = mul i64 %107, -3523014627327384477
  %109 = lshr i64 %108, %21
  %110 = trunc i64 %109 to i32
  br label %115

111:                                              ; preds = %89
  %112 = load i32, ptr %90, align 1
  %113 = mul i32 %112, -1640531535
  %114 = lshr i32 %113, %22
  br label %115

115:                                              ; preds = %111, %106, %101, %96, %91
  %116 = phi i32 [ %114, %111 ], [ %95, %91 ], [ %100, %96 ], [ %105, %101 ], [ %110, %106 ]
  %117 = getelementptr i32, ptr %5, i32 %116
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = add i32 %28, 2
  store i32 %121, ptr %117, align 4
  br label %122

122:                                              ; preds = %120, %115, %53
  %123 = getelementptr i8, ptr %25, i32 3
  %124 = icmp ult ptr %123, %13
  br i1 %124, label %24, label %125

125:                                              ; preds = %122, %3
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_fast(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 4
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 7, label %1355
    i32 5, label %451
    i32 6, label %903
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %10 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %3 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = add i32 %16, %4
  %18 = load i32, ptr %9, align 4
  %19 = shl nuw i32 1, %18
  %20 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %17, %21
  %23 = icmp ugt i32 %22, %19
  %24 = sub i32 %17, %19
  %25 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i1 %23, i1 false
  %29 = select i1 %28, i32 %24, i32 %21
  %30 = getelementptr i8, ptr %13, i32 %29
  %31 = getelementptr i8, ptr %3, i32 %4
  %32 = getelementptr i8, ptr %31, i32 -8
  %33 = load i32, ptr %2, align 4
  %34 = getelementptr i32, ptr %2, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq ptr %30, %3
  %37 = zext i1 %36 to i32
  %38 = getelementptr i8, ptr %3, i32 %37
  %39 = getelementptr i8, ptr %38, i32 1
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %40, %15
  %42 = sub i32 %41, %21
  %43 = icmp ugt i32 %42, %19
  %44 = sub i32 %41, %19
  %45 = select i1 %27, i1 %43, i1 false
  %46 = select i1 %45, i32 %44, i32 %21
  %47 = sub i32 %41, %46
  %48 = icmp ugt i32 %35, %47
  %49 = select i1 %48, i32 0, i32 %35
  %50 = icmp ugt i32 %33, %47
  %51 = select i1 %50, i32 0, i32 %33
  %52 = icmp ult ptr %39, %32
  br i1 %52, label %53, label %441

53:                                               ; preds = %8
  %54 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 32, %59
  %61 = add i32 %55, 1
  %62 = add i32 %61, %57
  %63 = getelementptr i8, ptr %31, i32 -3
  %64 = getelementptr i8, ptr %31, i32 -1
  %65 = getelementptr i8, ptr %31, i32 -32
  %66 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %67 = ptrtoint ptr %65 to i32
  %68 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %69 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %70 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %71 = getelementptr i8, ptr %13, i32 2
  br label %72

72:                                               ; preds = %432, %53
  %73 = phi ptr [ %38, %53 ], [ %437, %432 ]
  %74 = phi ptr [ %39, %53 ], [ %436, %432 ]
  %75 = phi ptr [ %3, %53 ], [ %435, %432 ]
  %76 = phi i32 [ %49, %53 ], [ %434, %432 ]
  %77 = phi i32 [ %51, %53 ], [ %433, %432 ]
  %78 = getelementptr i8, ptr %73, i32 2
  %79 = load i32, ptr %73, align 1
  %80 = mul i32 %79, -1640531535
  %81 = lshr i32 %80, %60
  %82 = load i32, ptr %74, align 1
  %83 = mul i32 %82, -1640531535
  %84 = lshr i32 %83, %60
  %85 = ptrtoint ptr %73 to i32
  %86 = sub i32 %85, %15
  %87 = ptrtoint ptr %74 to i32
  %88 = sub i32 %87, %15
  %89 = getelementptr i32, ptr %11, i32 %81
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i32, ptr %11, i32 %84
  %92 = load i32, ptr %91, align 4
  %93 = sub i32 0, %77
  %94 = getelementptr i8, ptr %78, i32 %93
  %95 = getelementptr i8, ptr %13, i32 %90
  %96 = getelementptr i8, ptr %13, i32 %92
  store i32 %86, ptr %89, align 4
  store i32 %88, ptr %91, align 4
  %97 = icmp ne i32 %77, 0
  %98 = load i32, ptr %94, align 1
  %99 = load i32, ptr %78, align 1
  %100 = icmp eq i32 %98, %99
  %101 = and i1 %97, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %72
  %103 = getelementptr i8, ptr %73, i32 1
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr i8, ptr %94, i32 -1
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %104, %106
  %108 = sext i1 %107 to i32
  %109 = getelementptr i8, ptr %78, i32 %108
  %110 = getelementptr i8, ptr %94, i32 %108
  %111 = select i1 %107, i32 5, i32 4
  br label %153

112:                                              ; preds = %72
  %113 = icmp ugt i32 %90, %29
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = load i32, ptr %95, align 1
  %116 = icmp eq i32 %115, %79
  br i1 %116, label %129, label %117

117:                                              ; preds = %114, %112
  %118 = icmp ugt i32 %92, %29
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i32, ptr %96, align 1
  %121 = icmp eq i32 %120, %82
  br i1 %121, label %129, label %122

122:                                              ; preds = %119, %117
  %123 = ptrtoint ptr %75 to i32
  %124 = sub i32 %85, %123
  %125 = lshr i32 %124, 7
  %126 = add i32 %62, %125
  %127 = getelementptr i8, ptr %73, i32 %126
  %128 = getelementptr i8, ptr %74, i32 %126
  br label %432

129:                                              ; preds = %119, %114
  %130 = phi i32 [ %87, %119 ], [ %85, %114 ]
  %131 = phi ptr [ %74, %119 ], [ %73, %114 ]
  %132 = phi ptr [ %96, %119 ], [ %95, %114 ]
  %133 = ptrtoint ptr %132 to i32
  %134 = sub i32 %130, %133
  %135 = add i32 %134, 2
  %136 = icmp ugt ptr %131, %75
  %137 = icmp ugt ptr %132, %30
  %138 = and i1 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %148, %129
  %140 = phi ptr [ %145, %148 ], [ %132, %129 ]
  %141 = phi ptr [ %143, %148 ], [ %131, %129 ]
  %142 = phi i32 [ %149, %148 ], [ 4, %129 ]
  %143 = getelementptr i8, ptr %141, i32 -1
  %144 = load i8, ptr %143, align 1
  %145 = getelementptr i8, ptr %140, i32 -1
  %146 = load i8, ptr %145, align 1
  %147 = icmp eq i8 %144, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %139
  %149 = add i32 %142, 1
  %150 = icmp ugt ptr %143, %75
  %151 = icmp ugt ptr %145, %30
  %152 = and i1 %151, %150
  br i1 %152, label %139, label %153

153:                                              ; preds = %148, %139, %129, %102
  %154 = phi i32 [ %77, %102 ], [ %134, %129 ], [ %134, %139 ], [ %134, %148 ]
  %155 = phi i32 [ %76, %102 ], [ %77, %129 ], [ %77, %139 ], [ %77, %148 ]
  %156 = phi i32 [ %111, %102 ], [ 4, %129 ], [ %149, %148 ], [ %142, %139 ]
  %157 = phi ptr [ %109, %102 ], [ %131, %129 ], [ %143, %148 ], [ %141, %139 ]
  %158 = phi ptr [ %110, %102 ], [ %132, %129 ], [ %145, %148 ], [ %140, %139 ]
  %159 = phi i32 [ 0, %102 ], [ %135, %129 ], [ %135, %139 ], [ %135, %148 ]
  %160 = getelementptr i8, ptr %157, i32 %156
  %161 = getelementptr i8, ptr %158, i32 %156
  %162 = icmp ugt ptr %63, %160
  br i1 %162, label %163, label %189

163:                                              ; preds = %153
  %164 = load i32, ptr %161, align 1
  %165 = load i32, ptr %160, align 1
  %166 = xor i32 %165, %164
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = tail call i32 @llvm.cttz.i32(i32 %166, i1 true) #4, !range !8
  %170 = lshr i32 %169, 3
  br label %215

171:                                              ; preds = %177, %163
  %172 = phi ptr [ %175, %177 ], [ %160, %163 ]
  %173 = phi ptr [ %174, %177 ], [ %161, %163 ]
  %174 = getelementptr i8, ptr %173, i32 4
  %175 = getelementptr i8, ptr %172, i32 4
  %176 = icmp ult ptr %175, %63
  br i1 %176, label %177, label %189

177:                                              ; preds = %171
  %178 = load i32, ptr %174, align 1
  %179 = load i32, ptr %175, align 1
  %180 = xor i32 %179, %178
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %171, label %182

182:                                              ; preds = %177
  %183 = tail call i32 @llvm.cttz.i32(i32 %180, i1 true) #4, !range !8
  %184 = lshr i32 %183, 3
  %185 = getelementptr i8, ptr %175, i32 %184
  %186 = ptrtoint ptr %185 to i32
  %187 = ptrtoint ptr %160 to i32
  %188 = sub i32 %186, %187
  br label %215

189:                                              ; preds = %171, %153
  %190 = phi ptr [ %160, %153 ], [ %175, %171 ]
  %191 = phi ptr [ %161, %153 ], [ %174, %171 ]
  %192 = icmp ult ptr %190, %64
  br i1 %192, label %193, label %200

193:                                              ; preds = %189
  %194 = load i16, ptr %191, align 1
  %195 = load i16, ptr %190, align 1
  %196 = icmp eq i16 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = getelementptr i8, ptr %190, i32 2
  %199 = getelementptr i8, ptr %191, i32 2
  br label %200

200:                                              ; preds = %197, %193, %189
  %201 = phi ptr [ %198, %197 ], [ %190, %193 ], [ %190, %189 ]
  %202 = phi ptr [ %199, %197 ], [ %191, %193 ], [ %191, %189 ]
  %203 = icmp ult ptr %201, %31
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = load i8, ptr %202, align 1
  %206 = load i8, ptr %201, align 1
  %207 = icmp eq i8 %205, %206
  %208 = zext i1 %207 to i32
  %209 = getelementptr i8, ptr %201, i32 %208
  br label %210

210:                                              ; preds = %204, %200
  %211 = phi ptr [ %201, %200 ], [ %209, %204 ]
  %212 = ptrtoint ptr %211 to i32
  %213 = ptrtoint ptr %160 to i32
  %214 = sub i32 %212, %213
  br label %215

215:                                              ; preds = %210, %182, %168
  %216 = phi i32 [ %214, %210 ], [ %170, %168 ], [ %188, %182 ]
  %217 = add i32 %216, %156
  %218 = ptrtoint ptr %157 to i32
  %219 = ptrtoint ptr %75 to i32
  %220 = sub i32 %218, %219
  %221 = add i32 %217, -3
  %222 = getelementptr i8, ptr %75, i32 %220
  %223 = icmp ugt ptr %222, %65
  %224 = load ptr, ptr %66, align 4
  br i1 %223, label %246, label %225

225:                                              ; preds = %215
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %224, ptr noundef align 1 dereferenceable(16) %75, i32 16, i1 false) #4
  %226 = icmp ugt i32 %220, 16
  %227 = load ptr, ptr %66, align 4
  br i1 %226, label %230, label %228

228:                                              ; preds = %225
  %229 = getelementptr i8, ptr %227, i32 %220
  store ptr %229, ptr %66, align 4
  br label %289

230:                                              ; preds = %225
  %231 = getelementptr i8, ptr %227, i32 16
  %232 = getelementptr i8, ptr %75, i32 16
  %233 = add i32 %220, -16
  %234 = getelementptr i8, ptr %227, i32 %220
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %231, ptr noundef align 1 dereferenceable(16) %232, i32 16, i1 false) #4
  %235 = icmp slt i32 %233, 17
  br i1 %235, label %278, label %236

236:                                              ; preds = %230
  %237 = getelementptr i8, ptr %227, i32 32
  br label %238

238:                                              ; preds = %238, %236
  %239 = phi ptr [ %232, %236 ], [ %243, %238 ]
  %240 = phi ptr [ %237, %236 ], [ %244, %238 ]
  %241 = getelementptr i8, ptr %239, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %240, ptr noundef align 1 dereferenceable(16) %241, i32 16, i1 false) #4
  %242 = getelementptr i8, ptr %240, i32 16
  %243 = getelementptr i8, ptr %239, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %242, ptr noundef align 1 dereferenceable(16) %243, i32 16, i1 false) #4
  %244 = getelementptr i8, ptr %240, i32 32
  %245 = icmp ult ptr %244, %234
  br i1 %245, label %238, label %278

246:                                              ; preds = %215
  %247 = ptrtoint ptr %222 to i32
  %248 = icmp ult ptr %65, %75
  br i1 %248, label %263, label %249

249:                                              ; preds = %246
  %250 = sub i32 %67, %219
  %251 = getelementptr i8, ptr %224, i32 %250
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %224, ptr noundef align 1 dereferenceable(16) %75, i32 16, i1 false) #4
  %252 = icmp slt i32 %250, 17
  br i1 %252, label %263, label %253

253:                                              ; preds = %249
  %254 = getelementptr i8, ptr %224, i32 16
  br label %255

255:                                              ; preds = %255, %253
  %256 = phi ptr [ %75, %253 ], [ %260, %255 ]
  %257 = phi ptr [ %254, %253 ], [ %261, %255 ]
  %258 = getelementptr i8, ptr %256, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %257, ptr noundef align 1 dereferenceable(16) %258, i32 16, i1 false) #4
  %259 = getelementptr i8, ptr %257, i32 16
  %260 = getelementptr i8, ptr %256, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %259, ptr noundef align 1 dereferenceable(16) %260, i32 16, i1 false) #4
  %261 = getelementptr i8, ptr %257, i32 32
  %262 = icmp ult ptr %261, %251
  br i1 %262, label %255, label %263

263:                                              ; preds = %255, %249, %246
  %264 = phi ptr [ %65, %249 ], [ %75, %246 ], [ %65, %255 ]
  %265 = phi ptr [ %251, %249 ], [ %224, %246 ], [ %251, %255 ]
  %266 = icmp ult ptr %264, %222
  br i1 %266, label %267, label %278

267:                                              ; preds = %263
  %268 = ptrtoint ptr %264 to i32
  %269 = sub i32 %247, %268
  %270 = getelementptr i8, ptr %264, i32 %269
  br label %271

271:                                              ; preds = %271, %267
  %272 = phi ptr [ %276, %271 ], [ %265, %267 ]
  %273 = phi ptr [ %274, %271 ], [ %264, %267 ]
  %274 = getelementptr i8, ptr %273, i32 1
  %275 = load i8, ptr %273, align 1
  %276 = getelementptr i8, ptr %272, i32 1
  store i8 %275, ptr %272, align 1
  %277 = icmp eq ptr %274, %270
  br i1 %277, label %278, label %271

278:                                              ; preds = %271, %263, %238, %230
  %279 = load ptr, ptr %66, align 4
  %280 = getelementptr i8, ptr %279, i32 %220
  store ptr %280, ptr %66, align 4
  %281 = icmp ugt i32 %220, 65535
  br i1 %281, label %282, label %289

282:                                              ; preds = %278
  store i32 1, ptr %68, align 4
  %283 = load ptr, ptr %69, align 4
  %284 = load ptr, ptr %1, align 4
  %285 = ptrtoint ptr %283 to i32
  %286 = ptrtoint ptr %284 to i32
  %287 = sub i32 %285, %286
  %288 = ashr exact i32 %287, 3
  store i32 %288, ptr %70, align 4
  br label %289

289:                                              ; preds = %282, %278, %228
  %290 = trunc i32 %220 to i16
  %291 = load ptr, ptr %69, align 4
  %292 = getelementptr inbounds %struct.seqDef_s, ptr %291, i32 0, i32 1
  store i16 %290, ptr %292, align 4
  %293 = add i32 %159, 1
  %294 = load ptr, ptr %69, align 4
  store i32 %293, ptr %294, align 4
  %295 = icmp ugt i32 %221, 65535
  br i1 %295, label %298, label %296

296:                                              ; preds = %289
  %297 = load ptr, ptr %69, align 4
  br label %305

298:                                              ; preds = %289
  store i32 2, ptr %68, align 4
  %299 = load ptr, ptr %69, align 4
  %300 = load ptr, ptr %1, align 4
  %301 = ptrtoint ptr %299 to i32
  %302 = ptrtoint ptr %300 to i32
  %303 = sub i32 %301, %302
  %304 = ashr exact i32 %303, 3
  store i32 %304, ptr %70, align 4
  br label %305

305:                                              ; preds = %298, %296
  %306 = phi ptr [ %297, %296 ], [ %299, %298 ]
  %307 = trunc i32 %221 to i16
  %308 = getelementptr inbounds %struct.seqDef_s, ptr %306, i32 0, i32 2
  store i16 %307, ptr %308, align 2
  %309 = load ptr, ptr %69, align 4
  %310 = getelementptr %struct.seqDef_s, ptr %309, i32 1
  store ptr %310, ptr %69, align 4
  %311 = getelementptr i8, ptr %157, i32 %217
  %312 = icmp ugt ptr %311, %32
  br i1 %312, label %427, label %313

313:                                              ; preds = %305
  %314 = add i32 %86, 2
  %315 = getelementptr i8, ptr %71, i32 %86
  %316 = load i32, ptr %315, align 1
  %317 = mul i32 %316, -1640531535
  %318 = lshr i32 %317, %60
  %319 = getelementptr i32, ptr %11, i32 %318
  store i32 %314, ptr %319, align 4
  %320 = getelementptr i8, ptr %311, i32 -2
  %321 = load i32, ptr %320, align 1
  %322 = mul i32 %321, -1640531535
  %323 = lshr i32 %322, %60
  %324 = ptrtoint ptr %320 to i32
  %325 = sub i32 %324, %15
  %326 = getelementptr i32, ptr %11, i32 %323
  store i32 %325, ptr %326, align 4
  %327 = icmp eq i32 %155, 0
  br i1 %327, label %427, label %328

328:                                              ; preds = %420, %313
  %329 = phi ptr [ %401, %420 ], [ %311, %313 ]
  %330 = phi i32 [ %331, %420 ], [ %155, %313 ]
  %331 = phi i32 [ %330, %420 ], [ %154, %313 ]
  %332 = load i32, ptr %329, align 1
  %333 = sub i32 0, %330
  %334 = getelementptr i8, ptr %329, i32 %333
  %335 = load i32, ptr %334, align 1
  %336 = icmp eq i32 %332, %335
  br i1 %336, label %337, label %427

337:                                              ; preds = %328
  %338 = getelementptr i8, ptr %329, i32 4
  %339 = getelementptr i8, ptr %338, i32 %333
  %340 = icmp ugt ptr %63, %338
  br i1 %340, label %341, label %367

341:                                              ; preds = %337
  %342 = load i32, ptr %339, align 1
  %343 = load i32, ptr %338, align 1
  %344 = xor i32 %343, %342
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %341
  %347 = tail call i32 @llvm.cttz.i32(i32 %344, i1 true) #4, !range !8
  %348 = lshr i32 %347, 3
  br label %393

349:                                              ; preds = %355, %341
  %350 = phi ptr [ %353, %355 ], [ %338, %341 ]
  %351 = phi ptr [ %352, %355 ], [ %339, %341 ]
  %352 = getelementptr i8, ptr %351, i32 4
  %353 = getelementptr i8, ptr %350, i32 4
  %354 = icmp ult ptr %353, %63
  br i1 %354, label %355, label %367

355:                                              ; preds = %349
  %356 = load i32, ptr %352, align 1
  %357 = load i32, ptr %353, align 1
  %358 = xor i32 %357, %356
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %349, label %360

360:                                              ; preds = %355
  %361 = tail call i32 @llvm.cttz.i32(i32 %358, i1 true) #4, !range !8
  %362 = lshr i32 %361, 3
  %363 = getelementptr i8, ptr %353, i32 %362
  %364 = ptrtoint ptr %363 to i32
  %365 = ptrtoint ptr %338 to i32
  %366 = sub i32 %364, %365
  br label %393

367:                                              ; preds = %349, %337
  %368 = phi ptr [ %338, %337 ], [ %353, %349 ]
  %369 = phi ptr [ %339, %337 ], [ %352, %349 ]
  %370 = icmp ult ptr %368, %64
  br i1 %370, label %371, label %378

371:                                              ; preds = %367
  %372 = load i16, ptr %369, align 1
  %373 = load i16, ptr %368, align 1
  %374 = icmp eq i16 %372, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %371
  %376 = getelementptr i8, ptr %368, i32 2
  %377 = getelementptr i8, ptr %369, i32 2
  br label %378

378:                                              ; preds = %375, %371, %367
  %379 = phi ptr [ %376, %375 ], [ %368, %371 ], [ %368, %367 ]
  %380 = phi ptr [ %377, %375 ], [ %369, %371 ], [ %369, %367 ]
  %381 = icmp ult ptr %379, %31
  br i1 %381, label %382, label %388

382:                                              ; preds = %378
  %383 = load i8, ptr %380, align 1
  %384 = load i8, ptr %379, align 1
  %385 = icmp eq i8 %383, %384
  %386 = zext i1 %385 to i32
  %387 = getelementptr i8, ptr %379, i32 %386
  br label %388

388:                                              ; preds = %382, %378
  %389 = phi ptr [ %379, %378 ], [ %387, %382 ]
  %390 = ptrtoint ptr %389 to i32
  %391 = ptrtoint ptr %338 to i32
  %392 = sub i32 %390, %391
  br label %393

393:                                              ; preds = %388, %360, %346
  %394 = phi i32 [ %392, %388 ], [ %348, %346 ], [ %366, %360 ]
  %395 = add i32 %394, 4
  %396 = ptrtoint ptr %329 to i32
  %397 = sub i32 %396, %15
  %398 = mul i32 %332, -1640531535
  %399 = lshr i32 %398, %60
  %400 = getelementptr i32, ptr %11, i32 %399
  store i32 %397, ptr %400, align 4
  %401 = getelementptr i8, ptr %329, i32 %395
  %402 = add i32 %394, 1
  %403 = icmp ugt ptr %329, %65
  br i1 %403, label %406, label %404

404:                                              ; preds = %393
  %405 = load ptr, ptr %66, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %405, ptr noundef align 1 dereferenceable(16) %329, i32 16, i1 false) #4
  br label %406

406:                                              ; preds = %404, %393
  %407 = load ptr, ptr %69, align 4
  %408 = getelementptr inbounds %struct.seqDef_s, ptr %407, i32 0, i32 1
  store i16 0, ptr %408, align 4
  %409 = load ptr, ptr %69, align 4
  store i32 1, ptr %409, align 4
  %410 = icmp ugt i32 %402, 65535
  br i1 %410, label %413, label %411

411:                                              ; preds = %406
  %412 = load ptr, ptr %69, align 4
  br label %420

413:                                              ; preds = %406
  store i32 2, ptr %68, align 4
  %414 = load ptr, ptr %69, align 4
  %415 = load ptr, ptr %1, align 4
  %416 = ptrtoint ptr %414 to i32
  %417 = ptrtoint ptr %415 to i32
  %418 = sub i32 %416, %417
  %419 = ashr exact i32 %418, 3
  store i32 %419, ptr %70, align 4
  br label %420

420:                                              ; preds = %413, %411
  %421 = phi ptr [ %412, %411 ], [ %414, %413 ]
  %422 = trunc i32 %402 to i16
  %423 = getelementptr inbounds %struct.seqDef_s, ptr %421, i32 0, i32 2
  store i16 %422, ptr %423, align 2
  %424 = load ptr, ptr %69, align 4
  %425 = getelementptr %struct.seqDef_s, ptr %424, i32 1
  store ptr %425, ptr %69, align 4
  %426 = icmp ugt ptr %401, %32
  br i1 %426, label %427, label %328

427:                                              ; preds = %420, %328, %313, %305
  %428 = phi i32 [ %154, %313 ], [ %154, %305 ], [ %330, %420 ], [ %331, %328 ]
  %429 = phi i32 [ 0, %313 ], [ %155, %305 ], [ %331, %420 ], [ %330, %328 ]
  %430 = phi ptr [ %311, %313 ], [ %311, %305 ], [ %401, %420 ], [ %329, %328 ]
  %431 = getelementptr i8, ptr %430, i32 1
  br label %432

432:                                              ; preds = %427, %122
  %433 = phi i32 [ %428, %427 ], [ %77, %122 ]
  %434 = phi i32 [ %429, %427 ], [ %76, %122 ]
  %435 = phi ptr [ %430, %427 ], [ %75, %122 ]
  %436 = phi ptr [ %431, %427 ], [ %128, %122 ]
  %437 = phi ptr [ %430, %427 ], [ %127, %122 ]
  %438 = icmp ult ptr %436, %32
  br i1 %438, label %72, label %439

439:                                              ; preds = %432
  %440 = ptrtoint ptr %435 to i32
  br label %441

441:                                              ; preds = %439, %8
  %442 = phi i32 [ %440, %439 ], [ %14, %8 ]
  %443 = phi i32 [ %433, %439 ], [ %51, %8 ]
  %444 = phi i32 [ %434, %439 ], [ %49, %8 ]
  %445 = select i1 %48, i32 %35, i32 0
  %446 = select i1 %50, i32 %33, i32 %445
  %447 = icmp eq i32 %443, 0
  %448 = select i1 %447, i32 %446, i32 %443
  store i32 %448, ptr %2, align 4
  %449 = icmp eq i32 %444, 0
  %450 = select i1 %449, i32 %446, i32 %444
  store i32 %450, ptr %34, align 4
  br label %1807

451:                                              ; preds = %5
  %452 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %453 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %454 = load ptr, ptr %453, align 4
  %455 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %456 = load ptr, ptr %455, align 4
  %457 = ptrtoint ptr %3 to i32
  %458 = ptrtoint ptr %456 to i32
  %459 = sub i32 %457, %458
  %460 = add i32 %459, %4
  %461 = load i32, ptr %452, align 4
  %462 = shl nuw i32 1, %461
  %463 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %464 = load i32, ptr %463, align 4
  %465 = sub i32 %460, %464
  %466 = icmp ugt i32 %465, %462
  %467 = sub i32 %460, %462
  %468 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %469 = load i32, ptr %468, align 4
  %470 = icmp eq i32 %469, 0
  %471 = select i1 %470, i1 %466, i1 false
  %472 = select i1 %471, i32 %467, i32 %464
  %473 = getelementptr i8, ptr %456, i32 %472
  %474 = getelementptr i8, ptr %3, i32 %4
  %475 = getelementptr i8, ptr %474, i32 -8
  %476 = load i32, ptr %2, align 4
  %477 = getelementptr i32, ptr %2, i32 1
  %478 = load i32, ptr %477, align 4
  %479 = icmp eq ptr %473, %3
  %480 = zext i1 %479 to i32
  %481 = getelementptr i8, ptr %3, i32 %480
  %482 = getelementptr i8, ptr %481, i32 1
  %483 = ptrtoint ptr %481 to i32
  %484 = sub i32 %483, %458
  %485 = sub i32 %484, %464
  %486 = icmp ugt i32 %485, %462
  %487 = sub i32 %484, %462
  %488 = select i1 %470, i1 %486, i1 false
  %489 = select i1 %488, i32 %487, i32 %464
  %490 = sub i32 %484, %489
  %491 = icmp ugt i32 %478, %490
  %492 = select i1 %491, i32 0, i32 %478
  %493 = icmp ugt i32 %476, %490
  %494 = select i1 %493, i32 0, i32 %476
  %495 = icmp ult ptr %482, %475
  br i1 %495, label %496, label %893

496:                                              ; preds = %451
  %497 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 5
  %498 = load i32, ptr %497, align 4
  %499 = icmp eq i32 %498, 0
  %500 = zext i1 %499 to i32
  %501 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %502 = load i32, ptr %501, align 4
  %503 = sub i32 64, %502
  %504 = zext i32 %503 to i64
  %505 = add i32 %498, 1
  %506 = add i32 %505, %500
  %507 = getelementptr i8, ptr %474, i32 -3
  %508 = getelementptr i8, ptr %474, i32 -1
  %509 = getelementptr i8, ptr %474, i32 -32
  %510 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %511 = ptrtoint ptr %509 to i32
  %512 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %513 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %514 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %515 = getelementptr i8, ptr %456, i32 2
  br label %516

516:                                              ; preds = %884, %496
  %517 = phi ptr [ %481, %496 ], [ %889, %884 ]
  %518 = phi ptr [ %482, %496 ], [ %888, %884 ]
  %519 = phi ptr [ %3, %496 ], [ %887, %884 ]
  %520 = phi i32 [ %492, %496 ], [ %886, %884 ]
  %521 = phi i32 [ %494, %496 ], [ %885, %884 ]
  %522 = getelementptr i8, ptr %517, i32 2
  %523 = load i64, ptr %517, align 1
  %524 = mul i64 %523, -3523014627271114752
  %525 = lshr i64 %524, %504
  %526 = trunc i64 %525 to i32
  %527 = load i64, ptr %518, align 1
  %528 = mul i64 %527, -3523014627271114752
  %529 = lshr i64 %528, %504
  %530 = trunc i64 %529 to i32
  %531 = trunc i64 %523 to i32
  %532 = trunc i64 %527 to i32
  %533 = ptrtoint ptr %517 to i32
  %534 = sub i32 %533, %458
  %535 = ptrtoint ptr %518 to i32
  %536 = sub i32 %535, %458
  %537 = getelementptr i32, ptr %454, i32 %526
  %538 = load i32, ptr %537, align 4
  %539 = getelementptr i32, ptr %454, i32 %530
  %540 = load i32, ptr %539, align 4
  %541 = sub i32 0, %521
  %542 = getelementptr i8, ptr %522, i32 %541
  %543 = getelementptr i8, ptr %456, i32 %538
  %544 = getelementptr i8, ptr %456, i32 %540
  store i32 %534, ptr %537, align 4
  store i32 %536, ptr %539, align 4
  %545 = icmp ne i32 %521, 0
  %546 = load i32, ptr %542, align 1
  %547 = load i32, ptr %522, align 1
  %548 = icmp eq i32 %546, %547
  %549 = and i1 %545, %548
  br i1 %549, label %550, label %560

550:                                              ; preds = %516
  %551 = getelementptr i8, ptr %517, i32 1
  %552 = load i8, ptr %551, align 1
  %553 = getelementptr i8, ptr %542, i32 -1
  %554 = load i8, ptr %553, align 1
  %555 = icmp eq i8 %552, %554
  %556 = sext i1 %555 to i32
  %557 = getelementptr i8, ptr %522, i32 %556
  %558 = getelementptr i8, ptr %542, i32 %556
  %559 = select i1 %555, i32 5, i32 4
  br label %601

560:                                              ; preds = %516
  %561 = icmp ugt i32 %538, %472
  br i1 %561, label %562, label %565

562:                                              ; preds = %560
  %563 = load i32, ptr %543, align 1
  %564 = icmp eq i32 %563, %531
  br i1 %564, label %577, label %565

565:                                              ; preds = %562, %560
  %566 = icmp ugt i32 %540, %472
  br i1 %566, label %567, label %570

567:                                              ; preds = %565
  %568 = load i32, ptr %544, align 1
  %569 = icmp eq i32 %568, %532
  br i1 %569, label %577, label %570

570:                                              ; preds = %567, %565
  %571 = ptrtoint ptr %519 to i32
  %572 = sub i32 %533, %571
  %573 = lshr i32 %572, 7
  %574 = add i32 %506, %573
  %575 = getelementptr i8, ptr %517, i32 %574
  %576 = getelementptr i8, ptr %518, i32 %574
  br label %884

577:                                              ; preds = %567, %562
  %578 = phi i32 [ %535, %567 ], [ %533, %562 ]
  %579 = phi ptr [ %518, %567 ], [ %517, %562 ]
  %580 = phi ptr [ %544, %567 ], [ %543, %562 ]
  %581 = ptrtoint ptr %580 to i32
  %582 = sub i32 %578, %581
  %583 = add i32 %582, 2
  %584 = icmp ugt ptr %579, %519
  %585 = icmp ugt ptr %580, %473
  %586 = and i1 %584, %585
  br i1 %586, label %587, label %601

587:                                              ; preds = %596, %577
  %588 = phi ptr [ %593, %596 ], [ %580, %577 ]
  %589 = phi ptr [ %591, %596 ], [ %579, %577 ]
  %590 = phi i32 [ %597, %596 ], [ 4, %577 ]
  %591 = getelementptr i8, ptr %589, i32 -1
  %592 = load i8, ptr %591, align 1
  %593 = getelementptr i8, ptr %588, i32 -1
  %594 = load i8, ptr %593, align 1
  %595 = icmp eq i8 %592, %594
  br i1 %595, label %596, label %601

596:                                              ; preds = %587
  %597 = add i32 %590, 1
  %598 = icmp ugt ptr %591, %519
  %599 = icmp ugt ptr %593, %473
  %600 = and i1 %599, %598
  br i1 %600, label %587, label %601

601:                                              ; preds = %596, %587, %577, %550
  %602 = phi i32 [ %521, %550 ], [ %582, %577 ], [ %582, %587 ], [ %582, %596 ]
  %603 = phi i32 [ %520, %550 ], [ %521, %577 ], [ %521, %587 ], [ %521, %596 ]
  %604 = phi i32 [ %559, %550 ], [ 4, %577 ], [ %597, %596 ], [ %590, %587 ]
  %605 = phi ptr [ %557, %550 ], [ %579, %577 ], [ %591, %596 ], [ %589, %587 ]
  %606 = phi ptr [ %558, %550 ], [ %580, %577 ], [ %593, %596 ], [ %588, %587 ]
  %607 = phi i32 [ 0, %550 ], [ %583, %577 ], [ %583, %587 ], [ %583, %596 ]
  %608 = getelementptr i8, ptr %605, i32 %604
  %609 = getelementptr i8, ptr %606, i32 %604
  %610 = icmp ugt ptr %507, %608
  br i1 %610, label %611, label %637

611:                                              ; preds = %601
  %612 = load i32, ptr %609, align 1
  %613 = load i32, ptr %608, align 1
  %614 = xor i32 %613, %612
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %619, label %616

616:                                              ; preds = %611
  %617 = tail call i32 @llvm.cttz.i32(i32 %614, i1 true) #4, !range !8
  %618 = lshr i32 %617, 3
  br label %663

619:                                              ; preds = %625, %611
  %620 = phi ptr [ %623, %625 ], [ %608, %611 ]
  %621 = phi ptr [ %622, %625 ], [ %609, %611 ]
  %622 = getelementptr i8, ptr %621, i32 4
  %623 = getelementptr i8, ptr %620, i32 4
  %624 = icmp ult ptr %623, %507
  br i1 %624, label %625, label %637

625:                                              ; preds = %619
  %626 = load i32, ptr %622, align 1
  %627 = load i32, ptr %623, align 1
  %628 = xor i32 %627, %626
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %619, label %630

630:                                              ; preds = %625
  %631 = tail call i32 @llvm.cttz.i32(i32 %628, i1 true) #4, !range !8
  %632 = lshr i32 %631, 3
  %633 = getelementptr i8, ptr %623, i32 %632
  %634 = ptrtoint ptr %633 to i32
  %635 = ptrtoint ptr %608 to i32
  %636 = sub i32 %634, %635
  br label %663

637:                                              ; preds = %619, %601
  %638 = phi ptr [ %608, %601 ], [ %623, %619 ]
  %639 = phi ptr [ %609, %601 ], [ %622, %619 ]
  %640 = icmp ult ptr %638, %508
  br i1 %640, label %641, label %648

641:                                              ; preds = %637
  %642 = load i16, ptr %639, align 1
  %643 = load i16, ptr %638, align 1
  %644 = icmp eq i16 %642, %643
  br i1 %644, label %645, label %648

645:                                              ; preds = %641
  %646 = getelementptr i8, ptr %638, i32 2
  %647 = getelementptr i8, ptr %639, i32 2
  br label %648

648:                                              ; preds = %645, %641, %637
  %649 = phi ptr [ %646, %645 ], [ %638, %641 ], [ %638, %637 ]
  %650 = phi ptr [ %647, %645 ], [ %639, %641 ], [ %639, %637 ]
  %651 = icmp ult ptr %649, %474
  br i1 %651, label %652, label %658

652:                                              ; preds = %648
  %653 = load i8, ptr %650, align 1
  %654 = load i8, ptr %649, align 1
  %655 = icmp eq i8 %653, %654
  %656 = zext i1 %655 to i32
  %657 = getelementptr i8, ptr %649, i32 %656
  br label %658

658:                                              ; preds = %652, %648
  %659 = phi ptr [ %649, %648 ], [ %657, %652 ]
  %660 = ptrtoint ptr %659 to i32
  %661 = ptrtoint ptr %608 to i32
  %662 = sub i32 %660, %661
  br label %663

663:                                              ; preds = %658, %630, %616
  %664 = phi i32 [ %662, %658 ], [ %618, %616 ], [ %636, %630 ]
  %665 = add i32 %664, %604
  %666 = ptrtoint ptr %605 to i32
  %667 = ptrtoint ptr %519 to i32
  %668 = sub i32 %666, %667
  %669 = add i32 %665, -3
  %670 = getelementptr i8, ptr %519, i32 %668
  %671 = icmp ugt ptr %670, %509
  %672 = load ptr, ptr %510, align 4
  br i1 %671, label %694, label %673

673:                                              ; preds = %663
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %672, ptr noundef align 1 dereferenceable(16) %519, i32 16, i1 false) #4
  %674 = icmp ugt i32 %668, 16
  %675 = load ptr, ptr %510, align 4
  br i1 %674, label %678, label %676

676:                                              ; preds = %673
  %677 = getelementptr i8, ptr %675, i32 %668
  store ptr %677, ptr %510, align 4
  br label %737

678:                                              ; preds = %673
  %679 = getelementptr i8, ptr %675, i32 16
  %680 = getelementptr i8, ptr %519, i32 16
  %681 = add i32 %668, -16
  %682 = getelementptr i8, ptr %675, i32 %668
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %679, ptr noundef align 1 dereferenceable(16) %680, i32 16, i1 false) #4
  %683 = icmp slt i32 %681, 17
  br i1 %683, label %726, label %684

684:                                              ; preds = %678
  %685 = getelementptr i8, ptr %675, i32 32
  br label %686

686:                                              ; preds = %686, %684
  %687 = phi ptr [ %680, %684 ], [ %691, %686 ]
  %688 = phi ptr [ %685, %684 ], [ %692, %686 ]
  %689 = getelementptr i8, ptr %687, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %688, ptr noundef align 1 dereferenceable(16) %689, i32 16, i1 false) #4
  %690 = getelementptr i8, ptr %688, i32 16
  %691 = getelementptr i8, ptr %687, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %690, ptr noundef align 1 dereferenceable(16) %691, i32 16, i1 false) #4
  %692 = getelementptr i8, ptr %688, i32 32
  %693 = icmp ult ptr %692, %682
  br i1 %693, label %686, label %726

694:                                              ; preds = %663
  %695 = ptrtoint ptr %670 to i32
  %696 = icmp ult ptr %509, %519
  br i1 %696, label %711, label %697

697:                                              ; preds = %694
  %698 = sub i32 %511, %667
  %699 = getelementptr i8, ptr %672, i32 %698
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %672, ptr noundef align 1 dereferenceable(16) %519, i32 16, i1 false) #4
  %700 = icmp slt i32 %698, 17
  br i1 %700, label %711, label %701

701:                                              ; preds = %697
  %702 = getelementptr i8, ptr %672, i32 16
  br label %703

703:                                              ; preds = %703, %701
  %704 = phi ptr [ %519, %701 ], [ %708, %703 ]
  %705 = phi ptr [ %702, %701 ], [ %709, %703 ]
  %706 = getelementptr i8, ptr %704, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %705, ptr noundef align 1 dereferenceable(16) %706, i32 16, i1 false) #4
  %707 = getelementptr i8, ptr %705, i32 16
  %708 = getelementptr i8, ptr %704, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %707, ptr noundef align 1 dereferenceable(16) %708, i32 16, i1 false) #4
  %709 = getelementptr i8, ptr %705, i32 32
  %710 = icmp ult ptr %709, %699
  br i1 %710, label %703, label %711

711:                                              ; preds = %703, %697, %694
  %712 = phi ptr [ %509, %697 ], [ %519, %694 ], [ %509, %703 ]
  %713 = phi ptr [ %699, %697 ], [ %672, %694 ], [ %699, %703 ]
  %714 = icmp ult ptr %712, %670
  br i1 %714, label %715, label %726

715:                                              ; preds = %711
  %716 = ptrtoint ptr %712 to i32
  %717 = sub i32 %695, %716
  %718 = getelementptr i8, ptr %712, i32 %717
  br label %719

719:                                              ; preds = %719, %715
  %720 = phi ptr [ %724, %719 ], [ %713, %715 ]
  %721 = phi ptr [ %722, %719 ], [ %712, %715 ]
  %722 = getelementptr i8, ptr %721, i32 1
  %723 = load i8, ptr %721, align 1
  %724 = getelementptr i8, ptr %720, i32 1
  store i8 %723, ptr %720, align 1
  %725 = icmp eq ptr %722, %718
  br i1 %725, label %726, label %719

726:                                              ; preds = %719, %711, %686, %678
  %727 = load ptr, ptr %510, align 4
  %728 = getelementptr i8, ptr %727, i32 %668
  store ptr %728, ptr %510, align 4
  %729 = icmp ugt i32 %668, 65535
  br i1 %729, label %730, label %737

730:                                              ; preds = %726
  store i32 1, ptr %512, align 4
  %731 = load ptr, ptr %513, align 4
  %732 = load ptr, ptr %1, align 4
  %733 = ptrtoint ptr %731 to i32
  %734 = ptrtoint ptr %732 to i32
  %735 = sub i32 %733, %734
  %736 = ashr exact i32 %735, 3
  store i32 %736, ptr %514, align 4
  br label %737

737:                                              ; preds = %730, %726, %676
  %738 = trunc i32 %668 to i16
  %739 = load ptr, ptr %513, align 4
  %740 = getelementptr inbounds %struct.seqDef_s, ptr %739, i32 0, i32 1
  store i16 %738, ptr %740, align 4
  %741 = add i32 %607, 1
  %742 = load ptr, ptr %513, align 4
  store i32 %741, ptr %742, align 4
  %743 = icmp ugt i32 %669, 65535
  br i1 %743, label %746, label %744

744:                                              ; preds = %737
  %745 = load ptr, ptr %513, align 4
  br label %753

746:                                              ; preds = %737
  store i32 2, ptr %512, align 4
  %747 = load ptr, ptr %513, align 4
  %748 = load ptr, ptr %1, align 4
  %749 = ptrtoint ptr %747 to i32
  %750 = ptrtoint ptr %748 to i32
  %751 = sub i32 %749, %750
  %752 = ashr exact i32 %751, 3
  store i32 %752, ptr %514, align 4
  br label %753

753:                                              ; preds = %746, %744
  %754 = phi ptr [ %745, %744 ], [ %747, %746 ]
  %755 = trunc i32 %669 to i16
  %756 = getelementptr inbounds %struct.seqDef_s, ptr %754, i32 0, i32 2
  store i16 %755, ptr %756, align 2
  %757 = load ptr, ptr %513, align 4
  %758 = getelementptr %struct.seqDef_s, ptr %757, i32 1
  store ptr %758, ptr %513, align 4
  %759 = getelementptr i8, ptr %605, i32 %665
  %760 = icmp ugt ptr %759, %475
  br i1 %760, label %879, label %761

761:                                              ; preds = %753
  %762 = add i32 %534, 2
  %763 = getelementptr i8, ptr %515, i32 %534
  %764 = load i64, ptr %763, align 1
  %765 = mul i64 %764, -3523014627271114752
  %766 = lshr i64 %765, %504
  %767 = trunc i64 %766 to i32
  %768 = getelementptr i32, ptr %454, i32 %767
  store i32 %762, ptr %768, align 4
  %769 = getelementptr i8, ptr %759, i32 -2
  %770 = load i64, ptr %769, align 1
  %771 = mul i64 %770, -3523014627271114752
  %772 = lshr i64 %771, %504
  %773 = trunc i64 %772 to i32
  %774 = ptrtoint ptr %769 to i32
  %775 = sub i32 %774, %458
  %776 = getelementptr i32, ptr %454, i32 %773
  store i32 %775, ptr %776, align 4
  %777 = icmp eq i32 %603, 0
  br i1 %777, label %879, label %778

778:                                              ; preds = %872, %761
  %779 = phi ptr [ %853, %872 ], [ %759, %761 ]
  %780 = phi i32 [ %781, %872 ], [ %603, %761 ]
  %781 = phi i32 [ %780, %872 ], [ %602, %761 ]
  %782 = load i32, ptr %779, align 1
  %783 = sub i32 0, %780
  %784 = getelementptr i8, ptr %779, i32 %783
  %785 = load i32, ptr %784, align 1
  %786 = icmp eq i32 %782, %785
  br i1 %786, label %787, label %879

787:                                              ; preds = %778
  %788 = getelementptr i8, ptr %779, i32 4
  %789 = getelementptr i8, ptr %788, i32 %783
  %790 = icmp ugt ptr %507, %788
  br i1 %790, label %791, label %817

791:                                              ; preds = %787
  %792 = load i32, ptr %789, align 1
  %793 = load i32, ptr %788, align 1
  %794 = xor i32 %793, %792
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %799, label %796

796:                                              ; preds = %791
  %797 = tail call i32 @llvm.cttz.i32(i32 %794, i1 true) #4, !range !8
  %798 = lshr i32 %797, 3
  br label %843

799:                                              ; preds = %805, %791
  %800 = phi ptr [ %803, %805 ], [ %788, %791 ]
  %801 = phi ptr [ %802, %805 ], [ %789, %791 ]
  %802 = getelementptr i8, ptr %801, i32 4
  %803 = getelementptr i8, ptr %800, i32 4
  %804 = icmp ult ptr %803, %507
  br i1 %804, label %805, label %817

805:                                              ; preds = %799
  %806 = load i32, ptr %802, align 1
  %807 = load i32, ptr %803, align 1
  %808 = xor i32 %807, %806
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %799, label %810

810:                                              ; preds = %805
  %811 = tail call i32 @llvm.cttz.i32(i32 %808, i1 true) #4, !range !8
  %812 = lshr i32 %811, 3
  %813 = getelementptr i8, ptr %803, i32 %812
  %814 = ptrtoint ptr %813 to i32
  %815 = ptrtoint ptr %788 to i32
  %816 = sub i32 %814, %815
  br label %843

817:                                              ; preds = %799, %787
  %818 = phi ptr [ %788, %787 ], [ %803, %799 ]
  %819 = phi ptr [ %789, %787 ], [ %802, %799 ]
  %820 = icmp ult ptr %818, %508
  br i1 %820, label %821, label %828

821:                                              ; preds = %817
  %822 = load i16, ptr %819, align 1
  %823 = load i16, ptr %818, align 1
  %824 = icmp eq i16 %822, %823
  br i1 %824, label %825, label %828

825:                                              ; preds = %821
  %826 = getelementptr i8, ptr %818, i32 2
  %827 = getelementptr i8, ptr %819, i32 2
  br label %828

828:                                              ; preds = %825, %821, %817
  %829 = phi ptr [ %826, %825 ], [ %818, %821 ], [ %818, %817 ]
  %830 = phi ptr [ %827, %825 ], [ %819, %821 ], [ %819, %817 ]
  %831 = icmp ult ptr %829, %474
  br i1 %831, label %832, label %838

832:                                              ; preds = %828
  %833 = load i8, ptr %830, align 1
  %834 = load i8, ptr %829, align 1
  %835 = icmp eq i8 %833, %834
  %836 = zext i1 %835 to i32
  %837 = getelementptr i8, ptr %829, i32 %836
  br label %838

838:                                              ; preds = %832, %828
  %839 = phi ptr [ %829, %828 ], [ %837, %832 ]
  %840 = ptrtoint ptr %839 to i32
  %841 = ptrtoint ptr %788 to i32
  %842 = sub i32 %840, %841
  br label %843

843:                                              ; preds = %838, %810, %796
  %844 = phi i32 [ %842, %838 ], [ %798, %796 ], [ %816, %810 ]
  %845 = add i32 %844, 4
  %846 = ptrtoint ptr %779 to i32
  %847 = sub i32 %846, %458
  %848 = load i64, ptr %779, align 1
  %849 = mul i64 %848, -3523014627271114752
  %850 = lshr i64 %849, %504
  %851 = trunc i64 %850 to i32
  %852 = getelementptr i32, ptr %454, i32 %851
  store i32 %847, ptr %852, align 4
  %853 = getelementptr i8, ptr %779, i32 %845
  %854 = add i32 %844, 1
  %855 = icmp ugt ptr %779, %509
  br i1 %855, label %858, label %856

856:                                              ; preds = %843
  %857 = load ptr, ptr %510, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %857, ptr noundef align 1 dereferenceable(16) %779, i32 16, i1 false) #4
  br label %858

858:                                              ; preds = %856, %843
  %859 = load ptr, ptr %513, align 4
  %860 = getelementptr inbounds %struct.seqDef_s, ptr %859, i32 0, i32 1
  store i16 0, ptr %860, align 4
  %861 = load ptr, ptr %513, align 4
  store i32 1, ptr %861, align 4
  %862 = icmp ugt i32 %854, 65535
  br i1 %862, label %865, label %863

863:                                              ; preds = %858
  %864 = load ptr, ptr %513, align 4
  br label %872

865:                                              ; preds = %858
  store i32 2, ptr %512, align 4
  %866 = load ptr, ptr %513, align 4
  %867 = load ptr, ptr %1, align 4
  %868 = ptrtoint ptr %866 to i32
  %869 = ptrtoint ptr %867 to i32
  %870 = sub i32 %868, %869
  %871 = ashr exact i32 %870, 3
  store i32 %871, ptr %514, align 4
  br label %872

872:                                              ; preds = %865, %863
  %873 = phi ptr [ %864, %863 ], [ %866, %865 ]
  %874 = trunc i32 %854 to i16
  %875 = getelementptr inbounds %struct.seqDef_s, ptr %873, i32 0, i32 2
  store i16 %874, ptr %875, align 2
  %876 = load ptr, ptr %513, align 4
  %877 = getelementptr %struct.seqDef_s, ptr %876, i32 1
  store ptr %877, ptr %513, align 4
  %878 = icmp ugt ptr %853, %475
  br i1 %878, label %879, label %778

879:                                              ; preds = %872, %778, %761, %753
  %880 = phi i32 [ %602, %761 ], [ %602, %753 ], [ %780, %872 ], [ %781, %778 ]
  %881 = phi i32 [ 0, %761 ], [ %603, %753 ], [ %781, %872 ], [ %780, %778 ]
  %882 = phi ptr [ %759, %761 ], [ %759, %753 ], [ %853, %872 ], [ %779, %778 ]
  %883 = getelementptr i8, ptr %882, i32 1
  br label %884

884:                                              ; preds = %879, %570
  %885 = phi i32 [ %880, %879 ], [ %521, %570 ]
  %886 = phi i32 [ %881, %879 ], [ %520, %570 ]
  %887 = phi ptr [ %882, %879 ], [ %519, %570 ]
  %888 = phi ptr [ %883, %879 ], [ %576, %570 ]
  %889 = phi ptr [ %882, %879 ], [ %575, %570 ]
  %890 = icmp ult ptr %888, %475
  br i1 %890, label %516, label %891

891:                                              ; preds = %884
  %892 = ptrtoint ptr %887 to i32
  br label %893

893:                                              ; preds = %891, %451
  %894 = phi i32 [ %892, %891 ], [ %457, %451 ]
  %895 = phi i32 [ %885, %891 ], [ %494, %451 ]
  %896 = phi i32 [ %886, %891 ], [ %492, %451 ]
  %897 = select i1 %491, i32 %478, i32 0
  %898 = select i1 %493, i32 %476, i32 %897
  %899 = icmp eq i32 %895, 0
  %900 = select i1 %899, i32 %898, i32 %895
  store i32 %900, ptr %2, align 4
  %901 = icmp eq i32 %896, 0
  %902 = select i1 %901, i32 %898, i32 %896
  store i32 %902, ptr %477, align 4
  br label %1807

903:                                              ; preds = %5
  %904 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %905 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %906 = load ptr, ptr %905, align 4
  %907 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %908 = load ptr, ptr %907, align 4
  %909 = ptrtoint ptr %3 to i32
  %910 = ptrtoint ptr %908 to i32
  %911 = sub i32 %909, %910
  %912 = add i32 %911, %4
  %913 = load i32, ptr %904, align 4
  %914 = shl nuw i32 1, %913
  %915 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %916 = load i32, ptr %915, align 4
  %917 = sub i32 %912, %916
  %918 = icmp ugt i32 %917, %914
  %919 = sub i32 %912, %914
  %920 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %921 = load i32, ptr %920, align 4
  %922 = icmp eq i32 %921, 0
  %923 = select i1 %922, i1 %918, i1 false
  %924 = select i1 %923, i32 %919, i32 %916
  %925 = getelementptr i8, ptr %908, i32 %924
  %926 = getelementptr i8, ptr %3, i32 %4
  %927 = getelementptr i8, ptr %926, i32 -8
  %928 = load i32, ptr %2, align 4
  %929 = getelementptr i32, ptr %2, i32 1
  %930 = load i32, ptr %929, align 4
  %931 = icmp eq ptr %925, %3
  %932 = zext i1 %931 to i32
  %933 = getelementptr i8, ptr %3, i32 %932
  %934 = getelementptr i8, ptr %933, i32 1
  %935 = ptrtoint ptr %933 to i32
  %936 = sub i32 %935, %910
  %937 = sub i32 %936, %916
  %938 = icmp ugt i32 %937, %914
  %939 = sub i32 %936, %914
  %940 = select i1 %922, i1 %938, i1 false
  %941 = select i1 %940, i32 %939, i32 %916
  %942 = sub i32 %936, %941
  %943 = icmp ugt i32 %930, %942
  %944 = select i1 %943, i32 0, i32 %930
  %945 = icmp ugt i32 %928, %942
  %946 = select i1 %945, i32 0, i32 %928
  %947 = icmp ult ptr %934, %927
  br i1 %947, label %948, label %1345

948:                                              ; preds = %903
  %949 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 5
  %950 = load i32, ptr %949, align 4
  %951 = icmp eq i32 %950, 0
  %952 = zext i1 %951 to i32
  %953 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %954 = load i32, ptr %953, align 4
  %955 = sub i32 64, %954
  %956 = zext i32 %955 to i64
  %957 = add i32 %950, 1
  %958 = add i32 %957, %952
  %959 = getelementptr i8, ptr %926, i32 -3
  %960 = getelementptr i8, ptr %926, i32 -1
  %961 = getelementptr i8, ptr %926, i32 -32
  %962 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %963 = ptrtoint ptr %961 to i32
  %964 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %965 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %966 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %967 = getelementptr i8, ptr %908, i32 2
  br label %968

968:                                              ; preds = %1336, %948
  %969 = phi ptr [ %933, %948 ], [ %1341, %1336 ]
  %970 = phi ptr [ %934, %948 ], [ %1340, %1336 ]
  %971 = phi ptr [ %3, %948 ], [ %1339, %1336 ]
  %972 = phi i32 [ %944, %948 ], [ %1338, %1336 ]
  %973 = phi i32 [ %946, %948 ], [ %1337, %1336 ]
  %974 = getelementptr i8, ptr %969, i32 2
  %975 = load i64, ptr %969, align 1
  %976 = mul i64 %975, -3523014627193847808
  %977 = lshr i64 %976, %956
  %978 = trunc i64 %977 to i32
  %979 = load i64, ptr %970, align 1
  %980 = mul i64 %979, -3523014627193847808
  %981 = lshr i64 %980, %956
  %982 = trunc i64 %981 to i32
  %983 = trunc i64 %975 to i32
  %984 = trunc i64 %979 to i32
  %985 = ptrtoint ptr %969 to i32
  %986 = sub i32 %985, %910
  %987 = ptrtoint ptr %970 to i32
  %988 = sub i32 %987, %910
  %989 = getelementptr i32, ptr %906, i32 %978
  %990 = load i32, ptr %989, align 4
  %991 = getelementptr i32, ptr %906, i32 %982
  %992 = load i32, ptr %991, align 4
  %993 = sub i32 0, %973
  %994 = getelementptr i8, ptr %974, i32 %993
  %995 = getelementptr i8, ptr %908, i32 %990
  %996 = getelementptr i8, ptr %908, i32 %992
  store i32 %986, ptr %989, align 4
  store i32 %988, ptr %991, align 4
  %997 = icmp ne i32 %973, 0
  %998 = load i32, ptr %994, align 1
  %999 = load i32, ptr %974, align 1
  %1000 = icmp eq i32 %998, %999
  %1001 = and i1 %997, %1000
  br i1 %1001, label %1002, label %1012

1002:                                             ; preds = %968
  %1003 = getelementptr i8, ptr %969, i32 1
  %1004 = load i8, ptr %1003, align 1
  %1005 = getelementptr i8, ptr %994, i32 -1
  %1006 = load i8, ptr %1005, align 1
  %1007 = icmp eq i8 %1004, %1006
  %1008 = sext i1 %1007 to i32
  %1009 = getelementptr i8, ptr %974, i32 %1008
  %1010 = getelementptr i8, ptr %994, i32 %1008
  %1011 = select i1 %1007, i32 5, i32 4
  br label %1053

1012:                                             ; preds = %968
  %1013 = icmp ugt i32 %990, %924
  br i1 %1013, label %1014, label %1017

1014:                                             ; preds = %1012
  %1015 = load i32, ptr %995, align 1
  %1016 = icmp eq i32 %1015, %983
  br i1 %1016, label %1029, label %1017

1017:                                             ; preds = %1014, %1012
  %1018 = icmp ugt i32 %992, %924
  br i1 %1018, label %1019, label %1022

1019:                                             ; preds = %1017
  %1020 = load i32, ptr %996, align 1
  %1021 = icmp eq i32 %1020, %984
  br i1 %1021, label %1029, label %1022

1022:                                             ; preds = %1019, %1017
  %1023 = ptrtoint ptr %971 to i32
  %1024 = sub i32 %985, %1023
  %1025 = lshr i32 %1024, 7
  %1026 = add i32 %958, %1025
  %1027 = getelementptr i8, ptr %969, i32 %1026
  %1028 = getelementptr i8, ptr %970, i32 %1026
  br label %1336

1029:                                             ; preds = %1019, %1014
  %1030 = phi i32 [ %987, %1019 ], [ %985, %1014 ]
  %1031 = phi ptr [ %970, %1019 ], [ %969, %1014 ]
  %1032 = phi ptr [ %996, %1019 ], [ %995, %1014 ]
  %1033 = ptrtoint ptr %1032 to i32
  %1034 = sub i32 %1030, %1033
  %1035 = add i32 %1034, 2
  %1036 = icmp ugt ptr %1031, %971
  %1037 = icmp ugt ptr %1032, %925
  %1038 = and i1 %1036, %1037
  br i1 %1038, label %1039, label %1053

1039:                                             ; preds = %1048, %1029
  %1040 = phi ptr [ %1045, %1048 ], [ %1032, %1029 ]
  %1041 = phi ptr [ %1043, %1048 ], [ %1031, %1029 ]
  %1042 = phi i32 [ %1049, %1048 ], [ 4, %1029 ]
  %1043 = getelementptr i8, ptr %1041, i32 -1
  %1044 = load i8, ptr %1043, align 1
  %1045 = getelementptr i8, ptr %1040, i32 -1
  %1046 = load i8, ptr %1045, align 1
  %1047 = icmp eq i8 %1044, %1046
  br i1 %1047, label %1048, label %1053

1048:                                             ; preds = %1039
  %1049 = add i32 %1042, 1
  %1050 = icmp ugt ptr %1043, %971
  %1051 = icmp ugt ptr %1045, %925
  %1052 = and i1 %1051, %1050
  br i1 %1052, label %1039, label %1053

1053:                                             ; preds = %1048, %1039, %1029, %1002
  %1054 = phi i32 [ %973, %1002 ], [ %1034, %1029 ], [ %1034, %1039 ], [ %1034, %1048 ]
  %1055 = phi i32 [ %972, %1002 ], [ %973, %1029 ], [ %973, %1039 ], [ %973, %1048 ]
  %1056 = phi i32 [ %1011, %1002 ], [ 4, %1029 ], [ %1049, %1048 ], [ %1042, %1039 ]
  %1057 = phi ptr [ %1009, %1002 ], [ %1031, %1029 ], [ %1043, %1048 ], [ %1041, %1039 ]
  %1058 = phi ptr [ %1010, %1002 ], [ %1032, %1029 ], [ %1045, %1048 ], [ %1040, %1039 ]
  %1059 = phi i32 [ 0, %1002 ], [ %1035, %1029 ], [ %1035, %1039 ], [ %1035, %1048 ]
  %1060 = getelementptr i8, ptr %1057, i32 %1056
  %1061 = getelementptr i8, ptr %1058, i32 %1056
  %1062 = icmp ugt ptr %959, %1060
  br i1 %1062, label %1063, label %1089

1063:                                             ; preds = %1053
  %1064 = load i32, ptr %1061, align 1
  %1065 = load i32, ptr %1060, align 1
  %1066 = xor i32 %1065, %1064
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1071, label %1068

1068:                                             ; preds = %1063
  %1069 = tail call i32 @llvm.cttz.i32(i32 %1066, i1 true) #4, !range !8
  %1070 = lshr i32 %1069, 3
  br label %1115

1071:                                             ; preds = %1077, %1063
  %1072 = phi ptr [ %1075, %1077 ], [ %1060, %1063 ]
  %1073 = phi ptr [ %1074, %1077 ], [ %1061, %1063 ]
  %1074 = getelementptr i8, ptr %1073, i32 4
  %1075 = getelementptr i8, ptr %1072, i32 4
  %1076 = icmp ult ptr %1075, %959
  br i1 %1076, label %1077, label %1089

1077:                                             ; preds = %1071
  %1078 = load i32, ptr %1074, align 1
  %1079 = load i32, ptr %1075, align 1
  %1080 = xor i32 %1079, %1078
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1071, label %1082

1082:                                             ; preds = %1077
  %1083 = tail call i32 @llvm.cttz.i32(i32 %1080, i1 true) #4, !range !8
  %1084 = lshr i32 %1083, 3
  %1085 = getelementptr i8, ptr %1075, i32 %1084
  %1086 = ptrtoint ptr %1085 to i32
  %1087 = ptrtoint ptr %1060 to i32
  %1088 = sub i32 %1086, %1087
  br label %1115

1089:                                             ; preds = %1071, %1053
  %1090 = phi ptr [ %1060, %1053 ], [ %1075, %1071 ]
  %1091 = phi ptr [ %1061, %1053 ], [ %1074, %1071 ]
  %1092 = icmp ult ptr %1090, %960
  br i1 %1092, label %1093, label %1100

1093:                                             ; preds = %1089
  %1094 = load i16, ptr %1091, align 1
  %1095 = load i16, ptr %1090, align 1
  %1096 = icmp eq i16 %1094, %1095
  br i1 %1096, label %1097, label %1100

1097:                                             ; preds = %1093
  %1098 = getelementptr i8, ptr %1090, i32 2
  %1099 = getelementptr i8, ptr %1091, i32 2
  br label %1100

1100:                                             ; preds = %1097, %1093, %1089
  %1101 = phi ptr [ %1098, %1097 ], [ %1090, %1093 ], [ %1090, %1089 ]
  %1102 = phi ptr [ %1099, %1097 ], [ %1091, %1093 ], [ %1091, %1089 ]
  %1103 = icmp ult ptr %1101, %926
  br i1 %1103, label %1104, label %1110

1104:                                             ; preds = %1100
  %1105 = load i8, ptr %1102, align 1
  %1106 = load i8, ptr %1101, align 1
  %1107 = icmp eq i8 %1105, %1106
  %1108 = zext i1 %1107 to i32
  %1109 = getelementptr i8, ptr %1101, i32 %1108
  br label %1110

1110:                                             ; preds = %1104, %1100
  %1111 = phi ptr [ %1101, %1100 ], [ %1109, %1104 ]
  %1112 = ptrtoint ptr %1111 to i32
  %1113 = ptrtoint ptr %1060 to i32
  %1114 = sub i32 %1112, %1113
  br label %1115

1115:                                             ; preds = %1110, %1082, %1068
  %1116 = phi i32 [ %1114, %1110 ], [ %1070, %1068 ], [ %1088, %1082 ]
  %1117 = add i32 %1116, %1056
  %1118 = ptrtoint ptr %1057 to i32
  %1119 = ptrtoint ptr %971 to i32
  %1120 = sub i32 %1118, %1119
  %1121 = add i32 %1117, -3
  %1122 = getelementptr i8, ptr %971, i32 %1120
  %1123 = icmp ugt ptr %1122, %961
  %1124 = load ptr, ptr %962, align 4
  br i1 %1123, label %1146, label %1125

1125:                                             ; preds = %1115
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1124, ptr noundef align 1 dereferenceable(16) %971, i32 16, i1 false) #4
  %1126 = icmp ugt i32 %1120, 16
  %1127 = load ptr, ptr %962, align 4
  br i1 %1126, label %1130, label %1128

1128:                                             ; preds = %1125
  %1129 = getelementptr i8, ptr %1127, i32 %1120
  store ptr %1129, ptr %962, align 4
  br label %1189

1130:                                             ; preds = %1125
  %1131 = getelementptr i8, ptr %1127, i32 16
  %1132 = getelementptr i8, ptr %971, i32 16
  %1133 = add i32 %1120, -16
  %1134 = getelementptr i8, ptr %1127, i32 %1120
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1131, ptr noundef align 1 dereferenceable(16) %1132, i32 16, i1 false) #4
  %1135 = icmp slt i32 %1133, 17
  br i1 %1135, label %1178, label %1136

1136:                                             ; preds = %1130
  %1137 = getelementptr i8, ptr %1127, i32 32
  br label %1138

1138:                                             ; preds = %1138, %1136
  %1139 = phi ptr [ %1132, %1136 ], [ %1143, %1138 ]
  %1140 = phi ptr [ %1137, %1136 ], [ %1144, %1138 ]
  %1141 = getelementptr i8, ptr %1139, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1140, ptr noundef align 1 dereferenceable(16) %1141, i32 16, i1 false) #4
  %1142 = getelementptr i8, ptr %1140, i32 16
  %1143 = getelementptr i8, ptr %1139, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1142, ptr noundef align 1 dereferenceable(16) %1143, i32 16, i1 false) #4
  %1144 = getelementptr i8, ptr %1140, i32 32
  %1145 = icmp ult ptr %1144, %1134
  br i1 %1145, label %1138, label %1178

1146:                                             ; preds = %1115
  %1147 = ptrtoint ptr %1122 to i32
  %1148 = icmp ult ptr %961, %971
  br i1 %1148, label %1163, label %1149

1149:                                             ; preds = %1146
  %1150 = sub i32 %963, %1119
  %1151 = getelementptr i8, ptr %1124, i32 %1150
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1124, ptr noundef align 1 dereferenceable(16) %971, i32 16, i1 false) #4
  %1152 = icmp slt i32 %1150, 17
  br i1 %1152, label %1163, label %1153

1153:                                             ; preds = %1149
  %1154 = getelementptr i8, ptr %1124, i32 16
  br label %1155

1155:                                             ; preds = %1155, %1153
  %1156 = phi ptr [ %971, %1153 ], [ %1160, %1155 ]
  %1157 = phi ptr [ %1154, %1153 ], [ %1161, %1155 ]
  %1158 = getelementptr i8, ptr %1156, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1157, ptr noundef align 1 dereferenceable(16) %1158, i32 16, i1 false) #4
  %1159 = getelementptr i8, ptr %1157, i32 16
  %1160 = getelementptr i8, ptr %1156, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1159, ptr noundef align 1 dereferenceable(16) %1160, i32 16, i1 false) #4
  %1161 = getelementptr i8, ptr %1157, i32 32
  %1162 = icmp ult ptr %1161, %1151
  br i1 %1162, label %1155, label %1163

1163:                                             ; preds = %1155, %1149, %1146
  %1164 = phi ptr [ %961, %1149 ], [ %971, %1146 ], [ %961, %1155 ]
  %1165 = phi ptr [ %1151, %1149 ], [ %1124, %1146 ], [ %1151, %1155 ]
  %1166 = icmp ult ptr %1164, %1122
  br i1 %1166, label %1167, label %1178

1167:                                             ; preds = %1163
  %1168 = ptrtoint ptr %1164 to i32
  %1169 = sub i32 %1147, %1168
  %1170 = getelementptr i8, ptr %1164, i32 %1169
  br label %1171

1171:                                             ; preds = %1171, %1167
  %1172 = phi ptr [ %1176, %1171 ], [ %1165, %1167 ]
  %1173 = phi ptr [ %1174, %1171 ], [ %1164, %1167 ]
  %1174 = getelementptr i8, ptr %1173, i32 1
  %1175 = load i8, ptr %1173, align 1
  %1176 = getelementptr i8, ptr %1172, i32 1
  store i8 %1175, ptr %1172, align 1
  %1177 = icmp eq ptr %1174, %1170
  br i1 %1177, label %1178, label %1171

1178:                                             ; preds = %1171, %1163, %1138, %1130
  %1179 = load ptr, ptr %962, align 4
  %1180 = getelementptr i8, ptr %1179, i32 %1120
  store ptr %1180, ptr %962, align 4
  %1181 = icmp ugt i32 %1120, 65535
  br i1 %1181, label %1182, label %1189

1182:                                             ; preds = %1178
  store i32 1, ptr %964, align 4
  %1183 = load ptr, ptr %965, align 4
  %1184 = load ptr, ptr %1, align 4
  %1185 = ptrtoint ptr %1183 to i32
  %1186 = ptrtoint ptr %1184 to i32
  %1187 = sub i32 %1185, %1186
  %1188 = ashr exact i32 %1187, 3
  store i32 %1188, ptr %966, align 4
  br label %1189

1189:                                             ; preds = %1182, %1178, %1128
  %1190 = trunc i32 %1120 to i16
  %1191 = load ptr, ptr %965, align 4
  %1192 = getelementptr inbounds %struct.seqDef_s, ptr %1191, i32 0, i32 1
  store i16 %1190, ptr %1192, align 4
  %1193 = add i32 %1059, 1
  %1194 = load ptr, ptr %965, align 4
  store i32 %1193, ptr %1194, align 4
  %1195 = icmp ugt i32 %1121, 65535
  br i1 %1195, label %1198, label %1196

1196:                                             ; preds = %1189
  %1197 = load ptr, ptr %965, align 4
  br label %1205

1198:                                             ; preds = %1189
  store i32 2, ptr %964, align 4
  %1199 = load ptr, ptr %965, align 4
  %1200 = load ptr, ptr %1, align 4
  %1201 = ptrtoint ptr %1199 to i32
  %1202 = ptrtoint ptr %1200 to i32
  %1203 = sub i32 %1201, %1202
  %1204 = ashr exact i32 %1203, 3
  store i32 %1204, ptr %966, align 4
  br label %1205

1205:                                             ; preds = %1198, %1196
  %1206 = phi ptr [ %1197, %1196 ], [ %1199, %1198 ]
  %1207 = trunc i32 %1121 to i16
  %1208 = getelementptr inbounds %struct.seqDef_s, ptr %1206, i32 0, i32 2
  store i16 %1207, ptr %1208, align 2
  %1209 = load ptr, ptr %965, align 4
  %1210 = getelementptr %struct.seqDef_s, ptr %1209, i32 1
  store ptr %1210, ptr %965, align 4
  %1211 = getelementptr i8, ptr %1057, i32 %1117
  %1212 = icmp ugt ptr %1211, %927
  br i1 %1212, label %1331, label %1213

1213:                                             ; preds = %1205
  %1214 = add i32 %986, 2
  %1215 = getelementptr i8, ptr %967, i32 %986
  %1216 = load i64, ptr %1215, align 1
  %1217 = mul i64 %1216, -3523014627193847808
  %1218 = lshr i64 %1217, %956
  %1219 = trunc i64 %1218 to i32
  %1220 = getelementptr i32, ptr %906, i32 %1219
  store i32 %1214, ptr %1220, align 4
  %1221 = getelementptr i8, ptr %1211, i32 -2
  %1222 = load i64, ptr %1221, align 1
  %1223 = mul i64 %1222, -3523014627193847808
  %1224 = lshr i64 %1223, %956
  %1225 = trunc i64 %1224 to i32
  %1226 = ptrtoint ptr %1221 to i32
  %1227 = sub i32 %1226, %910
  %1228 = getelementptr i32, ptr %906, i32 %1225
  store i32 %1227, ptr %1228, align 4
  %1229 = icmp eq i32 %1055, 0
  br i1 %1229, label %1331, label %1230

1230:                                             ; preds = %1324, %1213
  %1231 = phi ptr [ %1305, %1324 ], [ %1211, %1213 ]
  %1232 = phi i32 [ %1233, %1324 ], [ %1055, %1213 ]
  %1233 = phi i32 [ %1232, %1324 ], [ %1054, %1213 ]
  %1234 = load i32, ptr %1231, align 1
  %1235 = sub i32 0, %1232
  %1236 = getelementptr i8, ptr %1231, i32 %1235
  %1237 = load i32, ptr %1236, align 1
  %1238 = icmp eq i32 %1234, %1237
  br i1 %1238, label %1239, label %1331

1239:                                             ; preds = %1230
  %1240 = getelementptr i8, ptr %1231, i32 4
  %1241 = getelementptr i8, ptr %1240, i32 %1235
  %1242 = icmp ugt ptr %959, %1240
  br i1 %1242, label %1243, label %1269

1243:                                             ; preds = %1239
  %1244 = load i32, ptr %1241, align 1
  %1245 = load i32, ptr %1240, align 1
  %1246 = xor i32 %1245, %1244
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1251, label %1248

1248:                                             ; preds = %1243
  %1249 = tail call i32 @llvm.cttz.i32(i32 %1246, i1 true) #4, !range !8
  %1250 = lshr i32 %1249, 3
  br label %1295

1251:                                             ; preds = %1257, %1243
  %1252 = phi ptr [ %1255, %1257 ], [ %1240, %1243 ]
  %1253 = phi ptr [ %1254, %1257 ], [ %1241, %1243 ]
  %1254 = getelementptr i8, ptr %1253, i32 4
  %1255 = getelementptr i8, ptr %1252, i32 4
  %1256 = icmp ult ptr %1255, %959
  br i1 %1256, label %1257, label %1269

1257:                                             ; preds = %1251
  %1258 = load i32, ptr %1254, align 1
  %1259 = load i32, ptr %1255, align 1
  %1260 = xor i32 %1259, %1258
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1251, label %1262

1262:                                             ; preds = %1257
  %1263 = tail call i32 @llvm.cttz.i32(i32 %1260, i1 true) #4, !range !8
  %1264 = lshr i32 %1263, 3
  %1265 = getelementptr i8, ptr %1255, i32 %1264
  %1266 = ptrtoint ptr %1265 to i32
  %1267 = ptrtoint ptr %1240 to i32
  %1268 = sub i32 %1266, %1267
  br label %1295

1269:                                             ; preds = %1251, %1239
  %1270 = phi ptr [ %1240, %1239 ], [ %1255, %1251 ]
  %1271 = phi ptr [ %1241, %1239 ], [ %1254, %1251 ]
  %1272 = icmp ult ptr %1270, %960
  br i1 %1272, label %1273, label %1280

1273:                                             ; preds = %1269
  %1274 = load i16, ptr %1271, align 1
  %1275 = load i16, ptr %1270, align 1
  %1276 = icmp eq i16 %1274, %1275
  br i1 %1276, label %1277, label %1280

1277:                                             ; preds = %1273
  %1278 = getelementptr i8, ptr %1270, i32 2
  %1279 = getelementptr i8, ptr %1271, i32 2
  br label %1280

1280:                                             ; preds = %1277, %1273, %1269
  %1281 = phi ptr [ %1278, %1277 ], [ %1270, %1273 ], [ %1270, %1269 ]
  %1282 = phi ptr [ %1279, %1277 ], [ %1271, %1273 ], [ %1271, %1269 ]
  %1283 = icmp ult ptr %1281, %926
  br i1 %1283, label %1284, label %1290

1284:                                             ; preds = %1280
  %1285 = load i8, ptr %1282, align 1
  %1286 = load i8, ptr %1281, align 1
  %1287 = icmp eq i8 %1285, %1286
  %1288 = zext i1 %1287 to i32
  %1289 = getelementptr i8, ptr %1281, i32 %1288
  br label %1290

1290:                                             ; preds = %1284, %1280
  %1291 = phi ptr [ %1281, %1280 ], [ %1289, %1284 ]
  %1292 = ptrtoint ptr %1291 to i32
  %1293 = ptrtoint ptr %1240 to i32
  %1294 = sub i32 %1292, %1293
  br label %1295

1295:                                             ; preds = %1290, %1262, %1248
  %1296 = phi i32 [ %1294, %1290 ], [ %1250, %1248 ], [ %1268, %1262 ]
  %1297 = add i32 %1296, 4
  %1298 = ptrtoint ptr %1231 to i32
  %1299 = sub i32 %1298, %910
  %1300 = load i64, ptr %1231, align 1
  %1301 = mul i64 %1300, -3523014627193847808
  %1302 = lshr i64 %1301, %956
  %1303 = trunc i64 %1302 to i32
  %1304 = getelementptr i32, ptr %906, i32 %1303
  store i32 %1299, ptr %1304, align 4
  %1305 = getelementptr i8, ptr %1231, i32 %1297
  %1306 = add i32 %1296, 1
  %1307 = icmp ugt ptr %1231, %961
  br i1 %1307, label %1310, label %1308

1308:                                             ; preds = %1295
  %1309 = load ptr, ptr %962, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1309, ptr noundef align 1 dereferenceable(16) %1231, i32 16, i1 false) #4
  br label %1310

1310:                                             ; preds = %1308, %1295
  %1311 = load ptr, ptr %965, align 4
  %1312 = getelementptr inbounds %struct.seqDef_s, ptr %1311, i32 0, i32 1
  store i16 0, ptr %1312, align 4
  %1313 = load ptr, ptr %965, align 4
  store i32 1, ptr %1313, align 4
  %1314 = icmp ugt i32 %1306, 65535
  br i1 %1314, label %1317, label %1315

1315:                                             ; preds = %1310
  %1316 = load ptr, ptr %965, align 4
  br label %1324

1317:                                             ; preds = %1310
  store i32 2, ptr %964, align 4
  %1318 = load ptr, ptr %965, align 4
  %1319 = load ptr, ptr %1, align 4
  %1320 = ptrtoint ptr %1318 to i32
  %1321 = ptrtoint ptr %1319 to i32
  %1322 = sub i32 %1320, %1321
  %1323 = ashr exact i32 %1322, 3
  store i32 %1323, ptr %966, align 4
  br label %1324

1324:                                             ; preds = %1317, %1315
  %1325 = phi ptr [ %1316, %1315 ], [ %1318, %1317 ]
  %1326 = trunc i32 %1306 to i16
  %1327 = getelementptr inbounds %struct.seqDef_s, ptr %1325, i32 0, i32 2
  store i16 %1326, ptr %1327, align 2
  %1328 = load ptr, ptr %965, align 4
  %1329 = getelementptr %struct.seqDef_s, ptr %1328, i32 1
  store ptr %1329, ptr %965, align 4
  %1330 = icmp ugt ptr %1305, %927
  br i1 %1330, label %1331, label %1230

1331:                                             ; preds = %1324, %1230, %1213, %1205
  %1332 = phi i32 [ %1054, %1213 ], [ %1054, %1205 ], [ %1232, %1324 ], [ %1233, %1230 ]
  %1333 = phi i32 [ 0, %1213 ], [ %1055, %1205 ], [ %1233, %1324 ], [ %1232, %1230 ]
  %1334 = phi ptr [ %1211, %1213 ], [ %1211, %1205 ], [ %1305, %1324 ], [ %1231, %1230 ]
  %1335 = getelementptr i8, ptr %1334, i32 1
  br label %1336

1336:                                             ; preds = %1331, %1022
  %1337 = phi i32 [ %1332, %1331 ], [ %973, %1022 ]
  %1338 = phi i32 [ %1333, %1331 ], [ %972, %1022 ]
  %1339 = phi ptr [ %1334, %1331 ], [ %971, %1022 ]
  %1340 = phi ptr [ %1335, %1331 ], [ %1028, %1022 ]
  %1341 = phi ptr [ %1334, %1331 ], [ %1027, %1022 ]
  %1342 = icmp ult ptr %1340, %927
  br i1 %1342, label %968, label %1343

1343:                                             ; preds = %1336
  %1344 = ptrtoint ptr %1339 to i32
  br label %1345

1345:                                             ; preds = %1343, %903
  %1346 = phi i32 [ %1344, %1343 ], [ %909, %903 ]
  %1347 = phi i32 [ %1337, %1343 ], [ %946, %903 ]
  %1348 = phi i32 [ %1338, %1343 ], [ %944, %903 ]
  %1349 = select i1 %943, i32 %930, i32 0
  %1350 = select i1 %945, i32 %928, i32 %1349
  %1351 = icmp eq i32 %1347, 0
  %1352 = select i1 %1351, i32 %1350, i32 %1347
  store i32 %1352, ptr %2, align 4
  %1353 = icmp eq i32 %1348, 0
  %1354 = select i1 %1353, i32 %1350, i32 %1348
  store i32 %1354, ptr %929, align 4
  br label %1807

1355:                                             ; preds = %5
  %1356 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %1357 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %1358 = load ptr, ptr %1357, align 4
  %1359 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %1360 = load ptr, ptr %1359, align 4
  %1361 = ptrtoint ptr %3 to i32
  %1362 = ptrtoint ptr %1360 to i32
  %1363 = sub i32 %1361, %1362
  %1364 = add i32 %1363, %4
  %1365 = load i32, ptr %1356, align 4
  %1366 = shl nuw i32 1, %1365
  %1367 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %1368 = load i32, ptr %1367, align 4
  %1369 = sub i32 %1364, %1368
  %1370 = icmp ugt i32 %1369, %1366
  %1371 = sub i32 %1364, %1366
  %1372 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %1373 = load i32, ptr %1372, align 4
  %1374 = icmp eq i32 %1373, 0
  %1375 = select i1 %1374, i1 %1370, i1 false
  %1376 = select i1 %1375, i32 %1371, i32 %1368
  %1377 = getelementptr i8, ptr %1360, i32 %1376
  %1378 = getelementptr i8, ptr %3, i32 %4
  %1379 = getelementptr i8, ptr %1378, i32 -8
  %1380 = load i32, ptr %2, align 4
  %1381 = getelementptr i32, ptr %2, i32 1
  %1382 = load i32, ptr %1381, align 4
  %1383 = icmp eq ptr %1377, %3
  %1384 = zext i1 %1383 to i32
  %1385 = getelementptr i8, ptr %3, i32 %1384
  %1386 = getelementptr i8, ptr %1385, i32 1
  %1387 = ptrtoint ptr %1385 to i32
  %1388 = sub i32 %1387, %1362
  %1389 = sub i32 %1388, %1368
  %1390 = icmp ugt i32 %1389, %1366
  %1391 = sub i32 %1388, %1366
  %1392 = select i1 %1374, i1 %1390, i1 false
  %1393 = select i1 %1392, i32 %1391, i32 %1368
  %1394 = sub i32 %1388, %1393
  %1395 = icmp ugt i32 %1382, %1394
  %1396 = select i1 %1395, i32 0, i32 %1382
  %1397 = icmp ugt i32 %1380, %1394
  %1398 = select i1 %1397, i32 0, i32 %1380
  %1399 = icmp ult ptr %1386, %1379
  br i1 %1399, label %1400, label %1797

1400:                                             ; preds = %1355
  %1401 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 5
  %1402 = load i32, ptr %1401, align 4
  %1403 = icmp eq i32 %1402, 0
  %1404 = zext i1 %1403 to i32
  %1405 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %1406 = load i32, ptr %1405, align 4
  %1407 = sub i32 64, %1406
  %1408 = zext i32 %1407 to i64
  %1409 = add i32 %1402, 1
  %1410 = add i32 %1409, %1404
  %1411 = getelementptr i8, ptr %1378, i32 -3
  %1412 = getelementptr i8, ptr %1378, i32 -1
  %1413 = getelementptr i8, ptr %1378, i32 -32
  %1414 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %1415 = ptrtoint ptr %1413 to i32
  %1416 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %1417 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %1418 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %1419 = getelementptr i8, ptr %1360, i32 2
  br label %1420

1420:                                             ; preds = %1788, %1400
  %1421 = phi ptr [ %1385, %1400 ], [ %1793, %1788 ]
  %1422 = phi ptr [ %1386, %1400 ], [ %1792, %1788 ]
  %1423 = phi ptr [ %3, %1400 ], [ %1791, %1788 ]
  %1424 = phi i32 [ %1396, %1400 ], [ %1790, %1788 ]
  %1425 = phi i32 [ %1398, %1400 ], [ %1789, %1788 ]
  %1426 = getelementptr i8, ptr %1421, i32 2
  %1427 = load i64, ptr %1421, align 1
  %1428 = mul i64 %1427, -3523014627193167104
  %1429 = lshr i64 %1428, %1408
  %1430 = trunc i64 %1429 to i32
  %1431 = load i64, ptr %1422, align 1
  %1432 = mul i64 %1431, -3523014627193167104
  %1433 = lshr i64 %1432, %1408
  %1434 = trunc i64 %1433 to i32
  %1435 = trunc i64 %1427 to i32
  %1436 = trunc i64 %1431 to i32
  %1437 = ptrtoint ptr %1421 to i32
  %1438 = sub i32 %1437, %1362
  %1439 = ptrtoint ptr %1422 to i32
  %1440 = sub i32 %1439, %1362
  %1441 = getelementptr i32, ptr %1358, i32 %1430
  %1442 = load i32, ptr %1441, align 4
  %1443 = getelementptr i32, ptr %1358, i32 %1434
  %1444 = load i32, ptr %1443, align 4
  %1445 = sub i32 0, %1425
  %1446 = getelementptr i8, ptr %1426, i32 %1445
  %1447 = getelementptr i8, ptr %1360, i32 %1442
  %1448 = getelementptr i8, ptr %1360, i32 %1444
  store i32 %1438, ptr %1441, align 4
  store i32 %1440, ptr %1443, align 4
  %1449 = icmp ne i32 %1425, 0
  %1450 = load i32, ptr %1446, align 1
  %1451 = load i32, ptr %1426, align 1
  %1452 = icmp eq i32 %1450, %1451
  %1453 = and i1 %1449, %1452
  br i1 %1453, label %1454, label %1464

1454:                                             ; preds = %1420
  %1455 = getelementptr i8, ptr %1421, i32 1
  %1456 = load i8, ptr %1455, align 1
  %1457 = getelementptr i8, ptr %1446, i32 -1
  %1458 = load i8, ptr %1457, align 1
  %1459 = icmp eq i8 %1456, %1458
  %1460 = sext i1 %1459 to i32
  %1461 = getelementptr i8, ptr %1426, i32 %1460
  %1462 = getelementptr i8, ptr %1446, i32 %1460
  %1463 = select i1 %1459, i32 5, i32 4
  br label %1505

1464:                                             ; preds = %1420
  %1465 = icmp ugt i32 %1442, %1376
  br i1 %1465, label %1466, label %1469

1466:                                             ; preds = %1464
  %1467 = load i32, ptr %1447, align 1
  %1468 = icmp eq i32 %1467, %1435
  br i1 %1468, label %1481, label %1469

1469:                                             ; preds = %1466, %1464
  %1470 = icmp ugt i32 %1444, %1376
  br i1 %1470, label %1471, label %1474

1471:                                             ; preds = %1469
  %1472 = load i32, ptr %1448, align 1
  %1473 = icmp eq i32 %1472, %1436
  br i1 %1473, label %1481, label %1474

1474:                                             ; preds = %1471, %1469
  %1475 = ptrtoint ptr %1423 to i32
  %1476 = sub i32 %1437, %1475
  %1477 = lshr i32 %1476, 7
  %1478 = add i32 %1410, %1477
  %1479 = getelementptr i8, ptr %1421, i32 %1478
  %1480 = getelementptr i8, ptr %1422, i32 %1478
  br label %1788

1481:                                             ; preds = %1471, %1466
  %1482 = phi i32 [ %1439, %1471 ], [ %1437, %1466 ]
  %1483 = phi ptr [ %1422, %1471 ], [ %1421, %1466 ]
  %1484 = phi ptr [ %1448, %1471 ], [ %1447, %1466 ]
  %1485 = ptrtoint ptr %1484 to i32
  %1486 = sub i32 %1482, %1485
  %1487 = add i32 %1486, 2
  %1488 = icmp ugt ptr %1483, %1423
  %1489 = icmp ugt ptr %1484, %1377
  %1490 = and i1 %1488, %1489
  br i1 %1490, label %1491, label %1505

1491:                                             ; preds = %1500, %1481
  %1492 = phi ptr [ %1497, %1500 ], [ %1484, %1481 ]
  %1493 = phi ptr [ %1495, %1500 ], [ %1483, %1481 ]
  %1494 = phi i32 [ %1501, %1500 ], [ 4, %1481 ]
  %1495 = getelementptr i8, ptr %1493, i32 -1
  %1496 = load i8, ptr %1495, align 1
  %1497 = getelementptr i8, ptr %1492, i32 -1
  %1498 = load i8, ptr %1497, align 1
  %1499 = icmp eq i8 %1496, %1498
  br i1 %1499, label %1500, label %1505

1500:                                             ; preds = %1491
  %1501 = add i32 %1494, 1
  %1502 = icmp ugt ptr %1495, %1423
  %1503 = icmp ugt ptr %1497, %1377
  %1504 = and i1 %1503, %1502
  br i1 %1504, label %1491, label %1505

1505:                                             ; preds = %1500, %1491, %1481, %1454
  %1506 = phi i32 [ %1425, %1454 ], [ %1486, %1481 ], [ %1486, %1491 ], [ %1486, %1500 ]
  %1507 = phi i32 [ %1424, %1454 ], [ %1425, %1481 ], [ %1425, %1491 ], [ %1425, %1500 ]
  %1508 = phi i32 [ %1463, %1454 ], [ 4, %1481 ], [ %1501, %1500 ], [ %1494, %1491 ]
  %1509 = phi ptr [ %1461, %1454 ], [ %1483, %1481 ], [ %1495, %1500 ], [ %1493, %1491 ]
  %1510 = phi ptr [ %1462, %1454 ], [ %1484, %1481 ], [ %1497, %1500 ], [ %1492, %1491 ]
  %1511 = phi i32 [ 0, %1454 ], [ %1487, %1481 ], [ %1487, %1491 ], [ %1487, %1500 ]
  %1512 = getelementptr i8, ptr %1509, i32 %1508
  %1513 = getelementptr i8, ptr %1510, i32 %1508
  %1514 = icmp ugt ptr %1411, %1512
  br i1 %1514, label %1515, label %1541

1515:                                             ; preds = %1505
  %1516 = load i32, ptr %1513, align 1
  %1517 = load i32, ptr %1512, align 1
  %1518 = xor i32 %1517, %1516
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1523, label %1520

1520:                                             ; preds = %1515
  %1521 = tail call i32 @llvm.cttz.i32(i32 %1518, i1 true) #4, !range !8
  %1522 = lshr i32 %1521, 3
  br label %1567

1523:                                             ; preds = %1529, %1515
  %1524 = phi ptr [ %1527, %1529 ], [ %1512, %1515 ]
  %1525 = phi ptr [ %1526, %1529 ], [ %1513, %1515 ]
  %1526 = getelementptr i8, ptr %1525, i32 4
  %1527 = getelementptr i8, ptr %1524, i32 4
  %1528 = icmp ult ptr %1527, %1411
  br i1 %1528, label %1529, label %1541

1529:                                             ; preds = %1523
  %1530 = load i32, ptr %1526, align 1
  %1531 = load i32, ptr %1527, align 1
  %1532 = xor i32 %1531, %1530
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1523, label %1534

1534:                                             ; preds = %1529
  %1535 = tail call i32 @llvm.cttz.i32(i32 %1532, i1 true) #4, !range !8
  %1536 = lshr i32 %1535, 3
  %1537 = getelementptr i8, ptr %1527, i32 %1536
  %1538 = ptrtoint ptr %1537 to i32
  %1539 = ptrtoint ptr %1512 to i32
  %1540 = sub i32 %1538, %1539
  br label %1567

1541:                                             ; preds = %1523, %1505
  %1542 = phi ptr [ %1512, %1505 ], [ %1527, %1523 ]
  %1543 = phi ptr [ %1513, %1505 ], [ %1526, %1523 ]
  %1544 = icmp ult ptr %1542, %1412
  br i1 %1544, label %1545, label %1552

1545:                                             ; preds = %1541
  %1546 = load i16, ptr %1543, align 1
  %1547 = load i16, ptr %1542, align 1
  %1548 = icmp eq i16 %1546, %1547
  br i1 %1548, label %1549, label %1552

1549:                                             ; preds = %1545
  %1550 = getelementptr i8, ptr %1542, i32 2
  %1551 = getelementptr i8, ptr %1543, i32 2
  br label %1552

1552:                                             ; preds = %1549, %1545, %1541
  %1553 = phi ptr [ %1550, %1549 ], [ %1542, %1545 ], [ %1542, %1541 ]
  %1554 = phi ptr [ %1551, %1549 ], [ %1543, %1545 ], [ %1543, %1541 ]
  %1555 = icmp ult ptr %1553, %1378
  br i1 %1555, label %1556, label %1562

1556:                                             ; preds = %1552
  %1557 = load i8, ptr %1554, align 1
  %1558 = load i8, ptr %1553, align 1
  %1559 = icmp eq i8 %1557, %1558
  %1560 = zext i1 %1559 to i32
  %1561 = getelementptr i8, ptr %1553, i32 %1560
  br label %1562

1562:                                             ; preds = %1556, %1552
  %1563 = phi ptr [ %1553, %1552 ], [ %1561, %1556 ]
  %1564 = ptrtoint ptr %1563 to i32
  %1565 = ptrtoint ptr %1512 to i32
  %1566 = sub i32 %1564, %1565
  br label %1567

1567:                                             ; preds = %1562, %1534, %1520
  %1568 = phi i32 [ %1566, %1562 ], [ %1522, %1520 ], [ %1540, %1534 ]
  %1569 = add i32 %1568, %1508
  %1570 = ptrtoint ptr %1509 to i32
  %1571 = ptrtoint ptr %1423 to i32
  %1572 = sub i32 %1570, %1571
  %1573 = add i32 %1569, -3
  %1574 = getelementptr i8, ptr %1423, i32 %1572
  %1575 = icmp ugt ptr %1574, %1413
  %1576 = load ptr, ptr %1414, align 4
  br i1 %1575, label %1598, label %1577

1577:                                             ; preds = %1567
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1576, ptr noundef align 1 dereferenceable(16) %1423, i32 16, i1 false) #4
  %1578 = icmp ugt i32 %1572, 16
  %1579 = load ptr, ptr %1414, align 4
  br i1 %1578, label %1582, label %1580

1580:                                             ; preds = %1577
  %1581 = getelementptr i8, ptr %1579, i32 %1572
  store ptr %1581, ptr %1414, align 4
  br label %1641

1582:                                             ; preds = %1577
  %1583 = getelementptr i8, ptr %1579, i32 16
  %1584 = getelementptr i8, ptr %1423, i32 16
  %1585 = add i32 %1572, -16
  %1586 = getelementptr i8, ptr %1579, i32 %1572
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1583, ptr noundef align 1 dereferenceable(16) %1584, i32 16, i1 false) #4
  %1587 = icmp slt i32 %1585, 17
  br i1 %1587, label %1630, label %1588

1588:                                             ; preds = %1582
  %1589 = getelementptr i8, ptr %1579, i32 32
  br label %1590

1590:                                             ; preds = %1590, %1588
  %1591 = phi ptr [ %1584, %1588 ], [ %1595, %1590 ]
  %1592 = phi ptr [ %1589, %1588 ], [ %1596, %1590 ]
  %1593 = getelementptr i8, ptr %1591, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1592, ptr noundef align 1 dereferenceable(16) %1593, i32 16, i1 false) #4
  %1594 = getelementptr i8, ptr %1592, i32 16
  %1595 = getelementptr i8, ptr %1591, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1594, ptr noundef align 1 dereferenceable(16) %1595, i32 16, i1 false) #4
  %1596 = getelementptr i8, ptr %1592, i32 32
  %1597 = icmp ult ptr %1596, %1586
  br i1 %1597, label %1590, label %1630

1598:                                             ; preds = %1567
  %1599 = ptrtoint ptr %1574 to i32
  %1600 = icmp ult ptr %1413, %1423
  br i1 %1600, label %1615, label %1601

1601:                                             ; preds = %1598
  %1602 = sub i32 %1415, %1571
  %1603 = getelementptr i8, ptr %1576, i32 %1602
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1576, ptr noundef align 1 dereferenceable(16) %1423, i32 16, i1 false) #4
  %1604 = icmp slt i32 %1602, 17
  br i1 %1604, label %1615, label %1605

1605:                                             ; preds = %1601
  %1606 = getelementptr i8, ptr %1576, i32 16
  br label %1607

1607:                                             ; preds = %1607, %1605
  %1608 = phi ptr [ %1423, %1605 ], [ %1612, %1607 ]
  %1609 = phi ptr [ %1606, %1605 ], [ %1613, %1607 ]
  %1610 = getelementptr i8, ptr %1608, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1609, ptr noundef align 1 dereferenceable(16) %1610, i32 16, i1 false) #4
  %1611 = getelementptr i8, ptr %1609, i32 16
  %1612 = getelementptr i8, ptr %1608, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1611, ptr noundef align 1 dereferenceable(16) %1612, i32 16, i1 false) #4
  %1613 = getelementptr i8, ptr %1609, i32 32
  %1614 = icmp ult ptr %1613, %1603
  br i1 %1614, label %1607, label %1615

1615:                                             ; preds = %1607, %1601, %1598
  %1616 = phi ptr [ %1413, %1601 ], [ %1423, %1598 ], [ %1413, %1607 ]
  %1617 = phi ptr [ %1603, %1601 ], [ %1576, %1598 ], [ %1603, %1607 ]
  %1618 = icmp ult ptr %1616, %1574
  br i1 %1618, label %1619, label %1630

1619:                                             ; preds = %1615
  %1620 = ptrtoint ptr %1616 to i32
  %1621 = sub i32 %1599, %1620
  %1622 = getelementptr i8, ptr %1616, i32 %1621
  br label %1623

1623:                                             ; preds = %1623, %1619
  %1624 = phi ptr [ %1628, %1623 ], [ %1617, %1619 ]
  %1625 = phi ptr [ %1626, %1623 ], [ %1616, %1619 ]
  %1626 = getelementptr i8, ptr %1625, i32 1
  %1627 = load i8, ptr %1625, align 1
  %1628 = getelementptr i8, ptr %1624, i32 1
  store i8 %1627, ptr %1624, align 1
  %1629 = icmp eq ptr %1626, %1622
  br i1 %1629, label %1630, label %1623

1630:                                             ; preds = %1623, %1615, %1590, %1582
  %1631 = load ptr, ptr %1414, align 4
  %1632 = getelementptr i8, ptr %1631, i32 %1572
  store ptr %1632, ptr %1414, align 4
  %1633 = icmp ugt i32 %1572, 65535
  br i1 %1633, label %1634, label %1641

1634:                                             ; preds = %1630
  store i32 1, ptr %1416, align 4
  %1635 = load ptr, ptr %1417, align 4
  %1636 = load ptr, ptr %1, align 4
  %1637 = ptrtoint ptr %1635 to i32
  %1638 = ptrtoint ptr %1636 to i32
  %1639 = sub i32 %1637, %1638
  %1640 = ashr exact i32 %1639, 3
  store i32 %1640, ptr %1418, align 4
  br label %1641

1641:                                             ; preds = %1634, %1630, %1580
  %1642 = trunc i32 %1572 to i16
  %1643 = load ptr, ptr %1417, align 4
  %1644 = getelementptr inbounds %struct.seqDef_s, ptr %1643, i32 0, i32 1
  store i16 %1642, ptr %1644, align 4
  %1645 = add i32 %1511, 1
  %1646 = load ptr, ptr %1417, align 4
  store i32 %1645, ptr %1646, align 4
  %1647 = icmp ugt i32 %1573, 65535
  br i1 %1647, label %1650, label %1648

1648:                                             ; preds = %1641
  %1649 = load ptr, ptr %1417, align 4
  br label %1657

1650:                                             ; preds = %1641
  store i32 2, ptr %1416, align 4
  %1651 = load ptr, ptr %1417, align 4
  %1652 = load ptr, ptr %1, align 4
  %1653 = ptrtoint ptr %1651 to i32
  %1654 = ptrtoint ptr %1652 to i32
  %1655 = sub i32 %1653, %1654
  %1656 = ashr exact i32 %1655, 3
  store i32 %1656, ptr %1418, align 4
  br label %1657

1657:                                             ; preds = %1650, %1648
  %1658 = phi ptr [ %1649, %1648 ], [ %1651, %1650 ]
  %1659 = trunc i32 %1573 to i16
  %1660 = getelementptr inbounds %struct.seqDef_s, ptr %1658, i32 0, i32 2
  store i16 %1659, ptr %1660, align 2
  %1661 = load ptr, ptr %1417, align 4
  %1662 = getelementptr %struct.seqDef_s, ptr %1661, i32 1
  store ptr %1662, ptr %1417, align 4
  %1663 = getelementptr i8, ptr %1509, i32 %1569
  %1664 = icmp ugt ptr %1663, %1379
  br i1 %1664, label %1783, label %1665

1665:                                             ; preds = %1657
  %1666 = add i32 %1438, 2
  %1667 = getelementptr i8, ptr %1419, i32 %1438
  %1668 = load i64, ptr %1667, align 1
  %1669 = mul i64 %1668, -3523014627193167104
  %1670 = lshr i64 %1669, %1408
  %1671 = trunc i64 %1670 to i32
  %1672 = getelementptr i32, ptr %1358, i32 %1671
  store i32 %1666, ptr %1672, align 4
  %1673 = getelementptr i8, ptr %1663, i32 -2
  %1674 = load i64, ptr %1673, align 1
  %1675 = mul i64 %1674, -3523014627193167104
  %1676 = lshr i64 %1675, %1408
  %1677 = trunc i64 %1676 to i32
  %1678 = ptrtoint ptr %1673 to i32
  %1679 = sub i32 %1678, %1362
  %1680 = getelementptr i32, ptr %1358, i32 %1677
  store i32 %1679, ptr %1680, align 4
  %1681 = icmp eq i32 %1507, 0
  br i1 %1681, label %1783, label %1682

1682:                                             ; preds = %1776, %1665
  %1683 = phi ptr [ %1757, %1776 ], [ %1663, %1665 ]
  %1684 = phi i32 [ %1685, %1776 ], [ %1507, %1665 ]
  %1685 = phi i32 [ %1684, %1776 ], [ %1506, %1665 ]
  %1686 = load i32, ptr %1683, align 1
  %1687 = sub i32 0, %1684
  %1688 = getelementptr i8, ptr %1683, i32 %1687
  %1689 = load i32, ptr %1688, align 1
  %1690 = icmp eq i32 %1686, %1689
  br i1 %1690, label %1691, label %1783

1691:                                             ; preds = %1682
  %1692 = getelementptr i8, ptr %1683, i32 4
  %1693 = getelementptr i8, ptr %1692, i32 %1687
  %1694 = icmp ugt ptr %1411, %1692
  br i1 %1694, label %1695, label %1721

1695:                                             ; preds = %1691
  %1696 = load i32, ptr %1693, align 1
  %1697 = load i32, ptr %1692, align 1
  %1698 = xor i32 %1697, %1696
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1703, label %1700

1700:                                             ; preds = %1695
  %1701 = tail call i32 @llvm.cttz.i32(i32 %1698, i1 true) #4, !range !8
  %1702 = lshr i32 %1701, 3
  br label %1747

1703:                                             ; preds = %1709, %1695
  %1704 = phi ptr [ %1707, %1709 ], [ %1692, %1695 ]
  %1705 = phi ptr [ %1706, %1709 ], [ %1693, %1695 ]
  %1706 = getelementptr i8, ptr %1705, i32 4
  %1707 = getelementptr i8, ptr %1704, i32 4
  %1708 = icmp ult ptr %1707, %1411
  br i1 %1708, label %1709, label %1721

1709:                                             ; preds = %1703
  %1710 = load i32, ptr %1706, align 1
  %1711 = load i32, ptr %1707, align 1
  %1712 = xor i32 %1711, %1710
  %1713 = icmp eq i32 %1712, 0
  br i1 %1713, label %1703, label %1714

1714:                                             ; preds = %1709
  %1715 = tail call i32 @llvm.cttz.i32(i32 %1712, i1 true) #4, !range !8
  %1716 = lshr i32 %1715, 3
  %1717 = getelementptr i8, ptr %1707, i32 %1716
  %1718 = ptrtoint ptr %1717 to i32
  %1719 = ptrtoint ptr %1692 to i32
  %1720 = sub i32 %1718, %1719
  br label %1747

1721:                                             ; preds = %1703, %1691
  %1722 = phi ptr [ %1692, %1691 ], [ %1707, %1703 ]
  %1723 = phi ptr [ %1693, %1691 ], [ %1706, %1703 ]
  %1724 = icmp ult ptr %1722, %1412
  br i1 %1724, label %1725, label %1732

1725:                                             ; preds = %1721
  %1726 = load i16, ptr %1723, align 1
  %1727 = load i16, ptr %1722, align 1
  %1728 = icmp eq i16 %1726, %1727
  br i1 %1728, label %1729, label %1732

1729:                                             ; preds = %1725
  %1730 = getelementptr i8, ptr %1722, i32 2
  %1731 = getelementptr i8, ptr %1723, i32 2
  br label %1732

1732:                                             ; preds = %1729, %1725, %1721
  %1733 = phi ptr [ %1730, %1729 ], [ %1722, %1725 ], [ %1722, %1721 ]
  %1734 = phi ptr [ %1731, %1729 ], [ %1723, %1725 ], [ %1723, %1721 ]
  %1735 = icmp ult ptr %1733, %1378
  br i1 %1735, label %1736, label %1742

1736:                                             ; preds = %1732
  %1737 = load i8, ptr %1734, align 1
  %1738 = load i8, ptr %1733, align 1
  %1739 = icmp eq i8 %1737, %1738
  %1740 = zext i1 %1739 to i32
  %1741 = getelementptr i8, ptr %1733, i32 %1740
  br label %1742

1742:                                             ; preds = %1736, %1732
  %1743 = phi ptr [ %1733, %1732 ], [ %1741, %1736 ]
  %1744 = ptrtoint ptr %1743 to i32
  %1745 = ptrtoint ptr %1692 to i32
  %1746 = sub i32 %1744, %1745
  br label %1747

1747:                                             ; preds = %1742, %1714, %1700
  %1748 = phi i32 [ %1746, %1742 ], [ %1702, %1700 ], [ %1720, %1714 ]
  %1749 = add i32 %1748, 4
  %1750 = ptrtoint ptr %1683 to i32
  %1751 = sub i32 %1750, %1362
  %1752 = load i64, ptr %1683, align 1
  %1753 = mul i64 %1752, -3523014627193167104
  %1754 = lshr i64 %1753, %1408
  %1755 = trunc i64 %1754 to i32
  %1756 = getelementptr i32, ptr %1358, i32 %1755
  store i32 %1751, ptr %1756, align 4
  %1757 = getelementptr i8, ptr %1683, i32 %1749
  %1758 = add i32 %1748, 1
  %1759 = icmp ugt ptr %1683, %1413
  br i1 %1759, label %1762, label %1760

1760:                                             ; preds = %1747
  %1761 = load ptr, ptr %1414, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1761, ptr noundef align 1 dereferenceable(16) %1683, i32 16, i1 false) #4
  br label %1762

1762:                                             ; preds = %1760, %1747
  %1763 = load ptr, ptr %1417, align 4
  %1764 = getelementptr inbounds %struct.seqDef_s, ptr %1763, i32 0, i32 1
  store i16 0, ptr %1764, align 4
  %1765 = load ptr, ptr %1417, align 4
  store i32 1, ptr %1765, align 4
  %1766 = icmp ugt i32 %1758, 65535
  br i1 %1766, label %1769, label %1767

1767:                                             ; preds = %1762
  %1768 = load ptr, ptr %1417, align 4
  br label %1776

1769:                                             ; preds = %1762
  store i32 2, ptr %1416, align 4
  %1770 = load ptr, ptr %1417, align 4
  %1771 = load ptr, ptr %1, align 4
  %1772 = ptrtoint ptr %1770 to i32
  %1773 = ptrtoint ptr %1771 to i32
  %1774 = sub i32 %1772, %1773
  %1775 = ashr exact i32 %1774, 3
  store i32 %1775, ptr %1418, align 4
  br label %1776

1776:                                             ; preds = %1769, %1767
  %1777 = phi ptr [ %1768, %1767 ], [ %1770, %1769 ]
  %1778 = trunc i32 %1758 to i16
  %1779 = getelementptr inbounds %struct.seqDef_s, ptr %1777, i32 0, i32 2
  store i16 %1778, ptr %1779, align 2
  %1780 = load ptr, ptr %1417, align 4
  %1781 = getelementptr %struct.seqDef_s, ptr %1780, i32 1
  store ptr %1781, ptr %1417, align 4
  %1782 = icmp ugt ptr %1757, %1379
  br i1 %1782, label %1783, label %1682

1783:                                             ; preds = %1776, %1682, %1665, %1657
  %1784 = phi i32 [ %1506, %1665 ], [ %1506, %1657 ], [ %1684, %1776 ], [ %1685, %1682 ]
  %1785 = phi i32 [ 0, %1665 ], [ %1507, %1657 ], [ %1685, %1776 ], [ %1684, %1682 ]
  %1786 = phi ptr [ %1663, %1665 ], [ %1663, %1657 ], [ %1757, %1776 ], [ %1683, %1682 ]
  %1787 = getelementptr i8, ptr %1786, i32 1
  br label %1788

1788:                                             ; preds = %1783, %1474
  %1789 = phi i32 [ %1784, %1783 ], [ %1425, %1474 ]
  %1790 = phi i32 [ %1785, %1783 ], [ %1424, %1474 ]
  %1791 = phi ptr [ %1786, %1783 ], [ %1423, %1474 ]
  %1792 = phi ptr [ %1787, %1783 ], [ %1480, %1474 ]
  %1793 = phi ptr [ %1786, %1783 ], [ %1479, %1474 ]
  %1794 = icmp ult ptr %1792, %1379
  br i1 %1794, label %1420, label %1795

1795:                                             ; preds = %1788
  %1796 = ptrtoint ptr %1791 to i32
  br label %1797

1797:                                             ; preds = %1795, %1355
  %1798 = phi i32 [ %1796, %1795 ], [ %1361, %1355 ]
  %1799 = phi i32 [ %1789, %1795 ], [ %1398, %1355 ]
  %1800 = phi i32 [ %1790, %1795 ], [ %1396, %1355 ]
  %1801 = select i1 %1395, i32 %1382, i32 0
  %1802 = select i1 %1397, i32 %1380, i32 %1801
  %1803 = icmp eq i32 %1799, 0
  %1804 = select i1 %1803, i32 %1802, i32 %1799
  store i32 %1804, ptr %2, align 4
  %1805 = icmp eq i32 %1800, 0
  %1806 = select i1 %1805, i32 %1802, i32 %1800
  store i32 %1806, ptr %1381, align 4
  br label %1807

1807:                                             ; preds = %1797, %1345, %893, %441
  %1808 = phi ptr [ %1378, %1797 ], [ %926, %1345 ], [ %474, %893 ], [ %31, %441 ]
  %1809 = phi i32 [ %1798, %1797 ], [ %1346, %1345 ], [ %894, %893 ], [ %442, %441 ]
  %1810 = ptrtoint ptr %1808 to i32
  %1811 = sub i32 %1810, %1809
  ret i32 %1811
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_fast_dictMatchState(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 4
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 7, label %2906
    i32 5, label %968
    i32 6, label %1937
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = add i32 %12, %14
  %16 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = getelementptr i8, ptr %3, i32 %4
  %22 = getelementptr i8, ptr %21, i32 -8
  %23 = load i32, ptr %2, align 4
  %24 = getelementptr i32, ptr %2, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ZSTD_window_t, ptr %27, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ZSTD_window_t, ptr %27, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 %31
  %35 = load ptr, ptr %27, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = ptrtoint ptr %33 to i32
  %38 = sub i32 %37, %36
  %39 = add i32 %38, %19
  %40 = ptrtoint ptr %3 to i32
  %41 = ptrtoint ptr %20 to i32
  %42 = sub i32 %40, %41
  %43 = getelementptr i8, ptr %35, i32 %42
  %44 = ptrtoint ptr %17 to i32
  %45 = icmp eq ptr %43, %34
  %46 = zext i1 %45 to i32
  %47 = getelementptr i8, ptr %3, i32 %46
  %48 = icmp ult ptr %47, %22
  br i1 %48, label %49, label %964

49:                                               ; preds = %8
  %50 = sub i32 0, %39
  %51 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %27, i32 0, i32 10, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 32, %54
  %56 = add i32 %19, -1
  %57 = sub i32 32, %52
  %58 = getelementptr i8, ptr %21, i32 -3
  %59 = getelementptr i8, ptr %21, i32 -1
  %60 = getelementptr i8, ptr %21, i32 -32
  %61 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %60 to i32
  %63 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %64 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %65 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %66 = getelementptr i8, ptr %33, i32 %50
  %67 = getelementptr i8, ptr %17, i32 2
  br label %68

68:                                               ; preds = %956, %49
  %69 = phi ptr [ %47, %49 ], [ %960, %956 ]
  %70 = phi ptr [ %3, %49 ], [ %959, %956 ]
  %71 = phi i32 [ %25, %49 ], [ %958, %956 ]
  %72 = phi i32 [ %23, %49 ], [ %957, %956 ]
  %73 = load i32, ptr %69, align 1
  %74 = mul i32 %73, -1640531535
  %75 = lshr i32 %74, %55
  %76 = ptrtoint ptr %69 to i32
  %77 = sub i32 %76, %44
  %78 = getelementptr i32, ptr %10, i32 %75
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %17, i32 %79
  %81 = sub i32 1, %72
  %82 = add i32 %81, %77
  %83 = icmp ult i32 %82, %19
  %84 = sub i32 %82, %39
  %85 = getelementptr i8, ptr %33, i32 %84
  %86 = getelementptr i8, ptr %17, i32 %82
  %87 = select i1 %83, ptr %85, ptr %86
  store i32 %77, ptr %78, align 4
  %88 = sub i32 %56, %82
  %89 = icmp ugt i32 %88, 2
  br i1 %89, label %90, label %311

90:                                               ; preds = %68
  %91 = load i32, ptr %87, align 1
  %92 = getelementptr i8, ptr %69, i32 1
  %93 = load i32, ptr %92, align 1
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %311

95:                                               ; preds = %90
  %96 = select i1 %83, ptr %35, ptr %21
  %97 = getelementptr i8, ptr %69, i32 5
  %98 = getelementptr i8, ptr %87, i32 4
  %99 = ptrtoint ptr %96 to i32
  %100 = ptrtoint ptr %98 to i32
  %101 = sub i32 %99, %100
  %102 = getelementptr i8, ptr %97, i32 %101
  %103 = icmp ult ptr %102, %21
  %104 = select i1 %103, ptr %102, ptr %21
  %105 = getelementptr i8, ptr %104, i32 -3
  %106 = icmp ugt ptr %105, %97
  br i1 %106, label %107, label %133

107:                                              ; preds = %95
  %108 = load i32, ptr %98, align 1
  %109 = load i32, ptr %97, align 1
  %110 = xor i32 %109, %108
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = tail call i32 @llvm.cttz.i32(i32 %110, i1 true) #4, !range !8
  %114 = lshr i32 %113, 3
  br label %160

115:                                              ; preds = %121, %107
  %116 = phi ptr [ %119, %121 ], [ %97, %107 ]
  %117 = phi ptr [ %118, %121 ], [ %98, %107 ]
  %118 = getelementptr i8, ptr %117, i32 4
  %119 = getelementptr i8, ptr %116, i32 4
  %120 = icmp ult ptr %119, %105
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = load i32, ptr %118, align 1
  %123 = load i32, ptr %119, align 1
  %124 = xor i32 %123, %122
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %115, label %126

126:                                              ; preds = %121
  %127 = tail call i32 @llvm.cttz.i32(i32 %124, i1 true) #4, !range !8
  %128 = lshr i32 %127, 3
  %129 = getelementptr i8, ptr %119, i32 %128
  %130 = ptrtoint ptr %129 to i32
  %131 = ptrtoint ptr %97 to i32
  %132 = sub i32 %130, %131
  br label %160

133:                                              ; preds = %115, %95
  %134 = phi ptr [ %97, %95 ], [ %119, %115 ]
  %135 = phi ptr [ %98, %95 ], [ %118, %115 ]
  %136 = getelementptr i8, ptr %104, i32 -1
  %137 = icmp ult ptr %134, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i16, ptr %135, align 1
  %140 = load i16, ptr %134, align 1
  %141 = icmp eq i16 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = getelementptr i8, ptr %134, i32 2
  %144 = getelementptr i8, ptr %135, i32 2
  br label %145

145:                                              ; preds = %142, %138, %133
  %146 = phi ptr [ %143, %142 ], [ %134, %138 ], [ %134, %133 ]
  %147 = phi ptr [ %144, %142 ], [ %135, %138 ], [ %135, %133 ]
  %148 = icmp ult ptr %146, %104
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i8, ptr %147, align 1
  %151 = load i8, ptr %146, align 1
  %152 = icmp eq i8 %150, %151
  %153 = zext i1 %152 to i32
  %154 = getelementptr i8, ptr %146, i32 %153
  br label %155

155:                                              ; preds = %149, %145
  %156 = phi ptr [ %146, %145 ], [ %154, %149 ]
  %157 = ptrtoint ptr %156 to i32
  %158 = ptrtoint ptr %97 to i32
  %159 = sub i32 %157, %158
  br label %160

160:                                              ; preds = %155, %126, %112
  %161 = phi i32 [ %159, %155 ], [ %114, %112 ], [ %132, %126 ]
  %162 = getelementptr i8, ptr %98, i32 %161
  %163 = icmp eq ptr %162, %96
  br i1 %163, label %164, label %222

164:                                              ; preds = %160
  %165 = getelementptr i8, ptr %97, i32 %161
  %166 = icmp ugt ptr %58, %165
  br i1 %166, label %167, label %193

167:                                              ; preds = %164
  %168 = load i32, ptr %20, align 1
  %169 = load i32, ptr %165, align 1
  %170 = xor i32 %169, %168
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = tail call i32 @llvm.cttz.i32(i32 %170, i1 true) #4, !range !8
  %174 = lshr i32 %173, 3
  br label %219

175:                                              ; preds = %181, %167
  %176 = phi ptr [ %179, %181 ], [ %165, %167 ]
  %177 = phi ptr [ %178, %181 ], [ %20, %167 ]
  %178 = getelementptr i8, ptr %177, i32 4
  %179 = getelementptr i8, ptr %176, i32 4
  %180 = icmp ult ptr %179, %58
  br i1 %180, label %181, label %193

181:                                              ; preds = %175
  %182 = load i32, ptr %178, align 1
  %183 = load i32, ptr %179, align 1
  %184 = xor i32 %183, %182
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %175, label %186

186:                                              ; preds = %181
  %187 = tail call i32 @llvm.cttz.i32(i32 %184, i1 true) #4, !range !8
  %188 = lshr i32 %187, 3
  %189 = getelementptr i8, ptr %179, i32 %188
  %190 = ptrtoint ptr %189 to i32
  %191 = ptrtoint ptr %165 to i32
  %192 = sub i32 %190, %191
  br label %219

193:                                              ; preds = %175, %164
  %194 = phi ptr [ %165, %164 ], [ %179, %175 ]
  %195 = phi ptr [ %20, %164 ], [ %178, %175 ]
  %196 = icmp ult ptr %194, %59
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = load i16, ptr %195, align 1
  %199 = load i16, ptr %194, align 1
  %200 = icmp eq i16 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = getelementptr i8, ptr %194, i32 2
  %203 = getelementptr i8, ptr %195, i32 2
  br label %204

204:                                              ; preds = %201, %197, %193
  %205 = phi ptr [ %202, %201 ], [ %194, %197 ], [ %194, %193 ]
  %206 = phi ptr [ %203, %201 ], [ %195, %197 ], [ %195, %193 ]
  %207 = icmp ult ptr %205, %21
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load i8, ptr %206, align 1
  %210 = load i8, ptr %205, align 1
  %211 = icmp eq i8 %209, %210
  %212 = zext i1 %211 to i32
  %213 = getelementptr i8, ptr %205, i32 %212
  br label %214

214:                                              ; preds = %208, %204
  %215 = phi ptr [ %205, %204 ], [ %213, %208 ]
  %216 = ptrtoint ptr %215 to i32
  %217 = ptrtoint ptr %165 to i32
  %218 = sub i32 %216, %217
  br label %219

219:                                              ; preds = %214, %186, %172
  %220 = phi i32 [ %218, %214 ], [ %174, %172 ], [ %192, %186 ]
  %221 = add i32 %220, %161
  br label %222

222:                                              ; preds = %219, %160
  %223 = phi i32 [ %221, %219 ], [ %161, %160 ]
  %224 = add i32 %223, 4
  %225 = ptrtoint ptr %92 to i32
  %226 = ptrtoint ptr %70 to i32
  %227 = sub i32 %225, %226
  %228 = add i32 %223, 1
  %229 = getelementptr i8, ptr %70, i32 %227
  %230 = icmp ugt ptr %229, %60
  %231 = load ptr, ptr %61, align 4
  br i1 %230, label %253, label %232

232:                                              ; preds = %222
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %231, ptr noundef align 1 dereferenceable(16) %70, i32 16, i1 false) #4
  %233 = icmp ugt i32 %227, 16
  %234 = load ptr, ptr %61, align 4
  br i1 %233, label %237, label %235

235:                                              ; preds = %232
  %236 = getelementptr i8, ptr %234, i32 %227
  store ptr %236, ptr %61, align 4
  br label %296

237:                                              ; preds = %232
  %238 = getelementptr i8, ptr %234, i32 16
  %239 = getelementptr i8, ptr %70, i32 16
  %240 = add i32 %227, -16
  %241 = getelementptr i8, ptr %234, i32 %227
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %238, ptr noundef align 1 dereferenceable(16) %239, i32 16, i1 false) #4
  %242 = icmp slt i32 %240, 17
  br i1 %242, label %285, label %243

243:                                              ; preds = %237
  %244 = getelementptr i8, ptr %234, i32 32
  br label %245

245:                                              ; preds = %245, %243
  %246 = phi ptr [ %239, %243 ], [ %250, %245 ]
  %247 = phi ptr [ %244, %243 ], [ %251, %245 ]
  %248 = getelementptr i8, ptr %246, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %247, ptr noundef align 1 dereferenceable(16) %248, i32 16, i1 false) #4
  %249 = getelementptr i8, ptr %247, i32 16
  %250 = getelementptr i8, ptr %246, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %249, ptr noundef align 1 dereferenceable(16) %250, i32 16, i1 false) #4
  %251 = getelementptr i8, ptr %247, i32 32
  %252 = icmp ult ptr %251, %241
  br i1 %252, label %245, label %285

253:                                              ; preds = %222
  %254 = ptrtoint ptr %229 to i32
  %255 = icmp ult ptr %60, %70
  br i1 %255, label %270, label %256

256:                                              ; preds = %253
  %257 = sub i32 %62, %226
  %258 = getelementptr i8, ptr %231, i32 %257
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %231, ptr noundef align 1 dereferenceable(16) %70, i32 16, i1 false) #4
  %259 = icmp slt i32 %257, 17
  br i1 %259, label %270, label %260

260:                                              ; preds = %256
  %261 = getelementptr i8, ptr %231, i32 16
  br label %262

262:                                              ; preds = %262, %260
  %263 = phi ptr [ %70, %260 ], [ %267, %262 ]
  %264 = phi ptr [ %261, %260 ], [ %268, %262 ]
  %265 = getelementptr i8, ptr %263, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %264, ptr noundef align 1 dereferenceable(16) %265, i32 16, i1 false) #4
  %266 = getelementptr i8, ptr %264, i32 16
  %267 = getelementptr i8, ptr %263, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %266, ptr noundef align 1 dereferenceable(16) %267, i32 16, i1 false) #4
  %268 = getelementptr i8, ptr %264, i32 32
  %269 = icmp ult ptr %268, %258
  br i1 %269, label %262, label %270

270:                                              ; preds = %262, %256, %253
  %271 = phi ptr [ %60, %256 ], [ %70, %253 ], [ %60, %262 ]
  %272 = phi ptr [ %258, %256 ], [ %231, %253 ], [ %258, %262 ]
  %273 = icmp ult ptr %271, %229
  br i1 %273, label %274, label %285

274:                                              ; preds = %270
  %275 = ptrtoint ptr %271 to i32
  %276 = sub i32 %254, %275
  %277 = getelementptr i8, ptr %271, i32 %276
  br label %278

278:                                              ; preds = %278, %274
  %279 = phi ptr [ %283, %278 ], [ %272, %274 ]
  %280 = phi ptr [ %281, %278 ], [ %271, %274 ]
  %281 = getelementptr i8, ptr %280, i32 1
  %282 = load i8, ptr %280, align 1
  %283 = getelementptr i8, ptr %279, i32 1
  store i8 %282, ptr %279, align 1
  %284 = icmp eq ptr %281, %277
  br i1 %284, label %285, label %278

285:                                              ; preds = %278, %270, %245, %237
  %286 = load ptr, ptr %61, align 4
  %287 = getelementptr i8, ptr %286, i32 %227
  store ptr %287, ptr %61, align 4
  %288 = icmp ugt i32 %227, 65535
  br i1 %288, label %289, label %296

289:                                              ; preds = %285
  store i32 1, ptr %63, align 4
  %290 = load ptr, ptr %64, align 4
  %291 = load ptr, ptr %1, align 4
  %292 = ptrtoint ptr %290 to i32
  %293 = ptrtoint ptr %291 to i32
  %294 = sub i32 %292, %293
  %295 = ashr exact i32 %294, 3
  store i32 %295, ptr %65, align 4
  br label %296

296:                                              ; preds = %289, %285, %235
  %297 = trunc i32 %227 to i16
  %298 = load ptr, ptr %64, align 4
  %299 = getelementptr inbounds %struct.seqDef_s, ptr %298, i32 0, i32 1
  store i16 %297, ptr %299, align 4
  %300 = load ptr, ptr %64, align 4
  store i32 1, ptr %300, align 4
  %301 = icmp ugt i32 %228, 65535
  br i1 %301, label %304, label %302

302:                                              ; preds = %296
  %303 = load ptr, ptr %64, align 4
  br label %753

304:                                              ; preds = %296
  store i32 2, ptr %63, align 4
  %305 = load ptr, ptr %64, align 4
  %306 = load ptr, ptr %1, align 4
  %307 = ptrtoint ptr %305 to i32
  %308 = ptrtoint ptr %306 to i32
  %309 = sub i32 %307, %308
  %310 = ashr exact i32 %309, 3
  store i32 %310, ptr %65, align 4
  br label %753

311:                                              ; preds = %90, %68
  %312 = icmp ugt i32 %79, %19
  br i1 %312, label %571, label %313

313:                                              ; preds = %311
  %314 = load i32, ptr %69, align 1
  %315 = mul i32 %314, -1640531535
  %316 = lshr i32 %315, %57
  %317 = getelementptr i32, ptr %29, i32 %316
  %318 = load i32, ptr %317, align 4
  %319 = getelementptr i8, ptr %33, i32 %318
  %320 = icmp ugt i32 %318, %31
  br i1 %320, label %321, label %565

321:                                              ; preds = %313
  %322 = load i32, ptr %319, align 1
  %323 = icmp eq i32 %322, %314
  br i1 %323, label %324, label %565

324:                                              ; preds = %321
  %325 = add i32 %39, %318
  %326 = sub i32 %77, %325
  %327 = getelementptr i8, ptr %69, i32 4
  %328 = getelementptr i8, ptr %319, i32 4
  %329 = ptrtoint ptr %328 to i32
  %330 = sub i32 %36, %329
  %331 = getelementptr i8, ptr %327, i32 %330
  %332 = icmp ult ptr %331, %21
  %333 = select i1 %332, ptr %331, ptr %21
  %334 = getelementptr i8, ptr %333, i32 -3
  %335 = icmp ugt ptr %334, %327
  br i1 %335, label %336, label %362

336:                                              ; preds = %324
  %337 = load i32, ptr %328, align 1
  %338 = load i32, ptr %327, align 1
  %339 = xor i32 %338, %337
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %336
  %342 = tail call i32 @llvm.cttz.i32(i32 %339, i1 true) #4, !range !8
  %343 = lshr i32 %342, 3
  br label %389

344:                                              ; preds = %350, %336
  %345 = phi ptr [ %348, %350 ], [ %327, %336 ]
  %346 = phi ptr [ %347, %350 ], [ %328, %336 ]
  %347 = getelementptr i8, ptr %346, i32 4
  %348 = getelementptr i8, ptr %345, i32 4
  %349 = icmp ult ptr %348, %334
  br i1 %349, label %350, label %362

350:                                              ; preds = %344
  %351 = load i32, ptr %347, align 1
  %352 = load i32, ptr %348, align 1
  %353 = xor i32 %352, %351
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %344, label %355

355:                                              ; preds = %350
  %356 = tail call i32 @llvm.cttz.i32(i32 %353, i1 true) #4, !range !8
  %357 = lshr i32 %356, 3
  %358 = getelementptr i8, ptr %348, i32 %357
  %359 = ptrtoint ptr %358 to i32
  %360 = ptrtoint ptr %327 to i32
  %361 = sub i32 %359, %360
  br label %389

362:                                              ; preds = %344, %324
  %363 = phi ptr [ %327, %324 ], [ %348, %344 ]
  %364 = phi ptr [ %328, %324 ], [ %347, %344 ]
  %365 = getelementptr i8, ptr %333, i32 -1
  %366 = icmp ult ptr %363, %365
  br i1 %366, label %367, label %374

367:                                              ; preds = %362
  %368 = load i16, ptr %364, align 1
  %369 = load i16, ptr %363, align 1
  %370 = icmp eq i16 %368, %369
  br i1 %370, label %371, label %374

371:                                              ; preds = %367
  %372 = getelementptr i8, ptr %363, i32 2
  %373 = getelementptr i8, ptr %364, i32 2
  br label %374

374:                                              ; preds = %371, %367, %362
  %375 = phi ptr [ %372, %371 ], [ %363, %367 ], [ %363, %362 ]
  %376 = phi ptr [ %373, %371 ], [ %364, %367 ], [ %364, %362 ]
  %377 = icmp ult ptr %375, %333
  br i1 %377, label %378, label %384

378:                                              ; preds = %374
  %379 = load i8, ptr %376, align 1
  %380 = load i8, ptr %375, align 1
  %381 = icmp eq i8 %379, %380
  %382 = zext i1 %381 to i32
  %383 = getelementptr i8, ptr %375, i32 %382
  br label %384

384:                                              ; preds = %378, %374
  %385 = phi ptr [ %375, %374 ], [ %383, %378 ]
  %386 = ptrtoint ptr %385 to i32
  %387 = ptrtoint ptr %327 to i32
  %388 = sub i32 %386, %387
  br label %389

389:                                              ; preds = %384, %355, %341
  %390 = phi i32 [ %388, %384 ], [ %343, %341 ], [ %361, %355 ]
  %391 = getelementptr i8, ptr %328, i32 %390
  %392 = icmp eq ptr %391, %35
  br i1 %392, label %393, label %451

393:                                              ; preds = %389
  %394 = getelementptr i8, ptr %327, i32 %390
  %395 = icmp ugt ptr %58, %394
  br i1 %395, label %396, label %422

396:                                              ; preds = %393
  %397 = load i32, ptr %20, align 1
  %398 = load i32, ptr %394, align 1
  %399 = xor i32 %398, %397
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %404, label %401

401:                                              ; preds = %396
  %402 = tail call i32 @llvm.cttz.i32(i32 %399, i1 true) #4, !range !8
  %403 = lshr i32 %402, 3
  br label %448

404:                                              ; preds = %410, %396
  %405 = phi ptr [ %408, %410 ], [ %394, %396 ]
  %406 = phi ptr [ %407, %410 ], [ %20, %396 ]
  %407 = getelementptr i8, ptr %406, i32 4
  %408 = getelementptr i8, ptr %405, i32 4
  %409 = icmp ult ptr %408, %58
  br i1 %409, label %410, label %422

410:                                              ; preds = %404
  %411 = load i32, ptr %407, align 1
  %412 = load i32, ptr %408, align 1
  %413 = xor i32 %412, %411
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %404, label %415

415:                                              ; preds = %410
  %416 = tail call i32 @llvm.cttz.i32(i32 %413, i1 true) #4, !range !8
  %417 = lshr i32 %416, 3
  %418 = getelementptr i8, ptr %408, i32 %417
  %419 = ptrtoint ptr %418 to i32
  %420 = ptrtoint ptr %394 to i32
  %421 = sub i32 %419, %420
  br label %448

422:                                              ; preds = %404, %393
  %423 = phi ptr [ %394, %393 ], [ %408, %404 ]
  %424 = phi ptr [ %20, %393 ], [ %407, %404 ]
  %425 = icmp ult ptr %423, %59
  br i1 %425, label %426, label %433

426:                                              ; preds = %422
  %427 = load i16, ptr %424, align 1
  %428 = load i16, ptr %423, align 1
  %429 = icmp eq i16 %427, %428
  br i1 %429, label %430, label %433

430:                                              ; preds = %426
  %431 = getelementptr i8, ptr %423, i32 2
  %432 = getelementptr i8, ptr %424, i32 2
  br label %433

433:                                              ; preds = %430, %426, %422
  %434 = phi ptr [ %431, %430 ], [ %423, %426 ], [ %423, %422 ]
  %435 = phi ptr [ %432, %430 ], [ %424, %426 ], [ %424, %422 ]
  %436 = icmp ult ptr %434, %21
  br i1 %436, label %437, label %443

437:                                              ; preds = %433
  %438 = load i8, ptr %435, align 1
  %439 = load i8, ptr %434, align 1
  %440 = icmp eq i8 %438, %439
  %441 = zext i1 %440 to i32
  %442 = getelementptr i8, ptr %434, i32 %441
  br label %443

443:                                              ; preds = %437, %433
  %444 = phi ptr [ %434, %433 ], [ %442, %437 ]
  %445 = ptrtoint ptr %444 to i32
  %446 = ptrtoint ptr %394 to i32
  %447 = sub i32 %445, %446
  br label %448

448:                                              ; preds = %443, %415, %401
  %449 = phi i32 [ %447, %443 ], [ %403, %401 ], [ %421, %415 ]
  %450 = add i32 %449, %390
  br label %451

451:                                              ; preds = %448, %389
  %452 = phi i32 [ %450, %448 ], [ %390, %389 ]
  %453 = add i32 %452, 4
  %454 = icmp ugt ptr %69, %70
  %455 = icmp ugt ptr %319, %34
  %456 = and i1 %454, %455
  br i1 %456, label %457, label %475

457:                                              ; preds = %466, %451
  %458 = phi ptr [ %463, %466 ], [ %319, %451 ]
  %459 = phi ptr [ %461, %466 ], [ %69, %451 ]
  %460 = phi i32 [ %467, %466 ], [ %453, %451 ]
  %461 = getelementptr i8, ptr %459, i32 -1
  %462 = load i8, ptr %461, align 1
  %463 = getelementptr i8, ptr %458, i32 -1
  %464 = load i8, ptr %463, align 1
  %465 = icmp eq i8 %462, %464
  br i1 %465, label %466, label %471

466:                                              ; preds = %457
  %467 = add i32 %460, 1
  %468 = icmp ugt ptr %461, %70
  %469 = icmp ugt ptr %463, %34
  %470 = and i1 %469, %468
  br i1 %470, label %457, label %471

471:                                              ; preds = %466, %457
  %472 = phi i32 [ %460, %457 ], [ %467, %466 ]
  %473 = phi ptr [ %459, %457 ], [ %461, %466 ]
  %474 = ptrtoint ptr %473 to i32
  br label %475

475:                                              ; preds = %471, %451
  %476 = phi i32 [ %474, %471 ], [ %76, %451 ]
  %477 = phi i32 [ %472, %471 ], [ %453, %451 ]
  %478 = phi ptr [ %473, %471 ], [ %69, %451 ]
  %479 = ptrtoint ptr %70 to i32
  %480 = sub i32 %476, %479
  %481 = add i32 %477, -3
  %482 = getelementptr i8, ptr %70, i32 %480
  %483 = icmp ugt ptr %482, %60
  %484 = load ptr, ptr %61, align 4
  br i1 %483, label %506, label %485

485:                                              ; preds = %475
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %484, ptr noundef align 1 dereferenceable(16) %70, i32 16, i1 false) #4
  %486 = icmp ugt i32 %480, 16
  %487 = load ptr, ptr %61, align 4
  br i1 %486, label %490, label %488

488:                                              ; preds = %485
  %489 = getelementptr i8, ptr %487, i32 %480
  store ptr %489, ptr %61, align 4
  br label %549

490:                                              ; preds = %485
  %491 = getelementptr i8, ptr %487, i32 16
  %492 = getelementptr i8, ptr %70, i32 16
  %493 = add i32 %480, -16
  %494 = getelementptr i8, ptr %487, i32 %480
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %491, ptr noundef align 1 dereferenceable(16) %492, i32 16, i1 false) #4
  %495 = icmp slt i32 %493, 17
  br i1 %495, label %538, label %496

496:                                              ; preds = %490
  %497 = getelementptr i8, ptr %487, i32 32
  br label %498

498:                                              ; preds = %498, %496
  %499 = phi ptr [ %492, %496 ], [ %503, %498 ]
  %500 = phi ptr [ %497, %496 ], [ %504, %498 ]
  %501 = getelementptr i8, ptr %499, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %500, ptr noundef align 1 dereferenceable(16) %501, i32 16, i1 false) #4
  %502 = getelementptr i8, ptr %500, i32 16
  %503 = getelementptr i8, ptr %499, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %502, ptr noundef align 1 dereferenceable(16) %503, i32 16, i1 false) #4
  %504 = getelementptr i8, ptr %500, i32 32
  %505 = icmp ult ptr %504, %494
  br i1 %505, label %498, label %538

506:                                              ; preds = %475
  %507 = ptrtoint ptr %482 to i32
  %508 = icmp ult ptr %60, %70
  br i1 %508, label %523, label %509

509:                                              ; preds = %506
  %510 = sub i32 %62, %479
  %511 = getelementptr i8, ptr %484, i32 %510
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %484, ptr noundef align 1 dereferenceable(16) %70, i32 16, i1 false) #4
  %512 = icmp slt i32 %510, 17
  br i1 %512, label %523, label %513

513:                                              ; preds = %509
  %514 = getelementptr i8, ptr %484, i32 16
  br label %515

515:                                              ; preds = %515, %513
  %516 = phi ptr [ %70, %513 ], [ %520, %515 ]
  %517 = phi ptr [ %514, %513 ], [ %521, %515 ]
  %518 = getelementptr i8, ptr %516, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %517, ptr noundef align 1 dereferenceable(16) %518, i32 16, i1 false) #4
  %519 = getelementptr i8, ptr %517, i32 16
  %520 = getelementptr i8, ptr %516, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %519, ptr noundef align 1 dereferenceable(16) %520, i32 16, i1 false) #4
  %521 = getelementptr i8, ptr %517, i32 32
  %522 = icmp ult ptr %521, %511
  br i1 %522, label %515, label %523

523:                                              ; preds = %515, %509, %506
  %524 = phi ptr [ %60, %509 ], [ %70, %506 ], [ %60, %515 ]
  %525 = phi ptr [ %511, %509 ], [ %484, %506 ], [ %511, %515 ]
  %526 = icmp ult ptr %524, %482
  br i1 %526, label %527, label %538

527:                                              ; preds = %523
  %528 = ptrtoint ptr %524 to i32
  %529 = sub i32 %507, %528
  %530 = getelementptr i8, ptr %524, i32 %529
  br label %531

531:                                              ; preds = %531, %527
  %532 = phi ptr [ %536, %531 ], [ %525, %527 ]
  %533 = phi ptr [ %534, %531 ], [ %524, %527 ]
  %534 = getelementptr i8, ptr %533, i32 1
  %535 = load i8, ptr %533, align 1
  %536 = getelementptr i8, ptr %532, i32 1
  store i8 %535, ptr %532, align 1
  %537 = icmp eq ptr %534, %530
  br i1 %537, label %538, label %531

538:                                              ; preds = %531, %523, %498, %490
  %539 = load ptr, ptr %61, align 4
  %540 = getelementptr i8, ptr %539, i32 %480
  store ptr %540, ptr %61, align 4
  %541 = icmp ugt i32 %480, 65535
  br i1 %541, label %542, label %549

542:                                              ; preds = %538
  store i32 1, ptr %63, align 4
  %543 = load ptr, ptr %64, align 4
  %544 = load ptr, ptr %1, align 4
  %545 = ptrtoint ptr %543 to i32
  %546 = ptrtoint ptr %544 to i32
  %547 = sub i32 %545, %546
  %548 = ashr exact i32 %547, 3
  store i32 %548, ptr %65, align 4
  br label %549

549:                                              ; preds = %542, %538, %488
  %550 = trunc i32 %480 to i16
  %551 = load ptr, ptr %64, align 4
  %552 = getelementptr inbounds %struct.seqDef_s, ptr %551, i32 0, i32 1
  store i16 %550, ptr %552, align 4
  %553 = add i32 %326, 3
  %554 = load ptr, ptr %64, align 4
  store i32 %553, ptr %554, align 4
  %555 = icmp ugt i32 %481, 65535
  br i1 %555, label %558, label %556

556:                                              ; preds = %549
  %557 = load ptr, ptr %64, align 4
  br label %753

558:                                              ; preds = %549
  store i32 2, ptr %63, align 4
  %559 = load ptr, ptr %64, align 4
  %560 = load ptr, ptr %1, align 4
  %561 = ptrtoint ptr %559 to i32
  %562 = ptrtoint ptr %560 to i32
  %563 = sub i32 %561, %562
  %564 = ashr exact i32 %563, 3
  store i32 %564, ptr %65, align 4
  br label %753

565:                                              ; preds = %321, %313
  %566 = ptrtoint ptr %70 to i32
  %567 = sub i32 %76, %566
  %568 = ashr i32 %567, 8
  %569 = add i32 %568, %15
  %570 = getelementptr i8, ptr %69, i32 %569
  br label %956

571:                                              ; preds = %311
  %572 = load i32, ptr %80, align 1
  %573 = load i32, ptr %69, align 1
  %574 = icmp eq i32 %572, %573
  br i1 %574, label %581, label %575

575:                                              ; preds = %571
  %576 = ptrtoint ptr %70 to i32
  %577 = sub i32 %76, %576
  %578 = ashr i32 %577, 8
  %579 = add i32 %578, %15
  %580 = getelementptr i8, ptr %69, i32 %579
  br label %956

581:                                              ; preds = %571
  %582 = ptrtoint ptr %80 to i32
  %583 = sub i32 %76, %582
  %584 = getelementptr i8, ptr %69, i32 4
  %585 = getelementptr i8, ptr %80, i32 4
  %586 = icmp ugt ptr %58, %584
  br i1 %586, label %587, label %613

587:                                              ; preds = %581
  %588 = load i32, ptr %585, align 1
  %589 = load i32, ptr %584, align 1
  %590 = xor i32 %589, %588
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %595, label %592

592:                                              ; preds = %587
  %593 = tail call i32 @llvm.cttz.i32(i32 %590, i1 true) #4, !range !8
  %594 = lshr i32 %593, 3
  br label %639

595:                                              ; preds = %601, %587
  %596 = phi ptr [ %599, %601 ], [ %584, %587 ]
  %597 = phi ptr [ %598, %601 ], [ %585, %587 ]
  %598 = getelementptr i8, ptr %597, i32 4
  %599 = getelementptr i8, ptr %596, i32 4
  %600 = icmp ult ptr %599, %58
  br i1 %600, label %601, label %613

601:                                              ; preds = %595
  %602 = load i32, ptr %598, align 1
  %603 = load i32, ptr %599, align 1
  %604 = xor i32 %603, %602
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %595, label %606

606:                                              ; preds = %601
  %607 = tail call i32 @llvm.cttz.i32(i32 %604, i1 true) #4, !range !8
  %608 = lshr i32 %607, 3
  %609 = getelementptr i8, ptr %599, i32 %608
  %610 = ptrtoint ptr %609 to i32
  %611 = ptrtoint ptr %584 to i32
  %612 = sub i32 %610, %611
  br label %639

613:                                              ; preds = %595, %581
  %614 = phi ptr [ %584, %581 ], [ %599, %595 ]
  %615 = phi ptr [ %585, %581 ], [ %598, %595 ]
  %616 = icmp ult ptr %614, %59
  br i1 %616, label %617, label %624

617:                                              ; preds = %613
  %618 = load i16, ptr %615, align 1
  %619 = load i16, ptr %614, align 1
  %620 = icmp eq i16 %618, %619
  br i1 %620, label %621, label %624

621:                                              ; preds = %617
  %622 = getelementptr i8, ptr %614, i32 2
  %623 = getelementptr i8, ptr %615, i32 2
  br label %624

624:                                              ; preds = %621, %617, %613
  %625 = phi ptr [ %622, %621 ], [ %614, %617 ], [ %614, %613 ]
  %626 = phi ptr [ %623, %621 ], [ %615, %617 ], [ %615, %613 ]
  %627 = icmp ult ptr %625, %21
  br i1 %627, label %628, label %634

628:                                              ; preds = %624
  %629 = load i8, ptr %626, align 1
  %630 = load i8, ptr %625, align 1
  %631 = icmp eq i8 %629, %630
  %632 = zext i1 %631 to i32
  %633 = getelementptr i8, ptr %625, i32 %632
  br label %634

634:                                              ; preds = %628, %624
  %635 = phi ptr [ %625, %624 ], [ %633, %628 ]
  %636 = ptrtoint ptr %635 to i32
  %637 = ptrtoint ptr %584 to i32
  %638 = sub i32 %636, %637
  br label %639

639:                                              ; preds = %634, %606, %592
  %640 = phi i32 [ %638, %634 ], [ %594, %592 ], [ %612, %606 ]
  %641 = add i32 %640, 4
  %642 = icmp ugt ptr %69, %70
  %643 = icmp ugt ptr %80, %20
  %644 = and i1 %642, %643
  br i1 %644, label %645, label %663

645:                                              ; preds = %654, %639
  %646 = phi ptr [ %649, %654 ], [ %69, %639 ]
  %647 = phi ptr [ %651, %654 ], [ %80, %639 ]
  %648 = phi i32 [ %655, %654 ], [ %641, %639 ]
  %649 = getelementptr i8, ptr %646, i32 -1
  %650 = load i8, ptr %649, align 1
  %651 = getelementptr i8, ptr %647, i32 -1
  %652 = load i8, ptr %651, align 1
  %653 = icmp eq i8 %650, %652
  br i1 %653, label %654, label %659

654:                                              ; preds = %645
  %655 = add i32 %648, 1
  %656 = icmp ugt ptr %649, %70
  %657 = icmp ugt ptr %651, %20
  %658 = and i1 %656, %657
  br i1 %658, label %645, label %659

659:                                              ; preds = %654, %645
  %660 = phi i32 [ %648, %645 ], [ %655, %654 ]
  %661 = phi ptr [ %646, %645 ], [ %649, %654 ]
  %662 = ptrtoint ptr %661 to i32
  br label %663

663:                                              ; preds = %659, %639
  %664 = phi i32 [ %662, %659 ], [ %76, %639 ]
  %665 = phi i32 [ %660, %659 ], [ %641, %639 ]
  %666 = phi ptr [ %661, %659 ], [ %69, %639 ]
  %667 = ptrtoint ptr %70 to i32
  %668 = sub i32 %664, %667
  %669 = add i32 %665, -3
  %670 = getelementptr i8, ptr %70, i32 %668
  %671 = icmp ugt ptr %670, %60
  %672 = load ptr, ptr %61, align 4
  br i1 %671, label %694, label %673

673:                                              ; preds = %663
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %672, ptr noundef align 1 dereferenceable(16) %70, i32 16, i1 false) #4
  %674 = icmp ugt i32 %668, 16
  %675 = load ptr, ptr %61, align 4
  br i1 %674, label %678, label %676

676:                                              ; preds = %673
  %677 = getelementptr i8, ptr %675, i32 %668
  store ptr %677, ptr %61, align 4
  br label %737

678:                                              ; preds = %673
  %679 = getelementptr i8, ptr %675, i32 16
  %680 = getelementptr i8, ptr %70, i32 16
  %681 = add i32 %668, -16
  %682 = getelementptr i8, ptr %675, i32 %668
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %679, ptr noundef align 1 dereferenceable(16) %680, i32 16, i1 false) #4
  %683 = icmp slt i32 %681, 17
  br i1 %683, label %726, label %684

684:                                              ; preds = %678
  %685 = getelementptr i8, ptr %675, i32 32
  br label %686

686:                                              ; preds = %686, %684
  %687 = phi ptr [ %680, %684 ], [ %691, %686 ]
  %688 = phi ptr [ %685, %684 ], [ %692, %686 ]
  %689 = getelementptr i8, ptr %687, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %688, ptr noundef align 1 dereferenceable(16) %689, i32 16, i1 false) #4
  %690 = getelementptr i8, ptr %688, i32 16
  %691 = getelementptr i8, ptr %687, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %690, ptr noundef align 1 dereferenceable(16) %691, i32 16, i1 false) #4
  %692 = getelementptr i8, ptr %688, i32 32
  %693 = icmp ult ptr %692, %682
  br i1 %693, label %686, label %726

694:                                              ; preds = %663
  %695 = ptrtoint ptr %670 to i32
  %696 = icmp ult ptr %60, %70
  br i1 %696, label %711, label %697

697:                                              ; preds = %694
  %698 = sub i32 %62, %667
  %699 = getelementptr i8, ptr %672, i32 %698
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %672, ptr noundef align 1 dereferenceable(16) %70, i32 16, i1 false) #4
  %700 = icmp slt i32 %698, 17
  br i1 %700, label %711, label %701

701:                                              ; preds = %697
  %702 = getelementptr i8, ptr %672, i32 16
  br label %703

703:                                              ; preds = %703, %701
  %704 = phi ptr [ %70, %701 ], [ %708, %703 ]
  %705 = phi ptr [ %702, %701 ], [ %709, %703 ]
  %706 = getelementptr i8, ptr %704, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %705, ptr noundef align 1 dereferenceable(16) %706, i32 16, i1 false) #4
  %707 = getelementptr i8, ptr %705, i32 16
  %708 = getelementptr i8, ptr %704, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %707, ptr noundef align 1 dereferenceable(16) %708, i32 16, i1 false) #4
  %709 = getelementptr i8, ptr %705, i32 32
  %710 = icmp ult ptr %709, %699
  br i1 %710, label %703, label %711

711:                                              ; preds = %703, %697, %694
  %712 = phi ptr [ %60, %697 ], [ %70, %694 ], [ %60, %703 ]
  %713 = phi ptr [ %699, %697 ], [ %672, %694 ], [ %699, %703 ]
  %714 = icmp ult ptr %712, %670
  br i1 %714, label %715, label %726

715:                                              ; preds = %711
  %716 = ptrtoint ptr %712 to i32
  %717 = sub i32 %695, %716
  %718 = getelementptr i8, ptr %712, i32 %717
  br label %719

719:                                              ; preds = %719, %715
  %720 = phi ptr [ %724, %719 ], [ %713, %715 ]
  %721 = phi ptr [ %722, %719 ], [ %712, %715 ]
  %722 = getelementptr i8, ptr %721, i32 1
  %723 = load i8, ptr %721, align 1
  %724 = getelementptr i8, ptr %720, i32 1
  store i8 %723, ptr %720, align 1
  %725 = icmp eq ptr %722, %718
  br i1 %725, label %726, label %719

726:                                              ; preds = %719, %711, %686, %678
  %727 = load ptr, ptr %61, align 4
  %728 = getelementptr i8, ptr %727, i32 %668
  store ptr %728, ptr %61, align 4
  %729 = icmp ugt i32 %668, 65535
  br i1 %729, label %730, label %737

730:                                              ; preds = %726
  store i32 1, ptr %63, align 4
  %731 = load ptr, ptr %64, align 4
  %732 = load ptr, ptr %1, align 4
  %733 = ptrtoint ptr %731 to i32
  %734 = ptrtoint ptr %732 to i32
  %735 = sub i32 %733, %734
  %736 = ashr exact i32 %735, 3
  store i32 %736, ptr %65, align 4
  br label %737

737:                                              ; preds = %730, %726, %676
  %738 = trunc i32 %668 to i16
  %739 = load ptr, ptr %64, align 4
  %740 = getelementptr inbounds %struct.seqDef_s, ptr %739, i32 0, i32 1
  store i16 %738, ptr %740, align 4
  %741 = add i32 %583, 3
  %742 = load ptr, ptr %64, align 4
  store i32 %741, ptr %742, align 4
  %743 = icmp ugt i32 %669, 65535
  br i1 %743, label %746, label %744

744:                                              ; preds = %737
  %745 = load ptr, ptr %64, align 4
  br label %753

746:                                              ; preds = %737
  store i32 2, ptr %63, align 4
  %747 = load ptr, ptr %64, align 4
  %748 = load ptr, ptr %1, align 4
  %749 = ptrtoint ptr %747 to i32
  %750 = ptrtoint ptr %748 to i32
  %751 = sub i32 %749, %750
  %752 = ashr exact i32 %751, 3
  store i32 %752, ptr %65, align 4
  br label %753

753:                                              ; preds = %746, %744, %558, %556, %304, %302
  %754 = phi i32 [ %228, %302 ], [ %228, %304 ], [ %481, %558 ], [ %481, %556 ], [ %669, %744 ], [ %669, %746 ]
  %755 = phi ptr [ %303, %302 ], [ %305, %304 ], [ %559, %558 ], [ %557, %556 ], [ %745, %744 ], [ %747, %746 ]
  %756 = phi i32 [ %72, %302 ], [ %72, %304 ], [ %326, %558 ], [ %326, %556 ], [ %583, %744 ], [ %583, %746 ]
  %757 = phi i32 [ %71, %302 ], [ %71, %304 ], [ %72, %558 ], [ %72, %556 ], [ %72, %744 ], [ %72, %746 ]
  %758 = phi i32 [ %224, %302 ], [ %224, %304 ], [ %477, %558 ], [ %477, %556 ], [ %665, %744 ], [ %665, %746 ]
  %759 = phi ptr [ %92, %302 ], [ %92, %304 ], [ %478, %558 ], [ %478, %556 ], [ %666, %744 ], [ %666, %746 ]
  %760 = trunc i32 %754 to i16
  %761 = getelementptr inbounds %struct.seqDef_s, ptr %755, i32 0, i32 2
  store i16 %760, ptr %761, align 2
  %762 = load ptr, ptr %64, align 4
  %763 = getelementptr %struct.seqDef_s, ptr %762, i32 1
  store ptr %763, ptr %64, align 4
  %764 = getelementptr i8, ptr %759, i32 %758
  %765 = icmp ugt ptr %764, %22
  br i1 %765, label %956, label %766

766:                                              ; preds = %753
  %767 = add i32 %77, 2
  %768 = getelementptr i8, ptr %67, i32 %77
  %769 = load i32, ptr %768, align 1
  %770 = mul i32 %769, -1640531535
  %771 = lshr i32 %770, %55
  %772 = getelementptr i32, ptr %10, i32 %771
  store i32 %767, ptr %772, align 4
  %773 = getelementptr i8, ptr %764, i32 -2
  %774 = load i32, ptr %773, align 1
  %775 = mul i32 %774, -1640531535
  %776 = lshr i32 %775, %55
  %777 = ptrtoint ptr %773 to i32
  %778 = sub i32 %777, %44
  %779 = getelementptr i32, ptr %10, i32 %776
  store i32 %778, ptr %779, align 4
  br label %780

780:                                              ; preds = %944, %766
  %781 = phi ptr [ %954, %944 ], [ %764, %766 ]
  %782 = phi i32 [ %783, %944 ], [ %757, %766 ]
  %783 = phi i32 [ %782, %944 ], [ %756, %766 ]
  %784 = ptrtoint ptr %781 to i32
  %785 = sub i32 %784, %44
  %786 = sub i32 %785, %782
  %787 = icmp ult i32 %786, %19
  %788 = select i1 %787, ptr %66, ptr %17
  %789 = getelementptr i8, ptr %788, i32 %786
  %790 = sub i32 %56, %786
  %791 = icmp ugt i32 %790, 2
  br i1 %791, label %792, label %956

792:                                              ; preds = %780
  %793 = load i32, ptr %789, align 1
  %794 = load i32, ptr %781, align 1
  %795 = icmp eq i32 %793, %794
  br i1 %795, label %796, label %956

796:                                              ; preds = %792
  %797 = select i1 %787, ptr %35, ptr %21
  %798 = getelementptr i8, ptr %781, i32 4
  %799 = getelementptr i8, ptr %789, i32 4
  %800 = ptrtoint ptr %797 to i32
  %801 = ptrtoint ptr %799 to i32
  %802 = sub i32 %800, %801
  %803 = getelementptr i8, ptr %798, i32 %802
  %804 = icmp ult ptr %803, %21
  %805 = select i1 %804, ptr %803, ptr %21
  %806 = getelementptr i8, ptr %805, i32 -3
  %807 = icmp ugt ptr %806, %798
  br i1 %807, label %808, label %834

808:                                              ; preds = %796
  %809 = load i32, ptr %799, align 1
  %810 = load i32, ptr %798, align 1
  %811 = xor i32 %810, %809
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %816, label %813

813:                                              ; preds = %808
  %814 = tail call i32 @llvm.cttz.i32(i32 %811, i1 true) #4, !range !8
  %815 = lshr i32 %814, 3
  br label %861

816:                                              ; preds = %822, %808
  %817 = phi ptr [ %820, %822 ], [ %798, %808 ]
  %818 = phi ptr [ %819, %822 ], [ %799, %808 ]
  %819 = getelementptr i8, ptr %818, i32 4
  %820 = getelementptr i8, ptr %817, i32 4
  %821 = icmp ult ptr %820, %806
  br i1 %821, label %822, label %834

822:                                              ; preds = %816
  %823 = load i32, ptr %819, align 1
  %824 = load i32, ptr %820, align 1
  %825 = xor i32 %824, %823
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %816, label %827

827:                                              ; preds = %822
  %828 = tail call i32 @llvm.cttz.i32(i32 %825, i1 true) #4, !range !8
  %829 = lshr i32 %828, 3
  %830 = getelementptr i8, ptr %820, i32 %829
  %831 = ptrtoint ptr %830 to i32
  %832 = ptrtoint ptr %798 to i32
  %833 = sub i32 %831, %832
  br label %861

834:                                              ; preds = %816, %796
  %835 = phi ptr [ %798, %796 ], [ %820, %816 ]
  %836 = phi ptr [ %799, %796 ], [ %819, %816 ]
  %837 = getelementptr i8, ptr %805, i32 -1
  %838 = icmp ult ptr %835, %837
  br i1 %838, label %839, label %846

839:                                              ; preds = %834
  %840 = load i16, ptr %836, align 1
  %841 = load i16, ptr %835, align 1
  %842 = icmp eq i16 %840, %841
  br i1 %842, label %843, label %846

843:                                              ; preds = %839
  %844 = getelementptr i8, ptr %835, i32 2
  %845 = getelementptr i8, ptr %836, i32 2
  br label %846

846:                                              ; preds = %843, %839, %834
  %847 = phi ptr [ %844, %843 ], [ %835, %839 ], [ %835, %834 ]
  %848 = phi ptr [ %845, %843 ], [ %836, %839 ], [ %836, %834 ]
  %849 = icmp ult ptr %847, %805
  br i1 %849, label %850, label %856

850:                                              ; preds = %846
  %851 = load i8, ptr %848, align 1
  %852 = load i8, ptr %847, align 1
  %853 = icmp eq i8 %851, %852
  %854 = zext i1 %853 to i32
  %855 = getelementptr i8, ptr %847, i32 %854
  br label %856

856:                                              ; preds = %850, %846
  %857 = phi ptr [ %847, %846 ], [ %855, %850 ]
  %858 = ptrtoint ptr %857 to i32
  %859 = ptrtoint ptr %798 to i32
  %860 = sub i32 %858, %859
  br label %861

861:                                              ; preds = %856, %827, %813
  %862 = phi i32 [ %860, %856 ], [ %815, %813 ], [ %833, %827 ]
  %863 = getelementptr i8, ptr %799, i32 %862
  %864 = icmp eq ptr %863, %797
  br i1 %864, label %865, label %923

865:                                              ; preds = %861
  %866 = getelementptr i8, ptr %798, i32 %862
  %867 = icmp ugt ptr %58, %866
  br i1 %867, label %868, label %894

868:                                              ; preds = %865
  %869 = load i32, ptr %20, align 1
  %870 = load i32, ptr %866, align 1
  %871 = xor i32 %870, %869
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %876, label %873

873:                                              ; preds = %868
  %874 = tail call i32 @llvm.cttz.i32(i32 %871, i1 true) #4, !range !8
  %875 = lshr i32 %874, 3
  br label %920

876:                                              ; preds = %882, %868
  %877 = phi ptr [ %880, %882 ], [ %866, %868 ]
  %878 = phi ptr [ %879, %882 ], [ %20, %868 ]
  %879 = getelementptr i8, ptr %878, i32 4
  %880 = getelementptr i8, ptr %877, i32 4
  %881 = icmp ult ptr %880, %58
  br i1 %881, label %882, label %894

882:                                              ; preds = %876
  %883 = load i32, ptr %879, align 1
  %884 = load i32, ptr %880, align 1
  %885 = xor i32 %884, %883
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %876, label %887

887:                                              ; preds = %882
  %888 = tail call i32 @llvm.cttz.i32(i32 %885, i1 true) #4, !range !8
  %889 = lshr i32 %888, 3
  %890 = getelementptr i8, ptr %880, i32 %889
  %891 = ptrtoint ptr %890 to i32
  %892 = ptrtoint ptr %866 to i32
  %893 = sub i32 %891, %892
  br label %920

894:                                              ; preds = %876, %865
  %895 = phi ptr [ %866, %865 ], [ %880, %876 ]
  %896 = phi ptr [ %20, %865 ], [ %879, %876 ]
  %897 = icmp ult ptr %895, %59
  br i1 %897, label %898, label %905

898:                                              ; preds = %894
  %899 = load i16, ptr %896, align 1
  %900 = load i16, ptr %895, align 1
  %901 = icmp eq i16 %899, %900
  br i1 %901, label %902, label %905

902:                                              ; preds = %898
  %903 = getelementptr i8, ptr %895, i32 2
  %904 = getelementptr i8, ptr %896, i32 2
  br label %905

905:                                              ; preds = %902, %898, %894
  %906 = phi ptr [ %903, %902 ], [ %895, %898 ], [ %895, %894 ]
  %907 = phi ptr [ %904, %902 ], [ %896, %898 ], [ %896, %894 ]
  %908 = icmp ult ptr %906, %21
  br i1 %908, label %909, label %915

909:                                              ; preds = %905
  %910 = load i8, ptr %907, align 1
  %911 = load i8, ptr %906, align 1
  %912 = icmp eq i8 %910, %911
  %913 = zext i1 %912 to i32
  %914 = getelementptr i8, ptr %906, i32 %913
  br label %915

915:                                              ; preds = %909, %905
  %916 = phi ptr [ %906, %905 ], [ %914, %909 ]
  %917 = ptrtoint ptr %916 to i32
  %918 = ptrtoint ptr %866 to i32
  %919 = sub i32 %917, %918
  br label %920

920:                                              ; preds = %915, %887, %873
  %921 = phi i32 [ %919, %915 ], [ %875, %873 ], [ %893, %887 ]
  %922 = add i32 %921, %862
  br label %923

923:                                              ; preds = %920, %861
  %924 = phi i32 [ %922, %920 ], [ %862, %861 ]
  %925 = add i32 %924, 4
  %926 = add i32 %924, 1
  %927 = icmp ugt ptr %781, %60
  br i1 %927, label %930, label %928

928:                                              ; preds = %923
  %929 = load ptr, ptr %61, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %929, ptr noundef align 1 dereferenceable(16) %781, i32 16, i1 false) #4
  br label %930

930:                                              ; preds = %928, %923
  %931 = load ptr, ptr %64, align 4
  %932 = getelementptr inbounds %struct.seqDef_s, ptr %931, i32 0, i32 1
  store i16 0, ptr %932, align 4
  %933 = load ptr, ptr %64, align 4
  store i32 1, ptr %933, align 4
  %934 = icmp ugt i32 %926, 65535
  br i1 %934, label %937, label %935

935:                                              ; preds = %930
  %936 = load ptr, ptr %64, align 4
  br label %944

937:                                              ; preds = %930
  store i32 2, ptr %63, align 4
  %938 = load ptr, ptr %64, align 4
  %939 = load ptr, ptr %1, align 4
  %940 = ptrtoint ptr %938 to i32
  %941 = ptrtoint ptr %939 to i32
  %942 = sub i32 %940, %941
  %943 = ashr exact i32 %942, 3
  store i32 %943, ptr %65, align 4
  br label %944

944:                                              ; preds = %937, %935
  %945 = phi ptr [ %936, %935 ], [ %938, %937 ]
  %946 = trunc i32 %926 to i16
  %947 = getelementptr inbounds %struct.seqDef_s, ptr %945, i32 0, i32 2
  store i16 %946, ptr %947, align 2
  %948 = load ptr, ptr %64, align 4
  %949 = getelementptr %struct.seqDef_s, ptr %948, i32 1
  store ptr %949, ptr %64, align 4
  %950 = load i32, ptr %781, align 1
  %951 = mul i32 %950, -1640531535
  %952 = lshr i32 %951, %55
  %953 = getelementptr i32, ptr %10, i32 %952
  store i32 %785, ptr %953, align 4
  %954 = getelementptr i8, ptr %781, i32 %925
  %955 = icmp ugt ptr %954, %22
  br i1 %955, label %956, label %780

956:                                              ; preds = %944, %792, %780, %753, %575, %565
  %957 = phi i32 [ %72, %565 ], [ %72, %575 ], [ %756, %753 ], [ %783, %780 ], [ %783, %792 ], [ %782, %944 ]
  %958 = phi i32 [ %71, %565 ], [ %71, %575 ], [ %757, %753 ], [ %782, %780 ], [ %782, %792 ], [ %783, %944 ]
  %959 = phi ptr [ %70, %565 ], [ %70, %575 ], [ %764, %753 ], [ %781, %780 ], [ %781, %792 ], [ %954, %944 ]
  %960 = phi ptr [ %570, %565 ], [ %580, %575 ], [ %764, %753 ], [ %781, %780 ], [ %781, %792 ], [ %954, %944 ]
  %961 = icmp ult ptr %960, %22
  br i1 %961, label %68, label %962

962:                                              ; preds = %956
  %963 = ptrtoint ptr %959 to i32
  br label %964

964:                                              ; preds = %962, %8
  %965 = phi i32 [ %963, %962 ], [ %40, %8 ]
  %966 = phi i32 [ %957, %962 ], [ %23, %8 ]
  %967 = phi i32 [ %958, %962 ], [ %25, %8 ]
  store i32 %966, ptr %2, align 4
  store i32 %967, ptr %24, align 4
  br label %3875

968:                                              ; preds = %5
  %969 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %970 = load ptr, ptr %969, align 4
  %971 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 5
  %972 = load i32, ptr %971, align 4
  %973 = icmp eq i32 %972, 0
  %974 = zext i1 %973 to i32
  %975 = add i32 %972, %974
  %976 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %977 = load ptr, ptr %976, align 4
  %978 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %979 = load i32, ptr %978, align 4
  %980 = getelementptr i8, ptr %977, i32 %979
  %981 = getelementptr i8, ptr %3, i32 %4
  %982 = getelementptr i8, ptr %981, i32 -8
  %983 = load i32, ptr %2, align 4
  %984 = getelementptr i32, ptr %2, i32 1
  %985 = load i32, ptr %984, align 4
  %986 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 9
  %987 = load ptr, ptr %986, align 4
  %988 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %987, i32 0, i32 4
  %989 = load ptr, ptr %988, align 4
  %990 = getelementptr inbounds %struct.ZSTD_window_t, ptr %987, i32 0, i32 3
  %991 = load i32, ptr %990, align 4
  %992 = getelementptr inbounds %struct.ZSTD_window_t, ptr %987, i32 0, i32 1
  %993 = load ptr, ptr %992, align 4
  %994 = getelementptr i8, ptr %993, i32 %991
  %995 = load ptr, ptr %987, align 4
  %996 = ptrtoint ptr %995 to i32
  %997 = ptrtoint ptr %993 to i32
  %998 = sub i32 %997, %996
  %999 = add i32 %998, %979
  %1000 = ptrtoint ptr %3 to i32
  %1001 = ptrtoint ptr %980 to i32
  %1002 = sub i32 %1000, %1001
  %1003 = getelementptr i8, ptr %995, i32 %1002
  %1004 = ptrtoint ptr %977 to i32
  %1005 = icmp eq ptr %1003, %994
  %1006 = zext i1 %1005 to i32
  %1007 = getelementptr i8, ptr %3, i32 %1006
  %1008 = icmp ult ptr %1007, %982
  br i1 %1008, label %1009, label %1933

1009:                                             ; preds = %968
  %1010 = sub i32 0, %999
  %1011 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %987, i32 0, i32 10, i32 2
  %1012 = load i32, ptr %1011, align 4
  %1013 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %1014 = load i32, ptr %1013, align 4
  %1015 = sub i32 64, %1014
  %1016 = zext i32 %1015 to i64
  %1017 = add i32 %979, -1
  %1018 = sub i32 64, %1012
  %1019 = zext i32 %1018 to i64
  %1020 = getelementptr i8, ptr %981, i32 -3
  %1021 = getelementptr i8, ptr %981, i32 -1
  %1022 = getelementptr i8, ptr %981, i32 -32
  %1023 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %1024 = ptrtoint ptr %1022 to i32
  %1025 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %1026 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %1027 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %1028 = getelementptr i8, ptr %993, i32 %1010
  %1029 = getelementptr i8, ptr %977, i32 2
  br label %1030

1030:                                             ; preds = %1925, %1009
  %1031 = phi ptr [ %1007, %1009 ], [ %1929, %1925 ]
  %1032 = phi ptr [ %3, %1009 ], [ %1928, %1925 ]
  %1033 = phi i32 [ %985, %1009 ], [ %1927, %1925 ]
  %1034 = phi i32 [ %983, %1009 ], [ %1926, %1925 ]
  %1035 = load i64, ptr %1031, align 1
  %1036 = mul i64 %1035, -3523014627271114752
  %1037 = lshr i64 %1036, %1016
  %1038 = trunc i64 %1037 to i32
  %1039 = ptrtoint ptr %1031 to i32
  %1040 = sub i32 %1039, %1004
  %1041 = getelementptr i32, ptr %970, i32 %1038
  %1042 = load i32, ptr %1041, align 4
  %1043 = getelementptr i8, ptr %977, i32 %1042
  %1044 = sub i32 1, %1034
  %1045 = add i32 %1044, %1040
  %1046 = icmp ult i32 %1045, %979
  %1047 = sub i32 %1045, %999
  %1048 = getelementptr i8, ptr %993, i32 %1047
  %1049 = getelementptr i8, ptr %977, i32 %1045
  %1050 = select i1 %1046, ptr %1048, ptr %1049
  store i32 %1040, ptr %1041, align 4
  %1051 = sub i32 %1017, %1045
  %1052 = icmp ugt i32 %1051, 2
  br i1 %1052, label %1053, label %1274

1053:                                             ; preds = %1030
  %1054 = load i32, ptr %1050, align 1
  %1055 = getelementptr i8, ptr %1031, i32 1
  %1056 = load i32, ptr %1055, align 1
  %1057 = icmp eq i32 %1054, %1056
  br i1 %1057, label %1058, label %1274

1058:                                             ; preds = %1053
  %1059 = select i1 %1046, ptr %995, ptr %981
  %1060 = getelementptr i8, ptr %1031, i32 5
  %1061 = getelementptr i8, ptr %1050, i32 4
  %1062 = ptrtoint ptr %1059 to i32
  %1063 = ptrtoint ptr %1061 to i32
  %1064 = sub i32 %1062, %1063
  %1065 = getelementptr i8, ptr %1060, i32 %1064
  %1066 = icmp ult ptr %1065, %981
  %1067 = select i1 %1066, ptr %1065, ptr %981
  %1068 = getelementptr i8, ptr %1067, i32 -3
  %1069 = icmp ugt ptr %1068, %1060
  br i1 %1069, label %1070, label %1096

1070:                                             ; preds = %1058
  %1071 = load i32, ptr %1061, align 1
  %1072 = load i32, ptr %1060, align 1
  %1073 = xor i32 %1072, %1071
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1078, label %1075

1075:                                             ; preds = %1070
  %1076 = tail call i32 @llvm.cttz.i32(i32 %1073, i1 true) #4, !range !8
  %1077 = lshr i32 %1076, 3
  br label %1123

1078:                                             ; preds = %1084, %1070
  %1079 = phi ptr [ %1082, %1084 ], [ %1060, %1070 ]
  %1080 = phi ptr [ %1081, %1084 ], [ %1061, %1070 ]
  %1081 = getelementptr i8, ptr %1080, i32 4
  %1082 = getelementptr i8, ptr %1079, i32 4
  %1083 = icmp ult ptr %1082, %1068
  br i1 %1083, label %1084, label %1096

1084:                                             ; preds = %1078
  %1085 = load i32, ptr %1081, align 1
  %1086 = load i32, ptr %1082, align 1
  %1087 = xor i32 %1086, %1085
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1078, label %1089

1089:                                             ; preds = %1084
  %1090 = tail call i32 @llvm.cttz.i32(i32 %1087, i1 true) #4, !range !8
  %1091 = lshr i32 %1090, 3
  %1092 = getelementptr i8, ptr %1082, i32 %1091
  %1093 = ptrtoint ptr %1092 to i32
  %1094 = ptrtoint ptr %1060 to i32
  %1095 = sub i32 %1093, %1094
  br label %1123

1096:                                             ; preds = %1078, %1058
  %1097 = phi ptr [ %1060, %1058 ], [ %1082, %1078 ]
  %1098 = phi ptr [ %1061, %1058 ], [ %1081, %1078 ]
  %1099 = getelementptr i8, ptr %1067, i32 -1
  %1100 = icmp ult ptr %1097, %1099
  br i1 %1100, label %1101, label %1108

1101:                                             ; preds = %1096
  %1102 = load i16, ptr %1098, align 1
  %1103 = load i16, ptr %1097, align 1
  %1104 = icmp eq i16 %1102, %1103
  br i1 %1104, label %1105, label %1108

1105:                                             ; preds = %1101
  %1106 = getelementptr i8, ptr %1097, i32 2
  %1107 = getelementptr i8, ptr %1098, i32 2
  br label %1108

1108:                                             ; preds = %1105, %1101, %1096
  %1109 = phi ptr [ %1106, %1105 ], [ %1097, %1101 ], [ %1097, %1096 ]
  %1110 = phi ptr [ %1107, %1105 ], [ %1098, %1101 ], [ %1098, %1096 ]
  %1111 = icmp ult ptr %1109, %1067
  br i1 %1111, label %1112, label %1118

1112:                                             ; preds = %1108
  %1113 = load i8, ptr %1110, align 1
  %1114 = load i8, ptr %1109, align 1
  %1115 = icmp eq i8 %1113, %1114
  %1116 = zext i1 %1115 to i32
  %1117 = getelementptr i8, ptr %1109, i32 %1116
  br label %1118

1118:                                             ; preds = %1112, %1108
  %1119 = phi ptr [ %1109, %1108 ], [ %1117, %1112 ]
  %1120 = ptrtoint ptr %1119 to i32
  %1121 = ptrtoint ptr %1060 to i32
  %1122 = sub i32 %1120, %1121
  br label %1123

1123:                                             ; preds = %1118, %1089, %1075
  %1124 = phi i32 [ %1122, %1118 ], [ %1077, %1075 ], [ %1095, %1089 ]
  %1125 = getelementptr i8, ptr %1061, i32 %1124
  %1126 = icmp eq ptr %1125, %1059
  br i1 %1126, label %1127, label %1185

1127:                                             ; preds = %1123
  %1128 = getelementptr i8, ptr %1060, i32 %1124
  %1129 = icmp ugt ptr %1020, %1128
  br i1 %1129, label %1130, label %1156

1130:                                             ; preds = %1127
  %1131 = load i32, ptr %980, align 1
  %1132 = load i32, ptr %1128, align 1
  %1133 = xor i32 %1132, %1131
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1138, label %1135

1135:                                             ; preds = %1130
  %1136 = tail call i32 @llvm.cttz.i32(i32 %1133, i1 true) #4, !range !8
  %1137 = lshr i32 %1136, 3
  br label %1182

1138:                                             ; preds = %1144, %1130
  %1139 = phi ptr [ %1142, %1144 ], [ %1128, %1130 ]
  %1140 = phi ptr [ %1141, %1144 ], [ %980, %1130 ]
  %1141 = getelementptr i8, ptr %1140, i32 4
  %1142 = getelementptr i8, ptr %1139, i32 4
  %1143 = icmp ult ptr %1142, %1020
  br i1 %1143, label %1144, label %1156

1144:                                             ; preds = %1138
  %1145 = load i32, ptr %1141, align 1
  %1146 = load i32, ptr %1142, align 1
  %1147 = xor i32 %1146, %1145
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1138, label %1149

1149:                                             ; preds = %1144
  %1150 = tail call i32 @llvm.cttz.i32(i32 %1147, i1 true) #4, !range !8
  %1151 = lshr i32 %1150, 3
  %1152 = getelementptr i8, ptr %1142, i32 %1151
  %1153 = ptrtoint ptr %1152 to i32
  %1154 = ptrtoint ptr %1128 to i32
  %1155 = sub i32 %1153, %1154
  br label %1182

1156:                                             ; preds = %1138, %1127
  %1157 = phi ptr [ %1128, %1127 ], [ %1142, %1138 ]
  %1158 = phi ptr [ %980, %1127 ], [ %1141, %1138 ]
  %1159 = icmp ult ptr %1157, %1021
  br i1 %1159, label %1160, label %1167

1160:                                             ; preds = %1156
  %1161 = load i16, ptr %1158, align 1
  %1162 = load i16, ptr %1157, align 1
  %1163 = icmp eq i16 %1161, %1162
  br i1 %1163, label %1164, label %1167

1164:                                             ; preds = %1160
  %1165 = getelementptr i8, ptr %1157, i32 2
  %1166 = getelementptr i8, ptr %1158, i32 2
  br label %1167

1167:                                             ; preds = %1164, %1160, %1156
  %1168 = phi ptr [ %1165, %1164 ], [ %1157, %1160 ], [ %1157, %1156 ]
  %1169 = phi ptr [ %1166, %1164 ], [ %1158, %1160 ], [ %1158, %1156 ]
  %1170 = icmp ult ptr %1168, %981
  br i1 %1170, label %1171, label %1177

1171:                                             ; preds = %1167
  %1172 = load i8, ptr %1169, align 1
  %1173 = load i8, ptr %1168, align 1
  %1174 = icmp eq i8 %1172, %1173
  %1175 = zext i1 %1174 to i32
  %1176 = getelementptr i8, ptr %1168, i32 %1175
  br label %1177

1177:                                             ; preds = %1171, %1167
  %1178 = phi ptr [ %1168, %1167 ], [ %1176, %1171 ]
  %1179 = ptrtoint ptr %1178 to i32
  %1180 = ptrtoint ptr %1128 to i32
  %1181 = sub i32 %1179, %1180
  br label %1182

1182:                                             ; preds = %1177, %1149, %1135
  %1183 = phi i32 [ %1181, %1177 ], [ %1137, %1135 ], [ %1155, %1149 ]
  %1184 = add i32 %1183, %1124
  br label %1185

1185:                                             ; preds = %1182, %1123
  %1186 = phi i32 [ %1184, %1182 ], [ %1124, %1123 ]
  %1187 = add i32 %1186, 4
  %1188 = ptrtoint ptr %1055 to i32
  %1189 = ptrtoint ptr %1032 to i32
  %1190 = sub i32 %1188, %1189
  %1191 = add i32 %1186, 1
  %1192 = getelementptr i8, ptr %1032, i32 %1190
  %1193 = icmp ugt ptr %1192, %1022
  %1194 = load ptr, ptr %1023, align 4
  br i1 %1193, label %1216, label %1195

1195:                                             ; preds = %1185
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1194, ptr noundef align 1 dereferenceable(16) %1032, i32 16, i1 false) #4
  %1196 = icmp ugt i32 %1190, 16
  %1197 = load ptr, ptr %1023, align 4
  br i1 %1196, label %1200, label %1198

1198:                                             ; preds = %1195
  %1199 = getelementptr i8, ptr %1197, i32 %1190
  store ptr %1199, ptr %1023, align 4
  br label %1259

1200:                                             ; preds = %1195
  %1201 = getelementptr i8, ptr %1197, i32 16
  %1202 = getelementptr i8, ptr %1032, i32 16
  %1203 = add i32 %1190, -16
  %1204 = getelementptr i8, ptr %1197, i32 %1190
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1201, ptr noundef align 1 dereferenceable(16) %1202, i32 16, i1 false) #4
  %1205 = icmp slt i32 %1203, 17
  br i1 %1205, label %1248, label %1206

1206:                                             ; preds = %1200
  %1207 = getelementptr i8, ptr %1197, i32 32
  br label %1208

1208:                                             ; preds = %1208, %1206
  %1209 = phi ptr [ %1202, %1206 ], [ %1213, %1208 ]
  %1210 = phi ptr [ %1207, %1206 ], [ %1214, %1208 ]
  %1211 = getelementptr i8, ptr %1209, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1210, ptr noundef align 1 dereferenceable(16) %1211, i32 16, i1 false) #4
  %1212 = getelementptr i8, ptr %1210, i32 16
  %1213 = getelementptr i8, ptr %1209, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1212, ptr noundef align 1 dereferenceable(16) %1213, i32 16, i1 false) #4
  %1214 = getelementptr i8, ptr %1210, i32 32
  %1215 = icmp ult ptr %1214, %1204
  br i1 %1215, label %1208, label %1248

1216:                                             ; preds = %1185
  %1217 = ptrtoint ptr %1192 to i32
  %1218 = icmp ult ptr %1022, %1032
  br i1 %1218, label %1233, label %1219

1219:                                             ; preds = %1216
  %1220 = sub i32 %1024, %1189
  %1221 = getelementptr i8, ptr %1194, i32 %1220
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1194, ptr noundef align 1 dereferenceable(16) %1032, i32 16, i1 false) #4
  %1222 = icmp slt i32 %1220, 17
  br i1 %1222, label %1233, label %1223

1223:                                             ; preds = %1219
  %1224 = getelementptr i8, ptr %1194, i32 16
  br label %1225

1225:                                             ; preds = %1225, %1223
  %1226 = phi ptr [ %1032, %1223 ], [ %1230, %1225 ]
  %1227 = phi ptr [ %1224, %1223 ], [ %1231, %1225 ]
  %1228 = getelementptr i8, ptr %1226, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1227, ptr noundef align 1 dereferenceable(16) %1228, i32 16, i1 false) #4
  %1229 = getelementptr i8, ptr %1227, i32 16
  %1230 = getelementptr i8, ptr %1226, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1229, ptr noundef align 1 dereferenceable(16) %1230, i32 16, i1 false) #4
  %1231 = getelementptr i8, ptr %1227, i32 32
  %1232 = icmp ult ptr %1231, %1221
  br i1 %1232, label %1225, label %1233

1233:                                             ; preds = %1225, %1219, %1216
  %1234 = phi ptr [ %1022, %1219 ], [ %1032, %1216 ], [ %1022, %1225 ]
  %1235 = phi ptr [ %1221, %1219 ], [ %1194, %1216 ], [ %1221, %1225 ]
  %1236 = icmp ult ptr %1234, %1192
  br i1 %1236, label %1237, label %1248

1237:                                             ; preds = %1233
  %1238 = ptrtoint ptr %1234 to i32
  %1239 = sub i32 %1217, %1238
  %1240 = getelementptr i8, ptr %1234, i32 %1239
  br label %1241

1241:                                             ; preds = %1241, %1237
  %1242 = phi ptr [ %1246, %1241 ], [ %1235, %1237 ]
  %1243 = phi ptr [ %1244, %1241 ], [ %1234, %1237 ]
  %1244 = getelementptr i8, ptr %1243, i32 1
  %1245 = load i8, ptr %1243, align 1
  %1246 = getelementptr i8, ptr %1242, i32 1
  store i8 %1245, ptr %1242, align 1
  %1247 = icmp eq ptr %1244, %1240
  br i1 %1247, label %1248, label %1241

1248:                                             ; preds = %1241, %1233, %1208, %1200
  %1249 = load ptr, ptr %1023, align 4
  %1250 = getelementptr i8, ptr %1249, i32 %1190
  store ptr %1250, ptr %1023, align 4
  %1251 = icmp ugt i32 %1190, 65535
  br i1 %1251, label %1252, label %1259

1252:                                             ; preds = %1248
  store i32 1, ptr %1025, align 4
  %1253 = load ptr, ptr %1026, align 4
  %1254 = load ptr, ptr %1, align 4
  %1255 = ptrtoint ptr %1253 to i32
  %1256 = ptrtoint ptr %1254 to i32
  %1257 = sub i32 %1255, %1256
  %1258 = ashr exact i32 %1257, 3
  store i32 %1258, ptr %1027, align 4
  br label %1259

1259:                                             ; preds = %1252, %1248, %1198
  %1260 = trunc i32 %1190 to i16
  %1261 = load ptr, ptr %1026, align 4
  %1262 = getelementptr inbounds %struct.seqDef_s, ptr %1261, i32 0, i32 1
  store i16 %1260, ptr %1262, align 4
  %1263 = load ptr, ptr %1026, align 4
  store i32 1, ptr %1263, align 4
  %1264 = icmp ugt i32 %1191, 65535
  br i1 %1264, label %1267, label %1265

1265:                                             ; preds = %1259
  %1266 = load ptr, ptr %1026, align 4
  br label %1719

1267:                                             ; preds = %1259
  store i32 2, ptr %1025, align 4
  %1268 = load ptr, ptr %1026, align 4
  %1269 = load ptr, ptr %1, align 4
  %1270 = ptrtoint ptr %1268 to i32
  %1271 = ptrtoint ptr %1269 to i32
  %1272 = sub i32 %1270, %1271
  %1273 = ashr exact i32 %1272, 3
  store i32 %1273, ptr %1027, align 4
  br label %1719

1274:                                             ; preds = %1053, %1030
  %1275 = icmp ugt i32 %1042, %979
  br i1 %1275, label %1537, label %1276

1276:                                             ; preds = %1274
  %1277 = load i64, ptr %1031, align 1
  %1278 = mul i64 %1277, -3523014627271114752
  %1279 = lshr i64 %1278, %1019
  %1280 = trunc i64 %1279 to i32
  %1281 = getelementptr i32, ptr %989, i32 %1280
  %1282 = load i32, ptr %1281, align 4
  %1283 = getelementptr i8, ptr %993, i32 %1282
  %1284 = icmp ugt i32 %1282, %991
  %1285 = lshr i64 %1277, 32
  %1286 = trunc i64 %1285 to i32
  br i1 %1284, label %1287, label %1531

1287:                                             ; preds = %1276
  %1288 = trunc i64 %1277 to i32
  %1289 = load i32, ptr %1283, align 1
  %1290 = icmp eq i32 %1289, %1288
  br i1 %1290, label %1291, label %1531

1291:                                             ; preds = %1287
  %1292 = add i32 %999, %1282
  %1293 = sub i32 %1040, %1292
  %1294 = getelementptr i8, ptr %1031, i32 4
  %1295 = getelementptr i8, ptr %1283, i32 4
  %1296 = ptrtoint ptr %1295 to i32
  %1297 = sub i32 %996, %1296
  %1298 = getelementptr i8, ptr %1294, i32 %1297
  %1299 = icmp ult ptr %1298, %981
  %1300 = select i1 %1299, ptr %1298, ptr %981
  %1301 = getelementptr i8, ptr %1300, i32 -3
  %1302 = icmp ugt ptr %1301, %1294
  br i1 %1302, label %1303, label %1328

1303:                                             ; preds = %1291
  %1304 = load i32, ptr %1295, align 1
  %1305 = xor i32 %1304, %1286
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1310, label %1307

1307:                                             ; preds = %1303
  %1308 = tail call i32 @llvm.cttz.i32(i32 %1305, i1 true) #4, !range !8
  %1309 = lshr i32 %1308, 3
  br label %1355

1310:                                             ; preds = %1316, %1303
  %1311 = phi ptr [ %1314, %1316 ], [ %1294, %1303 ]
  %1312 = phi ptr [ %1313, %1316 ], [ %1295, %1303 ]
  %1313 = getelementptr i8, ptr %1312, i32 4
  %1314 = getelementptr i8, ptr %1311, i32 4
  %1315 = icmp ult ptr %1314, %1301
  br i1 %1315, label %1316, label %1328

1316:                                             ; preds = %1310
  %1317 = load i32, ptr %1313, align 1
  %1318 = load i32, ptr %1314, align 1
  %1319 = xor i32 %1318, %1317
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1310, label %1321

1321:                                             ; preds = %1316
  %1322 = tail call i32 @llvm.cttz.i32(i32 %1319, i1 true) #4, !range !8
  %1323 = lshr i32 %1322, 3
  %1324 = getelementptr i8, ptr %1314, i32 %1323
  %1325 = ptrtoint ptr %1324 to i32
  %1326 = ptrtoint ptr %1294 to i32
  %1327 = sub i32 %1325, %1326
  br label %1355

1328:                                             ; preds = %1310, %1291
  %1329 = phi ptr [ %1294, %1291 ], [ %1314, %1310 ]
  %1330 = phi ptr [ %1295, %1291 ], [ %1313, %1310 ]
  %1331 = getelementptr i8, ptr %1300, i32 -1
  %1332 = icmp ult ptr %1329, %1331
  br i1 %1332, label %1333, label %1340

1333:                                             ; preds = %1328
  %1334 = load i16, ptr %1330, align 1
  %1335 = load i16, ptr %1329, align 1
  %1336 = icmp eq i16 %1334, %1335
  br i1 %1336, label %1337, label %1340

1337:                                             ; preds = %1333
  %1338 = getelementptr i8, ptr %1329, i32 2
  %1339 = getelementptr i8, ptr %1330, i32 2
  br label %1340

1340:                                             ; preds = %1337, %1333, %1328
  %1341 = phi ptr [ %1338, %1337 ], [ %1329, %1333 ], [ %1329, %1328 ]
  %1342 = phi ptr [ %1339, %1337 ], [ %1330, %1333 ], [ %1330, %1328 ]
  %1343 = icmp ult ptr %1341, %1300
  br i1 %1343, label %1344, label %1350

1344:                                             ; preds = %1340
  %1345 = load i8, ptr %1342, align 1
  %1346 = load i8, ptr %1341, align 1
  %1347 = icmp eq i8 %1345, %1346
  %1348 = zext i1 %1347 to i32
  %1349 = getelementptr i8, ptr %1341, i32 %1348
  br label %1350

1350:                                             ; preds = %1344, %1340
  %1351 = phi ptr [ %1341, %1340 ], [ %1349, %1344 ]
  %1352 = ptrtoint ptr %1351 to i32
  %1353 = ptrtoint ptr %1294 to i32
  %1354 = sub i32 %1352, %1353
  br label %1355

1355:                                             ; preds = %1350, %1321, %1307
  %1356 = phi i32 [ %1354, %1350 ], [ %1309, %1307 ], [ %1327, %1321 ]
  %1357 = getelementptr i8, ptr %1295, i32 %1356
  %1358 = icmp eq ptr %1357, %995
  br i1 %1358, label %1359, label %1417

1359:                                             ; preds = %1355
  %1360 = getelementptr i8, ptr %1294, i32 %1356
  %1361 = icmp ugt ptr %1020, %1360
  br i1 %1361, label %1362, label %1388

1362:                                             ; preds = %1359
  %1363 = load i32, ptr %980, align 1
  %1364 = load i32, ptr %1360, align 1
  %1365 = xor i32 %1364, %1363
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1370, label %1367

1367:                                             ; preds = %1362
  %1368 = tail call i32 @llvm.cttz.i32(i32 %1365, i1 true) #4, !range !8
  %1369 = lshr i32 %1368, 3
  br label %1414

1370:                                             ; preds = %1376, %1362
  %1371 = phi ptr [ %1374, %1376 ], [ %1360, %1362 ]
  %1372 = phi ptr [ %1373, %1376 ], [ %980, %1362 ]
  %1373 = getelementptr i8, ptr %1372, i32 4
  %1374 = getelementptr i8, ptr %1371, i32 4
  %1375 = icmp ult ptr %1374, %1020
  br i1 %1375, label %1376, label %1388

1376:                                             ; preds = %1370
  %1377 = load i32, ptr %1373, align 1
  %1378 = load i32, ptr %1374, align 1
  %1379 = xor i32 %1378, %1377
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1370, label %1381

1381:                                             ; preds = %1376
  %1382 = tail call i32 @llvm.cttz.i32(i32 %1379, i1 true) #4, !range !8
  %1383 = lshr i32 %1382, 3
  %1384 = getelementptr i8, ptr %1374, i32 %1383
  %1385 = ptrtoint ptr %1384 to i32
  %1386 = ptrtoint ptr %1360 to i32
  %1387 = sub i32 %1385, %1386
  br label %1414

1388:                                             ; preds = %1370, %1359
  %1389 = phi ptr [ %1360, %1359 ], [ %1374, %1370 ]
  %1390 = phi ptr [ %980, %1359 ], [ %1373, %1370 ]
  %1391 = icmp ult ptr %1389, %1021
  br i1 %1391, label %1392, label %1399

1392:                                             ; preds = %1388
  %1393 = load i16, ptr %1390, align 1
  %1394 = load i16, ptr %1389, align 1
  %1395 = icmp eq i16 %1393, %1394
  br i1 %1395, label %1396, label %1399

1396:                                             ; preds = %1392
  %1397 = getelementptr i8, ptr %1389, i32 2
  %1398 = getelementptr i8, ptr %1390, i32 2
  br label %1399

1399:                                             ; preds = %1396, %1392, %1388
  %1400 = phi ptr [ %1397, %1396 ], [ %1389, %1392 ], [ %1389, %1388 ]
  %1401 = phi ptr [ %1398, %1396 ], [ %1390, %1392 ], [ %1390, %1388 ]
  %1402 = icmp ult ptr %1400, %981
  br i1 %1402, label %1403, label %1409

1403:                                             ; preds = %1399
  %1404 = load i8, ptr %1401, align 1
  %1405 = load i8, ptr %1400, align 1
  %1406 = icmp eq i8 %1404, %1405
  %1407 = zext i1 %1406 to i32
  %1408 = getelementptr i8, ptr %1400, i32 %1407
  br label %1409

1409:                                             ; preds = %1403, %1399
  %1410 = phi ptr [ %1400, %1399 ], [ %1408, %1403 ]
  %1411 = ptrtoint ptr %1410 to i32
  %1412 = ptrtoint ptr %1360 to i32
  %1413 = sub i32 %1411, %1412
  br label %1414

1414:                                             ; preds = %1409, %1381, %1367
  %1415 = phi i32 [ %1413, %1409 ], [ %1369, %1367 ], [ %1387, %1381 ]
  %1416 = add i32 %1415, %1356
  br label %1417

1417:                                             ; preds = %1414, %1355
  %1418 = phi i32 [ %1416, %1414 ], [ %1356, %1355 ]
  %1419 = add i32 %1418, 4
  %1420 = icmp ugt ptr %1031, %1032
  %1421 = icmp ugt ptr %1283, %994
  %1422 = and i1 %1420, %1421
  br i1 %1422, label %1423, label %1441

1423:                                             ; preds = %1432, %1417
  %1424 = phi ptr [ %1429, %1432 ], [ %1283, %1417 ]
  %1425 = phi ptr [ %1427, %1432 ], [ %1031, %1417 ]
  %1426 = phi i32 [ %1433, %1432 ], [ %1419, %1417 ]
  %1427 = getelementptr i8, ptr %1425, i32 -1
  %1428 = load i8, ptr %1427, align 1
  %1429 = getelementptr i8, ptr %1424, i32 -1
  %1430 = load i8, ptr %1429, align 1
  %1431 = icmp eq i8 %1428, %1430
  br i1 %1431, label %1432, label %1437

1432:                                             ; preds = %1423
  %1433 = add i32 %1426, 1
  %1434 = icmp ugt ptr %1427, %1032
  %1435 = icmp ugt ptr %1429, %994
  %1436 = and i1 %1435, %1434
  br i1 %1436, label %1423, label %1437

1437:                                             ; preds = %1432, %1423
  %1438 = phi i32 [ %1426, %1423 ], [ %1433, %1432 ]
  %1439 = phi ptr [ %1425, %1423 ], [ %1427, %1432 ]
  %1440 = ptrtoint ptr %1439 to i32
  br label %1441

1441:                                             ; preds = %1437, %1417
  %1442 = phi i32 [ %1440, %1437 ], [ %1039, %1417 ]
  %1443 = phi i32 [ %1438, %1437 ], [ %1419, %1417 ]
  %1444 = phi ptr [ %1439, %1437 ], [ %1031, %1417 ]
  %1445 = ptrtoint ptr %1032 to i32
  %1446 = sub i32 %1442, %1445
  %1447 = add i32 %1443, -3
  %1448 = getelementptr i8, ptr %1032, i32 %1446
  %1449 = icmp ugt ptr %1448, %1022
  %1450 = load ptr, ptr %1023, align 4
  br i1 %1449, label %1472, label %1451

1451:                                             ; preds = %1441
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1450, ptr noundef align 1 dereferenceable(16) %1032, i32 16, i1 false) #4
  %1452 = icmp ugt i32 %1446, 16
  %1453 = load ptr, ptr %1023, align 4
  br i1 %1452, label %1456, label %1454

1454:                                             ; preds = %1451
  %1455 = getelementptr i8, ptr %1453, i32 %1446
  store ptr %1455, ptr %1023, align 4
  br label %1515

1456:                                             ; preds = %1451
  %1457 = getelementptr i8, ptr %1453, i32 16
  %1458 = getelementptr i8, ptr %1032, i32 16
  %1459 = add i32 %1446, -16
  %1460 = getelementptr i8, ptr %1453, i32 %1446
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1457, ptr noundef align 1 dereferenceable(16) %1458, i32 16, i1 false) #4
  %1461 = icmp slt i32 %1459, 17
  br i1 %1461, label %1504, label %1462

1462:                                             ; preds = %1456
  %1463 = getelementptr i8, ptr %1453, i32 32
  br label %1464

1464:                                             ; preds = %1464, %1462
  %1465 = phi ptr [ %1458, %1462 ], [ %1469, %1464 ]
  %1466 = phi ptr [ %1463, %1462 ], [ %1470, %1464 ]
  %1467 = getelementptr i8, ptr %1465, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1466, ptr noundef align 1 dereferenceable(16) %1467, i32 16, i1 false) #4
  %1468 = getelementptr i8, ptr %1466, i32 16
  %1469 = getelementptr i8, ptr %1465, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1468, ptr noundef align 1 dereferenceable(16) %1469, i32 16, i1 false) #4
  %1470 = getelementptr i8, ptr %1466, i32 32
  %1471 = icmp ult ptr %1470, %1460
  br i1 %1471, label %1464, label %1504

1472:                                             ; preds = %1441
  %1473 = ptrtoint ptr %1448 to i32
  %1474 = icmp ult ptr %1022, %1032
  br i1 %1474, label %1489, label %1475

1475:                                             ; preds = %1472
  %1476 = sub i32 %1024, %1445
  %1477 = getelementptr i8, ptr %1450, i32 %1476
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1450, ptr noundef align 1 dereferenceable(16) %1032, i32 16, i1 false) #4
  %1478 = icmp slt i32 %1476, 17
  br i1 %1478, label %1489, label %1479

1479:                                             ; preds = %1475
  %1480 = getelementptr i8, ptr %1450, i32 16
  br label %1481

1481:                                             ; preds = %1481, %1479
  %1482 = phi ptr [ %1032, %1479 ], [ %1486, %1481 ]
  %1483 = phi ptr [ %1480, %1479 ], [ %1487, %1481 ]
  %1484 = getelementptr i8, ptr %1482, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1483, ptr noundef align 1 dereferenceable(16) %1484, i32 16, i1 false) #4
  %1485 = getelementptr i8, ptr %1483, i32 16
  %1486 = getelementptr i8, ptr %1482, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1485, ptr noundef align 1 dereferenceable(16) %1486, i32 16, i1 false) #4
  %1487 = getelementptr i8, ptr %1483, i32 32
  %1488 = icmp ult ptr %1487, %1477
  br i1 %1488, label %1481, label %1489

1489:                                             ; preds = %1481, %1475, %1472
  %1490 = phi ptr [ %1022, %1475 ], [ %1032, %1472 ], [ %1022, %1481 ]
  %1491 = phi ptr [ %1477, %1475 ], [ %1450, %1472 ], [ %1477, %1481 ]
  %1492 = icmp ult ptr %1490, %1448
  br i1 %1492, label %1493, label %1504

1493:                                             ; preds = %1489
  %1494 = ptrtoint ptr %1490 to i32
  %1495 = sub i32 %1473, %1494
  %1496 = getelementptr i8, ptr %1490, i32 %1495
  br label %1497

1497:                                             ; preds = %1497, %1493
  %1498 = phi ptr [ %1502, %1497 ], [ %1491, %1493 ]
  %1499 = phi ptr [ %1500, %1497 ], [ %1490, %1493 ]
  %1500 = getelementptr i8, ptr %1499, i32 1
  %1501 = load i8, ptr %1499, align 1
  %1502 = getelementptr i8, ptr %1498, i32 1
  store i8 %1501, ptr %1498, align 1
  %1503 = icmp eq ptr %1500, %1496
  br i1 %1503, label %1504, label %1497

1504:                                             ; preds = %1497, %1489, %1464, %1456
  %1505 = load ptr, ptr %1023, align 4
  %1506 = getelementptr i8, ptr %1505, i32 %1446
  store ptr %1506, ptr %1023, align 4
  %1507 = icmp ugt i32 %1446, 65535
  br i1 %1507, label %1508, label %1515

1508:                                             ; preds = %1504
  store i32 1, ptr %1025, align 4
  %1509 = load ptr, ptr %1026, align 4
  %1510 = load ptr, ptr %1, align 4
  %1511 = ptrtoint ptr %1509 to i32
  %1512 = ptrtoint ptr %1510 to i32
  %1513 = sub i32 %1511, %1512
  %1514 = ashr exact i32 %1513, 3
  store i32 %1514, ptr %1027, align 4
  br label %1515

1515:                                             ; preds = %1508, %1504, %1454
  %1516 = trunc i32 %1446 to i16
  %1517 = load ptr, ptr %1026, align 4
  %1518 = getelementptr inbounds %struct.seqDef_s, ptr %1517, i32 0, i32 1
  store i16 %1516, ptr %1518, align 4
  %1519 = add i32 %1293, 3
  %1520 = load ptr, ptr %1026, align 4
  store i32 %1519, ptr %1520, align 4
  %1521 = icmp ugt i32 %1447, 65535
  br i1 %1521, label %1524, label %1522

1522:                                             ; preds = %1515
  %1523 = load ptr, ptr %1026, align 4
  br label %1719

1524:                                             ; preds = %1515
  store i32 2, ptr %1025, align 4
  %1525 = load ptr, ptr %1026, align 4
  %1526 = load ptr, ptr %1, align 4
  %1527 = ptrtoint ptr %1525 to i32
  %1528 = ptrtoint ptr %1526 to i32
  %1529 = sub i32 %1527, %1528
  %1530 = ashr exact i32 %1529, 3
  store i32 %1530, ptr %1027, align 4
  br label %1719

1531:                                             ; preds = %1287, %1276
  %1532 = ptrtoint ptr %1032 to i32
  %1533 = sub i32 %1039, %1532
  %1534 = ashr i32 %1533, 8
  %1535 = add i32 %1534, %975
  %1536 = getelementptr i8, ptr %1031, i32 %1535
  br label %1925

1537:                                             ; preds = %1274
  %1538 = load i32, ptr %1043, align 1
  %1539 = load i32, ptr %1031, align 1
  %1540 = icmp eq i32 %1538, %1539
  br i1 %1540, label %1547, label %1541

1541:                                             ; preds = %1537
  %1542 = ptrtoint ptr %1032 to i32
  %1543 = sub i32 %1039, %1542
  %1544 = ashr i32 %1543, 8
  %1545 = add i32 %1544, %975
  %1546 = getelementptr i8, ptr %1031, i32 %1545
  br label %1925

1547:                                             ; preds = %1537
  %1548 = ptrtoint ptr %1043 to i32
  %1549 = sub i32 %1039, %1548
  %1550 = getelementptr i8, ptr %1031, i32 4
  %1551 = getelementptr i8, ptr %1043, i32 4
  %1552 = icmp ugt ptr %1020, %1550
  br i1 %1552, label %1553, label %1579

1553:                                             ; preds = %1547
  %1554 = load i32, ptr %1551, align 1
  %1555 = load i32, ptr %1550, align 1
  %1556 = xor i32 %1555, %1554
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1561, label %1558

1558:                                             ; preds = %1553
  %1559 = tail call i32 @llvm.cttz.i32(i32 %1556, i1 true) #4, !range !8
  %1560 = lshr i32 %1559, 3
  br label %1605

1561:                                             ; preds = %1567, %1553
  %1562 = phi ptr [ %1565, %1567 ], [ %1550, %1553 ]
  %1563 = phi ptr [ %1564, %1567 ], [ %1551, %1553 ]
  %1564 = getelementptr i8, ptr %1563, i32 4
  %1565 = getelementptr i8, ptr %1562, i32 4
  %1566 = icmp ult ptr %1565, %1020
  br i1 %1566, label %1567, label %1579

1567:                                             ; preds = %1561
  %1568 = load i32, ptr %1564, align 1
  %1569 = load i32, ptr %1565, align 1
  %1570 = xor i32 %1569, %1568
  %1571 = icmp eq i32 %1570, 0
  br i1 %1571, label %1561, label %1572

1572:                                             ; preds = %1567
  %1573 = tail call i32 @llvm.cttz.i32(i32 %1570, i1 true) #4, !range !8
  %1574 = lshr i32 %1573, 3
  %1575 = getelementptr i8, ptr %1565, i32 %1574
  %1576 = ptrtoint ptr %1575 to i32
  %1577 = ptrtoint ptr %1550 to i32
  %1578 = sub i32 %1576, %1577
  br label %1605

1579:                                             ; preds = %1561, %1547
  %1580 = phi ptr [ %1550, %1547 ], [ %1565, %1561 ]
  %1581 = phi ptr [ %1551, %1547 ], [ %1564, %1561 ]
  %1582 = icmp ult ptr %1580, %1021
  br i1 %1582, label %1583, label %1590

1583:                                             ; preds = %1579
  %1584 = load i16, ptr %1581, align 1
  %1585 = load i16, ptr %1580, align 1
  %1586 = icmp eq i16 %1584, %1585
  br i1 %1586, label %1587, label %1590

1587:                                             ; preds = %1583
  %1588 = getelementptr i8, ptr %1580, i32 2
  %1589 = getelementptr i8, ptr %1581, i32 2
  br label %1590

1590:                                             ; preds = %1587, %1583, %1579
  %1591 = phi ptr [ %1588, %1587 ], [ %1580, %1583 ], [ %1580, %1579 ]
  %1592 = phi ptr [ %1589, %1587 ], [ %1581, %1583 ], [ %1581, %1579 ]
  %1593 = icmp ult ptr %1591, %981
  br i1 %1593, label %1594, label %1600

1594:                                             ; preds = %1590
  %1595 = load i8, ptr %1592, align 1
  %1596 = load i8, ptr %1591, align 1
  %1597 = icmp eq i8 %1595, %1596
  %1598 = zext i1 %1597 to i32
  %1599 = getelementptr i8, ptr %1591, i32 %1598
  br label %1600

1600:                                             ; preds = %1594, %1590
  %1601 = phi ptr [ %1591, %1590 ], [ %1599, %1594 ]
  %1602 = ptrtoint ptr %1601 to i32
  %1603 = ptrtoint ptr %1550 to i32
  %1604 = sub i32 %1602, %1603
  br label %1605

1605:                                             ; preds = %1600, %1572, %1558
  %1606 = phi i32 [ %1604, %1600 ], [ %1560, %1558 ], [ %1578, %1572 ]
  %1607 = add i32 %1606, 4
  %1608 = icmp ugt ptr %1031, %1032
  %1609 = icmp ugt ptr %1043, %980
  %1610 = and i1 %1608, %1609
  br i1 %1610, label %1611, label %1629

1611:                                             ; preds = %1620, %1605
  %1612 = phi ptr [ %1615, %1620 ], [ %1031, %1605 ]
  %1613 = phi ptr [ %1617, %1620 ], [ %1043, %1605 ]
  %1614 = phi i32 [ %1621, %1620 ], [ %1607, %1605 ]
  %1615 = getelementptr i8, ptr %1612, i32 -1
  %1616 = load i8, ptr %1615, align 1
  %1617 = getelementptr i8, ptr %1613, i32 -1
  %1618 = load i8, ptr %1617, align 1
  %1619 = icmp eq i8 %1616, %1618
  br i1 %1619, label %1620, label %1625

1620:                                             ; preds = %1611
  %1621 = add i32 %1614, 1
  %1622 = icmp ugt ptr %1615, %1032
  %1623 = icmp ugt ptr %1617, %980
  %1624 = and i1 %1622, %1623
  br i1 %1624, label %1611, label %1625

1625:                                             ; preds = %1620, %1611
  %1626 = phi i32 [ %1614, %1611 ], [ %1621, %1620 ]
  %1627 = phi ptr [ %1612, %1611 ], [ %1615, %1620 ]
  %1628 = ptrtoint ptr %1627 to i32
  br label %1629

1629:                                             ; preds = %1625, %1605
  %1630 = phi i32 [ %1628, %1625 ], [ %1039, %1605 ]
  %1631 = phi i32 [ %1626, %1625 ], [ %1607, %1605 ]
  %1632 = phi ptr [ %1627, %1625 ], [ %1031, %1605 ]
  %1633 = ptrtoint ptr %1032 to i32
  %1634 = sub i32 %1630, %1633
  %1635 = add i32 %1631, -3
  %1636 = getelementptr i8, ptr %1032, i32 %1634
  %1637 = icmp ugt ptr %1636, %1022
  %1638 = load ptr, ptr %1023, align 4
  br i1 %1637, label %1660, label %1639

1639:                                             ; preds = %1629
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1638, ptr noundef align 1 dereferenceable(16) %1032, i32 16, i1 false) #4
  %1640 = icmp ugt i32 %1634, 16
  %1641 = load ptr, ptr %1023, align 4
  br i1 %1640, label %1644, label %1642

1642:                                             ; preds = %1639
  %1643 = getelementptr i8, ptr %1641, i32 %1634
  store ptr %1643, ptr %1023, align 4
  br label %1703

1644:                                             ; preds = %1639
  %1645 = getelementptr i8, ptr %1641, i32 16
  %1646 = getelementptr i8, ptr %1032, i32 16
  %1647 = add i32 %1634, -16
  %1648 = getelementptr i8, ptr %1641, i32 %1634
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1645, ptr noundef align 1 dereferenceable(16) %1646, i32 16, i1 false) #4
  %1649 = icmp slt i32 %1647, 17
  br i1 %1649, label %1692, label %1650

1650:                                             ; preds = %1644
  %1651 = getelementptr i8, ptr %1641, i32 32
  br label %1652

1652:                                             ; preds = %1652, %1650
  %1653 = phi ptr [ %1646, %1650 ], [ %1657, %1652 ]
  %1654 = phi ptr [ %1651, %1650 ], [ %1658, %1652 ]
  %1655 = getelementptr i8, ptr %1653, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1654, ptr noundef align 1 dereferenceable(16) %1655, i32 16, i1 false) #4
  %1656 = getelementptr i8, ptr %1654, i32 16
  %1657 = getelementptr i8, ptr %1653, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1656, ptr noundef align 1 dereferenceable(16) %1657, i32 16, i1 false) #4
  %1658 = getelementptr i8, ptr %1654, i32 32
  %1659 = icmp ult ptr %1658, %1648
  br i1 %1659, label %1652, label %1692

1660:                                             ; preds = %1629
  %1661 = ptrtoint ptr %1636 to i32
  %1662 = icmp ult ptr %1022, %1032
  br i1 %1662, label %1677, label %1663

1663:                                             ; preds = %1660
  %1664 = sub i32 %1024, %1633
  %1665 = getelementptr i8, ptr %1638, i32 %1664
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1638, ptr noundef align 1 dereferenceable(16) %1032, i32 16, i1 false) #4
  %1666 = icmp slt i32 %1664, 17
  br i1 %1666, label %1677, label %1667

1667:                                             ; preds = %1663
  %1668 = getelementptr i8, ptr %1638, i32 16
  br label %1669

1669:                                             ; preds = %1669, %1667
  %1670 = phi ptr [ %1032, %1667 ], [ %1674, %1669 ]
  %1671 = phi ptr [ %1668, %1667 ], [ %1675, %1669 ]
  %1672 = getelementptr i8, ptr %1670, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1671, ptr noundef align 1 dereferenceable(16) %1672, i32 16, i1 false) #4
  %1673 = getelementptr i8, ptr %1671, i32 16
  %1674 = getelementptr i8, ptr %1670, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1673, ptr noundef align 1 dereferenceable(16) %1674, i32 16, i1 false) #4
  %1675 = getelementptr i8, ptr %1671, i32 32
  %1676 = icmp ult ptr %1675, %1665
  br i1 %1676, label %1669, label %1677

1677:                                             ; preds = %1669, %1663, %1660
  %1678 = phi ptr [ %1022, %1663 ], [ %1032, %1660 ], [ %1022, %1669 ]
  %1679 = phi ptr [ %1665, %1663 ], [ %1638, %1660 ], [ %1665, %1669 ]
  %1680 = icmp ult ptr %1678, %1636
  br i1 %1680, label %1681, label %1692

1681:                                             ; preds = %1677
  %1682 = ptrtoint ptr %1678 to i32
  %1683 = sub i32 %1661, %1682
  %1684 = getelementptr i8, ptr %1678, i32 %1683
  br label %1685

1685:                                             ; preds = %1685, %1681
  %1686 = phi ptr [ %1690, %1685 ], [ %1679, %1681 ]
  %1687 = phi ptr [ %1688, %1685 ], [ %1678, %1681 ]
  %1688 = getelementptr i8, ptr %1687, i32 1
  %1689 = load i8, ptr %1687, align 1
  %1690 = getelementptr i8, ptr %1686, i32 1
  store i8 %1689, ptr %1686, align 1
  %1691 = icmp eq ptr %1688, %1684
  br i1 %1691, label %1692, label %1685

1692:                                             ; preds = %1685, %1677, %1652, %1644
  %1693 = load ptr, ptr %1023, align 4
  %1694 = getelementptr i8, ptr %1693, i32 %1634
  store ptr %1694, ptr %1023, align 4
  %1695 = icmp ugt i32 %1634, 65535
  br i1 %1695, label %1696, label %1703

1696:                                             ; preds = %1692
  store i32 1, ptr %1025, align 4
  %1697 = load ptr, ptr %1026, align 4
  %1698 = load ptr, ptr %1, align 4
  %1699 = ptrtoint ptr %1697 to i32
  %1700 = ptrtoint ptr %1698 to i32
  %1701 = sub i32 %1699, %1700
  %1702 = ashr exact i32 %1701, 3
  store i32 %1702, ptr %1027, align 4
  br label %1703

1703:                                             ; preds = %1696, %1692, %1642
  %1704 = trunc i32 %1634 to i16
  %1705 = load ptr, ptr %1026, align 4
  %1706 = getelementptr inbounds %struct.seqDef_s, ptr %1705, i32 0, i32 1
  store i16 %1704, ptr %1706, align 4
  %1707 = add i32 %1549, 3
  %1708 = load ptr, ptr %1026, align 4
  store i32 %1707, ptr %1708, align 4
  %1709 = icmp ugt i32 %1635, 65535
  br i1 %1709, label %1712, label %1710

1710:                                             ; preds = %1703
  %1711 = load ptr, ptr %1026, align 4
  br label %1719

1712:                                             ; preds = %1703
  store i32 2, ptr %1025, align 4
  %1713 = load ptr, ptr %1026, align 4
  %1714 = load ptr, ptr %1, align 4
  %1715 = ptrtoint ptr %1713 to i32
  %1716 = ptrtoint ptr %1714 to i32
  %1717 = sub i32 %1715, %1716
  %1718 = ashr exact i32 %1717, 3
  store i32 %1718, ptr %1027, align 4
  br label %1719

1719:                                             ; preds = %1712, %1710, %1524, %1522, %1267, %1265
  %1720 = phi i32 [ %1191, %1265 ], [ %1191, %1267 ], [ %1447, %1524 ], [ %1447, %1522 ], [ %1635, %1710 ], [ %1635, %1712 ]
  %1721 = phi ptr [ %1266, %1265 ], [ %1268, %1267 ], [ %1525, %1524 ], [ %1523, %1522 ], [ %1711, %1710 ], [ %1713, %1712 ]
  %1722 = phi i32 [ %1034, %1265 ], [ %1034, %1267 ], [ %1293, %1524 ], [ %1293, %1522 ], [ %1549, %1710 ], [ %1549, %1712 ]
  %1723 = phi i32 [ %1033, %1265 ], [ %1033, %1267 ], [ %1034, %1524 ], [ %1034, %1522 ], [ %1034, %1710 ], [ %1034, %1712 ]
  %1724 = phi i32 [ %1187, %1265 ], [ %1187, %1267 ], [ %1443, %1524 ], [ %1443, %1522 ], [ %1631, %1710 ], [ %1631, %1712 ]
  %1725 = phi ptr [ %1055, %1265 ], [ %1055, %1267 ], [ %1444, %1524 ], [ %1444, %1522 ], [ %1632, %1710 ], [ %1632, %1712 ]
  %1726 = trunc i32 %1720 to i16
  %1727 = getelementptr inbounds %struct.seqDef_s, ptr %1721, i32 0, i32 2
  store i16 %1726, ptr %1727, align 2
  %1728 = load ptr, ptr %1026, align 4
  %1729 = getelementptr %struct.seqDef_s, ptr %1728, i32 1
  store ptr %1729, ptr %1026, align 4
  %1730 = getelementptr i8, ptr %1725, i32 %1724
  %1731 = icmp ugt ptr %1730, %982
  br i1 %1731, label %1925, label %1732

1732:                                             ; preds = %1719
  %1733 = add i32 %1040, 2
  %1734 = getelementptr i8, ptr %1029, i32 %1040
  %1735 = load i64, ptr %1734, align 1
  %1736 = mul i64 %1735, -3523014627271114752
  %1737 = lshr i64 %1736, %1016
  %1738 = trunc i64 %1737 to i32
  %1739 = getelementptr i32, ptr %970, i32 %1738
  store i32 %1733, ptr %1739, align 4
  %1740 = getelementptr i8, ptr %1730, i32 -2
  %1741 = load i64, ptr %1740, align 1
  %1742 = mul i64 %1741, -3523014627271114752
  %1743 = lshr i64 %1742, %1016
  %1744 = trunc i64 %1743 to i32
  %1745 = ptrtoint ptr %1740 to i32
  %1746 = sub i32 %1745, %1004
  %1747 = getelementptr i32, ptr %970, i32 %1744
  store i32 %1746, ptr %1747, align 4
  br label %1748

1748:                                             ; preds = %1912, %1732
  %1749 = phi ptr [ %1923, %1912 ], [ %1730, %1732 ]
  %1750 = phi i32 [ %1751, %1912 ], [ %1723, %1732 ]
  %1751 = phi i32 [ %1750, %1912 ], [ %1722, %1732 ]
  %1752 = ptrtoint ptr %1749 to i32
  %1753 = sub i32 %1752, %1004
  %1754 = sub i32 %1753, %1750
  %1755 = icmp ult i32 %1754, %979
  %1756 = select i1 %1755, ptr %1028, ptr %977
  %1757 = getelementptr i8, ptr %1756, i32 %1754
  %1758 = sub i32 %1017, %1754
  %1759 = icmp ugt i32 %1758, 2
  br i1 %1759, label %1760, label %1925

1760:                                             ; preds = %1748
  %1761 = load i32, ptr %1757, align 1
  %1762 = load i32, ptr %1749, align 1
  %1763 = icmp eq i32 %1761, %1762
  br i1 %1763, label %1764, label %1925

1764:                                             ; preds = %1760
  %1765 = select i1 %1755, ptr %995, ptr %981
  %1766 = getelementptr i8, ptr %1749, i32 4
  %1767 = getelementptr i8, ptr %1757, i32 4
  %1768 = ptrtoint ptr %1765 to i32
  %1769 = ptrtoint ptr %1767 to i32
  %1770 = sub i32 %1768, %1769
  %1771 = getelementptr i8, ptr %1766, i32 %1770
  %1772 = icmp ult ptr %1771, %981
  %1773 = select i1 %1772, ptr %1771, ptr %981
  %1774 = getelementptr i8, ptr %1773, i32 -3
  %1775 = icmp ugt ptr %1774, %1766
  br i1 %1775, label %1776, label %1802

1776:                                             ; preds = %1764
  %1777 = load i32, ptr %1767, align 1
  %1778 = load i32, ptr %1766, align 1
  %1779 = xor i32 %1778, %1777
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %1784, label %1781

1781:                                             ; preds = %1776
  %1782 = tail call i32 @llvm.cttz.i32(i32 %1779, i1 true) #4, !range !8
  %1783 = lshr i32 %1782, 3
  br label %1829

1784:                                             ; preds = %1790, %1776
  %1785 = phi ptr [ %1788, %1790 ], [ %1766, %1776 ]
  %1786 = phi ptr [ %1787, %1790 ], [ %1767, %1776 ]
  %1787 = getelementptr i8, ptr %1786, i32 4
  %1788 = getelementptr i8, ptr %1785, i32 4
  %1789 = icmp ult ptr %1788, %1774
  br i1 %1789, label %1790, label %1802

1790:                                             ; preds = %1784
  %1791 = load i32, ptr %1787, align 1
  %1792 = load i32, ptr %1788, align 1
  %1793 = xor i32 %1792, %1791
  %1794 = icmp eq i32 %1793, 0
  br i1 %1794, label %1784, label %1795

1795:                                             ; preds = %1790
  %1796 = tail call i32 @llvm.cttz.i32(i32 %1793, i1 true) #4, !range !8
  %1797 = lshr i32 %1796, 3
  %1798 = getelementptr i8, ptr %1788, i32 %1797
  %1799 = ptrtoint ptr %1798 to i32
  %1800 = ptrtoint ptr %1766 to i32
  %1801 = sub i32 %1799, %1800
  br label %1829

1802:                                             ; preds = %1784, %1764
  %1803 = phi ptr [ %1766, %1764 ], [ %1788, %1784 ]
  %1804 = phi ptr [ %1767, %1764 ], [ %1787, %1784 ]
  %1805 = getelementptr i8, ptr %1773, i32 -1
  %1806 = icmp ult ptr %1803, %1805
  br i1 %1806, label %1807, label %1814

1807:                                             ; preds = %1802
  %1808 = load i16, ptr %1804, align 1
  %1809 = load i16, ptr %1803, align 1
  %1810 = icmp eq i16 %1808, %1809
  br i1 %1810, label %1811, label %1814

1811:                                             ; preds = %1807
  %1812 = getelementptr i8, ptr %1803, i32 2
  %1813 = getelementptr i8, ptr %1804, i32 2
  br label %1814

1814:                                             ; preds = %1811, %1807, %1802
  %1815 = phi ptr [ %1812, %1811 ], [ %1803, %1807 ], [ %1803, %1802 ]
  %1816 = phi ptr [ %1813, %1811 ], [ %1804, %1807 ], [ %1804, %1802 ]
  %1817 = icmp ult ptr %1815, %1773
  br i1 %1817, label %1818, label %1824

1818:                                             ; preds = %1814
  %1819 = load i8, ptr %1816, align 1
  %1820 = load i8, ptr %1815, align 1
  %1821 = icmp eq i8 %1819, %1820
  %1822 = zext i1 %1821 to i32
  %1823 = getelementptr i8, ptr %1815, i32 %1822
  br label %1824

1824:                                             ; preds = %1818, %1814
  %1825 = phi ptr [ %1815, %1814 ], [ %1823, %1818 ]
  %1826 = ptrtoint ptr %1825 to i32
  %1827 = ptrtoint ptr %1766 to i32
  %1828 = sub i32 %1826, %1827
  br label %1829

1829:                                             ; preds = %1824, %1795, %1781
  %1830 = phi i32 [ %1828, %1824 ], [ %1783, %1781 ], [ %1801, %1795 ]
  %1831 = getelementptr i8, ptr %1767, i32 %1830
  %1832 = icmp eq ptr %1831, %1765
  br i1 %1832, label %1833, label %1891

1833:                                             ; preds = %1829
  %1834 = getelementptr i8, ptr %1766, i32 %1830
  %1835 = icmp ugt ptr %1020, %1834
  br i1 %1835, label %1836, label %1862

1836:                                             ; preds = %1833
  %1837 = load i32, ptr %980, align 1
  %1838 = load i32, ptr %1834, align 1
  %1839 = xor i32 %1838, %1837
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1844, label %1841

1841:                                             ; preds = %1836
  %1842 = tail call i32 @llvm.cttz.i32(i32 %1839, i1 true) #4, !range !8
  %1843 = lshr i32 %1842, 3
  br label %1888

1844:                                             ; preds = %1850, %1836
  %1845 = phi ptr [ %1848, %1850 ], [ %1834, %1836 ]
  %1846 = phi ptr [ %1847, %1850 ], [ %980, %1836 ]
  %1847 = getelementptr i8, ptr %1846, i32 4
  %1848 = getelementptr i8, ptr %1845, i32 4
  %1849 = icmp ult ptr %1848, %1020
  br i1 %1849, label %1850, label %1862

1850:                                             ; preds = %1844
  %1851 = load i32, ptr %1847, align 1
  %1852 = load i32, ptr %1848, align 1
  %1853 = xor i32 %1852, %1851
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1844, label %1855

1855:                                             ; preds = %1850
  %1856 = tail call i32 @llvm.cttz.i32(i32 %1853, i1 true) #4, !range !8
  %1857 = lshr i32 %1856, 3
  %1858 = getelementptr i8, ptr %1848, i32 %1857
  %1859 = ptrtoint ptr %1858 to i32
  %1860 = ptrtoint ptr %1834 to i32
  %1861 = sub i32 %1859, %1860
  br label %1888

1862:                                             ; preds = %1844, %1833
  %1863 = phi ptr [ %1834, %1833 ], [ %1848, %1844 ]
  %1864 = phi ptr [ %980, %1833 ], [ %1847, %1844 ]
  %1865 = icmp ult ptr %1863, %1021
  br i1 %1865, label %1866, label %1873

1866:                                             ; preds = %1862
  %1867 = load i16, ptr %1864, align 1
  %1868 = load i16, ptr %1863, align 1
  %1869 = icmp eq i16 %1867, %1868
  br i1 %1869, label %1870, label %1873

1870:                                             ; preds = %1866
  %1871 = getelementptr i8, ptr %1863, i32 2
  %1872 = getelementptr i8, ptr %1864, i32 2
  br label %1873

1873:                                             ; preds = %1870, %1866, %1862
  %1874 = phi ptr [ %1871, %1870 ], [ %1863, %1866 ], [ %1863, %1862 ]
  %1875 = phi ptr [ %1872, %1870 ], [ %1864, %1866 ], [ %1864, %1862 ]
  %1876 = icmp ult ptr %1874, %981
  br i1 %1876, label %1877, label %1883

1877:                                             ; preds = %1873
  %1878 = load i8, ptr %1875, align 1
  %1879 = load i8, ptr %1874, align 1
  %1880 = icmp eq i8 %1878, %1879
  %1881 = zext i1 %1880 to i32
  %1882 = getelementptr i8, ptr %1874, i32 %1881
  br label %1883

1883:                                             ; preds = %1877, %1873
  %1884 = phi ptr [ %1874, %1873 ], [ %1882, %1877 ]
  %1885 = ptrtoint ptr %1884 to i32
  %1886 = ptrtoint ptr %1834 to i32
  %1887 = sub i32 %1885, %1886
  br label %1888

1888:                                             ; preds = %1883, %1855, %1841
  %1889 = phi i32 [ %1887, %1883 ], [ %1843, %1841 ], [ %1861, %1855 ]
  %1890 = add i32 %1889, %1830
  br label %1891

1891:                                             ; preds = %1888, %1829
  %1892 = phi i32 [ %1890, %1888 ], [ %1830, %1829 ]
  %1893 = add i32 %1892, 4
  %1894 = add i32 %1892, 1
  %1895 = icmp ugt ptr %1749, %1022
  br i1 %1895, label %1898, label %1896

1896:                                             ; preds = %1891
  %1897 = load ptr, ptr %1023, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1897, ptr noundef align 1 dereferenceable(16) %1749, i32 16, i1 false) #4
  br label %1898

1898:                                             ; preds = %1896, %1891
  %1899 = load ptr, ptr %1026, align 4
  %1900 = getelementptr inbounds %struct.seqDef_s, ptr %1899, i32 0, i32 1
  store i16 0, ptr %1900, align 4
  %1901 = load ptr, ptr %1026, align 4
  store i32 1, ptr %1901, align 4
  %1902 = icmp ugt i32 %1894, 65535
  br i1 %1902, label %1905, label %1903

1903:                                             ; preds = %1898
  %1904 = load ptr, ptr %1026, align 4
  br label %1912

1905:                                             ; preds = %1898
  store i32 2, ptr %1025, align 4
  %1906 = load ptr, ptr %1026, align 4
  %1907 = load ptr, ptr %1, align 4
  %1908 = ptrtoint ptr %1906 to i32
  %1909 = ptrtoint ptr %1907 to i32
  %1910 = sub i32 %1908, %1909
  %1911 = ashr exact i32 %1910, 3
  store i32 %1911, ptr %1027, align 4
  br label %1912

1912:                                             ; preds = %1905, %1903
  %1913 = phi ptr [ %1904, %1903 ], [ %1906, %1905 ]
  %1914 = trunc i32 %1894 to i16
  %1915 = getelementptr inbounds %struct.seqDef_s, ptr %1913, i32 0, i32 2
  store i16 %1914, ptr %1915, align 2
  %1916 = load ptr, ptr %1026, align 4
  %1917 = getelementptr %struct.seqDef_s, ptr %1916, i32 1
  store ptr %1917, ptr %1026, align 4
  %1918 = load i64, ptr %1749, align 1
  %1919 = mul i64 %1918, -3523014627271114752
  %1920 = lshr i64 %1919, %1016
  %1921 = trunc i64 %1920 to i32
  %1922 = getelementptr i32, ptr %970, i32 %1921
  store i32 %1753, ptr %1922, align 4
  %1923 = getelementptr i8, ptr %1749, i32 %1893
  %1924 = icmp ugt ptr %1923, %982
  br i1 %1924, label %1925, label %1748

1925:                                             ; preds = %1912, %1760, %1748, %1719, %1541, %1531
  %1926 = phi i32 [ %1034, %1531 ], [ %1034, %1541 ], [ %1722, %1719 ], [ %1751, %1748 ], [ %1751, %1760 ], [ %1750, %1912 ]
  %1927 = phi i32 [ %1033, %1531 ], [ %1033, %1541 ], [ %1723, %1719 ], [ %1750, %1748 ], [ %1750, %1760 ], [ %1751, %1912 ]
  %1928 = phi ptr [ %1032, %1531 ], [ %1032, %1541 ], [ %1730, %1719 ], [ %1749, %1748 ], [ %1749, %1760 ], [ %1923, %1912 ]
  %1929 = phi ptr [ %1536, %1531 ], [ %1546, %1541 ], [ %1730, %1719 ], [ %1749, %1748 ], [ %1749, %1760 ], [ %1923, %1912 ]
  %1930 = icmp ult ptr %1929, %982
  br i1 %1930, label %1030, label %1931

1931:                                             ; preds = %1925
  %1932 = ptrtoint ptr %1928 to i32
  br label %1933

1933:                                             ; preds = %1931, %968
  %1934 = phi i32 [ %1932, %1931 ], [ %1000, %968 ]
  %1935 = phi i32 [ %1926, %1931 ], [ %983, %968 ]
  %1936 = phi i32 [ %1927, %1931 ], [ %985, %968 ]
  store i32 %1935, ptr %2, align 4
  store i32 %1936, ptr %984, align 4
  br label %3875

1937:                                             ; preds = %5
  %1938 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %1939 = load ptr, ptr %1938, align 4
  %1940 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 5
  %1941 = load i32, ptr %1940, align 4
  %1942 = icmp eq i32 %1941, 0
  %1943 = zext i1 %1942 to i32
  %1944 = add i32 %1941, %1943
  %1945 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %1946 = load ptr, ptr %1945, align 4
  %1947 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %1948 = load i32, ptr %1947, align 4
  %1949 = getelementptr i8, ptr %1946, i32 %1948
  %1950 = getelementptr i8, ptr %3, i32 %4
  %1951 = getelementptr i8, ptr %1950, i32 -8
  %1952 = load i32, ptr %2, align 4
  %1953 = getelementptr i32, ptr %2, i32 1
  %1954 = load i32, ptr %1953, align 4
  %1955 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 9
  %1956 = load ptr, ptr %1955, align 4
  %1957 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1956, i32 0, i32 4
  %1958 = load ptr, ptr %1957, align 4
  %1959 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1956, i32 0, i32 3
  %1960 = load i32, ptr %1959, align 4
  %1961 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1956, i32 0, i32 1
  %1962 = load ptr, ptr %1961, align 4
  %1963 = getelementptr i8, ptr %1962, i32 %1960
  %1964 = load ptr, ptr %1956, align 4
  %1965 = ptrtoint ptr %1964 to i32
  %1966 = ptrtoint ptr %1962 to i32
  %1967 = sub i32 %1966, %1965
  %1968 = add i32 %1967, %1948
  %1969 = ptrtoint ptr %3 to i32
  %1970 = ptrtoint ptr %1949 to i32
  %1971 = sub i32 %1969, %1970
  %1972 = getelementptr i8, ptr %1964, i32 %1971
  %1973 = ptrtoint ptr %1946 to i32
  %1974 = icmp eq ptr %1972, %1963
  %1975 = zext i1 %1974 to i32
  %1976 = getelementptr i8, ptr %3, i32 %1975
  %1977 = icmp ult ptr %1976, %1951
  br i1 %1977, label %1978, label %2902

1978:                                             ; preds = %1937
  %1979 = sub i32 0, %1968
  %1980 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1956, i32 0, i32 10, i32 2
  %1981 = load i32, ptr %1980, align 4
  %1982 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %1983 = load i32, ptr %1982, align 4
  %1984 = sub i32 64, %1983
  %1985 = zext i32 %1984 to i64
  %1986 = add i32 %1948, -1
  %1987 = sub i32 64, %1981
  %1988 = zext i32 %1987 to i64
  %1989 = getelementptr i8, ptr %1950, i32 -3
  %1990 = getelementptr i8, ptr %1950, i32 -1
  %1991 = getelementptr i8, ptr %1950, i32 -32
  %1992 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %1993 = ptrtoint ptr %1991 to i32
  %1994 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %1995 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %1996 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %1997 = getelementptr i8, ptr %1962, i32 %1979
  %1998 = getelementptr i8, ptr %1946, i32 2
  br label %1999

1999:                                             ; preds = %2894, %1978
  %2000 = phi ptr [ %1976, %1978 ], [ %2898, %2894 ]
  %2001 = phi ptr [ %3, %1978 ], [ %2897, %2894 ]
  %2002 = phi i32 [ %1954, %1978 ], [ %2896, %2894 ]
  %2003 = phi i32 [ %1952, %1978 ], [ %2895, %2894 ]
  %2004 = load i64, ptr %2000, align 1
  %2005 = mul i64 %2004, -3523014627193847808
  %2006 = lshr i64 %2005, %1985
  %2007 = trunc i64 %2006 to i32
  %2008 = ptrtoint ptr %2000 to i32
  %2009 = sub i32 %2008, %1973
  %2010 = getelementptr i32, ptr %1939, i32 %2007
  %2011 = load i32, ptr %2010, align 4
  %2012 = getelementptr i8, ptr %1946, i32 %2011
  %2013 = sub i32 1, %2003
  %2014 = add i32 %2013, %2009
  %2015 = icmp ult i32 %2014, %1948
  %2016 = sub i32 %2014, %1968
  %2017 = getelementptr i8, ptr %1962, i32 %2016
  %2018 = getelementptr i8, ptr %1946, i32 %2014
  %2019 = select i1 %2015, ptr %2017, ptr %2018
  store i32 %2009, ptr %2010, align 4
  %2020 = sub i32 %1986, %2014
  %2021 = icmp ugt i32 %2020, 2
  br i1 %2021, label %2022, label %2243

2022:                                             ; preds = %1999
  %2023 = load i32, ptr %2019, align 1
  %2024 = getelementptr i8, ptr %2000, i32 1
  %2025 = load i32, ptr %2024, align 1
  %2026 = icmp eq i32 %2023, %2025
  br i1 %2026, label %2027, label %2243

2027:                                             ; preds = %2022
  %2028 = select i1 %2015, ptr %1964, ptr %1950
  %2029 = getelementptr i8, ptr %2000, i32 5
  %2030 = getelementptr i8, ptr %2019, i32 4
  %2031 = ptrtoint ptr %2028 to i32
  %2032 = ptrtoint ptr %2030 to i32
  %2033 = sub i32 %2031, %2032
  %2034 = getelementptr i8, ptr %2029, i32 %2033
  %2035 = icmp ult ptr %2034, %1950
  %2036 = select i1 %2035, ptr %2034, ptr %1950
  %2037 = getelementptr i8, ptr %2036, i32 -3
  %2038 = icmp ugt ptr %2037, %2029
  br i1 %2038, label %2039, label %2065

2039:                                             ; preds = %2027
  %2040 = load i32, ptr %2030, align 1
  %2041 = load i32, ptr %2029, align 1
  %2042 = xor i32 %2041, %2040
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2047, label %2044

2044:                                             ; preds = %2039
  %2045 = tail call i32 @llvm.cttz.i32(i32 %2042, i1 true) #4, !range !8
  %2046 = lshr i32 %2045, 3
  br label %2092

2047:                                             ; preds = %2053, %2039
  %2048 = phi ptr [ %2051, %2053 ], [ %2029, %2039 ]
  %2049 = phi ptr [ %2050, %2053 ], [ %2030, %2039 ]
  %2050 = getelementptr i8, ptr %2049, i32 4
  %2051 = getelementptr i8, ptr %2048, i32 4
  %2052 = icmp ult ptr %2051, %2037
  br i1 %2052, label %2053, label %2065

2053:                                             ; preds = %2047
  %2054 = load i32, ptr %2050, align 1
  %2055 = load i32, ptr %2051, align 1
  %2056 = xor i32 %2055, %2054
  %2057 = icmp eq i32 %2056, 0
  br i1 %2057, label %2047, label %2058

2058:                                             ; preds = %2053
  %2059 = tail call i32 @llvm.cttz.i32(i32 %2056, i1 true) #4, !range !8
  %2060 = lshr i32 %2059, 3
  %2061 = getelementptr i8, ptr %2051, i32 %2060
  %2062 = ptrtoint ptr %2061 to i32
  %2063 = ptrtoint ptr %2029 to i32
  %2064 = sub i32 %2062, %2063
  br label %2092

2065:                                             ; preds = %2047, %2027
  %2066 = phi ptr [ %2029, %2027 ], [ %2051, %2047 ]
  %2067 = phi ptr [ %2030, %2027 ], [ %2050, %2047 ]
  %2068 = getelementptr i8, ptr %2036, i32 -1
  %2069 = icmp ult ptr %2066, %2068
  br i1 %2069, label %2070, label %2077

2070:                                             ; preds = %2065
  %2071 = load i16, ptr %2067, align 1
  %2072 = load i16, ptr %2066, align 1
  %2073 = icmp eq i16 %2071, %2072
  br i1 %2073, label %2074, label %2077

2074:                                             ; preds = %2070
  %2075 = getelementptr i8, ptr %2066, i32 2
  %2076 = getelementptr i8, ptr %2067, i32 2
  br label %2077

2077:                                             ; preds = %2074, %2070, %2065
  %2078 = phi ptr [ %2075, %2074 ], [ %2066, %2070 ], [ %2066, %2065 ]
  %2079 = phi ptr [ %2076, %2074 ], [ %2067, %2070 ], [ %2067, %2065 ]
  %2080 = icmp ult ptr %2078, %2036
  br i1 %2080, label %2081, label %2087

2081:                                             ; preds = %2077
  %2082 = load i8, ptr %2079, align 1
  %2083 = load i8, ptr %2078, align 1
  %2084 = icmp eq i8 %2082, %2083
  %2085 = zext i1 %2084 to i32
  %2086 = getelementptr i8, ptr %2078, i32 %2085
  br label %2087

2087:                                             ; preds = %2081, %2077
  %2088 = phi ptr [ %2078, %2077 ], [ %2086, %2081 ]
  %2089 = ptrtoint ptr %2088 to i32
  %2090 = ptrtoint ptr %2029 to i32
  %2091 = sub i32 %2089, %2090
  br label %2092

2092:                                             ; preds = %2087, %2058, %2044
  %2093 = phi i32 [ %2091, %2087 ], [ %2046, %2044 ], [ %2064, %2058 ]
  %2094 = getelementptr i8, ptr %2030, i32 %2093
  %2095 = icmp eq ptr %2094, %2028
  br i1 %2095, label %2096, label %2154

2096:                                             ; preds = %2092
  %2097 = getelementptr i8, ptr %2029, i32 %2093
  %2098 = icmp ugt ptr %1989, %2097
  br i1 %2098, label %2099, label %2125

2099:                                             ; preds = %2096
  %2100 = load i32, ptr %1949, align 1
  %2101 = load i32, ptr %2097, align 1
  %2102 = xor i32 %2101, %2100
  %2103 = icmp eq i32 %2102, 0
  br i1 %2103, label %2107, label %2104

2104:                                             ; preds = %2099
  %2105 = tail call i32 @llvm.cttz.i32(i32 %2102, i1 true) #4, !range !8
  %2106 = lshr i32 %2105, 3
  br label %2151

2107:                                             ; preds = %2113, %2099
  %2108 = phi ptr [ %2111, %2113 ], [ %2097, %2099 ]
  %2109 = phi ptr [ %2110, %2113 ], [ %1949, %2099 ]
  %2110 = getelementptr i8, ptr %2109, i32 4
  %2111 = getelementptr i8, ptr %2108, i32 4
  %2112 = icmp ult ptr %2111, %1989
  br i1 %2112, label %2113, label %2125

2113:                                             ; preds = %2107
  %2114 = load i32, ptr %2110, align 1
  %2115 = load i32, ptr %2111, align 1
  %2116 = xor i32 %2115, %2114
  %2117 = icmp eq i32 %2116, 0
  br i1 %2117, label %2107, label %2118

2118:                                             ; preds = %2113
  %2119 = tail call i32 @llvm.cttz.i32(i32 %2116, i1 true) #4, !range !8
  %2120 = lshr i32 %2119, 3
  %2121 = getelementptr i8, ptr %2111, i32 %2120
  %2122 = ptrtoint ptr %2121 to i32
  %2123 = ptrtoint ptr %2097 to i32
  %2124 = sub i32 %2122, %2123
  br label %2151

2125:                                             ; preds = %2107, %2096
  %2126 = phi ptr [ %2097, %2096 ], [ %2111, %2107 ]
  %2127 = phi ptr [ %1949, %2096 ], [ %2110, %2107 ]
  %2128 = icmp ult ptr %2126, %1990
  br i1 %2128, label %2129, label %2136

2129:                                             ; preds = %2125
  %2130 = load i16, ptr %2127, align 1
  %2131 = load i16, ptr %2126, align 1
  %2132 = icmp eq i16 %2130, %2131
  br i1 %2132, label %2133, label %2136

2133:                                             ; preds = %2129
  %2134 = getelementptr i8, ptr %2126, i32 2
  %2135 = getelementptr i8, ptr %2127, i32 2
  br label %2136

2136:                                             ; preds = %2133, %2129, %2125
  %2137 = phi ptr [ %2134, %2133 ], [ %2126, %2129 ], [ %2126, %2125 ]
  %2138 = phi ptr [ %2135, %2133 ], [ %2127, %2129 ], [ %2127, %2125 ]
  %2139 = icmp ult ptr %2137, %1950
  br i1 %2139, label %2140, label %2146

2140:                                             ; preds = %2136
  %2141 = load i8, ptr %2138, align 1
  %2142 = load i8, ptr %2137, align 1
  %2143 = icmp eq i8 %2141, %2142
  %2144 = zext i1 %2143 to i32
  %2145 = getelementptr i8, ptr %2137, i32 %2144
  br label %2146

2146:                                             ; preds = %2140, %2136
  %2147 = phi ptr [ %2137, %2136 ], [ %2145, %2140 ]
  %2148 = ptrtoint ptr %2147 to i32
  %2149 = ptrtoint ptr %2097 to i32
  %2150 = sub i32 %2148, %2149
  br label %2151

2151:                                             ; preds = %2146, %2118, %2104
  %2152 = phi i32 [ %2150, %2146 ], [ %2106, %2104 ], [ %2124, %2118 ]
  %2153 = add i32 %2152, %2093
  br label %2154

2154:                                             ; preds = %2151, %2092
  %2155 = phi i32 [ %2153, %2151 ], [ %2093, %2092 ]
  %2156 = add i32 %2155, 4
  %2157 = ptrtoint ptr %2024 to i32
  %2158 = ptrtoint ptr %2001 to i32
  %2159 = sub i32 %2157, %2158
  %2160 = add i32 %2155, 1
  %2161 = getelementptr i8, ptr %2001, i32 %2159
  %2162 = icmp ugt ptr %2161, %1991
  %2163 = load ptr, ptr %1992, align 4
  br i1 %2162, label %2185, label %2164

2164:                                             ; preds = %2154
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2163, ptr noundef align 1 dereferenceable(16) %2001, i32 16, i1 false) #4
  %2165 = icmp ugt i32 %2159, 16
  %2166 = load ptr, ptr %1992, align 4
  br i1 %2165, label %2169, label %2167

2167:                                             ; preds = %2164
  %2168 = getelementptr i8, ptr %2166, i32 %2159
  store ptr %2168, ptr %1992, align 4
  br label %2228

2169:                                             ; preds = %2164
  %2170 = getelementptr i8, ptr %2166, i32 16
  %2171 = getelementptr i8, ptr %2001, i32 16
  %2172 = add i32 %2159, -16
  %2173 = getelementptr i8, ptr %2166, i32 %2159
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2170, ptr noundef align 1 dereferenceable(16) %2171, i32 16, i1 false) #4
  %2174 = icmp slt i32 %2172, 17
  br i1 %2174, label %2217, label %2175

2175:                                             ; preds = %2169
  %2176 = getelementptr i8, ptr %2166, i32 32
  br label %2177

2177:                                             ; preds = %2177, %2175
  %2178 = phi ptr [ %2171, %2175 ], [ %2182, %2177 ]
  %2179 = phi ptr [ %2176, %2175 ], [ %2183, %2177 ]
  %2180 = getelementptr i8, ptr %2178, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2179, ptr noundef align 1 dereferenceable(16) %2180, i32 16, i1 false) #4
  %2181 = getelementptr i8, ptr %2179, i32 16
  %2182 = getelementptr i8, ptr %2178, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2181, ptr noundef align 1 dereferenceable(16) %2182, i32 16, i1 false) #4
  %2183 = getelementptr i8, ptr %2179, i32 32
  %2184 = icmp ult ptr %2183, %2173
  br i1 %2184, label %2177, label %2217

2185:                                             ; preds = %2154
  %2186 = ptrtoint ptr %2161 to i32
  %2187 = icmp ult ptr %1991, %2001
  br i1 %2187, label %2202, label %2188

2188:                                             ; preds = %2185
  %2189 = sub i32 %1993, %2158
  %2190 = getelementptr i8, ptr %2163, i32 %2189
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2163, ptr noundef align 1 dereferenceable(16) %2001, i32 16, i1 false) #4
  %2191 = icmp slt i32 %2189, 17
  br i1 %2191, label %2202, label %2192

2192:                                             ; preds = %2188
  %2193 = getelementptr i8, ptr %2163, i32 16
  br label %2194

2194:                                             ; preds = %2194, %2192
  %2195 = phi ptr [ %2001, %2192 ], [ %2199, %2194 ]
  %2196 = phi ptr [ %2193, %2192 ], [ %2200, %2194 ]
  %2197 = getelementptr i8, ptr %2195, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2196, ptr noundef align 1 dereferenceable(16) %2197, i32 16, i1 false) #4
  %2198 = getelementptr i8, ptr %2196, i32 16
  %2199 = getelementptr i8, ptr %2195, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2198, ptr noundef align 1 dereferenceable(16) %2199, i32 16, i1 false) #4
  %2200 = getelementptr i8, ptr %2196, i32 32
  %2201 = icmp ult ptr %2200, %2190
  br i1 %2201, label %2194, label %2202

2202:                                             ; preds = %2194, %2188, %2185
  %2203 = phi ptr [ %1991, %2188 ], [ %2001, %2185 ], [ %1991, %2194 ]
  %2204 = phi ptr [ %2190, %2188 ], [ %2163, %2185 ], [ %2190, %2194 ]
  %2205 = icmp ult ptr %2203, %2161
  br i1 %2205, label %2206, label %2217

2206:                                             ; preds = %2202
  %2207 = ptrtoint ptr %2203 to i32
  %2208 = sub i32 %2186, %2207
  %2209 = getelementptr i8, ptr %2203, i32 %2208
  br label %2210

2210:                                             ; preds = %2210, %2206
  %2211 = phi ptr [ %2215, %2210 ], [ %2204, %2206 ]
  %2212 = phi ptr [ %2213, %2210 ], [ %2203, %2206 ]
  %2213 = getelementptr i8, ptr %2212, i32 1
  %2214 = load i8, ptr %2212, align 1
  %2215 = getelementptr i8, ptr %2211, i32 1
  store i8 %2214, ptr %2211, align 1
  %2216 = icmp eq ptr %2213, %2209
  br i1 %2216, label %2217, label %2210

2217:                                             ; preds = %2210, %2202, %2177, %2169
  %2218 = load ptr, ptr %1992, align 4
  %2219 = getelementptr i8, ptr %2218, i32 %2159
  store ptr %2219, ptr %1992, align 4
  %2220 = icmp ugt i32 %2159, 65535
  br i1 %2220, label %2221, label %2228

2221:                                             ; preds = %2217
  store i32 1, ptr %1994, align 4
  %2222 = load ptr, ptr %1995, align 4
  %2223 = load ptr, ptr %1, align 4
  %2224 = ptrtoint ptr %2222 to i32
  %2225 = ptrtoint ptr %2223 to i32
  %2226 = sub i32 %2224, %2225
  %2227 = ashr exact i32 %2226, 3
  store i32 %2227, ptr %1996, align 4
  br label %2228

2228:                                             ; preds = %2221, %2217, %2167
  %2229 = trunc i32 %2159 to i16
  %2230 = load ptr, ptr %1995, align 4
  %2231 = getelementptr inbounds %struct.seqDef_s, ptr %2230, i32 0, i32 1
  store i16 %2229, ptr %2231, align 4
  %2232 = load ptr, ptr %1995, align 4
  store i32 1, ptr %2232, align 4
  %2233 = icmp ugt i32 %2160, 65535
  br i1 %2233, label %2236, label %2234

2234:                                             ; preds = %2228
  %2235 = load ptr, ptr %1995, align 4
  br label %2688

2236:                                             ; preds = %2228
  store i32 2, ptr %1994, align 4
  %2237 = load ptr, ptr %1995, align 4
  %2238 = load ptr, ptr %1, align 4
  %2239 = ptrtoint ptr %2237 to i32
  %2240 = ptrtoint ptr %2238 to i32
  %2241 = sub i32 %2239, %2240
  %2242 = ashr exact i32 %2241, 3
  store i32 %2242, ptr %1996, align 4
  br label %2688

2243:                                             ; preds = %2022, %1999
  %2244 = icmp ugt i32 %2011, %1948
  br i1 %2244, label %2506, label %2245

2245:                                             ; preds = %2243
  %2246 = load i64, ptr %2000, align 1
  %2247 = mul i64 %2246, -3523014627193847808
  %2248 = lshr i64 %2247, %1988
  %2249 = trunc i64 %2248 to i32
  %2250 = getelementptr i32, ptr %1958, i32 %2249
  %2251 = load i32, ptr %2250, align 4
  %2252 = getelementptr i8, ptr %1962, i32 %2251
  %2253 = icmp ugt i32 %2251, %1960
  %2254 = lshr i64 %2246, 32
  %2255 = trunc i64 %2254 to i32
  br i1 %2253, label %2256, label %2500

2256:                                             ; preds = %2245
  %2257 = trunc i64 %2246 to i32
  %2258 = load i32, ptr %2252, align 1
  %2259 = icmp eq i32 %2258, %2257
  br i1 %2259, label %2260, label %2500

2260:                                             ; preds = %2256
  %2261 = add i32 %1968, %2251
  %2262 = sub i32 %2009, %2261
  %2263 = getelementptr i8, ptr %2000, i32 4
  %2264 = getelementptr i8, ptr %2252, i32 4
  %2265 = ptrtoint ptr %2264 to i32
  %2266 = sub i32 %1965, %2265
  %2267 = getelementptr i8, ptr %2263, i32 %2266
  %2268 = icmp ult ptr %2267, %1950
  %2269 = select i1 %2268, ptr %2267, ptr %1950
  %2270 = getelementptr i8, ptr %2269, i32 -3
  %2271 = icmp ugt ptr %2270, %2263
  br i1 %2271, label %2272, label %2297

2272:                                             ; preds = %2260
  %2273 = load i32, ptr %2264, align 1
  %2274 = xor i32 %2273, %2255
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %2279, label %2276

2276:                                             ; preds = %2272
  %2277 = tail call i32 @llvm.cttz.i32(i32 %2274, i1 true) #4, !range !8
  %2278 = lshr i32 %2277, 3
  br label %2324

2279:                                             ; preds = %2285, %2272
  %2280 = phi ptr [ %2283, %2285 ], [ %2263, %2272 ]
  %2281 = phi ptr [ %2282, %2285 ], [ %2264, %2272 ]
  %2282 = getelementptr i8, ptr %2281, i32 4
  %2283 = getelementptr i8, ptr %2280, i32 4
  %2284 = icmp ult ptr %2283, %2270
  br i1 %2284, label %2285, label %2297

2285:                                             ; preds = %2279
  %2286 = load i32, ptr %2282, align 1
  %2287 = load i32, ptr %2283, align 1
  %2288 = xor i32 %2287, %2286
  %2289 = icmp eq i32 %2288, 0
  br i1 %2289, label %2279, label %2290

2290:                                             ; preds = %2285
  %2291 = tail call i32 @llvm.cttz.i32(i32 %2288, i1 true) #4, !range !8
  %2292 = lshr i32 %2291, 3
  %2293 = getelementptr i8, ptr %2283, i32 %2292
  %2294 = ptrtoint ptr %2293 to i32
  %2295 = ptrtoint ptr %2263 to i32
  %2296 = sub i32 %2294, %2295
  br label %2324

2297:                                             ; preds = %2279, %2260
  %2298 = phi ptr [ %2263, %2260 ], [ %2283, %2279 ]
  %2299 = phi ptr [ %2264, %2260 ], [ %2282, %2279 ]
  %2300 = getelementptr i8, ptr %2269, i32 -1
  %2301 = icmp ult ptr %2298, %2300
  br i1 %2301, label %2302, label %2309

2302:                                             ; preds = %2297
  %2303 = load i16, ptr %2299, align 1
  %2304 = load i16, ptr %2298, align 1
  %2305 = icmp eq i16 %2303, %2304
  br i1 %2305, label %2306, label %2309

2306:                                             ; preds = %2302
  %2307 = getelementptr i8, ptr %2298, i32 2
  %2308 = getelementptr i8, ptr %2299, i32 2
  br label %2309

2309:                                             ; preds = %2306, %2302, %2297
  %2310 = phi ptr [ %2307, %2306 ], [ %2298, %2302 ], [ %2298, %2297 ]
  %2311 = phi ptr [ %2308, %2306 ], [ %2299, %2302 ], [ %2299, %2297 ]
  %2312 = icmp ult ptr %2310, %2269
  br i1 %2312, label %2313, label %2319

2313:                                             ; preds = %2309
  %2314 = load i8, ptr %2311, align 1
  %2315 = load i8, ptr %2310, align 1
  %2316 = icmp eq i8 %2314, %2315
  %2317 = zext i1 %2316 to i32
  %2318 = getelementptr i8, ptr %2310, i32 %2317
  br label %2319

2319:                                             ; preds = %2313, %2309
  %2320 = phi ptr [ %2310, %2309 ], [ %2318, %2313 ]
  %2321 = ptrtoint ptr %2320 to i32
  %2322 = ptrtoint ptr %2263 to i32
  %2323 = sub i32 %2321, %2322
  br label %2324

2324:                                             ; preds = %2319, %2290, %2276
  %2325 = phi i32 [ %2323, %2319 ], [ %2278, %2276 ], [ %2296, %2290 ]
  %2326 = getelementptr i8, ptr %2264, i32 %2325
  %2327 = icmp eq ptr %2326, %1964
  br i1 %2327, label %2328, label %2386

2328:                                             ; preds = %2324
  %2329 = getelementptr i8, ptr %2263, i32 %2325
  %2330 = icmp ugt ptr %1989, %2329
  br i1 %2330, label %2331, label %2357

2331:                                             ; preds = %2328
  %2332 = load i32, ptr %1949, align 1
  %2333 = load i32, ptr %2329, align 1
  %2334 = xor i32 %2333, %2332
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2339, label %2336

2336:                                             ; preds = %2331
  %2337 = tail call i32 @llvm.cttz.i32(i32 %2334, i1 true) #4, !range !8
  %2338 = lshr i32 %2337, 3
  br label %2383

2339:                                             ; preds = %2345, %2331
  %2340 = phi ptr [ %2343, %2345 ], [ %2329, %2331 ]
  %2341 = phi ptr [ %2342, %2345 ], [ %1949, %2331 ]
  %2342 = getelementptr i8, ptr %2341, i32 4
  %2343 = getelementptr i8, ptr %2340, i32 4
  %2344 = icmp ult ptr %2343, %1989
  br i1 %2344, label %2345, label %2357

2345:                                             ; preds = %2339
  %2346 = load i32, ptr %2342, align 1
  %2347 = load i32, ptr %2343, align 1
  %2348 = xor i32 %2347, %2346
  %2349 = icmp eq i32 %2348, 0
  br i1 %2349, label %2339, label %2350

2350:                                             ; preds = %2345
  %2351 = tail call i32 @llvm.cttz.i32(i32 %2348, i1 true) #4, !range !8
  %2352 = lshr i32 %2351, 3
  %2353 = getelementptr i8, ptr %2343, i32 %2352
  %2354 = ptrtoint ptr %2353 to i32
  %2355 = ptrtoint ptr %2329 to i32
  %2356 = sub i32 %2354, %2355
  br label %2383

2357:                                             ; preds = %2339, %2328
  %2358 = phi ptr [ %2329, %2328 ], [ %2343, %2339 ]
  %2359 = phi ptr [ %1949, %2328 ], [ %2342, %2339 ]
  %2360 = icmp ult ptr %2358, %1990
  br i1 %2360, label %2361, label %2368

2361:                                             ; preds = %2357
  %2362 = load i16, ptr %2359, align 1
  %2363 = load i16, ptr %2358, align 1
  %2364 = icmp eq i16 %2362, %2363
  br i1 %2364, label %2365, label %2368

2365:                                             ; preds = %2361
  %2366 = getelementptr i8, ptr %2358, i32 2
  %2367 = getelementptr i8, ptr %2359, i32 2
  br label %2368

2368:                                             ; preds = %2365, %2361, %2357
  %2369 = phi ptr [ %2366, %2365 ], [ %2358, %2361 ], [ %2358, %2357 ]
  %2370 = phi ptr [ %2367, %2365 ], [ %2359, %2361 ], [ %2359, %2357 ]
  %2371 = icmp ult ptr %2369, %1950
  br i1 %2371, label %2372, label %2378

2372:                                             ; preds = %2368
  %2373 = load i8, ptr %2370, align 1
  %2374 = load i8, ptr %2369, align 1
  %2375 = icmp eq i8 %2373, %2374
  %2376 = zext i1 %2375 to i32
  %2377 = getelementptr i8, ptr %2369, i32 %2376
  br label %2378

2378:                                             ; preds = %2372, %2368
  %2379 = phi ptr [ %2369, %2368 ], [ %2377, %2372 ]
  %2380 = ptrtoint ptr %2379 to i32
  %2381 = ptrtoint ptr %2329 to i32
  %2382 = sub i32 %2380, %2381
  br label %2383

2383:                                             ; preds = %2378, %2350, %2336
  %2384 = phi i32 [ %2382, %2378 ], [ %2338, %2336 ], [ %2356, %2350 ]
  %2385 = add i32 %2384, %2325
  br label %2386

2386:                                             ; preds = %2383, %2324
  %2387 = phi i32 [ %2385, %2383 ], [ %2325, %2324 ]
  %2388 = add i32 %2387, 4
  %2389 = icmp ugt ptr %2000, %2001
  %2390 = icmp ugt ptr %2252, %1963
  %2391 = and i1 %2389, %2390
  br i1 %2391, label %2392, label %2410

2392:                                             ; preds = %2401, %2386
  %2393 = phi ptr [ %2398, %2401 ], [ %2252, %2386 ]
  %2394 = phi ptr [ %2396, %2401 ], [ %2000, %2386 ]
  %2395 = phi i32 [ %2402, %2401 ], [ %2388, %2386 ]
  %2396 = getelementptr i8, ptr %2394, i32 -1
  %2397 = load i8, ptr %2396, align 1
  %2398 = getelementptr i8, ptr %2393, i32 -1
  %2399 = load i8, ptr %2398, align 1
  %2400 = icmp eq i8 %2397, %2399
  br i1 %2400, label %2401, label %2406

2401:                                             ; preds = %2392
  %2402 = add i32 %2395, 1
  %2403 = icmp ugt ptr %2396, %2001
  %2404 = icmp ugt ptr %2398, %1963
  %2405 = and i1 %2404, %2403
  br i1 %2405, label %2392, label %2406

2406:                                             ; preds = %2401, %2392
  %2407 = phi i32 [ %2395, %2392 ], [ %2402, %2401 ]
  %2408 = phi ptr [ %2394, %2392 ], [ %2396, %2401 ]
  %2409 = ptrtoint ptr %2408 to i32
  br label %2410

2410:                                             ; preds = %2406, %2386
  %2411 = phi i32 [ %2409, %2406 ], [ %2008, %2386 ]
  %2412 = phi i32 [ %2407, %2406 ], [ %2388, %2386 ]
  %2413 = phi ptr [ %2408, %2406 ], [ %2000, %2386 ]
  %2414 = ptrtoint ptr %2001 to i32
  %2415 = sub i32 %2411, %2414
  %2416 = add i32 %2412, -3
  %2417 = getelementptr i8, ptr %2001, i32 %2415
  %2418 = icmp ugt ptr %2417, %1991
  %2419 = load ptr, ptr %1992, align 4
  br i1 %2418, label %2441, label %2420

2420:                                             ; preds = %2410
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2419, ptr noundef align 1 dereferenceable(16) %2001, i32 16, i1 false) #4
  %2421 = icmp ugt i32 %2415, 16
  %2422 = load ptr, ptr %1992, align 4
  br i1 %2421, label %2425, label %2423

2423:                                             ; preds = %2420
  %2424 = getelementptr i8, ptr %2422, i32 %2415
  store ptr %2424, ptr %1992, align 4
  br label %2484

2425:                                             ; preds = %2420
  %2426 = getelementptr i8, ptr %2422, i32 16
  %2427 = getelementptr i8, ptr %2001, i32 16
  %2428 = add i32 %2415, -16
  %2429 = getelementptr i8, ptr %2422, i32 %2415
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2426, ptr noundef align 1 dereferenceable(16) %2427, i32 16, i1 false) #4
  %2430 = icmp slt i32 %2428, 17
  br i1 %2430, label %2473, label %2431

2431:                                             ; preds = %2425
  %2432 = getelementptr i8, ptr %2422, i32 32
  br label %2433

2433:                                             ; preds = %2433, %2431
  %2434 = phi ptr [ %2427, %2431 ], [ %2438, %2433 ]
  %2435 = phi ptr [ %2432, %2431 ], [ %2439, %2433 ]
  %2436 = getelementptr i8, ptr %2434, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2435, ptr noundef align 1 dereferenceable(16) %2436, i32 16, i1 false) #4
  %2437 = getelementptr i8, ptr %2435, i32 16
  %2438 = getelementptr i8, ptr %2434, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2437, ptr noundef align 1 dereferenceable(16) %2438, i32 16, i1 false) #4
  %2439 = getelementptr i8, ptr %2435, i32 32
  %2440 = icmp ult ptr %2439, %2429
  br i1 %2440, label %2433, label %2473

2441:                                             ; preds = %2410
  %2442 = ptrtoint ptr %2417 to i32
  %2443 = icmp ult ptr %1991, %2001
  br i1 %2443, label %2458, label %2444

2444:                                             ; preds = %2441
  %2445 = sub i32 %1993, %2414
  %2446 = getelementptr i8, ptr %2419, i32 %2445
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2419, ptr noundef align 1 dereferenceable(16) %2001, i32 16, i1 false) #4
  %2447 = icmp slt i32 %2445, 17
  br i1 %2447, label %2458, label %2448

2448:                                             ; preds = %2444
  %2449 = getelementptr i8, ptr %2419, i32 16
  br label %2450

2450:                                             ; preds = %2450, %2448
  %2451 = phi ptr [ %2001, %2448 ], [ %2455, %2450 ]
  %2452 = phi ptr [ %2449, %2448 ], [ %2456, %2450 ]
  %2453 = getelementptr i8, ptr %2451, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2452, ptr noundef align 1 dereferenceable(16) %2453, i32 16, i1 false) #4
  %2454 = getelementptr i8, ptr %2452, i32 16
  %2455 = getelementptr i8, ptr %2451, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2454, ptr noundef align 1 dereferenceable(16) %2455, i32 16, i1 false) #4
  %2456 = getelementptr i8, ptr %2452, i32 32
  %2457 = icmp ult ptr %2456, %2446
  br i1 %2457, label %2450, label %2458

2458:                                             ; preds = %2450, %2444, %2441
  %2459 = phi ptr [ %1991, %2444 ], [ %2001, %2441 ], [ %1991, %2450 ]
  %2460 = phi ptr [ %2446, %2444 ], [ %2419, %2441 ], [ %2446, %2450 ]
  %2461 = icmp ult ptr %2459, %2417
  br i1 %2461, label %2462, label %2473

2462:                                             ; preds = %2458
  %2463 = ptrtoint ptr %2459 to i32
  %2464 = sub i32 %2442, %2463
  %2465 = getelementptr i8, ptr %2459, i32 %2464
  br label %2466

2466:                                             ; preds = %2466, %2462
  %2467 = phi ptr [ %2471, %2466 ], [ %2460, %2462 ]
  %2468 = phi ptr [ %2469, %2466 ], [ %2459, %2462 ]
  %2469 = getelementptr i8, ptr %2468, i32 1
  %2470 = load i8, ptr %2468, align 1
  %2471 = getelementptr i8, ptr %2467, i32 1
  store i8 %2470, ptr %2467, align 1
  %2472 = icmp eq ptr %2469, %2465
  br i1 %2472, label %2473, label %2466

2473:                                             ; preds = %2466, %2458, %2433, %2425
  %2474 = load ptr, ptr %1992, align 4
  %2475 = getelementptr i8, ptr %2474, i32 %2415
  store ptr %2475, ptr %1992, align 4
  %2476 = icmp ugt i32 %2415, 65535
  br i1 %2476, label %2477, label %2484

2477:                                             ; preds = %2473
  store i32 1, ptr %1994, align 4
  %2478 = load ptr, ptr %1995, align 4
  %2479 = load ptr, ptr %1, align 4
  %2480 = ptrtoint ptr %2478 to i32
  %2481 = ptrtoint ptr %2479 to i32
  %2482 = sub i32 %2480, %2481
  %2483 = ashr exact i32 %2482, 3
  store i32 %2483, ptr %1996, align 4
  br label %2484

2484:                                             ; preds = %2477, %2473, %2423
  %2485 = trunc i32 %2415 to i16
  %2486 = load ptr, ptr %1995, align 4
  %2487 = getelementptr inbounds %struct.seqDef_s, ptr %2486, i32 0, i32 1
  store i16 %2485, ptr %2487, align 4
  %2488 = add i32 %2262, 3
  %2489 = load ptr, ptr %1995, align 4
  store i32 %2488, ptr %2489, align 4
  %2490 = icmp ugt i32 %2416, 65535
  br i1 %2490, label %2493, label %2491

2491:                                             ; preds = %2484
  %2492 = load ptr, ptr %1995, align 4
  br label %2688

2493:                                             ; preds = %2484
  store i32 2, ptr %1994, align 4
  %2494 = load ptr, ptr %1995, align 4
  %2495 = load ptr, ptr %1, align 4
  %2496 = ptrtoint ptr %2494 to i32
  %2497 = ptrtoint ptr %2495 to i32
  %2498 = sub i32 %2496, %2497
  %2499 = ashr exact i32 %2498, 3
  store i32 %2499, ptr %1996, align 4
  br label %2688

2500:                                             ; preds = %2256, %2245
  %2501 = ptrtoint ptr %2001 to i32
  %2502 = sub i32 %2008, %2501
  %2503 = ashr i32 %2502, 8
  %2504 = add i32 %2503, %1944
  %2505 = getelementptr i8, ptr %2000, i32 %2504
  br label %2894

2506:                                             ; preds = %2243
  %2507 = load i32, ptr %2012, align 1
  %2508 = load i32, ptr %2000, align 1
  %2509 = icmp eq i32 %2507, %2508
  br i1 %2509, label %2516, label %2510

2510:                                             ; preds = %2506
  %2511 = ptrtoint ptr %2001 to i32
  %2512 = sub i32 %2008, %2511
  %2513 = ashr i32 %2512, 8
  %2514 = add i32 %2513, %1944
  %2515 = getelementptr i8, ptr %2000, i32 %2514
  br label %2894

2516:                                             ; preds = %2506
  %2517 = ptrtoint ptr %2012 to i32
  %2518 = sub i32 %2008, %2517
  %2519 = getelementptr i8, ptr %2000, i32 4
  %2520 = getelementptr i8, ptr %2012, i32 4
  %2521 = icmp ugt ptr %1989, %2519
  br i1 %2521, label %2522, label %2548

2522:                                             ; preds = %2516
  %2523 = load i32, ptr %2520, align 1
  %2524 = load i32, ptr %2519, align 1
  %2525 = xor i32 %2524, %2523
  %2526 = icmp eq i32 %2525, 0
  br i1 %2526, label %2530, label %2527

2527:                                             ; preds = %2522
  %2528 = tail call i32 @llvm.cttz.i32(i32 %2525, i1 true) #4, !range !8
  %2529 = lshr i32 %2528, 3
  br label %2574

2530:                                             ; preds = %2536, %2522
  %2531 = phi ptr [ %2534, %2536 ], [ %2519, %2522 ]
  %2532 = phi ptr [ %2533, %2536 ], [ %2520, %2522 ]
  %2533 = getelementptr i8, ptr %2532, i32 4
  %2534 = getelementptr i8, ptr %2531, i32 4
  %2535 = icmp ult ptr %2534, %1989
  br i1 %2535, label %2536, label %2548

2536:                                             ; preds = %2530
  %2537 = load i32, ptr %2533, align 1
  %2538 = load i32, ptr %2534, align 1
  %2539 = xor i32 %2538, %2537
  %2540 = icmp eq i32 %2539, 0
  br i1 %2540, label %2530, label %2541

2541:                                             ; preds = %2536
  %2542 = tail call i32 @llvm.cttz.i32(i32 %2539, i1 true) #4, !range !8
  %2543 = lshr i32 %2542, 3
  %2544 = getelementptr i8, ptr %2534, i32 %2543
  %2545 = ptrtoint ptr %2544 to i32
  %2546 = ptrtoint ptr %2519 to i32
  %2547 = sub i32 %2545, %2546
  br label %2574

2548:                                             ; preds = %2530, %2516
  %2549 = phi ptr [ %2519, %2516 ], [ %2534, %2530 ]
  %2550 = phi ptr [ %2520, %2516 ], [ %2533, %2530 ]
  %2551 = icmp ult ptr %2549, %1990
  br i1 %2551, label %2552, label %2559

2552:                                             ; preds = %2548
  %2553 = load i16, ptr %2550, align 1
  %2554 = load i16, ptr %2549, align 1
  %2555 = icmp eq i16 %2553, %2554
  br i1 %2555, label %2556, label %2559

2556:                                             ; preds = %2552
  %2557 = getelementptr i8, ptr %2549, i32 2
  %2558 = getelementptr i8, ptr %2550, i32 2
  br label %2559

2559:                                             ; preds = %2556, %2552, %2548
  %2560 = phi ptr [ %2557, %2556 ], [ %2549, %2552 ], [ %2549, %2548 ]
  %2561 = phi ptr [ %2558, %2556 ], [ %2550, %2552 ], [ %2550, %2548 ]
  %2562 = icmp ult ptr %2560, %1950
  br i1 %2562, label %2563, label %2569

2563:                                             ; preds = %2559
  %2564 = load i8, ptr %2561, align 1
  %2565 = load i8, ptr %2560, align 1
  %2566 = icmp eq i8 %2564, %2565
  %2567 = zext i1 %2566 to i32
  %2568 = getelementptr i8, ptr %2560, i32 %2567
  br label %2569

2569:                                             ; preds = %2563, %2559
  %2570 = phi ptr [ %2560, %2559 ], [ %2568, %2563 ]
  %2571 = ptrtoint ptr %2570 to i32
  %2572 = ptrtoint ptr %2519 to i32
  %2573 = sub i32 %2571, %2572
  br label %2574

2574:                                             ; preds = %2569, %2541, %2527
  %2575 = phi i32 [ %2573, %2569 ], [ %2529, %2527 ], [ %2547, %2541 ]
  %2576 = add i32 %2575, 4
  %2577 = icmp ugt ptr %2000, %2001
  %2578 = icmp ugt ptr %2012, %1949
  %2579 = and i1 %2577, %2578
  br i1 %2579, label %2580, label %2598

2580:                                             ; preds = %2589, %2574
  %2581 = phi ptr [ %2584, %2589 ], [ %2000, %2574 ]
  %2582 = phi ptr [ %2586, %2589 ], [ %2012, %2574 ]
  %2583 = phi i32 [ %2590, %2589 ], [ %2576, %2574 ]
  %2584 = getelementptr i8, ptr %2581, i32 -1
  %2585 = load i8, ptr %2584, align 1
  %2586 = getelementptr i8, ptr %2582, i32 -1
  %2587 = load i8, ptr %2586, align 1
  %2588 = icmp eq i8 %2585, %2587
  br i1 %2588, label %2589, label %2594

2589:                                             ; preds = %2580
  %2590 = add i32 %2583, 1
  %2591 = icmp ugt ptr %2584, %2001
  %2592 = icmp ugt ptr %2586, %1949
  %2593 = and i1 %2591, %2592
  br i1 %2593, label %2580, label %2594

2594:                                             ; preds = %2589, %2580
  %2595 = phi i32 [ %2583, %2580 ], [ %2590, %2589 ]
  %2596 = phi ptr [ %2581, %2580 ], [ %2584, %2589 ]
  %2597 = ptrtoint ptr %2596 to i32
  br label %2598

2598:                                             ; preds = %2594, %2574
  %2599 = phi i32 [ %2597, %2594 ], [ %2008, %2574 ]
  %2600 = phi i32 [ %2595, %2594 ], [ %2576, %2574 ]
  %2601 = phi ptr [ %2596, %2594 ], [ %2000, %2574 ]
  %2602 = ptrtoint ptr %2001 to i32
  %2603 = sub i32 %2599, %2602
  %2604 = add i32 %2600, -3
  %2605 = getelementptr i8, ptr %2001, i32 %2603
  %2606 = icmp ugt ptr %2605, %1991
  %2607 = load ptr, ptr %1992, align 4
  br i1 %2606, label %2629, label %2608

2608:                                             ; preds = %2598
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2607, ptr noundef align 1 dereferenceable(16) %2001, i32 16, i1 false) #4
  %2609 = icmp ugt i32 %2603, 16
  %2610 = load ptr, ptr %1992, align 4
  br i1 %2609, label %2613, label %2611

2611:                                             ; preds = %2608
  %2612 = getelementptr i8, ptr %2610, i32 %2603
  store ptr %2612, ptr %1992, align 4
  br label %2672

2613:                                             ; preds = %2608
  %2614 = getelementptr i8, ptr %2610, i32 16
  %2615 = getelementptr i8, ptr %2001, i32 16
  %2616 = add i32 %2603, -16
  %2617 = getelementptr i8, ptr %2610, i32 %2603
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2614, ptr noundef align 1 dereferenceable(16) %2615, i32 16, i1 false) #4
  %2618 = icmp slt i32 %2616, 17
  br i1 %2618, label %2661, label %2619

2619:                                             ; preds = %2613
  %2620 = getelementptr i8, ptr %2610, i32 32
  br label %2621

2621:                                             ; preds = %2621, %2619
  %2622 = phi ptr [ %2615, %2619 ], [ %2626, %2621 ]
  %2623 = phi ptr [ %2620, %2619 ], [ %2627, %2621 ]
  %2624 = getelementptr i8, ptr %2622, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2623, ptr noundef align 1 dereferenceable(16) %2624, i32 16, i1 false) #4
  %2625 = getelementptr i8, ptr %2623, i32 16
  %2626 = getelementptr i8, ptr %2622, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2625, ptr noundef align 1 dereferenceable(16) %2626, i32 16, i1 false) #4
  %2627 = getelementptr i8, ptr %2623, i32 32
  %2628 = icmp ult ptr %2627, %2617
  br i1 %2628, label %2621, label %2661

2629:                                             ; preds = %2598
  %2630 = ptrtoint ptr %2605 to i32
  %2631 = icmp ult ptr %1991, %2001
  br i1 %2631, label %2646, label %2632

2632:                                             ; preds = %2629
  %2633 = sub i32 %1993, %2602
  %2634 = getelementptr i8, ptr %2607, i32 %2633
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2607, ptr noundef align 1 dereferenceable(16) %2001, i32 16, i1 false) #4
  %2635 = icmp slt i32 %2633, 17
  br i1 %2635, label %2646, label %2636

2636:                                             ; preds = %2632
  %2637 = getelementptr i8, ptr %2607, i32 16
  br label %2638

2638:                                             ; preds = %2638, %2636
  %2639 = phi ptr [ %2001, %2636 ], [ %2643, %2638 ]
  %2640 = phi ptr [ %2637, %2636 ], [ %2644, %2638 ]
  %2641 = getelementptr i8, ptr %2639, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2640, ptr noundef align 1 dereferenceable(16) %2641, i32 16, i1 false) #4
  %2642 = getelementptr i8, ptr %2640, i32 16
  %2643 = getelementptr i8, ptr %2639, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2642, ptr noundef align 1 dereferenceable(16) %2643, i32 16, i1 false) #4
  %2644 = getelementptr i8, ptr %2640, i32 32
  %2645 = icmp ult ptr %2644, %2634
  br i1 %2645, label %2638, label %2646

2646:                                             ; preds = %2638, %2632, %2629
  %2647 = phi ptr [ %1991, %2632 ], [ %2001, %2629 ], [ %1991, %2638 ]
  %2648 = phi ptr [ %2634, %2632 ], [ %2607, %2629 ], [ %2634, %2638 ]
  %2649 = icmp ult ptr %2647, %2605
  br i1 %2649, label %2650, label %2661

2650:                                             ; preds = %2646
  %2651 = ptrtoint ptr %2647 to i32
  %2652 = sub i32 %2630, %2651
  %2653 = getelementptr i8, ptr %2647, i32 %2652
  br label %2654

2654:                                             ; preds = %2654, %2650
  %2655 = phi ptr [ %2659, %2654 ], [ %2648, %2650 ]
  %2656 = phi ptr [ %2657, %2654 ], [ %2647, %2650 ]
  %2657 = getelementptr i8, ptr %2656, i32 1
  %2658 = load i8, ptr %2656, align 1
  %2659 = getelementptr i8, ptr %2655, i32 1
  store i8 %2658, ptr %2655, align 1
  %2660 = icmp eq ptr %2657, %2653
  br i1 %2660, label %2661, label %2654

2661:                                             ; preds = %2654, %2646, %2621, %2613
  %2662 = load ptr, ptr %1992, align 4
  %2663 = getelementptr i8, ptr %2662, i32 %2603
  store ptr %2663, ptr %1992, align 4
  %2664 = icmp ugt i32 %2603, 65535
  br i1 %2664, label %2665, label %2672

2665:                                             ; preds = %2661
  store i32 1, ptr %1994, align 4
  %2666 = load ptr, ptr %1995, align 4
  %2667 = load ptr, ptr %1, align 4
  %2668 = ptrtoint ptr %2666 to i32
  %2669 = ptrtoint ptr %2667 to i32
  %2670 = sub i32 %2668, %2669
  %2671 = ashr exact i32 %2670, 3
  store i32 %2671, ptr %1996, align 4
  br label %2672

2672:                                             ; preds = %2665, %2661, %2611
  %2673 = trunc i32 %2603 to i16
  %2674 = load ptr, ptr %1995, align 4
  %2675 = getelementptr inbounds %struct.seqDef_s, ptr %2674, i32 0, i32 1
  store i16 %2673, ptr %2675, align 4
  %2676 = add i32 %2518, 3
  %2677 = load ptr, ptr %1995, align 4
  store i32 %2676, ptr %2677, align 4
  %2678 = icmp ugt i32 %2604, 65535
  br i1 %2678, label %2681, label %2679

2679:                                             ; preds = %2672
  %2680 = load ptr, ptr %1995, align 4
  br label %2688

2681:                                             ; preds = %2672
  store i32 2, ptr %1994, align 4
  %2682 = load ptr, ptr %1995, align 4
  %2683 = load ptr, ptr %1, align 4
  %2684 = ptrtoint ptr %2682 to i32
  %2685 = ptrtoint ptr %2683 to i32
  %2686 = sub i32 %2684, %2685
  %2687 = ashr exact i32 %2686, 3
  store i32 %2687, ptr %1996, align 4
  br label %2688

2688:                                             ; preds = %2681, %2679, %2493, %2491, %2236, %2234
  %2689 = phi i32 [ %2160, %2234 ], [ %2160, %2236 ], [ %2416, %2493 ], [ %2416, %2491 ], [ %2604, %2679 ], [ %2604, %2681 ]
  %2690 = phi ptr [ %2235, %2234 ], [ %2237, %2236 ], [ %2494, %2493 ], [ %2492, %2491 ], [ %2680, %2679 ], [ %2682, %2681 ]
  %2691 = phi i32 [ %2003, %2234 ], [ %2003, %2236 ], [ %2262, %2493 ], [ %2262, %2491 ], [ %2518, %2679 ], [ %2518, %2681 ]
  %2692 = phi i32 [ %2002, %2234 ], [ %2002, %2236 ], [ %2003, %2493 ], [ %2003, %2491 ], [ %2003, %2679 ], [ %2003, %2681 ]
  %2693 = phi i32 [ %2156, %2234 ], [ %2156, %2236 ], [ %2412, %2493 ], [ %2412, %2491 ], [ %2600, %2679 ], [ %2600, %2681 ]
  %2694 = phi ptr [ %2024, %2234 ], [ %2024, %2236 ], [ %2413, %2493 ], [ %2413, %2491 ], [ %2601, %2679 ], [ %2601, %2681 ]
  %2695 = trunc i32 %2689 to i16
  %2696 = getelementptr inbounds %struct.seqDef_s, ptr %2690, i32 0, i32 2
  store i16 %2695, ptr %2696, align 2
  %2697 = load ptr, ptr %1995, align 4
  %2698 = getelementptr %struct.seqDef_s, ptr %2697, i32 1
  store ptr %2698, ptr %1995, align 4
  %2699 = getelementptr i8, ptr %2694, i32 %2693
  %2700 = icmp ugt ptr %2699, %1951
  br i1 %2700, label %2894, label %2701

2701:                                             ; preds = %2688
  %2702 = add i32 %2009, 2
  %2703 = getelementptr i8, ptr %1998, i32 %2009
  %2704 = load i64, ptr %2703, align 1
  %2705 = mul i64 %2704, -3523014627193847808
  %2706 = lshr i64 %2705, %1985
  %2707 = trunc i64 %2706 to i32
  %2708 = getelementptr i32, ptr %1939, i32 %2707
  store i32 %2702, ptr %2708, align 4
  %2709 = getelementptr i8, ptr %2699, i32 -2
  %2710 = load i64, ptr %2709, align 1
  %2711 = mul i64 %2710, -3523014627193847808
  %2712 = lshr i64 %2711, %1985
  %2713 = trunc i64 %2712 to i32
  %2714 = ptrtoint ptr %2709 to i32
  %2715 = sub i32 %2714, %1973
  %2716 = getelementptr i32, ptr %1939, i32 %2713
  store i32 %2715, ptr %2716, align 4
  br label %2717

2717:                                             ; preds = %2881, %2701
  %2718 = phi ptr [ %2892, %2881 ], [ %2699, %2701 ]
  %2719 = phi i32 [ %2720, %2881 ], [ %2692, %2701 ]
  %2720 = phi i32 [ %2719, %2881 ], [ %2691, %2701 ]
  %2721 = ptrtoint ptr %2718 to i32
  %2722 = sub i32 %2721, %1973
  %2723 = sub i32 %2722, %2719
  %2724 = icmp ult i32 %2723, %1948
  %2725 = select i1 %2724, ptr %1997, ptr %1946
  %2726 = getelementptr i8, ptr %2725, i32 %2723
  %2727 = sub i32 %1986, %2723
  %2728 = icmp ugt i32 %2727, 2
  br i1 %2728, label %2729, label %2894

2729:                                             ; preds = %2717
  %2730 = load i32, ptr %2726, align 1
  %2731 = load i32, ptr %2718, align 1
  %2732 = icmp eq i32 %2730, %2731
  br i1 %2732, label %2733, label %2894

2733:                                             ; preds = %2729
  %2734 = select i1 %2724, ptr %1964, ptr %1950
  %2735 = getelementptr i8, ptr %2718, i32 4
  %2736 = getelementptr i8, ptr %2726, i32 4
  %2737 = ptrtoint ptr %2734 to i32
  %2738 = ptrtoint ptr %2736 to i32
  %2739 = sub i32 %2737, %2738
  %2740 = getelementptr i8, ptr %2735, i32 %2739
  %2741 = icmp ult ptr %2740, %1950
  %2742 = select i1 %2741, ptr %2740, ptr %1950
  %2743 = getelementptr i8, ptr %2742, i32 -3
  %2744 = icmp ugt ptr %2743, %2735
  br i1 %2744, label %2745, label %2771

2745:                                             ; preds = %2733
  %2746 = load i32, ptr %2736, align 1
  %2747 = load i32, ptr %2735, align 1
  %2748 = xor i32 %2747, %2746
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %2753, label %2750

2750:                                             ; preds = %2745
  %2751 = tail call i32 @llvm.cttz.i32(i32 %2748, i1 true) #4, !range !8
  %2752 = lshr i32 %2751, 3
  br label %2798

2753:                                             ; preds = %2759, %2745
  %2754 = phi ptr [ %2757, %2759 ], [ %2735, %2745 ]
  %2755 = phi ptr [ %2756, %2759 ], [ %2736, %2745 ]
  %2756 = getelementptr i8, ptr %2755, i32 4
  %2757 = getelementptr i8, ptr %2754, i32 4
  %2758 = icmp ult ptr %2757, %2743
  br i1 %2758, label %2759, label %2771

2759:                                             ; preds = %2753
  %2760 = load i32, ptr %2756, align 1
  %2761 = load i32, ptr %2757, align 1
  %2762 = xor i32 %2761, %2760
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2753, label %2764

2764:                                             ; preds = %2759
  %2765 = tail call i32 @llvm.cttz.i32(i32 %2762, i1 true) #4, !range !8
  %2766 = lshr i32 %2765, 3
  %2767 = getelementptr i8, ptr %2757, i32 %2766
  %2768 = ptrtoint ptr %2767 to i32
  %2769 = ptrtoint ptr %2735 to i32
  %2770 = sub i32 %2768, %2769
  br label %2798

2771:                                             ; preds = %2753, %2733
  %2772 = phi ptr [ %2735, %2733 ], [ %2757, %2753 ]
  %2773 = phi ptr [ %2736, %2733 ], [ %2756, %2753 ]
  %2774 = getelementptr i8, ptr %2742, i32 -1
  %2775 = icmp ult ptr %2772, %2774
  br i1 %2775, label %2776, label %2783

2776:                                             ; preds = %2771
  %2777 = load i16, ptr %2773, align 1
  %2778 = load i16, ptr %2772, align 1
  %2779 = icmp eq i16 %2777, %2778
  br i1 %2779, label %2780, label %2783

2780:                                             ; preds = %2776
  %2781 = getelementptr i8, ptr %2772, i32 2
  %2782 = getelementptr i8, ptr %2773, i32 2
  br label %2783

2783:                                             ; preds = %2780, %2776, %2771
  %2784 = phi ptr [ %2781, %2780 ], [ %2772, %2776 ], [ %2772, %2771 ]
  %2785 = phi ptr [ %2782, %2780 ], [ %2773, %2776 ], [ %2773, %2771 ]
  %2786 = icmp ult ptr %2784, %2742
  br i1 %2786, label %2787, label %2793

2787:                                             ; preds = %2783
  %2788 = load i8, ptr %2785, align 1
  %2789 = load i8, ptr %2784, align 1
  %2790 = icmp eq i8 %2788, %2789
  %2791 = zext i1 %2790 to i32
  %2792 = getelementptr i8, ptr %2784, i32 %2791
  br label %2793

2793:                                             ; preds = %2787, %2783
  %2794 = phi ptr [ %2784, %2783 ], [ %2792, %2787 ]
  %2795 = ptrtoint ptr %2794 to i32
  %2796 = ptrtoint ptr %2735 to i32
  %2797 = sub i32 %2795, %2796
  br label %2798

2798:                                             ; preds = %2793, %2764, %2750
  %2799 = phi i32 [ %2797, %2793 ], [ %2752, %2750 ], [ %2770, %2764 ]
  %2800 = getelementptr i8, ptr %2736, i32 %2799
  %2801 = icmp eq ptr %2800, %2734
  br i1 %2801, label %2802, label %2860

2802:                                             ; preds = %2798
  %2803 = getelementptr i8, ptr %2735, i32 %2799
  %2804 = icmp ugt ptr %1989, %2803
  br i1 %2804, label %2805, label %2831

2805:                                             ; preds = %2802
  %2806 = load i32, ptr %1949, align 1
  %2807 = load i32, ptr %2803, align 1
  %2808 = xor i32 %2807, %2806
  %2809 = icmp eq i32 %2808, 0
  br i1 %2809, label %2813, label %2810

2810:                                             ; preds = %2805
  %2811 = tail call i32 @llvm.cttz.i32(i32 %2808, i1 true) #4, !range !8
  %2812 = lshr i32 %2811, 3
  br label %2857

2813:                                             ; preds = %2819, %2805
  %2814 = phi ptr [ %2817, %2819 ], [ %2803, %2805 ]
  %2815 = phi ptr [ %2816, %2819 ], [ %1949, %2805 ]
  %2816 = getelementptr i8, ptr %2815, i32 4
  %2817 = getelementptr i8, ptr %2814, i32 4
  %2818 = icmp ult ptr %2817, %1989
  br i1 %2818, label %2819, label %2831

2819:                                             ; preds = %2813
  %2820 = load i32, ptr %2816, align 1
  %2821 = load i32, ptr %2817, align 1
  %2822 = xor i32 %2821, %2820
  %2823 = icmp eq i32 %2822, 0
  br i1 %2823, label %2813, label %2824

2824:                                             ; preds = %2819
  %2825 = tail call i32 @llvm.cttz.i32(i32 %2822, i1 true) #4, !range !8
  %2826 = lshr i32 %2825, 3
  %2827 = getelementptr i8, ptr %2817, i32 %2826
  %2828 = ptrtoint ptr %2827 to i32
  %2829 = ptrtoint ptr %2803 to i32
  %2830 = sub i32 %2828, %2829
  br label %2857

2831:                                             ; preds = %2813, %2802
  %2832 = phi ptr [ %2803, %2802 ], [ %2817, %2813 ]
  %2833 = phi ptr [ %1949, %2802 ], [ %2816, %2813 ]
  %2834 = icmp ult ptr %2832, %1990
  br i1 %2834, label %2835, label %2842

2835:                                             ; preds = %2831
  %2836 = load i16, ptr %2833, align 1
  %2837 = load i16, ptr %2832, align 1
  %2838 = icmp eq i16 %2836, %2837
  br i1 %2838, label %2839, label %2842

2839:                                             ; preds = %2835
  %2840 = getelementptr i8, ptr %2832, i32 2
  %2841 = getelementptr i8, ptr %2833, i32 2
  br label %2842

2842:                                             ; preds = %2839, %2835, %2831
  %2843 = phi ptr [ %2840, %2839 ], [ %2832, %2835 ], [ %2832, %2831 ]
  %2844 = phi ptr [ %2841, %2839 ], [ %2833, %2835 ], [ %2833, %2831 ]
  %2845 = icmp ult ptr %2843, %1950
  br i1 %2845, label %2846, label %2852

2846:                                             ; preds = %2842
  %2847 = load i8, ptr %2844, align 1
  %2848 = load i8, ptr %2843, align 1
  %2849 = icmp eq i8 %2847, %2848
  %2850 = zext i1 %2849 to i32
  %2851 = getelementptr i8, ptr %2843, i32 %2850
  br label %2852

2852:                                             ; preds = %2846, %2842
  %2853 = phi ptr [ %2843, %2842 ], [ %2851, %2846 ]
  %2854 = ptrtoint ptr %2853 to i32
  %2855 = ptrtoint ptr %2803 to i32
  %2856 = sub i32 %2854, %2855
  br label %2857

2857:                                             ; preds = %2852, %2824, %2810
  %2858 = phi i32 [ %2856, %2852 ], [ %2812, %2810 ], [ %2830, %2824 ]
  %2859 = add i32 %2858, %2799
  br label %2860

2860:                                             ; preds = %2857, %2798
  %2861 = phi i32 [ %2859, %2857 ], [ %2799, %2798 ]
  %2862 = add i32 %2861, 4
  %2863 = add i32 %2861, 1
  %2864 = icmp ugt ptr %2718, %1991
  br i1 %2864, label %2867, label %2865

2865:                                             ; preds = %2860
  %2866 = load ptr, ptr %1992, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2866, ptr noundef align 1 dereferenceable(16) %2718, i32 16, i1 false) #4
  br label %2867

2867:                                             ; preds = %2865, %2860
  %2868 = load ptr, ptr %1995, align 4
  %2869 = getelementptr inbounds %struct.seqDef_s, ptr %2868, i32 0, i32 1
  store i16 0, ptr %2869, align 4
  %2870 = load ptr, ptr %1995, align 4
  store i32 1, ptr %2870, align 4
  %2871 = icmp ugt i32 %2863, 65535
  br i1 %2871, label %2874, label %2872

2872:                                             ; preds = %2867
  %2873 = load ptr, ptr %1995, align 4
  br label %2881

2874:                                             ; preds = %2867
  store i32 2, ptr %1994, align 4
  %2875 = load ptr, ptr %1995, align 4
  %2876 = load ptr, ptr %1, align 4
  %2877 = ptrtoint ptr %2875 to i32
  %2878 = ptrtoint ptr %2876 to i32
  %2879 = sub i32 %2877, %2878
  %2880 = ashr exact i32 %2879, 3
  store i32 %2880, ptr %1996, align 4
  br label %2881

2881:                                             ; preds = %2874, %2872
  %2882 = phi ptr [ %2873, %2872 ], [ %2875, %2874 ]
  %2883 = trunc i32 %2863 to i16
  %2884 = getelementptr inbounds %struct.seqDef_s, ptr %2882, i32 0, i32 2
  store i16 %2883, ptr %2884, align 2
  %2885 = load ptr, ptr %1995, align 4
  %2886 = getelementptr %struct.seqDef_s, ptr %2885, i32 1
  store ptr %2886, ptr %1995, align 4
  %2887 = load i64, ptr %2718, align 1
  %2888 = mul i64 %2887, -3523014627193847808
  %2889 = lshr i64 %2888, %1985
  %2890 = trunc i64 %2889 to i32
  %2891 = getelementptr i32, ptr %1939, i32 %2890
  store i32 %2722, ptr %2891, align 4
  %2892 = getelementptr i8, ptr %2718, i32 %2862
  %2893 = icmp ugt ptr %2892, %1951
  br i1 %2893, label %2894, label %2717

2894:                                             ; preds = %2881, %2729, %2717, %2688, %2510, %2500
  %2895 = phi i32 [ %2003, %2500 ], [ %2003, %2510 ], [ %2691, %2688 ], [ %2720, %2717 ], [ %2720, %2729 ], [ %2719, %2881 ]
  %2896 = phi i32 [ %2002, %2500 ], [ %2002, %2510 ], [ %2692, %2688 ], [ %2719, %2717 ], [ %2719, %2729 ], [ %2720, %2881 ]
  %2897 = phi ptr [ %2001, %2500 ], [ %2001, %2510 ], [ %2699, %2688 ], [ %2718, %2717 ], [ %2718, %2729 ], [ %2892, %2881 ]
  %2898 = phi ptr [ %2505, %2500 ], [ %2515, %2510 ], [ %2699, %2688 ], [ %2718, %2717 ], [ %2718, %2729 ], [ %2892, %2881 ]
  %2899 = icmp ult ptr %2898, %1951
  br i1 %2899, label %1999, label %2900

2900:                                             ; preds = %2894
  %2901 = ptrtoint ptr %2897 to i32
  br label %2902

2902:                                             ; preds = %2900, %1937
  %2903 = phi i32 [ %2901, %2900 ], [ %1969, %1937 ]
  %2904 = phi i32 [ %2895, %2900 ], [ %1952, %1937 ]
  %2905 = phi i32 [ %2896, %2900 ], [ %1954, %1937 ]
  store i32 %2904, ptr %2, align 4
  store i32 %2905, ptr %1953, align 4
  br label %3875

2906:                                             ; preds = %5
  %2907 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %2908 = load ptr, ptr %2907, align 4
  %2909 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 5
  %2910 = load i32, ptr %2909, align 4
  %2911 = icmp eq i32 %2910, 0
  %2912 = zext i1 %2911 to i32
  %2913 = add i32 %2910, %2912
  %2914 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %2915 = load ptr, ptr %2914, align 4
  %2916 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %2917 = load i32, ptr %2916, align 4
  %2918 = getelementptr i8, ptr %2915, i32 %2917
  %2919 = getelementptr i8, ptr %3, i32 %4
  %2920 = getelementptr i8, ptr %2919, i32 -8
  %2921 = load i32, ptr %2, align 4
  %2922 = getelementptr i32, ptr %2, i32 1
  %2923 = load i32, ptr %2922, align 4
  %2924 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 9
  %2925 = load ptr, ptr %2924, align 4
  %2926 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %2925, i32 0, i32 4
  %2927 = load ptr, ptr %2926, align 4
  %2928 = getelementptr inbounds %struct.ZSTD_window_t, ptr %2925, i32 0, i32 3
  %2929 = load i32, ptr %2928, align 4
  %2930 = getelementptr inbounds %struct.ZSTD_window_t, ptr %2925, i32 0, i32 1
  %2931 = load ptr, ptr %2930, align 4
  %2932 = getelementptr i8, ptr %2931, i32 %2929
  %2933 = load ptr, ptr %2925, align 4
  %2934 = ptrtoint ptr %2933 to i32
  %2935 = ptrtoint ptr %2931 to i32
  %2936 = sub i32 %2935, %2934
  %2937 = add i32 %2936, %2917
  %2938 = ptrtoint ptr %3 to i32
  %2939 = ptrtoint ptr %2918 to i32
  %2940 = sub i32 %2938, %2939
  %2941 = getelementptr i8, ptr %2933, i32 %2940
  %2942 = ptrtoint ptr %2915 to i32
  %2943 = icmp eq ptr %2941, %2932
  %2944 = zext i1 %2943 to i32
  %2945 = getelementptr i8, ptr %3, i32 %2944
  %2946 = icmp ult ptr %2945, %2920
  br i1 %2946, label %2947, label %3871

2947:                                             ; preds = %2906
  %2948 = sub i32 0, %2937
  %2949 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %2925, i32 0, i32 10, i32 2
  %2950 = load i32, ptr %2949, align 4
  %2951 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %2952 = load i32, ptr %2951, align 4
  %2953 = sub i32 64, %2952
  %2954 = zext i32 %2953 to i64
  %2955 = add i32 %2917, -1
  %2956 = sub i32 64, %2950
  %2957 = zext i32 %2956 to i64
  %2958 = getelementptr i8, ptr %2919, i32 -3
  %2959 = getelementptr i8, ptr %2919, i32 -1
  %2960 = getelementptr i8, ptr %2919, i32 -32
  %2961 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %2962 = ptrtoint ptr %2960 to i32
  %2963 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %2964 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %2965 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %2966 = getelementptr i8, ptr %2931, i32 %2948
  %2967 = getelementptr i8, ptr %2915, i32 2
  br label %2968

2968:                                             ; preds = %3863, %2947
  %2969 = phi ptr [ %2945, %2947 ], [ %3867, %3863 ]
  %2970 = phi ptr [ %3, %2947 ], [ %3866, %3863 ]
  %2971 = phi i32 [ %2923, %2947 ], [ %3865, %3863 ]
  %2972 = phi i32 [ %2921, %2947 ], [ %3864, %3863 ]
  %2973 = load i64, ptr %2969, align 1
  %2974 = mul i64 %2973, -3523014627193167104
  %2975 = lshr i64 %2974, %2954
  %2976 = trunc i64 %2975 to i32
  %2977 = ptrtoint ptr %2969 to i32
  %2978 = sub i32 %2977, %2942
  %2979 = getelementptr i32, ptr %2908, i32 %2976
  %2980 = load i32, ptr %2979, align 4
  %2981 = getelementptr i8, ptr %2915, i32 %2980
  %2982 = sub i32 1, %2972
  %2983 = add i32 %2982, %2978
  %2984 = icmp ult i32 %2983, %2917
  %2985 = sub i32 %2983, %2937
  %2986 = getelementptr i8, ptr %2931, i32 %2985
  %2987 = getelementptr i8, ptr %2915, i32 %2983
  %2988 = select i1 %2984, ptr %2986, ptr %2987
  store i32 %2978, ptr %2979, align 4
  %2989 = sub i32 %2955, %2983
  %2990 = icmp ugt i32 %2989, 2
  br i1 %2990, label %2991, label %3212

2991:                                             ; preds = %2968
  %2992 = load i32, ptr %2988, align 1
  %2993 = getelementptr i8, ptr %2969, i32 1
  %2994 = load i32, ptr %2993, align 1
  %2995 = icmp eq i32 %2992, %2994
  br i1 %2995, label %2996, label %3212

2996:                                             ; preds = %2991
  %2997 = select i1 %2984, ptr %2933, ptr %2919
  %2998 = getelementptr i8, ptr %2969, i32 5
  %2999 = getelementptr i8, ptr %2988, i32 4
  %3000 = ptrtoint ptr %2997 to i32
  %3001 = ptrtoint ptr %2999 to i32
  %3002 = sub i32 %3000, %3001
  %3003 = getelementptr i8, ptr %2998, i32 %3002
  %3004 = icmp ult ptr %3003, %2919
  %3005 = select i1 %3004, ptr %3003, ptr %2919
  %3006 = getelementptr i8, ptr %3005, i32 -3
  %3007 = icmp ugt ptr %3006, %2998
  br i1 %3007, label %3008, label %3034

3008:                                             ; preds = %2996
  %3009 = load i32, ptr %2999, align 1
  %3010 = load i32, ptr %2998, align 1
  %3011 = xor i32 %3010, %3009
  %3012 = icmp eq i32 %3011, 0
  br i1 %3012, label %3016, label %3013

3013:                                             ; preds = %3008
  %3014 = tail call i32 @llvm.cttz.i32(i32 %3011, i1 true) #4, !range !8
  %3015 = lshr i32 %3014, 3
  br label %3061

3016:                                             ; preds = %3022, %3008
  %3017 = phi ptr [ %3020, %3022 ], [ %2998, %3008 ]
  %3018 = phi ptr [ %3019, %3022 ], [ %2999, %3008 ]
  %3019 = getelementptr i8, ptr %3018, i32 4
  %3020 = getelementptr i8, ptr %3017, i32 4
  %3021 = icmp ult ptr %3020, %3006
  br i1 %3021, label %3022, label %3034

3022:                                             ; preds = %3016
  %3023 = load i32, ptr %3019, align 1
  %3024 = load i32, ptr %3020, align 1
  %3025 = xor i32 %3024, %3023
  %3026 = icmp eq i32 %3025, 0
  br i1 %3026, label %3016, label %3027

3027:                                             ; preds = %3022
  %3028 = tail call i32 @llvm.cttz.i32(i32 %3025, i1 true) #4, !range !8
  %3029 = lshr i32 %3028, 3
  %3030 = getelementptr i8, ptr %3020, i32 %3029
  %3031 = ptrtoint ptr %3030 to i32
  %3032 = ptrtoint ptr %2998 to i32
  %3033 = sub i32 %3031, %3032
  br label %3061

3034:                                             ; preds = %3016, %2996
  %3035 = phi ptr [ %2998, %2996 ], [ %3020, %3016 ]
  %3036 = phi ptr [ %2999, %2996 ], [ %3019, %3016 ]
  %3037 = getelementptr i8, ptr %3005, i32 -1
  %3038 = icmp ult ptr %3035, %3037
  br i1 %3038, label %3039, label %3046

3039:                                             ; preds = %3034
  %3040 = load i16, ptr %3036, align 1
  %3041 = load i16, ptr %3035, align 1
  %3042 = icmp eq i16 %3040, %3041
  br i1 %3042, label %3043, label %3046

3043:                                             ; preds = %3039
  %3044 = getelementptr i8, ptr %3035, i32 2
  %3045 = getelementptr i8, ptr %3036, i32 2
  br label %3046

3046:                                             ; preds = %3043, %3039, %3034
  %3047 = phi ptr [ %3044, %3043 ], [ %3035, %3039 ], [ %3035, %3034 ]
  %3048 = phi ptr [ %3045, %3043 ], [ %3036, %3039 ], [ %3036, %3034 ]
  %3049 = icmp ult ptr %3047, %3005
  br i1 %3049, label %3050, label %3056

3050:                                             ; preds = %3046
  %3051 = load i8, ptr %3048, align 1
  %3052 = load i8, ptr %3047, align 1
  %3053 = icmp eq i8 %3051, %3052
  %3054 = zext i1 %3053 to i32
  %3055 = getelementptr i8, ptr %3047, i32 %3054
  br label %3056

3056:                                             ; preds = %3050, %3046
  %3057 = phi ptr [ %3047, %3046 ], [ %3055, %3050 ]
  %3058 = ptrtoint ptr %3057 to i32
  %3059 = ptrtoint ptr %2998 to i32
  %3060 = sub i32 %3058, %3059
  br label %3061

3061:                                             ; preds = %3056, %3027, %3013
  %3062 = phi i32 [ %3060, %3056 ], [ %3015, %3013 ], [ %3033, %3027 ]
  %3063 = getelementptr i8, ptr %2999, i32 %3062
  %3064 = icmp eq ptr %3063, %2997
  br i1 %3064, label %3065, label %3123

3065:                                             ; preds = %3061
  %3066 = getelementptr i8, ptr %2998, i32 %3062
  %3067 = icmp ugt ptr %2958, %3066
  br i1 %3067, label %3068, label %3094

3068:                                             ; preds = %3065
  %3069 = load i32, ptr %2918, align 1
  %3070 = load i32, ptr %3066, align 1
  %3071 = xor i32 %3070, %3069
  %3072 = icmp eq i32 %3071, 0
  br i1 %3072, label %3076, label %3073

3073:                                             ; preds = %3068
  %3074 = tail call i32 @llvm.cttz.i32(i32 %3071, i1 true) #4, !range !8
  %3075 = lshr i32 %3074, 3
  br label %3120

3076:                                             ; preds = %3082, %3068
  %3077 = phi ptr [ %3080, %3082 ], [ %3066, %3068 ]
  %3078 = phi ptr [ %3079, %3082 ], [ %2918, %3068 ]
  %3079 = getelementptr i8, ptr %3078, i32 4
  %3080 = getelementptr i8, ptr %3077, i32 4
  %3081 = icmp ult ptr %3080, %2958
  br i1 %3081, label %3082, label %3094

3082:                                             ; preds = %3076
  %3083 = load i32, ptr %3079, align 1
  %3084 = load i32, ptr %3080, align 1
  %3085 = xor i32 %3084, %3083
  %3086 = icmp eq i32 %3085, 0
  br i1 %3086, label %3076, label %3087

3087:                                             ; preds = %3082
  %3088 = tail call i32 @llvm.cttz.i32(i32 %3085, i1 true) #4, !range !8
  %3089 = lshr i32 %3088, 3
  %3090 = getelementptr i8, ptr %3080, i32 %3089
  %3091 = ptrtoint ptr %3090 to i32
  %3092 = ptrtoint ptr %3066 to i32
  %3093 = sub i32 %3091, %3092
  br label %3120

3094:                                             ; preds = %3076, %3065
  %3095 = phi ptr [ %3066, %3065 ], [ %3080, %3076 ]
  %3096 = phi ptr [ %2918, %3065 ], [ %3079, %3076 ]
  %3097 = icmp ult ptr %3095, %2959
  br i1 %3097, label %3098, label %3105

3098:                                             ; preds = %3094
  %3099 = load i16, ptr %3096, align 1
  %3100 = load i16, ptr %3095, align 1
  %3101 = icmp eq i16 %3099, %3100
  br i1 %3101, label %3102, label %3105

3102:                                             ; preds = %3098
  %3103 = getelementptr i8, ptr %3095, i32 2
  %3104 = getelementptr i8, ptr %3096, i32 2
  br label %3105

3105:                                             ; preds = %3102, %3098, %3094
  %3106 = phi ptr [ %3103, %3102 ], [ %3095, %3098 ], [ %3095, %3094 ]
  %3107 = phi ptr [ %3104, %3102 ], [ %3096, %3098 ], [ %3096, %3094 ]
  %3108 = icmp ult ptr %3106, %2919
  br i1 %3108, label %3109, label %3115

3109:                                             ; preds = %3105
  %3110 = load i8, ptr %3107, align 1
  %3111 = load i8, ptr %3106, align 1
  %3112 = icmp eq i8 %3110, %3111
  %3113 = zext i1 %3112 to i32
  %3114 = getelementptr i8, ptr %3106, i32 %3113
  br label %3115

3115:                                             ; preds = %3109, %3105
  %3116 = phi ptr [ %3106, %3105 ], [ %3114, %3109 ]
  %3117 = ptrtoint ptr %3116 to i32
  %3118 = ptrtoint ptr %3066 to i32
  %3119 = sub i32 %3117, %3118
  br label %3120

3120:                                             ; preds = %3115, %3087, %3073
  %3121 = phi i32 [ %3119, %3115 ], [ %3075, %3073 ], [ %3093, %3087 ]
  %3122 = add i32 %3121, %3062
  br label %3123

3123:                                             ; preds = %3120, %3061
  %3124 = phi i32 [ %3122, %3120 ], [ %3062, %3061 ]
  %3125 = add i32 %3124, 4
  %3126 = ptrtoint ptr %2993 to i32
  %3127 = ptrtoint ptr %2970 to i32
  %3128 = sub i32 %3126, %3127
  %3129 = add i32 %3124, 1
  %3130 = getelementptr i8, ptr %2970, i32 %3128
  %3131 = icmp ugt ptr %3130, %2960
  %3132 = load ptr, ptr %2961, align 4
  br i1 %3131, label %3154, label %3133

3133:                                             ; preds = %3123
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3132, ptr noundef align 1 dereferenceable(16) %2970, i32 16, i1 false) #4
  %3134 = icmp ugt i32 %3128, 16
  %3135 = load ptr, ptr %2961, align 4
  br i1 %3134, label %3138, label %3136

3136:                                             ; preds = %3133
  %3137 = getelementptr i8, ptr %3135, i32 %3128
  store ptr %3137, ptr %2961, align 4
  br label %3197

3138:                                             ; preds = %3133
  %3139 = getelementptr i8, ptr %3135, i32 16
  %3140 = getelementptr i8, ptr %2970, i32 16
  %3141 = add i32 %3128, -16
  %3142 = getelementptr i8, ptr %3135, i32 %3128
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3139, ptr noundef align 1 dereferenceable(16) %3140, i32 16, i1 false) #4
  %3143 = icmp slt i32 %3141, 17
  br i1 %3143, label %3186, label %3144

3144:                                             ; preds = %3138
  %3145 = getelementptr i8, ptr %3135, i32 32
  br label %3146

3146:                                             ; preds = %3146, %3144
  %3147 = phi ptr [ %3140, %3144 ], [ %3151, %3146 ]
  %3148 = phi ptr [ %3145, %3144 ], [ %3152, %3146 ]
  %3149 = getelementptr i8, ptr %3147, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3148, ptr noundef align 1 dereferenceable(16) %3149, i32 16, i1 false) #4
  %3150 = getelementptr i8, ptr %3148, i32 16
  %3151 = getelementptr i8, ptr %3147, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3150, ptr noundef align 1 dereferenceable(16) %3151, i32 16, i1 false) #4
  %3152 = getelementptr i8, ptr %3148, i32 32
  %3153 = icmp ult ptr %3152, %3142
  br i1 %3153, label %3146, label %3186

3154:                                             ; preds = %3123
  %3155 = ptrtoint ptr %3130 to i32
  %3156 = icmp ult ptr %2960, %2970
  br i1 %3156, label %3171, label %3157

3157:                                             ; preds = %3154
  %3158 = sub i32 %2962, %3127
  %3159 = getelementptr i8, ptr %3132, i32 %3158
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3132, ptr noundef align 1 dereferenceable(16) %2970, i32 16, i1 false) #4
  %3160 = icmp slt i32 %3158, 17
  br i1 %3160, label %3171, label %3161

3161:                                             ; preds = %3157
  %3162 = getelementptr i8, ptr %3132, i32 16
  br label %3163

3163:                                             ; preds = %3163, %3161
  %3164 = phi ptr [ %2970, %3161 ], [ %3168, %3163 ]
  %3165 = phi ptr [ %3162, %3161 ], [ %3169, %3163 ]
  %3166 = getelementptr i8, ptr %3164, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3165, ptr noundef align 1 dereferenceable(16) %3166, i32 16, i1 false) #4
  %3167 = getelementptr i8, ptr %3165, i32 16
  %3168 = getelementptr i8, ptr %3164, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3167, ptr noundef align 1 dereferenceable(16) %3168, i32 16, i1 false) #4
  %3169 = getelementptr i8, ptr %3165, i32 32
  %3170 = icmp ult ptr %3169, %3159
  br i1 %3170, label %3163, label %3171

3171:                                             ; preds = %3163, %3157, %3154
  %3172 = phi ptr [ %2960, %3157 ], [ %2970, %3154 ], [ %2960, %3163 ]
  %3173 = phi ptr [ %3159, %3157 ], [ %3132, %3154 ], [ %3159, %3163 ]
  %3174 = icmp ult ptr %3172, %3130
  br i1 %3174, label %3175, label %3186

3175:                                             ; preds = %3171
  %3176 = ptrtoint ptr %3172 to i32
  %3177 = sub i32 %3155, %3176
  %3178 = getelementptr i8, ptr %3172, i32 %3177
  br label %3179

3179:                                             ; preds = %3179, %3175
  %3180 = phi ptr [ %3184, %3179 ], [ %3173, %3175 ]
  %3181 = phi ptr [ %3182, %3179 ], [ %3172, %3175 ]
  %3182 = getelementptr i8, ptr %3181, i32 1
  %3183 = load i8, ptr %3181, align 1
  %3184 = getelementptr i8, ptr %3180, i32 1
  store i8 %3183, ptr %3180, align 1
  %3185 = icmp eq ptr %3182, %3178
  br i1 %3185, label %3186, label %3179

3186:                                             ; preds = %3179, %3171, %3146, %3138
  %3187 = load ptr, ptr %2961, align 4
  %3188 = getelementptr i8, ptr %3187, i32 %3128
  store ptr %3188, ptr %2961, align 4
  %3189 = icmp ugt i32 %3128, 65535
  br i1 %3189, label %3190, label %3197

3190:                                             ; preds = %3186
  store i32 1, ptr %2963, align 4
  %3191 = load ptr, ptr %2964, align 4
  %3192 = load ptr, ptr %1, align 4
  %3193 = ptrtoint ptr %3191 to i32
  %3194 = ptrtoint ptr %3192 to i32
  %3195 = sub i32 %3193, %3194
  %3196 = ashr exact i32 %3195, 3
  store i32 %3196, ptr %2965, align 4
  br label %3197

3197:                                             ; preds = %3190, %3186, %3136
  %3198 = trunc i32 %3128 to i16
  %3199 = load ptr, ptr %2964, align 4
  %3200 = getelementptr inbounds %struct.seqDef_s, ptr %3199, i32 0, i32 1
  store i16 %3198, ptr %3200, align 4
  %3201 = load ptr, ptr %2964, align 4
  store i32 1, ptr %3201, align 4
  %3202 = icmp ugt i32 %3129, 65535
  br i1 %3202, label %3205, label %3203

3203:                                             ; preds = %3197
  %3204 = load ptr, ptr %2964, align 4
  br label %3657

3205:                                             ; preds = %3197
  store i32 2, ptr %2963, align 4
  %3206 = load ptr, ptr %2964, align 4
  %3207 = load ptr, ptr %1, align 4
  %3208 = ptrtoint ptr %3206 to i32
  %3209 = ptrtoint ptr %3207 to i32
  %3210 = sub i32 %3208, %3209
  %3211 = ashr exact i32 %3210, 3
  store i32 %3211, ptr %2965, align 4
  br label %3657

3212:                                             ; preds = %2991, %2968
  %3213 = icmp ugt i32 %2980, %2917
  br i1 %3213, label %3475, label %3214

3214:                                             ; preds = %3212
  %3215 = load i64, ptr %2969, align 1
  %3216 = mul i64 %3215, -3523014627193167104
  %3217 = lshr i64 %3216, %2957
  %3218 = trunc i64 %3217 to i32
  %3219 = getelementptr i32, ptr %2927, i32 %3218
  %3220 = load i32, ptr %3219, align 4
  %3221 = getelementptr i8, ptr %2931, i32 %3220
  %3222 = icmp ugt i32 %3220, %2929
  %3223 = lshr i64 %3215, 32
  %3224 = trunc i64 %3223 to i32
  br i1 %3222, label %3225, label %3469

3225:                                             ; preds = %3214
  %3226 = trunc i64 %3215 to i32
  %3227 = load i32, ptr %3221, align 1
  %3228 = icmp eq i32 %3227, %3226
  br i1 %3228, label %3229, label %3469

3229:                                             ; preds = %3225
  %3230 = add i32 %2937, %3220
  %3231 = sub i32 %2978, %3230
  %3232 = getelementptr i8, ptr %2969, i32 4
  %3233 = getelementptr i8, ptr %3221, i32 4
  %3234 = ptrtoint ptr %3233 to i32
  %3235 = sub i32 %2934, %3234
  %3236 = getelementptr i8, ptr %3232, i32 %3235
  %3237 = icmp ult ptr %3236, %2919
  %3238 = select i1 %3237, ptr %3236, ptr %2919
  %3239 = getelementptr i8, ptr %3238, i32 -3
  %3240 = icmp ugt ptr %3239, %3232
  br i1 %3240, label %3241, label %3266

3241:                                             ; preds = %3229
  %3242 = load i32, ptr %3233, align 1
  %3243 = xor i32 %3242, %3224
  %3244 = icmp eq i32 %3243, 0
  br i1 %3244, label %3248, label %3245

3245:                                             ; preds = %3241
  %3246 = tail call i32 @llvm.cttz.i32(i32 %3243, i1 true) #4, !range !8
  %3247 = lshr i32 %3246, 3
  br label %3293

3248:                                             ; preds = %3254, %3241
  %3249 = phi ptr [ %3252, %3254 ], [ %3232, %3241 ]
  %3250 = phi ptr [ %3251, %3254 ], [ %3233, %3241 ]
  %3251 = getelementptr i8, ptr %3250, i32 4
  %3252 = getelementptr i8, ptr %3249, i32 4
  %3253 = icmp ult ptr %3252, %3239
  br i1 %3253, label %3254, label %3266

3254:                                             ; preds = %3248
  %3255 = load i32, ptr %3251, align 1
  %3256 = load i32, ptr %3252, align 1
  %3257 = xor i32 %3256, %3255
  %3258 = icmp eq i32 %3257, 0
  br i1 %3258, label %3248, label %3259

3259:                                             ; preds = %3254
  %3260 = tail call i32 @llvm.cttz.i32(i32 %3257, i1 true) #4, !range !8
  %3261 = lshr i32 %3260, 3
  %3262 = getelementptr i8, ptr %3252, i32 %3261
  %3263 = ptrtoint ptr %3262 to i32
  %3264 = ptrtoint ptr %3232 to i32
  %3265 = sub i32 %3263, %3264
  br label %3293

3266:                                             ; preds = %3248, %3229
  %3267 = phi ptr [ %3232, %3229 ], [ %3252, %3248 ]
  %3268 = phi ptr [ %3233, %3229 ], [ %3251, %3248 ]
  %3269 = getelementptr i8, ptr %3238, i32 -1
  %3270 = icmp ult ptr %3267, %3269
  br i1 %3270, label %3271, label %3278

3271:                                             ; preds = %3266
  %3272 = load i16, ptr %3268, align 1
  %3273 = load i16, ptr %3267, align 1
  %3274 = icmp eq i16 %3272, %3273
  br i1 %3274, label %3275, label %3278

3275:                                             ; preds = %3271
  %3276 = getelementptr i8, ptr %3267, i32 2
  %3277 = getelementptr i8, ptr %3268, i32 2
  br label %3278

3278:                                             ; preds = %3275, %3271, %3266
  %3279 = phi ptr [ %3276, %3275 ], [ %3267, %3271 ], [ %3267, %3266 ]
  %3280 = phi ptr [ %3277, %3275 ], [ %3268, %3271 ], [ %3268, %3266 ]
  %3281 = icmp ult ptr %3279, %3238
  br i1 %3281, label %3282, label %3288

3282:                                             ; preds = %3278
  %3283 = load i8, ptr %3280, align 1
  %3284 = load i8, ptr %3279, align 1
  %3285 = icmp eq i8 %3283, %3284
  %3286 = zext i1 %3285 to i32
  %3287 = getelementptr i8, ptr %3279, i32 %3286
  br label %3288

3288:                                             ; preds = %3282, %3278
  %3289 = phi ptr [ %3279, %3278 ], [ %3287, %3282 ]
  %3290 = ptrtoint ptr %3289 to i32
  %3291 = ptrtoint ptr %3232 to i32
  %3292 = sub i32 %3290, %3291
  br label %3293

3293:                                             ; preds = %3288, %3259, %3245
  %3294 = phi i32 [ %3292, %3288 ], [ %3247, %3245 ], [ %3265, %3259 ]
  %3295 = getelementptr i8, ptr %3233, i32 %3294
  %3296 = icmp eq ptr %3295, %2933
  br i1 %3296, label %3297, label %3355

3297:                                             ; preds = %3293
  %3298 = getelementptr i8, ptr %3232, i32 %3294
  %3299 = icmp ugt ptr %2958, %3298
  br i1 %3299, label %3300, label %3326

3300:                                             ; preds = %3297
  %3301 = load i32, ptr %2918, align 1
  %3302 = load i32, ptr %3298, align 1
  %3303 = xor i32 %3302, %3301
  %3304 = icmp eq i32 %3303, 0
  br i1 %3304, label %3308, label %3305

3305:                                             ; preds = %3300
  %3306 = tail call i32 @llvm.cttz.i32(i32 %3303, i1 true) #4, !range !8
  %3307 = lshr i32 %3306, 3
  br label %3352

3308:                                             ; preds = %3314, %3300
  %3309 = phi ptr [ %3312, %3314 ], [ %3298, %3300 ]
  %3310 = phi ptr [ %3311, %3314 ], [ %2918, %3300 ]
  %3311 = getelementptr i8, ptr %3310, i32 4
  %3312 = getelementptr i8, ptr %3309, i32 4
  %3313 = icmp ult ptr %3312, %2958
  br i1 %3313, label %3314, label %3326

3314:                                             ; preds = %3308
  %3315 = load i32, ptr %3311, align 1
  %3316 = load i32, ptr %3312, align 1
  %3317 = xor i32 %3316, %3315
  %3318 = icmp eq i32 %3317, 0
  br i1 %3318, label %3308, label %3319

3319:                                             ; preds = %3314
  %3320 = tail call i32 @llvm.cttz.i32(i32 %3317, i1 true) #4, !range !8
  %3321 = lshr i32 %3320, 3
  %3322 = getelementptr i8, ptr %3312, i32 %3321
  %3323 = ptrtoint ptr %3322 to i32
  %3324 = ptrtoint ptr %3298 to i32
  %3325 = sub i32 %3323, %3324
  br label %3352

3326:                                             ; preds = %3308, %3297
  %3327 = phi ptr [ %3298, %3297 ], [ %3312, %3308 ]
  %3328 = phi ptr [ %2918, %3297 ], [ %3311, %3308 ]
  %3329 = icmp ult ptr %3327, %2959
  br i1 %3329, label %3330, label %3337

3330:                                             ; preds = %3326
  %3331 = load i16, ptr %3328, align 1
  %3332 = load i16, ptr %3327, align 1
  %3333 = icmp eq i16 %3331, %3332
  br i1 %3333, label %3334, label %3337

3334:                                             ; preds = %3330
  %3335 = getelementptr i8, ptr %3327, i32 2
  %3336 = getelementptr i8, ptr %3328, i32 2
  br label %3337

3337:                                             ; preds = %3334, %3330, %3326
  %3338 = phi ptr [ %3335, %3334 ], [ %3327, %3330 ], [ %3327, %3326 ]
  %3339 = phi ptr [ %3336, %3334 ], [ %3328, %3330 ], [ %3328, %3326 ]
  %3340 = icmp ult ptr %3338, %2919
  br i1 %3340, label %3341, label %3347

3341:                                             ; preds = %3337
  %3342 = load i8, ptr %3339, align 1
  %3343 = load i8, ptr %3338, align 1
  %3344 = icmp eq i8 %3342, %3343
  %3345 = zext i1 %3344 to i32
  %3346 = getelementptr i8, ptr %3338, i32 %3345
  br label %3347

3347:                                             ; preds = %3341, %3337
  %3348 = phi ptr [ %3338, %3337 ], [ %3346, %3341 ]
  %3349 = ptrtoint ptr %3348 to i32
  %3350 = ptrtoint ptr %3298 to i32
  %3351 = sub i32 %3349, %3350
  br label %3352

3352:                                             ; preds = %3347, %3319, %3305
  %3353 = phi i32 [ %3351, %3347 ], [ %3307, %3305 ], [ %3325, %3319 ]
  %3354 = add i32 %3353, %3294
  br label %3355

3355:                                             ; preds = %3352, %3293
  %3356 = phi i32 [ %3354, %3352 ], [ %3294, %3293 ]
  %3357 = add i32 %3356, 4
  %3358 = icmp ugt ptr %2969, %2970
  %3359 = icmp ugt ptr %3221, %2932
  %3360 = and i1 %3358, %3359
  br i1 %3360, label %3361, label %3379

3361:                                             ; preds = %3370, %3355
  %3362 = phi ptr [ %3367, %3370 ], [ %3221, %3355 ]
  %3363 = phi ptr [ %3365, %3370 ], [ %2969, %3355 ]
  %3364 = phi i32 [ %3371, %3370 ], [ %3357, %3355 ]
  %3365 = getelementptr i8, ptr %3363, i32 -1
  %3366 = load i8, ptr %3365, align 1
  %3367 = getelementptr i8, ptr %3362, i32 -1
  %3368 = load i8, ptr %3367, align 1
  %3369 = icmp eq i8 %3366, %3368
  br i1 %3369, label %3370, label %3375

3370:                                             ; preds = %3361
  %3371 = add i32 %3364, 1
  %3372 = icmp ugt ptr %3365, %2970
  %3373 = icmp ugt ptr %3367, %2932
  %3374 = and i1 %3373, %3372
  br i1 %3374, label %3361, label %3375

3375:                                             ; preds = %3370, %3361
  %3376 = phi i32 [ %3364, %3361 ], [ %3371, %3370 ]
  %3377 = phi ptr [ %3363, %3361 ], [ %3365, %3370 ]
  %3378 = ptrtoint ptr %3377 to i32
  br label %3379

3379:                                             ; preds = %3375, %3355
  %3380 = phi i32 [ %3378, %3375 ], [ %2977, %3355 ]
  %3381 = phi i32 [ %3376, %3375 ], [ %3357, %3355 ]
  %3382 = phi ptr [ %3377, %3375 ], [ %2969, %3355 ]
  %3383 = ptrtoint ptr %2970 to i32
  %3384 = sub i32 %3380, %3383
  %3385 = add i32 %3381, -3
  %3386 = getelementptr i8, ptr %2970, i32 %3384
  %3387 = icmp ugt ptr %3386, %2960
  %3388 = load ptr, ptr %2961, align 4
  br i1 %3387, label %3410, label %3389

3389:                                             ; preds = %3379
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3388, ptr noundef align 1 dereferenceable(16) %2970, i32 16, i1 false) #4
  %3390 = icmp ugt i32 %3384, 16
  %3391 = load ptr, ptr %2961, align 4
  br i1 %3390, label %3394, label %3392

3392:                                             ; preds = %3389
  %3393 = getelementptr i8, ptr %3391, i32 %3384
  store ptr %3393, ptr %2961, align 4
  br label %3453

3394:                                             ; preds = %3389
  %3395 = getelementptr i8, ptr %3391, i32 16
  %3396 = getelementptr i8, ptr %2970, i32 16
  %3397 = add i32 %3384, -16
  %3398 = getelementptr i8, ptr %3391, i32 %3384
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3395, ptr noundef align 1 dereferenceable(16) %3396, i32 16, i1 false) #4
  %3399 = icmp slt i32 %3397, 17
  br i1 %3399, label %3442, label %3400

3400:                                             ; preds = %3394
  %3401 = getelementptr i8, ptr %3391, i32 32
  br label %3402

3402:                                             ; preds = %3402, %3400
  %3403 = phi ptr [ %3396, %3400 ], [ %3407, %3402 ]
  %3404 = phi ptr [ %3401, %3400 ], [ %3408, %3402 ]
  %3405 = getelementptr i8, ptr %3403, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3404, ptr noundef align 1 dereferenceable(16) %3405, i32 16, i1 false) #4
  %3406 = getelementptr i8, ptr %3404, i32 16
  %3407 = getelementptr i8, ptr %3403, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3406, ptr noundef align 1 dereferenceable(16) %3407, i32 16, i1 false) #4
  %3408 = getelementptr i8, ptr %3404, i32 32
  %3409 = icmp ult ptr %3408, %3398
  br i1 %3409, label %3402, label %3442

3410:                                             ; preds = %3379
  %3411 = ptrtoint ptr %3386 to i32
  %3412 = icmp ult ptr %2960, %2970
  br i1 %3412, label %3427, label %3413

3413:                                             ; preds = %3410
  %3414 = sub i32 %2962, %3383
  %3415 = getelementptr i8, ptr %3388, i32 %3414
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3388, ptr noundef align 1 dereferenceable(16) %2970, i32 16, i1 false) #4
  %3416 = icmp slt i32 %3414, 17
  br i1 %3416, label %3427, label %3417

3417:                                             ; preds = %3413
  %3418 = getelementptr i8, ptr %3388, i32 16
  br label %3419

3419:                                             ; preds = %3419, %3417
  %3420 = phi ptr [ %2970, %3417 ], [ %3424, %3419 ]
  %3421 = phi ptr [ %3418, %3417 ], [ %3425, %3419 ]
  %3422 = getelementptr i8, ptr %3420, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3421, ptr noundef align 1 dereferenceable(16) %3422, i32 16, i1 false) #4
  %3423 = getelementptr i8, ptr %3421, i32 16
  %3424 = getelementptr i8, ptr %3420, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3423, ptr noundef align 1 dereferenceable(16) %3424, i32 16, i1 false) #4
  %3425 = getelementptr i8, ptr %3421, i32 32
  %3426 = icmp ult ptr %3425, %3415
  br i1 %3426, label %3419, label %3427

3427:                                             ; preds = %3419, %3413, %3410
  %3428 = phi ptr [ %2960, %3413 ], [ %2970, %3410 ], [ %2960, %3419 ]
  %3429 = phi ptr [ %3415, %3413 ], [ %3388, %3410 ], [ %3415, %3419 ]
  %3430 = icmp ult ptr %3428, %3386
  br i1 %3430, label %3431, label %3442

3431:                                             ; preds = %3427
  %3432 = ptrtoint ptr %3428 to i32
  %3433 = sub i32 %3411, %3432
  %3434 = getelementptr i8, ptr %3428, i32 %3433
  br label %3435

3435:                                             ; preds = %3435, %3431
  %3436 = phi ptr [ %3440, %3435 ], [ %3429, %3431 ]
  %3437 = phi ptr [ %3438, %3435 ], [ %3428, %3431 ]
  %3438 = getelementptr i8, ptr %3437, i32 1
  %3439 = load i8, ptr %3437, align 1
  %3440 = getelementptr i8, ptr %3436, i32 1
  store i8 %3439, ptr %3436, align 1
  %3441 = icmp eq ptr %3438, %3434
  br i1 %3441, label %3442, label %3435

3442:                                             ; preds = %3435, %3427, %3402, %3394
  %3443 = load ptr, ptr %2961, align 4
  %3444 = getelementptr i8, ptr %3443, i32 %3384
  store ptr %3444, ptr %2961, align 4
  %3445 = icmp ugt i32 %3384, 65535
  br i1 %3445, label %3446, label %3453

3446:                                             ; preds = %3442
  store i32 1, ptr %2963, align 4
  %3447 = load ptr, ptr %2964, align 4
  %3448 = load ptr, ptr %1, align 4
  %3449 = ptrtoint ptr %3447 to i32
  %3450 = ptrtoint ptr %3448 to i32
  %3451 = sub i32 %3449, %3450
  %3452 = ashr exact i32 %3451, 3
  store i32 %3452, ptr %2965, align 4
  br label %3453

3453:                                             ; preds = %3446, %3442, %3392
  %3454 = trunc i32 %3384 to i16
  %3455 = load ptr, ptr %2964, align 4
  %3456 = getelementptr inbounds %struct.seqDef_s, ptr %3455, i32 0, i32 1
  store i16 %3454, ptr %3456, align 4
  %3457 = add i32 %3231, 3
  %3458 = load ptr, ptr %2964, align 4
  store i32 %3457, ptr %3458, align 4
  %3459 = icmp ugt i32 %3385, 65535
  br i1 %3459, label %3462, label %3460

3460:                                             ; preds = %3453
  %3461 = load ptr, ptr %2964, align 4
  br label %3657

3462:                                             ; preds = %3453
  store i32 2, ptr %2963, align 4
  %3463 = load ptr, ptr %2964, align 4
  %3464 = load ptr, ptr %1, align 4
  %3465 = ptrtoint ptr %3463 to i32
  %3466 = ptrtoint ptr %3464 to i32
  %3467 = sub i32 %3465, %3466
  %3468 = ashr exact i32 %3467, 3
  store i32 %3468, ptr %2965, align 4
  br label %3657

3469:                                             ; preds = %3225, %3214
  %3470 = ptrtoint ptr %2970 to i32
  %3471 = sub i32 %2977, %3470
  %3472 = ashr i32 %3471, 8
  %3473 = add i32 %3472, %2913
  %3474 = getelementptr i8, ptr %2969, i32 %3473
  br label %3863

3475:                                             ; preds = %3212
  %3476 = load i32, ptr %2981, align 1
  %3477 = load i32, ptr %2969, align 1
  %3478 = icmp eq i32 %3476, %3477
  br i1 %3478, label %3485, label %3479

3479:                                             ; preds = %3475
  %3480 = ptrtoint ptr %2970 to i32
  %3481 = sub i32 %2977, %3480
  %3482 = ashr i32 %3481, 8
  %3483 = add i32 %3482, %2913
  %3484 = getelementptr i8, ptr %2969, i32 %3483
  br label %3863

3485:                                             ; preds = %3475
  %3486 = ptrtoint ptr %2981 to i32
  %3487 = sub i32 %2977, %3486
  %3488 = getelementptr i8, ptr %2969, i32 4
  %3489 = getelementptr i8, ptr %2981, i32 4
  %3490 = icmp ugt ptr %2958, %3488
  br i1 %3490, label %3491, label %3517

3491:                                             ; preds = %3485
  %3492 = load i32, ptr %3489, align 1
  %3493 = load i32, ptr %3488, align 1
  %3494 = xor i32 %3493, %3492
  %3495 = icmp eq i32 %3494, 0
  br i1 %3495, label %3499, label %3496

3496:                                             ; preds = %3491
  %3497 = tail call i32 @llvm.cttz.i32(i32 %3494, i1 true) #4, !range !8
  %3498 = lshr i32 %3497, 3
  br label %3543

3499:                                             ; preds = %3505, %3491
  %3500 = phi ptr [ %3503, %3505 ], [ %3488, %3491 ]
  %3501 = phi ptr [ %3502, %3505 ], [ %3489, %3491 ]
  %3502 = getelementptr i8, ptr %3501, i32 4
  %3503 = getelementptr i8, ptr %3500, i32 4
  %3504 = icmp ult ptr %3503, %2958
  br i1 %3504, label %3505, label %3517

3505:                                             ; preds = %3499
  %3506 = load i32, ptr %3502, align 1
  %3507 = load i32, ptr %3503, align 1
  %3508 = xor i32 %3507, %3506
  %3509 = icmp eq i32 %3508, 0
  br i1 %3509, label %3499, label %3510

3510:                                             ; preds = %3505
  %3511 = tail call i32 @llvm.cttz.i32(i32 %3508, i1 true) #4, !range !8
  %3512 = lshr i32 %3511, 3
  %3513 = getelementptr i8, ptr %3503, i32 %3512
  %3514 = ptrtoint ptr %3513 to i32
  %3515 = ptrtoint ptr %3488 to i32
  %3516 = sub i32 %3514, %3515
  br label %3543

3517:                                             ; preds = %3499, %3485
  %3518 = phi ptr [ %3488, %3485 ], [ %3503, %3499 ]
  %3519 = phi ptr [ %3489, %3485 ], [ %3502, %3499 ]
  %3520 = icmp ult ptr %3518, %2959
  br i1 %3520, label %3521, label %3528

3521:                                             ; preds = %3517
  %3522 = load i16, ptr %3519, align 1
  %3523 = load i16, ptr %3518, align 1
  %3524 = icmp eq i16 %3522, %3523
  br i1 %3524, label %3525, label %3528

3525:                                             ; preds = %3521
  %3526 = getelementptr i8, ptr %3518, i32 2
  %3527 = getelementptr i8, ptr %3519, i32 2
  br label %3528

3528:                                             ; preds = %3525, %3521, %3517
  %3529 = phi ptr [ %3526, %3525 ], [ %3518, %3521 ], [ %3518, %3517 ]
  %3530 = phi ptr [ %3527, %3525 ], [ %3519, %3521 ], [ %3519, %3517 ]
  %3531 = icmp ult ptr %3529, %2919
  br i1 %3531, label %3532, label %3538

3532:                                             ; preds = %3528
  %3533 = load i8, ptr %3530, align 1
  %3534 = load i8, ptr %3529, align 1
  %3535 = icmp eq i8 %3533, %3534
  %3536 = zext i1 %3535 to i32
  %3537 = getelementptr i8, ptr %3529, i32 %3536
  br label %3538

3538:                                             ; preds = %3532, %3528
  %3539 = phi ptr [ %3529, %3528 ], [ %3537, %3532 ]
  %3540 = ptrtoint ptr %3539 to i32
  %3541 = ptrtoint ptr %3488 to i32
  %3542 = sub i32 %3540, %3541
  br label %3543

3543:                                             ; preds = %3538, %3510, %3496
  %3544 = phi i32 [ %3542, %3538 ], [ %3498, %3496 ], [ %3516, %3510 ]
  %3545 = add i32 %3544, 4
  %3546 = icmp ugt ptr %2969, %2970
  %3547 = icmp ugt ptr %2981, %2918
  %3548 = and i1 %3546, %3547
  br i1 %3548, label %3549, label %3567

3549:                                             ; preds = %3558, %3543
  %3550 = phi ptr [ %3553, %3558 ], [ %2969, %3543 ]
  %3551 = phi ptr [ %3555, %3558 ], [ %2981, %3543 ]
  %3552 = phi i32 [ %3559, %3558 ], [ %3545, %3543 ]
  %3553 = getelementptr i8, ptr %3550, i32 -1
  %3554 = load i8, ptr %3553, align 1
  %3555 = getelementptr i8, ptr %3551, i32 -1
  %3556 = load i8, ptr %3555, align 1
  %3557 = icmp eq i8 %3554, %3556
  br i1 %3557, label %3558, label %3563

3558:                                             ; preds = %3549
  %3559 = add i32 %3552, 1
  %3560 = icmp ugt ptr %3553, %2970
  %3561 = icmp ugt ptr %3555, %2918
  %3562 = and i1 %3560, %3561
  br i1 %3562, label %3549, label %3563

3563:                                             ; preds = %3558, %3549
  %3564 = phi i32 [ %3552, %3549 ], [ %3559, %3558 ]
  %3565 = phi ptr [ %3550, %3549 ], [ %3553, %3558 ]
  %3566 = ptrtoint ptr %3565 to i32
  br label %3567

3567:                                             ; preds = %3563, %3543
  %3568 = phi i32 [ %3566, %3563 ], [ %2977, %3543 ]
  %3569 = phi i32 [ %3564, %3563 ], [ %3545, %3543 ]
  %3570 = phi ptr [ %3565, %3563 ], [ %2969, %3543 ]
  %3571 = ptrtoint ptr %2970 to i32
  %3572 = sub i32 %3568, %3571
  %3573 = add i32 %3569, -3
  %3574 = getelementptr i8, ptr %2970, i32 %3572
  %3575 = icmp ugt ptr %3574, %2960
  %3576 = load ptr, ptr %2961, align 4
  br i1 %3575, label %3598, label %3577

3577:                                             ; preds = %3567
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3576, ptr noundef align 1 dereferenceable(16) %2970, i32 16, i1 false) #4
  %3578 = icmp ugt i32 %3572, 16
  %3579 = load ptr, ptr %2961, align 4
  br i1 %3578, label %3582, label %3580

3580:                                             ; preds = %3577
  %3581 = getelementptr i8, ptr %3579, i32 %3572
  store ptr %3581, ptr %2961, align 4
  br label %3641

3582:                                             ; preds = %3577
  %3583 = getelementptr i8, ptr %3579, i32 16
  %3584 = getelementptr i8, ptr %2970, i32 16
  %3585 = add i32 %3572, -16
  %3586 = getelementptr i8, ptr %3579, i32 %3572
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3583, ptr noundef align 1 dereferenceable(16) %3584, i32 16, i1 false) #4
  %3587 = icmp slt i32 %3585, 17
  br i1 %3587, label %3630, label %3588

3588:                                             ; preds = %3582
  %3589 = getelementptr i8, ptr %3579, i32 32
  br label %3590

3590:                                             ; preds = %3590, %3588
  %3591 = phi ptr [ %3584, %3588 ], [ %3595, %3590 ]
  %3592 = phi ptr [ %3589, %3588 ], [ %3596, %3590 ]
  %3593 = getelementptr i8, ptr %3591, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3592, ptr noundef align 1 dereferenceable(16) %3593, i32 16, i1 false) #4
  %3594 = getelementptr i8, ptr %3592, i32 16
  %3595 = getelementptr i8, ptr %3591, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3594, ptr noundef align 1 dereferenceable(16) %3595, i32 16, i1 false) #4
  %3596 = getelementptr i8, ptr %3592, i32 32
  %3597 = icmp ult ptr %3596, %3586
  br i1 %3597, label %3590, label %3630

3598:                                             ; preds = %3567
  %3599 = ptrtoint ptr %3574 to i32
  %3600 = icmp ult ptr %2960, %2970
  br i1 %3600, label %3615, label %3601

3601:                                             ; preds = %3598
  %3602 = sub i32 %2962, %3571
  %3603 = getelementptr i8, ptr %3576, i32 %3602
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3576, ptr noundef align 1 dereferenceable(16) %2970, i32 16, i1 false) #4
  %3604 = icmp slt i32 %3602, 17
  br i1 %3604, label %3615, label %3605

3605:                                             ; preds = %3601
  %3606 = getelementptr i8, ptr %3576, i32 16
  br label %3607

3607:                                             ; preds = %3607, %3605
  %3608 = phi ptr [ %2970, %3605 ], [ %3612, %3607 ]
  %3609 = phi ptr [ %3606, %3605 ], [ %3613, %3607 ]
  %3610 = getelementptr i8, ptr %3608, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3609, ptr noundef align 1 dereferenceable(16) %3610, i32 16, i1 false) #4
  %3611 = getelementptr i8, ptr %3609, i32 16
  %3612 = getelementptr i8, ptr %3608, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3611, ptr noundef align 1 dereferenceable(16) %3612, i32 16, i1 false) #4
  %3613 = getelementptr i8, ptr %3609, i32 32
  %3614 = icmp ult ptr %3613, %3603
  br i1 %3614, label %3607, label %3615

3615:                                             ; preds = %3607, %3601, %3598
  %3616 = phi ptr [ %2960, %3601 ], [ %2970, %3598 ], [ %2960, %3607 ]
  %3617 = phi ptr [ %3603, %3601 ], [ %3576, %3598 ], [ %3603, %3607 ]
  %3618 = icmp ult ptr %3616, %3574
  br i1 %3618, label %3619, label %3630

3619:                                             ; preds = %3615
  %3620 = ptrtoint ptr %3616 to i32
  %3621 = sub i32 %3599, %3620
  %3622 = getelementptr i8, ptr %3616, i32 %3621
  br label %3623

3623:                                             ; preds = %3623, %3619
  %3624 = phi ptr [ %3628, %3623 ], [ %3617, %3619 ]
  %3625 = phi ptr [ %3626, %3623 ], [ %3616, %3619 ]
  %3626 = getelementptr i8, ptr %3625, i32 1
  %3627 = load i8, ptr %3625, align 1
  %3628 = getelementptr i8, ptr %3624, i32 1
  store i8 %3627, ptr %3624, align 1
  %3629 = icmp eq ptr %3626, %3622
  br i1 %3629, label %3630, label %3623

3630:                                             ; preds = %3623, %3615, %3590, %3582
  %3631 = load ptr, ptr %2961, align 4
  %3632 = getelementptr i8, ptr %3631, i32 %3572
  store ptr %3632, ptr %2961, align 4
  %3633 = icmp ugt i32 %3572, 65535
  br i1 %3633, label %3634, label %3641

3634:                                             ; preds = %3630
  store i32 1, ptr %2963, align 4
  %3635 = load ptr, ptr %2964, align 4
  %3636 = load ptr, ptr %1, align 4
  %3637 = ptrtoint ptr %3635 to i32
  %3638 = ptrtoint ptr %3636 to i32
  %3639 = sub i32 %3637, %3638
  %3640 = ashr exact i32 %3639, 3
  store i32 %3640, ptr %2965, align 4
  br label %3641

3641:                                             ; preds = %3634, %3630, %3580
  %3642 = trunc i32 %3572 to i16
  %3643 = load ptr, ptr %2964, align 4
  %3644 = getelementptr inbounds %struct.seqDef_s, ptr %3643, i32 0, i32 1
  store i16 %3642, ptr %3644, align 4
  %3645 = add i32 %3487, 3
  %3646 = load ptr, ptr %2964, align 4
  store i32 %3645, ptr %3646, align 4
  %3647 = icmp ugt i32 %3573, 65535
  br i1 %3647, label %3650, label %3648

3648:                                             ; preds = %3641
  %3649 = load ptr, ptr %2964, align 4
  br label %3657

3650:                                             ; preds = %3641
  store i32 2, ptr %2963, align 4
  %3651 = load ptr, ptr %2964, align 4
  %3652 = load ptr, ptr %1, align 4
  %3653 = ptrtoint ptr %3651 to i32
  %3654 = ptrtoint ptr %3652 to i32
  %3655 = sub i32 %3653, %3654
  %3656 = ashr exact i32 %3655, 3
  store i32 %3656, ptr %2965, align 4
  br label %3657

3657:                                             ; preds = %3650, %3648, %3462, %3460, %3205, %3203
  %3658 = phi i32 [ %3129, %3203 ], [ %3129, %3205 ], [ %3385, %3462 ], [ %3385, %3460 ], [ %3573, %3648 ], [ %3573, %3650 ]
  %3659 = phi ptr [ %3204, %3203 ], [ %3206, %3205 ], [ %3463, %3462 ], [ %3461, %3460 ], [ %3649, %3648 ], [ %3651, %3650 ]
  %3660 = phi i32 [ %2972, %3203 ], [ %2972, %3205 ], [ %3231, %3462 ], [ %3231, %3460 ], [ %3487, %3648 ], [ %3487, %3650 ]
  %3661 = phi i32 [ %2971, %3203 ], [ %2971, %3205 ], [ %2972, %3462 ], [ %2972, %3460 ], [ %2972, %3648 ], [ %2972, %3650 ]
  %3662 = phi i32 [ %3125, %3203 ], [ %3125, %3205 ], [ %3381, %3462 ], [ %3381, %3460 ], [ %3569, %3648 ], [ %3569, %3650 ]
  %3663 = phi ptr [ %2993, %3203 ], [ %2993, %3205 ], [ %3382, %3462 ], [ %3382, %3460 ], [ %3570, %3648 ], [ %3570, %3650 ]
  %3664 = trunc i32 %3658 to i16
  %3665 = getelementptr inbounds %struct.seqDef_s, ptr %3659, i32 0, i32 2
  store i16 %3664, ptr %3665, align 2
  %3666 = load ptr, ptr %2964, align 4
  %3667 = getelementptr %struct.seqDef_s, ptr %3666, i32 1
  store ptr %3667, ptr %2964, align 4
  %3668 = getelementptr i8, ptr %3663, i32 %3662
  %3669 = icmp ugt ptr %3668, %2920
  br i1 %3669, label %3863, label %3670

3670:                                             ; preds = %3657
  %3671 = add i32 %2978, 2
  %3672 = getelementptr i8, ptr %2967, i32 %2978
  %3673 = load i64, ptr %3672, align 1
  %3674 = mul i64 %3673, -3523014627193167104
  %3675 = lshr i64 %3674, %2954
  %3676 = trunc i64 %3675 to i32
  %3677 = getelementptr i32, ptr %2908, i32 %3676
  store i32 %3671, ptr %3677, align 4
  %3678 = getelementptr i8, ptr %3668, i32 -2
  %3679 = load i64, ptr %3678, align 1
  %3680 = mul i64 %3679, -3523014627193167104
  %3681 = lshr i64 %3680, %2954
  %3682 = trunc i64 %3681 to i32
  %3683 = ptrtoint ptr %3678 to i32
  %3684 = sub i32 %3683, %2942
  %3685 = getelementptr i32, ptr %2908, i32 %3682
  store i32 %3684, ptr %3685, align 4
  br label %3686

3686:                                             ; preds = %3850, %3670
  %3687 = phi ptr [ %3861, %3850 ], [ %3668, %3670 ]
  %3688 = phi i32 [ %3689, %3850 ], [ %3661, %3670 ]
  %3689 = phi i32 [ %3688, %3850 ], [ %3660, %3670 ]
  %3690 = ptrtoint ptr %3687 to i32
  %3691 = sub i32 %3690, %2942
  %3692 = sub i32 %3691, %3688
  %3693 = icmp ult i32 %3692, %2917
  %3694 = select i1 %3693, ptr %2966, ptr %2915
  %3695 = getelementptr i8, ptr %3694, i32 %3692
  %3696 = sub i32 %2955, %3692
  %3697 = icmp ugt i32 %3696, 2
  br i1 %3697, label %3698, label %3863

3698:                                             ; preds = %3686
  %3699 = load i32, ptr %3695, align 1
  %3700 = load i32, ptr %3687, align 1
  %3701 = icmp eq i32 %3699, %3700
  br i1 %3701, label %3702, label %3863

3702:                                             ; preds = %3698
  %3703 = select i1 %3693, ptr %2933, ptr %2919
  %3704 = getelementptr i8, ptr %3687, i32 4
  %3705 = getelementptr i8, ptr %3695, i32 4
  %3706 = ptrtoint ptr %3703 to i32
  %3707 = ptrtoint ptr %3705 to i32
  %3708 = sub i32 %3706, %3707
  %3709 = getelementptr i8, ptr %3704, i32 %3708
  %3710 = icmp ult ptr %3709, %2919
  %3711 = select i1 %3710, ptr %3709, ptr %2919
  %3712 = getelementptr i8, ptr %3711, i32 -3
  %3713 = icmp ugt ptr %3712, %3704
  br i1 %3713, label %3714, label %3740

3714:                                             ; preds = %3702
  %3715 = load i32, ptr %3705, align 1
  %3716 = load i32, ptr %3704, align 1
  %3717 = xor i32 %3716, %3715
  %3718 = icmp eq i32 %3717, 0
  br i1 %3718, label %3722, label %3719

3719:                                             ; preds = %3714
  %3720 = tail call i32 @llvm.cttz.i32(i32 %3717, i1 true) #4, !range !8
  %3721 = lshr i32 %3720, 3
  br label %3767

3722:                                             ; preds = %3728, %3714
  %3723 = phi ptr [ %3726, %3728 ], [ %3704, %3714 ]
  %3724 = phi ptr [ %3725, %3728 ], [ %3705, %3714 ]
  %3725 = getelementptr i8, ptr %3724, i32 4
  %3726 = getelementptr i8, ptr %3723, i32 4
  %3727 = icmp ult ptr %3726, %3712
  br i1 %3727, label %3728, label %3740

3728:                                             ; preds = %3722
  %3729 = load i32, ptr %3725, align 1
  %3730 = load i32, ptr %3726, align 1
  %3731 = xor i32 %3730, %3729
  %3732 = icmp eq i32 %3731, 0
  br i1 %3732, label %3722, label %3733

3733:                                             ; preds = %3728
  %3734 = tail call i32 @llvm.cttz.i32(i32 %3731, i1 true) #4, !range !8
  %3735 = lshr i32 %3734, 3
  %3736 = getelementptr i8, ptr %3726, i32 %3735
  %3737 = ptrtoint ptr %3736 to i32
  %3738 = ptrtoint ptr %3704 to i32
  %3739 = sub i32 %3737, %3738
  br label %3767

3740:                                             ; preds = %3722, %3702
  %3741 = phi ptr [ %3704, %3702 ], [ %3726, %3722 ]
  %3742 = phi ptr [ %3705, %3702 ], [ %3725, %3722 ]
  %3743 = getelementptr i8, ptr %3711, i32 -1
  %3744 = icmp ult ptr %3741, %3743
  br i1 %3744, label %3745, label %3752

3745:                                             ; preds = %3740
  %3746 = load i16, ptr %3742, align 1
  %3747 = load i16, ptr %3741, align 1
  %3748 = icmp eq i16 %3746, %3747
  br i1 %3748, label %3749, label %3752

3749:                                             ; preds = %3745
  %3750 = getelementptr i8, ptr %3741, i32 2
  %3751 = getelementptr i8, ptr %3742, i32 2
  br label %3752

3752:                                             ; preds = %3749, %3745, %3740
  %3753 = phi ptr [ %3750, %3749 ], [ %3741, %3745 ], [ %3741, %3740 ]
  %3754 = phi ptr [ %3751, %3749 ], [ %3742, %3745 ], [ %3742, %3740 ]
  %3755 = icmp ult ptr %3753, %3711
  br i1 %3755, label %3756, label %3762

3756:                                             ; preds = %3752
  %3757 = load i8, ptr %3754, align 1
  %3758 = load i8, ptr %3753, align 1
  %3759 = icmp eq i8 %3757, %3758
  %3760 = zext i1 %3759 to i32
  %3761 = getelementptr i8, ptr %3753, i32 %3760
  br label %3762

3762:                                             ; preds = %3756, %3752
  %3763 = phi ptr [ %3753, %3752 ], [ %3761, %3756 ]
  %3764 = ptrtoint ptr %3763 to i32
  %3765 = ptrtoint ptr %3704 to i32
  %3766 = sub i32 %3764, %3765
  br label %3767

3767:                                             ; preds = %3762, %3733, %3719
  %3768 = phi i32 [ %3766, %3762 ], [ %3721, %3719 ], [ %3739, %3733 ]
  %3769 = getelementptr i8, ptr %3705, i32 %3768
  %3770 = icmp eq ptr %3769, %3703
  br i1 %3770, label %3771, label %3829

3771:                                             ; preds = %3767
  %3772 = getelementptr i8, ptr %3704, i32 %3768
  %3773 = icmp ugt ptr %2958, %3772
  br i1 %3773, label %3774, label %3800

3774:                                             ; preds = %3771
  %3775 = load i32, ptr %2918, align 1
  %3776 = load i32, ptr %3772, align 1
  %3777 = xor i32 %3776, %3775
  %3778 = icmp eq i32 %3777, 0
  br i1 %3778, label %3782, label %3779

3779:                                             ; preds = %3774
  %3780 = tail call i32 @llvm.cttz.i32(i32 %3777, i1 true) #4, !range !8
  %3781 = lshr i32 %3780, 3
  br label %3826

3782:                                             ; preds = %3788, %3774
  %3783 = phi ptr [ %3786, %3788 ], [ %3772, %3774 ]
  %3784 = phi ptr [ %3785, %3788 ], [ %2918, %3774 ]
  %3785 = getelementptr i8, ptr %3784, i32 4
  %3786 = getelementptr i8, ptr %3783, i32 4
  %3787 = icmp ult ptr %3786, %2958
  br i1 %3787, label %3788, label %3800

3788:                                             ; preds = %3782
  %3789 = load i32, ptr %3785, align 1
  %3790 = load i32, ptr %3786, align 1
  %3791 = xor i32 %3790, %3789
  %3792 = icmp eq i32 %3791, 0
  br i1 %3792, label %3782, label %3793

3793:                                             ; preds = %3788
  %3794 = tail call i32 @llvm.cttz.i32(i32 %3791, i1 true) #4, !range !8
  %3795 = lshr i32 %3794, 3
  %3796 = getelementptr i8, ptr %3786, i32 %3795
  %3797 = ptrtoint ptr %3796 to i32
  %3798 = ptrtoint ptr %3772 to i32
  %3799 = sub i32 %3797, %3798
  br label %3826

3800:                                             ; preds = %3782, %3771
  %3801 = phi ptr [ %3772, %3771 ], [ %3786, %3782 ]
  %3802 = phi ptr [ %2918, %3771 ], [ %3785, %3782 ]
  %3803 = icmp ult ptr %3801, %2959
  br i1 %3803, label %3804, label %3811

3804:                                             ; preds = %3800
  %3805 = load i16, ptr %3802, align 1
  %3806 = load i16, ptr %3801, align 1
  %3807 = icmp eq i16 %3805, %3806
  br i1 %3807, label %3808, label %3811

3808:                                             ; preds = %3804
  %3809 = getelementptr i8, ptr %3801, i32 2
  %3810 = getelementptr i8, ptr %3802, i32 2
  br label %3811

3811:                                             ; preds = %3808, %3804, %3800
  %3812 = phi ptr [ %3809, %3808 ], [ %3801, %3804 ], [ %3801, %3800 ]
  %3813 = phi ptr [ %3810, %3808 ], [ %3802, %3804 ], [ %3802, %3800 ]
  %3814 = icmp ult ptr %3812, %2919
  br i1 %3814, label %3815, label %3821

3815:                                             ; preds = %3811
  %3816 = load i8, ptr %3813, align 1
  %3817 = load i8, ptr %3812, align 1
  %3818 = icmp eq i8 %3816, %3817
  %3819 = zext i1 %3818 to i32
  %3820 = getelementptr i8, ptr %3812, i32 %3819
  br label %3821

3821:                                             ; preds = %3815, %3811
  %3822 = phi ptr [ %3812, %3811 ], [ %3820, %3815 ]
  %3823 = ptrtoint ptr %3822 to i32
  %3824 = ptrtoint ptr %3772 to i32
  %3825 = sub i32 %3823, %3824
  br label %3826

3826:                                             ; preds = %3821, %3793, %3779
  %3827 = phi i32 [ %3825, %3821 ], [ %3781, %3779 ], [ %3799, %3793 ]
  %3828 = add i32 %3827, %3768
  br label %3829

3829:                                             ; preds = %3826, %3767
  %3830 = phi i32 [ %3828, %3826 ], [ %3768, %3767 ]
  %3831 = add i32 %3830, 4
  %3832 = add i32 %3830, 1
  %3833 = icmp ugt ptr %3687, %2960
  br i1 %3833, label %3836, label %3834

3834:                                             ; preds = %3829
  %3835 = load ptr, ptr %2961, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3835, ptr noundef align 1 dereferenceable(16) %3687, i32 16, i1 false) #4
  br label %3836

3836:                                             ; preds = %3834, %3829
  %3837 = load ptr, ptr %2964, align 4
  %3838 = getelementptr inbounds %struct.seqDef_s, ptr %3837, i32 0, i32 1
  store i16 0, ptr %3838, align 4
  %3839 = load ptr, ptr %2964, align 4
  store i32 1, ptr %3839, align 4
  %3840 = icmp ugt i32 %3832, 65535
  br i1 %3840, label %3843, label %3841

3841:                                             ; preds = %3836
  %3842 = load ptr, ptr %2964, align 4
  br label %3850

3843:                                             ; preds = %3836
  store i32 2, ptr %2963, align 4
  %3844 = load ptr, ptr %2964, align 4
  %3845 = load ptr, ptr %1, align 4
  %3846 = ptrtoint ptr %3844 to i32
  %3847 = ptrtoint ptr %3845 to i32
  %3848 = sub i32 %3846, %3847
  %3849 = ashr exact i32 %3848, 3
  store i32 %3849, ptr %2965, align 4
  br label %3850

3850:                                             ; preds = %3843, %3841
  %3851 = phi ptr [ %3842, %3841 ], [ %3844, %3843 ]
  %3852 = trunc i32 %3832 to i16
  %3853 = getelementptr inbounds %struct.seqDef_s, ptr %3851, i32 0, i32 2
  store i16 %3852, ptr %3853, align 2
  %3854 = load ptr, ptr %2964, align 4
  %3855 = getelementptr %struct.seqDef_s, ptr %3854, i32 1
  store ptr %3855, ptr %2964, align 4
  %3856 = load i64, ptr %3687, align 1
  %3857 = mul i64 %3856, -3523014627193167104
  %3858 = lshr i64 %3857, %2954
  %3859 = trunc i64 %3858 to i32
  %3860 = getelementptr i32, ptr %2908, i32 %3859
  store i32 %3691, ptr %3860, align 4
  %3861 = getelementptr i8, ptr %3687, i32 %3831
  %3862 = icmp ugt ptr %3861, %2920
  br i1 %3862, label %3863, label %3686

3863:                                             ; preds = %3850, %3698, %3686, %3657, %3479, %3469
  %3864 = phi i32 [ %2972, %3469 ], [ %2972, %3479 ], [ %3660, %3657 ], [ %3689, %3686 ], [ %3689, %3698 ], [ %3688, %3850 ]
  %3865 = phi i32 [ %2971, %3469 ], [ %2971, %3479 ], [ %3661, %3657 ], [ %3688, %3686 ], [ %3688, %3698 ], [ %3689, %3850 ]
  %3866 = phi ptr [ %2970, %3469 ], [ %2970, %3479 ], [ %3668, %3657 ], [ %3687, %3686 ], [ %3687, %3698 ], [ %3861, %3850 ]
  %3867 = phi ptr [ %3474, %3469 ], [ %3484, %3479 ], [ %3668, %3657 ], [ %3687, %3686 ], [ %3687, %3698 ], [ %3861, %3850 ]
  %3868 = icmp ult ptr %3867, %2920
  br i1 %3868, label %2968, label %3869

3869:                                             ; preds = %3863
  %3870 = ptrtoint ptr %3866 to i32
  br label %3871

3871:                                             ; preds = %3869, %2906
  %3872 = phi i32 [ %3870, %3869 ], [ %2938, %2906 ]
  %3873 = phi i32 [ %3864, %3869 ], [ %2921, %2906 ]
  %3874 = phi i32 [ %3865, %3869 ], [ %2923, %2906 ]
  store i32 %3873, ptr %2, align 4
  store i32 %3874, ptr %2922, align 4
  br label %3875

3875:                                             ; preds = %3871, %2902, %1933, %964
  %3876 = phi ptr [ %2919, %3871 ], [ %1950, %2902 ], [ %981, %1933 ], [ %21, %964 ]
  %3877 = phi i32 [ %3872, %3871 ], [ %2903, %2902 ], [ %1934, %1933 ], [ %965, %964 ]
  %3878 = ptrtoint ptr %3876 to i32
  %3879 = sub i32 %3878, %3877
  ret i32 %3879
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_fast_extDict(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %8, 3
  %10 = select i1 %9, i32 %7, i32 4
  %11 = tail call fastcc i32 @ZSTD_compressBlock_fast_extDict_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_compressBlock_fast_extDict_generic(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %8 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = add i32 %13, %15
  %17 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %3 to i32
  %22 = ptrtoint ptr %18 to i32
  %23 = sub i32 %21, %22
  %24 = add i32 %23, %4
  %25 = load i32, ptr %7, align 4
  %26 = shl nuw i32 1, %25
  %27 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %24, %28
  %30 = icmp ugt i32 %29, %26
  %31 = sub i32 %24, %26
  %32 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i1 %30, i1 false
  %36 = select i1 %35, i32 %31, i32 %28
  %37 = getelementptr i8, ptr %20, i32 %36
  %38 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @llvm.umax.i32(i32 %39, i32 %36)
  %41 = getelementptr i8, ptr %18, i32 %40
  %42 = getelementptr i8, ptr %20, i32 %40
  %43 = getelementptr i8, ptr %3, i32 %4
  %44 = getelementptr i8, ptr %43, i32 -8
  %45 = load i32, ptr %2, align 4
  %46 = getelementptr i32, ptr %2, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %36, %39
  br i1 %48, label %49, label %65

49:                                               ; preds = %6
  %50 = icmp ugt ptr %44, %3
  br i1 %50, label %51, label %1415

51:                                               ; preds = %49
  %52 = sub i32 64, %11
  %53 = zext i32 %52 to i64
  %54 = sub i32 32, %11
  %55 = add i32 %40, -1
  %56 = getelementptr i8, ptr %43, i32 -3
  %57 = getelementptr i8, ptr %43, i32 -1
  %58 = getelementptr i8, ptr %43, i32 -32
  %59 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %58 to i32
  %61 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %62 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %63 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %64 = getelementptr i8, ptr %18, i32 2
  br label %602

65:                                               ; preds = %6
  %66 = sub i32 %24, %39
  %67 = icmp ugt i32 %66, %26
  %68 = select i1 %34, i1 %67, i1 false
  %69 = select i1 %68, i32 %31, i32 %39
  %70 = getelementptr i8, ptr %18, i32 %69
  %71 = icmp eq ptr %70, %3
  %72 = zext i1 %71 to i32
  %73 = getelementptr i8, ptr %3, i32 %72
  %74 = getelementptr i8, ptr %73, i32 1
  %75 = ptrtoint ptr %73 to i32
  %76 = sub i32 %75, %22
  %77 = sub i32 %76, %39
  %78 = icmp ugt i32 %77, %26
  %79 = sub i32 %76, %26
  %80 = select i1 %34, i1 %78, i1 false
  %81 = select i1 %80, i32 %79, i32 %39
  %82 = sub i32 %76, %81
  %83 = icmp ugt i32 %47, %82
  %84 = select i1 %83, i32 0, i32 %47
  %85 = icmp ugt i32 %45, %82
  %86 = select i1 %85, i32 0, i32 %45
  %87 = icmp ult ptr %74, %44
  br i1 %87, label %88, label %592

88:                                               ; preds = %65
  %89 = sub i32 64, %11
  %90 = zext i32 %89 to i64
  %91 = sub i32 32, %11
  %92 = getelementptr i8, ptr %43, i32 -3
  %93 = getelementptr i8, ptr %43, i32 -1
  %94 = getelementptr i8, ptr %43, i32 -32
  %95 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %94 to i32
  %97 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %98 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %99 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %100 = getelementptr i8, ptr %18, i32 2
  %101 = add i32 %16, 1
  br label %102

102:                                              ; preds = %583, %88
  %103 = phi ptr [ %73, %88 ], [ %588, %583 ]
  %104 = phi ptr [ %74, %88 ], [ %587, %583 ]
  %105 = phi ptr [ %3, %88 ], [ %586, %583 ]
  %106 = phi i32 [ %84, %88 ], [ %585, %583 ]
  %107 = phi i32 [ %86, %88 ], [ %584, %583 ]
  %108 = getelementptr i8, ptr %103, i32 2
  switch i32 %5, label %153 [
    i32 8, label %142
    i32 5, label %109
    i32 6, label %120
    i32 7, label %131
  ]

109:                                              ; preds = %102
  %110 = load i64, ptr %103, align 1
  %111 = mul i64 %110, -3523014627271114752
  %112 = lshr i64 %111, %90
  %113 = trunc i64 %112 to i32
  %114 = load i64, ptr %104, align 1
  %115 = mul i64 %114, -3523014627271114752
  %116 = lshr i64 %115, %90
  %117 = trunc i64 %116 to i32
  %118 = trunc i64 %110 to i32
  %119 = trunc i64 %114 to i32
  br label %160

120:                                              ; preds = %102
  %121 = load i64, ptr %103, align 1
  %122 = mul i64 %121, -3523014627193847808
  %123 = lshr i64 %122, %90
  %124 = trunc i64 %123 to i32
  %125 = load i64, ptr %104, align 1
  %126 = mul i64 %125, -3523014627193847808
  %127 = lshr i64 %126, %90
  %128 = trunc i64 %127 to i32
  %129 = trunc i64 %121 to i32
  %130 = trunc i64 %125 to i32
  br label %160

131:                                              ; preds = %102
  %132 = load i64, ptr %103, align 1
  %133 = mul i64 %132, -3523014627193167104
  %134 = lshr i64 %133, %90
  %135 = trunc i64 %134 to i32
  %136 = load i64, ptr %104, align 1
  %137 = mul i64 %136, -3523014627193167104
  %138 = lshr i64 %137, %90
  %139 = trunc i64 %138 to i32
  %140 = trunc i64 %132 to i32
  %141 = trunc i64 %136 to i32
  br label %160

142:                                              ; preds = %102
  %143 = load i64, ptr %103, align 1
  %144 = mul i64 %143, -3523014627327384477
  %145 = lshr i64 %144, %90
  %146 = trunc i64 %145 to i32
  %147 = load i64, ptr %104, align 1
  %148 = mul i64 %147, -3523014627327384477
  %149 = lshr i64 %148, %90
  %150 = trunc i64 %149 to i32
  %151 = trunc i64 %143 to i32
  %152 = trunc i64 %147 to i32
  br label %160

153:                                              ; preds = %102
  %154 = load i32, ptr %103, align 1
  %155 = mul i32 %154, -1640531535
  %156 = lshr i32 %155, %91
  %157 = load i32, ptr %104, align 1
  %158 = mul i32 %157, -1640531535
  %159 = lshr i32 %158, %91
  br label %160

160:                                              ; preds = %153, %142, %131, %120, %109
  %161 = phi i32 [ %157, %153 ], [ %141, %131 ], [ %130, %120 ], [ %119, %109 ], [ %152, %142 ]
  %162 = phi i32 [ %154, %153 ], [ %140, %131 ], [ %129, %120 ], [ %118, %109 ], [ %151, %142 ]
  %163 = phi i32 [ %156, %153 ], [ %135, %131 ], [ %124, %120 ], [ %113, %109 ], [ %146, %142 ]
  %164 = phi i32 [ %159, %153 ], [ %139, %131 ], [ %128, %120 ], [ %117, %109 ], [ %150, %142 ]
  %165 = ptrtoint ptr %103 to i32
  %166 = sub i32 %165, %22
  %167 = ptrtoint ptr %104 to i32
  %168 = sub i32 %167, %22
  %169 = getelementptr i32, ptr %9, i32 %163
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr i32, ptr %9, i32 %164
  %172 = load i32, ptr %171, align 4
  %173 = sub i32 0, %107
  %174 = getelementptr i8, ptr %108, i32 %173
  %175 = getelementptr i8, ptr %18, i32 %170
  %176 = getelementptr i8, ptr %18, i32 %172
  store i32 %166, ptr %169, align 4
  store i32 %168, ptr %171, align 4
  %177 = icmp ne i32 %107, 0
  %178 = load i32, ptr %174, align 1
  %179 = load i32, ptr %108, align 1
  %180 = icmp eq i32 %178, %179
  %181 = and i1 %177, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %160
  %183 = getelementptr i8, ptr %103, i32 1
  %184 = load i8, ptr %183, align 1
  %185 = getelementptr i8, ptr %174, i32 -1
  %186 = load i8, ptr %185, align 1
  %187 = icmp eq i8 %184, %186
  %188 = sext i1 %187 to i32
  %189 = getelementptr i8, ptr %108, i32 %188
  %190 = getelementptr i8, ptr %174, i32 %188
  %191 = select i1 %187, i32 5, i32 4
  br label %233

192:                                              ; preds = %160
  %193 = icmp ugt i32 %170, %69
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = load i32, ptr %175, align 1
  %196 = icmp eq i32 %195, %162
  br i1 %196, label %209, label %197

197:                                              ; preds = %194, %192
  %198 = icmp ugt i32 %172, %69
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = load i32, ptr %176, align 1
  %201 = icmp eq i32 %200, %161
  br i1 %201, label %209, label %202

202:                                              ; preds = %199, %197
  %203 = ptrtoint ptr %105 to i32
  %204 = sub i32 %165, %203
  %205 = lshr i32 %204, 7
  %206 = add i32 %101, %205
  %207 = getelementptr i8, ptr %103, i32 %206
  %208 = getelementptr i8, ptr %104, i32 %206
  br label %583

209:                                              ; preds = %199, %194
  %210 = phi i32 [ %167, %199 ], [ %165, %194 ]
  %211 = phi ptr [ %104, %199 ], [ %103, %194 ]
  %212 = phi ptr [ %176, %199 ], [ %175, %194 ]
  %213 = ptrtoint ptr %212 to i32
  %214 = sub i32 %210, %213
  %215 = add i32 %214, 2
  %216 = icmp ugt ptr %211, %105
  %217 = icmp ugt ptr %212, %70
  %218 = and i1 %216, %217
  br i1 %218, label %219, label %233

219:                                              ; preds = %228, %209
  %220 = phi ptr [ %225, %228 ], [ %212, %209 ]
  %221 = phi ptr [ %223, %228 ], [ %211, %209 ]
  %222 = phi i32 [ %229, %228 ], [ 4, %209 ]
  %223 = getelementptr i8, ptr %221, i32 -1
  %224 = load i8, ptr %223, align 1
  %225 = getelementptr i8, ptr %220, i32 -1
  %226 = load i8, ptr %225, align 1
  %227 = icmp eq i8 %224, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %219
  %229 = add i32 %222, 1
  %230 = icmp ugt ptr %223, %105
  %231 = icmp ugt ptr %225, %70
  %232 = and i1 %231, %230
  br i1 %232, label %219, label %233

233:                                              ; preds = %228, %219, %209, %182
  %234 = phi i32 [ %107, %182 ], [ %214, %209 ], [ %214, %219 ], [ %214, %228 ]
  %235 = phi i32 [ %106, %182 ], [ %107, %209 ], [ %107, %219 ], [ %107, %228 ]
  %236 = phi i32 [ %191, %182 ], [ 4, %209 ], [ %229, %228 ], [ %222, %219 ]
  %237 = phi ptr [ %189, %182 ], [ %211, %209 ], [ %223, %228 ], [ %221, %219 ]
  %238 = phi ptr [ %190, %182 ], [ %212, %209 ], [ %225, %228 ], [ %220, %219 ]
  %239 = phi i32 [ 0, %182 ], [ %215, %209 ], [ %215, %219 ], [ %215, %228 ]
  %240 = getelementptr i8, ptr %237, i32 %236
  %241 = getelementptr i8, ptr %238, i32 %236
  %242 = icmp ugt ptr %92, %240
  br i1 %242, label %243, label %269

243:                                              ; preds = %233
  %244 = load i32, ptr %241, align 1
  %245 = load i32, ptr %240, align 1
  %246 = xor i32 %245, %244
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %243
  %249 = tail call i32 @llvm.cttz.i32(i32 %246, i1 true) #4, !range !8
  %250 = lshr i32 %249, 3
  br label %295

251:                                              ; preds = %257, %243
  %252 = phi ptr [ %255, %257 ], [ %240, %243 ]
  %253 = phi ptr [ %254, %257 ], [ %241, %243 ]
  %254 = getelementptr i8, ptr %253, i32 4
  %255 = getelementptr i8, ptr %252, i32 4
  %256 = icmp ult ptr %255, %92
  br i1 %256, label %257, label %269

257:                                              ; preds = %251
  %258 = load i32, ptr %254, align 1
  %259 = load i32, ptr %255, align 1
  %260 = xor i32 %259, %258
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %251, label %262

262:                                              ; preds = %257
  %263 = tail call i32 @llvm.cttz.i32(i32 %260, i1 true) #4, !range !8
  %264 = lshr i32 %263, 3
  %265 = getelementptr i8, ptr %255, i32 %264
  %266 = ptrtoint ptr %265 to i32
  %267 = ptrtoint ptr %240 to i32
  %268 = sub i32 %266, %267
  br label %295

269:                                              ; preds = %251, %233
  %270 = phi ptr [ %240, %233 ], [ %255, %251 ]
  %271 = phi ptr [ %241, %233 ], [ %254, %251 ]
  %272 = icmp ult ptr %270, %93
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = load i16, ptr %271, align 1
  %275 = load i16, ptr %270, align 1
  %276 = icmp eq i16 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = getelementptr i8, ptr %270, i32 2
  %279 = getelementptr i8, ptr %271, i32 2
  br label %280

280:                                              ; preds = %277, %273, %269
  %281 = phi ptr [ %278, %277 ], [ %270, %273 ], [ %270, %269 ]
  %282 = phi ptr [ %279, %277 ], [ %271, %273 ], [ %271, %269 ]
  %283 = icmp ult ptr %281, %43
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load i8, ptr %282, align 1
  %286 = load i8, ptr %281, align 1
  %287 = icmp eq i8 %285, %286
  %288 = zext i1 %287 to i32
  %289 = getelementptr i8, ptr %281, i32 %288
  br label %290

290:                                              ; preds = %284, %280
  %291 = phi ptr [ %281, %280 ], [ %289, %284 ]
  %292 = ptrtoint ptr %291 to i32
  %293 = ptrtoint ptr %240 to i32
  %294 = sub i32 %292, %293
  br label %295

295:                                              ; preds = %290, %262, %248
  %296 = phi i32 [ %294, %290 ], [ %250, %248 ], [ %268, %262 ]
  %297 = add i32 %296, %236
  %298 = ptrtoint ptr %237 to i32
  %299 = ptrtoint ptr %105 to i32
  %300 = sub i32 %298, %299
  %301 = add i32 %297, -3
  %302 = getelementptr i8, ptr %105, i32 %300
  %303 = icmp ugt ptr %302, %94
  %304 = load ptr, ptr %95, align 4
  br i1 %303, label %326, label %305

305:                                              ; preds = %295
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %304, ptr noundef align 1 dereferenceable(16) %105, i32 16, i1 false) #4
  %306 = icmp ugt i32 %300, 16
  %307 = load ptr, ptr %95, align 4
  br i1 %306, label %310, label %308

308:                                              ; preds = %305
  %309 = getelementptr i8, ptr %307, i32 %300
  store ptr %309, ptr %95, align 4
  br label %369

310:                                              ; preds = %305
  %311 = getelementptr i8, ptr %307, i32 16
  %312 = getelementptr i8, ptr %105, i32 16
  %313 = add i32 %300, -16
  %314 = getelementptr i8, ptr %307, i32 %300
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %311, ptr noundef align 1 dereferenceable(16) %312, i32 16, i1 false) #4
  %315 = icmp slt i32 %313, 17
  br i1 %315, label %358, label %316

316:                                              ; preds = %310
  %317 = getelementptr i8, ptr %307, i32 32
  br label %318

318:                                              ; preds = %318, %316
  %319 = phi ptr [ %312, %316 ], [ %323, %318 ]
  %320 = phi ptr [ %317, %316 ], [ %324, %318 ]
  %321 = getelementptr i8, ptr %319, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %320, ptr noundef align 1 dereferenceable(16) %321, i32 16, i1 false) #4
  %322 = getelementptr i8, ptr %320, i32 16
  %323 = getelementptr i8, ptr %319, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %322, ptr noundef align 1 dereferenceable(16) %323, i32 16, i1 false) #4
  %324 = getelementptr i8, ptr %320, i32 32
  %325 = icmp ult ptr %324, %314
  br i1 %325, label %318, label %358

326:                                              ; preds = %295
  %327 = ptrtoint ptr %302 to i32
  %328 = icmp ult ptr %94, %105
  br i1 %328, label %343, label %329

329:                                              ; preds = %326
  %330 = sub i32 %96, %299
  %331 = getelementptr i8, ptr %304, i32 %330
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %304, ptr noundef align 1 dereferenceable(16) %105, i32 16, i1 false) #4
  %332 = icmp slt i32 %330, 17
  br i1 %332, label %343, label %333

333:                                              ; preds = %329
  %334 = getelementptr i8, ptr %304, i32 16
  br label %335

335:                                              ; preds = %335, %333
  %336 = phi ptr [ %105, %333 ], [ %340, %335 ]
  %337 = phi ptr [ %334, %333 ], [ %341, %335 ]
  %338 = getelementptr i8, ptr %336, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %337, ptr noundef align 1 dereferenceable(16) %338, i32 16, i1 false) #4
  %339 = getelementptr i8, ptr %337, i32 16
  %340 = getelementptr i8, ptr %336, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %339, ptr noundef align 1 dereferenceable(16) %340, i32 16, i1 false) #4
  %341 = getelementptr i8, ptr %337, i32 32
  %342 = icmp ult ptr %341, %331
  br i1 %342, label %335, label %343

343:                                              ; preds = %335, %329, %326
  %344 = phi ptr [ %94, %329 ], [ %105, %326 ], [ %94, %335 ]
  %345 = phi ptr [ %331, %329 ], [ %304, %326 ], [ %331, %335 ]
  %346 = icmp ult ptr %344, %302
  br i1 %346, label %347, label %358

347:                                              ; preds = %343
  %348 = ptrtoint ptr %344 to i32
  %349 = sub i32 %327, %348
  %350 = getelementptr i8, ptr %344, i32 %349
  br label %351

351:                                              ; preds = %351, %347
  %352 = phi ptr [ %356, %351 ], [ %345, %347 ]
  %353 = phi ptr [ %354, %351 ], [ %344, %347 ]
  %354 = getelementptr i8, ptr %353, i32 1
  %355 = load i8, ptr %353, align 1
  %356 = getelementptr i8, ptr %352, i32 1
  store i8 %355, ptr %352, align 1
  %357 = icmp eq ptr %354, %350
  br i1 %357, label %358, label %351

358:                                              ; preds = %351, %343, %318, %310
  %359 = load ptr, ptr %95, align 4
  %360 = getelementptr i8, ptr %359, i32 %300
  store ptr %360, ptr %95, align 4
  %361 = icmp ugt i32 %300, 65535
  br i1 %361, label %362, label %369

362:                                              ; preds = %358
  store i32 1, ptr %97, align 4
  %363 = load ptr, ptr %98, align 4
  %364 = load ptr, ptr %1, align 4
  %365 = ptrtoint ptr %363 to i32
  %366 = ptrtoint ptr %364 to i32
  %367 = sub i32 %365, %366
  %368 = ashr exact i32 %367, 3
  store i32 %368, ptr %99, align 4
  br label %369

369:                                              ; preds = %362, %358, %308
  %370 = trunc i32 %300 to i16
  %371 = load ptr, ptr %98, align 4
  %372 = getelementptr inbounds %struct.seqDef_s, ptr %371, i32 0, i32 1
  store i16 %370, ptr %372, align 4
  %373 = add i32 %239, 1
  %374 = load ptr, ptr %98, align 4
  store i32 %373, ptr %374, align 4
  %375 = icmp ugt i32 %301, 65535
  br i1 %375, label %378, label %376

376:                                              ; preds = %369
  %377 = load ptr, ptr %98, align 4
  br label %385

378:                                              ; preds = %369
  store i32 2, ptr %97, align 4
  %379 = load ptr, ptr %98, align 4
  %380 = load ptr, ptr %1, align 4
  %381 = ptrtoint ptr %379 to i32
  %382 = ptrtoint ptr %380 to i32
  %383 = sub i32 %381, %382
  %384 = ashr exact i32 %383, 3
  store i32 %384, ptr %99, align 4
  br label %385

385:                                              ; preds = %378, %376
  %386 = phi ptr [ %377, %376 ], [ %379, %378 ]
  %387 = trunc i32 %301 to i16
  %388 = getelementptr inbounds %struct.seqDef_s, ptr %386, i32 0, i32 2
  store i16 %387, ptr %388, align 2
  %389 = load ptr, ptr %98, align 4
  %390 = getelementptr %struct.seqDef_s, ptr %389, i32 1
  store ptr %390, ptr %98, align 4
  %391 = getelementptr i8, ptr %237, i32 %297
  %392 = icmp ugt ptr %391, %44
  br i1 %392, label %578, label %393

393:                                              ; preds = %385
  %394 = add i32 %166, 2
  %395 = getelementptr i8, ptr %100, i32 %166
  switch i32 %5, label %440 [
    i32 8, label %429
    i32 5, label %396
    i32 6, label %407
    i32 7, label %418
  ]

396:                                              ; preds = %393
  %397 = load i64, ptr %395, align 1
  %398 = mul i64 %397, -3523014627271114752
  %399 = lshr i64 %398, %90
  %400 = trunc i64 %399 to i32
  %401 = getelementptr i32, ptr %9, i32 %400
  store i32 %394, ptr %401, align 4
  %402 = getelementptr i8, ptr %391, i32 -2
  %403 = load i64, ptr %402, align 1
  %404 = mul i64 %403, -3523014627271114752
  %405 = lshr i64 %404, %90
  %406 = trunc i64 %405 to i32
  br label %449

407:                                              ; preds = %393
  %408 = load i64, ptr %395, align 1
  %409 = mul i64 %408, -3523014627193847808
  %410 = lshr i64 %409, %90
  %411 = trunc i64 %410 to i32
  %412 = getelementptr i32, ptr %9, i32 %411
  store i32 %394, ptr %412, align 4
  %413 = getelementptr i8, ptr %391, i32 -2
  %414 = load i64, ptr %413, align 1
  %415 = mul i64 %414, -3523014627193847808
  %416 = lshr i64 %415, %90
  %417 = trunc i64 %416 to i32
  br label %449

418:                                              ; preds = %393
  %419 = load i64, ptr %395, align 1
  %420 = mul i64 %419, -3523014627193167104
  %421 = lshr i64 %420, %90
  %422 = trunc i64 %421 to i32
  %423 = getelementptr i32, ptr %9, i32 %422
  store i32 %394, ptr %423, align 4
  %424 = getelementptr i8, ptr %391, i32 -2
  %425 = load i64, ptr %424, align 1
  %426 = mul i64 %425, -3523014627193167104
  %427 = lshr i64 %426, %90
  %428 = trunc i64 %427 to i32
  br label %449

429:                                              ; preds = %393
  %430 = load i64, ptr %395, align 1
  %431 = mul i64 %430, -3523014627327384477
  %432 = lshr i64 %431, %90
  %433 = trunc i64 %432 to i32
  %434 = getelementptr i32, ptr %9, i32 %433
  store i32 %394, ptr %434, align 4
  %435 = getelementptr i8, ptr %391, i32 -2
  %436 = load i64, ptr %435, align 1
  %437 = mul i64 %436, -3523014627327384477
  %438 = lshr i64 %437, %90
  %439 = trunc i64 %438 to i32
  br label %449

440:                                              ; preds = %393
  %441 = load i32, ptr %395, align 1
  %442 = mul i32 %441, -1640531535
  %443 = lshr i32 %442, %91
  %444 = getelementptr i32, ptr %9, i32 %443
  store i32 %394, ptr %444, align 4
  %445 = getelementptr i8, ptr %391, i32 -2
  %446 = load i32, ptr %445, align 1
  %447 = mul i32 %446, -1640531535
  %448 = lshr i32 %447, %91
  br label %449

449:                                              ; preds = %440, %429, %418, %407, %396
  %450 = phi ptr [ %445, %440 ], [ %424, %418 ], [ %413, %407 ], [ %402, %396 ], [ %435, %429 ]
  %451 = phi i32 [ %448, %440 ], [ %428, %418 ], [ %417, %407 ], [ %406, %396 ], [ %439, %429 ]
  %452 = ptrtoint ptr %450 to i32
  %453 = sub i32 %452, %22
  %454 = getelementptr i32, ptr %9, i32 %451
  store i32 %453, ptr %454, align 4
  %455 = icmp eq i32 %235, 0
  br i1 %455, label %578, label %456

456:                                              ; preds = %571, %449
  %457 = phi ptr [ %552, %571 ], [ %391, %449 ]
  %458 = phi i32 [ %459, %571 ], [ %235, %449 ]
  %459 = phi i32 [ %458, %571 ], [ %234, %449 ]
  %460 = load i32, ptr %457, align 1
  %461 = sub i32 0, %458
  %462 = getelementptr i8, ptr %457, i32 %461
  %463 = load i32, ptr %462, align 1
  %464 = icmp eq i32 %460, %463
  br i1 %464, label %465, label %578

465:                                              ; preds = %456
  %466 = getelementptr i8, ptr %457, i32 4
  %467 = getelementptr i8, ptr %466, i32 %461
  %468 = icmp ugt ptr %92, %466
  br i1 %468, label %469, label %495

469:                                              ; preds = %465
  %470 = load i32, ptr %467, align 1
  %471 = load i32, ptr %466, align 1
  %472 = xor i32 %471, %470
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %477, label %474

474:                                              ; preds = %469
  %475 = tail call i32 @llvm.cttz.i32(i32 %472, i1 true) #4, !range !8
  %476 = lshr i32 %475, 3
  br label %521

477:                                              ; preds = %483, %469
  %478 = phi ptr [ %481, %483 ], [ %466, %469 ]
  %479 = phi ptr [ %480, %483 ], [ %467, %469 ]
  %480 = getelementptr i8, ptr %479, i32 4
  %481 = getelementptr i8, ptr %478, i32 4
  %482 = icmp ult ptr %481, %92
  br i1 %482, label %483, label %495

483:                                              ; preds = %477
  %484 = load i32, ptr %480, align 1
  %485 = load i32, ptr %481, align 1
  %486 = xor i32 %485, %484
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %477, label %488

488:                                              ; preds = %483
  %489 = tail call i32 @llvm.cttz.i32(i32 %486, i1 true) #4, !range !8
  %490 = lshr i32 %489, 3
  %491 = getelementptr i8, ptr %481, i32 %490
  %492 = ptrtoint ptr %491 to i32
  %493 = ptrtoint ptr %466 to i32
  %494 = sub i32 %492, %493
  br label %521

495:                                              ; preds = %477, %465
  %496 = phi ptr [ %466, %465 ], [ %481, %477 ]
  %497 = phi ptr [ %467, %465 ], [ %480, %477 ]
  %498 = icmp ult ptr %496, %93
  br i1 %498, label %499, label %506

499:                                              ; preds = %495
  %500 = load i16, ptr %497, align 1
  %501 = load i16, ptr %496, align 1
  %502 = icmp eq i16 %500, %501
  br i1 %502, label %503, label %506

503:                                              ; preds = %499
  %504 = getelementptr i8, ptr %496, i32 2
  %505 = getelementptr i8, ptr %497, i32 2
  br label %506

506:                                              ; preds = %503, %499, %495
  %507 = phi ptr [ %504, %503 ], [ %496, %499 ], [ %496, %495 ]
  %508 = phi ptr [ %505, %503 ], [ %497, %499 ], [ %497, %495 ]
  %509 = icmp ult ptr %507, %43
  br i1 %509, label %510, label %516

510:                                              ; preds = %506
  %511 = load i8, ptr %508, align 1
  %512 = load i8, ptr %507, align 1
  %513 = icmp eq i8 %511, %512
  %514 = zext i1 %513 to i32
  %515 = getelementptr i8, ptr %507, i32 %514
  br label %516

516:                                              ; preds = %510, %506
  %517 = phi ptr [ %507, %506 ], [ %515, %510 ]
  %518 = ptrtoint ptr %517 to i32
  %519 = ptrtoint ptr %466 to i32
  %520 = sub i32 %518, %519
  br label %521

521:                                              ; preds = %516, %488, %474
  %522 = phi i32 [ %520, %516 ], [ %476, %474 ], [ %494, %488 ]
  %523 = add i32 %522, 4
  %524 = ptrtoint ptr %457 to i32
  %525 = sub i32 %524, %22
  switch i32 %5, label %526 [
    i32 8, label %544
    i32 5, label %529
    i32 6, label %534
    i32 7, label %539
  ]

526:                                              ; preds = %521
  %527 = mul i32 %460, -1640531535
  %528 = lshr i32 %527, %91
  br label %549

529:                                              ; preds = %521
  %530 = load i64, ptr %457, align 1
  %531 = mul i64 %530, -3523014627271114752
  %532 = lshr i64 %531, %90
  %533 = trunc i64 %532 to i32
  br label %549

534:                                              ; preds = %521
  %535 = load i64, ptr %457, align 1
  %536 = mul i64 %535, -3523014627193847808
  %537 = lshr i64 %536, %90
  %538 = trunc i64 %537 to i32
  br label %549

539:                                              ; preds = %521
  %540 = load i64, ptr %457, align 1
  %541 = mul i64 %540, -3523014627193167104
  %542 = lshr i64 %541, %90
  %543 = trunc i64 %542 to i32
  br label %549

544:                                              ; preds = %521
  %545 = load i64, ptr %457, align 1
  %546 = mul i64 %545, -3523014627327384477
  %547 = lshr i64 %546, %90
  %548 = trunc i64 %547 to i32
  br label %549

549:                                              ; preds = %544, %539, %534, %529, %526
  %550 = phi i32 [ %528, %526 ], [ %543, %539 ], [ %538, %534 ], [ %533, %529 ], [ %548, %544 ]
  %551 = getelementptr i32, ptr %9, i32 %550
  store i32 %525, ptr %551, align 4
  %552 = getelementptr i8, ptr %457, i32 %523
  %553 = add i32 %522, 1
  %554 = icmp ugt ptr %457, %94
  br i1 %554, label %557, label %555

555:                                              ; preds = %549
  %556 = load ptr, ptr %95, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %556, ptr noundef align 1 dereferenceable(16) %457, i32 16, i1 false) #4
  br label %557

557:                                              ; preds = %555, %549
  %558 = load ptr, ptr %98, align 4
  %559 = getelementptr inbounds %struct.seqDef_s, ptr %558, i32 0, i32 1
  store i16 0, ptr %559, align 4
  %560 = load ptr, ptr %98, align 4
  store i32 1, ptr %560, align 4
  %561 = icmp ugt i32 %553, 65535
  br i1 %561, label %564, label %562

562:                                              ; preds = %557
  %563 = load ptr, ptr %98, align 4
  br label %571

564:                                              ; preds = %557
  store i32 2, ptr %97, align 4
  %565 = load ptr, ptr %98, align 4
  %566 = load ptr, ptr %1, align 4
  %567 = ptrtoint ptr %565 to i32
  %568 = ptrtoint ptr %566 to i32
  %569 = sub i32 %567, %568
  %570 = ashr exact i32 %569, 3
  store i32 %570, ptr %99, align 4
  br label %571

571:                                              ; preds = %564, %562
  %572 = phi ptr [ %563, %562 ], [ %565, %564 ]
  %573 = trunc i32 %553 to i16
  %574 = getelementptr inbounds %struct.seqDef_s, ptr %572, i32 0, i32 2
  store i16 %573, ptr %574, align 2
  %575 = load ptr, ptr %98, align 4
  %576 = getelementptr %struct.seqDef_s, ptr %575, i32 1
  store ptr %576, ptr %98, align 4
  %577 = icmp ugt ptr %552, %44
  br i1 %577, label %578, label %456

578:                                              ; preds = %571, %456, %449, %385
  %579 = phi i32 [ %234, %449 ], [ %234, %385 ], [ %458, %571 ], [ %459, %456 ]
  %580 = phi i32 [ 0, %449 ], [ %235, %385 ], [ %459, %571 ], [ %458, %456 ]
  %581 = phi ptr [ %391, %449 ], [ %391, %385 ], [ %552, %571 ], [ %457, %456 ]
  %582 = getelementptr i8, ptr %581, i32 1
  br label %583

583:                                              ; preds = %578, %202
  %584 = phi i32 [ %579, %578 ], [ %107, %202 ]
  %585 = phi i32 [ %580, %578 ], [ %106, %202 ]
  %586 = phi ptr [ %581, %578 ], [ %105, %202 ]
  %587 = phi ptr [ %582, %578 ], [ %208, %202 ]
  %588 = phi ptr [ %581, %578 ], [ %207, %202 ]
  %589 = icmp ult ptr %587, %44
  br i1 %589, label %102, label %590

590:                                              ; preds = %583
  %591 = ptrtoint ptr %586 to i32
  br label %592

592:                                              ; preds = %590, %65
  %593 = phi i32 [ %591, %590 ], [ %21, %65 ]
  %594 = phi i32 [ %584, %590 ], [ %86, %65 ]
  %595 = phi i32 [ %585, %590 ], [ %84, %65 ]
  %596 = select i1 %83, i32 %47, i32 0
  %597 = select i1 %85, i32 %45, i32 %596
  %598 = icmp eq i32 %594, 0
  %599 = select i1 %598, i32 %597, i32 %594
  store i32 %599, ptr %2, align 4
  %600 = icmp eq i32 %595, 0
  %601 = select i1 %600, i32 %597, i32 %595
  br label %1419

602:                                              ; preds = %1407, %51
  %603 = phi ptr [ %3, %51 ], [ %1411, %1407 ]
  %604 = phi ptr [ %3, %51 ], [ %1410, %1407 ]
  %605 = phi i32 [ %47, %51 ], [ %1409, %1407 ]
  %606 = phi i32 [ %45, %51 ], [ %1408, %1407 ]
  switch i32 %5, label %607 [
    i32 8, label %626
    i32 5, label %611
    i32 6, label %616
    i32 7, label %621
  ]

607:                                              ; preds = %602
  %608 = load i32, ptr %603, align 1
  %609 = mul i32 %608, -1640531535
  %610 = lshr i32 %609, %54
  br label %631

611:                                              ; preds = %602
  %612 = load i64, ptr %603, align 1
  %613 = mul i64 %612, -3523014627271114752
  %614 = lshr i64 %613, %53
  %615 = trunc i64 %614 to i32
  br label %631

616:                                              ; preds = %602
  %617 = load i64, ptr %603, align 1
  %618 = mul i64 %617, -3523014627193847808
  %619 = lshr i64 %618, %53
  %620 = trunc i64 %619 to i32
  br label %631

621:                                              ; preds = %602
  %622 = load i64, ptr %603, align 1
  %623 = mul i64 %622, -3523014627193167104
  %624 = lshr i64 %623, %53
  %625 = trunc i64 %624 to i32
  br label %631

626:                                              ; preds = %602
  %627 = load i64, ptr %603, align 1
  %628 = mul i64 %627, -3523014627327384477
  %629 = lshr i64 %628, %53
  %630 = trunc i64 %629 to i32
  br label %631

631:                                              ; preds = %626, %621, %616, %611, %607
  %632 = phi i32 [ %610, %607 ], [ %625, %621 ], [ %620, %616 ], [ %615, %611 ], [ %630, %626 ]
  %633 = getelementptr i32, ptr %9, i32 %632
  %634 = load i32, ptr %633, align 4
  %635 = icmp ult i32 %634, %40
  %636 = select i1 %635, ptr %20, ptr %18
  %637 = getelementptr i8, ptr %636, i32 %634
  %638 = ptrtoint ptr %603 to i32
  %639 = sub i32 %638, %22
  %640 = sub i32 1, %606
  %641 = add i32 %640, %639
  %642 = icmp ult i32 %641, %40
  %643 = select i1 %642, ptr %20, ptr %18
  %644 = getelementptr i8, ptr %643, i32 %641
  store i32 %639, ptr %633, align 4
  %645 = sub i32 %55, %641
  %646 = icmp ugt i32 %645, 2
  %647 = icmp ugt i32 %641, %36
  %648 = and i1 %647, %646
  br i1 %648, label %649, label %877

649:                                              ; preds = %631
  %650 = load i32, ptr %644, align 1
  %651 = getelementptr i8, ptr %603, i32 1
  %652 = load i32, ptr %651, align 1
  %653 = icmp eq i32 %650, %652
  br i1 %653, label %654, label %877

654:                                              ; preds = %649
  %655 = select i1 %642, ptr %42, ptr %43
  %656 = getelementptr i8, ptr %603, i32 5
  %657 = getelementptr i8, ptr %644, i32 4
  %658 = ptrtoint ptr %655 to i32
  %659 = ptrtoint ptr %657 to i32
  %660 = sub i32 %658, %659
  %661 = getelementptr i8, ptr %656, i32 %660
  %662 = icmp ult ptr %661, %43
  %663 = select i1 %662, ptr %661, ptr %43
  %664 = getelementptr i8, ptr %663, i32 -3
  %665 = icmp ugt ptr %664, %656
  br i1 %665, label %666, label %692

666:                                              ; preds = %654
  %667 = load i32, ptr %657, align 1
  %668 = load i32, ptr %656, align 1
  %669 = xor i32 %668, %667
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %674, label %671

671:                                              ; preds = %666
  %672 = tail call i32 @llvm.cttz.i32(i32 %669, i1 true) #4, !range !8
  %673 = lshr i32 %672, 3
  br label %719

674:                                              ; preds = %680, %666
  %675 = phi ptr [ %678, %680 ], [ %656, %666 ]
  %676 = phi ptr [ %677, %680 ], [ %657, %666 ]
  %677 = getelementptr i8, ptr %676, i32 4
  %678 = getelementptr i8, ptr %675, i32 4
  %679 = icmp ult ptr %678, %664
  br i1 %679, label %680, label %692

680:                                              ; preds = %674
  %681 = load i32, ptr %677, align 1
  %682 = load i32, ptr %678, align 1
  %683 = xor i32 %682, %681
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %674, label %685

685:                                              ; preds = %680
  %686 = tail call i32 @llvm.cttz.i32(i32 %683, i1 true) #4, !range !8
  %687 = lshr i32 %686, 3
  %688 = getelementptr i8, ptr %678, i32 %687
  %689 = ptrtoint ptr %688 to i32
  %690 = ptrtoint ptr %656 to i32
  %691 = sub i32 %689, %690
  br label %719

692:                                              ; preds = %674, %654
  %693 = phi ptr [ %656, %654 ], [ %678, %674 ]
  %694 = phi ptr [ %657, %654 ], [ %677, %674 ]
  %695 = getelementptr i8, ptr %663, i32 -1
  %696 = icmp ult ptr %693, %695
  br i1 %696, label %697, label %704

697:                                              ; preds = %692
  %698 = load i16, ptr %694, align 1
  %699 = load i16, ptr %693, align 1
  %700 = icmp eq i16 %698, %699
  br i1 %700, label %701, label %704

701:                                              ; preds = %697
  %702 = getelementptr i8, ptr %693, i32 2
  %703 = getelementptr i8, ptr %694, i32 2
  br label %704

704:                                              ; preds = %701, %697, %692
  %705 = phi ptr [ %702, %701 ], [ %693, %697 ], [ %693, %692 ]
  %706 = phi ptr [ %703, %701 ], [ %694, %697 ], [ %694, %692 ]
  %707 = icmp ult ptr %705, %663
  br i1 %707, label %708, label %714

708:                                              ; preds = %704
  %709 = load i8, ptr %706, align 1
  %710 = load i8, ptr %705, align 1
  %711 = icmp eq i8 %709, %710
  %712 = zext i1 %711 to i32
  %713 = getelementptr i8, ptr %705, i32 %712
  br label %714

714:                                              ; preds = %708, %704
  %715 = phi ptr [ %705, %704 ], [ %713, %708 ]
  %716 = ptrtoint ptr %715 to i32
  %717 = ptrtoint ptr %656 to i32
  %718 = sub i32 %716, %717
  br label %719

719:                                              ; preds = %714, %685, %671
  %720 = phi i32 [ %718, %714 ], [ %673, %671 ], [ %691, %685 ]
  %721 = getelementptr i8, ptr %657, i32 %720
  %722 = icmp eq ptr %721, %655
  br i1 %722, label %723, label %781

723:                                              ; preds = %719
  %724 = getelementptr i8, ptr %656, i32 %720
  %725 = icmp ugt ptr %56, %724
  br i1 %725, label %726, label %752

726:                                              ; preds = %723
  %727 = load i32, ptr %41, align 1
  %728 = load i32, ptr %724, align 1
  %729 = xor i32 %728, %727
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %734, label %731

731:                                              ; preds = %726
  %732 = tail call i32 @llvm.cttz.i32(i32 %729, i1 true) #4, !range !8
  %733 = lshr i32 %732, 3
  br label %778

734:                                              ; preds = %740, %726
  %735 = phi ptr [ %738, %740 ], [ %724, %726 ]
  %736 = phi ptr [ %737, %740 ], [ %41, %726 ]
  %737 = getelementptr i8, ptr %736, i32 4
  %738 = getelementptr i8, ptr %735, i32 4
  %739 = icmp ult ptr %738, %56
  br i1 %739, label %740, label %752

740:                                              ; preds = %734
  %741 = load i32, ptr %737, align 1
  %742 = load i32, ptr %738, align 1
  %743 = xor i32 %742, %741
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %734, label %745

745:                                              ; preds = %740
  %746 = tail call i32 @llvm.cttz.i32(i32 %743, i1 true) #4, !range !8
  %747 = lshr i32 %746, 3
  %748 = getelementptr i8, ptr %738, i32 %747
  %749 = ptrtoint ptr %748 to i32
  %750 = ptrtoint ptr %724 to i32
  %751 = sub i32 %749, %750
  br label %778

752:                                              ; preds = %734, %723
  %753 = phi ptr [ %724, %723 ], [ %738, %734 ]
  %754 = phi ptr [ %41, %723 ], [ %737, %734 ]
  %755 = icmp ult ptr %753, %57
  br i1 %755, label %756, label %763

756:                                              ; preds = %752
  %757 = load i16, ptr %754, align 1
  %758 = load i16, ptr %753, align 1
  %759 = icmp eq i16 %757, %758
  br i1 %759, label %760, label %763

760:                                              ; preds = %756
  %761 = getelementptr i8, ptr %753, i32 2
  %762 = getelementptr i8, ptr %754, i32 2
  br label %763

763:                                              ; preds = %760, %756, %752
  %764 = phi ptr [ %761, %760 ], [ %753, %756 ], [ %753, %752 ]
  %765 = phi ptr [ %762, %760 ], [ %754, %756 ], [ %754, %752 ]
  %766 = icmp ult ptr %764, %43
  br i1 %766, label %767, label %773

767:                                              ; preds = %763
  %768 = load i8, ptr %765, align 1
  %769 = load i8, ptr %764, align 1
  %770 = icmp eq i8 %768, %769
  %771 = zext i1 %770 to i32
  %772 = getelementptr i8, ptr %764, i32 %771
  br label %773

773:                                              ; preds = %767, %763
  %774 = phi ptr [ %764, %763 ], [ %772, %767 ]
  %775 = ptrtoint ptr %774 to i32
  %776 = ptrtoint ptr %724 to i32
  %777 = sub i32 %775, %776
  br label %778

778:                                              ; preds = %773, %745, %731
  %779 = phi i32 [ %777, %773 ], [ %733, %731 ], [ %751, %745 ]
  %780 = add i32 %779, %720
  br label %781

781:                                              ; preds = %778, %719
  %782 = phi i32 [ %780, %778 ], [ %720, %719 ]
  %783 = add i32 %782, 4
  %784 = ptrtoint ptr %651 to i32
  %785 = ptrtoint ptr %604 to i32
  %786 = sub i32 %784, %785
  %787 = add i32 %782, 1
  %788 = getelementptr i8, ptr %604, i32 %786
  %789 = icmp ugt ptr %788, %58
  %790 = load ptr, ptr %59, align 4
  br i1 %789, label %812, label %791

791:                                              ; preds = %781
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %790, ptr noundef align 1 dereferenceable(16) %604, i32 16, i1 false) #4
  %792 = icmp ugt i32 %786, 16
  %793 = load ptr, ptr %59, align 4
  br i1 %792, label %796, label %794

794:                                              ; preds = %791
  %795 = getelementptr i8, ptr %793, i32 %786
  store ptr %795, ptr %59, align 4
  br label %855

796:                                              ; preds = %791
  %797 = getelementptr i8, ptr %793, i32 16
  %798 = getelementptr i8, ptr %604, i32 16
  %799 = add i32 %786, -16
  %800 = getelementptr i8, ptr %793, i32 %786
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %797, ptr noundef align 1 dereferenceable(16) %798, i32 16, i1 false) #4
  %801 = icmp slt i32 %799, 17
  br i1 %801, label %844, label %802

802:                                              ; preds = %796
  %803 = getelementptr i8, ptr %793, i32 32
  br label %804

804:                                              ; preds = %804, %802
  %805 = phi ptr [ %798, %802 ], [ %809, %804 ]
  %806 = phi ptr [ %803, %802 ], [ %810, %804 ]
  %807 = getelementptr i8, ptr %805, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %806, ptr noundef align 1 dereferenceable(16) %807, i32 16, i1 false) #4
  %808 = getelementptr i8, ptr %806, i32 16
  %809 = getelementptr i8, ptr %805, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %808, ptr noundef align 1 dereferenceable(16) %809, i32 16, i1 false) #4
  %810 = getelementptr i8, ptr %806, i32 32
  %811 = icmp ult ptr %810, %800
  br i1 %811, label %804, label %844

812:                                              ; preds = %781
  %813 = ptrtoint ptr %788 to i32
  %814 = icmp ult ptr %58, %604
  br i1 %814, label %829, label %815

815:                                              ; preds = %812
  %816 = sub i32 %60, %785
  %817 = getelementptr i8, ptr %790, i32 %816
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %790, ptr noundef align 1 dereferenceable(16) %604, i32 16, i1 false) #4
  %818 = icmp slt i32 %816, 17
  br i1 %818, label %829, label %819

819:                                              ; preds = %815
  %820 = getelementptr i8, ptr %790, i32 16
  br label %821

821:                                              ; preds = %821, %819
  %822 = phi ptr [ %604, %819 ], [ %826, %821 ]
  %823 = phi ptr [ %820, %819 ], [ %827, %821 ]
  %824 = getelementptr i8, ptr %822, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %823, ptr noundef align 1 dereferenceable(16) %824, i32 16, i1 false) #4
  %825 = getelementptr i8, ptr %823, i32 16
  %826 = getelementptr i8, ptr %822, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %825, ptr noundef align 1 dereferenceable(16) %826, i32 16, i1 false) #4
  %827 = getelementptr i8, ptr %823, i32 32
  %828 = icmp ult ptr %827, %817
  br i1 %828, label %821, label %829

829:                                              ; preds = %821, %815, %812
  %830 = phi ptr [ %58, %815 ], [ %604, %812 ], [ %58, %821 ]
  %831 = phi ptr [ %817, %815 ], [ %790, %812 ], [ %817, %821 ]
  %832 = icmp ult ptr %830, %788
  br i1 %832, label %833, label %844

833:                                              ; preds = %829
  %834 = ptrtoint ptr %830 to i32
  %835 = sub i32 %813, %834
  %836 = getelementptr i8, ptr %830, i32 %835
  br label %837

837:                                              ; preds = %837, %833
  %838 = phi ptr [ %842, %837 ], [ %831, %833 ]
  %839 = phi ptr [ %840, %837 ], [ %830, %833 ]
  %840 = getelementptr i8, ptr %839, i32 1
  %841 = load i8, ptr %839, align 1
  %842 = getelementptr i8, ptr %838, i32 1
  store i8 %841, ptr %838, align 1
  %843 = icmp eq ptr %840, %836
  br i1 %843, label %844, label %837

844:                                              ; preds = %837, %829, %804, %796
  %845 = load ptr, ptr %59, align 4
  %846 = getelementptr i8, ptr %845, i32 %786
  store ptr %846, ptr %59, align 4
  %847 = icmp ugt i32 %786, 65535
  br i1 %847, label %848, label %855

848:                                              ; preds = %844
  store i32 1, ptr %61, align 4
  %849 = load ptr, ptr %62, align 4
  %850 = load ptr, ptr %1, align 4
  %851 = ptrtoint ptr %849 to i32
  %852 = ptrtoint ptr %850 to i32
  %853 = sub i32 %851, %852
  %854 = ashr exact i32 %853, 3
  store i32 %854, ptr %63, align 4
  br label %855

855:                                              ; preds = %848, %844, %794
  %856 = trunc i32 %786 to i16
  %857 = load ptr, ptr %62, align 4
  %858 = getelementptr inbounds %struct.seqDef_s, ptr %857, i32 0, i32 1
  store i16 %856, ptr %858, align 4
  %859 = load ptr, ptr %62, align 4
  store i32 1, ptr %859, align 4
  %860 = icmp ugt i32 %787, 65535
  br i1 %860, label %863, label %861

861:                                              ; preds = %855
  %862 = load ptr, ptr %62, align 4
  br label %870

863:                                              ; preds = %855
  store i32 2, ptr %61, align 4
  %864 = load ptr, ptr %62, align 4
  %865 = load ptr, ptr %1, align 4
  %866 = ptrtoint ptr %864 to i32
  %867 = ptrtoint ptr %865 to i32
  %868 = sub i32 %866, %867
  %869 = ashr exact i32 %868, 3
  store i32 %869, ptr %63, align 4
  br label %870

870:                                              ; preds = %863, %861
  %871 = phi ptr [ %862, %861 ], [ %864, %863 ]
  %872 = trunc i32 %787 to i16
  %873 = getelementptr inbounds %struct.seqDef_s, ptr %871, i32 0, i32 2
  store i16 %872, ptr %873, align 2
  %874 = load ptr, ptr %62, align 4
  %875 = getelementptr %struct.seqDef_s, ptr %874, i32 1
  store ptr %875, ptr %62, align 4
  %876 = getelementptr i8, ptr %651, i32 %783
  br label %1139

877:                                              ; preds = %649, %631
  %878 = icmp ult i32 %634, %36
  br i1 %878, label %883, label %879

879:                                              ; preds = %877
  %880 = load i32, ptr %637, align 1
  %881 = load i32, ptr %603, align 1
  %882 = icmp eq i32 %880, %881
  br i1 %882, label %889, label %883

883:                                              ; preds = %879, %877
  %884 = ptrtoint ptr %604 to i32
  %885 = sub i32 %638, %884
  %886 = ashr i32 %885, 8
  %887 = add i32 %16, %886
  %888 = getelementptr i8, ptr %603, i32 %887
  br label %1407

889:                                              ; preds = %879
  %890 = select i1 %635, ptr %42, ptr %43
  %891 = select i1 %635, ptr %37, ptr %41
  %892 = sub i32 %639, %634
  %893 = getelementptr i8, ptr %603, i32 4
  %894 = getelementptr i8, ptr %637, i32 4
  %895 = ptrtoint ptr %890 to i32
  %896 = ptrtoint ptr %894 to i32
  %897 = sub i32 %895, %896
  %898 = getelementptr i8, ptr %893, i32 %897
  %899 = icmp ult ptr %898, %43
  %900 = select i1 %899, ptr %898, ptr %43
  %901 = getelementptr i8, ptr %900, i32 -3
  %902 = icmp ugt ptr %901, %893
  br i1 %902, label %903, label %929

903:                                              ; preds = %889
  %904 = load i32, ptr %894, align 1
  %905 = load i32, ptr %893, align 1
  %906 = xor i32 %905, %904
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %911, label %908

908:                                              ; preds = %903
  %909 = tail call i32 @llvm.cttz.i32(i32 %906, i1 true) #4, !range !8
  %910 = lshr i32 %909, 3
  br label %956

911:                                              ; preds = %917, %903
  %912 = phi ptr [ %915, %917 ], [ %893, %903 ]
  %913 = phi ptr [ %914, %917 ], [ %894, %903 ]
  %914 = getelementptr i8, ptr %913, i32 4
  %915 = getelementptr i8, ptr %912, i32 4
  %916 = icmp ult ptr %915, %901
  br i1 %916, label %917, label %929

917:                                              ; preds = %911
  %918 = load i32, ptr %914, align 1
  %919 = load i32, ptr %915, align 1
  %920 = xor i32 %919, %918
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %911, label %922

922:                                              ; preds = %917
  %923 = tail call i32 @llvm.cttz.i32(i32 %920, i1 true) #4, !range !8
  %924 = lshr i32 %923, 3
  %925 = getelementptr i8, ptr %915, i32 %924
  %926 = ptrtoint ptr %925 to i32
  %927 = ptrtoint ptr %893 to i32
  %928 = sub i32 %926, %927
  br label %956

929:                                              ; preds = %911, %889
  %930 = phi ptr [ %893, %889 ], [ %915, %911 ]
  %931 = phi ptr [ %894, %889 ], [ %914, %911 ]
  %932 = getelementptr i8, ptr %900, i32 -1
  %933 = icmp ult ptr %930, %932
  br i1 %933, label %934, label %941

934:                                              ; preds = %929
  %935 = load i16, ptr %931, align 1
  %936 = load i16, ptr %930, align 1
  %937 = icmp eq i16 %935, %936
  br i1 %937, label %938, label %941

938:                                              ; preds = %934
  %939 = getelementptr i8, ptr %930, i32 2
  %940 = getelementptr i8, ptr %931, i32 2
  br label %941

941:                                              ; preds = %938, %934, %929
  %942 = phi ptr [ %939, %938 ], [ %930, %934 ], [ %930, %929 ]
  %943 = phi ptr [ %940, %938 ], [ %931, %934 ], [ %931, %929 ]
  %944 = icmp ult ptr %942, %900
  br i1 %944, label %945, label %951

945:                                              ; preds = %941
  %946 = load i8, ptr %943, align 1
  %947 = load i8, ptr %942, align 1
  %948 = icmp eq i8 %946, %947
  %949 = zext i1 %948 to i32
  %950 = getelementptr i8, ptr %942, i32 %949
  br label %951

951:                                              ; preds = %945, %941
  %952 = phi ptr [ %942, %941 ], [ %950, %945 ]
  %953 = ptrtoint ptr %952 to i32
  %954 = ptrtoint ptr %893 to i32
  %955 = sub i32 %953, %954
  br label %956

956:                                              ; preds = %951, %922, %908
  %957 = phi i32 [ %955, %951 ], [ %910, %908 ], [ %928, %922 ]
  %958 = getelementptr i8, ptr %894, i32 %957
  %959 = icmp eq ptr %958, %890
  br i1 %959, label %960, label %1018

960:                                              ; preds = %956
  %961 = getelementptr i8, ptr %893, i32 %957
  %962 = icmp ugt ptr %56, %961
  br i1 %962, label %963, label %989

963:                                              ; preds = %960
  %964 = load i32, ptr %41, align 1
  %965 = load i32, ptr %961, align 1
  %966 = xor i32 %965, %964
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %971, label %968

968:                                              ; preds = %963
  %969 = tail call i32 @llvm.cttz.i32(i32 %966, i1 true) #4, !range !8
  %970 = lshr i32 %969, 3
  br label %1015

971:                                              ; preds = %977, %963
  %972 = phi ptr [ %975, %977 ], [ %961, %963 ]
  %973 = phi ptr [ %974, %977 ], [ %41, %963 ]
  %974 = getelementptr i8, ptr %973, i32 4
  %975 = getelementptr i8, ptr %972, i32 4
  %976 = icmp ult ptr %975, %56
  br i1 %976, label %977, label %989

977:                                              ; preds = %971
  %978 = load i32, ptr %974, align 1
  %979 = load i32, ptr %975, align 1
  %980 = xor i32 %979, %978
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %971, label %982

982:                                              ; preds = %977
  %983 = tail call i32 @llvm.cttz.i32(i32 %980, i1 true) #4, !range !8
  %984 = lshr i32 %983, 3
  %985 = getelementptr i8, ptr %975, i32 %984
  %986 = ptrtoint ptr %985 to i32
  %987 = ptrtoint ptr %961 to i32
  %988 = sub i32 %986, %987
  br label %1015

989:                                              ; preds = %971, %960
  %990 = phi ptr [ %961, %960 ], [ %975, %971 ]
  %991 = phi ptr [ %41, %960 ], [ %974, %971 ]
  %992 = icmp ult ptr %990, %57
  br i1 %992, label %993, label %1000

993:                                              ; preds = %989
  %994 = load i16, ptr %991, align 1
  %995 = load i16, ptr %990, align 1
  %996 = icmp eq i16 %994, %995
  br i1 %996, label %997, label %1000

997:                                              ; preds = %993
  %998 = getelementptr i8, ptr %990, i32 2
  %999 = getelementptr i8, ptr %991, i32 2
  br label %1000

1000:                                             ; preds = %997, %993, %989
  %1001 = phi ptr [ %998, %997 ], [ %990, %993 ], [ %990, %989 ]
  %1002 = phi ptr [ %999, %997 ], [ %991, %993 ], [ %991, %989 ]
  %1003 = icmp ult ptr %1001, %43
  br i1 %1003, label %1004, label %1010

1004:                                             ; preds = %1000
  %1005 = load i8, ptr %1002, align 1
  %1006 = load i8, ptr %1001, align 1
  %1007 = icmp eq i8 %1005, %1006
  %1008 = zext i1 %1007 to i32
  %1009 = getelementptr i8, ptr %1001, i32 %1008
  br label %1010

1010:                                             ; preds = %1004, %1000
  %1011 = phi ptr [ %1001, %1000 ], [ %1009, %1004 ]
  %1012 = ptrtoint ptr %1011 to i32
  %1013 = ptrtoint ptr %961 to i32
  %1014 = sub i32 %1012, %1013
  br label %1015

1015:                                             ; preds = %1010, %982, %968
  %1016 = phi i32 [ %1014, %1010 ], [ %970, %968 ], [ %988, %982 ]
  %1017 = add i32 %1016, %957
  br label %1018

1018:                                             ; preds = %1015, %956
  %1019 = phi i32 [ %1017, %1015 ], [ %957, %956 ]
  %1020 = add i32 %1019, 4
  %1021 = icmp ugt ptr %603, %604
  %1022 = icmp ugt ptr %637, %891
  %1023 = and i1 %1022, %1021
  br i1 %1023, label %1024, label %1042

1024:                                             ; preds = %1033, %1018
  %1025 = phi i32 [ %1034, %1033 ], [ %1020, %1018 ]
  %1026 = phi ptr [ %1028, %1033 ], [ %603, %1018 ]
  %1027 = phi ptr [ %1030, %1033 ], [ %637, %1018 ]
  %1028 = getelementptr i8, ptr %1026, i32 -1
  %1029 = load i8, ptr %1028, align 1
  %1030 = getelementptr i8, ptr %1027, i32 -1
  %1031 = load i8, ptr %1030, align 1
  %1032 = icmp eq i8 %1029, %1031
  br i1 %1032, label %1033, label %1038

1033:                                             ; preds = %1024
  %1034 = add i32 %1025, 1
  %1035 = icmp ugt ptr %1028, %604
  %1036 = icmp ugt ptr %1030, %891
  %1037 = and i1 %1036, %1035
  br i1 %1037, label %1024, label %1038

1038:                                             ; preds = %1033, %1024
  %1039 = phi ptr [ %1026, %1024 ], [ %1028, %1033 ]
  %1040 = phi i32 [ %1025, %1024 ], [ %1034, %1033 ]
  %1041 = ptrtoint ptr %1039 to i32
  br label %1042

1042:                                             ; preds = %1038, %1018
  %1043 = phi i32 [ %1041, %1038 ], [ %638, %1018 ]
  %1044 = phi ptr [ %1039, %1038 ], [ %603, %1018 ]
  %1045 = phi i32 [ %1040, %1038 ], [ %1020, %1018 ]
  %1046 = ptrtoint ptr %604 to i32
  %1047 = sub i32 %1043, %1046
  %1048 = add i32 %1045, -3
  %1049 = getelementptr i8, ptr %604, i32 %1047
  %1050 = icmp ugt ptr %1049, %58
  %1051 = load ptr, ptr %59, align 4
  br i1 %1050, label %1073, label %1052

1052:                                             ; preds = %1042
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1051, ptr noundef align 1 dereferenceable(16) %604, i32 16, i1 false) #4
  %1053 = icmp ugt i32 %1047, 16
  %1054 = load ptr, ptr %59, align 4
  br i1 %1053, label %1057, label %1055

1055:                                             ; preds = %1052
  %1056 = getelementptr i8, ptr %1054, i32 %1047
  store ptr %1056, ptr %59, align 4
  br label %1116

1057:                                             ; preds = %1052
  %1058 = getelementptr i8, ptr %1054, i32 16
  %1059 = getelementptr i8, ptr %604, i32 16
  %1060 = add i32 %1047, -16
  %1061 = getelementptr i8, ptr %1054, i32 %1047
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1058, ptr noundef align 1 dereferenceable(16) %1059, i32 16, i1 false) #4
  %1062 = icmp slt i32 %1060, 17
  br i1 %1062, label %1105, label %1063

1063:                                             ; preds = %1057
  %1064 = getelementptr i8, ptr %1054, i32 32
  br label %1065

1065:                                             ; preds = %1065, %1063
  %1066 = phi ptr [ %1059, %1063 ], [ %1070, %1065 ]
  %1067 = phi ptr [ %1064, %1063 ], [ %1071, %1065 ]
  %1068 = getelementptr i8, ptr %1066, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1067, ptr noundef align 1 dereferenceable(16) %1068, i32 16, i1 false) #4
  %1069 = getelementptr i8, ptr %1067, i32 16
  %1070 = getelementptr i8, ptr %1066, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1069, ptr noundef align 1 dereferenceable(16) %1070, i32 16, i1 false) #4
  %1071 = getelementptr i8, ptr %1067, i32 32
  %1072 = icmp ult ptr %1071, %1061
  br i1 %1072, label %1065, label %1105

1073:                                             ; preds = %1042
  %1074 = ptrtoint ptr %1049 to i32
  %1075 = icmp ult ptr %58, %604
  br i1 %1075, label %1090, label %1076

1076:                                             ; preds = %1073
  %1077 = sub i32 %60, %1046
  %1078 = getelementptr i8, ptr %1051, i32 %1077
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1051, ptr noundef align 1 dereferenceable(16) %604, i32 16, i1 false) #4
  %1079 = icmp slt i32 %1077, 17
  br i1 %1079, label %1090, label %1080

1080:                                             ; preds = %1076
  %1081 = getelementptr i8, ptr %1051, i32 16
  br label %1082

1082:                                             ; preds = %1082, %1080
  %1083 = phi ptr [ %604, %1080 ], [ %1087, %1082 ]
  %1084 = phi ptr [ %1081, %1080 ], [ %1088, %1082 ]
  %1085 = getelementptr i8, ptr %1083, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1084, ptr noundef align 1 dereferenceable(16) %1085, i32 16, i1 false) #4
  %1086 = getelementptr i8, ptr %1084, i32 16
  %1087 = getelementptr i8, ptr %1083, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1086, ptr noundef align 1 dereferenceable(16) %1087, i32 16, i1 false) #4
  %1088 = getelementptr i8, ptr %1084, i32 32
  %1089 = icmp ult ptr %1088, %1078
  br i1 %1089, label %1082, label %1090

1090:                                             ; preds = %1082, %1076, %1073
  %1091 = phi ptr [ %58, %1076 ], [ %604, %1073 ], [ %58, %1082 ]
  %1092 = phi ptr [ %1078, %1076 ], [ %1051, %1073 ], [ %1078, %1082 ]
  %1093 = icmp ult ptr %1091, %1049
  br i1 %1093, label %1094, label %1105

1094:                                             ; preds = %1090
  %1095 = ptrtoint ptr %1091 to i32
  %1096 = sub i32 %1074, %1095
  %1097 = getelementptr i8, ptr %1091, i32 %1096
  br label %1098

1098:                                             ; preds = %1098, %1094
  %1099 = phi ptr [ %1103, %1098 ], [ %1092, %1094 ]
  %1100 = phi ptr [ %1101, %1098 ], [ %1091, %1094 ]
  %1101 = getelementptr i8, ptr %1100, i32 1
  %1102 = load i8, ptr %1100, align 1
  %1103 = getelementptr i8, ptr %1099, i32 1
  store i8 %1102, ptr %1099, align 1
  %1104 = icmp eq ptr %1101, %1097
  br i1 %1104, label %1105, label %1098

1105:                                             ; preds = %1098, %1090, %1065, %1057
  %1106 = load ptr, ptr %59, align 4
  %1107 = getelementptr i8, ptr %1106, i32 %1047
  store ptr %1107, ptr %59, align 4
  %1108 = icmp ugt i32 %1047, 65535
  br i1 %1108, label %1109, label %1116

1109:                                             ; preds = %1105
  store i32 1, ptr %61, align 4
  %1110 = load ptr, ptr %62, align 4
  %1111 = load ptr, ptr %1, align 4
  %1112 = ptrtoint ptr %1110 to i32
  %1113 = ptrtoint ptr %1111 to i32
  %1114 = sub i32 %1112, %1113
  %1115 = ashr exact i32 %1114, 3
  store i32 %1115, ptr %63, align 4
  br label %1116

1116:                                             ; preds = %1109, %1105, %1055
  %1117 = trunc i32 %1047 to i16
  %1118 = load ptr, ptr %62, align 4
  %1119 = getelementptr inbounds %struct.seqDef_s, ptr %1118, i32 0, i32 1
  store i16 %1117, ptr %1119, align 4
  %1120 = add i32 %892, 3
  %1121 = load ptr, ptr %62, align 4
  store i32 %1120, ptr %1121, align 4
  %1122 = icmp ugt i32 %1048, 65535
  br i1 %1122, label %1125, label %1123

1123:                                             ; preds = %1116
  %1124 = load ptr, ptr %62, align 4
  br label %1132

1125:                                             ; preds = %1116
  store i32 2, ptr %61, align 4
  %1126 = load ptr, ptr %62, align 4
  %1127 = load ptr, ptr %1, align 4
  %1128 = ptrtoint ptr %1126 to i32
  %1129 = ptrtoint ptr %1127 to i32
  %1130 = sub i32 %1128, %1129
  %1131 = ashr exact i32 %1130, 3
  store i32 %1131, ptr %63, align 4
  br label %1132

1132:                                             ; preds = %1125, %1123
  %1133 = phi ptr [ %1124, %1123 ], [ %1126, %1125 ]
  %1134 = trunc i32 %1048 to i16
  %1135 = getelementptr inbounds %struct.seqDef_s, ptr %1133, i32 0, i32 2
  store i16 %1134, ptr %1135, align 2
  %1136 = load ptr, ptr %62, align 4
  %1137 = getelementptr %struct.seqDef_s, ptr %1136, i32 1
  store ptr %1137, ptr %62, align 4
  %1138 = getelementptr i8, ptr %1044, i32 %1045
  br label %1139

1139:                                             ; preds = %1132, %870
  %1140 = phi i32 [ %606, %870 ], [ %892, %1132 ]
  %1141 = phi i32 [ %605, %870 ], [ %606, %1132 ]
  %1142 = phi ptr [ %876, %870 ], [ %1138, %1132 ]
  %1143 = icmp ugt ptr %1142, %44
  br i1 %1143, label %1407, label %1144

1144:                                             ; preds = %1139
  %1145 = add i32 %639, 2
  %1146 = getelementptr i8, ptr %64, i32 %639
  switch i32 %5, label %1191 [
    i32 8, label %1180
    i32 5, label %1147
    i32 6, label %1158
    i32 7, label %1169
  ]

1147:                                             ; preds = %1144
  %1148 = load i64, ptr %1146, align 1
  %1149 = mul i64 %1148, -3523014627271114752
  %1150 = lshr i64 %1149, %53
  %1151 = trunc i64 %1150 to i32
  %1152 = getelementptr i32, ptr %9, i32 %1151
  store i32 %1145, ptr %1152, align 4
  %1153 = getelementptr i8, ptr %1142, i32 -2
  %1154 = load i64, ptr %1153, align 1
  %1155 = mul i64 %1154, -3523014627271114752
  %1156 = lshr i64 %1155, %53
  %1157 = trunc i64 %1156 to i32
  br label %1200

1158:                                             ; preds = %1144
  %1159 = load i64, ptr %1146, align 1
  %1160 = mul i64 %1159, -3523014627193847808
  %1161 = lshr i64 %1160, %53
  %1162 = trunc i64 %1161 to i32
  %1163 = getelementptr i32, ptr %9, i32 %1162
  store i32 %1145, ptr %1163, align 4
  %1164 = getelementptr i8, ptr %1142, i32 -2
  %1165 = load i64, ptr %1164, align 1
  %1166 = mul i64 %1165, -3523014627193847808
  %1167 = lshr i64 %1166, %53
  %1168 = trunc i64 %1167 to i32
  br label %1200

1169:                                             ; preds = %1144
  %1170 = load i64, ptr %1146, align 1
  %1171 = mul i64 %1170, -3523014627193167104
  %1172 = lshr i64 %1171, %53
  %1173 = trunc i64 %1172 to i32
  %1174 = getelementptr i32, ptr %9, i32 %1173
  store i32 %1145, ptr %1174, align 4
  %1175 = getelementptr i8, ptr %1142, i32 -2
  %1176 = load i64, ptr %1175, align 1
  %1177 = mul i64 %1176, -3523014627193167104
  %1178 = lshr i64 %1177, %53
  %1179 = trunc i64 %1178 to i32
  br label %1200

1180:                                             ; preds = %1144
  %1181 = load i64, ptr %1146, align 1
  %1182 = mul i64 %1181, -3523014627327384477
  %1183 = lshr i64 %1182, %53
  %1184 = trunc i64 %1183 to i32
  %1185 = getelementptr i32, ptr %9, i32 %1184
  store i32 %1145, ptr %1185, align 4
  %1186 = getelementptr i8, ptr %1142, i32 -2
  %1187 = load i64, ptr %1186, align 1
  %1188 = mul i64 %1187, -3523014627327384477
  %1189 = lshr i64 %1188, %53
  %1190 = trunc i64 %1189 to i32
  br label %1200

1191:                                             ; preds = %1144
  %1192 = load i32, ptr %1146, align 1
  %1193 = mul i32 %1192, -1640531535
  %1194 = lshr i32 %1193, %54
  %1195 = getelementptr i32, ptr %9, i32 %1194
  store i32 %1145, ptr %1195, align 4
  %1196 = getelementptr i8, ptr %1142, i32 -2
  %1197 = load i32, ptr %1196, align 1
  %1198 = mul i32 %1197, -1640531535
  %1199 = lshr i32 %1198, %54
  br label %1200

1200:                                             ; preds = %1191, %1180, %1169, %1158, %1147
  %1201 = phi ptr [ %1196, %1191 ], [ %1175, %1169 ], [ %1164, %1158 ], [ %1153, %1147 ], [ %1186, %1180 ]
  %1202 = phi i32 [ %1199, %1191 ], [ %1179, %1169 ], [ %1168, %1158 ], [ %1157, %1147 ], [ %1190, %1180 ]
  %1203 = ptrtoint ptr %1201 to i32
  %1204 = sub i32 %1203, %22
  %1205 = getelementptr i32, ptr %9, i32 %1202
  store i32 %1204, ptr %1205, align 4
  br label %1206

1206:                                             ; preds = %1402, %1200
  %1207 = phi ptr [ %1405, %1402 ], [ %1142, %1200 ]
  %1208 = phi i32 [ %1209, %1402 ], [ %1141, %1200 ]
  %1209 = phi i32 [ %1208, %1402 ], [ %1140, %1200 ]
  %1210 = ptrtoint ptr %1207 to i32
  %1211 = sub i32 %1210, %22
  %1212 = sub i32 %1211, %1208
  %1213 = icmp ult i32 %1212, %40
  %1214 = select i1 %1213, ptr %20, ptr %18
  %1215 = getelementptr i8, ptr %1214, i32 %1212
  %1216 = sub i32 %55, %1212
  %1217 = icmp ugt i32 %1216, 2
  %1218 = icmp ugt i32 %1212, %36
  %1219 = and i1 %1218, %1217
  br i1 %1219, label %1220, label %1407

1220:                                             ; preds = %1206
  %1221 = load i32, ptr %1215, align 1
  %1222 = load i32, ptr %1207, align 1
  %1223 = icmp eq i32 %1221, %1222
  br i1 %1223, label %1224, label %1407

1224:                                             ; preds = %1220
  %1225 = select i1 %1213, ptr %42, ptr %43
  %1226 = getelementptr i8, ptr %1207, i32 4
  %1227 = getelementptr i8, ptr %1215, i32 4
  %1228 = ptrtoint ptr %1225 to i32
  %1229 = ptrtoint ptr %1227 to i32
  %1230 = sub i32 %1228, %1229
  %1231 = getelementptr i8, ptr %1226, i32 %1230
  %1232 = icmp ult ptr %1231, %43
  %1233 = select i1 %1232, ptr %1231, ptr %43
  %1234 = getelementptr i8, ptr %1233, i32 -3
  %1235 = icmp ugt ptr %1234, %1226
  br i1 %1235, label %1236, label %1262

1236:                                             ; preds = %1224
  %1237 = load i32, ptr %1227, align 1
  %1238 = load i32, ptr %1226, align 1
  %1239 = xor i32 %1238, %1237
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1244, label %1241

1241:                                             ; preds = %1236
  %1242 = tail call i32 @llvm.cttz.i32(i32 %1239, i1 true) #4, !range !8
  %1243 = lshr i32 %1242, 3
  br label %1289

1244:                                             ; preds = %1250, %1236
  %1245 = phi ptr [ %1248, %1250 ], [ %1226, %1236 ]
  %1246 = phi ptr [ %1247, %1250 ], [ %1227, %1236 ]
  %1247 = getelementptr i8, ptr %1246, i32 4
  %1248 = getelementptr i8, ptr %1245, i32 4
  %1249 = icmp ult ptr %1248, %1234
  br i1 %1249, label %1250, label %1262

1250:                                             ; preds = %1244
  %1251 = load i32, ptr %1247, align 1
  %1252 = load i32, ptr %1248, align 1
  %1253 = xor i32 %1252, %1251
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1244, label %1255

1255:                                             ; preds = %1250
  %1256 = tail call i32 @llvm.cttz.i32(i32 %1253, i1 true) #4, !range !8
  %1257 = lshr i32 %1256, 3
  %1258 = getelementptr i8, ptr %1248, i32 %1257
  %1259 = ptrtoint ptr %1258 to i32
  %1260 = ptrtoint ptr %1226 to i32
  %1261 = sub i32 %1259, %1260
  br label %1289

1262:                                             ; preds = %1244, %1224
  %1263 = phi ptr [ %1226, %1224 ], [ %1248, %1244 ]
  %1264 = phi ptr [ %1227, %1224 ], [ %1247, %1244 ]
  %1265 = getelementptr i8, ptr %1233, i32 -1
  %1266 = icmp ult ptr %1263, %1265
  br i1 %1266, label %1267, label %1274

1267:                                             ; preds = %1262
  %1268 = load i16, ptr %1264, align 1
  %1269 = load i16, ptr %1263, align 1
  %1270 = icmp eq i16 %1268, %1269
  br i1 %1270, label %1271, label %1274

1271:                                             ; preds = %1267
  %1272 = getelementptr i8, ptr %1263, i32 2
  %1273 = getelementptr i8, ptr %1264, i32 2
  br label %1274

1274:                                             ; preds = %1271, %1267, %1262
  %1275 = phi ptr [ %1272, %1271 ], [ %1263, %1267 ], [ %1263, %1262 ]
  %1276 = phi ptr [ %1273, %1271 ], [ %1264, %1267 ], [ %1264, %1262 ]
  %1277 = icmp ult ptr %1275, %1233
  br i1 %1277, label %1278, label %1284

1278:                                             ; preds = %1274
  %1279 = load i8, ptr %1276, align 1
  %1280 = load i8, ptr %1275, align 1
  %1281 = icmp eq i8 %1279, %1280
  %1282 = zext i1 %1281 to i32
  %1283 = getelementptr i8, ptr %1275, i32 %1282
  br label %1284

1284:                                             ; preds = %1278, %1274
  %1285 = phi ptr [ %1275, %1274 ], [ %1283, %1278 ]
  %1286 = ptrtoint ptr %1285 to i32
  %1287 = ptrtoint ptr %1226 to i32
  %1288 = sub i32 %1286, %1287
  br label %1289

1289:                                             ; preds = %1284, %1255, %1241
  %1290 = phi i32 [ %1288, %1284 ], [ %1243, %1241 ], [ %1261, %1255 ]
  %1291 = getelementptr i8, ptr %1227, i32 %1290
  %1292 = icmp eq ptr %1291, %1225
  br i1 %1292, label %1293, label %1351

1293:                                             ; preds = %1289
  %1294 = getelementptr i8, ptr %1226, i32 %1290
  %1295 = icmp ugt ptr %56, %1294
  br i1 %1295, label %1296, label %1322

1296:                                             ; preds = %1293
  %1297 = load i32, ptr %41, align 1
  %1298 = load i32, ptr %1294, align 1
  %1299 = xor i32 %1298, %1297
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1304, label %1301

1301:                                             ; preds = %1296
  %1302 = tail call i32 @llvm.cttz.i32(i32 %1299, i1 true) #4, !range !8
  %1303 = lshr i32 %1302, 3
  br label %1348

1304:                                             ; preds = %1310, %1296
  %1305 = phi ptr [ %1308, %1310 ], [ %1294, %1296 ]
  %1306 = phi ptr [ %1307, %1310 ], [ %41, %1296 ]
  %1307 = getelementptr i8, ptr %1306, i32 4
  %1308 = getelementptr i8, ptr %1305, i32 4
  %1309 = icmp ult ptr %1308, %56
  br i1 %1309, label %1310, label %1322

1310:                                             ; preds = %1304
  %1311 = load i32, ptr %1307, align 1
  %1312 = load i32, ptr %1308, align 1
  %1313 = xor i32 %1312, %1311
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1304, label %1315

1315:                                             ; preds = %1310
  %1316 = tail call i32 @llvm.cttz.i32(i32 %1313, i1 true) #4, !range !8
  %1317 = lshr i32 %1316, 3
  %1318 = getelementptr i8, ptr %1308, i32 %1317
  %1319 = ptrtoint ptr %1318 to i32
  %1320 = ptrtoint ptr %1294 to i32
  %1321 = sub i32 %1319, %1320
  br label %1348

1322:                                             ; preds = %1304, %1293
  %1323 = phi ptr [ %1294, %1293 ], [ %1308, %1304 ]
  %1324 = phi ptr [ %41, %1293 ], [ %1307, %1304 ]
  %1325 = icmp ult ptr %1323, %57
  br i1 %1325, label %1326, label %1333

1326:                                             ; preds = %1322
  %1327 = load i16, ptr %1324, align 1
  %1328 = load i16, ptr %1323, align 1
  %1329 = icmp eq i16 %1327, %1328
  br i1 %1329, label %1330, label %1333

1330:                                             ; preds = %1326
  %1331 = getelementptr i8, ptr %1323, i32 2
  %1332 = getelementptr i8, ptr %1324, i32 2
  br label %1333

1333:                                             ; preds = %1330, %1326, %1322
  %1334 = phi ptr [ %1331, %1330 ], [ %1323, %1326 ], [ %1323, %1322 ]
  %1335 = phi ptr [ %1332, %1330 ], [ %1324, %1326 ], [ %1324, %1322 ]
  %1336 = icmp ult ptr %1334, %43
  br i1 %1336, label %1337, label %1343

1337:                                             ; preds = %1333
  %1338 = load i8, ptr %1335, align 1
  %1339 = load i8, ptr %1334, align 1
  %1340 = icmp eq i8 %1338, %1339
  %1341 = zext i1 %1340 to i32
  %1342 = getelementptr i8, ptr %1334, i32 %1341
  br label %1343

1343:                                             ; preds = %1337, %1333
  %1344 = phi ptr [ %1334, %1333 ], [ %1342, %1337 ]
  %1345 = ptrtoint ptr %1344 to i32
  %1346 = ptrtoint ptr %1294 to i32
  %1347 = sub i32 %1345, %1346
  br label %1348

1348:                                             ; preds = %1343, %1315, %1301
  %1349 = phi i32 [ %1347, %1343 ], [ %1303, %1301 ], [ %1321, %1315 ]
  %1350 = add i32 %1349, %1290
  br label %1351

1351:                                             ; preds = %1348, %1289
  %1352 = phi i32 [ %1350, %1348 ], [ %1290, %1289 ]
  %1353 = add i32 %1352, 4
  %1354 = add i32 %1352, 1
  %1355 = icmp ugt ptr %1207, %58
  br i1 %1355, label %1358, label %1356

1356:                                             ; preds = %1351
  %1357 = load ptr, ptr %59, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1357, ptr noundef align 1 dereferenceable(16) %1207, i32 16, i1 false) #4
  br label %1358

1358:                                             ; preds = %1356, %1351
  %1359 = load ptr, ptr %62, align 4
  %1360 = getelementptr inbounds %struct.seqDef_s, ptr %1359, i32 0, i32 1
  store i16 0, ptr %1360, align 4
  %1361 = load ptr, ptr %62, align 4
  store i32 1, ptr %1361, align 4
  %1362 = icmp ugt i32 %1354, 65535
  br i1 %1362, label %1365, label %1363

1363:                                             ; preds = %1358
  %1364 = load ptr, ptr %62, align 4
  br label %1372

1365:                                             ; preds = %1358
  store i32 2, ptr %61, align 4
  %1366 = load ptr, ptr %62, align 4
  %1367 = load ptr, ptr %1, align 4
  %1368 = ptrtoint ptr %1366 to i32
  %1369 = ptrtoint ptr %1367 to i32
  %1370 = sub i32 %1368, %1369
  %1371 = ashr exact i32 %1370, 3
  store i32 %1371, ptr %63, align 4
  br label %1372

1372:                                             ; preds = %1365, %1363
  %1373 = phi ptr [ %1364, %1363 ], [ %1366, %1365 ]
  %1374 = trunc i32 %1354 to i16
  %1375 = getelementptr inbounds %struct.seqDef_s, ptr %1373, i32 0, i32 2
  store i16 %1374, ptr %1375, align 2
  %1376 = load ptr, ptr %62, align 4
  %1377 = getelementptr %struct.seqDef_s, ptr %1376, i32 1
  store ptr %1377, ptr %62, align 4
  switch i32 %5, label %1378 [
    i32 8, label %1397
    i32 5, label %1382
    i32 6, label %1387
    i32 7, label %1392
  ]

1378:                                             ; preds = %1372
  %1379 = load i32, ptr %1207, align 1
  %1380 = mul i32 %1379, -1640531535
  %1381 = lshr i32 %1380, %54
  br label %1402

1382:                                             ; preds = %1372
  %1383 = load i64, ptr %1207, align 1
  %1384 = mul i64 %1383, -3523014627271114752
  %1385 = lshr i64 %1384, %53
  %1386 = trunc i64 %1385 to i32
  br label %1402

1387:                                             ; preds = %1372
  %1388 = load i64, ptr %1207, align 1
  %1389 = mul i64 %1388, -3523014627193847808
  %1390 = lshr i64 %1389, %53
  %1391 = trunc i64 %1390 to i32
  br label %1402

1392:                                             ; preds = %1372
  %1393 = load i64, ptr %1207, align 1
  %1394 = mul i64 %1393, -3523014627193167104
  %1395 = lshr i64 %1394, %53
  %1396 = trunc i64 %1395 to i32
  br label %1402

1397:                                             ; preds = %1372
  %1398 = load i64, ptr %1207, align 1
  %1399 = mul i64 %1398, -3523014627327384477
  %1400 = lshr i64 %1399, %53
  %1401 = trunc i64 %1400 to i32
  br label %1402

1402:                                             ; preds = %1397, %1392, %1387, %1382, %1378
  %1403 = phi i32 [ %1381, %1378 ], [ %1396, %1392 ], [ %1391, %1387 ], [ %1386, %1382 ], [ %1401, %1397 ]
  %1404 = getelementptr i32, ptr %9, i32 %1403
  store i32 %1211, ptr %1404, align 4
  %1405 = getelementptr i8, ptr %1207, i32 %1353
  %1406 = icmp ugt ptr %1405, %44
  br i1 %1406, label %1407, label %1206

1407:                                             ; preds = %1402, %1220, %1206, %1139, %883
  %1408 = phi i32 [ %606, %883 ], [ %1140, %1139 ], [ %1208, %1402 ], [ %1209, %1220 ], [ %1209, %1206 ]
  %1409 = phi i32 [ %605, %883 ], [ %1141, %1139 ], [ %1209, %1402 ], [ %1208, %1220 ], [ %1208, %1206 ]
  %1410 = phi ptr [ %604, %883 ], [ %1142, %1139 ], [ %1405, %1402 ], [ %1207, %1220 ], [ %1207, %1206 ]
  %1411 = phi ptr [ %888, %883 ], [ %1142, %1139 ], [ %1405, %1402 ], [ %1207, %1220 ], [ %1207, %1206 ]
  %1412 = icmp ult ptr %1411, %44
  br i1 %1412, label %602, label %1413

1413:                                             ; preds = %1407
  %1414 = ptrtoint ptr %1410 to i32
  br label %1415

1415:                                             ; preds = %1413, %49
  %1416 = phi i32 [ %1414, %1413 ], [ %21, %49 ]
  %1417 = phi i32 [ %1408, %1413 ], [ %45, %49 ]
  %1418 = phi i32 [ %1409, %1413 ], [ %47, %49 ]
  store i32 %1417, ptr %2, align 4
  br label %1419

1419:                                             ; preds = %1415, %592
  %1420 = phi i32 [ %1418, %1415 ], [ %601, %592 ]
  %1421 = phi i32 [ %1416, %1415 ], [ %593, %592 ]
  store i32 %1420, ptr %46, align 4
  %1422 = ptrtoint ptr %43 to i32
  %1423 = sub i32 %1422, %1421
  ret i32 %1423
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
