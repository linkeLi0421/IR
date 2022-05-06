; ModuleID = '/llk/IR/net/ipv6/mcast_snoop.c_pt.bc'
source_filename = "../net/ipv6/mcast_snoop.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_mc_check_mld:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_mc_check_mld\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_mc_check_mld:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.115, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.115 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.mld_msg = type { %struct.icmp6hdr, %struct.in6_addr }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.136 }
%union.anon.136 = type { [1 x i32] }

@__kstrtab_ipv6_mc_check_mld = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_mc_check_mld = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_mc_check_mld = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_mc_check_mld to i32), ptr @__kstrtab_ipv6_mc_check_mld, ptr @__kstrtabns_ipv6_mc_check_mld }, section "___ksymtab+ipv6_mc_check_mld", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ipv6_mc_check_mld], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_mc_check_mld(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = add i32 %14, 40
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = icmp ugt i32 %15, %20
  br i1 %21, label %22, label %32, !prof !8

22:                                               ; preds = %1
  %23 = icmp ult i32 %17, %15
  br i1 %23, label %284, label %24, !prof !8

24:                                               ; preds = %22
  %25 = sub i32 %15, %20
  %26 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %25) #5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %284, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 8
  %30 = load i16, ptr %6, align 4
  %31 = zext i16 %30 to i32
  br label %32

32:                                               ; preds = %28, %1
  %33 = phi i16 [ %30, %28 ], [ %7, %1 ]
  %34 = phi i32 [ %31, %28 ], [ %8, %1 ]
  %35 = phi ptr [ %29, %28 ], [ %5, %1 ]
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, -16
  %39 = icmp eq i8 %38, 96
  br i1 %39, label %40, label %284

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.ipv6hdr, ptr %36, i32 0, i32 2
  %42 = load i16, ptr %41, align 4
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #5
  %44 = zext i16 %43 to i32
  %45 = add i32 %15, %44
  %46 = load i32, ptr %16, align 8
  %47 = icmp uge i32 %46, %45
  %48 = icmp ugt i32 %45, %15
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %284

50:                                               ; preds = %40
  %51 = load ptr, ptr %10, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = ptrtoint ptr %35 to i32
  %54 = sub i32 %52, %53
  %55 = trunc i32 %54 to i16
  %56 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %57 = trunc i32 %15 to i16
  %58 = add i16 %55, %57
  store i16 %58, ptr %56, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2, !annotation !9
  %59 = zext i16 %33 to i32
  %60 = getelementptr i8, ptr %35, i32 %59
  %61 = getelementptr inbounds %struct.ipv6hdr, ptr %60, i32 0, i32 3
  %62 = load i8, ptr %61, align 2
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %50
  store i8 0, ptr %2, align 1
  %65 = ptrtoint ptr %60 to i32
  %66 = add i32 %65, 40
  %67 = sub i32 %66, %52
  %68 = call i32 @ipv6_skip_exthdr(ptr noundef %0, i32 noundef %67, ptr noundef nonnull %2, ptr noundef nonnull %3) #5
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i8, ptr %2, align 1
  %72 = icmp eq i8 %71, 58
  br i1 %72, label %75, label %73

73:                                               ; preds = %70, %64, %50
  %74 = phi i32 [ -42, %70 ], [ -22, %64 ], [ -42, %50 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #5
  br label %284

75:                                               ; preds = %70
  %76 = load ptr, ptr %10, align 4
  %77 = load ptr, ptr %4, align 8
  %78 = ptrtoint ptr %76 to i32
  %79 = ptrtoint ptr %77 to i32
  %80 = sub i32 %78, %79
  %81 = trunc i32 %80 to i16
  %82 = trunc i32 %68 to i16
  %83 = add i16 %81, %82
  store i16 %83, ptr %56, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #5
  %84 = zext i16 %83 to i32
  %85 = getelementptr i8, ptr %77, i32 %84
  %86 = ptrtoint ptr %85 to i32
  %87 = sub i32 %86, %78
  %88 = add i32 %87, 8
  %89 = load i16, ptr %6, align 4
  %90 = zext i16 %89 to i32
  %91 = getelementptr i8, ptr %77, i32 %90
  %92 = getelementptr inbounds %struct.ipv6hdr, ptr %91, i32 0, i32 2
  %93 = load i16, ptr %92, align 4
  %94 = call i16 @llvm.bswap.i16(i16 %93) #5
  %95 = zext i16 %94 to i32
  %96 = add nuw nsw i32 %95, %90
  %97 = add nuw nsw i32 %96, 40
  %98 = sub nsw i32 %97, %84
  %99 = add i32 %84, %78
  %100 = sub i32 %97, %99
  %101 = add i32 %100, %86
  %102 = icmp ult i32 %101, %88
  br i1 %102, label %284, label %103

103:                                              ; preds = %75
  %104 = load i32, ptr %16, align 8
  %105 = load i32, ptr %18, align 4
  %106 = sub i32 %104, %105
  %107 = icmp ugt i32 %88, %106
  br i1 %107, label %108, label %114, !prof !8

108:                                              ; preds = %103
  %109 = icmp ult i32 %104, %88
  br i1 %109, label %284, label %110, !prof !8

110:                                              ; preds = %108
  %111 = sub i32 %88, %106
  %112 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %111) #5
  %113 = icmp eq ptr %112, null
  br i1 %113, label %284, label %114

