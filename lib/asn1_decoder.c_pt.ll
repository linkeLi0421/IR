; ModuleID = '/llk/IR/lib/asn1_decoder.c_pt.bc'
source_filename = "../lib/asn1_decoder.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asn1_ber_decoder:\09\09\09\09\09"
module asm "\09.asciz \09\22asn1_ber_decoder\22\09\09\09\09\09"
module asm "__kstrtabns_asn1_ber_decoder:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.asn1_decoder = type { ptr, i32, ptr }

@asn1_op_lengths = internal unnamed_addr constant [41 x i8] c"\02\02\03\03\03\03\00\00\01\01\02\02\00\00\00\00\00\02\00\03\00\03\00\00\01\01\02\02\01\01\02\02\01\01\02\02\02\02\03\03\01", align 1
@.str = private unnamed_addr constant [64 x i8] c"\013ASN.1 decoder error: Stacks not empty at completion (%u, %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\013ASN.1 decoder error: Found reserved opcode (%u) pc=%zu\0A\00", align 1
@__kstrtab_asn1_ber_decoder = external dso_local constant [0 x i8], align 1
@__kstrtabns_asn1_ber_decoder = external dso_local constant [0 x i8], align 1
@__ksymtab_asn1_ber_decoder = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asn1_ber_decoder to i32), ptr @__kstrtab_asn1_ber_decoder, ptr @__kstrtabns_asn1_ber_decoder }, section "___ksymtab_gpl+asn1_ber_decoder", align 4
@__UNIQUE_ID_file100 = internal constant [35 x i8] c"asn1_decoder.file=lib/asn1_decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [25 x i8] c"asn1_decoder.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab_asn1_ber_decoder], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asn1_ber_decoder(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [10 x i16], align 2
  %6 = alloca [10 x i16], align 2
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.asn1_decoder, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.asn1_decoder, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %7, i8 0, i32 10, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %8) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %8, i8 0, i32 10, i1 false), !annotation !8
  %14 = icmp ugt i32 %3, 65535
  br i1 %14, label %411, label %15

15:                                               ; preds = %4
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %411, label %17, !prof !9

17:                                               ; preds = %143, %15
  %18 = phi i32 [ %153, %143 ], [ %3, %15 ]
  %19 = phi i8 [ %152, %143 ], [ 0, %15 ]
  %20 = phi i8 [ %151, %143 ], [ 0, %15 ]
  %21 = phi i8 [ %150, %143 ], [ 0, %15 ]
  %22 = phi i8 [ %149, %143 ], [ 0, %15 ]
  %23 = phi i32 [ %148, %143 ], [ 0, %15 ]
  %24 = phi i32 [ %147, %143 ], [ 0, %15 ]
  %25 = phi i8 [ %146, %143 ], [ 0, %15 ]
  %26 = phi i32 [ %145, %143 ], [ 0, %15 ]
  %27 = phi i32 [ %144, %143 ], [ 0, %15 ]
  %28 = getelementptr i8, ptr %9, i32 %23
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr [41 x i8], ptr @asn1_op_lengths, i32 0, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = add i32 %23, %33
  %35 = icmp ugt i32 %34, %13
  br i1 %35, label %411, label %36, !prof !9

36:                                               ; preds = %17
  %37 = icmp ult i8 %29, 28
  br i1 %37, label %38, label %155

38:                                               ; preds = %36
  %39 = and i32 %30, 16
  %40 = icmp eq i32 %39, 0
  %41 = and i8 %25, 2
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = and i32 %30, 1
  %46 = icmp eq i32 %45, 0
  %47 = xor i1 %46, true
  %48 = icmp eq i32 %18, %24
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %38
  %51 = and i8 %25, -5
  br label %143

52:                                               ; preds = %44
  %53 = sub i32 %18, %24
  %54 = icmp ult i32 %53, 2
  br i1 %54, label %411, label %55, !prof !9

55:                                               ; preds = %52
  %56 = add i32 %24, 1
  %57 = getelementptr i8, ptr %2, i32 %24
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 31
  %61 = icmp eq i32 %60, 31
  br i1 %61, label %411, label %62, !prof !9

62:                                               ; preds = %55
  %63 = and i32 %30, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = add nuw i32 %23, 1
  %67 = getelementptr i8, ptr %9, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 32
  %70 = xor i8 %68, %58
  %71 = xor i8 %69, -1
  %72 = and i8 %70, %71
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %65
  br i1 %46, label %411, label %143

