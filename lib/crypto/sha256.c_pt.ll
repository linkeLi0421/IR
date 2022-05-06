; ModuleID = '/llk/IR/lib/crypto/sha256.c_pt.bc'
source_filename = "../lib/crypto/sha256.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha256_update:\09\09\09\09\09"
module asm "\09.asciz \09\22sha256_update\22\09\09\09\09\09"
module asm "__kstrtabns_sha256_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha224_update:\09\09\09\09\09"
module asm "\09.asciz \09\22sha224_update\22\09\09\09\09\09"
module asm "__kstrtabns_sha224_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha256_final:\09\09\09\09\09"
module asm "\09.asciz \09\22sha256_final\22\09\09\09\09\09"
module asm "__kstrtabns_sha256_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha224_final:\09\09\09\09\09"
module asm "\09.asciz \09\22sha224_final\22\09\09\09\09\09"
module asm "__kstrtabns_sha224_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha256:\09\09\09\09\09"
module asm "\09.asciz \09\22sha256\22\09\09\09\09\09"
module asm "__kstrtabns_sha256:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }

@__kstrtab_sha256_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha256_update = external dso_local constant [0 x i8], align 1
@__ksymtab_sha256_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha256_update to i32), ptr @__kstrtab_sha256_update, ptr @__kstrtabns_sha256_update }, section "___ksymtab+sha256_update", align 4
@__kstrtab_sha224_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha224_update = external dso_local constant [0 x i8], align 1
@__ksymtab_sha224_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha224_update to i32), ptr @__kstrtab_sha224_update, ptr @__kstrtabns_sha224_update }, section "___ksymtab+sha224_update", align 4
@__kstrtab_sha256_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha256_final = external dso_local constant [0 x i8], align 1
@__ksymtab_sha256_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha256_final to i32), ptr @__kstrtab_sha256_final, ptr @__kstrtabns_sha256_final }, section "___ksymtab+sha256_final", align 4
@__kstrtab_sha224_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha224_final = external dso_local constant [0 x i8], align 1
@__ksymtab_sha224_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha224_final to i32), ptr @__kstrtab_sha224_final, ptr @__kstrtabns_sha224_final }, section "___ksymtab+sha224_final", align 4
@__kstrtab_sha256 = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha256 = external dso_local constant [0 x i8], align 1
@__ksymtab_sha256 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha256 to i32), ptr @__kstrtab_sha256, ptr @__kstrtabns_sha256 }, section "___ksymtab+sha256", align 4
@__UNIQUE_ID_license100 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@SHA256_K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 4
@__sha256_final.padding = internal constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_license100, ptr @__ksymtab_sha224_final, ptr @__ksymtab_sha224_update, ptr @__ksymtab_sha256, ptr @__ksymtab_sha256_final, ptr @__ksymtab_sha256_update], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sha256_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [64 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %4, i8 0, i32 256, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.sha256_state, ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 63
  %9 = zext i32 %2 to i64
  %10 = add i64 %6, %9
  store i64 %10, ptr %5, align 8
  %11 = add i32 %8, %2
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %13, label %525

13:                                               ; preds = %3
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = sub nsw i32 0, %8
  %17 = getelementptr inbounds %struct.sha256_state, ptr %0, i32 0, i32 2
  %18 = getelementptr i8, ptr %17, i32 %8
  %19 = sub nuw nsw i32 64, %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 1 %1, i32 %19, i1 false)
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %16, %15 ], [ 0, %13 ]
  %22 = phi ptr [ %17, %15 ], [ %1, %13 ]
  %23 = getelementptr inbounds i32, ptr %4, i32 1
  %24 = getelementptr inbounds i32, ptr %4, i32 2
  %25 = getelementptr inbounds i32, ptr %4, i32 3
  %26 = getelementptr inbounds i32, ptr %4, i32 4
  %27 = getelementptr inbounds i32, ptr %4, i32 5
  %28 = getelementptr inbounds i32, ptr %4, i32 6
  %29 = getelementptr inbounds i32, ptr %4, i32 7
  %30 = getelementptr inbounds i32, ptr %4, i32 8
  %31 = getelementptr inbounds i32, ptr %4, i32 9
  %32 = getelementptr inbounds i32, ptr %4, i32 10
  %33 = getelementptr inbounds i32, ptr %4, i32 11
  %34 = getelementptr inbounds i32, ptr %4, i32 12
  %35 = getelementptr inbounds i32, ptr %4, i32 13
  %36 = getelementptr inbounds i32, ptr %4, i32 14
  %37 = getelementptr inbounds i32, ptr %4, i32 15
  %38 = getelementptr i32, ptr %0, i32 1
  %39 = getelementptr i32, ptr %0, i32 2
  %40 = getelementptr i32, ptr %0, i32 3
  %41 = getelementptr i32, ptr %0, i32 4
  %42 = getelementptr i32, ptr %0, i32 5
  %43 = getelementptr i32, ptr %0, i32 6
  %44 = getelementptr i32, ptr %0, i32 7
  br label %45

