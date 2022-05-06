; ModuleID = '/llk/IR/scripts/mod/sumversion.c_pt.bc'
source_filename = "../scripts/mod/sumversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md4_ctx = type { [4 x i32], [16 x i32], i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s.mod\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"bad ending versions file for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"malloc(strlen(objfile) + sizeof(\22..cmd\22))\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%.*s.%s.cmd\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".%s.cmd\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"malloc(dirlen + 1)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"source_\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"malformed line: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"deps_\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%08X%08X%08X%08X\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @get_src_version(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.md4_ctx, align 16
  %8 = alloca [4097 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %8) #13
  %9 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %8, i64 noundef 4097, ptr noundef nonnull @.str, ptr noundef %0) #13
  %10 = call ptr @read_text_file(ptr noundef nonnull %8) #13
  store ptr %10, ptr %5, align 8, !tbaa !5
  %11 = call ptr @get_line(ptr noundef nonnull %5) #13
  store ptr %11, ptr %6, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %0) #13
  br label %329

14:                                               ; preds = %3
  %15 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 1
  %16 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 2
  %17 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 3
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %7, align 16, !tbaa !9
  %18 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 2
  store i64 0, ptr %18, align 16, !tbaa !11
  %19 = call ptr @strsep(ptr noundef nonnull %6, ptr noundef nonnull @.str.2) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %270, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1
  %23 = getelementptr inbounds i8, ptr %22, i64 63
  %24 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 4
  %25 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 8
  %26 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 12
  br label %27

27:                                               ; preds = %267, %21
  %28 = phi ptr [ %19, %21 ], [ %268, %267 ]
  %29 = load i8, ptr %28, align 1, !tbaa !14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %267, label %31

31:                                               ; preds = %27
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #14
  %33 = shl i64 %32, 32
  %34 = add i64 %33, -8589934592
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds i8, ptr %28, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !14
  %38 = icmp eq i8 %37, 46
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = add i64 %33, -4294967296
  %41 = ashr exact i64 %40, 32
  %42 = getelementptr inbounds i8, ptr %28, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !14
  %44 = icmp eq i8 %43, 97
  br i1 %44, label %267, label %45

45:                                               ; preds = %39, %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #14
  %47 = add i64 %46, 6
  %48 = call noalias ptr @malloc(i64 noundef %47) #15
  %49 = call ptr @do_nofail(ptr noundef %48, ptr noundef nonnull @.str.3) #13
  %50 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef 47) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds i8, ptr %50, i64 1
  %54 = ptrtoint ptr %53 to i64
  %55 = ptrtoint ptr %28 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull @.str.4, i32 noundef %57, ptr noundef nonnull %28, ptr noundef nonnull %53) #13
  br label %61

59:                                               ; preds = %45
  %60 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull @.str.5, ptr noundef nonnull %28) #13
  br label %61

61:                                               ; preds = %59, %52
  %62 = phi i32 [ %57, %52 ], [ 0, %59 ]
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = call noalias ptr @malloc(i64 noundef %64) #15
  %66 = call ptr @do_nofail(ptr noundef %65, ptr noundef nonnull @.str.6) #13
  %67 = sext i32 %62 to i64
  %68 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull %28, i64 noundef %67) #13
  %69 = getelementptr inbounds i8, ptr %66, i64 %67
  store i8 0, ptr %69, align 1, !tbaa !14
  %70 = call ptr @read_text_file(ptr noundef %49) #13
  store ptr %70, ptr %4, align 8, !tbaa !5
  %71 = call ptr @get_line(ptr noundef nonnull %4) #13
  %72 = icmp eq ptr %71, null
  br i1 %72, label %266, label %73

73:                                               ; preds = %261, %61
  %74 = phi ptr [ %263, %261 ], [ %71, %61 ]
  %75 = phi i32 [ %262, %261 ], [ 0, %61 ]
  %76 = call i32 @strncmp(ptr noundef nonnull %74, ptr noundef nonnull dereferenceable(8) @.str.7, i64 noundef 7) #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = call ptr @strrchr(ptr noundef nonnull %74, i32 noundef 32) #14
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %74) #13
  call void @free(ptr noundef %70) #13
  call void @free(ptr noundef %66) #13
  call void @free(ptr noundef %49) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %329

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, ptr %79, i64 1
  br label %121

84:                                               ; preds = %73
  %85 = call i32 @strncmp(ptr noundef nonnull %74, ptr noundef nonnull dereferenceable(6) @.str.10, i64 noundef 5) #14
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %261, label %87

87:                                               ; preds = %84
  %88 = icmp eq i32 %75, 0
  br i1 %88, label %261, label %89

