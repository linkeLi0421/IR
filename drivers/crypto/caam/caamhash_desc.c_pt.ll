; ModuleID = '/llk/IR/drivers/crypto/caam/caamhash_desc.c_pt.bc'
source_filename = "../drivers/crypto/caam/caamhash_desc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_ahash\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_sk_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_sk_hash\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_sk_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.alginfo = type { i32, i32, i32, i32, ptr, i8 }

@__kstrtab_cnstr_shdsc_ahash = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_ahash = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_ahash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_ahash to i32), ptr @__kstrtab_cnstr_shdsc_ahash, ptr @__kstrtabns_cnstr_shdsc_ahash }, section "___ksymtab+cnstr_shdsc_ahash", align 4
@__kstrtab_cnstr_shdsc_sk_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_sk_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_sk_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_sk_hash to i32), ptr @__kstrtab_cnstr_shdsc_sk_hash, ptr @__kstrtabns_cnstr_shdsc_sk_hash }, section "___ksymtab+cnstr_shdsc_sk_hash", align 4
@__UNIQUE_ID_license467 = internal constant [21 x i8] c"license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description468 = internal constant [47 x i8] c"description=FSL CAAM ahash descriptors support\00", section ".modinfo", align 1
@__UNIQUE_ID_author469 = internal constant [26 x i8] c"author=NXP Semiconductors\00", section ".modinfo", align 1
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author469, ptr @__UNIQUE_ID_description468, ptr @__UNIQUE_ID_license467, ptr @__ksymtab_cnstr_shdsc_ahash, ptr @__ksymtab_cnstr_shdsc_sk_hash], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_ahash(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = load i32, ptr %1, align 4
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 16941240, i32 -1199570431
  store i32 %11, ptr %0, align 4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %249, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %249, label %17

17:                                               ; preds = %13
  %18 = load i8, ptr @caam_little_end, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  %20 = lshr i32 %11, 24
  %21 = select i1 %19, i32 %20, i32 %11
  %22 = and i32 %21, 57
  %23 = getelementptr i32, ptr %0, i32 %22
  %24 = select i1 %19, i32 4194465, i32 -1593819136
  store i32 %24, ptr %23, align 4
  %25 = load i32, ptr %0, align 4
  %26 = load i8, ptr @caam_little_end, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #3
  %29 = select i1 %27, i32 %28, i32 %25
  %30 = add i32 %29, 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  %32 = select i1 %27, i32 %31, i32 %30
  store i32 %32, ptr %0, align 4
  %33 = icmp slt i32 %6, 6
  br i1 %33, label %34, label %77

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %14, align 4
  %40 = or i32 %39, 79888384
  %41 = load i8, ptr @caam_little_end, align 1, !range !8
  %42 = icmp eq i8 %41, 0
  %43 = lshr i32 %32, 24
  %44 = select i1 %42, i32 %43, i32 %32
  %45 = and i32 %44, 127
  %46 = getelementptr i32, ptr %0, i32 %45
  %47 = tail call i32 @llvm.bswap.i32(i32 %40) #3
  %48 = select i1 %42, i32 %47, i32 %40
  store i32 %48, ptr %46, align 4
  %49 = load i32, ptr %0, align 4
  %50 = load i8, ptr @caam_little_end, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #3
  %53 = select i1 %51, i32 %52, i32 %49
  %54 = add i32 %53, 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #3
  %56 = select i1 %51, i32 %55, i32 %54
  store i32 %56, ptr %0, align 4
  %57 = icmp eq i32 %38, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %34
  %59 = load i8, ptr @caam_little_end, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = lshr i32 %56, 24
  %62 = select i1 %60, i32 %61, i32 %56
  %63 = and i32 %62, 127
  %64 = getelementptr i32, ptr %0, i32 %63
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %64, ptr align 1 %36, i32 %38, i1 false) #3
  %65 = load i32, ptr %0, align 4
  br label %66

66:                                               ; preds = %58, %34
  %67 = phi i32 [ %56, %34 ], [ %65, %58 ]
  %68 = load i8, ptr @caam_little_end, align 1, !range !8
  %69 = icmp eq i8 %68, 0
  %70 = tail call i32 @llvm.bswap.i32(i32 %67) #3
  %71 = select i1 %69, i32 %70, i32 %67
  %72 = add i32 %38, 3
  %73 = lshr i32 %72, 2
  %74 = add i32 %71, %73
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #3
  %76 = select i1 %69, i32 %75, i32 %74
  br label %232