45:                                               ; preds = %511, %20
  %46 = phi i32 [ %21, %20 ], [ %520, %511 ]
  %47 = phi ptr [ %22, %20 ], [ %521, %511 ]
  %48 = load i32, ptr %47, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  store i32 %49, ptr %4, align 4
  %50 = getelementptr i32, ptr %47, i32 1
  %51 = load i32, ptr %50, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  store i32 %52, ptr %23, align 4
  %53 = getelementptr i32, ptr %47, i32 2
  %54 = load i32, ptr %53, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #5
  store i32 %55, ptr %24, align 4
  %56 = getelementptr i32, ptr %47, i32 3
  %57 = load i32, ptr %56, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  store i32 %58, ptr %25, align 4
  %59 = getelementptr i32, ptr %47, i32 4
  %60 = load i32, ptr %59, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #5
  store i32 %61, ptr %26, align 4
  %62 = getelementptr i32, ptr %47, i32 5
  %63 = load i32, ptr %62, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #5
  store i32 %64, ptr %27, align 4
  %65 = getelementptr i32, ptr %47, i32 6
  %66 = load i32, ptr %65, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #5
  store i32 %67, ptr %28, align 4
  %68 = getelementptr i32, ptr %47, i32 7
  %69 = load i32, ptr %68, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #5
  store i32 %70, ptr %29, align 4
  %71 = getelementptr i32, ptr %47, i32 8
  %72 = load i32, ptr %71, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #5
  store i32 %73, ptr %30, align 4
  %74 = getelementptr i32, ptr %47, i32 9
  %75 = load i32, ptr %74, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #5
  store i32 %76, ptr %31, align 4
  %77 = getelementptr i32, ptr %47, i32 10
  %78 = load i32, ptr %77, align 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #5
  store i32 %79, ptr %32, align 4
  %80 = getelementptr i32, ptr %47, i32 11
  %81 = load i32, ptr %80, align 1
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #5
  store i32 %82, ptr %33, align 4
  %83 = getelementptr i32, ptr %47, i32 12
  %84 = load i32, ptr %83, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #5
  store i32 %85, ptr %34, align 4
  %86 = getelementptr i32, ptr %47, i32 13
  %87 = load i32, ptr %86, align 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #5
  store i32 %88, ptr %35, align 4
  %89 = getelementptr i32, ptr %47, i32 14
  %90 = load i32, ptr %89, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  store i32 %91, ptr %36, align 4
  %92 = getelementptr i32, ptr %47, i32 15
  %93 = load i32, ptr %92, align 1
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #5
  store i32 %94, ptr %37, align 4
  br label %95

