; ModuleID = '/llk/IR/lib/bch.c_pt.bc'
source_filename = "../lib/bch.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bch_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22bch_encode\22\09\09\09\09\09"
module asm "__kstrtabns_bch_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bch_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22bch_decode\22\09\09\09\09\09"
module asm "__kstrtabns_bch_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bch_init:\09\09\09\09\09"
module asm "\09.asciz \09\22bch_init\22\09\09\09\09\09"
module asm "__kstrtabns_bch_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bch_free:\09\09\09\09\09"
module asm "\09.asciz \09\22bch_free\22\09\09\09\09\09"
module asm "__kstrtabns_bch_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bch_control = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], i8 }
%struct.gf_poly = type { i32, [0 x i32] }
%struct.gf_poly_deg1 = type { %struct.gf_poly, [2 x i32] }

@.str = private unnamed_addr constant [10 x i8] c"lib/bch.c\00", align 1
@__kstrtab_bch_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_bch_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_bch_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bch_encode to i32), ptr @__kstrtab_bch_encode, ptr @__kstrtabns_bch_encode }, section "___ksymtab_gpl+bch_encode", align 4
@__kstrtab_bch_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_bch_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_bch_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bch_decode to i32), ptr @__kstrtab_bch_decode, ptr @__kstrtabns_bch_decode }, section "___ksymtab_gpl+bch_decode", align 4
@bch_init.prim_poly_tab = internal unnamed_addr constant [11 x i32] [i32 37, i32 67, i32 131, i32 285, i32 529, i32 1033, i32 2053, i32 4179, i32 8219, i32 16427, i32 32771], align 4
@__kstrtab_bch_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_bch_init = external dso_local constant [0 x i8], align 1
@__ksymtab_bch_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bch_init to i32), ptr @__kstrtab_bch_init, ptr @__kstrtabns_bch_init }, section "___ksymtab_gpl+bch_init", align 4
@__kstrtab_bch_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_bch_free = external dso_local constant [0 x i8], align 1
@__ksymtab_bch_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bch_free to i32), ptr @__kstrtab_bch_free, ptr @__kstrtabns_bch_free }, section "___ksymtab_gpl+bch_free", align 4
@__UNIQUE_ID_file104 = internal constant [17 x i8] c"bch.file=lib/bch\00", section ".modinfo", align 1
@__UNIQUE_ID_license105 = internal constant [16 x i8] c"bch.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author106 = internal constant [48 x i8] c"bch.author=Ivan Djelic <ivan.djelic@parrot.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description107 = internal constant [43 x i8] c"bch.description=Binary BCH encoder/decoder\00", section ".modinfo", align 1
@swap_bits_table = internal unnamed_addr constant [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author106, ptr @__UNIQUE_ID_description107, ptr @__UNIQUE_ID_file104, ptr @__UNIQUE_ID_license105, ptr @__ksymtab_bch_decode, ptr @__ksymtab_bch_encode, ptr @__ksymtab_bch_free, ptr @__ksymtab_bch_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bch_encode(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [30 x i32], align 4
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %9, %7
  %11 = add i32 %10, 31
  %12 = lshr i32 %11, 5
  %13 = add nsw i32 %12, -1
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(120) %6, i8 0, i32 120, i1 false), !annotation !8
  %14 = lshr i32 %11, 3
  %15 = and i32 %14, 536870908
  %16 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = shl i32 %12, 8
  %19 = getelementptr i32, ptr %17, i32 %18
  %20 = getelementptr i32, ptr %19, i32 %18
  %21 = getelementptr i32, ptr %20, i32 %18
  %22 = icmp ugt i32 %15, 120
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #10
  br label %533

24:                                               ; preds = %4
  %25 = icmp eq ptr %3, null
  %26 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  br i1 %25, label %29, label %28

28:                                               ; preds = %24
  tail call fastcc void @load_ecc8(ptr noundef %0, ptr noundef %27, ptr noundef nonnull %3)
  br label %30

29:                                               ; preds = %24
  tail call void @llvm.memset.p0.i32(ptr align 4 %27, i8 0, i32 %15, i1 false)
  br label %30

30:                                               ; preds = %29, %28
  %31 = ptrtoint ptr %1 to i32
  %32 = and i32 %31, 3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %203, label %34

34:                                               ; preds = %30
  %35 = sub nuw nsw i32 4, %32
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 %2)
  %37 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %0, align 4
  %40 = load i32, ptr %8, align 4
  %41 = mul i32 %40, %39
  %42 = add i32 %41, 31
  %43 = lshr i32 %42, 5
  %44 = icmp eq i32 %36, 0
  br i1 %44, label %200, label %45

45:                                               ; preds = %34
  %46 = add nsw i32 %43, -1
  %47 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 15
  %48 = icmp ugt i32 %42, 63
  %49 = getelementptr i32, ptr %38, i32 %46
  %50 = tail call i32 @llvm.smax.i32(i32 %46, i32 1) #10
  %51 = getelementptr i8, ptr %1, i32 1
  %52 = load i8, ptr %1, align 1
  %53 = load i8, ptr %47, align 4, !range !10
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = zext i8 %52 to i32
  %57 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %56
  %58 = load i8, ptr %57, align 1
  br label %59

59:                                               ; preds = %55, %45
  %60 = phi i8 [ %58, %55 ], [ %52, %45 ]
  %61 = load ptr, ptr %16, align 4
  %62 = load i32, ptr %38, align 4
  %63 = lshr i32 %62, 24
  %64 = zext i8 %60 to i32
  %65 = xor i32 %63, %64
  %66 = mul i32 %65, %43
  %67 = getelementptr i32, ptr %61, i32 %66
  br i1 %48, label %68, label %81

68:                                               ; preds = %68, %59
  %69 = phi i32 [ %75, %68 ], [ %62, %59 ]
  %70 = phi ptr [ %77, %68 ], [ %67, %59 ]
  %71 = phi i32 [ %73, %68 ], [ 0, %59 ]
  %72 = getelementptr i32, ptr %38, i32 %71
  %73 = add nuw nsw i32 %71, 1
  %74 = getelementptr i32, ptr %38, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %75, i32 8) #10
  %77 = getelementptr i32, ptr %70, i32 1
  %78 = load i32, ptr %70, align 4
  %79 = xor i32 %76, %78
  store i32 %79, ptr %72, align 4
  %80 = icmp eq i32 %73, %50
  br i1 %80, label %81, label %68

81:                                               ; preds = %68, %59
  %82 = phi ptr [ %67, %59 ], [ %77, %68 ]
  %83 = load i32, ptr %49, align 4
  %84 = shl i32 %83, 8
  %85 = load i32, ptr %82, align 4
  %86 = xor i32 %84, %85
  store i32 %86, ptr %49, align 4
  %87 = icmp eq i32 %36, 1
  br i1 %87, label %200, label %88

88:                                               ; preds = %81
  %89 = getelementptr i8, ptr %1, i32 2
  %90 = load i8, ptr %51, align 1
  %91 = load i8, ptr %47, align 4, !range !10
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = zext i8 %90 to i32
  %95 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %94
  %96 = load i8, ptr %95, align 1
  br label %97

97:                                               ; preds = %93, %88
  %98 = phi i8 [ %96, %93 ], [ %90, %88 ]
  %99 = load ptr, ptr %16, align 4
  %100 = load i32, ptr %38, align 4
  %101 = lshr i32 %100, 24
  %102 = zext i8 %98 to i32
  %103 = xor i32 %101, %102
  %104 = mul i32 %103, %43
  %105 = getelementptr i32, ptr %99, i32 %104
  br i1 %48, label %106, label %119

106:                                              ; preds = %106, %97
  %107 = phi i32 [ %113, %106 ], [ %100, %97 ]
  %108 = phi ptr [ %115, %106 ], [ %105, %97 ]
  %109 = phi i32 [ %111, %106 ], [ 0, %97 ]
  %110 = getelementptr i32, ptr %38, i32 %109
  %111 = add nuw nsw i32 %109, 1
  %112 = getelementptr i32, ptr %38, i32 %111
  %113 = load i32, ptr %112, align 4
  %114 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %113, i32 8) #10
  %115 = getelementptr i32, ptr %108, i32 1
  %116 = load i32, ptr %108, align 4
  %117 = xor i32 %114, %116
  store i32 %117, ptr %110, align 4
  %118 = icmp eq i32 %111, %50
  br i1 %118, label %119, label %106

119:                                              ; preds = %106, %97
  %120 = phi ptr [ %105, %97 ], [ %115, %106 ]
  %121 = load i32, ptr %49, align 4
  %122 = shl i32 %121, 8
  %123 = load i32, ptr %120, align 4
  %124 = xor i32 %122, %123
  store i32 %124, ptr %49, align 4
  %125 = icmp eq i32 %36, 2
  br i1 %125, label %200, label %126

126:                                              ; preds = %119
  %127 = getelementptr i8, ptr %1, i32 3
  %128 = load i8, ptr %89, align 1
  %129 = load i8, ptr %47, align 4, !range !10
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = zext i8 %128 to i32
  %133 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %132
  %134 = load i8, ptr %133, align 1
  br label %135

135:                                              ; preds = %131, %126
  %136 = phi i8 [ %134, %131 ], [ %128, %126 ]
  %137 = load ptr, ptr %16, align 4
  %138 = load i32, ptr %38, align 4
  %139 = lshr i32 %138, 24
  %140 = zext i8 %136 to i32
  %141 = xor i32 %139, %140
  %142 = mul i32 %141, %43
  %143 = getelementptr i32, ptr %137, i32 %142
  br i1 %48, label %144, label %157

144:                                              ; preds = %144, %135
  %145 = phi i32 [ %151, %144 ], [ %138, %135 ]
  %146 = phi ptr [ %153, %144 ], [ %143, %135 ]
  %147 = phi i32 [ %149, %144 ], [ 0, %135 ]
  %148 = getelementptr i32, ptr %38, i32 %147
  %149 = add nuw nsw i32 %147, 1
  %150 = getelementptr i32, ptr %38, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %151, i32 8) #10
  %153 = getelementptr i32, ptr %146, i32 1
  %154 = load i32, ptr %146, align 4
  %155 = xor i32 %152, %154
  store i32 %155, ptr %148, align 4
  %156 = icmp eq i32 %149, %50
  br i1 %156, label %157, label %144

157:                                              ; preds = %144, %135
  %158 = phi ptr [ %143, %135 ], [ %153, %144 ]
  %159 = load i32, ptr %49, align 4
  %160 = shl i32 %159, 8
  %161 = load i32, ptr %158, align 4
  %162 = xor i32 %160, %161
  store i32 %162, ptr %49, align 4
  %163 = icmp eq i32 %36, 3
  br i1 %163, label %200, label %164

164:                                              ; preds = %157
  %165 = load i8, ptr %127, align 1
  %166 = load i8, ptr %47, align 4, !range !10
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = zext i8 %165 to i32
  %170 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %169
  %171 = load i8, ptr %170, align 1
  br label %172

172:                                              ; preds = %168, %164
  %173 = phi i8 [ %171, %168 ], [ %165, %164 ]
  %174 = load ptr, ptr %16, align 4
  %175 = load i32, ptr %38, align 4
  %176 = lshr i32 %175, 24
  %177 = zext i8 %173 to i32
  %178 = xor i32 %176, %177
  %179 = mul i32 %178, %43
  %180 = getelementptr i32, ptr %174, i32 %179
  br i1 %48, label %181, label %194

181:                                              ; preds = %181, %172
  %182 = phi i32 [ %188, %181 ], [ %175, %172 ]
  %183 = phi ptr [ %190, %181 ], [ %180, %172 ]
  %184 = phi i32 [ %186, %181 ], [ 0, %172 ]
  %185 = getelementptr i32, ptr %38, i32 %184
  %186 = add nuw nsw i32 %184, 1
  %187 = getelementptr i32, ptr %38, i32 %186
  %188 = load i32, ptr %187, align 4
  %189 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %188, i32 8) #10
  %190 = getelementptr i32, ptr %183, i32 1
  %191 = load i32, ptr %183, align 4
  %192 = xor i32 %189, %191
  store i32 %192, ptr %185, align 4
  %193 = icmp eq i32 %186, %50
  br i1 %193, label %194, label %181

194:                                              ; preds = %181, %172
  %195 = phi ptr [ %180, %172 ], [ %190, %181 ]
  %196 = load i32, ptr %49, align 4
  %197 = shl i32 %196, 8
  %198 = load i32, ptr %195, align 4
  %199 = xor i32 %197, %198
  store i32 %199, ptr %49, align 4
  br label %200

200:                                              ; preds = %194, %157, %119, %81, %34
  %201 = getelementptr i8, ptr %1, i32 %36
  %202 = sub i32 %2, %36
  br label %203

203:                                              ; preds = %200, %30
  %204 = phi i32 [ %202, %200 ], [ %2, %30 ]
  %205 = phi ptr [ %201, %200 ], [ %1, %30 ]
  %206 = and i32 %204, -4
  %207 = getelementptr i8, ptr %205, i32 %206
  %208 = and i32 %204, 3
  %209 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 8
  %210 = load ptr, ptr %209, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %6, ptr align 4 %210, i32 %15, i1 false)
  %211 = icmp ult i32 %204, 4
  br i1 %211, label %301, label %212

212:                                              ; preds = %203
  %213 = lshr i32 %204, 2
  %214 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 15
  %215 = load i8, ptr %214, align 4, !range !10
  %216 = icmp eq i8 %215, 0
  %217 = icmp eq i32 %13, 0
  %218 = getelementptr [30 x i32], ptr %6, i32 0, i32 %13
  br label %219

219:                                              ; preds = %288, %212
  %220 = phi i32 [ %213, %212 ], [ %222, %288 ]
  %221 = phi ptr [ %205, %212 ], [ %223, %288 ]
  %222 = add nsw i32 %220, -1
  %223 = getelementptr i32, ptr %221, i32 1
  %224 = load i32, ptr %221, align 4
  %225 = tail call i32 @llvm.bswap.i32(i32 %224)
  br i1 %216, label %251, label %226

226:                                              ; preds = %219
  %227 = and i32 %225, 255
  %228 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %227
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  %231 = lshr i32 %225, 8
  %232 = and i32 %231, 255
  %233 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %232
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i32
  %236 = shl nuw nsw i32 %235, 8
  %237 = or i32 %236, %230
  %238 = lshr i32 %225, 16
  %239 = and i32 %238, 255
  %240 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %239
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i32
  %243 = shl nuw nsw i32 %242, 16
  %244 = or i32 %237, %243
  %245 = lshr i32 %225, 24
  %246 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %245
  %247 = load i8, ptr %246, align 1
  %248 = zext i8 %247 to i32
  %249 = shl nuw i32 %248, 24
  %250 = or i32 %244, %249
  br label %251

251:                                              ; preds = %226, %219
  %252 = phi i32 [ %250, %226 ], [ %225, %219 ]
  %253 = load i32, ptr %6, align 4
  %254 = xor i32 %253, %252
  %255 = and i32 %254, 255
  %256 = mul i32 %255, %12
  %257 = getelementptr i32, ptr %17, i32 %256
  %258 = lshr i32 %254, 8
  %259 = and i32 %258, 255
  %260 = mul i32 %259, %12
  %261 = getelementptr i32, ptr %19, i32 %260
  %262 = lshr i32 %254, 16
  %263 = and i32 %262, 255
  %264 = mul i32 %263, %12
  %265 = getelementptr i32, ptr %20, i32 %264
  %266 = lshr i32 %254, 24
  %267 = mul i32 %266, %12
  %268 = getelementptr i32, ptr %21, i32 %267
  br i1 %217, label %288, label %269

269:                                              ; preds = %269, %251
  %270 = phi i32 [ %271, %269 ], [ 0, %251 ]
  %271 = add nuw i32 %270, 1
  %272 = getelementptr [30 x i32], ptr %6, i32 0, i32 %271
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr i32, ptr %257, i32 %270
  %275 = load i32, ptr %274, align 4
  %276 = xor i32 %275, %273
  %277 = getelementptr i32, ptr %261, i32 %270
  %278 = load i32, ptr %277, align 4
  %279 = xor i32 %276, %278
  %280 = getelementptr i32, ptr %265, i32 %270
  %281 = load i32, ptr %280, align 4
  %282 = xor i32 %279, %281
  %283 = getelementptr i32, ptr %268, i32 %270
  %284 = load i32, ptr %283, align 4
  %285 = xor i32 %282, %284
  %286 = getelementptr [30 x i32], ptr %6, i32 0, i32 %270
  store i32 %285, ptr %286, align 4
  %287 = icmp eq i32 %271, %13
  br i1 %287, label %288, label %269

288:                                              ; preds = %269, %251
  %289 = getelementptr i32, ptr %257, i32 %13
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr i32, ptr %261, i32 %13
  %292 = load i32, ptr %291, align 4
  %293 = xor i32 %292, %290
  %294 = getelementptr i32, ptr %265, i32 %13
  %295 = load i32, ptr %294, align 4
  %296 = xor i32 %293, %295
  %297 = getelementptr i32, ptr %268, i32 %13
  %298 = load i32, ptr %297, align 4
  %299 = xor i32 %296, %298
  store i32 %299, ptr %218, align 4
  %300 = icmp eq i32 %222, 0
  br i1 %300, label %301, label %219

301:                                              ; preds = %288, %203
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %210, ptr nonnull align 4 %6, i32 %15, i1 false)
  %302 = icmp eq i32 %208, 0
  br i1 %302, label %426, label %303

303:                                              ; preds = %301
  %304 = load ptr, ptr %209, align 4
  %305 = load i32, ptr %0, align 4
  %306 = load i32, ptr %8, align 4
  %307 = mul i32 %306, %305
  %308 = add i32 %307, 31
  %309 = lshr i32 %308, 5
  %310 = add nsw i32 %309, -1
  %311 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 15
  %312 = icmp ugt i32 %308, 63
  %313 = getelementptr i32, ptr %304, i32 %310
  %314 = tail call i32 @llvm.smax.i32(i32 %310, i32 1) #10
  %315 = getelementptr i8, ptr %207, i32 1
  %316 = load i8, ptr %207, align 1
  %317 = load i8, ptr %311, align 4, !range !10
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %323, label %319

319:                                              ; preds = %303
  %320 = zext i8 %316 to i32
  %321 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %320
  %322 = load i8, ptr %321, align 1
  br label %323