75:                                               ; preds = %65, %62
  %76 = phi i8 [ %69, %65 ], [ 0, %62 ]
  %77 = or i8 %76, 2
  %78 = add i32 %24, 2
  %79 = getelementptr i8, ptr %2, i32 %56
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp slt i8 %80, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %75
  %84 = icmp eq i8 %80, -128
  br i1 %84, label %85, label %92, !prof !9

85:                                               ; preds = %83
  %86 = and i32 %59, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %411, label %88, !prof !9

88:                                               ; preds = %85
  %89 = or i8 %76, 3
  %90 = sub i32 %18, %78
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %411, label %120, !prof !9

92:                                               ; preds = %83
  %93 = add nsw i32 %81, -128
  %94 = icmp ugt i8 %80, -126
  %95 = sub i32 %18, %78
  %96 = icmp ugt i32 %93, %95
  %97 = select i1 %94, i1 true, i1 %96
  br i1 %97, label %411, label %98, !prof !10

98:                                               ; preds = %92
  %99 = add i8 %80, -126
  %100 = add i32 %24, -126
  br label %101

101:                                              ; preds = %101, %98
  %102 = phi i32 [ %111, %101 ], [ %93, %98 ]
  %103 = phi i32 [ %106, %101 ], [ %78, %98 ]
  %104 = phi i32 [ %110, %101 ], [ 0, %98 ]
  %105 = shl i32 %104, 8
  %106 = add i32 %103, 1
  %107 = getelementptr i8, ptr %2, i32 %103
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %105, %109
  %111 = add nsw i32 %102, -1
  %112 = icmp sgt i32 %102, 1
  br i1 %112, label %101, label %113

113:                                              ; preds = %101
  %114 = add i32 %100, %81
  %115 = sub i32 %18, %114
  %116 = icmp ugt i32 %110, %115
  br i1 %116, label %411, label %120

117:                                              ; preds = %75
  %118 = sub i32 %18, %78
  %119 = icmp ult i32 %118, %81
  br i1 %119, label %411, label %120, !prof !9

120:                                              ; preds = %117, %113, %88
  %121 = phi i32 [ 128, %88 ], [ %110, %113 ], [ %81, %117 ]
  %122 = phi i8 [ %89, %88 ], [ %77, %113 ], [ %77, %117 ]
  %123 = phi i32 [ %78, %88 ], [ %114, %113 ], [ %78, %117 ]
  %124 = phi i8 [ 2, %88 ], [ %99, %113 ], [ 2, %117 ]
  %125 = zext i8 %122 to i32
  %126 = and i32 %125, 32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %155, label %128

128:                                              ; preds = %120
  %129 = icmp ugt i8 %20, 9
  br i1 %129, label %411, label %130, !prof !9

130:                                              ; preds = %128
  %131 = zext i8 %20 to i32
  %132 = trunc i32 %123 to i16
  %133 = getelementptr [10 x i16], ptr %5, i32 0, i32 %131
  store i16 %132, ptr %133, align 2
  %134 = getelementptr [10 x i8], ptr %7, i32 0, i32 %131
  store i8 %124, ptr %134, align 1
  %135 = and i32 %125, 1
  %136 = icmp eq i32 %135, 0
  %137 = trunc i32 %18 to i16
  %138 = add i32 %123, %121
  %139 = select i1 %136, i16 %137, i16 0
  %140 = select i1 %136, i32 %138, i32 %18
  %141 = getelementptr [10 x i16], ptr %6, i32 0, i32 %131
  store i16 %139, ptr %141, align 2
  %142 = add nuw nsw i8 %20, 1
  br label %155

