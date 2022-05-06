; ModuleID = '/llk/IR/lib/mpi/mpi-pow.c_pt.bc'
source_filename = "../lib/mpi/mpi-pow.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_powm:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_powm\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_powm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.karatsuba_ctx = type { ptr, ptr, i32, ptr, i32 }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_powm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_powm = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_powm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_powm to i32), ptr @__kstrtab_mpi_powm, ptr @__kstrtabns_mpi_powm }, section "___ksymtab_gpl+mpi_powm", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mpi_powm], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_powm(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.karatsuba_ctx, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false)
  %7 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 1
  %12 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq i32 %10, 0
  br i1 %18, label %377, label %19

19:                                               ; preds = %4
  %20 = icmp eq i32 %8, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %19
  %22 = icmp eq i32 %10, 1
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 1, ptr %24, align 4
  br label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp ne i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  br i1 %29, label %32, label %343

32:                                               ; preds = %25, %23
  %33 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef 1) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %347, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %14, align 4
  store i32 1, ptr %36, align 4
  br label %343

37:                                               ; preds = %19
  %38 = tail call ptr @mpi_alloc_limb_space(i32 noundef %10) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %347, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = add i32 %10, -1
  %44 = getelementptr i32, ptr %42, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @llvm.ctlz.i32(i32 %45, i1 false) #6, !range !8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = icmp sgt i32 %10, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %48
  %51 = load i32, ptr %42, align 4
  store i32 %51, ptr %38, align 4
  %52 = icmp eq i32 %10, 1
  br i1 %52, label %63, label %55

53:                                               ; preds = %40
  %54 = tail call i32 @mpihelp_lshift(ptr noundef nonnull %38, ptr noundef %42, i32 noundef %10, i32 noundef %46) #6
  br label %63

55:                                               ; preds = %55, %50
  %56 = phi i32 [ %61, %55 ], [ 1, %50 ]
  %57 = load ptr, ptr %41, align 4
  %58 = getelementptr i32, ptr %57, i32 %56
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr i32, ptr %38, i32 %56
  store i32 %59, ptr %60, align 4
  %61 = add nuw nsw i32 %56, 1
  %62 = icmp eq i32 %61, %10
  br i1 %62, label %63, label %55

63:                                               ; preds = %55, %53, %50, %48
  %64 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = icmp sgt i32 %65, %10
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = add i32 %65, 1
  %71 = tail call ptr @mpi_alloc_limb_space(i32 noundef %70) #6
  %72 = icmp eq ptr %71, null
  br i1 %72, label %347, label %73

73:                                               ; preds = %69
  %74 = icmp sgt i32 %65, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ 0, %75 ], [ %83, %77 ]
  %79 = load ptr, ptr %76, align 4
  %80 = getelementptr i32, ptr %79, i32 %78
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i32, ptr %71, i32 %78
  store i32 %81, ptr %82, align 4
  %83 = add nuw nsw i32 %78, 1
  %84 = icmp eq i32 %83, %65
  br i1 %84, label %85, label %77

85:                                               ; preds = %77, %73
  %86 = getelementptr i32, ptr %71, i32 %10
  %87 = tail call i32 @mpihelp_divrem(ptr noundef %86, i32 noundef 0, ptr noundef nonnull %71, i32 noundef %65, ptr noundef nonnull %38, i32 noundef %10) #6
  %88 = call i32 @llvm.smin.i32(i32 %10, i32 0)
  br label %89

89:                                               ; preds = %92, %85
  %90 = phi i32 [ %10, %85 ], [ %93, %92 ]
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = add nsw i32 %90, -1
  %94 = getelementptr i32, ptr %71, i32 %93
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %89, label %107

97:                                               ; preds = %63
  %98 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %89
  %101 = phi ptr [ null, %97 ], [ %71, %89 ]
  %102 = phi ptr [ %99, %97 ], [ %71, %89 ]
  %103 = phi i32 [ %65, %97 ], [ %88, %89 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 0, ptr %106, align 4
  br label %343

107:                                              ; preds = %100, %92
  %108 = phi i32 [ %103, %100 ], [ %90, %92 ]
  %109 = phi ptr [ %102, %100 ], [ %71, %92 ]
  %110 = phi ptr [ %101, %100 ], [ %71, %92 ]
  %111 = load i32, ptr %0, align 4
  %112 = icmp slt i32 %111, %11
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = icmp eq ptr %15, %17
  %115 = icmp eq ptr %15, %38
  %116 = select i1 %114, i1 true, i1 %115
  %117 = icmp eq ptr %15, %109
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = tail call ptr @mpi_alloc_limb_space(i32 noundef %11) #6
  %121 = icmp eq ptr %120, null
  br i1 %121, label %347, label %165

122:                                              ; preds = %113
  %123 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %11) #6
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %347, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr %14, align 4
  br label %165