323:                                              ; preds = %319, %303
  %324 = phi i8 [ %322, %319 ], [ %316, %303 ]
  %325 = load ptr, ptr %16, align 4
  %326 = load i32, ptr %304, align 4
  %327 = lshr i32 %326, 24
  %328 = zext i8 %324 to i32
  %329 = xor i32 %327, %328
  %330 = mul i32 %329, %309
  %331 = getelementptr i32, ptr %325, i32 %330
  br i1 %312, label %332, label %345

332:                                              ; preds = %332, %323
  %333 = phi i32 [ %339, %332 ], [ %326, %323 ]
  %334 = phi ptr [ %341, %332 ], [ %331, %323 ]
  %335 = phi i32 [ %337, %332 ], [ 0, %323 ]
  %336 = getelementptr i32, ptr %304, i32 %335
  %337 = add nuw nsw i32 %335, 1
  %338 = getelementptr i32, ptr %304, i32 %337
  %339 = load i32, ptr %338, align 4
  %340 = tail call i32 @llvm.fshl.i32(i32 %333, i32 %339, i32 8) #10
  %341 = getelementptr i32, ptr %334, i32 1
  %342 = load i32, ptr %334, align 4
  %343 = xor i32 %340, %342
  store i32 %343, ptr %336, align 4
  %344 = icmp eq i32 %337, %314
  br i1 %344, label %345, label %332

345:                                              ; preds = %332, %323
  %346 = phi ptr [ %331, %323 ], [ %341, %332 ]
  %347 = load i32, ptr %313, align 4
  %348 = shl i32 %347, 8
  %349 = load i32, ptr %346, align 4
  %350 = xor i32 %348, %349
  store i32 %350, ptr %313, align 4
  %351 = icmp eq i32 %208, 1
  br i1 %351, label %426, label %352

352:                                              ; preds = %345
  %353 = getelementptr i8, ptr %315, i32 1
  %354 = load i8, ptr %315, align 1
  %355 = load i8, ptr %311, align 4, !range !10
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %352
  %358 = zext i8 %354 to i32
  %359 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %358
  %360 = load i8, ptr %359, align 1
  br label %361

361:                                              ; preds = %357, %352
  %362 = phi i8 [ %360, %357 ], [ %354, %352 ]
  %363 = load ptr, ptr %16, align 4
  %364 = load i32, ptr %304, align 4
  %365 = lshr i32 %364, 24
  %366 = zext i8 %362 to i32
  %367 = xor i32 %365, %366
  %368 = mul i32 %367, %309
  %369 = getelementptr i32, ptr %363, i32 %368
  br i1 %312, label %370, label %383

370:                                              ; preds = %370, %361
  %371 = phi i32 [ %377, %370 ], [ %364, %361 ]
  %372 = phi ptr [ %379, %370 ], [ %369, %361 ]
  %373 = phi i32 [ %375, %370 ], [ 0, %361 ]
  %374 = getelementptr i32, ptr %304, i32 %373
  %375 = add nuw nsw i32 %373, 1
  %376 = getelementptr i32, ptr %304, i32 %375
  %377 = load i32, ptr %376, align 4
  %378 = tail call i32 @llvm.fshl.i32(i32 %371, i32 %377, i32 8) #10
  %379 = getelementptr i32, ptr %372, i32 1
  %380 = load i32, ptr %372, align 4
  %381 = xor i32 %378, %380
  store i32 %381, ptr %374, align 4
  %382 = icmp eq i32 %375, %314
  br i1 %382, label %383, label %370

383:                                              ; preds = %370, %361
  %384 = phi ptr [ %369, %361 ], [ %379, %370 ]
  %385 = load i32, ptr %313, align 4
  %386 = shl i32 %385, 8
  %387 = load i32, ptr %384, align 4
  %388 = xor i32 %386, %387
  store i32 %388, ptr %313, align 4
  %389 = icmp eq i32 %208, 2
  br i1 %389, label %426, label %390

390:                                              ; preds = %383
  %391 = load i8, ptr %353, align 1
  %392 = load i8, ptr %311, align 4, !range !10
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %398, label %394

394:                                              ; preds = %390
  %395 = zext i8 %391 to i32
  %396 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %395
  %397 = load i8, ptr %396, align 1
  br label %398

398:                                              ; preds = %394, %390
  %399 = phi i8 [ %397, %394 ], [ %391, %390 ]
  %400 = load ptr, ptr %16, align 4
  %401 = load i32, ptr %304, align 4
  %402 = lshr i32 %401, 24
  %403 = zext i8 %399 to i32
  %404 = xor i32 %402, %403
  %405 = mul i32 %404, %309
  %406 = getelementptr i32, ptr %400, i32 %405
  br i1 %312, label %407, label %420

407:                                              ; preds = %407, %398
  %408 = phi i32 [ %414, %407 ], [ %401, %398 ]
  %409 = phi ptr [ %416, %407 ], [ %406, %398 ]
  %410 = phi i32 [ %412, %407 ], [ 0, %398 ]
  %411 = getelementptr i32, ptr %304, i32 %410
  %412 = add nuw nsw i32 %410, 1
  %413 = getelementptr i32, ptr %304, i32 %412
  %414 = load i32, ptr %413, align 4
  %415 = tail call i32 @llvm.fshl.i32(i32 %408, i32 %414, i32 8) #10
  %416 = getelementptr i32, ptr %409, i32 1
  %417 = load i32, ptr %409, align 4
  %418 = xor i32 %415, %417
  store i32 %418, ptr %411, align 4
  %419 = icmp eq i32 %412, %314
  br i1 %419, label %420, label %407

420:                                              ; preds = %407, %398
  %421 = phi ptr [ %406, %398 ], [ %416, %407 ]
  %422 = load i32, ptr %313, align 4
  %423 = shl i32 %422, 8
  %424 = load i32, ptr %421, align 4
  %425 = xor i32 %423, %424
  store i32 %425, ptr %313, align 4
  br label %426

426:                                              ; preds = %420, %383, %345, %301
  br i1 %25, label %533, label %427

427:                                              ; preds = %426
  %428 = load ptr, ptr %209, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 0, ptr %5, align 4
  %429 = load i32, ptr %0, align 4
  %430 = load i32, ptr %8, align 4
  %431 = mul i32 %430, %429
  %432 = add i32 %431, 31
  %433 = lshr i32 %432, 5
  %434 = add nsw i32 %433, -1
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %490, label %436

436:                                              ; preds = %427
  %437 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 15
  br label %438

438:                                              ; preds = %485, %436
  %439 = phi i32 [ 0, %436 ], [ %488, %485 ]
  %440 = phi ptr [ %3, %436 ], [ %487, %485 ]
  %441 = getelementptr i32, ptr %428, i32 %439
  %442 = load i32, ptr %441, align 4
  %443 = lshr i32 %442, 24
  %444 = trunc i32 %443 to i8
  %445 = load i8, ptr %437, align 4, !range !10
  %446 = icmp eq i8 %445, 0
  br i1 %446, label %450, label %447

447:                                              ; preds = %438
  %448 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %443
  %449 = load i8, ptr %448, align 1
  br label %450

450:                                              ; preds = %447, %438
  %451 = phi i8 [ %449, %447 ], [ %444, %438 ]
  %452 = getelementptr i8, ptr %440, i32 1
  store i8 %451, ptr %440, align 1
  %453 = load i32, ptr %441, align 4
  %454 = lshr i32 %453, 16
  %455 = trunc i32 %454 to i8
  %456 = load i8, ptr %437, align 4, !range !10
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %462, label %458

458:                                              ; preds = %450
  %459 = and i32 %454, 255
  %460 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %459
  %461 = load i8, ptr %460, align 1
  br label %462

462:                                              ; preds = %458, %450
  %463 = phi i8 [ %461, %458 ], [ %455, %450 ]
  %464 = getelementptr i8, ptr %440, i32 2
  store i8 %463, ptr %452, align 1
  %465 = load i32, ptr %441, align 4
  %466 = lshr i32 %465, 8
  %467 = trunc i32 %466 to i8
  %468 = load i8, ptr %437, align 4, !range !10
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %474, label %470

470:                                              ; preds = %462
  %471 = and i32 %466, 255
  %472 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %471
  %473 = load i8, ptr %472, align 1
  br label %474

474:                                              ; preds = %470, %462
  %475 = phi i8 [ %473, %470 ], [ %467, %462 ]
  %476 = getelementptr i8, ptr %440, i32 3
  store i8 %475, ptr %464, align 1
  %477 = load i32, ptr %441, align 4
  %478 = trunc i32 %477 to i8
  %479 = load i8, ptr %437, align 4, !range !10
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %485, label %481

481:                                              ; preds = %474
  %482 = and i32 %477, 255
  %483 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %482
  %484 = load i8, ptr %483, align 1
  br label %485

485:                                              ; preds = %481, %474
  %486 = phi i8 [ %484, %481 ], [ %478, %474 ]
  %487 = getelementptr i8, ptr %440, i32 4
  store i8 %486, ptr %476, align 1
  %488 = add nuw i32 %439, 1
  %489 = icmp eq i32 %488, %434
  br i1 %489, label %490, label %438

490:                                              ; preds = %485, %427
  %491 = phi ptr [ %3, %427 ], [ %487, %485 ]
  %492 = getelementptr i32, ptr %428, i32 %434
  %493 = load i32, ptr %492, align 4
  %494 = lshr i32 %493, 24
  %495 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 15
  %496 = load i8, ptr %495, align 4, !range !10
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %498, label %505

498:                                              ; preds = %490
  %499 = trunc i32 %494 to i8
  store i8 %499, ptr %5, align 4
  %500 = lshr i32 %493, 16
  %501 = trunc i32 %500 to i8
  %502 = lshr i32 %493, 8
  %503 = trunc i32 %502 to i8
  %504 = trunc i32 %493 to i8
  br label %519

505:                                              ; preds = %490
  %506 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %494
  %507 = load i8, ptr %506, align 1
  store i8 %507, ptr %5, align 4
  %508 = lshr i32 %493, 16
  %509 = and i32 %508, 255
  %510 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %509
  %511 = load i8, ptr %510, align 1
  %512 = lshr i32 %493, 8
  %513 = and i32 %512, 255
  %514 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %513
  %515 = load i8, ptr %514, align 1
  %516 = and i32 %493, 255
  %517 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %516
  %518 = load i8, ptr %517, align 1
  br label %519

519:                                              ; preds = %505, %498
  %520 = phi i8 [ %501, %498 ], [ %511, %505 ]
  %521 = phi i8 [ %503, %498 ], [ %515, %505 ]
  %522 = phi i8 [ %504, %498 ], [ %518, %505 ]
  %523 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %520, ptr %523, align 1
  %524 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %521, ptr %524, align 2
  %525 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 %522, ptr %525, align 1
  %526 = load i32, ptr %0, align 4
  %527 = load i32, ptr %8, align 4
  %528 = mul i32 %527, %526
  %529 = add i32 %528, 7
  %530 = lshr i32 %529, 3
  %531 = mul nsw i32 %434, -4
  %532 = add nsw i32 %530, %531
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %491, ptr nonnull align 4 %5, i32 %532, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %533

533:                                              ; preds = %519, %426, %23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @load_ecc8(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 0, ptr %4, align 4
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = add i32 %8, 31
  %10 = lshr i32 %9, 5
  %11 = add nsw i32 %10, -1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %74, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 15
  br label %15

15:                                               ; preds = %60, %13
  %16 = phi i32 [ 0, %13 ], [ %67, %60 ]
  %17 = phi ptr [ %2, %13 ], [ %68, %60 ]
  %18 = load i8, ptr %17, align 1
  %19 = load i8, ptr %14, align 4, !range !10
  %20 = icmp eq i8 %19, 0
  %21 = zext i8 %18 to i32
  br i1 %20, label %22, label %35

22:                                               ; preds = %15
  %23 = shl nuw i32 %21, 24
  %24 = getelementptr i8, ptr %17, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 16
  %28 = or i32 %27, %23
  %29 = getelementptr i8, ptr %17, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = or i32 %28, %32
  %34 = getelementptr i8, ptr %17, i32 3
  br label %60

35:                                               ; preds = %15
  %36 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %21
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 %38, 24
  %40 = getelementptr i8, ptr %17, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 16
  %47 = or i32 %46, %39
  %48 = getelementptr i8, ptr %17, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or i32 %47, %54
  %56 = getelementptr i8, ptr %17, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %58
  br label %60

60:                                               ; preds = %35, %22
  %61 = phi i32 [ %55, %35 ], [ %33, %22 ]
  %62 = phi ptr [ %59, %35 ], [ %34, %22 ]
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %61, %64
  %66 = getelementptr i32, ptr %1, i32 %16
  store i32 %65, ptr %66, align 4
  %67 = add nuw i32 %16, 1
  %68 = getelementptr i8, ptr %17, i32 4
  %69 = icmp eq i32 %67, %11
  br i1 %69, label %70, label %15

70:                                               ; preds = %60
  %71 = load i32, ptr %0, align 4
  %72 = load i32, ptr %6, align 4
  %73 = mul i32 %72, %71
  br label %74

74:                                               ; preds = %70, %3
  %75 = phi i32 [ %73, %70 ], [ %8, %3 ]
  %76 = phi ptr [ %68, %70 ], [ %2, %3 ]
  %77 = add i32 %75, 7
  %78 = lshr i32 %77, 3
  %79 = mul nsw i32 %11, -4
  %80 = add nsw i32 %78, %79
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr align 1 %76, i32 %80, i1 false)
  %81 = load i8, ptr %4, align 4
  %82 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 15
  %83 = load i8, ptr %82, align 4, !range !10
  %84 = icmp eq i8 %83, 0
  %85 = zext i8 %81 to i32
  br i1 %84, label %86, label %99

86:                                               ; preds = %74
  %87 = shl nuw i32 %85, 24
  %88 = getelementptr inbounds i8, ptr %4, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = or i32 %91, %87
  %93 = getelementptr inbounds i8, ptr %4, i32 2
  %94 = load i8, ptr %93, align 2
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or i32 %92, %96
  %98 = getelementptr inbounds i8, ptr %4, i32 3
  br label %124

99:                                               ; preds = %74
  %100 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %85
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw i32 %102, 24
  %104 = getelementptr inbounds i8, ptr %4, i32 1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 16
  %111 = or i32 %110, %103
  %112 = getelementptr inbounds i8, ptr %4, i32 2
  %113 = load i8, ptr %112, align 2
  %114 = zext i8 %113 to i32
  %115 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 8
  %119 = or i32 %111, %118
  %120 = getelementptr inbounds i8, ptr %4, i32 3
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %122
  br label %124

124:                                              ; preds = %99, %86
  %125 = phi ptr [ %98, %86 ], [ %123, %99 ]
  %126 = phi i32 [ %97, %86 ], [ %119, %99 ]
  %127 = load i8, ptr %125, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %126, %128
  %130 = getelementptr i32, ptr %1, i32 %11
  store i32 %129, ptr %130, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bch_decode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef %6) #0 {
  %8 = load i32, ptr %0, align 4
  %9 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %8
  %12 = add i32 %11, 31
  %13 = lshr i32 %12, 5
  %14 = shl i32 %2, 3
  %15 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = icmp ugt i32 %14, %19
  br i1 %20, label %329, label %21

21:                                               ; preds = %7
  %22 = icmp eq ptr %5, null
  br i1 %22, label %23, label %160

23:                                               ; preds = %21
  %24 = icmp eq ptr %4, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = icmp ne ptr %1, null
  %27 = icmp ne ptr %3, null
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %329

29:                                               ; preds = %25
  tail call void @bch_encode(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef null)
  br label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  tail call fastcc void @load_ecc8(ptr noundef %0, ptr noundef %32, ptr noundef nonnull %4)
  %33 = icmp eq ptr %3, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %30, %29
  %35 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  tail call fastcc void @load_ecc8(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %3)
  %37 = icmp ult i32 %12, 32
  br i1 %37, label %329, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 8
  %40 = call i32 @llvm.umax.i32(i32 %13, i32 1)
  %41 = load ptr, ptr %39, align 4
  br label %42

42:                                               ; preds = %42, %38
  %43 = phi ptr [ %41, %38 ], [ %52, %42 ]
  %44 = phi i32 [ 0, %38 ], [ %55, %42 ]
  %45 = phi i32 [ 0, %38 ], [ %56, %42 ]
  %46 = load ptr, ptr %35, align 4
  %47 = getelementptr i32, ptr %46, i32 %45
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i32, ptr %43, i32 %45
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %48
  store i32 %51, ptr %49, align 4
  %52 = load ptr, ptr %39, align 4
  %53 = getelementptr i32, ptr %52, i32 %45
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, %44
  %56 = add nuw nsw i32 %45, 1
  %57 = icmp eq i32 %56, %40
  br i1 %57, label %58, label %42

58:                                               ; preds = %42
  %59 = icmp eq i32 %55, 0
  br i1 %59, label %329, label %60

60:                                               ; preds = %58, %30
  %61 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 11
  %64 = load ptr, ptr %63, align 4
  %65 = load i32, ptr %9, align 4
  %66 = load i32, ptr %17, align 4
  %67 = and i32 %66, 31
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %60
  %70 = sub nuw nsw i32 32, %67
  %71 = shl nsw i32 -1, %70
  %72 = sdiv i32 %66, 32
  %73 = getelementptr i32, ptr %62, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %69, %60
  %77 = shl i32 %65, 1
  %78 = shl i32 %65, 3
  tail call void @llvm.memset.p0.i32(ptr align 4 %64, i8 0, i32 %78, i1 false) #10
  %79 = icmp sgt i32 %77, 0
  %80 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 5
  br label %81

81:                                               ; preds = %124, %76
  %82 = phi ptr [ %62, %76 ], [ %84, %124 ]
  %83 = phi i32 [ %66, %76 ], [ %86, %124 ]
  %84 = getelementptr i32, ptr %82, i32 1
  %85 = load i32, ptr %82, align 4
  %86 = add i32 %83, -32
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %124, label %88

88:                                               ; preds = %120, %81
  %89 = phi i32 [ %122, %120 ], [ %85, %81 ]
  %90 = tail call i32 @llvm.ctlz.i32(i32 %89, i1 true) #10, !range !11
  %91 = xor i32 %90, 31
  br i1 %79, label %92, label %120

92:                                               ; preds = %88
  %93 = add i32 %91, %86
  br label %94

94:                                               ; preds = %110, %92
  %95 = phi i32 [ 0, %92 ], [ %118, %110 ]
  %96 = or i32 %95, 1
  %97 = mul i32 %96, %93
  %98 = load ptr, ptr %80, align 4
  %99 = load i32, ptr %15, align 4
  %100 = icmp ugt i32 %99, %97
  br i1 %100, label %110, label %101

101:                                              ; preds = %94
  %102 = load i32, ptr %0, align 4
  br label %103