143:                                              ; preds = %401, %397, %384, %379, %352, %335, %296, %283, %277, %74, %50
  %144 = phi i32 [ %156, %401 ], [ %156, %397 ], [ %156, %384 ], [ %362, %379 ], [ %163, %335 ], [ %163, %352 ], [ %156, %296 ], [ %156, %283 ], [ %260, %277 ], [ %27, %50 ], [ %27, %74 ]
  %145 = phi i32 [ %157, %401 ], [ %157, %397 ], [ %157, %384 ], [ %318, %379 ], [ %318, %335 ], [ %318, %352 ], [ %157, %296 ], [ %157, %283 ], [ %157, %277 ], [ %26, %50 ], [ %26, %74 ]
  %146 = phi i8 [ %407, %401 ], [ %158, %397 ], [ %158, %384 ], [ %158, %379 ], [ %158, %335 ], [ %158, %352 ], [ %158, %296 ], [ %158, %283 ], [ %158, %277 ], [ %51, %50 ], [ %69, %74 ]
  %147 = phi i32 [ %159, %401 ], [ %159, %397 ], [ %159, %384 ], [ %360, %379 ], [ %159, %335 ], [ %159, %352 ], [ %159, %296 ], [ %159, %283 ], [ %279, %277 ], [ %24, %50 ], [ %24, %74 ]
  %148 = phi i32 [ %406, %401 ], [ %398, %397 ], [ %385, %384 ], [ %380, %379 ], [ %339, %335 ], [ %356, %352 ], [ %297, %296 ], [ %292, %283 ], [ %280, %277 ], [ %34, %50 ], [ %34, %74 ]
  %149 = phi i8 [ %160, %401 ], [ %160, %397 ], [ %160, %384 ], [ %320, %379 ], [ %320, %335 ], [ %320, %352 ], [ %160, %296 ], [ %160, %283 ], [ %160, %277 ], [ %22, %50 ], [ 2, %74 ]
  %150 = phi i8 [ %402, %401 ], [ %21, %397 ], [ %21, %384 ], [ %21, %379 ], [ %21, %335 ], [ %21, %352 ], [ %21, %296 ], [ %287, %283 ], [ %21, %277 ], [ %21, %50 ], [ %21, %74 ]
  %151 = phi i8 [ %161, %401 ], [ %161, %397 ], [ %161, %384 ], [ %314, %379 ], [ %161, %335 ], [ %161, %352 ], [ %161, %296 ], [ %161, %283 ], [ %161, %277 ], [ %20, %50 ], [ %20, %74 ]
  %152 = phi i8 [ %162, %401 ], [ %162, %397 ], [ %162, %384 ], [ %162, %379 ], [ %162, %335 ], [ %162, %352 ], [ %162, %296 ], [ %162, %283 ], [ %162, %277 ], [ %19, %50 ], [ %58, %74 ]
  %153 = phi i32 [ %163, %401 ], [ %163, %397 ], [ %163, %384 ], [ %361, %379 ], [ %163, %335 ], [ %163, %352 ], [ %163, %296 ], [ %163, %283 ], [ %163, %277 ], [ %18, %50 ], [ %18, %74 ]
  %154 = icmp ult i32 %148, %13
  br i1 %154, label %17, label %411, !prof !11

155:                                              ; preds = %130, %120, %36
  %156 = phi i32 [ %27, %36 ], [ %121, %130 ], [ %121, %120 ]
  %157 = phi i32 [ %26, %36 ], [ %123, %130 ], [ %123, %120 ]
  %158 = phi i8 [ %25, %36 ], [ %122, %130 ], [ %122, %120 ]
  %159 = phi i32 [ %24, %36 ], [ %123, %130 ], [ %123, %120 ]
  %160 = phi i8 [ %22, %36 ], [ %124, %130 ], [ %124, %120 ]
  %161 = phi i8 [ %20, %36 ], [ %142, %130 ], [ %20, %120 ]
  %162 = phi i8 [ %19, %36 ], [ %58, %130 ], [ %58, %120 ]
  %163 = phi i32 [ %18, %36 ], [ %140, %130 ], [ %18, %120 ]
  switch i8 %29, label %408 [
    i8 0, label %164
    i8 1, label %164
    i8 2, label %164
    i8 3, label %164
    i8 8, label %164
    i8 9, label %164
    i8 10, label %164
    i8 11, label %164
    i8 17, label %164
    i8 19, label %164
    i8 24, label %164
    i8 25, label %164
    i8 26, label %164
    i8 27, label %164
    i8 4, label %281
    i8 5, label %281
    i8 21, label %281
    i8 28, label %293
    i8 29, label %298
    i8 33, label %306
    i8 37, label %306
    i8 32, label %311
    i8 35, label %311
    i8 34, label %311
    i8 36, label %311
    i8 39, label %311
    i8 38, label %311
    i8 31, label %381
    i8 30, label %386
    i8 40, label %399
  ]

164:                                              ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155
  %165 = zext i8 %158 to i32
  %166 = and i32 %165, 32
  %167 = icmp eq i32 %166, 0
  %168 = xor i1 %167, true
  %169 = and i32 %165, 1
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %168, i1 true, i1 %170
  br i1 %171, label %259, label %172

172:                                              ; preds = %164
  %173 = sub i32 %163, %159
  %174 = icmp ult i32 %173, 2
  br i1 %174, label %411, label %175, !prof !9