89:                                               ; preds = %87
  %90 = call i64 @strlen(ptr noundef nonnull %74) #14
  %91 = getelementptr inbounds i8, ptr %74, i64 -1
  %92 = getelementptr inbounds i8, ptr %91, i64 %90
  %93 = load i8, ptr %92, align 1, !tbaa !14
  %94 = icmp eq i8 %93, 92
  br i1 %94, label %95, label %265

95:                                               ; preds = %89
  %96 = load i8, ptr %74, align 1, !tbaa !14
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  %99 = tail call ptr @__ctype_b_loc() #16
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  br label %101

101:                                              ; preds = %110, %98
  %102 = phi i8 [ %96, %98 ], [ %112, %110 ]
  %103 = phi ptr [ %74, %98 ], [ %111, %110 ]
  %104 = sext i8 %102 to i64
  %105 = getelementptr inbounds i16, ptr %100, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !15
  %107 = and i16 %106, 8192
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  store i8 0, ptr %103, align 1, !tbaa !14
  br label %114

110:                                              ; preds = %101
  %111 = getelementptr inbounds i8, ptr %103, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !14
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %101

114:                                              ; preds = %110, %109, %95
  %115 = call ptr @strstr(ptr noundef nonnull %74, ptr noundef nonnull dereferenceable(1) %66) #14
  %116 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %66) #14
  %117 = getelementptr inbounds i8, ptr %115, i64 -1
  %118 = getelementptr inbounds i8, ptr %117, i64 %116
  %119 = call ptr @strrchr(ptr noundef nonnull %74, i32 noundef 47) #14
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %261

121:                                              ; preds = %114, %82
  %122 = phi ptr [ %83, %82 ], [ %74, %114 ]
  %123 = phi i32 [ %75, %82 ], [ 1, %114 ]
  %124 = call ptr @read_text_file(ptr noundef nonnull %122) #13
  %125 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %124) #14
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %260, label %127

127:                                              ; preds = %256, %121
  %128 = phi i64 [ %258, %256 ], [ 0, %121 ]
  %129 = getelementptr inbounds i8, ptr %124, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !14
  %131 = icmp eq i8 %130, 92
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = add nuw i64 %128, 1
  %134 = icmp ult i64 %133, %125
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = getelementptr inbounds i8, ptr %124, i64 %133
  %137 = load i8, ptr %136, align 1, !tbaa !14
  %138 = icmp eq i8 %137, 10
  br i1 %138, label %256, label %139

139:                                              ; preds = %135, %132, %127
  %140 = tail call ptr @__ctype_b_loc() #16
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  %142 = sext i8 %130 to i64
  %143 = getelementptr inbounds i16, ptr %141, i64 %142
  %144 = load i16, ptr %143, align 2, !tbaa !15
  %145 = and i16 %144, 8192
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %256

147:                                              ; preds = %139
  switch i8 %130, label %236 [
    i8 34, label %148
    i8 47, label %210
  ]

148:                                              ; preds = %147
  %149 = sub i64 %125, %128
  %150 = load i64, ptr %18, align 16, !tbaa !11
  %151 = trunc i64 %150 to i32
  %152 = and i32 %151, 63
  %153 = add i64 %150, 1
  store i64 %153, ptr %18, align 16, !tbaa !11
  %154 = icmp eq i32 %152, 63
  br i1 %154, label %160, label %155

155:                                              ; preds = %148
  %156 = sub nuw nsw i32 64, %152
  %157 = zext i32 %156 to i64
  %158 = sub nuw nsw i64 64, %157
  %159 = getelementptr inbounds i8, ptr %22, i64 %158
  store i8 34, ptr %159, align 1
  br label %169

160:                                              ; preds = %148
  store i8 34, ptr %23, align 1
  %161 = load <4 x i32>, ptr %22, align 16, !tbaa !9
  %162 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %161)
  store <4 x i32> %162, ptr %22, align 16, !tbaa !9
  %163 = load <4 x i32>, ptr %24, align 16, !tbaa !9
  %164 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %163)
  store <4 x i32> %164, ptr %24, align 16, !tbaa !9
  %165 = load <4 x i32>, ptr %25, align 16, !tbaa !9
  %166 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %165)
  store <4 x i32> %166, ptr %25, align 16, !tbaa !9
  %167 = load <4 x i32>, ptr %26, align 16, !tbaa !9
  %168 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %167)
  store <4 x i32> %168, ptr %26, align 16, !tbaa !9
  call fastcc void @md4_transform(ptr noundef nonnull %7, ptr noundef nonnull %22) #13
  br label %169

169:                                              ; preds = %160, %155
  %170 = icmp ugt i64 %149, 1
  br i1 %170, label %171, label %205