95:                                               ; preds = %95, %45
  %96 = phi i32 [ %169, %95 ], [ %61, %45 ]
  %97 = phi i32 [ %151, %95 ], [ %58, %45 ]
  %98 = phi i32 [ %133, %95 ], [ %55, %45 ]
  %99 = phi i32 [ %247, %95 ], [ %49, %45 ]
  %100 = phi i32 [ %112, %95 ], [ %52, %45 ]
  %101 = phi i32 [ %258, %95 ], [ 16, %45 ]
  %102 = add nsw i32 %101, -2
  %103 = getelementptr i32, ptr %4, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 15) #5
  %106 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 13) #5
  %107 = xor i32 %105, %106
  %108 = lshr i32 %104, 10
  %109 = xor i32 %107, %108
  %110 = add nsw i32 %101, -7
  %111 = getelementptr i32, ptr %4, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 25) #5
  %114 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 14) #5
  %115 = xor i32 %113, %114
  %116 = lshr i32 %100, 3
  %117 = xor i32 %115, %116
  %118 = add i32 %112, %99
  %119 = add i32 %118, %117
  %120 = add i32 %119, %109
  %121 = getelementptr i32, ptr %4, i32 %101
  store i32 %120, ptr %121, align 4
  %122 = or i32 %101, 1
  %123 = add nsw i32 %101, -1
  %124 = getelementptr i32, ptr %4, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 15) #5
  %127 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 13) #5
  %128 = xor i32 %126, %127
  %129 = lshr i32 %125, 10
  %130 = xor i32 %128, %129
  %131 = add nsw i32 %101, -6
  %132 = getelementptr i32, ptr %4, i32 %131
  %133 = load i32, ptr %132, align 4
  %134 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 25) #5
  %135 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 14) #5
  %136 = xor i32 %134, %135
  %137 = lshr i32 %98, 3
  %138 = xor i32 %136, %137
  %139 = add i32 %138, %100
  %140 = add i32 %139, %133
  %141 = add i32 %140, %130
  %142 = getelementptr i32, ptr %4, i32 %122
  store i32 %141, ptr %142, align 4
  %143 = or i32 %101, 2
  %144 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 15) #5
  %145 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 13) #5
  %146 = xor i32 %144, %145
  %147 = lshr i32 %120, 10
  %148 = xor i32 %146, %147
  %149 = add nsw i32 %101, -5
  %150 = getelementptr i32, ptr %4, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 25) #5
  %153 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 14) #5
  %154 = xor i32 %152, %153
  %155 = lshr i32 %97, 3
  %156 = xor i32 %154, %155
  %157 = add i32 %156, %98
  %158 = add i32 %157, %151
  %159 = add i32 %158, %148
  %160 = getelementptr i32, ptr %4, i32 %143
  store i32 %159, ptr %160, align 4
  %161 = or i32 %101, 3
  %162 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 15) #5
  %163 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 13) #5
  %164 = xor i32 %162, %163
  %165 = lshr i32 %141, 10
  %166 = xor i32 %164, %165
  %167 = add nsw i32 %101, -4
  %168 = getelementptr i32, ptr %4, i32 %167
  %169 = load i32, ptr %168, align 4
  %170 = add nsw i32 %101, -12
  %171 = getelementptr i32, ptr %4, i32 %170
  %172 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 25) #5
  %173 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 14) #5
  %174 = xor i32 %172, %173
  %175 = lshr i32 %96, 3
  %176 = xor i32 %174, %175
  %177 = add i32 %176, %97
  %178 = add i32 %177, %169
  %179 = add i32 %178, %166
  %180 = getelementptr i32, ptr %4, i32 %161
  store i32 %179, ptr %180, align 4
  %181 = or i32 %101, 4
  %182 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 15) #5
  %183 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 13) #5
  %184 = xor i32 %182, %183
  %185 = lshr i32 %159, 10
  %186 = xor i32 %184, %185
  %187 = add nsw i32 %101, -3
  %188 = getelementptr i32, ptr %4, i32 %187
  %189 = load i32, ptr %188, align 4
  %190 = add nsw i32 %101, -11
  %191 = getelementptr i32, ptr %4, i32 %190
  %192 = load i32, ptr %191, align 4
  %193 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 25) #5
  %194 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 14) #5
  %195 = xor i32 %193, %194
  %196 = lshr i32 %192, 3
  %197 = xor i32 %195, %196
  %198 = load i32, ptr %171, align 4
  %199 = add i32 %198, %189
  %200 = add i32 %199, %197
  %201 = add i32 %200, %186
  %202 = getelementptr i32, ptr %4, i32 %181
  store i32 %201, ptr %202, align 4
  %203 = or i32 %101, 5
  %204 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 15) #5
  %205 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 13) #5
  %206 = xor i32 %204, %205
  %207 = lshr i32 %179, 10
  %208 = xor i32 %206, %207
  %209 = add nsw i32 %101, -10
  %210 = getelementptr i32, ptr %4, i32 %209
  %211 = load i32, ptr %210, align 4
  %212 = tail call i32 @llvm.fshl.i32(i32 %211, i32 %211, i32 25) #5
  %213 = tail call i32 @llvm.fshl.i32(i32 %211, i32 %211, i32 14) #5
  %214 = xor i32 %212, %213
  %215 = lshr i32 %211, 3
  %216 = xor i32 %214, %215
  %217 = add i32 %192, %104
  %218 = add i32 %217, %216
  %219 = add i32 %218, %208
  %220 = getelementptr i32, ptr %4, i32 %203
  store i32 %219, ptr %220, align 4
  %221 = or i32 %101, 6
  %222 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 15) #5
  %223 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 13) #5
  %224 = xor i32 %222, %223
  %225 = lshr i32 %201, 10
  %226 = xor i32 %224, %225
  %227 = add nsw i32 %101, -9
  %228 = getelementptr i32, ptr %4, i32 %227
  %229 = load i32, ptr %228, align 4
  %230 = tail call i32 @llvm.fshl.i32(i32 %229, i32 %229, i32 25) #5
  %231 = tail call i32 @llvm.fshl.i32(i32 %229, i32 %229, i32 14) #5
  %232 = xor i32 %230, %231
  %233 = lshr i32 %229, 3
  %234 = xor i32 %232, %233
  %235 = add i32 %211, %125
  %236 = add i32 %235, %234
  %237 = add i32 %236, %226
  %238 = getelementptr i32, ptr %4, i32 %221
  store i32 %237, ptr %238, align 4
  %239 = or i32 %101, 7
  %240 = tail call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 15) #5
  %241 = tail call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 13) #5
  %242 = xor i32 %240, %241
  %243 = lshr i32 %219, 10
  %244 = xor i32 %242, %243
  %245 = add nsw i32 %101, -8
  %246 = getelementptr i32, ptr %4, i32 %245
  %247 = load i32, ptr %246, align 4
  %248 = tail call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 25) #5
  %249 = tail call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 14) #5
  %250 = xor i32 %248, %249
  %251 = lshr i32 %247, 3
  %252 = xor i32 %250, %251
  %253 = add i32 %229, %120
  %254 = add i32 %253, %252
  %255 = add i32 %254, %244
  %256 = getelementptr i32, ptr %4, i32 %239
  store i32 %255, ptr %256, align 4
  %257 = icmp ult i32 %101, 56
  %258 = add nuw nsw i32 %101, 8
  br i1 %257, label %95, label %259