175:                                              ; preds = %198, %172
  %176 = phi i32 [ %200, %198 ], [ 1, %172 ]
  %177 = phi i32 [ %199, %198 ], [ %159, %172 ]
  br label %184

178:                                              ; preds = %252, %235
  %179 = phi i32 [ %254, %252 ], [ 0, %235 ]
  %180 = phi i32 [ %253, %252 ], [ %217, %235 ]
  %181 = add i32 %180, %179
  %182 = sub i32 %163, %181
  %183 = icmp ult i32 %182, 2
  br i1 %183, label %411, label %184, !prof !9

184:                                              ; preds = %178, %175
  %185 = phi i32 [ %177, %175 ], [ %181, %178 ]
  %186 = add i32 %185, 1
  %187 = getelementptr i8, ptr %2, i32 %185
  %188 = load i8, ptr %187, align 1
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = getelementptr i8, ptr %2, i32 %186
  %192 = load i8, ptr %191, align 1
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %411

194:                                              ; preds = %190
  %195 = add i32 %185, 2
  %196 = add i32 %176, -1
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %257, label %198

198:                                              ; preds = %227, %194
  %199 = phi i32 [ %217, %227 ], [ %195, %194 ]
  %200 = phi i32 [ %228, %227 ], [ %196, %194 ]
  %201 = sub i32 %163, %199
  %202 = icmp ult i32 %201, 2
  br i1 %202, label %411, label %175, !prof !9

203:                                              ; preds = %184
  %204 = and i8 %188, 31
  %205 = icmp eq i8 %204, 31
  br i1 %205, label %206, label %215, !prof !9

206:                                              ; preds = %210, %203
  %207 = phi i32 [ %211, %210 ], [ %186, %203 ]
  %208 = sub i32 %163, %207
  %209 = icmp ult i32 %208, 2
  br i1 %209, label %411, label %210, !prof !9

210:                                              ; preds = %206
  %211 = add i32 %207, 1
  %212 = getelementptr i8, ptr %2, i32 %207
  %213 = load i8, ptr %212, align 1
  %214 = icmp sgt i8 %213, -1
  br i1 %214, label %215, label %206

215:                                              ; preds = %210, %203
  %216 = phi i32 [ %186, %203 ], [ %211, %210 ]
  %217 = add i32 %216, 1
  %218 = getelementptr i8, ptr %2, i32 %216
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i32
  %221 = icmp sgt i8 %219, -1
  br i1 %221, label %252, label %222

222:                                              ; preds = %215
  %223 = icmp eq i8 %219, -128
  br i1 %223, label %224, label %229, !prof !9

224:                                              ; preds = %222
  %225 = and i8 %188, 32
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %411, label %227, !prof !9

227:                                              ; preds = %224
  %228 = add i32 %176, 1
  br label %198

229:                                              ; preds = %222
  %230 = add nsw i32 %220, -128
  %231 = icmp ugt i32 %230, 3
  %232 = sub i32 %163, %217
  %233 = icmp ugt i32 %230, %232
  %234 = select i1 %231, i1 true, i1 %233
  br i1 %234, label %411, label %235, !prof !10

235:                                              ; preds = %229
  %236 = icmp eq i32 %230, 0
  br i1 %236, label %178, label %237

237:                                              ; preds = %237, %235
  %238 = phi i32 [ %247, %237 ], [ %230, %235 ]
  %239 = phi i32 [ %246, %237 ], [ 0, %235 ]
  %240 = phi i32 [ %242, %237 ], [ %217, %235 ]
  %241 = shl i32 %239, 8
  %242 = add i32 %240, 1
  %243 = getelementptr i8, ptr %2, i32 %240
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = or i32 %241, %245
  %247 = add i32 %238, -1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %237

249:                                              ; preds = %237
  %250 = add i32 %216, -127
  %251 = add i32 %250, %220
  br label %252

252:                                              ; preds = %249, %215
  %253 = phi i32 [ %217, %215 ], [ %251, %249 ]
  %254 = phi i32 [ %220, %215 ], [ %246, %249 ]
  %255 = sub i32 %163, %253
  %256 = icmp ugt i32 %254, %255
  br i1 %256, label %411, label %178

257:                                              ; preds = %194
  %258 = sub i32 %195, %159
  br label %259

259:                                              ; preds = %257, %164
  %260 = phi i32 [ %156, %164 ], [ %258, %257 ]
  %261 = and i32 %30, 2
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %277, label %263