171:                                              ; preds = %202, %169
  %172 = phi i64 [ %203, %202 ], [ 1, %169 ]
  %173 = getelementptr inbounds i8, ptr %129, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !14
  %175 = load i64, ptr %18, align 16, !tbaa !11
  %176 = trunc i64 %175 to i32
  %177 = and i32 %176, 63
  %178 = add i64 %175, 1
  store i64 %178, ptr %18, align 16, !tbaa !11
  %179 = icmp eq i32 %177, 63
  br i1 %179, label %185, label %180

180:                                              ; preds = %171
  %181 = sub nuw nsw i32 64, %177
  %182 = zext i32 %181 to i64
  %183 = sub nuw nsw i64 64, %182
  %184 = getelementptr inbounds i8, ptr %22, i64 %183
  store i8 %174, ptr %184, align 1
  br label %194

185:                                              ; preds = %171
  store i8 %174, ptr %23, align 1
  %186 = load <4 x i32>, ptr %22, align 16, !tbaa !9
  %187 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %186)
  store <4 x i32> %187, ptr %22, align 16, !tbaa !9
  %188 = load <4 x i32>, ptr %24, align 16, !tbaa !9
  %189 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %188)
  store <4 x i32> %189, ptr %24, align 16, !tbaa !9
  %190 = load <4 x i32>, ptr %25, align 16, !tbaa !9
  %191 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %190)
  store <4 x i32> %191, ptr %25, align 16, !tbaa !9
  %192 = load <4 x i32>, ptr %26, align 16, !tbaa !9
  %193 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %192)
  store <4 x i32> %193, ptr %26, align 16, !tbaa !9
  call fastcc void @md4_transform(ptr noundef nonnull %7, ptr noundef nonnull %22) #13
  br label %194

194:                                              ; preds = %185, %180
  %195 = load i8, ptr %173, align 1, !tbaa !14
  %196 = icmp eq i8 %195, 34
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = add i64 %172, -1
  %199 = getelementptr inbounds i8, ptr %129, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !14
  %201 = icmp eq i8 %200, 92
  br i1 %201, label %202, label %205

202:                                              ; preds = %197, %194
  %203 = add nuw i64 %172, 1
  %204 = icmp eq i64 %203, %149
  br i1 %204, label %205, label %171

205:                                              ; preds = %202, %197, %169
  %206 = phi i64 [ 1, %169 ], [ %172, %197 ], [ %149, %202 ]
  %207 = shl i64 %206, 32
  %208 = ashr exact i64 %207, 32
  %209 = add i64 %208, %128
  br label %256

210:                                              ; preds = %147
  %211 = add nuw i64 %128, 1
  %212 = getelementptr inbounds i8, ptr %124, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !14
  %214 = icmp eq i8 %213, 42
  br i1 %214, label %215, label %236

215:                                              ; preds = %210
  %216 = sub i64 %125, %128
  %217 = icmp ugt i64 %216, 2
  br i1 %217, label %218, label %231

218:                                              ; preds = %228, %215
  %219 = phi i64 [ %229, %228 ], [ 2, %215 ]
  %220 = add i64 %219, -1
  %221 = getelementptr inbounds i8, ptr %129, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !14
  %223 = icmp eq i8 %222, 42
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = getelementptr inbounds i8, ptr %129, i64 %219
  %226 = load i8, ptr %225, align 1, !tbaa !14
  %227 = icmp eq i8 %226, 47
  br i1 %227, label %231, label %228

228:                                              ; preds = %224, %218
  %229 = add nuw i64 %219, 1
  %230 = icmp eq i64 %229, %216
  br i1 %230, label %231, label %218

231:                                              ; preds = %228, %224, %215
  %232 = phi i64 [ 2, %215 ], [ %219, %224 ], [ %216, %228 ]
  %233 = shl i64 %232, 32
  %234 = ashr exact i64 %233, 32
  %235 = add i64 %234, %128
  br label %256

236:                                              ; preds = %210, %147
  %237 = load i64, ptr %18, align 16, !tbaa !11
  %238 = trunc i64 %237 to i32
  %239 = and i32 %238, 63
  %240 = add i64 %237, 1
  store i64 %240, ptr %18, align 16, !tbaa !11
  %241 = icmp eq i32 %239, 63
  br i1 %241, label %247, label %242

242:                                              ; preds = %236
  %243 = sub nuw nsw i32 64, %239
  %244 = zext i32 %243 to i64
  %245 = sub nuw nsw i64 64, %244
  %246 = getelementptr inbounds i8, ptr %22, i64 %245
  store i8 %130, ptr %246, align 1
  br label %256