103:                                              ; preds = %103, %101
  %104 = phi i32 [ %97, %101 ], [ %108, %103 ]
  %105 = sub i32 %104, %99
  %106 = and i32 %105, %99
  %107 = lshr i32 %105, %102
  %108 = add i32 %107, %106
  %109 = icmp ult i32 %108, %99
  br i1 %109, label %110, label %103

110:                                              ; preds = %103, %94
  %111 = phi i32 [ %97, %94 ], [ %108, %103 ]
  %112 = getelementptr i16, ptr %98, i32 %111
  %113 = load i16, ptr %112, align 2
  %114 = zext i16 %113 to i32
  %115 = getelementptr i32, ptr %64, i32 %95
  %116 = load i32, ptr %115, align 4
  %117 = xor i32 %116, %114
  store i32 %117, ptr %115, align 4
  %118 = add nuw nsw i32 %95, 2
  %119 = icmp slt i32 %118, %77
  br i1 %119, label %94, label %120

120:                                              ; preds = %110, %88
  %121 = shl nuw i32 1, %91
  %122 = xor i32 %121, %89
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %88

124:                                              ; preds = %120, %81
  %125 = icmp sgt i32 %86, 0
  br i1 %125, label %81, label %126

126:                                              ; preds = %124
  %127 = icmp sgt i32 %65, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 6
  br label %130

130:                                              ; preds = %149, %128
  %131 = phi i32 [ 0, %128 ], [ %154, %149 ]
  %132 = getelementptr i32, ptr %64, i32 %131
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %80, align 4
  %137 = load ptr, ptr %129, align 4
  %138 = getelementptr i16, ptr %137, i32 %133
  %139 = load i16, ptr %138, align 2
  %140 = zext i16 %139 to i32
  %141 = shl nuw nsw i32 %140, 1
  %142 = load i32, ptr %15, align 4
  %143 = icmp ugt i32 %142, %141
  %144 = select i1 %143, i32 0, i32 %142
  %145 = sub i32 %141, %144
  %146 = getelementptr i16, ptr %136, i32 %145
  %147 = load i16, ptr %146, align 2
  %148 = zext i16 %147 to i32
  br label %149

149:                                              ; preds = %135, %130
  %150 = phi i32 [ %148, %135 ], [ 0, %130 ]
  %151 = shl nuw i32 %131, 1
  %152 = or i32 %151, 1
  %153 = getelementptr i32, ptr %64, i32 %152
  store i32 %150, ptr %153, align 4
  %154 = add nuw nsw i32 %131, 1
  %155 = icmp eq i32 %154, %65
  br i1 %155, label %156, label %130

156:                                              ; preds = %149, %126
  %157 = load ptr, ptr %63, align 4
  %158 = load i32, ptr %9, align 4
  %159 = load i32, ptr %15, align 4
  br label %160

160:                                              ; preds = %156, %21
  %161 = phi i32 [ %16, %21 ], [ %159, %156 ]
  %162 = phi i32 [ %10, %21 ], [ %158, %156 ]
  %163 = phi ptr [ %5, %21 ], [ %157, %156 ]
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 13
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 14
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr %struct.bch_control, ptr %0, i32 0, i32 14, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = shl i32 %162, 3
  %172 = add i32 %171, 8
  tail call void @llvm.memset.p0.i32(ptr align 4 %168, i8 0, i32 %172, i1 false) #10
  tail call void @llvm.memset.p0.i32(ptr align 4 %166, i8 0, i32 %172, i1 false) #10
  store i32 0, ptr %168, align 4
  %173 = getelementptr inbounds %struct.gf_poly, ptr %168, i32 0, i32 1
  store i32 1, ptr %173, align 4
  store i32 0, ptr %166, align 4
  %174 = getelementptr inbounds %struct.gf_poly, ptr %166, i32 0, i32 1
  store i32 1, ptr %174, align 4
  %175 = icmp eq i32 %162, 0
  br i1 %175, label %298, label %176

176:                                              ; preds = %160
  %177 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 5
  %179 = add i32 %162, -1
  br label %180

180:                                              ; preds = %293, %176
  %181 = phi i32 [ 0, %176 ], [ %294, %293 ]
  %182 = phi i32 [ -1, %176 ], [ %249, %293 ]
  %183 = phi i32 [ %164, %176 ], [ %295, %293 ]
  %184 = phi i32 [ 1, %176 ], [ %248, %293 ]
  %185 = phi i32 [ 0, %176 ], [ %296, %293 ]
  %186 = icmp ugt i32 %181, %162
  br i1 %186, label %298, label %187

187:                                              ; preds = %180
  %188 = icmp eq i32 %183, 0
  br i1 %188, label %247, label %189

189:                                              ; preds = %187
  %190 = shl i32 %185, 1
  %191 = sub i32 %190, %182
  %192 = shl i32 %181, 2
  %193 = add i32 %192, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %170, ptr align 4 %166, i32 %193, i1 false) #10
  %194 = load ptr, ptr %177, align 4
  %195 = getelementptr i16, ptr %194, i32 %183
  %196 = load i16, ptr %195, align 2
  %197 = zext i16 %196 to i32
  %198 = add i32 %161, %197
  %199 = getelementptr i16, ptr %194, i32 %184
  %200 = load i16, ptr %199, align 2
  %201 = zext i16 %200 to i32
  %202 = sub i32 %198, %201
  br label %203

203:                                              ; preds = %235, %189
  %204 = phi i32 [ 0, %189 ], [ %236, %235 ]
  %205 = getelementptr %struct.gf_poly, ptr %168, i32 0, i32 1, i32 %204
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %235, label %208

208:                                              ; preds = %203
  %209 = load ptr, ptr %177, align 4
  %210 = getelementptr i16, ptr %209, i32 %206
  %211 = load i16, ptr %210, align 2
  %212 = zext i16 %211 to i32
  %213 = add i32 %202, %212
  %214 = load ptr, ptr %178, align 4
  %215 = load i32, ptr %15, align 4
  %216 = icmp ugt i32 %215, %213
  br i1 %216, label %226, label %217

217:                                              ; preds = %208
  %218 = load i32, ptr %0, align 4
  br label %219

219:                                              ; preds = %219, %217
  %220 = phi i32 [ %213, %217 ], [ %224, %219 ]
  %221 = sub i32 %220, %215
  %222 = and i32 %221, %215
  %223 = lshr i32 %221, %218
  %224 = add i32 %223, %222
  %225 = icmp ult i32 %224, %215
  br i1 %225, label %226, label %219

226:                                              ; preds = %219, %208
  %227 = phi i32 [ %213, %208 ], [ %224, %219 ]
  %228 = getelementptr i16, ptr %214, i32 %227
  %229 = load i16, ptr %228, align 2
  %230 = zext i16 %229 to i32
  %231 = add i32 %204, %191
  %232 = getelementptr %struct.gf_poly, ptr %166, i32 0, i32 1, i32 %231
  %233 = load i32, ptr %232, align 4
  %234 = xor i32 %233, %230
  store i32 %234, ptr %232, align 4
  br label %235

235:                                              ; preds = %226, %203
  %236 = add i32 %204, 1
  %237 = load i32, ptr %168, align 4
  %238 = icmp ugt i32 %236, %237
  br i1 %238, label %239, label %203

239:                                              ; preds = %235
  %240 = add i32 %237, %191
  %241 = load i32, ptr %166, align 4
  %242 = icmp ugt i32 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  store i32 %240, ptr %166, align 4
  %244 = load i32, ptr %170, align 4
  %245 = shl i32 %244, 2
  %246 = add i32 %245, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %168, ptr align 4 %170, i32 %246, i1 false) #10
  br label %247

247:                                              ; preds = %243, %239, %187
  %248 = phi i32 [ %183, %243 ], [ %184, %239 ], [ %184, %187 ]
  %249 = phi i32 [ %190, %243 ], [ %182, %239 ], [ %182, %187 ]
  %250 = icmp ult i32 %185, %179
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = load i32, ptr %166, align 4
  br label %293

253:                                              ; preds = %247
  %254 = shl i32 %185, 1
  %255 = add i32 %254, 2
  %256 = getelementptr i32, ptr %163, i32 %255
  %257 = load i32, ptr %256, align 4
  %258 = load i32, ptr %166, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %293, label %260

260:                                              ; preds = %288, %253
  %261 = phi i32 [ %290, %288 ], [ %257, %253 ]
  %262 = phi i32 [ %291, %288 ], [ 1, %253 ]
  %263 = getelementptr %struct.gf_poly, ptr %166, i32 0, i32 1, i32 %262
  %264 = load i32, ptr %263, align 4
  %265 = sub i32 %255, %262
  %266 = getelementptr i32, ptr %163, i32 %265
  %267 = load i32, ptr %266, align 4
  %268 = icmp ne i32 %264, 0
  %269 = icmp ne i32 %267, 0
  %270 = and i1 %268, %269
  br i1 %270, label %271, label %288

271:                                              ; preds = %260
  %272 = load ptr, ptr %178, align 4
  %273 = load ptr, ptr %177, align 4
  %274 = getelementptr i16, ptr %273, i32 %264
  %275 = load i16, ptr %274, align 2
  %276 = zext i16 %275 to i32
  %277 = getelementptr i16, ptr %273, i32 %267
  %278 = load i16, ptr %277, align 2
  %279 = zext i16 %278 to i32
  %280 = add nuw nsw i32 %279, %276
  %281 = load i32, ptr %15, align 4
  %282 = icmp ugt i32 %281, %280
  %283 = select i1 %282, i32 0, i32 %281
  %284 = sub i32 %280, %283
  %285 = getelementptr i16, ptr %272, i32 %284
  %286 = load i16, ptr %285, align 2
  %287 = zext i16 %286 to i32
  br label %288

288:                                              ; preds = %271, %260
  %289 = phi i32 [ %287, %271 ], [ 0, %260 ]
  %290 = xor i32 %289, %261
  %291 = add i32 %262, 1
  %292 = icmp ugt i32 %291, %258
  br i1 %292, label %293, label %260

293:                                              ; preds = %288, %253, %251
  %294 = phi i32 [ %252, %251 ], [ 0, %253 ], [ %258, %288 ]
  %295 = phi i32 [ %183, %251 ], [ %257, %253 ], [ %290, %288 ]
  %296 = add nuw i32 %185, 1
  %297 = icmp eq i32 %296, %162
  br i1 %297, label %298, label %180

298:                                              ; preds = %293, %180, %160
  %299 = phi i32 [ 0, %160 ], [ %181, %180 ], [ %294, %293 ]
  %300 = icmp ugt i32 %299, %162
  %301 = select i1 %300, i32 -1, i32 %299
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %326

303:                                              ; preds = %298
  %304 = load ptr, ptr %165, align 4
  %305 = tail call fastcc i32 @find_poly_roots(ptr noundef %0, i32 noundef 1, ptr noundef %304, ptr noundef %6)
  %306 = icmp eq i32 %301, %305
  br i1 %306, label %307, label %329

307:                                              ; preds = %303
  %308 = load i32, ptr %17, align 4
  %309 = add i32 %308, %14
  %310 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 15
  br label %311

311:                                              ; preds = %323, %307
  %312 = phi i32 [ 0, %307 ], [ %324, %323 ]
  %313 = getelementptr i32, ptr %6, i32 %312
  %314 = load i32, ptr %313, align 4
  %315 = icmp ult i32 %314, %309
  br i1 %315, label %316, label %329

316:                                              ; preds = %311
  %317 = xor i32 %314, -1
  %318 = add i32 %309, %317
  store i32 %318, ptr %313, align 4
  %319 = load i8, ptr %310, align 4, !range !10
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %316
  %322 = xor i32 %318, 7
  store i32 %322, ptr %313, align 4
  br label %323

323:                                              ; preds = %321, %316
  %324 = add nuw nsw i32 %312, 1
  %325 = icmp eq i32 %324, %301
  br i1 %325, label %326, label %311

326:                                              ; preds = %323, %298
  %327 = icmp sgt i32 %301, -1
  %328 = select i1 %327, i32 %301, i32 -74
  br label %329