77:                                               ; preds = %17
  %78 = load i32, ptr %1, align 4
  %79 = and i32 %78, 983040
  %80 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %81 = load i8, ptr %80, align 4, !range !8
  %82 = icmp eq i8 %81, 0
  %83 = load i32, ptr %14, align 4
  br i1 %82, label %193, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %83, %86
  %88 = or i32 %83, %79
  br i1 %87, label %89, label %132

89:                                               ; preds = %84
  %90 = or i32 %88, -2145353728
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %32, 24
  %94 = select i1 %92, i32 %93, i32 %32
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %90) #3
  %98 = select i1 %92, i32 %97, i32 %90
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #3
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = add i32 %103, 1
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #3
  %106 = select i1 %101, i32 %105, i32 %104
  store i32 %106, ptr %0, align 4
  %107 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = load i8, ptr @caam_little_end, align 1, !range !8
  %110 = icmp eq i8 %109, 0
  %111 = lshr i32 %106, 24
  %112 = select i1 %110, i32 %111, i32 %106
  %113 = and i32 %112, 127
  %114 = getelementptr i32, ptr %0, i32 %113
  %115 = tail call i32 @llvm.bswap.i32(i32 %108) #3
  %116 = select i1 %110, i32 %115, i32 %108
  store i32 %116, ptr %114, align 4
  %117 = load i32, ptr %0, align 4
  %118 = load i8, ptr @caam_little_end, align 1, !range !8
  %119 = icmp eq i8 %118, 0
  %120 = tail call i32 @llvm.bswap.i32(i32 %117) #3
  %121 = select i1 %119, i32 %120, i32 %117
  %122 = load i32, ptr @caam_ptr_sz, align 4
  %123 = lshr i32 %122, 2
  %124 = add i32 %121, %123
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #3
  %126 = select i1 %119, i32 %125, i32 %124
  store i32 %126, ptr %0, align 4
  %127 = load i32, ptr %85, align 4
  %128 = add i32 %127, 3
  %129 = and i32 %128, -4
  %130 = load i32, ptr @caam_ptr_sz, align 4
  %131 = sub i32 %129, %130
  br label %180

132:                                              ; preds = %84
  %133 = or i32 %88, -2145386496
  %134 = load i8, ptr @caam_little_end, align 1, !range !8
  %135 = icmp eq i8 %134, 0
  %136 = lshr i32 %32, 24
  %137 = select i1 %135, i32 %136, i32 %32
  %138 = and i32 %137, 127
  %139 = getelementptr i32, ptr %0, i32 %138
  %140 = tail call i32 @llvm.bswap.i32(i32 %133) #3
  %141 = select i1 %135, i32 %140, i32 %133
  store i32 %141, ptr %139, align 4
  %142 = load i32, ptr %0, align 4
  %143 = load i8, ptr @caam_little_end, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  %145 = tail call i32 @llvm.bswap.i32(i32 %142) #3
  %146 = select i1 %144, i32 %145, i32 %142
  %147 = add i32 %146, 1
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #3
  %149 = select i1 %144, i32 %148, i32 %147
  store i32 %149, ptr %0, align 4
  %150 = load i32, ptr %14, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %132
  %153 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %154 = load ptr, ptr %153, align 4
  %155 = load i8, ptr @caam_little_end, align 1, !range !8
  %156 = icmp eq i8 %155, 0
  %157 = lshr i32 %149, 24
  %158 = select i1 %156, i32 %157, i32 %149
  %159 = and i32 %158, 127
  %160 = getelementptr i32, ptr %0, i32 %159
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %160, ptr align 1 %154, i32 %150, i1 false) #3
  %161 = load i32, ptr %0, align 4
  br label %162