127:                                              ; preds = %107
  %128 = icmp eq ptr %15, %109
  br i1 %128, label %129, label %144

129:                                              ; preds = %127
  %130 = icmp eq ptr %110, null
  br i1 %130, label %132, label %131, !prof !9

131:                                              ; preds = %129
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/mpi/mpi-pow.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

132:                                              ; preds = %129
  %133 = tail call ptr @mpi_alloc_limb_space(i32 noundef %108) #6
  %134 = icmp eq ptr %133, null
  br i1 %134, label %347, label %135

135:                                              ; preds = %132
  %136 = icmp sgt i32 %108, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %137, %135
  %138 = phi i32 [ %142, %137 ], [ 0, %135 ]
  %139 = getelementptr i32, ptr %15, i32 %138
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr i32, ptr %133, i32 %138
  store i32 %140, ptr %141, align 4
  %142 = add nuw nsw i32 %138, 1
  %143 = icmp eq i32 %142, %108
  br i1 %143, label %144, label %137

144:                                              ; preds = %137, %135, %127
  %145 = phi ptr [ %110, %127 ], [ %133, %135 ], [ %133, %137 ]
  %146 = phi ptr [ %109, %127 ], [ %133, %135 ], [ %133, %137 ]
  %147 = icmp eq ptr %15, %17
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = tail call ptr @mpi_alloc_limb_space(i32 noundef %8) #6
  %150 = icmp eq ptr %149, null
  br i1 %150, label %347, label %151

151:                                              ; preds = %148
  %152 = icmp sgt i32 %8, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %153, %151
  %154 = phi i32 [ %158, %153 ], [ 0, %151 ]
  %155 = getelementptr i32, ptr %15, i32 %154
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr i32, ptr %149, i32 %154
  store i32 %156, ptr %157, align 4
  %158 = add nuw nsw i32 %154, 1
  %159 = icmp eq i32 %158, %8
  br i1 %159, label %160, label %153

160:                                              ; preds = %153, %151, %144
  %161 = phi ptr [ null, %144 ], [ %149, %151 ], [ %149, %153 ]
  %162 = phi ptr [ %17, %144 ], [ %149, %151 ], [ %149, %153 ]
  %163 = icmp eq ptr %15, %38
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/mpi/mpi-pow.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

165:                                              ; preds = %160, %125, %119
  %166 = phi ptr [ %110, %125 ], [ %145, %160 ], [ %110, %119 ]
  %167 = phi ptr [ null, %125 ], [ %161, %160 ], [ null, %119 ]
  %168 = phi ptr [ %126, %125 ], [ %15, %160 ], [ %120, %119 ]
  %169 = phi ptr [ %17, %125 ], [ %162, %160 ], [ %17, %119 ]
  %170 = phi ptr [ %109, %125 ], [ %146, %160 ], [ %109, %119 ]
  %171 = phi i1 [ true, %125 ], [ true, %160 ], [ false, %119 ]
  %172 = icmp sgt i32 %108, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %173, %165
  %174 = phi i32 [ %178, %173 ], [ 0, %165 ]
  %175 = getelementptr i32, ptr %170, i32 %174
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr i32, ptr %168, i32 %174
  store i32 %176, ptr %177, align 4
  %178 = add nuw nsw i32 %174, 1
  %179 = icmp eq i32 %178, %108
  br i1 %179, label %180, label %173

180:                                              ; preds = %173, %165
  %181 = add i32 %11, 2
  %182 = tail call ptr @mpi_alloc_limb_space(i32 noundef %181) #6
  %183 = icmp eq ptr %182, null
  br i1 %183, label %351, label %184

184:                                              ; preds = %180
  %185 = load i32, ptr %169, align 4
  %186 = and i32 %185, 1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = load i32, ptr %66, align 4
  %190 = icmp ne i32 %189, 0
  br label %191