263:                                              ; preds = %259
  %264 = and i32 %30, 8
  %265 = icmp eq i32 %264, 0
  %266 = select i1 %265, i32 2, i32 1
  %267 = add i32 %23, %266
  %268 = getelementptr i8, ptr %9, i32 %267
  %269 = load i8, ptr %268, align 1
  %270 = zext i8 %269 to i32
  %271 = getelementptr ptr, ptr %11, i32 %270
  %272 = load ptr, ptr %271, align 4
  %273 = zext i8 %160 to i32
  %274 = getelementptr i8, ptr %2, i32 %159
  %275 = tail call i32 %272(ptr noundef %1, i32 noundef %273, i8 noundef zeroext %162, ptr noundef %274, i32 noundef %260) #4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %411, label %277

277:                                              ; preds = %263, %259
  %278 = select i1 %167, i32 %260, i32 0
  %279 = add i32 %278, %159
  %280 = add i32 %23, %33
  br label %143

281:                                              ; preds = %155, %155, %155
  %282 = icmp eq i8 %21, 10
  br i1 %282, label %411, label %283, !prof !9

283:                                              ; preds = %281
  %284 = zext i8 %21 to i32
  %285 = trunc i32 %23 to i8
  %286 = add i8 %32, %285
  %287 = add i8 %21, 1
  %288 = getelementptr [10 x i8], ptr %8, i32 0, i32 %284
  store i8 %286, ptr %288, align 1
  %289 = add i32 %23, 2
  %290 = getelementptr i8, ptr %9, i32 %289
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i32
  br label %143

293:                                              ; preds = %155
  %294 = and i8 %158, 2
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %411, label %296, !prof !9

296:                                              ; preds = %293
  %297 = add i32 %23, %33
  br label %143

298:                                              ; preds = %155
  %299 = icmp ne i8 %21, 0
  %300 = icmp ne i8 %161, 0
  %301 = select i1 %299, i1 true, i1 %300, !prof !9
  br i1 %301, label %302, label %411, !prof !9

302:                                              ; preds = %298
  %303 = zext i8 %161 to i32
  %304 = zext i8 %21 to i32
  %305 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %304, i32 noundef %303) #5
  br label %411

306:                                              ; preds = %155, %155
  %307 = and i8 %158, 2
  %308 = icmp eq i8 %307, 0
  %309 = icmp eq i8 %161, 0
  %310 = select i1 %308, i1 true, i1 %309
  br i1 %310, label %411, label %313, !prof !10

311:                                              ; preds = %155, %155, %155, %155, %155, %155
  %312 = icmp eq i8 %161, 0
  br i1 %312, label %411, label %313, !prof !9

313:                                              ; preds = %311, %306
  %314 = add i8 %161, -1
  %315 = zext i8 %314 to i32
  %316 = getelementptr [10 x i16], ptr %5, i32 0, i32 %315
  %317 = load i16, ptr %316, align 2
  %318 = zext i16 %317 to i32
  %319 = getelementptr [10 x i8], ptr %7, i32 0, i32 %315
  %320 = load i8, ptr %319, align 1
  %321 = getelementptr [10 x i16], ptr %6, i32 0, i32 %315
  %322 = load i16, ptr %321, align 2
  %323 = zext i16 %322 to i32
  %324 = icmp eq i16 %322, 0
  br i1 %324, label %325, label %347

325:                                              ; preds = %313
  %326 = sub i32 %163, %159
  %327 = icmp ult i32 %326, 2
  br i1 %327, label %411, label %328, !prof !9

328:                                              ; preds = %325
  %329 = getelementptr i8, ptr %2, i32 %159
  %330 = load i8, ptr %329, align 1
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %340, label %332

332:                                              ; preds = %328
  %333 = and i32 %30, 2
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %411, label %335

335:                                              ; preds = %332
  %336 = add i32 %23, 1
  %337 = getelementptr i8, ptr %9, i32 %336
  %338 = load i8, ptr %337, align 1
  %339 = zext i8 %338 to i32
  br label %143

340:                                              ; preds = %328
  %341 = add i32 %159, 1
  %342 = getelementptr i8, ptr %2, i32 %341
  %343 = load i8, ptr %342, align 1
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %345, label %411

345:                                              ; preds = %340
  %346 = add i32 %159, 2
  br label %359