162:                                              ; preds = %152, %132
  %163 = phi i32 [ %149, %132 ], [ %161, %152 ]
  %164 = load i8, ptr @caam_little_end, align 1, !range !8
  %165 = icmp eq i8 %164, 0
  %166 = tail call i32 @llvm.bswap.i32(i32 %163) #3
  %167 = select i1 %165, i32 %166, i32 %163
  %168 = add i32 %150, 3
  %169 = lshr i32 %168, 2
  %170 = add i32 %167, %169
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #3
  %172 = select i1 %165, i32 %171, i32 %170
  store i32 %172, ptr %0, align 4
  %173 = load i32, ptr %85, align 4
  %174 = add i32 %173, 3
  %175 = and i32 %174, -4
  %176 = load i32, ptr %14, align 4
  %177 = add i32 %176, 3
  %178 = and i32 %177, -4
  %179 = sub i32 %175, %178
  br label %180

180:                                              ; preds = %162, %89
  %181 = phi i32 [ %126, %89 ], [ %172, %162 ]
  %182 = phi i32 [ %131, %89 ], [ %179, %162 ]
  %183 = icmp ult i32 %182, 4
  br i1 %183, label %234, label %184

184:                                              ; preds = %180
  %185 = lshr i32 %182, 2
  %186 = load i8, ptr @caam_little_end, align 1, !range !8
  %187 = icmp eq i8 %186, 0
  %188 = tail call i32 @llvm.bswap.i32(i32 %181) #3
  %189 = select i1 %187, i32 %188, i32 %181
  %190 = add i32 %189, %185
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #3
  %192 = select i1 %187, i32 %191, i32 %190
  br label %232

193:                                              ; preds = %77
  %194 = or i32 %83, %79
  %195 = or i32 %194, -2145345536
  %196 = load i8, ptr @caam_little_end, align 1, !range !8
  %197 = icmp eq i8 %196, 0
  %198 = lshr i32 %32, 24
  %199 = select i1 %197, i32 %198, i32 %32
  %200 = and i32 %199, 127
  %201 = getelementptr i32, ptr %0, i32 %200
  %202 = tail call i32 @llvm.bswap.i32(i32 %195) #3
  %203 = select i1 %197, i32 %202, i32 %195
  store i32 %203, ptr %201, align 4
  %204 = load i32, ptr %0, align 4
  %205 = load i8, ptr @caam_little_end, align 1, !range !8
  %206 = icmp eq i8 %205, 0
  %207 = tail call i32 @llvm.bswap.i32(i32 %204) #3
  %208 = select i1 %206, i32 %207, i32 %204
  %209 = add i32 %208, 1
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #3
  %211 = select i1 %206, i32 %210, i32 %209
  store i32 %211, ptr %0, align 4
  %212 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %213 = load i32, ptr %212, align 4
  %214 = load i8, ptr @caam_little_end, align 1, !range !8
  %215 = icmp eq i8 %214, 0
  %216 = lshr i32 %211, 24
  %217 = select i1 %215, i32 %216, i32 %211
  %218 = and i32 %217, 127
  %219 = getelementptr i32, ptr %0, i32 %218
  %220 = tail call i32 @llvm.bswap.i32(i32 %213) #3
  %221 = select i1 %215, i32 %220, i32 %213
  store i32 %221, ptr %219, align 4
  %222 = load i32, ptr %0, align 4
  %223 = load i8, ptr @caam_little_end, align 1, !range !8
  %224 = icmp eq i8 %223, 0
  %225 = tail call i32 @llvm.bswap.i32(i32 %222) #3
  %226 = select i1 %224, i32 %225, i32 %222
  %227 = load i32, ptr @caam_ptr_sz, align 4
  %228 = lshr i32 %227, 2
  %229 = add i32 %226, %228
  %230 = tail call i32 @llvm.bswap.i32(i32 %229) #3
  %231 = select i1 %224, i32 %230, i32 %229
  br label %232

232:                                              ; preds = %193, %184, %66
  %233 = phi i32 [ %76, %66 ], [ %192, %184 ], [ %231, %193 ]
  store i32 %233, ptr %0, align 4
  br label %234

234:                                              ; preds = %232, %180
  %235 = phi i32 [ %181, %180 ], [ %233, %232 ]
  %236 = load i32, ptr %23, align 4
  %237 = load i8, ptr @caam_little_end, align 1, !range !8
  %238 = icmp eq i8 %237, 0
  %239 = tail call i32 @llvm.bswap.i32(i32 %236) #3
  %240 = select i1 %238, i32 %239, i32 %236
  %241 = lshr i32 %235, 24
  %242 = select i1 %238, i32 %241, i32 %235
  %243 = and i32 %242, 127
  %244 = sub nsw i32 %243, %22
  %245 = or i32 %244, %240
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #3
  %247 = select i1 %238, i32 %246, i32 %245
  store i32 %247, ptr %23, align 4
  %248 = or i32 %8, 64
  br label %249