259:                                              ; preds = %95
  %260 = load i32, ptr %0, align 4
  %261 = load i32, ptr %38, align 4
  %262 = load i32, ptr %39, align 4
  %263 = load i32, ptr %40, align 4
  %264 = load i32, ptr %41, align 4
  %265 = load i32, ptr %42, align 4
  %266 = load i32, ptr %43, align 4
  %267 = load i32, ptr %44, align 4
  br label %268

268:                                              ; preds = %268, %259
  %269 = phi i32 [ %260, %259 ], [ %508, %268 ]
  %270 = phi i32 [ %261, %259 ], [ %479, %268 ]
  %271 = phi i32 [ %262, %259 ], [ %450, %268 ]
  %272 = phi i32 [ %263, %259 ], [ %421, %268 ]
  %273 = phi i32 [ %264, %259 ], [ %507, %268 ]
  %274 = phi i32 [ %265, %259 ], [ %478, %268 ]
  %275 = phi i32 [ %266, %259 ], [ %449, %268 ]
  %276 = phi i32 [ %267, %259 ], [ %420, %268 ]
  %277 = phi i32 [ 0, %259 ], [ %509, %268 ]
  %278 = tail call i32 @llvm.fshl.i32(i32 %273, i32 %273, i32 26) #5
  %279 = tail call i32 @llvm.fshl.i32(i32 %273, i32 %273, i32 21) #5
  %280 = xor i32 %278, %279
  %281 = tail call i32 @llvm.fshl.i32(i32 %273, i32 %273, i32 7) #5
  %282 = xor i32 %280, %281
  %283 = xor i32 %275, %274
  %284 = and i32 %283, %273
  %285 = xor i32 %284, %275
  %286 = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %277
  %287 = load i32, ptr %286, align 4
  %288 = getelementptr i32, ptr %4, i32 %277
  %289 = load i32, ptr %288, align 4
  %290 = add i32 %282, %276
  %291 = add i32 %290, %285
  %292 = add i32 %291, %287
  %293 = add i32 %292, %289
  %294 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 30) #5
  %295 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 19) #5
  %296 = xor i32 %294, %295
  %297 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 10) #5
  %298 = xor i32 %296, %297
  %299 = and i32 %270, %269
  %300 = or i32 %270, %269
  %301 = and i32 %300, %271
  %302 = or i32 %301, %299
  %303 = add i32 %302, %298
  %304 = add i32 %293, %272
  %305 = add i32 %303, %293
  %306 = tail call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 26) #5
  %307 = tail call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 21) #5
  %308 = xor i32 %306, %307
  %309 = tail call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 7) #5
  %310 = xor i32 %308, %309
  %311 = xor i32 %274, %273
  %312 = and i32 %304, %311
  %313 = xor i32 %312, %274
  %314 = or i32 %277, 1
  %315 = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %314
  %316 = load i32, ptr %315, align 4
  %317 = getelementptr i32, ptr %4, i32 %314
  %318 = load i32, ptr %317, align 4
  %319 = add i32 %316, %275
  %320 = add i32 %319, %318
  %321 = add i32 %320, %313
  %322 = add i32 %321, %310
  %323 = tail call i32 @llvm.fshl.i32(i32 %305, i32 %305, i32 30) #5
  %324 = tail call i32 @llvm.fshl.i32(i32 %305, i32 %305, i32 19) #5
  %325 = xor i32 %323, %324
  %326 = tail call i32 @llvm.fshl.i32(i32 %305, i32 %305, i32 10) #5
  %327 = xor i32 %325, %326
  %328 = and i32 %305, %269
  %329 = or i32 %305, %269
  %330 = and i32 %329, %270
  %331 = or i32 %330, %328
  %332 = add i32 %327, %331
  %333 = add i32 %322, %271
  %334 = add i32 %332, %322
  %335 = tail call i32 @llvm.fshl.i32(i32 %333, i32 %333, i32 26) #5
  %336 = tail call i32 @llvm.fshl.i32(i32 %333, i32 %333, i32 21) #5
  %337 = xor i32 %335, %336
  %338 = tail call i32 @llvm.fshl.i32(i32 %333, i32 %333, i32 7) #5
  %339 = xor i32 %337, %338
  %340 = xor i32 %304, %273
  %341 = and i32 %333, %340
  %342 = xor i32 %341, %273
  %343 = or i32 %277, 2
  %344 = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %343
  %345 = load i32, ptr %344, align 4
  %346 = getelementptr i32, ptr %4, i32 %343
  %347 = load i32, ptr %346, align 4
  %348 = add i32 %345, %274
  %349 = add i32 %348, %347
  %350 = add i32 %349, %342
  %351 = add i32 %350, %339
  %352 = tail call i32 @llvm.fshl.i32(i32 %334, i32 %334, i32 30) #5
  %353 = tail call i32 @llvm.fshl.i32(i32 %334, i32 %334, i32 19) #5
  %354 = xor i32 %352, %353
  %355 = tail call i32 @llvm.fshl.i32(i32 %334, i32 %334, i32 10) #5
  %356 = xor i32 %354, %355
  %357 = and i32 %334, %305
  %358 = or i32 %334, %305
  %359 = and i32 %358, %269
  %360 = or i32 %359, %357
  %361 = add i32 %356, %360
  %362 = add i32 %351, %270
  %363 = add i32 %361, %351
  %364 = tail call i32 @llvm.fshl.i32(i32 %362, i32 %362, i32 26) #5
  %365 = tail call i32 @llvm.fshl.i32(i32 %362, i32 %362, i32 21) #5
  %366 = xor i32 %364, %365
  %367 = tail call i32 @llvm.fshl.i32(i32 %362, i32 %362, i32 7) #5
  %368 = xor i32 %366, %367
  %369 = xor i32 %333, %304
  %370 = and i32 %362, %369
  %371 = xor i32 %370, %304
  %372 = or i32 %277, 3
  %373 = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %372
  %374 = load i32, ptr %373, align 4
  %375 = getelementptr i32, ptr %4, i32 %372
  %376 = load i32, ptr %375, align 4
  %377 = add i32 %374, %273
  %378 = add i32 %377, %376
  %379 = add i32 %378, %371
  %380 = add i32 %379, %368
  %381 = tail call i32 @llvm.fshl.i32(i32 %363, i32 %363, i32 30) #5
  %382 = tail call i32 @llvm.fshl.i32(i32 %363, i32 %363, i32 19) #5
  %383 = xor i32 %381, %382
  %384 = tail call i32 @llvm.fshl.i32(i32 %363, i32 %363, i32 10) #5
  %385 = xor i32 %383, %384
  %386 = and i32 %363, %334
  %387 = or i32 %363, %334
  %388 = and i32 %387, %305
  %389 = or i32 %388, %386
  %390 = add i32 %385, %389
  %391 = add i32 %380, %269
  %392 = add i32 %390, %380
  %393 = tail call i32 @llvm.fshl.i32(i32 %391, i32 %391, i32 26) #5
  %394 = tail call i32 @llvm.fshl.i32(i32 %391, i32 %391, i32 21) #5
  %395 = xor i32 %393, %394
  %396 = tail call i32 @llvm.fshl.i32(i32 %391, i32 %391, i32 7) #5
  %397 = xor i32 %395, %396
  %398 = xor i32 %362, %333
  %399 = and i32 %391, %398
  %400 = xor i32 %399, %333
  %401 = or i32 %277, 4
  %402 = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %401
  %403 = load i32, ptr %402, align 4
  %404 = getelementptr i32, ptr %4, i32 %401
  %405 = load i32, ptr %404, align 4
  %406 = add i32 %403, %304
  %407 = add i32 %406, %405
  %408 = add i32 %407, %400
  %409 = add i32 %408, %397
  %410 = tail call i32 @llvm.fshl.i32(i32 %392, i32 %392, i32 30) #5
  %411 = tail call i32 @llvm.fshl.i32(i32 %392, i32 %392, i32 19) #5
  %412 = xor i32 %410, %411
  %413 = tail call i32 @llvm.fshl.i32(i32 %392, i32 %392, i32 10) #5
  %414 = xor i32 %412, %413
  %415 = and i32 %392, %363
  %416 = or i32 %392, %363
  %417 = and i32 %416, %334
  %418 = or i32 %417, %415
  %419 = add i32 %414, %418
  %420 = add i32 %409, %305
  %421 = add i32 %419, %409
  %422 = tail call i32 @llvm.fshl.i32(i32 %420, i32 %420, i32 26) #5
  %423 = tail call i32 @llvm.fshl.i32(i32 %420, i32 %420, i32 21) #5
  %424 = xor i32 %422, %423
  %425 = tail call i32 @llvm.fshl.i32(i32 %420, i32 %420, i32 7) #5
  %426 = xor i32 %424, %425
  %427 = xor i32 %391, %362
  %428 = and i32 %420, %427
  %429 = xor i32 %428, %362
  %430 = or i32 %277, 5
  %431 = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %430
  %432 = load i32, ptr %431, align 4
  %433 = getelementptr i32, ptr %4, i32 %430
  %434 = load i32, ptr %433, align 4
  %435 = add i32 %333, %432
  %436 = add i32 %435, %434
  %437 = add i32 %436, %429
  %438 = add i32 %437, %426
  %439 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 30) #5
  %440 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 19) #5
  %441 = xor i32 %439, %440
  %442 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 10) #5
  %443 = xor i32 %441, %442
  %444 = and i32 %421, %392
  %445 = or i32 %421, %392
  %446 = and i32 %445, %363
  %447 = or i32 %446, %444
  %448 = add i32 %443, %447
  %449 = add i32 %438, %334
  %450 = add i32 %448, %438
  %451 = tail call i32 @llvm.fshl.i32(i32 %449, i32 %449, i32 26) #5
  %452 = tail call i32 @llvm.fshl.i32(i32 %449, i32 %449, i32 21) #5
  %453 = xor i32 %451, %452
  %454 = tail call i32 @llvm.fshl.i32(i32 %449, i32 %449, i32 7) #5
  %455 = xor i32 %453, %454
  %456 = xor i32 %420, %391
  %457 = and i32 %449, %456
  %458 = xor i32 %457, %391
  %459 = or i32 %277, 6
  %460 = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %459
  %461 = load i32, ptr %460, align 4
  %462 = getelementptr i32, ptr %4, i32 %459
  %463 = load i32, ptr %462, align 4
  %464 = add i32 %463, %461
  %465 = add i32 %464, %362
  %466 = add i32 %465, %458
  %467 = add i32 %466, %455
  %468 = tail call i32 @llvm.fshl.i32(i32 %450, i32 %450, i32 30) #5
  %469 = tail call i32 @llvm.fshl.i32(i32 %450, i32 %450, i32 19) #5
  %470 = xor i32 %468, %469
  %471 = tail call i32 @llvm.fshl.i32(i32 %450, i32 %450, i32 10) #5
  %472 = xor i32 %470, %471
  %473 = and i32 %450, %421
  %474 = or i32 %450, %421
  %475 = and i32 %474, %392
  %476 = or i32 %475, %473
  %477 = add i32 %472, %476
  %478 = add i32 %467, %363
  %479 = add i32 %477, %467
  %480 = tail call i32 @llvm.fshl.i32(i32 %478, i32 %478, i32 26) #5
  %481 = tail call i32 @llvm.fshl.i32(i32 %478, i32 %478, i32 21) #5
  %482 = xor i32 %480, %481
  %483 = tail call i32 @llvm.fshl.i32(i32 %478, i32 %478, i32 7) #5
  %484 = xor i32 %482, %483
  %485 = xor i32 %449, %420
  %486 = and i32 %478, %485
  %487 = xor i32 %486, %420
  %488 = or i32 %277, 7
  %489 = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %488
  %490 = load i32, ptr %489, align 4
  %491 = getelementptr i32, ptr %4, i32 %488
  %492 = load i32, ptr %491, align 4
  %493 = add i32 %492, %490
  %494 = add i32 %493, %391
  %495 = add i32 %494, %487
  %496 = add i32 %495, %484
  %497 = tail call i32 @llvm.fshl.i32(i32 %479, i32 %479, i32 30) #5
  %498 = tail call i32 @llvm.fshl.i32(i32 %479, i32 %479, i32 19) #5
  %499 = xor i32 %497, %498
  %500 = tail call i32 @llvm.fshl.i32(i32 %479, i32 %479, i32 10) #5
  %501 = xor i32 %499, %500
  %502 = and i32 %479, %450
  %503 = or i32 %479, %450
  %504 = and i32 %503, %421
  %505 = or i32 %504, %502
  %506 = add i32 %501, %505
  %507 = add i32 %496, %392
  %508 = add i32 %506, %496
  %509 = add nuw nsw i32 %277, 8
  %510 = icmp ult i32 %277, 56
  br i1 %510, label %268, label %511