114:                                              ; preds = %110, %103
  %115 = call ptr @skb_checksum_trimmed(ptr noundef %0, i32 noundef %98, ptr noundef nonnull @ipv6_mc_validate_checksum) #5
  %116 = icmp eq ptr %115, null
  br i1 %116, label %284, label %117

117:                                              ; preds = %114
  %118 = icmp eq ptr %115, %0
  br i1 %118, label %120, label %119

119:                                              ; preds = %117
  call void @kfree_skb_reason(ptr noundef nonnull %115, i32 noundef 0) #5
  br label %120

120:                                              ; preds = %119, %117
  %121 = load ptr, ptr %4, align 8
  %122 = load i16, ptr %56, align 2
  %123 = zext i16 %122 to i32
  %124 = getelementptr i8, ptr %121, i32 %123
  %125 = load ptr, ptr %10, align 4
  %126 = ptrtoint ptr %124 to i32
  %127 = ptrtoint ptr %125 to i32
  %128 = sub i32 %126, %127
  %129 = add i32 %128, 24
  %130 = load i16, ptr %6, align 4
  %131 = zext i16 %130 to i32
  %132 = getelementptr i8, ptr %121, i32 %131
  %133 = getelementptr inbounds %struct.ipv6hdr, ptr %132, i32 0, i32 2
  %134 = load i16, ptr %133, align 4
  %135 = call i16 @llvm.bswap.i16(i16 %134) #5
  %136 = zext i16 %135 to i32
  %137 = add i32 %123, %127
  %138 = sub i32 40, %137
  %139 = add i32 %138, %126
  %140 = add i32 %139, %131
  %141 = add i32 %140, %136
  %142 = icmp ult i32 %141, %129
  br i1 %142, label %284, label %143

143:                                              ; preds = %120
  %144 = load i32, ptr %16, align 8
  %145 = load i32, ptr %18, align 4
  %146 = sub i32 %144, %145
  %147 = icmp ugt i32 %129, %146
  br i1 %147, label %148, label %158, !prof !8

148:                                              ; preds = %143
  %149 = icmp ult i32 %144, %129
  br i1 %149, label %284, label %150, !prof !8

150:                                              ; preds = %148
  %151 = sub i32 %129, %146
  %152 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %151) #5
  %153 = icmp eq ptr %152, null
  br i1 %153, label %284, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %4, align 8
  %156 = load i16, ptr %56, align 2
  %157 = zext i16 %156 to i32
  br label %158

158:                                              ; preds = %154, %143
  %159 = phi i32 [ %157, %154 ], [ %123, %143 ]
  %160 = phi ptr [ %155, %154 ], [ %121, %143 ]
  %161 = getelementptr i8, ptr %160, i32 %159
  %162 = load i8, ptr %161, align 4
  switch i8 %162, label %283 [
    i8 -124, label %284
    i8 -125, label %284
    i8 -113, label %163
    i8 -126, label %194
  ]

163:                                              ; preds = %158
  %164 = load ptr, ptr %10, align 4
  %165 = ptrtoint ptr %161 to i32
  %166 = ptrtoint ptr %164 to i32
  %167 = sub i32 %165, %166
  %168 = add i32 %167, 8
  %169 = load i16, ptr %6, align 4
  %170 = zext i16 %169 to i32
  %171 = getelementptr i8, ptr %160, i32 %170
  %172 = getelementptr inbounds %struct.ipv6hdr, ptr %171, i32 0, i32 2
  %173 = load i16, ptr %172, align 4
  %174 = call i16 @llvm.bswap.i16(i16 %173) #5
  %175 = zext i16 %174 to i32
  %176 = add i32 %165, 40
  %177 = add i32 %159, %166
  %178 = sub i32 %176, %177
  %179 = add i32 %178, %170
  %180 = add i32 %179, %175
  %181 = icmp ult i32 %180, %168
  br i1 %181, label %284, label %182