249:                                              ; preds = %234, %13, %7
  %250 = phi i32 [ %248, %234 ], [ %8, %13 ], [ %8, %7 ]
  br i1 %5, label %253, label %251

251:                                              ; preds = %249
  %252 = load i32, ptr %0, align 4
  br label %272

253:                                              ; preds = %249
  %254 = or i32 %4, 471859200
  %255 = load i32, ptr %0, align 4
  %256 = load i8, ptr @caam_little_end, align 1, !range !8
  %257 = icmp eq i8 %256, 0
  %258 = lshr i32 %255, 24
  %259 = select i1 %257, i32 %258, i32 %255
  %260 = and i32 %259, 127
  %261 = getelementptr i32, ptr %0, i32 %260
  %262 = tail call i32 @llvm.bswap.i32(i32 %254) #3
  %263 = select i1 %257, i32 %262, i32 %254
  store i32 %263, ptr %261, align 4
  %264 = load i32, ptr %0, align 4
  %265 = load i8, ptr @caam_little_end, align 1, !range !8
  %266 = icmp eq i8 %265, 0
  %267 = tail call i32 @llvm.bswap.i32(i32 %264) #3
  %268 = select i1 %266, i32 %267, i32 %264
  %269 = add i32 %268, 1
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #3
  %271 = select i1 %266, i32 %270, i32 %269
  store i32 %271, ptr %0, align 4
  br label %272