191:                                              ; preds = %188, %184
  %192 = phi i1 [ false, %184 ], [ %190, %188 ]
  %193 = add i32 %8, -1
  %194 = getelementptr i32, ptr %169, i32 %193
  %195 = load i32, ptr %194, align 4
  %196 = tail call i32 @llvm.ctlz.i32(i32 %195, i1 false) #6, !range !8
  %197 = shl i32 %195, %196
  %198 = shl i32 %197, 1
  %199 = sub nsw i32 31, %196
  %200 = icmp slt i32 %108, 16
  br label %201

201:                                              ; preds = %275, %191
  %202 = phi ptr [ null, %191 ], [ %268, %275 ]
  %203 = phi ptr [ %168, %191 ], [ %269, %275 ]
  %204 = phi i32 [ %108, %191 ], [ %270, %275 ]
  %205 = phi i32 [ 0, %191 ], [ %271, %275 ]
  %206 = phi i32 [ %193, %191 ], [ %273, %275 ]
  %207 = phi ptr [ %182, %191 ], [ %272, %275 ]
  %208 = phi i32 [ %199, %191 ], [ 32, %275 ]
  %209 = phi i32 [ %198, %191 ], [ %277, %275 ]
  %210 = icmp eq i32 %208, 0
  br i1 %210, label %267, label %211

211:                                              ; preds = %259, %201
  %212 = phi i32 [ %263, %259 ], [ %209, %201 ]
  %213 = phi i32 [ %264, %259 ], [ %208, %201 ]
  %214 = phi ptr [ %262, %259 ], [ %207, %201 ]
  %215 = phi i32 [ %237, %259 ], [ %205, %201 ]
  %216 = phi i32 [ %261, %259 ], [ %204, %201 ]
  %217 = phi ptr [ %260, %259 ], [ %203, %201 ]
  %218 = phi ptr [ %236, %259 ], [ %202, %201 ]
  %219 = icmp slt i32 %216, 16
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  call void @mpih_sqr_n_basecase(ptr noundef %214, ptr noundef %217, i32 noundef %216) #6
  br label %235

221:                                              ; preds = %211
  %222 = icmp eq ptr %218, null
  %223 = shl nuw i32 %216, 1
  br i1 %222, label %224, label %227

224:                                              ; preds = %221
  %225 = call ptr @mpi_alloc_limb_space(i32 noundef %223) #6
  %226 = icmp eq ptr %225, null
  br i1 %226, label %351, label %232

227:                                              ; preds = %221
  %228 = icmp slt i32 %215, %223
  br i1 %228, label %229, label %232

229:                                              ; preds = %227
  call void @mpi_free_limb_space(ptr noundef nonnull %218) #6
  %230 = call ptr @mpi_alloc_limb_space(i32 noundef %223) #6
  %231 = icmp eq ptr %230, null
  br i1 %231, label %351, label %232

232:                                              ; preds = %229, %227, %224
  %233 = phi ptr [ %230, %229 ], [ %218, %227 ], [ %225, %224 ]
  %234 = phi i32 [ %223, %229 ], [ %215, %227 ], [ %223, %224 ]
  call void @mpih_sqr_n(ptr noundef %214, ptr noundef %217, i32 noundef %216, ptr noundef nonnull %233) #6
  br label %235

235:                                              ; preds = %232, %220
  %236 = phi ptr [ %218, %220 ], [ %233, %232 ]
  %237 = phi i32 [ %215, %220 ], [ %234, %232 ]
  %238 = shl i32 %216, 1
  %239 = icmp sgt i32 %238, %10
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = getelementptr i32, ptr %214, i32 %10
  %242 = call i32 @mpihelp_divrem(ptr noundef %241, i32 noundef 0, ptr noundef %214, i32 noundef %238, ptr noundef nonnull %38, i32 noundef %10) #6
  br label %243

243:                                              ; preds = %240, %235
  %244 = phi i32 [ %10, %240 ], [ %238, %235 ]
  %245 = icmp slt i32 %212, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %243
  br i1 %200, label %247, label %250

247:                                              ; preds = %246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !12
  %248 = call i32 @mpihelp_mul(ptr noundef %217, ptr noundef %214, i32 noundef %244, ptr noundef %170, i32 noundef %108, ptr noundef nonnull %6) #6
  %249 = icmp slt i32 %248, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br i1 %249, label %351, label %253