329:                                              ; preds = %326, %311, %303, %58, %34, %25, %7
  %330 = phi i32 [ -22, %7 ], [ -22, %25 ], [ 0, %58 ], [ -74, %303 ], [ %328, %326 ], [ 0, %34 ], [ -74, %311 ]
  ret i32 %330
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @find_poly_roots(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 {
  %5 = alloca [4 x i32], align 4
  %6 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 14
  %7 = getelementptr %struct.bch_control, ptr %0, i32 0, i32 14, i32 1
  %8 = getelementptr %struct.bch_control, ptr %0, i32 0, i32 14, i32 2
  %9 = getelementptr %struct.bch_control, ptr %0, i32 0, i32 14, i32 3
  %10 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 5
  %11 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 12
  %12 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 6
  br label %14

14:                                               ; preds = %825, %4
  %15 = phi i32 [ 0, %4 ], [ %828, %825 ]
  %16 = phi i32 [ %1, %4 ], [ %826, %825 ]
  %17 = phi ptr [ %2, %4 ], [ %817, %825 ]
  %18 = phi ptr [ %3, %4 ], [ %827, %825 ]
  %19 = load i32, ptr %17, align 4
  switch i32 %19, label %658 [
    i32 1, label %20
    i32 2, label %40
    i32 3, label %158
    i32 4, label %340
    i32 0, label %829
  ]

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.gf_poly, ptr %17, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %829, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %12, align 4
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr i16, ptr %26, i32 %22
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = sub i32 %25, %29
  %31 = getelementptr %struct.gf_poly, ptr %17, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i16, ptr %26, i32 %32
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = add i32 %30, %35
  %37 = icmp ugt i32 %25, %36
  %38 = select i1 %37, i32 0, i32 %25
  %39 = sub i32 %36, %38
  store i32 %39, ptr %18, align 4
  br label %829

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.gf_poly, ptr %17, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %829, label %44

44:                                               ; preds = %40
  %45 = getelementptr %struct.gf_poly, ptr %17, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %829, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr i16, ptr %49, i32 %42
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = getelementptr i16, ptr %49, i32 %46
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr %struct.gf_poly, ptr %17, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i16, ptr %49, i32 %57
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = add nuw nsw i32 %60, %52
  %62 = load i32, ptr %12, align 4
  %63 = sub i32 %62, %55
  %64 = shl i32 %63, 1
  %65 = add i32 %61, %64
  %66 = load ptr, ptr %10, align 4
  %67 = icmp ugt i32 %62, %65
  br i1 %67, label %77, label %68

68:                                               ; preds = %48
  %69 = load i32, ptr %0, align 4
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i32 [ %65, %68 ], [ %75, %70 ]
  %72 = sub i32 %71, %62
  %73 = and i32 %72, %62
  %74 = lshr i32 %72, %69
  %75 = add i32 %74, %73
  %76 = icmp ult i32 %75, %62
  br i1 %76, label %77, label %70

77:                                               ; preds = %70, %48
  %78 = phi i32 [ %65, %48 ], [ %75, %70 ]
  %79 = getelementptr i16, ptr %66, i32 %78
  %80 = load i16, ptr %79, align 2
  %81 = zext i16 %80 to i32
  %82 = icmp eq i16 %80, 0
  br i1 %82, label %110, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 10
  %85 = load ptr, ptr %84, align 4
  br label %86

86:                                               ; preds = %86, %83
  %87 = phi i32 [ 0, %83 ], [ %93, %86 ]
  %88 = phi i32 [ %81, %83 ], [ %95, %86 ]
  %89 = tail call i32 @llvm.ctlz.i32(i32 %88, i1 true) #10, !range !11
  %90 = xor i32 %89, 31
  %91 = getelementptr i32, ptr %85, i32 %90
  %92 = load i32, ptr %91, align 4
  %93 = xor i32 %92, %87
  %94 = shl nuw i32 1, %90
  %95 = xor i32 %94, %88
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %86

97:                                               ; preds = %86
  %98 = icmp eq i32 %93, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %97
  %100 = getelementptr i16, ptr %49, i32 %93
  %101 = load i16, ptr %100, align 2
  %102 = zext i16 %101 to i32
  %103 = shl nuw nsw i32 %102, 1
  %104 = icmp ugt i32 %62, %103
  %105 = select i1 %104, i32 0, i32 %62
  %106 = sub i32 %103, %105
  %107 = getelementptr i16, ptr %66, i32 %106
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  br label %110

110:                                              ; preds = %99, %97, %77
  %111 = phi i32 [ %93, %99 ], [ 0, %97 ], [ 0, %77 ]
  %112 = phi i32 [ %109, %99 ], [ 0, %97 ], [ 0, %77 ]
  %113 = xor i32 %112, %111
  %114 = icmp eq i32 %113, %81
  br i1 %114, label %115, label %829

115:                                              ; preds = %110
  %116 = shl i32 %62, 1
  %117 = getelementptr i16, ptr %49, i32 %111
  %118 = load i16, ptr %117, align 2
  %119 = zext i16 %118 to i32
  %120 = add i32 %116, %60
  %121 = add nuw nsw i32 %55, %119
  %122 = sub i32 %120, %121
  %123 = icmp ugt i32 %62, %122
  br i1 %123, label %133, label %124

124:                                              ; preds = %115
  %125 = load i32, ptr %0, align 4
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i32 [ %122, %124 ], [ %131, %126 ]
  %128 = sub i32 %127, %62
  %129 = and i32 %128, %62
  %130 = lshr i32 %128, %125
  %131 = add i32 %130, %129
  %132 = icmp ult i32 %131, %62
  br i1 %132, label %133, label %126

133:                                              ; preds = %126, %115
  %134 = phi i32 [ %122, %115 ], [ %131, %126 ]
  store i32 %134, ptr %18, align 4
  %135 = load i32, ptr %12, align 4
  %136 = shl i32 %135, 1
  %137 = load ptr, ptr %13, align 4
  %138 = xor i32 %111, 1
  %139 = getelementptr i16, ptr %137, i32 %138
  %140 = load i16, ptr %139, align 2
  %141 = zext i16 %140 to i32
  %142 = add i32 %136, %60
  %143 = add nuw nsw i32 %55, %141
  %144 = sub i32 %142, %143
  %145 = icmp ugt i32 %135, %144
  br i1 %145, label %155, label %146

146:                                              ; preds = %133
  %147 = load i32, ptr %0, align 4
  br label %148

148:                                              ; preds = %148, %146
  %149 = phi i32 [ %144, %146 ], [ %153, %148 ]
  %150 = sub i32 %149, %135
  %151 = and i32 %150, %135
  %152 = lshr i32 %150, %147
  %153 = add i32 %152, %151
  %154 = icmp ult i32 %153, %135
  br i1 %154, label %155, label %148

155:                                              ; preds = %148, %133
  %156 = phi i32 [ %144, %133 ], [ %153, %148 ]
  %157 = getelementptr i32, ptr %18, i32 1
  store i32 %156, ptr %157, align 4
  br label %829

158:                                              ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10, !annotation !8
  %159 = getelementptr inbounds %struct.gf_poly, ptr %17, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %338, label %162

162:                                              ; preds = %158
  %163 = getelementptr %struct.gf_poly, ptr %17, i32 4
  %164 = load i32, ptr %163, align 4
  %165 = load ptr, ptr %10, align 4
  %166 = load ptr, ptr %13, align 4
  %167 = getelementptr i16, ptr %166, i32 %160
  %168 = load i16, ptr %167, align 2
  %169 = zext i16 %168 to i32
  %170 = load i32, ptr %12, align 4
  %171 = add i32 %170, %169
  %172 = getelementptr i16, ptr %166, i32 %164
  %173 = load i16, ptr %172, align 2
  %174 = zext i16 %173 to i32
  %175 = sub i32 %171, %174
  %176 = icmp ugt i32 %170, %175
  %177 = select i1 %176, i32 0, i32 %170
  %178 = sub i32 %175, %177
  %179 = getelementptr i16, ptr %165, i32 %178
  %180 = load i16, ptr %179, align 2
  %181 = zext i16 %180 to i32
  %182 = getelementptr %struct.gf_poly, ptr %17, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %197, label %185

185:                                              ; preds = %162
  %186 = getelementptr i16, ptr %166, i32 %183
  %187 = load i16, ptr %186, align 2
  %188 = zext i16 %187 to i32
  %189 = sub i32 %170, %174
  %190 = add i32 %189, %188
  %191 = icmp ugt i32 %170, %190
  %192 = select i1 %191, i32 0, i32 %170
  %193 = sub i32 %190, %192
  %194 = getelementptr i16, ptr %165, i32 %193
  %195 = load i16, ptr %194, align 2
  %196 = zext i16 %195 to i32
  br label %197

197:                                              ; preds = %185, %162
  %198 = phi i32 [ %196, %185 ], [ 0, %162 ]
  %199 = getelementptr %struct.gf_poly, ptr %17, i32 3
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %266, label %202

202:                                              ; preds = %197
  %203 = getelementptr i16, ptr %166, i32 %200
  %204 = load i16, ptr %203, align 2
  %205 = zext i16 %204 to i32
  %206 = sub i32 %170, %174
  %207 = add i32 %206, %205
  %208 = icmp ugt i32 %170, %207
  %209 = select i1 %208, i32 0, i32 %170
  %210 = sub i32 %207, %209
  %211 = getelementptr i16, ptr %165, i32 %210
  %212 = load i16, ptr %211, align 2
  %213 = zext i16 %212 to i32
  %214 = icmp ne i16 %212, 0
  %215 = icmp ne i16 %180, 0
  %216 = and i1 %215, %214
  br i1 %216, label %217, label %231

217:                                              ; preds = %202
  %218 = getelementptr i16, ptr %166, i32 %213
  %219 = load i16, ptr %218, align 2
  %220 = zext i16 %219 to i32
  %221 = getelementptr i16, ptr %166, i32 %181
  %222 = load i16, ptr %221, align 2
  %223 = zext i16 %222 to i32
  %224 = add nuw nsw i32 %223, %220
  %225 = icmp ugt i32 %170, %224
  %226 = select i1 %225, i32 0, i32 %170
  %227 = sub i32 %224, %226
  %228 = getelementptr i16, ptr %165, i32 %227
  %229 = load i16, ptr %228, align 2
  %230 = zext i16 %229 to i32
  br label %231

231:                                              ; preds = %217, %202
  %232 = phi i32 [ %230, %217 ], [ 0, %202 ]
  %233 = icmp ne i32 %198, 0
  %234 = and i1 %233, %214
  br i1 %234, label %235, label %250

235:                                              ; preds = %231
  %236 = getelementptr i16, ptr %166, i32 %213
  %237 = load i16, ptr %236, align 2
  %238 = zext i16 %237 to i32
  %239 = getelementptr i16, ptr %166, i32 %198
  %240 = load i16, ptr %239, align 2
  %241 = zext i16 %240 to i32
  %242 = add nuw nsw i32 %241, %238
  %243 = icmp ugt i32 %170, %242
  %244 = select i1 %243, i32 0, i32 %170
  %245 = sub i32 %242, %244
  %246 = getelementptr i16, ptr %165, i32 %245
  %247 = load i16, ptr %246, align 2
  %248 = xor i16 %247, %180
  %249 = zext i16 %248 to i32
  br label %256

250:                                              ; preds = %231
  %251 = icmp eq i16 %212, 0
  br i1 %251, label %266, label %252

252:                                              ; preds = %250
  %253 = getelementptr i16, ptr %166, i32 %213
  %254 = load i16, ptr %253, align 2
  %255 = zext i16 %254 to i32
  br label %256

256:                                              ; preds = %252, %235
  %257 = phi i32 [ %255, %252 ], [ %238, %235 ]
  %258 = phi i32 [ %181, %252 ], [ %249, %235 ]
  %259 = shl nuw nsw i32 %257, 1
  %260 = icmp ugt i32 %170, %259
  %261 = select i1 %260, i32 0, i32 %170
  %262 = sub i32 %259, %261
  %263 = getelementptr i16, ptr %165, i32 %262
  %264 = load i16, ptr %263, align 2
  %265 = zext i16 %264 to i32
  br label %266

266:                                              ; preds = %256, %250, %197
  %267 = phi i32 [ %258, %256 ], [ %181, %250 ], [ %181, %197 ]
  %268 = phi i32 [ %213, %256 ], [ 0, %250 ], [ 0, %197 ]
  %269 = phi i32 [ %232, %256 ], [ %232, %250 ], [ 0, %197 ]
  %270 = phi i32 [ %265, %256 ], [ 0, %250 ], [ 0, %197 ]
  %271 = xor i32 %270, %198
  %272 = call fastcc i32 @find_affine4_roots(ptr noundef %0, i32 noundef %271, i32 noundef %267, i32 noundef %269, ptr noundef nonnull %5) #10
  %273 = icmp eq i32 %272, 4
  br i1 %273, label %274, label %338

274:                                              ; preds = %266
  %275 = load i32, ptr %5, align 4
  %276 = icmp eq i32 %275, %268
  br i1 %276, label %287, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %12, align 4
  %279 = load ptr, ptr %13, align 4
  %280 = getelementptr i16, ptr %279, i32 %275
  %281 = load i16, ptr %280, align 2
  %282 = zext i16 %281 to i32
  %283 = sub i32 %278, %282
  %284 = icmp ugt i32 %278, %283
  %285 = select i1 %284, i32 0, i32 %278
  %286 = sub i32 %283, %285
  store i32 %286, ptr %18, align 4
  br label %287

287:                                              ; preds = %277, %274
  %288 = phi i32 [ 1, %277 ], [ 0, %274 ]
  %289 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %290 = load i32, ptr %289, align 4
  %291 = icmp eq i32 %290, %268
  br i1 %291, label %304, label %292

292:                                              ; preds = %287
  %293 = load i32, ptr %12, align 4
  %294 = load ptr, ptr %13, align 4
  %295 = getelementptr i16, ptr %294, i32 %290
  %296 = load i16, ptr %295, align 2
  %297 = zext i16 %296 to i32
  %298 = sub i32 %293, %297
  %299 = icmp ugt i32 %293, %298
  %300 = select i1 %299, i32 0, i32 %293
  %301 = sub i32 %298, %300
  %302 = add nuw nsw i32 %288, 1
  %303 = getelementptr i32, ptr %18, i32 %288
  store i32 %301, ptr %303, align 4
  br label %304

304:                                              ; preds = %292, %287
  %305 = phi i32 [ %302, %292 ], [ %288, %287 ]
  %306 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %307 = load i32, ptr %306, align 4
  %308 = icmp eq i32 %307, %268
  br i1 %308, label %321, label %309

309:                                              ; preds = %304
  %310 = load i32, ptr %12, align 4
  %311 = load ptr, ptr %13, align 4
  %312 = getelementptr i16, ptr %311, i32 %307
  %313 = load i16, ptr %312, align 2
  %314 = zext i16 %313 to i32
  %315 = sub i32 %310, %314
  %316 = icmp ugt i32 %310, %315
  %317 = select i1 %316, i32 0, i32 %310
  %318 = sub i32 %315, %317
  %319 = add nuw nsw i32 %305, 1
  %320 = getelementptr i32, ptr %18, i32 %305
  store i32 %318, ptr %320, align 4
  br label %321

321:                                              ; preds = %309, %304
  %322 = phi i32 [ %319, %309 ], [ %305, %304 ]
  %323 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %324 = load i32, ptr %323, align 4
  %325 = icmp eq i32 %324, %268
  br i1 %325, label %338, label %326

326:                                              ; preds = %321
  %327 = load i32, ptr %12, align 4
  %328 = load ptr, ptr %13, align 4
  %329 = getelementptr i16, ptr %328, i32 %324
  %330 = load i16, ptr %329, align 2
  %331 = zext i16 %330 to i32
  %332 = sub i32 %327, %331
  %333 = icmp ugt i32 %327, %332
  %334 = select i1 %333, i32 0, i32 %327
  %335 = sub i32 %332, %334
  %336 = add nuw nsw i32 %322, 1
  %337 = getelementptr i32, ptr %18, i32 %322
  store i32 %335, ptr %337, align 4
  br label %338

338:                                              ; preds = %326, %321, %266, %158
  %339 = phi i32 [ 0, %266 ], [ 0, %158 ], [ %336, %326 ], [ %322, %321 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %829

340:                                              ; preds = %14
  %341 = getelementptr inbounds %struct.gf_poly, ptr %17, i32 0, i32 1
  %342 = load i32, ptr %341, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %829, label %344

344:                                              ; preds = %340
  %345 = getelementptr %struct.gf_poly, ptr %17, i32 5
  %346 = load i32, ptr %345, align 4
  %347 = load ptr, ptr %10, align 4
  %348 = load ptr, ptr %13, align 4
  %349 = getelementptr i16, ptr %348, i32 %342
  %350 = load i16, ptr %349, align 2
  %351 = zext i16 %350 to i32
  %352 = load i32, ptr %12, align 4
  %353 = add i32 %352, %351
  %354 = getelementptr i16, ptr %348, i32 %346
  %355 = load i16, ptr %354, align 2
  %356 = zext i16 %355 to i32
  %357 = sub i32 %353, %356
  %358 = icmp ugt i32 %352, %357
  %359 = select i1 %358, i32 0, i32 %352
  %360 = sub i32 %357, %359
  %361 = getelementptr i16, ptr %347, i32 %360
  %362 = load i16, ptr %361, align 2
  %363 = zext i16 %362 to i32
  %364 = getelementptr %struct.gf_poly, ptr %17, i32 2
  %365 = load i32, ptr %364, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %379, label %367

367:                                              ; preds = %344
  %368 = getelementptr i16, ptr %348, i32 %365
  %369 = load i16, ptr %368, align 2
  %370 = zext i16 %369 to i32
  %371 = sub i32 %352, %356
  %372 = add i32 %371, %370
  %373 = icmp ugt i32 %352, %372
  %374 = select i1 %373, i32 0, i32 %352
  %375 = sub i32 %372, %374
  %376 = getelementptr i16, ptr %347, i32 %375
  %377 = load i16, ptr %376, align 2
  %378 = zext i16 %377 to i32
  br label %379

379:                                              ; preds = %367, %344
  %380 = phi i32 [ %378, %367 ], [ 0, %344 ]
  %381 = getelementptr %struct.gf_poly, ptr %17, i32 3
  %382 = load i32, ptr %381, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %396, label %384

384:                                              ; preds = %379
  %385 = getelementptr i16, ptr %348, i32 %382
  %386 = load i16, ptr %385, align 2
  %387 = zext i16 %386 to i32
  %388 = sub i32 %352, %356
  %389 = add i32 %388, %387
  %390 = icmp ugt i32 %352, %389
  %391 = select i1 %390, i32 0, i32 %352
  %392 = sub i32 %389, %391
  %393 = getelementptr i16, ptr %347, i32 %392
  %394 = load i16, ptr %393, align 2
  %395 = zext i16 %394 to i32
  br label %396

396:                                              ; preds = %384, %379
  %397 = phi i32 [ %395, %384 ], [ 0, %379 ]
  %398 = getelementptr %struct.gf_poly, ptr %17, i32 4
  %399 = load i32, ptr %398, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %538, label %401

401:                                              ; preds = %396
  %402 = getelementptr i16, ptr %348, i32 %399
  %403 = load i16, ptr %402, align 2
  %404 = zext i16 %403 to i32
  %405 = sub i32 %352, %356
  %406 = add i32 %405, %404
  %407 = icmp ugt i32 %352, %406
  %408 = select i1 %407, i32 0, i32 %352
  %409 = sub i32 %406, %408
  %410 = getelementptr i16, ptr %347, i32 %409
  %411 = load i16, ptr %410, align 2
  %412 = zext i16 %411 to i32
  %413 = icmp eq i16 %411, 0
  br i1 %413, label %538, label %414

414:                                              ; preds = %401
  %415 = icmp eq i32 %380, 0
  br i1 %415, label %503, label %416

416:                                              ; preds = %414
  %417 = getelementptr i16, ptr %348, i32 %380
  %418 = load i16, ptr %417, align 2
  %419 = zext i16 %418 to i32
  %420 = add i32 %352, %419
  %421 = getelementptr i16, ptr %348, i32 %412
  %422 = load i16, ptr %421, align 2
  %423 = zext i16 %422 to i32
  %424 = sub i32 %420, %423
  %425 = icmp ugt i32 %352, %424
  %426 = select i1 %425, i32 0, i32 %352
  %427 = sub i32 %424, %426
  %428 = getelementptr i16, ptr %347, i32 %427
  %429 = load i16, ptr %428, align 2
  %430 = zext i16 %429 to i32
  %431 = getelementptr i16, ptr %348, i32 %430
  %432 = load i16, ptr %431, align 2
  %433 = zext i16 %432 to i32
  %434 = and i32 %433, 1
  %435 = icmp eq i32 %434, 0
  %436 = select i1 %435, i32 0, i32 %352
  %437 = add i32 %436, %433
  %438 = sdiv i32 %437, 2
  %439 = icmp ugt i32 %352, %438
  br i1 %439, label %449, label %440

440:                                              ; preds = %416
  %441 = load i32, ptr %0, align 4
  br label %442

442:                                              ; preds = %442, %440
  %443 = phi i32 [ %438, %440 ], [ %447, %442 ]
  %444 = sub i32 %443, %352
  %445 = and i32 %444, %352
  %446 = lshr i32 %444, %441
  %447 = add i32 %446, %445
  %448 = icmp ult i32 %447, %352
  br i1 %448, label %449, label %442

449:                                              ; preds = %442, %416
  %450 = phi i32 [ %438, %416 ], [ %447, %442 ]
  %451 = getelementptr i16, ptr %347, i32 %450
  %452 = load i16, ptr %451, align 2
  %453 = zext i16 %452 to i32
  %454 = shl i32 %437, 1
  %455 = icmp ugt i32 %352, %454
  br i1 %455, label %465, label %456

456:                                              ; preds = %449
  %457 = load i32, ptr %0, align 4
  br label %458

458:                                              ; preds = %458, %456
  %459 = phi i32 [ %454, %456 ], [ %463, %458 ]
  %460 = sub i32 %459, %352
  %461 = and i32 %460, %352
  %462 = lshr i32 %460, %457
  %463 = add i32 %462, %461
  %464 = icmp ult i32 %463, %352
  br i1 %464, label %465, label %458

465:                                              ; preds = %458, %449
  %466 = phi i32 [ %454, %449 ], [ %463, %458 ]
  %467 = getelementptr i16, ptr %347, i32 %466
  %468 = load i16, ptr %467, align 2
  %469 = icmp ne i32 %397, 0
  %470 = icmp ne i16 %429, 0
  %471 = and i1 %469, %470
  br i1 %471, label %472, label %483

472:                                              ; preds = %465
  %473 = getelementptr i16, ptr %348, i32 %397
  %474 = load i16, ptr %473, align 2
  %475 = zext i16 %474 to i32
  %476 = add nuw nsw i32 %475, %433
  %477 = icmp ugt i32 %352, %476
  %478 = select i1 %477, i32 0, i32 %352
  %479 = sub i32 %476, %478
  %480 = getelementptr i16, ptr %347, i32 %479
  %481 = load i16, ptr %480, align 2
  %482 = zext i16 %481 to i32
  br label %483

483:                                              ; preds = %472, %465
  %484 = phi i32 [ %482, %472 ], [ 0, %465 ]
  %485 = xor i16 %468, %362
  %486 = zext i16 %485 to i32
  %487 = xor i32 %484, %486
  %488 = icmp eq i16 %452, 0
  br i1 %488, label %500, label %489

489:                                              ; preds = %483
  %490 = getelementptr i16, ptr %348, i32 %453
  %491 = load i16, ptr %490, align 2
  %492 = zext i16 %491 to i32
  %493 = add nuw nsw i32 %492, %423
  %494 = icmp ugt i32 %352, %493
  %495 = select i1 %494, i32 0, i32 %352
  %496 = sub i32 %493, %495
  %497 = getelementptr i16, ptr %347, i32 %496
  %498 = load i16, ptr %497, align 2
  %499 = zext i16 %498 to i32
  br label %500

500:                                              ; preds = %489, %483
  %501 = phi i32 [ %499, %489 ], [ 0, %483 ]
  %502 = xor i32 %501, %397
  br label %503

503:                                              ; preds = %500, %414
  %504 = phi i32 [ %502, %500 ], [ %397, %414 ]
  %505 = phi i32 [ %487, %500 ], [ %363, %414 ]
  %506 = phi i32 [ %453, %500 ], [ 0, %414 ]
  %507 = icmp eq i32 %505, 0
  br i1 %507, label %829, label %508

508:                                              ; preds = %503
  %509 = getelementptr i16, ptr %348, i32 %505
  %510 = load i16, ptr %509, align 2
  %511 = zext i16 %510 to i32
  %512 = sub i32 %352, %511
  %513 = getelementptr i16, ptr %347, i32 %512
  %514 = load i16, ptr %513, align 2
  %515 = zext i16 %514 to i32
  %516 = getelementptr i16, ptr %348, i32 %412
  %517 = load i16, ptr %516, align 2
  %518 = zext i16 %517 to i32
  %519 = add i32 %512, %518
  %520 = icmp ugt i32 %352, %519
  %521 = select i1 %520, i32 0, i32 %352
  %522 = sub i32 %519, %521
  %523 = getelementptr i16, ptr %347, i32 %522
  %524 = load i16, ptr %523, align 2
  %525 = zext i16 %524 to i32
  %526 = icmp eq i32 %504, 0
  br i1 %526, label %538, label %527

527:                                              ; preds = %508
  %528 = getelementptr i16, ptr %348, i32 %504
  %529 = load i16, ptr %528, align 2
  %530 = zext i16 %529 to i32
  %531 = add i32 %512, %530
  %532 = icmp ugt i32 %352, %531
  %533 = select i1 %532, i32 0, i32 %352
  %534 = sub i32 %531, %533
  %535 = getelementptr i16, ptr %347, i32 %534
  %536 = load i16, ptr %535, align 2
  %537 = zext i16 %536 to i32
  br label %538

538:                                              ; preds = %527, %508, %401, %396
  %539 = phi i1 [ true, %401 ], [ false, %508 ], [ false, %527 ], [ true, %396 ]
  %540 = phi i32 [ 0, %401 ], [ %506, %508 ], [ %506, %527 ], [ 0, %396 ]
  %541 = phi i32 [ %397, %401 ], [ 0, %508 ], [ %537, %527 ], [ %397, %396 ]
  %542 = phi i32 [ %380, %401 ], [ %525, %508 ], [ %525, %527 ], [ %380, %396 ]
  %543 = phi i32 [ %363, %401 ], [ %515, %508 ], [ %515, %527 ], [ %363, %396 ]
  %544 = tail call fastcc i32 @find_affine4_roots(ptr noundef %0, i32 noundef %541, i32 noundef %542, i32 noundef %543, ptr noundef %18) #10
  %545 = icmp eq i32 %544, 4
  br i1 %545, label %546, label %829

546:                                              ; preds = %538
  %547 = load i32, ptr %18, align 4
  br i1 %539, label %559, label %548

548:                                              ; preds = %546
  %549 = load ptr, ptr %10, align 4
  %550 = load i32, ptr %12, align 4
  %551 = load ptr, ptr %13, align 4
  %552 = getelementptr i16, ptr %551, i32 %547
  %553 = load i16, ptr %552, align 2
  %554 = zext i16 %553 to i32
  %555 = sub i32 %550, %554
  %556 = getelementptr i16, ptr %549, i32 %555
  %557 = load i16, ptr %556, align 2
  %558 = zext i16 %557 to i32
  br label %562

559:                                              ; preds = %546
  %560 = load i32, ptr %12, align 4
  %561 = load ptr, ptr %13, align 4
  br label %562

562:                                              ; preds = %559, %548
  %563 = phi ptr [ %551, %548 ], [ %561, %559 ]
  %564 = phi i32 [ %550, %548 ], [ %560, %559 ]
  %565 = phi i32 [ %558, %548 ], [ %547, %559 ]
  %566 = xor i32 %565, %540
  %567 = getelementptr i16, ptr %563, i32 %566
  %568 = load i16, ptr %567, align 2
  %569 = zext i16 %568 to i32
  %570 = sub i32 %564, %569
  %571 = icmp ugt i32 %564, %570
  %572 = select i1 %571, i32 0, i32 %564
  %573 = sub i32 %570, %572
  store i32 %573, ptr %18, align 4
  %574 = getelementptr i32, ptr %18, i32 1
  %575 = load i32, ptr %574, align 4
  br i1 %539, label %587, label %576

576:                                              ; preds = %562
  %577 = load ptr, ptr %10, align 4
  %578 = load i32, ptr %12, align 4
  %579 = load ptr, ptr %13, align 4
  %580 = getelementptr i16, ptr %579, i32 %575
  %581 = load i16, ptr %580, align 2
  %582 = zext i16 %581 to i32
  %583 = sub i32 %578, %582
  %584 = getelementptr i16, ptr %577, i32 %583
  %585 = load i16, ptr %584, align 2
  %586 = zext i16 %585 to i32
  br label %590

587:                                              ; preds = %562
  %588 = load i32, ptr %12, align 4
  %589 = load ptr, ptr %13, align 4
  br label %590

590:                                              ; preds = %587, %576
  %591 = phi ptr [ %579, %576 ], [ %589, %587 ]
  %592 = phi i32 [ %578, %576 ], [ %588, %587 ]
  %593 = phi i32 [ %586, %576 ], [ %575, %587 ]
  %594 = xor i32 %593, %540
  %595 = getelementptr i16, ptr %591, i32 %594
  %596 = load i16, ptr %595, align 2
  %597 = zext i16 %596 to i32
  %598 = sub i32 %592, %597
  %599 = icmp ugt i32 %592, %598
  %600 = select i1 %599, i32 0, i32 %592
  %601 = sub i32 %598, %600
  store i32 %601, ptr %574, align 4
  %602 = getelementptr i32, ptr %18, i32 2
  %603 = load i32, ptr %602, align 4
  br i1 %539, label %615, label %604

604:                                              ; preds = %590
  %605 = load ptr, ptr %10, align 4
  %606 = load i32, ptr %12, align 4
  %607 = load ptr, ptr %13, align 4
  %608 = getelementptr i16, ptr %607, i32 %603
  %609 = load i16, ptr %608, align 2
  %610 = zext i16 %609 to i32
  %611 = sub i32 %606, %610
  %612 = getelementptr i16, ptr %605, i32 %611
  %613 = load i16, ptr %612, align 2
  %614 = zext i16 %613 to i32
  br label %618

615:                                              ; preds = %590
  %616 = load i32, ptr %12, align 4
  %617 = load ptr, ptr %13, align 4
  br label %618

618:                                              ; preds = %615, %604
  %619 = phi ptr [ %607, %604 ], [ %617, %615 ]
  %620 = phi i32 [ %606, %604 ], [ %616, %615 ]
  %621 = phi i32 [ %614, %604 ], [ %603, %615 ]
  %622 = xor i32 %621, %540
  %623 = getelementptr i16, ptr %619, i32 %622
  %624 = load i16, ptr %623, align 2
  %625 = zext i16 %624 to i32
  %626 = sub i32 %620, %625
  %627 = icmp ugt i32 %620, %626
  %628 = select i1 %627, i32 0, i32 %620
  %629 = sub i32 %626, %628
  store i32 %629, ptr %602, align 4
  %630 = getelementptr i32, ptr %18, i32 3
  %631 = load i32, ptr %630, align 4
  br i1 %539, label %643, label %632

632:                                              ; preds = %618
  %633 = load ptr, ptr %10, align 4
  %634 = load i32, ptr %12, align 4
  %635 = load ptr, ptr %13, align 4
  %636 = getelementptr i16, ptr %635, i32 %631
  %637 = load i16, ptr %636, align 2
  %638 = zext i16 %637 to i32
  %639 = sub i32 %634, %638
  %640 = getelementptr i16, ptr %633, i32 %639
  %641 = load i16, ptr %640, align 2
  %642 = zext i16 %641 to i32
  br label %646

643:                                              ; preds = %618
  %644 = load i32, ptr %12, align 4
  %645 = load ptr, ptr %13, align 4
  br label %646

646:                                              ; preds = %643, %632
  %647 = phi ptr [ %635, %632 ], [ %645, %643 ]
  %648 = phi i32 [ %634, %632 ], [ %644, %643 ]
  %649 = phi i32 [ %642, %632 ], [ %631, %643 ]
  %650 = xor i32 %649, %540
  %651 = getelementptr i16, ptr %647, i32 %650
  %652 = load i16, ptr %651, align 2
  %653 = zext i16 %652 to i32
  %654 = sub i32 %648, %653
  %655 = icmp ugt i32 %648, %654
  %656 = select i1 %655, i32 0, i32 %648
  %657 = sub i32 %654, %656
  store i32 %657, ptr %630, align 4
  br label %829

658:                                              ; preds = %14
  %659 = load i32, ptr %0, align 4
  %660 = icmp ult i32 %659, %16
  br i1 %660, label %829, label %661

661:                                              ; preds = %658
  %662 = load ptr, ptr %6, align 4
  %663 = load ptr, ptr %7, align 4
  %664 = load ptr, ptr %8, align 4
  %665 = load ptr, ptr %9, align 4
  store i32 1, ptr %665, align 4
  %666 = getelementptr inbounds %struct.gf_poly, ptr %665, i32 0, i32 1
  store i32 0, ptr %666, align 4
  %667 = load ptr, ptr %10, align 4
  %668 = getelementptr i16, ptr %667, i32 %16
  %669 = load i16, ptr %668, align 2
  %670 = zext i16 %669 to i32
  %671 = getelementptr %struct.gf_poly, ptr %665, i32 2
  store i32 %670, ptr %671, align 4
  store i32 0, ptr %664, align 4
  %672 = load i32, ptr %17, align 4
  %673 = shl i32 %672, 2
  %674 = add i32 %673, 8
  tail call void @llvm.memset.p0.i32(ptr align 4 %664, i8 0, i32 %674, i1 false) #10
  %675 = load ptr, ptr %11, align 4
  %676 = load i32, ptr %17, align 4
  %677 = load i32, ptr %12, align 4
  %678 = getelementptr %struct.gf_poly, ptr %17, i32 0, i32 1, i32 %676
  %679 = load i32, ptr %678, align 4
  %680 = load ptr, ptr %13, align 4
  %681 = getelementptr i16, ptr %680, i32 %679
  %682 = load i16, ptr %681, align 2
  %683 = zext i16 %682 to i32
  %684 = sub i32 %677, %683
  %685 = icmp sgt i32 %676, 0
  br i1 %685, label %686, label %706

686:                                              ; preds = %701, %661
  %687 = phi i32 [ %704, %701 ], [ 0, %661 ]
  %688 = getelementptr %struct.gf_poly, ptr %17, i32 0, i32 1, i32 %687
  %689 = load i32, ptr %688, align 4
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %701, label %691

691:                                              ; preds = %686
  %692 = load ptr, ptr %13, align 4
  %693 = getelementptr i16, ptr %692, i32 %689
  %694 = load i16, ptr %693, align 2
  %695 = zext i16 %694 to i32
  %696 = add i32 %684, %695
  %697 = load i32, ptr %12, align 4
  %698 = icmp ugt i32 %697, %696
  %699 = select i1 %698, i32 0, i32 %697
  %700 = sub i32 %696, %699
  br label %701

701:                                              ; preds = %691, %686
  %702 = phi i32 [ %700, %691 ], [ -1, %686 ]
  %703 = getelementptr i32, ptr %675, i32 %687
  store i32 %702, ptr %703, align 4
  %704 = add nuw nsw i32 %687, 1
  %705 = icmp eq i32 %704, %676
  br i1 %705, label %706, label %686

706:                                              ; preds = %701, %661
  %707 = icmp sgt i32 %659, 0
  br i1 %707, label %708, label %710

708:                                              ; preds = %706
  %709 = add nsw i32 %659, -1
  br label %717

710:                                              ; preds = %765, %706
  %711 = load i32, ptr %664, align 4
  %712 = getelementptr %struct.gf_poly, ptr %664, i32 0, i32 1, i32 %711
  %713 = load i32, ptr %712, align 4
  %714 = icmp ne i32 %713, 0
  %715 = icmp eq i32 %711, 0
  %716 = select i1 %714, i1 true, i1 %715
  br i1 %716, label %776, label %768

717:                                              ; preds = %765, %708
  %718 = phi i32 [ 0, %708 ], [ %766, %765 ]
  %719 = load i32, ptr %665, align 4
  %720 = icmp sgt i32 %719, -1
  br i1 %720, label %721, label %754

721:                                              ; preds = %744, %717
  %722 = phi i32 [ %750, %744 ], [ %719, %717 ]
  %723 = getelementptr %struct.gf_poly, ptr %665, i32 0, i32 1, i32 %722
  %724 = load i32, ptr %723, align 4
  %725 = getelementptr %struct.gf_poly, ptr %664, i32 0, i32 1, i32 %722
  %726 = load i32, ptr %725, align 4
  %727 = xor i32 %726, %724
  store i32 %727, ptr %725, align 4
  %728 = load i32, ptr %723, align 4
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %744, label %730

730:                                              ; preds = %721
  %731 = load ptr, ptr %10, align 4
  %732 = load ptr, ptr %13, align 4
  %733 = getelementptr i16, ptr %732, i32 %728
  %734 = load i16, ptr %733, align 2
  %735 = zext i16 %734 to i32
  %736 = shl nuw nsw i32 %735, 1
  %737 = load i32, ptr %12, align 4
  %738 = icmp ugt i32 %737, %736
  %739 = select i1 %738, i32 0, i32 %737
  %740 = sub i32 %736, %739
  %741 = getelementptr i16, ptr %731, i32 %740
  %742 = load i16, ptr %741, align 2
  %743 = zext i16 %742 to i32
  br label %744

744:                                              ; preds = %730, %721
  %745 = phi i32 [ %743, %730 ], [ 0, %721 ]
  %746 = shl nuw i32 %722, 1
  %747 = getelementptr %struct.gf_poly, ptr %665, i32 0, i32 1, i32 %746
  store i32 %745, ptr %747, align 4
  %748 = or i32 %746, 1
  %749 = getelementptr %struct.gf_poly, ptr %665, i32 0, i32 1, i32 %748
  store i32 0, ptr %749, align 4
  %750 = add nsw i32 %722, -1
  %751 = icmp sgt i32 %722, 0
  br i1 %751, label %721, label %752

752:                                              ; preds = %744
  %753 = load i32, ptr %665, align 4
  br label %754

754:                                              ; preds = %752, %717
  %755 = phi i32 [ %753, %752 ], [ %719, %717 ]
  %756 = load i32, ptr %664, align 4
  %757 = icmp ugt i32 %755, %756
  br i1 %757, label %758, label %759

758:                                              ; preds = %754
  store i32 %755, ptr %664, align 4
  br label %759

759:                                              ; preds = %758, %754
  %760 = icmp slt i32 %718, %709
  br i1 %760, label %761, label %765

761:                                              ; preds = %759
  %762 = load i32, ptr %665, align 4
  %763 = shl i32 %762, 1
  store i32 %763, ptr %665, align 4
  %764 = load ptr, ptr %11, align 4
  tail call fastcc void @gf_poly_mod(ptr noundef %0, ptr noundef %665, ptr noundef %17, ptr noundef %764) #10
  br label %765

765:                                              ; preds = %761, %759
  %766 = add nuw nsw i32 %718, 1
  %767 = icmp eq i32 %766, %659
  br i1 %767, label %710, label %717

768:                                              ; preds = %768, %710
  %769 = phi i32 [ %770, %768 ], [ %711, %710 ]
  %770 = add i32 %769, -1
  store i32 %770, ptr %664, align 4
  %771 = getelementptr %struct.gf_poly, ptr %664, i32 0, i32 1, i32 %770
  %772 = load i32, ptr %771, align 4
  %773 = icmp ne i32 %772, 0
  %774 = icmp eq i32 %770, 0
  %775 = select i1 %773, i1 true, i1 %774
  br i1 %775, label %776, label %768

776:                                              ; preds = %768, %710
  %777 = phi i32 [ %711, %710 ], [ %770, %768 ]
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %816, label %779

779:                                              ; preds = %776
  %780 = load i32, ptr %17, align 4
  %781 = shl i32 %780, 2
  %782 = add i32 %781, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %662, ptr align 4 %17, i32 %782, i1 false) #10
  %783 = load i32, ptr %662, align 4
  %784 = load i32, ptr %664, align 4
  %785 = icmp ult i32 %783, %784
  %786 = select i1 %785, ptr %664, ptr %662
  %787 = tail call i32 @llvm.umin.i32(i32 %783, i32 %784) #10
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %796, label %789

789:                                              ; preds = %779
  %790 = select i1 %785, ptr %662, ptr %664
  br label %791

791:                                              ; preds = %791, %789
  %792 = phi ptr [ %793, %791 ], [ %790, %789 ]
  %793 = phi ptr [ %792, %791 ], [ %786, %789 ]
  tail call fastcc void @gf_poly_mod(ptr noundef %0, ptr noundef %793, ptr noundef %792, ptr noundef null) #10
  %794 = load i32, ptr %793, align 4
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %796, label %791

796:                                              ; preds = %791, %779
  %797 = phi ptr [ %786, %779 ], [ %792, %791 ]
  %798 = load i32, ptr %797, align 4
  %799 = load i32, ptr %17, align 4
  %800 = icmp ugt i32 %799, %798
  br i1 %800, label %801, label %816

801:                                              ; preds = %796
  %802 = sub i32 %799, %798
  store i32 %802, ptr %663, align 4
  tail call fastcc void @gf_poly_mod(ptr noundef %0, ptr noundef %17, ptr noundef %797, ptr noundef null) #10
  %803 = getelementptr inbounds %struct.gf_poly, ptr %663, i32 0, i32 1
  %804 = load i32, ptr %797, align 4
  %805 = getelementptr %struct.gf_poly, ptr %17, i32 0, i32 1, i32 %804
  %806 = load i32, ptr %663, align 4
  %807 = shl i32 %806, 2
  %808 = add i32 %807, 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %803, ptr align 4 %805, i32 %808, i1 false) #10
  %809 = load i32, ptr %797, align 4
  %810 = getelementptr %struct.gf_poly_deg1, ptr %17, i32 %809
  %811 = shl i32 %809, 2
  %812 = add i32 %811, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %17, ptr align 4 %797, i32 %812, i1 false) #10
  %813 = load i32, ptr %663, align 4
  %814 = shl i32 %813, 2
  %815 = add i32 %814, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %810, ptr align 4 %663, i32 %815, i1 false) #10
  br label %816