272:                                              ; preds = %253, %251
  %273 = phi i32 [ %252, %251 ], [ %271, %253 ]
  %274 = or i32 %250, %2
  %275 = or i32 %274, -2147483647
  %276 = load i8, ptr @caam_little_end, align 1, !range !8
  %277 = icmp eq i8 %276, 0
  %278 = lshr i32 %273, 24
  %279 = select i1 %277, i32 %278, i32 %273
  %280 = and i32 %279, 127
  %281 = getelementptr i32, ptr %0, i32 %280
  %282 = tail call i32 @llvm.bswap.i32(i32 %275) #3
  %283 = select i1 %277, i32 %282, i32 %275
  store i32 %283, ptr %281, align 4
  %284 = load i32, ptr %0, align 4
  %285 = load i8, ptr @caam_little_end, align 1, !range !8
  %286 = icmp eq i8 %285, 0
  %287 = tail call i32 @llvm.bswap.i32(i32 %284) #3
  %288 = select i1 %286, i32 %287, i32 %284
  %289 = add i32 %288, 1
  %290 = tail call i32 @llvm.bswap.i32(i32 %289) #3
  %291 = select i1 %286, i32 %290, i32 %289
  store i32 %291, ptr %0, align 4
  %292 = load i8, ptr @caam_little_end, align 1, !range !8
  %293 = icmp eq i8 %292, 0
  %294 = lshr i32 %291, 24
  %295 = select i1 %293, i32 %294, i32 %291
  %296 = and i32 %295, 127
  %297 = getelementptr i32, ptr %0, i32 %296
  %298 = select i1 %293, i32 67766440, i32 -1475868156
  store i32 %298, ptr %297, align 4
  %299 = load i32, ptr %0, align 4
  %300 = load i8, ptr @caam_little_end, align 1, !range !8
  %301 = icmp eq i8 %300, 0
  %302 = tail call i32 @llvm.bswap.i32(i32 %299) #3
  %303 = select i1 %301, i32 %302, i32 %299
  %304 = add i32 %303, 1
  %305 = tail call i32 @llvm.bswap.i32(i32 %304) #3
  %306 = select i1 %301, i32 %305, i32 %304
  store i32 %306, ptr %0, align 4
  %307 = load i8, ptr @caam_little_end, align 1, !range !8
  %308 = icmp eq i8 %307, 0
  %309 = lshr i32 %306, 24
  %310 = select i1 %308, i32 %309, i32 %306
  %311 = and i32 %310, 127
  %312 = getelementptr i32, ptr %0, i32 %311
  %313 = select i1 %308, i32 5165, i32 756285440
  store i32 %313, ptr %312, align 4
  %314 = load i32, ptr %0, align 4
  %315 = load i8, ptr @caam_little_end, align 1, !range !8
  %316 = icmp eq i8 %315, 0
  %317 = tail call i32 @llvm.bswap.i32(i32 %314) #3
  %318 = select i1 %316, i32 %317, i32 %314
  %319 = add i32 %318, 1
  %320 = tail call i32 @llvm.bswap.i32(i32 %319) #3
  %321 = select i1 %316, i32 %320, i32 %319
  store i32 %321, ptr %0, align 4
  %322 = or i32 %3, 1545601024
  %323 = load i8, ptr @caam_little_end, align 1, !range !8
  %324 = icmp eq i8 %323, 0
  %325 = lshr i32 %321, 24
  %326 = select i1 %324, i32 %325, i32 %321
  %327 = and i32 %326, 127
  %328 = getelementptr i32, ptr %0, i32 %327
  %329 = tail call i32 @llvm.bswap.i32(i32 %322) #3
  %330 = select i1 %324, i32 %329, i32 %322
  store i32 %330, ptr %328, align 4
  %331 = load i32, ptr %0, align 4
  %332 = load i8, ptr @caam_little_end, align 1, !range !8
  %333 = icmp eq i8 %332, 0
  %334 = tail call i32 @llvm.bswap.i32(i32 %331) #3
  %335 = select i1 %333, i32 %334, i32 %331
  %336 = add i32 %335, 1
  %337 = tail call i32 @llvm.bswap.i32(i32 %336) #3
  %338 = select i1 %333, i32 %337, i32 %336
  store i32 %338, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_sk_hash(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load i8, ptr @caam_little_end, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 17989816, i32 -1199566335
  store i32 %8, ptr %0, align 4
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = lshr i32 %8, 24
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = and i32 %12, 57
  %14 = getelementptr i32, ptr %0, i32 %13
  %15 = select i1 %10, i32 4194465, i32 -1593819136
  store i32 %15, ptr %14, align 4
  %16 = load i32, ptr %0, align 4
  %17 = load i8, ptr @caam_little_end, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #3
  %20 = select i1 %18, i32 %19, i32 %16
  %21 = add i32 %20, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #3
  %23 = select i1 %18, i32 %22, i32 %21
  store i32 %23, ptr %0, align 4
  %24 = icmp eq i32 %2, 4
  switch i32 %2, label %67 [
    i32 12, label %25
    i32 4, label %25
  ]

25:                                               ; preds = %5, %5
  %26 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 41943040
  %31 = load i8, ptr @caam_little_end, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = lshr i32 %23, 24
  %34 = select i1 %32, i32 %33, i32 %23
  %35 = and i32 %34, 127
  %36 = getelementptr i32, ptr %0, i32 %35
  %37 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  %38 = select i1 %32, i32 %37, i32 %30
  store i32 %38, ptr %36, align 4
  %39 = load i32, ptr %0, align 4
  %40 = load i8, ptr @caam_little_end, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #3
  %43 = select i1 %41, i32 %42, i32 %39
  %44 = add i32 %43, 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #3
  %46 = select i1 %41, i32 %45, i32 %44
  store i32 %46, ptr %0, align 4
  %47 = icmp eq i32 %29, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %25
  %49 = load i8, ptr @caam_little_end, align 1, !range !8
  %50 = icmp eq i8 %49, 0
  %51 = lshr i32 %46, 24
  %52 = select i1 %50, i32 %51, i32 %46
  %53 = and i32 %52, 127
  %54 = getelementptr i32, ptr %0, i32 %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %54, ptr align 1 %27, i32 %29, i1 false) #3
  %55 = load i32, ptr %0, align 4
  br label %56

56:                                               ; preds = %48, %25
  %57 = phi i32 [ %46, %25 ], [ %55, %48 ]
  %58 = load i8, ptr @caam_little_end, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  %60 = tail call i32 @llvm.bswap.i32(i32 %57) #3
  %61 = select i1 %59, i32 %60, i32 %57
  %62 = add i32 %29, 3
  %63 = lshr i32 %62, 2
  %64 = add i32 %61, %63
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #3
  %66 = select i1 %59, i32 %65, i32 %64
  br label %172

