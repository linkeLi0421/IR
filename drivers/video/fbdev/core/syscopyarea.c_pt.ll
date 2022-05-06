; ModuleID = '/llk/IR/drivers/video/fbdev/core/syscopyarea.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/syscopyarea.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sys_copyarea:\09\09\09\09\09"
module asm "\09.asciz \09\22sys_copyarea\22\09\09\09\09\09"
module asm "__kstrtabns_sys_copyarea:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
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
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_sys_copyarea = external dso_local constant [0 x i8], align 1
@__kstrtabns_sys_copyarea = external dso_local constant [0 x i8], align 1
@__ksymtab_sys_copyarea = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sys_copyarea to i32), ptr @__kstrtab_sys_copyarea, ptr @__kstrtabns_sys_copyarea }, section "___ksymtab+sys_copyarea", align 4
@__UNIQUE_ID_author259 = internal constant [53 x i8] c"syscopyarea.author=Antonino Daplas <adaplas@pol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [54 x i8] c"syscopyarea.description=Generic copyarea (sys-to-sys)\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [54 x i8] c"syscopyarea.file=drivers/video/fbdev/core/syscopyarea\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [24 x i8] c"syscopyarea.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__ksymtab_sys_copyarea], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sys_copyarea(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 3
  %10 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %553

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %1, align 4
  %21 = icmp eq i32 %19, %15
  %22 = icmp ugt i32 %20, %17
  %23 = select i1 %21, i1 %22, i1 false
  %24 = icmp ugt i32 %19, %15
  %25 = or i1 %24, %23
  %26 = select i1 %25, i32 %4, i32 0
  %27 = add i32 %26, %19
  %28 = add i32 %26, %15
  %29 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = and i32 %31, -4
  %33 = inttoptr i32 %32 to ptr
  %34 = shl i32 %31, 3
  %35 = and i32 %34, 24
  %36 = mul i32 %27, %9
  %37 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, %20
  %40 = add i32 %35, %39
  %41 = add i32 %40, %36
  %42 = mul i32 %28, %9
  %43 = mul i32 %38, %17
  %44 = add i32 %35, %43
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.fb_ops, ptr %47, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %13
  %52 = tail call i32 %49(ptr noundef %0) #1
  br label %53

53:                                               ; preds = %51, %13
  %54 = icmp eq i32 %4, 0
  br i1 %25, label %56, label %55

55:                                               ; preds = %53
  br i1 %54, label %553, label %310

56:                                               ; preds = %53
  br i1 %54, label %553, label %57

57:                                               ; preds = %308, %56
  %58 = phi i32 [ %63, %308 ], [ %45, %56 ]
  %59 = phi i32 [ %62, %308 ], [ %41, %56 ]
  %60 = phi i32 [ %61, %308 ], [ %4, %56 ]
  %61 = add i32 %60, -1
  %62 = sub i32 %59, %9
  %63 = sub i32 %58, %9
  %64 = lshr i32 %62, 5
  %65 = getelementptr i32, ptr %33, i32 %64
  %66 = and i32 %62, 31
  %67 = lshr i32 %63, 5
  %68 = getelementptr i32, ptr %33, i32 %67
  %69 = and i32 %63, 31
  %70 = load i32, ptr %37, align 4
  %71 = mul i32 %70, %6
  %72 = add i32 %71, %66
  %73 = add i32 %72, -1
  %74 = lshr i32 %73, 5
  %75 = getelementptr i32, ptr %65, i32 %74
  %76 = add nsw i32 %69, -1
  %77 = add i32 %76, %71
  %78 = lshr i32 %77, 5
  %79 = getelementptr i32, ptr %68, i32 %78
  %80 = and i32 %73, 31
  %81 = and i32 %77, 31
  %82 = sub nsw i32 %80, %81
  %83 = and i32 %72, 31
  %84 = shl nsw i32 -1, %83
  %85 = xor i32 %84, -1
  %86 = shl nsw i32 -1, %66
  %87 = icmp eq i32 %80, %81
  br i1 %87, label %88, label %170

88:                                               ; preds = %57
  %89 = add nuw nsw i32 %80, 1
  %90 = icmp ugt i32 %71, %89
  %91 = icmp eq i32 %83, 0
  br i1 %90, label %100, label %92

92:                                               ; preds = %88
  %93 = select i1 %91, i32 -1, i32 %85
  %94 = and i32 %93, %86
  %95 = load i32, ptr %79, align 4
  %96 = load i32, ptr %75, align 4
  %97 = xor i32 %96, %95
  %98 = and i32 %94, %97
  %99 = xor i32 %98, %96
  store i32 %99, ptr %75, align 4
  br label %308

100:                                              ; preds = %88
  br i1 %91, label %110, label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %79, align 4
  %103 = load i32, ptr %75, align 4
  %104 = xor i32 %103, %102
  %105 = and i32 %104, %84
  %106 = xor i32 %105, %102
  store i32 %106, ptr %75, align 4
  %107 = getelementptr i32, ptr %75, i32 -1
  %108 = getelementptr i32, ptr %79, i32 -1
  %109 = sub i32 %71, %89
  br label %110

110:                                              ; preds = %101, %100
  %111 = phi ptr [ %108, %101 ], [ %79, %100 ]
  %112 = phi ptr [ %107, %101 ], [ %75, %100 ]
  %113 = phi i32 [ %109, %101 ], [ %71, %100 ]
  %114 = lshr i32 %113, 5
  %115 = icmp ugt i32 %113, 255
  br i1 %115, label %121, label %116

116:                                              ; preds = %121, %110
  %117 = phi ptr [ %111, %110 ], [ %146, %121 ]
  %118 = phi ptr [ %112, %110 ], [ %148, %121 ]
  %119 = phi i32 [ %114, %110 ], [ %149, %121 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %160, label %151

121:                                              ; preds = %121, %110
  %122 = phi i32 [ %149, %121 ], [ %114, %110 ]
  %123 = phi ptr [ %148, %121 ], [ %112, %110 ]
  %124 = phi ptr [ %146, %121 ], [ %111, %110 ]
  %125 = getelementptr i32, ptr %124, i32 -1
  %126 = load i32, ptr %124, align 4
  %127 = getelementptr i32, ptr %123, i32 -1
  store i32 %126, ptr %123, align 4
  %128 = getelementptr i32, ptr %124, i32 -2
  %129 = load i32, ptr %125, align 4
  %130 = getelementptr i32, ptr %123, i32 -2
  store i32 %129, ptr %127, align 4
  %131 = getelementptr i32, ptr %124, i32 -3
  %132 = load i32, ptr %128, align 4
  %133 = getelementptr i32, ptr %123, i32 -3
  store i32 %132, ptr %130, align 4
  %134 = getelementptr i32, ptr %124, i32 -4
  %135 = load i32, ptr %131, align 4
  %136 = getelementptr i32, ptr %123, i32 -4
  store i32 %135, ptr %133, align 4
  %137 = getelementptr i32, ptr %124, i32 -5
  %138 = load i32, ptr %134, align 4
  %139 = getelementptr i32, ptr %123, i32 -5
  store i32 %138, ptr %136, align 4
  %140 = getelementptr i32, ptr %124, i32 -6
  %141 = load i32, ptr %137, align 4
  %142 = getelementptr i32, ptr %123, i32 -6
  store i32 %141, ptr %139, align 4
  %143 = getelementptr i32, ptr %124, i32 -7
  %144 = load i32, ptr %140, align 4
  %145 = getelementptr i32, ptr %123, i32 -7
  store i32 %144, ptr %142, align 4
  %146 = getelementptr i32, ptr %124, i32 -8
  %147 = load i32, ptr %143, align 4
  %148 = getelementptr i32, ptr %123, i32 -8
  store i32 %147, ptr %145, align 4
  %149 = add i32 %122, -8
  %150 = icmp ugt i32 %149, 7
  br i1 %150, label %121, label %116

151:                                              ; preds = %151, %116
  %152 = phi i32 [ %155, %151 ], [ %119, %116 ]
  %153 = phi ptr [ %158, %151 ], [ %118, %116 ]
  %154 = phi ptr [ %156, %151 ], [ %117, %116 ]
  %155 = add i32 %152, -1
  %156 = getelementptr i32, ptr %154, i32 -1
  %157 = load i32, ptr %154, align 4
  %158 = getelementptr i32, ptr %153, i32 -1
  store i32 %157, ptr %153, align 4
  %159 = icmp eq i32 %155, 0
  br i1 %159, label %160, label %151

160:                                              ; preds = %151, %116
  %161 = phi ptr [ %117, %116 ], [ %156, %151 ]
  %162 = phi ptr [ %118, %116 ], [ %158, %151 ]
  %163 = icmp eq i32 %66, 0
  br i1 %163, label %308, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr %161, align 4
  %166 = load i32, ptr %162, align 4
  %167 = xor i32 %166, %165
  %168 = and i32 %167, %86
  %169 = xor i32 %168, %166
  store i32 %169, ptr %162, align 4
  br label %308

170:                                              ; preds = %57
  %171 = and i32 %82, 31
  %172 = sub nsw i32 0, %82
  %173 = and i32 %172, 31
  %174 = add nuw nsw i32 %80, 1
  %175 = icmp ugt i32 %71, %174
  br i1 %175, label %207, label %176

176:                                              ; preds = %170
  %177 = icmp eq i32 %83, 0
  %178 = select i1 %177, i32 -1, i32 %85
  %179 = and i32 %178, %86
  %180 = icmp slt i32 %82, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load i32, ptr %79, align 4
  %183 = lshr i32 %182, %173
  %184 = load i32, ptr %75, align 4
  %185 = xor i32 %184, %183
  %186 = and i32 %185, %179
  %187 = xor i32 %186, %184
  store i32 %187, ptr %75, align 4
  br label %308

188:                                              ; preds = %176
  %189 = add nuw nsw i32 %81, 1
  %190 = icmp ult i32 %189, %71
  %191 = load i32, ptr %79, align 4
  %192 = shl i32 %191, %171
  br i1 %190, label %198, label %193

193:                                              ; preds = %188
  %194 = load i32, ptr %75, align 4
  %195 = xor i32 %194, %192
  %196 = and i32 %195, %179
  %197 = xor i32 %196, %194
  store i32 %197, ptr %75, align 4
  br label %308

198:                                              ; preds = %188
  %199 = getelementptr i32, ptr %79, i32 -1
  %200 = load i32, ptr %199, align 4
  %201 = lshr i32 %200, %173
  %202 = or i32 %201, %192
  %203 = load i32, ptr %75, align 4
  %204 = xor i32 %202, %203
  %205 = and i32 %204, %179
  %206 = xor i32 %205, %203
  store i32 %206, ptr %75, align 4
  br label %308

207:                                              ; preds = %170
  %208 = getelementptr i32, ptr %79, i32 -1
  %209 = load i32, ptr %79, align 4
  %210 = icmp slt i32 %82, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = lshr i32 %209, %173
  br label %219

213:                                              ; preds = %207
  %214 = getelementptr i32, ptr %208, i32 -1
  %215 = load i32, ptr %208, align 4
  %216 = shl i32 %209, %171
  %217 = lshr i32 %215, %173
  %218 = or i32 %217, %216
  br label %219

219:                                              ; preds = %213, %211
  %220 = phi ptr [ %208, %211 ], [ %214, %213 ]
  %221 = phi i32 [ %212, %211 ], [ %218, %213 ]
  %222 = phi i32 [ %209, %211 ], [ %215, %213 ]
  %223 = icmp eq i32 %83, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %219
  %225 = load i32, ptr %75, align 4
  %226 = xor i32 %225, %221
  %227 = and i32 %226, %84
  %228 = xor i32 %227, %221
  br label %229

229:                                              ; preds = %224, %219
  %230 = phi i32 [ %228, %224 ], [ %221, %219 ]
  store i32 %230, ptr %75, align 4
  %231 = sub i32 %71, %174
  %232 = and i32 %231, 31
  %233 = lshr i32 %231, 5
  %234 = getelementptr i32, ptr %75, i32 -1
  %235 = icmp ugt i32 %231, 127
  br i1 %235, label %242, label %236

236:                                              ; preds = %242, %229
  %237 = phi ptr [ %220, %229 ], [ %266, %242 ]
  %238 = phi i32 [ %233, %229 ], [ %271, %242 ]
  %239 = phi i32 [ %222, %229 ], [ %267, %242 ]
  %240 = phi ptr [ %234, %229 ], [ %272, %242 ]
  %241 = icmp eq i32 %238, 0
  br i1 %241, label %287, label %274

242:                                              ; preds = %242, %229
  %243 = phi ptr [ %272, %242 ], [ %234, %229 ]
  %244 = phi i32 [ %267, %242 ], [ %222, %229 ]
  %245 = phi i32 [ %271, %242 ], [ %233, %229 ]
  %246 = phi ptr [ %265, %242 ], [ %75, %229 ]
  %247 = phi ptr [ %266, %242 ], [ %220, %229 ]
  %248 = getelementptr i32, ptr %247, i32 -1
  %249 = load i32, ptr %247, align 4
  %250 = shl i32 %244, %171
  %251 = lshr i32 %249, %173
  %252 = or i32 %251, %250
  %253 = getelementptr i32, ptr %246, i32 -2
  store i32 %252, ptr %243, align 4
  %254 = getelementptr i32, ptr %247, i32 -2
  %255 = load i32, ptr %248, align 4
  %256 = shl i32 %249, %171
  %257 = lshr i32 %255, %173
  %258 = or i32 %257, %256
  %259 = getelementptr i32, ptr %246, i32 -3
  store i32 %258, ptr %253, align 4
  %260 = getelementptr i32, ptr %247, i32 -3
  %261 = load i32, ptr %254, align 4
  %262 = shl i32 %255, %171
  %263 = lshr i32 %261, %173
  %264 = or i32 %263, %262
  %265 = getelementptr i32, ptr %246, i32 -4
  store i32 %264, ptr %259, align 4
  %266 = getelementptr i32, ptr %247, i32 -4
  %267 = load i32, ptr %260, align 4
  %268 = shl i32 %261, %171
  %269 = lshr i32 %267, %173
  %270 = or i32 %269, %268
  store i32 %270, ptr %265, align 4
  %271 = add i32 %245, -4
  %272 = getelementptr i32, ptr %246, i32 -5
  %273 = icmp ugt i32 %271, 3
  br i1 %273, label %242, label %236

274:                                              ; preds = %274, %236
  %275 = phi i32 [ %281, %274 ], [ %239, %236 ]
  %276 = phi i32 [ %279, %274 ], [ %238, %236 ]
  %277 = phi ptr [ %285, %274 ], [ %240, %236 ]
  %278 = phi ptr [ %280, %274 ], [ %237, %236 ]
  %279 = add i32 %276, -1
  %280 = getelementptr i32, ptr %278, i32 -1
  %281 = load i32, ptr %278, align 4
  %282 = shl i32 %275, %171
  %283 = lshr i32 %281, %173
  %284 = or i32 %283, %282
  %285 = getelementptr i32, ptr %277, i32 -1
  store i32 %284, ptr %277, align 4
  %286 = icmp eq i32 %279, 0
  br i1 %286, label %287, label %274

287:                                              ; preds = %274, %236
  %288 = phi ptr [ %237, %236 ], [ %280, %274 ]
  %289 = phi ptr [ %240, %236 ], [ %285, %274 ]
  %290 = phi i32 [ %239, %236 ], [ %281, %274 ]
  %291 = icmp eq i32 %232, 0
  br i1 %291, label %308, label %292

292:                                              ; preds = %287
  %293 = sub nuw nsw i32 32, %171
  %294 = icmp ugt i32 %232, %293
  br i1 %294, label %297, label %295

295:                                              ; preds = %292
  %296 = shl i32 %290, %171
  br label %302

297:                                              ; preds = %292
  %298 = load i32, ptr %288, align 4
  %299 = shl i32 %290, %171
  %300 = lshr i32 %298, %173
  %301 = or i32 %300, %299
  br label %302

302:                                              ; preds = %297, %295
  %303 = phi i32 [ %296, %295 ], [ %301, %297 ]
  %304 = load i32, ptr %289, align 4
  %305 = xor i32 %304, %303
  %306 = and i32 %305, %86
  %307 = xor i32 %306, %304
  store i32 %307, ptr %289, align 4
  br label %308

308:                                              ; preds = %302, %287, %198, %193, %181, %164, %160, %92
  %309 = icmp eq i32 %61, 0
  br i1 %309, label %553, label %57

310:                                              ; preds = %549, %55
  %311 = phi i32 [ %551, %549 ], [ %45, %55 ]
  %312 = phi i32 [ %550, %549 ], [ %41, %55 ]
  %313 = phi i32 [ %314, %549 ], [ %4, %55 ]
  %314 = add i32 %313, -1
  %315 = lshr i32 %312, 5
  %316 = getelementptr i32, ptr %33, i32 %315
  %317 = and i32 %312, 31
  %318 = lshr i32 %311, 5
  %319 = getelementptr i32, ptr %33, i32 %318
  %320 = and i32 %311, 31
  %321 = load i32, ptr %37, align 4
  %322 = mul i32 %321, %6
  %323 = sub nsw i32 %317, %320
  %324 = shl nsw i32 -1, %317
  %325 = add i32 %322, %317
  %326 = and i32 %325, 31
  %327 = shl nsw i32 -1, %326
  %328 = xor i32 %327, -1
  %329 = icmp eq i32 %317, %320
  br i1 %329, label %330, label %412

330:                                              ; preds = %310
  %331 = icmp ult i32 %325, 33
  br i1 %331, label %332, label %341

332:                                              ; preds = %330
  %333 = icmp eq i32 %326, 0
  %334 = select i1 %333, i32 -1, i32 %328
  %335 = and i32 %334, %324
  %336 = load i32, ptr %319, align 4
  %337 = load i32, ptr %316, align 4
  %338 = xor i32 %337, %336
  %339 = and i32 %335, %338
  %340 = xor i32 %339, %337
  store i32 %340, ptr %316, align 4
  br label %549

341:                                              ; preds = %330
  %342 = icmp eq i32 %317, 0
  br i1 %342, label %352, label %343

343:                                              ; preds = %341
  %344 = load i32, ptr %319, align 4
  %345 = load i32, ptr %316, align 4
  %346 = xor i32 %345, %344
  %347 = and i32 %346, %324
  %348 = xor i32 %347, %345
  store i32 %348, ptr %316, align 4
  %349 = getelementptr i32, ptr %316, i32 1
  %350 = getelementptr i32, ptr %319, i32 1
  %351 = add i32 %325, -32
  br label %352

352:                                              ; preds = %343, %341
  %353 = phi ptr [ %350, %343 ], [ %319, %341 ]
  %354 = phi ptr [ %349, %343 ], [ %316, %341 ]
  %355 = phi i32 [ %351, %343 ], [ %322, %341 ]
  %356 = lshr i32 %355, 5
  %357 = icmp ugt i32 %355, 255
  br i1 %357, label %363, label %358

358:                                              ; preds = %363, %352
  %359 = phi ptr [ %353, %352 ], [ %388, %363 ]
  %360 = phi ptr [ %354, %352 ], [ %390, %363 ]
  %361 = phi i32 [ %356, %352 ], [ %391, %363 ]
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %402, label %393

363:                                              ; preds = %363, %352
  %364 = phi i32 [ %391, %363 ], [ %356, %352 ]
  %365 = phi ptr [ %390, %363 ], [ %354, %352 ]
  %366 = phi ptr [ %388, %363 ], [ %353, %352 ]
  %367 = getelementptr i32, ptr %366, i32 1
  %368 = load i32, ptr %366, align 4
  %369 = getelementptr i32, ptr %365, i32 1
  store i32 %368, ptr %365, align 4
  %370 = getelementptr i32, ptr %366, i32 2
  %371 = load i32, ptr %367, align 4
  %372 = getelementptr i32, ptr %365, i32 2
  store i32 %371, ptr %369, align 4
  %373 = getelementptr i32, ptr %366, i32 3
  %374 = load i32, ptr %370, align 4
  %375 = getelementptr i32, ptr %365, i32 3
  store i32 %374, ptr %372, align 4
  %376 = getelementptr i32, ptr %366, i32 4
  %377 = load i32, ptr %373, align 4
  %378 = getelementptr i32, ptr %365, i32 4
  store i32 %377, ptr %375, align 4
  %379 = getelementptr i32, ptr %366, i32 5
  %380 = load i32, ptr %376, align 4
  %381 = getelementptr i32, ptr %365, i32 5
  store i32 %380, ptr %378, align 4
  %382 = getelementptr i32, ptr %366, i32 6
  %383 = load i32, ptr %379, align 4
  %384 = getelementptr i32, ptr %365, i32 6
  store i32 %383, ptr %381, align 4
  %385 = getelementptr i32, ptr %366, i32 7
  %386 = load i32, ptr %382, align 4
  %387 = getelementptr i32, ptr %365, i32 7
  store i32 %386, ptr %384, align 4
  %388 = getelementptr i32, ptr %366, i32 8
  %389 = load i32, ptr %385, align 4
  %390 = getelementptr i32, ptr %365, i32 8
  store i32 %389, ptr %387, align 4
  %391 = add i32 %364, -8
  %392 = icmp ugt i32 %391, 7
  br i1 %392, label %363, label %358

393:                                              ; preds = %393, %358
  %394 = phi i32 [ %397, %393 ], [ %361, %358 ]
  %395 = phi ptr [ %400, %393 ], [ %360, %358 ]
  %396 = phi ptr [ %398, %393 ], [ %359, %358 ]
  %397 = add i32 %394, -1
  %398 = getelementptr i32, ptr %396, i32 1
  %399 = load i32, ptr %396, align 4
  %400 = getelementptr i32, ptr %395, i32 1
  store i32 %399, ptr %395, align 4
  %401 = icmp eq i32 %397, 0
  br i1 %401, label %402, label %393

402:                                              ; preds = %393, %358
  %403 = phi ptr [ %359, %358 ], [ %398, %393 ]
  %404 = phi ptr [ %360, %358 ], [ %400, %393 ]
  %405 = icmp eq i32 %326, 0
  br i1 %405, label %549, label %406

406:                                              ; preds = %402
  %407 = load i32, ptr %403, align 4
  %408 = load i32, ptr %404, align 4
  %409 = xor i32 %408, %407
  %410 = and i32 %409, %327
  %411 = xor i32 %410, %407
  store i32 %411, ptr %404, align 4
  br label %549

412:                                              ; preds = %310
  %413 = and i32 %323, 31
  %414 = sub nsw i32 0, %323
  %415 = and i32 %414, 31
  %416 = icmp ult i32 %325, 33
  br i1 %416, label %417, label %450

417:                                              ; preds = %412
  %418 = icmp eq i32 %326, 0
  %419 = select i1 %418, i32 -1, i32 %328
  %420 = and i32 %419, %324
  %421 = icmp sgt i32 %323, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %417
  %423 = load i32, ptr %319, align 4
  %424 = shl i32 %423, %415
  %425 = load i32, ptr %316, align 4
  %426 = xor i32 %425, %424
  %427 = and i32 %426, %420
  %428 = xor i32 %427, %425
  store i32 %428, ptr %316, align 4
  br label %549

429:                                              ; preds = %417
  %430 = add i32 %322, %320
  %431 = icmp ult i32 %430, 33
  br i1 %431, label %432, label %439

432:                                              ; preds = %429
  %433 = load i32, ptr %319, align 4
  %434 = lshr i32 %433, %413
  %435 = load i32, ptr %316, align 4
  %436 = xor i32 %435, %434
  %437 = and i32 %436, %420
  %438 = xor i32 %437, %435
  store i32 %438, ptr %316, align 4
  br label %549

439:                                              ; preds = %429
  %440 = getelementptr i32, ptr %319, i32 1
  %441 = load i32, ptr %319, align 4
  %442 = load i32, ptr %440, align 4
  %443 = lshr i32 %441, %413
  %444 = shl i32 %442, %415
  %445 = or i32 %444, %443
  %446 = load i32, ptr %316, align 4
  %447 = xor i32 %445, %446
  %448 = and i32 %447, %420
  %449 = xor i32 %448, %446
  store i32 %449, ptr %316, align 4
  br label %549

450:                                              ; preds = %412
  %451 = getelementptr i32, ptr %319, i32 1
  %452 = load i32, ptr %319, align 4
  %453 = icmp sgt i32 %323, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %450
  %455 = shl i32 %452, %415
  %456 = load i32, ptr %316, align 4
  %457 = xor i32 %456, %455
  br label %466

458:                                              ; preds = %450
  %459 = getelementptr i32, ptr %319, i32 2
  %460 = load i32, ptr %451, align 4
  %461 = lshr i32 %452, %413
  %462 = shl i32 %460, %415
  %463 = or i32 %462, %461
  %464 = load i32, ptr %316, align 4
  %465 = xor i32 %463, %464
  br label %466

466:                                              ; preds = %458, %454
  %467 = phi i32 [ %465, %458 ], [ %457, %454 ]
  %468 = phi i32 [ %464, %458 ], [ %456, %454 ]
  %469 = phi ptr [ %459, %458 ], [ %451, %454 ]
  %470 = phi i32 [ %460, %458 ], [ %452, %454 ]
  %471 = and i32 %467, %324
  %472 = xor i32 %471, %468
  store i32 %472, ptr %316, align 4
  %473 = add i32 %325, -32
  %474 = lshr i32 %473, 5
  %475 = getelementptr i32, ptr %316, i32 1
  %476 = icmp ugt i32 %473, 127
  br i1 %476, label %483, label %477

477:                                              ; preds = %483, %466
  %478 = phi ptr [ %469, %466 ], [ %507, %483 ]
  %479 = phi i32 [ %474, %466 ], [ %512, %483 ]
  %480 = phi i32 [ %470, %466 ], [ %508, %483 ]
  %481 = phi ptr [ %475, %466 ], [ %513, %483 ]
  %482 = icmp eq i32 %479, 0
  br i1 %482, label %528, label %515

483:                                              ; preds = %483, %466
  %484 = phi ptr [ %513, %483 ], [ %475, %466 ]
  %485 = phi i32 [ %508, %483 ], [ %470, %466 ]
  %486 = phi i32 [ %512, %483 ], [ %474, %466 ]
  %487 = phi ptr [ %506, %483 ], [ %316, %466 ]
  %488 = phi ptr [ %507, %483 ], [ %469, %466 ]
  %489 = getelementptr i32, ptr %488, i32 1
  %490 = load i32, ptr %488, align 4
  %491 = lshr i32 %485, %413
  %492 = shl i32 %490, %415
  %493 = or i32 %492, %491
  %494 = getelementptr i32, ptr %487, i32 2
  store i32 %493, ptr %484, align 4
  %495 = getelementptr i32, ptr %488, i32 2
  %496 = load i32, ptr %489, align 4
  %497 = lshr i32 %490, %413
  %498 = shl i32 %496, %415
  %499 = or i32 %498, %497
  %500 = getelementptr i32, ptr %487, i32 3
  store i32 %499, ptr %494, align 4
  %501 = getelementptr i32, ptr %488, i32 3
  %502 = load i32, ptr %495, align 4
  %503 = lshr i32 %496, %413
  %504 = shl i32 %502, %415
  %505 = or i32 %504, %503
  %506 = getelementptr i32, ptr %487, i32 4
  store i32 %505, ptr %500, align 4
  %507 = getelementptr i32, ptr %488, i32 4
  %508 = load i32, ptr %501, align 4
  %509 = lshr i32 %502, %413
  %510 = shl i32 %508, %415
  %511 = or i32 %510, %509
  store i32 %511, ptr %506, align 4
  %512 = add i32 %486, -4
  %513 = getelementptr i32, ptr %487, i32 5
  %514 = icmp ugt i32 %512, 3
  br i1 %514, label %483, label %477

515:                                              ; preds = %515, %477
  %516 = phi i32 [ %522, %515 ], [ %480, %477 ]
  %517 = phi i32 [ %520, %515 ], [ %479, %477 ]
  %518 = phi ptr [ %526, %515 ], [ %481, %477 ]
  %519 = phi ptr [ %521, %515 ], [ %478, %477 ]
  %520 = add i32 %517, -1
  %521 = getelementptr i32, ptr %519, i32 1
  %522 = load i32, ptr %519, align 4
  %523 = lshr i32 %516, %413
  %524 = shl i32 %522, %415
  %525 = or i32 %524, %523
  %526 = getelementptr i32, ptr %518, i32 1
  store i32 %525, ptr %518, align 4
  %527 = icmp eq i32 %520, 0
  br i1 %527, label %528, label %515

528:                                              ; preds = %515, %477
  %529 = phi ptr [ %478, %477 ], [ %521, %515 ]
  %530 = phi ptr [ %481, %477 ], [ %526, %515 ]
  %531 = phi i32 [ %480, %477 ], [ %522, %515 ]
  %532 = icmp eq i32 %326, 0
  br i1 %532, label %549, label %533

533:                                              ; preds = %528
  %534 = sub nuw nsw i32 32, %413
  %535 = icmp ugt i32 %326, %534
  br i1 %535, label %538, label %536

536:                                              ; preds = %533
  %537 = lshr i32 %531, %413
  br label %543

538:                                              ; preds = %533
  %539 = load i32, ptr %529, align 4
  %540 = lshr i32 %531, %413
  %541 = shl i32 %539, %415
  %542 = or i32 %541, %540
  br label %543

543:                                              ; preds = %538, %536
  %544 = phi i32 [ %537, %536 ], [ %542, %538 ]
  %545 = load i32, ptr %530, align 4
  %546 = xor i32 %545, %544
  %547 = and i32 %546, %327
  %548 = xor i32 %547, %544
  store i32 %548, ptr %530, align 4
  br label %549

549:                                              ; preds = %543, %528, %439, %432, %422, %406, %402, %332
  %550 = add i32 %312, %9
  %551 = add i32 %311, %9
  %552 = icmp eq i32 %314, 0
  br i1 %552, label %553, label %310

553:                                              ; preds = %549, %308, %56, %55, %2
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