247:                                              ; preds = %236
  store i8 %130, ptr %23, align 1
  %248 = load <4 x i32>, ptr %22, align 16, !tbaa !9
  %249 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %248)
  store <4 x i32> %249, ptr %22, align 16, !tbaa !9
  %250 = load <4 x i32>, ptr %24, align 16, !tbaa !9
  %251 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %250)
  store <4 x i32> %251, ptr %24, align 16, !tbaa !9
  %252 = load <4 x i32>, ptr %25, align 16, !tbaa !9
  %253 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %252)
  store <4 x i32> %253, ptr %25, align 16, !tbaa !9
  %254 = load <4 x i32>, ptr %26, align 16, !tbaa !9
  %255 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %254)
  store <4 x i32> %255, ptr %26, align 16, !tbaa !9
  call fastcc void @md4_transform(ptr noundef nonnull %7, ptr noundef nonnull %22) #13
  br label %256

256:                                              ; preds = %247, %242, %231, %205, %139, %135
  %257 = phi i64 [ %128, %139 ], [ %209, %205 ], [ %235, %231 ], [ %133, %135 ], [ %128, %242 ], [ %128, %247 ]
  %258 = add i64 %257, 1
  %259 = icmp ugt i64 %125, %258
  br i1 %259, label %127, label %260

260:                                              ; preds = %256, %121
  call void @free(ptr noundef %124) #13
  br label %261

261:                                              ; preds = %260, %114, %87, %84
  %262 = phi i32 [ 1, %84 ], [ 0, %87 ], [ 1, %114 ], [ %123, %260 ]
  %263 = call ptr @get_line(ptr noundef nonnull %4) #13
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %73

265:                                              ; preds = %261, %89
  call void @free(ptr noundef %70) #13
  call void @free(ptr noundef %66) #13
  call void @free(ptr noundef %49) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %267

266:                                              ; preds = %61
  call void @free(ptr noundef %70) #13
  call void @free(ptr noundef nonnull %66) #13
  call void @free(ptr noundef %49) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %267

267:                                              ; preds = %266, %265, %39, %27
  %268 = call ptr @strsep(ptr noundef nonnull %6, ptr noundef nonnull @.str.2) #13
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %27

270:                                              ; preds = %267, %14
  %271 = load i64, ptr %18, align 16, !tbaa !11
  %272 = trunc i64 %271 to i32
  %273 = and i32 %272, 63
  %274 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1
  %275 = zext i32 %273 to i64
  %276 = getelementptr inbounds i8, ptr %274, i64 %275
  %277 = sub nsw i32 55, %273
  %278 = getelementptr inbounds i8, ptr %276, i64 1
  store i8 -128, ptr %276, align 1, !tbaa !14
  %279 = icmp ugt i32 %273, 55
  br i1 %279, label %280, label %294

280:                                              ; preds = %270
  %281 = xor i32 %273, 63
  %282 = zext i32 %281 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %278, i8 0, i64 %282, i1 false) #13
  %283 = load <4 x i32>, ptr %274, align 16, !tbaa !9
  %284 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %283)
  store <4 x i32> %284, ptr %274, align 16, !tbaa !9
  %285 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 4
  %286 = load <4 x i32>, ptr %285, align 16, !tbaa !9
  %287 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %286)
  store <4 x i32> %287, ptr %285, align 16, !tbaa !9
  %288 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 8
  %289 = load <4 x i32>, ptr %288, align 16, !tbaa !9
  %290 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %289)
  store <4 x i32> %290, ptr %288, align 16, !tbaa !9
  %291 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 12
  %292 = load <4 x i32>, ptr %291, align 16, !tbaa !9
  %293 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %292)
  store <4 x i32> %293, ptr %291, align 16, !tbaa !9
  call fastcc void @md4_transform(ptr noundef nonnull %7, ptr noundef nonnull %274) #13
  br label %294