67:                                               ; preds = %5
  %68 = load i32, ptr %1, align 4
  %69 = and i32 %68, 16719856
  %70 = icmp eq i32 %69, 1050368
  br i1 %70, label %71, label %111

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = or i32 %75, 37748736
  %77 = load i8, ptr @caam_little_end, align 1, !range !8
  %78 = icmp eq i8 %77, 0
  %79 = lshr i32 %23, 24
  %80 = select i1 %78, i32 %79, i32 %23
  %81 = and i32 %80, 127
  %82 = getelementptr i32, ptr %0, i32 %81
  %83 = tail call i32 @llvm.bswap.i32(i32 %76) #3
  %84 = select i1 %78, i32 %83, i32 %76
  store i32 %84, ptr %82, align 4
  %85 = load i32, ptr %0, align 4
  %86 = load i8, ptr @caam_little_end, align 1, !range !8
  %87 = icmp eq i8 %86, 0
  %88 = tail call i32 @llvm.bswap.i32(i32 %85) #3
  %89 = select i1 %87, i32 %88, i32 %85
  %90 = add i32 %89, 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #3
  %92 = select i1 %87, i32 %91, i32 %90
  store i32 %92, ptr %0, align 4
  %93 = load i8, ptr @caam_little_end, align 1, !range !8
  %94 = icmp eq i8 %93, 0
  %95 = lshr i32 %92, 24
  %96 = select i1 %94, i32 %95, i32 %92
  %97 = and i32 %96, 127
  %98 = getelementptr i32, ptr %0, i32 %97
  %99 = tail call i32 @llvm.bswap.i32(i32 %73) #3
  %100 = select i1 %94, i32 %99, i32 %73
  store i32 %100, ptr %98, align 4
  %101 = load i32, ptr %0, align 4
  %102 = load i8, ptr @caam_little_end, align 1, !range !8
  %103 = icmp eq i8 %102, 0
  %104 = tail call i32 @llvm.bswap.i32(i32 %101) #3
  %105 = select i1 %103, i32 %104, i32 %101
  %106 = load i32, ptr @caam_ptr_sz, align 4
  %107 = lshr i32 %106, 2
  %108 = add i32 %105, %107
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #3
  %110 = select i1 %103, i32 %109, i32 %108
  br label %153

111:                                              ; preds = %67
  %112 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = or i32 %115, 41943040
  %117 = load i8, ptr @caam_little_end, align 1, !range !8
  %118 = icmp eq i8 %117, 0
  %119 = lshr i32 %23, 24
  %120 = select i1 %118, i32 %119, i32 %23
  %121 = and i32 %120, 127
  %122 = getelementptr i32, ptr %0, i32 %121
  %123 = tail call i32 @llvm.bswap.i32(i32 %116) #3
  %124 = select i1 %118, i32 %123, i32 %116
  store i32 %124, ptr %122, align 4
  %125 = load i32, ptr %0, align 4
  %126 = load i8, ptr @caam_little_end, align 1, !range !8
  %127 = icmp eq i8 %126, 0
  %128 = tail call i32 @llvm.bswap.i32(i32 %125) #3
  %129 = select i1 %127, i32 %128, i32 %125
  %130 = add i32 %129, 1
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #3
  %132 = select i1 %127, i32 %131, i32 %130
  store i32 %132, ptr %0, align 4
  %133 = icmp eq i32 %115, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %111
  %135 = load i8, ptr @caam_little_end, align 1, !range !8
  %136 = icmp eq i8 %135, 0
  %137 = lshr i32 %132, 24
  %138 = select i1 %136, i32 %137, i32 %132
  %139 = and i32 %138, 127
  %140 = getelementptr i32, ptr %0, i32 %139
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %140, ptr align 1 %113, i32 %115, i1 false) #3
  %141 = load i32, ptr %0, align 4
  br label %142

142:                                              ; preds = %134, %111
  %143 = phi i32 [ %132, %111 ], [ %141, %134 ]
  %144 = load i8, ptr @caam_little_end, align 1, !range !8
  %145 = icmp eq i8 %144, 0
  %146 = tail call i32 @llvm.bswap.i32(i32 %143) #3
  %147 = select i1 %145, i32 %146, i32 %143
  %148 = add i32 %115, 3
  %149 = lshr i32 %148, 2
  %150 = add i32 %147, %149
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #3
  %152 = select i1 %145, i32 %151, i32 %150
  br label %153