511:                                              ; preds = %268
  %512 = add i32 %508, %260
  store i32 %512, ptr %0, align 4
  %513 = add i32 %479, %261
  store i32 %513, ptr %38, align 4
  %514 = add i32 %450, %262
  store i32 %514, ptr %39, align 4
  %515 = add i32 %421, %263
  store i32 %515, ptr %40, align 4
  %516 = add i32 %507, %264
  store i32 %516, ptr %41, align 4
  %517 = add i32 %478, %265
  store i32 %517, ptr %42, align 4
  %518 = add i32 %449, %266
  store i32 %518, ptr %43, align 4
  %519 = add i32 %420, %267
  store i32 %519, ptr %44, align 4
  %520 = add i32 %46, 64
  %521 = getelementptr i8, ptr %1, i32 %520
  %522 = add i32 %46, 127
  %523 = icmp ult i32 %522, %2
  br i1 %523, label %45, label %524

524:                                              ; preds = %511
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %4, i8 0, i32 256, i1 false) #5
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #5, !srcloc !9
  br label %525

525:                                              ; preds = %524, %3
  %526 = phi i32 [ 0, %524 ], [ %8, %3 ]
  %527 = phi i32 [ %520, %524 ], [ 0, %3 ]
  %528 = phi ptr [ %521, %524 ], [ %1, %3 ]
  %529 = getelementptr inbounds %struct.sha256_state, ptr %0, i32 0, i32 2
  %530 = getelementptr i8, ptr %529, i32 %526
  %531 = sub i32 %2, %527
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %530, ptr align 1 %528, i32 %531, i1 false)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sha224_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  tail call void @sha256_update(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sha256_final(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.sha256_state, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = shl i64 %5, 3
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #5
  store i64 %7, ptr %3, align 8
  %8 = trunc i64 %5 to i32
  %9 = and i32 %8, 63
  %10 = icmp ult i32 %9, 56
  %11 = select i1 %10, i32 56, i32 120
  %12 = sub nsw i32 %11, %9
  tail call void @sha256_update(ptr noundef %0, ptr noundef nonnull @__sha256_final.padding, i32 noundef %12) #5
  call void @sha256_update(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 8) #5
  %13 = load i32, ptr %0, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  store i32 %14, ptr %1, align 1
  %15 = getelementptr [8 x i32], ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i32, ptr %1, i32 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  store i32 %18, ptr %17, align 1
  %19 = getelementptr [8 x i32], ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i32, ptr %1, i32 2
  %22 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  store i32 %22, ptr %21, align 1
  %23 = getelementptr [8 x i32], ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i32, ptr %1, i32 3
  %26 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  store i32 %26, ptr %25, align 1
  %27 = getelementptr [8 x i32], ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i32, ptr %1, i32 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  store i32 %30, ptr %29, align 1
  %31 = getelementptr [8 x i32], ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i32, ptr %1, i32 5
  %34 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  store i32 %34, ptr %33, align 1
  %35 = getelementptr [8 x i32], ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i32, ptr %1, i32 6
  %38 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  store i32 %38, ptr %37, align 1
  %39 = getelementptr [8 x i32], ptr %0, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i32, ptr %1, i32 7
  %42 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  store i32 %42, ptr %41, align 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(104) %0, i8 0, i32 104, i1 false) #5
  tail call void asm sideeffect "", "r,~{memory}"(ptr %0) #5, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sha224_final(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.sha256_state, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = shl i64 %5, 3
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #5
  store i64 %7, ptr %3, align 8
  %8 = trunc i64 %5 to i32
  %9 = and i32 %8, 63
  %10 = icmp ult i32 %9, 56
  %11 = select i1 %10, i32 56, i32 120
  %12 = sub nsw i32 %11, %9
  tail call void @sha256_update(ptr noundef %0, ptr noundef nonnull @__sha256_final.padding, i32 noundef %12) #5
  call void @sha256_update(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 8) #5
  %13 = load i32, ptr %0, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  store i32 %14, ptr %1, align 1
  %15 = getelementptr [8 x i32], ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i32, ptr %1, i32 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  store i32 %18, ptr %17, align 1
  %19 = getelementptr [8 x i32], ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i32, ptr %1, i32 2
  %22 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  store i32 %22, ptr %21, align 1
  %23 = getelementptr [8 x i32], ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i32, ptr %1, i32 3
  %26 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  store i32 %26, ptr %25, align 1
  %27 = getelementptr [8 x i32], ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i32, ptr %1, i32 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  store i32 %30, ptr %29, align 1
  %31 = getelementptr [8 x i32], ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i32, ptr %1, i32 5
  %34 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  store i32 %34, ptr %33, align 1
  %35 = getelementptr [8 x i32], ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i32, ptr %1, i32 6
  %38 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  store i32 %38, ptr %37, align 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(104) %0, i8 0, i32 104, i1 false) #5
  tail call void asm sideeffect "", "r,~{memory}"(ptr %0) #5, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sha256(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sha256_state, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #5
  %6 = getelementptr inbounds i8, ptr %5, i32 40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %6, i8 0, i32 64, i1 false), !annotation !8
  store i32 1779033703, ptr %5, align 8
  %7 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 1
  store i32 -1150833019, ptr %7, align 4
  %8 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 2
  store i32 1013904242, ptr %8, align 8
  %9 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 3
  store i32 -1521486534, ptr %9, align 4
  %10 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 4
  store i32 1359893119, ptr %10, align 8
  %11 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 5
  store i32 -1694144372, ptr %11, align 4
  %12 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 6
  store i32 528734635, ptr %12, align 8
  %13 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 7
  store i32 1541459225, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sha256_state, ptr %5, i32 0, i32 1
  store i64 0, ptr %14, align 8
  call void @sha256_update(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %15 = load i64, ptr %14, align 8
  %16 = shl i64 %15, 3
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #5
  store i64 %17, ptr %4, align 8
  %18 = trunc i64 %15 to i32
  %19 = and i32 %18, 63
  %20 = icmp ult i32 %19, 56
  %21 = select i1 %20, i32 56, i32 120
  %22 = sub nsw i32 %21, %19
  call void @sha256_update(ptr noundef nonnull %5, ptr noundef nonnull @__sha256_final.padding, i32 noundef %22) #5
  call void @sha256_update(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 8) #5
  %23 = load i32, ptr %5, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  store i32 %24, ptr %2, align 1
  %25 = load i32, ptr %7, align 4
  %26 = getelementptr i32, ptr %2, i32 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  store i32 %27, ptr %26, align 1
  %28 = load i32, ptr %8, align 8
  %29 = getelementptr i32, ptr %2, i32 2
  %30 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  store i32 %30, ptr %29, align 1
  %31 = load i32, ptr %9, align 4
  %32 = getelementptr i32, ptr %2, i32 3
  %33 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  store i32 %33, ptr %32, align 1
  %34 = load i32, ptr %10, align 8
  %35 = getelementptr i32, ptr %2, i32 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  store i32 %36, ptr %35, align 1
  %37 = load i32, ptr %11, align 4
  %38 = getelementptr i32, ptr %2, i32 5
  %39 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  store i32 %39, ptr %38, align 1
  %40 = load i32, ptr %12, align 8
  %41 = getelementptr i32, ptr %2, i32 6
  %42 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  store i32 %42, ptr %41, align 1
  %43 = load i32, ptr %13, align 4
  %44 = getelementptr i32, ptr %2, i32 7
  %45 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  store i32 %45, ptr %44, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i32 104, i1 false) #5
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %5) #5, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 2148719155}