294:                                              ; preds = %280, %270
  %295 = phi ptr [ %274, %280 ], [ %278, %270 ]
  %296 = phi i32 [ 56, %280 ], [ %277, %270 ]
  %297 = sext i32 %296 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %295, i8 0, i64 %297, i1 false) #13
  %298 = load i64, ptr %18, align 16, !tbaa !11
  %299 = trunc i64 %298 to i32
  %300 = shl i32 %299, 3
  %301 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 14
  store i32 %300, ptr %301, align 8, !tbaa !9
  %302 = lshr i64 %298, 29
  %303 = trunc i64 %302 to i32
  %304 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 15
  store i32 %303, ptr %304, align 4, !tbaa !9
  %305 = load <4 x i32>, ptr %274, align 16, !tbaa !9
  %306 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %305)
  store <4 x i32> %306, ptr %274, align 16, !tbaa !9
  %307 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 4
  %308 = load <4 x i32>, ptr %307, align 16, !tbaa !9
  %309 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %308)
  store <4 x i32> %309, ptr %307, align 16, !tbaa !9
  %310 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 8
  %311 = load <4 x i32>, ptr %310, align 16, !tbaa !9
  %312 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %311)
  store <4 x i32> %312, ptr %310, align 16, !tbaa !9
  %313 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 12
  %314 = load i32, ptr %313, align 16, !tbaa !9
  %315 = call i32 @llvm.bswap.i32(i32 %314) #13
  store i32 %315, ptr %313, align 16, !tbaa !9
  %316 = getelementptr inbounds %struct.md4_ctx, ptr %7, i64 0, i32 1, i64 13
  %317 = load i32, ptr %316, align 4, !tbaa !9
  %318 = call i32 @llvm.bswap.i32(i32 %317) #13
  store i32 %318, ptr %316, align 4, !tbaa !9
  call fastcc void @md4_transform(ptr noundef nonnull %7, ptr noundef nonnull %274) #13
  %319 = load i32, ptr %7, align 16, !tbaa !9
  %320 = call i32 @llvm.bswap.i32(i32 %319) #13
  store i32 %320, ptr %7, align 16, !tbaa !9
  %321 = load i32, ptr %15, align 4, !tbaa !9
  %322 = call i32 @llvm.bswap.i32(i32 %321) #13
  store i32 %322, ptr %15, align 4, !tbaa !9
  %323 = load i32, ptr %16, align 8, !tbaa !9
  %324 = call i32 @llvm.bswap.i32(i32 %323) #13
  store i32 %324, ptr %16, align 8, !tbaa !9
  %325 = load i32, ptr %17, align 4, !tbaa !9
  %326 = call i32 @llvm.bswap.i32(i32 %325) #13
  store i32 %326, ptr %17, align 4, !tbaa !9
  %327 = zext i32 %2 to i64
  %328 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %327, ptr noundef nonnull @.str.11, i32 noundef %320, i32 noundef %322, i32 noundef %324, i32 noundef %326) #13
  br label %329