182:                                              ; preds = %163
  %183 = load i32, ptr %16, align 8
  %184 = load i32, ptr %18, align 4
  %185 = sub i32 %183, %184
  %186 = icmp ugt i32 %168, %185
  br i1 %186, label %187, label %193, !prof !8

187:                                              ; preds = %182
  %188 = icmp ult i32 %183, %168
  br i1 %188, label %284, label %189, !prof !8

189:                                              ; preds = %187
  %190 = sub i32 %168, %185
  %191 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %190) #5
  %192 = icmp eq ptr %191, null
  br i1 %192, label %284, label %193

193:                                              ; preds = %189, %182
  br label %284

194:                                              ; preds = %158
  %195 = load i16, ptr %6, align 4
  %196 = zext i16 %195 to i32
  %197 = getelementptr i8, ptr %160, i32 %196
  %198 = getelementptr inbounds %struct.ipv6hdr, ptr %197, i32 0, i32 2
  %199 = load i16, ptr %198, align 4
  %200 = call i16 @llvm.bswap.i16(i16 %199) #5
  %201 = zext i16 %200 to i32
  %202 = sub nsw i32 40, %159
  %203 = add nsw i32 %202, %196
  %204 = add nsw i32 %203, %201
  %205 = getelementptr inbounds %struct.ipv6hdr, ptr %197, i32 0, i32 5
  %206 = call i32 @__ipv6_addr_type(ptr noundef %205) #5
  %207 = and i32 %206, 32
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %284, label %209

209:                                              ; preds = %194
  %210 = icmp eq i32 %204, 24
  br i1 %210, label %247, label %211

211:                                              ; preds = %209
  %212 = icmp ult i32 %204, 28
  br i1 %212, label %284, label %213

213:                                              ; preds = %211
  %214 = load ptr, ptr %4, align 8
  %215 = load i16, ptr %56, align 2
  %216 = zext i16 %215 to i32
  %217 = getelementptr i8, ptr %214, i32 %216
  %218 = load ptr, ptr %10, align 4
  %219 = ptrtoint ptr %217 to i32
  %220 = ptrtoint ptr %218 to i32
  %221 = sub i32 %219, %220
  %222 = add i32 %221, 28
  %223 = load i16, ptr %6, align 4
  %224 = zext i16 %223 to i32
  %225 = getelementptr i8, ptr %214, i32 %224
  %226 = getelementptr inbounds %struct.ipv6hdr, ptr %225, i32 0, i32 2
  %227 = load i16, ptr %226, align 4
  %228 = call i16 @llvm.bswap.i16(i16 %227) #5
  %229 = zext i16 %228 to i32
  %230 = add i32 %216, %220
  %231 = sub i32 40, %230
  %232 = add i32 %231, %219
  %233 = add i32 %232, %224
  %234 = add i32 %233, %229
  %235 = icmp ult i32 %234, %222
  br i1 %235, label %284, label %236

236:                                              ; preds = %213
  %237 = load i32, ptr %16, align 8
  %238 = load i32, ptr %18, align 4
  %239 = sub i32 %237, %238
  %240 = icmp ugt i32 %222, %239
  br i1 %240, label %241, label %247, !prof !8

241:                                              ; preds = %236
  %242 = icmp ult i32 %237, %222
  br i1 %242, label %284, label %243, !prof !8

243:                                              ; preds = %241
  %244 = sub i32 %222, %239
  %245 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %244) #5
  %246 = icmp eq ptr %245, null
  br i1 %246, label %284, label %247

247:                                              ; preds = %243, %236, %209
  %248 = load ptr, ptr %4, align 8
  %249 = load i16, ptr %56, align 2
  %250 = zext i16 %249 to i32
  %251 = getelementptr i8, ptr %248, i32 %250
  %252 = getelementptr inbounds %struct.mld_msg, ptr %251, i32 0, i32 1
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr [4 x i32], ptr %252, i32 0, i32 1
  %255 = load i32, ptr %254, align 4
  %256 = or i32 %255, %253
  %257 = getelementptr [4 x i32], ptr %252, i32 0, i32 2
  %258 = load i32, ptr %257, align 4
  %259 = or i32 %256, %258
  %260 = getelementptr [4 x i32], ptr %252, i32 0, i32 3
  %261 = load i32, ptr %260, align 4
  %262 = or i32 %259, %261
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %282