250:                                              ; preds = %246
  %251 = call i32 @mpihelp_mul_karatsuba_case(ptr noundef %217, ptr noundef %214, i32 noundef %244, ptr noundef %170, i32 noundef %108, ptr noundef nonnull %5) #6
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %351, label %253

253:                                              ; preds = %250, %247
  %254 = add i32 %244, %108
  %255 = icmp sgt i32 %254, %10
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = getelementptr i32, ptr %217, i32 %10
  %258 = call i32 @mpihelp_divrem(ptr noundef %257, i32 noundef 0, ptr noundef %217, i32 noundef %254, ptr noundef nonnull %38, i32 noundef %10) #6
  br label %259

259:                                              ; preds = %256, %253, %243
  %260 = phi ptr [ %214, %243 ], [ %217, %256 ], [ %217, %253 ]
  %261 = phi i32 [ %244, %243 ], [ %10, %256 ], [ %254, %253 ]
  %262 = phi ptr [ %217, %243 ], [ %214, %256 ], [ %214, %253 ]
  %263 = shl i32 %212, 1
  %264 = add i32 %213, -1
  %265 = call i32 @__cond_resched() #6
  %266 = icmp eq i32 %264, 0
  br i1 %266, label %267, label %211

267:                                              ; preds = %259, %201
  %268 = phi ptr [ %202, %201 ], [ %236, %259 ]
  %269 = phi ptr [ %203, %201 ], [ %260, %259 ]
  %270 = phi i32 [ %204, %201 ], [ %261, %259 ]
  %271 = phi i32 [ %205, %201 ], [ %237, %259 ]
  %272 = phi ptr [ %207, %201 ], [ %262, %259 ]
  %273 = add i32 %206, -1
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %267
  %276 = getelementptr i32, ptr %169, i32 %273
  %277 = load i32, ptr %276, align 4
  br label %201

278:                                              ; preds = %267
  br i1 %47, label %279, label %281

279:                                              ; preds = %278
  %280 = icmp sgt i32 %270, 0
  br i1 %280, label %289, label %297

281:                                              ; preds = %278
  %282 = load ptr, ptr %14, align 4
  %283 = call i32 @mpihelp_lshift(ptr noundef %282, ptr noundef %269, i32 noundef %270, i32 noundef %46) #6
  %284 = load ptr, ptr %14, align 4
  %285 = icmp eq i32 %283, 0
  br i1 %285, label %299, label %286

286:                                              ; preds = %281
  %287 = getelementptr i32, ptr %284, i32 %270
  store i32 %283, ptr %287, align 4
  %288 = add i32 %270, 1
  br label %299

289:                                              ; preds = %289, %279
  %290 = phi i32 [ %295, %289 ], [ 0, %279 ]
  %291 = getelementptr i32, ptr %269, i32 %290
  %292 = load i32, ptr %291, align 4
  %293 = load ptr, ptr %14, align 4
  %294 = getelementptr i32, ptr %293, i32 %290
  store i32 %292, ptr %294, align 4
  %295 = add nuw nsw i32 %290, 1
  %296 = icmp eq i32 %295, %270
  br i1 %296, label %297, label %289

297:                                              ; preds = %289, %279
  %298 = load ptr, ptr %14, align 4
  br label %299

299:                                              ; preds = %297, %286, %281
  %300 = phi ptr [ %284, %286 ], [ %284, %281 ], [ %298, %297 ]
  %301 = phi i32 [ %288, %286 ], [ %270, %281 ], [ %270, %297 ]
  %302 = icmp slt i32 %301, %10
  br i1 %302, label %306, label %303

303:                                              ; preds = %299
  %304 = getelementptr i32, ptr %300, i32 %10
  %305 = call i32 @mpihelp_divrem(ptr noundef %304, i32 noundef 0, ptr noundef %300, i32 noundef %301, ptr noundef nonnull %38, i32 noundef %10) #6
  br label %306

306:                                              ; preds = %303, %299
  %307 = phi i32 [ %10, %303 ], [ %301, %299 ]
  br i1 %47, label %310, label %308

308:                                              ; preds = %306
  %309 = call i32 @mpihelp_rshift(ptr noundef %300, ptr noundef %300, i32 noundef %307, i32 noundef %46) #6
  br label %310

310:                                              ; preds = %308, %306
  %311 = call i32 @llvm.smin.i32(i32 %301, i32 %10)
  %312 = call i32 @llvm.smin.i32(i32 %311, i32 0)
  br label %313