816:                                              ; preds = %801, %796, %776
  %817 = phi ptr [ null, %776 ], [ %810, %801 ], [ null, %796 ]
  %818 = icmp eq ptr %17, null
  br i1 %818, label %822, label %819

819:                                              ; preds = %816
  %820 = add i32 %16, 1
  %821 = tail call fastcc i32 @find_poly_roots(ptr noundef %0, i32 noundef %820, ptr noundef nonnull %17, ptr noundef %18)
  br label %822

822:                                              ; preds = %819, %816
  %823 = phi i32 [ %821, %819 ], [ 0, %816 ]
  %824 = icmp eq ptr %817, null
  br i1 %824, label %829, label %825

825:                                              ; preds = %822
  %826 = add i32 %16, 1
  %827 = getelementptr i32, ptr %18, i32 %823
  %828 = add i32 %823, %15
  br label %14

829:                                              ; preds = %822, %658, %646, %538, %503, %340, %338, %155, %110, %44, %40, %24, %20, %14
  %830 = phi i32 [ %339, %338 ], [ 1, %24 ], [ 0, %20 ], [ 2, %155 ], [ 0, %110 ], [ 0, %44 ], [ 0, %40 ], [ 0, %340 ], [ 0, %503 ], [ 0, %538 ], [ 4, %646 ], [ %823, %822 ], [ 0, %658 ], [ %19, %14 ]
  %831 = add i32 %830, %15
  ret i32 %831
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bch_init(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = zext i1 %3 to i8
  %6 = add i32 %0, -16
  %7 = icmp ult i32 %6, -11
  %8 = add i32 %1, -65
  %9 = icmp ult i32 %8, -64
  %10 = or i1 %7, %9
  br i1 %10, label %304, label %11

11:                                               ; preds = %4
  %12 = mul nuw nsw i32 %1, %0
  %13 = shl nsw i32 -1, %0
  %14 = xor i32 %13, -1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %304

16:                                               ; preds = %11
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = add nsw i32 %0, -5
  %20 = getelementptr [11 x i32], ptr @bch_init.prim_poly_tab, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi i32 [ %21, %18 ], [ %2, %16 ]
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 76) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %304, label %27

