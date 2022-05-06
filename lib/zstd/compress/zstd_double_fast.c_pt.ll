; ModuleID = '/llk/IR/lib/zstd/compress/zstd_double_fast.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_double_fast.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.ZSTD_matchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, ptr, ptr, ptr, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32 }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.seqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.seqDef_s = type { i32, i16, i16 }

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ZSTD_fillDoubleHashTable(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr i8, ptr %1, i32 -8
  %16 = getelementptr i8, ptr %14, i32 2
  %17 = icmp ugt ptr %16, %15
  br i1 %17, label %95, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = ptrtoint ptr %11 to i32
  %24 = sub i32 64, %20
  %25 = zext i32 %24 to i64
  %26 = sub i32 32, %20
  %27 = sub i32 64, %22
  %28 = zext i32 %27 to i64
  %29 = icmp eq i32 %2, 0
  br label %30

30:                                               ; preds = %91, %18
  %31 = phi ptr [ %14, %18 ], [ %92, %91 ]
  %32 = ptrtoint ptr %31 to i32
  %33 = sub i32 %32, %23
  switch i32 %7, label %54 [
    i32 8, label %49
    i32 5, label %44
    i32 6, label %39
    i32 7, label %34
  ]

34:                                               ; preds = %30
  %35 = load i64, ptr %31, align 1
  %36 = mul i64 %35, -3523014627193167104
  %37 = lshr i64 %36, %25
  %38 = trunc i64 %37 to i32
  br label %59

39:                                               ; preds = %30
  %40 = load i64, ptr %31, align 1
  %41 = mul i64 %40, -3523014627193847808
  %42 = lshr i64 %41, %25
  %43 = trunc i64 %42 to i32
  br label %59

44:                                               ; preds = %30
  %45 = load i64, ptr %31, align 1
  %46 = mul i64 %45, -3523014627271114752
  %47 = lshr i64 %46, %25
  %48 = trunc i64 %47 to i32
  br label %59

49:                                               ; preds = %30
  %50 = load i64, ptr %31, align 1
  %51 = mul i64 %50, -3523014627327384477
  %52 = lshr i64 %51, %25
  %53 = trunc i64 %52 to i32
  br label %59

54:                                               ; preds = %30
  %55 = load i32, ptr %31, align 1
  %56 = mul i32 %55, -1640531535
  %57 = lshr i32 %56, %26
  %58 = load i64, ptr %31, align 1
  br label %59

59:                                               ; preds = %54, %49, %44, %39, %34
  %60 = phi i64 [ %58, %54 ], [ %35, %34 ], [ %40, %39 ], [ %45, %44 ], [ %50, %49 ]
  %61 = phi i32 [ %57, %54 ], [ %38, %34 ], [ %43, %39 ], [ %48, %44 ], [ %53, %49 ]
  %62 = mul i64 %60, -3523014627327384477
  %63 = lshr i64 %62, %28
  %64 = trunc i64 %63 to i32
  %65 = getelementptr i32, ptr %9, i32 %61
  store i32 %33, ptr %65, align 4
  %66 = getelementptr i32, ptr %5, i32 %64
  store i32 %33, ptr %66, align 4
  br i1 %29, label %91, label %67

67:                                               ; preds = %59
  %68 = getelementptr i8, ptr %31, i32 1
  %69 = load i64, ptr %68, align 1
  %70 = mul i64 %69, -3523014627327384477
  %71 = lshr i64 %70, %28
  %72 = trunc i64 %71 to i32
  %73 = getelementptr i32, ptr %5, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = add i32 %33, 1
  %78 = getelementptr i32, ptr %5, i32 %72
  store i32 %77, ptr %78, align 4
  br label %79

79:                                               ; preds = %76, %67
  %80 = getelementptr i8, ptr %31, i32 2
  %81 = load i64, ptr %80, align 1
  %82 = mul i64 %81, -3523014627327384477
  %83 = lshr i64 %82, %28
  %84 = trunc i64 %83 to i32
  %85 = getelementptr i32, ptr %5, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = add i32 %33, 2
  %90 = getelementptr i32, ptr %5, i32 %84
  store i32 %89, ptr %90, align 4
  br label %91

91:                                               ; preds = %88, %79, %59
  %92 = getelementptr i8, ptr %31, i32 3
  %93 = getelementptr i8, ptr %31, i32 5
  %94 = icmp ugt ptr %93, %15
  br i1 %94, label %95, label %30

95:                                               ; preds = %91, %3
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_doubleFast(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 4
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 7, label %2304
    i32 5, label %770
    i32 6, label %1537
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %10 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %3 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  %19 = add i32 %18, %4
  %20 = load i32, ptr %9, align 4
  %21 = shl nuw i32 1, %20
  %22 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %19, %23
  %25 = icmp ugt i32 %24, %21
  %26 = sub i32 %19, %21
  %27 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i1 %25, i1 false
  %31 = select i1 %30, i32 %26, i32 %23
  %32 = getelementptr i8, ptr %15, i32 %31
  %33 = getelementptr i8, ptr %3, i32 %4
  %34 = getelementptr i8, ptr %33, i32 -8
  %35 = load i32, ptr %2, align 4
  %36 = getelementptr i32, ptr %2, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq ptr %32, %3
  %39 = zext i1 %38 to i32
  %40 = getelementptr i8, ptr %3, i32 %39
  %41 = ptrtoint ptr %40 to i32
  %42 = sub i32 %41, %17
  %43 = sub i32 %42, %23
  %44 = icmp ugt i32 %43, %21
  %45 = sub i32 %42, %21
  %46 = select i1 %29, i1 %44, i1 false
  %47 = select i1 %46, i32 %45, i32 %23
  %48 = sub i32 %42, %47
  %49 = icmp ugt i32 %37, %48
  %50 = select i1 %49, i32 0, i32 %37
  %51 = select i1 %49, i32 %37, i32 0
  %52 = icmp ugt i32 %35, %48
  %53 = select i1 %52, i32 %35, i32 %51
  %54 = select i1 %52, i32 0, i32 %35
  %55 = icmp ult ptr %40, %34
  br i1 %55, label %56, label %762

56:                                               ; preds = %8
  %57 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 64, %60
  %62 = zext i32 %61 to i64
  %63 = sub i32 32, %58
  %64 = getelementptr i8, ptr %33, i32 -3
  %65 = getelementptr i8, ptr %33, i32 -1
  %66 = getelementptr i8, ptr %33, i32 -32
  %67 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %66 to i32
  %69 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %70 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %71 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  br label %72

72:                                               ; preds = %754, %56
  %73 = phi ptr [ %40, %56 ], [ %758, %754 ]
  %74 = phi ptr [ %3, %56 ], [ %757, %754 ]
  %75 = phi i32 [ %54, %56 ], [ %756, %754 ]
  %76 = phi i32 [ %50, %56 ], [ %755, %754 ]
  %77 = load i64, ptr %73, align 1
  %78 = mul i64 %77, -3523014627327384477
  %79 = lshr i64 %78, %62
  %80 = trunc i64 %79 to i32
  %81 = trunc i64 %77 to i32
  %82 = mul i32 %81, -1640531535
  %83 = lshr i32 %82, %63
  %84 = ptrtoint ptr %73 to i32
  %85 = sub i32 %84, %17
  %86 = getelementptr i32, ptr %11, i32 %80
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i32, ptr %13, i32 %83
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr i8, ptr %15, i32 %87
  %91 = getelementptr i8, ptr %15, i32 %89
  %92 = add i32 %85, 1
  store i32 %85, ptr %88, align 4
  store i32 %85, ptr %86, align 4
  %93 = icmp ne i32 %75, 0
  %94 = getelementptr i8, ptr %73, i32 1
  %95 = sub i32 0, %75
  %96 = getelementptr i8, ptr %94, i32 %95
  %97 = load i32, ptr %96, align 1
  %98 = load i32, ptr %94, align 1
  %99 = icmp eq i32 %97, %98
  %100 = and i1 %93, %99
  br i1 %100, label %101, label %246

101:                                              ; preds = %72
  %102 = getelementptr i8, ptr %73, i32 5
  %103 = getelementptr i8, ptr %102, i32 %95
  %104 = icmp ugt ptr %64, %102
  br i1 %104, label %105, label %131

105:                                              ; preds = %101
  %106 = load i32, ptr %103, align 1
  %107 = load i32, ptr %102, align 1
  %108 = xor i32 %107, %106
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = tail call i32 @llvm.cttz.i32(i32 %108, i1 true) #4, !range !8
  %112 = lshr i32 %111, 3
  br label %157

113:                                              ; preds = %119, %105
  %114 = phi ptr [ %117, %119 ], [ %102, %105 ]
  %115 = phi ptr [ %116, %119 ], [ %103, %105 ]
  %116 = getelementptr i8, ptr %115, i32 4
  %117 = getelementptr i8, ptr %114, i32 4
  %118 = icmp ult ptr %117, %64
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load i32, ptr %116, align 1
  %121 = load i32, ptr %117, align 1
  %122 = xor i32 %121, %120
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %113, label %124

124:                                              ; preds = %119
  %125 = tail call i32 @llvm.cttz.i32(i32 %122, i1 true) #4, !range !8
  %126 = lshr i32 %125, 3
  %127 = getelementptr i8, ptr %117, i32 %126
  %128 = ptrtoint ptr %127 to i32
  %129 = ptrtoint ptr %102 to i32
  %130 = sub i32 %128, %129
  br label %157

131:                                              ; preds = %113, %101
  %132 = phi ptr [ %102, %101 ], [ %117, %113 ]
  %133 = phi ptr [ %103, %101 ], [ %116, %113 ]
  %134 = icmp ult ptr %132, %65
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i16, ptr %133, align 1
  %137 = load i16, ptr %132, align 1
  %138 = icmp eq i16 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = getelementptr i8, ptr %132, i32 2
  %141 = getelementptr i8, ptr %133, i32 2
  br label %142

142:                                              ; preds = %139, %135, %131
  %143 = phi ptr [ %140, %139 ], [ %132, %135 ], [ %132, %131 ]
  %144 = phi ptr [ %141, %139 ], [ %133, %135 ], [ %133, %131 ]
  %145 = icmp ult ptr %143, %33
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load i8, ptr %144, align 1
  %148 = load i8, ptr %143, align 1
  %149 = icmp eq i8 %147, %148
  %150 = zext i1 %149 to i32
  %151 = getelementptr i8, ptr %143, i32 %150
  br label %152

152:                                              ; preds = %146, %142
  %153 = phi ptr [ %143, %142 ], [ %151, %146 ]
  %154 = ptrtoint ptr %153 to i32
  %155 = ptrtoint ptr %102 to i32
  %156 = sub i32 %154, %155
  br label %157

157:                                              ; preds = %152, %124, %110
  %158 = phi i32 [ %156, %152 ], [ %112, %110 ], [ %130, %124 ]
  %159 = add i32 %158, 4
  %160 = ptrtoint ptr %94 to i32
  %161 = ptrtoint ptr %74 to i32
  %162 = sub i32 %160, %161
  %163 = add i32 %158, 1
  %164 = getelementptr i8, ptr %74, i32 %162
  %165 = icmp ugt ptr %164, %66
  %166 = load ptr, ptr %67, align 4
  br i1 %165, label %188, label %167

167:                                              ; preds = %157
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %166, ptr noundef align 1 dereferenceable(16) %74, i32 16, i1 false) #4
  %168 = icmp ugt i32 %162, 16
  %169 = load ptr, ptr %67, align 4
  br i1 %168, label %172, label %170

170:                                              ; preds = %167
  %171 = getelementptr i8, ptr %169, i32 %162
  store ptr %171, ptr %67, align 4
  br label %231

172:                                              ; preds = %167
  %173 = getelementptr i8, ptr %169, i32 16
  %174 = getelementptr i8, ptr %74, i32 16
  %175 = add i32 %162, -16
  %176 = getelementptr i8, ptr %169, i32 %162
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %173, ptr noundef align 1 dereferenceable(16) %174, i32 16, i1 false) #4
  %177 = icmp slt i32 %175, 17
  br i1 %177, label %220, label %178

178:                                              ; preds = %172
  %179 = getelementptr i8, ptr %169, i32 32
  br label %180

180:                                              ; preds = %180, %178
  %181 = phi ptr [ %174, %178 ], [ %185, %180 ]
  %182 = phi ptr [ %179, %178 ], [ %186, %180 ]
  %183 = getelementptr i8, ptr %181, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %182, ptr noundef align 1 dereferenceable(16) %183, i32 16, i1 false) #4
  %184 = getelementptr i8, ptr %182, i32 16
  %185 = getelementptr i8, ptr %181, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %184, ptr noundef align 1 dereferenceable(16) %185, i32 16, i1 false) #4
  %186 = getelementptr i8, ptr %182, i32 32
  %187 = icmp ult ptr %186, %176
  br i1 %187, label %180, label %220

188:                                              ; preds = %157
  %189 = ptrtoint ptr %164 to i32
  %190 = icmp ult ptr %66, %74
  br i1 %190, label %205, label %191

191:                                              ; preds = %188
  %192 = sub i32 %68, %161
  %193 = getelementptr i8, ptr %166, i32 %192
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %166, ptr noundef align 1 dereferenceable(16) %74, i32 16, i1 false) #4
  %194 = icmp slt i32 %192, 17
  br i1 %194, label %205, label %195

195:                                              ; preds = %191
  %196 = getelementptr i8, ptr %166, i32 16
  br label %197

197:                                              ; preds = %197, %195
  %198 = phi ptr [ %74, %195 ], [ %202, %197 ]
  %199 = phi ptr [ %196, %195 ], [ %203, %197 ]
  %200 = getelementptr i8, ptr %198, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %199, ptr noundef align 1 dereferenceable(16) %200, i32 16, i1 false) #4
  %201 = getelementptr i8, ptr %199, i32 16
  %202 = getelementptr i8, ptr %198, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %201, ptr noundef align 1 dereferenceable(16) %202, i32 16, i1 false) #4
  %203 = getelementptr i8, ptr %199, i32 32
  %204 = icmp ult ptr %203, %193
  br i1 %204, label %197, label %205

205:                                              ; preds = %197, %191, %188
  %206 = phi ptr [ %66, %191 ], [ %74, %188 ], [ %66, %197 ]
  %207 = phi ptr [ %193, %191 ], [ %166, %188 ], [ %193, %197 ]
  %208 = icmp ult ptr %206, %164
  br i1 %208, label %209, label %220

209:                                              ; preds = %205
  %210 = ptrtoint ptr %206 to i32
  %211 = sub i32 %189, %210
  %212 = getelementptr i8, ptr %206, i32 %211
  br label %213

213:                                              ; preds = %213, %209
  %214 = phi ptr [ %218, %213 ], [ %207, %209 ]
  %215 = phi ptr [ %216, %213 ], [ %206, %209 ]
  %216 = getelementptr i8, ptr %215, i32 1
  %217 = load i8, ptr %215, align 1
  %218 = getelementptr i8, ptr %214, i32 1
  store i8 %217, ptr %214, align 1
  %219 = icmp eq ptr %216, %212
  br i1 %219, label %220, label %213

220:                                              ; preds = %213, %205, %180, %172
  %221 = load ptr, ptr %67, align 4
  %222 = getelementptr i8, ptr %221, i32 %162
  store ptr %222, ptr %67, align 4
  %223 = icmp ugt i32 %162, 65535
  br i1 %223, label %224, label %231

224:                                              ; preds = %220
  store i32 1, ptr %69, align 4
  %225 = load ptr, ptr %70, align 4
  %226 = load ptr, ptr %1, align 4
  %227 = ptrtoint ptr %225 to i32
  %228 = ptrtoint ptr %226 to i32
  %229 = sub i32 %227, %228
  %230 = ashr exact i32 %229, 3
  store i32 %230, ptr %71, align 4
  br label %231

231:                                              ; preds = %224, %220, %170
  %232 = trunc i32 %162 to i16
  %233 = load ptr, ptr %70, align 4
  %234 = getelementptr inbounds %struct.seqDef_s, ptr %233, i32 0, i32 1
  store i16 %232, ptr %234, align 4
  %235 = load ptr, ptr %70, align 4
  store i32 1, ptr %235, align 4
  %236 = icmp ugt i32 %163, 65535
  br i1 %236, label %239, label %237

237:                                              ; preds = %231
  %238 = load ptr, ptr %70, align 4
  br label %608

239:                                              ; preds = %231
  store i32 2, ptr %69, align 4
  %240 = load ptr, ptr %70, align 4
  %241 = load ptr, ptr %1, align 4
  %242 = ptrtoint ptr %240 to i32
  %243 = ptrtoint ptr %241 to i32
  %244 = sub i32 %242, %243
  %245 = ashr exact i32 %244, 3
  store i32 %245, ptr %71, align 4
  br label %608

246:                                              ; preds = %72
  %247 = icmp ugt i32 %87, %31
  br i1 %247, label %248, label %330

248:                                              ; preds = %246
  %249 = load i64, ptr %90, align 1
  %250 = load i64, ptr %73, align 1
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %334

252:                                              ; preds = %248
  %253 = getelementptr i8, ptr %73, i32 8
  %254 = getelementptr i8, ptr %90, i32 8
  %255 = icmp ugt ptr %64, %253
  br i1 %255, label %256, label %282

256:                                              ; preds = %252
  %257 = load i32, ptr %254, align 1
  %258 = load i32, ptr %253, align 1
  %259 = xor i32 %258, %257
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %256
  %262 = tail call i32 @llvm.cttz.i32(i32 %259, i1 true) #4, !range !8
  %263 = lshr i32 %262, 3
  br label %308

264:                                              ; preds = %270, %256
  %265 = phi ptr [ %268, %270 ], [ %253, %256 ]
  %266 = phi ptr [ %267, %270 ], [ %254, %256 ]
  %267 = getelementptr i8, ptr %266, i32 4
  %268 = getelementptr i8, ptr %265, i32 4
  %269 = icmp ult ptr %268, %64
  br i1 %269, label %270, label %282

270:                                              ; preds = %264
  %271 = load i32, ptr %267, align 1
  %272 = load i32, ptr %268, align 1
  %273 = xor i32 %272, %271
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %264, label %275

275:                                              ; preds = %270
  %276 = tail call i32 @llvm.cttz.i32(i32 %273, i1 true) #4, !range !8
  %277 = lshr i32 %276, 3
  %278 = getelementptr i8, ptr %268, i32 %277
  %279 = ptrtoint ptr %278 to i32
  %280 = ptrtoint ptr %253 to i32
  %281 = sub i32 %279, %280
  br label %308

282:                                              ; preds = %264, %252
  %283 = phi ptr [ %253, %252 ], [ %268, %264 ]
  %284 = phi ptr [ %254, %252 ], [ %267, %264 ]
  %285 = icmp ult ptr %283, %65
  br i1 %285, label %286, label %293

286:                                              ; preds = %282
  %287 = load i16, ptr %284, align 1
  %288 = load i16, ptr %283, align 1
  %289 = icmp eq i16 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = getelementptr i8, ptr %283, i32 2
  %292 = getelementptr i8, ptr %284, i32 2
  br label %293

293:                                              ; preds = %290, %286, %282
  %294 = phi ptr [ %291, %290 ], [ %283, %286 ], [ %283, %282 ]
  %295 = phi ptr [ %292, %290 ], [ %284, %286 ], [ %284, %282 ]
  %296 = icmp ult ptr %294, %33
  br i1 %296, label %297, label %303

297:                                              ; preds = %293
  %298 = load i8, ptr %295, align 1
  %299 = load i8, ptr %294, align 1
  %300 = icmp eq i8 %298, %299
  %301 = zext i1 %300 to i32
  %302 = getelementptr i8, ptr %294, i32 %301
  br label %303

303:                                              ; preds = %297, %293
  %304 = phi ptr [ %294, %293 ], [ %302, %297 ]
  %305 = ptrtoint ptr %304 to i32
  %306 = ptrtoint ptr %253 to i32
  %307 = sub i32 %305, %306
  br label %308

308:                                              ; preds = %303, %275, %261
  %309 = phi i32 [ %307, %303 ], [ %263, %261 ], [ %281, %275 ]
  %310 = add i32 %309, 8
  %311 = ptrtoint ptr %90 to i32
  %312 = sub i32 %84, %311
  %313 = icmp ugt ptr %73, %74
  %314 = icmp ugt ptr %90, %32
  %315 = and i1 %313, %314
  br i1 %315, label %316, label %517

316:                                              ; preds = %325, %308
  %317 = phi ptr [ %320, %325 ], [ %73, %308 ]
  %318 = phi ptr [ %322, %325 ], [ %90, %308 ]
  %319 = phi i32 [ %326, %325 ], [ %310, %308 ]
  %320 = getelementptr i8, ptr %317, i32 -1
  %321 = load i8, ptr %320, align 1
  %322 = getelementptr i8, ptr %318, i32 -1
  %323 = load i8, ptr %322, align 1
  %324 = icmp eq i8 %321, %323
  br i1 %324, label %325, label %517

325:                                              ; preds = %316
  %326 = add i32 %319, 1
  %327 = icmp ugt ptr %320, %74
  %328 = icmp ugt ptr %322, %32
  %329 = and i1 %327, %328
  br i1 %329, label %316, label %517

330:                                              ; preds = %246
  %331 = icmp ugt i32 %89, %31
  br i1 %331, label %332, label %341

332:                                              ; preds = %330
  %333 = load i32, ptr %73, align 1
  br label %337

334:                                              ; preds = %248
  %335 = trunc i64 %250 to i32
  %336 = icmp ugt i32 %89, %31
  br i1 %336, label %337, label %341

337:                                              ; preds = %334, %332
  %338 = phi i32 [ %333, %332 ], [ %335, %334 ]
  %339 = load i32, ptr %91, align 1
  %340 = icmp eq i32 %339, %338
  br i1 %340, label %347, label %341

341:                                              ; preds = %337, %334, %330
  %342 = ptrtoint ptr %74 to i32
  %343 = sub i32 %84, %342
  %344 = ashr i32 %343, 8
  %345 = add nsw i32 %344, 1
  %346 = getelementptr i8, ptr %73, i32 %345
  br label %754

347:                                              ; preds = %337
  %348 = load i64, ptr %94, align 1
  %349 = mul i64 %348, -3523014627327384477
  %350 = lshr i64 %349, %62
  %351 = trunc i64 %350 to i32
  %352 = getelementptr i32, ptr %11, i32 %351
  %353 = load i32, ptr %352, align 4
  %354 = getelementptr i8, ptr %15, i32 %353
  store i32 %92, ptr %352, align 4
  %355 = icmp ugt i32 %353, %31
  br i1 %355, label %356, label %439

356:                                              ; preds = %347
  %357 = load i64, ptr %354, align 1
  %358 = load i64, ptr %94, align 1
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %439

360:                                              ; preds = %356
  %361 = getelementptr i8, ptr %73, i32 9
  %362 = getelementptr i8, ptr %354, i32 8
  %363 = icmp ugt ptr %64, %361
  br i1 %363, label %364, label %390

364:                                              ; preds = %360
  %365 = load i32, ptr %362, align 1
  %366 = load i32, ptr %361, align 1
  %367 = xor i32 %366, %365
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %364
  %370 = tail call i32 @llvm.cttz.i32(i32 %367, i1 true) #4, !range !8
  %371 = lshr i32 %370, 3
  br label %416

372:                                              ; preds = %378, %364
  %373 = phi ptr [ %376, %378 ], [ %361, %364 ]
  %374 = phi ptr [ %375, %378 ], [ %362, %364 ]
  %375 = getelementptr i8, ptr %374, i32 4
  %376 = getelementptr i8, ptr %373, i32 4
  %377 = icmp ult ptr %376, %64
  br i1 %377, label %378, label %390

378:                                              ; preds = %372
  %379 = load i32, ptr %375, align 1
  %380 = load i32, ptr %376, align 1
  %381 = xor i32 %380, %379
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %372, label %383

383:                                              ; preds = %378
  %384 = tail call i32 @llvm.cttz.i32(i32 %381, i1 true) #4, !range !8
  %385 = lshr i32 %384, 3
  %386 = getelementptr i8, ptr %376, i32 %385
  %387 = ptrtoint ptr %386 to i32
  %388 = ptrtoint ptr %361 to i32
  %389 = sub i32 %387, %388
  br label %416

390:                                              ; preds = %372, %360
  %391 = phi ptr [ %361, %360 ], [ %376, %372 ]
  %392 = phi ptr [ %362, %360 ], [ %375, %372 ]
  %393 = icmp ult ptr %391, %65
  br i1 %393, label %394, label %401

394:                                              ; preds = %390
  %395 = load i16, ptr %392, align 1
  %396 = load i16, ptr %391, align 1
  %397 = icmp eq i16 %395, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = getelementptr i8, ptr %391, i32 2
  %400 = getelementptr i8, ptr %392, i32 2
  br label %401

401:                                              ; preds = %398, %394, %390
  %402 = phi ptr [ %399, %398 ], [ %391, %394 ], [ %391, %390 ]
  %403 = phi ptr [ %400, %398 ], [ %392, %394 ], [ %392, %390 ]
  %404 = icmp ult ptr %402, %33
  br i1 %404, label %405, label %411

405:                                              ; preds = %401
  %406 = load i8, ptr %403, align 1
  %407 = load i8, ptr %402, align 1
  %408 = icmp eq i8 %406, %407
  %409 = zext i1 %408 to i32
  %410 = getelementptr i8, ptr %402, i32 %409
  br label %411

411:                                              ; preds = %405, %401
  %412 = phi ptr [ %402, %401 ], [ %410, %405 ]
  %413 = ptrtoint ptr %412 to i32
  %414 = ptrtoint ptr %361 to i32
  %415 = sub i32 %413, %414
  br label %416

416:                                              ; preds = %411, %383, %369
  %417 = phi i32 [ %415, %411 ], [ %371, %369 ], [ %389, %383 ]
  %418 = add i32 %417, 8
  %419 = ptrtoint ptr %94 to i32
  %420 = ptrtoint ptr %354 to i32
  %421 = sub i32 %419, %420
  %422 = icmp ugt ptr %94, %74
  %423 = icmp ugt ptr %354, %32
  %424 = and i1 %422, %423
  br i1 %424, label %425, label %517

425:                                              ; preds = %434, %416
  %426 = phi ptr [ %431, %434 ], [ %354, %416 ]
  %427 = phi ptr [ %429, %434 ], [ %94, %416 ]
  %428 = phi i32 [ %435, %434 ], [ %418, %416 ]
  %429 = getelementptr i8, ptr %427, i32 -1
  %430 = load i8, ptr %429, align 1
  %431 = getelementptr i8, ptr %426, i32 -1
  %432 = load i8, ptr %431, align 1
  %433 = icmp eq i8 %430, %432
  br i1 %433, label %434, label %517

434:                                              ; preds = %425
  %435 = add i32 %428, 1
  %436 = icmp ugt ptr %429, %74
  %437 = icmp ugt ptr %431, %32
  %438 = and i1 %437, %436
  br i1 %438, label %425, label %517

439:                                              ; preds = %356, %347
  %440 = getelementptr i8, ptr %73, i32 4
  %441 = getelementptr i8, ptr %91, i32 4
  %442 = icmp ugt ptr %64, %440
  br i1 %442, label %443, label %469

443:                                              ; preds = %439
  %444 = load i32, ptr %441, align 1
  %445 = load i32, ptr %440, align 1
  %446 = xor i32 %445, %444
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %451, label %448

448:                                              ; preds = %443
  %449 = tail call i32 @llvm.cttz.i32(i32 %446, i1 true) #4, !range !8
  %450 = lshr i32 %449, 3
  br label %495

451:                                              ; preds = %457, %443
  %452 = phi ptr [ %455, %457 ], [ %440, %443 ]
  %453 = phi ptr [ %454, %457 ], [ %441, %443 ]
  %454 = getelementptr i8, ptr %453, i32 4
  %455 = getelementptr i8, ptr %452, i32 4
  %456 = icmp ult ptr %455, %64
  br i1 %456, label %457, label %469

457:                                              ; preds = %451
  %458 = load i32, ptr %454, align 1
  %459 = load i32, ptr %455, align 1
  %460 = xor i32 %459, %458
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %451, label %462

462:                                              ; preds = %457
  %463 = tail call i32 @llvm.cttz.i32(i32 %460, i1 true) #4, !range !8
  %464 = lshr i32 %463, 3
  %465 = getelementptr i8, ptr %455, i32 %464
  %466 = ptrtoint ptr %465 to i32
  %467 = ptrtoint ptr %440 to i32
  %468 = sub i32 %466, %467
  br label %495

469:                                              ; preds = %451, %439
  %470 = phi ptr [ %440, %439 ], [ %455, %451 ]
  %471 = phi ptr [ %441, %439 ], [ %454, %451 ]
  %472 = icmp ult ptr %470, %65
  br i1 %472, label %473, label %480

473:                                              ; preds = %469
  %474 = load i16, ptr %471, align 1
  %475 = load i16, ptr %470, align 1
  %476 = icmp eq i16 %474, %475
  br i1 %476, label %477, label %480

477:                                              ; preds = %473
  %478 = getelementptr i8, ptr %470, i32 2
  %479 = getelementptr i8, ptr %471, i32 2
  br label %480

480:                                              ; preds = %477, %473, %469
  %481 = phi ptr [ %478, %477 ], [ %470, %473 ], [ %470, %469 ]
  %482 = phi ptr [ %479, %477 ], [ %471, %473 ], [ %471, %469 ]
  %483 = icmp ult ptr %481, %33
  br i1 %483, label %484, label %490

484:                                              ; preds = %480
  %485 = load i8, ptr %482, align 1
  %486 = load i8, ptr %481, align 1
  %487 = icmp eq i8 %485, %486
  %488 = zext i1 %487 to i32
  %489 = getelementptr i8, ptr %481, i32 %488
  br label %490

490:                                              ; preds = %484, %480
  %491 = phi ptr [ %481, %480 ], [ %489, %484 ]
  %492 = ptrtoint ptr %491 to i32
  %493 = ptrtoint ptr %440 to i32
  %494 = sub i32 %492, %493
  br label %495

495:                                              ; preds = %490, %462, %448
  %496 = phi i32 [ %494, %490 ], [ %450, %448 ], [ %468, %462 ]
  %497 = add i32 %496, 4
  %498 = ptrtoint ptr %91 to i32
  %499 = sub i32 %84, %498
  %500 = icmp ugt ptr %73, %74
  %501 = icmp ugt ptr %91, %32
  %502 = and i1 %500, %501
  br i1 %502, label %503, label %517

503:                                              ; preds = %512, %495
  %504 = phi ptr [ %507, %512 ], [ %73, %495 ]
  %505 = phi ptr [ %509, %512 ], [ %91, %495 ]
  %506 = phi i32 [ %513, %512 ], [ %497, %495 ]
  %507 = getelementptr i8, ptr %504, i32 -1
  %508 = load i8, ptr %507, align 1
  %509 = getelementptr i8, ptr %505, i32 -1
  %510 = load i8, ptr %509, align 1
  %511 = icmp eq i8 %508, %510
  br i1 %511, label %512, label %517

512:                                              ; preds = %503
  %513 = add i32 %506, 1
  %514 = icmp ugt ptr %507, %74
  %515 = icmp ugt ptr %509, %32
  %516 = and i1 %514, %515
  br i1 %516, label %503, label %517

517:                                              ; preds = %512, %503, %495, %434, %425, %416, %325, %316, %308
  %518 = phi i32 [ %310, %308 ], [ %418, %416 ], [ %497, %495 ], [ %326, %325 ], [ %319, %316 ], [ %435, %434 ], [ %428, %425 ], [ %506, %503 ], [ %513, %512 ]
  %519 = phi i32 [ %312, %308 ], [ %421, %416 ], [ %499, %495 ], [ %312, %316 ], [ %312, %325 ], [ %421, %425 ], [ %421, %434 ], [ %499, %503 ], [ %499, %512 ]
  %520 = phi ptr [ %73, %308 ], [ %94, %416 ], [ %73, %495 ], [ %320, %325 ], [ %317, %316 ], [ %429, %434 ], [ %427, %425 ], [ %504, %503 ], [ %507, %512 ]
  %521 = ptrtoint ptr %520 to i32
  %522 = ptrtoint ptr %74 to i32
  %523 = sub i32 %521, %522
  %524 = add i32 %518, -3
  %525 = getelementptr i8, ptr %74, i32 %523
  %526 = icmp ugt ptr %525, %66
  %527 = load ptr, ptr %67, align 4
  br i1 %526, label %549, label %528

528:                                              ; preds = %517
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %527, ptr noundef align 1 dereferenceable(16) %74, i32 16, i1 false) #4
  %529 = icmp ugt i32 %523, 16
  %530 = load ptr, ptr %67, align 4
  br i1 %529, label %533, label %531

531:                                              ; preds = %528
  %532 = getelementptr i8, ptr %530, i32 %523
  store ptr %532, ptr %67, align 4
  br label %592

533:                                              ; preds = %528
  %534 = getelementptr i8, ptr %530, i32 16
  %535 = getelementptr i8, ptr %74, i32 16
  %536 = add i32 %523, -16
  %537 = getelementptr i8, ptr %530, i32 %523
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %534, ptr noundef align 1 dereferenceable(16) %535, i32 16, i1 false) #4
  %538 = icmp slt i32 %536, 17
  br i1 %538, label %581, label %539

539:                                              ; preds = %533
  %540 = getelementptr i8, ptr %530, i32 32
  br label %541

541:                                              ; preds = %541, %539
  %542 = phi ptr [ %535, %539 ], [ %546, %541 ]
  %543 = phi ptr [ %540, %539 ], [ %547, %541 ]
  %544 = getelementptr i8, ptr %542, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %543, ptr noundef align 1 dereferenceable(16) %544, i32 16, i1 false) #4
  %545 = getelementptr i8, ptr %543, i32 16
  %546 = getelementptr i8, ptr %542, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %545, ptr noundef align 1 dereferenceable(16) %546, i32 16, i1 false) #4
  %547 = getelementptr i8, ptr %543, i32 32
  %548 = icmp ult ptr %547, %537
  br i1 %548, label %541, label %581

549:                                              ; preds = %517
  %550 = ptrtoint ptr %525 to i32
  %551 = icmp ult ptr %66, %74
  br i1 %551, label %566, label %552

552:                                              ; preds = %549
  %553 = sub i32 %68, %522
  %554 = getelementptr i8, ptr %527, i32 %553
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %527, ptr noundef align 1 dereferenceable(16) %74, i32 16, i1 false) #4
  %555 = icmp slt i32 %553, 17
  br i1 %555, label %566, label %556

556:                                              ; preds = %552
  %557 = getelementptr i8, ptr %527, i32 16
  br label %558

558:                                              ; preds = %558, %556
  %559 = phi ptr [ %74, %556 ], [ %563, %558 ]
  %560 = phi ptr [ %557, %556 ], [ %564, %558 ]
  %561 = getelementptr i8, ptr %559, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %560, ptr noundef align 1 dereferenceable(16) %561, i32 16, i1 false) #4
  %562 = getelementptr i8, ptr %560, i32 16
  %563 = getelementptr i8, ptr %559, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %562, ptr noundef align 1 dereferenceable(16) %563, i32 16, i1 false) #4
  %564 = getelementptr i8, ptr %560, i32 32
  %565 = icmp ult ptr %564, %554
  br i1 %565, label %558, label %566

566:                                              ; preds = %558, %552, %549
  %567 = phi ptr [ %66, %552 ], [ %74, %549 ], [ %66, %558 ]
  %568 = phi ptr [ %554, %552 ], [ %527, %549 ], [ %554, %558 ]
  %569 = icmp ult ptr %567, %525
  br i1 %569, label %570, label %581

570:                                              ; preds = %566
  %571 = ptrtoint ptr %567 to i32
  %572 = sub i32 %550, %571
  %573 = getelementptr i8, ptr %567, i32 %572
  br label %574

574:                                              ; preds = %574, %570
  %575 = phi ptr [ %579, %574 ], [ %568, %570 ]
  %576 = phi ptr [ %577, %574 ], [ %567, %570 ]
  %577 = getelementptr i8, ptr %576, i32 1
  %578 = load i8, ptr %576, align 1
  %579 = getelementptr i8, ptr %575, i32 1
  store i8 %578, ptr %575, align 1
  %580 = icmp eq ptr %577, %573
  br i1 %580, label %581, label %574

581:                                              ; preds = %574, %566, %541, %533
  %582 = load ptr, ptr %67, align 4
  %583 = getelementptr i8, ptr %582, i32 %523
  store ptr %583, ptr %67, align 4
  %584 = icmp ugt i32 %523, 65535
  br i1 %584, label %585, label %592

585:                                              ; preds = %581
  store i32 1, ptr %69, align 4
  %586 = load ptr, ptr %70, align 4
  %587 = load ptr, ptr %1, align 4
  %588 = ptrtoint ptr %586 to i32
  %589 = ptrtoint ptr %587 to i32
  %590 = sub i32 %588, %589
  %591 = ashr exact i32 %590, 3
  store i32 %591, ptr %71, align 4
  br label %592

592:                                              ; preds = %585, %581, %531
  %593 = trunc i32 %523 to i16
  %594 = load ptr, ptr %70, align 4
  %595 = getelementptr inbounds %struct.seqDef_s, ptr %594, i32 0, i32 1
  store i16 %593, ptr %595, align 4
  %596 = add i32 %519, 3
  %597 = load ptr, ptr %70, align 4
  store i32 %596, ptr %597, align 4
  %598 = icmp ugt i32 %524, 65535
  br i1 %598, label %601, label %599

599:                                              ; preds = %592
  %600 = load ptr, ptr %70, align 4
  br label %608

601:                                              ; preds = %592
  store i32 2, ptr %69, align 4
  %602 = load ptr, ptr %70, align 4
  %603 = load ptr, ptr %1, align 4
  %604 = ptrtoint ptr %602 to i32
  %605 = ptrtoint ptr %603 to i32
  %606 = sub i32 %604, %605
  %607 = ashr exact i32 %606, 3
  store i32 %607, ptr %71, align 4
  br label %608

608:                                              ; preds = %601, %599, %239, %237
  %609 = phi i32 [ %163, %237 ], [ %163, %239 ], [ %524, %599 ], [ %524, %601 ]
  %610 = phi ptr [ %238, %237 ], [ %240, %239 ], [ %600, %599 ], [ %602, %601 ]
  %611 = phi i32 [ %76, %237 ], [ %76, %239 ], [ %75, %599 ], [ %75, %601 ]
  %612 = phi i32 [ %75, %237 ], [ %75, %239 ], [ %519, %599 ], [ %519, %601 ]
  %613 = phi i32 [ %159, %237 ], [ %159, %239 ], [ %518, %599 ], [ %518, %601 ]
  %614 = phi ptr [ %94, %237 ], [ %94, %239 ], [ %520, %599 ], [ %520, %601 ]
  %615 = trunc i32 %609 to i16
  %616 = getelementptr inbounds %struct.seqDef_s, ptr %610, i32 0, i32 2
  store i16 %615, ptr %616, align 2
  %617 = load ptr, ptr %70, align 4
  %618 = getelementptr %struct.seqDef_s, ptr %617, i32 1
  store ptr %618, ptr %70, align 4
  %619 = getelementptr i8, ptr %614, i32 %613
  %620 = icmp ugt ptr %619, %34
  br i1 %620, label %754, label %621

621:                                              ; preds = %608
  %622 = add i32 %85, 2
  %623 = getelementptr i8, ptr %15, i32 %622
  %624 = load i64, ptr %623, align 1
  %625 = mul i64 %624, -3523014627327384477
  %626 = lshr i64 %625, %62
  %627 = trunc i64 %626 to i32
  %628 = getelementptr i32, ptr %11, i32 %627
  store i32 %622, ptr %628, align 4
  %629 = getelementptr i8, ptr %619, i32 -2
  %630 = ptrtoint ptr %629 to i32
  %631 = sub i32 %630, %17
  %632 = load i64, ptr %629, align 1
  %633 = mul i64 %632, -3523014627327384477
  %634 = lshr i64 %633, %62
  %635 = trunc i64 %634 to i32
  %636 = getelementptr i32, ptr %11, i32 %635
  store i32 %631, ptr %636, align 4
  %637 = load i32, ptr %623, align 1
  %638 = mul i32 %637, -1640531535
  %639 = lshr i32 %638, %63
  %640 = getelementptr i32, ptr %13, i32 %639
  store i32 %622, ptr %640, align 4
  %641 = getelementptr i8, ptr %619, i32 -1
  %642 = load i32, ptr %641, align 1
  %643 = mul i32 %642, -1640531535
  %644 = lshr i32 %643, %63
  %645 = ptrtoint ptr %641 to i32
  %646 = sub i32 %645, %17
  %647 = getelementptr i32, ptr %13, i32 %644
  store i32 %646, ptr %647, align 4
  br label %648

648:                                              ; preds = %746, %621
  %649 = phi ptr [ %752, %746 ], [ %619, %621 ]
  %650 = phi i32 [ %651, %746 ], [ %612, %621 ]
  %651 = phi i32 [ %650, %746 ], [ %611, %621 ]
  %652 = icmp ne i32 %651, 0
  %653 = load i32, ptr %649, align 1
  %654 = sub i32 0, %651
  %655 = getelementptr i8, ptr %649, i32 %654
  %656 = load i32, ptr %655, align 1
  %657 = icmp eq i32 %653, %656
  %658 = and i1 %652, %657
  br i1 %658, label %659, label %754

659:                                              ; preds = %648
  %660 = getelementptr i8, ptr %649, i32 4
  %661 = getelementptr i8, ptr %660, i32 %654
  %662 = icmp ugt ptr %64, %660
  br i1 %662, label %663, label %689

663:                                              ; preds = %659
  %664 = load i32, ptr %661, align 1
  %665 = load i32, ptr %660, align 1
  %666 = xor i32 %665, %664
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %671, label %668

668:                                              ; preds = %663
  %669 = tail call i32 @llvm.cttz.i32(i32 %666, i1 true) #4, !range !8
  %670 = lshr i32 %669, 3
  br label %715

671:                                              ; preds = %677, %663
  %672 = phi ptr [ %675, %677 ], [ %660, %663 ]
  %673 = phi ptr [ %674, %677 ], [ %661, %663 ]
  %674 = getelementptr i8, ptr %673, i32 4
  %675 = getelementptr i8, ptr %672, i32 4
  %676 = icmp ult ptr %675, %64
  br i1 %676, label %677, label %689

677:                                              ; preds = %671
  %678 = load i32, ptr %674, align 1
  %679 = load i32, ptr %675, align 1
  %680 = xor i32 %679, %678
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %671, label %682

682:                                              ; preds = %677
  %683 = tail call i32 @llvm.cttz.i32(i32 %680, i1 true) #4, !range !8
  %684 = lshr i32 %683, 3
  %685 = getelementptr i8, ptr %675, i32 %684
  %686 = ptrtoint ptr %685 to i32
  %687 = ptrtoint ptr %660 to i32
  %688 = sub i32 %686, %687
  br label %715

689:                                              ; preds = %671, %659
  %690 = phi ptr [ %660, %659 ], [ %675, %671 ]
  %691 = phi ptr [ %661, %659 ], [ %674, %671 ]
  %692 = icmp ult ptr %690, %65
  br i1 %692, label %693, label %700

693:                                              ; preds = %689
  %694 = load i16, ptr %691, align 1
  %695 = load i16, ptr %690, align 1
  %696 = icmp eq i16 %694, %695
  br i1 %696, label %697, label %700

697:                                              ; preds = %693
  %698 = getelementptr i8, ptr %690, i32 2
  %699 = getelementptr i8, ptr %691, i32 2
  br label %700

700:                                              ; preds = %697, %693, %689
  %701 = phi ptr [ %698, %697 ], [ %690, %693 ], [ %690, %689 ]
  %702 = phi ptr [ %699, %697 ], [ %691, %693 ], [ %691, %689 ]
  %703 = icmp ult ptr %701, %33
  br i1 %703, label %704, label %710

704:                                              ; preds = %700
  %705 = load i8, ptr %702, align 1
  %706 = load i8, ptr %701, align 1
  %707 = icmp eq i8 %705, %706
  %708 = zext i1 %707 to i32
  %709 = getelementptr i8, ptr %701, i32 %708
  br label %710

710:                                              ; preds = %704, %700
  %711 = phi ptr [ %701, %700 ], [ %709, %704 ]
  %712 = ptrtoint ptr %711 to i32
  %713 = ptrtoint ptr %660 to i32
  %714 = sub i32 %712, %713
  br label %715

715:                                              ; preds = %710, %682, %668
  %716 = phi i32 [ %714, %710 ], [ %670, %668 ], [ %688, %682 ]
  %717 = add i32 %716, 4
  %718 = ptrtoint ptr %649 to i32
  %719 = sub i32 %718, %17
  %720 = mul i32 %653, -1640531535
  %721 = lshr i32 %720, %63
  %722 = getelementptr i32, ptr %13, i32 %721
  store i32 %719, ptr %722, align 4
  %723 = load i64, ptr %649, align 1
  %724 = mul i64 %723, -3523014627327384477
  %725 = lshr i64 %724, %62
  %726 = trunc i64 %725 to i32
  %727 = getelementptr i32, ptr %11, i32 %726
  store i32 %719, ptr %727, align 4
  %728 = add i32 %716, 1
  %729 = icmp ugt ptr %649, %66
  br i1 %729, label %732, label %730

730:                                              ; preds = %715
  %731 = load ptr, ptr %67, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %731, ptr noundef align 1 dereferenceable(16) %649, i32 16, i1 false) #4
  br label %732

732:                                              ; preds = %730, %715
  %733 = load ptr, ptr %70, align 4
  %734 = getelementptr inbounds %struct.seqDef_s, ptr %733, i32 0, i32 1
  store i16 0, ptr %734, align 4
  %735 = load ptr, ptr %70, align 4
  store i32 1, ptr %735, align 4
  %736 = icmp ugt i32 %728, 65535
  br i1 %736, label %739, label %737

737:                                              ; preds = %732
  %738 = load ptr, ptr %70, align 4
  br label %746

739:                                              ; preds = %732
  store i32 2, ptr %69, align 4
  %740 = load ptr, ptr %70, align 4
  %741 = load ptr, ptr %1, align 4
  %742 = ptrtoint ptr %740 to i32
  %743 = ptrtoint ptr %741 to i32
  %744 = sub i32 %742, %743
  %745 = ashr exact i32 %744, 3
  store i32 %745, ptr %71, align 4
  br label %746

746:                                              ; preds = %739, %737
  %747 = phi ptr [ %738, %737 ], [ %740, %739 ]
  %748 = trunc i32 %728 to i16
  %749 = getelementptr inbounds %struct.seqDef_s, ptr %747, i32 0, i32 2
  store i16 %748, ptr %749, align 2
  %750 = load ptr, ptr %70, align 4
  %751 = getelementptr %struct.seqDef_s, ptr %750, i32 1
  store ptr %751, ptr %70, align 4
  %752 = getelementptr i8, ptr %649, i32 %717
  %753 = icmp ugt ptr %752, %34
  br i1 %753, label %754, label %648

754:                                              ; preds = %746, %648, %608, %341
  %755 = phi i32 [ %76, %341 ], [ %611, %608 ], [ %651, %648 ], [ %650, %746 ]
  %756 = phi i32 [ %75, %341 ], [ %612, %608 ], [ %650, %648 ], [ %651, %746 ]
  %757 = phi ptr [ %74, %341 ], [ %619, %608 ], [ %649, %648 ], [ %752, %746 ]
  %758 = phi ptr [ %346, %341 ], [ %619, %608 ], [ %649, %648 ], [ %752, %746 ]
  %759 = icmp ult ptr %758, %34
  br i1 %759, label %72, label %760

760:                                              ; preds = %754
  %761 = ptrtoint ptr %757 to i32
  br label %762

762:                                              ; preds = %760, %8
  %763 = phi i32 [ %761, %760 ], [ %16, %8 ]
  %764 = phi i32 [ %755, %760 ], [ %50, %8 ]
  %765 = phi i32 [ %756, %760 ], [ %54, %8 ]
  %766 = icmp eq i32 %765, 0
  %767 = select i1 %766, i32 %53, i32 %765
  store i32 %767, ptr %2, align 4
  %768 = icmp eq i32 %764, 0
  %769 = select i1 %768, i32 %53, i32 %764
  store i32 %769, ptr %36, align 4
  br label %3071

770:                                              ; preds = %5
  %771 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %772 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %773 = load ptr, ptr %772, align 4
  %774 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %775 = load ptr, ptr %774, align 4
  %776 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %777 = load ptr, ptr %776, align 4
  %778 = ptrtoint ptr %3 to i32
  %779 = ptrtoint ptr %777 to i32
  %780 = sub i32 %778, %779
  %781 = add i32 %780, %4
  %782 = load i32, ptr %771, align 4
  %783 = shl nuw i32 1, %782
  %784 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %785 = load i32, ptr %784, align 4
  %786 = sub i32 %781, %785
  %787 = icmp ugt i32 %786, %783
  %788 = sub i32 %781, %783
  %789 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %790 = load i32, ptr %789, align 4
  %791 = icmp eq i32 %790, 0
  %792 = select i1 %791, i1 %787, i1 false
  %793 = select i1 %792, i32 %788, i32 %785
  %794 = getelementptr i8, ptr %777, i32 %793
  %795 = getelementptr i8, ptr %3, i32 %4
  %796 = getelementptr i8, ptr %795, i32 -8
  %797 = load i32, ptr %2, align 4
  %798 = getelementptr i32, ptr %2, i32 1
  %799 = load i32, ptr %798, align 4
  %800 = icmp eq ptr %794, %3
  %801 = zext i1 %800 to i32
  %802 = getelementptr i8, ptr %3, i32 %801
  %803 = ptrtoint ptr %802 to i32
  %804 = sub i32 %803, %779
  %805 = sub i32 %804, %785
  %806 = icmp ugt i32 %805, %783
  %807 = sub i32 %804, %783
  %808 = select i1 %791, i1 %806, i1 false
  %809 = select i1 %808, i32 %807, i32 %785
  %810 = sub i32 %804, %809
  %811 = icmp ugt i32 %799, %810
  %812 = select i1 %811, i32 0, i32 %799
  %813 = select i1 %811, i32 %799, i32 0
  %814 = icmp ugt i32 %797, %810
  %815 = select i1 %814, i32 %797, i32 %813
  %816 = select i1 %814, i32 0, i32 %797
  %817 = icmp ult ptr %802, %796
  br i1 %817, label %818, label %1529

818:                                              ; preds = %770
  %819 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %820 = load i32, ptr %819, align 4
  %821 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %822 = load i32, ptr %821, align 4
  %823 = sub i32 64, %822
  %824 = zext i32 %823 to i64
  %825 = sub i32 64, %820
  %826 = zext i32 %825 to i64
  %827 = getelementptr i8, ptr %795, i32 -3
  %828 = getelementptr i8, ptr %795, i32 -1
  %829 = getelementptr i8, ptr %795, i32 -32
  %830 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %831 = ptrtoint ptr %829 to i32
  %832 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %833 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %834 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  br label %835

835:                                              ; preds = %1521, %818
  %836 = phi ptr [ %802, %818 ], [ %1525, %1521 ]
  %837 = phi ptr [ %3, %818 ], [ %1524, %1521 ]
  %838 = phi i32 [ %816, %818 ], [ %1523, %1521 ]
  %839 = phi i32 [ %812, %818 ], [ %1522, %1521 ]
  %840 = load i64, ptr %836, align 1
  %841 = mul i64 %840, -3523014627327384477
  %842 = lshr i64 %841, %824
  %843 = trunc i64 %842 to i32
  %844 = mul i64 %840, -3523014627271114752
  %845 = lshr i64 %844, %826
  %846 = trunc i64 %845 to i32
  %847 = ptrtoint ptr %836 to i32
  %848 = sub i32 %847, %779
  %849 = getelementptr i32, ptr %773, i32 %843
  %850 = load i32, ptr %849, align 4
  %851 = getelementptr i32, ptr %775, i32 %846
  %852 = load i32, ptr %851, align 4
  %853 = getelementptr i8, ptr %777, i32 %850
  %854 = getelementptr i8, ptr %777, i32 %852
  %855 = add i32 %848, 1
  store i32 %848, ptr %851, align 4
  store i32 %848, ptr %849, align 4
  %856 = icmp ne i32 %838, 0
  %857 = getelementptr i8, ptr %836, i32 1
  %858 = sub i32 0, %838
  %859 = getelementptr i8, ptr %857, i32 %858
  %860 = load i32, ptr %859, align 1
  %861 = load i32, ptr %857, align 1
  %862 = icmp eq i32 %860, %861
  %863 = and i1 %856, %862
  br i1 %863, label %864, label %1009

864:                                              ; preds = %835
  %865 = getelementptr i8, ptr %836, i32 5
  %866 = getelementptr i8, ptr %865, i32 %858
  %867 = icmp ugt ptr %827, %865
  br i1 %867, label %868, label %894

868:                                              ; preds = %864
  %869 = load i32, ptr %866, align 1
  %870 = load i32, ptr %865, align 1
  %871 = xor i32 %870, %869
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %876, label %873

873:                                              ; preds = %868
  %874 = tail call i32 @llvm.cttz.i32(i32 %871, i1 true) #4, !range !8
  %875 = lshr i32 %874, 3
  br label %920

876:                                              ; preds = %882, %868
  %877 = phi ptr [ %880, %882 ], [ %865, %868 ]
  %878 = phi ptr [ %879, %882 ], [ %866, %868 ]
  %879 = getelementptr i8, ptr %878, i32 4
  %880 = getelementptr i8, ptr %877, i32 4
  %881 = icmp ult ptr %880, %827
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
  %892 = ptrtoint ptr %865 to i32
  %893 = sub i32 %891, %892
  br label %920

894:                                              ; preds = %876, %864
  %895 = phi ptr [ %865, %864 ], [ %880, %876 ]
  %896 = phi ptr [ %866, %864 ], [ %879, %876 ]
  %897 = icmp ult ptr %895, %828
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
  %908 = icmp ult ptr %906, %795
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
  %918 = ptrtoint ptr %865 to i32
  %919 = sub i32 %917, %918
  br label %920

920:                                              ; preds = %915, %887, %873
  %921 = phi i32 [ %919, %915 ], [ %875, %873 ], [ %893, %887 ]
  %922 = add i32 %921, 4
  %923 = ptrtoint ptr %857 to i32
  %924 = ptrtoint ptr %837 to i32
  %925 = sub i32 %923, %924
  %926 = add i32 %921, 1
  %927 = getelementptr i8, ptr %837, i32 %925
  %928 = icmp ugt ptr %927, %829
  %929 = load ptr, ptr %830, align 4
  br i1 %928, label %951, label %930

930:                                              ; preds = %920
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %929, ptr noundef align 1 dereferenceable(16) %837, i32 16, i1 false) #4
  %931 = icmp ugt i32 %925, 16
  %932 = load ptr, ptr %830, align 4
  br i1 %931, label %935, label %933

933:                                              ; preds = %930
  %934 = getelementptr i8, ptr %932, i32 %925
  store ptr %934, ptr %830, align 4
  br label %994

935:                                              ; preds = %930
  %936 = getelementptr i8, ptr %932, i32 16
  %937 = getelementptr i8, ptr %837, i32 16
  %938 = add i32 %925, -16
  %939 = getelementptr i8, ptr %932, i32 %925
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %936, ptr noundef align 1 dereferenceable(16) %937, i32 16, i1 false) #4
  %940 = icmp slt i32 %938, 17
  br i1 %940, label %983, label %941

941:                                              ; preds = %935
  %942 = getelementptr i8, ptr %932, i32 32
  br label %943

943:                                              ; preds = %943, %941
  %944 = phi ptr [ %937, %941 ], [ %948, %943 ]
  %945 = phi ptr [ %942, %941 ], [ %949, %943 ]
  %946 = getelementptr i8, ptr %944, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %945, ptr noundef align 1 dereferenceable(16) %946, i32 16, i1 false) #4
  %947 = getelementptr i8, ptr %945, i32 16
  %948 = getelementptr i8, ptr %944, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %947, ptr noundef align 1 dereferenceable(16) %948, i32 16, i1 false) #4
  %949 = getelementptr i8, ptr %945, i32 32
  %950 = icmp ult ptr %949, %939
  br i1 %950, label %943, label %983

951:                                              ; preds = %920
  %952 = ptrtoint ptr %927 to i32
  %953 = icmp ult ptr %829, %837
  br i1 %953, label %968, label %954

954:                                              ; preds = %951
  %955 = sub i32 %831, %924
  %956 = getelementptr i8, ptr %929, i32 %955
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %929, ptr noundef align 1 dereferenceable(16) %837, i32 16, i1 false) #4
  %957 = icmp slt i32 %955, 17
  br i1 %957, label %968, label %958

958:                                              ; preds = %954
  %959 = getelementptr i8, ptr %929, i32 16
  br label %960

960:                                              ; preds = %960, %958
  %961 = phi ptr [ %837, %958 ], [ %965, %960 ]
  %962 = phi ptr [ %959, %958 ], [ %966, %960 ]
  %963 = getelementptr i8, ptr %961, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %962, ptr noundef align 1 dereferenceable(16) %963, i32 16, i1 false) #4
  %964 = getelementptr i8, ptr %962, i32 16
  %965 = getelementptr i8, ptr %961, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %964, ptr noundef align 1 dereferenceable(16) %965, i32 16, i1 false) #4
  %966 = getelementptr i8, ptr %962, i32 32
  %967 = icmp ult ptr %966, %956
  br i1 %967, label %960, label %968

968:                                              ; preds = %960, %954, %951
  %969 = phi ptr [ %829, %954 ], [ %837, %951 ], [ %829, %960 ]
  %970 = phi ptr [ %956, %954 ], [ %929, %951 ], [ %956, %960 ]
  %971 = icmp ult ptr %969, %927
  br i1 %971, label %972, label %983

972:                                              ; preds = %968
  %973 = ptrtoint ptr %969 to i32
  %974 = sub i32 %952, %973
  %975 = getelementptr i8, ptr %969, i32 %974
  br label %976

976:                                              ; preds = %976, %972
  %977 = phi ptr [ %981, %976 ], [ %970, %972 ]
  %978 = phi ptr [ %979, %976 ], [ %969, %972 ]
  %979 = getelementptr i8, ptr %978, i32 1
  %980 = load i8, ptr %978, align 1
  %981 = getelementptr i8, ptr %977, i32 1
  store i8 %980, ptr %977, align 1
  %982 = icmp eq ptr %979, %975
  br i1 %982, label %983, label %976

983:                                              ; preds = %976, %968, %943, %935
  %984 = load ptr, ptr %830, align 4
  %985 = getelementptr i8, ptr %984, i32 %925
  store ptr %985, ptr %830, align 4
  %986 = icmp ugt i32 %925, 65535
  br i1 %986, label %987, label %994

987:                                              ; preds = %983
  store i32 1, ptr %832, align 4
  %988 = load ptr, ptr %833, align 4
  %989 = load ptr, ptr %1, align 4
  %990 = ptrtoint ptr %988 to i32
  %991 = ptrtoint ptr %989 to i32
  %992 = sub i32 %990, %991
  %993 = ashr exact i32 %992, 3
  store i32 %993, ptr %834, align 4
  br label %994

994:                                              ; preds = %987, %983, %933
  %995 = trunc i32 %925 to i16
  %996 = load ptr, ptr %833, align 4
  %997 = getelementptr inbounds %struct.seqDef_s, ptr %996, i32 0, i32 1
  store i16 %995, ptr %997, align 4
  %998 = load ptr, ptr %833, align 4
  store i32 1, ptr %998, align 4
  %999 = icmp ugt i32 %926, 65535
  br i1 %999, label %1002, label %1000

1000:                                             ; preds = %994
  %1001 = load ptr, ptr %833, align 4
  br label %1371

1002:                                             ; preds = %994
  store i32 2, ptr %832, align 4
  %1003 = load ptr, ptr %833, align 4
  %1004 = load ptr, ptr %1, align 4
  %1005 = ptrtoint ptr %1003 to i32
  %1006 = ptrtoint ptr %1004 to i32
  %1007 = sub i32 %1005, %1006
  %1008 = ashr exact i32 %1007, 3
  store i32 %1008, ptr %834, align 4
  br label %1371

1009:                                             ; preds = %835
  %1010 = icmp ugt i32 %850, %793
  br i1 %1010, label %1011, label %1093

1011:                                             ; preds = %1009
  %1012 = load i64, ptr %853, align 1
  %1013 = load i64, ptr %836, align 1
  %1014 = icmp eq i64 %1012, %1013
  br i1 %1014, label %1015, label %1097

1015:                                             ; preds = %1011
  %1016 = getelementptr i8, ptr %836, i32 8
  %1017 = getelementptr i8, ptr %853, i32 8
  %1018 = icmp ugt ptr %827, %1016
  br i1 %1018, label %1019, label %1045

1019:                                             ; preds = %1015
  %1020 = load i32, ptr %1017, align 1
  %1021 = load i32, ptr %1016, align 1
  %1022 = xor i32 %1021, %1020
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1027, label %1024

1024:                                             ; preds = %1019
  %1025 = tail call i32 @llvm.cttz.i32(i32 %1022, i1 true) #4, !range !8
  %1026 = lshr i32 %1025, 3
  br label %1071

1027:                                             ; preds = %1033, %1019
  %1028 = phi ptr [ %1031, %1033 ], [ %1016, %1019 ]
  %1029 = phi ptr [ %1030, %1033 ], [ %1017, %1019 ]
  %1030 = getelementptr i8, ptr %1029, i32 4
  %1031 = getelementptr i8, ptr %1028, i32 4
  %1032 = icmp ult ptr %1031, %827
  br i1 %1032, label %1033, label %1045

1033:                                             ; preds = %1027
  %1034 = load i32, ptr %1030, align 1
  %1035 = load i32, ptr %1031, align 1
  %1036 = xor i32 %1035, %1034
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1027, label %1038

1038:                                             ; preds = %1033
  %1039 = tail call i32 @llvm.cttz.i32(i32 %1036, i1 true) #4, !range !8
  %1040 = lshr i32 %1039, 3
  %1041 = getelementptr i8, ptr %1031, i32 %1040
  %1042 = ptrtoint ptr %1041 to i32
  %1043 = ptrtoint ptr %1016 to i32
  %1044 = sub i32 %1042, %1043
  br label %1071

1045:                                             ; preds = %1027, %1015
  %1046 = phi ptr [ %1016, %1015 ], [ %1031, %1027 ]
  %1047 = phi ptr [ %1017, %1015 ], [ %1030, %1027 ]
  %1048 = icmp ult ptr %1046, %828
  br i1 %1048, label %1049, label %1056

1049:                                             ; preds = %1045
  %1050 = load i16, ptr %1047, align 1
  %1051 = load i16, ptr %1046, align 1
  %1052 = icmp eq i16 %1050, %1051
  br i1 %1052, label %1053, label %1056

1053:                                             ; preds = %1049
  %1054 = getelementptr i8, ptr %1046, i32 2
  %1055 = getelementptr i8, ptr %1047, i32 2
  br label %1056

1056:                                             ; preds = %1053, %1049, %1045
  %1057 = phi ptr [ %1054, %1053 ], [ %1046, %1049 ], [ %1046, %1045 ]
  %1058 = phi ptr [ %1055, %1053 ], [ %1047, %1049 ], [ %1047, %1045 ]
  %1059 = icmp ult ptr %1057, %795
  br i1 %1059, label %1060, label %1066

1060:                                             ; preds = %1056
  %1061 = load i8, ptr %1058, align 1
  %1062 = load i8, ptr %1057, align 1
  %1063 = icmp eq i8 %1061, %1062
  %1064 = zext i1 %1063 to i32
  %1065 = getelementptr i8, ptr %1057, i32 %1064
  br label %1066

1066:                                             ; preds = %1060, %1056
  %1067 = phi ptr [ %1057, %1056 ], [ %1065, %1060 ]
  %1068 = ptrtoint ptr %1067 to i32
  %1069 = ptrtoint ptr %1016 to i32
  %1070 = sub i32 %1068, %1069
  br label %1071

1071:                                             ; preds = %1066, %1038, %1024
  %1072 = phi i32 [ %1070, %1066 ], [ %1026, %1024 ], [ %1044, %1038 ]
  %1073 = add i32 %1072, 8
  %1074 = ptrtoint ptr %853 to i32
  %1075 = sub i32 %847, %1074
  %1076 = icmp ugt ptr %836, %837
  %1077 = icmp ugt ptr %853, %794
  %1078 = and i1 %1076, %1077
  br i1 %1078, label %1079, label %1280

1079:                                             ; preds = %1088, %1071
  %1080 = phi ptr [ %1083, %1088 ], [ %836, %1071 ]
  %1081 = phi ptr [ %1085, %1088 ], [ %853, %1071 ]
  %1082 = phi i32 [ %1089, %1088 ], [ %1073, %1071 ]
  %1083 = getelementptr i8, ptr %1080, i32 -1
  %1084 = load i8, ptr %1083, align 1
  %1085 = getelementptr i8, ptr %1081, i32 -1
  %1086 = load i8, ptr %1085, align 1
  %1087 = icmp eq i8 %1084, %1086
  br i1 %1087, label %1088, label %1280

1088:                                             ; preds = %1079
  %1089 = add i32 %1082, 1
  %1090 = icmp ugt ptr %1083, %837
  %1091 = icmp ugt ptr %1085, %794
  %1092 = and i1 %1090, %1091
  br i1 %1092, label %1079, label %1280

1093:                                             ; preds = %1009
  %1094 = icmp ugt i32 %852, %793
  br i1 %1094, label %1095, label %1104

1095:                                             ; preds = %1093
  %1096 = load i32, ptr %836, align 1
  br label %1100

1097:                                             ; preds = %1011
  %1098 = trunc i64 %1013 to i32
  %1099 = icmp ugt i32 %852, %793
  br i1 %1099, label %1100, label %1104

1100:                                             ; preds = %1097, %1095
  %1101 = phi i32 [ %1096, %1095 ], [ %1098, %1097 ]
  %1102 = load i32, ptr %854, align 1
  %1103 = icmp eq i32 %1102, %1101
  br i1 %1103, label %1110, label %1104

1104:                                             ; preds = %1100, %1097, %1093
  %1105 = ptrtoint ptr %837 to i32
  %1106 = sub i32 %847, %1105
  %1107 = ashr i32 %1106, 8
  %1108 = add nsw i32 %1107, 1
  %1109 = getelementptr i8, ptr %836, i32 %1108
  br label %1521

1110:                                             ; preds = %1100
  %1111 = load i64, ptr %857, align 1
  %1112 = mul i64 %1111, -3523014627327384477
  %1113 = lshr i64 %1112, %824
  %1114 = trunc i64 %1113 to i32
  %1115 = getelementptr i32, ptr %773, i32 %1114
  %1116 = load i32, ptr %1115, align 4
  %1117 = getelementptr i8, ptr %777, i32 %1116
  store i32 %855, ptr %1115, align 4
  %1118 = icmp ugt i32 %1116, %793
  br i1 %1118, label %1119, label %1202

1119:                                             ; preds = %1110
  %1120 = load i64, ptr %1117, align 1
  %1121 = load i64, ptr %857, align 1
  %1122 = icmp eq i64 %1120, %1121
  br i1 %1122, label %1123, label %1202

1123:                                             ; preds = %1119
  %1124 = getelementptr i8, ptr %836, i32 9
  %1125 = getelementptr i8, ptr %1117, i32 8
  %1126 = icmp ugt ptr %827, %1124
  br i1 %1126, label %1127, label %1153

1127:                                             ; preds = %1123
  %1128 = load i32, ptr %1125, align 1
  %1129 = load i32, ptr %1124, align 1
  %1130 = xor i32 %1129, %1128
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1135, label %1132

1132:                                             ; preds = %1127
  %1133 = tail call i32 @llvm.cttz.i32(i32 %1130, i1 true) #4, !range !8
  %1134 = lshr i32 %1133, 3
  br label %1179

1135:                                             ; preds = %1141, %1127
  %1136 = phi ptr [ %1139, %1141 ], [ %1124, %1127 ]
  %1137 = phi ptr [ %1138, %1141 ], [ %1125, %1127 ]
  %1138 = getelementptr i8, ptr %1137, i32 4
  %1139 = getelementptr i8, ptr %1136, i32 4
  %1140 = icmp ult ptr %1139, %827
  br i1 %1140, label %1141, label %1153

1141:                                             ; preds = %1135
  %1142 = load i32, ptr %1138, align 1
  %1143 = load i32, ptr %1139, align 1
  %1144 = xor i32 %1143, %1142
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1135, label %1146

1146:                                             ; preds = %1141
  %1147 = tail call i32 @llvm.cttz.i32(i32 %1144, i1 true) #4, !range !8
  %1148 = lshr i32 %1147, 3
  %1149 = getelementptr i8, ptr %1139, i32 %1148
  %1150 = ptrtoint ptr %1149 to i32
  %1151 = ptrtoint ptr %1124 to i32
  %1152 = sub i32 %1150, %1151
  br label %1179

1153:                                             ; preds = %1135, %1123
  %1154 = phi ptr [ %1124, %1123 ], [ %1139, %1135 ]
  %1155 = phi ptr [ %1125, %1123 ], [ %1138, %1135 ]
  %1156 = icmp ult ptr %1154, %828
  br i1 %1156, label %1157, label %1164

1157:                                             ; preds = %1153
  %1158 = load i16, ptr %1155, align 1
  %1159 = load i16, ptr %1154, align 1
  %1160 = icmp eq i16 %1158, %1159
  br i1 %1160, label %1161, label %1164

1161:                                             ; preds = %1157
  %1162 = getelementptr i8, ptr %1154, i32 2
  %1163 = getelementptr i8, ptr %1155, i32 2
  br label %1164

1164:                                             ; preds = %1161, %1157, %1153
  %1165 = phi ptr [ %1162, %1161 ], [ %1154, %1157 ], [ %1154, %1153 ]
  %1166 = phi ptr [ %1163, %1161 ], [ %1155, %1157 ], [ %1155, %1153 ]
  %1167 = icmp ult ptr %1165, %795
  br i1 %1167, label %1168, label %1174

1168:                                             ; preds = %1164
  %1169 = load i8, ptr %1166, align 1
  %1170 = load i8, ptr %1165, align 1
  %1171 = icmp eq i8 %1169, %1170
  %1172 = zext i1 %1171 to i32
  %1173 = getelementptr i8, ptr %1165, i32 %1172
  br label %1174

1174:                                             ; preds = %1168, %1164
  %1175 = phi ptr [ %1165, %1164 ], [ %1173, %1168 ]
  %1176 = ptrtoint ptr %1175 to i32
  %1177 = ptrtoint ptr %1124 to i32
  %1178 = sub i32 %1176, %1177
  br label %1179

1179:                                             ; preds = %1174, %1146, %1132
  %1180 = phi i32 [ %1178, %1174 ], [ %1134, %1132 ], [ %1152, %1146 ]
  %1181 = add i32 %1180, 8
  %1182 = ptrtoint ptr %857 to i32
  %1183 = ptrtoint ptr %1117 to i32
  %1184 = sub i32 %1182, %1183
  %1185 = icmp ugt ptr %857, %837
  %1186 = icmp ugt ptr %1117, %794
  %1187 = and i1 %1185, %1186
  br i1 %1187, label %1188, label %1280

1188:                                             ; preds = %1197, %1179
  %1189 = phi ptr [ %1194, %1197 ], [ %1117, %1179 ]
  %1190 = phi ptr [ %1192, %1197 ], [ %857, %1179 ]
  %1191 = phi i32 [ %1198, %1197 ], [ %1181, %1179 ]
  %1192 = getelementptr i8, ptr %1190, i32 -1
  %1193 = load i8, ptr %1192, align 1
  %1194 = getelementptr i8, ptr %1189, i32 -1
  %1195 = load i8, ptr %1194, align 1
  %1196 = icmp eq i8 %1193, %1195
  br i1 %1196, label %1197, label %1280

1197:                                             ; preds = %1188
  %1198 = add i32 %1191, 1
  %1199 = icmp ugt ptr %1192, %837
  %1200 = icmp ugt ptr %1194, %794
  %1201 = and i1 %1200, %1199
  br i1 %1201, label %1188, label %1280

1202:                                             ; preds = %1119, %1110
  %1203 = getelementptr i8, ptr %836, i32 4
  %1204 = getelementptr i8, ptr %854, i32 4
  %1205 = icmp ugt ptr %827, %1203
  br i1 %1205, label %1206, label %1232

1206:                                             ; preds = %1202
  %1207 = load i32, ptr %1204, align 1
  %1208 = load i32, ptr %1203, align 1
  %1209 = xor i32 %1208, %1207
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1214, label %1211

1211:                                             ; preds = %1206
  %1212 = tail call i32 @llvm.cttz.i32(i32 %1209, i1 true) #4, !range !8
  %1213 = lshr i32 %1212, 3
  br label %1258

1214:                                             ; preds = %1220, %1206
  %1215 = phi ptr [ %1218, %1220 ], [ %1203, %1206 ]
  %1216 = phi ptr [ %1217, %1220 ], [ %1204, %1206 ]
  %1217 = getelementptr i8, ptr %1216, i32 4
  %1218 = getelementptr i8, ptr %1215, i32 4
  %1219 = icmp ult ptr %1218, %827
  br i1 %1219, label %1220, label %1232

1220:                                             ; preds = %1214
  %1221 = load i32, ptr %1217, align 1
  %1222 = load i32, ptr %1218, align 1
  %1223 = xor i32 %1222, %1221
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1214, label %1225

1225:                                             ; preds = %1220
  %1226 = tail call i32 @llvm.cttz.i32(i32 %1223, i1 true) #4, !range !8
  %1227 = lshr i32 %1226, 3
  %1228 = getelementptr i8, ptr %1218, i32 %1227
  %1229 = ptrtoint ptr %1228 to i32
  %1230 = ptrtoint ptr %1203 to i32
  %1231 = sub i32 %1229, %1230
  br label %1258

1232:                                             ; preds = %1214, %1202
  %1233 = phi ptr [ %1203, %1202 ], [ %1218, %1214 ]
  %1234 = phi ptr [ %1204, %1202 ], [ %1217, %1214 ]
  %1235 = icmp ult ptr %1233, %828
  br i1 %1235, label %1236, label %1243

1236:                                             ; preds = %1232
  %1237 = load i16, ptr %1234, align 1
  %1238 = load i16, ptr %1233, align 1
  %1239 = icmp eq i16 %1237, %1238
  br i1 %1239, label %1240, label %1243

1240:                                             ; preds = %1236
  %1241 = getelementptr i8, ptr %1233, i32 2
  %1242 = getelementptr i8, ptr %1234, i32 2
  br label %1243

1243:                                             ; preds = %1240, %1236, %1232
  %1244 = phi ptr [ %1241, %1240 ], [ %1233, %1236 ], [ %1233, %1232 ]
  %1245 = phi ptr [ %1242, %1240 ], [ %1234, %1236 ], [ %1234, %1232 ]
  %1246 = icmp ult ptr %1244, %795
  br i1 %1246, label %1247, label %1253

1247:                                             ; preds = %1243
  %1248 = load i8, ptr %1245, align 1
  %1249 = load i8, ptr %1244, align 1
  %1250 = icmp eq i8 %1248, %1249
  %1251 = zext i1 %1250 to i32
  %1252 = getelementptr i8, ptr %1244, i32 %1251
  br label %1253

1253:                                             ; preds = %1247, %1243
  %1254 = phi ptr [ %1244, %1243 ], [ %1252, %1247 ]
  %1255 = ptrtoint ptr %1254 to i32
  %1256 = ptrtoint ptr %1203 to i32
  %1257 = sub i32 %1255, %1256
  br label %1258

1258:                                             ; preds = %1253, %1225, %1211
  %1259 = phi i32 [ %1257, %1253 ], [ %1213, %1211 ], [ %1231, %1225 ]
  %1260 = add i32 %1259, 4
  %1261 = ptrtoint ptr %854 to i32
  %1262 = sub i32 %847, %1261
  %1263 = icmp ugt ptr %836, %837
  %1264 = icmp ugt ptr %854, %794
  %1265 = and i1 %1263, %1264
  br i1 %1265, label %1266, label %1280

1266:                                             ; preds = %1275, %1258
  %1267 = phi ptr [ %1270, %1275 ], [ %836, %1258 ]
  %1268 = phi ptr [ %1272, %1275 ], [ %854, %1258 ]
  %1269 = phi i32 [ %1276, %1275 ], [ %1260, %1258 ]
  %1270 = getelementptr i8, ptr %1267, i32 -1
  %1271 = load i8, ptr %1270, align 1
  %1272 = getelementptr i8, ptr %1268, i32 -1
  %1273 = load i8, ptr %1272, align 1
  %1274 = icmp eq i8 %1271, %1273
  br i1 %1274, label %1275, label %1280

1275:                                             ; preds = %1266
  %1276 = add i32 %1269, 1
  %1277 = icmp ugt ptr %1270, %837
  %1278 = icmp ugt ptr %1272, %794
  %1279 = and i1 %1277, %1278
  br i1 %1279, label %1266, label %1280

1280:                                             ; preds = %1275, %1266, %1258, %1197, %1188, %1179, %1088, %1079, %1071
  %1281 = phi i32 [ %1073, %1071 ], [ %1181, %1179 ], [ %1260, %1258 ], [ %1089, %1088 ], [ %1082, %1079 ], [ %1198, %1197 ], [ %1191, %1188 ], [ %1269, %1266 ], [ %1276, %1275 ]
  %1282 = phi i32 [ %1075, %1071 ], [ %1184, %1179 ], [ %1262, %1258 ], [ %1075, %1079 ], [ %1075, %1088 ], [ %1184, %1188 ], [ %1184, %1197 ], [ %1262, %1266 ], [ %1262, %1275 ]
  %1283 = phi ptr [ %836, %1071 ], [ %857, %1179 ], [ %836, %1258 ], [ %1083, %1088 ], [ %1080, %1079 ], [ %1192, %1197 ], [ %1190, %1188 ], [ %1267, %1266 ], [ %1270, %1275 ]
  %1284 = ptrtoint ptr %1283 to i32
  %1285 = ptrtoint ptr %837 to i32
  %1286 = sub i32 %1284, %1285
  %1287 = add i32 %1281, -3
  %1288 = getelementptr i8, ptr %837, i32 %1286
  %1289 = icmp ugt ptr %1288, %829
  %1290 = load ptr, ptr %830, align 4
  br i1 %1289, label %1312, label %1291

1291:                                             ; preds = %1280
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1290, ptr noundef align 1 dereferenceable(16) %837, i32 16, i1 false) #4
  %1292 = icmp ugt i32 %1286, 16
  %1293 = load ptr, ptr %830, align 4
  br i1 %1292, label %1296, label %1294

1294:                                             ; preds = %1291
  %1295 = getelementptr i8, ptr %1293, i32 %1286
  store ptr %1295, ptr %830, align 4
  br label %1355

1296:                                             ; preds = %1291
  %1297 = getelementptr i8, ptr %1293, i32 16
  %1298 = getelementptr i8, ptr %837, i32 16
  %1299 = add i32 %1286, -16
  %1300 = getelementptr i8, ptr %1293, i32 %1286
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1297, ptr noundef align 1 dereferenceable(16) %1298, i32 16, i1 false) #4
  %1301 = icmp slt i32 %1299, 17
  br i1 %1301, label %1344, label %1302

1302:                                             ; preds = %1296
  %1303 = getelementptr i8, ptr %1293, i32 32
  br label %1304

1304:                                             ; preds = %1304, %1302
  %1305 = phi ptr [ %1298, %1302 ], [ %1309, %1304 ]
  %1306 = phi ptr [ %1303, %1302 ], [ %1310, %1304 ]
  %1307 = getelementptr i8, ptr %1305, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1306, ptr noundef align 1 dereferenceable(16) %1307, i32 16, i1 false) #4
  %1308 = getelementptr i8, ptr %1306, i32 16
  %1309 = getelementptr i8, ptr %1305, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1308, ptr noundef align 1 dereferenceable(16) %1309, i32 16, i1 false) #4
  %1310 = getelementptr i8, ptr %1306, i32 32
  %1311 = icmp ult ptr %1310, %1300
  br i1 %1311, label %1304, label %1344

1312:                                             ; preds = %1280
  %1313 = ptrtoint ptr %1288 to i32
  %1314 = icmp ult ptr %829, %837
  br i1 %1314, label %1329, label %1315

1315:                                             ; preds = %1312
  %1316 = sub i32 %831, %1285
  %1317 = getelementptr i8, ptr %1290, i32 %1316
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1290, ptr noundef align 1 dereferenceable(16) %837, i32 16, i1 false) #4
  %1318 = icmp slt i32 %1316, 17
  br i1 %1318, label %1329, label %1319

1319:                                             ; preds = %1315
  %1320 = getelementptr i8, ptr %1290, i32 16
  br label %1321

1321:                                             ; preds = %1321, %1319
  %1322 = phi ptr [ %837, %1319 ], [ %1326, %1321 ]
  %1323 = phi ptr [ %1320, %1319 ], [ %1327, %1321 ]
  %1324 = getelementptr i8, ptr %1322, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1323, ptr noundef align 1 dereferenceable(16) %1324, i32 16, i1 false) #4
  %1325 = getelementptr i8, ptr %1323, i32 16
  %1326 = getelementptr i8, ptr %1322, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1325, ptr noundef align 1 dereferenceable(16) %1326, i32 16, i1 false) #4
  %1327 = getelementptr i8, ptr %1323, i32 32
  %1328 = icmp ult ptr %1327, %1317
  br i1 %1328, label %1321, label %1329

1329:                                             ; preds = %1321, %1315, %1312
  %1330 = phi ptr [ %829, %1315 ], [ %837, %1312 ], [ %829, %1321 ]
  %1331 = phi ptr [ %1317, %1315 ], [ %1290, %1312 ], [ %1317, %1321 ]
  %1332 = icmp ult ptr %1330, %1288
  br i1 %1332, label %1333, label %1344

1333:                                             ; preds = %1329
  %1334 = ptrtoint ptr %1330 to i32
  %1335 = sub i32 %1313, %1334
  %1336 = getelementptr i8, ptr %1330, i32 %1335
  br label %1337

1337:                                             ; preds = %1337, %1333
  %1338 = phi ptr [ %1342, %1337 ], [ %1331, %1333 ]
  %1339 = phi ptr [ %1340, %1337 ], [ %1330, %1333 ]
  %1340 = getelementptr i8, ptr %1339, i32 1
  %1341 = load i8, ptr %1339, align 1
  %1342 = getelementptr i8, ptr %1338, i32 1
  store i8 %1341, ptr %1338, align 1
  %1343 = icmp eq ptr %1340, %1336
  br i1 %1343, label %1344, label %1337

1344:                                             ; preds = %1337, %1329, %1304, %1296
  %1345 = load ptr, ptr %830, align 4
  %1346 = getelementptr i8, ptr %1345, i32 %1286
  store ptr %1346, ptr %830, align 4
  %1347 = icmp ugt i32 %1286, 65535
  br i1 %1347, label %1348, label %1355

1348:                                             ; preds = %1344
  store i32 1, ptr %832, align 4
  %1349 = load ptr, ptr %833, align 4
  %1350 = load ptr, ptr %1, align 4
  %1351 = ptrtoint ptr %1349 to i32
  %1352 = ptrtoint ptr %1350 to i32
  %1353 = sub i32 %1351, %1352
  %1354 = ashr exact i32 %1353, 3
  store i32 %1354, ptr %834, align 4
  br label %1355

1355:                                             ; preds = %1348, %1344, %1294
  %1356 = trunc i32 %1286 to i16
  %1357 = load ptr, ptr %833, align 4
  %1358 = getelementptr inbounds %struct.seqDef_s, ptr %1357, i32 0, i32 1
  store i16 %1356, ptr %1358, align 4
  %1359 = add i32 %1282, 3
  %1360 = load ptr, ptr %833, align 4
  store i32 %1359, ptr %1360, align 4
  %1361 = icmp ugt i32 %1287, 65535
  br i1 %1361, label %1364, label %1362

1362:                                             ; preds = %1355
  %1363 = load ptr, ptr %833, align 4
  br label %1371

1364:                                             ; preds = %1355
  store i32 2, ptr %832, align 4
  %1365 = load ptr, ptr %833, align 4
  %1366 = load ptr, ptr %1, align 4
  %1367 = ptrtoint ptr %1365 to i32
  %1368 = ptrtoint ptr %1366 to i32
  %1369 = sub i32 %1367, %1368
  %1370 = ashr exact i32 %1369, 3
  store i32 %1370, ptr %834, align 4
  br label %1371

1371:                                             ; preds = %1364, %1362, %1002, %1000
  %1372 = phi i32 [ %926, %1000 ], [ %926, %1002 ], [ %1287, %1362 ], [ %1287, %1364 ]
  %1373 = phi ptr [ %1001, %1000 ], [ %1003, %1002 ], [ %1363, %1362 ], [ %1365, %1364 ]
  %1374 = phi i32 [ %839, %1000 ], [ %839, %1002 ], [ %838, %1362 ], [ %838, %1364 ]
  %1375 = phi i32 [ %838, %1000 ], [ %838, %1002 ], [ %1282, %1362 ], [ %1282, %1364 ]
  %1376 = phi i32 [ %922, %1000 ], [ %922, %1002 ], [ %1281, %1362 ], [ %1281, %1364 ]
  %1377 = phi ptr [ %857, %1000 ], [ %857, %1002 ], [ %1283, %1362 ], [ %1283, %1364 ]
  %1378 = trunc i32 %1372 to i16
  %1379 = getelementptr inbounds %struct.seqDef_s, ptr %1373, i32 0, i32 2
  store i16 %1378, ptr %1379, align 2
  %1380 = load ptr, ptr %833, align 4
  %1381 = getelementptr %struct.seqDef_s, ptr %1380, i32 1
  store ptr %1381, ptr %833, align 4
  %1382 = getelementptr i8, ptr %1377, i32 %1376
  %1383 = icmp ugt ptr %1382, %796
  br i1 %1383, label %1521, label %1384

1384:                                             ; preds = %1371
  %1385 = add i32 %848, 2
  %1386 = getelementptr i8, ptr %777, i32 %1385
  %1387 = load i64, ptr %1386, align 1
  %1388 = mul i64 %1387, -3523014627327384477
  %1389 = lshr i64 %1388, %824
  %1390 = trunc i64 %1389 to i32
  %1391 = getelementptr i32, ptr %773, i32 %1390
  store i32 %1385, ptr %1391, align 4
  %1392 = getelementptr i8, ptr %1382, i32 -2
  %1393 = ptrtoint ptr %1392 to i32
  %1394 = sub i32 %1393, %779
  %1395 = load i64, ptr %1392, align 1
  %1396 = mul i64 %1395, -3523014627327384477
  %1397 = lshr i64 %1396, %824
  %1398 = trunc i64 %1397 to i32
  %1399 = getelementptr i32, ptr %773, i32 %1398
  store i32 %1394, ptr %1399, align 4
  %1400 = load i64, ptr %1386, align 1
  %1401 = mul i64 %1400, -3523014627271114752
  %1402 = lshr i64 %1401, %826
  %1403 = trunc i64 %1402 to i32
  %1404 = getelementptr i32, ptr %775, i32 %1403
  store i32 %1385, ptr %1404, align 4
  %1405 = getelementptr i8, ptr %1382, i32 -1
  %1406 = load i64, ptr %1405, align 1
  %1407 = mul i64 %1406, -3523014627271114752
  %1408 = lshr i64 %1407, %826
  %1409 = trunc i64 %1408 to i32
  %1410 = ptrtoint ptr %1405 to i32
  %1411 = sub i32 %1410, %779
  %1412 = getelementptr i32, ptr %775, i32 %1409
  store i32 %1411, ptr %1412, align 4
  br label %1413

1413:                                             ; preds = %1513, %1384
  %1414 = phi ptr [ %1519, %1513 ], [ %1382, %1384 ]
  %1415 = phi i32 [ %1416, %1513 ], [ %1375, %1384 ]
  %1416 = phi i32 [ %1415, %1513 ], [ %1374, %1384 ]
  %1417 = icmp ne i32 %1416, 0
  %1418 = load i32, ptr %1414, align 1
  %1419 = sub i32 0, %1416
  %1420 = getelementptr i8, ptr %1414, i32 %1419
  %1421 = load i32, ptr %1420, align 1
  %1422 = icmp eq i32 %1418, %1421
  %1423 = and i1 %1417, %1422
  br i1 %1423, label %1424, label %1521

1424:                                             ; preds = %1413
  %1425 = getelementptr i8, ptr %1414, i32 4
  %1426 = getelementptr i8, ptr %1425, i32 %1419
  %1427 = icmp ugt ptr %827, %1425
  br i1 %1427, label %1428, label %1454

1428:                                             ; preds = %1424
  %1429 = load i32, ptr %1426, align 1
  %1430 = load i32, ptr %1425, align 1
  %1431 = xor i32 %1430, %1429
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1436, label %1433

1433:                                             ; preds = %1428
  %1434 = tail call i32 @llvm.cttz.i32(i32 %1431, i1 true) #4, !range !8
  %1435 = lshr i32 %1434, 3
  br label %1480

1436:                                             ; preds = %1442, %1428
  %1437 = phi ptr [ %1440, %1442 ], [ %1425, %1428 ]
  %1438 = phi ptr [ %1439, %1442 ], [ %1426, %1428 ]
  %1439 = getelementptr i8, ptr %1438, i32 4
  %1440 = getelementptr i8, ptr %1437, i32 4
  %1441 = icmp ult ptr %1440, %827
  br i1 %1441, label %1442, label %1454

1442:                                             ; preds = %1436
  %1443 = load i32, ptr %1439, align 1
  %1444 = load i32, ptr %1440, align 1
  %1445 = xor i32 %1444, %1443
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1436, label %1447

1447:                                             ; preds = %1442
  %1448 = tail call i32 @llvm.cttz.i32(i32 %1445, i1 true) #4, !range !8
  %1449 = lshr i32 %1448, 3
  %1450 = getelementptr i8, ptr %1440, i32 %1449
  %1451 = ptrtoint ptr %1450 to i32
  %1452 = ptrtoint ptr %1425 to i32
  %1453 = sub i32 %1451, %1452
  br label %1480

1454:                                             ; preds = %1436, %1424
  %1455 = phi ptr [ %1425, %1424 ], [ %1440, %1436 ]
  %1456 = phi ptr [ %1426, %1424 ], [ %1439, %1436 ]
  %1457 = icmp ult ptr %1455, %828
  br i1 %1457, label %1458, label %1465

1458:                                             ; preds = %1454
  %1459 = load i16, ptr %1456, align 1
  %1460 = load i16, ptr %1455, align 1
  %1461 = icmp eq i16 %1459, %1460
  br i1 %1461, label %1462, label %1465

1462:                                             ; preds = %1458
  %1463 = getelementptr i8, ptr %1455, i32 2
  %1464 = getelementptr i8, ptr %1456, i32 2
  br label %1465

1465:                                             ; preds = %1462, %1458, %1454
  %1466 = phi ptr [ %1463, %1462 ], [ %1455, %1458 ], [ %1455, %1454 ]
  %1467 = phi ptr [ %1464, %1462 ], [ %1456, %1458 ], [ %1456, %1454 ]
  %1468 = icmp ult ptr %1466, %795
  br i1 %1468, label %1469, label %1475

1469:                                             ; preds = %1465
  %1470 = load i8, ptr %1467, align 1
  %1471 = load i8, ptr %1466, align 1
  %1472 = icmp eq i8 %1470, %1471
  %1473 = zext i1 %1472 to i32
  %1474 = getelementptr i8, ptr %1466, i32 %1473
  br label %1475

1475:                                             ; preds = %1469, %1465
  %1476 = phi ptr [ %1466, %1465 ], [ %1474, %1469 ]
  %1477 = ptrtoint ptr %1476 to i32
  %1478 = ptrtoint ptr %1425 to i32
  %1479 = sub i32 %1477, %1478
  br label %1480

1480:                                             ; preds = %1475, %1447, %1433
  %1481 = phi i32 [ %1479, %1475 ], [ %1435, %1433 ], [ %1453, %1447 ]
  %1482 = add i32 %1481, 4
  %1483 = ptrtoint ptr %1414 to i32
  %1484 = sub i32 %1483, %779
  %1485 = load i64, ptr %1414, align 1
  %1486 = mul i64 %1485, -3523014627271114752
  %1487 = lshr i64 %1486, %826
  %1488 = trunc i64 %1487 to i32
  %1489 = getelementptr i32, ptr %775, i32 %1488
  store i32 %1484, ptr %1489, align 4
  %1490 = load i64, ptr %1414, align 1
  %1491 = mul i64 %1490, -3523014627327384477
  %1492 = lshr i64 %1491, %824
  %1493 = trunc i64 %1492 to i32
  %1494 = getelementptr i32, ptr %773, i32 %1493
  store i32 %1484, ptr %1494, align 4
  %1495 = add i32 %1481, 1
  %1496 = icmp ugt ptr %1414, %829
  br i1 %1496, label %1499, label %1497

1497:                                             ; preds = %1480
  %1498 = load ptr, ptr %830, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1498, ptr noundef align 1 dereferenceable(16) %1414, i32 16, i1 false) #4
  br label %1499

1499:                                             ; preds = %1497, %1480
  %1500 = load ptr, ptr %833, align 4
  %1501 = getelementptr inbounds %struct.seqDef_s, ptr %1500, i32 0, i32 1
  store i16 0, ptr %1501, align 4
  %1502 = load ptr, ptr %833, align 4
  store i32 1, ptr %1502, align 4
  %1503 = icmp ugt i32 %1495, 65535
  br i1 %1503, label %1506, label %1504

1504:                                             ; preds = %1499
  %1505 = load ptr, ptr %833, align 4
  br label %1513

1506:                                             ; preds = %1499
  store i32 2, ptr %832, align 4
  %1507 = load ptr, ptr %833, align 4
  %1508 = load ptr, ptr %1, align 4
  %1509 = ptrtoint ptr %1507 to i32
  %1510 = ptrtoint ptr %1508 to i32
  %1511 = sub i32 %1509, %1510
  %1512 = ashr exact i32 %1511, 3
  store i32 %1512, ptr %834, align 4
  br label %1513

1513:                                             ; preds = %1506, %1504
  %1514 = phi ptr [ %1505, %1504 ], [ %1507, %1506 ]
  %1515 = trunc i32 %1495 to i16
  %1516 = getelementptr inbounds %struct.seqDef_s, ptr %1514, i32 0, i32 2
  store i16 %1515, ptr %1516, align 2
  %1517 = load ptr, ptr %833, align 4
  %1518 = getelementptr %struct.seqDef_s, ptr %1517, i32 1
  store ptr %1518, ptr %833, align 4
  %1519 = getelementptr i8, ptr %1414, i32 %1482
  %1520 = icmp ugt ptr %1519, %796
  br i1 %1520, label %1521, label %1413

1521:                                             ; preds = %1513, %1413, %1371, %1104
  %1522 = phi i32 [ %839, %1104 ], [ %1374, %1371 ], [ %1416, %1413 ], [ %1415, %1513 ]
  %1523 = phi i32 [ %838, %1104 ], [ %1375, %1371 ], [ %1415, %1413 ], [ %1416, %1513 ]
  %1524 = phi ptr [ %837, %1104 ], [ %1382, %1371 ], [ %1414, %1413 ], [ %1519, %1513 ]
  %1525 = phi ptr [ %1109, %1104 ], [ %1382, %1371 ], [ %1414, %1413 ], [ %1519, %1513 ]
  %1526 = icmp ult ptr %1525, %796
  br i1 %1526, label %835, label %1527

1527:                                             ; preds = %1521
  %1528 = ptrtoint ptr %1524 to i32
  br label %1529

1529:                                             ; preds = %1527, %770
  %1530 = phi i32 [ %1528, %1527 ], [ %778, %770 ]
  %1531 = phi i32 [ %1522, %1527 ], [ %812, %770 ]
  %1532 = phi i32 [ %1523, %1527 ], [ %816, %770 ]
  %1533 = icmp eq i32 %1532, 0
  %1534 = select i1 %1533, i32 %815, i32 %1532
  store i32 %1534, ptr %2, align 4
  %1535 = icmp eq i32 %1531, 0
  %1536 = select i1 %1535, i32 %815, i32 %1531
  store i32 %1536, ptr %798, align 4
  br label %3071

1537:                                             ; preds = %5
  %1538 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %1539 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %1540 = load ptr, ptr %1539, align 4
  %1541 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %1542 = load ptr, ptr %1541, align 4
  %1543 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %1544 = load ptr, ptr %1543, align 4
  %1545 = ptrtoint ptr %3 to i32
  %1546 = ptrtoint ptr %1544 to i32
  %1547 = sub i32 %1545, %1546
  %1548 = add i32 %1547, %4
  %1549 = load i32, ptr %1538, align 4
  %1550 = shl nuw i32 1, %1549
  %1551 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %1552 = load i32, ptr %1551, align 4
  %1553 = sub i32 %1548, %1552
  %1554 = icmp ugt i32 %1553, %1550
  %1555 = sub i32 %1548, %1550
  %1556 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %1557 = load i32, ptr %1556, align 4
  %1558 = icmp eq i32 %1557, 0
  %1559 = select i1 %1558, i1 %1554, i1 false
  %1560 = select i1 %1559, i32 %1555, i32 %1552
  %1561 = getelementptr i8, ptr %1544, i32 %1560
  %1562 = getelementptr i8, ptr %3, i32 %4
  %1563 = getelementptr i8, ptr %1562, i32 -8
  %1564 = load i32, ptr %2, align 4
  %1565 = getelementptr i32, ptr %2, i32 1
  %1566 = load i32, ptr %1565, align 4
  %1567 = icmp eq ptr %1561, %3
  %1568 = zext i1 %1567 to i32
  %1569 = getelementptr i8, ptr %3, i32 %1568
  %1570 = ptrtoint ptr %1569 to i32
  %1571 = sub i32 %1570, %1546
  %1572 = sub i32 %1571, %1552
  %1573 = icmp ugt i32 %1572, %1550
  %1574 = sub i32 %1571, %1550
  %1575 = select i1 %1558, i1 %1573, i1 false
  %1576 = select i1 %1575, i32 %1574, i32 %1552
  %1577 = sub i32 %1571, %1576
  %1578 = icmp ugt i32 %1566, %1577
  %1579 = select i1 %1578, i32 0, i32 %1566
  %1580 = select i1 %1578, i32 %1566, i32 0
  %1581 = icmp ugt i32 %1564, %1577
  %1582 = select i1 %1581, i32 %1564, i32 %1580
  %1583 = select i1 %1581, i32 0, i32 %1564
  %1584 = icmp ult ptr %1569, %1563
  br i1 %1584, label %1585, label %2296

1585:                                             ; preds = %1537
  %1586 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %1587 = load i32, ptr %1586, align 4
  %1588 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %1589 = load i32, ptr %1588, align 4
  %1590 = sub i32 64, %1589
  %1591 = zext i32 %1590 to i64
  %1592 = sub i32 64, %1587
  %1593 = zext i32 %1592 to i64
  %1594 = getelementptr i8, ptr %1562, i32 -3
  %1595 = getelementptr i8, ptr %1562, i32 -1
  %1596 = getelementptr i8, ptr %1562, i32 -32
  %1597 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %1598 = ptrtoint ptr %1596 to i32
  %1599 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %1600 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %1601 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  br label %1602

1602:                                             ; preds = %2288, %1585
  %1603 = phi ptr [ %1569, %1585 ], [ %2292, %2288 ]
  %1604 = phi ptr [ %3, %1585 ], [ %2291, %2288 ]
  %1605 = phi i32 [ %1583, %1585 ], [ %2290, %2288 ]
  %1606 = phi i32 [ %1579, %1585 ], [ %2289, %2288 ]
  %1607 = load i64, ptr %1603, align 1
  %1608 = mul i64 %1607, -3523014627327384477
  %1609 = lshr i64 %1608, %1591
  %1610 = trunc i64 %1609 to i32
  %1611 = mul i64 %1607, -3523014627193847808
  %1612 = lshr i64 %1611, %1593
  %1613 = trunc i64 %1612 to i32
  %1614 = ptrtoint ptr %1603 to i32
  %1615 = sub i32 %1614, %1546
  %1616 = getelementptr i32, ptr %1540, i32 %1610
  %1617 = load i32, ptr %1616, align 4
  %1618 = getelementptr i32, ptr %1542, i32 %1613
  %1619 = load i32, ptr %1618, align 4
  %1620 = getelementptr i8, ptr %1544, i32 %1617
  %1621 = getelementptr i8, ptr %1544, i32 %1619
  %1622 = add i32 %1615, 1
  store i32 %1615, ptr %1618, align 4
  store i32 %1615, ptr %1616, align 4
  %1623 = icmp ne i32 %1605, 0
  %1624 = getelementptr i8, ptr %1603, i32 1
  %1625 = sub i32 0, %1605
  %1626 = getelementptr i8, ptr %1624, i32 %1625
  %1627 = load i32, ptr %1626, align 1
  %1628 = load i32, ptr %1624, align 1
  %1629 = icmp eq i32 %1627, %1628
  %1630 = and i1 %1623, %1629
  br i1 %1630, label %1631, label %1776

1631:                                             ; preds = %1602
  %1632 = getelementptr i8, ptr %1603, i32 5
  %1633 = getelementptr i8, ptr %1632, i32 %1625
  %1634 = icmp ugt ptr %1594, %1632
  br i1 %1634, label %1635, label %1661

1635:                                             ; preds = %1631
  %1636 = load i32, ptr %1633, align 1
  %1637 = load i32, ptr %1632, align 1
  %1638 = xor i32 %1637, %1636
  %1639 = icmp eq i32 %1638, 0
  br i1 %1639, label %1643, label %1640

1640:                                             ; preds = %1635
  %1641 = tail call i32 @llvm.cttz.i32(i32 %1638, i1 true) #4, !range !8
  %1642 = lshr i32 %1641, 3
  br label %1687

1643:                                             ; preds = %1649, %1635
  %1644 = phi ptr [ %1647, %1649 ], [ %1632, %1635 ]
  %1645 = phi ptr [ %1646, %1649 ], [ %1633, %1635 ]
  %1646 = getelementptr i8, ptr %1645, i32 4
  %1647 = getelementptr i8, ptr %1644, i32 4
  %1648 = icmp ult ptr %1647, %1594
  br i1 %1648, label %1649, label %1661

1649:                                             ; preds = %1643
  %1650 = load i32, ptr %1646, align 1
  %1651 = load i32, ptr %1647, align 1
  %1652 = xor i32 %1651, %1650
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1643, label %1654

1654:                                             ; preds = %1649
  %1655 = tail call i32 @llvm.cttz.i32(i32 %1652, i1 true) #4, !range !8
  %1656 = lshr i32 %1655, 3
  %1657 = getelementptr i8, ptr %1647, i32 %1656
  %1658 = ptrtoint ptr %1657 to i32
  %1659 = ptrtoint ptr %1632 to i32
  %1660 = sub i32 %1658, %1659
  br label %1687

1661:                                             ; preds = %1643, %1631
  %1662 = phi ptr [ %1632, %1631 ], [ %1647, %1643 ]
  %1663 = phi ptr [ %1633, %1631 ], [ %1646, %1643 ]
  %1664 = icmp ult ptr %1662, %1595
  br i1 %1664, label %1665, label %1672

1665:                                             ; preds = %1661
  %1666 = load i16, ptr %1663, align 1
  %1667 = load i16, ptr %1662, align 1
  %1668 = icmp eq i16 %1666, %1667
  br i1 %1668, label %1669, label %1672

1669:                                             ; preds = %1665
  %1670 = getelementptr i8, ptr %1662, i32 2
  %1671 = getelementptr i8, ptr %1663, i32 2
  br label %1672

1672:                                             ; preds = %1669, %1665, %1661
  %1673 = phi ptr [ %1670, %1669 ], [ %1662, %1665 ], [ %1662, %1661 ]
  %1674 = phi ptr [ %1671, %1669 ], [ %1663, %1665 ], [ %1663, %1661 ]
  %1675 = icmp ult ptr %1673, %1562
  br i1 %1675, label %1676, label %1682

1676:                                             ; preds = %1672
  %1677 = load i8, ptr %1674, align 1
  %1678 = load i8, ptr %1673, align 1
  %1679 = icmp eq i8 %1677, %1678
  %1680 = zext i1 %1679 to i32
  %1681 = getelementptr i8, ptr %1673, i32 %1680
  br label %1682

1682:                                             ; preds = %1676, %1672
  %1683 = phi ptr [ %1673, %1672 ], [ %1681, %1676 ]
  %1684 = ptrtoint ptr %1683 to i32
  %1685 = ptrtoint ptr %1632 to i32
  %1686 = sub i32 %1684, %1685
  br label %1687

1687:                                             ; preds = %1682, %1654, %1640
  %1688 = phi i32 [ %1686, %1682 ], [ %1642, %1640 ], [ %1660, %1654 ]
  %1689 = add i32 %1688, 4
  %1690 = ptrtoint ptr %1624 to i32
  %1691 = ptrtoint ptr %1604 to i32
  %1692 = sub i32 %1690, %1691
  %1693 = add i32 %1688, 1
  %1694 = getelementptr i8, ptr %1604, i32 %1692
  %1695 = icmp ugt ptr %1694, %1596
  %1696 = load ptr, ptr %1597, align 4
  br i1 %1695, label %1718, label %1697

1697:                                             ; preds = %1687
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1696, ptr noundef align 1 dereferenceable(16) %1604, i32 16, i1 false) #4
  %1698 = icmp ugt i32 %1692, 16
  %1699 = load ptr, ptr %1597, align 4
  br i1 %1698, label %1702, label %1700

1700:                                             ; preds = %1697
  %1701 = getelementptr i8, ptr %1699, i32 %1692
  store ptr %1701, ptr %1597, align 4
  br label %1761

1702:                                             ; preds = %1697
  %1703 = getelementptr i8, ptr %1699, i32 16
  %1704 = getelementptr i8, ptr %1604, i32 16
  %1705 = add i32 %1692, -16
  %1706 = getelementptr i8, ptr %1699, i32 %1692
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1703, ptr noundef align 1 dereferenceable(16) %1704, i32 16, i1 false) #4
  %1707 = icmp slt i32 %1705, 17
  br i1 %1707, label %1750, label %1708

1708:                                             ; preds = %1702
  %1709 = getelementptr i8, ptr %1699, i32 32
  br label %1710

1710:                                             ; preds = %1710, %1708
  %1711 = phi ptr [ %1704, %1708 ], [ %1715, %1710 ]
  %1712 = phi ptr [ %1709, %1708 ], [ %1716, %1710 ]
  %1713 = getelementptr i8, ptr %1711, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1712, ptr noundef align 1 dereferenceable(16) %1713, i32 16, i1 false) #4
  %1714 = getelementptr i8, ptr %1712, i32 16
  %1715 = getelementptr i8, ptr %1711, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1714, ptr noundef align 1 dereferenceable(16) %1715, i32 16, i1 false) #4
  %1716 = getelementptr i8, ptr %1712, i32 32
  %1717 = icmp ult ptr %1716, %1706
  br i1 %1717, label %1710, label %1750

1718:                                             ; preds = %1687
  %1719 = ptrtoint ptr %1694 to i32
  %1720 = icmp ult ptr %1596, %1604
  br i1 %1720, label %1735, label %1721

1721:                                             ; preds = %1718
  %1722 = sub i32 %1598, %1691
  %1723 = getelementptr i8, ptr %1696, i32 %1722
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1696, ptr noundef align 1 dereferenceable(16) %1604, i32 16, i1 false) #4
  %1724 = icmp slt i32 %1722, 17
  br i1 %1724, label %1735, label %1725

1725:                                             ; preds = %1721
  %1726 = getelementptr i8, ptr %1696, i32 16
  br label %1727

1727:                                             ; preds = %1727, %1725
  %1728 = phi ptr [ %1604, %1725 ], [ %1732, %1727 ]
  %1729 = phi ptr [ %1726, %1725 ], [ %1733, %1727 ]
  %1730 = getelementptr i8, ptr %1728, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1729, ptr noundef align 1 dereferenceable(16) %1730, i32 16, i1 false) #4
  %1731 = getelementptr i8, ptr %1729, i32 16
  %1732 = getelementptr i8, ptr %1728, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1731, ptr noundef align 1 dereferenceable(16) %1732, i32 16, i1 false) #4
  %1733 = getelementptr i8, ptr %1729, i32 32
  %1734 = icmp ult ptr %1733, %1723
  br i1 %1734, label %1727, label %1735

1735:                                             ; preds = %1727, %1721, %1718
  %1736 = phi ptr [ %1596, %1721 ], [ %1604, %1718 ], [ %1596, %1727 ]
  %1737 = phi ptr [ %1723, %1721 ], [ %1696, %1718 ], [ %1723, %1727 ]
  %1738 = icmp ult ptr %1736, %1694
  br i1 %1738, label %1739, label %1750

1739:                                             ; preds = %1735
  %1740 = ptrtoint ptr %1736 to i32
  %1741 = sub i32 %1719, %1740
  %1742 = getelementptr i8, ptr %1736, i32 %1741
  br label %1743

1743:                                             ; preds = %1743, %1739
  %1744 = phi ptr [ %1748, %1743 ], [ %1737, %1739 ]
  %1745 = phi ptr [ %1746, %1743 ], [ %1736, %1739 ]
  %1746 = getelementptr i8, ptr %1745, i32 1
  %1747 = load i8, ptr %1745, align 1
  %1748 = getelementptr i8, ptr %1744, i32 1
  store i8 %1747, ptr %1744, align 1
  %1749 = icmp eq ptr %1746, %1742
  br i1 %1749, label %1750, label %1743

1750:                                             ; preds = %1743, %1735, %1710, %1702
  %1751 = load ptr, ptr %1597, align 4
  %1752 = getelementptr i8, ptr %1751, i32 %1692
  store ptr %1752, ptr %1597, align 4
  %1753 = icmp ugt i32 %1692, 65535
  br i1 %1753, label %1754, label %1761

1754:                                             ; preds = %1750
  store i32 1, ptr %1599, align 4
  %1755 = load ptr, ptr %1600, align 4
  %1756 = load ptr, ptr %1, align 4
  %1757 = ptrtoint ptr %1755 to i32
  %1758 = ptrtoint ptr %1756 to i32
  %1759 = sub i32 %1757, %1758
  %1760 = ashr exact i32 %1759, 3
  store i32 %1760, ptr %1601, align 4
  br label %1761

1761:                                             ; preds = %1754, %1750, %1700
  %1762 = trunc i32 %1692 to i16
  %1763 = load ptr, ptr %1600, align 4
  %1764 = getelementptr inbounds %struct.seqDef_s, ptr %1763, i32 0, i32 1
  store i16 %1762, ptr %1764, align 4
  %1765 = load ptr, ptr %1600, align 4
  store i32 1, ptr %1765, align 4
  %1766 = icmp ugt i32 %1693, 65535
  br i1 %1766, label %1769, label %1767

1767:                                             ; preds = %1761
  %1768 = load ptr, ptr %1600, align 4
  br label %2138

1769:                                             ; preds = %1761
  store i32 2, ptr %1599, align 4
  %1770 = load ptr, ptr %1600, align 4
  %1771 = load ptr, ptr %1, align 4
  %1772 = ptrtoint ptr %1770 to i32
  %1773 = ptrtoint ptr %1771 to i32
  %1774 = sub i32 %1772, %1773
  %1775 = ashr exact i32 %1774, 3
  store i32 %1775, ptr %1601, align 4
  br label %2138

1776:                                             ; preds = %1602
  %1777 = icmp ugt i32 %1617, %1560
  br i1 %1777, label %1778, label %1860

1778:                                             ; preds = %1776
  %1779 = load i64, ptr %1620, align 1
  %1780 = load i64, ptr %1603, align 1
  %1781 = icmp eq i64 %1779, %1780
  br i1 %1781, label %1782, label %1864

1782:                                             ; preds = %1778
  %1783 = getelementptr i8, ptr %1603, i32 8
  %1784 = getelementptr i8, ptr %1620, i32 8
  %1785 = icmp ugt ptr %1594, %1783
  br i1 %1785, label %1786, label %1812

1786:                                             ; preds = %1782
  %1787 = load i32, ptr %1784, align 1
  %1788 = load i32, ptr %1783, align 1
  %1789 = xor i32 %1788, %1787
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1794, label %1791

1791:                                             ; preds = %1786
  %1792 = tail call i32 @llvm.cttz.i32(i32 %1789, i1 true) #4, !range !8
  %1793 = lshr i32 %1792, 3
  br label %1838

1794:                                             ; preds = %1800, %1786
  %1795 = phi ptr [ %1798, %1800 ], [ %1783, %1786 ]
  %1796 = phi ptr [ %1797, %1800 ], [ %1784, %1786 ]
  %1797 = getelementptr i8, ptr %1796, i32 4
  %1798 = getelementptr i8, ptr %1795, i32 4
  %1799 = icmp ult ptr %1798, %1594
  br i1 %1799, label %1800, label %1812

1800:                                             ; preds = %1794
  %1801 = load i32, ptr %1797, align 1
  %1802 = load i32, ptr %1798, align 1
  %1803 = xor i32 %1802, %1801
  %1804 = icmp eq i32 %1803, 0
  br i1 %1804, label %1794, label %1805

1805:                                             ; preds = %1800
  %1806 = tail call i32 @llvm.cttz.i32(i32 %1803, i1 true) #4, !range !8
  %1807 = lshr i32 %1806, 3
  %1808 = getelementptr i8, ptr %1798, i32 %1807
  %1809 = ptrtoint ptr %1808 to i32
  %1810 = ptrtoint ptr %1783 to i32
  %1811 = sub i32 %1809, %1810
  br label %1838

1812:                                             ; preds = %1794, %1782
  %1813 = phi ptr [ %1783, %1782 ], [ %1798, %1794 ]
  %1814 = phi ptr [ %1784, %1782 ], [ %1797, %1794 ]
  %1815 = icmp ult ptr %1813, %1595
  br i1 %1815, label %1816, label %1823

1816:                                             ; preds = %1812
  %1817 = load i16, ptr %1814, align 1
  %1818 = load i16, ptr %1813, align 1
  %1819 = icmp eq i16 %1817, %1818
  br i1 %1819, label %1820, label %1823

1820:                                             ; preds = %1816
  %1821 = getelementptr i8, ptr %1813, i32 2
  %1822 = getelementptr i8, ptr %1814, i32 2
  br label %1823

1823:                                             ; preds = %1820, %1816, %1812
  %1824 = phi ptr [ %1821, %1820 ], [ %1813, %1816 ], [ %1813, %1812 ]
  %1825 = phi ptr [ %1822, %1820 ], [ %1814, %1816 ], [ %1814, %1812 ]
  %1826 = icmp ult ptr %1824, %1562
  br i1 %1826, label %1827, label %1833

1827:                                             ; preds = %1823
  %1828 = load i8, ptr %1825, align 1
  %1829 = load i8, ptr %1824, align 1
  %1830 = icmp eq i8 %1828, %1829
  %1831 = zext i1 %1830 to i32
  %1832 = getelementptr i8, ptr %1824, i32 %1831
  br label %1833

1833:                                             ; preds = %1827, %1823
  %1834 = phi ptr [ %1824, %1823 ], [ %1832, %1827 ]
  %1835 = ptrtoint ptr %1834 to i32
  %1836 = ptrtoint ptr %1783 to i32
  %1837 = sub i32 %1835, %1836
  br label %1838

1838:                                             ; preds = %1833, %1805, %1791
  %1839 = phi i32 [ %1837, %1833 ], [ %1793, %1791 ], [ %1811, %1805 ]
  %1840 = add i32 %1839, 8
  %1841 = ptrtoint ptr %1620 to i32
  %1842 = sub i32 %1614, %1841
  %1843 = icmp ugt ptr %1603, %1604
  %1844 = icmp ugt ptr %1620, %1561
  %1845 = and i1 %1843, %1844
  br i1 %1845, label %1846, label %2047

1846:                                             ; preds = %1855, %1838
  %1847 = phi ptr [ %1850, %1855 ], [ %1603, %1838 ]
  %1848 = phi ptr [ %1852, %1855 ], [ %1620, %1838 ]
  %1849 = phi i32 [ %1856, %1855 ], [ %1840, %1838 ]
  %1850 = getelementptr i8, ptr %1847, i32 -1
  %1851 = load i8, ptr %1850, align 1
  %1852 = getelementptr i8, ptr %1848, i32 -1
  %1853 = load i8, ptr %1852, align 1
  %1854 = icmp eq i8 %1851, %1853
  br i1 %1854, label %1855, label %2047

1855:                                             ; preds = %1846
  %1856 = add i32 %1849, 1
  %1857 = icmp ugt ptr %1850, %1604
  %1858 = icmp ugt ptr %1852, %1561
  %1859 = and i1 %1857, %1858
  br i1 %1859, label %1846, label %2047

1860:                                             ; preds = %1776
  %1861 = icmp ugt i32 %1619, %1560
  br i1 %1861, label %1862, label %1871

1862:                                             ; preds = %1860
  %1863 = load i32, ptr %1603, align 1
  br label %1867

1864:                                             ; preds = %1778
  %1865 = trunc i64 %1780 to i32
  %1866 = icmp ugt i32 %1619, %1560
  br i1 %1866, label %1867, label %1871

1867:                                             ; preds = %1864, %1862
  %1868 = phi i32 [ %1863, %1862 ], [ %1865, %1864 ]
  %1869 = load i32, ptr %1621, align 1
  %1870 = icmp eq i32 %1869, %1868
  br i1 %1870, label %1877, label %1871

1871:                                             ; preds = %1867, %1864, %1860
  %1872 = ptrtoint ptr %1604 to i32
  %1873 = sub i32 %1614, %1872
  %1874 = ashr i32 %1873, 8
  %1875 = add nsw i32 %1874, 1
  %1876 = getelementptr i8, ptr %1603, i32 %1875
  br label %2288

1877:                                             ; preds = %1867
  %1878 = load i64, ptr %1624, align 1
  %1879 = mul i64 %1878, -3523014627327384477
  %1880 = lshr i64 %1879, %1591
  %1881 = trunc i64 %1880 to i32
  %1882 = getelementptr i32, ptr %1540, i32 %1881
  %1883 = load i32, ptr %1882, align 4
  %1884 = getelementptr i8, ptr %1544, i32 %1883
  store i32 %1622, ptr %1882, align 4
  %1885 = icmp ugt i32 %1883, %1560
  br i1 %1885, label %1886, label %1969

1886:                                             ; preds = %1877
  %1887 = load i64, ptr %1884, align 1
  %1888 = load i64, ptr %1624, align 1
  %1889 = icmp eq i64 %1887, %1888
  br i1 %1889, label %1890, label %1969

1890:                                             ; preds = %1886
  %1891 = getelementptr i8, ptr %1603, i32 9
  %1892 = getelementptr i8, ptr %1884, i32 8
  %1893 = icmp ugt ptr %1594, %1891
  br i1 %1893, label %1894, label %1920

1894:                                             ; preds = %1890
  %1895 = load i32, ptr %1892, align 1
  %1896 = load i32, ptr %1891, align 1
  %1897 = xor i32 %1896, %1895
  %1898 = icmp eq i32 %1897, 0
  br i1 %1898, label %1902, label %1899

1899:                                             ; preds = %1894
  %1900 = tail call i32 @llvm.cttz.i32(i32 %1897, i1 true) #4, !range !8
  %1901 = lshr i32 %1900, 3
  br label %1946

1902:                                             ; preds = %1908, %1894
  %1903 = phi ptr [ %1906, %1908 ], [ %1891, %1894 ]
  %1904 = phi ptr [ %1905, %1908 ], [ %1892, %1894 ]
  %1905 = getelementptr i8, ptr %1904, i32 4
  %1906 = getelementptr i8, ptr %1903, i32 4
  %1907 = icmp ult ptr %1906, %1594
  br i1 %1907, label %1908, label %1920

1908:                                             ; preds = %1902
  %1909 = load i32, ptr %1905, align 1
  %1910 = load i32, ptr %1906, align 1
  %1911 = xor i32 %1910, %1909
  %1912 = icmp eq i32 %1911, 0
  br i1 %1912, label %1902, label %1913

1913:                                             ; preds = %1908
  %1914 = tail call i32 @llvm.cttz.i32(i32 %1911, i1 true) #4, !range !8
  %1915 = lshr i32 %1914, 3
  %1916 = getelementptr i8, ptr %1906, i32 %1915
  %1917 = ptrtoint ptr %1916 to i32
  %1918 = ptrtoint ptr %1891 to i32
  %1919 = sub i32 %1917, %1918
  br label %1946

1920:                                             ; preds = %1902, %1890
  %1921 = phi ptr [ %1891, %1890 ], [ %1906, %1902 ]
  %1922 = phi ptr [ %1892, %1890 ], [ %1905, %1902 ]
  %1923 = icmp ult ptr %1921, %1595
  br i1 %1923, label %1924, label %1931

1924:                                             ; preds = %1920
  %1925 = load i16, ptr %1922, align 1
  %1926 = load i16, ptr %1921, align 1
  %1927 = icmp eq i16 %1925, %1926
  br i1 %1927, label %1928, label %1931

1928:                                             ; preds = %1924
  %1929 = getelementptr i8, ptr %1921, i32 2
  %1930 = getelementptr i8, ptr %1922, i32 2
  br label %1931

1931:                                             ; preds = %1928, %1924, %1920
  %1932 = phi ptr [ %1929, %1928 ], [ %1921, %1924 ], [ %1921, %1920 ]
  %1933 = phi ptr [ %1930, %1928 ], [ %1922, %1924 ], [ %1922, %1920 ]
  %1934 = icmp ult ptr %1932, %1562
  br i1 %1934, label %1935, label %1941

1935:                                             ; preds = %1931
  %1936 = load i8, ptr %1933, align 1
  %1937 = load i8, ptr %1932, align 1
  %1938 = icmp eq i8 %1936, %1937
  %1939 = zext i1 %1938 to i32
  %1940 = getelementptr i8, ptr %1932, i32 %1939
  br label %1941

1941:                                             ; preds = %1935, %1931
  %1942 = phi ptr [ %1932, %1931 ], [ %1940, %1935 ]
  %1943 = ptrtoint ptr %1942 to i32
  %1944 = ptrtoint ptr %1891 to i32
  %1945 = sub i32 %1943, %1944
  br label %1946

1946:                                             ; preds = %1941, %1913, %1899
  %1947 = phi i32 [ %1945, %1941 ], [ %1901, %1899 ], [ %1919, %1913 ]
  %1948 = add i32 %1947, 8
  %1949 = ptrtoint ptr %1624 to i32
  %1950 = ptrtoint ptr %1884 to i32
  %1951 = sub i32 %1949, %1950
  %1952 = icmp ugt ptr %1624, %1604
  %1953 = icmp ugt ptr %1884, %1561
  %1954 = and i1 %1952, %1953
  br i1 %1954, label %1955, label %2047

1955:                                             ; preds = %1964, %1946
  %1956 = phi ptr [ %1961, %1964 ], [ %1884, %1946 ]
  %1957 = phi ptr [ %1959, %1964 ], [ %1624, %1946 ]
  %1958 = phi i32 [ %1965, %1964 ], [ %1948, %1946 ]
  %1959 = getelementptr i8, ptr %1957, i32 -1
  %1960 = load i8, ptr %1959, align 1
  %1961 = getelementptr i8, ptr %1956, i32 -1
  %1962 = load i8, ptr %1961, align 1
  %1963 = icmp eq i8 %1960, %1962
  br i1 %1963, label %1964, label %2047

1964:                                             ; preds = %1955
  %1965 = add i32 %1958, 1
  %1966 = icmp ugt ptr %1959, %1604
  %1967 = icmp ugt ptr %1961, %1561
  %1968 = and i1 %1967, %1966
  br i1 %1968, label %1955, label %2047

1969:                                             ; preds = %1886, %1877
  %1970 = getelementptr i8, ptr %1603, i32 4
  %1971 = getelementptr i8, ptr %1621, i32 4
  %1972 = icmp ugt ptr %1594, %1970
  br i1 %1972, label %1973, label %1999

1973:                                             ; preds = %1969
  %1974 = load i32, ptr %1971, align 1
  %1975 = load i32, ptr %1970, align 1
  %1976 = xor i32 %1975, %1974
  %1977 = icmp eq i32 %1976, 0
  br i1 %1977, label %1981, label %1978

1978:                                             ; preds = %1973
  %1979 = tail call i32 @llvm.cttz.i32(i32 %1976, i1 true) #4, !range !8
  %1980 = lshr i32 %1979, 3
  br label %2025

1981:                                             ; preds = %1987, %1973
  %1982 = phi ptr [ %1985, %1987 ], [ %1970, %1973 ]
  %1983 = phi ptr [ %1984, %1987 ], [ %1971, %1973 ]
  %1984 = getelementptr i8, ptr %1983, i32 4
  %1985 = getelementptr i8, ptr %1982, i32 4
  %1986 = icmp ult ptr %1985, %1594
  br i1 %1986, label %1987, label %1999

1987:                                             ; preds = %1981
  %1988 = load i32, ptr %1984, align 1
  %1989 = load i32, ptr %1985, align 1
  %1990 = xor i32 %1989, %1988
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %1981, label %1992

1992:                                             ; preds = %1987
  %1993 = tail call i32 @llvm.cttz.i32(i32 %1990, i1 true) #4, !range !8
  %1994 = lshr i32 %1993, 3
  %1995 = getelementptr i8, ptr %1985, i32 %1994
  %1996 = ptrtoint ptr %1995 to i32
  %1997 = ptrtoint ptr %1970 to i32
  %1998 = sub i32 %1996, %1997
  br label %2025

1999:                                             ; preds = %1981, %1969
  %2000 = phi ptr [ %1970, %1969 ], [ %1985, %1981 ]
  %2001 = phi ptr [ %1971, %1969 ], [ %1984, %1981 ]
  %2002 = icmp ult ptr %2000, %1595
  br i1 %2002, label %2003, label %2010

2003:                                             ; preds = %1999
  %2004 = load i16, ptr %2001, align 1
  %2005 = load i16, ptr %2000, align 1
  %2006 = icmp eq i16 %2004, %2005
  br i1 %2006, label %2007, label %2010

2007:                                             ; preds = %2003
  %2008 = getelementptr i8, ptr %2000, i32 2
  %2009 = getelementptr i8, ptr %2001, i32 2
  br label %2010

2010:                                             ; preds = %2007, %2003, %1999
  %2011 = phi ptr [ %2008, %2007 ], [ %2000, %2003 ], [ %2000, %1999 ]
  %2012 = phi ptr [ %2009, %2007 ], [ %2001, %2003 ], [ %2001, %1999 ]
  %2013 = icmp ult ptr %2011, %1562
  br i1 %2013, label %2014, label %2020

2014:                                             ; preds = %2010
  %2015 = load i8, ptr %2012, align 1
  %2016 = load i8, ptr %2011, align 1
  %2017 = icmp eq i8 %2015, %2016
  %2018 = zext i1 %2017 to i32
  %2019 = getelementptr i8, ptr %2011, i32 %2018
  br label %2020

2020:                                             ; preds = %2014, %2010
  %2021 = phi ptr [ %2011, %2010 ], [ %2019, %2014 ]
  %2022 = ptrtoint ptr %2021 to i32
  %2023 = ptrtoint ptr %1970 to i32
  %2024 = sub i32 %2022, %2023
  br label %2025

2025:                                             ; preds = %2020, %1992, %1978
  %2026 = phi i32 [ %2024, %2020 ], [ %1980, %1978 ], [ %1998, %1992 ]
  %2027 = add i32 %2026, 4
  %2028 = ptrtoint ptr %1621 to i32
  %2029 = sub i32 %1614, %2028
  %2030 = icmp ugt ptr %1603, %1604
  %2031 = icmp ugt ptr %1621, %1561
  %2032 = and i1 %2030, %2031
  br i1 %2032, label %2033, label %2047

2033:                                             ; preds = %2042, %2025
  %2034 = phi ptr [ %2037, %2042 ], [ %1603, %2025 ]
  %2035 = phi ptr [ %2039, %2042 ], [ %1621, %2025 ]
  %2036 = phi i32 [ %2043, %2042 ], [ %2027, %2025 ]
  %2037 = getelementptr i8, ptr %2034, i32 -1
  %2038 = load i8, ptr %2037, align 1
  %2039 = getelementptr i8, ptr %2035, i32 -1
  %2040 = load i8, ptr %2039, align 1
  %2041 = icmp eq i8 %2038, %2040
  br i1 %2041, label %2042, label %2047

2042:                                             ; preds = %2033
  %2043 = add i32 %2036, 1
  %2044 = icmp ugt ptr %2037, %1604
  %2045 = icmp ugt ptr %2039, %1561
  %2046 = and i1 %2044, %2045
  br i1 %2046, label %2033, label %2047

2047:                                             ; preds = %2042, %2033, %2025, %1964, %1955, %1946, %1855, %1846, %1838
  %2048 = phi i32 [ %1840, %1838 ], [ %1948, %1946 ], [ %2027, %2025 ], [ %1856, %1855 ], [ %1849, %1846 ], [ %1965, %1964 ], [ %1958, %1955 ], [ %2036, %2033 ], [ %2043, %2042 ]
  %2049 = phi i32 [ %1842, %1838 ], [ %1951, %1946 ], [ %2029, %2025 ], [ %1842, %1846 ], [ %1842, %1855 ], [ %1951, %1955 ], [ %1951, %1964 ], [ %2029, %2033 ], [ %2029, %2042 ]
  %2050 = phi ptr [ %1603, %1838 ], [ %1624, %1946 ], [ %1603, %2025 ], [ %1850, %1855 ], [ %1847, %1846 ], [ %1959, %1964 ], [ %1957, %1955 ], [ %2034, %2033 ], [ %2037, %2042 ]
  %2051 = ptrtoint ptr %2050 to i32
  %2052 = ptrtoint ptr %1604 to i32
  %2053 = sub i32 %2051, %2052
  %2054 = add i32 %2048, -3
  %2055 = getelementptr i8, ptr %1604, i32 %2053
  %2056 = icmp ugt ptr %2055, %1596
  %2057 = load ptr, ptr %1597, align 4
  br i1 %2056, label %2079, label %2058

2058:                                             ; preds = %2047
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2057, ptr noundef align 1 dereferenceable(16) %1604, i32 16, i1 false) #4
  %2059 = icmp ugt i32 %2053, 16
  %2060 = load ptr, ptr %1597, align 4
  br i1 %2059, label %2063, label %2061

2061:                                             ; preds = %2058
  %2062 = getelementptr i8, ptr %2060, i32 %2053
  store ptr %2062, ptr %1597, align 4
  br label %2122

2063:                                             ; preds = %2058
  %2064 = getelementptr i8, ptr %2060, i32 16
  %2065 = getelementptr i8, ptr %1604, i32 16
  %2066 = add i32 %2053, -16
  %2067 = getelementptr i8, ptr %2060, i32 %2053
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2064, ptr noundef align 1 dereferenceable(16) %2065, i32 16, i1 false) #4
  %2068 = icmp slt i32 %2066, 17
  br i1 %2068, label %2111, label %2069

2069:                                             ; preds = %2063
  %2070 = getelementptr i8, ptr %2060, i32 32
  br label %2071

2071:                                             ; preds = %2071, %2069
  %2072 = phi ptr [ %2065, %2069 ], [ %2076, %2071 ]
  %2073 = phi ptr [ %2070, %2069 ], [ %2077, %2071 ]
  %2074 = getelementptr i8, ptr %2072, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2073, ptr noundef align 1 dereferenceable(16) %2074, i32 16, i1 false) #4
  %2075 = getelementptr i8, ptr %2073, i32 16
  %2076 = getelementptr i8, ptr %2072, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2075, ptr noundef align 1 dereferenceable(16) %2076, i32 16, i1 false) #4
  %2077 = getelementptr i8, ptr %2073, i32 32
  %2078 = icmp ult ptr %2077, %2067
  br i1 %2078, label %2071, label %2111

2079:                                             ; preds = %2047
  %2080 = ptrtoint ptr %2055 to i32
  %2081 = icmp ult ptr %1596, %1604
  br i1 %2081, label %2096, label %2082

2082:                                             ; preds = %2079
  %2083 = sub i32 %1598, %2052
  %2084 = getelementptr i8, ptr %2057, i32 %2083
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2057, ptr noundef align 1 dereferenceable(16) %1604, i32 16, i1 false) #4
  %2085 = icmp slt i32 %2083, 17
  br i1 %2085, label %2096, label %2086

2086:                                             ; preds = %2082
  %2087 = getelementptr i8, ptr %2057, i32 16
  br label %2088

2088:                                             ; preds = %2088, %2086
  %2089 = phi ptr [ %1604, %2086 ], [ %2093, %2088 ]
  %2090 = phi ptr [ %2087, %2086 ], [ %2094, %2088 ]
  %2091 = getelementptr i8, ptr %2089, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2090, ptr noundef align 1 dereferenceable(16) %2091, i32 16, i1 false) #4
  %2092 = getelementptr i8, ptr %2090, i32 16
  %2093 = getelementptr i8, ptr %2089, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2092, ptr noundef align 1 dereferenceable(16) %2093, i32 16, i1 false) #4
  %2094 = getelementptr i8, ptr %2090, i32 32
  %2095 = icmp ult ptr %2094, %2084
  br i1 %2095, label %2088, label %2096

2096:                                             ; preds = %2088, %2082, %2079
  %2097 = phi ptr [ %1596, %2082 ], [ %1604, %2079 ], [ %1596, %2088 ]
  %2098 = phi ptr [ %2084, %2082 ], [ %2057, %2079 ], [ %2084, %2088 ]
  %2099 = icmp ult ptr %2097, %2055
  br i1 %2099, label %2100, label %2111

2100:                                             ; preds = %2096
  %2101 = ptrtoint ptr %2097 to i32
  %2102 = sub i32 %2080, %2101
  %2103 = getelementptr i8, ptr %2097, i32 %2102
  br label %2104

2104:                                             ; preds = %2104, %2100
  %2105 = phi ptr [ %2109, %2104 ], [ %2098, %2100 ]
  %2106 = phi ptr [ %2107, %2104 ], [ %2097, %2100 ]
  %2107 = getelementptr i8, ptr %2106, i32 1
  %2108 = load i8, ptr %2106, align 1
  %2109 = getelementptr i8, ptr %2105, i32 1
  store i8 %2108, ptr %2105, align 1
  %2110 = icmp eq ptr %2107, %2103
  br i1 %2110, label %2111, label %2104

2111:                                             ; preds = %2104, %2096, %2071, %2063
  %2112 = load ptr, ptr %1597, align 4
  %2113 = getelementptr i8, ptr %2112, i32 %2053
  store ptr %2113, ptr %1597, align 4
  %2114 = icmp ugt i32 %2053, 65535
  br i1 %2114, label %2115, label %2122

2115:                                             ; preds = %2111
  store i32 1, ptr %1599, align 4
  %2116 = load ptr, ptr %1600, align 4
  %2117 = load ptr, ptr %1, align 4
  %2118 = ptrtoint ptr %2116 to i32
  %2119 = ptrtoint ptr %2117 to i32
  %2120 = sub i32 %2118, %2119
  %2121 = ashr exact i32 %2120, 3
  store i32 %2121, ptr %1601, align 4
  br label %2122

2122:                                             ; preds = %2115, %2111, %2061
  %2123 = trunc i32 %2053 to i16
  %2124 = load ptr, ptr %1600, align 4
  %2125 = getelementptr inbounds %struct.seqDef_s, ptr %2124, i32 0, i32 1
  store i16 %2123, ptr %2125, align 4
  %2126 = add i32 %2049, 3
  %2127 = load ptr, ptr %1600, align 4
  store i32 %2126, ptr %2127, align 4
  %2128 = icmp ugt i32 %2054, 65535
  br i1 %2128, label %2131, label %2129

2129:                                             ; preds = %2122
  %2130 = load ptr, ptr %1600, align 4
  br label %2138

2131:                                             ; preds = %2122
  store i32 2, ptr %1599, align 4
  %2132 = load ptr, ptr %1600, align 4
  %2133 = load ptr, ptr %1, align 4
  %2134 = ptrtoint ptr %2132 to i32
  %2135 = ptrtoint ptr %2133 to i32
  %2136 = sub i32 %2134, %2135
  %2137 = ashr exact i32 %2136, 3
  store i32 %2137, ptr %1601, align 4
  br label %2138

2138:                                             ; preds = %2131, %2129, %1769, %1767
  %2139 = phi i32 [ %1693, %1767 ], [ %1693, %1769 ], [ %2054, %2129 ], [ %2054, %2131 ]
  %2140 = phi ptr [ %1768, %1767 ], [ %1770, %1769 ], [ %2130, %2129 ], [ %2132, %2131 ]
  %2141 = phi i32 [ %1606, %1767 ], [ %1606, %1769 ], [ %1605, %2129 ], [ %1605, %2131 ]
  %2142 = phi i32 [ %1605, %1767 ], [ %1605, %1769 ], [ %2049, %2129 ], [ %2049, %2131 ]
  %2143 = phi i32 [ %1689, %1767 ], [ %1689, %1769 ], [ %2048, %2129 ], [ %2048, %2131 ]
  %2144 = phi ptr [ %1624, %1767 ], [ %1624, %1769 ], [ %2050, %2129 ], [ %2050, %2131 ]
  %2145 = trunc i32 %2139 to i16
  %2146 = getelementptr inbounds %struct.seqDef_s, ptr %2140, i32 0, i32 2
  store i16 %2145, ptr %2146, align 2
  %2147 = load ptr, ptr %1600, align 4
  %2148 = getelementptr %struct.seqDef_s, ptr %2147, i32 1
  store ptr %2148, ptr %1600, align 4
  %2149 = getelementptr i8, ptr %2144, i32 %2143
  %2150 = icmp ugt ptr %2149, %1563
  br i1 %2150, label %2288, label %2151

2151:                                             ; preds = %2138
  %2152 = add i32 %1615, 2
  %2153 = getelementptr i8, ptr %1544, i32 %2152
  %2154 = load i64, ptr %2153, align 1
  %2155 = mul i64 %2154, -3523014627327384477
  %2156 = lshr i64 %2155, %1591
  %2157 = trunc i64 %2156 to i32
  %2158 = getelementptr i32, ptr %1540, i32 %2157
  store i32 %2152, ptr %2158, align 4
  %2159 = getelementptr i8, ptr %2149, i32 -2
  %2160 = ptrtoint ptr %2159 to i32
  %2161 = sub i32 %2160, %1546
  %2162 = load i64, ptr %2159, align 1
  %2163 = mul i64 %2162, -3523014627327384477
  %2164 = lshr i64 %2163, %1591
  %2165 = trunc i64 %2164 to i32
  %2166 = getelementptr i32, ptr %1540, i32 %2165
  store i32 %2161, ptr %2166, align 4
  %2167 = load i64, ptr %2153, align 1
  %2168 = mul i64 %2167, -3523014627193847808
  %2169 = lshr i64 %2168, %1593
  %2170 = trunc i64 %2169 to i32
  %2171 = getelementptr i32, ptr %1542, i32 %2170
  store i32 %2152, ptr %2171, align 4
  %2172 = getelementptr i8, ptr %2149, i32 -1
  %2173 = load i64, ptr %2172, align 1
  %2174 = mul i64 %2173, -3523014627193847808
  %2175 = lshr i64 %2174, %1593
  %2176 = trunc i64 %2175 to i32
  %2177 = ptrtoint ptr %2172 to i32
  %2178 = sub i32 %2177, %1546
  %2179 = getelementptr i32, ptr %1542, i32 %2176
  store i32 %2178, ptr %2179, align 4
  br label %2180

2180:                                             ; preds = %2280, %2151
  %2181 = phi ptr [ %2286, %2280 ], [ %2149, %2151 ]
  %2182 = phi i32 [ %2183, %2280 ], [ %2142, %2151 ]
  %2183 = phi i32 [ %2182, %2280 ], [ %2141, %2151 ]
  %2184 = icmp ne i32 %2183, 0
  %2185 = load i32, ptr %2181, align 1
  %2186 = sub i32 0, %2183
  %2187 = getelementptr i8, ptr %2181, i32 %2186
  %2188 = load i32, ptr %2187, align 1
  %2189 = icmp eq i32 %2185, %2188
  %2190 = and i1 %2184, %2189
  br i1 %2190, label %2191, label %2288

2191:                                             ; preds = %2180
  %2192 = getelementptr i8, ptr %2181, i32 4
  %2193 = getelementptr i8, ptr %2192, i32 %2186
  %2194 = icmp ugt ptr %1594, %2192
  br i1 %2194, label %2195, label %2221

2195:                                             ; preds = %2191
  %2196 = load i32, ptr %2193, align 1
  %2197 = load i32, ptr %2192, align 1
  %2198 = xor i32 %2197, %2196
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2203, label %2200

2200:                                             ; preds = %2195
  %2201 = tail call i32 @llvm.cttz.i32(i32 %2198, i1 true) #4, !range !8
  %2202 = lshr i32 %2201, 3
  br label %2247

2203:                                             ; preds = %2209, %2195
  %2204 = phi ptr [ %2207, %2209 ], [ %2192, %2195 ]
  %2205 = phi ptr [ %2206, %2209 ], [ %2193, %2195 ]
  %2206 = getelementptr i8, ptr %2205, i32 4
  %2207 = getelementptr i8, ptr %2204, i32 4
  %2208 = icmp ult ptr %2207, %1594
  br i1 %2208, label %2209, label %2221

2209:                                             ; preds = %2203
  %2210 = load i32, ptr %2206, align 1
  %2211 = load i32, ptr %2207, align 1
  %2212 = xor i32 %2211, %2210
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2203, label %2214

2214:                                             ; preds = %2209
  %2215 = tail call i32 @llvm.cttz.i32(i32 %2212, i1 true) #4, !range !8
  %2216 = lshr i32 %2215, 3
  %2217 = getelementptr i8, ptr %2207, i32 %2216
  %2218 = ptrtoint ptr %2217 to i32
  %2219 = ptrtoint ptr %2192 to i32
  %2220 = sub i32 %2218, %2219
  br label %2247

2221:                                             ; preds = %2203, %2191
  %2222 = phi ptr [ %2192, %2191 ], [ %2207, %2203 ]
  %2223 = phi ptr [ %2193, %2191 ], [ %2206, %2203 ]
  %2224 = icmp ult ptr %2222, %1595
  br i1 %2224, label %2225, label %2232

2225:                                             ; preds = %2221
  %2226 = load i16, ptr %2223, align 1
  %2227 = load i16, ptr %2222, align 1
  %2228 = icmp eq i16 %2226, %2227
  br i1 %2228, label %2229, label %2232

2229:                                             ; preds = %2225
  %2230 = getelementptr i8, ptr %2222, i32 2
  %2231 = getelementptr i8, ptr %2223, i32 2
  br label %2232

2232:                                             ; preds = %2229, %2225, %2221
  %2233 = phi ptr [ %2230, %2229 ], [ %2222, %2225 ], [ %2222, %2221 ]
  %2234 = phi ptr [ %2231, %2229 ], [ %2223, %2225 ], [ %2223, %2221 ]
  %2235 = icmp ult ptr %2233, %1562
  br i1 %2235, label %2236, label %2242

2236:                                             ; preds = %2232
  %2237 = load i8, ptr %2234, align 1
  %2238 = load i8, ptr %2233, align 1
  %2239 = icmp eq i8 %2237, %2238
  %2240 = zext i1 %2239 to i32
  %2241 = getelementptr i8, ptr %2233, i32 %2240
  br label %2242

2242:                                             ; preds = %2236, %2232
  %2243 = phi ptr [ %2233, %2232 ], [ %2241, %2236 ]
  %2244 = ptrtoint ptr %2243 to i32
  %2245 = ptrtoint ptr %2192 to i32
  %2246 = sub i32 %2244, %2245
  br label %2247

2247:                                             ; preds = %2242, %2214, %2200
  %2248 = phi i32 [ %2246, %2242 ], [ %2202, %2200 ], [ %2220, %2214 ]
  %2249 = add i32 %2248, 4
  %2250 = ptrtoint ptr %2181 to i32
  %2251 = sub i32 %2250, %1546
  %2252 = load i64, ptr %2181, align 1
  %2253 = mul i64 %2252, -3523014627193847808
  %2254 = lshr i64 %2253, %1593
  %2255 = trunc i64 %2254 to i32
  %2256 = getelementptr i32, ptr %1542, i32 %2255
  store i32 %2251, ptr %2256, align 4
  %2257 = load i64, ptr %2181, align 1
  %2258 = mul i64 %2257, -3523014627327384477
  %2259 = lshr i64 %2258, %1591
  %2260 = trunc i64 %2259 to i32
  %2261 = getelementptr i32, ptr %1540, i32 %2260
  store i32 %2251, ptr %2261, align 4
  %2262 = add i32 %2248, 1
  %2263 = icmp ugt ptr %2181, %1596
  br i1 %2263, label %2266, label %2264

2264:                                             ; preds = %2247
  %2265 = load ptr, ptr %1597, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2265, ptr noundef align 1 dereferenceable(16) %2181, i32 16, i1 false) #4
  br label %2266

2266:                                             ; preds = %2264, %2247
  %2267 = load ptr, ptr %1600, align 4
  %2268 = getelementptr inbounds %struct.seqDef_s, ptr %2267, i32 0, i32 1
  store i16 0, ptr %2268, align 4
  %2269 = load ptr, ptr %1600, align 4
  store i32 1, ptr %2269, align 4
  %2270 = icmp ugt i32 %2262, 65535
  br i1 %2270, label %2273, label %2271

2271:                                             ; preds = %2266
  %2272 = load ptr, ptr %1600, align 4
  br label %2280

2273:                                             ; preds = %2266
  store i32 2, ptr %1599, align 4
  %2274 = load ptr, ptr %1600, align 4
  %2275 = load ptr, ptr %1, align 4
  %2276 = ptrtoint ptr %2274 to i32
  %2277 = ptrtoint ptr %2275 to i32
  %2278 = sub i32 %2276, %2277
  %2279 = ashr exact i32 %2278, 3
  store i32 %2279, ptr %1601, align 4
  br label %2280

2280:                                             ; preds = %2273, %2271
  %2281 = phi ptr [ %2272, %2271 ], [ %2274, %2273 ]
  %2282 = trunc i32 %2262 to i16
  %2283 = getelementptr inbounds %struct.seqDef_s, ptr %2281, i32 0, i32 2
  store i16 %2282, ptr %2283, align 2
  %2284 = load ptr, ptr %1600, align 4
  %2285 = getelementptr %struct.seqDef_s, ptr %2284, i32 1
  store ptr %2285, ptr %1600, align 4
  %2286 = getelementptr i8, ptr %2181, i32 %2249
  %2287 = icmp ugt ptr %2286, %1563
  br i1 %2287, label %2288, label %2180

2288:                                             ; preds = %2280, %2180, %2138, %1871
  %2289 = phi i32 [ %1606, %1871 ], [ %2141, %2138 ], [ %2183, %2180 ], [ %2182, %2280 ]
  %2290 = phi i32 [ %1605, %1871 ], [ %2142, %2138 ], [ %2182, %2180 ], [ %2183, %2280 ]
  %2291 = phi ptr [ %1604, %1871 ], [ %2149, %2138 ], [ %2181, %2180 ], [ %2286, %2280 ]
  %2292 = phi ptr [ %1876, %1871 ], [ %2149, %2138 ], [ %2181, %2180 ], [ %2286, %2280 ]
  %2293 = icmp ult ptr %2292, %1563
  br i1 %2293, label %1602, label %2294

2294:                                             ; preds = %2288
  %2295 = ptrtoint ptr %2291 to i32
  br label %2296

2296:                                             ; preds = %2294, %1537
  %2297 = phi i32 [ %2295, %2294 ], [ %1545, %1537 ]
  %2298 = phi i32 [ %2289, %2294 ], [ %1579, %1537 ]
  %2299 = phi i32 [ %2290, %2294 ], [ %1583, %1537 ]
  %2300 = icmp eq i32 %2299, 0
  %2301 = select i1 %2300, i32 %1582, i32 %2299
  store i32 %2301, ptr %2, align 4
  %2302 = icmp eq i32 %2298, 0
  %2303 = select i1 %2302, i32 %1582, i32 %2298
  store i32 %2303, ptr %1565, align 4
  br label %3071

2304:                                             ; preds = %5
  %2305 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %2306 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %2307 = load ptr, ptr %2306, align 4
  %2308 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %2309 = load ptr, ptr %2308, align 4
  %2310 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %2311 = load ptr, ptr %2310, align 4
  %2312 = ptrtoint ptr %3 to i32
  %2313 = ptrtoint ptr %2311 to i32
  %2314 = sub i32 %2312, %2313
  %2315 = add i32 %2314, %4
  %2316 = load i32, ptr %2305, align 4
  %2317 = shl nuw i32 1, %2316
  %2318 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %2319 = load i32, ptr %2318, align 4
  %2320 = sub i32 %2315, %2319
  %2321 = icmp ugt i32 %2320, %2317
  %2322 = sub i32 %2315, %2317
  %2323 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %2324 = load i32, ptr %2323, align 4
  %2325 = icmp eq i32 %2324, 0
  %2326 = select i1 %2325, i1 %2321, i1 false
  %2327 = select i1 %2326, i32 %2322, i32 %2319
  %2328 = getelementptr i8, ptr %2311, i32 %2327
  %2329 = getelementptr i8, ptr %3, i32 %4
  %2330 = getelementptr i8, ptr %2329, i32 -8
  %2331 = load i32, ptr %2, align 4
  %2332 = getelementptr i32, ptr %2, i32 1
  %2333 = load i32, ptr %2332, align 4
  %2334 = icmp eq ptr %2328, %3
  %2335 = zext i1 %2334 to i32
  %2336 = getelementptr i8, ptr %3, i32 %2335
  %2337 = ptrtoint ptr %2336 to i32
  %2338 = sub i32 %2337, %2313
  %2339 = sub i32 %2338, %2319
  %2340 = icmp ugt i32 %2339, %2317
  %2341 = sub i32 %2338, %2317
  %2342 = select i1 %2325, i1 %2340, i1 false
  %2343 = select i1 %2342, i32 %2341, i32 %2319
  %2344 = sub i32 %2338, %2343
  %2345 = icmp ugt i32 %2333, %2344
  %2346 = select i1 %2345, i32 0, i32 %2333
  %2347 = select i1 %2345, i32 %2333, i32 0
  %2348 = icmp ugt i32 %2331, %2344
  %2349 = select i1 %2348, i32 %2331, i32 %2347
  %2350 = select i1 %2348, i32 0, i32 %2331
  %2351 = icmp ult ptr %2336, %2330
  br i1 %2351, label %2352, label %3063

2352:                                             ; preds = %2304
  %2353 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %2354 = load i32, ptr %2353, align 4
  %2355 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %2356 = load i32, ptr %2355, align 4
  %2357 = sub i32 64, %2356
  %2358 = zext i32 %2357 to i64
  %2359 = sub i32 64, %2354
  %2360 = zext i32 %2359 to i64
  %2361 = getelementptr i8, ptr %2329, i32 -3
  %2362 = getelementptr i8, ptr %2329, i32 -1
  %2363 = getelementptr i8, ptr %2329, i32 -32
  %2364 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %2365 = ptrtoint ptr %2363 to i32
  %2366 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %2367 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %2368 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  br label %2369

2369:                                             ; preds = %3055, %2352
  %2370 = phi ptr [ %2336, %2352 ], [ %3059, %3055 ]
  %2371 = phi ptr [ %3, %2352 ], [ %3058, %3055 ]
  %2372 = phi i32 [ %2350, %2352 ], [ %3057, %3055 ]
  %2373 = phi i32 [ %2346, %2352 ], [ %3056, %3055 ]
  %2374 = load i64, ptr %2370, align 1
  %2375 = mul i64 %2374, -3523014627327384477
  %2376 = lshr i64 %2375, %2358
  %2377 = trunc i64 %2376 to i32
  %2378 = mul i64 %2374, -3523014627193167104
  %2379 = lshr i64 %2378, %2360
  %2380 = trunc i64 %2379 to i32
  %2381 = ptrtoint ptr %2370 to i32
  %2382 = sub i32 %2381, %2313
  %2383 = getelementptr i32, ptr %2307, i32 %2377
  %2384 = load i32, ptr %2383, align 4
  %2385 = getelementptr i32, ptr %2309, i32 %2380
  %2386 = load i32, ptr %2385, align 4
  %2387 = getelementptr i8, ptr %2311, i32 %2384
  %2388 = getelementptr i8, ptr %2311, i32 %2386
  %2389 = add i32 %2382, 1
  store i32 %2382, ptr %2385, align 4
  store i32 %2382, ptr %2383, align 4
  %2390 = icmp ne i32 %2372, 0
  %2391 = getelementptr i8, ptr %2370, i32 1
  %2392 = sub i32 0, %2372
  %2393 = getelementptr i8, ptr %2391, i32 %2392
  %2394 = load i32, ptr %2393, align 1
  %2395 = load i32, ptr %2391, align 1
  %2396 = icmp eq i32 %2394, %2395
  %2397 = and i1 %2390, %2396
  br i1 %2397, label %2398, label %2543

2398:                                             ; preds = %2369
  %2399 = getelementptr i8, ptr %2370, i32 5
  %2400 = getelementptr i8, ptr %2399, i32 %2392
  %2401 = icmp ugt ptr %2361, %2399
  br i1 %2401, label %2402, label %2428

2402:                                             ; preds = %2398
  %2403 = load i32, ptr %2400, align 1
  %2404 = load i32, ptr %2399, align 1
  %2405 = xor i32 %2404, %2403
  %2406 = icmp eq i32 %2405, 0
  br i1 %2406, label %2410, label %2407

2407:                                             ; preds = %2402
  %2408 = tail call i32 @llvm.cttz.i32(i32 %2405, i1 true) #4, !range !8
  %2409 = lshr i32 %2408, 3
  br label %2454

2410:                                             ; preds = %2416, %2402
  %2411 = phi ptr [ %2414, %2416 ], [ %2399, %2402 ]
  %2412 = phi ptr [ %2413, %2416 ], [ %2400, %2402 ]
  %2413 = getelementptr i8, ptr %2412, i32 4
  %2414 = getelementptr i8, ptr %2411, i32 4
  %2415 = icmp ult ptr %2414, %2361
  br i1 %2415, label %2416, label %2428

2416:                                             ; preds = %2410
  %2417 = load i32, ptr %2413, align 1
  %2418 = load i32, ptr %2414, align 1
  %2419 = xor i32 %2418, %2417
  %2420 = icmp eq i32 %2419, 0
  br i1 %2420, label %2410, label %2421

2421:                                             ; preds = %2416
  %2422 = tail call i32 @llvm.cttz.i32(i32 %2419, i1 true) #4, !range !8
  %2423 = lshr i32 %2422, 3
  %2424 = getelementptr i8, ptr %2414, i32 %2423
  %2425 = ptrtoint ptr %2424 to i32
  %2426 = ptrtoint ptr %2399 to i32
  %2427 = sub i32 %2425, %2426
  br label %2454

2428:                                             ; preds = %2410, %2398
  %2429 = phi ptr [ %2399, %2398 ], [ %2414, %2410 ]
  %2430 = phi ptr [ %2400, %2398 ], [ %2413, %2410 ]
  %2431 = icmp ult ptr %2429, %2362
  br i1 %2431, label %2432, label %2439

2432:                                             ; preds = %2428
  %2433 = load i16, ptr %2430, align 1
  %2434 = load i16, ptr %2429, align 1
  %2435 = icmp eq i16 %2433, %2434
  br i1 %2435, label %2436, label %2439

2436:                                             ; preds = %2432
  %2437 = getelementptr i8, ptr %2429, i32 2
  %2438 = getelementptr i8, ptr %2430, i32 2
  br label %2439

2439:                                             ; preds = %2436, %2432, %2428
  %2440 = phi ptr [ %2437, %2436 ], [ %2429, %2432 ], [ %2429, %2428 ]
  %2441 = phi ptr [ %2438, %2436 ], [ %2430, %2432 ], [ %2430, %2428 ]
  %2442 = icmp ult ptr %2440, %2329
  br i1 %2442, label %2443, label %2449

2443:                                             ; preds = %2439
  %2444 = load i8, ptr %2441, align 1
  %2445 = load i8, ptr %2440, align 1
  %2446 = icmp eq i8 %2444, %2445
  %2447 = zext i1 %2446 to i32
  %2448 = getelementptr i8, ptr %2440, i32 %2447
  br label %2449

2449:                                             ; preds = %2443, %2439
  %2450 = phi ptr [ %2440, %2439 ], [ %2448, %2443 ]
  %2451 = ptrtoint ptr %2450 to i32
  %2452 = ptrtoint ptr %2399 to i32
  %2453 = sub i32 %2451, %2452
  br label %2454

2454:                                             ; preds = %2449, %2421, %2407
  %2455 = phi i32 [ %2453, %2449 ], [ %2409, %2407 ], [ %2427, %2421 ]
  %2456 = add i32 %2455, 4
  %2457 = ptrtoint ptr %2391 to i32
  %2458 = ptrtoint ptr %2371 to i32
  %2459 = sub i32 %2457, %2458
  %2460 = add i32 %2455, 1
  %2461 = getelementptr i8, ptr %2371, i32 %2459
  %2462 = icmp ugt ptr %2461, %2363
  %2463 = load ptr, ptr %2364, align 4
  br i1 %2462, label %2485, label %2464

2464:                                             ; preds = %2454
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2463, ptr noundef align 1 dereferenceable(16) %2371, i32 16, i1 false) #4
  %2465 = icmp ugt i32 %2459, 16
  %2466 = load ptr, ptr %2364, align 4
  br i1 %2465, label %2469, label %2467

2467:                                             ; preds = %2464
  %2468 = getelementptr i8, ptr %2466, i32 %2459
  store ptr %2468, ptr %2364, align 4
  br label %2528

2469:                                             ; preds = %2464
  %2470 = getelementptr i8, ptr %2466, i32 16
  %2471 = getelementptr i8, ptr %2371, i32 16
  %2472 = add i32 %2459, -16
  %2473 = getelementptr i8, ptr %2466, i32 %2459
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2470, ptr noundef align 1 dereferenceable(16) %2471, i32 16, i1 false) #4
  %2474 = icmp slt i32 %2472, 17
  br i1 %2474, label %2517, label %2475

2475:                                             ; preds = %2469
  %2476 = getelementptr i8, ptr %2466, i32 32
  br label %2477

2477:                                             ; preds = %2477, %2475
  %2478 = phi ptr [ %2471, %2475 ], [ %2482, %2477 ]
  %2479 = phi ptr [ %2476, %2475 ], [ %2483, %2477 ]
  %2480 = getelementptr i8, ptr %2478, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2479, ptr noundef align 1 dereferenceable(16) %2480, i32 16, i1 false) #4
  %2481 = getelementptr i8, ptr %2479, i32 16
  %2482 = getelementptr i8, ptr %2478, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2481, ptr noundef align 1 dereferenceable(16) %2482, i32 16, i1 false) #4
  %2483 = getelementptr i8, ptr %2479, i32 32
  %2484 = icmp ult ptr %2483, %2473
  br i1 %2484, label %2477, label %2517

2485:                                             ; preds = %2454
  %2486 = ptrtoint ptr %2461 to i32
  %2487 = icmp ult ptr %2363, %2371
  br i1 %2487, label %2502, label %2488

2488:                                             ; preds = %2485
  %2489 = sub i32 %2365, %2458
  %2490 = getelementptr i8, ptr %2463, i32 %2489
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2463, ptr noundef align 1 dereferenceable(16) %2371, i32 16, i1 false) #4
  %2491 = icmp slt i32 %2489, 17
  br i1 %2491, label %2502, label %2492

2492:                                             ; preds = %2488
  %2493 = getelementptr i8, ptr %2463, i32 16
  br label %2494

2494:                                             ; preds = %2494, %2492
  %2495 = phi ptr [ %2371, %2492 ], [ %2499, %2494 ]
  %2496 = phi ptr [ %2493, %2492 ], [ %2500, %2494 ]
  %2497 = getelementptr i8, ptr %2495, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2496, ptr noundef align 1 dereferenceable(16) %2497, i32 16, i1 false) #4
  %2498 = getelementptr i8, ptr %2496, i32 16
  %2499 = getelementptr i8, ptr %2495, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2498, ptr noundef align 1 dereferenceable(16) %2499, i32 16, i1 false) #4
  %2500 = getelementptr i8, ptr %2496, i32 32
  %2501 = icmp ult ptr %2500, %2490
  br i1 %2501, label %2494, label %2502

2502:                                             ; preds = %2494, %2488, %2485
  %2503 = phi ptr [ %2363, %2488 ], [ %2371, %2485 ], [ %2363, %2494 ]
  %2504 = phi ptr [ %2490, %2488 ], [ %2463, %2485 ], [ %2490, %2494 ]
  %2505 = icmp ult ptr %2503, %2461
  br i1 %2505, label %2506, label %2517

2506:                                             ; preds = %2502
  %2507 = ptrtoint ptr %2503 to i32
  %2508 = sub i32 %2486, %2507
  %2509 = getelementptr i8, ptr %2503, i32 %2508
  br label %2510

2510:                                             ; preds = %2510, %2506
  %2511 = phi ptr [ %2515, %2510 ], [ %2504, %2506 ]
  %2512 = phi ptr [ %2513, %2510 ], [ %2503, %2506 ]
  %2513 = getelementptr i8, ptr %2512, i32 1
  %2514 = load i8, ptr %2512, align 1
  %2515 = getelementptr i8, ptr %2511, i32 1
  store i8 %2514, ptr %2511, align 1
  %2516 = icmp eq ptr %2513, %2509
  br i1 %2516, label %2517, label %2510

2517:                                             ; preds = %2510, %2502, %2477, %2469
  %2518 = load ptr, ptr %2364, align 4
  %2519 = getelementptr i8, ptr %2518, i32 %2459
  store ptr %2519, ptr %2364, align 4
  %2520 = icmp ugt i32 %2459, 65535
  br i1 %2520, label %2521, label %2528

2521:                                             ; preds = %2517
  store i32 1, ptr %2366, align 4
  %2522 = load ptr, ptr %2367, align 4
  %2523 = load ptr, ptr %1, align 4
  %2524 = ptrtoint ptr %2522 to i32
  %2525 = ptrtoint ptr %2523 to i32
  %2526 = sub i32 %2524, %2525
  %2527 = ashr exact i32 %2526, 3
  store i32 %2527, ptr %2368, align 4
  br label %2528

2528:                                             ; preds = %2521, %2517, %2467
  %2529 = trunc i32 %2459 to i16
  %2530 = load ptr, ptr %2367, align 4
  %2531 = getelementptr inbounds %struct.seqDef_s, ptr %2530, i32 0, i32 1
  store i16 %2529, ptr %2531, align 4
  %2532 = load ptr, ptr %2367, align 4
  store i32 1, ptr %2532, align 4
  %2533 = icmp ugt i32 %2460, 65535
  br i1 %2533, label %2536, label %2534

2534:                                             ; preds = %2528
  %2535 = load ptr, ptr %2367, align 4
  br label %2905

2536:                                             ; preds = %2528
  store i32 2, ptr %2366, align 4
  %2537 = load ptr, ptr %2367, align 4
  %2538 = load ptr, ptr %1, align 4
  %2539 = ptrtoint ptr %2537 to i32
  %2540 = ptrtoint ptr %2538 to i32
  %2541 = sub i32 %2539, %2540
  %2542 = ashr exact i32 %2541, 3
  store i32 %2542, ptr %2368, align 4
  br label %2905

2543:                                             ; preds = %2369
  %2544 = icmp ugt i32 %2384, %2327
  br i1 %2544, label %2545, label %2627

2545:                                             ; preds = %2543
  %2546 = load i64, ptr %2387, align 1
  %2547 = load i64, ptr %2370, align 1
  %2548 = icmp eq i64 %2546, %2547
  br i1 %2548, label %2549, label %2631

2549:                                             ; preds = %2545
  %2550 = getelementptr i8, ptr %2370, i32 8
  %2551 = getelementptr i8, ptr %2387, i32 8
  %2552 = icmp ugt ptr %2361, %2550
  br i1 %2552, label %2553, label %2579

2553:                                             ; preds = %2549
  %2554 = load i32, ptr %2551, align 1
  %2555 = load i32, ptr %2550, align 1
  %2556 = xor i32 %2555, %2554
  %2557 = icmp eq i32 %2556, 0
  br i1 %2557, label %2561, label %2558

2558:                                             ; preds = %2553
  %2559 = tail call i32 @llvm.cttz.i32(i32 %2556, i1 true) #4, !range !8
  %2560 = lshr i32 %2559, 3
  br label %2605

2561:                                             ; preds = %2567, %2553
  %2562 = phi ptr [ %2565, %2567 ], [ %2550, %2553 ]
  %2563 = phi ptr [ %2564, %2567 ], [ %2551, %2553 ]
  %2564 = getelementptr i8, ptr %2563, i32 4
  %2565 = getelementptr i8, ptr %2562, i32 4
  %2566 = icmp ult ptr %2565, %2361
  br i1 %2566, label %2567, label %2579

2567:                                             ; preds = %2561
  %2568 = load i32, ptr %2564, align 1
  %2569 = load i32, ptr %2565, align 1
  %2570 = xor i32 %2569, %2568
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2561, label %2572

2572:                                             ; preds = %2567
  %2573 = tail call i32 @llvm.cttz.i32(i32 %2570, i1 true) #4, !range !8
  %2574 = lshr i32 %2573, 3
  %2575 = getelementptr i8, ptr %2565, i32 %2574
  %2576 = ptrtoint ptr %2575 to i32
  %2577 = ptrtoint ptr %2550 to i32
  %2578 = sub i32 %2576, %2577
  br label %2605

2579:                                             ; preds = %2561, %2549
  %2580 = phi ptr [ %2550, %2549 ], [ %2565, %2561 ]
  %2581 = phi ptr [ %2551, %2549 ], [ %2564, %2561 ]
  %2582 = icmp ult ptr %2580, %2362
  br i1 %2582, label %2583, label %2590

2583:                                             ; preds = %2579
  %2584 = load i16, ptr %2581, align 1
  %2585 = load i16, ptr %2580, align 1
  %2586 = icmp eq i16 %2584, %2585
  br i1 %2586, label %2587, label %2590

2587:                                             ; preds = %2583
  %2588 = getelementptr i8, ptr %2580, i32 2
  %2589 = getelementptr i8, ptr %2581, i32 2
  br label %2590

2590:                                             ; preds = %2587, %2583, %2579
  %2591 = phi ptr [ %2588, %2587 ], [ %2580, %2583 ], [ %2580, %2579 ]
  %2592 = phi ptr [ %2589, %2587 ], [ %2581, %2583 ], [ %2581, %2579 ]
  %2593 = icmp ult ptr %2591, %2329
  br i1 %2593, label %2594, label %2600

2594:                                             ; preds = %2590
  %2595 = load i8, ptr %2592, align 1
  %2596 = load i8, ptr %2591, align 1
  %2597 = icmp eq i8 %2595, %2596
  %2598 = zext i1 %2597 to i32
  %2599 = getelementptr i8, ptr %2591, i32 %2598
  br label %2600

2600:                                             ; preds = %2594, %2590
  %2601 = phi ptr [ %2591, %2590 ], [ %2599, %2594 ]
  %2602 = ptrtoint ptr %2601 to i32
  %2603 = ptrtoint ptr %2550 to i32
  %2604 = sub i32 %2602, %2603
  br label %2605

2605:                                             ; preds = %2600, %2572, %2558
  %2606 = phi i32 [ %2604, %2600 ], [ %2560, %2558 ], [ %2578, %2572 ]
  %2607 = add i32 %2606, 8
  %2608 = ptrtoint ptr %2387 to i32
  %2609 = sub i32 %2381, %2608
  %2610 = icmp ugt ptr %2370, %2371
  %2611 = icmp ugt ptr %2387, %2328
  %2612 = and i1 %2610, %2611
  br i1 %2612, label %2613, label %2814

2613:                                             ; preds = %2622, %2605
  %2614 = phi ptr [ %2617, %2622 ], [ %2370, %2605 ]
  %2615 = phi ptr [ %2619, %2622 ], [ %2387, %2605 ]
  %2616 = phi i32 [ %2623, %2622 ], [ %2607, %2605 ]
  %2617 = getelementptr i8, ptr %2614, i32 -1
  %2618 = load i8, ptr %2617, align 1
  %2619 = getelementptr i8, ptr %2615, i32 -1
  %2620 = load i8, ptr %2619, align 1
  %2621 = icmp eq i8 %2618, %2620
  br i1 %2621, label %2622, label %2814

2622:                                             ; preds = %2613
  %2623 = add i32 %2616, 1
  %2624 = icmp ugt ptr %2617, %2371
  %2625 = icmp ugt ptr %2619, %2328
  %2626 = and i1 %2624, %2625
  br i1 %2626, label %2613, label %2814

2627:                                             ; preds = %2543
  %2628 = icmp ugt i32 %2386, %2327
  br i1 %2628, label %2629, label %2638

2629:                                             ; preds = %2627
  %2630 = load i32, ptr %2370, align 1
  br label %2634

2631:                                             ; preds = %2545
  %2632 = trunc i64 %2547 to i32
  %2633 = icmp ugt i32 %2386, %2327
  br i1 %2633, label %2634, label %2638

2634:                                             ; preds = %2631, %2629
  %2635 = phi i32 [ %2630, %2629 ], [ %2632, %2631 ]
  %2636 = load i32, ptr %2388, align 1
  %2637 = icmp eq i32 %2636, %2635
  br i1 %2637, label %2644, label %2638

2638:                                             ; preds = %2634, %2631, %2627
  %2639 = ptrtoint ptr %2371 to i32
  %2640 = sub i32 %2381, %2639
  %2641 = ashr i32 %2640, 8
  %2642 = add nsw i32 %2641, 1
  %2643 = getelementptr i8, ptr %2370, i32 %2642
  br label %3055

2644:                                             ; preds = %2634
  %2645 = load i64, ptr %2391, align 1
  %2646 = mul i64 %2645, -3523014627327384477
  %2647 = lshr i64 %2646, %2358
  %2648 = trunc i64 %2647 to i32
  %2649 = getelementptr i32, ptr %2307, i32 %2648
  %2650 = load i32, ptr %2649, align 4
  %2651 = getelementptr i8, ptr %2311, i32 %2650
  store i32 %2389, ptr %2649, align 4
  %2652 = icmp ugt i32 %2650, %2327
  br i1 %2652, label %2653, label %2736

2653:                                             ; preds = %2644
  %2654 = load i64, ptr %2651, align 1
  %2655 = load i64, ptr %2391, align 1
  %2656 = icmp eq i64 %2654, %2655
  br i1 %2656, label %2657, label %2736

2657:                                             ; preds = %2653
  %2658 = getelementptr i8, ptr %2370, i32 9
  %2659 = getelementptr i8, ptr %2651, i32 8
  %2660 = icmp ugt ptr %2361, %2658
  br i1 %2660, label %2661, label %2687

2661:                                             ; preds = %2657
  %2662 = load i32, ptr %2659, align 1
  %2663 = load i32, ptr %2658, align 1
  %2664 = xor i32 %2663, %2662
  %2665 = icmp eq i32 %2664, 0
  br i1 %2665, label %2669, label %2666

2666:                                             ; preds = %2661
  %2667 = tail call i32 @llvm.cttz.i32(i32 %2664, i1 true) #4, !range !8
  %2668 = lshr i32 %2667, 3
  br label %2713

2669:                                             ; preds = %2675, %2661
  %2670 = phi ptr [ %2673, %2675 ], [ %2658, %2661 ]
  %2671 = phi ptr [ %2672, %2675 ], [ %2659, %2661 ]
  %2672 = getelementptr i8, ptr %2671, i32 4
  %2673 = getelementptr i8, ptr %2670, i32 4
  %2674 = icmp ult ptr %2673, %2361
  br i1 %2674, label %2675, label %2687

2675:                                             ; preds = %2669
  %2676 = load i32, ptr %2672, align 1
  %2677 = load i32, ptr %2673, align 1
  %2678 = xor i32 %2677, %2676
  %2679 = icmp eq i32 %2678, 0
  br i1 %2679, label %2669, label %2680

2680:                                             ; preds = %2675
  %2681 = tail call i32 @llvm.cttz.i32(i32 %2678, i1 true) #4, !range !8
  %2682 = lshr i32 %2681, 3
  %2683 = getelementptr i8, ptr %2673, i32 %2682
  %2684 = ptrtoint ptr %2683 to i32
  %2685 = ptrtoint ptr %2658 to i32
  %2686 = sub i32 %2684, %2685
  br label %2713

2687:                                             ; preds = %2669, %2657
  %2688 = phi ptr [ %2658, %2657 ], [ %2673, %2669 ]
  %2689 = phi ptr [ %2659, %2657 ], [ %2672, %2669 ]
  %2690 = icmp ult ptr %2688, %2362
  br i1 %2690, label %2691, label %2698

2691:                                             ; preds = %2687
  %2692 = load i16, ptr %2689, align 1
  %2693 = load i16, ptr %2688, align 1
  %2694 = icmp eq i16 %2692, %2693
  br i1 %2694, label %2695, label %2698

2695:                                             ; preds = %2691
  %2696 = getelementptr i8, ptr %2688, i32 2
  %2697 = getelementptr i8, ptr %2689, i32 2
  br label %2698

2698:                                             ; preds = %2695, %2691, %2687
  %2699 = phi ptr [ %2696, %2695 ], [ %2688, %2691 ], [ %2688, %2687 ]
  %2700 = phi ptr [ %2697, %2695 ], [ %2689, %2691 ], [ %2689, %2687 ]
  %2701 = icmp ult ptr %2699, %2329
  br i1 %2701, label %2702, label %2708

2702:                                             ; preds = %2698
  %2703 = load i8, ptr %2700, align 1
  %2704 = load i8, ptr %2699, align 1
  %2705 = icmp eq i8 %2703, %2704
  %2706 = zext i1 %2705 to i32
  %2707 = getelementptr i8, ptr %2699, i32 %2706
  br label %2708

2708:                                             ; preds = %2702, %2698
  %2709 = phi ptr [ %2699, %2698 ], [ %2707, %2702 ]
  %2710 = ptrtoint ptr %2709 to i32
  %2711 = ptrtoint ptr %2658 to i32
  %2712 = sub i32 %2710, %2711
  br label %2713

2713:                                             ; preds = %2708, %2680, %2666
  %2714 = phi i32 [ %2712, %2708 ], [ %2668, %2666 ], [ %2686, %2680 ]
  %2715 = add i32 %2714, 8
  %2716 = ptrtoint ptr %2391 to i32
  %2717 = ptrtoint ptr %2651 to i32
  %2718 = sub i32 %2716, %2717
  %2719 = icmp ugt ptr %2391, %2371
  %2720 = icmp ugt ptr %2651, %2328
  %2721 = and i1 %2719, %2720
  br i1 %2721, label %2722, label %2814

2722:                                             ; preds = %2731, %2713
  %2723 = phi ptr [ %2728, %2731 ], [ %2651, %2713 ]
  %2724 = phi ptr [ %2726, %2731 ], [ %2391, %2713 ]
  %2725 = phi i32 [ %2732, %2731 ], [ %2715, %2713 ]
  %2726 = getelementptr i8, ptr %2724, i32 -1
  %2727 = load i8, ptr %2726, align 1
  %2728 = getelementptr i8, ptr %2723, i32 -1
  %2729 = load i8, ptr %2728, align 1
  %2730 = icmp eq i8 %2727, %2729
  br i1 %2730, label %2731, label %2814

2731:                                             ; preds = %2722
  %2732 = add i32 %2725, 1
  %2733 = icmp ugt ptr %2726, %2371
  %2734 = icmp ugt ptr %2728, %2328
  %2735 = and i1 %2734, %2733
  br i1 %2735, label %2722, label %2814

2736:                                             ; preds = %2653, %2644
  %2737 = getelementptr i8, ptr %2370, i32 4
  %2738 = getelementptr i8, ptr %2388, i32 4
  %2739 = icmp ugt ptr %2361, %2737
  br i1 %2739, label %2740, label %2766

2740:                                             ; preds = %2736
  %2741 = load i32, ptr %2738, align 1
  %2742 = load i32, ptr %2737, align 1
  %2743 = xor i32 %2742, %2741
  %2744 = icmp eq i32 %2743, 0
  br i1 %2744, label %2748, label %2745

2745:                                             ; preds = %2740
  %2746 = tail call i32 @llvm.cttz.i32(i32 %2743, i1 true) #4, !range !8
  %2747 = lshr i32 %2746, 3
  br label %2792

2748:                                             ; preds = %2754, %2740
  %2749 = phi ptr [ %2752, %2754 ], [ %2737, %2740 ]
  %2750 = phi ptr [ %2751, %2754 ], [ %2738, %2740 ]
  %2751 = getelementptr i8, ptr %2750, i32 4
  %2752 = getelementptr i8, ptr %2749, i32 4
  %2753 = icmp ult ptr %2752, %2361
  br i1 %2753, label %2754, label %2766

2754:                                             ; preds = %2748
  %2755 = load i32, ptr %2751, align 1
  %2756 = load i32, ptr %2752, align 1
  %2757 = xor i32 %2756, %2755
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2748, label %2759

2759:                                             ; preds = %2754
  %2760 = tail call i32 @llvm.cttz.i32(i32 %2757, i1 true) #4, !range !8
  %2761 = lshr i32 %2760, 3
  %2762 = getelementptr i8, ptr %2752, i32 %2761
  %2763 = ptrtoint ptr %2762 to i32
  %2764 = ptrtoint ptr %2737 to i32
  %2765 = sub i32 %2763, %2764
  br label %2792

2766:                                             ; preds = %2748, %2736
  %2767 = phi ptr [ %2737, %2736 ], [ %2752, %2748 ]
  %2768 = phi ptr [ %2738, %2736 ], [ %2751, %2748 ]
  %2769 = icmp ult ptr %2767, %2362
  br i1 %2769, label %2770, label %2777

2770:                                             ; preds = %2766
  %2771 = load i16, ptr %2768, align 1
  %2772 = load i16, ptr %2767, align 1
  %2773 = icmp eq i16 %2771, %2772
  br i1 %2773, label %2774, label %2777

2774:                                             ; preds = %2770
  %2775 = getelementptr i8, ptr %2767, i32 2
  %2776 = getelementptr i8, ptr %2768, i32 2
  br label %2777

2777:                                             ; preds = %2774, %2770, %2766
  %2778 = phi ptr [ %2775, %2774 ], [ %2767, %2770 ], [ %2767, %2766 ]
  %2779 = phi ptr [ %2776, %2774 ], [ %2768, %2770 ], [ %2768, %2766 ]
  %2780 = icmp ult ptr %2778, %2329
  br i1 %2780, label %2781, label %2787

2781:                                             ; preds = %2777
  %2782 = load i8, ptr %2779, align 1
  %2783 = load i8, ptr %2778, align 1
  %2784 = icmp eq i8 %2782, %2783
  %2785 = zext i1 %2784 to i32
  %2786 = getelementptr i8, ptr %2778, i32 %2785
  br label %2787

2787:                                             ; preds = %2781, %2777
  %2788 = phi ptr [ %2778, %2777 ], [ %2786, %2781 ]
  %2789 = ptrtoint ptr %2788 to i32
  %2790 = ptrtoint ptr %2737 to i32
  %2791 = sub i32 %2789, %2790
  br label %2792

2792:                                             ; preds = %2787, %2759, %2745
  %2793 = phi i32 [ %2791, %2787 ], [ %2747, %2745 ], [ %2765, %2759 ]
  %2794 = add i32 %2793, 4
  %2795 = ptrtoint ptr %2388 to i32
  %2796 = sub i32 %2381, %2795
  %2797 = icmp ugt ptr %2370, %2371
  %2798 = icmp ugt ptr %2388, %2328
  %2799 = and i1 %2797, %2798
  br i1 %2799, label %2800, label %2814

2800:                                             ; preds = %2809, %2792
  %2801 = phi ptr [ %2804, %2809 ], [ %2370, %2792 ]
  %2802 = phi ptr [ %2806, %2809 ], [ %2388, %2792 ]
  %2803 = phi i32 [ %2810, %2809 ], [ %2794, %2792 ]
  %2804 = getelementptr i8, ptr %2801, i32 -1
  %2805 = load i8, ptr %2804, align 1
  %2806 = getelementptr i8, ptr %2802, i32 -1
  %2807 = load i8, ptr %2806, align 1
  %2808 = icmp eq i8 %2805, %2807
  br i1 %2808, label %2809, label %2814

2809:                                             ; preds = %2800
  %2810 = add i32 %2803, 1
  %2811 = icmp ugt ptr %2804, %2371
  %2812 = icmp ugt ptr %2806, %2328
  %2813 = and i1 %2811, %2812
  br i1 %2813, label %2800, label %2814

2814:                                             ; preds = %2809, %2800, %2792, %2731, %2722, %2713, %2622, %2613, %2605
  %2815 = phi i32 [ %2607, %2605 ], [ %2715, %2713 ], [ %2794, %2792 ], [ %2623, %2622 ], [ %2616, %2613 ], [ %2732, %2731 ], [ %2725, %2722 ], [ %2803, %2800 ], [ %2810, %2809 ]
  %2816 = phi i32 [ %2609, %2605 ], [ %2718, %2713 ], [ %2796, %2792 ], [ %2609, %2613 ], [ %2609, %2622 ], [ %2718, %2722 ], [ %2718, %2731 ], [ %2796, %2800 ], [ %2796, %2809 ]
  %2817 = phi ptr [ %2370, %2605 ], [ %2391, %2713 ], [ %2370, %2792 ], [ %2617, %2622 ], [ %2614, %2613 ], [ %2726, %2731 ], [ %2724, %2722 ], [ %2801, %2800 ], [ %2804, %2809 ]
  %2818 = ptrtoint ptr %2817 to i32
  %2819 = ptrtoint ptr %2371 to i32
  %2820 = sub i32 %2818, %2819
  %2821 = add i32 %2815, -3
  %2822 = getelementptr i8, ptr %2371, i32 %2820
  %2823 = icmp ugt ptr %2822, %2363
  %2824 = load ptr, ptr %2364, align 4
  br i1 %2823, label %2846, label %2825

2825:                                             ; preds = %2814
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2824, ptr noundef align 1 dereferenceable(16) %2371, i32 16, i1 false) #4
  %2826 = icmp ugt i32 %2820, 16
  %2827 = load ptr, ptr %2364, align 4
  br i1 %2826, label %2830, label %2828

2828:                                             ; preds = %2825
  %2829 = getelementptr i8, ptr %2827, i32 %2820
  store ptr %2829, ptr %2364, align 4
  br label %2889

2830:                                             ; preds = %2825
  %2831 = getelementptr i8, ptr %2827, i32 16
  %2832 = getelementptr i8, ptr %2371, i32 16
  %2833 = add i32 %2820, -16
  %2834 = getelementptr i8, ptr %2827, i32 %2820
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2831, ptr noundef align 1 dereferenceable(16) %2832, i32 16, i1 false) #4
  %2835 = icmp slt i32 %2833, 17
  br i1 %2835, label %2878, label %2836

2836:                                             ; preds = %2830
  %2837 = getelementptr i8, ptr %2827, i32 32
  br label %2838

2838:                                             ; preds = %2838, %2836
  %2839 = phi ptr [ %2832, %2836 ], [ %2843, %2838 ]
  %2840 = phi ptr [ %2837, %2836 ], [ %2844, %2838 ]
  %2841 = getelementptr i8, ptr %2839, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2840, ptr noundef align 1 dereferenceable(16) %2841, i32 16, i1 false) #4
  %2842 = getelementptr i8, ptr %2840, i32 16
  %2843 = getelementptr i8, ptr %2839, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2842, ptr noundef align 1 dereferenceable(16) %2843, i32 16, i1 false) #4
  %2844 = getelementptr i8, ptr %2840, i32 32
  %2845 = icmp ult ptr %2844, %2834
  br i1 %2845, label %2838, label %2878

2846:                                             ; preds = %2814
  %2847 = ptrtoint ptr %2822 to i32
  %2848 = icmp ult ptr %2363, %2371
  br i1 %2848, label %2863, label %2849

2849:                                             ; preds = %2846
  %2850 = sub i32 %2365, %2819
  %2851 = getelementptr i8, ptr %2824, i32 %2850
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2824, ptr noundef align 1 dereferenceable(16) %2371, i32 16, i1 false) #4
  %2852 = icmp slt i32 %2850, 17
  br i1 %2852, label %2863, label %2853

2853:                                             ; preds = %2849
  %2854 = getelementptr i8, ptr %2824, i32 16
  br label %2855

2855:                                             ; preds = %2855, %2853
  %2856 = phi ptr [ %2371, %2853 ], [ %2860, %2855 ]
  %2857 = phi ptr [ %2854, %2853 ], [ %2861, %2855 ]
  %2858 = getelementptr i8, ptr %2856, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2857, ptr noundef align 1 dereferenceable(16) %2858, i32 16, i1 false) #4
  %2859 = getelementptr i8, ptr %2857, i32 16
  %2860 = getelementptr i8, ptr %2856, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2859, ptr noundef align 1 dereferenceable(16) %2860, i32 16, i1 false) #4
  %2861 = getelementptr i8, ptr %2857, i32 32
  %2862 = icmp ult ptr %2861, %2851
  br i1 %2862, label %2855, label %2863

2863:                                             ; preds = %2855, %2849, %2846
  %2864 = phi ptr [ %2363, %2849 ], [ %2371, %2846 ], [ %2363, %2855 ]
  %2865 = phi ptr [ %2851, %2849 ], [ %2824, %2846 ], [ %2851, %2855 ]
  %2866 = icmp ult ptr %2864, %2822
  br i1 %2866, label %2867, label %2878

2867:                                             ; preds = %2863
  %2868 = ptrtoint ptr %2864 to i32
  %2869 = sub i32 %2847, %2868
  %2870 = getelementptr i8, ptr %2864, i32 %2869
  br label %2871

2871:                                             ; preds = %2871, %2867
  %2872 = phi ptr [ %2876, %2871 ], [ %2865, %2867 ]
  %2873 = phi ptr [ %2874, %2871 ], [ %2864, %2867 ]
  %2874 = getelementptr i8, ptr %2873, i32 1
  %2875 = load i8, ptr %2873, align 1
  %2876 = getelementptr i8, ptr %2872, i32 1
  store i8 %2875, ptr %2872, align 1
  %2877 = icmp eq ptr %2874, %2870
  br i1 %2877, label %2878, label %2871

2878:                                             ; preds = %2871, %2863, %2838, %2830
  %2879 = load ptr, ptr %2364, align 4
  %2880 = getelementptr i8, ptr %2879, i32 %2820
  store ptr %2880, ptr %2364, align 4
  %2881 = icmp ugt i32 %2820, 65535
  br i1 %2881, label %2882, label %2889

2882:                                             ; preds = %2878
  store i32 1, ptr %2366, align 4
  %2883 = load ptr, ptr %2367, align 4
  %2884 = load ptr, ptr %1, align 4
  %2885 = ptrtoint ptr %2883 to i32
  %2886 = ptrtoint ptr %2884 to i32
  %2887 = sub i32 %2885, %2886
  %2888 = ashr exact i32 %2887, 3
  store i32 %2888, ptr %2368, align 4
  br label %2889

2889:                                             ; preds = %2882, %2878, %2828
  %2890 = trunc i32 %2820 to i16
  %2891 = load ptr, ptr %2367, align 4
  %2892 = getelementptr inbounds %struct.seqDef_s, ptr %2891, i32 0, i32 1
  store i16 %2890, ptr %2892, align 4
  %2893 = add i32 %2816, 3
  %2894 = load ptr, ptr %2367, align 4
  store i32 %2893, ptr %2894, align 4
  %2895 = icmp ugt i32 %2821, 65535
  br i1 %2895, label %2898, label %2896

2896:                                             ; preds = %2889
  %2897 = load ptr, ptr %2367, align 4
  br label %2905

2898:                                             ; preds = %2889
  store i32 2, ptr %2366, align 4
  %2899 = load ptr, ptr %2367, align 4
  %2900 = load ptr, ptr %1, align 4
  %2901 = ptrtoint ptr %2899 to i32
  %2902 = ptrtoint ptr %2900 to i32
  %2903 = sub i32 %2901, %2902
  %2904 = ashr exact i32 %2903, 3
  store i32 %2904, ptr %2368, align 4
  br label %2905

2905:                                             ; preds = %2898, %2896, %2536, %2534
  %2906 = phi i32 [ %2460, %2534 ], [ %2460, %2536 ], [ %2821, %2896 ], [ %2821, %2898 ]
  %2907 = phi ptr [ %2535, %2534 ], [ %2537, %2536 ], [ %2897, %2896 ], [ %2899, %2898 ]
  %2908 = phi i32 [ %2373, %2534 ], [ %2373, %2536 ], [ %2372, %2896 ], [ %2372, %2898 ]
  %2909 = phi i32 [ %2372, %2534 ], [ %2372, %2536 ], [ %2816, %2896 ], [ %2816, %2898 ]
  %2910 = phi i32 [ %2456, %2534 ], [ %2456, %2536 ], [ %2815, %2896 ], [ %2815, %2898 ]
  %2911 = phi ptr [ %2391, %2534 ], [ %2391, %2536 ], [ %2817, %2896 ], [ %2817, %2898 ]
  %2912 = trunc i32 %2906 to i16
  %2913 = getelementptr inbounds %struct.seqDef_s, ptr %2907, i32 0, i32 2
  store i16 %2912, ptr %2913, align 2
  %2914 = load ptr, ptr %2367, align 4
  %2915 = getelementptr %struct.seqDef_s, ptr %2914, i32 1
  store ptr %2915, ptr %2367, align 4
  %2916 = getelementptr i8, ptr %2911, i32 %2910
  %2917 = icmp ugt ptr %2916, %2330
  br i1 %2917, label %3055, label %2918

2918:                                             ; preds = %2905
  %2919 = add i32 %2382, 2
  %2920 = getelementptr i8, ptr %2311, i32 %2919
  %2921 = load i64, ptr %2920, align 1
  %2922 = mul i64 %2921, -3523014627327384477
  %2923 = lshr i64 %2922, %2358
  %2924 = trunc i64 %2923 to i32
  %2925 = getelementptr i32, ptr %2307, i32 %2924
  store i32 %2919, ptr %2925, align 4
  %2926 = getelementptr i8, ptr %2916, i32 -2
  %2927 = ptrtoint ptr %2926 to i32
  %2928 = sub i32 %2927, %2313
  %2929 = load i64, ptr %2926, align 1
  %2930 = mul i64 %2929, -3523014627327384477
  %2931 = lshr i64 %2930, %2358
  %2932 = trunc i64 %2931 to i32
  %2933 = getelementptr i32, ptr %2307, i32 %2932
  store i32 %2928, ptr %2933, align 4
  %2934 = load i64, ptr %2920, align 1
  %2935 = mul i64 %2934, -3523014627193167104
  %2936 = lshr i64 %2935, %2360
  %2937 = trunc i64 %2936 to i32
  %2938 = getelementptr i32, ptr %2309, i32 %2937
  store i32 %2919, ptr %2938, align 4
  %2939 = getelementptr i8, ptr %2916, i32 -1
  %2940 = load i64, ptr %2939, align 1
  %2941 = mul i64 %2940, -3523014627193167104
  %2942 = lshr i64 %2941, %2360
  %2943 = trunc i64 %2942 to i32
  %2944 = ptrtoint ptr %2939 to i32
  %2945 = sub i32 %2944, %2313
  %2946 = getelementptr i32, ptr %2309, i32 %2943
  store i32 %2945, ptr %2946, align 4
  br label %2947

2947:                                             ; preds = %3047, %2918
  %2948 = phi ptr [ %3053, %3047 ], [ %2916, %2918 ]
  %2949 = phi i32 [ %2950, %3047 ], [ %2909, %2918 ]
  %2950 = phi i32 [ %2949, %3047 ], [ %2908, %2918 ]
  %2951 = icmp ne i32 %2950, 0
  %2952 = load i32, ptr %2948, align 1
  %2953 = sub i32 0, %2950
  %2954 = getelementptr i8, ptr %2948, i32 %2953
  %2955 = load i32, ptr %2954, align 1
  %2956 = icmp eq i32 %2952, %2955
  %2957 = and i1 %2951, %2956
  br i1 %2957, label %2958, label %3055

2958:                                             ; preds = %2947
  %2959 = getelementptr i8, ptr %2948, i32 4
  %2960 = getelementptr i8, ptr %2959, i32 %2953
  %2961 = icmp ugt ptr %2361, %2959
  br i1 %2961, label %2962, label %2988

2962:                                             ; preds = %2958
  %2963 = load i32, ptr %2960, align 1
  %2964 = load i32, ptr %2959, align 1
  %2965 = xor i32 %2964, %2963
  %2966 = icmp eq i32 %2965, 0
  br i1 %2966, label %2970, label %2967

2967:                                             ; preds = %2962
  %2968 = tail call i32 @llvm.cttz.i32(i32 %2965, i1 true) #4, !range !8
  %2969 = lshr i32 %2968, 3
  br label %3014

2970:                                             ; preds = %2976, %2962
  %2971 = phi ptr [ %2974, %2976 ], [ %2959, %2962 ]
  %2972 = phi ptr [ %2973, %2976 ], [ %2960, %2962 ]
  %2973 = getelementptr i8, ptr %2972, i32 4
  %2974 = getelementptr i8, ptr %2971, i32 4
  %2975 = icmp ult ptr %2974, %2361
  br i1 %2975, label %2976, label %2988

2976:                                             ; preds = %2970
  %2977 = load i32, ptr %2973, align 1
  %2978 = load i32, ptr %2974, align 1
  %2979 = xor i32 %2978, %2977
  %2980 = icmp eq i32 %2979, 0
  br i1 %2980, label %2970, label %2981

2981:                                             ; preds = %2976
  %2982 = tail call i32 @llvm.cttz.i32(i32 %2979, i1 true) #4, !range !8
  %2983 = lshr i32 %2982, 3
  %2984 = getelementptr i8, ptr %2974, i32 %2983
  %2985 = ptrtoint ptr %2984 to i32
  %2986 = ptrtoint ptr %2959 to i32
  %2987 = sub i32 %2985, %2986
  br label %3014

2988:                                             ; preds = %2970, %2958
  %2989 = phi ptr [ %2959, %2958 ], [ %2974, %2970 ]
  %2990 = phi ptr [ %2960, %2958 ], [ %2973, %2970 ]
  %2991 = icmp ult ptr %2989, %2362
  br i1 %2991, label %2992, label %2999

2992:                                             ; preds = %2988
  %2993 = load i16, ptr %2990, align 1
  %2994 = load i16, ptr %2989, align 1
  %2995 = icmp eq i16 %2993, %2994
  br i1 %2995, label %2996, label %2999

2996:                                             ; preds = %2992
  %2997 = getelementptr i8, ptr %2989, i32 2
  %2998 = getelementptr i8, ptr %2990, i32 2
  br label %2999

2999:                                             ; preds = %2996, %2992, %2988
  %3000 = phi ptr [ %2997, %2996 ], [ %2989, %2992 ], [ %2989, %2988 ]
  %3001 = phi ptr [ %2998, %2996 ], [ %2990, %2992 ], [ %2990, %2988 ]
  %3002 = icmp ult ptr %3000, %2329
  br i1 %3002, label %3003, label %3009

3003:                                             ; preds = %2999
  %3004 = load i8, ptr %3001, align 1
  %3005 = load i8, ptr %3000, align 1
  %3006 = icmp eq i8 %3004, %3005
  %3007 = zext i1 %3006 to i32
  %3008 = getelementptr i8, ptr %3000, i32 %3007
  br label %3009

3009:                                             ; preds = %3003, %2999
  %3010 = phi ptr [ %3000, %2999 ], [ %3008, %3003 ]
  %3011 = ptrtoint ptr %3010 to i32
  %3012 = ptrtoint ptr %2959 to i32
  %3013 = sub i32 %3011, %3012
  br label %3014

3014:                                             ; preds = %3009, %2981, %2967
  %3015 = phi i32 [ %3013, %3009 ], [ %2969, %2967 ], [ %2987, %2981 ]
  %3016 = add i32 %3015, 4
  %3017 = ptrtoint ptr %2948 to i32
  %3018 = sub i32 %3017, %2313
  %3019 = load i64, ptr %2948, align 1
  %3020 = mul i64 %3019, -3523014627193167104
  %3021 = lshr i64 %3020, %2360
  %3022 = trunc i64 %3021 to i32
  %3023 = getelementptr i32, ptr %2309, i32 %3022
  store i32 %3018, ptr %3023, align 4
  %3024 = load i64, ptr %2948, align 1
  %3025 = mul i64 %3024, -3523014627327384477
  %3026 = lshr i64 %3025, %2358
  %3027 = trunc i64 %3026 to i32
  %3028 = getelementptr i32, ptr %2307, i32 %3027
  store i32 %3018, ptr %3028, align 4
  %3029 = add i32 %3015, 1
  %3030 = icmp ugt ptr %2948, %2363
  br i1 %3030, label %3033, label %3031

3031:                                             ; preds = %3014
  %3032 = load ptr, ptr %2364, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3032, ptr noundef align 1 dereferenceable(16) %2948, i32 16, i1 false) #4
  br label %3033

3033:                                             ; preds = %3031, %3014
  %3034 = load ptr, ptr %2367, align 4
  %3035 = getelementptr inbounds %struct.seqDef_s, ptr %3034, i32 0, i32 1
  store i16 0, ptr %3035, align 4
  %3036 = load ptr, ptr %2367, align 4
  store i32 1, ptr %3036, align 4
  %3037 = icmp ugt i32 %3029, 65535
  br i1 %3037, label %3040, label %3038

3038:                                             ; preds = %3033
  %3039 = load ptr, ptr %2367, align 4
  br label %3047

3040:                                             ; preds = %3033
  store i32 2, ptr %2366, align 4
  %3041 = load ptr, ptr %2367, align 4
  %3042 = load ptr, ptr %1, align 4
  %3043 = ptrtoint ptr %3041 to i32
  %3044 = ptrtoint ptr %3042 to i32
  %3045 = sub i32 %3043, %3044
  %3046 = ashr exact i32 %3045, 3
  store i32 %3046, ptr %2368, align 4
  br label %3047

3047:                                             ; preds = %3040, %3038
  %3048 = phi ptr [ %3039, %3038 ], [ %3041, %3040 ]
  %3049 = trunc i32 %3029 to i16
  %3050 = getelementptr inbounds %struct.seqDef_s, ptr %3048, i32 0, i32 2
  store i16 %3049, ptr %3050, align 2
  %3051 = load ptr, ptr %2367, align 4
  %3052 = getelementptr %struct.seqDef_s, ptr %3051, i32 1
  store ptr %3052, ptr %2367, align 4
  %3053 = getelementptr i8, ptr %2948, i32 %3016
  %3054 = icmp ugt ptr %3053, %2330
  br i1 %3054, label %3055, label %2947

3055:                                             ; preds = %3047, %2947, %2905, %2638
  %3056 = phi i32 [ %2373, %2638 ], [ %2908, %2905 ], [ %2950, %2947 ], [ %2949, %3047 ]
  %3057 = phi i32 [ %2372, %2638 ], [ %2909, %2905 ], [ %2949, %2947 ], [ %2950, %3047 ]
  %3058 = phi ptr [ %2371, %2638 ], [ %2916, %2905 ], [ %2948, %2947 ], [ %3053, %3047 ]
  %3059 = phi ptr [ %2643, %2638 ], [ %2916, %2905 ], [ %2948, %2947 ], [ %3053, %3047 ]
  %3060 = icmp ult ptr %3059, %2330
  br i1 %3060, label %2369, label %3061

3061:                                             ; preds = %3055
  %3062 = ptrtoint ptr %3058 to i32
  br label %3063

3063:                                             ; preds = %3061, %2304
  %3064 = phi i32 [ %3062, %3061 ], [ %2312, %2304 ]
  %3065 = phi i32 [ %3056, %3061 ], [ %2346, %2304 ]
  %3066 = phi i32 [ %3057, %3061 ], [ %2350, %2304 ]
  %3067 = icmp eq i32 %3066, 0
  %3068 = select i1 %3067, i32 %2349, i32 %3066
  store i32 %3068, ptr %2, align 4
  %3069 = icmp eq i32 %3065, 0
  %3070 = select i1 %3069, i32 %2349, i32 %3065
  store i32 %3070, ptr %2332, align 4
  br label %3071

3071:                                             ; preds = %3063, %2296, %1529, %762
  %3072 = phi ptr [ %2329, %3063 ], [ %1562, %2296 ], [ %795, %1529 ], [ %33, %762 ]
  %3073 = phi i32 [ %3064, %3063 ], [ %2297, %2296 ], [ %1530, %1529 ], [ %763, %762 ]
  %3074 = ptrtoint ptr %3072 to i32
  %3075 = sub i32 %3074, %3073
  ret i32 %3075
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_doubleFast_dictMatchState(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 4
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 7, label %4214
    i32 5, label %1406
    i32 6, label %2810
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %10 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %3 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  %19 = add i32 %18, %4
  %20 = load i32, ptr %9, align 4
  %21 = shl nuw i32 1, %20
  %22 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %19, %23
  %25 = icmp ugt i32 %24, %21
  %26 = sub i32 %19, %21
  %27 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i1 %25, i1 false
  %31 = select i1 %30, i32 %26, i32 %23
  %32 = getelementptr i8, ptr %15, i32 %31
  %33 = getelementptr i8, ptr %3, i32 %4
  %34 = getelementptr i8, ptr %33, i32 -8
  %35 = load i32, ptr %2, align 4
  %36 = getelementptr i32, ptr %2, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %39, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ZSTD_window_t, ptr %39, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ZSTD_window_t, ptr %39, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 %45
  %49 = load ptr, ptr %39, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = ptrtoint ptr %47 to i32
  %52 = add i32 %31, %51
  %53 = sub i32 %52, %50
  %54 = ptrtoint ptr %32 to i32
  %55 = sub i32 %16, %54
  %56 = ptrtoint ptr %48 to i32
  %57 = sub i32 %56, %50
  %58 = icmp eq i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = getelementptr i8, ptr %3, i32 %59
  %61 = icmp ult ptr %60, %34
  br i1 %61, label %62, label %1402

62:                                               ; preds = %8
  %63 = sub i32 0, %53
  %64 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %39, i32 0, i32 10, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %39, i32 0, i32 10, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 64, %71
  %73 = zext i32 %72 to i64
  %74 = sub i32 64, %67
  %75 = zext i32 %74 to i64
  %76 = sub i32 32, %69
  %77 = sub i32 32, %65
  %78 = getelementptr i8, ptr %33, i32 -3
  %79 = getelementptr i8, ptr %33, i32 -1
  %80 = getelementptr i8, ptr %33, i32 -32
  %81 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %82 = ptrtoint ptr %80 to i32
  %83 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %84 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %85 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %86 = getelementptr i8, ptr %47, i32 %63
  br label %87

87:                                               ; preds = %1394, %62
  %88 = phi ptr [ %60, %62 ], [ %1398, %1394 ]
  %89 = phi ptr [ %3, %62 ], [ %1397, %1394 ]
  %90 = phi i32 [ %35, %62 ], [ %1396, %1394 ]
  %91 = phi i32 [ %37, %62 ], [ %1395, %1394 ]
  %92 = load i64, ptr %88, align 1
  %93 = mul i64 %92, -3523014627327384477
  %94 = lshr i64 %93, %73
  %95 = trunc i64 %94 to i32
  %96 = trunc i64 %92 to i32
  %97 = mul i32 %96, -1640531535
  %98 = lshr i32 %97, %76
  %99 = lshr i64 %93, %75
  %100 = trunc i64 %99 to i32
  %101 = lshr i32 %97, %77
  %102 = ptrtoint ptr %88 to i32
  %103 = sub i32 %102, %17
  %104 = getelementptr i32, ptr %11, i32 %95
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i32, ptr %13, i32 %98
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %15, i32 %105
  %109 = getelementptr i8, ptr %15, i32 %107
  %110 = add i32 %103, 1
  %111 = sub i32 %110, %90
  %112 = icmp ult i32 %111, %31
  %113 = sub i32 %111, %53
  %114 = getelementptr i8, ptr %47, i32 %113
  %115 = getelementptr i8, ptr %15, i32 %111
  %116 = select i1 %112, ptr %114, ptr %115
  store i32 %103, ptr %106, align 4
  store i32 %103, ptr %104, align 4
  %117 = xor i32 %111, -1
  %118 = add i32 %31, %117
  %119 = icmp ugt i32 %118, 2
  br i1 %119, label %120, label %341

120:                                              ; preds = %87
  %121 = load i32, ptr %116, align 1
  %122 = getelementptr i8, ptr %88, i32 1
  %123 = load i32, ptr %122, align 1
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %341

125:                                              ; preds = %120
  %126 = select i1 %112, ptr %49, ptr %33
  %127 = getelementptr i8, ptr %88, i32 5
  %128 = getelementptr i8, ptr %116, i32 4
  %129 = ptrtoint ptr %126 to i32
  %130 = ptrtoint ptr %128 to i32
  %131 = sub i32 %129, %130
  %132 = getelementptr i8, ptr %127, i32 %131
  %133 = icmp ult ptr %132, %33
  %134 = select i1 %133, ptr %132, ptr %33
  %135 = getelementptr i8, ptr %134, i32 -3
  %136 = icmp ugt ptr %135, %127
  br i1 %136, label %137, label %163

137:                                              ; preds = %125
  %138 = load i32, ptr %128, align 1
  %139 = load i32, ptr %127, align 1
  %140 = xor i32 %139, %138
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = tail call i32 @llvm.cttz.i32(i32 %140, i1 true) #4, !range !8
  %144 = lshr i32 %143, 3
  br label %190

145:                                              ; preds = %151, %137
  %146 = phi ptr [ %149, %151 ], [ %127, %137 ]
  %147 = phi ptr [ %148, %151 ], [ %128, %137 ]
  %148 = getelementptr i8, ptr %147, i32 4
  %149 = getelementptr i8, ptr %146, i32 4
  %150 = icmp ult ptr %149, %135
  br i1 %150, label %151, label %163

151:                                              ; preds = %145
  %152 = load i32, ptr %148, align 1
  %153 = load i32, ptr %149, align 1
  %154 = xor i32 %153, %152
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %145, label %156

156:                                              ; preds = %151
  %157 = tail call i32 @llvm.cttz.i32(i32 %154, i1 true) #4, !range !8
  %158 = lshr i32 %157, 3
  %159 = getelementptr i8, ptr %149, i32 %158
  %160 = ptrtoint ptr %159 to i32
  %161 = ptrtoint ptr %127 to i32
  %162 = sub i32 %160, %161
  br label %190

163:                                              ; preds = %145, %125
  %164 = phi ptr [ %127, %125 ], [ %149, %145 ]
  %165 = phi ptr [ %128, %125 ], [ %148, %145 ]
  %166 = getelementptr i8, ptr %134, i32 -1
  %167 = icmp ult ptr %164, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i16, ptr %165, align 1
  %170 = load i16, ptr %164, align 1
  %171 = icmp eq i16 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = getelementptr i8, ptr %164, i32 2
  %174 = getelementptr i8, ptr %165, i32 2
  br label %175

175:                                              ; preds = %172, %168, %163
  %176 = phi ptr [ %173, %172 ], [ %164, %168 ], [ %164, %163 ]
  %177 = phi ptr [ %174, %172 ], [ %165, %168 ], [ %165, %163 ]
  %178 = icmp ult ptr %176, %134
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load i8, ptr %177, align 1
  %181 = load i8, ptr %176, align 1
  %182 = icmp eq i8 %180, %181
  %183 = zext i1 %182 to i32
  %184 = getelementptr i8, ptr %176, i32 %183
  br label %185

185:                                              ; preds = %179, %175
  %186 = phi ptr [ %176, %175 ], [ %184, %179 ]
  %187 = ptrtoint ptr %186 to i32
  %188 = ptrtoint ptr %127 to i32
  %189 = sub i32 %187, %188
  br label %190

190:                                              ; preds = %185, %156, %142
  %191 = phi i32 [ %189, %185 ], [ %144, %142 ], [ %162, %156 ]
  %192 = getelementptr i8, ptr %128, i32 %191
  %193 = icmp eq ptr %192, %126
  br i1 %193, label %194, label %252

194:                                              ; preds = %190
  %195 = getelementptr i8, ptr %127, i32 %191
  %196 = icmp ugt ptr %78, %195
  br i1 %196, label %197, label %223

197:                                              ; preds = %194
  %198 = load i32, ptr %32, align 1
  %199 = load i32, ptr %195, align 1
  %200 = xor i32 %199, %198
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %197
  %203 = tail call i32 @llvm.cttz.i32(i32 %200, i1 true) #4, !range !8
  %204 = lshr i32 %203, 3
  br label %249

205:                                              ; preds = %211, %197
  %206 = phi ptr [ %209, %211 ], [ %195, %197 ]
  %207 = phi ptr [ %208, %211 ], [ %32, %197 ]
  %208 = getelementptr i8, ptr %207, i32 4
  %209 = getelementptr i8, ptr %206, i32 4
  %210 = icmp ult ptr %209, %78
  br i1 %210, label %211, label %223

211:                                              ; preds = %205
  %212 = load i32, ptr %208, align 1
  %213 = load i32, ptr %209, align 1
  %214 = xor i32 %213, %212
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %205, label %216

216:                                              ; preds = %211
  %217 = tail call i32 @llvm.cttz.i32(i32 %214, i1 true) #4, !range !8
  %218 = lshr i32 %217, 3
  %219 = getelementptr i8, ptr %209, i32 %218
  %220 = ptrtoint ptr %219 to i32
  %221 = ptrtoint ptr %195 to i32
  %222 = sub i32 %220, %221
  br label %249

223:                                              ; preds = %205, %194
  %224 = phi ptr [ %195, %194 ], [ %209, %205 ]
  %225 = phi ptr [ %32, %194 ], [ %208, %205 ]
  %226 = icmp ult ptr %224, %79
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = load i16, ptr %225, align 1
  %229 = load i16, ptr %224, align 1
  %230 = icmp eq i16 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = getelementptr i8, ptr %224, i32 2
  %233 = getelementptr i8, ptr %225, i32 2
  br label %234

234:                                              ; preds = %231, %227, %223
  %235 = phi ptr [ %232, %231 ], [ %224, %227 ], [ %224, %223 ]
  %236 = phi ptr [ %233, %231 ], [ %225, %227 ], [ %225, %223 ]
  %237 = icmp ult ptr %235, %33
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load i8, ptr %236, align 1
  %240 = load i8, ptr %235, align 1
  %241 = icmp eq i8 %239, %240
  %242 = zext i1 %241 to i32
  %243 = getelementptr i8, ptr %235, i32 %242
  br label %244

244:                                              ; preds = %238, %234
  %245 = phi ptr [ %235, %234 ], [ %243, %238 ]
  %246 = ptrtoint ptr %245 to i32
  %247 = ptrtoint ptr %195 to i32
  %248 = sub i32 %246, %247
  br label %249

249:                                              ; preds = %244, %216, %202
  %250 = phi i32 [ %248, %244 ], [ %204, %202 ], [ %222, %216 ]
  %251 = add i32 %250, %191
  br label %252

252:                                              ; preds = %249, %190
  %253 = phi i32 [ %251, %249 ], [ %191, %190 ]
  %254 = add i32 %253, 4
  %255 = ptrtoint ptr %122 to i32
  %256 = ptrtoint ptr %89 to i32
  %257 = sub i32 %255, %256
  %258 = add i32 %253, 1
  %259 = getelementptr i8, ptr %89, i32 %257
  %260 = icmp ugt ptr %259, %80
  %261 = load ptr, ptr %81, align 4
  br i1 %260, label %283, label %262

262:                                              ; preds = %252
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %261, ptr noundef align 1 dereferenceable(16) %89, i32 16, i1 false) #4
  %263 = icmp ugt i32 %257, 16
  %264 = load ptr, ptr %81, align 4
  br i1 %263, label %267, label %265

265:                                              ; preds = %262
  %266 = getelementptr i8, ptr %264, i32 %257
  store ptr %266, ptr %81, align 4
  br label %326

267:                                              ; preds = %262
  %268 = getelementptr i8, ptr %264, i32 16
  %269 = getelementptr i8, ptr %89, i32 16
  %270 = add i32 %257, -16
  %271 = getelementptr i8, ptr %264, i32 %257
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %268, ptr noundef align 1 dereferenceable(16) %269, i32 16, i1 false) #4
  %272 = icmp slt i32 %270, 17
  br i1 %272, label %315, label %273

273:                                              ; preds = %267
  %274 = getelementptr i8, ptr %264, i32 32
  br label %275

275:                                              ; preds = %275, %273
  %276 = phi ptr [ %269, %273 ], [ %280, %275 ]
  %277 = phi ptr [ %274, %273 ], [ %281, %275 ]
  %278 = getelementptr i8, ptr %276, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %277, ptr noundef align 1 dereferenceable(16) %278, i32 16, i1 false) #4
  %279 = getelementptr i8, ptr %277, i32 16
  %280 = getelementptr i8, ptr %276, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %279, ptr noundef align 1 dereferenceable(16) %280, i32 16, i1 false) #4
  %281 = getelementptr i8, ptr %277, i32 32
  %282 = icmp ult ptr %281, %271
  br i1 %282, label %275, label %315

283:                                              ; preds = %252
  %284 = ptrtoint ptr %259 to i32
  %285 = icmp ult ptr %80, %89
  br i1 %285, label %300, label %286

286:                                              ; preds = %283
  %287 = sub i32 %82, %256
  %288 = getelementptr i8, ptr %261, i32 %287
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %261, ptr noundef align 1 dereferenceable(16) %89, i32 16, i1 false) #4
  %289 = icmp slt i32 %287, 17
  br i1 %289, label %300, label %290

290:                                              ; preds = %286
  %291 = getelementptr i8, ptr %261, i32 16
  br label %292

292:                                              ; preds = %292, %290
  %293 = phi ptr [ %89, %290 ], [ %297, %292 ]
  %294 = phi ptr [ %291, %290 ], [ %298, %292 ]
  %295 = getelementptr i8, ptr %293, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %294, ptr noundef align 1 dereferenceable(16) %295, i32 16, i1 false) #4
  %296 = getelementptr i8, ptr %294, i32 16
  %297 = getelementptr i8, ptr %293, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %296, ptr noundef align 1 dereferenceable(16) %297, i32 16, i1 false) #4
  %298 = getelementptr i8, ptr %294, i32 32
  %299 = icmp ult ptr %298, %288
  br i1 %299, label %292, label %300

300:                                              ; preds = %292, %286, %283
  %301 = phi ptr [ %80, %286 ], [ %89, %283 ], [ %80, %292 ]
  %302 = phi ptr [ %288, %286 ], [ %261, %283 ], [ %288, %292 ]
  %303 = icmp ult ptr %301, %259
  br i1 %303, label %304, label %315

304:                                              ; preds = %300
  %305 = ptrtoint ptr %301 to i32
  %306 = sub i32 %284, %305
  %307 = getelementptr i8, ptr %301, i32 %306
  br label %308

308:                                              ; preds = %308, %304
  %309 = phi ptr [ %313, %308 ], [ %302, %304 ]
  %310 = phi ptr [ %311, %308 ], [ %301, %304 ]
  %311 = getelementptr i8, ptr %310, i32 1
  %312 = load i8, ptr %310, align 1
  %313 = getelementptr i8, ptr %309, i32 1
  store i8 %312, ptr %309, align 1
  %314 = icmp eq ptr %311, %307
  br i1 %314, label %315, label %308

315:                                              ; preds = %308, %300, %275, %267
  %316 = load ptr, ptr %81, align 4
  %317 = getelementptr i8, ptr %316, i32 %257
  store ptr %317, ptr %81, align 4
  %318 = icmp ugt i32 %257, 65535
  br i1 %318, label %319, label %326

319:                                              ; preds = %315
  store i32 1, ptr %83, align 4
  %320 = load ptr, ptr %84, align 4
  %321 = load ptr, ptr %1, align 4
  %322 = ptrtoint ptr %320 to i32
  %323 = ptrtoint ptr %321 to i32
  %324 = sub i32 %322, %323
  %325 = ashr exact i32 %324, 3
  store i32 %325, ptr %85, align 4
  br label %326

326:                                              ; preds = %319, %315, %265
  %327 = trunc i32 %257 to i16
  %328 = load ptr, ptr %84, align 4
  %329 = getelementptr inbounds %struct.seqDef_s, ptr %328, i32 0, i32 1
  store i16 %327, ptr %329, align 4
  %330 = load ptr, ptr %84, align 4
  store i32 1, ptr %330, align 4
  %331 = icmp ugt i32 %258, 65535
  br i1 %331, label %334, label %332

332:                                              ; preds = %326
  %333 = load ptr, ptr %84, align 4
  br label %1172

334:                                              ; preds = %326
  store i32 2, ptr %83, align 4
  %335 = load ptr, ptr %84, align 4
  %336 = load ptr, ptr %1, align 4
  %337 = ptrtoint ptr %335 to i32
  %338 = ptrtoint ptr %336 to i32
  %339 = sub i32 %337, %338
  %340 = ashr exact i32 %339, 3
  store i32 %340, ptr %85, align 4
  br label %1172

341:                                              ; preds = %120, %87
  %342 = icmp ugt i32 %105, %31
  br i1 %342, label %343, label %425

343:                                              ; preds = %341
  %344 = load i64, ptr %108, align 1
  %345 = load i64, ptr %88, align 1
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %579

347:                                              ; preds = %343
  %348 = getelementptr i8, ptr %88, i32 8
  %349 = getelementptr i8, ptr %108, i32 8
  %350 = icmp ugt ptr %78, %348
  br i1 %350, label %351, label %377

351:                                              ; preds = %347
  %352 = load i32, ptr %349, align 1
  %353 = load i32, ptr %348, align 1
  %354 = xor i32 %353, %352
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %359, label %356

356:                                              ; preds = %351
  %357 = tail call i32 @llvm.cttz.i32(i32 %354, i1 true) #4, !range !8
  %358 = lshr i32 %357, 3
  br label %403

359:                                              ; preds = %365, %351
  %360 = phi ptr [ %363, %365 ], [ %348, %351 ]
  %361 = phi ptr [ %362, %365 ], [ %349, %351 ]
  %362 = getelementptr i8, ptr %361, i32 4
  %363 = getelementptr i8, ptr %360, i32 4
  %364 = icmp ult ptr %363, %78
  br i1 %364, label %365, label %377

365:                                              ; preds = %359
  %366 = load i32, ptr %362, align 1
  %367 = load i32, ptr %363, align 1
  %368 = xor i32 %367, %366
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %359, label %370

370:                                              ; preds = %365
  %371 = tail call i32 @llvm.cttz.i32(i32 %368, i1 true) #4, !range !8
  %372 = lshr i32 %371, 3
  %373 = getelementptr i8, ptr %363, i32 %372
  %374 = ptrtoint ptr %373 to i32
  %375 = ptrtoint ptr %348 to i32
  %376 = sub i32 %374, %375
  br label %403

377:                                              ; preds = %359, %347
  %378 = phi ptr [ %348, %347 ], [ %363, %359 ]
  %379 = phi ptr [ %349, %347 ], [ %362, %359 ]
  %380 = icmp ult ptr %378, %79
  br i1 %380, label %381, label %388

381:                                              ; preds = %377
  %382 = load i16, ptr %379, align 1
  %383 = load i16, ptr %378, align 1
  %384 = icmp eq i16 %382, %383
  br i1 %384, label %385, label %388

385:                                              ; preds = %381
  %386 = getelementptr i8, ptr %378, i32 2
  %387 = getelementptr i8, ptr %379, i32 2
  br label %388

388:                                              ; preds = %385, %381, %377
  %389 = phi ptr [ %386, %385 ], [ %378, %381 ], [ %378, %377 ]
  %390 = phi ptr [ %387, %385 ], [ %379, %381 ], [ %379, %377 ]
  %391 = icmp ult ptr %389, %33
  br i1 %391, label %392, label %398

392:                                              ; preds = %388
  %393 = load i8, ptr %390, align 1
  %394 = load i8, ptr %389, align 1
  %395 = icmp eq i8 %393, %394
  %396 = zext i1 %395 to i32
  %397 = getelementptr i8, ptr %389, i32 %396
  br label %398

398:                                              ; preds = %392, %388
  %399 = phi ptr [ %389, %388 ], [ %397, %392 ]
  %400 = ptrtoint ptr %399 to i32
  %401 = ptrtoint ptr %348 to i32
  %402 = sub i32 %400, %401
  br label %403

403:                                              ; preds = %398, %370, %356
  %404 = phi i32 [ %402, %398 ], [ %358, %356 ], [ %376, %370 ]
  %405 = add i32 %404, 8
  %406 = ptrtoint ptr %108 to i32
  %407 = sub i32 %102, %406
  %408 = icmp ugt ptr %88, %89
  %409 = icmp ugt ptr %108, %32
  %410 = and i1 %408, %409
  br i1 %410, label %411, label %1081

411:                                              ; preds = %420, %403
  %412 = phi ptr [ %415, %420 ], [ %88, %403 ]
  %413 = phi ptr [ %417, %420 ], [ %108, %403 ]
  %414 = phi i32 [ %421, %420 ], [ %405, %403 ]
  %415 = getelementptr i8, ptr %412, i32 -1
  %416 = load i8, ptr %415, align 1
  %417 = getelementptr i8, ptr %413, i32 -1
  %418 = load i8, ptr %417, align 1
  %419 = icmp eq i8 %416, %418
  br i1 %419, label %420, label %1081

420:                                              ; preds = %411
  %421 = add i32 %414, 1
  %422 = icmp ugt ptr %415, %89
  %423 = icmp ugt ptr %417, %32
  %424 = and i1 %422, %423
  br i1 %424, label %411, label %1081

425:                                              ; preds = %341
  %426 = getelementptr i32, ptr %41, i32 %100
  %427 = load i32, ptr %426, align 4
  %428 = getelementptr i8, ptr %47, i32 %427
  %429 = icmp ugt ptr %428, %48
  br i1 %429, label %430, label %582

430:                                              ; preds = %425
  %431 = load i64, ptr %428, align 1
  %432 = load i64, ptr %88, align 1
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %582

434:                                              ; preds = %430
  %435 = getelementptr i8, ptr %88, i32 8
  %436 = getelementptr i8, ptr %428, i32 8
  %437 = ptrtoint ptr %436 to i32
  %438 = sub i32 %50, %437
  %439 = getelementptr i8, ptr %435, i32 %438
  %440 = icmp ult ptr %439, %33
  %441 = select i1 %440, ptr %439, ptr %33
  %442 = getelementptr i8, ptr %441, i32 -3
  %443 = icmp ugt ptr %442, %435
  br i1 %443, label %444, label %470

444:                                              ; preds = %434
  %445 = load i32, ptr %436, align 1
  %446 = load i32, ptr %435, align 1
  %447 = xor i32 %446, %445
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %452, label %449

449:                                              ; preds = %444
  %450 = tail call i32 @llvm.cttz.i32(i32 %447, i1 true) #4, !range !8
  %451 = lshr i32 %450, 3
  br label %497

452:                                              ; preds = %458, %444
  %453 = phi ptr [ %456, %458 ], [ %435, %444 ]
  %454 = phi ptr [ %455, %458 ], [ %436, %444 ]
  %455 = getelementptr i8, ptr %454, i32 4
  %456 = getelementptr i8, ptr %453, i32 4
  %457 = icmp ult ptr %456, %442
  br i1 %457, label %458, label %470

458:                                              ; preds = %452
  %459 = load i32, ptr %455, align 1
  %460 = load i32, ptr %456, align 1
  %461 = xor i32 %460, %459
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %452, label %463

463:                                              ; preds = %458
  %464 = tail call i32 @llvm.cttz.i32(i32 %461, i1 true) #4, !range !8
  %465 = lshr i32 %464, 3
  %466 = getelementptr i8, ptr %456, i32 %465
  %467 = ptrtoint ptr %466 to i32
  %468 = ptrtoint ptr %435 to i32
  %469 = sub i32 %467, %468
  br label %497

470:                                              ; preds = %452, %434
  %471 = phi ptr [ %435, %434 ], [ %456, %452 ]
  %472 = phi ptr [ %436, %434 ], [ %455, %452 ]
  %473 = getelementptr i8, ptr %441, i32 -1
  %474 = icmp ult ptr %471, %473
  br i1 %474, label %475, label %482

475:                                              ; preds = %470
  %476 = load i16, ptr %472, align 1
  %477 = load i16, ptr %471, align 1
  %478 = icmp eq i16 %476, %477
  br i1 %478, label %479, label %482

479:                                              ; preds = %475
  %480 = getelementptr i8, ptr %471, i32 2
  %481 = getelementptr i8, ptr %472, i32 2
  br label %482

482:                                              ; preds = %479, %475, %470
  %483 = phi ptr [ %480, %479 ], [ %471, %475 ], [ %471, %470 ]
  %484 = phi ptr [ %481, %479 ], [ %472, %475 ], [ %472, %470 ]
  %485 = icmp ult ptr %483, %441
  br i1 %485, label %486, label %492

486:                                              ; preds = %482
  %487 = load i8, ptr %484, align 1
  %488 = load i8, ptr %483, align 1
  %489 = icmp eq i8 %487, %488
  %490 = zext i1 %489 to i32
  %491 = getelementptr i8, ptr %483, i32 %490
  br label %492

492:                                              ; preds = %486, %482
  %493 = phi ptr [ %483, %482 ], [ %491, %486 ]
  %494 = ptrtoint ptr %493 to i32
  %495 = ptrtoint ptr %435 to i32
  %496 = sub i32 %494, %495
  br label %497

497:                                              ; preds = %492, %463, %449
  %498 = phi i32 [ %496, %492 ], [ %451, %449 ], [ %469, %463 ]
  %499 = getelementptr i8, ptr %436, i32 %498
  %500 = icmp eq ptr %499, %49
  br i1 %500, label %501, label %559

501:                                              ; preds = %497
  %502 = getelementptr i8, ptr %435, i32 %498
  %503 = icmp ugt ptr %78, %502
  br i1 %503, label %504, label %530

504:                                              ; preds = %501
  %505 = load i32, ptr %32, align 1
  %506 = load i32, ptr %502, align 1
  %507 = xor i32 %506, %505
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %512, label %509

509:                                              ; preds = %504
  %510 = tail call i32 @llvm.cttz.i32(i32 %507, i1 true) #4, !range !8
  %511 = lshr i32 %510, 3
  br label %556

512:                                              ; preds = %518, %504
  %513 = phi ptr [ %516, %518 ], [ %502, %504 ]
  %514 = phi ptr [ %515, %518 ], [ %32, %504 ]
  %515 = getelementptr i8, ptr %514, i32 4
  %516 = getelementptr i8, ptr %513, i32 4
  %517 = icmp ult ptr %516, %78
  br i1 %517, label %518, label %530

518:                                              ; preds = %512
  %519 = load i32, ptr %515, align 1
  %520 = load i32, ptr %516, align 1
  %521 = xor i32 %520, %519
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %512, label %523

523:                                              ; preds = %518
  %524 = tail call i32 @llvm.cttz.i32(i32 %521, i1 true) #4, !range !8
  %525 = lshr i32 %524, 3
  %526 = getelementptr i8, ptr %516, i32 %525
  %527 = ptrtoint ptr %526 to i32
  %528 = ptrtoint ptr %502 to i32
  %529 = sub i32 %527, %528
  br label %556

530:                                              ; preds = %512, %501
  %531 = phi ptr [ %502, %501 ], [ %516, %512 ]
  %532 = phi ptr [ %32, %501 ], [ %515, %512 ]
  %533 = icmp ult ptr %531, %79
  br i1 %533, label %534, label %541

534:                                              ; preds = %530
  %535 = load i16, ptr %532, align 1
  %536 = load i16, ptr %531, align 1
  %537 = icmp eq i16 %535, %536
  br i1 %537, label %538, label %541

538:                                              ; preds = %534
  %539 = getelementptr i8, ptr %531, i32 2
  %540 = getelementptr i8, ptr %532, i32 2
  br label %541

541:                                              ; preds = %538, %534, %530
  %542 = phi ptr [ %539, %538 ], [ %531, %534 ], [ %531, %530 ]
  %543 = phi ptr [ %540, %538 ], [ %532, %534 ], [ %532, %530 ]
  %544 = icmp ult ptr %542, %33
  br i1 %544, label %545, label %551

545:                                              ; preds = %541
  %546 = load i8, ptr %543, align 1
  %547 = load i8, ptr %542, align 1
  %548 = icmp eq i8 %546, %547
  %549 = zext i1 %548 to i32
  %550 = getelementptr i8, ptr %542, i32 %549
  br label %551

551:                                              ; preds = %545, %541
  %552 = phi ptr [ %542, %541 ], [ %550, %545 ]
  %553 = ptrtoint ptr %552 to i32
  %554 = ptrtoint ptr %502 to i32
  %555 = sub i32 %553, %554
  br label %556

556:                                              ; preds = %551, %523, %509
  %557 = phi i32 [ %555, %551 ], [ %511, %509 ], [ %529, %523 ]
  %558 = add i32 %557, %498
  br label %559

559:                                              ; preds = %556, %497
  %560 = phi i32 [ %558, %556 ], [ %498, %497 ]
  %561 = add i32 %560, 8
  %562 = add i32 %53, %427
  %563 = sub i32 %103, %562
  %564 = icmp ugt ptr %88, %89
  br i1 %564, label %565, label %1081

565:                                              ; preds = %574, %559
  %566 = phi ptr [ %569, %574 ], [ %88, %559 ]
  %567 = phi ptr [ %571, %574 ], [ %428, %559 ]
  %568 = phi i32 [ %575, %574 ], [ %561, %559 ]
  %569 = getelementptr i8, ptr %566, i32 -1
  %570 = load i8, ptr %569, align 1
  %571 = getelementptr i8, ptr %567, i32 -1
  %572 = load i8, ptr %571, align 1
  %573 = icmp eq i8 %570, %572
  br i1 %573, label %574, label %1081

574:                                              ; preds = %565
  %575 = add i32 %568, 1
  %576 = icmp ugt ptr %569, %89
  %577 = icmp ugt ptr %571, %48
  %578 = and i1 %576, %577
  br i1 %578, label %565, label %1081

579:                                              ; preds = %343
  %580 = trunc i64 %345 to i32
  %581 = icmp ugt i32 %107, %31
  br i1 %581, label %586, label %590

582:                                              ; preds = %430, %425
  %583 = icmp ugt i32 %107, %31
  br i1 %583, label %584, label %590

584:                                              ; preds = %582
  %585 = load i32, ptr %88, align 1
  br label %586

586:                                              ; preds = %584, %579
  %587 = phi i32 [ %585, %584 ], [ %580, %579 ]
  %588 = load i32, ptr %109, align 1
  %589 = icmp eq i32 %588, %587
  br i1 %589, label %606, label %600

590:                                              ; preds = %582, %579
  %591 = getelementptr i32, ptr %43, i32 %101
  %592 = load i32, ptr %591, align 4
  %593 = getelementptr i8, ptr %47, i32 %592
  %594 = icmp ugt ptr %593, %48
  br i1 %594, label %595, label %600

595:                                              ; preds = %590
  %596 = add i32 %592, %53
  %597 = load i32, ptr %593, align 1
  %598 = load i32, ptr %88, align 1
  %599 = icmp eq i32 %597, %598
  br i1 %599, label %606, label %600

600:                                              ; preds = %595, %590, %586
  %601 = ptrtoint ptr %89 to i32
  %602 = sub i32 %102, %601
  %603 = ashr i32 %602, 8
  %604 = add nsw i32 %603, 1
  %605 = getelementptr i8, ptr %88, i32 %604
  br label %1394

606:                                              ; preds = %595, %586
  %607 = phi i32 [ %107, %586 ], [ %596, %595 ]
  %608 = phi ptr [ %109, %586 ], [ %593, %595 ]
  %609 = getelementptr i8, ptr %88, i32 1
  %610 = load i64, ptr %609, align 1
  %611 = mul i64 %610, -3523014627327384477
  %612 = lshr i64 %611, %73
  %613 = trunc i64 %612 to i32
  %614 = getelementptr i32, ptr %11, i32 %613
  %615 = load i32, ptr %614, align 4
  %616 = getelementptr i8, ptr %15, i32 %615
  store i32 %110, ptr %614, align 4
  %617 = icmp ugt i32 %615, %31
  br i1 %617, label %618, label %701

618:                                              ; preds = %606
  %619 = load i64, ptr %616, align 1
  %620 = load i64, ptr %609, align 1
  %621 = icmp eq i64 %619, %620
  br i1 %621, label %622, label %857

622:                                              ; preds = %618
  %623 = getelementptr i8, ptr %88, i32 9
  %624 = getelementptr i8, ptr %616, i32 8
  %625 = icmp ugt ptr %78, %623
  br i1 %625, label %626, label %652

626:                                              ; preds = %622
  %627 = load i32, ptr %624, align 1
  %628 = load i32, ptr %623, align 1
  %629 = xor i32 %628, %627
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %634, label %631

631:                                              ; preds = %626
  %632 = tail call i32 @llvm.cttz.i32(i32 %629, i1 true) #4, !range !8
  %633 = lshr i32 %632, 3
  br label %678

634:                                              ; preds = %640, %626
  %635 = phi ptr [ %638, %640 ], [ %623, %626 ]
  %636 = phi ptr [ %637, %640 ], [ %624, %626 ]
  %637 = getelementptr i8, ptr %636, i32 4
  %638 = getelementptr i8, ptr %635, i32 4
  %639 = icmp ult ptr %638, %78
  br i1 %639, label %640, label %652

640:                                              ; preds = %634
  %641 = load i32, ptr %637, align 1
  %642 = load i32, ptr %638, align 1
  %643 = xor i32 %642, %641
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %634, label %645

645:                                              ; preds = %640
  %646 = tail call i32 @llvm.cttz.i32(i32 %643, i1 true) #4, !range !8
  %647 = lshr i32 %646, 3
  %648 = getelementptr i8, ptr %638, i32 %647
  %649 = ptrtoint ptr %648 to i32
  %650 = ptrtoint ptr %623 to i32
  %651 = sub i32 %649, %650
  br label %678

652:                                              ; preds = %634, %622
  %653 = phi ptr [ %623, %622 ], [ %638, %634 ]
  %654 = phi ptr [ %624, %622 ], [ %637, %634 ]
  %655 = icmp ult ptr %653, %79
  br i1 %655, label %656, label %663

656:                                              ; preds = %652
  %657 = load i16, ptr %654, align 1
  %658 = load i16, ptr %653, align 1
  %659 = icmp eq i16 %657, %658
  br i1 %659, label %660, label %663

660:                                              ; preds = %656
  %661 = getelementptr i8, ptr %653, i32 2
  %662 = getelementptr i8, ptr %654, i32 2
  br label %663

663:                                              ; preds = %660, %656, %652
  %664 = phi ptr [ %661, %660 ], [ %653, %656 ], [ %653, %652 ]
  %665 = phi ptr [ %662, %660 ], [ %654, %656 ], [ %654, %652 ]
  %666 = icmp ult ptr %664, %33
  br i1 %666, label %667, label %673

667:                                              ; preds = %663
  %668 = load i8, ptr %665, align 1
  %669 = load i8, ptr %664, align 1
  %670 = icmp eq i8 %668, %669
  %671 = zext i1 %670 to i32
  %672 = getelementptr i8, ptr %664, i32 %671
  br label %673

673:                                              ; preds = %667, %663
  %674 = phi ptr [ %664, %663 ], [ %672, %667 ]
  %675 = ptrtoint ptr %674 to i32
  %676 = ptrtoint ptr %623 to i32
  %677 = sub i32 %675, %676
  br label %678

678:                                              ; preds = %673, %645, %631
  %679 = phi i32 [ %677, %673 ], [ %633, %631 ], [ %651, %645 ]
  %680 = add i32 %679, 8
  %681 = ptrtoint ptr %609 to i32
  %682 = ptrtoint ptr %616 to i32
  %683 = sub i32 %681, %682
  %684 = icmp ugt ptr %609, %89
  %685 = icmp ugt ptr %616, %32
  %686 = and i1 %684, %685
  br i1 %686, label %687, label %1081

687:                                              ; preds = %696, %678
  %688 = phi ptr [ %693, %696 ], [ %616, %678 ]
  %689 = phi ptr [ %691, %696 ], [ %609, %678 ]
  %690 = phi i32 [ %697, %696 ], [ %680, %678 ]
  %691 = getelementptr i8, ptr %689, i32 -1
  %692 = load i8, ptr %691, align 1
  %693 = getelementptr i8, ptr %688, i32 -1
  %694 = load i8, ptr %693, align 1
  %695 = icmp eq i8 %692, %694
  br i1 %695, label %696, label %1081

696:                                              ; preds = %687
  %697 = add i32 %690, 1
  %698 = icmp ugt ptr %691, %89
  %699 = icmp ugt ptr %693, %32
  %700 = and i1 %699, %698
  br i1 %700, label %687, label %1081

701:                                              ; preds = %606
  %702 = lshr i64 %611, %75
  %703 = trunc i64 %702 to i32
  %704 = getelementptr i32, ptr %41, i32 %703
  %705 = load i32, ptr %704, align 4
  %706 = getelementptr i8, ptr %47, i32 %705
  %707 = icmp ugt ptr %706, %48
  br i1 %707, label %708, label %857

708:                                              ; preds = %701
  %709 = load i64, ptr %706, align 1
  %710 = load i64, ptr %609, align 1
  %711 = icmp eq i64 %709, %710
  br i1 %711, label %712, label %857

712:                                              ; preds = %708
  %713 = getelementptr i8, ptr %88, i32 9
  %714 = getelementptr i8, ptr %706, i32 8
  %715 = ptrtoint ptr %714 to i32
  %716 = sub i32 %50, %715
  %717 = getelementptr i8, ptr %713, i32 %716
  %718 = icmp ult ptr %717, %33
  %719 = select i1 %718, ptr %717, ptr %33
  %720 = getelementptr i8, ptr %719, i32 -3
  %721 = icmp ugt ptr %720, %713
  br i1 %721, label %722, label %748

722:                                              ; preds = %712
  %723 = load i32, ptr %714, align 1
  %724 = load i32, ptr %713, align 1
  %725 = xor i32 %724, %723
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %730, label %727

727:                                              ; preds = %722
  %728 = tail call i32 @llvm.cttz.i32(i32 %725, i1 true) #4, !range !8
  %729 = lshr i32 %728, 3
  br label %775

730:                                              ; preds = %736, %722
  %731 = phi ptr [ %734, %736 ], [ %713, %722 ]
  %732 = phi ptr [ %733, %736 ], [ %714, %722 ]
  %733 = getelementptr i8, ptr %732, i32 4
  %734 = getelementptr i8, ptr %731, i32 4
  %735 = icmp ult ptr %734, %720
  br i1 %735, label %736, label %748

736:                                              ; preds = %730
  %737 = load i32, ptr %733, align 1
  %738 = load i32, ptr %734, align 1
  %739 = xor i32 %738, %737
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %730, label %741

741:                                              ; preds = %736
  %742 = tail call i32 @llvm.cttz.i32(i32 %739, i1 true) #4, !range !8
  %743 = lshr i32 %742, 3
  %744 = getelementptr i8, ptr %734, i32 %743
  %745 = ptrtoint ptr %744 to i32
  %746 = ptrtoint ptr %713 to i32
  %747 = sub i32 %745, %746
  br label %775

748:                                              ; preds = %730, %712
  %749 = phi ptr [ %713, %712 ], [ %734, %730 ]
  %750 = phi ptr [ %714, %712 ], [ %733, %730 ]
  %751 = getelementptr i8, ptr %719, i32 -1
  %752 = icmp ult ptr %749, %751
  br i1 %752, label %753, label %760

753:                                              ; preds = %748
  %754 = load i16, ptr %750, align 1
  %755 = load i16, ptr %749, align 1
  %756 = icmp eq i16 %754, %755
  br i1 %756, label %757, label %760

757:                                              ; preds = %753
  %758 = getelementptr i8, ptr %749, i32 2
  %759 = getelementptr i8, ptr %750, i32 2
  br label %760

760:                                              ; preds = %757, %753, %748
  %761 = phi ptr [ %758, %757 ], [ %749, %753 ], [ %749, %748 ]
  %762 = phi ptr [ %759, %757 ], [ %750, %753 ], [ %750, %748 ]
  %763 = icmp ult ptr %761, %719
  br i1 %763, label %764, label %770

764:                                              ; preds = %760
  %765 = load i8, ptr %762, align 1
  %766 = load i8, ptr %761, align 1
  %767 = icmp eq i8 %765, %766
  %768 = zext i1 %767 to i32
  %769 = getelementptr i8, ptr %761, i32 %768
  br label %770

770:                                              ; preds = %764, %760
  %771 = phi ptr [ %761, %760 ], [ %769, %764 ]
  %772 = ptrtoint ptr %771 to i32
  %773 = ptrtoint ptr %713 to i32
  %774 = sub i32 %772, %773
  br label %775

775:                                              ; preds = %770, %741, %727
  %776 = phi i32 [ %774, %770 ], [ %729, %727 ], [ %747, %741 ]
  %777 = getelementptr i8, ptr %714, i32 %776
  %778 = icmp eq ptr %777, %49
  br i1 %778, label %779, label %837

779:                                              ; preds = %775
  %780 = getelementptr i8, ptr %713, i32 %776
  %781 = icmp ugt ptr %78, %780
  br i1 %781, label %782, label %808

782:                                              ; preds = %779
  %783 = load i32, ptr %32, align 1
  %784 = load i32, ptr %780, align 1
  %785 = xor i32 %784, %783
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %790, label %787

787:                                              ; preds = %782
  %788 = tail call i32 @llvm.cttz.i32(i32 %785, i1 true) #4, !range !8
  %789 = lshr i32 %788, 3
  br label %834

790:                                              ; preds = %796, %782
  %791 = phi ptr [ %794, %796 ], [ %780, %782 ]
  %792 = phi ptr [ %793, %796 ], [ %32, %782 ]
  %793 = getelementptr i8, ptr %792, i32 4
  %794 = getelementptr i8, ptr %791, i32 4
  %795 = icmp ult ptr %794, %78
  br i1 %795, label %796, label %808

796:                                              ; preds = %790
  %797 = load i32, ptr %793, align 1
  %798 = load i32, ptr %794, align 1
  %799 = xor i32 %798, %797
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %790, label %801

801:                                              ; preds = %796
  %802 = tail call i32 @llvm.cttz.i32(i32 %799, i1 true) #4, !range !8
  %803 = lshr i32 %802, 3
  %804 = getelementptr i8, ptr %794, i32 %803
  %805 = ptrtoint ptr %804 to i32
  %806 = ptrtoint ptr %780 to i32
  %807 = sub i32 %805, %806
  br label %834

808:                                              ; preds = %790, %779
  %809 = phi ptr [ %780, %779 ], [ %794, %790 ]
  %810 = phi ptr [ %32, %779 ], [ %793, %790 ]
  %811 = icmp ult ptr %809, %79
  br i1 %811, label %812, label %819

812:                                              ; preds = %808
  %813 = load i16, ptr %810, align 1
  %814 = load i16, ptr %809, align 1
  %815 = icmp eq i16 %813, %814
  br i1 %815, label %816, label %819

816:                                              ; preds = %812
  %817 = getelementptr i8, ptr %809, i32 2
  %818 = getelementptr i8, ptr %810, i32 2
  br label %819

819:                                              ; preds = %816, %812, %808
  %820 = phi ptr [ %817, %816 ], [ %809, %812 ], [ %809, %808 ]
  %821 = phi ptr [ %818, %816 ], [ %810, %812 ], [ %810, %808 ]
  %822 = icmp ult ptr %820, %33
  br i1 %822, label %823, label %829

823:                                              ; preds = %819
  %824 = load i8, ptr %821, align 1
  %825 = load i8, ptr %820, align 1
  %826 = icmp eq i8 %824, %825
  %827 = zext i1 %826 to i32
  %828 = getelementptr i8, ptr %820, i32 %827
  br label %829

829:                                              ; preds = %823, %819
  %830 = phi ptr [ %820, %819 ], [ %828, %823 ]
  %831 = ptrtoint ptr %830 to i32
  %832 = ptrtoint ptr %780 to i32
  %833 = sub i32 %831, %832
  br label %834

834:                                              ; preds = %829, %801, %787
  %835 = phi i32 [ %833, %829 ], [ %789, %787 ], [ %807, %801 ]
  %836 = add i32 %835, %776
  br label %837

837:                                              ; preds = %834, %775
  %838 = phi i32 [ %836, %834 ], [ %776, %775 ]
  %839 = add i32 %838, 8
  %840 = add i32 %53, %705
  %841 = sub i32 %110, %840
  %842 = icmp ugt ptr %609, %89
  br i1 %842, label %843, label %1081

843:                                              ; preds = %852, %837
  %844 = phi ptr [ %849, %852 ], [ %706, %837 ]
  %845 = phi ptr [ %847, %852 ], [ %609, %837 ]
  %846 = phi i32 [ %853, %852 ], [ %839, %837 ]
  %847 = getelementptr i8, ptr %845, i32 -1
  %848 = load i8, ptr %847, align 1
  %849 = getelementptr i8, ptr %844, i32 -1
  %850 = load i8, ptr %849, align 1
  %851 = icmp eq i8 %848, %850
  br i1 %851, label %852, label %1081

852:                                              ; preds = %843
  %853 = add i32 %846, 1
  %854 = icmp ugt ptr %847, %89
  %855 = icmp ugt ptr %849, %48
  %856 = and i1 %855, %854
  br i1 %856, label %843, label %1081

857:                                              ; preds = %708, %701, %618
  %858 = icmp ult i32 %607, %31
  %859 = getelementptr i8, ptr %88, i32 4
  %860 = getelementptr i8, ptr %608, i32 4
  br i1 %858, label %861, label %1005

861:                                              ; preds = %857
  %862 = ptrtoint ptr %860 to i32
  %863 = sub i32 %50, %862
  %864 = getelementptr i8, ptr %859, i32 %863
  %865 = icmp ult ptr %864, %33
  %866 = select i1 %865, ptr %864, ptr %33
  %867 = getelementptr i8, ptr %866, i32 -3
  %868 = icmp ugt ptr %867, %859
  br i1 %868, label %869, label %895

869:                                              ; preds = %861
  %870 = load i32, ptr %860, align 1
  %871 = load i32, ptr %859, align 1
  %872 = xor i32 %871, %870
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %877, label %874

874:                                              ; preds = %869
  %875 = tail call i32 @llvm.cttz.i32(i32 %872, i1 true) #4, !range !8
  %876 = lshr i32 %875, 3
  br label %922

877:                                              ; preds = %883, %869
  %878 = phi ptr [ %881, %883 ], [ %859, %869 ]
  %879 = phi ptr [ %880, %883 ], [ %860, %869 ]
  %880 = getelementptr i8, ptr %879, i32 4
  %881 = getelementptr i8, ptr %878, i32 4
  %882 = icmp ult ptr %881, %867
  br i1 %882, label %883, label %895

883:                                              ; preds = %877
  %884 = load i32, ptr %880, align 1
  %885 = load i32, ptr %881, align 1
  %886 = xor i32 %885, %884
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %877, label %888

888:                                              ; preds = %883
  %889 = tail call i32 @llvm.cttz.i32(i32 %886, i1 true) #4, !range !8
  %890 = lshr i32 %889, 3
  %891 = getelementptr i8, ptr %881, i32 %890
  %892 = ptrtoint ptr %891 to i32
  %893 = ptrtoint ptr %859 to i32
  %894 = sub i32 %892, %893
  br label %922

895:                                              ; preds = %877, %861
  %896 = phi ptr [ %859, %861 ], [ %881, %877 ]
  %897 = phi ptr [ %860, %861 ], [ %880, %877 ]
  %898 = getelementptr i8, ptr %866, i32 -1
  %899 = icmp ult ptr %896, %898
  br i1 %899, label %900, label %907

900:                                              ; preds = %895
  %901 = load i16, ptr %897, align 1
  %902 = load i16, ptr %896, align 1
  %903 = icmp eq i16 %901, %902
  br i1 %903, label %904, label %907

904:                                              ; preds = %900
  %905 = getelementptr i8, ptr %896, i32 2
  %906 = getelementptr i8, ptr %897, i32 2
  br label %907

907:                                              ; preds = %904, %900, %895
  %908 = phi ptr [ %905, %904 ], [ %896, %900 ], [ %896, %895 ]
  %909 = phi ptr [ %906, %904 ], [ %897, %900 ], [ %897, %895 ]
  %910 = icmp ult ptr %908, %866
  br i1 %910, label %911, label %917

911:                                              ; preds = %907
  %912 = load i8, ptr %909, align 1
  %913 = load i8, ptr %908, align 1
  %914 = icmp eq i8 %912, %913
  %915 = zext i1 %914 to i32
  %916 = getelementptr i8, ptr %908, i32 %915
  br label %917

917:                                              ; preds = %911, %907
  %918 = phi ptr [ %908, %907 ], [ %916, %911 ]
  %919 = ptrtoint ptr %918 to i32
  %920 = ptrtoint ptr %859 to i32
  %921 = sub i32 %919, %920
  br label %922

922:                                              ; preds = %917, %888, %874
  %923 = phi i32 [ %921, %917 ], [ %876, %874 ], [ %894, %888 ]
  %924 = getelementptr i8, ptr %860, i32 %923
  %925 = icmp eq ptr %924, %49
  br i1 %925, label %926, label %984

926:                                              ; preds = %922
  %927 = getelementptr i8, ptr %859, i32 %923
  %928 = icmp ugt ptr %78, %927
  br i1 %928, label %929, label %955

929:                                              ; preds = %926
  %930 = load i32, ptr %32, align 1
  %931 = load i32, ptr %927, align 1
  %932 = xor i32 %931, %930
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %937, label %934

934:                                              ; preds = %929
  %935 = tail call i32 @llvm.cttz.i32(i32 %932, i1 true) #4, !range !8
  %936 = lshr i32 %935, 3
  br label %981

937:                                              ; preds = %943, %929
  %938 = phi ptr [ %941, %943 ], [ %927, %929 ]
  %939 = phi ptr [ %940, %943 ], [ %32, %929 ]
  %940 = getelementptr i8, ptr %939, i32 4
  %941 = getelementptr i8, ptr %938, i32 4
  %942 = icmp ult ptr %941, %78
  br i1 %942, label %943, label %955

943:                                              ; preds = %937
  %944 = load i32, ptr %940, align 1
  %945 = load i32, ptr %941, align 1
  %946 = xor i32 %945, %944
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %937, label %948

948:                                              ; preds = %943
  %949 = tail call i32 @llvm.cttz.i32(i32 %946, i1 true) #4, !range !8
  %950 = lshr i32 %949, 3
  %951 = getelementptr i8, ptr %941, i32 %950
  %952 = ptrtoint ptr %951 to i32
  %953 = ptrtoint ptr %927 to i32
  %954 = sub i32 %952, %953
  br label %981

955:                                              ; preds = %937, %926
  %956 = phi ptr [ %927, %926 ], [ %941, %937 ]
  %957 = phi ptr [ %32, %926 ], [ %940, %937 ]
  %958 = icmp ult ptr %956, %79
  br i1 %958, label %959, label %966

959:                                              ; preds = %955
  %960 = load i16, ptr %957, align 1
  %961 = load i16, ptr %956, align 1
  %962 = icmp eq i16 %960, %961
  br i1 %962, label %963, label %966

963:                                              ; preds = %959
  %964 = getelementptr i8, ptr %956, i32 2
  %965 = getelementptr i8, ptr %957, i32 2
  br label %966

966:                                              ; preds = %963, %959, %955
  %967 = phi ptr [ %964, %963 ], [ %956, %959 ], [ %956, %955 ]
  %968 = phi ptr [ %965, %963 ], [ %957, %959 ], [ %957, %955 ]
  %969 = icmp ult ptr %967, %33
  br i1 %969, label %970, label %976

970:                                              ; preds = %966
  %971 = load i8, ptr %968, align 1
  %972 = load i8, ptr %967, align 1
  %973 = icmp eq i8 %971, %972
  %974 = zext i1 %973 to i32
  %975 = getelementptr i8, ptr %967, i32 %974
  br label %976

976:                                              ; preds = %970, %966
  %977 = phi ptr [ %967, %966 ], [ %975, %970 ]
  %978 = ptrtoint ptr %977 to i32
  %979 = ptrtoint ptr %927 to i32
  %980 = sub i32 %978, %979
  br label %981

981:                                              ; preds = %976, %948, %934
  %982 = phi i32 [ %980, %976 ], [ %936, %934 ], [ %954, %948 ]
  %983 = add i32 %982, %923
  br label %984

984:                                              ; preds = %981, %922
  %985 = phi i32 [ %983, %981 ], [ %923, %922 ]
  %986 = add i32 %985, 4
  %987 = sub i32 %103, %607
  %988 = icmp ugt ptr %88, %89
  %989 = icmp ugt ptr %608, %48
  %990 = and i1 %988, %989
  br i1 %990, label %991, label %1081

991:                                              ; preds = %1000, %984
  %992 = phi ptr [ %995, %1000 ], [ %88, %984 ]
  %993 = phi ptr [ %997, %1000 ], [ %608, %984 ]
  %994 = phi i32 [ %1001, %1000 ], [ %986, %984 ]
  %995 = getelementptr i8, ptr %992, i32 -1
  %996 = load i8, ptr %995, align 1
  %997 = getelementptr i8, ptr %993, i32 -1
  %998 = load i8, ptr %997, align 1
  %999 = icmp eq i8 %996, %998
  br i1 %999, label %1000, label %1081

1000:                                             ; preds = %991
  %1001 = add i32 %994, 1
  %1002 = icmp ugt ptr %995, %89
  %1003 = icmp ugt ptr %997, %48
  %1004 = and i1 %1002, %1003
  br i1 %1004, label %991, label %1081

1005:                                             ; preds = %857
  %1006 = icmp ugt ptr %78, %859
  br i1 %1006, label %1007, label %1033

1007:                                             ; preds = %1005
  %1008 = load i32, ptr %860, align 1
  %1009 = load i32, ptr %859, align 1
  %1010 = xor i32 %1009, %1008
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1015, label %1012

1012:                                             ; preds = %1007
  %1013 = tail call i32 @llvm.cttz.i32(i32 %1010, i1 true) #4, !range !8
  %1014 = lshr i32 %1013, 3
  br label %1059

1015:                                             ; preds = %1021, %1007
  %1016 = phi ptr [ %1019, %1021 ], [ %859, %1007 ]
  %1017 = phi ptr [ %1018, %1021 ], [ %860, %1007 ]
  %1018 = getelementptr i8, ptr %1017, i32 4
  %1019 = getelementptr i8, ptr %1016, i32 4
  %1020 = icmp ult ptr %1019, %78
  br i1 %1020, label %1021, label %1033

1021:                                             ; preds = %1015
  %1022 = load i32, ptr %1018, align 1
  %1023 = load i32, ptr %1019, align 1
  %1024 = xor i32 %1023, %1022
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1015, label %1026

1026:                                             ; preds = %1021
  %1027 = tail call i32 @llvm.cttz.i32(i32 %1024, i1 true) #4, !range !8
  %1028 = lshr i32 %1027, 3
  %1029 = getelementptr i8, ptr %1019, i32 %1028
  %1030 = ptrtoint ptr %1029 to i32
  %1031 = ptrtoint ptr %859 to i32
  %1032 = sub i32 %1030, %1031
  br label %1059

1033:                                             ; preds = %1015, %1005
  %1034 = phi ptr [ %859, %1005 ], [ %1019, %1015 ]
  %1035 = phi ptr [ %860, %1005 ], [ %1018, %1015 ]
  %1036 = icmp ult ptr %1034, %79
  br i1 %1036, label %1037, label %1044

1037:                                             ; preds = %1033
  %1038 = load i16, ptr %1035, align 1
  %1039 = load i16, ptr %1034, align 1
  %1040 = icmp eq i16 %1038, %1039
  br i1 %1040, label %1041, label %1044

1041:                                             ; preds = %1037
  %1042 = getelementptr i8, ptr %1034, i32 2
  %1043 = getelementptr i8, ptr %1035, i32 2
  br label %1044

1044:                                             ; preds = %1041, %1037, %1033
  %1045 = phi ptr [ %1042, %1041 ], [ %1034, %1037 ], [ %1034, %1033 ]
  %1046 = phi ptr [ %1043, %1041 ], [ %1035, %1037 ], [ %1035, %1033 ]
  %1047 = icmp ult ptr %1045, %33
  br i1 %1047, label %1048, label %1054

1048:                                             ; preds = %1044
  %1049 = load i8, ptr %1046, align 1
  %1050 = load i8, ptr %1045, align 1
  %1051 = icmp eq i8 %1049, %1050
  %1052 = zext i1 %1051 to i32
  %1053 = getelementptr i8, ptr %1045, i32 %1052
  br label %1054

1054:                                             ; preds = %1048, %1044
  %1055 = phi ptr [ %1045, %1044 ], [ %1053, %1048 ]
  %1056 = ptrtoint ptr %1055 to i32
  %1057 = ptrtoint ptr %859 to i32
  %1058 = sub i32 %1056, %1057
  br label %1059

1059:                                             ; preds = %1054, %1026, %1012
  %1060 = phi i32 [ %1058, %1054 ], [ %1014, %1012 ], [ %1032, %1026 ]
  %1061 = add i32 %1060, 4
  %1062 = ptrtoint ptr %608 to i32
  %1063 = sub i32 %102, %1062
  %1064 = icmp ugt ptr %88, %89
  %1065 = icmp ugt ptr %608, %32
  %1066 = and i1 %1064, %1065
  br i1 %1066, label %1067, label %1081

1067:                                             ; preds = %1076, %1059
  %1068 = phi ptr [ %1071, %1076 ], [ %88, %1059 ]
  %1069 = phi ptr [ %1073, %1076 ], [ %608, %1059 ]
  %1070 = phi i32 [ %1077, %1076 ], [ %1061, %1059 ]
  %1071 = getelementptr i8, ptr %1068, i32 -1
  %1072 = load i8, ptr %1071, align 1
  %1073 = getelementptr i8, ptr %1069, i32 -1
  %1074 = load i8, ptr %1073, align 1
  %1075 = icmp eq i8 %1072, %1074
  br i1 %1075, label %1076, label %1081

1076:                                             ; preds = %1067
  %1077 = add i32 %1070, 1
  %1078 = icmp ugt ptr %1071, %89
  %1079 = icmp ugt ptr %1073, %32
  %1080 = and i1 %1078, %1079
  br i1 %1080, label %1067, label %1081

1081:                                             ; preds = %1076, %1067, %1059, %1000, %991, %984, %852, %843, %837, %696, %687, %678, %574, %565, %559, %420, %411, %403
  %1082 = phi i32 [ %405, %403 ], [ %680, %678 ], [ %986, %984 ], [ %1061, %1059 ], [ %839, %837 ], [ %561, %559 ], [ %421, %420 ], [ %414, %411 ], [ %697, %696 ], [ %690, %687 ], [ %994, %991 ], [ %1001, %1000 ], [ %1070, %1067 ], [ %1077, %1076 ], [ %853, %852 ], [ %846, %843 ], [ %568, %565 ], [ %575, %574 ]
  %1083 = phi i32 [ %407, %403 ], [ %683, %678 ], [ %987, %984 ], [ %1063, %1059 ], [ %841, %837 ], [ %563, %559 ], [ %407, %411 ], [ %407, %420 ], [ %683, %687 ], [ %683, %696 ], [ %987, %991 ], [ %987, %1000 ], [ %1063, %1067 ], [ %1063, %1076 ], [ %841, %843 ], [ %841, %852 ], [ %563, %565 ], [ %563, %574 ]
  %1084 = phi ptr [ %88, %403 ], [ %609, %678 ], [ %88, %984 ], [ %88, %1059 ], [ %609, %837 ], [ %88, %559 ], [ %415, %420 ], [ %412, %411 ], [ %691, %696 ], [ %689, %687 ], [ %992, %991 ], [ %995, %1000 ], [ %1068, %1067 ], [ %1071, %1076 ], [ %847, %852 ], [ %845, %843 ], [ %566, %565 ], [ %569, %574 ]
  %1085 = ptrtoint ptr %1084 to i32
  %1086 = ptrtoint ptr %89 to i32
  %1087 = sub i32 %1085, %1086
  %1088 = add i32 %1082, -3
  %1089 = getelementptr i8, ptr %89, i32 %1087
  %1090 = icmp ugt ptr %1089, %80
  %1091 = load ptr, ptr %81, align 4
  br i1 %1090, label %1113, label %1092

1092:                                             ; preds = %1081
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1091, ptr noundef align 1 dereferenceable(16) %89, i32 16, i1 false) #4
  %1093 = icmp ugt i32 %1087, 16
  %1094 = load ptr, ptr %81, align 4
  br i1 %1093, label %1097, label %1095

1095:                                             ; preds = %1092
  %1096 = getelementptr i8, ptr %1094, i32 %1087
  store ptr %1096, ptr %81, align 4
  br label %1156

1097:                                             ; preds = %1092
  %1098 = getelementptr i8, ptr %1094, i32 16
  %1099 = getelementptr i8, ptr %89, i32 16
  %1100 = add i32 %1087, -16
  %1101 = getelementptr i8, ptr %1094, i32 %1087
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1098, ptr noundef align 1 dereferenceable(16) %1099, i32 16, i1 false) #4
  %1102 = icmp slt i32 %1100, 17
  br i1 %1102, label %1145, label %1103

1103:                                             ; preds = %1097
  %1104 = getelementptr i8, ptr %1094, i32 32
  br label %1105

1105:                                             ; preds = %1105, %1103
  %1106 = phi ptr [ %1099, %1103 ], [ %1110, %1105 ]
  %1107 = phi ptr [ %1104, %1103 ], [ %1111, %1105 ]
  %1108 = getelementptr i8, ptr %1106, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1107, ptr noundef align 1 dereferenceable(16) %1108, i32 16, i1 false) #4
  %1109 = getelementptr i8, ptr %1107, i32 16
  %1110 = getelementptr i8, ptr %1106, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1109, ptr noundef align 1 dereferenceable(16) %1110, i32 16, i1 false) #4
  %1111 = getelementptr i8, ptr %1107, i32 32
  %1112 = icmp ult ptr %1111, %1101
  br i1 %1112, label %1105, label %1145

1113:                                             ; preds = %1081
  %1114 = ptrtoint ptr %1089 to i32
  %1115 = icmp ult ptr %80, %89
  br i1 %1115, label %1130, label %1116

1116:                                             ; preds = %1113
  %1117 = sub i32 %82, %1086
  %1118 = getelementptr i8, ptr %1091, i32 %1117
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1091, ptr noundef align 1 dereferenceable(16) %89, i32 16, i1 false) #4
  %1119 = icmp slt i32 %1117, 17
  br i1 %1119, label %1130, label %1120

1120:                                             ; preds = %1116
  %1121 = getelementptr i8, ptr %1091, i32 16
  br label %1122

1122:                                             ; preds = %1122, %1120
  %1123 = phi ptr [ %89, %1120 ], [ %1127, %1122 ]
  %1124 = phi ptr [ %1121, %1120 ], [ %1128, %1122 ]
  %1125 = getelementptr i8, ptr %1123, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1124, ptr noundef align 1 dereferenceable(16) %1125, i32 16, i1 false) #4
  %1126 = getelementptr i8, ptr %1124, i32 16
  %1127 = getelementptr i8, ptr %1123, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1126, ptr noundef align 1 dereferenceable(16) %1127, i32 16, i1 false) #4
  %1128 = getelementptr i8, ptr %1124, i32 32
  %1129 = icmp ult ptr %1128, %1118
  br i1 %1129, label %1122, label %1130

1130:                                             ; preds = %1122, %1116, %1113
  %1131 = phi ptr [ %80, %1116 ], [ %89, %1113 ], [ %80, %1122 ]
  %1132 = phi ptr [ %1118, %1116 ], [ %1091, %1113 ], [ %1118, %1122 ]
  %1133 = icmp ult ptr %1131, %1089
  br i1 %1133, label %1134, label %1145

1134:                                             ; preds = %1130
  %1135 = ptrtoint ptr %1131 to i32
  %1136 = sub i32 %1114, %1135
  %1137 = getelementptr i8, ptr %1131, i32 %1136
  br label %1138

1138:                                             ; preds = %1138, %1134
  %1139 = phi ptr [ %1143, %1138 ], [ %1132, %1134 ]
  %1140 = phi ptr [ %1141, %1138 ], [ %1131, %1134 ]
  %1141 = getelementptr i8, ptr %1140, i32 1
  %1142 = load i8, ptr %1140, align 1
  %1143 = getelementptr i8, ptr %1139, i32 1
  store i8 %1142, ptr %1139, align 1
  %1144 = icmp eq ptr %1141, %1137
  br i1 %1144, label %1145, label %1138

1145:                                             ; preds = %1138, %1130, %1105, %1097
  %1146 = load ptr, ptr %81, align 4
  %1147 = getelementptr i8, ptr %1146, i32 %1087
  store ptr %1147, ptr %81, align 4
  %1148 = icmp ugt i32 %1087, 65535
  br i1 %1148, label %1149, label %1156

1149:                                             ; preds = %1145
  store i32 1, ptr %83, align 4
  %1150 = load ptr, ptr %84, align 4
  %1151 = load ptr, ptr %1, align 4
  %1152 = ptrtoint ptr %1150 to i32
  %1153 = ptrtoint ptr %1151 to i32
  %1154 = sub i32 %1152, %1153
  %1155 = ashr exact i32 %1154, 3
  store i32 %1155, ptr %85, align 4
  br label %1156

1156:                                             ; preds = %1149, %1145, %1095
  %1157 = trunc i32 %1087 to i16
  %1158 = load ptr, ptr %84, align 4
  %1159 = getelementptr inbounds %struct.seqDef_s, ptr %1158, i32 0, i32 1
  store i16 %1157, ptr %1159, align 4
  %1160 = add i32 %1083, 3
  %1161 = load ptr, ptr %84, align 4
  store i32 %1160, ptr %1161, align 4
  %1162 = icmp ugt i32 %1088, 65535
  br i1 %1162, label %1165, label %1163

1163:                                             ; preds = %1156
  %1164 = load ptr, ptr %84, align 4
  br label %1172

1165:                                             ; preds = %1156
  store i32 2, ptr %83, align 4
  %1166 = load ptr, ptr %84, align 4
  %1167 = load ptr, ptr %1, align 4
  %1168 = ptrtoint ptr %1166 to i32
  %1169 = ptrtoint ptr %1167 to i32
  %1170 = sub i32 %1168, %1169
  %1171 = ashr exact i32 %1170, 3
  store i32 %1171, ptr %85, align 4
  br label %1172

1172:                                             ; preds = %1165, %1163, %334, %332
  %1173 = phi i32 [ %258, %332 ], [ %258, %334 ], [ %1088, %1163 ], [ %1088, %1165 ]
  %1174 = phi ptr [ %333, %332 ], [ %335, %334 ], [ %1164, %1163 ], [ %1166, %1165 ]
  %1175 = phi i32 [ %91, %332 ], [ %91, %334 ], [ %90, %1163 ], [ %90, %1165 ]
  %1176 = phi i32 [ %90, %332 ], [ %90, %334 ], [ %1083, %1163 ], [ %1083, %1165 ]
  %1177 = phi i32 [ %254, %332 ], [ %254, %334 ], [ %1082, %1163 ], [ %1082, %1165 ]
  %1178 = phi ptr [ %122, %332 ], [ %122, %334 ], [ %1084, %1163 ], [ %1084, %1165 ]
  %1179 = trunc i32 %1173 to i16
  %1180 = getelementptr inbounds %struct.seqDef_s, ptr %1174, i32 0, i32 2
  store i16 %1179, ptr %1180, align 2
  %1181 = load ptr, ptr %84, align 4
  %1182 = getelementptr %struct.seqDef_s, ptr %1181, i32 1
  store ptr %1182, ptr %84, align 4
  %1183 = getelementptr i8, ptr %1178, i32 %1177
  %1184 = icmp ugt ptr %1183, %34
  br i1 %1184, label %1394, label %1185

1185:                                             ; preds = %1172
  %1186 = add i32 %103, 2
  %1187 = getelementptr i8, ptr %15, i32 %1186
  %1188 = load i64, ptr %1187, align 1
  %1189 = mul i64 %1188, -3523014627327384477
  %1190 = lshr i64 %1189, %73
  %1191 = trunc i64 %1190 to i32
  %1192 = getelementptr i32, ptr %11, i32 %1191
  store i32 %1186, ptr %1192, align 4
  %1193 = getelementptr i8, ptr %1183, i32 -2
  %1194 = ptrtoint ptr %1193 to i32
  %1195 = sub i32 %1194, %17
  %1196 = load i64, ptr %1193, align 1
  %1197 = mul i64 %1196, -3523014627327384477
  %1198 = lshr i64 %1197, %73
  %1199 = trunc i64 %1198 to i32
  %1200 = getelementptr i32, ptr %11, i32 %1199
  store i32 %1195, ptr %1200, align 4
  %1201 = load i32, ptr %1187, align 1
  %1202 = mul i32 %1201, -1640531535
  %1203 = lshr i32 %1202, %76
  %1204 = getelementptr i32, ptr %13, i32 %1203
  store i32 %1186, ptr %1204, align 4
  %1205 = getelementptr i8, ptr %1183, i32 -1
  %1206 = load i32, ptr %1205, align 1
  %1207 = mul i32 %1206, -1640531535
  %1208 = lshr i32 %1207, %76
  %1209 = ptrtoint ptr %1205 to i32
  %1210 = sub i32 %1209, %17
  %1211 = getelementptr i32, ptr %13, i32 %1208
  store i32 %1210, ptr %1211, align 4
  br label %1212

1212:                                             ; preds = %1377, %1185
  %1213 = phi ptr [ %1392, %1377 ], [ %1183, %1185 ]
  %1214 = phi i32 [ %1215, %1377 ], [ %1176, %1185 ]
  %1215 = phi i32 [ %1214, %1377 ], [ %1175, %1185 ]
  %1216 = ptrtoint ptr %1213 to i32
  %1217 = sub i32 %1216, %17
  %1218 = sub i32 %1217, %1215
  %1219 = icmp ult i32 %1218, %31
  %1220 = select i1 %1219, ptr %86, ptr %15
  %1221 = getelementptr i8, ptr %1220, i32 %1218
  %1222 = xor i32 %1218, -1
  %1223 = add i32 %31, %1222
  %1224 = icmp ugt i32 %1223, 2
  br i1 %1224, label %1225, label %1394

1225:                                             ; preds = %1212
  %1226 = load i32, ptr %1221, align 1
  %1227 = load i32, ptr %1213, align 1
  %1228 = icmp eq i32 %1226, %1227
  br i1 %1228, label %1229, label %1394

1229:                                             ; preds = %1225
  %1230 = select i1 %1219, ptr %49, ptr %33
  %1231 = getelementptr i8, ptr %1213, i32 4
  %1232 = getelementptr i8, ptr %1221, i32 4
  %1233 = ptrtoint ptr %1230 to i32
  %1234 = ptrtoint ptr %1232 to i32
  %1235 = sub i32 %1233, %1234
  %1236 = getelementptr i8, ptr %1231, i32 %1235
  %1237 = icmp ult ptr %1236, %33
  %1238 = select i1 %1237, ptr %1236, ptr %33
  %1239 = getelementptr i8, ptr %1238, i32 -3
  %1240 = icmp ugt ptr %1239, %1231
  br i1 %1240, label %1241, label %1267

1241:                                             ; preds = %1229
  %1242 = load i32, ptr %1232, align 1
  %1243 = load i32, ptr %1231, align 1
  %1244 = xor i32 %1243, %1242
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1249, label %1246

1246:                                             ; preds = %1241
  %1247 = tail call i32 @llvm.cttz.i32(i32 %1244, i1 true) #4, !range !8
  %1248 = lshr i32 %1247, 3
  br label %1294

1249:                                             ; preds = %1255, %1241
  %1250 = phi ptr [ %1253, %1255 ], [ %1231, %1241 ]
  %1251 = phi ptr [ %1252, %1255 ], [ %1232, %1241 ]
  %1252 = getelementptr i8, ptr %1251, i32 4
  %1253 = getelementptr i8, ptr %1250, i32 4
  %1254 = icmp ult ptr %1253, %1239
  br i1 %1254, label %1255, label %1267

1255:                                             ; preds = %1249
  %1256 = load i32, ptr %1252, align 1
  %1257 = load i32, ptr %1253, align 1
  %1258 = xor i32 %1257, %1256
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1249, label %1260

1260:                                             ; preds = %1255
  %1261 = tail call i32 @llvm.cttz.i32(i32 %1258, i1 true) #4, !range !8
  %1262 = lshr i32 %1261, 3
  %1263 = getelementptr i8, ptr %1253, i32 %1262
  %1264 = ptrtoint ptr %1263 to i32
  %1265 = ptrtoint ptr %1231 to i32
  %1266 = sub i32 %1264, %1265
  br label %1294

1267:                                             ; preds = %1249, %1229
  %1268 = phi ptr [ %1231, %1229 ], [ %1253, %1249 ]
  %1269 = phi ptr [ %1232, %1229 ], [ %1252, %1249 ]
  %1270 = getelementptr i8, ptr %1238, i32 -1
  %1271 = icmp ult ptr %1268, %1270
  br i1 %1271, label %1272, label %1279

1272:                                             ; preds = %1267
  %1273 = load i16, ptr %1269, align 1
  %1274 = load i16, ptr %1268, align 1
  %1275 = icmp eq i16 %1273, %1274
  br i1 %1275, label %1276, label %1279

1276:                                             ; preds = %1272
  %1277 = getelementptr i8, ptr %1268, i32 2
  %1278 = getelementptr i8, ptr %1269, i32 2
  br label %1279

1279:                                             ; preds = %1276, %1272, %1267
  %1280 = phi ptr [ %1277, %1276 ], [ %1268, %1272 ], [ %1268, %1267 ]
  %1281 = phi ptr [ %1278, %1276 ], [ %1269, %1272 ], [ %1269, %1267 ]
  %1282 = icmp ult ptr %1280, %1238
  br i1 %1282, label %1283, label %1289

1283:                                             ; preds = %1279
  %1284 = load i8, ptr %1281, align 1
  %1285 = load i8, ptr %1280, align 1
  %1286 = icmp eq i8 %1284, %1285
  %1287 = zext i1 %1286 to i32
  %1288 = getelementptr i8, ptr %1280, i32 %1287
  br label %1289

1289:                                             ; preds = %1283, %1279
  %1290 = phi ptr [ %1280, %1279 ], [ %1288, %1283 ]
  %1291 = ptrtoint ptr %1290 to i32
  %1292 = ptrtoint ptr %1231 to i32
  %1293 = sub i32 %1291, %1292
  br label %1294

1294:                                             ; preds = %1289, %1260, %1246
  %1295 = phi i32 [ %1293, %1289 ], [ %1248, %1246 ], [ %1266, %1260 ]
  %1296 = getelementptr i8, ptr %1232, i32 %1295
  %1297 = icmp eq ptr %1296, %1230
  br i1 %1297, label %1298, label %1356

1298:                                             ; preds = %1294
  %1299 = getelementptr i8, ptr %1231, i32 %1295
  %1300 = icmp ugt ptr %78, %1299
  br i1 %1300, label %1301, label %1327

1301:                                             ; preds = %1298
  %1302 = load i32, ptr %32, align 1
  %1303 = load i32, ptr %1299, align 1
  %1304 = xor i32 %1303, %1302
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1309, label %1306

1306:                                             ; preds = %1301
  %1307 = tail call i32 @llvm.cttz.i32(i32 %1304, i1 true) #4, !range !8
  %1308 = lshr i32 %1307, 3
  br label %1353

1309:                                             ; preds = %1315, %1301
  %1310 = phi ptr [ %1313, %1315 ], [ %1299, %1301 ]
  %1311 = phi ptr [ %1312, %1315 ], [ %32, %1301 ]
  %1312 = getelementptr i8, ptr %1311, i32 4
  %1313 = getelementptr i8, ptr %1310, i32 4
  %1314 = icmp ult ptr %1313, %78
  br i1 %1314, label %1315, label %1327

1315:                                             ; preds = %1309
  %1316 = load i32, ptr %1312, align 1
  %1317 = load i32, ptr %1313, align 1
  %1318 = xor i32 %1317, %1316
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1309, label %1320

1320:                                             ; preds = %1315
  %1321 = tail call i32 @llvm.cttz.i32(i32 %1318, i1 true) #4, !range !8
  %1322 = lshr i32 %1321, 3
  %1323 = getelementptr i8, ptr %1313, i32 %1322
  %1324 = ptrtoint ptr %1323 to i32
  %1325 = ptrtoint ptr %1299 to i32
  %1326 = sub i32 %1324, %1325
  br label %1353

1327:                                             ; preds = %1309, %1298
  %1328 = phi ptr [ %1299, %1298 ], [ %1313, %1309 ]
  %1329 = phi ptr [ %32, %1298 ], [ %1312, %1309 ]
  %1330 = icmp ult ptr %1328, %79
  br i1 %1330, label %1331, label %1338

1331:                                             ; preds = %1327
  %1332 = load i16, ptr %1329, align 1
  %1333 = load i16, ptr %1328, align 1
  %1334 = icmp eq i16 %1332, %1333
  br i1 %1334, label %1335, label %1338

1335:                                             ; preds = %1331
  %1336 = getelementptr i8, ptr %1328, i32 2
  %1337 = getelementptr i8, ptr %1329, i32 2
  br label %1338

1338:                                             ; preds = %1335, %1331, %1327
  %1339 = phi ptr [ %1336, %1335 ], [ %1328, %1331 ], [ %1328, %1327 ]
  %1340 = phi ptr [ %1337, %1335 ], [ %1329, %1331 ], [ %1329, %1327 ]
  %1341 = icmp ult ptr %1339, %33
  br i1 %1341, label %1342, label %1348

1342:                                             ; preds = %1338
  %1343 = load i8, ptr %1340, align 1
  %1344 = load i8, ptr %1339, align 1
  %1345 = icmp eq i8 %1343, %1344
  %1346 = zext i1 %1345 to i32
  %1347 = getelementptr i8, ptr %1339, i32 %1346
  br label %1348

1348:                                             ; preds = %1342, %1338
  %1349 = phi ptr [ %1339, %1338 ], [ %1347, %1342 ]
  %1350 = ptrtoint ptr %1349 to i32
  %1351 = ptrtoint ptr %1299 to i32
  %1352 = sub i32 %1350, %1351
  br label %1353

1353:                                             ; preds = %1348, %1320, %1306
  %1354 = phi i32 [ %1352, %1348 ], [ %1308, %1306 ], [ %1326, %1320 ]
  %1355 = add i32 %1354, %1295
  br label %1356

1356:                                             ; preds = %1353, %1294
  %1357 = phi i32 [ %1355, %1353 ], [ %1295, %1294 ]
  %1358 = add i32 %1357, 4
  %1359 = add i32 %1357, 1
  %1360 = icmp ugt ptr %1213, %80
  br i1 %1360, label %1363, label %1361

1361:                                             ; preds = %1356
  %1362 = load ptr, ptr %81, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1362, ptr noundef align 1 dereferenceable(16) %1213, i32 16, i1 false) #4
  br label %1363

1363:                                             ; preds = %1361, %1356
  %1364 = load ptr, ptr %84, align 4
  %1365 = getelementptr inbounds %struct.seqDef_s, ptr %1364, i32 0, i32 1
  store i16 0, ptr %1365, align 4
  %1366 = load ptr, ptr %84, align 4
  store i32 1, ptr %1366, align 4
  %1367 = icmp ugt i32 %1359, 65535
  br i1 %1367, label %1370, label %1368

1368:                                             ; preds = %1363
  %1369 = load ptr, ptr %84, align 4
  br label %1377

1370:                                             ; preds = %1363
  store i32 2, ptr %83, align 4
  %1371 = load ptr, ptr %84, align 4
  %1372 = load ptr, ptr %1, align 4
  %1373 = ptrtoint ptr %1371 to i32
  %1374 = ptrtoint ptr %1372 to i32
  %1375 = sub i32 %1373, %1374
  %1376 = ashr exact i32 %1375, 3
  store i32 %1376, ptr %85, align 4
  br label %1377

1377:                                             ; preds = %1370, %1368
  %1378 = phi ptr [ %1369, %1368 ], [ %1371, %1370 ]
  %1379 = trunc i32 %1359 to i16
  %1380 = getelementptr inbounds %struct.seqDef_s, ptr %1378, i32 0, i32 2
  store i16 %1379, ptr %1380, align 2
  %1381 = load ptr, ptr %84, align 4
  %1382 = getelementptr %struct.seqDef_s, ptr %1381, i32 1
  store ptr %1382, ptr %84, align 4
  %1383 = load i32, ptr %1213, align 1
  %1384 = mul i32 %1383, -1640531535
  %1385 = lshr i32 %1384, %76
  %1386 = getelementptr i32, ptr %13, i32 %1385
  store i32 %1217, ptr %1386, align 4
  %1387 = load i64, ptr %1213, align 1
  %1388 = mul i64 %1387, -3523014627327384477
  %1389 = lshr i64 %1388, %73
  %1390 = trunc i64 %1389 to i32
  %1391 = getelementptr i32, ptr %11, i32 %1390
  store i32 %1217, ptr %1391, align 4
  %1392 = getelementptr i8, ptr %1213, i32 %1358
  %1393 = icmp ugt ptr %1392, %34
  br i1 %1393, label %1394, label %1212

1394:                                             ; preds = %1377, %1225, %1212, %1172, %600
  %1395 = phi i32 [ %91, %600 ], [ %1175, %1172 ], [ %1215, %1212 ], [ %1215, %1225 ], [ %1214, %1377 ]
  %1396 = phi i32 [ %90, %600 ], [ %1176, %1172 ], [ %1214, %1212 ], [ %1214, %1225 ], [ %1215, %1377 ]
  %1397 = phi ptr [ %89, %600 ], [ %1183, %1172 ], [ %1213, %1212 ], [ %1213, %1225 ], [ %1392, %1377 ]
  %1398 = phi ptr [ %605, %600 ], [ %1183, %1172 ], [ %1213, %1212 ], [ %1213, %1225 ], [ %1392, %1377 ]
  %1399 = icmp ult ptr %1398, %34
  br i1 %1399, label %87, label %1400

1400:                                             ; preds = %1394
  %1401 = ptrtoint ptr %1397 to i32
  br label %1402

1402:                                             ; preds = %1400, %8
  %1403 = phi i32 [ %1401, %1400 ], [ %16, %8 ]
  %1404 = phi i32 [ %1395, %1400 ], [ %37, %8 ]
  %1405 = phi i32 [ %1396, %1400 ], [ %35, %8 ]
  store i32 %1405, ptr %2, align 4
  store i32 %1404, ptr %36, align 4
  br label %5618

1406:                                             ; preds = %5
  %1407 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %1408 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %1409 = load ptr, ptr %1408, align 4
  %1410 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %1411 = load ptr, ptr %1410, align 4
  %1412 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %1413 = load ptr, ptr %1412, align 4
  %1414 = ptrtoint ptr %3 to i32
  %1415 = ptrtoint ptr %1413 to i32
  %1416 = sub i32 %1414, %1415
  %1417 = add i32 %1416, %4
  %1418 = load i32, ptr %1407, align 4
  %1419 = shl nuw i32 1, %1418
  %1420 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %1421 = load i32, ptr %1420, align 4
  %1422 = sub i32 %1417, %1421
  %1423 = icmp ugt i32 %1422, %1419
  %1424 = sub i32 %1417, %1419
  %1425 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %1426 = load i32, ptr %1425, align 4
  %1427 = icmp eq i32 %1426, 0
  %1428 = select i1 %1427, i1 %1423, i1 false
  %1429 = select i1 %1428, i32 %1424, i32 %1421
  %1430 = getelementptr i8, ptr %1413, i32 %1429
  %1431 = getelementptr i8, ptr %3, i32 %4
  %1432 = getelementptr i8, ptr %1431, i32 -8
  %1433 = load i32, ptr %2, align 4
  %1434 = getelementptr i32, ptr %2, i32 1
  %1435 = load i32, ptr %1434, align 4
  %1436 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 9
  %1437 = load ptr, ptr %1436, align 4
  %1438 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1437, i32 0, i32 4
  %1439 = load ptr, ptr %1438, align 4
  %1440 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1437, i32 0, i32 6
  %1441 = load ptr, ptr %1440, align 4
  %1442 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1437, i32 0, i32 3
  %1443 = load i32, ptr %1442, align 4
  %1444 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1437, i32 0, i32 1
  %1445 = load ptr, ptr %1444, align 4
  %1446 = getelementptr i8, ptr %1445, i32 %1443
  %1447 = load ptr, ptr %1437, align 4
  %1448 = ptrtoint ptr %1447 to i32
  %1449 = ptrtoint ptr %1445 to i32
  %1450 = add i32 %1429, %1449
  %1451 = sub i32 %1450, %1448
  %1452 = ptrtoint ptr %1430 to i32
  %1453 = sub i32 %1414, %1452
  %1454 = ptrtoint ptr %1446 to i32
  %1455 = sub i32 %1454, %1448
  %1456 = icmp eq i32 %1453, %1455
  %1457 = zext i1 %1456 to i32
  %1458 = getelementptr i8, ptr %3, i32 %1457
  %1459 = icmp ult ptr %1458, %1432
  br i1 %1459, label %1460, label %2806

1460:                                             ; preds = %1406
  %1461 = sub i32 0, %1451
  %1462 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1437, i32 0, i32 10, i32 1
  %1463 = load i32, ptr %1462, align 4
  %1464 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1437, i32 0, i32 10, i32 2
  %1465 = load i32, ptr %1464, align 4
  %1466 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %1467 = load i32, ptr %1466, align 4
  %1468 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %1469 = load i32, ptr %1468, align 4
  %1470 = sub i32 64, %1469
  %1471 = zext i32 %1470 to i64
  %1472 = sub i32 64, %1467
  %1473 = zext i32 %1472 to i64
  %1474 = sub i32 64, %1465
  %1475 = zext i32 %1474 to i64
  %1476 = sub i32 64, %1463
  %1477 = zext i32 %1476 to i64
  %1478 = getelementptr i8, ptr %1431, i32 -3
  %1479 = getelementptr i8, ptr %1431, i32 -1
  %1480 = getelementptr i8, ptr %1431, i32 -32
  %1481 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %1482 = ptrtoint ptr %1480 to i32
  %1483 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %1484 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %1485 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %1486 = getelementptr i8, ptr %1445, i32 %1461
  br label %1487

1487:                                             ; preds = %2798, %1460
  %1488 = phi ptr [ %1458, %1460 ], [ %2802, %2798 ]
  %1489 = phi ptr [ %3, %1460 ], [ %2801, %2798 ]
  %1490 = phi i32 [ %1433, %1460 ], [ %2800, %2798 ]
  %1491 = phi i32 [ %1435, %1460 ], [ %2799, %2798 ]
  %1492 = load i64, ptr %1488, align 1
  %1493 = mul i64 %1492, -3523014627327384477
  %1494 = lshr i64 %1493, %1471
  %1495 = trunc i64 %1494 to i32
  %1496 = mul i64 %1492, -3523014627271114752
  %1497 = lshr i64 %1496, %1473
  %1498 = trunc i64 %1497 to i32
  %1499 = lshr i64 %1493, %1475
  %1500 = trunc i64 %1499 to i32
  %1501 = lshr i64 %1496, %1477
  %1502 = trunc i64 %1501 to i32
  %1503 = ptrtoint ptr %1488 to i32
  %1504 = sub i32 %1503, %1415
  %1505 = getelementptr i32, ptr %1409, i32 %1495
  %1506 = load i32, ptr %1505, align 4
  %1507 = getelementptr i32, ptr %1411, i32 %1498
  %1508 = load i32, ptr %1507, align 4
  %1509 = getelementptr i8, ptr %1413, i32 %1506
  %1510 = getelementptr i8, ptr %1413, i32 %1508
  %1511 = add i32 %1504, 1
  %1512 = sub i32 %1511, %1490
  %1513 = icmp ult i32 %1512, %1429
  %1514 = sub i32 %1512, %1451
  %1515 = getelementptr i8, ptr %1445, i32 %1514
  %1516 = getelementptr i8, ptr %1413, i32 %1512
  %1517 = select i1 %1513, ptr %1515, ptr %1516
  store i32 %1504, ptr %1507, align 4
  store i32 %1504, ptr %1505, align 4
  %1518 = xor i32 %1512, -1
  %1519 = add i32 %1429, %1518
  %1520 = icmp ugt i32 %1519, 2
  br i1 %1520, label %1521, label %1742

1521:                                             ; preds = %1487
  %1522 = load i32, ptr %1517, align 1
  %1523 = getelementptr i8, ptr %1488, i32 1
  %1524 = load i32, ptr %1523, align 1
  %1525 = icmp eq i32 %1522, %1524
  br i1 %1525, label %1526, label %1742

1526:                                             ; preds = %1521
  %1527 = select i1 %1513, ptr %1447, ptr %1431
  %1528 = getelementptr i8, ptr %1488, i32 5
  %1529 = getelementptr i8, ptr %1517, i32 4
  %1530 = ptrtoint ptr %1527 to i32
  %1531 = ptrtoint ptr %1529 to i32
  %1532 = sub i32 %1530, %1531
  %1533 = getelementptr i8, ptr %1528, i32 %1532
  %1534 = icmp ult ptr %1533, %1431
  %1535 = select i1 %1534, ptr %1533, ptr %1431
  %1536 = getelementptr i8, ptr %1535, i32 -3
  %1537 = icmp ugt ptr %1536, %1528
  br i1 %1537, label %1538, label %1564

1538:                                             ; preds = %1526
  %1539 = load i32, ptr %1529, align 1
  %1540 = load i32, ptr %1528, align 1
  %1541 = xor i32 %1540, %1539
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1546, label %1543

1543:                                             ; preds = %1538
  %1544 = tail call i32 @llvm.cttz.i32(i32 %1541, i1 true) #4, !range !8
  %1545 = lshr i32 %1544, 3
  br label %1591

1546:                                             ; preds = %1552, %1538
  %1547 = phi ptr [ %1550, %1552 ], [ %1528, %1538 ]
  %1548 = phi ptr [ %1549, %1552 ], [ %1529, %1538 ]
  %1549 = getelementptr i8, ptr %1548, i32 4
  %1550 = getelementptr i8, ptr %1547, i32 4
  %1551 = icmp ult ptr %1550, %1536
  br i1 %1551, label %1552, label %1564

1552:                                             ; preds = %1546
  %1553 = load i32, ptr %1549, align 1
  %1554 = load i32, ptr %1550, align 1
  %1555 = xor i32 %1554, %1553
  %1556 = icmp eq i32 %1555, 0
  br i1 %1556, label %1546, label %1557

1557:                                             ; preds = %1552
  %1558 = tail call i32 @llvm.cttz.i32(i32 %1555, i1 true) #4, !range !8
  %1559 = lshr i32 %1558, 3
  %1560 = getelementptr i8, ptr %1550, i32 %1559
  %1561 = ptrtoint ptr %1560 to i32
  %1562 = ptrtoint ptr %1528 to i32
  %1563 = sub i32 %1561, %1562
  br label %1591

1564:                                             ; preds = %1546, %1526
  %1565 = phi ptr [ %1528, %1526 ], [ %1550, %1546 ]
  %1566 = phi ptr [ %1529, %1526 ], [ %1549, %1546 ]
  %1567 = getelementptr i8, ptr %1535, i32 -1
  %1568 = icmp ult ptr %1565, %1567
  br i1 %1568, label %1569, label %1576

1569:                                             ; preds = %1564
  %1570 = load i16, ptr %1566, align 1
  %1571 = load i16, ptr %1565, align 1
  %1572 = icmp eq i16 %1570, %1571
  br i1 %1572, label %1573, label %1576

1573:                                             ; preds = %1569
  %1574 = getelementptr i8, ptr %1565, i32 2
  %1575 = getelementptr i8, ptr %1566, i32 2
  br label %1576

1576:                                             ; preds = %1573, %1569, %1564
  %1577 = phi ptr [ %1574, %1573 ], [ %1565, %1569 ], [ %1565, %1564 ]
  %1578 = phi ptr [ %1575, %1573 ], [ %1566, %1569 ], [ %1566, %1564 ]
  %1579 = icmp ult ptr %1577, %1535
  br i1 %1579, label %1580, label %1586

1580:                                             ; preds = %1576
  %1581 = load i8, ptr %1578, align 1
  %1582 = load i8, ptr %1577, align 1
  %1583 = icmp eq i8 %1581, %1582
  %1584 = zext i1 %1583 to i32
  %1585 = getelementptr i8, ptr %1577, i32 %1584
  br label %1586

1586:                                             ; preds = %1580, %1576
  %1587 = phi ptr [ %1577, %1576 ], [ %1585, %1580 ]
  %1588 = ptrtoint ptr %1587 to i32
  %1589 = ptrtoint ptr %1528 to i32
  %1590 = sub i32 %1588, %1589
  br label %1591

1591:                                             ; preds = %1586, %1557, %1543
  %1592 = phi i32 [ %1590, %1586 ], [ %1545, %1543 ], [ %1563, %1557 ]
  %1593 = getelementptr i8, ptr %1529, i32 %1592
  %1594 = icmp eq ptr %1593, %1527
  br i1 %1594, label %1595, label %1653

1595:                                             ; preds = %1591
  %1596 = getelementptr i8, ptr %1528, i32 %1592
  %1597 = icmp ugt ptr %1478, %1596
  br i1 %1597, label %1598, label %1624

1598:                                             ; preds = %1595
  %1599 = load i32, ptr %1430, align 1
  %1600 = load i32, ptr %1596, align 1
  %1601 = xor i32 %1600, %1599
  %1602 = icmp eq i32 %1601, 0
  br i1 %1602, label %1606, label %1603

1603:                                             ; preds = %1598
  %1604 = tail call i32 @llvm.cttz.i32(i32 %1601, i1 true) #4, !range !8
  %1605 = lshr i32 %1604, 3
  br label %1650

1606:                                             ; preds = %1612, %1598
  %1607 = phi ptr [ %1610, %1612 ], [ %1596, %1598 ]
  %1608 = phi ptr [ %1609, %1612 ], [ %1430, %1598 ]
  %1609 = getelementptr i8, ptr %1608, i32 4
  %1610 = getelementptr i8, ptr %1607, i32 4
  %1611 = icmp ult ptr %1610, %1478
  br i1 %1611, label %1612, label %1624

1612:                                             ; preds = %1606
  %1613 = load i32, ptr %1609, align 1
  %1614 = load i32, ptr %1610, align 1
  %1615 = xor i32 %1614, %1613
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1606, label %1617

1617:                                             ; preds = %1612
  %1618 = tail call i32 @llvm.cttz.i32(i32 %1615, i1 true) #4, !range !8
  %1619 = lshr i32 %1618, 3
  %1620 = getelementptr i8, ptr %1610, i32 %1619
  %1621 = ptrtoint ptr %1620 to i32
  %1622 = ptrtoint ptr %1596 to i32
  %1623 = sub i32 %1621, %1622
  br label %1650

1624:                                             ; preds = %1606, %1595
  %1625 = phi ptr [ %1596, %1595 ], [ %1610, %1606 ]
  %1626 = phi ptr [ %1430, %1595 ], [ %1609, %1606 ]
  %1627 = icmp ult ptr %1625, %1479
  br i1 %1627, label %1628, label %1635

1628:                                             ; preds = %1624
  %1629 = load i16, ptr %1626, align 1
  %1630 = load i16, ptr %1625, align 1
  %1631 = icmp eq i16 %1629, %1630
  br i1 %1631, label %1632, label %1635

1632:                                             ; preds = %1628
  %1633 = getelementptr i8, ptr %1625, i32 2
  %1634 = getelementptr i8, ptr %1626, i32 2
  br label %1635

1635:                                             ; preds = %1632, %1628, %1624
  %1636 = phi ptr [ %1633, %1632 ], [ %1625, %1628 ], [ %1625, %1624 ]
  %1637 = phi ptr [ %1634, %1632 ], [ %1626, %1628 ], [ %1626, %1624 ]
  %1638 = icmp ult ptr %1636, %1431
  br i1 %1638, label %1639, label %1645

1639:                                             ; preds = %1635
  %1640 = load i8, ptr %1637, align 1
  %1641 = load i8, ptr %1636, align 1
  %1642 = icmp eq i8 %1640, %1641
  %1643 = zext i1 %1642 to i32
  %1644 = getelementptr i8, ptr %1636, i32 %1643
  br label %1645

1645:                                             ; preds = %1639, %1635
  %1646 = phi ptr [ %1636, %1635 ], [ %1644, %1639 ]
  %1647 = ptrtoint ptr %1646 to i32
  %1648 = ptrtoint ptr %1596 to i32
  %1649 = sub i32 %1647, %1648
  br label %1650

1650:                                             ; preds = %1645, %1617, %1603
  %1651 = phi i32 [ %1649, %1645 ], [ %1605, %1603 ], [ %1623, %1617 ]
  %1652 = add i32 %1651, %1592
  br label %1653

1653:                                             ; preds = %1650, %1591
  %1654 = phi i32 [ %1652, %1650 ], [ %1592, %1591 ]
  %1655 = add i32 %1654, 4
  %1656 = ptrtoint ptr %1523 to i32
  %1657 = ptrtoint ptr %1489 to i32
  %1658 = sub i32 %1656, %1657
  %1659 = add i32 %1654, 1
  %1660 = getelementptr i8, ptr %1489, i32 %1658
  %1661 = icmp ugt ptr %1660, %1480
  %1662 = load ptr, ptr %1481, align 4
  br i1 %1661, label %1684, label %1663

1663:                                             ; preds = %1653
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1662, ptr noundef align 1 dereferenceable(16) %1489, i32 16, i1 false) #4
  %1664 = icmp ugt i32 %1658, 16
  %1665 = load ptr, ptr %1481, align 4
  br i1 %1664, label %1668, label %1666

1666:                                             ; preds = %1663
  %1667 = getelementptr i8, ptr %1665, i32 %1658
  store ptr %1667, ptr %1481, align 4
  br label %1727

1668:                                             ; preds = %1663
  %1669 = getelementptr i8, ptr %1665, i32 16
  %1670 = getelementptr i8, ptr %1489, i32 16
  %1671 = add i32 %1658, -16
  %1672 = getelementptr i8, ptr %1665, i32 %1658
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1669, ptr noundef align 1 dereferenceable(16) %1670, i32 16, i1 false) #4
  %1673 = icmp slt i32 %1671, 17
  br i1 %1673, label %1716, label %1674

1674:                                             ; preds = %1668
  %1675 = getelementptr i8, ptr %1665, i32 32
  br label %1676

1676:                                             ; preds = %1676, %1674
  %1677 = phi ptr [ %1670, %1674 ], [ %1681, %1676 ]
  %1678 = phi ptr [ %1675, %1674 ], [ %1682, %1676 ]
  %1679 = getelementptr i8, ptr %1677, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1678, ptr noundef align 1 dereferenceable(16) %1679, i32 16, i1 false) #4
  %1680 = getelementptr i8, ptr %1678, i32 16
  %1681 = getelementptr i8, ptr %1677, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1680, ptr noundef align 1 dereferenceable(16) %1681, i32 16, i1 false) #4
  %1682 = getelementptr i8, ptr %1678, i32 32
  %1683 = icmp ult ptr %1682, %1672
  br i1 %1683, label %1676, label %1716

1684:                                             ; preds = %1653
  %1685 = ptrtoint ptr %1660 to i32
  %1686 = icmp ult ptr %1480, %1489
  br i1 %1686, label %1701, label %1687

1687:                                             ; preds = %1684
  %1688 = sub i32 %1482, %1657
  %1689 = getelementptr i8, ptr %1662, i32 %1688
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1662, ptr noundef align 1 dereferenceable(16) %1489, i32 16, i1 false) #4
  %1690 = icmp slt i32 %1688, 17
  br i1 %1690, label %1701, label %1691

1691:                                             ; preds = %1687
  %1692 = getelementptr i8, ptr %1662, i32 16
  br label %1693

1693:                                             ; preds = %1693, %1691
  %1694 = phi ptr [ %1489, %1691 ], [ %1698, %1693 ]
  %1695 = phi ptr [ %1692, %1691 ], [ %1699, %1693 ]
  %1696 = getelementptr i8, ptr %1694, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1695, ptr noundef align 1 dereferenceable(16) %1696, i32 16, i1 false) #4
  %1697 = getelementptr i8, ptr %1695, i32 16
  %1698 = getelementptr i8, ptr %1694, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1697, ptr noundef align 1 dereferenceable(16) %1698, i32 16, i1 false) #4
  %1699 = getelementptr i8, ptr %1695, i32 32
  %1700 = icmp ult ptr %1699, %1689
  br i1 %1700, label %1693, label %1701

1701:                                             ; preds = %1693, %1687, %1684
  %1702 = phi ptr [ %1480, %1687 ], [ %1489, %1684 ], [ %1480, %1693 ]
  %1703 = phi ptr [ %1689, %1687 ], [ %1662, %1684 ], [ %1689, %1693 ]
  %1704 = icmp ult ptr %1702, %1660
  br i1 %1704, label %1705, label %1716

1705:                                             ; preds = %1701
  %1706 = ptrtoint ptr %1702 to i32
  %1707 = sub i32 %1685, %1706
  %1708 = getelementptr i8, ptr %1702, i32 %1707
  br label %1709

1709:                                             ; preds = %1709, %1705
  %1710 = phi ptr [ %1714, %1709 ], [ %1703, %1705 ]
  %1711 = phi ptr [ %1712, %1709 ], [ %1702, %1705 ]
  %1712 = getelementptr i8, ptr %1711, i32 1
  %1713 = load i8, ptr %1711, align 1
  %1714 = getelementptr i8, ptr %1710, i32 1
  store i8 %1713, ptr %1710, align 1
  %1715 = icmp eq ptr %1712, %1708
  br i1 %1715, label %1716, label %1709

1716:                                             ; preds = %1709, %1701, %1676, %1668
  %1717 = load ptr, ptr %1481, align 4
  %1718 = getelementptr i8, ptr %1717, i32 %1658
  store ptr %1718, ptr %1481, align 4
  %1719 = icmp ugt i32 %1658, 65535
  br i1 %1719, label %1720, label %1727

1720:                                             ; preds = %1716
  store i32 1, ptr %1483, align 4
  %1721 = load ptr, ptr %1484, align 4
  %1722 = load ptr, ptr %1, align 4
  %1723 = ptrtoint ptr %1721 to i32
  %1724 = ptrtoint ptr %1722 to i32
  %1725 = sub i32 %1723, %1724
  %1726 = ashr exact i32 %1725, 3
  store i32 %1726, ptr %1485, align 4
  br label %1727

1727:                                             ; preds = %1720, %1716, %1666
  %1728 = trunc i32 %1658 to i16
  %1729 = load ptr, ptr %1484, align 4
  %1730 = getelementptr inbounds %struct.seqDef_s, ptr %1729, i32 0, i32 1
  store i16 %1728, ptr %1730, align 4
  %1731 = load ptr, ptr %1484, align 4
  store i32 1, ptr %1731, align 4
  %1732 = icmp ugt i32 %1659, 65535
  br i1 %1732, label %1735, label %1733

1733:                                             ; preds = %1727
  %1734 = load ptr, ptr %1484, align 4
  br label %2573

1735:                                             ; preds = %1727
  store i32 2, ptr %1483, align 4
  %1736 = load ptr, ptr %1484, align 4
  %1737 = load ptr, ptr %1, align 4
  %1738 = ptrtoint ptr %1736 to i32
  %1739 = ptrtoint ptr %1737 to i32
  %1740 = sub i32 %1738, %1739
  %1741 = ashr exact i32 %1740, 3
  store i32 %1741, ptr %1485, align 4
  br label %2573

1742:                                             ; preds = %1521, %1487
  %1743 = icmp ugt i32 %1506, %1429
  br i1 %1743, label %1744, label %1826

1744:                                             ; preds = %1742
  %1745 = load i64, ptr %1509, align 1
  %1746 = load i64, ptr %1488, align 1
  %1747 = icmp eq i64 %1745, %1746
  br i1 %1747, label %1748, label %1980

1748:                                             ; preds = %1744
  %1749 = getelementptr i8, ptr %1488, i32 8
  %1750 = getelementptr i8, ptr %1509, i32 8
  %1751 = icmp ugt ptr %1478, %1749
  br i1 %1751, label %1752, label %1778

1752:                                             ; preds = %1748
  %1753 = load i32, ptr %1750, align 1
  %1754 = load i32, ptr %1749, align 1
  %1755 = xor i32 %1754, %1753
  %1756 = icmp eq i32 %1755, 0
  br i1 %1756, label %1760, label %1757

1757:                                             ; preds = %1752
  %1758 = tail call i32 @llvm.cttz.i32(i32 %1755, i1 true) #4, !range !8
  %1759 = lshr i32 %1758, 3
  br label %1804

1760:                                             ; preds = %1766, %1752
  %1761 = phi ptr [ %1764, %1766 ], [ %1749, %1752 ]
  %1762 = phi ptr [ %1763, %1766 ], [ %1750, %1752 ]
  %1763 = getelementptr i8, ptr %1762, i32 4
  %1764 = getelementptr i8, ptr %1761, i32 4
  %1765 = icmp ult ptr %1764, %1478
  br i1 %1765, label %1766, label %1778

1766:                                             ; preds = %1760
  %1767 = load i32, ptr %1763, align 1
  %1768 = load i32, ptr %1764, align 1
  %1769 = xor i32 %1768, %1767
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %1760, label %1771

1771:                                             ; preds = %1766
  %1772 = tail call i32 @llvm.cttz.i32(i32 %1769, i1 true) #4, !range !8
  %1773 = lshr i32 %1772, 3
  %1774 = getelementptr i8, ptr %1764, i32 %1773
  %1775 = ptrtoint ptr %1774 to i32
  %1776 = ptrtoint ptr %1749 to i32
  %1777 = sub i32 %1775, %1776
  br label %1804

1778:                                             ; preds = %1760, %1748
  %1779 = phi ptr [ %1749, %1748 ], [ %1764, %1760 ]
  %1780 = phi ptr [ %1750, %1748 ], [ %1763, %1760 ]
  %1781 = icmp ult ptr %1779, %1479
  br i1 %1781, label %1782, label %1789

1782:                                             ; preds = %1778
  %1783 = load i16, ptr %1780, align 1
  %1784 = load i16, ptr %1779, align 1
  %1785 = icmp eq i16 %1783, %1784
  br i1 %1785, label %1786, label %1789

1786:                                             ; preds = %1782
  %1787 = getelementptr i8, ptr %1779, i32 2
  %1788 = getelementptr i8, ptr %1780, i32 2
  br label %1789

1789:                                             ; preds = %1786, %1782, %1778
  %1790 = phi ptr [ %1787, %1786 ], [ %1779, %1782 ], [ %1779, %1778 ]
  %1791 = phi ptr [ %1788, %1786 ], [ %1780, %1782 ], [ %1780, %1778 ]
  %1792 = icmp ult ptr %1790, %1431
  br i1 %1792, label %1793, label %1799

1793:                                             ; preds = %1789
  %1794 = load i8, ptr %1791, align 1
  %1795 = load i8, ptr %1790, align 1
  %1796 = icmp eq i8 %1794, %1795
  %1797 = zext i1 %1796 to i32
  %1798 = getelementptr i8, ptr %1790, i32 %1797
  br label %1799

1799:                                             ; preds = %1793, %1789
  %1800 = phi ptr [ %1790, %1789 ], [ %1798, %1793 ]
  %1801 = ptrtoint ptr %1800 to i32
  %1802 = ptrtoint ptr %1749 to i32
  %1803 = sub i32 %1801, %1802
  br label %1804

1804:                                             ; preds = %1799, %1771, %1757
  %1805 = phi i32 [ %1803, %1799 ], [ %1759, %1757 ], [ %1777, %1771 ]
  %1806 = add i32 %1805, 8
  %1807 = ptrtoint ptr %1509 to i32
  %1808 = sub i32 %1503, %1807
  %1809 = icmp ugt ptr %1488, %1489
  %1810 = icmp ugt ptr %1509, %1430
  %1811 = and i1 %1809, %1810
  br i1 %1811, label %1812, label %2482

1812:                                             ; preds = %1821, %1804
  %1813 = phi ptr [ %1816, %1821 ], [ %1488, %1804 ]
  %1814 = phi ptr [ %1818, %1821 ], [ %1509, %1804 ]
  %1815 = phi i32 [ %1822, %1821 ], [ %1806, %1804 ]
  %1816 = getelementptr i8, ptr %1813, i32 -1
  %1817 = load i8, ptr %1816, align 1
  %1818 = getelementptr i8, ptr %1814, i32 -1
  %1819 = load i8, ptr %1818, align 1
  %1820 = icmp eq i8 %1817, %1819
  br i1 %1820, label %1821, label %2482

1821:                                             ; preds = %1812
  %1822 = add i32 %1815, 1
  %1823 = icmp ugt ptr %1816, %1489
  %1824 = icmp ugt ptr %1818, %1430
  %1825 = and i1 %1823, %1824
  br i1 %1825, label %1812, label %2482

1826:                                             ; preds = %1742
  %1827 = getelementptr i32, ptr %1439, i32 %1500
  %1828 = load i32, ptr %1827, align 4
  %1829 = getelementptr i8, ptr %1445, i32 %1828
  %1830 = icmp ugt ptr %1829, %1446
  br i1 %1830, label %1831, label %1983

1831:                                             ; preds = %1826
  %1832 = load i64, ptr %1829, align 1
  %1833 = load i64, ptr %1488, align 1
  %1834 = icmp eq i64 %1832, %1833
  br i1 %1834, label %1835, label %1983

1835:                                             ; preds = %1831
  %1836 = getelementptr i8, ptr %1488, i32 8
  %1837 = getelementptr i8, ptr %1829, i32 8
  %1838 = ptrtoint ptr %1837 to i32
  %1839 = sub i32 %1448, %1838
  %1840 = getelementptr i8, ptr %1836, i32 %1839
  %1841 = icmp ult ptr %1840, %1431
  %1842 = select i1 %1841, ptr %1840, ptr %1431
  %1843 = getelementptr i8, ptr %1842, i32 -3
  %1844 = icmp ugt ptr %1843, %1836
  br i1 %1844, label %1845, label %1871

1845:                                             ; preds = %1835
  %1846 = load i32, ptr %1837, align 1
  %1847 = load i32, ptr %1836, align 1
  %1848 = xor i32 %1847, %1846
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %1853, label %1850

1850:                                             ; preds = %1845
  %1851 = tail call i32 @llvm.cttz.i32(i32 %1848, i1 true) #4, !range !8
  %1852 = lshr i32 %1851, 3
  br label %1898

1853:                                             ; preds = %1859, %1845
  %1854 = phi ptr [ %1857, %1859 ], [ %1836, %1845 ]
  %1855 = phi ptr [ %1856, %1859 ], [ %1837, %1845 ]
  %1856 = getelementptr i8, ptr %1855, i32 4
  %1857 = getelementptr i8, ptr %1854, i32 4
  %1858 = icmp ult ptr %1857, %1843
  br i1 %1858, label %1859, label %1871

1859:                                             ; preds = %1853
  %1860 = load i32, ptr %1856, align 1
  %1861 = load i32, ptr %1857, align 1
  %1862 = xor i32 %1861, %1860
  %1863 = icmp eq i32 %1862, 0
  br i1 %1863, label %1853, label %1864

1864:                                             ; preds = %1859
  %1865 = tail call i32 @llvm.cttz.i32(i32 %1862, i1 true) #4, !range !8
  %1866 = lshr i32 %1865, 3
  %1867 = getelementptr i8, ptr %1857, i32 %1866
  %1868 = ptrtoint ptr %1867 to i32
  %1869 = ptrtoint ptr %1836 to i32
  %1870 = sub i32 %1868, %1869
  br label %1898

1871:                                             ; preds = %1853, %1835
  %1872 = phi ptr [ %1836, %1835 ], [ %1857, %1853 ]
  %1873 = phi ptr [ %1837, %1835 ], [ %1856, %1853 ]
  %1874 = getelementptr i8, ptr %1842, i32 -1
  %1875 = icmp ult ptr %1872, %1874
  br i1 %1875, label %1876, label %1883

1876:                                             ; preds = %1871
  %1877 = load i16, ptr %1873, align 1
  %1878 = load i16, ptr %1872, align 1
  %1879 = icmp eq i16 %1877, %1878
  br i1 %1879, label %1880, label %1883

1880:                                             ; preds = %1876
  %1881 = getelementptr i8, ptr %1872, i32 2
  %1882 = getelementptr i8, ptr %1873, i32 2
  br label %1883

1883:                                             ; preds = %1880, %1876, %1871
  %1884 = phi ptr [ %1881, %1880 ], [ %1872, %1876 ], [ %1872, %1871 ]
  %1885 = phi ptr [ %1882, %1880 ], [ %1873, %1876 ], [ %1873, %1871 ]
  %1886 = icmp ult ptr %1884, %1842
  br i1 %1886, label %1887, label %1893

1887:                                             ; preds = %1883
  %1888 = load i8, ptr %1885, align 1
  %1889 = load i8, ptr %1884, align 1
  %1890 = icmp eq i8 %1888, %1889
  %1891 = zext i1 %1890 to i32
  %1892 = getelementptr i8, ptr %1884, i32 %1891
  br label %1893

1893:                                             ; preds = %1887, %1883
  %1894 = phi ptr [ %1884, %1883 ], [ %1892, %1887 ]
  %1895 = ptrtoint ptr %1894 to i32
  %1896 = ptrtoint ptr %1836 to i32
  %1897 = sub i32 %1895, %1896
  br label %1898

1898:                                             ; preds = %1893, %1864, %1850
  %1899 = phi i32 [ %1897, %1893 ], [ %1852, %1850 ], [ %1870, %1864 ]
  %1900 = getelementptr i8, ptr %1837, i32 %1899
  %1901 = icmp eq ptr %1900, %1447
  br i1 %1901, label %1902, label %1960

1902:                                             ; preds = %1898
  %1903 = getelementptr i8, ptr %1836, i32 %1899
  %1904 = icmp ugt ptr %1478, %1903
  br i1 %1904, label %1905, label %1931

1905:                                             ; preds = %1902
  %1906 = load i32, ptr %1430, align 1
  %1907 = load i32, ptr %1903, align 1
  %1908 = xor i32 %1907, %1906
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %1913, label %1910

1910:                                             ; preds = %1905
  %1911 = tail call i32 @llvm.cttz.i32(i32 %1908, i1 true) #4, !range !8
  %1912 = lshr i32 %1911, 3
  br label %1957

1913:                                             ; preds = %1919, %1905
  %1914 = phi ptr [ %1917, %1919 ], [ %1903, %1905 ]
  %1915 = phi ptr [ %1916, %1919 ], [ %1430, %1905 ]
  %1916 = getelementptr i8, ptr %1915, i32 4
  %1917 = getelementptr i8, ptr %1914, i32 4
  %1918 = icmp ult ptr %1917, %1478
  br i1 %1918, label %1919, label %1931

1919:                                             ; preds = %1913
  %1920 = load i32, ptr %1916, align 1
  %1921 = load i32, ptr %1917, align 1
  %1922 = xor i32 %1921, %1920
  %1923 = icmp eq i32 %1922, 0
  br i1 %1923, label %1913, label %1924

1924:                                             ; preds = %1919
  %1925 = tail call i32 @llvm.cttz.i32(i32 %1922, i1 true) #4, !range !8
  %1926 = lshr i32 %1925, 3
  %1927 = getelementptr i8, ptr %1917, i32 %1926
  %1928 = ptrtoint ptr %1927 to i32
  %1929 = ptrtoint ptr %1903 to i32
  %1930 = sub i32 %1928, %1929
  br label %1957

1931:                                             ; preds = %1913, %1902
  %1932 = phi ptr [ %1903, %1902 ], [ %1917, %1913 ]
  %1933 = phi ptr [ %1430, %1902 ], [ %1916, %1913 ]
  %1934 = icmp ult ptr %1932, %1479
  br i1 %1934, label %1935, label %1942

1935:                                             ; preds = %1931
  %1936 = load i16, ptr %1933, align 1
  %1937 = load i16, ptr %1932, align 1
  %1938 = icmp eq i16 %1936, %1937
  br i1 %1938, label %1939, label %1942

1939:                                             ; preds = %1935
  %1940 = getelementptr i8, ptr %1932, i32 2
  %1941 = getelementptr i8, ptr %1933, i32 2
  br label %1942

1942:                                             ; preds = %1939, %1935, %1931
  %1943 = phi ptr [ %1940, %1939 ], [ %1932, %1935 ], [ %1932, %1931 ]
  %1944 = phi ptr [ %1941, %1939 ], [ %1933, %1935 ], [ %1933, %1931 ]
  %1945 = icmp ult ptr %1943, %1431
  br i1 %1945, label %1946, label %1952

1946:                                             ; preds = %1942
  %1947 = load i8, ptr %1944, align 1
  %1948 = load i8, ptr %1943, align 1
  %1949 = icmp eq i8 %1947, %1948
  %1950 = zext i1 %1949 to i32
  %1951 = getelementptr i8, ptr %1943, i32 %1950
  br label %1952

1952:                                             ; preds = %1946, %1942
  %1953 = phi ptr [ %1943, %1942 ], [ %1951, %1946 ]
  %1954 = ptrtoint ptr %1953 to i32
  %1955 = ptrtoint ptr %1903 to i32
  %1956 = sub i32 %1954, %1955
  br label %1957

1957:                                             ; preds = %1952, %1924, %1910
  %1958 = phi i32 [ %1956, %1952 ], [ %1912, %1910 ], [ %1930, %1924 ]
  %1959 = add i32 %1958, %1899
  br label %1960

1960:                                             ; preds = %1957, %1898
  %1961 = phi i32 [ %1959, %1957 ], [ %1899, %1898 ]
  %1962 = add i32 %1961, 8
  %1963 = add i32 %1451, %1828
  %1964 = sub i32 %1504, %1963
  %1965 = icmp ugt ptr %1488, %1489
  br i1 %1965, label %1966, label %2482

1966:                                             ; preds = %1975, %1960
  %1967 = phi ptr [ %1970, %1975 ], [ %1488, %1960 ]
  %1968 = phi ptr [ %1972, %1975 ], [ %1829, %1960 ]
  %1969 = phi i32 [ %1976, %1975 ], [ %1962, %1960 ]
  %1970 = getelementptr i8, ptr %1967, i32 -1
  %1971 = load i8, ptr %1970, align 1
  %1972 = getelementptr i8, ptr %1968, i32 -1
  %1973 = load i8, ptr %1972, align 1
  %1974 = icmp eq i8 %1971, %1973
  br i1 %1974, label %1975, label %2482

1975:                                             ; preds = %1966
  %1976 = add i32 %1969, 1
  %1977 = icmp ugt ptr %1970, %1489
  %1978 = icmp ugt ptr %1972, %1446
  %1979 = and i1 %1977, %1978
  br i1 %1979, label %1966, label %2482

1980:                                             ; preds = %1744
  %1981 = trunc i64 %1746 to i32
  %1982 = icmp ugt i32 %1508, %1429
  br i1 %1982, label %1987, label %1991

1983:                                             ; preds = %1831, %1826
  %1984 = icmp ugt i32 %1508, %1429
  br i1 %1984, label %1985, label %1991

1985:                                             ; preds = %1983
  %1986 = load i32, ptr %1488, align 1
  br label %1987

1987:                                             ; preds = %1985, %1980
  %1988 = phi i32 [ %1986, %1985 ], [ %1981, %1980 ]
  %1989 = load i32, ptr %1510, align 1
  %1990 = icmp eq i32 %1989, %1988
  br i1 %1990, label %2007, label %2001

1991:                                             ; preds = %1983, %1980
  %1992 = getelementptr i32, ptr %1441, i32 %1502
  %1993 = load i32, ptr %1992, align 4
  %1994 = getelementptr i8, ptr %1445, i32 %1993
  %1995 = icmp ugt ptr %1994, %1446
  br i1 %1995, label %1996, label %2001

1996:                                             ; preds = %1991
  %1997 = add i32 %1993, %1451
  %1998 = load i32, ptr %1994, align 1
  %1999 = load i32, ptr %1488, align 1
  %2000 = icmp eq i32 %1998, %1999
  br i1 %2000, label %2007, label %2001

2001:                                             ; preds = %1996, %1991, %1987
  %2002 = ptrtoint ptr %1489 to i32
  %2003 = sub i32 %1503, %2002
  %2004 = ashr i32 %2003, 8
  %2005 = add nsw i32 %2004, 1
  %2006 = getelementptr i8, ptr %1488, i32 %2005
  br label %2798

2007:                                             ; preds = %1996, %1987
  %2008 = phi i32 [ %1508, %1987 ], [ %1997, %1996 ]
  %2009 = phi ptr [ %1510, %1987 ], [ %1994, %1996 ]
  %2010 = getelementptr i8, ptr %1488, i32 1
  %2011 = load i64, ptr %2010, align 1
  %2012 = mul i64 %2011, -3523014627327384477
  %2013 = lshr i64 %2012, %1471
  %2014 = trunc i64 %2013 to i32
  %2015 = getelementptr i32, ptr %1409, i32 %2014
  %2016 = load i32, ptr %2015, align 4
  %2017 = getelementptr i8, ptr %1413, i32 %2016
  store i32 %1511, ptr %2015, align 4
  %2018 = icmp ugt i32 %2016, %1429
  br i1 %2018, label %2019, label %2102

2019:                                             ; preds = %2007
  %2020 = load i64, ptr %2017, align 1
  %2021 = load i64, ptr %2010, align 1
  %2022 = icmp eq i64 %2020, %2021
  br i1 %2022, label %2023, label %2258

2023:                                             ; preds = %2019
  %2024 = getelementptr i8, ptr %1488, i32 9
  %2025 = getelementptr i8, ptr %2017, i32 8
  %2026 = icmp ugt ptr %1478, %2024
  br i1 %2026, label %2027, label %2053

2027:                                             ; preds = %2023
  %2028 = load i32, ptr %2025, align 1
  %2029 = load i32, ptr %2024, align 1
  %2030 = xor i32 %2029, %2028
  %2031 = icmp eq i32 %2030, 0
  br i1 %2031, label %2035, label %2032

2032:                                             ; preds = %2027
  %2033 = tail call i32 @llvm.cttz.i32(i32 %2030, i1 true) #4, !range !8
  %2034 = lshr i32 %2033, 3
  br label %2079

2035:                                             ; preds = %2041, %2027
  %2036 = phi ptr [ %2039, %2041 ], [ %2024, %2027 ]
  %2037 = phi ptr [ %2038, %2041 ], [ %2025, %2027 ]
  %2038 = getelementptr i8, ptr %2037, i32 4
  %2039 = getelementptr i8, ptr %2036, i32 4
  %2040 = icmp ult ptr %2039, %1478
  br i1 %2040, label %2041, label %2053

2041:                                             ; preds = %2035
  %2042 = load i32, ptr %2038, align 1
  %2043 = load i32, ptr %2039, align 1
  %2044 = xor i32 %2043, %2042
  %2045 = icmp eq i32 %2044, 0
  br i1 %2045, label %2035, label %2046

2046:                                             ; preds = %2041
  %2047 = tail call i32 @llvm.cttz.i32(i32 %2044, i1 true) #4, !range !8
  %2048 = lshr i32 %2047, 3
  %2049 = getelementptr i8, ptr %2039, i32 %2048
  %2050 = ptrtoint ptr %2049 to i32
  %2051 = ptrtoint ptr %2024 to i32
  %2052 = sub i32 %2050, %2051
  br label %2079

2053:                                             ; preds = %2035, %2023
  %2054 = phi ptr [ %2024, %2023 ], [ %2039, %2035 ]
  %2055 = phi ptr [ %2025, %2023 ], [ %2038, %2035 ]
  %2056 = icmp ult ptr %2054, %1479
  br i1 %2056, label %2057, label %2064

2057:                                             ; preds = %2053
  %2058 = load i16, ptr %2055, align 1
  %2059 = load i16, ptr %2054, align 1
  %2060 = icmp eq i16 %2058, %2059
  br i1 %2060, label %2061, label %2064

2061:                                             ; preds = %2057
  %2062 = getelementptr i8, ptr %2054, i32 2
  %2063 = getelementptr i8, ptr %2055, i32 2
  br label %2064

2064:                                             ; preds = %2061, %2057, %2053
  %2065 = phi ptr [ %2062, %2061 ], [ %2054, %2057 ], [ %2054, %2053 ]
  %2066 = phi ptr [ %2063, %2061 ], [ %2055, %2057 ], [ %2055, %2053 ]
  %2067 = icmp ult ptr %2065, %1431
  br i1 %2067, label %2068, label %2074

2068:                                             ; preds = %2064
  %2069 = load i8, ptr %2066, align 1
  %2070 = load i8, ptr %2065, align 1
  %2071 = icmp eq i8 %2069, %2070
  %2072 = zext i1 %2071 to i32
  %2073 = getelementptr i8, ptr %2065, i32 %2072
  br label %2074

2074:                                             ; preds = %2068, %2064
  %2075 = phi ptr [ %2065, %2064 ], [ %2073, %2068 ]
  %2076 = ptrtoint ptr %2075 to i32
  %2077 = ptrtoint ptr %2024 to i32
  %2078 = sub i32 %2076, %2077
  br label %2079

2079:                                             ; preds = %2074, %2046, %2032
  %2080 = phi i32 [ %2078, %2074 ], [ %2034, %2032 ], [ %2052, %2046 ]
  %2081 = add i32 %2080, 8
  %2082 = ptrtoint ptr %2010 to i32
  %2083 = ptrtoint ptr %2017 to i32
  %2084 = sub i32 %2082, %2083
  %2085 = icmp ugt ptr %2010, %1489
  %2086 = icmp ugt ptr %2017, %1430
  %2087 = and i1 %2085, %2086
  br i1 %2087, label %2088, label %2482

2088:                                             ; preds = %2097, %2079
  %2089 = phi ptr [ %2094, %2097 ], [ %2017, %2079 ]
  %2090 = phi ptr [ %2092, %2097 ], [ %2010, %2079 ]
  %2091 = phi i32 [ %2098, %2097 ], [ %2081, %2079 ]
  %2092 = getelementptr i8, ptr %2090, i32 -1
  %2093 = load i8, ptr %2092, align 1
  %2094 = getelementptr i8, ptr %2089, i32 -1
  %2095 = load i8, ptr %2094, align 1
  %2096 = icmp eq i8 %2093, %2095
  br i1 %2096, label %2097, label %2482

2097:                                             ; preds = %2088
  %2098 = add i32 %2091, 1
  %2099 = icmp ugt ptr %2092, %1489
  %2100 = icmp ugt ptr %2094, %1430
  %2101 = and i1 %2100, %2099
  br i1 %2101, label %2088, label %2482

2102:                                             ; preds = %2007
  %2103 = lshr i64 %2012, %1475
  %2104 = trunc i64 %2103 to i32
  %2105 = getelementptr i32, ptr %1439, i32 %2104
  %2106 = load i32, ptr %2105, align 4
  %2107 = getelementptr i8, ptr %1445, i32 %2106
  %2108 = icmp ugt ptr %2107, %1446
  br i1 %2108, label %2109, label %2258

2109:                                             ; preds = %2102
  %2110 = load i64, ptr %2107, align 1
  %2111 = load i64, ptr %2010, align 1
  %2112 = icmp eq i64 %2110, %2111
  br i1 %2112, label %2113, label %2258

2113:                                             ; preds = %2109
  %2114 = getelementptr i8, ptr %1488, i32 9
  %2115 = getelementptr i8, ptr %2107, i32 8
  %2116 = ptrtoint ptr %2115 to i32
  %2117 = sub i32 %1448, %2116
  %2118 = getelementptr i8, ptr %2114, i32 %2117
  %2119 = icmp ult ptr %2118, %1431
  %2120 = select i1 %2119, ptr %2118, ptr %1431
  %2121 = getelementptr i8, ptr %2120, i32 -3
  %2122 = icmp ugt ptr %2121, %2114
  br i1 %2122, label %2123, label %2149

2123:                                             ; preds = %2113
  %2124 = load i32, ptr %2115, align 1
  %2125 = load i32, ptr %2114, align 1
  %2126 = xor i32 %2125, %2124
  %2127 = icmp eq i32 %2126, 0
  br i1 %2127, label %2131, label %2128

2128:                                             ; preds = %2123
  %2129 = tail call i32 @llvm.cttz.i32(i32 %2126, i1 true) #4, !range !8
  %2130 = lshr i32 %2129, 3
  br label %2176

2131:                                             ; preds = %2137, %2123
  %2132 = phi ptr [ %2135, %2137 ], [ %2114, %2123 ]
  %2133 = phi ptr [ %2134, %2137 ], [ %2115, %2123 ]
  %2134 = getelementptr i8, ptr %2133, i32 4
  %2135 = getelementptr i8, ptr %2132, i32 4
  %2136 = icmp ult ptr %2135, %2121
  br i1 %2136, label %2137, label %2149

2137:                                             ; preds = %2131
  %2138 = load i32, ptr %2134, align 1
  %2139 = load i32, ptr %2135, align 1
  %2140 = xor i32 %2139, %2138
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2131, label %2142

2142:                                             ; preds = %2137
  %2143 = tail call i32 @llvm.cttz.i32(i32 %2140, i1 true) #4, !range !8
  %2144 = lshr i32 %2143, 3
  %2145 = getelementptr i8, ptr %2135, i32 %2144
  %2146 = ptrtoint ptr %2145 to i32
  %2147 = ptrtoint ptr %2114 to i32
  %2148 = sub i32 %2146, %2147
  br label %2176

2149:                                             ; preds = %2131, %2113
  %2150 = phi ptr [ %2114, %2113 ], [ %2135, %2131 ]
  %2151 = phi ptr [ %2115, %2113 ], [ %2134, %2131 ]
  %2152 = getelementptr i8, ptr %2120, i32 -1
  %2153 = icmp ult ptr %2150, %2152
  br i1 %2153, label %2154, label %2161

2154:                                             ; preds = %2149
  %2155 = load i16, ptr %2151, align 1
  %2156 = load i16, ptr %2150, align 1
  %2157 = icmp eq i16 %2155, %2156
  br i1 %2157, label %2158, label %2161

2158:                                             ; preds = %2154
  %2159 = getelementptr i8, ptr %2150, i32 2
  %2160 = getelementptr i8, ptr %2151, i32 2
  br label %2161

2161:                                             ; preds = %2158, %2154, %2149
  %2162 = phi ptr [ %2159, %2158 ], [ %2150, %2154 ], [ %2150, %2149 ]
  %2163 = phi ptr [ %2160, %2158 ], [ %2151, %2154 ], [ %2151, %2149 ]
  %2164 = icmp ult ptr %2162, %2120
  br i1 %2164, label %2165, label %2171

2165:                                             ; preds = %2161
  %2166 = load i8, ptr %2163, align 1
  %2167 = load i8, ptr %2162, align 1
  %2168 = icmp eq i8 %2166, %2167
  %2169 = zext i1 %2168 to i32
  %2170 = getelementptr i8, ptr %2162, i32 %2169
  br label %2171

2171:                                             ; preds = %2165, %2161
  %2172 = phi ptr [ %2162, %2161 ], [ %2170, %2165 ]
  %2173 = ptrtoint ptr %2172 to i32
  %2174 = ptrtoint ptr %2114 to i32
  %2175 = sub i32 %2173, %2174
  br label %2176

2176:                                             ; preds = %2171, %2142, %2128
  %2177 = phi i32 [ %2175, %2171 ], [ %2130, %2128 ], [ %2148, %2142 ]
  %2178 = getelementptr i8, ptr %2115, i32 %2177
  %2179 = icmp eq ptr %2178, %1447
  br i1 %2179, label %2180, label %2238

2180:                                             ; preds = %2176
  %2181 = getelementptr i8, ptr %2114, i32 %2177
  %2182 = icmp ugt ptr %1478, %2181
  br i1 %2182, label %2183, label %2209

2183:                                             ; preds = %2180
  %2184 = load i32, ptr %1430, align 1
  %2185 = load i32, ptr %2181, align 1
  %2186 = xor i32 %2185, %2184
  %2187 = icmp eq i32 %2186, 0
  br i1 %2187, label %2191, label %2188

2188:                                             ; preds = %2183
  %2189 = tail call i32 @llvm.cttz.i32(i32 %2186, i1 true) #4, !range !8
  %2190 = lshr i32 %2189, 3
  br label %2235

2191:                                             ; preds = %2197, %2183
  %2192 = phi ptr [ %2195, %2197 ], [ %2181, %2183 ]
  %2193 = phi ptr [ %2194, %2197 ], [ %1430, %2183 ]
  %2194 = getelementptr i8, ptr %2193, i32 4
  %2195 = getelementptr i8, ptr %2192, i32 4
  %2196 = icmp ult ptr %2195, %1478
  br i1 %2196, label %2197, label %2209

2197:                                             ; preds = %2191
  %2198 = load i32, ptr %2194, align 1
  %2199 = load i32, ptr %2195, align 1
  %2200 = xor i32 %2199, %2198
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2191, label %2202

2202:                                             ; preds = %2197
  %2203 = tail call i32 @llvm.cttz.i32(i32 %2200, i1 true) #4, !range !8
  %2204 = lshr i32 %2203, 3
  %2205 = getelementptr i8, ptr %2195, i32 %2204
  %2206 = ptrtoint ptr %2205 to i32
  %2207 = ptrtoint ptr %2181 to i32
  %2208 = sub i32 %2206, %2207
  br label %2235

2209:                                             ; preds = %2191, %2180
  %2210 = phi ptr [ %2181, %2180 ], [ %2195, %2191 ]
  %2211 = phi ptr [ %1430, %2180 ], [ %2194, %2191 ]
  %2212 = icmp ult ptr %2210, %1479
  br i1 %2212, label %2213, label %2220

2213:                                             ; preds = %2209
  %2214 = load i16, ptr %2211, align 1
  %2215 = load i16, ptr %2210, align 1
  %2216 = icmp eq i16 %2214, %2215
  br i1 %2216, label %2217, label %2220

2217:                                             ; preds = %2213
  %2218 = getelementptr i8, ptr %2210, i32 2
  %2219 = getelementptr i8, ptr %2211, i32 2
  br label %2220

2220:                                             ; preds = %2217, %2213, %2209
  %2221 = phi ptr [ %2218, %2217 ], [ %2210, %2213 ], [ %2210, %2209 ]
  %2222 = phi ptr [ %2219, %2217 ], [ %2211, %2213 ], [ %2211, %2209 ]
  %2223 = icmp ult ptr %2221, %1431
  br i1 %2223, label %2224, label %2230

2224:                                             ; preds = %2220
  %2225 = load i8, ptr %2222, align 1
  %2226 = load i8, ptr %2221, align 1
  %2227 = icmp eq i8 %2225, %2226
  %2228 = zext i1 %2227 to i32
  %2229 = getelementptr i8, ptr %2221, i32 %2228
  br label %2230

2230:                                             ; preds = %2224, %2220
  %2231 = phi ptr [ %2221, %2220 ], [ %2229, %2224 ]
  %2232 = ptrtoint ptr %2231 to i32
  %2233 = ptrtoint ptr %2181 to i32
  %2234 = sub i32 %2232, %2233
  br label %2235

2235:                                             ; preds = %2230, %2202, %2188
  %2236 = phi i32 [ %2234, %2230 ], [ %2190, %2188 ], [ %2208, %2202 ]
  %2237 = add i32 %2236, %2177
  br label %2238

2238:                                             ; preds = %2235, %2176
  %2239 = phi i32 [ %2237, %2235 ], [ %2177, %2176 ]
  %2240 = add i32 %2239, 8
  %2241 = add i32 %1451, %2106
  %2242 = sub i32 %1511, %2241
  %2243 = icmp ugt ptr %2010, %1489
  br i1 %2243, label %2244, label %2482

2244:                                             ; preds = %2253, %2238
  %2245 = phi ptr [ %2250, %2253 ], [ %2107, %2238 ]
  %2246 = phi ptr [ %2248, %2253 ], [ %2010, %2238 ]
  %2247 = phi i32 [ %2254, %2253 ], [ %2240, %2238 ]
  %2248 = getelementptr i8, ptr %2246, i32 -1
  %2249 = load i8, ptr %2248, align 1
  %2250 = getelementptr i8, ptr %2245, i32 -1
  %2251 = load i8, ptr %2250, align 1
  %2252 = icmp eq i8 %2249, %2251
  br i1 %2252, label %2253, label %2482

2253:                                             ; preds = %2244
  %2254 = add i32 %2247, 1
  %2255 = icmp ugt ptr %2248, %1489
  %2256 = icmp ugt ptr %2250, %1446
  %2257 = and i1 %2256, %2255
  br i1 %2257, label %2244, label %2482

2258:                                             ; preds = %2109, %2102, %2019
  %2259 = icmp ult i32 %2008, %1429
  %2260 = getelementptr i8, ptr %1488, i32 4
  %2261 = getelementptr i8, ptr %2009, i32 4
  br i1 %2259, label %2262, label %2406

2262:                                             ; preds = %2258
  %2263 = ptrtoint ptr %2261 to i32
  %2264 = sub i32 %1448, %2263
  %2265 = getelementptr i8, ptr %2260, i32 %2264
  %2266 = icmp ult ptr %2265, %1431
  %2267 = select i1 %2266, ptr %2265, ptr %1431
  %2268 = getelementptr i8, ptr %2267, i32 -3
  %2269 = icmp ugt ptr %2268, %2260
  br i1 %2269, label %2270, label %2296

2270:                                             ; preds = %2262
  %2271 = load i32, ptr %2261, align 1
  %2272 = load i32, ptr %2260, align 1
  %2273 = xor i32 %2272, %2271
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2278, label %2275

2275:                                             ; preds = %2270
  %2276 = tail call i32 @llvm.cttz.i32(i32 %2273, i1 true) #4, !range !8
  %2277 = lshr i32 %2276, 3
  br label %2323

2278:                                             ; preds = %2284, %2270
  %2279 = phi ptr [ %2282, %2284 ], [ %2260, %2270 ]
  %2280 = phi ptr [ %2281, %2284 ], [ %2261, %2270 ]
  %2281 = getelementptr i8, ptr %2280, i32 4
  %2282 = getelementptr i8, ptr %2279, i32 4
  %2283 = icmp ult ptr %2282, %2268
  br i1 %2283, label %2284, label %2296

2284:                                             ; preds = %2278
  %2285 = load i32, ptr %2281, align 1
  %2286 = load i32, ptr %2282, align 1
  %2287 = xor i32 %2286, %2285
  %2288 = icmp eq i32 %2287, 0
  br i1 %2288, label %2278, label %2289

2289:                                             ; preds = %2284
  %2290 = tail call i32 @llvm.cttz.i32(i32 %2287, i1 true) #4, !range !8
  %2291 = lshr i32 %2290, 3
  %2292 = getelementptr i8, ptr %2282, i32 %2291
  %2293 = ptrtoint ptr %2292 to i32
  %2294 = ptrtoint ptr %2260 to i32
  %2295 = sub i32 %2293, %2294
  br label %2323

2296:                                             ; preds = %2278, %2262
  %2297 = phi ptr [ %2260, %2262 ], [ %2282, %2278 ]
  %2298 = phi ptr [ %2261, %2262 ], [ %2281, %2278 ]
  %2299 = getelementptr i8, ptr %2267, i32 -1
  %2300 = icmp ult ptr %2297, %2299
  br i1 %2300, label %2301, label %2308

2301:                                             ; preds = %2296
  %2302 = load i16, ptr %2298, align 1
  %2303 = load i16, ptr %2297, align 1
  %2304 = icmp eq i16 %2302, %2303
  br i1 %2304, label %2305, label %2308

2305:                                             ; preds = %2301
  %2306 = getelementptr i8, ptr %2297, i32 2
  %2307 = getelementptr i8, ptr %2298, i32 2
  br label %2308

2308:                                             ; preds = %2305, %2301, %2296
  %2309 = phi ptr [ %2306, %2305 ], [ %2297, %2301 ], [ %2297, %2296 ]
  %2310 = phi ptr [ %2307, %2305 ], [ %2298, %2301 ], [ %2298, %2296 ]
  %2311 = icmp ult ptr %2309, %2267
  br i1 %2311, label %2312, label %2318

2312:                                             ; preds = %2308
  %2313 = load i8, ptr %2310, align 1
  %2314 = load i8, ptr %2309, align 1
  %2315 = icmp eq i8 %2313, %2314
  %2316 = zext i1 %2315 to i32
  %2317 = getelementptr i8, ptr %2309, i32 %2316
  br label %2318

2318:                                             ; preds = %2312, %2308
  %2319 = phi ptr [ %2309, %2308 ], [ %2317, %2312 ]
  %2320 = ptrtoint ptr %2319 to i32
  %2321 = ptrtoint ptr %2260 to i32
  %2322 = sub i32 %2320, %2321
  br label %2323

2323:                                             ; preds = %2318, %2289, %2275
  %2324 = phi i32 [ %2322, %2318 ], [ %2277, %2275 ], [ %2295, %2289 ]
  %2325 = getelementptr i8, ptr %2261, i32 %2324
  %2326 = icmp eq ptr %2325, %1447
  br i1 %2326, label %2327, label %2385

2327:                                             ; preds = %2323
  %2328 = getelementptr i8, ptr %2260, i32 %2324
  %2329 = icmp ugt ptr %1478, %2328
  br i1 %2329, label %2330, label %2356

2330:                                             ; preds = %2327
  %2331 = load i32, ptr %1430, align 1
  %2332 = load i32, ptr %2328, align 1
  %2333 = xor i32 %2332, %2331
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2338, label %2335

2335:                                             ; preds = %2330
  %2336 = tail call i32 @llvm.cttz.i32(i32 %2333, i1 true) #4, !range !8
  %2337 = lshr i32 %2336, 3
  br label %2382

2338:                                             ; preds = %2344, %2330
  %2339 = phi ptr [ %2342, %2344 ], [ %2328, %2330 ]
  %2340 = phi ptr [ %2341, %2344 ], [ %1430, %2330 ]
  %2341 = getelementptr i8, ptr %2340, i32 4
  %2342 = getelementptr i8, ptr %2339, i32 4
  %2343 = icmp ult ptr %2342, %1478
  br i1 %2343, label %2344, label %2356

2344:                                             ; preds = %2338
  %2345 = load i32, ptr %2341, align 1
  %2346 = load i32, ptr %2342, align 1
  %2347 = xor i32 %2346, %2345
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %2338, label %2349

2349:                                             ; preds = %2344
  %2350 = tail call i32 @llvm.cttz.i32(i32 %2347, i1 true) #4, !range !8
  %2351 = lshr i32 %2350, 3
  %2352 = getelementptr i8, ptr %2342, i32 %2351
  %2353 = ptrtoint ptr %2352 to i32
  %2354 = ptrtoint ptr %2328 to i32
  %2355 = sub i32 %2353, %2354
  br label %2382

2356:                                             ; preds = %2338, %2327
  %2357 = phi ptr [ %2328, %2327 ], [ %2342, %2338 ]
  %2358 = phi ptr [ %1430, %2327 ], [ %2341, %2338 ]
  %2359 = icmp ult ptr %2357, %1479
  br i1 %2359, label %2360, label %2367

2360:                                             ; preds = %2356
  %2361 = load i16, ptr %2358, align 1
  %2362 = load i16, ptr %2357, align 1
  %2363 = icmp eq i16 %2361, %2362
  br i1 %2363, label %2364, label %2367

2364:                                             ; preds = %2360
  %2365 = getelementptr i8, ptr %2357, i32 2
  %2366 = getelementptr i8, ptr %2358, i32 2
  br label %2367

2367:                                             ; preds = %2364, %2360, %2356
  %2368 = phi ptr [ %2365, %2364 ], [ %2357, %2360 ], [ %2357, %2356 ]
  %2369 = phi ptr [ %2366, %2364 ], [ %2358, %2360 ], [ %2358, %2356 ]
  %2370 = icmp ult ptr %2368, %1431
  br i1 %2370, label %2371, label %2377

2371:                                             ; preds = %2367
  %2372 = load i8, ptr %2369, align 1
  %2373 = load i8, ptr %2368, align 1
  %2374 = icmp eq i8 %2372, %2373
  %2375 = zext i1 %2374 to i32
  %2376 = getelementptr i8, ptr %2368, i32 %2375
  br label %2377

2377:                                             ; preds = %2371, %2367
  %2378 = phi ptr [ %2368, %2367 ], [ %2376, %2371 ]
  %2379 = ptrtoint ptr %2378 to i32
  %2380 = ptrtoint ptr %2328 to i32
  %2381 = sub i32 %2379, %2380
  br label %2382

2382:                                             ; preds = %2377, %2349, %2335
  %2383 = phi i32 [ %2381, %2377 ], [ %2337, %2335 ], [ %2355, %2349 ]
  %2384 = add i32 %2383, %2324
  br label %2385

2385:                                             ; preds = %2382, %2323
  %2386 = phi i32 [ %2384, %2382 ], [ %2324, %2323 ]
  %2387 = add i32 %2386, 4
  %2388 = sub i32 %1504, %2008
  %2389 = icmp ugt ptr %1488, %1489
  %2390 = icmp ugt ptr %2009, %1446
  %2391 = and i1 %2389, %2390
  br i1 %2391, label %2392, label %2482

2392:                                             ; preds = %2401, %2385
  %2393 = phi ptr [ %2396, %2401 ], [ %1488, %2385 ]
  %2394 = phi ptr [ %2398, %2401 ], [ %2009, %2385 ]
  %2395 = phi i32 [ %2402, %2401 ], [ %2387, %2385 ]
  %2396 = getelementptr i8, ptr %2393, i32 -1
  %2397 = load i8, ptr %2396, align 1
  %2398 = getelementptr i8, ptr %2394, i32 -1
  %2399 = load i8, ptr %2398, align 1
  %2400 = icmp eq i8 %2397, %2399
  br i1 %2400, label %2401, label %2482

2401:                                             ; preds = %2392
  %2402 = add i32 %2395, 1
  %2403 = icmp ugt ptr %2396, %1489
  %2404 = icmp ugt ptr %2398, %1446
  %2405 = and i1 %2403, %2404
  br i1 %2405, label %2392, label %2482

2406:                                             ; preds = %2258
  %2407 = icmp ugt ptr %1478, %2260
  br i1 %2407, label %2408, label %2434

2408:                                             ; preds = %2406
  %2409 = load i32, ptr %2261, align 1
  %2410 = load i32, ptr %2260, align 1
  %2411 = xor i32 %2410, %2409
  %2412 = icmp eq i32 %2411, 0
  br i1 %2412, label %2416, label %2413

2413:                                             ; preds = %2408
  %2414 = tail call i32 @llvm.cttz.i32(i32 %2411, i1 true) #4, !range !8
  %2415 = lshr i32 %2414, 3
  br label %2460

2416:                                             ; preds = %2422, %2408
  %2417 = phi ptr [ %2420, %2422 ], [ %2260, %2408 ]
  %2418 = phi ptr [ %2419, %2422 ], [ %2261, %2408 ]
  %2419 = getelementptr i8, ptr %2418, i32 4
  %2420 = getelementptr i8, ptr %2417, i32 4
  %2421 = icmp ult ptr %2420, %1478
  br i1 %2421, label %2422, label %2434

2422:                                             ; preds = %2416
  %2423 = load i32, ptr %2419, align 1
  %2424 = load i32, ptr %2420, align 1
  %2425 = xor i32 %2424, %2423
  %2426 = icmp eq i32 %2425, 0
  br i1 %2426, label %2416, label %2427

2427:                                             ; preds = %2422
  %2428 = tail call i32 @llvm.cttz.i32(i32 %2425, i1 true) #4, !range !8
  %2429 = lshr i32 %2428, 3
  %2430 = getelementptr i8, ptr %2420, i32 %2429
  %2431 = ptrtoint ptr %2430 to i32
  %2432 = ptrtoint ptr %2260 to i32
  %2433 = sub i32 %2431, %2432
  br label %2460

2434:                                             ; preds = %2416, %2406
  %2435 = phi ptr [ %2260, %2406 ], [ %2420, %2416 ]
  %2436 = phi ptr [ %2261, %2406 ], [ %2419, %2416 ]
  %2437 = icmp ult ptr %2435, %1479
  br i1 %2437, label %2438, label %2445

2438:                                             ; preds = %2434
  %2439 = load i16, ptr %2436, align 1
  %2440 = load i16, ptr %2435, align 1
  %2441 = icmp eq i16 %2439, %2440
  br i1 %2441, label %2442, label %2445

2442:                                             ; preds = %2438
  %2443 = getelementptr i8, ptr %2435, i32 2
  %2444 = getelementptr i8, ptr %2436, i32 2
  br label %2445

2445:                                             ; preds = %2442, %2438, %2434
  %2446 = phi ptr [ %2443, %2442 ], [ %2435, %2438 ], [ %2435, %2434 ]
  %2447 = phi ptr [ %2444, %2442 ], [ %2436, %2438 ], [ %2436, %2434 ]
  %2448 = icmp ult ptr %2446, %1431
  br i1 %2448, label %2449, label %2455

2449:                                             ; preds = %2445
  %2450 = load i8, ptr %2447, align 1
  %2451 = load i8, ptr %2446, align 1
  %2452 = icmp eq i8 %2450, %2451
  %2453 = zext i1 %2452 to i32
  %2454 = getelementptr i8, ptr %2446, i32 %2453
  br label %2455

2455:                                             ; preds = %2449, %2445
  %2456 = phi ptr [ %2446, %2445 ], [ %2454, %2449 ]
  %2457 = ptrtoint ptr %2456 to i32
  %2458 = ptrtoint ptr %2260 to i32
  %2459 = sub i32 %2457, %2458
  br label %2460

2460:                                             ; preds = %2455, %2427, %2413
  %2461 = phi i32 [ %2459, %2455 ], [ %2415, %2413 ], [ %2433, %2427 ]
  %2462 = add i32 %2461, 4
  %2463 = ptrtoint ptr %2009 to i32
  %2464 = sub i32 %1503, %2463
  %2465 = icmp ugt ptr %1488, %1489
  %2466 = icmp ugt ptr %2009, %1430
  %2467 = and i1 %2465, %2466
  br i1 %2467, label %2468, label %2482

2468:                                             ; preds = %2477, %2460
  %2469 = phi ptr [ %2472, %2477 ], [ %1488, %2460 ]
  %2470 = phi ptr [ %2474, %2477 ], [ %2009, %2460 ]
  %2471 = phi i32 [ %2478, %2477 ], [ %2462, %2460 ]
  %2472 = getelementptr i8, ptr %2469, i32 -1
  %2473 = load i8, ptr %2472, align 1
  %2474 = getelementptr i8, ptr %2470, i32 -1
  %2475 = load i8, ptr %2474, align 1
  %2476 = icmp eq i8 %2473, %2475
  br i1 %2476, label %2477, label %2482

2477:                                             ; preds = %2468
  %2478 = add i32 %2471, 1
  %2479 = icmp ugt ptr %2472, %1489
  %2480 = icmp ugt ptr %2474, %1430
  %2481 = and i1 %2479, %2480
  br i1 %2481, label %2468, label %2482

2482:                                             ; preds = %2477, %2468, %2460, %2401, %2392, %2385, %2253, %2244, %2238, %2097, %2088, %2079, %1975, %1966, %1960, %1821, %1812, %1804
  %2483 = phi i32 [ %1806, %1804 ], [ %2081, %2079 ], [ %2387, %2385 ], [ %2462, %2460 ], [ %2240, %2238 ], [ %1962, %1960 ], [ %1822, %1821 ], [ %1815, %1812 ], [ %2098, %2097 ], [ %2091, %2088 ], [ %2395, %2392 ], [ %2402, %2401 ], [ %2471, %2468 ], [ %2478, %2477 ], [ %2254, %2253 ], [ %2247, %2244 ], [ %1969, %1966 ], [ %1976, %1975 ]
  %2484 = phi i32 [ %1808, %1804 ], [ %2084, %2079 ], [ %2388, %2385 ], [ %2464, %2460 ], [ %2242, %2238 ], [ %1964, %1960 ], [ %1808, %1812 ], [ %1808, %1821 ], [ %2084, %2088 ], [ %2084, %2097 ], [ %2388, %2392 ], [ %2388, %2401 ], [ %2464, %2468 ], [ %2464, %2477 ], [ %2242, %2244 ], [ %2242, %2253 ], [ %1964, %1966 ], [ %1964, %1975 ]
  %2485 = phi ptr [ %1488, %1804 ], [ %2010, %2079 ], [ %1488, %2385 ], [ %1488, %2460 ], [ %2010, %2238 ], [ %1488, %1960 ], [ %1816, %1821 ], [ %1813, %1812 ], [ %2092, %2097 ], [ %2090, %2088 ], [ %2393, %2392 ], [ %2396, %2401 ], [ %2469, %2468 ], [ %2472, %2477 ], [ %2248, %2253 ], [ %2246, %2244 ], [ %1967, %1966 ], [ %1970, %1975 ]
  %2486 = ptrtoint ptr %2485 to i32
  %2487 = ptrtoint ptr %1489 to i32
  %2488 = sub i32 %2486, %2487
  %2489 = add i32 %2483, -3
  %2490 = getelementptr i8, ptr %1489, i32 %2488
  %2491 = icmp ugt ptr %2490, %1480
  %2492 = load ptr, ptr %1481, align 4
  br i1 %2491, label %2514, label %2493

2493:                                             ; preds = %2482
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2492, ptr noundef align 1 dereferenceable(16) %1489, i32 16, i1 false) #4
  %2494 = icmp ugt i32 %2488, 16
  %2495 = load ptr, ptr %1481, align 4
  br i1 %2494, label %2498, label %2496

2496:                                             ; preds = %2493
  %2497 = getelementptr i8, ptr %2495, i32 %2488
  store ptr %2497, ptr %1481, align 4
  br label %2557

2498:                                             ; preds = %2493
  %2499 = getelementptr i8, ptr %2495, i32 16
  %2500 = getelementptr i8, ptr %1489, i32 16
  %2501 = add i32 %2488, -16
  %2502 = getelementptr i8, ptr %2495, i32 %2488
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2499, ptr noundef align 1 dereferenceable(16) %2500, i32 16, i1 false) #4
  %2503 = icmp slt i32 %2501, 17
  br i1 %2503, label %2546, label %2504

2504:                                             ; preds = %2498
  %2505 = getelementptr i8, ptr %2495, i32 32
  br label %2506

2506:                                             ; preds = %2506, %2504
  %2507 = phi ptr [ %2500, %2504 ], [ %2511, %2506 ]
  %2508 = phi ptr [ %2505, %2504 ], [ %2512, %2506 ]
  %2509 = getelementptr i8, ptr %2507, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2508, ptr noundef align 1 dereferenceable(16) %2509, i32 16, i1 false) #4
  %2510 = getelementptr i8, ptr %2508, i32 16
  %2511 = getelementptr i8, ptr %2507, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2510, ptr noundef align 1 dereferenceable(16) %2511, i32 16, i1 false) #4
  %2512 = getelementptr i8, ptr %2508, i32 32
  %2513 = icmp ult ptr %2512, %2502
  br i1 %2513, label %2506, label %2546

2514:                                             ; preds = %2482
  %2515 = ptrtoint ptr %2490 to i32
  %2516 = icmp ult ptr %1480, %1489
  br i1 %2516, label %2531, label %2517

2517:                                             ; preds = %2514
  %2518 = sub i32 %1482, %2487
  %2519 = getelementptr i8, ptr %2492, i32 %2518
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2492, ptr noundef align 1 dereferenceable(16) %1489, i32 16, i1 false) #4
  %2520 = icmp slt i32 %2518, 17
  br i1 %2520, label %2531, label %2521

2521:                                             ; preds = %2517
  %2522 = getelementptr i8, ptr %2492, i32 16
  br label %2523

2523:                                             ; preds = %2523, %2521
  %2524 = phi ptr [ %1489, %2521 ], [ %2528, %2523 ]
  %2525 = phi ptr [ %2522, %2521 ], [ %2529, %2523 ]
  %2526 = getelementptr i8, ptr %2524, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2525, ptr noundef align 1 dereferenceable(16) %2526, i32 16, i1 false) #4
  %2527 = getelementptr i8, ptr %2525, i32 16
  %2528 = getelementptr i8, ptr %2524, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2527, ptr noundef align 1 dereferenceable(16) %2528, i32 16, i1 false) #4
  %2529 = getelementptr i8, ptr %2525, i32 32
  %2530 = icmp ult ptr %2529, %2519
  br i1 %2530, label %2523, label %2531

2531:                                             ; preds = %2523, %2517, %2514
  %2532 = phi ptr [ %1480, %2517 ], [ %1489, %2514 ], [ %1480, %2523 ]
  %2533 = phi ptr [ %2519, %2517 ], [ %2492, %2514 ], [ %2519, %2523 ]
  %2534 = icmp ult ptr %2532, %2490
  br i1 %2534, label %2535, label %2546

2535:                                             ; preds = %2531
  %2536 = ptrtoint ptr %2532 to i32
  %2537 = sub i32 %2515, %2536
  %2538 = getelementptr i8, ptr %2532, i32 %2537
  br label %2539

2539:                                             ; preds = %2539, %2535
  %2540 = phi ptr [ %2544, %2539 ], [ %2533, %2535 ]
  %2541 = phi ptr [ %2542, %2539 ], [ %2532, %2535 ]
  %2542 = getelementptr i8, ptr %2541, i32 1
  %2543 = load i8, ptr %2541, align 1
  %2544 = getelementptr i8, ptr %2540, i32 1
  store i8 %2543, ptr %2540, align 1
  %2545 = icmp eq ptr %2542, %2538
  br i1 %2545, label %2546, label %2539

2546:                                             ; preds = %2539, %2531, %2506, %2498
  %2547 = load ptr, ptr %1481, align 4
  %2548 = getelementptr i8, ptr %2547, i32 %2488
  store ptr %2548, ptr %1481, align 4
  %2549 = icmp ugt i32 %2488, 65535
  br i1 %2549, label %2550, label %2557

2550:                                             ; preds = %2546
  store i32 1, ptr %1483, align 4
  %2551 = load ptr, ptr %1484, align 4
  %2552 = load ptr, ptr %1, align 4
  %2553 = ptrtoint ptr %2551 to i32
  %2554 = ptrtoint ptr %2552 to i32
  %2555 = sub i32 %2553, %2554
  %2556 = ashr exact i32 %2555, 3
  store i32 %2556, ptr %1485, align 4
  br label %2557

2557:                                             ; preds = %2550, %2546, %2496
  %2558 = trunc i32 %2488 to i16
  %2559 = load ptr, ptr %1484, align 4
  %2560 = getelementptr inbounds %struct.seqDef_s, ptr %2559, i32 0, i32 1
  store i16 %2558, ptr %2560, align 4
  %2561 = add i32 %2484, 3
  %2562 = load ptr, ptr %1484, align 4
  store i32 %2561, ptr %2562, align 4
  %2563 = icmp ugt i32 %2489, 65535
  br i1 %2563, label %2566, label %2564

2564:                                             ; preds = %2557
  %2565 = load ptr, ptr %1484, align 4
  br label %2573

2566:                                             ; preds = %2557
  store i32 2, ptr %1483, align 4
  %2567 = load ptr, ptr %1484, align 4
  %2568 = load ptr, ptr %1, align 4
  %2569 = ptrtoint ptr %2567 to i32
  %2570 = ptrtoint ptr %2568 to i32
  %2571 = sub i32 %2569, %2570
  %2572 = ashr exact i32 %2571, 3
  store i32 %2572, ptr %1485, align 4
  br label %2573

2573:                                             ; preds = %2566, %2564, %1735, %1733
  %2574 = phi i32 [ %1659, %1733 ], [ %1659, %1735 ], [ %2489, %2564 ], [ %2489, %2566 ]
  %2575 = phi ptr [ %1734, %1733 ], [ %1736, %1735 ], [ %2565, %2564 ], [ %2567, %2566 ]
  %2576 = phi i32 [ %1491, %1733 ], [ %1491, %1735 ], [ %1490, %2564 ], [ %1490, %2566 ]
  %2577 = phi i32 [ %1490, %1733 ], [ %1490, %1735 ], [ %2484, %2564 ], [ %2484, %2566 ]
  %2578 = phi i32 [ %1655, %1733 ], [ %1655, %1735 ], [ %2483, %2564 ], [ %2483, %2566 ]
  %2579 = phi ptr [ %1523, %1733 ], [ %1523, %1735 ], [ %2485, %2564 ], [ %2485, %2566 ]
  %2580 = trunc i32 %2574 to i16
  %2581 = getelementptr inbounds %struct.seqDef_s, ptr %2575, i32 0, i32 2
  store i16 %2580, ptr %2581, align 2
  %2582 = load ptr, ptr %1484, align 4
  %2583 = getelementptr %struct.seqDef_s, ptr %2582, i32 1
  store ptr %2583, ptr %1484, align 4
  %2584 = getelementptr i8, ptr %2579, i32 %2578
  %2585 = icmp ugt ptr %2584, %1432
  br i1 %2585, label %2798, label %2586

2586:                                             ; preds = %2573
  %2587 = add i32 %1504, 2
  %2588 = getelementptr i8, ptr %1413, i32 %2587
  %2589 = load i64, ptr %2588, align 1
  %2590 = mul i64 %2589, -3523014627327384477
  %2591 = lshr i64 %2590, %1471
  %2592 = trunc i64 %2591 to i32
  %2593 = getelementptr i32, ptr %1409, i32 %2592
  store i32 %2587, ptr %2593, align 4
  %2594 = getelementptr i8, ptr %2584, i32 -2
  %2595 = ptrtoint ptr %2594 to i32
  %2596 = sub i32 %2595, %1415
  %2597 = load i64, ptr %2594, align 1
  %2598 = mul i64 %2597, -3523014627327384477
  %2599 = lshr i64 %2598, %1471
  %2600 = trunc i64 %2599 to i32
  %2601 = getelementptr i32, ptr %1409, i32 %2600
  store i32 %2596, ptr %2601, align 4
  %2602 = load i64, ptr %2588, align 1
  %2603 = mul i64 %2602, -3523014627271114752
  %2604 = lshr i64 %2603, %1473
  %2605 = trunc i64 %2604 to i32
  %2606 = getelementptr i32, ptr %1411, i32 %2605
  store i32 %2587, ptr %2606, align 4
  %2607 = getelementptr i8, ptr %2584, i32 -1
  %2608 = load i64, ptr %2607, align 1
  %2609 = mul i64 %2608, -3523014627271114752
  %2610 = lshr i64 %2609, %1473
  %2611 = trunc i64 %2610 to i32
  %2612 = ptrtoint ptr %2607 to i32
  %2613 = sub i32 %2612, %1415
  %2614 = getelementptr i32, ptr %1411, i32 %2611
  store i32 %2613, ptr %2614, align 4
  br label %2615

2615:                                             ; preds = %2780, %2586
  %2616 = phi ptr [ %2796, %2780 ], [ %2584, %2586 ]
  %2617 = phi i32 [ %2618, %2780 ], [ %2577, %2586 ]
  %2618 = phi i32 [ %2617, %2780 ], [ %2576, %2586 ]
  %2619 = ptrtoint ptr %2616 to i32
  %2620 = sub i32 %2619, %1415
  %2621 = sub i32 %2620, %2618
  %2622 = icmp ult i32 %2621, %1429
  %2623 = select i1 %2622, ptr %1486, ptr %1413
  %2624 = getelementptr i8, ptr %2623, i32 %2621
  %2625 = xor i32 %2621, -1
  %2626 = add i32 %1429, %2625
  %2627 = icmp ugt i32 %2626, 2
  br i1 %2627, label %2628, label %2798

2628:                                             ; preds = %2615
  %2629 = load i32, ptr %2624, align 1
  %2630 = load i32, ptr %2616, align 1
  %2631 = icmp eq i32 %2629, %2630
  br i1 %2631, label %2632, label %2798

2632:                                             ; preds = %2628
  %2633 = select i1 %2622, ptr %1447, ptr %1431
  %2634 = getelementptr i8, ptr %2616, i32 4
  %2635 = getelementptr i8, ptr %2624, i32 4
  %2636 = ptrtoint ptr %2633 to i32
  %2637 = ptrtoint ptr %2635 to i32
  %2638 = sub i32 %2636, %2637
  %2639 = getelementptr i8, ptr %2634, i32 %2638
  %2640 = icmp ult ptr %2639, %1431
  %2641 = select i1 %2640, ptr %2639, ptr %1431
  %2642 = getelementptr i8, ptr %2641, i32 -3
  %2643 = icmp ugt ptr %2642, %2634
  br i1 %2643, label %2644, label %2670

2644:                                             ; preds = %2632
  %2645 = load i32, ptr %2635, align 1
  %2646 = load i32, ptr %2634, align 1
  %2647 = xor i32 %2646, %2645
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2652, label %2649

2649:                                             ; preds = %2644
  %2650 = tail call i32 @llvm.cttz.i32(i32 %2647, i1 true) #4, !range !8
  %2651 = lshr i32 %2650, 3
  br label %2697

2652:                                             ; preds = %2658, %2644
  %2653 = phi ptr [ %2656, %2658 ], [ %2634, %2644 ]
  %2654 = phi ptr [ %2655, %2658 ], [ %2635, %2644 ]
  %2655 = getelementptr i8, ptr %2654, i32 4
  %2656 = getelementptr i8, ptr %2653, i32 4
  %2657 = icmp ult ptr %2656, %2642
  br i1 %2657, label %2658, label %2670

2658:                                             ; preds = %2652
  %2659 = load i32, ptr %2655, align 1
  %2660 = load i32, ptr %2656, align 1
  %2661 = xor i32 %2660, %2659
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %2652, label %2663

2663:                                             ; preds = %2658
  %2664 = tail call i32 @llvm.cttz.i32(i32 %2661, i1 true) #4, !range !8
  %2665 = lshr i32 %2664, 3
  %2666 = getelementptr i8, ptr %2656, i32 %2665
  %2667 = ptrtoint ptr %2666 to i32
  %2668 = ptrtoint ptr %2634 to i32
  %2669 = sub i32 %2667, %2668
  br label %2697

2670:                                             ; preds = %2652, %2632
  %2671 = phi ptr [ %2634, %2632 ], [ %2656, %2652 ]
  %2672 = phi ptr [ %2635, %2632 ], [ %2655, %2652 ]
  %2673 = getelementptr i8, ptr %2641, i32 -1
  %2674 = icmp ult ptr %2671, %2673
  br i1 %2674, label %2675, label %2682

2675:                                             ; preds = %2670
  %2676 = load i16, ptr %2672, align 1
  %2677 = load i16, ptr %2671, align 1
  %2678 = icmp eq i16 %2676, %2677
  br i1 %2678, label %2679, label %2682

2679:                                             ; preds = %2675
  %2680 = getelementptr i8, ptr %2671, i32 2
  %2681 = getelementptr i8, ptr %2672, i32 2
  br label %2682

2682:                                             ; preds = %2679, %2675, %2670
  %2683 = phi ptr [ %2680, %2679 ], [ %2671, %2675 ], [ %2671, %2670 ]
  %2684 = phi ptr [ %2681, %2679 ], [ %2672, %2675 ], [ %2672, %2670 ]
  %2685 = icmp ult ptr %2683, %2641
  br i1 %2685, label %2686, label %2692

2686:                                             ; preds = %2682
  %2687 = load i8, ptr %2684, align 1
  %2688 = load i8, ptr %2683, align 1
  %2689 = icmp eq i8 %2687, %2688
  %2690 = zext i1 %2689 to i32
  %2691 = getelementptr i8, ptr %2683, i32 %2690
  br label %2692

2692:                                             ; preds = %2686, %2682
  %2693 = phi ptr [ %2683, %2682 ], [ %2691, %2686 ]
  %2694 = ptrtoint ptr %2693 to i32
  %2695 = ptrtoint ptr %2634 to i32
  %2696 = sub i32 %2694, %2695
  br label %2697

2697:                                             ; preds = %2692, %2663, %2649
  %2698 = phi i32 [ %2696, %2692 ], [ %2651, %2649 ], [ %2669, %2663 ]
  %2699 = getelementptr i8, ptr %2635, i32 %2698
  %2700 = icmp eq ptr %2699, %2633
  br i1 %2700, label %2701, label %2759

2701:                                             ; preds = %2697
  %2702 = getelementptr i8, ptr %2634, i32 %2698
  %2703 = icmp ugt ptr %1478, %2702
  br i1 %2703, label %2704, label %2730

2704:                                             ; preds = %2701
  %2705 = load i32, ptr %1430, align 1
  %2706 = load i32, ptr %2702, align 1
  %2707 = xor i32 %2706, %2705
  %2708 = icmp eq i32 %2707, 0
  br i1 %2708, label %2712, label %2709

2709:                                             ; preds = %2704
  %2710 = tail call i32 @llvm.cttz.i32(i32 %2707, i1 true) #4, !range !8
  %2711 = lshr i32 %2710, 3
  br label %2756

2712:                                             ; preds = %2718, %2704
  %2713 = phi ptr [ %2716, %2718 ], [ %2702, %2704 ]
  %2714 = phi ptr [ %2715, %2718 ], [ %1430, %2704 ]
  %2715 = getelementptr i8, ptr %2714, i32 4
  %2716 = getelementptr i8, ptr %2713, i32 4
  %2717 = icmp ult ptr %2716, %1478
  br i1 %2717, label %2718, label %2730

2718:                                             ; preds = %2712
  %2719 = load i32, ptr %2715, align 1
  %2720 = load i32, ptr %2716, align 1
  %2721 = xor i32 %2720, %2719
  %2722 = icmp eq i32 %2721, 0
  br i1 %2722, label %2712, label %2723

2723:                                             ; preds = %2718
  %2724 = tail call i32 @llvm.cttz.i32(i32 %2721, i1 true) #4, !range !8
  %2725 = lshr i32 %2724, 3
  %2726 = getelementptr i8, ptr %2716, i32 %2725
  %2727 = ptrtoint ptr %2726 to i32
  %2728 = ptrtoint ptr %2702 to i32
  %2729 = sub i32 %2727, %2728
  br label %2756

2730:                                             ; preds = %2712, %2701
  %2731 = phi ptr [ %2702, %2701 ], [ %2716, %2712 ]
  %2732 = phi ptr [ %1430, %2701 ], [ %2715, %2712 ]
  %2733 = icmp ult ptr %2731, %1479
  br i1 %2733, label %2734, label %2741

2734:                                             ; preds = %2730
  %2735 = load i16, ptr %2732, align 1
  %2736 = load i16, ptr %2731, align 1
  %2737 = icmp eq i16 %2735, %2736
  br i1 %2737, label %2738, label %2741

2738:                                             ; preds = %2734
  %2739 = getelementptr i8, ptr %2731, i32 2
  %2740 = getelementptr i8, ptr %2732, i32 2
  br label %2741

2741:                                             ; preds = %2738, %2734, %2730
  %2742 = phi ptr [ %2739, %2738 ], [ %2731, %2734 ], [ %2731, %2730 ]
  %2743 = phi ptr [ %2740, %2738 ], [ %2732, %2734 ], [ %2732, %2730 ]
  %2744 = icmp ult ptr %2742, %1431
  br i1 %2744, label %2745, label %2751

2745:                                             ; preds = %2741
  %2746 = load i8, ptr %2743, align 1
  %2747 = load i8, ptr %2742, align 1
  %2748 = icmp eq i8 %2746, %2747
  %2749 = zext i1 %2748 to i32
  %2750 = getelementptr i8, ptr %2742, i32 %2749
  br label %2751

2751:                                             ; preds = %2745, %2741
  %2752 = phi ptr [ %2742, %2741 ], [ %2750, %2745 ]
  %2753 = ptrtoint ptr %2752 to i32
  %2754 = ptrtoint ptr %2702 to i32
  %2755 = sub i32 %2753, %2754
  br label %2756

2756:                                             ; preds = %2751, %2723, %2709
  %2757 = phi i32 [ %2755, %2751 ], [ %2711, %2709 ], [ %2729, %2723 ]
  %2758 = add i32 %2757, %2698
  br label %2759

2759:                                             ; preds = %2756, %2697
  %2760 = phi i32 [ %2758, %2756 ], [ %2698, %2697 ]
  %2761 = add i32 %2760, 4
  %2762 = add i32 %2760, 1
  %2763 = icmp ugt ptr %2616, %1480
  br i1 %2763, label %2766, label %2764

2764:                                             ; preds = %2759
  %2765 = load ptr, ptr %1481, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2765, ptr noundef align 1 dereferenceable(16) %2616, i32 16, i1 false) #4
  br label %2766

2766:                                             ; preds = %2764, %2759
  %2767 = load ptr, ptr %1484, align 4
  %2768 = getelementptr inbounds %struct.seqDef_s, ptr %2767, i32 0, i32 1
  store i16 0, ptr %2768, align 4
  %2769 = load ptr, ptr %1484, align 4
  store i32 1, ptr %2769, align 4
  %2770 = icmp ugt i32 %2762, 65535
  br i1 %2770, label %2773, label %2771

2771:                                             ; preds = %2766
  %2772 = load ptr, ptr %1484, align 4
  br label %2780

2773:                                             ; preds = %2766
  store i32 2, ptr %1483, align 4
  %2774 = load ptr, ptr %1484, align 4
  %2775 = load ptr, ptr %1, align 4
  %2776 = ptrtoint ptr %2774 to i32
  %2777 = ptrtoint ptr %2775 to i32
  %2778 = sub i32 %2776, %2777
  %2779 = ashr exact i32 %2778, 3
  store i32 %2779, ptr %1485, align 4
  br label %2780

2780:                                             ; preds = %2773, %2771
  %2781 = phi ptr [ %2772, %2771 ], [ %2774, %2773 ]
  %2782 = trunc i32 %2762 to i16
  %2783 = getelementptr inbounds %struct.seqDef_s, ptr %2781, i32 0, i32 2
  store i16 %2782, ptr %2783, align 2
  %2784 = load ptr, ptr %1484, align 4
  %2785 = getelementptr %struct.seqDef_s, ptr %2784, i32 1
  store ptr %2785, ptr %1484, align 4
  %2786 = load i64, ptr %2616, align 1
  %2787 = mul i64 %2786, -3523014627271114752
  %2788 = lshr i64 %2787, %1473
  %2789 = trunc i64 %2788 to i32
  %2790 = getelementptr i32, ptr %1411, i32 %2789
  store i32 %2620, ptr %2790, align 4
  %2791 = load i64, ptr %2616, align 1
  %2792 = mul i64 %2791, -3523014627327384477
  %2793 = lshr i64 %2792, %1471
  %2794 = trunc i64 %2793 to i32
  %2795 = getelementptr i32, ptr %1409, i32 %2794
  store i32 %2620, ptr %2795, align 4
  %2796 = getelementptr i8, ptr %2616, i32 %2761
  %2797 = icmp ugt ptr %2796, %1432
  br i1 %2797, label %2798, label %2615

2798:                                             ; preds = %2780, %2628, %2615, %2573, %2001
  %2799 = phi i32 [ %1491, %2001 ], [ %2576, %2573 ], [ %2618, %2615 ], [ %2618, %2628 ], [ %2617, %2780 ]
  %2800 = phi i32 [ %1490, %2001 ], [ %2577, %2573 ], [ %2617, %2615 ], [ %2617, %2628 ], [ %2618, %2780 ]
  %2801 = phi ptr [ %1489, %2001 ], [ %2584, %2573 ], [ %2616, %2615 ], [ %2616, %2628 ], [ %2796, %2780 ]
  %2802 = phi ptr [ %2006, %2001 ], [ %2584, %2573 ], [ %2616, %2615 ], [ %2616, %2628 ], [ %2796, %2780 ]
  %2803 = icmp ult ptr %2802, %1432
  br i1 %2803, label %1487, label %2804

2804:                                             ; preds = %2798
  %2805 = ptrtoint ptr %2801 to i32
  br label %2806

2806:                                             ; preds = %2804, %1406
  %2807 = phi i32 [ %2805, %2804 ], [ %1414, %1406 ]
  %2808 = phi i32 [ %2799, %2804 ], [ %1435, %1406 ]
  %2809 = phi i32 [ %2800, %2804 ], [ %1433, %1406 ]
  store i32 %2809, ptr %2, align 4
  store i32 %2808, ptr %1434, align 4
  br label %5618

2810:                                             ; preds = %5
  %2811 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %2812 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %2813 = load ptr, ptr %2812, align 4
  %2814 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %2815 = load ptr, ptr %2814, align 4
  %2816 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %2817 = load ptr, ptr %2816, align 4
  %2818 = ptrtoint ptr %3 to i32
  %2819 = ptrtoint ptr %2817 to i32
  %2820 = sub i32 %2818, %2819
  %2821 = add i32 %2820, %4
  %2822 = load i32, ptr %2811, align 4
  %2823 = shl nuw i32 1, %2822
  %2824 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %2825 = load i32, ptr %2824, align 4
  %2826 = sub i32 %2821, %2825
  %2827 = icmp ugt i32 %2826, %2823
  %2828 = sub i32 %2821, %2823
  %2829 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %2830 = load i32, ptr %2829, align 4
  %2831 = icmp eq i32 %2830, 0
  %2832 = select i1 %2831, i1 %2827, i1 false
  %2833 = select i1 %2832, i32 %2828, i32 %2825
  %2834 = getelementptr i8, ptr %2817, i32 %2833
  %2835 = getelementptr i8, ptr %3, i32 %4
  %2836 = getelementptr i8, ptr %2835, i32 -8
  %2837 = load i32, ptr %2, align 4
  %2838 = getelementptr i32, ptr %2, i32 1
  %2839 = load i32, ptr %2838, align 4
  %2840 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 9
  %2841 = load ptr, ptr %2840, align 4
  %2842 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %2841, i32 0, i32 4
  %2843 = load ptr, ptr %2842, align 4
  %2844 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %2841, i32 0, i32 6
  %2845 = load ptr, ptr %2844, align 4
  %2846 = getelementptr inbounds %struct.ZSTD_window_t, ptr %2841, i32 0, i32 3
  %2847 = load i32, ptr %2846, align 4
  %2848 = getelementptr inbounds %struct.ZSTD_window_t, ptr %2841, i32 0, i32 1
  %2849 = load ptr, ptr %2848, align 4
  %2850 = getelementptr i8, ptr %2849, i32 %2847
  %2851 = load ptr, ptr %2841, align 4
  %2852 = ptrtoint ptr %2851 to i32
  %2853 = ptrtoint ptr %2849 to i32
  %2854 = add i32 %2833, %2853
  %2855 = sub i32 %2854, %2852
  %2856 = ptrtoint ptr %2834 to i32
  %2857 = sub i32 %2818, %2856
  %2858 = ptrtoint ptr %2850 to i32
  %2859 = sub i32 %2858, %2852
  %2860 = icmp eq i32 %2857, %2859
  %2861 = zext i1 %2860 to i32
  %2862 = getelementptr i8, ptr %3, i32 %2861
  %2863 = icmp ult ptr %2862, %2836
  br i1 %2863, label %2864, label %4210

2864:                                             ; preds = %2810
  %2865 = sub i32 0, %2855
  %2866 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %2841, i32 0, i32 10, i32 1
  %2867 = load i32, ptr %2866, align 4
  %2868 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %2841, i32 0, i32 10, i32 2
  %2869 = load i32, ptr %2868, align 4
  %2870 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %2871 = load i32, ptr %2870, align 4
  %2872 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %2873 = load i32, ptr %2872, align 4
  %2874 = sub i32 64, %2873
  %2875 = zext i32 %2874 to i64
  %2876 = sub i32 64, %2871
  %2877 = zext i32 %2876 to i64
  %2878 = sub i32 64, %2869
  %2879 = zext i32 %2878 to i64
  %2880 = sub i32 64, %2867
  %2881 = zext i32 %2880 to i64
  %2882 = getelementptr i8, ptr %2835, i32 -3
  %2883 = getelementptr i8, ptr %2835, i32 -1
  %2884 = getelementptr i8, ptr %2835, i32 -32
  %2885 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %2886 = ptrtoint ptr %2884 to i32
  %2887 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %2888 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %2889 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %2890 = getelementptr i8, ptr %2849, i32 %2865
  br label %2891

2891:                                             ; preds = %4202, %2864
  %2892 = phi ptr [ %2862, %2864 ], [ %4206, %4202 ]
  %2893 = phi ptr [ %3, %2864 ], [ %4205, %4202 ]
  %2894 = phi i32 [ %2837, %2864 ], [ %4204, %4202 ]
  %2895 = phi i32 [ %2839, %2864 ], [ %4203, %4202 ]
  %2896 = load i64, ptr %2892, align 1
  %2897 = mul i64 %2896, -3523014627327384477
  %2898 = lshr i64 %2897, %2875
  %2899 = trunc i64 %2898 to i32
  %2900 = mul i64 %2896, -3523014627193847808
  %2901 = lshr i64 %2900, %2877
  %2902 = trunc i64 %2901 to i32
  %2903 = lshr i64 %2897, %2879
  %2904 = trunc i64 %2903 to i32
  %2905 = lshr i64 %2900, %2881
  %2906 = trunc i64 %2905 to i32
  %2907 = ptrtoint ptr %2892 to i32
  %2908 = sub i32 %2907, %2819
  %2909 = getelementptr i32, ptr %2813, i32 %2899
  %2910 = load i32, ptr %2909, align 4
  %2911 = getelementptr i32, ptr %2815, i32 %2902
  %2912 = load i32, ptr %2911, align 4
  %2913 = getelementptr i8, ptr %2817, i32 %2910
  %2914 = getelementptr i8, ptr %2817, i32 %2912
  %2915 = add i32 %2908, 1
  %2916 = sub i32 %2915, %2894
  %2917 = icmp ult i32 %2916, %2833
  %2918 = sub i32 %2916, %2855
  %2919 = getelementptr i8, ptr %2849, i32 %2918
  %2920 = getelementptr i8, ptr %2817, i32 %2916
  %2921 = select i1 %2917, ptr %2919, ptr %2920
  store i32 %2908, ptr %2911, align 4
  store i32 %2908, ptr %2909, align 4
  %2922 = xor i32 %2916, -1
  %2923 = add i32 %2833, %2922
  %2924 = icmp ugt i32 %2923, 2
  br i1 %2924, label %2925, label %3146

2925:                                             ; preds = %2891
  %2926 = load i32, ptr %2921, align 1
  %2927 = getelementptr i8, ptr %2892, i32 1
  %2928 = load i32, ptr %2927, align 1
  %2929 = icmp eq i32 %2926, %2928
  br i1 %2929, label %2930, label %3146

2930:                                             ; preds = %2925
  %2931 = select i1 %2917, ptr %2851, ptr %2835
  %2932 = getelementptr i8, ptr %2892, i32 5
  %2933 = getelementptr i8, ptr %2921, i32 4
  %2934 = ptrtoint ptr %2931 to i32
  %2935 = ptrtoint ptr %2933 to i32
  %2936 = sub i32 %2934, %2935
  %2937 = getelementptr i8, ptr %2932, i32 %2936
  %2938 = icmp ult ptr %2937, %2835
  %2939 = select i1 %2938, ptr %2937, ptr %2835
  %2940 = getelementptr i8, ptr %2939, i32 -3
  %2941 = icmp ugt ptr %2940, %2932
  br i1 %2941, label %2942, label %2968

2942:                                             ; preds = %2930
  %2943 = load i32, ptr %2933, align 1
  %2944 = load i32, ptr %2932, align 1
  %2945 = xor i32 %2944, %2943
  %2946 = icmp eq i32 %2945, 0
  br i1 %2946, label %2950, label %2947

2947:                                             ; preds = %2942
  %2948 = tail call i32 @llvm.cttz.i32(i32 %2945, i1 true) #4, !range !8
  %2949 = lshr i32 %2948, 3
  br label %2995

2950:                                             ; preds = %2956, %2942
  %2951 = phi ptr [ %2954, %2956 ], [ %2932, %2942 ]
  %2952 = phi ptr [ %2953, %2956 ], [ %2933, %2942 ]
  %2953 = getelementptr i8, ptr %2952, i32 4
  %2954 = getelementptr i8, ptr %2951, i32 4
  %2955 = icmp ult ptr %2954, %2940
  br i1 %2955, label %2956, label %2968

2956:                                             ; preds = %2950
  %2957 = load i32, ptr %2953, align 1
  %2958 = load i32, ptr %2954, align 1
  %2959 = xor i32 %2958, %2957
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %2950, label %2961

2961:                                             ; preds = %2956
  %2962 = tail call i32 @llvm.cttz.i32(i32 %2959, i1 true) #4, !range !8
  %2963 = lshr i32 %2962, 3
  %2964 = getelementptr i8, ptr %2954, i32 %2963
  %2965 = ptrtoint ptr %2964 to i32
  %2966 = ptrtoint ptr %2932 to i32
  %2967 = sub i32 %2965, %2966
  br label %2995

2968:                                             ; preds = %2950, %2930
  %2969 = phi ptr [ %2932, %2930 ], [ %2954, %2950 ]
  %2970 = phi ptr [ %2933, %2930 ], [ %2953, %2950 ]
  %2971 = getelementptr i8, ptr %2939, i32 -1
  %2972 = icmp ult ptr %2969, %2971
  br i1 %2972, label %2973, label %2980

2973:                                             ; preds = %2968
  %2974 = load i16, ptr %2970, align 1
  %2975 = load i16, ptr %2969, align 1
  %2976 = icmp eq i16 %2974, %2975
  br i1 %2976, label %2977, label %2980

2977:                                             ; preds = %2973
  %2978 = getelementptr i8, ptr %2969, i32 2
  %2979 = getelementptr i8, ptr %2970, i32 2
  br label %2980

2980:                                             ; preds = %2977, %2973, %2968
  %2981 = phi ptr [ %2978, %2977 ], [ %2969, %2973 ], [ %2969, %2968 ]
  %2982 = phi ptr [ %2979, %2977 ], [ %2970, %2973 ], [ %2970, %2968 ]
  %2983 = icmp ult ptr %2981, %2939
  br i1 %2983, label %2984, label %2990

2984:                                             ; preds = %2980
  %2985 = load i8, ptr %2982, align 1
  %2986 = load i8, ptr %2981, align 1
  %2987 = icmp eq i8 %2985, %2986
  %2988 = zext i1 %2987 to i32
  %2989 = getelementptr i8, ptr %2981, i32 %2988
  br label %2990

2990:                                             ; preds = %2984, %2980
  %2991 = phi ptr [ %2981, %2980 ], [ %2989, %2984 ]
  %2992 = ptrtoint ptr %2991 to i32
  %2993 = ptrtoint ptr %2932 to i32
  %2994 = sub i32 %2992, %2993
  br label %2995

2995:                                             ; preds = %2990, %2961, %2947
  %2996 = phi i32 [ %2994, %2990 ], [ %2949, %2947 ], [ %2967, %2961 ]
  %2997 = getelementptr i8, ptr %2933, i32 %2996
  %2998 = icmp eq ptr %2997, %2931
  br i1 %2998, label %2999, label %3057

2999:                                             ; preds = %2995
  %3000 = getelementptr i8, ptr %2932, i32 %2996
  %3001 = icmp ugt ptr %2882, %3000
  br i1 %3001, label %3002, label %3028

3002:                                             ; preds = %2999
  %3003 = load i32, ptr %2834, align 1
  %3004 = load i32, ptr %3000, align 1
  %3005 = xor i32 %3004, %3003
  %3006 = icmp eq i32 %3005, 0
  br i1 %3006, label %3010, label %3007

3007:                                             ; preds = %3002
  %3008 = tail call i32 @llvm.cttz.i32(i32 %3005, i1 true) #4, !range !8
  %3009 = lshr i32 %3008, 3
  br label %3054

3010:                                             ; preds = %3016, %3002
  %3011 = phi ptr [ %3014, %3016 ], [ %3000, %3002 ]
  %3012 = phi ptr [ %3013, %3016 ], [ %2834, %3002 ]
  %3013 = getelementptr i8, ptr %3012, i32 4
  %3014 = getelementptr i8, ptr %3011, i32 4
  %3015 = icmp ult ptr %3014, %2882
  br i1 %3015, label %3016, label %3028

3016:                                             ; preds = %3010
  %3017 = load i32, ptr %3013, align 1
  %3018 = load i32, ptr %3014, align 1
  %3019 = xor i32 %3018, %3017
  %3020 = icmp eq i32 %3019, 0
  br i1 %3020, label %3010, label %3021

3021:                                             ; preds = %3016
  %3022 = tail call i32 @llvm.cttz.i32(i32 %3019, i1 true) #4, !range !8
  %3023 = lshr i32 %3022, 3
  %3024 = getelementptr i8, ptr %3014, i32 %3023
  %3025 = ptrtoint ptr %3024 to i32
  %3026 = ptrtoint ptr %3000 to i32
  %3027 = sub i32 %3025, %3026
  br label %3054

3028:                                             ; preds = %3010, %2999
  %3029 = phi ptr [ %3000, %2999 ], [ %3014, %3010 ]
  %3030 = phi ptr [ %2834, %2999 ], [ %3013, %3010 ]
  %3031 = icmp ult ptr %3029, %2883
  br i1 %3031, label %3032, label %3039

3032:                                             ; preds = %3028
  %3033 = load i16, ptr %3030, align 1
  %3034 = load i16, ptr %3029, align 1
  %3035 = icmp eq i16 %3033, %3034
  br i1 %3035, label %3036, label %3039

3036:                                             ; preds = %3032
  %3037 = getelementptr i8, ptr %3029, i32 2
  %3038 = getelementptr i8, ptr %3030, i32 2
  br label %3039

3039:                                             ; preds = %3036, %3032, %3028
  %3040 = phi ptr [ %3037, %3036 ], [ %3029, %3032 ], [ %3029, %3028 ]
  %3041 = phi ptr [ %3038, %3036 ], [ %3030, %3032 ], [ %3030, %3028 ]
  %3042 = icmp ult ptr %3040, %2835
  br i1 %3042, label %3043, label %3049

3043:                                             ; preds = %3039
  %3044 = load i8, ptr %3041, align 1
  %3045 = load i8, ptr %3040, align 1
  %3046 = icmp eq i8 %3044, %3045
  %3047 = zext i1 %3046 to i32
  %3048 = getelementptr i8, ptr %3040, i32 %3047
  br label %3049

3049:                                             ; preds = %3043, %3039
  %3050 = phi ptr [ %3040, %3039 ], [ %3048, %3043 ]
  %3051 = ptrtoint ptr %3050 to i32
  %3052 = ptrtoint ptr %3000 to i32
  %3053 = sub i32 %3051, %3052
  br label %3054

3054:                                             ; preds = %3049, %3021, %3007
  %3055 = phi i32 [ %3053, %3049 ], [ %3009, %3007 ], [ %3027, %3021 ]
  %3056 = add i32 %3055, %2996
  br label %3057

3057:                                             ; preds = %3054, %2995
  %3058 = phi i32 [ %3056, %3054 ], [ %2996, %2995 ]
  %3059 = add i32 %3058, 4
  %3060 = ptrtoint ptr %2927 to i32
  %3061 = ptrtoint ptr %2893 to i32
  %3062 = sub i32 %3060, %3061
  %3063 = add i32 %3058, 1
  %3064 = getelementptr i8, ptr %2893, i32 %3062
  %3065 = icmp ugt ptr %3064, %2884
  %3066 = load ptr, ptr %2885, align 4
  br i1 %3065, label %3088, label %3067

3067:                                             ; preds = %3057
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3066, ptr noundef align 1 dereferenceable(16) %2893, i32 16, i1 false) #4
  %3068 = icmp ugt i32 %3062, 16
  %3069 = load ptr, ptr %2885, align 4
  br i1 %3068, label %3072, label %3070

3070:                                             ; preds = %3067
  %3071 = getelementptr i8, ptr %3069, i32 %3062
  store ptr %3071, ptr %2885, align 4
  br label %3131

3072:                                             ; preds = %3067
  %3073 = getelementptr i8, ptr %3069, i32 16
  %3074 = getelementptr i8, ptr %2893, i32 16
  %3075 = add i32 %3062, -16
  %3076 = getelementptr i8, ptr %3069, i32 %3062
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3073, ptr noundef align 1 dereferenceable(16) %3074, i32 16, i1 false) #4
  %3077 = icmp slt i32 %3075, 17
  br i1 %3077, label %3120, label %3078

3078:                                             ; preds = %3072
  %3079 = getelementptr i8, ptr %3069, i32 32
  br label %3080

3080:                                             ; preds = %3080, %3078
  %3081 = phi ptr [ %3074, %3078 ], [ %3085, %3080 ]
  %3082 = phi ptr [ %3079, %3078 ], [ %3086, %3080 ]
  %3083 = getelementptr i8, ptr %3081, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3082, ptr noundef align 1 dereferenceable(16) %3083, i32 16, i1 false) #4
  %3084 = getelementptr i8, ptr %3082, i32 16
  %3085 = getelementptr i8, ptr %3081, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3084, ptr noundef align 1 dereferenceable(16) %3085, i32 16, i1 false) #4
  %3086 = getelementptr i8, ptr %3082, i32 32
  %3087 = icmp ult ptr %3086, %3076
  br i1 %3087, label %3080, label %3120

3088:                                             ; preds = %3057
  %3089 = ptrtoint ptr %3064 to i32
  %3090 = icmp ult ptr %2884, %2893
  br i1 %3090, label %3105, label %3091

3091:                                             ; preds = %3088
  %3092 = sub i32 %2886, %3061
  %3093 = getelementptr i8, ptr %3066, i32 %3092
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3066, ptr noundef align 1 dereferenceable(16) %2893, i32 16, i1 false) #4
  %3094 = icmp slt i32 %3092, 17
  br i1 %3094, label %3105, label %3095

3095:                                             ; preds = %3091
  %3096 = getelementptr i8, ptr %3066, i32 16
  br label %3097

3097:                                             ; preds = %3097, %3095
  %3098 = phi ptr [ %2893, %3095 ], [ %3102, %3097 ]
  %3099 = phi ptr [ %3096, %3095 ], [ %3103, %3097 ]
  %3100 = getelementptr i8, ptr %3098, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3099, ptr noundef align 1 dereferenceable(16) %3100, i32 16, i1 false) #4
  %3101 = getelementptr i8, ptr %3099, i32 16
  %3102 = getelementptr i8, ptr %3098, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3101, ptr noundef align 1 dereferenceable(16) %3102, i32 16, i1 false) #4
  %3103 = getelementptr i8, ptr %3099, i32 32
  %3104 = icmp ult ptr %3103, %3093
  br i1 %3104, label %3097, label %3105

3105:                                             ; preds = %3097, %3091, %3088
  %3106 = phi ptr [ %2884, %3091 ], [ %2893, %3088 ], [ %2884, %3097 ]
  %3107 = phi ptr [ %3093, %3091 ], [ %3066, %3088 ], [ %3093, %3097 ]
  %3108 = icmp ult ptr %3106, %3064
  br i1 %3108, label %3109, label %3120

3109:                                             ; preds = %3105
  %3110 = ptrtoint ptr %3106 to i32
  %3111 = sub i32 %3089, %3110
  %3112 = getelementptr i8, ptr %3106, i32 %3111
  br label %3113

3113:                                             ; preds = %3113, %3109
  %3114 = phi ptr [ %3118, %3113 ], [ %3107, %3109 ]
  %3115 = phi ptr [ %3116, %3113 ], [ %3106, %3109 ]
  %3116 = getelementptr i8, ptr %3115, i32 1
  %3117 = load i8, ptr %3115, align 1
  %3118 = getelementptr i8, ptr %3114, i32 1
  store i8 %3117, ptr %3114, align 1
  %3119 = icmp eq ptr %3116, %3112
  br i1 %3119, label %3120, label %3113

3120:                                             ; preds = %3113, %3105, %3080, %3072
  %3121 = load ptr, ptr %2885, align 4
  %3122 = getelementptr i8, ptr %3121, i32 %3062
  store ptr %3122, ptr %2885, align 4
  %3123 = icmp ugt i32 %3062, 65535
  br i1 %3123, label %3124, label %3131

3124:                                             ; preds = %3120
  store i32 1, ptr %2887, align 4
  %3125 = load ptr, ptr %2888, align 4
  %3126 = load ptr, ptr %1, align 4
  %3127 = ptrtoint ptr %3125 to i32
  %3128 = ptrtoint ptr %3126 to i32
  %3129 = sub i32 %3127, %3128
  %3130 = ashr exact i32 %3129, 3
  store i32 %3130, ptr %2889, align 4
  br label %3131

3131:                                             ; preds = %3124, %3120, %3070
  %3132 = trunc i32 %3062 to i16
  %3133 = load ptr, ptr %2888, align 4
  %3134 = getelementptr inbounds %struct.seqDef_s, ptr %3133, i32 0, i32 1
  store i16 %3132, ptr %3134, align 4
  %3135 = load ptr, ptr %2888, align 4
  store i32 1, ptr %3135, align 4
  %3136 = icmp ugt i32 %3063, 65535
  br i1 %3136, label %3139, label %3137

3137:                                             ; preds = %3131
  %3138 = load ptr, ptr %2888, align 4
  br label %3977

3139:                                             ; preds = %3131
  store i32 2, ptr %2887, align 4
  %3140 = load ptr, ptr %2888, align 4
  %3141 = load ptr, ptr %1, align 4
  %3142 = ptrtoint ptr %3140 to i32
  %3143 = ptrtoint ptr %3141 to i32
  %3144 = sub i32 %3142, %3143
  %3145 = ashr exact i32 %3144, 3
  store i32 %3145, ptr %2889, align 4
  br label %3977

3146:                                             ; preds = %2925, %2891
  %3147 = icmp ugt i32 %2910, %2833
  br i1 %3147, label %3148, label %3230

3148:                                             ; preds = %3146
  %3149 = load i64, ptr %2913, align 1
  %3150 = load i64, ptr %2892, align 1
  %3151 = icmp eq i64 %3149, %3150
  br i1 %3151, label %3152, label %3384

3152:                                             ; preds = %3148
  %3153 = getelementptr i8, ptr %2892, i32 8
  %3154 = getelementptr i8, ptr %2913, i32 8
  %3155 = icmp ugt ptr %2882, %3153
  br i1 %3155, label %3156, label %3182

3156:                                             ; preds = %3152
  %3157 = load i32, ptr %3154, align 1
  %3158 = load i32, ptr %3153, align 1
  %3159 = xor i32 %3158, %3157
  %3160 = icmp eq i32 %3159, 0
  br i1 %3160, label %3164, label %3161

3161:                                             ; preds = %3156
  %3162 = tail call i32 @llvm.cttz.i32(i32 %3159, i1 true) #4, !range !8
  %3163 = lshr i32 %3162, 3
  br label %3208

3164:                                             ; preds = %3170, %3156
  %3165 = phi ptr [ %3168, %3170 ], [ %3153, %3156 ]
  %3166 = phi ptr [ %3167, %3170 ], [ %3154, %3156 ]
  %3167 = getelementptr i8, ptr %3166, i32 4
  %3168 = getelementptr i8, ptr %3165, i32 4
  %3169 = icmp ult ptr %3168, %2882
  br i1 %3169, label %3170, label %3182

3170:                                             ; preds = %3164
  %3171 = load i32, ptr %3167, align 1
  %3172 = load i32, ptr %3168, align 1
  %3173 = xor i32 %3172, %3171
  %3174 = icmp eq i32 %3173, 0
  br i1 %3174, label %3164, label %3175

3175:                                             ; preds = %3170
  %3176 = tail call i32 @llvm.cttz.i32(i32 %3173, i1 true) #4, !range !8
  %3177 = lshr i32 %3176, 3
  %3178 = getelementptr i8, ptr %3168, i32 %3177
  %3179 = ptrtoint ptr %3178 to i32
  %3180 = ptrtoint ptr %3153 to i32
  %3181 = sub i32 %3179, %3180
  br label %3208

3182:                                             ; preds = %3164, %3152
  %3183 = phi ptr [ %3153, %3152 ], [ %3168, %3164 ]
  %3184 = phi ptr [ %3154, %3152 ], [ %3167, %3164 ]
  %3185 = icmp ult ptr %3183, %2883
  br i1 %3185, label %3186, label %3193

3186:                                             ; preds = %3182
  %3187 = load i16, ptr %3184, align 1
  %3188 = load i16, ptr %3183, align 1
  %3189 = icmp eq i16 %3187, %3188
  br i1 %3189, label %3190, label %3193

3190:                                             ; preds = %3186
  %3191 = getelementptr i8, ptr %3183, i32 2
  %3192 = getelementptr i8, ptr %3184, i32 2
  br label %3193

3193:                                             ; preds = %3190, %3186, %3182
  %3194 = phi ptr [ %3191, %3190 ], [ %3183, %3186 ], [ %3183, %3182 ]
  %3195 = phi ptr [ %3192, %3190 ], [ %3184, %3186 ], [ %3184, %3182 ]
  %3196 = icmp ult ptr %3194, %2835
  br i1 %3196, label %3197, label %3203

3197:                                             ; preds = %3193
  %3198 = load i8, ptr %3195, align 1
  %3199 = load i8, ptr %3194, align 1
  %3200 = icmp eq i8 %3198, %3199
  %3201 = zext i1 %3200 to i32
  %3202 = getelementptr i8, ptr %3194, i32 %3201
  br label %3203

3203:                                             ; preds = %3197, %3193
  %3204 = phi ptr [ %3194, %3193 ], [ %3202, %3197 ]
  %3205 = ptrtoint ptr %3204 to i32
  %3206 = ptrtoint ptr %3153 to i32
  %3207 = sub i32 %3205, %3206
  br label %3208

3208:                                             ; preds = %3203, %3175, %3161
  %3209 = phi i32 [ %3207, %3203 ], [ %3163, %3161 ], [ %3181, %3175 ]
  %3210 = add i32 %3209, 8
  %3211 = ptrtoint ptr %2913 to i32
  %3212 = sub i32 %2907, %3211
  %3213 = icmp ugt ptr %2892, %2893
  %3214 = icmp ugt ptr %2913, %2834
  %3215 = and i1 %3213, %3214
  br i1 %3215, label %3216, label %3886

3216:                                             ; preds = %3225, %3208
  %3217 = phi ptr [ %3220, %3225 ], [ %2892, %3208 ]
  %3218 = phi ptr [ %3222, %3225 ], [ %2913, %3208 ]
  %3219 = phi i32 [ %3226, %3225 ], [ %3210, %3208 ]
  %3220 = getelementptr i8, ptr %3217, i32 -1
  %3221 = load i8, ptr %3220, align 1
  %3222 = getelementptr i8, ptr %3218, i32 -1
  %3223 = load i8, ptr %3222, align 1
  %3224 = icmp eq i8 %3221, %3223
  br i1 %3224, label %3225, label %3886

3225:                                             ; preds = %3216
  %3226 = add i32 %3219, 1
  %3227 = icmp ugt ptr %3220, %2893
  %3228 = icmp ugt ptr %3222, %2834
  %3229 = and i1 %3227, %3228
  br i1 %3229, label %3216, label %3886

3230:                                             ; preds = %3146
  %3231 = getelementptr i32, ptr %2843, i32 %2904
  %3232 = load i32, ptr %3231, align 4
  %3233 = getelementptr i8, ptr %2849, i32 %3232
  %3234 = icmp ugt ptr %3233, %2850
  br i1 %3234, label %3235, label %3387

3235:                                             ; preds = %3230
  %3236 = load i64, ptr %3233, align 1
  %3237 = load i64, ptr %2892, align 1
  %3238 = icmp eq i64 %3236, %3237
  br i1 %3238, label %3239, label %3387

3239:                                             ; preds = %3235
  %3240 = getelementptr i8, ptr %2892, i32 8
  %3241 = getelementptr i8, ptr %3233, i32 8
  %3242 = ptrtoint ptr %3241 to i32
  %3243 = sub i32 %2852, %3242
  %3244 = getelementptr i8, ptr %3240, i32 %3243
  %3245 = icmp ult ptr %3244, %2835
  %3246 = select i1 %3245, ptr %3244, ptr %2835
  %3247 = getelementptr i8, ptr %3246, i32 -3
  %3248 = icmp ugt ptr %3247, %3240
  br i1 %3248, label %3249, label %3275

3249:                                             ; preds = %3239
  %3250 = load i32, ptr %3241, align 1
  %3251 = load i32, ptr %3240, align 1
  %3252 = xor i32 %3251, %3250
  %3253 = icmp eq i32 %3252, 0
  br i1 %3253, label %3257, label %3254

3254:                                             ; preds = %3249
  %3255 = tail call i32 @llvm.cttz.i32(i32 %3252, i1 true) #4, !range !8
  %3256 = lshr i32 %3255, 3
  br label %3302

3257:                                             ; preds = %3263, %3249
  %3258 = phi ptr [ %3261, %3263 ], [ %3240, %3249 ]
  %3259 = phi ptr [ %3260, %3263 ], [ %3241, %3249 ]
  %3260 = getelementptr i8, ptr %3259, i32 4
  %3261 = getelementptr i8, ptr %3258, i32 4
  %3262 = icmp ult ptr %3261, %3247
  br i1 %3262, label %3263, label %3275

3263:                                             ; preds = %3257
  %3264 = load i32, ptr %3260, align 1
  %3265 = load i32, ptr %3261, align 1
  %3266 = xor i32 %3265, %3264
  %3267 = icmp eq i32 %3266, 0
  br i1 %3267, label %3257, label %3268

3268:                                             ; preds = %3263
  %3269 = tail call i32 @llvm.cttz.i32(i32 %3266, i1 true) #4, !range !8
  %3270 = lshr i32 %3269, 3
  %3271 = getelementptr i8, ptr %3261, i32 %3270
  %3272 = ptrtoint ptr %3271 to i32
  %3273 = ptrtoint ptr %3240 to i32
  %3274 = sub i32 %3272, %3273
  br label %3302

3275:                                             ; preds = %3257, %3239
  %3276 = phi ptr [ %3240, %3239 ], [ %3261, %3257 ]
  %3277 = phi ptr [ %3241, %3239 ], [ %3260, %3257 ]
  %3278 = getelementptr i8, ptr %3246, i32 -1
  %3279 = icmp ult ptr %3276, %3278
  br i1 %3279, label %3280, label %3287

3280:                                             ; preds = %3275
  %3281 = load i16, ptr %3277, align 1
  %3282 = load i16, ptr %3276, align 1
  %3283 = icmp eq i16 %3281, %3282
  br i1 %3283, label %3284, label %3287

3284:                                             ; preds = %3280
  %3285 = getelementptr i8, ptr %3276, i32 2
  %3286 = getelementptr i8, ptr %3277, i32 2
  br label %3287

3287:                                             ; preds = %3284, %3280, %3275
  %3288 = phi ptr [ %3285, %3284 ], [ %3276, %3280 ], [ %3276, %3275 ]
  %3289 = phi ptr [ %3286, %3284 ], [ %3277, %3280 ], [ %3277, %3275 ]
  %3290 = icmp ult ptr %3288, %3246
  br i1 %3290, label %3291, label %3297

3291:                                             ; preds = %3287
  %3292 = load i8, ptr %3289, align 1
  %3293 = load i8, ptr %3288, align 1
  %3294 = icmp eq i8 %3292, %3293
  %3295 = zext i1 %3294 to i32
  %3296 = getelementptr i8, ptr %3288, i32 %3295
  br label %3297

3297:                                             ; preds = %3291, %3287
  %3298 = phi ptr [ %3288, %3287 ], [ %3296, %3291 ]
  %3299 = ptrtoint ptr %3298 to i32
  %3300 = ptrtoint ptr %3240 to i32
  %3301 = sub i32 %3299, %3300
  br label %3302

3302:                                             ; preds = %3297, %3268, %3254
  %3303 = phi i32 [ %3301, %3297 ], [ %3256, %3254 ], [ %3274, %3268 ]
  %3304 = getelementptr i8, ptr %3241, i32 %3303
  %3305 = icmp eq ptr %3304, %2851
  br i1 %3305, label %3306, label %3364

3306:                                             ; preds = %3302
  %3307 = getelementptr i8, ptr %3240, i32 %3303
  %3308 = icmp ugt ptr %2882, %3307
  br i1 %3308, label %3309, label %3335

3309:                                             ; preds = %3306
  %3310 = load i32, ptr %2834, align 1
  %3311 = load i32, ptr %3307, align 1
  %3312 = xor i32 %3311, %3310
  %3313 = icmp eq i32 %3312, 0
  br i1 %3313, label %3317, label %3314

3314:                                             ; preds = %3309
  %3315 = tail call i32 @llvm.cttz.i32(i32 %3312, i1 true) #4, !range !8
  %3316 = lshr i32 %3315, 3
  br label %3361

3317:                                             ; preds = %3323, %3309
  %3318 = phi ptr [ %3321, %3323 ], [ %3307, %3309 ]
  %3319 = phi ptr [ %3320, %3323 ], [ %2834, %3309 ]
  %3320 = getelementptr i8, ptr %3319, i32 4
  %3321 = getelementptr i8, ptr %3318, i32 4
  %3322 = icmp ult ptr %3321, %2882
  br i1 %3322, label %3323, label %3335

3323:                                             ; preds = %3317
  %3324 = load i32, ptr %3320, align 1
  %3325 = load i32, ptr %3321, align 1
  %3326 = xor i32 %3325, %3324
  %3327 = icmp eq i32 %3326, 0
  br i1 %3327, label %3317, label %3328

3328:                                             ; preds = %3323
  %3329 = tail call i32 @llvm.cttz.i32(i32 %3326, i1 true) #4, !range !8
  %3330 = lshr i32 %3329, 3
  %3331 = getelementptr i8, ptr %3321, i32 %3330
  %3332 = ptrtoint ptr %3331 to i32
  %3333 = ptrtoint ptr %3307 to i32
  %3334 = sub i32 %3332, %3333
  br label %3361

3335:                                             ; preds = %3317, %3306
  %3336 = phi ptr [ %3307, %3306 ], [ %3321, %3317 ]
  %3337 = phi ptr [ %2834, %3306 ], [ %3320, %3317 ]
  %3338 = icmp ult ptr %3336, %2883
  br i1 %3338, label %3339, label %3346

3339:                                             ; preds = %3335
  %3340 = load i16, ptr %3337, align 1
  %3341 = load i16, ptr %3336, align 1
  %3342 = icmp eq i16 %3340, %3341
  br i1 %3342, label %3343, label %3346

3343:                                             ; preds = %3339
  %3344 = getelementptr i8, ptr %3336, i32 2
  %3345 = getelementptr i8, ptr %3337, i32 2
  br label %3346

3346:                                             ; preds = %3343, %3339, %3335
  %3347 = phi ptr [ %3344, %3343 ], [ %3336, %3339 ], [ %3336, %3335 ]
  %3348 = phi ptr [ %3345, %3343 ], [ %3337, %3339 ], [ %3337, %3335 ]
  %3349 = icmp ult ptr %3347, %2835
  br i1 %3349, label %3350, label %3356

3350:                                             ; preds = %3346
  %3351 = load i8, ptr %3348, align 1
  %3352 = load i8, ptr %3347, align 1
  %3353 = icmp eq i8 %3351, %3352
  %3354 = zext i1 %3353 to i32
  %3355 = getelementptr i8, ptr %3347, i32 %3354
  br label %3356

3356:                                             ; preds = %3350, %3346
  %3357 = phi ptr [ %3347, %3346 ], [ %3355, %3350 ]
  %3358 = ptrtoint ptr %3357 to i32
  %3359 = ptrtoint ptr %3307 to i32
  %3360 = sub i32 %3358, %3359
  br label %3361

3361:                                             ; preds = %3356, %3328, %3314
  %3362 = phi i32 [ %3360, %3356 ], [ %3316, %3314 ], [ %3334, %3328 ]
  %3363 = add i32 %3362, %3303
  br label %3364

3364:                                             ; preds = %3361, %3302
  %3365 = phi i32 [ %3363, %3361 ], [ %3303, %3302 ]
  %3366 = add i32 %3365, 8
  %3367 = add i32 %2855, %3232
  %3368 = sub i32 %2908, %3367
  %3369 = icmp ugt ptr %2892, %2893
  br i1 %3369, label %3370, label %3886

3370:                                             ; preds = %3379, %3364
  %3371 = phi ptr [ %3374, %3379 ], [ %2892, %3364 ]
  %3372 = phi ptr [ %3376, %3379 ], [ %3233, %3364 ]
  %3373 = phi i32 [ %3380, %3379 ], [ %3366, %3364 ]
  %3374 = getelementptr i8, ptr %3371, i32 -1
  %3375 = load i8, ptr %3374, align 1
  %3376 = getelementptr i8, ptr %3372, i32 -1
  %3377 = load i8, ptr %3376, align 1
  %3378 = icmp eq i8 %3375, %3377
  br i1 %3378, label %3379, label %3886

3379:                                             ; preds = %3370
  %3380 = add i32 %3373, 1
  %3381 = icmp ugt ptr %3374, %2893
  %3382 = icmp ugt ptr %3376, %2850
  %3383 = and i1 %3381, %3382
  br i1 %3383, label %3370, label %3886

3384:                                             ; preds = %3148
  %3385 = trunc i64 %3150 to i32
  %3386 = icmp ugt i32 %2912, %2833
  br i1 %3386, label %3391, label %3395

3387:                                             ; preds = %3235, %3230
  %3388 = icmp ugt i32 %2912, %2833
  br i1 %3388, label %3389, label %3395

3389:                                             ; preds = %3387
  %3390 = load i32, ptr %2892, align 1
  br label %3391

3391:                                             ; preds = %3389, %3384
  %3392 = phi i32 [ %3390, %3389 ], [ %3385, %3384 ]
  %3393 = load i32, ptr %2914, align 1
  %3394 = icmp eq i32 %3393, %3392
  br i1 %3394, label %3411, label %3405

3395:                                             ; preds = %3387, %3384
  %3396 = getelementptr i32, ptr %2845, i32 %2906
  %3397 = load i32, ptr %3396, align 4
  %3398 = getelementptr i8, ptr %2849, i32 %3397
  %3399 = icmp ugt ptr %3398, %2850
  br i1 %3399, label %3400, label %3405

3400:                                             ; preds = %3395
  %3401 = add i32 %3397, %2855
  %3402 = load i32, ptr %3398, align 1
  %3403 = load i32, ptr %2892, align 1
  %3404 = icmp eq i32 %3402, %3403
  br i1 %3404, label %3411, label %3405

3405:                                             ; preds = %3400, %3395, %3391
  %3406 = ptrtoint ptr %2893 to i32
  %3407 = sub i32 %2907, %3406
  %3408 = ashr i32 %3407, 8
  %3409 = add nsw i32 %3408, 1
  %3410 = getelementptr i8, ptr %2892, i32 %3409
  br label %4202

3411:                                             ; preds = %3400, %3391
  %3412 = phi i32 [ %2912, %3391 ], [ %3401, %3400 ]
  %3413 = phi ptr [ %2914, %3391 ], [ %3398, %3400 ]
  %3414 = getelementptr i8, ptr %2892, i32 1
  %3415 = load i64, ptr %3414, align 1
  %3416 = mul i64 %3415, -3523014627327384477
  %3417 = lshr i64 %3416, %2875
  %3418 = trunc i64 %3417 to i32
  %3419 = getelementptr i32, ptr %2813, i32 %3418
  %3420 = load i32, ptr %3419, align 4
  %3421 = getelementptr i8, ptr %2817, i32 %3420
  store i32 %2915, ptr %3419, align 4
  %3422 = icmp ugt i32 %3420, %2833
  br i1 %3422, label %3423, label %3506

3423:                                             ; preds = %3411
  %3424 = load i64, ptr %3421, align 1
  %3425 = load i64, ptr %3414, align 1
  %3426 = icmp eq i64 %3424, %3425
  br i1 %3426, label %3427, label %3662

3427:                                             ; preds = %3423
  %3428 = getelementptr i8, ptr %2892, i32 9
  %3429 = getelementptr i8, ptr %3421, i32 8
  %3430 = icmp ugt ptr %2882, %3428
  br i1 %3430, label %3431, label %3457

3431:                                             ; preds = %3427
  %3432 = load i32, ptr %3429, align 1
  %3433 = load i32, ptr %3428, align 1
  %3434 = xor i32 %3433, %3432
  %3435 = icmp eq i32 %3434, 0
  br i1 %3435, label %3439, label %3436

3436:                                             ; preds = %3431
  %3437 = tail call i32 @llvm.cttz.i32(i32 %3434, i1 true) #4, !range !8
  %3438 = lshr i32 %3437, 3
  br label %3483

3439:                                             ; preds = %3445, %3431
  %3440 = phi ptr [ %3443, %3445 ], [ %3428, %3431 ]
  %3441 = phi ptr [ %3442, %3445 ], [ %3429, %3431 ]
  %3442 = getelementptr i8, ptr %3441, i32 4
  %3443 = getelementptr i8, ptr %3440, i32 4
  %3444 = icmp ult ptr %3443, %2882
  br i1 %3444, label %3445, label %3457

3445:                                             ; preds = %3439
  %3446 = load i32, ptr %3442, align 1
  %3447 = load i32, ptr %3443, align 1
  %3448 = xor i32 %3447, %3446
  %3449 = icmp eq i32 %3448, 0
  br i1 %3449, label %3439, label %3450

3450:                                             ; preds = %3445
  %3451 = tail call i32 @llvm.cttz.i32(i32 %3448, i1 true) #4, !range !8
  %3452 = lshr i32 %3451, 3
  %3453 = getelementptr i8, ptr %3443, i32 %3452
  %3454 = ptrtoint ptr %3453 to i32
  %3455 = ptrtoint ptr %3428 to i32
  %3456 = sub i32 %3454, %3455
  br label %3483

3457:                                             ; preds = %3439, %3427
  %3458 = phi ptr [ %3428, %3427 ], [ %3443, %3439 ]
  %3459 = phi ptr [ %3429, %3427 ], [ %3442, %3439 ]
  %3460 = icmp ult ptr %3458, %2883
  br i1 %3460, label %3461, label %3468

3461:                                             ; preds = %3457
  %3462 = load i16, ptr %3459, align 1
  %3463 = load i16, ptr %3458, align 1
  %3464 = icmp eq i16 %3462, %3463
  br i1 %3464, label %3465, label %3468

3465:                                             ; preds = %3461
  %3466 = getelementptr i8, ptr %3458, i32 2
  %3467 = getelementptr i8, ptr %3459, i32 2
  br label %3468

3468:                                             ; preds = %3465, %3461, %3457
  %3469 = phi ptr [ %3466, %3465 ], [ %3458, %3461 ], [ %3458, %3457 ]
  %3470 = phi ptr [ %3467, %3465 ], [ %3459, %3461 ], [ %3459, %3457 ]
  %3471 = icmp ult ptr %3469, %2835
  br i1 %3471, label %3472, label %3478

3472:                                             ; preds = %3468
  %3473 = load i8, ptr %3470, align 1
  %3474 = load i8, ptr %3469, align 1
  %3475 = icmp eq i8 %3473, %3474
  %3476 = zext i1 %3475 to i32
  %3477 = getelementptr i8, ptr %3469, i32 %3476
  br label %3478

3478:                                             ; preds = %3472, %3468
  %3479 = phi ptr [ %3469, %3468 ], [ %3477, %3472 ]
  %3480 = ptrtoint ptr %3479 to i32
  %3481 = ptrtoint ptr %3428 to i32
  %3482 = sub i32 %3480, %3481
  br label %3483

3483:                                             ; preds = %3478, %3450, %3436
  %3484 = phi i32 [ %3482, %3478 ], [ %3438, %3436 ], [ %3456, %3450 ]
  %3485 = add i32 %3484, 8
  %3486 = ptrtoint ptr %3414 to i32
  %3487 = ptrtoint ptr %3421 to i32
  %3488 = sub i32 %3486, %3487
  %3489 = icmp ugt ptr %3414, %2893
  %3490 = icmp ugt ptr %3421, %2834
  %3491 = and i1 %3489, %3490
  br i1 %3491, label %3492, label %3886

3492:                                             ; preds = %3501, %3483
  %3493 = phi ptr [ %3498, %3501 ], [ %3421, %3483 ]
  %3494 = phi ptr [ %3496, %3501 ], [ %3414, %3483 ]
  %3495 = phi i32 [ %3502, %3501 ], [ %3485, %3483 ]
  %3496 = getelementptr i8, ptr %3494, i32 -1
  %3497 = load i8, ptr %3496, align 1
  %3498 = getelementptr i8, ptr %3493, i32 -1
  %3499 = load i8, ptr %3498, align 1
  %3500 = icmp eq i8 %3497, %3499
  br i1 %3500, label %3501, label %3886

3501:                                             ; preds = %3492
  %3502 = add i32 %3495, 1
  %3503 = icmp ugt ptr %3496, %2893
  %3504 = icmp ugt ptr %3498, %2834
  %3505 = and i1 %3504, %3503
  br i1 %3505, label %3492, label %3886

3506:                                             ; preds = %3411
  %3507 = lshr i64 %3416, %2879
  %3508 = trunc i64 %3507 to i32
  %3509 = getelementptr i32, ptr %2843, i32 %3508
  %3510 = load i32, ptr %3509, align 4
  %3511 = getelementptr i8, ptr %2849, i32 %3510
  %3512 = icmp ugt ptr %3511, %2850
  br i1 %3512, label %3513, label %3662

3513:                                             ; preds = %3506
  %3514 = load i64, ptr %3511, align 1
  %3515 = load i64, ptr %3414, align 1
  %3516 = icmp eq i64 %3514, %3515
  br i1 %3516, label %3517, label %3662

3517:                                             ; preds = %3513
  %3518 = getelementptr i8, ptr %2892, i32 9
  %3519 = getelementptr i8, ptr %3511, i32 8
  %3520 = ptrtoint ptr %3519 to i32
  %3521 = sub i32 %2852, %3520
  %3522 = getelementptr i8, ptr %3518, i32 %3521
  %3523 = icmp ult ptr %3522, %2835
  %3524 = select i1 %3523, ptr %3522, ptr %2835
  %3525 = getelementptr i8, ptr %3524, i32 -3
  %3526 = icmp ugt ptr %3525, %3518
  br i1 %3526, label %3527, label %3553

3527:                                             ; preds = %3517
  %3528 = load i32, ptr %3519, align 1
  %3529 = load i32, ptr %3518, align 1
  %3530 = xor i32 %3529, %3528
  %3531 = icmp eq i32 %3530, 0
  br i1 %3531, label %3535, label %3532

3532:                                             ; preds = %3527
  %3533 = tail call i32 @llvm.cttz.i32(i32 %3530, i1 true) #4, !range !8
  %3534 = lshr i32 %3533, 3
  br label %3580

3535:                                             ; preds = %3541, %3527
  %3536 = phi ptr [ %3539, %3541 ], [ %3518, %3527 ]
  %3537 = phi ptr [ %3538, %3541 ], [ %3519, %3527 ]
  %3538 = getelementptr i8, ptr %3537, i32 4
  %3539 = getelementptr i8, ptr %3536, i32 4
  %3540 = icmp ult ptr %3539, %3525
  br i1 %3540, label %3541, label %3553

3541:                                             ; preds = %3535
  %3542 = load i32, ptr %3538, align 1
  %3543 = load i32, ptr %3539, align 1
  %3544 = xor i32 %3543, %3542
  %3545 = icmp eq i32 %3544, 0
  br i1 %3545, label %3535, label %3546

3546:                                             ; preds = %3541
  %3547 = tail call i32 @llvm.cttz.i32(i32 %3544, i1 true) #4, !range !8
  %3548 = lshr i32 %3547, 3
  %3549 = getelementptr i8, ptr %3539, i32 %3548
  %3550 = ptrtoint ptr %3549 to i32
  %3551 = ptrtoint ptr %3518 to i32
  %3552 = sub i32 %3550, %3551
  br label %3580

3553:                                             ; preds = %3535, %3517
  %3554 = phi ptr [ %3518, %3517 ], [ %3539, %3535 ]
  %3555 = phi ptr [ %3519, %3517 ], [ %3538, %3535 ]
  %3556 = getelementptr i8, ptr %3524, i32 -1
  %3557 = icmp ult ptr %3554, %3556
  br i1 %3557, label %3558, label %3565

3558:                                             ; preds = %3553
  %3559 = load i16, ptr %3555, align 1
  %3560 = load i16, ptr %3554, align 1
  %3561 = icmp eq i16 %3559, %3560
  br i1 %3561, label %3562, label %3565

3562:                                             ; preds = %3558
  %3563 = getelementptr i8, ptr %3554, i32 2
  %3564 = getelementptr i8, ptr %3555, i32 2
  br label %3565

3565:                                             ; preds = %3562, %3558, %3553
  %3566 = phi ptr [ %3563, %3562 ], [ %3554, %3558 ], [ %3554, %3553 ]
  %3567 = phi ptr [ %3564, %3562 ], [ %3555, %3558 ], [ %3555, %3553 ]
  %3568 = icmp ult ptr %3566, %3524
  br i1 %3568, label %3569, label %3575

3569:                                             ; preds = %3565
  %3570 = load i8, ptr %3567, align 1
  %3571 = load i8, ptr %3566, align 1
  %3572 = icmp eq i8 %3570, %3571
  %3573 = zext i1 %3572 to i32
  %3574 = getelementptr i8, ptr %3566, i32 %3573
  br label %3575

3575:                                             ; preds = %3569, %3565
  %3576 = phi ptr [ %3566, %3565 ], [ %3574, %3569 ]
  %3577 = ptrtoint ptr %3576 to i32
  %3578 = ptrtoint ptr %3518 to i32
  %3579 = sub i32 %3577, %3578
  br label %3580

3580:                                             ; preds = %3575, %3546, %3532
  %3581 = phi i32 [ %3579, %3575 ], [ %3534, %3532 ], [ %3552, %3546 ]
  %3582 = getelementptr i8, ptr %3519, i32 %3581
  %3583 = icmp eq ptr %3582, %2851
  br i1 %3583, label %3584, label %3642

3584:                                             ; preds = %3580
  %3585 = getelementptr i8, ptr %3518, i32 %3581
  %3586 = icmp ugt ptr %2882, %3585
  br i1 %3586, label %3587, label %3613

3587:                                             ; preds = %3584
  %3588 = load i32, ptr %2834, align 1
  %3589 = load i32, ptr %3585, align 1
  %3590 = xor i32 %3589, %3588
  %3591 = icmp eq i32 %3590, 0
  br i1 %3591, label %3595, label %3592

3592:                                             ; preds = %3587
  %3593 = tail call i32 @llvm.cttz.i32(i32 %3590, i1 true) #4, !range !8
  %3594 = lshr i32 %3593, 3
  br label %3639

3595:                                             ; preds = %3601, %3587
  %3596 = phi ptr [ %3599, %3601 ], [ %3585, %3587 ]
  %3597 = phi ptr [ %3598, %3601 ], [ %2834, %3587 ]
  %3598 = getelementptr i8, ptr %3597, i32 4
  %3599 = getelementptr i8, ptr %3596, i32 4
  %3600 = icmp ult ptr %3599, %2882
  br i1 %3600, label %3601, label %3613

3601:                                             ; preds = %3595
  %3602 = load i32, ptr %3598, align 1
  %3603 = load i32, ptr %3599, align 1
  %3604 = xor i32 %3603, %3602
  %3605 = icmp eq i32 %3604, 0
  br i1 %3605, label %3595, label %3606

3606:                                             ; preds = %3601
  %3607 = tail call i32 @llvm.cttz.i32(i32 %3604, i1 true) #4, !range !8
  %3608 = lshr i32 %3607, 3
  %3609 = getelementptr i8, ptr %3599, i32 %3608
  %3610 = ptrtoint ptr %3609 to i32
  %3611 = ptrtoint ptr %3585 to i32
  %3612 = sub i32 %3610, %3611
  br label %3639

3613:                                             ; preds = %3595, %3584
  %3614 = phi ptr [ %3585, %3584 ], [ %3599, %3595 ]
  %3615 = phi ptr [ %2834, %3584 ], [ %3598, %3595 ]
  %3616 = icmp ult ptr %3614, %2883
  br i1 %3616, label %3617, label %3624

3617:                                             ; preds = %3613
  %3618 = load i16, ptr %3615, align 1
  %3619 = load i16, ptr %3614, align 1
  %3620 = icmp eq i16 %3618, %3619
  br i1 %3620, label %3621, label %3624

3621:                                             ; preds = %3617
  %3622 = getelementptr i8, ptr %3614, i32 2
  %3623 = getelementptr i8, ptr %3615, i32 2
  br label %3624

3624:                                             ; preds = %3621, %3617, %3613
  %3625 = phi ptr [ %3622, %3621 ], [ %3614, %3617 ], [ %3614, %3613 ]
  %3626 = phi ptr [ %3623, %3621 ], [ %3615, %3617 ], [ %3615, %3613 ]
  %3627 = icmp ult ptr %3625, %2835
  br i1 %3627, label %3628, label %3634

3628:                                             ; preds = %3624
  %3629 = load i8, ptr %3626, align 1
  %3630 = load i8, ptr %3625, align 1
  %3631 = icmp eq i8 %3629, %3630
  %3632 = zext i1 %3631 to i32
  %3633 = getelementptr i8, ptr %3625, i32 %3632
  br label %3634

3634:                                             ; preds = %3628, %3624
  %3635 = phi ptr [ %3625, %3624 ], [ %3633, %3628 ]
  %3636 = ptrtoint ptr %3635 to i32
  %3637 = ptrtoint ptr %3585 to i32
  %3638 = sub i32 %3636, %3637
  br label %3639

3639:                                             ; preds = %3634, %3606, %3592
  %3640 = phi i32 [ %3638, %3634 ], [ %3594, %3592 ], [ %3612, %3606 ]
  %3641 = add i32 %3640, %3581
  br label %3642

3642:                                             ; preds = %3639, %3580
  %3643 = phi i32 [ %3641, %3639 ], [ %3581, %3580 ]
  %3644 = add i32 %3643, 8
  %3645 = add i32 %2855, %3510
  %3646 = sub i32 %2915, %3645
  %3647 = icmp ugt ptr %3414, %2893
  br i1 %3647, label %3648, label %3886

3648:                                             ; preds = %3657, %3642
  %3649 = phi ptr [ %3654, %3657 ], [ %3511, %3642 ]
  %3650 = phi ptr [ %3652, %3657 ], [ %3414, %3642 ]
  %3651 = phi i32 [ %3658, %3657 ], [ %3644, %3642 ]
  %3652 = getelementptr i8, ptr %3650, i32 -1
  %3653 = load i8, ptr %3652, align 1
  %3654 = getelementptr i8, ptr %3649, i32 -1
  %3655 = load i8, ptr %3654, align 1
  %3656 = icmp eq i8 %3653, %3655
  br i1 %3656, label %3657, label %3886

3657:                                             ; preds = %3648
  %3658 = add i32 %3651, 1
  %3659 = icmp ugt ptr %3652, %2893
  %3660 = icmp ugt ptr %3654, %2850
  %3661 = and i1 %3660, %3659
  br i1 %3661, label %3648, label %3886

3662:                                             ; preds = %3513, %3506, %3423
  %3663 = icmp ult i32 %3412, %2833
  %3664 = getelementptr i8, ptr %2892, i32 4
  %3665 = getelementptr i8, ptr %3413, i32 4
  br i1 %3663, label %3666, label %3810

3666:                                             ; preds = %3662
  %3667 = ptrtoint ptr %3665 to i32
  %3668 = sub i32 %2852, %3667
  %3669 = getelementptr i8, ptr %3664, i32 %3668
  %3670 = icmp ult ptr %3669, %2835
  %3671 = select i1 %3670, ptr %3669, ptr %2835
  %3672 = getelementptr i8, ptr %3671, i32 -3
  %3673 = icmp ugt ptr %3672, %3664
  br i1 %3673, label %3674, label %3700

3674:                                             ; preds = %3666
  %3675 = load i32, ptr %3665, align 1
  %3676 = load i32, ptr %3664, align 1
  %3677 = xor i32 %3676, %3675
  %3678 = icmp eq i32 %3677, 0
  br i1 %3678, label %3682, label %3679

3679:                                             ; preds = %3674
  %3680 = tail call i32 @llvm.cttz.i32(i32 %3677, i1 true) #4, !range !8
  %3681 = lshr i32 %3680, 3
  br label %3727

3682:                                             ; preds = %3688, %3674
  %3683 = phi ptr [ %3686, %3688 ], [ %3664, %3674 ]
  %3684 = phi ptr [ %3685, %3688 ], [ %3665, %3674 ]
  %3685 = getelementptr i8, ptr %3684, i32 4
  %3686 = getelementptr i8, ptr %3683, i32 4
  %3687 = icmp ult ptr %3686, %3672
  br i1 %3687, label %3688, label %3700

3688:                                             ; preds = %3682
  %3689 = load i32, ptr %3685, align 1
  %3690 = load i32, ptr %3686, align 1
  %3691 = xor i32 %3690, %3689
  %3692 = icmp eq i32 %3691, 0
  br i1 %3692, label %3682, label %3693

3693:                                             ; preds = %3688
  %3694 = tail call i32 @llvm.cttz.i32(i32 %3691, i1 true) #4, !range !8
  %3695 = lshr i32 %3694, 3
  %3696 = getelementptr i8, ptr %3686, i32 %3695
  %3697 = ptrtoint ptr %3696 to i32
  %3698 = ptrtoint ptr %3664 to i32
  %3699 = sub i32 %3697, %3698
  br label %3727

3700:                                             ; preds = %3682, %3666
  %3701 = phi ptr [ %3664, %3666 ], [ %3686, %3682 ]
  %3702 = phi ptr [ %3665, %3666 ], [ %3685, %3682 ]
  %3703 = getelementptr i8, ptr %3671, i32 -1
  %3704 = icmp ult ptr %3701, %3703
  br i1 %3704, label %3705, label %3712

3705:                                             ; preds = %3700
  %3706 = load i16, ptr %3702, align 1
  %3707 = load i16, ptr %3701, align 1
  %3708 = icmp eq i16 %3706, %3707
  br i1 %3708, label %3709, label %3712

3709:                                             ; preds = %3705
  %3710 = getelementptr i8, ptr %3701, i32 2
  %3711 = getelementptr i8, ptr %3702, i32 2
  br label %3712

3712:                                             ; preds = %3709, %3705, %3700
  %3713 = phi ptr [ %3710, %3709 ], [ %3701, %3705 ], [ %3701, %3700 ]
  %3714 = phi ptr [ %3711, %3709 ], [ %3702, %3705 ], [ %3702, %3700 ]
  %3715 = icmp ult ptr %3713, %3671
  br i1 %3715, label %3716, label %3722

3716:                                             ; preds = %3712
  %3717 = load i8, ptr %3714, align 1
  %3718 = load i8, ptr %3713, align 1
  %3719 = icmp eq i8 %3717, %3718
  %3720 = zext i1 %3719 to i32
  %3721 = getelementptr i8, ptr %3713, i32 %3720
  br label %3722

3722:                                             ; preds = %3716, %3712
  %3723 = phi ptr [ %3713, %3712 ], [ %3721, %3716 ]
  %3724 = ptrtoint ptr %3723 to i32
  %3725 = ptrtoint ptr %3664 to i32
  %3726 = sub i32 %3724, %3725
  br label %3727

3727:                                             ; preds = %3722, %3693, %3679
  %3728 = phi i32 [ %3726, %3722 ], [ %3681, %3679 ], [ %3699, %3693 ]
  %3729 = getelementptr i8, ptr %3665, i32 %3728
  %3730 = icmp eq ptr %3729, %2851
  br i1 %3730, label %3731, label %3789

3731:                                             ; preds = %3727
  %3732 = getelementptr i8, ptr %3664, i32 %3728
  %3733 = icmp ugt ptr %2882, %3732
  br i1 %3733, label %3734, label %3760

3734:                                             ; preds = %3731
  %3735 = load i32, ptr %2834, align 1
  %3736 = load i32, ptr %3732, align 1
  %3737 = xor i32 %3736, %3735
  %3738 = icmp eq i32 %3737, 0
  br i1 %3738, label %3742, label %3739

3739:                                             ; preds = %3734
  %3740 = tail call i32 @llvm.cttz.i32(i32 %3737, i1 true) #4, !range !8
  %3741 = lshr i32 %3740, 3
  br label %3786

3742:                                             ; preds = %3748, %3734
  %3743 = phi ptr [ %3746, %3748 ], [ %3732, %3734 ]
  %3744 = phi ptr [ %3745, %3748 ], [ %2834, %3734 ]
  %3745 = getelementptr i8, ptr %3744, i32 4
  %3746 = getelementptr i8, ptr %3743, i32 4
  %3747 = icmp ult ptr %3746, %2882
  br i1 %3747, label %3748, label %3760

3748:                                             ; preds = %3742
  %3749 = load i32, ptr %3745, align 1
  %3750 = load i32, ptr %3746, align 1
  %3751 = xor i32 %3750, %3749
  %3752 = icmp eq i32 %3751, 0
  br i1 %3752, label %3742, label %3753

3753:                                             ; preds = %3748
  %3754 = tail call i32 @llvm.cttz.i32(i32 %3751, i1 true) #4, !range !8
  %3755 = lshr i32 %3754, 3
  %3756 = getelementptr i8, ptr %3746, i32 %3755
  %3757 = ptrtoint ptr %3756 to i32
  %3758 = ptrtoint ptr %3732 to i32
  %3759 = sub i32 %3757, %3758
  br label %3786

3760:                                             ; preds = %3742, %3731
  %3761 = phi ptr [ %3732, %3731 ], [ %3746, %3742 ]
  %3762 = phi ptr [ %2834, %3731 ], [ %3745, %3742 ]
  %3763 = icmp ult ptr %3761, %2883
  br i1 %3763, label %3764, label %3771

3764:                                             ; preds = %3760
  %3765 = load i16, ptr %3762, align 1
  %3766 = load i16, ptr %3761, align 1
  %3767 = icmp eq i16 %3765, %3766
  br i1 %3767, label %3768, label %3771

3768:                                             ; preds = %3764
  %3769 = getelementptr i8, ptr %3761, i32 2
  %3770 = getelementptr i8, ptr %3762, i32 2
  br label %3771

3771:                                             ; preds = %3768, %3764, %3760
  %3772 = phi ptr [ %3769, %3768 ], [ %3761, %3764 ], [ %3761, %3760 ]
  %3773 = phi ptr [ %3770, %3768 ], [ %3762, %3764 ], [ %3762, %3760 ]
  %3774 = icmp ult ptr %3772, %2835
  br i1 %3774, label %3775, label %3781

3775:                                             ; preds = %3771
  %3776 = load i8, ptr %3773, align 1
  %3777 = load i8, ptr %3772, align 1
  %3778 = icmp eq i8 %3776, %3777
  %3779 = zext i1 %3778 to i32
  %3780 = getelementptr i8, ptr %3772, i32 %3779
  br label %3781

3781:                                             ; preds = %3775, %3771
  %3782 = phi ptr [ %3772, %3771 ], [ %3780, %3775 ]
  %3783 = ptrtoint ptr %3782 to i32
  %3784 = ptrtoint ptr %3732 to i32
  %3785 = sub i32 %3783, %3784
  br label %3786

3786:                                             ; preds = %3781, %3753, %3739
  %3787 = phi i32 [ %3785, %3781 ], [ %3741, %3739 ], [ %3759, %3753 ]
  %3788 = add i32 %3787, %3728
  br label %3789

3789:                                             ; preds = %3786, %3727
  %3790 = phi i32 [ %3788, %3786 ], [ %3728, %3727 ]
  %3791 = add i32 %3790, 4
  %3792 = sub i32 %2908, %3412
  %3793 = icmp ugt ptr %2892, %2893
  %3794 = icmp ugt ptr %3413, %2850
  %3795 = and i1 %3793, %3794
  br i1 %3795, label %3796, label %3886

3796:                                             ; preds = %3805, %3789
  %3797 = phi ptr [ %3800, %3805 ], [ %2892, %3789 ]
  %3798 = phi ptr [ %3802, %3805 ], [ %3413, %3789 ]
  %3799 = phi i32 [ %3806, %3805 ], [ %3791, %3789 ]
  %3800 = getelementptr i8, ptr %3797, i32 -1
  %3801 = load i8, ptr %3800, align 1
  %3802 = getelementptr i8, ptr %3798, i32 -1
  %3803 = load i8, ptr %3802, align 1
  %3804 = icmp eq i8 %3801, %3803
  br i1 %3804, label %3805, label %3886

3805:                                             ; preds = %3796
  %3806 = add i32 %3799, 1
  %3807 = icmp ugt ptr %3800, %2893
  %3808 = icmp ugt ptr %3802, %2850
  %3809 = and i1 %3807, %3808
  br i1 %3809, label %3796, label %3886

3810:                                             ; preds = %3662
  %3811 = icmp ugt ptr %2882, %3664
  br i1 %3811, label %3812, label %3838

3812:                                             ; preds = %3810
  %3813 = load i32, ptr %3665, align 1
  %3814 = load i32, ptr %3664, align 1
  %3815 = xor i32 %3814, %3813
  %3816 = icmp eq i32 %3815, 0
  br i1 %3816, label %3820, label %3817

3817:                                             ; preds = %3812
  %3818 = tail call i32 @llvm.cttz.i32(i32 %3815, i1 true) #4, !range !8
  %3819 = lshr i32 %3818, 3
  br label %3864

3820:                                             ; preds = %3826, %3812
  %3821 = phi ptr [ %3824, %3826 ], [ %3664, %3812 ]
  %3822 = phi ptr [ %3823, %3826 ], [ %3665, %3812 ]
  %3823 = getelementptr i8, ptr %3822, i32 4
  %3824 = getelementptr i8, ptr %3821, i32 4
  %3825 = icmp ult ptr %3824, %2882
  br i1 %3825, label %3826, label %3838

3826:                                             ; preds = %3820
  %3827 = load i32, ptr %3823, align 1
  %3828 = load i32, ptr %3824, align 1
  %3829 = xor i32 %3828, %3827
  %3830 = icmp eq i32 %3829, 0
  br i1 %3830, label %3820, label %3831

3831:                                             ; preds = %3826
  %3832 = tail call i32 @llvm.cttz.i32(i32 %3829, i1 true) #4, !range !8
  %3833 = lshr i32 %3832, 3
  %3834 = getelementptr i8, ptr %3824, i32 %3833
  %3835 = ptrtoint ptr %3834 to i32
  %3836 = ptrtoint ptr %3664 to i32
  %3837 = sub i32 %3835, %3836
  br label %3864

3838:                                             ; preds = %3820, %3810
  %3839 = phi ptr [ %3664, %3810 ], [ %3824, %3820 ]
  %3840 = phi ptr [ %3665, %3810 ], [ %3823, %3820 ]
  %3841 = icmp ult ptr %3839, %2883
  br i1 %3841, label %3842, label %3849

3842:                                             ; preds = %3838
  %3843 = load i16, ptr %3840, align 1
  %3844 = load i16, ptr %3839, align 1
  %3845 = icmp eq i16 %3843, %3844
  br i1 %3845, label %3846, label %3849

3846:                                             ; preds = %3842
  %3847 = getelementptr i8, ptr %3839, i32 2
  %3848 = getelementptr i8, ptr %3840, i32 2
  br label %3849

3849:                                             ; preds = %3846, %3842, %3838
  %3850 = phi ptr [ %3847, %3846 ], [ %3839, %3842 ], [ %3839, %3838 ]
  %3851 = phi ptr [ %3848, %3846 ], [ %3840, %3842 ], [ %3840, %3838 ]
  %3852 = icmp ult ptr %3850, %2835
  br i1 %3852, label %3853, label %3859

3853:                                             ; preds = %3849
  %3854 = load i8, ptr %3851, align 1
  %3855 = load i8, ptr %3850, align 1
  %3856 = icmp eq i8 %3854, %3855
  %3857 = zext i1 %3856 to i32
  %3858 = getelementptr i8, ptr %3850, i32 %3857
  br label %3859

3859:                                             ; preds = %3853, %3849
  %3860 = phi ptr [ %3850, %3849 ], [ %3858, %3853 ]
  %3861 = ptrtoint ptr %3860 to i32
  %3862 = ptrtoint ptr %3664 to i32
  %3863 = sub i32 %3861, %3862
  br label %3864

3864:                                             ; preds = %3859, %3831, %3817
  %3865 = phi i32 [ %3863, %3859 ], [ %3819, %3817 ], [ %3837, %3831 ]
  %3866 = add i32 %3865, 4
  %3867 = ptrtoint ptr %3413 to i32
  %3868 = sub i32 %2907, %3867
  %3869 = icmp ugt ptr %2892, %2893
  %3870 = icmp ugt ptr %3413, %2834
  %3871 = and i1 %3869, %3870
  br i1 %3871, label %3872, label %3886

3872:                                             ; preds = %3881, %3864
  %3873 = phi ptr [ %3876, %3881 ], [ %2892, %3864 ]
  %3874 = phi ptr [ %3878, %3881 ], [ %3413, %3864 ]
  %3875 = phi i32 [ %3882, %3881 ], [ %3866, %3864 ]
  %3876 = getelementptr i8, ptr %3873, i32 -1
  %3877 = load i8, ptr %3876, align 1
  %3878 = getelementptr i8, ptr %3874, i32 -1
  %3879 = load i8, ptr %3878, align 1
  %3880 = icmp eq i8 %3877, %3879
  br i1 %3880, label %3881, label %3886

3881:                                             ; preds = %3872
  %3882 = add i32 %3875, 1
  %3883 = icmp ugt ptr %3876, %2893
  %3884 = icmp ugt ptr %3878, %2834
  %3885 = and i1 %3883, %3884
  br i1 %3885, label %3872, label %3886

3886:                                             ; preds = %3881, %3872, %3864, %3805, %3796, %3789, %3657, %3648, %3642, %3501, %3492, %3483, %3379, %3370, %3364, %3225, %3216, %3208
  %3887 = phi i32 [ %3210, %3208 ], [ %3485, %3483 ], [ %3791, %3789 ], [ %3866, %3864 ], [ %3644, %3642 ], [ %3366, %3364 ], [ %3226, %3225 ], [ %3219, %3216 ], [ %3502, %3501 ], [ %3495, %3492 ], [ %3799, %3796 ], [ %3806, %3805 ], [ %3875, %3872 ], [ %3882, %3881 ], [ %3658, %3657 ], [ %3651, %3648 ], [ %3373, %3370 ], [ %3380, %3379 ]
  %3888 = phi i32 [ %3212, %3208 ], [ %3488, %3483 ], [ %3792, %3789 ], [ %3868, %3864 ], [ %3646, %3642 ], [ %3368, %3364 ], [ %3212, %3216 ], [ %3212, %3225 ], [ %3488, %3492 ], [ %3488, %3501 ], [ %3792, %3796 ], [ %3792, %3805 ], [ %3868, %3872 ], [ %3868, %3881 ], [ %3646, %3648 ], [ %3646, %3657 ], [ %3368, %3370 ], [ %3368, %3379 ]
  %3889 = phi ptr [ %2892, %3208 ], [ %3414, %3483 ], [ %2892, %3789 ], [ %2892, %3864 ], [ %3414, %3642 ], [ %2892, %3364 ], [ %3220, %3225 ], [ %3217, %3216 ], [ %3496, %3501 ], [ %3494, %3492 ], [ %3797, %3796 ], [ %3800, %3805 ], [ %3873, %3872 ], [ %3876, %3881 ], [ %3652, %3657 ], [ %3650, %3648 ], [ %3371, %3370 ], [ %3374, %3379 ]
  %3890 = ptrtoint ptr %3889 to i32
  %3891 = ptrtoint ptr %2893 to i32
  %3892 = sub i32 %3890, %3891
  %3893 = add i32 %3887, -3
  %3894 = getelementptr i8, ptr %2893, i32 %3892
  %3895 = icmp ugt ptr %3894, %2884
  %3896 = load ptr, ptr %2885, align 4
  br i1 %3895, label %3918, label %3897

3897:                                             ; preds = %3886
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3896, ptr noundef align 1 dereferenceable(16) %2893, i32 16, i1 false) #4
  %3898 = icmp ugt i32 %3892, 16
  %3899 = load ptr, ptr %2885, align 4
  br i1 %3898, label %3902, label %3900

3900:                                             ; preds = %3897
  %3901 = getelementptr i8, ptr %3899, i32 %3892
  store ptr %3901, ptr %2885, align 4
  br label %3961

3902:                                             ; preds = %3897
  %3903 = getelementptr i8, ptr %3899, i32 16
  %3904 = getelementptr i8, ptr %2893, i32 16
  %3905 = add i32 %3892, -16
  %3906 = getelementptr i8, ptr %3899, i32 %3892
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3903, ptr noundef align 1 dereferenceable(16) %3904, i32 16, i1 false) #4
  %3907 = icmp slt i32 %3905, 17
  br i1 %3907, label %3950, label %3908

3908:                                             ; preds = %3902
  %3909 = getelementptr i8, ptr %3899, i32 32
  br label %3910

3910:                                             ; preds = %3910, %3908
  %3911 = phi ptr [ %3904, %3908 ], [ %3915, %3910 ]
  %3912 = phi ptr [ %3909, %3908 ], [ %3916, %3910 ]
  %3913 = getelementptr i8, ptr %3911, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3912, ptr noundef align 1 dereferenceable(16) %3913, i32 16, i1 false) #4
  %3914 = getelementptr i8, ptr %3912, i32 16
  %3915 = getelementptr i8, ptr %3911, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3914, ptr noundef align 1 dereferenceable(16) %3915, i32 16, i1 false) #4
  %3916 = getelementptr i8, ptr %3912, i32 32
  %3917 = icmp ult ptr %3916, %3906
  br i1 %3917, label %3910, label %3950

3918:                                             ; preds = %3886
  %3919 = ptrtoint ptr %3894 to i32
  %3920 = icmp ult ptr %2884, %2893
  br i1 %3920, label %3935, label %3921

3921:                                             ; preds = %3918
  %3922 = sub i32 %2886, %3891
  %3923 = getelementptr i8, ptr %3896, i32 %3922
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3896, ptr noundef align 1 dereferenceable(16) %2893, i32 16, i1 false) #4
  %3924 = icmp slt i32 %3922, 17
  br i1 %3924, label %3935, label %3925

3925:                                             ; preds = %3921
  %3926 = getelementptr i8, ptr %3896, i32 16
  br label %3927

3927:                                             ; preds = %3927, %3925
  %3928 = phi ptr [ %2893, %3925 ], [ %3932, %3927 ]
  %3929 = phi ptr [ %3926, %3925 ], [ %3933, %3927 ]
  %3930 = getelementptr i8, ptr %3928, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3929, ptr noundef align 1 dereferenceable(16) %3930, i32 16, i1 false) #4
  %3931 = getelementptr i8, ptr %3929, i32 16
  %3932 = getelementptr i8, ptr %3928, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %3931, ptr noundef align 1 dereferenceable(16) %3932, i32 16, i1 false) #4
  %3933 = getelementptr i8, ptr %3929, i32 32
  %3934 = icmp ult ptr %3933, %3923
  br i1 %3934, label %3927, label %3935

3935:                                             ; preds = %3927, %3921, %3918
  %3936 = phi ptr [ %2884, %3921 ], [ %2893, %3918 ], [ %2884, %3927 ]
  %3937 = phi ptr [ %3923, %3921 ], [ %3896, %3918 ], [ %3923, %3927 ]
  %3938 = icmp ult ptr %3936, %3894
  br i1 %3938, label %3939, label %3950

3939:                                             ; preds = %3935
  %3940 = ptrtoint ptr %3936 to i32
  %3941 = sub i32 %3919, %3940
  %3942 = getelementptr i8, ptr %3936, i32 %3941
  br label %3943

3943:                                             ; preds = %3943, %3939
  %3944 = phi ptr [ %3948, %3943 ], [ %3937, %3939 ]
  %3945 = phi ptr [ %3946, %3943 ], [ %3936, %3939 ]
  %3946 = getelementptr i8, ptr %3945, i32 1
  %3947 = load i8, ptr %3945, align 1
  %3948 = getelementptr i8, ptr %3944, i32 1
  store i8 %3947, ptr %3944, align 1
  %3949 = icmp eq ptr %3946, %3942
  br i1 %3949, label %3950, label %3943

3950:                                             ; preds = %3943, %3935, %3910, %3902
  %3951 = load ptr, ptr %2885, align 4
  %3952 = getelementptr i8, ptr %3951, i32 %3892
  store ptr %3952, ptr %2885, align 4
  %3953 = icmp ugt i32 %3892, 65535
  br i1 %3953, label %3954, label %3961

3954:                                             ; preds = %3950
  store i32 1, ptr %2887, align 4
  %3955 = load ptr, ptr %2888, align 4
  %3956 = load ptr, ptr %1, align 4
  %3957 = ptrtoint ptr %3955 to i32
  %3958 = ptrtoint ptr %3956 to i32
  %3959 = sub i32 %3957, %3958
  %3960 = ashr exact i32 %3959, 3
  store i32 %3960, ptr %2889, align 4
  br label %3961

3961:                                             ; preds = %3954, %3950, %3900
  %3962 = trunc i32 %3892 to i16
  %3963 = load ptr, ptr %2888, align 4
  %3964 = getelementptr inbounds %struct.seqDef_s, ptr %3963, i32 0, i32 1
  store i16 %3962, ptr %3964, align 4
  %3965 = add i32 %3888, 3
  %3966 = load ptr, ptr %2888, align 4
  store i32 %3965, ptr %3966, align 4
  %3967 = icmp ugt i32 %3893, 65535
  br i1 %3967, label %3970, label %3968

3968:                                             ; preds = %3961
  %3969 = load ptr, ptr %2888, align 4
  br label %3977

3970:                                             ; preds = %3961
  store i32 2, ptr %2887, align 4
  %3971 = load ptr, ptr %2888, align 4
  %3972 = load ptr, ptr %1, align 4
  %3973 = ptrtoint ptr %3971 to i32
  %3974 = ptrtoint ptr %3972 to i32
  %3975 = sub i32 %3973, %3974
  %3976 = ashr exact i32 %3975, 3
  store i32 %3976, ptr %2889, align 4
  br label %3977

3977:                                             ; preds = %3970, %3968, %3139, %3137
  %3978 = phi i32 [ %3063, %3137 ], [ %3063, %3139 ], [ %3893, %3968 ], [ %3893, %3970 ]
  %3979 = phi ptr [ %3138, %3137 ], [ %3140, %3139 ], [ %3969, %3968 ], [ %3971, %3970 ]
  %3980 = phi i32 [ %2895, %3137 ], [ %2895, %3139 ], [ %2894, %3968 ], [ %2894, %3970 ]
  %3981 = phi i32 [ %2894, %3137 ], [ %2894, %3139 ], [ %3888, %3968 ], [ %3888, %3970 ]
  %3982 = phi i32 [ %3059, %3137 ], [ %3059, %3139 ], [ %3887, %3968 ], [ %3887, %3970 ]
  %3983 = phi ptr [ %2927, %3137 ], [ %2927, %3139 ], [ %3889, %3968 ], [ %3889, %3970 ]
  %3984 = trunc i32 %3978 to i16
  %3985 = getelementptr inbounds %struct.seqDef_s, ptr %3979, i32 0, i32 2
  store i16 %3984, ptr %3985, align 2
  %3986 = load ptr, ptr %2888, align 4
  %3987 = getelementptr %struct.seqDef_s, ptr %3986, i32 1
  store ptr %3987, ptr %2888, align 4
  %3988 = getelementptr i8, ptr %3983, i32 %3982
  %3989 = icmp ugt ptr %3988, %2836
  br i1 %3989, label %4202, label %3990

3990:                                             ; preds = %3977
  %3991 = add i32 %2908, 2
  %3992 = getelementptr i8, ptr %2817, i32 %3991
  %3993 = load i64, ptr %3992, align 1
  %3994 = mul i64 %3993, -3523014627327384477
  %3995 = lshr i64 %3994, %2875
  %3996 = trunc i64 %3995 to i32
  %3997 = getelementptr i32, ptr %2813, i32 %3996
  store i32 %3991, ptr %3997, align 4
  %3998 = getelementptr i8, ptr %3988, i32 -2
  %3999 = ptrtoint ptr %3998 to i32
  %4000 = sub i32 %3999, %2819
  %4001 = load i64, ptr %3998, align 1
  %4002 = mul i64 %4001, -3523014627327384477
  %4003 = lshr i64 %4002, %2875
  %4004 = trunc i64 %4003 to i32
  %4005 = getelementptr i32, ptr %2813, i32 %4004
  store i32 %4000, ptr %4005, align 4
  %4006 = load i64, ptr %3992, align 1
  %4007 = mul i64 %4006, -3523014627193847808
  %4008 = lshr i64 %4007, %2877
  %4009 = trunc i64 %4008 to i32
  %4010 = getelementptr i32, ptr %2815, i32 %4009
  store i32 %3991, ptr %4010, align 4
  %4011 = getelementptr i8, ptr %3988, i32 -1
  %4012 = load i64, ptr %4011, align 1
  %4013 = mul i64 %4012, -3523014627193847808
  %4014 = lshr i64 %4013, %2877
  %4015 = trunc i64 %4014 to i32
  %4016 = ptrtoint ptr %4011 to i32
  %4017 = sub i32 %4016, %2819
  %4018 = getelementptr i32, ptr %2815, i32 %4015
  store i32 %4017, ptr %4018, align 4
  br label %4019

4019:                                             ; preds = %4184, %3990
  %4020 = phi ptr [ %4200, %4184 ], [ %3988, %3990 ]
  %4021 = phi i32 [ %4022, %4184 ], [ %3981, %3990 ]
  %4022 = phi i32 [ %4021, %4184 ], [ %3980, %3990 ]
  %4023 = ptrtoint ptr %4020 to i32
  %4024 = sub i32 %4023, %2819
  %4025 = sub i32 %4024, %4022
  %4026 = icmp ult i32 %4025, %2833
  %4027 = select i1 %4026, ptr %2890, ptr %2817
  %4028 = getelementptr i8, ptr %4027, i32 %4025
  %4029 = xor i32 %4025, -1
  %4030 = add i32 %2833, %4029
  %4031 = icmp ugt i32 %4030, 2
  br i1 %4031, label %4032, label %4202

4032:                                             ; preds = %4019
  %4033 = load i32, ptr %4028, align 1
  %4034 = load i32, ptr %4020, align 1
  %4035 = icmp eq i32 %4033, %4034
  br i1 %4035, label %4036, label %4202

4036:                                             ; preds = %4032
  %4037 = select i1 %4026, ptr %2851, ptr %2835
  %4038 = getelementptr i8, ptr %4020, i32 4
  %4039 = getelementptr i8, ptr %4028, i32 4
  %4040 = ptrtoint ptr %4037 to i32
  %4041 = ptrtoint ptr %4039 to i32
  %4042 = sub i32 %4040, %4041
  %4043 = getelementptr i8, ptr %4038, i32 %4042
  %4044 = icmp ult ptr %4043, %2835
  %4045 = select i1 %4044, ptr %4043, ptr %2835
  %4046 = getelementptr i8, ptr %4045, i32 -3
  %4047 = icmp ugt ptr %4046, %4038
  br i1 %4047, label %4048, label %4074

4048:                                             ; preds = %4036
  %4049 = load i32, ptr %4039, align 1
  %4050 = load i32, ptr %4038, align 1
  %4051 = xor i32 %4050, %4049
  %4052 = icmp eq i32 %4051, 0
  br i1 %4052, label %4056, label %4053

4053:                                             ; preds = %4048
  %4054 = tail call i32 @llvm.cttz.i32(i32 %4051, i1 true) #4, !range !8
  %4055 = lshr i32 %4054, 3
  br label %4101

4056:                                             ; preds = %4062, %4048
  %4057 = phi ptr [ %4060, %4062 ], [ %4038, %4048 ]
  %4058 = phi ptr [ %4059, %4062 ], [ %4039, %4048 ]
  %4059 = getelementptr i8, ptr %4058, i32 4
  %4060 = getelementptr i8, ptr %4057, i32 4
  %4061 = icmp ult ptr %4060, %4046
  br i1 %4061, label %4062, label %4074

4062:                                             ; preds = %4056
  %4063 = load i32, ptr %4059, align 1
  %4064 = load i32, ptr %4060, align 1
  %4065 = xor i32 %4064, %4063
  %4066 = icmp eq i32 %4065, 0
  br i1 %4066, label %4056, label %4067

4067:                                             ; preds = %4062
  %4068 = tail call i32 @llvm.cttz.i32(i32 %4065, i1 true) #4, !range !8
  %4069 = lshr i32 %4068, 3
  %4070 = getelementptr i8, ptr %4060, i32 %4069
  %4071 = ptrtoint ptr %4070 to i32
  %4072 = ptrtoint ptr %4038 to i32
  %4073 = sub i32 %4071, %4072
  br label %4101

4074:                                             ; preds = %4056, %4036
  %4075 = phi ptr [ %4038, %4036 ], [ %4060, %4056 ]
  %4076 = phi ptr [ %4039, %4036 ], [ %4059, %4056 ]
  %4077 = getelementptr i8, ptr %4045, i32 -1
  %4078 = icmp ult ptr %4075, %4077
  br i1 %4078, label %4079, label %4086

4079:                                             ; preds = %4074
  %4080 = load i16, ptr %4076, align 1
  %4081 = load i16, ptr %4075, align 1
  %4082 = icmp eq i16 %4080, %4081
  br i1 %4082, label %4083, label %4086

4083:                                             ; preds = %4079
  %4084 = getelementptr i8, ptr %4075, i32 2
  %4085 = getelementptr i8, ptr %4076, i32 2
  br label %4086

4086:                                             ; preds = %4083, %4079, %4074
  %4087 = phi ptr [ %4084, %4083 ], [ %4075, %4079 ], [ %4075, %4074 ]
  %4088 = phi ptr [ %4085, %4083 ], [ %4076, %4079 ], [ %4076, %4074 ]
  %4089 = icmp ult ptr %4087, %4045
  br i1 %4089, label %4090, label %4096

4090:                                             ; preds = %4086
  %4091 = load i8, ptr %4088, align 1
  %4092 = load i8, ptr %4087, align 1
  %4093 = icmp eq i8 %4091, %4092
  %4094 = zext i1 %4093 to i32
  %4095 = getelementptr i8, ptr %4087, i32 %4094
  br label %4096

4096:                                             ; preds = %4090, %4086
  %4097 = phi ptr [ %4087, %4086 ], [ %4095, %4090 ]
  %4098 = ptrtoint ptr %4097 to i32
  %4099 = ptrtoint ptr %4038 to i32
  %4100 = sub i32 %4098, %4099
  br label %4101

4101:                                             ; preds = %4096, %4067, %4053
  %4102 = phi i32 [ %4100, %4096 ], [ %4055, %4053 ], [ %4073, %4067 ]
  %4103 = getelementptr i8, ptr %4039, i32 %4102
  %4104 = icmp eq ptr %4103, %4037
  br i1 %4104, label %4105, label %4163

4105:                                             ; preds = %4101
  %4106 = getelementptr i8, ptr %4038, i32 %4102
  %4107 = icmp ugt ptr %2882, %4106
  br i1 %4107, label %4108, label %4134

4108:                                             ; preds = %4105
  %4109 = load i32, ptr %2834, align 1
  %4110 = load i32, ptr %4106, align 1
  %4111 = xor i32 %4110, %4109
  %4112 = icmp eq i32 %4111, 0
  br i1 %4112, label %4116, label %4113

4113:                                             ; preds = %4108
  %4114 = tail call i32 @llvm.cttz.i32(i32 %4111, i1 true) #4, !range !8
  %4115 = lshr i32 %4114, 3
  br label %4160

4116:                                             ; preds = %4122, %4108
  %4117 = phi ptr [ %4120, %4122 ], [ %4106, %4108 ]
  %4118 = phi ptr [ %4119, %4122 ], [ %2834, %4108 ]
  %4119 = getelementptr i8, ptr %4118, i32 4
  %4120 = getelementptr i8, ptr %4117, i32 4
  %4121 = icmp ult ptr %4120, %2882
  br i1 %4121, label %4122, label %4134

4122:                                             ; preds = %4116
  %4123 = load i32, ptr %4119, align 1
  %4124 = load i32, ptr %4120, align 1
  %4125 = xor i32 %4124, %4123
  %4126 = icmp eq i32 %4125, 0
  br i1 %4126, label %4116, label %4127

4127:                                             ; preds = %4122
  %4128 = tail call i32 @llvm.cttz.i32(i32 %4125, i1 true) #4, !range !8
  %4129 = lshr i32 %4128, 3
  %4130 = getelementptr i8, ptr %4120, i32 %4129
  %4131 = ptrtoint ptr %4130 to i32
  %4132 = ptrtoint ptr %4106 to i32
  %4133 = sub i32 %4131, %4132
  br label %4160

4134:                                             ; preds = %4116, %4105
  %4135 = phi ptr [ %4106, %4105 ], [ %4120, %4116 ]
  %4136 = phi ptr [ %2834, %4105 ], [ %4119, %4116 ]
  %4137 = icmp ult ptr %4135, %2883
  br i1 %4137, label %4138, label %4145

4138:                                             ; preds = %4134
  %4139 = load i16, ptr %4136, align 1
  %4140 = load i16, ptr %4135, align 1
  %4141 = icmp eq i16 %4139, %4140
  br i1 %4141, label %4142, label %4145

4142:                                             ; preds = %4138
  %4143 = getelementptr i8, ptr %4135, i32 2
  %4144 = getelementptr i8, ptr %4136, i32 2
  br label %4145

4145:                                             ; preds = %4142, %4138, %4134
  %4146 = phi ptr [ %4143, %4142 ], [ %4135, %4138 ], [ %4135, %4134 ]
  %4147 = phi ptr [ %4144, %4142 ], [ %4136, %4138 ], [ %4136, %4134 ]
  %4148 = icmp ult ptr %4146, %2835
  br i1 %4148, label %4149, label %4155

4149:                                             ; preds = %4145
  %4150 = load i8, ptr %4147, align 1
  %4151 = load i8, ptr %4146, align 1
  %4152 = icmp eq i8 %4150, %4151
  %4153 = zext i1 %4152 to i32
  %4154 = getelementptr i8, ptr %4146, i32 %4153
  br label %4155

4155:                                             ; preds = %4149, %4145
  %4156 = phi ptr [ %4146, %4145 ], [ %4154, %4149 ]
  %4157 = ptrtoint ptr %4156 to i32
  %4158 = ptrtoint ptr %4106 to i32
  %4159 = sub i32 %4157, %4158
  br label %4160

4160:                                             ; preds = %4155, %4127, %4113
  %4161 = phi i32 [ %4159, %4155 ], [ %4115, %4113 ], [ %4133, %4127 ]
  %4162 = add i32 %4161, %4102
  br label %4163

4163:                                             ; preds = %4160, %4101
  %4164 = phi i32 [ %4162, %4160 ], [ %4102, %4101 ]
  %4165 = add i32 %4164, 4
  %4166 = add i32 %4164, 1
  %4167 = icmp ugt ptr %4020, %2884
  br i1 %4167, label %4170, label %4168

4168:                                             ; preds = %4163
  %4169 = load ptr, ptr %2885, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %4169, ptr noundef align 1 dereferenceable(16) %4020, i32 16, i1 false) #4
  br label %4170

4170:                                             ; preds = %4168, %4163
  %4171 = load ptr, ptr %2888, align 4
  %4172 = getelementptr inbounds %struct.seqDef_s, ptr %4171, i32 0, i32 1
  store i16 0, ptr %4172, align 4
  %4173 = load ptr, ptr %2888, align 4
  store i32 1, ptr %4173, align 4
  %4174 = icmp ugt i32 %4166, 65535
  br i1 %4174, label %4177, label %4175

4175:                                             ; preds = %4170
  %4176 = load ptr, ptr %2888, align 4
  br label %4184

4177:                                             ; preds = %4170
  store i32 2, ptr %2887, align 4
  %4178 = load ptr, ptr %2888, align 4
  %4179 = load ptr, ptr %1, align 4
  %4180 = ptrtoint ptr %4178 to i32
  %4181 = ptrtoint ptr %4179 to i32
  %4182 = sub i32 %4180, %4181
  %4183 = ashr exact i32 %4182, 3
  store i32 %4183, ptr %2889, align 4
  br label %4184

4184:                                             ; preds = %4177, %4175
  %4185 = phi ptr [ %4176, %4175 ], [ %4178, %4177 ]
  %4186 = trunc i32 %4166 to i16
  %4187 = getelementptr inbounds %struct.seqDef_s, ptr %4185, i32 0, i32 2
  store i16 %4186, ptr %4187, align 2
  %4188 = load ptr, ptr %2888, align 4
  %4189 = getelementptr %struct.seqDef_s, ptr %4188, i32 1
  store ptr %4189, ptr %2888, align 4
  %4190 = load i64, ptr %4020, align 1
  %4191 = mul i64 %4190, -3523014627193847808
  %4192 = lshr i64 %4191, %2877
  %4193 = trunc i64 %4192 to i32
  %4194 = getelementptr i32, ptr %2815, i32 %4193
  store i32 %4024, ptr %4194, align 4
  %4195 = load i64, ptr %4020, align 1
  %4196 = mul i64 %4195, -3523014627327384477
  %4197 = lshr i64 %4196, %2875
  %4198 = trunc i64 %4197 to i32
  %4199 = getelementptr i32, ptr %2813, i32 %4198
  store i32 %4024, ptr %4199, align 4
  %4200 = getelementptr i8, ptr %4020, i32 %4165
  %4201 = icmp ugt ptr %4200, %2836
  br i1 %4201, label %4202, label %4019

4202:                                             ; preds = %4184, %4032, %4019, %3977, %3405
  %4203 = phi i32 [ %2895, %3405 ], [ %3980, %3977 ], [ %4022, %4019 ], [ %4022, %4032 ], [ %4021, %4184 ]
  %4204 = phi i32 [ %2894, %3405 ], [ %3981, %3977 ], [ %4021, %4019 ], [ %4021, %4032 ], [ %4022, %4184 ]
  %4205 = phi ptr [ %2893, %3405 ], [ %3988, %3977 ], [ %4020, %4019 ], [ %4020, %4032 ], [ %4200, %4184 ]
  %4206 = phi ptr [ %3410, %3405 ], [ %3988, %3977 ], [ %4020, %4019 ], [ %4020, %4032 ], [ %4200, %4184 ]
  %4207 = icmp ult ptr %4206, %2836
  br i1 %4207, label %2891, label %4208

4208:                                             ; preds = %4202
  %4209 = ptrtoint ptr %4205 to i32
  br label %4210

4210:                                             ; preds = %4208, %2810
  %4211 = phi i32 [ %4209, %4208 ], [ %2818, %2810 ]
  %4212 = phi i32 [ %4203, %4208 ], [ %2839, %2810 ]
  %4213 = phi i32 [ %4204, %4208 ], [ %2837, %2810 ]
  store i32 %4213, ptr %2, align 4
  store i32 %4212, ptr %2838, align 4
  br label %5618

4214:                                             ; preds = %5
  %4215 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %4216 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %4217 = load ptr, ptr %4216, align 4
  %4218 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %4219 = load ptr, ptr %4218, align 4
  %4220 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %4221 = load ptr, ptr %4220, align 4
  %4222 = ptrtoint ptr %3 to i32
  %4223 = ptrtoint ptr %4221 to i32
  %4224 = sub i32 %4222, %4223
  %4225 = add i32 %4224, %4
  %4226 = load i32, ptr %4215, align 4
  %4227 = shl nuw i32 1, %4226
  %4228 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %4229 = load i32, ptr %4228, align 4
  %4230 = sub i32 %4225, %4229
  %4231 = icmp ugt i32 %4230, %4227
  %4232 = sub i32 %4225, %4227
  %4233 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %4234 = load i32, ptr %4233, align 4
  %4235 = icmp eq i32 %4234, 0
  %4236 = select i1 %4235, i1 %4231, i1 false
  %4237 = select i1 %4236, i32 %4232, i32 %4229
  %4238 = getelementptr i8, ptr %4221, i32 %4237
  %4239 = getelementptr i8, ptr %3, i32 %4
  %4240 = getelementptr i8, ptr %4239, i32 -8
  %4241 = load i32, ptr %2, align 4
  %4242 = getelementptr i32, ptr %2, i32 1
  %4243 = load i32, ptr %4242, align 4
  %4244 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 9
  %4245 = load ptr, ptr %4244, align 4
  %4246 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %4245, i32 0, i32 4
  %4247 = load ptr, ptr %4246, align 4
  %4248 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %4245, i32 0, i32 6
  %4249 = load ptr, ptr %4248, align 4
  %4250 = getelementptr inbounds %struct.ZSTD_window_t, ptr %4245, i32 0, i32 3
  %4251 = load i32, ptr %4250, align 4
  %4252 = getelementptr inbounds %struct.ZSTD_window_t, ptr %4245, i32 0, i32 1
  %4253 = load ptr, ptr %4252, align 4
  %4254 = getelementptr i8, ptr %4253, i32 %4251
  %4255 = load ptr, ptr %4245, align 4
  %4256 = ptrtoint ptr %4255 to i32
  %4257 = ptrtoint ptr %4253 to i32
  %4258 = add i32 %4237, %4257
  %4259 = sub i32 %4258, %4256
  %4260 = ptrtoint ptr %4238 to i32
  %4261 = sub i32 %4222, %4260
  %4262 = ptrtoint ptr %4254 to i32
  %4263 = sub i32 %4262, %4256
  %4264 = icmp eq i32 %4261, %4263
  %4265 = zext i1 %4264 to i32
  %4266 = getelementptr i8, ptr %3, i32 %4265
  %4267 = icmp ult ptr %4266, %4240
  br i1 %4267, label %4268, label %5614

4268:                                             ; preds = %4214
  %4269 = sub i32 0, %4259
  %4270 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %4245, i32 0, i32 10, i32 1
  %4271 = load i32, ptr %4270, align 4
  %4272 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %4245, i32 0, i32 10, i32 2
  %4273 = load i32, ptr %4272, align 4
  %4274 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %4275 = load i32, ptr %4274, align 4
  %4276 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %4277 = load i32, ptr %4276, align 4
  %4278 = sub i32 64, %4277
  %4279 = zext i32 %4278 to i64
  %4280 = sub i32 64, %4275
  %4281 = zext i32 %4280 to i64
  %4282 = sub i32 64, %4273
  %4283 = zext i32 %4282 to i64
  %4284 = sub i32 64, %4271
  %4285 = zext i32 %4284 to i64
  %4286 = getelementptr i8, ptr %4239, i32 -3
  %4287 = getelementptr i8, ptr %4239, i32 -1
  %4288 = getelementptr i8, ptr %4239, i32 -32
  %4289 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %4290 = ptrtoint ptr %4288 to i32
  %4291 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %4292 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %4293 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %4294 = getelementptr i8, ptr %4253, i32 %4269
  br label %4295

4295:                                             ; preds = %5606, %4268
  %4296 = phi ptr [ %4266, %4268 ], [ %5610, %5606 ]
  %4297 = phi ptr [ %3, %4268 ], [ %5609, %5606 ]
  %4298 = phi i32 [ %4241, %4268 ], [ %5608, %5606 ]
  %4299 = phi i32 [ %4243, %4268 ], [ %5607, %5606 ]
  %4300 = load i64, ptr %4296, align 1
  %4301 = mul i64 %4300, -3523014627327384477
  %4302 = lshr i64 %4301, %4279
  %4303 = trunc i64 %4302 to i32
  %4304 = mul i64 %4300, -3523014627193167104
  %4305 = lshr i64 %4304, %4281
  %4306 = trunc i64 %4305 to i32
  %4307 = lshr i64 %4301, %4283
  %4308 = trunc i64 %4307 to i32
  %4309 = lshr i64 %4304, %4285
  %4310 = trunc i64 %4309 to i32
  %4311 = ptrtoint ptr %4296 to i32
  %4312 = sub i32 %4311, %4223
  %4313 = getelementptr i32, ptr %4217, i32 %4303
  %4314 = load i32, ptr %4313, align 4
  %4315 = getelementptr i32, ptr %4219, i32 %4306
  %4316 = load i32, ptr %4315, align 4
  %4317 = getelementptr i8, ptr %4221, i32 %4314
  %4318 = getelementptr i8, ptr %4221, i32 %4316
  %4319 = add i32 %4312, 1
  %4320 = sub i32 %4319, %4298
  %4321 = icmp ult i32 %4320, %4237
  %4322 = sub i32 %4320, %4259
  %4323 = getelementptr i8, ptr %4253, i32 %4322
  %4324 = getelementptr i8, ptr %4221, i32 %4320
  %4325 = select i1 %4321, ptr %4323, ptr %4324
  store i32 %4312, ptr %4315, align 4
  store i32 %4312, ptr %4313, align 4
  %4326 = xor i32 %4320, -1
  %4327 = add i32 %4237, %4326
  %4328 = icmp ugt i32 %4327, 2
  br i1 %4328, label %4329, label %4550

4329:                                             ; preds = %4295
  %4330 = load i32, ptr %4325, align 1
  %4331 = getelementptr i8, ptr %4296, i32 1
  %4332 = load i32, ptr %4331, align 1
  %4333 = icmp eq i32 %4330, %4332
  br i1 %4333, label %4334, label %4550

4334:                                             ; preds = %4329
  %4335 = select i1 %4321, ptr %4255, ptr %4239
  %4336 = getelementptr i8, ptr %4296, i32 5
  %4337 = getelementptr i8, ptr %4325, i32 4
  %4338 = ptrtoint ptr %4335 to i32
  %4339 = ptrtoint ptr %4337 to i32
  %4340 = sub i32 %4338, %4339
  %4341 = getelementptr i8, ptr %4336, i32 %4340
  %4342 = icmp ult ptr %4341, %4239
  %4343 = select i1 %4342, ptr %4341, ptr %4239
  %4344 = getelementptr i8, ptr %4343, i32 -3
  %4345 = icmp ugt ptr %4344, %4336
  br i1 %4345, label %4346, label %4372

4346:                                             ; preds = %4334
  %4347 = load i32, ptr %4337, align 1
  %4348 = load i32, ptr %4336, align 1
  %4349 = xor i32 %4348, %4347
  %4350 = icmp eq i32 %4349, 0
  br i1 %4350, label %4354, label %4351

4351:                                             ; preds = %4346
  %4352 = tail call i32 @llvm.cttz.i32(i32 %4349, i1 true) #4, !range !8
  %4353 = lshr i32 %4352, 3
  br label %4399

4354:                                             ; preds = %4360, %4346
  %4355 = phi ptr [ %4358, %4360 ], [ %4336, %4346 ]
  %4356 = phi ptr [ %4357, %4360 ], [ %4337, %4346 ]
  %4357 = getelementptr i8, ptr %4356, i32 4
  %4358 = getelementptr i8, ptr %4355, i32 4
  %4359 = icmp ult ptr %4358, %4344
  br i1 %4359, label %4360, label %4372

4360:                                             ; preds = %4354
  %4361 = load i32, ptr %4357, align 1
  %4362 = load i32, ptr %4358, align 1
  %4363 = xor i32 %4362, %4361
  %4364 = icmp eq i32 %4363, 0
  br i1 %4364, label %4354, label %4365

4365:                                             ; preds = %4360
  %4366 = tail call i32 @llvm.cttz.i32(i32 %4363, i1 true) #4, !range !8
  %4367 = lshr i32 %4366, 3
  %4368 = getelementptr i8, ptr %4358, i32 %4367
  %4369 = ptrtoint ptr %4368 to i32
  %4370 = ptrtoint ptr %4336 to i32
  %4371 = sub i32 %4369, %4370
  br label %4399

4372:                                             ; preds = %4354, %4334
  %4373 = phi ptr [ %4336, %4334 ], [ %4358, %4354 ]
  %4374 = phi ptr [ %4337, %4334 ], [ %4357, %4354 ]
  %4375 = getelementptr i8, ptr %4343, i32 -1
  %4376 = icmp ult ptr %4373, %4375
  br i1 %4376, label %4377, label %4384

4377:                                             ; preds = %4372
  %4378 = load i16, ptr %4374, align 1
  %4379 = load i16, ptr %4373, align 1
  %4380 = icmp eq i16 %4378, %4379
  br i1 %4380, label %4381, label %4384

4381:                                             ; preds = %4377
  %4382 = getelementptr i8, ptr %4373, i32 2
  %4383 = getelementptr i8, ptr %4374, i32 2
  br label %4384

4384:                                             ; preds = %4381, %4377, %4372
  %4385 = phi ptr [ %4382, %4381 ], [ %4373, %4377 ], [ %4373, %4372 ]
  %4386 = phi ptr [ %4383, %4381 ], [ %4374, %4377 ], [ %4374, %4372 ]
  %4387 = icmp ult ptr %4385, %4343
  br i1 %4387, label %4388, label %4394

4388:                                             ; preds = %4384
  %4389 = load i8, ptr %4386, align 1
  %4390 = load i8, ptr %4385, align 1
  %4391 = icmp eq i8 %4389, %4390
  %4392 = zext i1 %4391 to i32
  %4393 = getelementptr i8, ptr %4385, i32 %4392
  br label %4394

4394:                                             ; preds = %4388, %4384
  %4395 = phi ptr [ %4385, %4384 ], [ %4393, %4388 ]
  %4396 = ptrtoint ptr %4395 to i32
  %4397 = ptrtoint ptr %4336 to i32
  %4398 = sub i32 %4396, %4397
  br label %4399

4399:                                             ; preds = %4394, %4365, %4351
  %4400 = phi i32 [ %4398, %4394 ], [ %4353, %4351 ], [ %4371, %4365 ]
  %4401 = getelementptr i8, ptr %4337, i32 %4400
  %4402 = icmp eq ptr %4401, %4335
  br i1 %4402, label %4403, label %4461

4403:                                             ; preds = %4399
  %4404 = getelementptr i8, ptr %4336, i32 %4400
  %4405 = icmp ugt ptr %4286, %4404
  br i1 %4405, label %4406, label %4432

4406:                                             ; preds = %4403
  %4407 = load i32, ptr %4238, align 1
  %4408 = load i32, ptr %4404, align 1
  %4409 = xor i32 %4408, %4407
  %4410 = icmp eq i32 %4409, 0
  br i1 %4410, label %4414, label %4411

4411:                                             ; preds = %4406
  %4412 = tail call i32 @llvm.cttz.i32(i32 %4409, i1 true) #4, !range !8
  %4413 = lshr i32 %4412, 3
  br label %4458

4414:                                             ; preds = %4420, %4406
  %4415 = phi ptr [ %4418, %4420 ], [ %4404, %4406 ]
  %4416 = phi ptr [ %4417, %4420 ], [ %4238, %4406 ]
  %4417 = getelementptr i8, ptr %4416, i32 4
  %4418 = getelementptr i8, ptr %4415, i32 4
  %4419 = icmp ult ptr %4418, %4286
  br i1 %4419, label %4420, label %4432

4420:                                             ; preds = %4414
  %4421 = load i32, ptr %4417, align 1
  %4422 = load i32, ptr %4418, align 1
  %4423 = xor i32 %4422, %4421
  %4424 = icmp eq i32 %4423, 0
  br i1 %4424, label %4414, label %4425

4425:                                             ; preds = %4420
  %4426 = tail call i32 @llvm.cttz.i32(i32 %4423, i1 true) #4, !range !8
  %4427 = lshr i32 %4426, 3
  %4428 = getelementptr i8, ptr %4418, i32 %4427
  %4429 = ptrtoint ptr %4428 to i32
  %4430 = ptrtoint ptr %4404 to i32
  %4431 = sub i32 %4429, %4430
  br label %4458

4432:                                             ; preds = %4414, %4403
  %4433 = phi ptr [ %4404, %4403 ], [ %4418, %4414 ]
  %4434 = phi ptr [ %4238, %4403 ], [ %4417, %4414 ]
  %4435 = icmp ult ptr %4433, %4287
  br i1 %4435, label %4436, label %4443

4436:                                             ; preds = %4432
  %4437 = load i16, ptr %4434, align 1
  %4438 = load i16, ptr %4433, align 1
  %4439 = icmp eq i16 %4437, %4438
  br i1 %4439, label %4440, label %4443

4440:                                             ; preds = %4436
  %4441 = getelementptr i8, ptr %4433, i32 2
  %4442 = getelementptr i8, ptr %4434, i32 2
  br label %4443

4443:                                             ; preds = %4440, %4436, %4432
  %4444 = phi ptr [ %4441, %4440 ], [ %4433, %4436 ], [ %4433, %4432 ]
  %4445 = phi ptr [ %4442, %4440 ], [ %4434, %4436 ], [ %4434, %4432 ]
  %4446 = icmp ult ptr %4444, %4239
  br i1 %4446, label %4447, label %4453

4447:                                             ; preds = %4443
  %4448 = load i8, ptr %4445, align 1
  %4449 = load i8, ptr %4444, align 1
  %4450 = icmp eq i8 %4448, %4449
  %4451 = zext i1 %4450 to i32
  %4452 = getelementptr i8, ptr %4444, i32 %4451
  br label %4453

4453:                                             ; preds = %4447, %4443
  %4454 = phi ptr [ %4444, %4443 ], [ %4452, %4447 ]
  %4455 = ptrtoint ptr %4454 to i32
  %4456 = ptrtoint ptr %4404 to i32
  %4457 = sub i32 %4455, %4456
  br label %4458

4458:                                             ; preds = %4453, %4425, %4411
  %4459 = phi i32 [ %4457, %4453 ], [ %4413, %4411 ], [ %4431, %4425 ]
  %4460 = add i32 %4459, %4400
  br label %4461

4461:                                             ; preds = %4458, %4399
  %4462 = phi i32 [ %4460, %4458 ], [ %4400, %4399 ]
  %4463 = add i32 %4462, 4
  %4464 = ptrtoint ptr %4331 to i32
  %4465 = ptrtoint ptr %4297 to i32
  %4466 = sub i32 %4464, %4465
  %4467 = add i32 %4462, 1
  %4468 = getelementptr i8, ptr %4297, i32 %4466
  %4469 = icmp ugt ptr %4468, %4288
  %4470 = load ptr, ptr %4289, align 4
  br i1 %4469, label %4492, label %4471

4471:                                             ; preds = %4461
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %4470, ptr noundef align 1 dereferenceable(16) %4297, i32 16, i1 false) #4
  %4472 = icmp ugt i32 %4466, 16
  %4473 = load ptr, ptr %4289, align 4
  br i1 %4472, label %4476, label %4474

4474:                                             ; preds = %4471
  %4475 = getelementptr i8, ptr %4473, i32 %4466
  store ptr %4475, ptr %4289, align 4
  br label %4535

4476:                                             ; preds = %4471
  %4477 = getelementptr i8, ptr %4473, i32 16
  %4478 = getelementptr i8, ptr %4297, i32 16
  %4479 = add i32 %4466, -16
  %4480 = getelementptr i8, ptr %4473, i32 %4466
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %4477, ptr noundef align 1 dereferenceable(16) %4478, i32 16, i1 false) #4
  %4481 = icmp slt i32 %4479, 17
  br i1 %4481, label %4524, label %4482

4482:                                             ; preds = %4476
  %4483 = getelementptr i8, ptr %4473, i32 32
  br label %4484

4484:                                             ; preds = %4484, %4482
  %4485 = phi ptr [ %4478, %4482 ], [ %4489, %4484 ]
  %4486 = phi ptr [ %4483, %4482 ], [ %4490, %4484 ]
  %4487 = getelementptr i8, ptr %4485, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %4486, ptr noundef align 1 dereferenceable(16) %4487, i32 16, i1 false) #4
  %4488 = getelementptr i8, ptr %4486, i32 16
  %4489 = getelementptr i8, ptr %4485, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %4488, ptr noundef align 1 dereferenceable(16) %4489, i32 16, i1 false) #4
  %4490 = getelementptr i8, ptr %4486, i32 32
  %4491 = icmp ult ptr %4490, %4480
  br i1 %4491, label %4484, label %4524

4492:                                             ; preds = %4461
  %4493 = ptrtoint ptr %4468 to i32
  %4494 = icmp ult ptr %4288, %4297
  br i1 %4494, label %4509, label %4495

4495:                                             ; preds = %4492
  %4496 = sub i32 %4290, %4465
  %4497 = getelementptr i8, ptr %4470, i32 %4496
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %4470, ptr noundef align 1 dereferenceable(16) %4297, i32 16, i1 false) #4
  %4498 = icmp slt i32 %4496, 17
  br i1 %4498, label %4509, label %4499

4499:                                             ; preds = %4495
  %4500 = getelementptr i8, ptr %4470, i32 16
  br label %4501

4501:                                             ; preds = %4501, %4499
  %4502 = phi ptr [ %4297, %4499 ], [ %4506, %4501 ]
  %4503 = phi ptr [ %4500, %4499 ], [ %4507, %4501 ]
  %4504 = getelementptr i8, ptr %4502, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %4503, ptr noundef align 1 dereferenceable(16) %4504, i32 16, i1 false) #4
  %4505 = getelementptr i8, ptr %4503, i32 16
  %4506 = getelementptr i8, ptr %4502, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %4505, ptr noundef align 1 dereferenceable(16) %4506, i32 16, i1 false) #4
  %4507 = getelementptr i8, ptr %4503, i32 32
  %4508 = icmp ult ptr %4507, %4497
  br i1 %4508, label %4501, label %4509

4509:                                             ; preds = %4501, %4495, %4492
  %4510 = phi ptr [ %4288, %4495 ], [ %4297, %4492 ], [ %4288, %4501 ]
  %4511 = phi ptr [ %4497, %4495 ], [ %4470, %4492 ], [ %4497, %4501 ]
  %4512 = icmp ult ptr %4510, %4468
  br i1 %4512, label %4513, label %4524

4513:                                             ; preds = %4509
  %4514 = ptrtoint ptr %4510 to i32
  %4515 = sub i32 %4493, %4514
  %4516 = getelementptr i8, ptr %4510, i32 %4515
  br label %4517

4517:                                             ; preds = %4517, %4513
  %4518 = phi ptr [ %4522, %4517 ], [ %4511, %4513 ]
  %4519 = phi ptr [ %4520, %4517 ], [ %4510, %4513 ]
  %4520 = getelementptr i8, ptr %4519, i32 1
  %4521 = load i8, ptr %4519, align 1
  %4522 = getelementptr i8, ptr %4518, i32 1
  store i8 %4521, ptr %4518, align 1
  %4523 = icmp eq ptr %4520, %4516
  br i1 %4523, label %4524, label %4517

4524:                                             ; preds = %4517, %4509, %4484, %4476
  %4525 = load ptr, ptr %4289, align 4
  %4526 = getelementptr i8, ptr %4525, i32 %4466
  store ptr %4526, ptr %4289, align 4
  %4527 = icmp ugt i32 %4466, 65535
  br i1 %4527, label %4528, label %4535

4528:                                             ; preds = %4524
  store i32 1, ptr %4291, align 4
  %4529 = load ptr, ptr %4292, align 4
  %4530 = load ptr, ptr %1, align 4
  %4531 = ptrtoint ptr %4529 to i32
  %4532 = ptrtoint ptr %4530 to i32
  %4533 = sub i32 %4531, %4532
  %4534 = ashr exact i32 %4533, 3
  store i32 %4534, ptr %4293, align 4
  br label %4535

4535:                                             ; preds = %4528, %4524, %4474
  %4536 = trunc i32 %4466 to i16
  %4537 = load ptr, ptr %4292, align 4
  %4538 = getelementptr inbounds %struct.seqDef_s, ptr %4537, i32 0, i32 1
  store i16 %4536, ptr %4538, align 4
  %4539 = load ptr, ptr %4292, align 4
  store i32 1, ptr %4539, align 4
  %4540 = icmp ugt i32 %4467, 65535
  br i1 %4540, label %4543, label %4541

4541:                                             ; preds = %4535
  %4542 = load ptr, ptr %4292, align 4
  br label %5381

4543:                                             ; preds = %4535
  store i32 2, ptr %4291, align 4
  %4544 = load ptr, ptr %4292, align 4
  %4545 = load ptr, ptr %1, align 4
  %4546 = ptrtoint ptr %4544 to i32
  %4547 = ptrtoint ptr %4545 to i32
  %4548 = sub i32 %4546, %4547
  %4549 = ashr exact i32 %4548, 3
  store i32 %4549, ptr %4293, align 4
  br label %5381

4550:                                             ; preds = %4329, %4295
  %4551 = icmp ugt i32 %4314, %4237
  br i1 %4551, label %4552, label %4634

4552:                                             ; preds = %4550
  %4553 = load i64, ptr %4317, align 1
  %4554 = load i64, ptr %4296, align 1
  %4555 = icmp eq i64 %4553, %4554
  br i1 %4555, label %4556, label %4788

4556:                                             ; preds = %4552
  %4557 = getelementptr i8, ptr %4296, i32 8
  %4558 = getelementptr i8, ptr %4317, i32 8
  %4559 = icmp ugt ptr %4286, %4557
  br i1 %4559, label %4560, label %4586

4560:                                             ; preds = %4556
  %4561 = load i32, ptr %4558, align 1
  %4562 = load i32, ptr %4557, align 1
  %4563 = xor i32 %4562, %4561
  %4564 = icmp eq i32 %4563, 0
  br i1 %4564, label %4568, label %4565

4565:                                             ; preds = %4560
  %4566 = tail call i32 @llvm.cttz.i32(i32 %4563, i1 true) #4, !range !8
  %4567 = lshr i32 %4566, 3
  br label %4612

4568:                                             ; preds = %4574, %4560
  %4569 = phi ptr [ %4572, %4574 ], [ %4557, %4560 ]
  %4570 = phi ptr [ %4571, %4574 ], [ %4558, %4560 ]
  %4571 = getelementptr i8, ptr %4570, i32 4
  %4572 = getelementptr i8, ptr %4569, i32 4
  %4573 = icmp ult ptr %4572, %4286
  br i1 %4573, label %4574, label %4586

4574:                                             ; preds = %4568
  %4575 = load i32, ptr %4571, align 1
  %4576 = load i32, ptr %4572, align 1
  %4577 = xor i32 %4576, %4575
  %4578 = icmp eq i32 %4577, 0
  br i1 %4578, label %4568, label %4579

4579:                                             ; preds = %4574
  %4580 = tail call i32 @llvm.cttz.i32(i32 %4577, i1 true) #4, !range !8
  %4581 = lshr i32 %4580, 3
  %4582 = getelementptr i8, ptr %4572, i32 %4581
  %4583 = ptrtoint ptr %4582 to i32
  %4584 = ptrtoint ptr %4557 to i32
  %4585 = sub i32 %4583, %4584
  br label %4612

4586:                                             ; preds = %4568, %4556
  %4587 = phi ptr [ %4557, %4556 ], [ %4572, %4568 ]
  %4588 = phi ptr [ %4558, %4556 ], [ %4571, %4568 ]
  %4589 = icmp ult ptr %4587, %4287
  br i1 %4589, label %4590, label %4597

4590:                                             ; preds = %4586
  %4591 = load i16, ptr %4588, align 1
  %4592 = load i16, ptr %4587, align 1
  %4593 = icmp eq i16 %4591, %4592
  br i1 %4593, label %4594, label %4597

4594:                                             ; preds = %4590
  %4595 = getelementptr i8, ptr %4587, i32 2
  %4596 = getelementptr i8, ptr %4588, i32 2
  br label %4597

4597:                                             ; preds = %4594, %4590, %4586
  %4598 = phi ptr [ %4595, %4594 ], [ %4587, %4590 ], [ %4587, %4586 ]
  %4599 = phi ptr [ %4596, %4594 ], [ %4588, %4590 ], [ %4588, %4586 ]
  %4600 = icmp ult ptr %4598, %4239
  br i1 %4600, label %4601, label %4607

4601:                                             ; preds = %4597
  %4602 = load i8, ptr %4599, align 1
  %4603 = load i8, ptr %4598, align 1
  %4604 = icmp eq i8 %4602, %4603
  %4605 = zext i1 %4604 to i32
  %4606 = getelementptr i8, ptr %4598, i32 %4605
  br label %4607

4607:                                             ; preds = %4601, %4597
  %4608 = phi ptr [ %4598, %4597 ], [ %4606, %4601 ]
  %4609 = ptrtoint ptr %4608 to i32
  %4610 = ptrtoint ptr %4557 to i32
  %4611 = sub i32 %4609, %4610
  br label %4612

4612:                                             ; preds = %4607, %4579, %4565
  %4613 = phi i32 [ %4611, %4607 ], [ %4567, %4565 ], [ %4585, %4579 ]
  %4614 = add i32 %4613, 8
  %4615 = ptrtoint ptr %4317 to i32
  %4616 = sub i32 %4311, %4615
  %4617 = icmp ugt ptr %4296, %4297
  %4618 = icmp ugt ptr %4317, %4238
  %4619 = and i1 %4617, %4618
  br i1 %4619, label %4620, label %5290

4620:                                             ; preds = %4629, %4612
  %4621 = phi ptr [ %4624, %4629 ], [ %4296, %4612 ]
  %4622 = phi ptr [ %4626, %4629 ], [ %4317, %4612 ]
  %4623 = phi i32 [ %4630, %4629 ], [ %4614, %4612 ]
  %4624 = getelementptr i8, ptr %4621, i32 -1
  %4625 = load i8, ptr %4624, align 1
  %4626 = getelementptr i8, ptr %4622, i32 -1
  %4627 = load i8, ptr %4626, align 1
  %4628 = icmp eq i8 %4625, %4627
  br i1 %4628, label %4629, label %5290

4629:                                             ; preds = %4620
  %4630 = add i32 %4623, 1
  %4631 = icmp ugt ptr %4624, %4297
  %4632 = icmp ugt ptr %4626, %4238
  %4633 = and i1 %4631, %4632
  br i1 %4633, label %4620, label %5290

4634:                                             ; preds = %4550
  %4635 = getelementptr i32, ptr %4247, i32 %4308
  %4636 = load i32, ptr %4635, align 4
  %4637 = getelementptr i8, ptr %4253, i32 %4636
  %4638 = icmp ugt ptr %4637, %4254
  br i1 %4638, label %4639, label %4791

4639:                                             ; preds = %4634
  %4640 = load i64, ptr %4637, align 1
  %4641 = load i64, ptr %4296, align 1
  %4642 = icmp eq i64 %4640, %4641
  br i1 %4642, label %4643, label %4791

4643:                                             ; preds = %4639
  %4644 = getelementptr i8, ptr %4296, i32 8
  %4645 = getelementptr i8, ptr %4637, i32 8
  %4646 = ptrtoint ptr %4645 to i32
  %4647 = sub i32 %4256, %4646
  %4648 = getelementptr i8, ptr %4644, i32 %4647
  %4649 = icmp ult ptr %4648, %4239
  %4650 = select i1 %4649, ptr %4648, ptr %4239
  %4651 = getelementptr i8, ptr %4650, i32 -3
  %4652 = icmp ugt ptr %4651, %4644
  br i1 %4652, label %4653, label %4679

4653:                                             ; preds = %4643
  %4654 = load i32, ptr %4645, align 1
  %4655 = load i32, ptr %4644, align 1
  %4656 = xor i32 %4655, %4654
  %4657 = icmp eq i32 %4656, 0
  br i1 %4657, label %4661, label %4658

4658:                                             ; preds = %4653
  %4659 = tail call i32 @llvm.cttz.i32(i32 %4656, i1 true) #4, !range !8
  %4660 = lshr i32 %4659, 3
  br label %4706

4661:                                             ; preds = %4667, %4653
  %4662 = phi ptr [ %4665, %4667 ], [ %4644, %4653 ]
  %4663 = phi ptr [ %4664, %4667 ], [ %4645, %4653 ]
  %4664 = getelementptr i8, ptr %4663, i32 4
  %4665 = getelementptr i8, ptr %4662, i32 4
  %4666 = icmp ult ptr %4665, %4651
  br i1 %4666, label %4667, label %4679

4667:                                             ; preds = %4661
  %4668 = load i32, ptr %4664, align 1
  %4669 = load i32, ptr %4665, align 1
  %4670 = xor i32 %4669, %4668
  %4671 = icmp eq i32 %4670, 0
  br i1 %4671, label %4661, label %4672

4672:                                             ; preds = %4667
  %4673 = tail call i32 @llvm.cttz.i32(i32 %4670, i1 true) #4, !range !8
  %4674 = lshr i32 %4673, 3
  %4675 = getelementptr i8, ptr %4665, i32 %4674
  %4676 = ptrtoint ptr %4675 to i32
  %4677 = ptrtoint ptr %4644 to i32
  %4678 = sub i32 %4676, %4677
  br label %4706

4679:                                             ; preds = %4661, %4643
  %4680 = phi ptr [ %4644, %4643 ], [ %4665, %4661 ]
  %4681 = phi ptr [ %4645, %4643 ], [ %4664, %4661 ]
  %4682 = getelementptr i8, ptr %4650, i32 -1
  %4683 = icmp ult ptr %4680, %4682
  br i1 %4683, label %4684, label %4691

4684:                                             ; preds = %4679
  %4685 = load i16, ptr %4681, align 1
  %4686 = load i16, ptr %4680, align 1
  %4687 = icmp eq i16 %4685, %4686
  br i1 %4687, label %4688, label %4691

4688:                                             ; preds = %4684
  %4689 = getelementptr i8, ptr %4680, i32 2
  %4690 = getelementptr i8, ptr %4681, i32 2
  br label %4691

4691:                                             ; preds = %4688, %4684, %4679
  %4692 = phi ptr [ %4689, %4688 ], [ %4680, %4684 ], [ %4680, %4679 ]
  %4693 = phi ptr [ %4690, %4688 ], [ %4681, %4684 ], [ %4681, %4679 ]
  %4694 = icmp ult ptr %4692, %4650
  br i1 %4694, label %4695, label %4701

4695:                                             ; preds = %4691
  %4696 = load i8, ptr %4693, align 1
  %4697 = load i8, ptr %4692, align 1
  %4698 = icmp eq i8 %4696, %4697
  %4699 = zext i1 %4698 to i32
  %4700 = getelementptr i8, ptr %4692, i32 %4699
  br label %4701

4701:                                             ; preds = %4695, %4691
  %4702 = phi ptr [ %4692, %4691 ], [ %4700, %4695 ]
  %4703 = ptrtoint ptr %4702 to i32
  %4704 = ptrtoint ptr %4644 to i32
  %4705 = sub i32 %4703, %4704
  br label %4706

4706:                                             ; preds = %4701, %4672, %4658
  %4707 = phi i32 [ %4705, %4701 ], [ %4660, %4658 ], [ %4678, %4672 ]
  %4708 = getelementptr i8, ptr %4645, i32 %4707
  %4709 = icmp eq ptr %4708, %4255
  br i1 %4709, label %4710, label %4768

4710:                                             ; preds = %4706
  %4711 = getelementptr i8, ptr %4644, i32 %4707
  %4712 = icmp ugt ptr %4286, %4711
  br i1 %4712, label %4713, label %4739

4713:                                             ; preds = %4710
  %4714 = load i32, ptr %4238, align 1
  %4715 = load i32, ptr %4711, align 1
  %4716 = xor i32 %4715, %4714
  %4717 = icmp eq i32 %4716, 0
  br i1 %4717, label %4721, label %4718

4718:                                             ; preds = %4713
  %4719 = tail call i32 @llvm.cttz.i32(i32 %4716, i1 true) #4, !range !8
  %4720 = lshr i32 %4719, 3
  br label %4765

4721:                                             ; preds = %4727, %4713
  %4722 = phi ptr [ %4725, %4727 ], [ %4711, %4713 ]
  %4723 = phi ptr [ %4724, %4727 ], [ %4238, %4713 ]
  %4724 = getelementptr i8, ptr %4723, i32 4
  %4725 = getelementptr i8, ptr %4722, i32 4
  %4726 = icmp ult ptr %4725, %4286
  br i1 %4726, label %4727, label %4739

4727:                                             ; preds = %4721
  %4728 = load i32, ptr %4724, align 1
  %4729 = load i32, ptr %4725, align 1
  %4730 = xor i32 %4729, %4728
  %4731 = icmp eq i32 %4730, 0
  br i1 %4731, label %4721, label %4732

4732:                                             ; preds = %4727
  %4733 = tail call i32 @llvm.cttz.i32(i32 %4730, i1 true) #4, !range !8
  %4734 = lshr i32 %4733, 3
  %4735 = getelementptr i8, ptr %4725, i32 %4734
  %4736 = ptrtoint ptr %4735 to i32
  %4737 = ptrtoint ptr %4711 to i32
  %4738 = sub i32 %4736, %4737
  br label %4765

4739:                                             ; preds = %4721, %4710
  %4740 = phi ptr [ %4711, %4710 ], [ %4725, %4721 ]
  %4741 = phi ptr [ %4238, %4710 ], [ %4724, %4721 ]
  %4742 = icmp ult ptr %4740, %4287
  br i1 %4742, label %4743, label %4750

4743:                                             ; preds = %4739
  %4744 = load i16, ptr %4741, align 1
  %4745 = load i16, ptr %4740, align 1
  %4746 = icmp eq i16 %4744, %4745
  br i1 %4746, label %4747, label %4750

4747:                                             ; preds = %4743
  %4748 = getelementptr i8, ptr %4740, i32 2
  %4749 = getelementptr i8, ptr %4741, i32 2
  br label %4750

4750:                                             ; preds = %4747, %4743, %4739
  %4751 = phi ptr [ %4748, %4747 ], [ %4740, %4743 ], [ %4740, %4739 ]
  %4752 = phi ptr [ %4749, %4747 ], [ %4741, %4743 ], [ %4741, %4739 ]
  %4753 = icmp ult ptr %4751, %4239
  br i1 %4753, label %4754, label %4760

4754:                                             ; preds = %4750
  %4755 = load i8, ptr %4752, align 1
  %4756 = load i8, ptr %4751, align 1
  %4757 = icmp eq i8 %4755, %4756
  %4758 = zext i1 %4757 to i32
  %4759 = getelementptr i8, ptr %4751, i32 %4758
  br label %4760

4760:                                             ; preds = %4754, %4750
  %4761 = phi ptr [ %4751, %4750 ], [ %4759, %4754 ]
  %4762 = ptrtoint ptr %4761 to i32
  %4763 = ptrtoint ptr %4711 to i32
  %4764 = sub i32 %4762, %4763
  br label %4765

4765:                                             ; preds = %4760, %4732, %4718
  %4766 = phi i32 [ %4764, %4760 ], [ %4720, %4718 ], [ %4738, %4732 ]
  %4767 = add i32 %4766, %4707
  br label %4768

4768:                                             ; preds = %4765, %4706
  %4769 = phi i32 [ %4767, %4765 ], [ %4707, %4706 ]
  %4770 = add i32 %4769, 8
  %4771 = add i32 %4259, %4636
  %4772 = sub i32 %4312, %4771
  %4773 = icmp ugt ptr %4296, %4297
  br i1 %4773, label %4774, label %5290

4774:                                             ; preds = %4783, %4768
  %4775 = phi ptr [ %4778, %4783 ], [ %4296, %4768 ]
  %4776 = phi ptr [ %4780, %4783 ], [ %4637, %4768 ]
  %4777 = phi i32 [ %4784, %4783 ], [ %4770, %4768 ]
  %4778 = getelementptr i8, ptr %4775, i32 -1
  %4779 = load i8, ptr %4778, align 1
  %4780 = getelementptr i8, ptr %4776, i32 -1
  %4781 = load i8, ptr %4780, align 1
  %4782 = icmp eq i8 %4779, %4781
  br i1 %4782, label %4783, label %5290

4783:                                             ; preds = %4774
  %4784 = add i32 %4777, 1
  %4785 = icmp ugt ptr %4778, %4297
  %4786 = icmp ugt ptr %4780, %4254
  %4787 = and i1 %4785, %4786
  br i1 %4787, label %4774, label %5290

4788:                                             ; preds = %4552
  %4789 = trunc i64 %4554 to i32
  %4790 = icmp ugt i32 %4316, %4237
  br i1 %4790, label %4795, label %4799

4791:                                             ; preds = %4639, %4634
  %4792 = icmp ugt i32 %4316, %4237
  br i1 %4792, label %4793, label %4799

4793:                                             ; preds = %4791
  %4794 = load i32, ptr %4296, align 1
  br label %4795

4795:                                             ; preds = %4793, %4788
  %4796 = phi i32 [ %4794, %4793 ], [ %4789, %4788 ]
  %4797 = load i32, ptr %4318, align 1
  %4798 = icmp eq i32 %4797, %4796
  br i1 %4798, label %4815, label %4809

4799:                                             ; preds = %4791, %4788
  %4800 = getelementptr i32, ptr %4249, i32 %4310
  %4801 = load i32, ptr %4800, align 4
  %4802 = getelementptr i8, ptr %4253, i32 %4801
  %4803 = icmp ugt ptr %4802, %4254
  br i1 %4803, label %4804, label %4809

4804:                                             ; preds = %4799
  %4805 = add i32 %4801, %4259
  %4806 = load i32, ptr %4802, align 1
  %4807 = load i32, ptr %4296, align 1
  %4808 = icmp eq i32 %4806, %4807
  br i1 %4808, label %4815, label %4809

4809:                                             ; preds = %4804, %4799, %4795
  %4810 = ptrtoint ptr %4297 to i32
  %4811 = sub i32 %4311, %4810
  %4812 = ashr i32 %4811, 8
  %4813 = add nsw i32 %4812, 1
  %4814 = getelementptr i8, ptr %4296, i32 %4813
  br label %5606

4815:                                             ; preds = %4804, %4795
  %4816 = phi i32 [ %4316, %4795 ], [ %4805, %4804 ]
  %4817 = phi ptr [ %4318, %4795 ], [ %4802, %4804 ]
  %4818 = getelementptr i8, ptr %4296, i32 1
  %4819 = load i64, ptr %4818, align 1
  %4820 = mul i64 %4819, -3523014627327384477
  %4821 = lshr i64 %4820, %4279
  %4822 = trunc i64 %4821 to i32
  %4823 = getelementptr i32, ptr %4217, i32 %4822
  %4824 = load i32, ptr %4823, align 4
  %4825 = getelementptr i8, ptr %4221, i32 %4824
  store i32 %4319, ptr %4823, align 4
  %4826 = icmp ugt i32 %4824, %4237
  br i1 %4826, label %4827, label %4910

4827:                                             ; preds = %4815
  %4828 = load i64, ptr %4825, align 1
  %4829 = load i64, ptr %4818, align 1
  %4830 = icmp eq i64 %4828, %4829
  br i1 %4830, label %4831, label %5066

4831:                                             ; preds = %4827
  %4832 = getelementptr i8, ptr %4296, i32 9
  %4833 = getelementptr i8, ptr %4825, i32 8
  %4834 = icmp ugt ptr %4286, %4832
  br i1 %4834, label %4835, label %4861

4835:                                             ; preds = %4831
  %4836 = load i32, ptr %4833, align 1
  %4837 = load i32, ptr %4832, align 1
  %4838 = xor i32 %4837, %4836
  %4839 = icmp eq i32 %4838, 0
  br i1 %4839, label %4843, label %4840

4840:                                             ; preds = %4835
  %4841 = tail call i32 @llvm.cttz.i32(i32 %4838, i1 true) #4, !range !8
  %4842 = lshr i32 %4841, 3
  br label %4887

4843:                                             ; preds = %4849, %4835
  %4844 = phi ptr [ %4847, %4849 ], [ %4832, %4835 ]
  %4845 = phi ptr [ %4846, %4849 ], [ %4833, %4835 ]
  %4846 = getelementptr i8, ptr %4845, i32 4
  %4847 = getelementptr i8, ptr %4844, i32 4
  %4848 = icmp ult ptr %4847, %4286
  br i1 %4848, label %4849, label %4861

4849:                                             ; preds = %4843
  %4850 = load i32, ptr %4846, align 1
  %4851 = load i32, ptr %4847, align 1
  %4852 = xor i32 %4851, %4850
  %4853 = icmp eq i32 %4852, 0
  br i1 %4853, label %4843, label %4854

4854:                                             ; preds = %4849
  %4855 = tail call i32 @llvm.cttz.i32(i32 %4852, i1 true) #4, !range !8
  %4856 = lshr i32 %4855, 3
  %4857 = getelementptr i8, ptr %4847, i32 %4856
  %4858 = ptrtoint ptr %4857 to i32
  %4859 = ptrtoint ptr %4832 to i32
  %4860 = sub i32 %4858, %4859
  br label %4887

4861:                                             ; preds = %4843, %4831
  %4862 = phi ptr [ %4832, %4831 ], [ %4847, %4843 ]
  %4863 = phi ptr [ %4833, %4831 ], [ %4846, %4843 ]
  %4864 = icmp ult ptr %4862, %4287
  br i1 %4864, label %4865, label %4872

4865:                                             ; preds = %4861
  %4866 = load i16, ptr %4863, align 1
  %4867 = load i16, ptr %4862, align 1
  %4868 = icmp eq i16 %4866, %4867
  br i1 %4868, label %4869, label %4872

4869:                                             ; preds = %4865
  %4870 = getelementptr i8, ptr %4862, i32 2
  %4871 = getelementptr i8, ptr %4863, i32 2
  br label %4872

4872:                                             ; preds = %4869, %4865, %4861
  %4873 = phi ptr [ %4870, %4869 ], [ %4862, %4865 ], [ %4862, %4861 ]
  %4874 = phi ptr [ %4871, %4869 ], [ %4863, %4865 ], [ %4863, %4861 ]
  %4875 = icmp ult ptr %4873, %4239
  br i1 %4875, label %4876, label %4882

4876:                                             ; preds = %4872
  %4877 = load i8, ptr %4874, align 1
  %4878 = load i8, ptr %4873, align 1
  %4879 = icmp eq i8 %4877, %4878
  %4880 = zext i1 %4879 to i32
  %4881 = getelementptr i8, ptr %4873, i32 %4880
  br label %4882

4882:                                             ; preds = %4876, %4872
  %4883 = phi ptr [ %4873, %4872 ], [ %4881, %4876 ]
  %4884 = ptrtoint ptr %4883 to i32
  %4885 = ptrtoint ptr %4832 to i32
  %4886 = sub i32 %4884, %4885
  br label %4887

4887:                                             ; preds = %4882, %4854, %4840
  %4888 = phi i32 [ %4886, %4882 ], [ %4842, %4840 ], [ %4860, %4854 ]
  %4889 = add i32 %4888, 8
  %4890 = ptrtoint ptr %4818 to i32
  %4891 = ptrtoint ptr %4825 to i32
  %4892 = sub i32 %4890, %4891
  %4893 = icmp ugt ptr %4818, %4297
  %4894 = icmp ugt ptr %4825, %4238
  %4895 = and i1 %4893, %4894
  br i1 %4895, label %4896, label %5290

4896:                                             ; preds = %4905, %4887
  %4897 = phi ptr [ %4902, %4905 ], [ %4825, %4887 ]
  %4898 = phi ptr [ %4900, %4905 ], [ %4818, %4887 ]
  %4899 = phi i32 [ %4906, %4905 ], [ %4889, %4887 ]
  %4900 = getelementptr i8, ptr %4898, i32 -1
  %4901 = load i8, ptr %4900, align 1
  %4902 = getelementptr i8, ptr %4897, i32 -1
  %4903 = load i8, ptr %4902, align 1
  %4904 = icmp eq i8 %4901, %4903
  br i1 %4904, label %4905, label %5290

4905:                                             ; preds = %4896
  %4906 = add i32 %4899, 1
  %4907 = icmp ugt ptr %4900, %4297
  %4908 = icmp ugt ptr %4902, %4238
  %4909 = and i1 %4908, %4907
  br i1 %4909, label %4896, label %5290

4910:                                             ; preds = %4815
  %4911 = lshr i64 %4820, %4283
  %4912 = trunc i64 %4911 to i32
  %4913 = getelementptr i32, ptr %4247, i32 %4912
  %4914 = load i32, ptr %4913, align 4
  %4915 = getelementptr i8, ptr %4253, i32 %4914
  %4916 = icmp ugt ptr %4915, %4254
  br i1 %4916, label %4917, label %5066

4917:                                             ; preds = %4910
  %4918 = load i64, ptr %4915, align 1
  %4919 = load i64, ptr %4818, align 1
  %4920 = icmp eq i64 %4918, %4919
  br i1 %4920, label %4921, label %5066

4921:                                             ; preds = %4917
  %4922 = getelementptr i8, ptr %4296, i32 9
  %4923 = getelementptr i8, ptr %4915, i32 8
  %4924 = ptrtoint ptr %4923 to i32
  %4925 = sub i32 %4256, %4924
  %4926 = getelementptr i8, ptr %4922, i32 %4925
  %4927 = icmp ult ptr %4926, %4239
  %4928 = select i1 %4927, ptr %4926, ptr %4239
  %4929 = getelementptr i8, ptr %4928, i32 -3
  %4930 = icmp ugt ptr %4929, %4922
  br i1 %4930, label %4931, label %4957

4931:                                             ; preds = %4921
  %4932 = load i32, ptr %4923, align 1
  %4933 = load i32, ptr %4922, align 1
  %4934 = xor i32 %4933, %4932
  %4935 = icmp eq i32 %4934, 0
  br i1 %4935, label %4939, label %4936

4936:                                             ; preds = %4931
  %4937 = tail call i32 @llvm.cttz.i32(i32 %4934, i1 true) #4, !range !8
  %4938 = lshr i32 %4937, 3
  br label %4984

4939:                                             ; preds = %4945, %4931
  %4940 = phi ptr [ %4943, %4945 ], [ %4922, %4931 ]
  %4941 = phi ptr [ %4942, %4945 ], [ %4923, %4931 ]
  %4942 = getelementptr i8, ptr %4941, i32 4
  %4943 = getelementptr i8, ptr %4940, i32 4
  %4944 = icmp ult ptr %4943, %4929
  br i1 %4944, label %4945, label %4957

4945:                                             ; preds = %4939
  %4946 = load i32, ptr %4942, align 1
  %4947 = load i32, ptr %4943, align 1
  %4948 = xor i32 %4947, %4946
  %4949 = icmp eq i32 %4948, 0
  br i1 %4949, label %4939, label %4950

4950:                                             ; preds = %4945
  %4951 = tail call i32 @llvm.cttz.i32(i32 %4948, i1 true) #4, !range !8
  %4952 = lshr i32 %4951, 3
  %4953 = getelementptr i8, ptr %4943, i32 %4952
  %4954 = ptrtoint ptr %4953 to i32
  %4955 = ptrtoint ptr %4922 to i32
  %4956 = sub i32 %4954, %4955
  br label %4984

4957:                                             ; preds = %4939, %4921
  %4958 = phi ptr [ %4922, %4921 ], [ %4943, %4939 ]
  %4959 = phi ptr [ %4923, %4921 ], [ %4942, %4939 ]
  %4960 = getelementptr i8, ptr %4928, i32 -1
  %4961 = icmp ult ptr %4958, %4960
  br i1 %4961, label %4962, label %4969

4962:                                             ; preds = %4957
  %4963 = load i16, ptr %4959, align 1
  %4964 = load i16, ptr %4958, align 1
  %4965 = icmp eq i16 %4963, %4964
  br i1 %4965, label %4966, label %4969

4966:                                             ; preds = %4962
  %4967 = getelementptr i8, ptr %4958, i32 2
  %4968 = getelementptr i8, ptr %4959, i32 2
  br label %4969

4969:                                             ; preds = %4966, %4962, %4957
  %4970 = phi ptr [ %4967, %4966 ], [ %4958, %4962 ], [ %4958, %4957 ]
  %4971 = phi ptr [ %4968, %4966 ], [ %4959, %4962 ], [ %4959, %4957 ]
  %4972 = icmp ult ptr %4970, %4928
  br i1 %4972, label %4973, label %4979

4973:                                             ; preds = %4969
  %4974 = load i8, ptr %4971, align 1
  %4975 = load i8, ptr %4970, align 1
  %4976 = icmp eq i8 %4974, %4975
  %4977 = zext i1 %4976 to i32
  %4978 = getelementptr i8, ptr %4970, i32 %4977
  br label %4979

4979:                                             ; preds = %4973, %4969
  %4980 = phi ptr [ %4970, %4969 ], [ %4978, %4973 ]
  %4981 = ptrtoint ptr %4980 to i32
  %4982 = ptrtoint ptr %4922 to i32
  %4983 = sub i32 %4981, %4982
  br label %4984

4984:                                             ; preds = %4979, %4950, %4936
  %4985 = phi i32 [ %4983, %4979 ], [ %4938, %4936 ], [ %4956, %4950 ]
  %4986 = getelementptr i8, ptr %4923, i32 %4985
  %4987 = icmp eq ptr %4986, %4255
  br i1 %4987, label %4988, label %5046

4988:                                             ; preds = %4984
  %4989 = getelementptr i8, ptr %4922, i32 %4985
  %4990 = icmp ugt ptr %4286, %4989
  br i1 %4990, label %4991, label %5017

4991:                                             ; preds = %4988
  %4992 = load i32, ptr %4238, align 1
  %4993 = load i32, ptr %4989, align 1
  %4994 = xor i32 %4993, %4992
  %4995 = icmp eq i32 %4994, 0
  br i1 %4995, label %4999, label %4996

4996:                                             ; preds = %4991
  %4997 = tail call i32 @llvm.cttz.i32(i32 %4994, i1 true) #4, !range !8
  %4998 = lshr i32 %4997, 3
  br label %5043

4999:                                             ; preds = %5005, %4991
  %5000 = phi ptr [ %5003, %5005 ], [ %4989, %4991 ]
  %5001 = phi ptr [ %5002, %5005 ], [ %4238, %4991 ]
  %5002 = getelementptr i8, ptr %5001, i32 4
  %5003 = getelementptr i8, ptr %5000, i32 4
  %5004 = icmp ult ptr %5003, %4286
  br i1 %5004, label %5005, label %5017

5005:                                             ; preds = %4999
  %5006 = load i32, ptr %5002, align 1
  %5007 = load i32, ptr %5003, align 1
  %5008 = xor i32 %5007, %5006
  %5009 = icmp eq i32 %5008, 0
  br i1 %5009, label %4999, label %5010

5010:                                             ; preds = %5005
  %5011 = tail call i32 @llvm.cttz.i32(i32 %5008, i1 true) #4, !range !8
  %5012 = lshr i32 %5011, 3
  %5013 = getelementptr i8, ptr %5003, i32 %5012
  %5014 = ptrtoint ptr %5013 to i32
  %5015 = ptrtoint ptr %4989 to i32
  %5016 = sub i32 %5014, %5015
  br label %5043

5017:                                             ; preds = %4999, %4988
  %5018 = phi ptr [ %4989, %4988 ], [ %5003, %4999 ]
  %5019 = phi ptr [ %4238, %4988 ], [ %5002, %4999 ]
  %5020 = icmp ult ptr %5018, %4287
  br i1 %5020, label %5021, label %5028

5021:                                             ; preds = %5017
  %5022 = load i16, ptr %5019, align 1
  %5023 = load i16, ptr %5018, align 1
  %5024 = icmp eq i16 %5022, %5023
  br i1 %5024, label %5025, label %5028

5025:                                             ; preds = %5021
  %5026 = getelementptr i8, ptr %5018, i32 2
  %5027 = getelementptr i8, ptr %5019, i32 2
  br label %5028

5028:                                             ; preds = %5025, %5021, %5017
  %5029 = phi ptr [ %5026, %5025 ], [ %5018, %5021 ], [ %5018, %5017 ]
  %5030 = phi ptr [ %5027, %5025 ], [ %5019, %5021 ], [ %5019, %5017 ]
  %5031 = icmp ult ptr %5029, %4239
  br i1 %5031, label %5032, label %5038

5032:                                             ; preds = %5028
  %5033 = load i8, ptr %5030, align 1
  %5034 = load i8, ptr %5029, align 1
  %5035 = icmp eq i8 %5033, %5034
  %5036 = zext i1 %5035 to i32
  %5037 = getelementptr i8, ptr %5029, i32 %5036
  br label %5038

5038:                                             ; preds = %5032, %5028
  %5039 = phi ptr [ %5029, %5028 ], [ %5037, %5032 ]
  %5040 = ptrtoint ptr %5039 to i32
  %5041 = ptrtoint ptr %4989 to i32
  %5042 = sub i32 %5040, %5041
  br label %5043

5043:                                             ; preds = %5038, %5010, %4996
  %5044 = phi i32 [ %5042, %5038 ], [ %4998, %4996 ], [ %5016, %5010 ]
  %5045 = add i32 %5044, %4985
  br label %5046

5046:                                             ; preds = %5043, %4984
  %5047 = phi i32 [ %5045, %5043 ], [ %4985, %4984 ]
  %5048 = add i32 %5047, 8
  %5049 = add i32 %4259, %4914
  %5050 = sub i32 %4319, %5049
  %5051 = icmp ugt ptr %4818, %4297
  br i1 %5051, label %5052, label %5290

5052:                                             ; preds = %5061, %5046
  %5053 = phi ptr [ %5058, %5061 ], [ %4915, %5046 ]
  %5054 = phi ptr [ %5056, %5061 ], [ %4818, %5046 ]
  %5055 = phi i32 [ %5062, %5061 ], [ %5048, %5046 ]
  %5056 = getelementptr i8, ptr %5054, i32 -1
  %5057 = load i8, ptr %5056, align 1
  %5058 = getelementptr i8, ptr %5053, i32 -1
  %5059 = load i8, ptr %5058, align 1
  %5060 = icmp eq i8 %5057, %5059
  br i1 %5060, label %5061, label %5290

5061:                                             ; preds = %5052
  %5062 = add i32 %5055, 1
  %5063 = icmp ugt ptr %5056, %4297
  %5064 = icmp ugt ptr %5058, %4254
  %5065 = and i1 %5064, %5063
  br i1 %5065, label %5052, label %5290

5066:                                             ; preds = %4917, %4910, %4827
  %5067 = icmp ult i32 %4816, %4237
  %5068 = getelementptr i8, ptr %4296, i32 4
  %5069 = getelementptr i8, ptr %4817, i32 4
  br i1 %5067, label %5070, label %5214

5070:                                             ; preds = %5066
  %5071 = ptrtoint ptr %5069 to i32
  %5072 = sub i32 %4256, %5071
  %5073 = getelementptr i8, ptr %5068, i32 %5072
  %5074 = icmp ult ptr %5073, %4239
  %5075 = select i1 %5074, ptr %5073, ptr %4239
  %5076 = getelementptr i8, ptr %5075, i32 -3
  %5077 = icmp ugt ptr %5076, %5068
  br i1 %5077, label %5078, label %5104

5078:                                             ; preds = %5070
  %5079 = load i32, ptr %5069, align 1
  %5080 = load i32, ptr %5068, align 1
  %5081 = xor i32 %5080, %5079
  %5082 = icmp eq i32 %5081, 0
  br i1 %5082, label %5086, label %5083

5083:                                             ; preds = %5078
  %5084 = tail call i32 @llvm.cttz.i32(i32 %5081, i1 true) #4, !range !8
  %5085 = lshr i32 %5084, 3
  br label %5131

5086:                                             ; preds = %5092, %5078
  %5087 = phi ptr [ %5090, %5092 ], [ %5068, %5078 ]
  %5088 = phi ptr [ %5089, %5092 ], [ %5069, %5078 ]
  %5089 = getelementptr i8, ptr %5088, i32 4
  %5090 = getelementptr i8, ptr %5087, i32 4
  %5091 = icmp ult ptr %5090, %5076
  br i1 %5091, label %5092, label %5104

5092:                                             ; preds = %5086
  %5093 = load i32, ptr %5089, align 1
  %5094 = load i32, ptr %5090, align 1
  %5095 = xor i32 %5094, %5093
  %5096 = icmp eq i32 %5095, 0
  br i1 %5096, label %5086, label %5097

5097:                                             ; preds = %5092
  %5098 = tail call i32 @llvm.cttz.i32(i32 %5095, i1 true) #4, !range !8
  %5099 = lshr i32 %5098, 3
  %5100 = getelementptr i8, ptr %5090, i32 %5099
  %5101 = ptrtoint ptr %5100 to i32
  %5102 = ptrtoint ptr %5068 to i32
  %5103 = sub i32 %5101, %5102
  br label %5131

5104:                                             ; preds = %5086, %5070
  %5105 = phi ptr [ %5068, %5070 ], [ %5090, %5086 ]
  %5106 = phi ptr [ %5069, %5070 ], [ %5089, %5086 ]
  %5107 = getelementptr i8, ptr %5075, i32 -1
  %5108 = icmp ult ptr %5105, %5107
  br i1 %5108, label %5109, label %5116

5109:                                             ; preds = %5104
  %5110 = load i16, ptr %5106, align 1
  %5111 = load i16, ptr %5105, align 1
  %5112 = icmp eq i16 %5110, %5111
  br i1 %5112, label %5113, label %5116

5113:                                             ; preds = %5109
  %5114 = getelementptr i8, ptr %5105, i32 2
  %5115 = getelementptr i8, ptr %5106, i32 2
  br label %5116

5116:                                             ; preds = %5113, %5109, %5104
  %5117 = phi ptr [ %5114, %5113 ], [ %5105, %5109 ], [ %5105, %5104 ]
  %5118 = phi ptr [ %5115, %5113 ], [ %5106, %5109 ], [ %5106, %5104 ]
  %5119 = icmp ult ptr %5117, %5075
  br i1 %5119, label %5120, label %5126

5120:                                             ; preds = %5116
  %5121 = load i8, ptr %5118, align 1
  %5122 = load i8, ptr %5117, align 1
  %5123 = icmp eq i8 %5121, %5122
  %5124 = zext i1 %5123 to i32
  %5125 = getelementptr i8, ptr %5117, i32 %5124
  br label %5126

5126:                                             ; preds = %5120, %5116
  %5127 = phi ptr [ %5117, %5116 ], [ %5125, %5120 ]
  %5128 = ptrtoint ptr %5127 to i32
  %5129 = ptrtoint ptr %5068 to i32
  %5130 = sub i32 %5128, %5129
  br label %5131

5131:                                             ; preds = %5126, %5097, %5083
  %5132 = phi i32 [ %5130, %5126 ], [ %5085, %5083 ], [ %5103, %5097 ]
  %5133 = getelementptr i8, ptr %5069, i32 %5132
  %5134 = icmp eq ptr %5133, %4255
  br i1 %5134, label %5135, label %5193

5135:                                             ; preds = %5131
  %5136 = getelementptr i8, ptr %5068, i32 %5132
  %5137 = icmp ugt ptr %4286, %5136
  br i1 %5137, label %5138, label %5164

5138:                                             ; preds = %5135
  %5139 = load i32, ptr %4238, align 1
  %5140 = load i32, ptr %5136, align 1
  %5141 = xor i32 %5140, %5139
  %5142 = icmp eq i32 %5141, 0
  br i1 %5142, label %5146, label %5143

5143:                                             ; preds = %5138
  %5144 = tail call i32 @llvm.cttz.i32(i32 %5141, i1 true) #4, !range !8
  %5145 = lshr i32 %5144, 3
  br label %5190

5146:                                             ; preds = %5152, %5138
  %5147 = phi ptr [ %5150, %5152 ], [ %5136, %5138 ]
  %5148 = phi ptr [ %5149, %5152 ], [ %4238, %5138 ]
  %5149 = getelementptr i8, ptr %5148, i32 4
  %5150 = getelementptr i8, ptr %5147, i32 4
  %5151 = icmp ult ptr %5150, %4286
  br i1 %5151, label %5152, label %5164

5152:                                             ; preds = %5146
  %5153 = load i32, ptr %5149, align 1
  %5154 = load i32, ptr %5150, align 1
  %5155 = xor i32 %5154, %5153
  %5156 = icmp eq i32 %5155, 0
  br i1 %5156, label %5146, label %5157

5157:                                             ; preds = %5152
  %5158 = tail call i32 @llvm.cttz.i32(i32 %5155, i1 true) #4, !range !8
  %5159 = lshr i32 %5158, 3
  %5160 = getelementptr i8, ptr %5150, i32 %5159
  %5161 = ptrtoint ptr %5160 to i32
  %5162 = ptrtoint ptr %5136 to i32
  %5163 = sub i32 %5161, %5162
  br label %5190

5164:                                             ; preds = %5146, %5135
  %5165 = phi ptr [ %5136, %5135 ], [ %5150, %5146 ]
  %5166 = phi ptr [ %4238, %5135 ], [ %5149, %5146 ]
  %5167 = icmp ult ptr %5165, %4287
  br i1 %5167, label %5168, label %5175

5168:                                             ; preds = %5164
  %5169 = load i16, ptr %5166, align 1
  %5170 = load i16, ptr %5165, align 1
  %5171 = icmp eq i16 %5169, %5170
  br i1 %5171, label %5172, label %5175

5172:                                             ; preds = %5168
  %5173 = getelementptr i8, ptr %5165, i32 2
  %5174 = getelementptr i8, ptr %5166, i32 2
  br label %5175

5175:                                             ; preds = %5172, %5168, %5164
  %5176 = phi ptr [ %5173, %5172 ], [ %5165, %5168 ], [ %5165, %5164 ]
  %5177 = phi ptr [ %5174, %5172 ], [ %5166, %5168 ], [ %5166, %5164 ]
  %5178 = icmp ult ptr %5176, %4239
  br i1 %5178, label %5179, label %5185

5179:                                             ; preds = %5175
  %5180 = load i8, ptr %5177, align 1
  %5181 = load i8, ptr %5176, align 1
  %5182 = icmp eq i8 %5180, %5181
  %5183 = zext i1 %5182 to i32
  %5184 = getelementptr i8, ptr %5176, i32 %5183
  br label %5185

5185:                                             ; preds = %5179, %5175
  %5186 = phi ptr [ %5176, %5175 ], [ %5184, %5179 ]
  %5187 = ptrtoint ptr %5186 to i32
  %5188 = ptrtoint ptr %5136 to i32
  %5189 = sub i32 %5187, %5188
  br label %5190

5190:                                             ; preds = %5185, %5157, %5143
  %5191 = phi i32 [ %5189, %5185 ], [ %5145, %5143 ], [ %5163, %5157 ]
  %5192 = add i32 %5191, %5132
  br label %5193

5193:                                             ; preds = %5190, %5131
  %5194 = phi i32 [ %5192, %5190 ], [ %5132, %5131 ]
  %5195 = add i32 %5194, 4
  %5196 = sub i32 %4312, %4816
  %5197 = icmp ugt ptr %4296, %4297
  %5198 = icmp ugt ptr %4817, %4254
  %5199 = and i1 %5197, %5198
  br i1 %5199, label %5200, label %5290

5200:                                             ; preds = %5209, %5193
  %5201 = phi ptr [ %5204, %5209 ], [ %4296, %5193 ]
  %5202 = phi ptr [ %5206, %5209 ], [ %4817, %5193 ]
  %5203 = phi i32 [ %5210, %5209 ], [ %5195, %5193 ]
  %5204 = getelementptr i8, ptr %5201, i32 -1
  %5205 = load i8, ptr %5204, align 1
  %5206 = getelementptr i8, ptr %5202, i32 -1
  %5207 = load i8, ptr %5206, align 1
  %5208 = icmp eq i8 %5205, %5207
  br i1 %5208, label %5209, label %5290

5209:                                             ; preds = %5200
  %5210 = add i32 %5203, 1
  %5211 = icmp ugt ptr %5204, %4297
  %5212 = icmp ugt ptr %5206, %4254
  %5213 = and i1 %5211, %5212
  br i1 %5213, label %5200, label %5290

5214:                                             ; preds = %5066
  %5215 = icmp ugt ptr %4286, %5068
  br i1 %5215, label %5216, label %5242

5216:                                             ; preds = %5214
  %5217 = load i32, ptr %5069, align 1
  %5218 = load i32, ptr %5068, align 1
  %5219 = xor i32 %5218, %5217
  %5220 = icmp eq i32 %5219, 0
  br i1 %5220, label %5224, label %5221

5221:                                             ; preds = %5216
  %5222 = tail call i32 @llvm.cttz.i32(i32 %5219, i1 true) #4, !range !8
  %5223 = lshr i32 %5222, 3
  br label %5268

5224:                                             ; preds = %5230, %5216
  %5225 = phi ptr [ %5228, %5230 ], [ %5068, %5216 ]
  %5226 = phi ptr [ %5227, %5230 ], [ %5069, %5216 ]
  %5227 = getelementptr i8, ptr %5226, i32 4
  %5228 = getelementptr i8, ptr %5225, i32 4
  %5229 = icmp ult ptr %5228, %4286
  br i1 %5229, label %5230, label %5242

5230:                                             ; preds = %5224
  %5231 = load i32, ptr %5227, align 1
  %5232 = load i32, ptr %5228, align 1
  %5233 = xor i32 %5232, %5231
  %5234 = icmp eq i32 %5233, 0
  br i1 %5234, label %5224, label %5235

5235:                                             ; preds = %5230
  %5236 = tail call i32 @llvm.cttz.i32(i32 %5233, i1 true) #4, !range !8
  %5237 = lshr i32 %5236, 3
  %5238 = getelementptr i8, ptr %5228, i32 %5237
  %5239 = ptrtoint ptr %5238 to i32
  %5240 = ptrtoint ptr %5068 to i32
  %5241 = sub i32 %5239, %5240
  br label %5268

5242:                                             ; preds = %5224, %5214
  %5243 = phi ptr [ %5068, %5214 ], [ %5228, %5224 ]
  %5244 = phi ptr [ %5069, %5214 ], [ %5227, %5224 ]
  %5245 = icmp ult ptr %5243, %4287
  br i1 %5245, label %5246, label %5253

5246:                                             ; preds = %5242
  %5247 = load i16, ptr %5244, align 1
  %5248 = load i16, ptr %5243, align 1
  %5249 = icmp eq i16 %5247, %5248
  br i1 %5249, label %5250, label %5253

5250:                                             ; preds = %5246
  %5251 = getelementptr i8, ptr %5243, i32 2
  %5252 = getelementptr i8, ptr %5244, i32 2
  br label %5253

5253:                                             ; preds = %5250, %5246, %5242
  %5254 = phi ptr [ %5251, %5250 ], [ %5243, %5246 ], [ %5243, %5242 ]
  %5255 = phi ptr [ %5252, %5250 ], [ %5244, %5246 ], [ %5244, %5242 ]
  %5256 = icmp ult ptr %5254, %4239
  br i1 %5256, label %5257, label %5263

5257:                                             ; preds = %5253
  %5258 = load i8, ptr %5255, align 1
  %5259 = load i8, ptr %5254, align 1
  %5260 = icmp eq i8 %5258, %5259
  %5261 = zext i1 %5260 to i32
  %5262 = getelementptr i8, ptr %5254, i32 %5261
  br label %5263

5263:                                             ; preds = %5257, %5253
  %5264 = phi ptr [ %5254, %5253 ], [ %5262, %5257 ]
  %5265 = ptrtoint ptr %5264 to i32
  %5266 = ptrtoint ptr %5068 to i32
  %5267 = sub i32 %5265, %5266
  br label %5268

5268:                                             ; preds = %5263, %5235, %5221
  %5269 = phi i32 [ %5267, %5263 ], [ %5223, %5221 ], [ %5241, %5235 ]
  %5270 = add i32 %5269, 4
  %5271 = ptrtoint ptr %4817 to i32
  %5272 = sub i32 %4311, %5271
  %5273 = icmp ugt ptr %4296, %4297
  %5274 = icmp ugt ptr %4817, %4238
  %5275 = and i1 %5273, %5274
  br i1 %5275, label %5276, label %5290

5276:                                             ; preds = %5285, %5268
  %5277 = phi ptr [ %5280, %5285 ], [ %4296, %5268 ]
  %5278 = phi ptr [ %5282, %5285 ], [ %4817, %5268 ]
  %5279 = phi i32 [ %5286, %5285 ], [ %5270, %5268 ]
  %5280 = getelementptr i8, ptr %5277, i32 -1
  %5281 = load i8, ptr %5280, align 1
  %5282 = getelementptr i8, ptr %5278, i32 -1
  %5283 = load i8, ptr %5282, align 1
  %5284 = icmp eq i8 %5281, %5283
  br i1 %5284, label %5285, label %5290

5285:                                             ; preds = %5276
  %5286 = add i32 %5279, 1
  %5287 = icmp ugt ptr %5280, %4297
  %5288 = icmp ugt ptr %5282, %4238
  %5289 = and i1 %5287, %5288
  br i1 %5289, label %5276, label %5290

5290:                                             ; preds = %5285, %5276, %5268, %5209, %5200, %5193, %5061, %5052, %5046, %4905, %4896, %4887, %4783, %4774, %4768, %4629, %4620, %4612
  %5291 = phi i32 [ %4614, %4612 ], [ %4889, %4887 ], [ %5195, %5193 ], [ %5270, %5268 ], [ %5048, %5046 ], [ %4770, %4768 ], [ %4630, %4629 ], [ %4623, %4620 ], [ %4906, %4905 ], [ %4899, %4896 ], [ %5203, %5200 ], [ %5210, %5209 ], [ %5279, %5276 ], [ %5286, %5285 ], [ %5062, %5061 ], [ %5055, %5052 ], [ %4777, %4774 ], [ %4784, %4783 ]
  %5292 = phi i32 [ %4616, %4612 ], [ %4892, %4887 ], [ %5196, %5193 ], [ %5272, %5268 ], [ %5050, %5046 ], [ %4772, %4768 ], [ %4616, %4620 ], [ %4616, %4629 ], [ %4892, %4896 ], [ %4892, %4905 ], [ %5196, %5200 ], [ %5196, %5209 ], [ %5272, %5276 ], [ %5272, %5285 ], [ %5050, %5052 ], [ %5050, %5061 ], [ %4772, %4774 ], [ %4772, %4783 ]
  %5293 = phi ptr [ %4296, %4612 ], [ %4818, %4887 ], [ %4296, %5193 ], [ %4296, %5268 ], [ %4818, %5046 ], [ %4296, %4768 ], [ %4624, %4629 ], [ %4621, %4620 ], [ %4900, %4905 ], [ %4898, %4896 ], [ %5201, %5200 ], [ %5204, %5209 ], [ %5277, %5276 ], [ %5280, %5285 ], [ %5056, %5061 ], [ %5054, %5052 ], [ %4775, %4774 ], [ %4778, %4783 ]
  %5294 = ptrtoint ptr %5293 to i32
  %5295 = ptrtoint ptr %4297 to i32
  %5296 = sub i32 %5294, %5295
  %5297 = add i32 %5291, -3
  %5298 = getelementptr i8, ptr %4297, i32 %5296
  %5299 = icmp ugt ptr %5298, %4288
  %5300 = load ptr, ptr %4289, align 4
  br i1 %5299, label %5322, label %5301

5301:                                             ; preds = %5290
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %5300, ptr noundef align 1 dereferenceable(16) %4297, i32 16, i1 false) #4
  %5302 = icmp ugt i32 %5296, 16
  %5303 = load ptr, ptr %4289, align 4
  br i1 %5302, label %5306, label %5304

5304:                                             ; preds = %5301
  %5305 = getelementptr i8, ptr %5303, i32 %5296
  store ptr %5305, ptr %4289, align 4
  br label %5365

5306:                                             ; preds = %5301
  %5307 = getelementptr i8, ptr %5303, i32 16
  %5308 = getelementptr i8, ptr %4297, i32 16
  %5309 = add i32 %5296, -16
  %5310 = getelementptr i8, ptr %5303, i32 %5296
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %5307, ptr noundef align 1 dereferenceable(16) %5308, i32 16, i1 false) #4
  %5311 = icmp slt i32 %5309, 17
  br i1 %5311, label %5354, label %5312

5312:                                             ; preds = %5306
  %5313 = getelementptr i8, ptr %5303, i32 32
  br label %5314

5314:                                             ; preds = %5314, %5312
  %5315 = phi ptr [ %5308, %5312 ], [ %5319, %5314 ]
  %5316 = phi ptr [ %5313, %5312 ], [ %5320, %5314 ]
  %5317 = getelementptr i8, ptr %5315, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %5316, ptr noundef align 1 dereferenceable(16) %5317, i32 16, i1 false) #4
  %5318 = getelementptr i8, ptr %5316, i32 16
  %5319 = getelementptr i8, ptr %5315, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %5318, ptr noundef align 1 dereferenceable(16) %5319, i32 16, i1 false) #4
  %5320 = getelementptr i8, ptr %5316, i32 32
  %5321 = icmp ult ptr %5320, %5310
  br i1 %5321, label %5314, label %5354

5322:                                             ; preds = %5290
  %5323 = ptrtoint ptr %5298 to i32
  %5324 = icmp ult ptr %4288, %4297
  br i1 %5324, label %5339, label %5325

5325:                                             ; preds = %5322
  %5326 = sub i32 %4290, %5295
  %5327 = getelementptr i8, ptr %5300, i32 %5326
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %5300, ptr noundef align 1 dereferenceable(16) %4297, i32 16, i1 false) #4
  %5328 = icmp slt i32 %5326, 17
  br i1 %5328, label %5339, label %5329

5329:                                             ; preds = %5325
  %5330 = getelementptr i8, ptr %5300, i32 16
  br label %5331

5331:                                             ; preds = %5331, %5329
  %5332 = phi ptr [ %4297, %5329 ], [ %5336, %5331 ]
  %5333 = phi ptr [ %5330, %5329 ], [ %5337, %5331 ]
  %5334 = getelementptr i8, ptr %5332, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %5333, ptr noundef align 1 dereferenceable(16) %5334, i32 16, i1 false) #4
  %5335 = getelementptr i8, ptr %5333, i32 16
  %5336 = getelementptr i8, ptr %5332, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %5335, ptr noundef align 1 dereferenceable(16) %5336, i32 16, i1 false) #4
  %5337 = getelementptr i8, ptr %5333, i32 32
  %5338 = icmp ult ptr %5337, %5327
  br i1 %5338, label %5331, label %5339

5339:                                             ; preds = %5331, %5325, %5322
  %5340 = phi ptr [ %4288, %5325 ], [ %4297, %5322 ], [ %4288, %5331 ]
  %5341 = phi ptr [ %5327, %5325 ], [ %5300, %5322 ], [ %5327, %5331 ]
  %5342 = icmp ult ptr %5340, %5298
  br i1 %5342, label %5343, label %5354

5343:                                             ; preds = %5339
  %5344 = ptrtoint ptr %5340 to i32
  %5345 = sub i32 %5323, %5344
  %5346 = getelementptr i8, ptr %5340, i32 %5345
  br label %5347

5347:                                             ; preds = %5347, %5343
  %5348 = phi ptr [ %5352, %5347 ], [ %5341, %5343 ]
  %5349 = phi ptr [ %5350, %5347 ], [ %5340, %5343 ]
  %5350 = getelementptr i8, ptr %5349, i32 1
  %5351 = load i8, ptr %5349, align 1
  %5352 = getelementptr i8, ptr %5348, i32 1
  store i8 %5351, ptr %5348, align 1
  %5353 = icmp eq ptr %5350, %5346
  br i1 %5353, label %5354, label %5347

5354:                                             ; preds = %5347, %5339, %5314, %5306
  %5355 = load ptr, ptr %4289, align 4
  %5356 = getelementptr i8, ptr %5355, i32 %5296
  store ptr %5356, ptr %4289, align 4
  %5357 = icmp ugt i32 %5296, 65535
  br i1 %5357, label %5358, label %5365

5358:                                             ; preds = %5354
  store i32 1, ptr %4291, align 4
  %5359 = load ptr, ptr %4292, align 4
  %5360 = load ptr, ptr %1, align 4
  %5361 = ptrtoint ptr %5359 to i32
  %5362 = ptrtoint ptr %5360 to i32
  %5363 = sub i32 %5361, %5362
  %5364 = ashr exact i32 %5363, 3
  store i32 %5364, ptr %4293, align 4
  br label %5365

5365:                                             ; preds = %5358, %5354, %5304
  %5366 = trunc i32 %5296 to i16
  %5367 = load ptr, ptr %4292, align 4
  %5368 = getelementptr inbounds %struct.seqDef_s, ptr %5367, i32 0, i32 1
  store i16 %5366, ptr %5368, align 4
  %5369 = add i32 %5292, 3
  %5370 = load ptr, ptr %4292, align 4
  store i32 %5369, ptr %5370, align 4
  %5371 = icmp ugt i32 %5297, 65535
  br i1 %5371, label %5374, label %5372

5372:                                             ; preds = %5365
  %5373 = load ptr, ptr %4292, align 4
  br label %5381

5374:                                             ; preds = %5365
  store i32 2, ptr %4291, align 4
  %5375 = load ptr, ptr %4292, align 4
  %5376 = load ptr, ptr %1, align 4
  %5377 = ptrtoint ptr %5375 to i32
  %5378 = ptrtoint ptr %5376 to i32
  %5379 = sub i32 %5377, %5378
  %5380 = ashr exact i32 %5379, 3
  store i32 %5380, ptr %4293, align 4
  br label %5381

5381:                                             ; preds = %5374, %5372, %4543, %4541
  %5382 = phi i32 [ %4467, %4541 ], [ %4467, %4543 ], [ %5297, %5372 ], [ %5297, %5374 ]
  %5383 = phi ptr [ %4542, %4541 ], [ %4544, %4543 ], [ %5373, %5372 ], [ %5375, %5374 ]
  %5384 = phi i32 [ %4299, %4541 ], [ %4299, %4543 ], [ %4298, %5372 ], [ %4298, %5374 ]
  %5385 = phi i32 [ %4298, %4541 ], [ %4298, %4543 ], [ %5292, %5372 ], [ %5292, %5374 ]
  %5386 = phi i32 [ %4463, %4541 ], [ %4463, %4543 ], [ %5291, %5372 ], [ %5291, %5374 ]
  %5387 = phi ptr [ %4331, %4541 ], [ %4331, %4543 ], [ %5293, %5372 ], [ %5293, %5374 ]
  %5388 = trunc i32 %5382 to i16
  %5389 = getelementptr inbounds %struct.seqDef_s, ptr %5383, i32 0, i32 2
  store i16 %5388, ptr %5389, align 2
  %5390 = load ptr, ptr %4292, align 4
  %5391 = getelementptr %struct.seqDef_s, ptr %5390, i32 1
  store ptr %5391, ptr %4292, align 4
  %5392 = getelementptr i8, ptr %5387, i32 %5386
  %5393 = icmp ugt ptr %5392, %4240
  br i1 %5393, label %5606, label %5394

5394:                                             ; preds = %5381
  %5395 = add i32 %4312, 2
  %5396 = getelementptr i8, ptr %4221, i32 %5395
  %5397 = load i64, ptr %5396, align 1
  %5398 = mul i64 %5397, -3523014627327384477
  %5399 = lshr i64 %5398, %4279
  %5400 = trunc i64 %5399 to i32
  %5401 = getelementptr i32, ptr %4217, i32 %5400
  store i32 %5395, ptr %5401, align 4
  %5402 = getelementptr i8, ptr %5392, i32 -2
  %5403 = ptrtoint ptr %5402 to i32
  %5404 = sub i32 %5403, %4223
  %5405 = load i64, ptr %5402, align 1
  %5406 = mul i64 %5405, -3523014627327384477
  %5407 = lshr i64 %5406, %4279
  %5408 = trunc i64 %5407 to i32
  %5409 = getelementptr i32, ptr %4217, i32 %5408
  store i32 %5404, ptr %5409, align 4
  %5410 = load i64, ptr %5396, align 1
  %5411 = mul i64 %5410, -3523014627193167104
  %5412 = lshr i64 %5411, %4281
  %5413 = trunc i64 %5412 to i32
  %5414 = getelementptr i32, ptr %4219, i32 %5413
  store i32 %5395, ptr %5414, align 4
  %5415 = getelementptr i8, ptr %5392, i32 -1
  %5416 = load i64, ptr %5415, align 1
  %5417 = mul i64 %5416, -3523014627193167104
  %5418 = lshr i64 %5417, %4281
  %5419 = trunc i64 %5418 to i32
  %5420 = ptrtoint ptr %5415 to i32
  %5421 = sub i32 %5420, %4223
  %5422 = getelementptr i32, ptr %4219, i32 %5419
  store i32 %5421, ptr %5422, align 4
  br label %5423

5423:                                             ; preds = %5588, %5394
  %5424 = phi ptr [ %5604, %5588 ], [ %5392, %5394 ]
  %5425 = phi i32 [ %5426, %5588 ], [ %5385, %5394 ]
  %5426 = phi i32 [ %5425, %5588 ], [ %5384, %5394 ]
  %5427 = ptrtoint ptr %5424 to i32
  %5428 = sub i32 %5427, %4223
  %5429 = sub i32 %5428, %5426
  %5430 = icmp ult i32 %5429, %4237
  %5431 = select i1 %5430, ptr %4294, ptr %4221
  %5432 = getelementptr i8, ptr %5431, i32 %5429
  %5433 = xor i32 %5429, -1
  %5434 = add i32 %4237, %5433
  %5435 = icmp ugt i32 %5434, 2
  br i1 %5435, label %5436, label %5606

5436:                                             ; preds = %5423
  %5437 = load i32, ptr %5432, align 1
  %5438 = load i32, ptr %5424, align 1
  %5439 = icmp eq i32 %5437, %5438
  br i1 %5439, label %5440, label %5606

5440:                                             ; preds = %5436
  %5441 = select i1 %5430, ptr %4255, ptr %4239
  %5442 = getelementptr i8, ptr %5424, i32 4
  %5443 = getelementptr i8, ptr %5432, i32 4
  %5444 = ptrtoint ptr %5441 to i32
  %5445 = ptrtoint ptr %5443 to i32
  %5446 = sub i32 %5444, %5445
  %5447 = getelementptr i8, ptr %5442, i32 %5446
  %5448 = icmp ult ptr %5447, %4239
  %5449 = select i1 %5448, ptr %5447, ptr %4239
  %5450 = getelementptr i8, ptr %5449, i32 -3
  %5451 = icmp ugt ptr %5450, %5442
  br i1 %5451, label %5452, label %5478

5452:                                             ; preds = %5440
  %5453 = load i32, ptr %5443, align 1
  %5454 = load i32, ptr %5442, align 1
  %5455 = xor i32 %5454, %5453
  %5456 = icmp eq i32 %5455, 0
  br i1 %5456, label %5460, label %5457

5457:                                             ; preds = %5452
  %5458 = tail call i32 @llvm.cttz.i32(i32 %5455, i1 true) #4, !range !8
  %5459 = lshr i32 %5458, 3
  br label %5505

5460:                                             ; preds = %5466, %5452
  %5461 = phi ptr [ %5464, %5466 ], [ %5442, %5452 ]
  %5462 = phi ptr [ %5463, %5466 ], [ %5443, %5452 ]
  %5463 = getelementptr i8, ptr %5462, i32 4
  %5464 = getelementptr i8, ptr %5461, i32 4
  %5465 = icmp ult ptr %5464, %5450
  br i1 %5465, label %5466, label %5478

5466:                                             ; preds = %5460
  %5467 = load i32, ptr %5463, align 1
  %5468 = load i32, ptr %5464, align 1
  %5469 = xor i32 %5468, %5467
  %5470 = icmp eq i32 %5469, 0
  br i1 %5470, label %5460, label %5471

5471:                                             ; preds = %5466
  %5472 = tail call i32 @llvm.cttz.i32(i32 %5469, i1 true) #4, !range !8
  %5473 = lshr i32 %5472, 3
  %5474 = getelementptr i8, ptr %5464, i32 %5473
  %5475 = ptrtoint ptr %5474 to i32
  %5476 = ptrtoint ptr %5442 to i32
  %5477 = sub i32 %5475, %5476
  br label %5505

5478:                                             ; preds = %5460, %5440
  %5479 = phi ptr [ %5442, %5440 ], [ %5464, %5460 ]
  %5480 = phi ptr [ %5443, %5440 ], [ %5463, %5460 ]
  %5481 = getelementptr i8, ptr %5449, i32 -1
  %5482 = icmp ult ptr %5479, %5481
  br i1 %5482, label %5483, label %5490

5483:                                             ; preds = %5478
  %5484 = load i16, ptr %5480, align 1
  %5485 = load i16, ptr %5479, align 1
  %5486 = icmp eq i16 %5484, %5485
  br i1 %5486, label %5487, label %5490

5487:                                             ; preds = %5483
  %5488 = getelementptr i8, ptr %5479, i32 2
  %5489 = getelementptr i8, ptr %5480, i32 2
  br label %5490

5490:                                             ; preds = %5487, %5483, %5478
  %5491 = phi ptr [ %5488, %5487 ], [ %5479, %5483 ], [ %5479, %5478 ]
  %5492 = phi ptr [ %5489, %5487 ], [ %5480, %5483 ], [ %5480, %5478 ]
  %5493 = icmp ult ptr %5491, %5449
  br i1 %5493, label %5494, label %5500

5494:                                             ; preds = %5490
  %5495 = load i8, ptr %5492, align 1
  %5496 = load i8, ptr %5491, align 1
  %5497 = icmp eq i8 %5495, %5496
  %5498 = zext i1 %5497 to i32
  %5499 = getelementptr i8, ptr %5491, i32 %5498
  br label %5500

5500:                                             ; preds = %5494, %5490
  %5501 = phi ptr [ %5491, %5490 ], [ %5499, %5494 ]
  %5502 = ptrtoint ptr %5501 to i32
  %5503 = ptrtoint ptr %5442 to i32
  %5504 = sub i32 %5502, %5503
  br label %5505

5505:                                             ; preds = %5500, %5471, %5457
  %5506 = phi i32 [ %5504, %5500 ], [ %5459, %5457 ], [ %5477, %5471 ]
  %5507 = getelementptr i8, ptr %5443, i32 %5506
  %5508 = icmp eq ptr %5507, %5441
  br i1 %5508, label %5509, label %5567

5509:                                             ; preds = %5505
  %5510 = getelementptr i8, ptr %5442, i32 %5506
  %5511 = icmp ugt ptr %4286, %5510
  br i1 %5511, label %5512, label %5538

5512:                                             ; preds = %5509
  %5513 = load i32, ptr %4238, align 1
  %5514 = load i32, ptr %5510, align 1
  %5515 = xor i32 %5514, %5513
  %5516 = icmp eq i32 %5515, 0
  br i1 %5516, label %5520, label %5517

5517:                                             ; preds = %5512
  %5518 = tail call i32 @llvm.cttz.i32(i32 %5515, i1 true) #4, !range !8
  %5519 = lshr i32 %5518, 3
  br label %5564

5520:                                             ; preds = %5526, %5512
  %5521 = phi ptr [ %5524, %5526 ], [ %5510, %5512 ]
  %5522 = phi ptr [ %5523, %5526 ], [ %4238, %5512 ]
  %5523 = getelementptr i8, ptr %5522, i32 4
  %5524 = getelementptr i8, ptr %5521, i32 4
  %5525 = icmp ult ptr %5524, %4286
  br i1 %5525, label %5526, label %5538

5526:                                             ; preds = %5520
  %5527 = load i32, ptr %5523, align 1
  %5528 = load i32, ptr %5524, align 1
  %5529 = xor i32 %5528, %5527
  %5530 = icmp eq i32 %5529, 0
  br i1 %5530, label %5520, label %5531

5531:                                             ; preds = %5526
  %5532 = tail call i32 @llvm.cttz.i32(i32 %5529, i1 true) #4, !range !8
  %5533 = lshr i32 %5532, 3
  %5534 = getelementptr i8, ptr %5524, i32 %5533
  %5535 = ptrtoint ptr %5534 to i32
  %5536 = ptrtoint ptr %5510 to i32
  %5537 = sub i32 %5535, %5536
  br label %5564

5538:                                             ; preds = %5520, %5509
  %5539 = phi ptr [ %5510, %5509 ], [ %5524, %5520 ]
  %5540 = phi ptr [ %4238, %5509 ], [ %5523, %5520 ]
  %5541 = icmp ult ptr %5539, %4287
  br i1 %5541, label %5542, label %5549

5542:                                             ; preds = %5538
  %5543 = load i16, ptr %5540, align 1
  %5544 = load i16, ptr %5539, align 1
  %5545 = icmp eq i16 %5543, %5544
  br i1 %5545, label %5546, label %5549

5546:                                             ; preds = %5542
  %5547 = getelementptr i8, ptr %5539, i32 2
  %5548 = getelementptr i8, ptr %5540, i32 2
  br label %5549

5549:                                             ; preds = %5546, %5542, %5538
  %5550 = phi ptr [ %5547, %5546 ], [ %5539, %5542 ], [ %5539, %5538 ]
  %5551 = phi ptr [ %5548, %5546 ], [ %5540, %5542 ], [ %5540, %5538 ]
  %5552 = icmp ult ptr %5550, %4239
  br i1 %5552, label %5553, label %5559

5553:                                             ; preds = %5549
  %5554 = load i8, ptr %5551, align 1
  %5555 = load i8, ptr %5550, align 1
  %5556 = icmp eq i8 %5554, %5555
  %5557 = zext i1 %5556 to i32
  %5558 = getelementptr i8, ptr %5550, i32 %5557
  br label %5559

5559:                                             ; preds = %5553, %5549
  %5560 = phi ptr [ %5550, %5549 ], [ %5558, %5553 ]
  %5561 = ptrtoint ptr %5560 to i32
  %5562 = ptrtoint ptr %5510 to i32
  %5563 = sub i32 %5561, %5562
  br label %5564

5564:                                             ; preds = %5559, %5531, %5517
  %5565 = phi i32 [ %5563, %5559 ], [ %5519, %5517 ], [ %5537, %5531 ]
  %5566 = add i32 %5565, %5506
  br label %5567

5567:                                             ; preds = %5564, %5505
  %5568 = phi i32 [ %5566, %5564 ], [ %5506, %5505 ]
  %5569 = add i32 %5568, 4
  %5570 = add i32 %5568, 1
  %5571 = icmp ugt ptr %5424, %4288
  br i1 %5571, label %5574, label %5572

5572:                                             ; preds = %5567
  %5573 = load ptr, ptr %4289, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %5573, ptr noundef align 1 dereferenceable(16) %5424, i32 16, i1 false) #4
  br label %5574

5574:                                             ; preds = %5572, %5567
  %5575 = load ptr, ptr %4292, align 4
  %5576 = getelementptr inbounds %struct.seqDef_s, ptr %5575, i32 0, i32 1
  store i16 0, ptr %5576, align 4
  %5577 = load ptr, ptr %4292, align 4
  store i32 1, ptr %5577, align 4
  %5578 = icmp ugt i32 %5570, 65535
  br i1 %5578, label %5581, label %5579

5579:                                             ; preds = %5574
  %5580 = load ptr, ptr %4292, align 4
  br label %5588

5581:                                             ; preds = %5574
  store i32 2, ptr %4291, align 4
  %5582 = load ptr, ptr %4292, align 4
  %5583 = load ptr, ptr %1, align 4
  %5584 = ptrtoint ptr %5582 to i32
  %5585 = ptrtoint ptr %5583 to i32
  %5586 = sub i32 %5584, %5585
  %5587 = ashr exact i32 %5586, 3
  store i32 %5587, ptr %4293, align 4
  br label %5588

5588:                                             ; preds = %5581, %5579
  %5589 = phi ptr [ %5580, %5579 ], [ %5582, %5581 ]
  %5590 = trunc i32 %5570 to i16
  %5591 = getelementptr inbounds %struct.seqDef_s, ptr %5589, i32 0, i32 2
  store i16 %5590, ptr %5591, align 2
  %5592 = load ptr, ptr %4292, align 4
  %5593 = getelementptr %struct.seqDef_s, ptr %5592, i32 1
  store ptr %5593, ptr %4292, align 4
  %5594 = load i64, ptr %5424, align 1
  %5595 = mul i64 %5594, -3523014627193167104
  %5596 = lshr i64 %5595, %4281
  %5597 = trunc i64 %5596 to i32
  %5598 = getelementptr i32, ptr %4219, i32 %5597
  store i32 %5428, ptr %5598, align 4
  %5599 = load i64, ptr %5424, align 1
  %5600 = mul i64 %5599, -3523014627327384477
  %5601 = lshr i64 %5600, %4279
  %5602 = trunc i64 %5601 to i32
  %5603 = getelementptr i32, ptr %4217, i32 %5602
  store i32 %5428, ptr %5603, align 4
  %5604 = getelementptr i8, ptr %5424, i32 %5569
  %5605 = icmp ugt ptr %5604, %4240
  br i1 %5605, label %5606, label %5423

5606:                                             ; preds = %5588, %5436, %5423, %5381, %4809
  %5607 = phi i32 [ %4299, %4809 ], [ %5384, %5381 ], [ %5426, %5423 ], [ %5426, %5436 ], [ %5425, %5588 ]
  %5608 = phi i32 [ %4298, %4809 ], [ %5385, %5381 ], [ %5425, %5423 ], [ %5425, %5436 ], [ %5426, %5588 ]
  %5609 = phi ptr [ %4297, %4809 ], [ %5392, %5381 ], [ %5424, %5423 ], [ %5424, %5436 ], [ %5604, %5588 ]
  %5610 = phi ptr [ %4814, %4809 ], [ %5392, %5381 ], [ %5424, %5423 ], [ %5424, %5436 ], [ %5604, %5588 ]
  %5611 = icmp ult ptr %5610, %4240
  br i1 %5611, label %4295, label %5612

5612:                                             ; preds = %5606
  %5613 = ptrtoint ptr %5609 to i32
  br label %5614

5614:                                             ; preds = %5612, %4214
  %5615 = phi i32 [ %5613, %5612 ], [ %4222, %4214 ]
  %5616 = phi i32 [ %5607, %5612 ], [ %4243, %4214 ]
  %5617 = phi i32 [ %5608, %5612 ], [ %4241, %4214 ]
  store i32 %5617, ptr %2, align 4
  store i32 %5616, ptr %4242, align 4
  br label %5618

5618:                                             ; preds = %5614, %4210, %2806, %1402
  %5619 = phi ptr [ %4239, %5614 ], [ %2835, %4210 ], [ %1431, %2806 ], [ %33, %1402 ]
  %5620 = phi i32 [ %5615, %5614 ], [ %4211, %4210 ], [ %2807, %2806 ], [ %1403, %1402 ]
  %5621 = ptrtoint ptr %5619 to i32
  %5622 = sub i32 %5621, %5620
  ret i32 %5622
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_doubleFast_extDict(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %8, 3
  %10 = select i1 %9, i32 %7, i32 4
  %11 = tail call fastcc i32 @ZSTD_compressBlock_doubleFast_extDict_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_compressBlock_doubleFast_extDict_generic(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  %8 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %3, i32 %4
  %17 = getelementptr i8, ptr %16, i32 -8
  %18 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %3 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %20, %21
  %23 = add i32 %22, %4
  %24 = load i32, ptr %7, align 4
  %25 = shl nuw i32 1, %24
  %26 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %23, %27
  %29 = icmp ugt i32 %28, %25
  %30 = sub i32 %23, %25
  %31 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i1 %29, i1 false
  %35 = select i1 %34, i32 %30, i32 %27
  %36 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %37, i32 %35)
  %39 = getelementptr i8, ptr %19, i32 %38
  %40 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %35
  %43 = getelementptr i8, ptr %41, i32 %38
  %44 = load i32, ptr %2, align 4
  %45 = getelementptr i32, ptr %2, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %35, %37
  br i1 %47, label %48, label %65

48:                                               ; preds = %6
  %49 = icmp ugt ptr %17, %3
  br i1 %49, label %50, label %2136

50:                                               ; preds = %48
  %51 = sub i32 64, %15
  %52 = zext i32 %51 to i64
  %53 = sub i32 32, %15
  %54 = sub i32 64, %11
  %55 = zext i32 %54 to i64
  %56 = add i32 %38, -1
  %57 = getelementptr i8, ptr %16, i32 -3
  %58 = getelementptr i8, ptr %16, i32 -1
  %59 = getelementptr i8, ptr %16, i32 -32
  %60 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %59 to i32
  %62 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %63 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %64 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  br label %890

65:                                               ; preds = %6
  %66 = sub i32 %23, %37
  %67 = icmp ugt i32 %66, %25
  %68 = select i1 %33, i1 %67, i1 false
  %69 = select i1 %68, i32 %30, i32 %37
  %70 = getelementptr i8, ptr %19, i32 %69
  %71 = icmp eq ptr %70, %3
  %72 = zext i1 %71 to i32
  %73 = getelementptr i8, ptr %3, i32 %72
  %74 = ptrtoint ptr %73 to i32
  %75 = sub i32 %74, %21
  %76 = sub i32 %75, %37
  %77 = icmp ugt i32 %76, %25
  %78 = sub i32 %75, %25
  %79 = select i1 %33, i1 %77, i1 false
  %80 = select i1 %79, i32 %78, i32 %37
  %81 = sub i32 %75, %80
  %82 = icmp ugt i32 %46, %81
  %83 = select i1 %82, i32 0, i32 %46
  %84 = select i1 %82, i32 %46, i32 0
  %85 = icmp ugt i32 %44, %81
  %86 = select i1 %85, i32 %44, i32 %84
  %87 = select i1 %85, i32 0, i32 %44
  %88 = icmp ult ptr %73, %17
  br i1 %88, label %89, label %882

89:                                               ; preds = %65
  %90 = sub i32 64, %11
  %91 = zext i32 %90 to i64
  %92 = sub i32 64, %15
  %93 = zext i32 %92 to i64
  %94 = sub i32 32, %15
  %95 = getelementptr i8, ptr %16, i32 -3
  %96 = getelementptr i8, ptr %16, i32 -1
  %97 = getelementptr i8, ptr %16, i32 -32
  %98 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %99 = ptrtoint ptr %97 to i32
  %100 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %101 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %102 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  br label %103

103:                                              ; preds = %874, %89
  %104 = phi ptr [ %73, %89 ], [ %878, %874 ]
  %105 = phi ptr [ %3, %89 ], [ %877, %874 ]
  %106 = phi i32 [ %87, %89 ], [ %876, %874 ]
  %107 = phi i32 [ %83, %89 ], [ %875, %874 ]
  %108 = load i64, ptr %104, align 1
  %109 = mul i64 %108, -3523014627327384477
  %110 = lshr i64 %109, %91
  %111 = trunc i64 %110 to i32
  switch i32 %5, label %127 [
    i32 8, label %124
    i32 5, label %112
    i32 6, label %116
    i32 7, label %120
  ]

112:                                              ; preds = %103
  %113 = mul i64 %108, -3523014627271114752
  %114 = lshr i64 %113, %93
  %115 = trunc i64 %114 to i32
  br label %131

116:                                              ; preds = %103
  %117 = mul i64 %108, -3523014627193847808
  %118 = lshr i64 %117, %93
  %119 = trunc i64 %118 to i32
  br label %131

120:                                              ; preds = %103
  %121 = mul i64 %108, -3523014627193167104
  %122 = lshr i64 %121, %93
  %123 = trunc i64 %122 to i32
  br label %131

124:                                              ; preds = %103
  %125 = lshr i64 %109, %93
  %126 = trunc i64 %125 to i32
  br label %131

127:                                              ; preds = %103
  %128 = trunc i64 %108 to i32
  %129 = mul i32 %128, -1640531535
  %130 = lshr i32 %129, %94
  br label %131

131:                                              ; preds = %127, %124, %120, %116, %112
  %132 = phi i32 [ %130, %127 ], [ %123, %120 ], [ %119, %116 ], [ %115, %112 ], [ %126, %124 ]
  %133 = ptrtoint ptr %104 to i32
  %134 = sub i32 %133, %21
  %135 = getelementptr i32, ptr %9, i32 %111
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr i32, ptr %13, i32 %132
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr i8, ptr %19, i32 %136
  %140 = getelementptr i8, ptr %19, i32 %138
  %141 = add i32 %134, 1
  store i32 %134, ptr %137, align 4
  store i32 %134, ptr %135, align 4
  %142 = icmp ne i32 %106, 0
  %143 = getelementptr i8, ptr %104, i32 1
  %144 = sub i32 0, %106
  %145 = getelementptr i8, ptr %143, i32 %144
  %146 = load i32, ptr %145, align 1
  %147 = load i32, ptr %143, align 1
  %148 = icmp eq i32 %146, %147
  %149 = and i1 %142, %148
  br i1 %149, label %150, label %295

150:                                              ; preds = %131
  %151 = getelementptr i8, ptr %104, i32 5
  %152 = getelementptr i8, ptr %151, i32 %144
  %153 = icmp ugt ptr %95, %151
  br i1 %153, label %154, label %180

154:                                              ; preds = %150
  %155 = load i32, ptr %152, align 1
  %156 = load i32, ptr %151, align 1
  %157 = xor i32 %156, %155
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = tail call i32 @llvm.cttz.i32(i32 %157, i1 true) #4, !range !8
  %161 = lshr i32 %160, 3
  br label %206

162:                                              ; preds = %168, %154
  %163 = phi ptr [ %166, %168 ], [ %151, %154 ]
  %164 = phi ptr [ %165, %168 ], [ %152, %154 ]
  %165 = getelementptr i8, ptr %164, i32 4
  %166 = getelementptr i8, ptr %163, i32 4
  %167 = icmp ult ptr %166, %95
  br i1 %167, label %168, label %180

168:                                              ; preds = %162
  %169 = load i32, ptr %165, align 1
  %170 = load i32, ptr %166, align 1
  %171 = xor i32 %170, %169
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %162, label %173

173:                                              ; preds = %168
  %174 = tail call i32 @llvm.cttz.i32(i32 %171, i1 true) #4, !range !8
  %175 = lshr i32 %174, 3
  %176 = getelementptr i8, ptr %166, i32 %175
  %177 = ptrtoint ptr %176 to i32
  %178 = ptrtoint ptr %151 to i32
  %179 = sub i32 %177, %178
  br label %206

180:                                              ; preds = %162, %150
  %181 = phi ptr [ %151, %150 ], [ %166, %162 ]
  %182 = phi ptr [ %152, %150 ], [ %165, %162 ]
  %183 = icmp ult ptr %181, %96
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i16, ptr %182, align 1
  %186 = load i16, ptr %181, align 1
  %187 = icmp eq i16 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = getelementptr i8, ptr %181, i32 2
  %190 = getelementptr i8, ptr %182, i32 2
  br label %191

191:                                              ; preds = %188, %184, %180
  %192 = phi ptr [ %189, %188 ], [ %181, %184 ], [ %181, %180 ]
  %193 = phi ptr [ %190, %188 ], [ %182, %184 ], [ %182, %180 ]
  %194 = icmp ult ptr %192, %16
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load i8, ptr %193, align 1
  %197 = load i8, ptr %192, align 1
  %198 = icmp eq i8 %196, %197
  %199 = zext i1 %198 to i32
  %200 = getelementptr i8, ptr %192, i32 %199
  br label %201

201:                                              ; preds = %195, %191
  %202 = phi ptr [ %192, %191 ], [ %200, %195 ]
  %203 = ptrtoint ptr %202 to i32
  %204 = ptrtoint ptr %151 to i32
  %205 = sub i32 %203, %204
  br label %206

206:                                              ; preds = %201, %173, %159
  %207 = phi i32 [ %205, %201 ], [ %161, %159 ], [ %179, %173 ]
  %208 = add i32 %207, 4
  %209 = ptrtoint ptr %143 to i32
  %210 = ptrtoint ptr %105 to i32
  %211 = sub i32 %209, %210
  %212 = add i32 %207, 1
  %213 = getelementptr i8, ptr %105, i32 %211
  %214 = icmp ugt ptr %213, %97
  %215 = load ptr, ptr %98, align 4
  br i1 %214, label %237, label %216

216:                                              ; preds = %206
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %215, ptr noundef align 1 dereferenceable(16) %105, i32 16, i1 false) #4
  %217 = icmp ugt i32 %211, 16
  %218 = load ptr, ptr %98, align 4
  br i1 %217, label %221, label %219

219:                                              ; preds = %216
  %220 = getelementptr i8, ptr %218, i32 %211
  store ptr %220, ptr %98, align 4
  br label %280

221:                                              ; preds = %216
  %222 = getelementptr i8, ptr %218, i32 16
  %223 = getelementptr i8, ptr %105, i32 16
  %224 = add i32 %211, -16
  %225 = getelementptr i8, ptr %218, i32 %211
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %222, ptr noundef align 1 dereferenceable(16) %223, i32 16, i1 false) #4
  %226 = icmp slt i32 %224, 17
  br i1 %226, label %269, label %227

227:                                              ; preds = %221
  %228 = getelementptr i8, ptr %218, i32 32
  br label %229

229:                                              ; preds = %229, %227
  %230 = phi ptr [ %223, %227 ], [ %234, %229 ]
  %231 = phi ptr [ %228, %227 ], [ %235, %229 ]
  %232 = getelementptr i8, ptr %230, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %231, ptr noundef align 1 dereferenceable(16) %232, i32 16, i1 false) #4
  %233 = getelementptr i8, ptr %231, i32 16
  %234 = getelementptr i8, ptr %230, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %233, ptr noundef align 1 dereferenceable(16) %234, i32 16, i1 false) #4
  %235 = getelementptr i8, ptr %231, i32 32
  %236 = icmp ult ptr %235, %225
  br i1 %236, label %229, label %269

237:                                              ; preds = %206
  %238 = ptrtoint ptr %213 to i32
  %239 = icmp ult ptr %97, %105
  br i1 %239, label %254, label %240

240:                                              ; preds = %237
  %241 = sub i32 %99, %210
  %242 = getelementptr i8, ptr %215, i32 %241
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %215, ptr noundef align 1 dereferenceable(16) %105, i32 16, i1 false) #4
  %243 = icmp slt i32 %241, 17
  br i1 %243, label %254, label %244

244:                                              ; preds = %240
  %245 = getelementptr i8, ptr %215, i32 16
  br label %246

246:                                              ; preds = %246, %244
  %247 = phi ptr [ %105, %244 ], [ %251, %246 ]
  %248 = phi ptr [ %245, %244 ], [ %252, %246 ]
  %249 = getelementptr i8, ptr %247, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %248, ptr noundef align 1 dereferenceable(16) %249, i32 16, i1 false) #4
  %250 = getelementptr i8, ptr %248, i32 16
  %251 = getelementptr i8, ptr %247, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %250, ptr noundef align 1 dereferenceable(16) %251, i32 16, i1 false) #4
  %252 = getelementptr i8, ptr %248, i32 32
  %253 = icmp ult ptr %252, %242
  br i1 %253, label %246, label %254

254:                                              ; preds = %246, %240, %237
  %255 = phi ptr [ %97, %240 ], [ %105, %237 ], [ %97, %246 ]
  %256 = phi ptr [ %242, %240 ], [ %215, %237 ], [ %242, %246 ]
  %257 = icmp ult ptr %255, %213
  br i1 %257, label %258, label %269

258:                                              ; preds = %254
  %259 = ptrtoint ptr %255 to i32
  %260 = sub i32 %238, %259
  %261 = getelementptr i8, ptr %255, i32 %260
  br label %262

262:                                              ; preds = %262, %258
  %263 = phi ptr [ %267, %262 ], [ %256, %258 ]
  %264 = phi ptr [ %265, %262 ], [ %255, %258 ]
  %265 = getelementptr i8, ptr %264, i32 1
  %266 = load i8, ptr %264, align 1
  %267 = getelementptr i8, ptr %263, i32 1
  store i8 %266, ptr %263, align 1
  %268 = icmp eq ptr %265, %261
  br i1 %268, label %269, label %262

269:                                              ; preds = %262, %254, %229, %221
  %270 = load ptr, ptr %98, align 4
  %271 = getelementptr i8, ptr %270, i32 %211
  store ptr %271, ptr %98, align 4
  %272 = icmp ugt i32 %211, 65535
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  store i32 1, ptr %100, align 4
  %274 = load ptr, ptr %101, align 4
  %275 = load ptr, ptr %1, align 4
  %276 = ptrtoint ptr %274 to i32
  %277 = ptrtoint ptr %275 to i32
  %278 = sub i32 %276, %277
  %279 = ashr exact i32 %278, 3
  store i32 %279, ptr %102, align 4
  br label %280

280:                                              ; preds = %273, %269, %219
  %281 = trunc i32 %211 to i16
  %282 = load ptr, ptr %101, align 4
  %283 = getelementptr inbounds %struct.seqDef_s, ptr %282, i32 0, i32 1
  store i16 %281, ptr %283, align 4
  %284 = load ptr, ptr %101, align 4
  store i32 1, ptr %284, align 4
  %285 = icmp ugt i32 %212, 65535
  br i1 %285, label %288, label %286

286:                                              ; preds = %280
  %287 = load ptr, ptr %101, align 4
  br label %657

288:                                              ; preds = %280
  store i32 2, ptr %100, align 4
  %289 = load ptr, ptr %101, align 4
  %290 = load ptr, ptr %1, align 4
  %291 = ptrtoint ptr %289 to i32
  %292 = ptrtoint ptr %290 to i32
  %293 = sub i32 %291, %292
  %294 = ashr exact i32 %293, 3
  store i32 %294, ptr %102, align 4
  br label %657

295:                                              ; preds = %131
  %296 = icmp ugt i32 %136, %69
  br i1 %296, label %297, label %379

297:                                              ; preds = %295
  %298 = load i64, ptr %139, align 1
  %299 = load i64, ptr %104, align 1
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %383

301:                                              ; preds = %297
  %302 = getelementptr i8, ptr %104, i32 8
  %303 = getelementptr i8, ptr %139, i32 8
  %304 = icmp ugt ptr %95, %302
  br i1 %304, label %305, label %331

305:                                              ; preds = %301
  %306 = load i32, ptr %303, align 1
  %307 = load i32, ptr %302, align 1
  %308 = xor i32 %307, %306
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %305
  %311 = tail call i32 @llvm.cttz.i32(i32 %308, i1 true) #4, !range !8
  %312 = lshr i32 %311, 3
  br label %357

313:                                              ; preds = %319, %305
  %314 = phi ptr [ %317, %319 ], [ %302, %305 ]
  %315 = phi ptr [ %316, %319 ], [ %303, %305 ]
  %316 = getelementptr i8, ptr %315, i32 4
  %317 = getelementptr i8, ptr %314, i32 4
  %318 = icmp ult ptr %317, %95
  br i1 %318, label %319, label %331

319:                                              ; preds = %313
  %320 = load i32, ptr %316, align 1
  %321 = load i32, ptr %317, align 1
  %322 = xor i32 %321, %320
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %313, label %324

324:                                              ; preds = %319
  %325 = tail call i32 @llvm.cttz.i32(i32 %322, i1 true) #4, !range !8
  %326 = lshr i32 %325, 3
  %327 = getelementptr i8, ptr %317, i32 %326
  %328 = ptrtoint ptr %327 to i32
  %329 = ptrtoint ptr %302 to i32
  %330 = sub i32 %328, %329
  br label %357

331:                                              ; preds = %313, %301
  %332 = phi ptr [ %302, %301 ], [ %317, %313 ]
  %333 = phi ptr [ %303, %301 ], [ %316, %313 ]
  %334 = icmp ult ptr %332, %96
  br i1 %334, label %335, label %342

335:                                              ; preds = %331
  %336 = load i16, ptr %333, align 1
  %337 = load i16, ptr %332, align 1
  %338 = icmp eq i16 %336, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %335
  %340 = getelementptr i8, ptr %332, i32 2
  %341 = getelementptr i8, ptr %333, i32 2
  br label %342

342:                                              ; preds = %339, %335, %331
  %343 = phi ptr [ %340, %339 ], [ %332, %335 ], [ %332, %331 ]
  %344 = phi ptr [ %341, %339 ], [ %333, %335 ], [ %333, %331 ]
  %345 = icmp ult ptr %343, %16
  br i1 %345, label %346, label %352

346:                                              ; preds = %342
  %347 = load i8, ptr %344, align 1
  %348 = load i8, ptr %343, align 1
  %349 = icmp eq i8 %347, %348
  %350 = zext i1 %349 to i32
  %351 = getelementptr i8, ptr %343, i32 %350
  br label %352

352:                                              ; preds = %346, %342
  %353 = phi ptr [ %343, %342 ], [ %351, %346 ]
  %354 = ptrtoint ptr %353 to i32
  %355 = ptrtoint ptr %302 to i32
  %356 = sub i32 %354, %355
  br label %357

357:                                              ; preds = %352, %324, %310
  %358 = phi i32 [ %356, %352 ], [ %312, %310 ], [ %330, %324 ]
  %359 = add i32 %358, 8
  %360 = ptrtoint ptr %139 to i32
  %361 = sub i32 %133, %360
  %362 = icmp ugt ptr %104, %105
  %363 = icmp ugt ptr %139, %70
  %364 = and i1 %362, %363
  br i1 %364, label %365, label %566

365:                                              ; preds = %374, %357
  %366 = phi ptr [ %369, %374 ], [ %104, %357 ]
  %367 = phi ptr [ %371, %374 ], [ %139, %357 ]
  %368 = phi i32 [ %375, %374 ], [ %359, %357 ]
  %369 = getelementptr i8, ptr %366, i32 -1
  %370 = load i8, ptr %369, align 1
  %371 = getelementptr i8, ptr %367, i32 -1
  %372 = load i8, ptr %371, align 1
  %373 = icmp eq i8 %370, %372
  br i1 %373, label %374, label %566

374:                                              ; preds = %365
  %375 = add i32 %368, 1
  %376 = icmp ugt ptr %369, %105
  %377 = icmp ugt ptr %371, %70
  %378 = and i1 %376, %377
  br i1 %378, label %365, label %566

379:                                              ; preds = %295
  %380 = icmp ugt i32 %138, %69
  br i1 %380, label %381, label %390

381:                                              ; preds = %379
  %382 = load i32, ptr %104, align 1
  br label %386

383:                                              ; preds = %297
  %384 = trunc i64 %299 to i32
  %385 = icmp ugt i32 %138, %69
  br i1 %385, label %386, label %390

386:                                              ; preds = %383, %381
  %387 = phi i32 [ %382, %381 ], [ %384, %383 ]
  %388 = load i32, ptr %140, align 1
  %389 = icmp eq i32 %388, %387
  br i1 %389, label %396, label %390

390:                                              ; preds = %386, %383, %379
  %391 = ptrtoint ptr %105 to i32
  %392 = sub i32 %133, %391
  %393 = ashr i32 %392, 8
  %394 = add nsw i32 %393, 1
  %395 = getelementptr i8, ptr %104, i32 %394
  br label %874

396:                                              ; preds = %386
  %397 = load i64, ptr %143, align 1
  %398 = mul i64 %397, -3523014627327384477
  %399 = lshr i64 %398, %91
  %400 = trunc i64 %399 to i32
  %401 = getelementptr i32, ptr %9, i32 %400
  %402 = load i32, ptr %401, align 4
  %403 = getelementptr i8, ptr %19, i32 %402
  store i32 %141, ptr %401, align 4
  %404 = icmp ugt i32 %402, %69
  br i1 %404, label %405, label %488

405:                                              ; preds = %396
  %406 = load i64, ptr %403, align 1
  %407 = load i64, ptr %143, align 1
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %488

409:                                              ; preds = %405
  %410 = getelementptr i8, ptr %104, i32 9
  %411 = getelementptr i8, ptr %403, i32 8
  %412 = icmp ugt ptr %95, %410
  br i1 %412, label %413, label %439

413:                                              ; preds = %409
  %414 = load i32, ptr %411, align 1
  %415 = load i32, ptr %410, align 1
  %416 = xor i32 %415, %414
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %413
  %419 = tail call i32 @llvm.cttz.i32(i32 %416, i1 true) #4, !range !8
  %420 = lshr i32 %419, 3
  br label %465

421:                                              ; preds = %427, %413
  %422 = phi ptr [ %425, %427 ], [ %410, %413 ]
  %423 = phi ptr [ %424, %427 ], [ %411, %413 ]
  %424 = getelementptr i8, ptr %423, i32 4
  %425 = getelementptr i8, ptr %422, i32 4
  %426 = icmp ult ptr %425, %95
  br i1 %426, label %427, label %439

427:                                              ; preds = %421
  %428 = load i32, ptr %424, align 1
  %429 = load i32, ptr %425, align 1
  %430 = xor i32 %429, %428
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %421, label %432

432:                                              ; preds = %427
  %433 = tail call i32 @llvm.cttz.i32(i32 %430, i1 true) #4, !range !8
  %434 = lshr i32 %433, 3
  %435 = getelementptr i8, ptr %425, i32 %434
  %436 = ptrtoint ptr %435 to i32
  %437 = ptrtoint ptr %410 to i32
  %438 = sub i32 %436, %437
  br label %465

439:                                              ; preds = %421, %409
  %440 = phi ptr [ %410, %409 ], [ %425, %421 ]
  %441 = phi ptr [ %411, %409 ], [ %424, %421 ]
  %442 = icmp ult ptr %440, %96
  br i1 %442, label %443, label %450

443:                                              ; preds = %439
  %444 = load i16, ptr %441, align 1
  %445 = load i16, ptr %440, align 1
  %446 = icmp eq i16 %444, %445
  br i1 %446, label %447, label %450

447:                                              ; preds = %443
  %448 = getelementptr i8, ptr %440, i32 2
  %449 = getelementptr i8, ptr %441, i32 2
  br label %450

450:                                              ; preds = %447, %443, %439
  %451 = phi ptr [ %448, %447 ], [ %440, %443 ], [ %440, %439 ]
  %452 = phi ptr [ %449, %447 ], [ %441, %443 ], [ %441, %439 ]
  %453 = icmp ult ptr %451, %16
  br i1 %453, label %454, label %460

454:                                              ; preds = %450
  %455 = load i8, ptr %452, align 1
  %456 = load i8, ptr %451, align 1
  %457 = icmp eq i8 %455, %456
  %458 = zext i1 %457 to i32
  %459 = getelementptr i8, ptr %451, i32 %458
  br label %460

460:                                              ; preds = %454, %450
  %461 = phi ptr [ %451, %450 ], [ %459, %454 ]
  %462 = ptrtoint ptr %461 to i32
  %463 = ptrtoint ptr %410 to i32
  %464 = sub i32 %462, %463
  br label %465

465:                                              ; preds = %460, %432, %418
  %466 = phi i32 [ %464, %460 ], [ %420, %418 ], [ %438, %432 ]
  %467 = add i32 %466, 8
  %468 = ptrtoint ptr %143 to i32
  %469 = ptrtoint ptr %403 to i32
  %470 = sub i32 %468, %469
  %471 = icmp ugt ptr %143, %105
  %472 = icmp ugt ptr %403, %70
  %473 = and i1 %471, %472
  br i1 %473, label %474, label %566

474:                                              ; preds = %483, %465
  %475 = phi ptr [ %480, %483 ], [ %403, %465 ]
  %476 = phi ptr [ %478, %483 ], [ %143, %465 ]
  %477 = phi i32 [ %484, %483 ], [ %467, %465 ]
  %478 = getelementptr i8, ptr %476, i32 -1
  %479 = load i8, ptr %478, align 1
  %480 = getelementptr i8, ptr %475, i32 -1
  %481 = load i8, ptr %480, align 1
  %482 = icmp eq i8 %479, %481
  br i1 %482, label %483, label %566

483:                                              ; preds = %474
  %484 = add i32 %477, 1
  %485 = icmp ugt ptr %478, %105
  %486 = icmp ugt ptr %480, %70
  %487 = and i1 %486, %485
  br i1 %487, label %474, label %566

488:                                              ; preds = %405, %396
  %489 = getelementptr i8, ptr %104, i32 4
  %490 = getelementptr i8, ptr %140, i32 4
  %491 = icmp ugt ptr %95, %489
  br i1 %491, label %492, label %518

492:                                              ; preds = %488
  %493 = load i32, ptr %490, align 1
  %494 = load i32, ptr %489, align 1
  %495 = xor i32 %494, %493
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %500, label %497

497:                                              ; preds = %492
  %498 = tail call i32 @llvm.cttz.i32(i32 %495, i1 true) #4, !range !8
  %499 = lshr i32 %498, 3
  br label %544

500:                                              ; preds = %506, %492
  %501 = phi ptr [ %504, %506 ], [ %489, %492 ]
  %502 = phi ptr [ %503, %506 ], [ %490, %492 ]
  %503 = getelementptr i8, ptr %502, i32 4
  %504 = getelementptr i8, ptr %501, i32 4
  %505 = icmp ult ptr %504, %95
  br i1 %505, label %506, label %518

506:                                              ; preds = %500
  %507 = load i32, ptr %503, align 1
  %508 = load i32, ptr %504, align 1
  %509 = xor i32 %508, %507
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %500, label %511

511:                                              ; preds = %506
  %512 = tail call i32 @llvm.cttz.i32(i32 %509, i1 true) #4, !range !8
  %513 = lshr i32 %512, 3
  %514 = getelementptr i8, ptr %504, i32 %513
  %515 = ptrtoint ptr %514 to i32
  %516 = ptrtoint ptr %489 to i32
  %517 = sub i32 %515, %516
  br label %544

518:                                              ; preds = %500, %488
  %519 = phi ptr [ %489, %488 ], [ %504, %500 ]
  %520 = phi ptr [ %490, %488 ], [ %503, %500 ]
  %521 = icmp ult ptr %519, %96
  br i1 %521, label %522, label %529

522:                                              ; preds = %518
  %523 = load i16, ptr %520, align 1
  %524 = load i16, ptr %519, align 1
  %525 = icmp eq i16 %523, %524
  br i1 %525, label %526, label %529

526:                                              ; preds = %522
  %527 = getelementptr i8, ptr %519, i32 2
  %528 = getelementptr i8, ptr %520, i32 2
  br label %529

529:                                              ; preds = %526, %522, %518
  %530 = phi ptr [ %527, %526 ], [ %519, %522 ], [ %519, %518 ]
  %531 = phi ptr [ %528, %526 ], [ %520, %522 ], [ %520, %518 ]
  %532 = icmp ult ptr %530, %16
  br i1 %532, label %533, label %539

533:                                              ; preds = %529
  %534 = load i8, ptr %531, align 1
  %535 = load i8, ptr %530, align 1
  %536 = icmp eq i8 %534, %535
  %537 = zext i1 %536 to i32
  %538 = getelementptr i8, ptr %530, i32 %537
  br label %539

539:                                              ; preds = %533, %529
  %540 = phi ptr [ %530, %529 ], [ %538, %533 ]
  %541 = ptrtoint ptr %540 to i32
  %542 = ptrtoint ptr %489 to i32
  %543 = sub i32 %541, %542
  br label %544

544:                                              ; preds = %539, %511, %497
  %545 = phi i32 [ %543, %539 ], [ %499, %497 ], [ %517, %511 ]
  %546 = add i32 %545, 4
  %547 = ptrtoint ptr %140 to i32
  %548 = sub i32 %133, %547
  %549 = icmp ugt ptr %104, %105
  %550 = icmp ugt ptr %140, %70
  %551 = and i1 %549, %550
  br i1 %551, label %552, label %566

552:                                              ; preds = %561, %544
  %553 = phi ptr [ %556, %561 ], [ %104, %544 ]
  %554 = phi ptr [ %558, %561 ], [ %140, %544 ]
  %555 = phi i32 [ %562, %561 ], [ %546, %544 ]
  %556 = getelementptr i8, ptr %553, i32 -1
  %557 = load i8, ptr %556, align 1
  %558 = getelementptr i8, ptr %554, i32 -1
  %559 = load i8, ptr %558, align 1
  %560 = icmp eq i8 %557, %559
  br i1 %560, label %561, label %566

561:                                              ; preds = %552
  %562 = add i32 %555, 1
  %563 = icmp ugt ptr %556, %105
  %564 = icmp ugt ptr %558, %70
  %565 = and i1 %563, %564
  br i1 %565, label %552, label %566

566:                                              ; preds = %561, %552, %544, %483, %474, %465, %374, %365, %357
  %567 = phi i32 [ %359, %357 ], [ %467, %465 ], [ %546, %544 ], [ %375, %374 ], [ %368, %365 ], [ %484, %483 ], [ %477, %474 ], [ %555, %552 ], [ %562, %561 ]
  %568 = phi i32 [ %361, %357 ], [ %470, %465 ], [ %548, %544 ], [ %361, %365 ], [ %361, %374 ], [ %470, %474 ], [ %470, %483 ], [ %548, %552 ], [ %548, %561 ]
  %569 = phi ptr [ %104, %357 ], [ %143, %465 ], [ %104, %544 ], [ %369, %374 ], [ %366, %365 ], [ %478, %483 ], [ %476, %474 ], [ %553, %552 ], [ %556, %561 ]
  %570 = ptrtoint ptr %569 to i32
  %571 = ptrtoint ptr %105 to i32
  %572 = sub i32 %570, %571
  %573 = add i32 %567, -3
  %574 = getelementptr i8, ptr %105, i32 %572
  %575 = icmp ugt ptr %574, %97
  %576 = load ptr, ptr %98, align 4
  br i1 %575, label %598, label %577

577:                                              ; preds = %566
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %576, ptr noundef align 1 dereferenceable(16) %105, i32 16, i1 false) #4
  %578 = icmp ugt i32 %572, 16
  %579 = load ptr, ptr %98, align 4
  br i1 %578, label %582, label %580

580:                                              ; preds = %577
  %581 = getelementptr i8, ptr %579, i32 %572
  store ptr %581, ptr %98, align 4
  br label %641

582:                                              ; preds = %577
  %583 = getelementptr i8, ptr %579, i32 16
  %584 = getelementptr i8, ptr %105, i32 16
  %585 = add i32 %572, -16
  %586 = getelementptr i8, ptr %579, i32 %572
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %583, ptr noundef align 1 dereferenceable(16) %584, i32 16, i1 false) #4
  %587 = icmp slt i32 %585, 17
  br i1 %587, label %630, label %588

588:                                              ; preds = %582
  %589 = getelementptr i8, ptr %579, i32 32
  br label %590

590:                                              ; preds = %590, %588
  %591 = phi ptr [ %584, %588 ], [ %595, %590 ]
  %592 = phi ptr [ %589, %588 ], [ %596, %590 ]
  %593 = getelementptr i8, ptr %591, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %592, ptr noundef align 1 dereferenceable(16) %593, i32 16, i1 false) #4
  %594 = getelementptr i8, ptr %592, i32 16
  %595 = getelementptr i8, ptr %591, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %594, ptr noundef align 1 dereferenceable(16) %595, i32 16, i1 false) #4
  %596 = getelementptr i8, ptr %592, i32 32
  %597 = icmp ult ptr %596, %586
  br i1 %597, label %590, label %630

598:                                              ; preds = %566
  %599 = ptrtoint ptr %574 to i32
  %600 = icmp ult ptr %97, %105
  br i1 %600, label %615, label %601

601:                                              ; preds = %598
  %602 = sub i32 %99, %571
  %603 = getelementptr i8, ptr %576, i32 %602
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %576, ptr noundef align 1 dereferenceable(16) %105, i32 16, i1 false) #4
  %604 = icmp slt i32 %602, 17
  br i1 %604, label %615, label %605

605:                                              ; preds = %601
  %606 = getelementptr i8, ptr %576, i32 16
  br label %607

607:                                              ; preds = %607, %605
  %608 = phi ptr [ %105, %605 ], [ %612, %607 ]
  %609 = phi ptr [ %606, %605 ], [ %613, %607 ]
  %610 = getelementptr i8, ptr %608, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %609, ptr noundef align 1 dereferenceable(16) %610, i32 16, i1 false) #4
  %611 = getelementptr i8, ptr %609, i32 16
  %612 = getelementptr i8, ptr %608, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %611, ptr noundef align 1 dereferenceable(16) %612, i32 16, i1 false) #4
  %613 = getelementptr i8, ptr %609, i32 32
  %614 = icmp ult ptr %613, %603
  br i1 %614, label %607, label %615

615:                                              ; preds = %607, %601, %598
  %616 = phi ptr [ %97, %601 ], [ %105, %598 ], [ %97, %607 ]
  %617 = phi ptr [ %603, %601 ], [ %576, %598 ], [ %603, %607 ]
  %618 = icmp ult ptr %616, %574
  br i1 %618, label %619, label %630

619:                                              ; preds = %615
  %620 = ptrtoint ptr %616 to i32
  %621 = sub i32 %599, %620
  %622 = getelementptr i8, ptr %616, i32 %621
  br label %623

623:                                              ; preds = %623, %619
  %624 = phi ptr [ %628, %623 ], [ %617, %619 ]
  %625 = phi ptr [ %626, %623 ], [ %616, %619 ]
  %626 = getelementptr i8, ptr %625, i32 1
  %627 = load i8, ptr %625, align 1
  %628 = getelementptr i8, ptr %624, i32 1
  store i8 %627, ptr %624, align 1
  %629 = icmp eq ptr %626, %622
  br i1 %629, label %630, label %623

630:                                              ; preds = %623, %615, %590, %582
  %631 = load ptr, ptr %98, align 4
  %632 = getelementptr i8, ptr %631, i32 %572
  store ptr %632, ptr %98, align 4
  %633 = icmp ugt i32 %572, 65535
  br i1 %633, label %634, label %641

634:                                              ; preds = %630
  store i32 1, ptr %100, align 4
  %635 = load ptr, ptr %101, align 4
  %636 = load ptr, ptr %1, align 4
  %637 = ptrtoint ptr %635 to i32
  %638 = ptrtoint ptr %636 to i32
  %639 = sub i32 %637, %638
  %640 = ashr exact i32 %639, 3
  store i32 %640, ptr %102, align 4
  br label %641

641:                                              ; preds = %634, %630, %580
  %642 = trunc i32 %572 to i16
  %643 = load ptr, ptr %101, align 4
  %644 = getelementptr inbounds %struct.seqDef_s, ptr %643, i32 0, i32 1
  store i16 %642, ptr %644, align 4
  %645 = add i32 %568, 3
  %646 = load ptr, ptr %101, align 4
  store i32 %645, ptr %646, align 4
  %647 = icmp ugt i32 %573, 65535
  br i1 %647, label %650, label %648

648:                                              ; preds = %641
  %649 = load ptr, ptr %101, align 4
  br label %657

650:                                              ; preds = %641
  store i32 2, ptr %100, align 4
  %651 = load ptr, ptr %101, align 4
  %652 = load ptr, ptr %1, align 4
  %653 = ptrtoint ptr %651 to i32
  %654 = ptrtoint ptr %652 to i32
  %655 = sub i32 %653, %654
  %656 = ashr exact i32 %655, 3
  store i32 %656, ptr %102, align 4
  br label %657

657:                                              ; preds = %650, %648, %288, %286
  %658 = phi i32 [ %212, %286 ], [ %212, %288 ], [ %573, %648 ], [ %573, %650 ]
  %659 = phi ptr [ %287, %286 ], [ %289, %288 ], [ %649, %648 ], [ %651, %650 ]
  %660 = phi i32 [ %107, %286 ], [ %107, %288 ], [ %106, %648 ], [ %106, %650 ]
  %661 = phi i32 [ %106, %286 ], [ %106, %288 ], [ %568, %648 ], [ %568, %650 ]
  %662 = phi i32 [ %208, %286 ], [ %208, %288 ], [ %567, %648 ], [ %567, %650 ]
  %663 = phi ptr [ %143, %286 ], [ %143, %288 ], [ %569, %648 ], [ %569, %650 ]
  %664 = trunc i32 %658 to i16
  %665 = getelementptr inbounds %struct.seqDef_s, ptr %659, i32 0, i32 2
  store i16 %664, ptr %665, align 2
  %666 = load ptr, ptr %101, align 4
  %667 = getelementptr %struct.seqDef_s, ptr %666, i32 1
  store ptr %667, ptr %101, align 4
  %668 = getelementptr i8, ptr %663, i32 %662
  %669 = icmp ugt ptr %668, %17
  br i1 %669, label %874, label %670

670:                                              ; preds = %657
  %671 = add i32 %134, 2
  %672 = getelementptr i8, ptr %19, i32 %671
  %673 = load i64, ptr %672, align 1
  %674 = mul i64 %673, -3523014627327384477
  %675 = lshr i64 %674, %91
  %676 = trunc i64 %675 to i32
  %677 = getelementptr i32, ptr %9, i32 %676
  store i32 %671, ptr %677, align 4
  %678 = getelementptr i8, ptr %668, i32 -2
  %679 = ptrtoint ptr %678 to i32
  %680 = sub i32 %679, %21
  %681 = load i64, ptr %678, align 1
  %682 = mul i64 %681, -3523014627327384477
  %683 = lshr i64 %682, %91
  %684 = trunc i64 %683 to i32
  %685 = getelementptr i32, ptr %9, i32 %684
  store i32 %680, ptr %685, align 4
  switch i32 %5, label %730 [
    i32 8, label %719
    i32 5, label %686
    i32 6, label %697
    i32 7, label %708
  ]

686:                                              ; preds = %670
  %687 = load i64, ptr %672, align 1
  %688 = mul i64 %687, -3523014627271114752
  %689 = lshr i64 %688, %93
  %690 = trunc i64 %689 to i32
  %691 = getelementptr i32, ptr %13, i32 %690
  store i32 %671, ptr %691, align 4
  %692 = getelementptr i8, ptr %668, i32 -1
  %693 = load i64, ptr %692, align 1
  %694 = mul i64 %693, -3523014627271114752
  %695 = lshr i64 %694, %93
  %696 = trunc i64 %695 to i32
  br label %739

697:                                              ; preds = %670
  %698 = load i64, ptr %672, align 1
  %699 = mul i64 %698, -3523014627193847808
  %700 = lshr i64 %699, %93
  %701 = trunc i64 %700 to i32
  %702 = getelementptr i32, ptr %13, i32 %701
  store i32 %671, ptr %702, align 4
  %703 = getelementptr i8, ptr %668, i32 -1
  %704 = load i64, ptr %703, align 1
  %705 = mul i64 %704, -3523014627193847808
  %706 = lshr i64 %705, %93
  %707 = trunc i64 %706 to i32
  br label %739

708:                                              ; preds = %670
  %709 = load i64, ptr %672, align 1
  %710 = mul i64 %709, -3523014627193167104
  %711 = lshr i64 %710, %93
  %712 = trunc i64 %711 to i32
  %713 = getelementptr i32, ptr %13, i32 %712
  store i32 %671, ptr %713, align 4
  %714 = getelementptr i8, ptr %668, i32 -1
  %715 = load i64, ptr %714, align 1
  %716 = mul i64 %715, -3523014627193167104
  %717 = lshr i64 %716, %93
  %718 = trunc i64 %717 to i32
  br label %739

719:                                              ; preds = %670
  %720 = load i64, ptr %672, align 1
  %721 = mul i64 %720, -3523014627327384477
  %722 = lshr i64 %721, %93
  %723 = trunc i64 %722 to i32
  %724 = getelementptr i32, ptr %13, i32 %723
  store i32 %671, ptr %724, align 4
  %725 = getelementptr i8, ptr %668, i32 -1
  %726 = load i64, ptr %725, align 1
  %727 = mul i64 %726, -3523014627327384477
  %728 = lshr i64 %727, %93
  %729 = trunc i64 %728 to i32
  br label %739

730:                                              ; preds = %670
  %731 = load i32, ptr %672, align 1
  %732 = mul i32 %731, -1640531535
  %733 = lshr i32 %732, %94
  %734 = getelementptr i32, ptr %13, i32 %733
  store i32 %671, ptr %734, align 4
  %735 = getelementptr i8, ptr %668, i32 -1
  %736 = load i32, ptr %735, align 1
  %737 = mul i32 %736, -1640531535
  %738 = lshr i32 %737, %94
  br label %739

739:                                              ; preds = %730, %719, %708, %697, %686
  %740 = phi ptr [ %735, %730 ], [ %714, %708 ], [ %703, %697 ], [ %692, %686 ], [ %725, %719 ]
  %741 = phi i32 [ %738, %730 ], [ %718, %708 ], [ %707, %697 ], [ %696, %686 ], [ %729, %719 ]
  %742 = ptrtoint ptr %740 to i32
  %743 = sub i32 %742, %21
  %744 = getelementptr i32, ptr %13, i32 %741
  store i32 %743, ptr %744, align 4
  br label %745

745:                                              ; preds = %866, %739
  %746 = phi ptr [ %872, %866 ], [ %668, %739 ]
  %747 = phi i32 [ %748, %866 ], [ %661, %739 ]
  %748 = phi i32 [ %747, %866 ], [ %660, %739 ]
  %749 = icmp ne i32 %748, 0
  %750 = load i32, ptr %746, align 1
  %751 = sub i32 0, %748
  %752 = getelementptr i8, ptr %746, i32 %751
  %753 = load i32, ptr %752, align 1
  %754 = icmp eq i32 %750, %753
  %755 = and i1 %749, %754
  br i1 %755, label %756, label %874

756:                                              ; preds = %745
  %757 = getelementptr i8, ptr %746, i32 4
  %758 = getelementptr i8, ptr %757, i32 %751
  %759 = icmp ugt ptr %95, %757
  br i1 %759, label %760, label %786

760:                                              ; preds = %756
  %761 = load i32, ptr %758, align 1
  %762 = load i32, ptr %757, align 1
  %763 = xor i32 %762, %761
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %768, label %765

765:                                              ; preds = %760
  %766 = tail call i32 @llvm.cttz.i32(i32 %763, i1 true) #4, !range !8
  %767 = lshr i32 %766, 3
  br label %812

768:                                              ; preds = %774, %760
  %769 = phi ptr [ %772, %774 ], [ %757, %760 ]
  %770 = phi ptr [ %771, %774 ], [ %758, %760 ]
  %771 = getelementptr i8, ptr %770, i32 4
  %772 = getelementptr i8, ptr %769, i32 4
  %773 = icmp ult ptr %772, %95
  br i1 %773, label %774, label %786

774:                                              ; preds = %768
  %775 = load i32, ptr %771, align 1
  %776 = load i32, ptr %772, align 1
  %777 = xor i32 %776, %775
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %768, label %779

779:                                              ; preds = %774
  %780 = tail call i32 @llvm.cttz.i32(i32 %777, i1 true) #4, !range !8
  %781 = lshr i32 %780, 3
  %782 = getelementptr i8, ptr %772, i32 %781
  %783 = ptrtoint ptr %782 to i32
  %784 = ptrtoint ptr %757 to i32
  %785 = sub i32 %783, %784
  br label %812

786:                                              ; preds = %768, %756
  %787 = phi ptr [ %757, %756 ], [ %772, %768 ]
  %788 = phi ptr [ %758, %756 ], [ %771, %768 ]
  %789 = icmp ult ptr %787, %96
  br i1 %789, label %790, label %797

790:                                              ; preds = %786
  %791 = load i16, ptr %788, align 1
  %792 = load i16, ptr %787, align 1
  %793 = icmp eq i16 %791, %792
  br i1 %793, label %794, label %797

794:                                              ; preds = %790
  %795 = getelementptr i8, ptr %787, i32 2
  %796 = getelementptr i8, ptr %788, i32 2
  br label %797

797:                                              ; preds = %794, %790, %786
  %798 = phi ptr [ %795, %794 ], [ %787, %790 ], [ %787, %786 ]
  %799 = phi ptr [ %796, %794 ], [ %788, %790 ], [ %788, %786 ]
  %800 = icmp ult ptr %798, %16
  br i1 %800, label %801, label %807

801:                                              ; preds = %797
  %802 = load i8, ptr %799, align 1
  %803 = load i8, ptr %798, align 1
  %804 = icmp eq i8 %802, %803
  %805 = zext i1 %804 to i32
  %806 = getelementptr i8, ptr %798, i32 %805
  br label %807

807:                                              ; preds = %801, %797
  %808 = phi ptr [ %798, %797 ], [ %806, %801 ]
  %809 = ptrtoint ptr %808 to i32
  %810 = ptrtoint ptr %757 to i32
  %811 = sub i32 %809, %810
  br label %812

812:                                              ; preds = %807, %779, %765
  %813 = phi i32 [ %811, %807 ], [ %767, %765 ], [ %785, %779 ]
  %814 = add i32 %813, 4
  %815 = ptrtoint ptr %746 to i32
  %816 = sub i32 %815, %21
  switch i32 %5, label %817 [
    i32 8, label %835
    i32 5, label %820
    i32 6, label %825
    i32 7, label %830
  ]

817:                                              ; preds = %812
  %818 = mul i32 %750, -1640531535
  %819 = lshr i32 %818, %94
  br label %840

820:                                              ; preds = %812
  %821 = load i64, ptr %746, align 1
  %822 = mul i64 %821, -3523014627271114752
  %823 = lshr i64 %822, %93
  %824 = trunc i64 %823 to i32
  br label %840

825:                                              ; preds = %812
  %826 = load i64, ptr %746, align 1
  %827 = mul i64 %826, -3523014627193847808
  %828 = lshr i64 %827, %93
  %829 = trunc i64 %828 to i32
  br label %840

830:                                              ; preds = %812
  %831 = load i64, ptr %746, align 1
  %832 = mul i64 %831, -3523014627193167104
  %833 = lshr i64 %832, %93
  %834 = trunc i64 %833 to i32
  br label %840

835:                                              ; preds = %812
  %836 = load i64, ptr %746, align 1
  %837 = mul i64 %836, -3523014627327384477
  %838 = lshr i64 %837, %93
  %839 = trunc i64 %838 to i32
  br label %840

840:                                              ; preds = %835, %830, %825, %820, %817
  %841 = phi i32 [ %819, %817 ], [ %834, %830 ], [ %829, %825 ], [ %824, %820 ], [ %839, %835 ]
  %842 = getelementptr i32, ptr %13, i32 %841
  store i32 %816, ptr %842, align 4
  %843 = load i64, ptr %746, align 1
  %844 = mul i64 %843, -3523014627327384477
  %845 = lshr i64 %844, %91
  %846 = trunc i64 %845 to i32
  %847 = getelementptr i32, ptr %9, i32 %846
  store i32 %816, ptr %847, align 4
  %848 = add i32 %813, 1
  %849 = icmp ugt ptr %746, %97
  br i1 %849, label %852, label %850

850:                                              ; preds = %840
  %851 = load ptr, ptr %98, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %851, ptr noundef align 1 dereferenceable(16) %746, i32 16, i1 false) #4
  br label %852

852:                                              ; preds = %850, %840
  %853 = load ptr, ptr %101, align 4
  %854 = getelementptr inbounds %struct.seqDef_s, ptr %853, i32 0, i32 1
  store i16 0, ptr %854, align 4
  %855 = load ptr, ptr %101, align 4
  store i32 1, ptr %855, align 4
  %856 = icmp ugt i32 %848, 65535
  br i1 %856, label %859, label %857

857:                                              ; preds = %852
  %858 = load ptr, ptr %101, align 4
  br label %866

859:                                              ; preds = %852
  store i32 2, ptr %100, align 4
  %860 = load ptr, ptr %101, align 4
  %861 = load ptr, ptr %1, align 4
  %862 = ptrtoint ptr %860 to i32
  %863 = ptrtoint ptr %861 to i32
  %864 = sub i32 %862, %863
  %865 = ashr exact i32 %864, 3
  store i32 %865, ptr %102, align 4
  br label %866

866:                                              ; preds = %859, %857
  %867 = phi ptr [ %858, %857 ], [ %860, %859 ]
  %868 = trunc i32 %848 to i16
  %869 = getelementptr inbounds %struct.seqDef_s, ptr %867, i32 0, i32 2
  store i16 %868, ptr %869, align 2
  %870 = load ptr, ptr %101, align 4
  %871 = getelementptr %struct.seqDef_s, ptr %870, i32 1
  store ptr %871, ptr %101, align 4
  %872 = getelementptr i8, ptr %746, i32 %814
  %873 = icmp ugt ptr %872, %17
  br i1 %873, label %874, label %745

874:                                              ; preds = %866, %745, %657, %390
  %875 = phi i32 [ %107, %390 ], [ %660, %657 ], [ %748, %745 ], [ %747, %866 ]
  %876 = phi i32 [ %106, %390 ], [ %661, %657 ], [ %747, %745 ], [ %748, %866 ]
  %877 = phi ptr [ %105, %390 ], [ %668, %657 ], [ %746, %745 ], [ %872, %866 ]
  %878 = phi ptr [ %395, %390 ], [ %668, %657 ], [ %746, %745 ], [ %872, %866 ]
  %879 = icmp ult ptr %878, %17
  br i1 %879, label %103, label %880

880:                                              ; preds = %874
  %881 = ptrtoint ptr %877 to i32
  br label %882

882:                                              ; preds = %880, %65
  %883 = phi i32 [ %881, %880 ], [ %20, %65 ]
  %884 = phi i32 [ %875, %880 ], [ %83, %65 ]
  %885 = phi i32 [ %876, %880 ], [ %87, %65 ]
  %886 = icmp eq i32 %885, 0
  %887 = select i1 %886, i32 %86, i32 %885
  store i32 %887, ptr %2, align 4
  %888 = icmp eq i32 %884, 0
  %889 = select i1 %888, i32 %86, i32 %884
  br label %2140

890:                                              ; preds = %2128, %50
  %891 = phi ptr [ %3, %50 ], [ %2132, %2128 ]
  %892 = phi ptr [ %3, %50 ], [ %2131, %2128 ]
  %893 = phi i32 [ %46, %50 ], [ %2130, %2128 ]
  %894 = phi i32 [ %44, %50 ], [ %2129, %2128 ]
  switch i32 %5, label %895 [
    i32 8, label %915
    i32 5, label %900
    i32 6, label %905
    i32 7, label %910
  ]

895:                                              ; preds = %890
  %896 = load i32, ptr %891, align 1
  %897 = mul i32 %896, -1640531535
  %898 = lshr i32 %897, %53
  %899 = load i64, ptr %891, align 1
  br label %920

900:                                              ; preds = %890
  %901 = load i64, ptr %891, align 1
  %902 = mul i64 %901, -3523014627271114752
  %903 = lshr i64 %902, %52
  %904 = trunc i64 %903 to i32
  br label %920

905:                                              ; preds = %890
  %906 = load i64, ptr %891, align 1
  %907 = mul i64 %906, -3523014627193847808
  %908 = lshr i64 %907, %52
  %909 = trunc i64 %908 to i32
  br label %920

910:                                              ; preds = %890
  %911 = load i64, ptr %891, align 1
  %912 = mul i64 %911, -3523014627193167104
  %913 = lshr i64 %912, %52
  %914 = trunc i64 %913 to i32
  br label %920

915:                                              ; preds = %890
  %916 = load i64, ptr %891, align 1
  %917 = mul i64 %916, -3523014627327384477
  %918 = lshr i64 %917, %52
  %919 = trunc i64 %918 to i32
  br label %920

920:                                              ; preds = %915, %910, %905, %900, %895
  %921 = phi i64 [ %899, %895 ], [ %911, %910 ], [ %906, %905 ], [ %901, %900 ], [ %916, %915 ]
  %922 = phi i32 [ %898, %895 ], [ %914, %910 ], [ %909, %905 ], [ %904, %900 ], [ %919, %915 ]
  %923 = getelementptr i32, ptr %13, i32 %922
  %924 = load i32, ptr %923, align 4
  %925 = icmp ult i32 %924, %38
  %926 = select i1 %925, ptr %41, ptr %19
  %927 = getelementptr i8, ptr %926, i32 %924
  %928 = mul i64 %921, -3523014627327384477
  %929 = lshr i64 %928, %55
  %930 = trunc i64 %929 to i32
  %931 = getelementptr i32, ptr %9, i32 %930
  %932 = load i32, ptr %931, align 4
  %933 = icmp ult i32 %932, %38
  %934 = select i1 %933, ptr %41, ptr %19
  %935 = getelementptr i8, ptr %934, i32 %932
  %936 = ptrtoint ptr %891 to i32
  %937 = sub i32 %936, %21
  %938 = add i32 %937, 1
  %939 = sub i32 %938, %894
  %940 = icmp ult i32 %939, %38
  %941 = select i1 %940, ptr %41, ptr %19
  %942 = getelementptr i8, ptr %941, i32 %939
  store i32 %937, ptr %931, align 4
  store i32 %937, ptr %923, align 4
  %943 = sub i32 %56, %939
  %944 = icmp ugt i32 %943, 2
  %945 = icmp ugt i32 %939, %35
  %946 = and i1 %945, %944
  br i1 %946, label %947, label %1168

947:                                              ; preds = %920
  %948 = load i32, ptr %942, align 1
  %949 = getelementptr i8, ptr %891, i32 1
  %950 = load i32, ptr %949, align 1
  %951 = icmp eq i32 %948, %950
  br i1 %951, label %952, label %1168

952:                                              ; preds = %947
  %953 = select i1 %940, ptr %43, ptr %16
  %954 = getelementptr i8, ptr %891, i32 5
  %955 = getelementptr i8, ptr %942, i32 4
  %956 = ptrtoint ptr %953 to i32
  %957 = ptrtoint ptr %955 to i32
  %958 = sub i32 %956, %957
  %959 = getelementptr i8, ptr %954, i32 %958
  %960 = icmp ult ptr %959, %16
  %961 = select i1 %960, ptr %959, ptr %16
  %962 = getelementptr i8, ptr %961, i32 -3
  %963 = icmp ugt ptr %962, %954
  br i1 %963, label %964, label %990

964:                                              ; preds = %952
  %965 = load i32, ptr %955, align 1
  %966 = load i32, ptr %954, align 1
  %967 = xor i32 %966, %965
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %972, label %969

969:                                              ; preds = %964
  %970 = tail call i32 @llvm.cttz.i32(i32 %967, i1 true) #4, !range !8
  %971 = lshr i32 %970, 3
  br label %1017

972:                                              ; preds = %978, %964
  %973 = phi ptr [ %976, %978 ], [ %954, %964 ]
  %974 = phi ptr [ %975, %978 ], [ %955, %964 ]
  %975 = getelementptr i8, ptr %974, i32 4
  %976 = getelementptr i8, ptr %973, i32 4
  %977 = icmp ult ptr %976, %962
  br i1 %977, label %978, label %990

978:                                              ; preds = %972
  %979 = load i32, ptr %975, align 1
  %980 = load i32, ptr %976, align 1
  %981 = xor i32 %980, %979
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %972, label %983

983:                                              ; preds = %978
  %984 = tail call i32 @llvm.cttz.i32(i32 %981, i1 true) #4, !range !8
  %985 = lshr i32 %984, 3
  %986 = getelementptr i8, ptr %976, i32 %985
  %987 = ptrtoint ptr %986 to i32
  %988 = ptrtoint ptr %954 to i32
  %989 = sub i32 %987, %988
  br label %1017

990:                                              ; preds = %972, %952
  %991 = phi ptr [ %954, %952 ], [ %976, %972 ]
  %992 = phi ptr [ %955, %952 ], [ %975, %972 ]
  %993 = getelementptr i8, ptr %961, i32 -1
  %994 = icmp ult ptr %991, %993
  br i1 %994, label %995, label %1002

995:                                              ; preds = %990
  %996 = load i16, ptr %992, align 1
  %997 = load i16, ptr %991, align 1
  %998 = icmp eq i16 %996, %997
  br i1 %998, label %999, label %1002

999:                                              ; preds = %995
  %1000 = getelementptr i8, ptr %991, i32 2
  %1001 = getelementptr i8, ptr %992, i32 2
  br label %1002

1002:                                             ; preds = %999, %995, %990
  %1003 = phi ptr [ %1000, %999 ], [ %991, %995 ], [ %991, %990 ]
  %1004 = phi ptr [ %1001, %999 ], [ %992, %995 ], [ %992, %990 ]
  %1005 = icmp ult ptr %1003, %961
  br i1 %1005, label %1006, label %1012

1006:                                             ; preds = %1002
  %1007 = load i8, ptr %1004, align 1
  %1008 = load i8, ptr %1003, align 1
  %1009 = icmp eq i8 %1007, %1008
  %1010 = zext i1 %1009 to i32
  %1011 = getelementptr i8, ptr %1003, i32 %1010
  br label %1012

1012:                                             ; preds = %1006, %1002
  %1013 = phi ptr [ %1003, %1002 ], [ %1011, %1006 ]
  %1014 = ptrtoint ptr %1013 to i32
  %1015 = ptrtoint ptr %954 to i32
  %1016 = sub i32 %1014, %1015
  br label %1017

1017:                                             ; preds = %1012, %983, %969
  %1018 = phi i32 [ %1016, %1012 ], [ %971, %969 ], [ %989, %983 ]
  %1019 = getelementptr i8, ptr %955, i32 %1018
  %1020 = icmp eq ptr %1019, %953
  br i1 %1020, label %1021, label %1079

1021:                                             ; preds = %1017
  %1022 = getelementptr i8, ptr %954, i32 %1018
  %1023 = icmp ugt ptr %57, %1022
  br i1 %1023, label %1024, label %1050

1024:                                             ; preds = %1021
  %1025 = load i32, ptr %39, align 1
  %1026 = load i32, ptr %1022, align 1
  %1027 = xor i32 %1026, %1025
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1032, label %1029

1029:                                             ; preds = %1024
  %1030 = tail call i32 @llvm.cttz.i32(i32 %1027, i1 true) #4, !range !8
  %1031 = lshr i32 %1030, 3
  br label %1076

1032:                                             ; preds = %1038, %1024
  %1033 = phi ptr [ %1036, %1038 ], [ %1022, %1024 ]
  %1034 = phi ptr [ %1035, %1038 ], [ %39, %1024 ]
  %1035 = getelementptr i8, ptr %1034, i32 4
  %1036 = getelementptr i8, ptr %1033, i32 4
  %1037 = icmp ult ptr %1036, %57
  br i1 %1037, label %1038, label %1050

1038:                                             ; preds = %1032
  %1039 = load i32, ptr %1035, align 1
  %1040 = load i32, ptr %1036, align 1
  %1041 = xor i32 %1040, %1039
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1032, label %1043

1043:                                             ; preds = %1038
  %1044 = tail call i32 @llvm.cttz.i32(i32 %1041, i1 true) #4, !range !8
  %1045 = lshr i32 %1044, 3
  %1046 = getelementptr i8, ptr %1036, i32 %1045
  %1047 = ptrtoint ptr %1046 to i32
  %1048 = ptrtoint ptr %1022 to i32
  %1049 = sub i32 %1047, %1048
  br label %1076

1050:                                             ; preds = %1032, %1021
  %1051 = phi ptr [ %1022, %1021 ], [ %1036, %1032 ]
  %1052 = phi ptr [ %39, %1021 ], [ %1035, %1032 ]
  %1053 = icmp ult ptr %1051, %58
  br i1 %1053, label %1054, label %1061

1054:                                             ; preds = %1050
  %1055 = load i16, ptr %1052, align 1
  %1056 = load i16, ptr %1051, align 1
  %1057 = icmp eq i16 %1055, %1056
  br i1 %1057, label %1058, label %1061

1058:                                             ; preds = %1054
  %1059 = getelementptr i8, ptr %1051, i32 2
  %1060 = getelementptr i8, ptr %1052, i32 2
  br label %1061

1061:                                             ; preds = %1058, %1054, %1050
  %1062 = phi ptr [ %1059, %1058 ], [ %1051, %1054 ], [ %1051, %1050 ]
  %1063 = phi ptr [ %1060, %1058 ], [ %1052, %1054 ], [ %1052, %1050 ]
  %1064 = icmp ult ptr %1062, %16
  br i1 %1064, label %1065, label %1071

1065:                                             ; preds = %1061
  %1066 = load i8, ptr %1063, align 1
  %1067 = load i8, ptr %1062, align 1
  %1068 = icmp eq i8 %1066, %1067
  %1069 = zext i1 %1068 to i32
  %1070 = getelementptr i8, ptr %1062, i32 %1069
  br label %1071

1071:                                             ; preds = %1065, %1061
  %1072 = phi ptr [ %1062, %1061 ], [ %1070, %1065 ]
  %1073 = ptrtoint ptr %1072 to i32
  %1074 = ptrtoint ptr %1022 to i32
  %1075 = sub i32 %1073, %1074
  br label %1076

1076:                                             ; preds = %1071, %1043, %1029
  %1077 = phi i32 [ %1075, %1071 ], [ %1031, %1029 ], [ %1049, %1043 ]
  %1078 = add i32 %1077, %1018
  br label %1079

1079:                                             ; preds = %1076, %1017
  %1080 = phi i32 [ %1078, %1076 ], [ %1018, %1017 ]
  %1081 = add i32 %1080, 4
  %1082 = ptrtoint ptr %949 to i32
  %1083 = ptrtoint ptr %892 to i32
  %1084 = sub i32 %1082, %1083
  %1085 = add i32 %1080, 1
  %1086 = getelementptr i8, ptr %892, i32 %1084
  %1087 = icmp ugt ptr %1086, %59
  %1088 = load ptr, ptr %60, align 4
  br i1 %1087, label %1110, label %1089

1089:                                             ; preds = %1079
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1088, ptr noundef align 1 dereferenceable(16) %892, i32 16, i1 false) #4
  %1090 = icmp ugt i32 %1084, 16
  %1091 = load ptr, ptr %60, align 4
  br i1 %1090, label %1094, label %1092

1092:                                             ; preds = %1089
  %1093 = getelementptr i8, ptr %1091, i32 %1084
  store ptr %1093, ptr %60, align 4
  br label %1153

1094:                                             ; preds = %1089
  %1095 = getelementptr i8, ptr %1091, i32 16
  %1096 = getelementptr i8, ptr %892, i32 16
  %1097 = add i32 %1084, -16
  %1098 = getelementptr i8, ptr %1091, i32 %1084
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1095, ptr noundef align 1 dereferenceable(16) %1096, i32 16, i1 false) #4
  %1099 = icmp slt i32 %1097, 17
  br i1 %1099, label %1142, label %1100

1100:                                             ; preds = %1094
  %1101 = getelementptr i8, ptr %1091, i32 32
  br label %1102

1102:                                             ; preds = %1102, %1100
  %1103 = phi ptr [ %1096, %1100 ], [ %1107, %1102 ]
  %1104 = phi ptr [ %1101, %1100 ], [ %1108, %1102 ]
  %1105 = getelementptr i8, ptr %1103, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1104, ptr noundef align 1 dereferenceable(16) %1105, i32 16, i1 false) #4
  %1106 = getelementptr i8, ptr %1104, i32 16
  %1107 = getelementptr i8, ptr %1103, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1106, ptr noundef align 1 dereferenceable(16) %1107, i32 16, i1 false) #4
  %1108 = getelementptr i8, ptr %1104, i32 32
  %1109 = icmp ult ptr %1108, %1098
  br i1 %1109, label %1102, label %1142

1110:                                             ; preds = %1079
  %1111 = ptrtoint ptr %1086 to i32
  %1112 = icmp ult ptr %59, %892
  br i1 %1112, label %1127, label %1113

1113:                                             ; preds = %1110
  %1114 = sub i32 %61, %1083
  %1115 = getelementptr i8, ptr %1088, i32 %1114
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1088, ptr noundef align 1 dereferenceable(16) %892, i32 16, i1 false) #4
  %1116 = icmp slt i32 %1114, 17
  br i1 %1116, label %1127, label %1117

1117:                                             ; preds = %1113
  %1118 = getelementptr i8, ptr %1088, i32 16
  br label %1119

1119:                                             ; preds = %1119, %1117
  %1120 = phi ptr [ %892, %1117 ], [ %1124, %1119 ]
  %1121 = phi ptr [ %1118, %1117 ], [ %1125, %1119 ]
  %1122 = getelementptr i8, ptr %1120, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1121, ptr noundef align 1 dereferenceable(16) %1122, i32 16, i1 false) #4
  %1123 = getelementptr i8, ptr %1121, i32 16
  %1124 = getelementptr i8, ptr %1120, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1123, ptr noundef align 1 dereferenceable(16) %1124, i32 16, i1 false) #4
  %1125 = getelementptr i8, ptr %1121, i32 32
  %1126 = icmp ult ptr %1125, %1115
  br i1 %1126, label %1119, label %1127

1127:                                             ; preds = %1119, %1113, %1110
  %1128 = phi ptr [ %59, %1113 ], [ %892, %1110 ], [ %59, %1119 ]
  %1129 = phi ptr [ %1115, %1113 ], [ %1088, %1110 ], [ %1115, %1119 ]
  %1130 = icmp ult ptr %1128, %1086
  br i1 %1130, label %1131, label %1142

1131:                                             ; preds = %1127
  %1132 = ptrtoint ptr %1128 to i32
  %1133 = sub i32 %1111, %1132
  %1134 = getelementptr i8, ptr %1128, i32 %1133
  br label %1135

1135:                                             ; preds = %1135, %1131
  %1136 = phi ptr [ %1140, %1135 ], [ %1129, %1131 ]
  %1137 = phi ptr [ %1138, %1135 ], [ %1128, %1131 ]
  %1138 = getelementptr i8, ptr %1137, i32 1
  %1139 = load i8, ptr %1137, align 1
  %1140 = getelementptr i8, ptr %1136, i32 1
  store i8 %1139, ptr %1136, align 1
  %1141 = icmp eq ptr %1138, %1134
  br i1 %1141, label %1142, label %1135

1142:                                             ; preds = %1135, %1127, %1102, %1094
  %1143 = load ptr, ptr %60, align 4
  %1144 = getelementptr i8, ptr %1143, i32 %1084
  store ptr %1144, ptr %60, align 4
  %1145 = icmp ugt i32 %1084, 65535
  br i1 %1145, label %1146, label %1153

1146:                                             ; preds = %1142
  store i32 1, ptr %62, align 4
  %1147 = load ptr, ptr %63, align 4
  %1148 = load ptr, ptr %1, align 4
  %1149 = ptrtoint ptr %1147 to i32
  %1150 = ptrtoint ptr %1148 to i32
  %1151 = sub i32 %1149, %1150
  %1152 = ashr exact i32 %1151, 3
  store i32 %1152, ptr %64, align 4
  br label %1153

1153:                                             ; preds = %1146, %1142, %1092
  %1154 = trunc i32 %1084 to i16
  %1155 = load ptr, ptr %63, align 4
  %1156 = getelementptr inbounds %struct.seqDef_s, ptr %1155, i32 0, i32 1
  store i16 %1154, ptr %1156, align 4
  %1157 = load ptr, ptr %63, align 4
  store i32 1, ptr %1157, align 4
  %1158 = icmp ugt i32 %1085, 65535
  br i1 %1158, label %1161, label %1159

1159:                                             ; preds = %1153
  %1160 = load ptr, ptr %63, align 4
  br label %1834

1161:                                             ; preds = %1153
  store i32 2, ptr %62, align 4
  %1162 = load ptr, ptr %63, align 4
  %1163 = load ptr, ptr %1, align 4
  %1164 = ptrtoint ptr %1162 to i32
  %1165 = ptrtoint ptr %1163 to i32
  %1166 = sub i32 %1164, %1165
  %1167 = ashr exact i32 %1166, 3
  store i32 %1167, ptr %64, align 4
  br label %1834

1168:                                             ; preds = %947, %920
  %1169 = icmp ugt i32 %932, %35
  br i1 %1169, label %1170, label %1417

1170:                                             ; preds = %1168
  %1171 = load i64, ptr %935, align 1
  %1172 = load i64, ptr %891, align 1
  %1173 = icmp eq i64 %1171, %1172
  br i1 %1173, label %1174, label %1417

1174:                                             ; preds = %1170
  %1175 = select i1 %933, ptr %43, ptr %16
  %1176 = select i1 %933, ptr %42, ptr %39
  %1177 = getelementptr i8, ptr %891, i32 8
  %1178 = getelementptr i8, ptr %935, i32 8
  %1179 = ptrtoint ptr %1175 to i32
  %1180 = ptrtoint ptr %1178 to i32
  %1181 = sub i32 %1179, %1180
  %1182 = getelementptr i8, ptr %1177, i32 %1181
  %1183 = icmp ult ptr %1182, %16
  %1184 = select i1 %1183, ptr %1182, ptr %16
  %1185 = getelementptr i8, ptr %1184, i32 -3
  %1186 = icmp ugt ptr %1185, %1177
  br i1 %1186, label %1187, label %1213

1187:                                             ; preds = %1174
  %1188 = load i32, ptr %1178, align 1
  %1189 = load i32, ptr %1177, align 1
  %1190 = xor i32 %1189, %1188
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1195, label %1192

1192:                                             ; preds = %1187
  %1193 = tail call i32 @llvm.cttz.i32(i32 %1190, i1 true) #4, !range !8
  %1194 = lshr i32 %1193, 3
  br label %1240

1195:                                             ; preds = %1201, %1187
  %1196 = phi ptr [ %1199, %1201 ], [ %1177, %1187 ]
  %1197 = phi ptr [ %1198, %1201 ], [ %1178, %1187 ]
  %1198 = getelementptr i8, ptr %1197, i32 4
  %1199 = getelementptr i8, ptr %1196, i32 4
  %1200 = icmp ult ptr %1199, %1185
  br i1 %1200, label %1201, label %1213

1201:                                             ; preds = %1195
  %1202 = load i32, ptr %1198, align 1
  %1203 = load i32, ptr %1199, align 1
  %1204 = xor i32 %1203, %1202
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1195, label %1206

1206:                                             ; preds = %1201
  %1207 = tail call i32 @llvm.cttz.i32(i32 %1204, i1 true) #4, !range !8
  %1208 = lshr i32 %1207, 3
  %1209 = getelementptr i8, ptr %1199, i32 %1208
  %1210 = ptrtoint ptr %1209 to i32
  %1211 = ptrtoint ptr %1177 to i32
  %1212 = sub i32 %1210, %1211
  br label %1240

1213:                                             ; preds = %1195, %1174
  %1214 = phi ptr [ %1177, %1174 ], [ %1199, %1195 ]
  %1215 = phi ptr [ %1178, %1174 ], [ %1198, %1195 ]
  %1216 = getelementptr i8, ptr %1184, i32 -1
  %1217 = icmp ult ptr %1214, %1216
  br i1 %1217, label %1218, label %1225

1218:                                             ; preds = %1213
  %1219 = load i16, ptr %1215, align 1
  %1220 = load i16, ptr %1214, align 1
  %1221 = icmp eq i16 %1219, %1220
  br i1 %1221, label %1222, label %1225

1222:                                             ; preds = %1218
  %1223 = getelementptr i8, ptr %1214, i32 2
  %1224 = getelementptr i8, ptr %1215, i32 2
  br label %1225

1225:                                             ; preds = %1222, %1218, %1213
  %1226 = phi ptr [ %1223, %1222 ], [ %1214, %1218 ], [ %1214, %1213 ]
  %1227 = phi ptr [ %1224, %1222 ], [ %1215, %1218 ], [ %1215, %1213 ]
  %1228 = icmp ult ptr %1226, %1184
  br i1 %1228, label %1229, label %1235

1229:                                             ; preds = %1225
  %1230 = load i8, ptr %1227, align 1
  %1231 = load i8, ptr %1226, align 1
  %1232 = icmp eq i8 %1230, %1231
  %1233 = zext i1 %1232 to i32
  %1234 = getelementptr i8, ptr %1226, i32 %1233
  br label %1235

1235:                                             ; preds = %1229, %1225
  %1236 = phi ptr [ %1226, %1225 ], [ %1234, %1229 ]
  %1237 = ptrtoint ptr %1236 to i32
  %1238 = ptrtoint ptr %1177 to i32
  %1239 = sub i32 %1237, %1238
  br label %1240

1240:                                             ; preds = %1235, %1206, %1192
  %1241 = phi i32 [ %1239, %1235 ], [ %1194, %1192 ], [ %1212, %1206 ]
  %1242 = getelementptr i8, ptr %1178, i32 %1241
  %1243 = icmp eq ptr %1242, %1175
  br i1 %1243, label %1244, label %1302

1244:                                             ; preds = %1240
  %1245 = getelementptr i8, ptr %1177, i32 %1241
  %1246 = icmp ugt ptr %57, %1245
  br i1 %1246, label %1247, label %1273

1247:                                             ; preds = %1244
  %1248 = load i32, ptr %39, align 1
  %1249 = load i32, ptr %1245, align 1
  %1250 = xor i32 %1249, %1248
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1255, label %1252

1252:                                             ; preds = %1247
  %1253 = tail call i32 @llvm.cttz.i32(i32 %1250, i1 true) #4, !range !8
  %1254 = lshr i32 %1253, 3
  br label %1299

1255:                                             ; preds = %1261, %1247
  %1256 = phi ptr [ %1259, %1261 ], [ %1245, %1247 ]
  %1257 = phi ptr [ %1258, %1261 ], [ %39, %1247 ]
  %1258 = getelementptr i8, ptr %1257, i32 4
  %1259 = getelementptr i8, ptr %1256, i32 4
  %1260 = icmp ult ptr %1259, %57
  br i1 %1260, label %1261, label %1273

1261:                                             ; preds = %1255
  %1262 = load i32, ptr %1258, align 1
  %1263 = load i32, ptr %1259, align 1
  %1264 = xor i32 %1263, %1262
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1255, label %1266

1266:                                             ; preds = %1261
  %1267 = tail call i32 @llvm.cttz.i32(i32 %1264, i1 true) #4, !range !8
  %1268 = lshr i32 %1267, 3
  %1269 = getelementptr i8, ptr %1259, i32 %1268
  %1270 = ptrtoint ptr %1269 to i32
  %1271 = ptrtoint ptr %1245 to i32
  %1272 = sub i32 %1270, %1271
  br label %1299

1273:                                             ; preds = %1255, %1244
  %1274 = phi ptr [ %1245, %1244 ], [ %1259, %1255 ]
  %1275 = phi ptr [ %39, %1244 ], [ %1258, %1255 ]
  %1276 = icmp ult ptr %1274, %58
  br i1 %1276, label %1277, label %1284

1277:                                             ; preds = %1273
  %1278 = load i16, ptr %1275, align 1
  %1279 = load i16, ptr %1274, align 1
  %1280 = icmp eq i16 %1278, %1279
  br i1 %1280, label %1281, label %1284

1281:                                             ; preds = %1277
  %1282 = getelementptr i8, ptr %1274, i32 2
  %1283 = getelementptr i8, ptr %1275, i32 2
  br label %1284

1284:                                             ; preds = %1281, %1277, %1273
  %1285 = phi ptr [ %1282, %1281 ], [ %1274, %1277 ], [ %1274, %1273 ]
  %1286 = phi ptr [ %1283, %1281 ], [ %1275, %1277 ], [ %1275, %1273 ]
  %1287 = icmp ult ptr %1285, %16
  br i1 %1287, label %1288, label %1294

1288:                                             ; preds = %1284
  %1289 = load i8, ptr %1286, align 1
  %1290 = load i8, ptr %1285, align 1
  %1291 = icmp eq i8 %1289, %1290
  %1292 = zext i1 %1291 to i32
  %1293 = getelementptr i8, ptr %1285, i32 %1292
  br label %1294

1294:                                             ; preds = %1288, %1284
  %1295 = phi ptr [ %1285, %1284 ], [ %1293, %1288 ]
  %1296 = ptrtoint ptr %1295 to i32
  %1297 = ptrtoint ptr %1245 to i32
  %1298 = sub i32 %1296, %1297
  br label %1299

1299:                                             ; preds = %1294, %1266, %1252
  %1300 = phi i32 [ %1298, %1294 ], [ %1254, %1252 ], [ %1272, %1266 ]
  %1301 = add i32 %1300, %1241
  br label %1302

1302:                                             ; preds = %1299, %1240
  %1303 = phi i32 [ %1301, %1299 ], [ %1241, %1240 ]
  %1304 = add i32 %1303, 8
  %1305 = sub i32 %937, %932
  %1306 = icmp ugt ptr %891, %892
  %1307 = icmp ugt ptr %935, %1176
  %1308 = and i1 %1307, %1306
  br i1 %1308, label %1309, label %1327

1309:                                             ; preds = %1318, %1302
  %1310 = phi ptr [ %1313, %1318 ], [ %891, %1302 ]
  %1311 = phi i32 [ %1319, %1318 ], [ %1304, %1302 ]
  %1312 = phi ptr [ %1315, %1318 ], [ %935, %1302 ]
  %1313 = getelementptr i8, ptr %1310, i32 -1
  %1314 = load i8, ptr %1313, align 1
  %1315 = getelementptr i8, ptr %1312, i32 -1
  %1316 = load i8, ptr %1315, align 1
  %1317 = icmp eq i8 %1314, %1316
  br i1 %1317, label %1318, label %1323

1318:                                             ; preds = %1309
  %1319 = add i32 %1311, 1
  %1320 = icmp ugt ptr %1313, %892
  %1321 = icmp ugt ptr %1315, %1176
  %1322 = and i1 %1321, %1320
  br i1 %1322, label %1309, label %1323

1323:                                             ; preds = %1318, %1309
  %1324 = phi i32 [ %1311, %1309 ], [ %1319, %1318 ]
  %1325 = phi ptr [ %1310, %1309 ], [ %1313, %1318 ]
  %1326 = ptrtoint ptr %1325 to i32
  br label %1327

1327:                                             ; preds = %1323, %1302
  %1328 = phi i32 [ %1326, %1323 ], [ %936, %1302 ]
  %1329 = phi i32 [ %1324, %1323 ], [ %1304, %1302 ]
  %1330 = phi ptr [ %1325, %1323 ], [ %891, %1302 ]
  %1331 = ptrtoint ptr %892 to i32
  %1332 = sub i32 %1328, %1331
  %1333 = add i32 %1329, -3
  %1334 = getelementptr i8, ptr %892, i32 %1332
  %1335 = icmp ugt ptr %1334, %59
  %1336 = load ptr, ptr %60, align 4
  br i1 %1335, label %1358, label %1337

1337:                                             ; preds = %1327
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1336, ptr noundef align 1 dereferenceable(16) %892, i32 16, i1 false) #4
  %1338 = icmp ugt i32 %1332, 16
  %1339 = load ptr, ptr %60, align 4
  br i1 %1338, label %1342, label %1340

1340:                                             ; preds = %1337
  %1341 = getelementptr i8, ptr %1339, i32 %1332
  store ptr %1341, ptr %60, align 4
  br label %1401

1342:                                             ; preds = %1337
  %1343 = getelementptr i8, ptr %1339, i32 16
  %1344 = getelementptr i8, ptr %892, i32 16
  %1345 = add i32 %1332, -16
  %1346 = getelementptr i8, ptr %1339, i32 %1332
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1343, ptr noundef align 1 dereferenceable(16) %1344, i32 16, i1 false) #4
  %1347 = icmp slt i32 %1345, 17
  br i1 %1347, label %1390, label %1348

1348:                                             ; preds = %1342
  %1349 = getelementptr i8, ptr %1339, i32 32
  br label %1350

1350:                                             ; preds = %1350, %1348
  %1351 = phi ptr [ %1344, %1348 ], [ %1355, %1350 ]
  %1352 = phi ptr [ %1349, %1348 ], [ %1356, %1350 ]
  %1353 = getelementptr i8, ptr %1351, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1352, ptr noundef align 1 dereferenceable(16) %1353, i32 16, i1 false) #4
  %1354 = getelementptr i8, ptr %1352, i32 16
  %1355 = getelementptr i8, ptr %1351, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1354, ptr noundef align 1 dereferenceable(16) %1355, i32 16, i1 false) #4
  %1356 = getelementptr i8, ptr %1352, i32 32
  %1357 = icmp ult ptr %1356, %1346
  br i1 %1357, label %1350, label %1390

1358:                                             ; preds = %1327
  %1359 = ptrtoint ptr %1334 to i32
  %1360 = icmp ult ptr %59, %892
  br i1 %1360, label %1375, label %1361

1361:                                             ; preds = %1358
  %1362 = sub i32 %61, %1331
  %1363 = getelementptr i8, ptr %1336, i32 %1362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1336, ptr noundef align 1 dereferenceable(16) %892, i32 16, i1 false) #4
  %1364 = icmp slt i32 %1362, 17
  br i1 %1364, label %1375, label %1365

1365:                                             ; preds = %1361
  %1366 = getelementptr i8, ptr %1336, i32 16
  br label %1367

1367:                                             ; preds = %1367, %1365
  %1368 = phi ptr [ %892, %1365 ], [ %1372, %1367 ]
  %1369 = phi ptr [ %1366, %1365 ], [ %1373, %1367 ]
  %1370 = getelementptr i8, ptr %1368, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1369, ptr noundef align 1 dereferenceable(16) %1370, i32 16, i1 false) #4
  %1371 = getelementptr i8, ptr %1369, i32 16
  %1372 = getelementptr i8, ptr %1368, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1371, ptr noundef align 1 dereferenceable(16) %1372, i32 16, i1 false) #4
  %1373 = getelementptr i8, ptr %1369, i32 32
  %1374 = icmp ult ptr %1373, %1363
  br i1 %1374, label %1367, label %1375

1375:                                             ; preds = %1367, %1361, %1358
  %1376 = phi ptr [ %59, %1361 ], [ %892, %1358 ], [ %59, %1367 ]
  %1377 = phi ptr [ %1363, %1361 ], [ %1336, %1358 ], [ %1363, %1367 ]
  %1378 = icmp ult ptr %1376, %1334
  br i1 %1378, label %1379, label %1390

1379:                                             ; preds = %1375
  %1380 = ptrtoint ptr %1376 to i32
  %1381 = sub i32 %1359, %1380
  %1382 = getelementptr i8, ptr %1376, i32 %1381
  br label %1383

1383:                                             ; preds = %1383, %1379
  %1384 = phi ptr [ %1388, %1383 ], [ %1377, %1379 ]
  %1385 = phi ptr [ %1386, %1383 ], [ %1376, %1379 ]
  %1386 = getelementptr i8, ptr %1385, i32 1
  %1387 = load i8, ptr %1385, align 1
  %1388 = getelementptr i8, ptr %1384, i32 1
  store i8 %1387, ptr %1384, align 1
  %1389 = icmp eq ptr %1386, %1382
  br i1 %1389, label %1390, label %1383

1390:                                             ; preds = %1383, %1375, %1350, %1342
  %1391 = load ptr, ptr %60, align 4
  %1392 = getelementptr i8, ptr %1391, i32 %1332
  store ptr %1392, ptr %60, align 4
  %1393 = icmp ugt i32 %1332, 65535
  br i1 %1393, label %1394, label %1401

1394:                                             ; preds = %1390
  store i32 1, ptr %62, align 4
  %1395 = load ptr, ptr %63, align 4
  %1396 = load ptr, ptr %1, align 4
  %1397 = ptrtoint ptr %1395 to i32
  %1398 = ptrtoint ptr %1396 to i32
  %1399 = sub i32 %1397, %1398
  %1400 = ashr exact i32 %1399, 3
  store i32 %1400, ptr %64, align 4
  br label %1401

1401:                                             ; preds = %1394, %1390, %1340
  %1402 = trunc i32 %1332 to i16
  %1403 = load ptr, ptr %63, align 4
  %1404 = getelementptr inbounds %struct.seqDef_s, ptr %1403, i32 0, i32 1
  store i16 %1402, ptr %1404, align 4
  %1405 = add i32 %1305, 3
  %1406 = load ptr, ptr %63, align 4
  store i32 %1405, ptr %1406, align 4
  %1407 = icmp ugt i32 %1333, 65535
  br i1 %1407, label %1410, label %1408

1408:                                             ; preds = %1401
  %1409 = load ptr, ptr %63, align 4
  br label %1834

1410:                                             ; preds = %1401
  store i32 2, ptr %62, align 4
  %1411 = load ptr, ptr %63, align 4
  %1412 = load ptr, ptr %1, align 4
  %1413 = ptrtoint ptr %1411 to i32
  %1414 = ptrtoint ptr %1412 to i32
  %1415 = sub i32 %1413, %1414
  %1416 = ashr exact i32 %1415, 3
  store i32 %1416, ptr %64, align 4
  br label %1834

1417:                                             ; preds = %1170, %1168
  %1418 = icmp ugt i32 %924, %35
  br i1 %1418, label %1419, label %1828

1419:                                             ; preds = %1417
  %1420 = load i32, ptr %927, align 1
  %1421 = load i32, ptr %891, align 1
  %1422 = icmp eq i32 %1420, %1421
  br i1 %1422, label %1423, label %1828

1423:                                             ; preds = %1419
  %1424 = getelementptr i8, ptr %891, i32 1
  %1425 = load i64, ptr %1424, align 1
  %1426 = mul i64 %1425, -3523014627327384477
  %1427 = lshr i64 %1426, %55
  %1428 = trunc i64 %1427 to i32
  %1429 = getelementptr i32, ptr %9, i32 %1428
  %1430 = load i32, ptr %1429, align 4
  %1431 = icmp ult i32 %1430, %38
  %1432 = select i1 %1431, ptr %41, ptr %19
  %1433 = getelementptr i8, ptr %1432, i32 %1430
  store i32 %938, ptr %1429, align 4
  %1434 = icmp ugt i32 %1430, %35
  br i1 %1434, label %1435, label %1588

1435:                                             ; preds = %1423
  %1436 = load i64, ptr %1433, align 1
  %1437 = load i64, ptr %1424, align 1
  %1438 = icmp eq i64 %1436, %1437
  br i1 %1438, label %1439, label %1588

1439:                                             ; preds = %1435
  %1440 = select i1 %1431, ptr %43, ptr %16
  %1441 = select i1 %1431, ptr %42, ptr %39
  %1442 = getelementptr i8, ptr %891, i32 9
  %1443 = getelementptr i8, ptr %1433, i32 8
  %1444 = ptrtoint ptr %1440 to i32
  %1445 = ptrtoint ptr %1443 to i32
  %1446 = sub i32 %1444, %1445
  %1447 = getelementptr i8, ptr %1442, i32 %1446
  %1448 = icmp ult ptr %1447, %16
  %1449 = select i1 %1448, ptr %1447, ptr %16
  %1450 = getelementptr i8, ptr %1449, i32 -3
  %1451 = icmp ugt ptr %1450, %1442
  br i1 %1451, label %1452, label %1478

1452:                                             ; preds = %1439
  %1453 = load i32, ptr %1443, align 1
  %1454 = load i32, ptr %1442, align 1
  %1455 = xor i32 %1454, %1453
  %1456 = icmp eq i32 %1455, 0
  br i1 %1456, label %1460, label %1457

1457:                                             ; preds = %1452
  %1458 = tail call i32 @llvm.cttz.i32(i32 %1455, i1 true) #4, !range !8
  %1459 = lshr i32 %1458, 3
  br label %1505

1460:                                             ; preds = %1466, %1452
  %1461 = phi ptr [ %1464, %1466 ], [ %1442, %1452 ]
  %1462 = phi ptr [ %1463, %1466 ], [ %1443, %1452 ]
  %1463 = getelementptr i8, ptr %1462, i32 4
  %1464 = getelementptr i8, ptr %1461, i32 4
  %1465 = icmp ult ptr %1464, %1450
  br i1 %1465, label %1466, label %1478

1466:                                             ; preds = %1460
  %1467 = load i32, ptr %1463, align 1
  %1468 = load i32, ptr %1464, align 1
  %1469 = xor i32 %1468, %1467
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1460, label %1471

1471:                                             ; preds = %1466
  %1472 = tail call i32 @llvm.cttz.i32(i32 %1469, i1 true) #4, !range !8
  %1473 = lshr i32 %1472, 3
  %1474 = getelementptr i8, ptr %1464, i32 %1473
  %1475 = ptrtoint ptr %1474 to i32
  %1476 = ptrtoint ptr %1442 to i32
  %1477 = sub i32 %1475, %1476
  br label %1505

1478:                                             ; preds = %1460, %1439
  %1479 = phi ptr [ %1442, %1439 ], [ %1464, %1460 ]
  %1480 = phi ptr [ %1443, %1439 ], [ %1463, %1460 ]
  %1481 = getelementptr i8, ptr %1449, i32 -1
  %1482 = icmp ult ptr %1479, %1481
  br i1 %1482, label %1483, label %1490

1483:                                             ; preds = %1478
  %1484 = load i16, ptr %1480, align 1
  %1485 = load i16, ptr %1479, align 1
  %1486 = icmp eq i16 %1484, %1485
  br i1 %1486, label %1487, label %1490

1487:                                             ; preds = %1483
  %1488 = getelementptr i8, ptr %1479, i32 2
  %1489 = getelementptr i8, ptr %1480, i32 2
  br label %1490

1490:                                             ; preds = %1487, %1483, %1478
  %1491 = phi ptr [ %1488, %1487 ], [ %1479, %1483 ], [ %1479, %1478 ]
  %1492 = phi ptr [ %1489, %1487 ], [ %1480, %1483 ], [ %1480, %1478 ]
  %1493 = icmp ult ptr %1491, %1449
  br i1 %1493, label %1494, label %1500

1494:                                             ; preds = %1490
  %1495 = load i8, ptr %1492, align 1
  %1496 = load i8, ptr %1491, align 1
  %1497 = icmp eq i8 %1495, %1496
  %1498 = zext i1 %1497 to i32
  %1499 = getelementptr i8, ptr %1491, i32 %1498
  br label %1500

1500:                                             ; preds = %1494, %1490
  %1501 = phi ptr [ %1491, %1490 ], [ %1499, %1494 ]
  %1502 = ptrtoint ptr %1501 to i32
  %1503 = ptrtoint ptr %1442 to i32
  %1504 = sub i32 %1502, %1503
  br label %1505

1505:                                             ; preds = %1500, %1471, %1457
  %1506 = phi i32 [ %1504, %1500 ], [ %1459, %1457 ], [ %1477, %1471 ]
  %1507 = getelementptr i8, ptr %1443, i32 %1506
  %1508 = icmp eq ptr %1507, %1440
  br i1 %1508, label %1509, label %1567

1509:                                             ; preds = %1505
  %1510 = getelementptr i8, ptr %1442, i32 %1506
  %1511 = icmp ugt ptr %57, %1510
  br i1 %1511, label %1512, label %1538

1512:                                             ; preds = %1509
  %1513 = load i32, ptr %39, align 1
  %1514 = load i32, ptr %1510, align 1
  %1515 = xor i32 %1514, %1513
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1520, label %1517

1517:                                             ; preds = %1512
  %1518 = tail call i32 @llvm.cttz.i32(i32 %1515, i1 true) #4, !range !8
  %1519 = lshr i32 %1518, 3
  br label %1564

1520:                                             ; preds = %1526, %1512
  %1521 = phi ptr [ %1524, %1526 ], [ %1510, %1512 ]
  %1522 = phi ptr [ %1523, %1526 ], [ %39, %1512 ]
  %1523 = getelementptr i8, ptr %1522, i32 4
  %1524 = getelementptr i8, ptr %1521, i32 4
  %1525 = icmp ult ptr %1524, %57
  br i1 %1525, label %1526, label %1538

1526:                                             ; preds = %1520
  %1527 = load i32, ptr %1523, align 1
  %1528 = load i32, ptr %1524, align 1
  %1529 = xor i32 %1528, %1527
  %1530 = icmp eq i32 %1529, 0
  br i1 %1530, label %1520, label %1531

1531:                                             ; preds = %1526
  %1532 = tail call i32 @llvm.cttz.i32(i32 %1529, i1 true) #4, !range !8
  %1533 = lshr i32 %1532, 3
  %1534 = getelementptr i8, ptr %1524, i32 %1533
  %1535 = ptrtoint ptr %1534 to i32
  %1536 = ptrtoint ptr %1510 to i32
  %1537 = sub i32 %1535, %1536
  br label %1564

1538:                                             ; preds = %1520, %1509
  %1539 = phi ptr [ %1510, %1509 ], [ %1524, %1520 ]
  %1540 = phi ptr [ %39, %1509 ], [ %1523, %1520 ]
  %1541 = icmp ult ptr %1539, %58
  br i1 %1541, label %1542, label %1549

1542:                                             ; preds = %1538
  %1543 = load i16, ptr %1540, align 1
  %1544 = load i16, ptr %1539, align 1
  %1545 = icmp eq i16 %1543, %1544
  br i1 %1545, label %1546, label %1549

1546:                                             ; preds = %1542
  %1547 = getelementptr i8, ptr %1539, i32 2
  %1548 = getelementptr i8, ptr %1540, i32 2
  br label %1549

1549:                                             ; preds = %1546, %1542, %1538
  %1550 = phi ptr [ %1547, %1546 ], [ %1539, %1542 ], [ %1539, %1538 ]
  %1551 = phi ptr [ %1548, %1546 ], [ %1540, %1542 ], [ %1540, %1538 ]
  %1552 = icmp ult ptr %1550, %16
  br i1 %1552, label %1553, label %1559

1553:                                             ; preds = %1549
  %1554 = load i8, ptr %1551, align 1
  %1555 = load i8, ptr %1550, align 1
  %1556 = icmp eq i8 %1554, %1555
  %1557 = zext i1 %1556 to i32
  %1558 = getelementptr i8, ptr %1550, i32 %1557
  br label %1559

1559:                                             ; preds = %1553, %1549
  %1560 = phi ptr [ %1550, %1549 ], [ %1558, %1553 ]
  %1561 = ptrtoint ptr %1560 to i32
  %1562 = ptrtoint ptr %1510 to i32
  %1563 = sub i32 %1561, %1562
  br label %1564

1564:                                             ; preds = %1559, %1531, %1517
  %1565 = phi i32 [ %1563, %1559 ], [ %1519, %1517 ], [ %1537, %1531 ]
  %1566 = add i32 %1565, %1506
  br label %1567

1567:                                             ; preds = %1564, %1505
  %1568 = phi i32 [ %1566, %1564 ], [ %1506, %1505 ]
  %1569 = add i32 %1568, 8
  %1570 = sub i32 %938, %1430
  %1571 = icmp ugt ptr %1424, %892
  %1572 = icmp ugt ptr %1433, %1441
  %1573 = and i1 %1572, %1571
  br i1 %1573, label %1574, label %1737

1574:                                             ; preds = %1583, %1567
  %1575 = phi ptr [ %1578, %1583 ], [ %1424, %1567 ]
  %1576 = phi ptr [ %1580, %1583 ], [ %1433, %1567 ]
  %1577 = phi i32 [ %1584, %1583 ], [ %1569, %1567 ]
  %1578 = getelementptr i8, ptr %1575, i32 -1
  %1579 = load i8, ptr %1578, align 1
  %1580 = getelementptr i8, ptr %1576, i32 -1
  %1581 = load i8, ptr %1580, align 1
  %1582 = icmp eq i8 %1579, %1581
  br i1 %1582, label %1583, label %1737

1583:                                             ; preds = %1574
  %1584 = add i32 %1577, 1
  %1585 = icmp ugt ptr %1578, %892
  %1586 = icmp ugt ptr %1580, %1441
  %1587 = and i1 %1586, %1585
  br i1 %1587, label %1574, label %1737

1588:                                             ; preds = %1435, %1423
  %1589 = select i1 %925, ptr %43, ptr %16
  %1590 = select i1 %925, ptr %42, ptr %39
  %1591 = getelementptr i8, ptr %891, i32 4
  %1592 = getelementptr i8, ptr %927, i32 4
  %1593 = ptrtoint ptr %1589 to i32
  %1594 = ptrtoint ptr %1592 to i32
  %1595 = sub i32 %1593, %1594
  %1596 = getelementptr i8, ptr %1591, i32 %1595
  %1597 = icmp ult ptr %1596, %16
  %1598 = select i1 %1597, ptr %1596, ptr %16
  %1599 = getelementptr i8, ptr %1598, i32 -3
  %1600 = icmp ugt ptr %1599, %1591
  br i1 %1600, label %1601, label %1627

1601:                                             ; preds = %1588
  %1602 = load i32, ptr %1592, align 1
  %1603 = load i32, ptr %1591, align 1
  %1604 = xor i32 %1603, %1602
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1609, label %1606

1606:                                             ; preds = %1601
  %1607 = tail call i32 @llvm.cttz.i32(i32 %1604, i1 true) #4, !range !8
  %1608 = lshr i32 %1607, 3
  br label %1654

1609:                                             ; preds = %1615, %1601
  %1610 = phi ptr [ %1613, %1615 ], [ %1591, %1601 ]
  %1611 = phi ptr [ %1612, %1615 ], [ %1592, %1601 ]
  %1612 = getelementptr i8, ptr %1611, i32 4
  %1613 = getelementptr i8, ptr %1610, i32 4
  %1614 = icmp ult ptr %1613, %1599
  br i1 %1614, label %1615, label %1627

1615:                                             ; preds = %1609
  %1616 = load i32, ptr %1612, align 1
  %1617 = load i32, ptr %1613, align 1
  %1618 = xor i32 %1617, %1616
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1609, label %1620

1620:                                             ; preds = %1615
  %1621 = tail call i32 @llvm.cttz.i32(i32 %1618, i1 true) #4, !range !8
  %1622 = lshr i32 %1621, 3
  %1623 = getelementptr i8, ptr %1613, i32 %1622
  %1624 = ptrtoint ptr %1623 to i32
  %1625 = ptrtoint ptr %1591 to i32
  %1626 = sub i32 %1624, %1625
  br label %1654

1627:                                             ; preds = %1609, %1588
  %1628 = phi ptr [ %1591, %1588 ], [ %1613, %1609 ]
  %1629 = phi ptr [ %1592, %1588 ], [ %1612, %1609 ]
  %1630 = getelementptr i8, ptr %1598, i32 -1
  %1631 = icmp ult ptr %1628, %1630
  br i1 %1631, label %1632, label %1639

1632:                                             ; preds = %1627
  %1633 = load i16, ptr %1629, align 1
  %1634 = load i16, ptr %1628, align 1
  %1635 = icmp eq i16 %1633, %1634
  br i1 %1635, label %1636, label %1639

1636:                                             ; preds = %1632
  %1637 = getelementptr i8, ptr %1628, i32 2
  %1638 = getelementptr i8, ptr %1629, i32 2
  br label %1639

1639:                                             ; preds = %1636, %1632, %1627
  %1640 = phi ptr [ %1637, %1636 ], [ %1628, %1632 ], [ %1628, %1627 ]
  %1641 = phi ptr [ %1638, %1636 ], [ %1629, %1632 ], [ %1629, %1627 ]
  %1642 = icmp ult ptr %1640, %1598
  br i1 %1642, label %1643, label %1649

1643:                                             ; preds = %1639
  %1644 = load i8, ptr %1641, align 1
  %1645 = load i8, ptr %1640, align 1
  %1646 = icmp eq i8 %1644, %1645
  %1647 = zext i1 %1646 to i32
  %1648 = getelementptr i8, ptr %1640, i32 %1647
  br label %1649

1649:                                             ; preds = %1643, %1639
  %1650 = phi ptr [ %1640, %1639 ], [ %1648, %1643 ]
  %1651 = ptrtoint ptr %1650 to i32
  %1652 = ptrtoint ptr %1591 to i32
  %1653 = sub i32 %1651, %1652
  br label %1654

1654:                                             ; preds = %1649, %1620, %1606
  %1655 = phi i32 [ %1653, %1649 ], [ %1608, %1606 ], [ %1626, %1620 ]
  %1656 = getelementptr i8, ptr %1592, i32 %1655
  %1657 = icmp eq ptr %1656, %1589
  br i1 %1657, label %1658, label %1716

1658:                                             ; preds = %1654
  %1659 = getelementptr i8, ptr %1591, i32 %1655
  %1660 = icmp ugt ptr %57, %1659
  br i1 %1660, label %1661, label %1687

1661:                                             ; preds = %1658
  %1662 = load i32, ptr %39, align 1
  %1663 = load i32, ptr %1659, align 1
  %1664 = xor i32 %1663, %1662
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1669, label %1666

1666:                                             ; preds = %1661
  %1667 = tail call i32 @llvm.cttz.i32(i32 %1664, i1 true) #4, !range !8
  %1668 = lshr i32 %1667, 3
  br label %1713

1669:                                             ; preds = %1675, %1661
  %1670 = phi ptr [ %1673, %1675 ], [ %1659, %1661 ]
  %1671 = phi ptr [ %1672, %1675 ], [ %39, %1661 ]
  %1672 = getelementptr i8, ptr %1671, i32 4
  %1673 = getelementptr i8, ptr %1670, i32 4
  %1674 = icmp ult ptr %1673, %57
  br i1 %1674, label %1675, label %1687

1675:                                             ; preds = %1669
  %1676 = load i32, ptr %1672, align 1
  %1677 = load i32, ptr %1673, align 1
  %1678 = xor i32 %1677, %1676
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1669, label %1680

1680:                                             ; preds = %1675
  %1681 = tail call i32 @llvm.cttz.i32(i32 %1678, i1 true) #4, !range !8
  %1682 = lshr i32 %1681, 3
  %1683 = getelementptr i8, ptr %1673, i32 %1682
  %1684 = ptrtoint ptr %1683 to i32
  %1685 = ptrtoint ptr %1659 to i32
  %1686 = sub i32 %1684, %1685
  br label %1713

1687:                                             ; preds = %1669, %1658
  %1688 = phi ptr [ %1659, %1658 ], [ %1673, %1669 ]
  %1689 = phi ptr [ %39, %1658 ], [ %1672, %1669 ]
  %1690 = icmp ult ptr %1688, %58
  br i1 %1690, label %1691, label %1698

1691:                                             ; preds = %1687
  %1692 = load i16, ptr %1689, align 1
  %1693 = load i16, ptr %1688, align 1
  %1694 = icmp eq i16 %1692, %1693
  br i1 %1694, label %1695, label %1698

1695:                                             ; preds = %1691
  %1696 = getelementptr i8, ptr %1688, i32 2
  %1697 = getelementptr i8, ptr %1689, i32 2
  br label %1698

1698:                                             ; preds = %1695, %1691, %1687
  %1699 = phi ptr [ %1696, %1695 ], [ %1688, %1691 ], [ %1688, %1687 ]
  %1700 = phi ptr [ %1697, %1695 ], [ %1689, %1691 ], [ %1689, %1687 ]
  %1701 = icmp ult ptr %1699, %16
  br i1 %1701, label %1702, label %1708

1702:                                             ; preds = %1698
  %1703 = load i8, ptr %1700, align 1
  %1704 = load i8, ptr %1699, align 1
  %1705 = icmp eq i8 %1703, %1704
  %1706 = zext i1 %1705 to i32
  %1707 = getelementptr i8, ptr %1699, i32 %1706
  br label %1708

1708:                                             ; preds = %1702, %1698
  %1709 = phi ptr [ %1699, %1698 ], [ %1707, %1702 ]
  %1710 = ptrtoint ptr %1709 to i32
  %1711 = ptrtoint ptr %1659 to i32
  %1712 = sub i32 %1710, %1711
  br label %1713

1713:                                             ; preds = %1708, %1680, %1666
  %1714 = phi i32 [ %1712, %1708 ], [ %1668, %1666 ], [ %1686, %1680 ]
  %1715 = add i32 %1714, %1655
  br label %1716

1716:                                             ; preds = %1713, %1654
  %1717 = phi i32 [ %1715, %1713 ], [ %1655, %1654 ]
  %1718 = add i32 %1717, 4
  %1719 = sub i32 %937, %924
  %1720 = icmp ugt ptr %891, %892
  %1721 = icmp ugt ptr %927, %1590
  %1722 = and i1 %1721, %1720
  br i1 %1722, label %1723, label %1737

1723:                                             ; preds = %1732, %1716
  %1724 = phi ptr [ %1727, %1732 ], [ %891, %1716 ]
  %1725 = phi i32 [ %1733, %1732 ], [ %1718, %1716 ]
  %1726 = phi ptr [ %1729, %1732 ], [ %927, %1716 ]
  %1727 = getelementptr i8, ptr %1724, i32 -1
  %1728 = load i8, ptr %1727, align 1
  %1729 = getelementptr i8, ptr %1726, i32 -1
  %1730 = load i8, ptr %1729, align 1
  %1731 = icmp eq i8 %1728, %1730
  br i1 %1731, label %1732, label %1737

1732:                                             ; preds = %1723
  %1733 = add i32 %1725, 1
  %1734 = icmp ugt ptr %1727, %892
  %1735 = icmp ugt ptr %1729, %1590
  %1736 = and i1 %1735, %1734
  br i1 %1736, label %1723, label %1737

1737:                                             ; preds = %1732, %1723, %1716, %1583, %1574, %1567
  %1738 = phi i32 [ %1569, %1567 ], [ %1718, %1716 ], [ %1584, %1583 ], [ %1577, %1574 ], [ %1733, %1732 ], [ %1725, %1723 ]
  %1739 = phi i32 [ %1570, %1567 ], [ %1719, %1716 ], [ %1570, %1574 ], [ %1570, %1583 ], [ %1719, %1723 ], [ %1719, %1732 ]
  %1740 = phi ptr [ %1424, %1567 ], [ %891, %1716 ], [ %1578, %1583 ], [ %1575, %1574 ], [ %1727, %1732 ], [ %1724, %1723 ]
  %1741 = ptrtoint ptr %1740 to i32
  %1742 = ptrtoint ptr %892 to i32
  %1743 = sub i32 %1741, %1742
  %1744 = add i32 %1738, -3
  %1745 = getelementptr i8, ptr %892, i32 %1743
  %1746 = icmp ugt ptr %1745, %59
  %1747 = load ptr, ptr %60, align 4
  br i1 %1746, label %1769, label %1748

1748:                                             ; preds = %1737
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1747, ptr noundef align 1 dereferenceable(16) %892, i32 16, i1 false) #4
  %1749 = icmp ugt i32 %1743, 16
  %1750 = load ptr, ptr %60, align 4
  br i1 %1749, label %1753, label %1751

1751:                                             ; preds = %1748
  %1752 = getelementptr i8, ptr %1750, i32 %1743
  store ptr %1752, ptr %60, align 4
  br label %1812

1753:                                             ; preds = %1748
  %1754 = getelementptr i8, ptr %1750, i32 16
  %1755 = getelementptr i8, ptr %892, i32 16
  %1756 = add i32 %1743, -16
  %1757 = getelementptr i8, ptr %1750, i32 %1743
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1754, ptr noundef align 1 dereferenceable(16) %1755, i32 16, i1 false) #4
  %1758 = icmp slt i32 %1756, 17
  br i1 %1758, label %1801, label %1759

1759:                                             ; preds = %1753
  %1760 = getelementptr i8, ptr %1750, i32 32
  br label %1761

1761:                                             ; preds = %1761, %1759
  %1762 = phi ptr [ %1755, %1759 ], [ %1766, %1761 ]
  %1763 = phi ptr [ %1760, %1759 ], [ %1767, %1761 ]
  %1764 = getelementptr i8, ptr %1762, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1763, ptr noundef align 1 dereferenceable(16) %1764, i32 16, i1 false) #4
  %1765 = getelementptr i8, ptr %1763, i32 16
  %1766 = getelementptr i8, ptr %1762, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1765, ptr noundef align 1 dereferenceable(16) %1766, i32 16, i1 false) #4
  %1767 = getelementptr i8, ptr %1763, i32 32
  %1768 = icmp ult ptr %1767, %1757
  br i1 %1768, label %1761, label %1801

1769:                                             ; preds = %1737
  %1770 = ptrtoint ptr %1745 to i32
  %1771 = icmp ult ptr %59, %892
  br i1 %1771, label %1786, label %1772

1772:                                             ; preds = %1769
  %1773 = sub i32 %61, %1742
  %1774 = getelementptr i8, ptr %1747, i32 %1773
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1747, ptr noundef align 1 dereferenceable(16) %892, i32 16, i1 false) #4
  %1775 = icmp slt i32 %1773, 17
  br i1 %1775, label %1786, label %1776

1776:                                             ; preds = %1772
  %1777 = getelementptr i8, ptr %1747, i32 16
  br label %1778

1778:                                             ; preds = %1778, %1776
  %1779 = phi ptr [ %892, %1776 ], [ %1783, %1778 ]
  %1780 = phi ptr [ %1777, %1776 ], [ %1784, %1778 ]
  %1781 = getelementptr i8, ptr %1779, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1780, ptr noundef align 1 dereferenceable(16) %1781, i32 16, i1 false) #4
  %1782 = getelementptr i8, ptr %1780, i32 16
  %1783 = getelementptr i8, ptr %1779, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1782, ptr noundef align 1 dereferenceable(16) %1783, i32 16, i1 false) #4
  %1784 = getelementptr i8, ptr %1780, i32 32
  %1785 = icmp ult ptr %1784, %1774
  br i1 %1785, label %1778, label %1786

1786:                                             ; preds = %1778, %1772, %1769
  %1787 = phi ptr [ %59, %1772 ], [ %892, %1769 ], [ %59, %1778 ]
  %1788 = phi ptr [ %1774, %1772 ], [ %1747, %1769 ], [ %1774, %1778 ]
  %1789 = icmp ult ptr %1787, %1745
  br i1 %1789, label %1790, label %1801

1790:                                             ; preds = %1786
  %1791 = ptrtoint ptr %1787 to i32
  %1792 = sub i32 %1770, %1791
  %1793 = getelementptr i8, ptr %1787, i32 %1792
  br label %1794

1794:                                             ; preds = %1794, %1790
  %1795 = phi ptr [ %1799, %1794 ], [ %1788, %1790 ]
  %1796 = phi ptr [ %1797, %1794 ], [ %1787, %1790 ]
  %1797 = getelementptr i8, ptr %1796, i32 1
  %1798 = load i8, ptr %1796, align 1
  %1799 = getelementptr i8, ptr %1795, i32 1
  store i8 %1798, ptr %1795, align 1
  %1800 = icmp eq ptr %1797, %1793
  br i1 %1800, label %1801, label %1794

1801:                                             ; preds = %1794, %1786, %1761, %1753
  %1802 = load ptr, ptr %60, align 4
  %1803 = getelementptr i8, ptr %1802, i32 %1743
  store ptr %1803, ptr %60, align 4
  %1804 = icmp ugt i32 %1743, 65535
  br i1 %1804, label %1805, label %1812

1805:                                             ; preds = %1801
  store i32 1, ptr %62, align 4
  %1806 = load ptr, ptr %63, align 4
  %1807 = load ptr, ptr %1, align 4
  %1808 = ptrtoint ptr %1806 to i32
  %1809 = ptrtoint ptr %1807 to i32
  %1810 = sub i32 %1808, %1809
  %1811 = ashr exact i32 %1810, 3
  store i32 %1811, ptr %64, align 4
  br label %1812

1812:                                             ; preds = %1805, %1801, %1751
  %1813 = trunc i32 %1743 to i16
  %1814 = load ptr, ptr %63, align 4
  %1815 = getelementptr inbounds %struct.seqDef_s, ptr %1814, i32 0, i32 1
  store i16 %1813, ptr %1815, align 4
  %1816 = add i32 %1739, 3
  %1817 = load ptr, ptr %63, align 4
  store i32 %1816, ptr %1817, align 4
  %1818 = icmp ugt i32 %1744, 65535
  br i1 %1818, label %1821, label %1819

1819:                                             ; preds = %1812
  %1820 = load ptr, ptr %63, align 4
  br label %1834

1821:                                             ; preds = %1812
  store i32 2, ptr %62, align 4
  %1822 = load ptr, ptr %63, align 4
  %1823 = load ptr, ptr %1, align 4
  %1824 = ptrtoint ptr %1822 to i32
  %1825 = ptrtoint ptr %1823 to i32
  %1826 = sub i32 %1824, %1825
  %1827 = ashr exact i32 %1826, 3
  store i32 %1827, ptr %64, align 4
  br label %1834

1828:                                             ; preds = %1419, %1417
  %1829 = ptrtoint ptr %892 to i32
  %1830 = sub i32 %936, %1829
  %1831 = ashr i32 %1830, 8
  %1832 = add nsw i32 %1831, 1
  %1833 = getelementptr i8, ptr %891, i32 %1832
  br label %2128

1834:                                             ; preds = %1821, %1819, %1410, %1408, %1161, %1159
  %1835 = phi i32 [ %1085, %1159 ], [ %1085, %1161 ], [ %1333, %1408 ], [ %1333, %1410 ], [ %1744, %1819 ], [ %1744, %1821 ]
  %1836 = phi ptr [ %1160, %1159 ], [ %1162, %1161 ], [ %1409, %1408 ], [ %1411, %1410 ], [ %1820, %1819 ], [ %1822, %1821 ]
  %1837 = phi i32 [ %894, %1159 ], [ %894, %1161 ], [ %1305, %1408 ], [ %1305, %1410 ], [ %1739, %1819 ], [ %1739, %1821 ]
  %1838 = phi i32 [ %893, %1159 ], [ %893, %1161 ], [ %894, %1408 ], [ %894, %1410 ], [ %894, %1819 ], [ %894, %1821 ]
  %1839 = phi i32 [ %1081, %1159 ], [ %1081, %1161 ], [ %1329, %1408 ], [ %1329, %1410 ], [ %1738, %1819 ], [ %1738, %1821 ]
  %1840 = phi ptr [ %949, %1159 ], [ %949, %1161 ], [ %1330, %1408 ], [ %1330, %1410 ], [ %1740, %1819 ], [ %1740, %1821 ]
  %1841 = trunc i32 %1835 to i16
  %1842 = getelementptr inbounds %struct.seqDef_s, ptr %1836, i32 0, i32 2
  store i16 %1841, ptr %1842, align 2
  %1843 = load ptr, ptr %63, align 4
  %1844 = getelementptr %struct.seqDef_s, ptr %1843, i32 1
  store ptr %1844, ptr %63, align 4
  %1845 = getelementptr i8, ptr %1840, i32 %1839
  %1846 = icmp ugt ptr %1845, %17
  br i1 %1846, label %2128, label %1847

1847:                                             ; preds = %1834
  %1848 = add i32 %937, 2
  %1849 = getelementptr i8, ptr %19, i32 %1848
  %1850 = load i64, ptr %1849, align 1
  %1851 = mul i64 %1850, -3523014627327384477
  %1852 = lshr i64 %1851, %55
  %1853 = trunc i64 %1852 to i32
  %1854 = getelementptr i32, ptr %9, i32 %1853
  store i32 %1848, ptr %1854, align 4
  %1855 = getelementptr i8, ptr %1845, i32 -2
  %1856 = ptrtoint ptr %1855 to i32
  %1857 = sub i32 %1856, %21
  %1858 = load i64, ptr %1855, align 1
  %1859 = mul i64 %1858, -3523014627327384477
  %1860 = lshr i64 %1859, %55
  %1861 = trunc i64 %1860 to i32
  %1862 = getelementptr i32, ptr %9, i32 %1861
  store i32 %1857, ptr %1862, align 4
  switch i32 %5, label %1907 [
    i32 8, label %1896
    i32 5, label %1863
    i32 6, label %1874
    i32 7, label %1885
  ]

1863:                                             ; preds = %1847
  %1864 = load i64, ptr %1849, align 1
  %1865 = mul i64 %1864, -3523014627271114752
  %1866 = lshr i64 %1865, %52
  %1867 = trunc i64 %1866 to i32
  %1868 = getelementptr i32, ptr %13, i32 %1867
  store i32 %1848, ptr %1868, align 4
  %1869 = getelementptr i8, ptr %1845, i32 -1
  %1870 = load i64, ptr %1869, align 1
  %1871 = mul i64 %1870, -3523014627271114752
  %1872 = lshr i64 %1871, %52
  %1873 = trunc i64 %1872 to i32
  br label %1916

1874:                                             ; preds = %1847
  %1875 = load i64, ptr %1849, align 1
  %1876 = mul i64 %1875, -3523014627193847808
  %1877 = lshr i64 %1876, %52
  %1878 = trunc i64 %1877 to i32
  %1879 = getelementptr i32, ptr %13, i32 %1878
  store i32 %1848, ptr %1879, align 4
  %1880 = getelementptr i8, ptr %1845, i32 -1
  %1881 = load i64, ptr %1880, align 1
  %1882 = mul i64 %1881, -3523014627193847808
  %1883 = lshr i64 %1882, %52
  %1884 = trunc i64 %1883 to i32
  br label %1916

1885:                                             ; preds = %1847
  %1886 = load i64, ptr %1849, align 1
  %1887 = mul i64 %1886, -3523014627193167104
  %1888 = lshr i64 %1887, %52
  %1889 = trunc i64 %1888 to i32
  %1890 = getelementptr i32, ptr %13, i32 %1889
  store i32 %1848, ptr %1890, align 4
  %1891 = getelementptr i8, ptr %1845, i32 -1
  %1892 = load i64, ptr %1891, align 1
  %1893 = mul i64 %1892, -3523014627193167104
  %1894 = lshr i64 %1893, %52
  %1895 = trunc i64 %1894 to i32
  br label %1916

1896:                                             ; preds = %1847
  %1897 = load i64, ptr %1849, align 1
  %1898 = mul i64 %1897, -3523014627327384477
  %1899 = lshr i64 %1898, %52
  %1900 = trunc i64 %1899 to i32
  %1901 = getelementptr i32, ptr %13, i32 %1900
  store i32 %1848, ptr %1901, align 4
  %1902 = getelementptr i8, ptr %1845, i32 -1
  %1903 = load i64, ptr %1902, align 1
  %1904 = mul i64 %1903, -3523014627327384477
  %1905 = lshr i64 %1904, %52
  %1906 = trunc i64 %1905 to i32
  br label %1916

1907:                                             ; preds = %1847
  %1908 = load i32, ptr %1849, align 1
  %1909 = mul i32 %1908, -1640531535
  %1910 = lshr i32 %1909, %53
  %1911 = getelementptr i32, ptr %13, i32 %1910
  store i32 %1848, ptr %1911, align 4
  %1912 = getelementptr i8, ptr %1845, i32 -1
  %1913 = load i32, ptr %1912, align 1
  %1914 = mul i32 %1913, -1640531535
  %1915 = lshr i32 %1914, %53
  br label %1916

1916:                                             ; preds = %1907, %1896, %1885, %1874, %1863
  %1917 = phi ptr [ %1912, %1907 ], [ %1891, %1885 ], [ %1880, %1874 ], [ %1869, %1863 ], [ %1902, %1896 ]
  %1918 = phi i32 [ %1915, %1907 ], [ %1895, %1885 ], [ %1884, %1874 ], [ %1873, %1863 ], [ %1906, %1896 ]
  %1919 = ptrtoint ptr %1917 to i32
  %1920 = sub i32 %1919, %21
  %1921 = getelementptr i32, ptr %13, i32 %1918
  store i32 %1920, ptr %1921, align 4
  br label %1922

1922:                                             ; preds = %2118, %1916
  %1923 = phi ptr [ %2126, %2118 ], [ %1845, %1916 ]
  %1924 = phi i32 [ %1925, %2118 ], [ %1838, %1916 ]
  %1925 = phi i32 [ %1924, %2118 ], [ %1837, %1916 ]
  %1926 = ptrtoint ptr %1923 to i32
  %1927 = sub i32 %1926, %21
  %1928 = sub i32 %1927, %1924
  %1929 = icmp ult i32 %1928, %38
  %1930 = select i1 %1929, ptr %41, ptr %19
  %1931 = getelementptr i8, ptr %1930, i32 %1928
  %1932 = sub i32 %56, %1928
  %1933 = icmp ugt i32 %1932, 2
  %1934 = icmp ugt i32 %1928, %35
  %1935 = and i1 %1934, %1933
  br i1 %1935, label %1936, label %2128

1936:                                             ; preds = %1922
  %1937 = load i32, ptr %1931, align 1
  %1938 = load i32, ptr %1923, align 1
  %1939 = icmp eq i32 %1937, %1938
  br i1 %1939, label %1940, label %2128

1940:                                             ; preds = %1936
  %1941 = select i1 %1929, ptr %43, ptr %16
  %1942 = getelementptr i8, ptr %1923, i32 4
  %1943 = getelementptr i8, ptr %1931, i32 4
  %1944 = ptrtoint ptr %1941 to i32
  %1945 = ptrtoint ptr %1943 to i32
  %1946 = sub i32 %1944, %1945
  %1947 = getelementptr i8, ptr %1942, i32 %1946
  %1948 = icmp ult ptr %1947, %16
  %1949 = select i1 %1948, ptr %1947, ptr %16
  %1950 = getelementptr i8, ptr %1949, i32 -3
  %1951 = icmp ugt ptr %1950, %1942
  br i1 %1951, label %1952, label %1978

1952:                                             ; preds = %1940
  %1953 = load i32, ptr %1943, align 1
  %1954 = load i32, ptr %1942, align 1
  %1955 = xor i32 %1954, %1953
  %1956 = icmp eq i32 %1955, 0
  br i1 %1956, label %1960, label %1957

1957:                                             ; preds = %1952
  %1958 = tail call i32 @llvm.cttz.i32(i32 %1955, i1 true) #4, !range !8
  %1959 = lshr i32 %1958, 3
  br label %2005

1960:                                             ; preds = %1966, %1952
  %1961 = phi ptr [ %1964, %1966 ], [ %1942, %1952 ]
  %1962 = phi ptr [ %1963, %1966 ], [ %1943, %1952 ]
  %1963 = getelementptr i8, ptr %1962, i32 4
  %1964 = getelementptr i8, ptr %1961, i32 4
  %1965 = icmp ult ptr %1964, %1950
  br i1 %1965, label %1966, label %1978

1966:                                             ; preds = %1960
  %1967 = load i32, ptr %1963, align 1
  %1968 = load i32, ptr %1964, align 1
  %1969 = xor i32 %1968, %1967
  %1970 = icmp eq i32 %1969, 0
  br i1 %1970, label %1960, label %1971

1971:                                             ; preds = %1966
  %1972 = tail call i32 @llvm.cttz.i32(i32 %1969, i1 true) #4, !range !8
  %1973 = lshr i32 %1972, 3
  %1974 = getelementptr i8, ptr %1964, i32 %1973
  %1975 = ptrtoint ptr %1974 to i32
  %1976 = ptrtoint ptr %1942 to i32
  %1977 = sub i32 %1975, %1976
  br label %2005

1978:                                             ; preds = %1960, %1940
  %1979 = phi ptr [ %1942, %1940 ], [ %1964, %1960 ]
  %1980 = phi ptr [ %1943, %1940 ], [ %1963, %1960 ]
  %1981 = getelementptr i8, ptr %1949, i32 -1
  %1982 = icmp ult ptr %1979, %1981
  br i1 %1982, label %1983, label %1990

1983:                                             ; preds = %1978
  %1984 = load i16, ptr %1980, align 1
  %1985 = load i16, ptr %1979, align 1
  %1986 = icmp eq i16 %1984, %1985
  br i1 %1986, label %1987, label %1990

1987:                                             ; preds = %1983
  %1988 = getelementptr i8, ptr %1979, i32 2
  %1989 = getelementptr i8, ptr %1980, i32 2
  br label %1990

1990:                                             ; preds = %1987, %1983, %1978
  %1991 = phi ptr [ %1988, %1987 ], [ %1979, %1983 ], [ %1979, %1978 ]
  %1992 = phi ptr [ %1989, %1987 ], [ %1980, %1983 ], [ %1980, %1978 ]
  %1993 = icmp ult ptr %1991, %1949
  br i1 %1993, label %1994, label %2000

1994:                                             ; preds = %1990
  %1995 = load i8, ptr %1992, align 1
  %1996 = load i8, ptr %1991, align 1
  %1997 = icmp eq i8 %1995, %1996
  %1998 = zext i1 %1997 to i32
  %1999 = getelementptr i8, ptr %1991, i32 %1998
  br label %2000

2000:                                             ; preds = %1994, %1990
  %2001 = phi ptr [ %1991, %1990 ], [ %1999, %1994 ]
  %2002 = ptrtoint ptr %2001 to i32
  %2003 = ptrtoint ptr %1942 to i32
  %2004 = sub i32 %2002, %2003
  br label %2005

2005:                                             ; preds = %2000, %1971, %1957
  %2006 = phi i32 [ %2004, %2000 ], [ %1959, %1957 ], [ %1977, %1971 ]
  %2007 = getelementptr i8, ptr %1943, i32 %2006
  %2008 = icmp eq ptr %2007, %1941
  br i1 %2008, label %2009, label %2067

2009:                                             ; preds = %2005
  %2010 = getelementptr i8, ptr %1942, i32 %2006
  %2011 = icmp ugt ptr %57, %2010
  br i1 %2011, label %2012, label %2038

2012:                                             ; preds = %2009
  %2013 = load i32, ptr %39, align 1
  %2014 = load i32, ptr %2010, align 1
  %2015 = xor i32 %2014, %2013
  %2016 = icmp eq i32 %2015, 0
  br i1 %2016, label %2020, label %2017

2017:                                             ; preds = %2012
  %2018 = tail call i32 @llvm.cttz.i32(i32 %2015, i1 true) #4, !range !8
  %2019 = lshr i32 %2018, 3
  br label %2064

2020:                                             ; preds = %2026, %2012
  %2021 = phi ptr [ %2024, %2026 ], [ %2010, %2012 ]
  %2022 = phi ptr [ %2023, %2026 ], [ %39, %2012 ]
  %2023 = getelementptr i8, ptr %2022, i32 4
  %2024 = getelementptr i8, ptr %2021, i32 4
  %2025 = icmp ult ptr %2024, %57
  br i1 %2025, label %2026, label %2038

2026:                                             ; preds = %2020
  %2027 = load i32, ptr %2023, align 1
  %2028 = load i32, ptr %2024, align 1
  %2029 = xor i32 %2028, %2027
  %2030 = icmp eq i32 %2029, 0
  br i1 %2030, label %2020, label %2031

2031:                                             ; preds = %2026
  %2032 = tail call i32 @llvm.cttz.i32(i32 %2029, i1 true) #4, !range !8
  %2033 = lshr i32 %2032, 3
  %2034 = getelementptr i8, ptr %2024, i32 %2033
  %2035 = ptrtoint ptr %2034 to i32
  %2036 = ptrtoint ptr %2010 to i32
  %2037 = sub i32 %2035, %2036
  br label %2064

2038:                                             ; preds = %2020, %2009
  %2039 = phi ptr [ %2010, %2009 ], [ %2024, %2020 ]
  %2040 = phi ptr [ %39, %2009 ], [ %2023, %2020 ]
  %2041 = icmp ult ptr %2039, %58
  br i1 %2041, label %2042, label %2049

2042:                                             ; preds = %2038
  %2043 = load i16, ptr %2040, align 1
  %2044 = load i16, ptr %2039, align 1
  %2045 = icmp eq i16 %2043, %2044
  br i1 %2045, label %2046, label %2049

2046:                                             ; preds = %2042
  %2047 = getelementptr i8, ptr %2039, i32 2
  %2048 = getelementptr i8, ptr %2040, i32 2
  br label %2049

2049:                                             ; preds = %2046, %2042, %2038
  %2050 = phi ptr [ %2047, %2046 ], [ %2039, %2042 ], [ %2039, %2038 ]
  %2051 = phi ptr [ %2048, %2046 ], [ %2040, %2042 ], [ %2040, %2038 ]
  %2052 = icmp ult ptr %2050, %16
  br i1 %2052, label %2053, label %2059

2053:                                             ; preds = %2049
  %2054 = load i8, ptr %2051, align 1
  %2055 = load i8, ptr %2050, align 1
  %2056 = icmp eq i8 %2054, %2055
  %2057 = zext i1 %2056 to i32
  %2058 = getelementptr i8, ptr %2050, i32 %2057
  br label %2059

2059:                                             ; preds = %2053, %2049
  %2060 = phi ptr [ %2050, %2049 ], [ %2058, %2053 ]
  %2061 = ptrtoint ptr %2060 to i32
  %2062 = ptrtoint ptr %2010 to i32
  %2063 = sub i32 %2061, %2062
  br label %2064

2064:                                             ; preds = %2059, %2031, %2017
  %2065 = phi i32 [ %2063, %2059 ], [ %2019, %2017 ], [ %2037, %2031 ]
  %2066 = add i32 %2065, %2006
  br label %2067

2067:                                             ; preds = %2064, %2005
  %2068 = phi i32 [ %2066, %2064 ], [ %2006, %2005 ]
  %2069 = add i32 %2068, 4
  %2070 = add i32 %2068, 1
  %2071 = icmp ugt ptr %1923, %59
  br i1 %2071, label %2074, label %2072

2072:                                             ; preds = %2067
  %2073 = load ptr, ptr %60, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2073, ptr noundef align 1 dereferenceable(16) %1923, i32 16, i1 false) #4
  br label %2074

2074:                                             ; preds = %2072, %2067
  %2075 = load ptr, ptr %63, align 4
  %2076 = getelementptr inbounds %struct.seqDef_s, ptr %2075, i32 0, i32 1
  store i16 0, ptr %2076, align 4
  %2077 = load ptr, ptr %63, align 4
  store i32 1, ptr %2077, align 4
  %2078 = icmp ugt i32 %2070, 65535
  br i1 %2078, label %2081, label %2079

2079:                                             ; preds = %2074
  %2080 = load ptr, ptr %63, align 4
  br label %2088

2081:                                             ; preds = %2074
  store i32 2, ptr %62, align 4
  %2082 = load ptr, ptr %63, align 4
  %2083 = load ptr, ptr %1, align 4
  %2084 = ptrtoint ptr %2082 to i32
  %2085 = ptrtoint ptr %2083 to i32
  %2086 = sub i32 %2084, %2085
  %2087 = ashr exact i32 %2086, 3
  store i32 %2087, ptr %64, align 4
  br label %2088

2088:                                             ; preds = %2081, %2079
  %2089 = phi ptr [ %2080, %2079 ], [ %2082, %2081 ]
  %2090 = trunc i32 %2070 to i16
  %2091 = getelementptr inbounds %struct.seqDef_s, ptr %2089, i32 0, i32 2
  store i16 %2090, ptr %2091, align 2
  %2092 = load ptr, ptr %63, align 4
  %2093 = getelementptr %struct.seqDef_s, ptr %2092, i32 1
  store ptr %2093, ptr %63, align 4
  switch i32 %5, label %2094 [
    i32 8, label %2113
    i32 5, label %2098
    i32 6, label %2103
    i32 7, label %2108
  ]

2094:                                             ; preds = %2088
  %2095 = load i32, ptr %1923, align 1
  %2096 = mul i32 %2095, -1640531535
  %2097 = lshr i32 %2096, %53
  br label %2118

2098:                                             ; preds = %2088
  %2099 = load i64, ptr %1923, align 1
  %2100 = mul i64 %2099, -3523014627271114752
  %2101 = lshr i64 %2100, %52
  %2102 = trunc i64 %2101 to i32
  br label %2118

2103:                                             ; preds = %2088
  %2104 = load i64, ptr %1923, align 1
  %2105 = mul i64 %2104, -3523014627193847808
  %2106 = lshr i64 %2105, %52
  %2107 = trunc i64 %2106 to i32
  br label %2118

2108:                                             ; preds = %2088
  %2109 = load i64, ptr %1923, align 1
  %2110 = mul i64 %2109, -3523014627193167104
  %2111 = lshr i64 %2110, %52
  %2112 = trunc i64 %2111 to i32
  br label %2118

2113:                                             ; preds = %2088
  %2114 = load i64, ptr %1923, align 1
  %2115 = mul i64 %2114, -3523014627327384477
  %2116 = lshr i64 %2115, %52
  %2117 = trunc i64 %2116 to i32
  br label %2118

2118:                                             ; preds = %2113, %2108, %2103, %2098, %2094
  %2119 = phi i32 [ %2097, %2094 ], [ %2112, %2108 ], [ %2107, %2103 ], [ %2102, %2098 ], [ %2117, %2113 ]
  %2120 = getelementptr i32, ptr %13, i32 %2119
  store i32 %1927, ptr %2120, align 4
  %2121 = load i64, ptr %1923, align 1
  %2122 = mul i64 %2121, -3523014627327384477
  %2123 = lshr i64 %2122, %55
  %2124 = trunc i64 %2123 to i32
  %2125 = getelementptr i32, ptr %9, i32 %2124
  store i32 %1927, ptr %2125, align 4
  %2126 = getelementptr i8, ptr %1923, i32 %2069
  %2127 = icmp ugt ptr %2126, %17
  br i1 %2127, label %2128, label %1922

2128:                                             ; preds = %2118, %1936, %1922, %1834, %1828
  %2129 = phi i32 [ %894, %1828 ], [ %1837, %1834 ], [ %1924, %2118 ], [ %1925, %1936 ], [ %1925, %1922 ]
  %2130 = phi i32 [ %893, %1828 ], [ %1838, %1834 ], [ %1925, %2118 ], [ %1924, %1936 ], [ %1924, %1922 ]
  %2131 = phi ptr [ %892, %1828 ], [ %1845, %1834 ], [ %2126, %2118 ], [ %1923, %1936 ], [ %1923, %1922 ]
  %2132 = phi ptr [ %1833, %1828 ], [ %1845, %1834 ], [ %2126, %2118 ], [ %1923, %1936 ], [ %1923, %1922 ]
  %2133 = icmp ult ptr %2132, %17
  br i1 %2133, label %890, label %2134

2134:                                             ; preds = %2128
  %2135 = ptrtoint ptr %2131 to i32
  br label %2136

2136:                                             ; preds = %2134, %48
  %2137 = phi i32 [ %2135, %2134 ], [ %20, %48 ]
  %2138 = phi i32 [ %2129, %2134 ], [ %44, %48 ]
  %2139 = phi i32 [ %2130, %2134 ], [ %46, %48 ]
  store i32 %2138, ptr %2, align 4
  br label %2140

2140:                                             ; preds = %2136, %882
  %2141 = phi i32 [ %2139, %2136 ], [ %889, %882 ]
  %2142 = phi i32 [ %2137, %2136 ], [ %883, %882 ]
  store i32 %2141, ptr %45, align 4
  %2143 = ptrtoint ptr %16 to i32
  %2144 = sub i32 %2143, %2142
  ret i32 %2144
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