153:                                              ; preds = %142, %71
  %154 = phi i32 [ %152, %142 ], [ %110, %71 ]
  store i32 %154, ptr %0, align 4
  %155 = or i32 %4, 438304768
  %156 = load i8, ptr @caam_little_end, align 1, !range !8
  %157 = icmp eq i8 %156, 0
  %158 = lshr i32 %154, 24
  %159 = select i1 %157, i32 %158, i32 %154
  %160 = and i32 %159, 127
  %161 = getelementptr i32, ptr %0, i32 %160
  %162 = tail call i32 @llvm.bswap.i32(i32 %155) #3
  %163 = select i1 %157, i32 %162, i32 %155
  store i32 %163, ptr %161, align 4
  %164 = load i32, ptr %0, align 4
  %165 = load i8, ptr @caam_little_end, align 1, !range !8
  %166 = icmp eq i8 %165, 0
  %167 = tail call i32 @llvm.bswap.i32(i32 %164) #3
  %168 = select i1 %166, i32 %167, i32 %164
  %169 = add i32 %168, 1
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #3
  %171 = select i1 %166, i32 %170, i32 %169
  br label %172

172:                                              ; preds = %153, %56
  %173 = phi i32 [ %66, %56 ], [ %171, %153 ]
  store i32 %173, ptr %0, align 4
  %174 = load i32, ptr %14, align 4
  %175 = load i8, ptr @caam_little_end, align 1, !range !8
  %176 = icmp eq i8 %175, 0
  %177 = tail call i32 @llvm.bswap.i32(i32 %174) #3
  %178 = select i1 %176, i32 %177, i32 %174
  %179 = lshr i32 %173, 24
  %180 = select i1 %176, i32 %179, i32 %173
  %181 = and i32 %180, 127
  %182 = sub nsw i32 %181, %13
  %183 = or i32 %182, %178
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #3
  %185 = select i1 %176, i32 %184, i32 %183
  store i32 %185, ptr %14, align 4
  %186 = load i32, ptr %1, align 4
  %187 = or i32 %186, %2
  %188 = or i32 %187, -2147483647
  %189 = load i32, ptr %0, align 4
  %190 = load i8, ptr @caam_little_end, align 1, !range !8
  %191 = icmp eq i8 %190, 0
  %192 = lshr i32 %189, 24
  %193 = select i1 %191, i32 %192, i32 %189
  %194 = and i32 %193, 127
  %195 = getelementptr i32, ptr %0, i32 %194
  %196 = tail call i32 @llvm.bswap.i32(i32 %188) #3
  %197 = select i1 %191, i32 %196, i32 %188
  store i32 %197, ptr %195, align 4
  %198 = load i32, ptr %0, align 4
  %199 = load i8, ptr @caam_little_end, align 1, !range !8
  %200 = icmp eq i8 %199, 0
  %201 = tail call i32 @llvm.bswap.i32(i32 %198) #3
  %202 = select i1 %200, i32 %201, i32 %198
  %203 = add i32 %202, 1
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #3
  %205 = select i1 %200, i32 %204, i32 %203
  store i32 %205, ptr %0, align 4
  %206 = load i8, ptr @caam_little_end, align 1, !range !8
  %207 = icmp eq i8 %206, 0
  %208 = lshr i32 %205, 24
  %209 = select i1 %207, i32 %208, i32 %205
  %210 = and i32 %209, 127
  %211 = getelementptr i32, ptr %0, i32 %210
  %212 = select i1 %207, i32 67766440, i32 -1475868156
  store i32 %212, ptr %211, align 4
  %213 = load i32, ptr %0, align 4
  %214 = load i8, ptr @caam_little_end, align 1, !range !8
  %215 = icmp eq i8 %214, 0
  %216 = tail call i32 @llvm.bswap.i32(i32 %213) #3
  %217 = select i1 %215, i32 %216, i32 %213
  %218 = add i32 %217, 1
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #3
  %220 = select i1 %215, i32 %219, i32 %218
  store i32 %220, ptr %0, align 4
  %221 = load i8, ptr @caam_little_end, align 1, !range !8
  %222 = icmp eq i8 %221, 0
  %223 = lshr i32 %220, 24
  %224 = select i1 %222, i32 %223, i32 %220
  %225 = and i32 %224, 127
  %226 = getelementptr i32, ptr %0, i32 %225
  %227 = select i1 %222, i32 4651, i32 722599936
  store i32 %227, ptr %226, align 4
  %228 = load i32, ptr %0, align 4
  %229 = load i8, ptr @caam_little_end, align 1, !range !8
  %230 = icmp eq i8 %229, 0
  %231 = tail call i32 @llvm.bswap.i32(i32 %228) #3
  %232 = select i1 %230, i32 %231, i32 %228
  %233 = add i32 %232, 1
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #3
  %235 = select i1 %230, i32 %234, i32 %233
  store i32 %235, ptr %0, align 4
  %236 = or i32 %3, 1512046592
  %237 = load i8, ptr @caam_little_end, align 1, !range !8
  %238 = icmp eq i8 %237, 0
  %239 = lshr i32 %235, 24
  %240 = select i1 %238, i32 %239, i32 %235
  %241 = and i32 %240, 127
  %242 = getelementptr i32, ptr %0, i32 %241
  %243 = tail call i32 @llvm.bswap.i32(i32 %236) #3
  %244 = select i1 %238, i32 %243, i32 %236
  store i32 %244, ptr %242, align 4
  %245 = load i32, ptr %0, align 4
  %246 = load i8, ptr @caam_little_end, align 1, !range !8
  %247 = icmp eq i8 %246, 0
  %248 = tail call i32 @llvm.bswap.i32(i32 %245) #3
  %249 = select i1 %247, i32 %248, i32 %245
  %250 = add i32 %249, 1
  %251 = tail call i32 @llvm.bswap.i32(i32 %250) #3
  %252 = select i1 %247, i32 %251, i32 %250
  store i32 %252, ptr %0, align 4
  %253 = load i32, ptr %1, align 4
  %254 = and i32 %253, 16719856
  %255 = icmp eq i32 %254, 1050368
  %256 = and i1 %24, %255
  br i1 %256, label %257, label %297