313:                                              ; preds = %316, %310
  %314 = phi i32 [ %307, %310 ], [ %317, %316 ]
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %313
  %317 = add nsw i32 %314, -1
  %318 = getelementptr i32, ptr %300, i32 %317
  %319 = load i32, ptr %318, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %313, label %321

321:                                              ; preds = %316, %313
  %322 = phi i32 [ %312, %313 ], [ %314, %316 ]
  %323 = icmp ne i32 %322, 0
  %324 = select i1 %192, i1 %323, i1 false
  br i1 %324, label %325, label %338

325:                                              ; preds = %321
  br i1 %47, label %328, label %326

326:                                              ; preds = %325
  %327 = call i32 @mpihelp_rshift(ptr noundef nonnull %38, ptr noundef nonnull %38, i32 noundef %10, i32 noundef %46) #6
  br label %328

328:                                              ; preds = %326, %325
  call fastcc void @mpihelp_sub(ptr noundef %300, ptr noundef nonnull %38, i32 noundef %10, ptr noundef %300, i32 noundef %322)
  %329 = call i32 @llvm.smin.i32(i32 %10, i32 0)
  br label %330

330:                                              ; preds = %333, %328
  %331 = phi i32 [ %10, %328 ], [ %334, %333 ]
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %330
  %334 = add nsw i32 %331, -1
  %335 = getelementptr i32, ptr %300, i32 %334
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %330, label %338

338:                                              ; preds = %333, %330, %321
  %339 = phi i32 [ %322, %321 ], [ %329, %330 ], [ %331, %333 ]
  %340 = phi i32 [ %67, %321 ], [ %13, %333 ], [ %13, %330 ]
  %341 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %339, ptr %341, align 4
  %342 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %340, ptr %342, align 4
  br label %351

343:                                              ; preds = %105, %35, %25
  %344 = phi ptr [ %38, %105 ], [ null, %35 ], [ null, %25 ]
  %345 = phi ptr [ %101, %105 ], [ null, %35 ], [ null, %25 ]
  %346 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 0, ptr %346, align 4
  br label %347

347:                                              ; preds = %343, %148, %132, %122, %119, %69, %37, %32
  %348 = phi ptr [ null, %32 ], [ null, %37 ], [ %38, %69 ], [ %38, %132 ], [ %38, %148 ], [ %38, %122 ], [ %38, %119 ], [ %344, %343 ]
  %349 = phi ptr [ null, %32 ], [ null, %37 ], [ null, %69 ], [ null, %132 ], [ %145, %148 ], [ %110, %122 ], [ %110, %119 ], [ %345, %343 ]
  %350 = phi i32 [ -12, %32 ], [ -12, %37 ], [ -12, %69 ], [ -12, %132 ], [ -12, %148 ], [ -12, %122 ], [ -12, %119 ], [ 0, %343 ]
  call void @mpihelp_release_karatsuba_ctx(ptr noundef nonnull %5) #6
  br label %356

351:                                              ; preds = %338, %250, %247, %229, %224, %180
  %352 = phi ptr [ %268, %338 ], [ null, %180 ], [ %236, %247 ], [ null, %224 ], [ null, %229 ], [ %236, %250 ]
  %353 = phi ptr [ %300, %338 ], [ %168, %180 ], [ %214, %247 ], [ %217, %224 ], [ %217, %229 ], [ %214, %250 ]
  %354 = phi i32 [ 0, %338 ], [ -12, %180 ], [ -12, %224 ], [ -12, %229 ], [ -12, %250 ], [ -12, %247 ]
  call void @mpihelp_release_karatsuba_ctx(ptr noundef nonnull %5) #6
  br i1 %171, label %356, label %355

355:                                              ; preds = %351
  call void @mpi_assign_limb_space(ptr noundef %0, ptr noundef %353, i32 noundef %11) #6
  br label %356

356:                                              ; preds = %355, %351, %347
  %357 = phi i32 [ %350, %347 ], [ %354, %355 ], [ %354, %351 ]
  %358 = phi ptr [ null, %347 ], [ %352, %355 ], [ %352, %351 ]
  %359 = phi ptr [ null, %347 ], [ %182, %355 ], [ %182, %351 ]
  %360 = phi ptr [ null, %347 ], [ %167, %355 ], [ %167, %351 ]
  %361 = phi ptr [ %349, %347 ], [ %166, %355 ], [ %166, %351 ]
  %362 = phi ptr [ %348, %347 ], [ %38, %355 ], [ %38, %351 ]
  %363 = icmp eq ptr %362, null
  br i1 %363, label %365, label %364