329:                                              ; preds = %294, %81, %13
  call void @free(ptr noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare ptr @read_text_file(ptr noundef) local_unnamed_addr #3

declare ptr @get_line(ptr noundef) local_unnamed_addr #3

declare void @modpost_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare ptr @do_nofail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal fastcc void @md4_transform(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 4, !tbaa !9
  %4 = getelementptr inbounds i32, ptr %0, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %6 = getelementptr inbounds i32, ptr %0, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !9
  %8 = getelementptr inbounds i32, ptr %0, i64 3
  %9 = load i32, ptr %8, align 4, !tbaa !9
  %10 = and i32 %7, %5
  %11 = xor i32 %5, -1
  %12 = and i32 %9, %11
  %13 = load i32, ptr %1, align 4, !tbaa !9
  %14 = add i32 %10, %3
  %15 = add i32 %14, %12
  %16 = add i32 %15, %13
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 3)
  %18 = and i32 %17, %5
  %19 = xor i32 %17, -1
  %20 = and i32 %7, %19
  %21 = getelementptr inbounds i32, ptr %1, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !9
  %23 = add i32 %22, %9
  %24 = add i32 %23, %18
  %25 = add i32 %24, %20
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %27 = and i32 %26, %17
  %28 = xor i32 %26, -1
  %29 = and i32 %5, %28
  %30 = getelementptr inbounds i32, ptr %1, i64 2
  %31 = load i32, ptr %30, align 4, !tbaa !9
  %32 = add i32 %31, %7
  %33 = add i32 %32, %27
  %34 = add i32 %33, %29
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 11)
  %36 = and i32 %35, %26
  %37 = xor i32 %35, -1
  %38 = and i32 %17, %37
  %39 = getelementptr inbounds i32, ptr %1, i64 3
  %40 = load i32, ptr %39, align 4, !tbaa !9
  %41 = add i32 %40, %5
  %42 = add i32 %41, %36
  %43 = add i32 %42, %38
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 19)
  %45 = and i32 %44, %35
  %46 = xor i32 %44, -1
  %47 = and i32 %26, %46
  %48 = getelementptr inbounds i32, ptr %1, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa !9
  %50 = add i32 %49, %17
  %51 = add i32 %50, %45
  %52 = add i32 %51, %47
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 3)
  %54 = and i32 %53, %44
  %55 = xor i32 %53, -1
  %56 = and i32 %35, %55
  %57 = getelementptr inbounds i32, ptr %1, i64 5
  %58 = load i32, ptr %57, align 4, !tbaa !9
  %59 = add i32 %26, %58
  %60 = add i32 %59, %54
  %61 = add i32 %60, %56
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 7)
  %63 = and i32 %62, %53
  %64 = xor i32 %62, -1
  %65 = and i32 %44, %64
  %66 = getelementptr inbounds i32, ptr %1, i64 6
  %67 = load i32, ptr %66, align 4, !tbaa !9
  %68 = add i32 %35, %67
  %69 = add i32 %68, %63
  %70 = add i32 %69, %65
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 11)
  %72 = and i32 %71, %62
  %73 = xor i32 %71, -1
  %74 = and i32 %53, %73
  %75 = getelementptr inbounds i32, ptr %1, i64 7
  %76 = load i32, ptr %75, align 4, !tbaa !9
  %77 = add i32 %44, %76
  %78 = add i32 %77, %72
  %79 = add i32 %78, %74
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 19)
  %81 = and i32 %80, %71
  %82 = xor i32 %80, -1
  %83 = and i32 %62, %82
  %84 = getelementptr inbounds i32, ptr %1, i64 8
  %85 = load i32, ptr %84, align 4, !tbaa !9
  %86 = add i32 %53, %85
  %87 = add i32 %86, %81
  %88 = add i32 %87, %83
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 3)
  %90 = and i32 %89, %80
  %91 = xor i32 %89, -1
  %92 = and i32 %71, %91
  %93 = getelementptr inbounds i32, ptr %1, i64 9
  %94 = load i32, ptr %93, align 4, !tbaa !9
  %95 = add i32 %62, %94
  %96 = add i32 %95, %90
  %97 = add i32 %96, %92
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 7)
  %99 = and i32 %98, %89
  %100 = xor i32 %98, -1
  %101 = and i32 %80, %100
  %102 = getelementptr inbounds i32, ptr %1, i64 10
  %103 = load i32, ptr %102, align 4, !tbaa !9
  %104 = add i32 %71, %103
  %105 = add i32 %104, %99
  %106 = add i32 %105, %101
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 11)
  %108 = and i32 %107, %98
  %109 = xor i32 %107, -1
  %110 = and i32 %89, %109
  %111 = getelementptr inbounds i32, ptr %1, i64 11
  %112 = load i32, ptr %111, align 4, !tbaa !9
  %113 = add i32 %80, %112
  %114 = add i32 %113, %108
  %115 = add i32 %114, %110
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 19)
  %117 = and i32 %116, %107
  %118 = xor i32 %116, -1
  %119 = and i32 %98, %118
  %120 = getelementptr inbounds i32, ptr %1, i64 12
  %121 = load i32, ptr %120, align 4, !tbaa !9
  %122 = add i32 %89, %121
  %123 = add i32 %122, %117
  %124 = add i32 %123, %119
  %125 = tail call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 3)
  %126 = and i32 %125, %116
  %127 = xor i32 %125, -1
  %128 = and i32 %107, %127
  %129 = getelementptr inbounds i32, ptr %1, i64 13
  %130 = load i32, ptr %129, align 4, !tbaa !9
  %131 = add i32 %98, %130
  %132 = add i32 %131, %126
  %133 = add i32 %132, %128
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 7)
  %135 = and i32 %134, %125
  %136 = xor i32 %134, -1
  %137 = and i32 %116, %136
  %138 = getelementptr inbounds i32, ptr %1, i64 14
  %139 = load i32, ptr %138, align 4, !tbaa !9
  %140 = add i32 %107, %139
  %141 = add i32 %140, %135
  %142 = add i32 %141, %137
  %143 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 11)
  %144 = and i32 %143, %134
  %145 = xor i32 %143, -1
  %146 = and i32 %125, %145
  %147 = getelementptr inbounds i32, ptr %1, i64 15
  %148 = load i32, ptr %147, align 4, !tbaa !9
  %149 = add i32 %116, %148
  %150 = add i32 %149, %144
  %151 = add i32 %150, %146
  %152 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 19)
  %153 = or i32 %143, %134
  %154 = and i32 %152, %153
  %155 = or i32 %154, %144
  %156 = add i32 %13, 1518500249
  %157 = add i32 %156, %125
  %158 = add i32 %157, %155
  %159 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 3)
  %160 = or i32 %152, %143
  %161 = and i32 %159, %160
  %162 = and i32 %152, %143
  %163 = or i32 %161, %162
  %164 = add i32 %49, 1518500249
  %165 = add i32 %164, %134
  %166 = add i32 %165, %163
  %167 = tail call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 5)
  %168 = or i32 %159, %152
  %169 = and i32 %167, %168
  %170 = and i32 %159, %152
  %171 = or i32 %169, %170
  %172 = add i32 %85, 1518500249
  %173 = add i32 %172, %143
  %174 = add i32 %173, %171
  %175 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 9)
  %176 = or i32 %167, %159
  %177 = and i32 %175, %176
  %178 = and i32 %167, %159
  %179 = or i32 %177, %178
  %180 = add i32 %121, 1518500249
  %181 = add i32 %180, %152
  %182 = add i32 %181, %179
  %183 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 13)
  %184 = or i32 %175, %167
  %185 = and i32 %183, %184
  %186 = and i32 %175, %167
  %187 = or i32 %185, %186
  %188 = add i32 %22, 1518500249
  %189 = add i32 %188, %159
  %190 = add i32 %189, %187
  %191 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 3)
  %192 = or i32 %183, %175
  %193 = and i32 %191, %192
  %194 = and i32 %183, %175
  %195 = or i32 %193, %194
  %196 = add i32 %58, 1518500249
  %197 = add i32 %196, %167
  %198 = add i32 %197, %195
  %199 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 5)
  %200 = or i32 %191, %183
  %201 = and i32 %199, %200
  %202 = and i32 %191, %183
  %203 = or i32 %201, %202
  %204 = add i32 %94, 1518500249
  %205 = add i32 %204, %175
  %206 = add i32 %205, %203
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 9)
  %208 = or i32 %199, %191
  %209 = and i32 %207, %208
  %210 = and i32 %199, %191
  %211 = or i32 %209, %210
  %212 = add i32 %130, 1518500249
  %213 = add i32 %212, %183
  %214 = add i32 %213, %211
  %215 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 13)
  %216 = or i32 %207, %199
  %217 = and i32 %215, %216
  %218 = and i32 %207, %199
  %219 = or i32 %217, %218
  %220 = add i32 %31, 1518500249
  %221 = add i32 %220, %191
  %222 = add i32 %221, %219
  %223 = tail call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 3)
  %224 = or i32 %215, %207
  %225 = and i32 %223, %224
  %226 = and i32 %215, %207
  %227 = or i32 %225, %226
  %228 = add i32 %67, 1518500249
  %229 = add i32 %228, %199
  %230 = add i32 %229, %227
  %231 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 5)
  %232 = or i32 %223, %215
  %233 = and i32 %231, %232
  %234 = and i32 %223, %215
  %235 = or i32 %233, %234
  %236 = add i32 %103, 1518500249
  %237 = add i32 %236, %207
  %238 = add i32 %237, %235
  %239 = tail call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 9)
  %240 = or i32 %231, %223
  %241 = and i32 %239, %240
  %242 = and i32 %231, %223
  %243 = or i32 %241, %242
  %244 = add i32 %139, 1518500249
  %245 = add i32 %244, %215
  %246 = add i32 %245, %243
  %247 = tail call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 13)
  %248 = or i32 %239, %231
  %249 = and i32 %247, %248
  %250 = and i32 %239, %231
  %251 = or i32 %249, %250
  %252 = add i32 %40, 1518500249
  %253 = add i32 %252, %223
  %254 = add i32 %253, %251
  %255 = tail call i32 @llvm.fshl.i32(i32 %254, i32 %254, i32 3)
  %256 = or i32 %247, %239
  %257 = and i32 %255, %256
  %258 = and i32 %247, %239
  %259 = or i32 %257, %258
  %260 = add i32 %76, 1518500249
  %261 = add i32 %260, %231
  %262 = add i32 %261, %259
  %263 = tail call i32 @llvm.fshl.i32(i32 %262, i32 %262, i32 5)
  %264 = or i32 %255, %247
  %265 = and i32 %263, %264
  %266 = and i32 %255, %247
  %267 = or i32 %265, %266
  %268 = add i32 %112, 1518500249
  %269 = add i32 %268, %239
  %270 = add i32 %269, %267
  %271 = tail call i32 @llvm.fshl.i32(i32 %270, i32 %270, i32 9)
  %272 = or i32 %263, %255
  %273 = and i32 %271, %272
  %274 = and i32 %263, %255
  %275 = or i32 %273, %274
  %276 = add i32 %148, 1518500249
  %277 = add i32 %276, %247
  %278 = add i32 %277, %275
  %279 = tail call i32 @llvm.fshl.i32(i32 %278, i32 %278, i32 13)
  %280 = xor i32 %279, %271
  %281 = xor i32 %280, %263
  %282 = add i32 %13, 1859775393
  %283 = add i32 %282, %255
  %284 = add i32 %283, %281
  %285 = tail call i32 @llvm.fshl.i32(i32 %284, i32 %284, i32 3)
  %286 = xor i32 %280, %285
  %287 = add i32 %85, 1859775393
  %288 = add i32 %287, %263
  %289 = add i32 %288, %286
  %290 = tail call i32 @llvm.fshl.i32(i32 %289, i32 %289, i32 9)
  %291 = xor i32 %285, %279
  %292 = xor i32 %291, %290
  %293 = add i32 %49, 1859775393
  %294 = add i32 %293, %271
  %295 = add i32 %294, %292
  %296 = tail call i32 @llvm.fshl.i32(i32 %295, i32 %295, i32 11)
  %297 = xor i32 %290, %285
  %298 = xor i32 %297, %296
  %299 = add i32 %121, 1859775393
  %300 = add i32 %299, %279
  %301 = add i32 %300, %298
  %302 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 15)
  %303 = xor i32 %296, %290
  %304 = xor i32 %303, %302
  %305 = add i32 %31, 1859775393
  %306 = add i32 %305, %285
  %307 = add i32 %306, %304
  %308 = tail call i32 @llvm.fshl.i32(i32 %307, i32 %307, i32 3)
  %309 = xor i32 %302, %296
  %310 = xor i32 %309, %308
  %311 = add i32 %103, 1859775393
  %312 = add i32 %311, %290
  %313 = add i32 %312, %310
  %314 = tail call i32 @llvm.fshl.i32(i32 %313, i32 %313, i32 9)
  %315 = xor i32 %308, %302
  %316 = xor i32 %315, %314
  %317 = add i32 %67, 1859775393
  %318 = add i32 %317, %296
  %319 = add i32 %318, %316
  %320 = tail call i32 @llvm.fshl.i32(i32 %319, i32 %319, i32 11)
  %321 = xor i32 %314, %308
  %322 = xor i32 %321, %320
  %323 = add i32 %139, 1859775393
  %324 = add i32 %323, %302
  %325 = add i32 %324, %322
  %326 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 15)
  %327 = xor i32 %320, %314
  %328 = xor i32 %327, %326
  %329 = add i32 %22, 1859775393
  %330 = add i32 %329, %308
  %331 = add i32 %330, %328
  %332 = tail call i32 @llvm.fshl.i32(i32 %331, i32 %331, i32 3)
  %333 = xor i32 %326, %320
  %334 = xor i32 %333, %332
  %335 = add i32 %94, 1859775393
  %336 = add i32 %335, %314
  %337 = add i32 %336, %334
  %338 = tail call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 9)
  %339 = xor i32 %332, %326
  %340 = xor i32 %339, %338
  %341 = add i32 %58, 1859775393
  %342 = add i32 %341, %320
  %343 = add i32 %342, %340
  %344 = tail call i32 @llvm.fshl.i32(i32 %343, i32 %343, i32 11)
  %345 = xor i32 %338, %332
  %346 = xor i32 %345, %344
  %347 = add i32 %130, 1859775393
  %348 = add i32 %347, %326
  %349 = add i32 %348, %346
  %350 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 15)
  %351 = xor i32 %344, %338
  %352 = xor i32 %351, %350
  %353 = add i32 %40, 1859775393
  %354 = add i32 %353, %332
  %355 = add i32 %354, %352
  %356 = tail call i32 @llvm.fshl.i32(i32 %355, i32 %355, i32 3)
  %357 = xor i32 %350, %344
  %358 = xor i32 %357, %356
  %359 = add i32 %112, 1859775393
  %360 = add i32 %359, %338
  %361 = add i32 %360, %358
  %362 = tail call i32 @llvm.fshl.i32(i32 %361, i32 %361, i32 9)
  %363 = xor i32 %356, %350
  %364 = xor i32 %363, %362
  %365 = add i32 %76, 1859775393
  %366 = add i32 %365, %344
  %367 = add i32 %366, %364
  %368 = tail call i32 @llvm.fshl.i32(i32 %367, i32 %367, i32 11)
  %369 = xor i32 %362, %356
  %370 = xor i32 %369, %368
  %371 = add i32 %148, 1859775393
  %372 = add i32 %371, %350
  %373 = add i32 %372, %370
  %374 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 15)
  %375 = add i32 %356, %3
  store i32 %375, ptr %0, align 4, !tbaa !9
  %376 = add i32 %374, %5
  store i32 %376, ptr %4, align 4, !tbaa !9
  %377 = add i32 %368, %7
  store i32 %377, ptr %6, align 4, !tbaa !9
  %378 = add i32 %362, %9
  store i32 %378, ptr %8, align 4, !tbaa !9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #12

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !13, i64 80}
!12 = !{!"md4_ctx", !7, i64 0, !7, i64 16, !13, i64 80}
!13 = !{!"long", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