257:                                              ; preds = %172
  %258 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = or i32 %261, 1646526464
  %263 = load i8, ptr @caam_little_end, align 1, !range !8
  %264 = icmp eq i8 %263, 0
  %265 = lshr i32 %252, 24
  %266 = select i1 %264, i32 %265, i32 %252
  %267 = and i32 %266, 127
  %268 = getelementptr i32, ptr %0, i32 %267
  %269 = tail call i32 @llvm.bswap.i32(i32 %262) #3
  %270 = select i1 %264, i32 %269, i32 %262
  store i32 %270, ptr %268, align 4
  %271 = load i32, ptr %0, align 4
  %272 = load i8, ptr @caam_little_end, align 1, !range !8
  %273 = icmp eq i8 %272, 0
  %274 = tail call i32 @llvm.bswap.i32(i32 %271) #3
  %275 = select i1 %273, i32 %274, i32 %271
  %276 = add i32 %275, 1
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #3
  %278 = select i1 %273, i32 %277, i32 %276
  store i32 %278, ptr %0, align 4
  %279 = load i8, ptr @caam_little_end, align 1, !range !8
  %280 = icmp eq i8 %279, 0
  %281 = lshr i32 %278, 24
  %282 = select i1 %280, i32 %281, i32 %278
  %283 = and i32 %282, 127
  %284 = getelementptr i32, ptr %0, i32 %283
  %285 = tail call i32 @llvm.bswap.i32(i32 %259) #3
  %286 = select i1 %280, i32 %285, i32 %259
  store i32 %286, ptr %284, align 4
  %287 = load i32, ptr %0, align 4
  %288 = load i8, ptr @caam_little_end, align 1, !range !8
  %289 = icmp eq i8 %288, 0
  %290 = tail call i32 @llvm.bswap.i32(i32 %287) #3
  %291 = select i1 %289, i32 %290, i32 %287
  %292 = load i32, ptr @caam_ptr_sz, align 4
  %293 = lshr i32 %292, 2
  %294 = add i32 %291, %293
  %295 = tail call i32 @llvm.bswap.i32(i32 %294) #3
  %296 = select i1 %289, i32 %295, i32 %294
  store i32 %296, ptr %0, align 4
  br label %297

297:                                              ; preds = %257, %172
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i8 0, i8 2}