264:                                              ; preds = %247
  %265 = load i16, ptr %6, align 4
  %266 = zext i16 %265 to i32
  %267 = getelementptr i8, ptr %248, i32 %266
  %268 = getelementptr inbounds %struct.ipv6hdr, ptr %267, i32 0, i32 6
  %269 = load i32, ptr %268, align 4
  %270 = xor i32 %269, 767
  %271 = getelementptr [4 x i32], ptr %268, i32 0, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = or i32 %270, %272
  %274 = getelementptr [4 x i32], ptr %268, i32 0, i32 2
  %275 = load i32, ptr %274, align 4
  %276 = or i32 %273, %275
  %277 = getelementptr [4 x i32], ptr %268, i32 0, i32 3
  %278 = load i32, ptr %277, align 4
  %279 = xor i32 %278, 16777216
  %280 = or i32 %276, %279
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %264, %247
  br label %284

283:                                              ; preds = %158
  br label %284

284:                                              ; preds = %283, %282, %264, %243, %241, %213, %211, %194, %193, %189, %187, %163, %158, %158, %150, %148, %120, %114, %110, %108, %75, %73, %40, %32, %24, %22
  %285 = phi i32 [ %74, %73 ], [ -61, %283 ], [ -61, %150 ], [ 0, %158 ], [ 0, %158 ], [ 0, %193 ], [ -22, %189 ], [ -22, %163 ], [ -22, %187 ], [ 0, %282 ], [ -22, %194 ], [ -22, %211 ], [ -22, %243 ], [ -22, %264 ], [ -22, %213 ], [ -22, %241 ], [ -61, %120 ], [ -61, %148 ], [ -22, %24 ], [ -22, %32 ], [ -22, %40 ], [ -22, %22 ], [ -22, %110 ], [ -22, %114 ], [ -22, %75 ], [ -22, %108 ]
  ret i32 %285
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_checksum_trimmed(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @ipv6_mc_validate_checksum(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 32767
  store i16 %4, ptr %2, align 8
  %5 = lshr i16 %3, 5
  %6 = trunc i16 %5 to i2
  switch i2 %6, label %7 [
    i2 1, label %23
    i2 -1, label %10
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  br label %41

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = ptrtoint ptr %15 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %13, %18
  %21 = add i32 %20, %19
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %10, %1
  %24 = or i16 %3, -32768
  store i16 %24, ptr %2, align 8
  %25 = and i16 %3, 96
  %26 = icmp eq i16 %25, 32
  br i1 %26, label %27, label %81

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %29 = load i16, ptr %28, align 2
  %30 = trunc i16 %29 to i8
  %31 = and i8 %30, 12
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = and i16 %24, -97
  store i16 %34, ptr %2, align 8
  br label %81

35:                                               ; preds = %27
  %36 = add i8 %30, 12
  %37 = and i8 %36, 12
  %38 = zext i8 %37 to i16
  %39 = and i16 %29, -13
  %40 = or i16 %39, %38
  store i16 %40, ptr %28, align 2
  br label %81

41:                                               ; preds = %10, %7
  %42 = phi ptr [ %9, %7 ], [ %17, %10 ]
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %42, i32 %45
  %47 = getelementptr inbounds %struct.ipv6hdr, ptr %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.ipv6hdr, ptr %46, i32 0, i32 6
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %52 = tail call i32 @__csum_ipv6_magic(ptr noundef %47, ptr noundef %48, i32 noundef %51, i32 noundef 973078528, i32 noundef 0) #5
  %53 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %52) #6, !srcloc !10
  %54 = lshr i32 %53, 16
  %55 = or i32 %54, -65536
  %56 = load i16, ptr %2, align 8
  %57 = and i16 %56, 96
  %58 = icmp eq i16 %57, 64
  br i1 %58, label %59, label %70

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, %55
  %63 = icmp ult i32 %62, %61
  %64 = zext i1 %63 to i32
  %65 = add i32 %62, %64
  %66 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %65) #6, !srcloc !10
  %67 = icmp ugt i32 %66, -65537
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = or i16 %56, -32768
  br label %78

70:                                               ; preds = %59, %41
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %55, ptr %71, align 4
  %72 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #5
  %73 = icmp eq i16 %72, 0
  %74 = load i16, ptr %2, align 8
  %75 = select i1 %73, i16 -32768, i16 0
  %76 = and i16 %74, 32767
  %77 = or i16 %76, %75
  br label %78

78:                                               ; preds = %70, %68
  %79 = phi i16 [ %77, %70 ], [ %69, %68 ]
  %80 = phi i16 [ %72, %70 ], [ 0, %68 ]
  store i16 %79, ptr %2, align 8
  br label %81

81:                                               ; preds = %78, %35, %33, %23
  %82 = phi i16 [ %80, %78 ], [ 0, %23 ], [ 0, %33 ], [ 0, %35 ]
  ret i16 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 5175542}