347:                                              ; preds = %313
  %348 = icmp ule i32 %163, %159
  %349 = and i32 %30, 2
  %350 = icmp eq i32 %349, 0
  %351 = select i1 %348, i1 true, i1 %350
  br i1 %351, label %357, label %352

352:                                              ; preds = %347
  %353 = add i32 %23, 1
  %354 = getelementptr i8, ptr %9, i32 %353
  %355 = load i8, ptr %354, align 1
  %356 = zext i8 %355 to i32
  br label %143

357:                                              ; preds = %347
  %358 = icmp eq i32 %163, %159
  br i1 %358, label %359, label %411

359:                                              ; preds = %357, %345
  %360 = phi i32 [ %346, %345 ], [ %159, %357 ]
  %361 = phi i32 [ %163, %345 ], [ %323, %357 ]
  %362 = sub i32 %159, %318
  %363 = and i32 %30, 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %379, label %365

365:                                              ; preds = %359
  %366 = and i32 %30, 2
  %367 = icmp eq i32 %366, 0
  %368 = select i1 %367, i32 1, i32 2
  %369 = add i32 %23, %368
  %370 = getelementptr i8, ptr %9, i32 %369
  %371 = load i8, ptr %370, align 1
  %372 = zext i8 %371 to i32
  %373 = getelementptr ptr, ptr %11, i32 %372
  %374 = load ptr, ptr %373, align 4
  %375 = zext i8 %320 to i32
  %376 = getelementptr i8, ptr %2, i32 %318
  %377 = tail call i32 %374(ptr noundef %1, i32 noundef %375, i8 noundef zeroext 0, ptr noundef %376, i32 noundef %362) #4
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %411, label %379

379:                                              ; preds = %365, %359
  %380 = add i32 %23, %33
  br label %143

381:                                              ; preds = %155
  %382 = and i8 %158, 4
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = add i32 %23, %33
  br label %143

386:                                              ; preds = %381, %155
  %387 = add i32 %23, 1
  %388 = getelementptr i8, ptr %9, i32 %387
  %389 = load i8, ptr %388, align 1
  %390 = zext i8 %389 to i32
  %391 = getelementptr ptr, ptr %11, i32 %390
  %392 = load ptr, ptr %391, align 4
  %393 = zext i8 %160 to i32
  %394 = getelementptr i8, ptr %2, i32 %157
  %395 = tail call i32 %392(ptr noundef %1, i32 noundef %393, i8 noundef zeroext %162, ptr noundef %394, i32 noundef %156) #4
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %411, label %397

397:                                              ; preds = %386
  %398 = add i32 %23, %33
  br label %143

399:                                              ; preds = %155
  %400 = icmp eq i8 %21, 0
  br i1 %400, label %411, label %401, !prof !9

401:                                              ; preds = %399
  %402 = add i8 %21, -1
  %403 = zext i8 %402 to i32
  %404 = getelementptr [10 x i8], ptr %8, i32 0, i32 %403
  %405 = load i8, ptr %404, align 1
  %406 = zext i8 %405 to i32
  %407 = or i8 %158, 6
  br label %143

408:                                              ; preds = %155
  %409 = zext i8 %29 to i32
  %410 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %409, i32 noundef %23) #5
  br label %411

411:                                              ; preds = %408, %399, %386, %365, %357, %340, %332, %325, %311, %306, %302, %298, %293, %281, %263, %252, %229, %224, %206, %198, %190, %178, %172, %143, %128, %117, %113, %92, %88, %85, %74, %55, %52, %17, %15, %4
  %412 = phi i32 [ -74, %408 ], [ -74, %302 ], [ -90, %4 ], [ 0, %298 ], [ -74, %15 ], [ -74, %206 ], [ -74, %229 ], [ -74, %252 ], [ -74, %178 ], [ -74, %224 ], [ -74, %190 ], [ -74, %198 ], [ -74, %113 ], [ %377, %365 ], [ %275, %263 ], [ %395, %386 ], [ -74, %17 ], [ -74, %143 ], [ -74, %399 ], [ -74, %281 ], [ -74, %311 ], [ -74, %357 ], [ -74, %332 ], [ -74, %340 ], [ -74, %172 ], [ -74, %128 ], [ -74, %92 ], [ -74, %85 ], [ -74, %74 ], [ -74, %306 ], [ -74, %293 ], [ -74, %55 ], [ -74, %117 ], [ -74, %88 ], [ -74, %52 ], [ -74, %325 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #4
  ret i32 %412
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 4001, i32 4000000}
!11 = !{!"branch_weights", i32 2000, i32 1}