364:                                              ; preds = %356
  call void @mpi_free_limb_space(ptr noundef nonnull %362) #6
  br label %365

365:                                              ; preds = %364, %356
  %366 = icmp eq ptr %361, null
  br i1 %366, label %368, label %367

367:                                              ; preds = %365
  call void @mpi_free_limb_space(ptr noundef nonnull %361) #6
  br label %368

368:                                              ; preds = %367, %365
  %369 = icmp eq ptr %360, null
  br i1 %369, label %371, label %370

370:                                              ; preds = %368
  call void @mpi_free_limb_space(ptr noundef nonnull %360) #6
  br label %371

371:                                              ; preds = %370, %368
  %372 = icmp eq ptr %359, null
  br i1 %372, label %374, label %373

373:                                              ; preds = %371
  call void @mpi_free_limb_space(ptr noundef nonnull %359) #6
  br label %374

374:                                              ; preds = %373, %371
  %375 = icmp eq ptr %358, null
  br i1 %375, label %377, label %376

376:                                              ; preds = %374
  call void @mpi_free_limb_space(ptr noundef nonnull %358) #6
  br label %377

377:                                              ; preds = %376, %374, %4
  %378 = phi i32 [ -22, %4 ], [ %357, %376 ], [ %357, %374 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #6
  ret i32 %378
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_limb_space(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_lshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_divrem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpih_sqr_n_basecase(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free_limb_space(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpih_sqr_n(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_mul(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_mul_karatsuba_case(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mpihelp_sub(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #4 {
  %6 = tail call i32 @mpihelp_sub_n(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %4) #6
  %7 = icmp eq i32 %2, %4
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  %9 = sub i32 %2, %4
  %10 = getelementptr i32, ptr %0, i32 %4
  %11 = getelementptr i32, ptr %1, i32 %4
  %12 = getelementptr i32, ptr %11, i32 1
  %13 = load i32, ptr %11, align 4
  %14 = sub i32 %13, %6
  %15 = getelementptr i32, ptr %10, i32 1
  store i32 %14, ptr %10, align 4
  %16 = icmp ult i32 %13, %6
  br i1 %16, label %17, label %29

17:                                               ; preds = %23, %8
  %18 = phi ptr [ %27, %23 ], [ %15, %8 ]
  %19 = phi ptr [ %24, %23 ], [ %12, %8 ]
  %20 = phi i32 [ %21, %23 ], [ %9, %8 ]
  %21 = add i32 %20, -1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %17
  %24 = getelementptr i32, ptr %19, i32 1
  %25 = load i32, ptr %19, align 4
  %26 = add i32 %25, -1
  %27 = getelementptr i32, ptr %18, i32 1
  store i32 %26, ptr %18, align 4
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %17, label %29

29:                                               ; preds = %23, %8
  %30 = phi ptr [ %15, %8 ], [ %27, %23 ]
  %31 = phi ptr [ %12, %8 ], [ %24, %23 ]
  %32 = phi i32 [ %9, %8 ], [ %21, %23 ]
  %33 = icmp eq ptr %30, %31
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = add i32 %32, -1
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %37, %34
  %38 = phi i32 [ %42, %37 ], [ 0, %34 ]
  %39 = getelementptr i32, ptr %31, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i32, ptr %30, i32 %38
  store i32 %40, ptr %41, align 4
  %42 = add nuw nsw i32 %38, 1
  %43 = icmp eq i32 %42, %35
  br i1 %43, label %44, label %37

44:                                               ; preds = %37, %34, %29, %17, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpihelp_release_karatsuba_ctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_assign_limb_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152399709, i64 2152400191, i64 2152399746, i64 2152399802, i64 2152399836, i64 2152399860, i64 2152399901, i64 2152399922, i64 2152399950, i64 2152399984}
!11 = !{i64 2152400941, i64 2152401423, i64 2152400978, i64 2152401034, i64 2152401068, i64 2152401092, i64 2152401133, i64 2152401154, i64 2152401182, i64 2152401216}
!12 = !{!"auto-init"}