27:                                               ; preds = %22
  store i32 %0, ptr %25, align 8
  %28 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 2
  store i32 %1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 1
  store i32 %14, ptr %29, align 4
  %30 = add nuw nsw i32 %12, 31
  %31 = lshr i32 %30, 5
  %32 = add nuw nsw i32 %12, 7
  %33 = lshr i32 %32, 3
  %34 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 4
  store i32 %33, ptr %34, align 8
  %35 = shl i32 %14, 1
  %36 = add i32 %35, 2
  %37 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %36, i32 noundef 3264) #12
  %38 = load i32, ptr %29, align 4
  %39 = shl i32 %38, 1
  %40 = add i32 %39, 2
  %41 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 5
  store ptr %37, ptr %41, align 4
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 3264) #12
  %43 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 6
  store ptr %42, ptr %43, align 8
  %44 = shl nuw nsw i32 %31, 12
  %45 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %44, i32 noundef 3264) #12
  %46 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 7
  store ptr %45, ptr %46, align 4
  %47 = shl nuw nsw i32 %31, 2
  %48 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 3264) #12
  %49 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 8
  store ptr %48, ptr %49, align 8
  %50 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 3264) #12
  %51 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 9
  store ptr %50, ptr %51, align 4
  %52 = shl nuw nsw i32 %0, 2
  %53 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %52, i32 noundef 3264) #12
  %54 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 10
  store ptr %53, ptr %54, align 8
  %55 = shl nuw nsw i32 %1, 3
  %56 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %55, i32 noundef 3264) #12
  %57 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 11
  store ptr %56, ptr %57, align 4
  %58 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %55, i32 noundef 3264) #12
  %59 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 12
  store ptr %58, ptr %59, align 8
  %60 = mul nuw nsw i32 %1, 12
  %61 = add nuw nsw i32 %60, 12
  %62 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %61, i32 noundef 3264) #12
  %63 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 13
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 15
  store i8 %5, ptr %64, align 8
  %65 = add nuw nsw i32 %55, 8
  %66 = icmp ne ptr %62, null
  %67 = icmp ne ptr %58, null
  %68 = icmp ne ptr %56, null
  %69 = icmp ne ptr %53, null
  %70 = icmp ne ptr %50, null
  %71 = icmp ne ptr %48, null
  %72 = icmp ne ptr %45, null
  %73 = icmp ne ptr %42, null
  %74 = icmp ne ptr %37, null
  %75 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3264) #12
  %76 = icmp ne ptr %75, null
  %77 = getelementptr %struct.bch_control, ptr %25, i32 0, i32 14, i32 0
  store ptr %75, ptr %77, align 8
  %78 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3264) #12
  %79 = icmp ne ptr %78, null
  %80 = getelementptr %struct.bch_control, ptr %25, i32 0, i32 14, i32 1
  store ptr %78, ptr %80, align 4
  %81 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3264) #12
  %82 = icmp ne ptr %81, null
  %83 = getelementptr %struct.bch_control, ptr %25, i32 0, i32 14, i32 2
  store ptr %81, ptr %83, align 8
  %84 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3264) #12
  %85 = icmp ne ptr %84, null
  %86 = select i1 %85, i1 %82, i1 false
  %87 = select i1 %86, i1 %79, i1 false
  %88 = select i1 %87, i1 %76, i1 false
  %89 = select i1 %88, i1 %66, i1 false
  %90 = select i1 %89, i1 %67, i1 false
  %91 = select i1 %90, i1 %68, i1 false
  %92 = select i1 %91, i1 %69, i1 false
  %93 = select i1 %92, i1 %70, i1 false
  %94 = select i1 %93, i1 %71, i1 false
  %95 = select i1 %94, i1 %72, i1 false
  %96 = select i1 %95, i1 %73, i1 false
  %97 = select i1 %96, i1 %74, i1 false
  %98 = getelementptr %struct.bch_control, ptr %25, i32 0, i32 14, i32 3
  store ptr %84, ptr %98, align 4
  br i1 %97, label %99, label %304

99:                                               ; preds = %27
  %100 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 false) #10, !range !11
  %101 = lshr i32 -2147483648, %100
  %102 = load i32, ptr %25, align 8
  %103 = shl nuw i32 1, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %304

105:                                              ; preds = %99
  %106 = load i32, ptr %29, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %129, label %108

108:                                              ; preds = %120, %105
  %109 = phi i32 [ %125, %120 ], [ 1, %105 ]
  %110 = phi i32 [ %126, %120 ], [ 0, %105 ]
  %111 = trunc i32 %109 to i16
  %112 = load ptr, ptr %41, align 4
  %113 = getelementptr i16, ptr %112, i32 %110
  store i16 %111, ptr %113, align 2
  %114 = trunc i32 %110 to i16
  %115 = load ptr, ptr %43, align 8
  %116 = getelementptr i16, ptr %115, i32 %109
  store i16 %114, ptr %116, align 2
  %117 = icmp ne i32 %110, 0
  %118 = icmp eq i32 %109, 1
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %304, label %120

120:                                              ; preds = %108
  %121 = shl i32 %109, 1
  %122 = and i32 %121, %101
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 0, i32 %23
  %125 = xor i32 %124, %121
  %126 = add nuw i32 %110, 1
  %127 = load i32, ptr %29, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %108, label %129

129:                                              ; preds = %120, %105
  %130 = phi i32 [ 0, %105 ], [ %127, %120 ]
  %131 = load ptr, ptr %41, align 4
  %132 = getelementptr i16, ptr %131, i32 %130
  store i16 1, ptr %132, align 2
  %133 = load ptr, ptr %43, align 8
  store i16 0, ptr %133, align 2
  %134 = load i32, ptr %25, align 8
  %135 = load i32, ptr %28, align 8
  %136 = mul i32 %135, %134
  %137 = shl i32 %136, 2
  %138 = add i32 %137, 8
  %139 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %138, i32 noundef 3264) #12
  %140 = icmp eq ptr %139, null
  %141 = load i32, ptr %29, align 4
  %142 = shl i32 %141, 2
  %143 = add i32 %142, 4
  %144 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %143, i32 noundef 3264) #12
  %145 = icmp eq ptr %144, null
  %146 = add i32 %136, 32
  %147 = lshr i32 %146, 3
  %148 = and i32 %147, 536870908
  %149 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %148, i32 noundef 3264) #12
  %150 = icmp eq ptr %149, null
  %151 = select i1 %150, i1 true, i1 %145
  %152 = select i1 %151, i1 true, i1 %140
  br i1 %152, label %153, label %154

153:                                              ; preds = %129
  tail call void @kfree(ptr noundef %149) #10
  br label %298

154:                                              ; preds = %129
  %155 = load i32, ptr %29, align 4
  %156 = shl i32 %155, 2
  %157 = add i32 %156, 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %144, i8 0, i32 %157, i1 false) #10
  %158 = icmp eq i32 %135, 0
  br i1 %158, label %180, label %159

159:                                              ; preds = %154
  %160 = icmp eq i32 %134, 0
  br label %161

161:                                              ; preds = %177, %159
  %162 = phi i32 [ 0, %159 ], [ %178, %177 ]
  br i1 %160, label %177, label %163

163:                                              ; preds = %161
  %164 = shl i32 %162, 1
  %165 = or i32 %164, 1
  %166 = load i32, ptr %29, align 4
  br label %167

167:                                              ; preds = %167, %163
  %168 = phi i32 [ %174, %167 ], [ %165, %163 ]
  %169 = phi i32 [ %175, %167 ], [ 0, %163 ]
  %170 = getelementptr i32, ptr %144, i32 %168
  store i32 1, ptr %170, align 4
  %171 = shl i32 %168, 1
  %172 = icmp ugt i32 %166, %171
  %173 = select i1 %172, i32 0, i32 %166
  %174 = sub i32 %171, %173
  %175 = add nuw i32 %169, 1
  %176 = icmp eq i32 %175, %134
  br i1 %176, label %177, label %167

177:                                              ; preds = %167, %161
  %178 = add nuw i32 %162, 1
  %179 = icmp eq i32 %178, %135
  br i1 %179, label %180, label %161

180:                                              ; preds = %177, %154
  store i32 0, ptr %139, align 64
  %181 = getelementptr inbounds %struct.gf_poly, ptr %139, i32 0, i32 1
  store i32 1, ptr %181, align 4
  %182 = load i32, ptr %29, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %268, label %184

184:                                              ; preds = %261, %180
  %185 = phi i32 [ %262, %261 ], [ %182, %180 ]
  %186 = phi i32 [ %263, %261 ], [ 0, %180 ]
  %187 = phi i32 [ %264, %261 ], [ 0, %180 ]
  %188 = getelementptr i32, ptr %144, i32 %187
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %261, label %191

191:                                              ; preds = %184
  %192 = load ptr, ptr %41, align 4
  %193 = getelementptr i16, ptr %192, i32 %187
  %194 = load i16, ptr %193, align 2
  %195 = zext i16 %194 to i32
  %196 = add i32 %186, 1
  %197 = getelementptr %struct.gf_poly, ptr %139, i32 0, i32 1, i32 %196
  store i32 1, ptr %197, align 4
  %198 = load i32, ptr %139, align 64
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %234, label %200

200:                                              ; preds = %191
  %201 = icmp ne i16 %194, 0
  %202 = getelementptr %struct.gf_poly, ptr %139, i32 0, i32 1, i32 %198
  %203 = load i32, ptr %202, align 4
  br label %204

204:                                              ; preds = %227, %200
  %205 = phi i32 [ %203, %200 ], [ %231, %227 ]
  %206 = phi i32 [ %198, %200 ], [ %229, %227 ]
  %207 = getelementptr %struct.gf_poly, ptr %139, i32 0, i32 1, i32 %206
  %208 = icmp ne i32 %205, 0
  %209 = and i1 %201, %208
  br i1 %209, label %210, label %227

210:                                              ; preds = %204
  %211 = load ptr, ptr %41, align 4
  %212 = load ptr, ptr %43, align 8
  %213 = getelementptr i16, ptr %212, i32 %205
  %214 = load i16, ptr %213, align 2
  %215 = zext i16 %214 to i32
  %216 = getelementptr i16, ptr %212, i32 %195
  %217 = load i16, ptr %216, align 2
  %218 = zext i16 %217 to i32
  %219 = add nuw nsw i32 %218, %215
  %220 = load i32, ptr %29, align 4
  %221 = icmp ugt i32 %220, %219
  %222 = select i1 %221, i32 0, i32 %220
  %223 = sub i32 %219, %222
  %224 = getelementptr i16, ptr %211, i32 %223
  %225 = load i16, ptr %224, align 2
  %226 = zext i16 %225 to i32
  br label %227

227:                                              ; preds = %210, %204
  %228 = phi i32 [ %226, %210 ], [ 0, %204 ]
  %229 = add i32 %206, -1
  %230 = getelementptr %struct.gf_poly, ptr %139, i32 0, i32 1, i32 %229
  %231 = load i32, ptr %230, align 4
  %232 = xor i32 %231, %228
  store i32 %232, ptr %207, align 4
  %233 = icmp eq i32 %229, 0
  br i1 %233, label %234, label %204

234:                                              ; preds = %227, %191
  %235 = load i32, ptr %181, align 4
  %236 = icmp ne i32 %235, 0
  %237 = icmp ne i16 %194, 0
  %238 = and i1 %237, %236
  br i1 %238, label %239, label %256

239:                                              ; preds = %234
  %240 = load ptr, ptr %41, align 4
  %241 = load ptr, ptr %43, align 8
  %242 = getelementptr i16, ptr %241, i32 %235
  %243 = load i16, ptr %242, align 2
  %244 = zext i16 %243 to i32
  %245 = getelementptr i16, ptr %241, i32 %195
  %246 = load i16, ptr %245, align 2
  %247 = zext i16 %246 to i32
  %248 = add nuw nsw i32 %247, %244
  %249 = load i32, ptr %29, align 4
  %250 = icmp ugt i32 %249, %248
  %251 = select i1 %250, i32 0, i32 %249
  %252 = sub i32 %248, %251
  %253 = getelementptr i16, ptr %240, i32 %252
  %254 = load i16, ptr %253, align 2
  %255 = zext i16 %254 to i32
  br label %256

256:                                              ; preds = %239, %234
  %257 = phi i32 [ %255, %239 ], [ 0, %234 ]
  store i32 %257, ptr %181, align 4
  %258 = load i32, ptr %139, align 64
  %259 = add i32 %258, 1
  store i32 %259, ptr %139, align 64
  %260 = load i32, ptr %29, align 4
  br label %261

261:                                              ; preds = %256, %184
  %262 = phi i32 [ %185, %184 ], [ %260, %256 ]
  %263 = phi i32 [ %186, %184 ], [ %259, %256 ]
  %264 = add nuw i32 %187, 1
  %265 = icmp ult i32 %264, %262
  br i1 %265, label %184, label %266

266:                                              ; preds = %261
  %267 = icmp ult i32 %263, 2147483647
  br i1 %267, label %268, label %295

268:                                              ; preds = %266, %180
  %269 = phi i32 [ %263, %266 ], [ 0, %180 ]
  %270 = add nuw nsw i32 %269, 1
  br label %271

271:                                              ; preds = %288, %268
  %272 = phi i32 [ %289, %288 ], [ 0, %268 ]
  %273 = phi i32 [ %291, %288 ], [ %270, %268 ]
  %274 = tail call i32 @llvm.smin.i32(i32 %273, i32 32) #10
  br label %275

275:                                              ; preds = %275, %271
  %276 = phi i32 [ %285, %275 ], [ 0, %271 ]
  %277 = phi i32 [ %286, %275 ], [ 0, %271 ]
  %278 = xor i32 %277, -1
  %279 = add i32 %273, %278
  %280 = getelementptr %struct.gf_poly, ptr %139, i32 0, i32 1, i32 %279
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, 0
  %283 = lshr i32 -2147483648, %277
  %284 = select i1 %282, i32 0, i32 %283
  %285 = or i32 %284, %276
  %286 = add nuw i32 %277, 1
  %287 = icmp eq i32 %286, %274
  br i1 %287, label %288, label %275

288:                                              ; preds = %275
  %289 = add i32 %272, 1
  %290 = getelementptr i32, ptr %149, i32 %272
  store i32 %285, ptr %290, align 4
  %291 = sub i32 %273, %274
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %271, label %293

293:                                              ; preds = %288
  %294 = load i32, ptr %139, align 64
  br label %295

295:                                              ; preds = %293, %266
  %296 = phi i32 [ %294, %293 ], [ %263, %266 ]
  %297 = getelementptr inbounds %struct.bch_control, ptr %25, i32 0, i32 3
  store i32 %296, ptr %297, align 4
  br label %298

298:                                              ; preds = %295, %153
  %299 = phi ptr [ null, %153 ], [ %149, %295 ]
  tail call void @kfree(ptr noundef %139) #10
  tail call void @kfree(ptr noundef %144) #10
  %300 = icmp eq ptr %299, null
  br i1 %300, label %304, label %301

301:                                              ; preds = %298
  tail call fastcc void @build_mod8_tables(ptr noundef nonnull %25, ptr noundef nonnull %299)
  tail call void @kfree(ptr noundef nonnull %299) #10
  %302 = tail call fastcc i32 @build_deg2_base(ptr noundef nonnull %25)
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %301, %298, %108, %99, %27, %22, %11, %4
  %305 = phi ptr [ null, %4 ], [ null, %11 ], [ null, %22 ], [ %25, %27 ], [ %25, %298 ], [ %25, %301 ], [ %25, %99 ], [ %25, %108 ]
  tail call void @bch_free(ptr noundef %305)
  br label %306

