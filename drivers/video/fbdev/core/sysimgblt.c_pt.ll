; ModuleID = '/llk/IR/drivers/video/fbdev/core/sysimgblt.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/sysimgblt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sys_imageblit:\09\09\09\09\09"
module asm "\09.asciz \09\22sys_imageblit\22\09\09\09\09\09"
module asm "__kstrtabns_sys_imageblit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { ptr }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_sys_imageblit = external dso_local constant [0 x i8], align 1
@__kstrtabns_sys_imageblit = external dso_local constant [0 x i8], align 1
@__ksymtab_sys_imageblit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sys_imageblit to i32), ptr @__kstrtab_sys_imageblit, ptr @__kstrtabns_sys_imageblit }, section "___ksymtab+sys_imageblit", align 4
@__UNIQUE_ID_author259 = internal constant [51 x i8] c"sysimgblt.author=Antonino Daplas <adaplas@pol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [75 x i8] c"sysimgblt.description=1-bit/8-bit to 1-32 bit color expansion (sys-to-sys)\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [50 x i8] c"sysimgblt.file=drivers/video/fbdev/core/sysimgblt\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [22 x i8] c"sysimgblt.license=GPL\00", section ".modinfo", align 1
@cfb_tab8_le = internal unnamed_addr constant [16 x i32] [i32 0, i32 -16777216, i32 16711680, i32 -65536, i32 65280, i32 -16711936, i32 16776960, i32 -256, i32 255, i32 -16776961, i32 16711935, i32 -65281, i32 65535, i32 -16711681, i32 16777215, i32 -1], align 4
@cfb_tab16_le = internal unnamed_addr constant [4 x i32] [i32 0, i32 -65536, i32 65535, i32 -1], align 4
@cfb_tab32 = internal unnamed_addr constant [2 x i32] [i32 0, i32 -1], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__ksymtab_sys_imageblit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sys_imageblit(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %321

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %12, 3
  %17 = mul i32 %16, %15
  %18 = mul i32 %13, %4
  %19 = add i32 %17, %18
  %20 = and i32 %19, 31
  %21 = shl i32 %15, 3
  %22 = and i32 %21, 24
  %23 = lshr i32 %19, 3
  %24 = and i32 %23, 536870908
  %25 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %24
  %28 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fb_ops, ptr %29, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %10
  %34 = tail call i32 %31(ptr noundef %0) #1
  br label %35

35:                                               ; preds = %33, %10
  %36 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 6
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %39, label %233

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  %41 = load i32, ptr %40, align 4
  switch i32 %41, label %51 [
    i32 2, label %42
    i32 4, label %42
  ]

42:                                               ; preds = %39, %39
  %43 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 26
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i32, ptr %44, i32 %46
  %48 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i32, ptr %44, i32 %49
  br label %54

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 4
  %53 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 5
  br label %54

54:                                               ; preds = %51, %42
  %55 = phi ptr [ %47, %42 ], [ %52, %51 ]
  %56 = phi ptr [ %50, %42 ], [ %53, %51 ]
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %55, align 4
  %59 = freeze i32 %4
  %60 = udiv i32 32, %59
  %61 = mul i32 %60, %59
  %62 = sub i32 32, %61
  %63 = icmp ne i32 %62, 0
  %64 = icmp ne i32 %20, 0
  %65 = select i1 %63, i1 true, i1 %64
  %66 = icmp ne i32 %22, 0
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %143, label %68

68:                                               ; preds = %54
  %69 = add nsw i32 %60, -1
  %70 = and i32 %69, %6
  %71 = icmp eq i32 %70, 0
  %72 = icmp ugt i32 %4, 7
  %73 = select i1 %71, i1 %72, i1 false
  %74 = icmp ult i32 %4, 33
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %143

76:                                               ; preds = %68
  %77 = load i32, ptr %3, align 4
  %78 = udiv i32 32, %77
  %79 = load i32, ptr %5, align 4
  %80 = add i32 %79, 7
  %81 = lshr i32 %80, 3
  %82 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 7
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq i32 %77, 16
  %85 = select i1 %84, ptr @cfb_tab16_le, ptr @cfb_tab32
  %86 = icmp eq i32 %77, 8
  %87 = select i1 %86, ptr @cfb_tab8_le, ptr %85
  %88 = add nsw i32 %78, -1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %90, %76
  %91 = phi i32 [ %98, %90 ], [ %88, %76 ]
  %92 = phi i32 [ %97, %90 ], [ %57, %76 ]
  %93 = phi i32 [ %96, %90 ], [ %58, %76 ]
  %94 = shl i32 %93, %77
  %95 = shl i32 %92, %77
  %96 = or i32 %94, %58
  %97 = or i32 %95, %57
  %98 = add i32 %91, -1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %90

100:                                              ; preds = %90, %76
  %101 = phi i32 [ %58, %76 ], [ %96, %90 ]
  %102 = phi i32 [ %57, %76 ], [ %97, %90 ]
  %103 = shl nsw i32 -1, %78
  %104 = xor i32 %103, -1
  %105 = xor i32 %102, %101
  %106 = udiv i32 %79, %78
  %107 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %321, label %110

110:                                              ; preds = %100
  %111 = icmp ugt i32 %78, %79
  br label %112

112:                                              ; preds = %138, %110
  %113 = phi i32 [ %108, %110 ], [ %116, %138 ]
  %114 = phi ptr [ %83, %110 ], [ %141, %138 ]
  %115 = phi ptr [ %27, %110 ], [ %140, %138 ]
  %116 = add i32 %113, -1
  br i1 %111, label %138, label %117

117:                                              ; preds = %117, %112
  %118 = phi i32 [ %122, %117 ], [ %106, %112 ]
  %119 = phi ptr [ %132, %117 ], [ %115, %112 ]
  %120 = phi ptr [ %136, %117 ], [ %114, %112 ]
  %121 = phi i32 [ %134, %117 ], [ 8, %112 ]
  %122 = add i32 %118, -1
  %123 = sub i32 %121, %78
  %124 = load i8, ptr %120, align 1
  %125 = zext i8 %124 to i32
  %126 = lshr i32 %125, %123
  %127 = and i32 %126, %104
  %128 = getelementptr i32, ptr %87, i32 %127
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, %105
  %131 = xor i32 %130, %102
  %132 = getelementptr i32, ptr %119, i32 1
  store i32 %131, ptr %119, align 4
  %133 = icmp eq i32 %121, %78
  %134 = select i1 %133, i32 8, i32 %123
  %135 = zext i1 %133 to i32
  %136 = getelementptr i8, ptr %120, i32 %135
  %137 = icmp eq i32 %122, 0
  br i1 %137, label %138, label %117

138:                                              ; preds = %117, %112
  %139 = load i32, ptr %14, align 4
  %140 = getelementptr i8, ptr %115, i32 %139
  %141 = getelementptr i8, ptr %114, i32 %81
  %142 = icmp eq i32 %116, 0
  br i1 %142, label %321, label %112

143:                                              ; preds = %68, %54
  %144 = load i32, ptr %3, align 4
  %145 = load i32, ptr %14, align 4
  %146 = sub i32 32, %144
  %147 = load i32, ptr %5, align 4
  %148 = add i32 %147, 7
  %149 = lshr i32 %148, 3
  %150 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %321, label %153

153:                                              ; preds = %143
  %154 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 7
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq i32 %22, 0
  br label %157

157:                                              ; preds = %220, %153
  %158 = phi i32 [ %147, %153 ], [ %232, %220 ]
  %159 = phi i32 [ %151, %153 ], [ %164, %220 ]
  %160 = phi ptr [ %27, %153 ], [ %226, %220 ]
  %161 = phi ptr [ %155, %153 ], [ %231, %220 ]
  %162 = phi ptr [ %27, %153 ], [ %227, %220 ]
  %163 = phi i32 [ %20, %153 ], [ %230, %220 ]
  %164 = add i32 %159, -1
  %165 = icmp eq i32 %163, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %157
  %167 = shl nsw i32 -1, %163
  %168 = xor i32 %167, -1
  %169 = load i32, ptr %160, align 4
  %170 = and i32 %169, %168
  br label %171

171:                                              ; preds = %166, %157
  %172 = phi i32 [ %170, %166 ], [ 0, %157 ]
  %173 = icmp eq i32 %158, 0
  br i1 %173, label %208, label %174

174:                                              ; preds = %198, %171
  %175 = phi i32 [ %181, %198 ], [ %158, %171 ]
  %176 = phi i32 [ %206, %198 ], [ 8, %171 ]
  %177 = phi ptr [ %205, %198 ], [ %161, %171 ]
  %178 = phi i32 [ %200, %198 ], [ %172, %171 ]
  %179 = phi ptr [ %199, %198 ], [ %160, %171 ]
  %180 = phi i32 [ %202, %198 ], [ %163, %171 ]
  %181 = add i32 %175, -1
  %182 = add i32 %176, -1
  %183 = load i8, ptr %177, align 1
  %184 = zext i8 %183 to i32
  %185 = shl nuw i32 1, %182
  %186 = and i32 %185, %184
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, i32 %57, i32 %58
  %189 = shl i32 %188, %180
  %190 = or i32 %189, %178
  %191 = icmp ult i32 %180, %146
  br i1 %191, label %198, label %192

192:                                              ; preds = %174
  %193 = getelementptr i32, ptr %179, i32 1
  store i32 %190, ptr %179, align 4
  %194 = icmp eq i32 %180, %146
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = sub i32 32, %180
  %197 = lshr i32 %188, %196
  br label %198

198:                                              ; preds = %195, %192, %174
  %199 = phi ptr [ %179, %174 ], [ %193, %195 ], [ %193, %192 ]
  %200 = phi i32 [ %190, %174 ], [ %197, %195 ], [ 0, %192 ]
  %201 = add i32 %180, %144
  %202 = and i32 %201, 31
  %203 = icmp eq i32 %182, 0
  %204 = zext i1 %203 to i32
  %205 = getelementptr i8, ptr %177, i32 %204
  %206 = select i1 %203, i32 8, i32 %182
  %207 = icmp eq i32 %181, 0
  br i1 %207, label %208, label %174

208:                                              ; preds = %198, %171
  %209 = phi i32 [ %163, %171 ], [ %202, %198 ]
  %210 = phi ptr [ %160, %171 ], [ %199, %198 ]
  %211 = phi i32 [ %172, %171 ], [ %200, %198 ]
  %212 = icmp eq i32 %209, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %208
  %214 = shl nsw i32 -1, %209
  %215 = load i32, ptr %210, align 4
  %216 = and i32 %215, %214
  %217 = or i32 %216, %211
  store i32 %217, ptr %210, align 4
  br label %218

218:                                              ; preds = %213, %208
  %219 = icmp eq i32 %164, 0
  br i1 %219, label %321, label %220

220:                                              ; preds = %218
  %221 = getelementptr i8, ptr %160, i32 %145
  %222 = getelementptr i32, ptr %162, i32 %145
  %223 = ptrtoint ptr %222 to i32
  %224 = and i32 %223, -4
  %225 = inttoptr i32 %224 to ptr
  %226 = select i1 %156, ptr %221, ptr %225
  %227 = select i1 %156, ptr %162, ptr %222
  %228 = add i32 %163, %21
  %229 = and i32 %228, 31
  %230 = select i1 %156, i32 %163, i32 %229
  %231 = getelementptr i8, ptr %161, i32 %149
  %232 = load i32, ptr %5, align 4
  br label %157

233:                                              ; preds = %35
  %234 = load i32, ptr %3, align 4
  %235 = sub i32 32, %234
  %236 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 26
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 3
  %239 = load i32, ptr %238, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %321, label %241

241:                                              ; preds = %233
  %242 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 7
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  %245 = icmp eq i32 %22, 0
  br label %246

246:                                              ; preds = %308, %241
  %247 = phi i32 [ %239, %241 ], [ %252, %308 ]
  %248 = phi ptr [ %27, %241 ], [ %319, %308 ]
  %249 = phi i32 [ %20, %241 ], [ %318, %308 ]
  %250 = phi ptr [ %243, %241 ], [ %301, %308 ]
  %251 = phi ptr [ %27, %241 ], [ %317, %308 ]
  %252 = add i32 %247, -1
  %253 = load i32, ptr %5, align 4
  %254 = icmp eq i32 %249, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %246
  %256 = shl nsw i32 -1, %249
  %257 = xor i32 %256, -1
  %258 = load i32, ptr %248, align 4
  %259 = and i32 %258, %257
  br label %260

260:                                              ; preds = %255, %246
  %261 = phi i32 [ %259, %255 ], [ 0, %246 ]
  %262 = icmp eq i32 %253, 0
  br i1 %262, label %297, label %263

263:                                              ; preds = %290, %260
  %264 = phi i32 [ %269, %290 ], [ %253, %260 ]
  %265 = phi ptr [ %295, %290 ], [ %250, %260 ]
  %266 = phi i32 [ %294, %290 ], [ %249, %260 ]
  %267 = phi i32 [ %292, %290 ], [ %261, %260 ]
  %268 = phi ptr [ %291, %290 ], [ %248, %260 ]
  %269 = add i32 %264, -1
  %270 = load i32, ptr %244, align 4
  switch i32 %270, label %276 [
    i32 2, label %271
    i32 4, label %271
  ]

271:                                              ; preds = %263, %263
  %272 = load i8, ptr %265, align 1
  %273 = zext i8 %272 to i32
  %274 = getelementptr i32, ptr %237, i32 %273
  %275 = load i32, ptr %274, align 4
  br label %279

276:                                              ; preds = %263
  %277 = load i8, ptr %265, align 1
  %278 = zext i8 %277 to i32
  br label %279

279:                                              ; preds = %276, %271
  %280 = phi i32 [ %275, %271 ], [ %278, %276 ]
  %281 = shl i32 %280, %266
  %282 = or i32 %281, %267
  %283 = icmp ult i32 %266, %235
  br i1 %283, label %290, label %284

284:                                              ; preds = %279
  %285 = getelementptr i32, ptr %268, i32 1
  store i32 %282, ptr %268, align 4
  %286 = icmp eq i32 %266, %235
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = sub i32 32, %266
  %289 = lshr i32 %280, %288
  br label %290

290:                                              ; preds = %287, %284, %279
  %291 = phi ptr [ %268, %279 ], [ %285, %287 ], [ %285, %284 ]
  %292 = phi i32 [ %282, %279 ], [ %289, %287 ], [ 0, %284 ]
  %293 = add i32 %266, %234
  %294 = and i32 %293, 31
  %295 = getelementptr i8, ptr %265, i32 1
  %296 = icmp eq i32 %269, 0
  br i1 %296, label %297, label %263

297:                                              ; preds = %290, %260
  %298 = phi ptr [ %248, %260 ], [ %291, %290 ]
  %299 = phi i32 [ %261, %260 ], [ %292, %290 ]
  %300 = phi i32 [ %249, %260 ], [ %294, %290 ]
  %301 = phi ptr [ %250, %260 ], [ %295, %290 ]
  %302 = icmp eq i32 %300, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %297
  %304 = shl nsw i32 -1, %300
  %305 = load i32, ptr %298, align 4
  %306 = and i32 %305, %304
  %307 = or i32 %306, %299
  store i32 %307, ptr %298, align 4
  br label %308

308:                                              ; preds = %303, %297
  %309 = load i32, ptr %14, align 4
  %310 = getelementptr i8, ptr %248, i32 %309
  %311 = getelementptr i32, ptr %251, i32 %309
  %312 = ptrtoint ptr %311 to i32
  %313 = and i32 %312, -4
  %314 = inttoptr i32 %313 to ptr
  %315 = add i32 %249, %21
  %316 = and i32 %315, 31
  %317 = select i1 %245, ptr %251, ptr %311
  %318 = select i1 %245, i32 %249, i32 %316
  %319 = select i1 %245, ptr %310, ptr %314
  %320 = icmp eq i32 %252, 0
  br i1 %320, label %321, label %246

321:                                              ; preds = %308, %233, %218, %143, %138, %100, %2
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }

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