306:                                              ; preds = %304, %301
  %307 = phi ptr [ null, %304 ], [ %25, %301 ]
  ret ptr %307
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @build_mod8_tables(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, %3
  %7 = add i32 %6, 31
  %8 = lshr i32 %7, 5
  %9 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 32
  %12 = lshr i32 %11, 5
  %13 = add i32 %10, 31
  %14 = lshr i32 %13, 5
  %15 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %8, 12
  tail call void @llvm.memset.p0.i32(ptr align 4 %16, i8 0, i32 %17, i1 false)
  %18 = icmp ult i32 %13, 32
  %19 = call i32 @llvm.umax.i32(i32 %14, i32 1)
  br label %20

20:                                               ; preds = %67, %2
  %21 = phi i32 [ 0, %2 ], [ %68, %67 ]
  br label %22

22:                                               ; preds = %64, %20
  %23 = phi i32 [ 0, %20 ], [ %65, %64 ]
  %24 = load ptr, ptr %15, align 4
  %25 = shl i32 %23, 8
  %26 = add nuw nsw i32 %25, %21
  %27 = mul i32 %26, %8
  %28 = getelementptr i32, ptr %24, i32 %27
  %29 = shl i32 %23, 3
  %30 = shl i32 %21, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %64, label %34

32:                                               ; preds = %57, %34
  %33 = icmp eq i32 %39, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %32, %22
  %35 = phi i32 [ %39, %32 ], [ %30, %22 ]
  %36 = tail call i32 @llvm.ctlz.i32(i32 %35, i1 true) #10, !range !11
  %37 = load i32, ptr %1, align 4
  %38 = lshr i32 %37, %36
  %39 = xor i32 %38, %35
  br i1 %18, label %32, label %40

40:                                               ; preds = %34
  %41 = icmp eq i32 %36, 0
  %42 = sub nuw nsw i32 32, %36
  br label %43

43:                                               ; preds = %57, %40
  %44 = phi i32 [ 0, %40 ], [ %51, %57 ]
  br i1 %41, label %49, label %45

45:                                               ; preds = %43
  %46 = getelementptr i32, ptr %1, i32 %44
  %47 = load i32, ptr %46, align 4
  %48 = shl i32 %47, %42
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i32 [ %48, %45 ], [ 0, %43 ]
  %51 = add nuw nsw i32 %44, 1
  %52 = icmp ult i32 %51, %12
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr i32, ptr %1, i32 %51
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, %36
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i32 [ %56, %53 ], [ 0, %49 ]
  %59 = or i32 %58, %50
  %60 = getelementptr i32, ptr %28, i32 %44
  %61 = load i32, ptr %60, align 4
  %62 = xor i32 %61, %59
  store i32 %62, ptr %60, align 4
  %63 = icmp eq i32 %51, %19
  br i1 %63, label %32, label %43

64:                                               ; preds = %32, %22
  %65 = add nuw nsw i32 %23, 1
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %22

67:                                               ; preds = %64
  %68 = add nuw nsw i32 %21, 1
  %69 = icmp eq i32 %68, 256
  br i1 %69, label %70, label %20

70:                                               ; preds = %67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @build_deg2_base(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = alloca [15 x i32], align 4
  %3 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #10
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %6, align 4
  %9 = load i32, ptr %7, align 4
  br label %10

10:                                               ; preds = %39, %5
  %11 = phi i32 [ 0, %5 ], [ %40, %39 ]
  br label %12

12:                                               ; preds = %24, %10
  %13 = phi i32 [ 0, %10 ], [ %29, %24 ]
  %14 = phi i32 [ 0, %10 ], [ %30, %24 ]
  %15 = shl i32 %11, %14
  %16 = icmp ugt i32 %9, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %12
  %18 = phi i32 [ %22, %17 ], [ %15, %12 ]
  %19 = sub i32 %18, %9
  %20 = and i32 %19, %9
  %21 = lshr i32 %19, %3
  %22 = add i32 %21, %20
  %23 = icmp ult i32 %22, %9
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %12
  %25 = phi i32 [ %15, %12 ], [ %22, %17 ]
  %26 = getelementptr i16, ptr %8, i32 %25
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = xor i32 %13, %28
  %30 = add nuw nsw i32 %14, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %32, label %12

32:                                               ; preds = %24
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr i16, ptr %35, i32 %11
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  br label %42

39:                                               ; preds = %32
  %40 = add nuw nsw i32 %11, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %10

42:                                               ; preds = %39, %34, %1
  %43 = phi i32 [ %38, %34 ], [ 0, %1 ], [ 0, %39 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %2, i8 0, i32 60, i1 false)
  %44 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 1
  %45 = icmp eq i32 %3, 0
  br i1 %45, label %113, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %44, align 4
  %48 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 5
  %49 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 6
  %50 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 10
  br label %51

51:                                               ; preds = %104, %46
  %52 = phi i32 [ %47, %46 ], [ %105, %104 ]
  %53 = phi i32 [ %3, %46 ], [ %106, %104 ]
  %54 = phi i32 [ 0, %46 ], [ %107, %104 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load ptr, ptr %49, align 4
  br label %71

58:                                               ; preds = %51
  %59 = load ptr, ptr %48, align 4
  %60 = load ptr, ptr %49, align 4
  %61 = getelementptr i16, ptr %60, i32 %54
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = shl nuw nsw i32 %63, 1
  %65 = icmp ugt i32 %52, %64
  %66 = select i1 %65, i32 0, i32 %52
  %67 = sub i32 %64, %66
  %68 = getelementptr i16, ptr %59, i32 %67
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  br label %71

71:                                               ; preds = %58, %56
  %72 = phi ptr [ %60, %58 ], [ %57, %56 ]
  %73 = phi i32 [ %70, %58 ], [ 0, %56 ]
  %74 = xor i32 %73, %54
  %75 = getelementptr i16, ptr %72, i32 %74
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = icmp ne i32 %74, 0
  %79 = icmp sgt i32 %3, %77
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = getelementptr [15 x i32], ptr %2, i32 0, i32 %77
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %100, %81
  %86 = phi i32 [ %96, %100 ], [ %77, %81 ]
  %87 = getelementptr [15 x i32], ptr %2, i32 0, i32 %86
  %88 = load ptr, ptr %50, align 4
  %89 = getelementptr i32, ptr %88, i32 %86
  store i32 %54, ptr %89, align 4
  store i32 1, ptr %87, align 4
  %90 = add i32 %53, -1
  %91 = load i32, ptr %44, align 4
  br label %104

92:                                               ; preds = %81, %71
  %93 = xor i32 %74, %43
  %94 = getelementptr i16, ptr %72, i32 %93
  %95 = load i16, ptr %94, align 2
  %96 = zext i16 %95 to i32
  %97 = icmp ne i32 %93, 0
  %98 = icmp sgt i32 %3, %96
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = getelementptr [15 x i32], ptr %2, i32 0, i32 %96
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %85, label %104

104:                                              ; preds = %100, %92, %85
  %105 = phi i32 [ %91, %85 ], [ %52, %100 ], [ %52, %92 ]
  %106 = phi i32 [ %90, %85 ], [ %53, %100 ], [ %53, %92 ]
  %107 = add i32 %54, 1
  %108 = icmp ule i32 %107, %105
  %109 = icmp ne i32 %106, 0
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %51, label %111

111:                                              ; preds = %104
  %112 = sext i1 %109 to i32
  br label %113

113:                                              ; preds = %111, %42
  %114 = phi i32 [ 0, %42 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #10
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bch_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #10
  %18 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #10
  %22 = getelementptr %struct.bch_control, ptr %0, i32 0, i32 14, i32 0
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #10
  %24 = getelementptr %struct.bch_control, ptr %0, i32 0, i32 14, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #10
  %26 = getelementptr %struct.bch_control, ptr %0, i32 0, i32 14, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %27) #10
  %28 = getelementptr %struct.bch_control, ptr %0, i32 0, i32 14, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %29) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %30

30:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @find_affine4_roots(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #4 {
  %6 = alloca [15 x i32], align 4
  %7 = alloca [16 x i32], align 4
  %8 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false)
  %9 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i16, ptr %10, i32 %2
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr i16, ptr %10, i32 %1
  %14 = load i16, ptr %13, align 2
  store i32 %3, ptr %7, align 4
  %15 = icmp sgt i32 %8, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %5
  %17 = zext i16 %14 to i32
  %18 = zext i16 %12 to i32
  %19 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq i32 %1, 0
  %22 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 1
  %23 = icmp eq i32 %2, 0
  br label %284

24:                                               ; preds = %311
  %25 = load i32, ptr %7, align 4
  %26 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 12
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 13
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 14
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 15
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %24, %5
  %57 = phi i32 [ %55, %24 ], [ 0, %5 ]
  %58 = phi i32 [ %53, %24 ], [ 0, %5 ]
  %59 = phi i32 [ %51, %24 ], [ 0, %5 ]
  %60 = phi i32 [ %49, %24 ], [ 0, %5 ]
  %61 = phi i32 [ %47, %24 ], [ 0, %5 ]
  %62 = phi i32 [ %45, %24 ], [ 0, %5 ]
  %63 = phi i32 [ %43, %24 ], [ 0, %5 ]
  %64 = phi i32 [ %41, %24 ], [ 0, %5 ]
  %65 = phi i32 [ %39, %24 ], [ 0, %5 ]
  %66 = phi i32 [ %37, %24 ], [ 0, %5 ]
  %67 = phi i32 [ %35, %24 ], [ 0, %5 ]
  %68 = phi i32 [ %33, %24 ], [ 0, %5 ]
  %69 = phi i32 [ %31, %24 ], [ 0, %5 ]
  %70 = phi i32 [ %29, %24 ], [ 0, %5 ]
  %71 = phi i32 [ %27, %24 ], [ 0, %5 ]
  %72 = phi i32 [ %25, %24 ], [ %3, %5 ]
  %73 = lshr i32 %72, 8
  %74 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 8
  %75 = xor i32 %73, %71
  %76 = and i32 %75, 255
  %77 = shl nuw nsw i32 %76, 8
  %78 = xor i32 %77, %72
  %79 = xor i32 %76, %71
  store i32 %79, ptr %74, align 4
  %80 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 1
  %81 = lshr i32 %70, 8
  %82 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 9
  %83 = xor i32 %81, %69
  %84 = and i32 %83, 255
  %85 = shl nuw nsw i32 %84, 8
  %86 = xor i32 %85, %70
  %87 = xor i32 %84, %69
  store i32 %87, ptr %82, align 4
  %88 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 2
  %89 = lshr i32 %68, 8
  %90 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 10
  %91 = xor i32 %89, %67
  %92 = and i32 %91, 255
  %93 = shl nuw nsw i32 %92, 8
  %94 = xor i32 %93, %68
  %95 = xor i32 %92, %67
  store i32 %95, ptr %90, align 4
  %96 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 3
  %97 = lshr i32 %66, 8
  %98 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 11
  %99 = xor i32 %97, %65
  %100 = and i32 %99, 255
  %101 = shl nuw nsw i32 %100, 8
  %102 = xor i32 %101, %66
  %103 = xor i32 %100, %65
  store i32 %103, ptr %98, align 4
  %104 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 4
  %105 = lshr i32 %64, 8
  %106 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 12
  %107 = xor i32 %105, %63
  %108 = and i32 %107, 255
  %109 = shl nuw nsw i32 %108, 8
  %110 = xor i32 %109, %64
  %111 = xor i32 %108, %63
  %112 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 5
  %113 = lshr i32 %62, 8
  %114 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 13
  %115 = xor i32 %113, %61
  %116 = and i32 %115, 255
  %117 = shl nuw nsw i32 %116, 8
  %118 = xor i32 %117, %62
  %119 = xor i32 %116, %61
  %120 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 6
  %121 = lshr i32 %60, 8
  %122 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 14
  %123 = xor i32 %121, %59
  %124 = and i32 %123, 255
  %125 = shl nuw nsw i32 %124, 8
  %126 = xor i32 %125, %60
  %127 = xor i32 %124, %59
  %128 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 7
  %129 = lshr i32 %58, 8
  %130 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 15
  %131 = xor i32 %129, %57
  %132 = and i32 %131, 255
  %133 = shl nuw nsw i32 %132, 8
  %134 = xor i32 %133, %58
  %135 = xor i32 %132, %57
  %136 = lshr i32 %78, 4
  %137 = xor i32 %136, %110
  %138 = and i32 %137, 3855
  %139 = shl nuw nsw i32 %138, 4
  %140 = xor i32 %139, %78
  %141 = xor i32 %138, %110
  %142 = lshr i32 %86, 4
  %143 = xor i32 %142, %118
  %144 = and i32 %143, 3855
  %145 = shl nuw nsw i32 %144, 4
  %146 = xor i32 %145, %86
  %147 = xor i32 %144, %118
  %148 = lshr i32 %94, 4
  %149 = xor i32 %148, %126
  %150 = and i32 %149, 3855
  %151 = shl nuw nsw i32 %150, 4
  %152 = xor i32 %151, %94
  %153 = xor i32 %150, %126
  %154 = lshr i32 %102, 4
  %155 = xor i32 %154, %134
  %156 = and i32 %155, 3855
  %157 = shl nuw nsw i32 %156, 4
  %158 = xor i32 %157, %102
  %159 = xor i32 %156, %134
  %160 = load i32, ptr %74, align 4
  %161 = lshr i32 %160, 4
  %162 = xor i32 %161, %111
  %163 = and i32 %162, 3855
  %164 = shl nuw nsw i32 %163, 4
  %165 = xor i32 %164, %160
  %166 = xor i32 %163, %111
  %167 = load i32, ptr %82, align 4
  %168 = lshr i32 %167, 4
  %169 = xor i32 %168, %119
  %170 = and i32 %169, 3855
  %171 = shl nuw nsw i32 %170, 4
  %172 = xor i32 %171, %167
  %173 = xor i32 %170, %119
  %174 = load i32, ptr %90, align 4
  %175 = lshr i32 %174, 4
  %176 = xor i32 %175, %127
  %177 = and i32 %176, 3855
  %178 = shl nuw nsw i32 %177, 4
  %179 = xor i32 %178, %174
  %180 = xor i32 %177, %127
  %181 = load i32, ptr %98, align 4
  %182 = lshr i32 %181, 4
  %183 = xor i32 %182, %135
  %184 = and i32 %183, 3855
  %185 = shl nuw nsw i32 %184, 4
  %186 = xor i32 %185, %181
  %187 = xor i32 %184, %135
  %188 = lshr i32 %140, 2
  %189 = xor i32 %188, %152
  %190 = and i32 %189, 13107
  %191 = shl nuw nsw i32 %190, 2
  %192 = xor i32 %191, %140
  %193 = xor i32 %190, %152
  %194 = lshr i32 %146, 2
  %195 = xor i32 %194, %158
  %196 = and i32 %195, 13107
  %197 = shl nuw nsw i32 %196, 2
  %198 = xor i32 %197, %146
  %199 = xor i32 %196, %158
  %200 = lshr i32 %141, 2
  %201 = xor i32 %200, %153
  %202 = and i32 %201, 13107
  %203 = shl nuw nsw i32 %202, 2
  %204 = xor i32 %203, %141
  %205 = xor i32 %202, %153
  %206 = lshr i32 %147, 2
  %207 = xor i32 %206, %159
  %208 = and i32 %207, 13107
  %209 = shl nuw nsw i32 %208, 2
  %210 = xor i32 %209, %147
  %211 = xor i32 %208, %159
  %212 = lshr i32 %165, 2
  %213 = xor i32 %212, %179
  %214 = and i32 %213, 13107
  %215 = shl nuw nsw i32 %214, 2
  %216 = xor i32 %215, %165
  %217 = xor i32 %214, %179
  %218 = lshr i32 %172, 2
  %219 = xor i32 %218, %186
  %220 = and i32 %219, 13107
  %221 = shl nuw nsw i32 %220, 2
  %222 = xor i32 %221, %172
  %223 = xor i32 %220, %186
  %224 = lshr i32 %166, 2
  %225 = xor i32 %224, %180
  %226 = and i32 %225, 13107
  %227 = shl nuw nsw i32 %226, 2
  %228 = xor i32 %227, %166
  %229 = xor i32 %226, %180
  %230 = lshr i32 %173, 2
  %231 = xor i32 %230, %187
  %232 = and i32 %231, 13107
  %233 = shl nuw nsw i32 %232, 2
  %234 = xor i32 %233, %173
  %235 = xor i32 %232, %187
  %236 = lshr i32 %192, 1
  %237 = xor i32 %236, %198
  %238 = and i32 %237, 21845
  %239 = shl nuw nsw i32 %238, 1
  %240 = xor i32 %239, %192
  store i32 %240, ptr %7, align 4
  %241 = xor i32 %238, %198
  store i32 %241, ptr %80, align 4
  %242 = lshr i32 %193, 1
  %243 = xor i32 %242, %199
  %244 = and i32 %243, 21845
  %245 = shl nuw nsw i32 %244, 1
  %246 = xor i32 %245, %193
  store i32 %246, ptr %88, align 4
  %247 = xor i32 %244, %199
  store i32 %247, ptr %96, align 4
  %248 = lshr i32 %204, 1
  %249 = xor i32 %248, %210
  %250 = and i32 %249, 21845
  %251 = shl nuw nsw i32 %250, 1
  %252 = xor i32 %251, %204
  store i32 %252, ptr %104, align 4
  %253 = xor i32 %250, %210
  store i32 %253, ptr %112, align 4
  %254 = lshr i32 %205, 1
  %255 = xor i32 %254, %211
  %256 = and i32 %255, 21845
  %257 = shl nuw nsw i32 %256, 1
  %258 = xor i32 %257, %205
  store i32 %258, ptr %120, align 4
  %259 = xor i32 %256, %211
  store i32 %259, ptr %128, align 4
  %260 = lshr i32 %216, 1
  %261 = xor i32 %260, %222
  %262 = and i32 %261, 21845
  %263 = shl nuw nsw i32 %262, 1
  %264 = xor i32 %263, %216
  store i32 %264, ptr %74, align 4
  %265 = xor i32 %262, %222
  store i32 %265, ptr %82, align 4
  %266 = lshr i32 %217, 1
  %267 = xor i32 %266, %223
  %268 = and i32 %267, 21845
  %269 = shl nuw nsw i32 %268, 1
  %270 = xor i32 %269, %217
  store i32 %270, ptr %90, align 4
  %271 = xor i32 %268, %223
  store i32 %271, ptr %98, align 4
  %272 = lshr i32 %228, 1
  %273 = xor i32 %272, %234
  %274 = and i32 %273, 21845
  %275 = shl nuw nsw i32 %274, 1
  %276 = xor i32 %275, %228
  store i32 %276, ptr %106, align 4
  %277 = xor i32 %274, %234
  store i32 %277, ptr %114, align 4
  %278 = lshr i32 %229, 1
  %279 = xor i32 %278, %235
  %280 = and i32 %279, 21845
  %281 = shl nuw nsw i32 %280, 1
  %282 = xor i32 %281, %229
  store i32 %282, ptr %122, align 4
  %283 = xor i32 %280, %235
  store i32 %283, ptr %130, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %6, i8 0, i32 60, i1 false) #10, !annotation !8
  br i1 %15, label %319, label %553

284:                                              ; preds = %311, %16
  %285 = phi i32 [ %17, %16 ], [ %317, %311 ]
  %286 = phi i32 [ %18, %16 ], [ %316, %311 ]
  %287 = phi i32 [ 0, %16 ], [ %314, %311 ]
  %288 = shl i32 %287, 2
  %289 = getelementptr i16, ptr %20, i32 %288
  %290 = load i16, ptr %289, align 2
  %291 = zext i16 %290 to i32
  br i1 %21, label %300, label %292

292:                                              ; preds = %284
  %293 = load i32, ptr %22, align 4
  %294 = icmp ugt i32 %293, %285
  %295 = select i1 %294, i32 0, i32 %293
  %296 = sub i32 %285, %295
  %297 = getelementptr i16, ptr %20, i32 %296
  %298 = load i16, ptr %297, align 2
  %299 = zext i16 %298 to i32
  br label %300

300:                                              ; preds = %292, %284
  %301 = phi i32 [ %299, %292 ], [ 0, %284 ]
  %302 = xor i32 %301, %291
  br i1 %23, label %311, label %303

303:                                              ; preds = %300
  %304 = load i32, ptr %22, align 4
  %305 = icmp ugt i32 %304, %286
  %306 = select i1 %305, i32 0, i32 %304
  %307 = sub i32 %286, %306
  %308 = getelementptr i16, ptr %20, i32 %307
  %309 = load i16, ptr %308, align 2
  %310 = zext i16 %309 to i32
  br label %311

311:                                              ; preds = %303, %300
  %312 = phi i32 [ %310, %303 ], [ 0, %300 ]
  %313 = xor i32 %302, %312
  %314 = add nuw nsw i32 %287, 1
  %315 = getelementptr [16 x i32], ptr %7, i32 0, i32 %314
  store i32 %313, ptr %315, align 4
  %316 = add nuw i32 %286, 1
  %317 = add i32 %285, 2
  %318 = icmp eq i32 %314, %8
  br i1 %318, label %24, label %284

319:                                              ; preds = %56
  %320 = shl nuw i32 1, %8
  br label %321

321:                                              ; preds = %364, %319
  %322 = phi i32 [ %365, %364 ], [ 0, %319 ]
  %323 = phi i32 [ %367, %364 ], [ 0, %319 ]
  %324 = phi i32 [ %366, %364 ], [ %320, %319 ]
  %325 = sub i32 %323, %322
  %326 = icmp slt i32 %325, %8
  br i1 %326, label %327, label %361

327:                                              ; preds = %339, %321
  %328 = phi i32 [ %340, %339 ], [ %325, %321 ]
  %329 = getelementptr i32, ptr %7, i32 %328
  %330 = load i32, ptr %329, align 4
  %331 = and i32 %330, %324
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %339, label %333

333:                                              ; preds = %327
  %334 = icmp eq i32 %328, %325
  br i1 %334, label %342, label %335

335:                                              ; preds = %333
  %336 = getelementptr i32, ptr %7, i32 %328
  %337 = getelementptr i32, ptr %7, i32 %325
  %338 = load i32, ptr %337, align 4
  store i32 %338, ptr %336, align 4
  store i32 %330, ptr %337, align 4
  br label %342

339:                                              ; preds = %327
  %340 = add nsw i32 %328, 1
  %341 = icmp slt i32 %340, %8
  br i1 %341, label %327, label %361

342:                                              ; preds = %335, %333
  %343 = phi i32 [ %325, %333 ], [ %328, %335 ]
  %344 = add nsw i32 %343, 1
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %361, label %346

346:                                              ; preds = %342
  %347 = getelementptr i32, ptr %7, i32 %325
  %348 = load i32, ptr %347, align 4
  %349 = icmp slt i32 %344, %8
  br i1 %349, label %350, label %364

350:                                              ; preds = %358, %346
  %351 = phi i32 [ %359, %358 ], [ %344, %346 ]
  %352 = getelementptr i32, ptr %7, i32 %351
  %353 = load i32, ptr %352, align 4
  %354 = and i32 %353, %324
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %358, label %356

356:                                              ; preds = %350
  %357 = xor i32 %353, %348
  store i32 %357, ptr %352, align 4
  br label %358

358:                                              ; preds = %356, %350
  %359 = add nsw i32 %351, 1
  %360 = icmp eq i32 %359, %8
  br i1 %360, label %364, label %350

361:                                              ; preds = %342, %339, %321
  %362 = add i32 %322, 1
  %363 = getelementptr [15 x i32], ptr %6, i32 0, i32 %322
  store i32 %323, ptr %363, align 4
  br label %364

364:                                              ; preds = %361, %358, %346
  %365 = phi i32 [ %362, %361 ], [ %322, %346 ], [ %322, %358 ]
  %366 = lshr i32 %324, 1
  %367 = add nuw nsw i32 %323, 1
  %368 = icmp eq i32 %367, %8
  br i1 %368, label %369, label %321

369:                                              ; preds = %364
  %370 = icmp sgt i32 %365, 0
  br i1 %370, label %371, label %553

371:                                              ; preds = %369
  %372 = add i32 %8, -1
  %373 = icmp sgt i32 %372, -1
  br i1 %373, label %374, label %404

374:                                              ; preds = %371
  %375 = sub nsw i32 %372, %365
  br label %376

376:                                              ; preds = %398, %374
  %377 = phi i32 [ %365, %374 ], [ %399, %398 ]
  %378 = phi i32 [ %372, %374 ], [ %402, %398 ]
  %379 = icmp sgt i32 %378, %375
  br i1 %379, label %380, label %384

380:                                              ; preds = %376
  %381 = getelementptr i32, ptr %7, i32 %378
  %382 = load i32, ptr %381, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %553

384:                                              ; preds = %380, %376
  %385 = icmp eq i32 %377, 0
  br i1 %385, label %394, label %386

386:                                              ; preds = %384
  %387 = add i32 %377, -1
  %388 = getelementptr [15 x i32], ptr %6, i32 0, i32 %387
  %389 = load i32, ptr %388, align 4
  %390 = icmp eq i32 %378, %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %386
  %392 = sub i32 %8, %378
  %393 = shl nuw i32 1, %392
  br label %398

394:                                              ; preds = %386, %384
  %395 = sub i32 %378, %377
  %396 = getelementptr i32, ptr %7, i32 %395
  %397 = load i32, ptr %396, align 4
  br label %398

398:                                              ; preds = %394, %391
  %399 = phi i32 [ %387, %391 ], [ %377, %394 ]
  %400 = phi i32 [ %393, %391 ], [ %397, %394 ]
  %401 = getelementptr i32, ptr %7, i32 %378
  store i32 %400, ptr %401, align 4
  %402 = add nsw i32 %378, -1
  %403 = icmp sgt i32 %378, 0
  br i1 %403, label %376, label %404

404:                                              ; preds = %398, %371
  %405 = icmp eq i32 %365, 2
  br i1 %405, label %406, label %553

406:                                              ; preds = %404
  %407 = load i32, ptr %6, align 4
  %408 = getelementptr i32, ptr %7, i32 %407
  %409 = load i32, ptr %408, align 4
  %410 = and i32 %409, -2
  store i32 %410, ptr %408, align 4
  %411 = getelementptr inbounds [15 x i32], ptr %6, i32 0, i32 1
  %412 = load i32, ptr %411, align 4
  %413 = getelementptr i32, ptr %7, i32 %412
  %414 = load i32, ptr %413, align 4
  %415 = and i32 %414, -2
  store i32 %415, ptr %413, align 4
  br i1 %373, label %416, label %469

416:                                              ; preds = %416, %406
  %417 = phi i32 [ %434, %416 ], [ %372, %406 ]
  %418 = phi i32 [ %433, %416 ], [ 0, %406 ]
  %419 = getelementptr i32, ptr %7, i32 %417
  %420 = load i32, ptr %419, align 4
  %421 = or i32 %418, 1
  %422 = and i32 %420, %421
  %423 = lshr i32 %422, 1
  %424 = xor i32 %423, %422
  %425 = lshr i32 %424, 2
  %426 = xor i32 %425, %424
  %427 = and i32 %426, 286331153
  %428 = mul i32 %427, 286331153
  %429 = lshr i32 %428, 28
  %430 = and i32 %429, 1
  %431 = sub i32 %8, %417
  %432 = shl nuw i32 %430, %431
  %433 = or i32 %432, %418
  %434 = add nsw i32 %417, -1
  %435 = icmp eq i32 %417, 0
  br i1 %435, label %436, label %416

436:                                              ; preds = %416
  %437 = lshr i32 %433, 1
  store i32 %437, ptr %4, align 4
  %438 = load i32, ptr %408, align 4
  %439 = or i32 %438, 1
  store i32 %439, ptr %408, align 4
  %440 = load i32, ptr %413, align 4
  %441 = and i32 %440, -2
  store i32 %441, ptr %413, align 4
  br i1 %373, label %442, label %511

442:                                              ; preds = %442, %436
  %443 = phi i32 [ %460, %442 ], [ %372, %436 ]
  %444 = phi i32 [ %459, %442 ], [ 0, %436 ]
  %445 = getelementptr i32, ptr %7, i32 %443
  %446 = load i32, ptr %445, align 4
  %447 = or i32 %444, 1
  %448 = and i32 %446, %447
  %449 = lshr i32 %448, 1
  %450 = xor i32 %449, %448
  %451 = lshr i32 %450, 2
  %452 = xor i32 %451, %450
  %453 = and i32 %452, 286331153
  %454 = mul i32 %453, 286331153
  %455 = lshr i32 %454, 28
  %456 = and i32 %455, 1
  %457 = sub i32 %8, %443
  %458 = shl nuw i32 %456, %457
  %459 = or i32 %458, %444
  %460 = add nsw i32 %443, -1
  %461 = icmp eq i32 %443, 0
  br i1 %461, label %462, label %442

462:                                              ; preds = %442
  %463 = lshr i32 %459, 1
  %464 = getelementptr i32, ptr %4, i32 1
  store i32 %463, ptr %464, align 4
  %465 = load i32, ptr %408, align 4
  %466 = and i32 %465, -2
  store i32 %466, ptr %408, align 4
  %467 = load i32, ptr %413, align 4
  %468 = or i32 %467, 1
  store i32 %468, ptr %413, align 4
  br i1 %373, label %484, label %544

469:                                              ; preds = %406
  store i32 0, ptr %4, align 4
  %470 = load i32, ptr %408, align 4
  %471 = or i32 %470, 1
  store i32 %471, ptr %408, align 4
  %472 = load i32, ptr %413, align 4
  %473 = and i32 %472, -2
  store i32 %473, ptr %413, align 4
  %474 = getelementptr i32, ptr %4, i32 1
  store i32 0, ptr %474, align 4
  %475 = load i32, ptr %408, align 4
  %476 = and i32 %475, -2
  store i32 %476, ptr %408, align 4
  %477 = load i32, ptr %413, align 4
  %478 = or i32 %477, 1
  store i32 %478, ptr %413, align 4
  %479 = getelementptr i32, ptr %4, i32 2
  store i32 0, ptr %479, align 4
  %480 = load i32, ptr %408, align 4
  %481 = or i32 %480, 1
  store i32 %481, ptr %408, align 4
  %482 = load i32, ptr %413, align 4
  %483 = or i32 %482, 1
  store i32 %483, ptr %413, align 4
  br label %550

484:                                              ; preds = %484, %462
  %485 = phi i32 [ %502, %484 ], [ %372, %462 ]
  %486 = phi i32 [ %501, %484 ], [ 0, %462 ]
  %487 = getelementptr i32, ptr %7, i32 %485
  %488 = load i32, ptr %487, align 4
  %489 = or i32 %486, 1
  %490 = and i32 %488, %489
  %491 = lshr i32 %490, 1
  %492 = xor i32 %491, %490
  %493 = lshr i32 %492, 2
  %494 = xor i32 %493, %492
  %495 = and i32 %494, 286331153
  %496 = mul i32 %495, 286331153
  %497 = lshr i32 %496, 28
  %498 = and i32 %497, 1
  %499 = sub i32 %8, %485
  %500 = shl nuw i32 %498, %499
  %501 = or i32 %500, %486
  %502 = add nsw i32 %485, -1
  %503 = icmp eq i32 %485, 0
  br i1 %503, label %504, label %484

504:                                              ; preds = %484
  %505 = lshr i32 %501, 1
  %506 = getelementptr i32, ptr %4, i32 2
  store i32 %505, ptr %506, align 4
  %507 = load i32, ptr %408, align 4
  %508 = or i32 %507, 1
  store i32 %508, ptr %408, align 4
  %509 = load i32, ptr %413, align 4
  %510 = or i32 %509, 1
  store i32 %510, ptr %413, align 4
  br i1 %373, label %522, label %550

511:                                              ; preds = %436
  %512 = getelementptr i32, ptr %4, i32 1
  store i32 0, ptr %512, align 4
  %513 = load i32, ptr %408, align 4
  %514 = and i32 %513, -2
  store i32 %514, ptr %408, align 4
  %515 = load i32, ptr %413, align 4
  %516 = or i32 %515, 1
  store i32 %516, ptr %413, align 4
  %517 = getelementptr i32, ptr %4, i32 2
  store i32 0, ptr %517, align 4
  %518 = load i32, ptr %408, align 4
  %519 = or i32 %518, 1
  store i32 %519, ptr %408, align 4
  %520 = load i32, ptr %413, align 4
  %521 = or i32 %520, 1
  store i32 %521, ptr %413, align 4
  br label %550

522:                                              ; preds = %522, %504
  %523 = phi i32 [ %540, %522 ], [ %372, %504 ]
  %524 = phi i32 [ %539, %522 ], [ 0, %504 ]
  %525 = getelementptr i32, ptr %7, i32 %523
  %526 = load i32, ptr %525, align 4
  %527 = or i32 %524, 1
  %528 = and i32 %526, %527
  %529 = lshr i32 %528, 1
  %530 = xor i32 %529, %528
  %531 = lshr i32 %530, 2
  %532 = xor i32 %531, %530
  %533 = and i32 %532, 286331153
  %534 = mul i32 %533, 286331153
  %535 = lshr i32 %534, 28
  %536 = and i32 %535, 1
  %537 = sub i32 %8, %523
  %538 = shl nuw i32 %536, %537
  %539 = or i32 %538, %524
  %540 = add nsw i32 %523, -1
  %541 = icmp eq i32 %523, 0
  br i1 %541, label %542, label %522

542:                                              ; preds = %522
  %543 = lshr i32 %539, 1
  br label %550

544:                                              ; preds = %462
  %545 = getelementptr i32, ptr %4, i32 2
  store i32 0, ptr %545, align 4
  %546 = load i32, ptr %408, align 4
  %547 = or i32 %546, 1
  store i32 %547, ptr %408, align 4
  %548 = load i32, ptr %413, align 4
  %549 = or i32 %548, 1
  store i32 %549, ptr %413, align 4
  br label %550

550:                                              ; preds = %544, %542, %511, %504, %469
  %551 = phi i32 [ 0, %504 ], [ %543, %542 ], [ 0, %511 ], [ 0, %469 ], [ 0, %544 ]
  %552 = getelementptr i32, ptr %4, i32 3
  store i32 %551, ptr %552, align 4
  br label %553

553:                                              ; preds = %550, %404, %380, %369, %56
  %554 = phi i32 [ 0, %404 ], [ 0, %369 ], [ 4, %550 ], [ 0, %56 ], [ 0, %380 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  ret i32 %554
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gf_poly_mod(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.gf_poly, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %2, align 4
  %7 = load i32, ptr %1, align 4
  %8 = icmp ult i32 %7, %6
  br i1 %8, label %103, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %3, null
  br i1 %10, label %11, label %47

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.gf_poly, ptr %2, i32 0, i32 1, i32 %6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i16, ptr %19, i32 %17
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = sub i32 %15, %22
  %24 = icmp sgt i32 %6, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %40, %11
  %26 = phi i32 [ %43, %40 ], [ 0, %11 ]
  %27 = getelementptr %struct.gf_poly, ptr %2, i32 0, i32 1, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %18, align 4
  %32 = getelementptr i16, ptr %31, i32 %28
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = add i32 %23, %34
  %36 = load i32, ptr %14, align 4
  %37 = icmp ugt i32 %36, %35
  %38 = select i1 %37, i32 0, i32 %36
  %39 = sub i32 %35, %38
  br label %40

40:                                               ; preds = %30, %25
  %41 = phi i32 [ %39, %30 ], [ -1, %25 ]
  %42 = getelementptr i32, ptr %13, i32 %26
  store i32 %41, ptr %42, align 4
  %43 = add nuw nsw i32 %26, 1
  %44 = icmp eq i32 %43, %6
  br i1 %44, label %45, label %25

45:                                               ; preds = %40
  %46 = load i32, ptr %1, align 4
  br label %47

47:                                               ; preds = %45, %11, %9
  %48 = phi i32 [ %7, %9 ], [ %7, %11 ], [ %46, %45 ]
  %49 = phi ptr [ %3, %9 ], [ %13, %11 ], [ %13, %45 ]
  %50 = icmp ult i32 %48, %6
  br i1 %50, label %94, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 6
  %53 = icmp eq i32 %6, 0
  %54 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 5
  %55 = getelementptr inbounds %struct.bch_control, ptr %0, i32 0, i32 1
  br label %56

56:                                               ; preds = %91, %51
  %57 = phi i32 [ %48, %51 ], [ %92, %91 ]
  %58 = getelementptr i32, ptr %5, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %52, align 4
  %63 = getelementptr i16, ptr %62, i32 %59
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  br i1 %53, label %91, label %66

66:                                               ; preds = %61
  %67 = sub i32 %57, %6
  br label %68

68:                                               ; preds = %87, %66
  %69 = phi i32 [ %88, %87 ], [ 0, %66 ]
  %70 = phi i32 [ %89, %87 ], [ %67, %66 ]
  %71 = getelementptr i32, ptr %49, i32 %69
  %72 = load i32, ptr %71, align 4
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load ptr, ptr %54, align 4
  %76 = add i32 %72, %65
  %77 = load i32, ptr %55, align 4
  %78 = icmp ugt i32 %77, %76
  %79 = select i1 %78, i32 0, i32 %77
  %80 = sub i32 %76, %79
  %81 = getelementptr i16, ptr %75, i32 %80
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = getelementptr i32, ptr %5, i32 %70
  %85 = load i32, ptr %84, align 4
  %86 = xor i32 %85, %83
  store i32 %86, ptr %84, align 4
  br label %87

87:                                               ; preds = %74, %68
  %88 = add nuw i32 %69, 1
  %89 = add i32 %70, 1
  %90 = icmp eq i32 %88, %6
  br i1 %90, label %91, label %68

91:                                               ; preds = %87, %61, %56
  %92 = add i32 %57, -1
  %93 = icmp ult i32 %92, %6
  br i1 %93, label %94, label %56

94:                                               ; preds = %91, %47
  br label %95

95:                                               ; preds = %95, %94
  %96 = phi i32 [ %97, %95 ], [ %6, %94 ]
  %97 = add i32 %96, -1
  store i32 %97, ptr %1, align 4
  %98 = getelementptr i32, ptr %5, i32 %97
  %99 = load i32, ptr %98, align 4
  %100 = icmp ne i32 %99, 0
  %101 = icmp eq i32 %97, 0
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %103, label %95

103:                                              ; preds = %95, %4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

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
!10 = !{i8 0, i8 2}
!11 = !{i32 0, i32 33}
