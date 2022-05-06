; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_grctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [32 x i32], i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.124 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.nv40_grctx_generate.1 = private unnamed_addr constant [12 x i32] [i32 6, i32 5, i32 5, i32 3, i32 3, i32 1, i32 3, i32 8, i32 1, i32 8, i32 3, i32 8], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv40_grctx_fill(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvkm_grctx, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %4, i8 0, i64 156, i1 false)
  store ptr %0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 1
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 3
  store ptr %1, ptr %6, align 4
  call fastcc void @nv40_grctx_generate(ptr noundef nonnull %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv40_grctx_generate(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 8
  %5 = icmp eq i32 %4, 0
  %6 = or i32 %4, 4194404
  %7 = select i1 %5, i32 -12581788, i32 %6
  %8 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %110

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

20:                                               ; preds = %13
  %21 = add i32 %15, 1
  store i32 %21, ptr %14, align 4
  %22 = getelementptr i32, ptr %9, i32 %15
  store i32 %7, ptr %22, align 4
  %23 = load i32, ptr %2, align 4
  %24 = load ptr, ptr %8, align 4
  %25 = load i32, ptr %10, align 4
  %26 = shl i32 %23, 8
  %27 = icmp eq i32 %26, 0
  %28 = or i32 %26, 4194309
  %29 = select i1 %27, i32 -12581883, i32 %28
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

38:                                               ; preds = %31
  %39 = add i32 %33, 1
  store i32 %39, ptr %32, align 4
  %40 = getelementptr i32, ptr %24, i32 %33
  store i32 %29, ptr %40, align 4
  %41 = load i32, ptr %10, align 4
  %42 = load ptr, ptr %8, align 4
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %110

44:                                               ; preds = %38
  %45 = load i32, ptr %32, align 4
  %46 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 1
  store i32 %45, ptr %46, align 4
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = shl i32 %50, 8
  %52 = icmp eq i32 %51, 0
  %53 = or i32 %51, 4194405
  %54 = select i1 %52, i32 -12582299, i32 %53
  br label %81

55:                                               ; preds = %67, %44
  %56 = phi i32 [ %68, %67 ], [ %45, %44 ]
  %57 = phi i32 [ %69, %67 ], [ 0, %44 ]
  %58 = getelementptr i32, ptr %42, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -983296
  %61 = icmp eq i32 %60, -12582656
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = and i32 %59, 16711935
  %64 = shl i32 %56, 8
  %65 = or i32 %63, %64
  store i32 %65, ptr %58, align 4
  %66 = load i32, ptr %32, align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = phi i32 [ %56, %55 ], [ %66, %62 ]
  %69 = add nuw i32 %57, 1
  %70 = icmp ult i32 %69, %68
  br i1 %70, label %55, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %8, align 4
  %73 = load i32, ptr %10, align 4
  %74 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = shl i32 %75, 8
  %77 = icmp eq i32 %76, 0
  %78 = or i32 %76, 4194405
  %79 = select i1 %77, i32 -12582299, i32 %78
  %80 = icmp eq i32 %73, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %71, %48
  %82 = phi i32 [ %54, %48 ], [ %79, %71 ]
  %83 = phi ptr [ %49, %48 ], [ %74, %71 ]
  %84 = phi ptr [ %42, %48 ], [ %72, %71 ]
  %85 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %91, !prof !8

90:                                               ; preds = %81
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

91:                                               ; preds = %81
  %92 = add i32 %86, 1
  store i32 %92, ptr %85, align 4
  %93 = getelementptr i32, ptr %84, i32 %86
  store i32 %82, ptr %93, align 4
  %94 = load ptr, ptr %8, align 4
  %95 = load i32, ptr %10, align 4
  %96 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = shl i32 %97, 8
  %99 = icmp eq i32 %98, 0
  %100 = or i32 %98, 4194310
  %101 = select i1 %99, i32 -12582138, i32 %100
  %102 = icmp eq i32 %95, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %114, !prof !8

109:                                              ; preds = %103
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

110:                                              ; preds = %91, %71, %38, %20, %1
  %111 = phi i32 [ %95, %91 ], [ %73, %71 ], [ %41, %38 ], [ %25, %20 ], [ %11, %1 ]
  %112 = phi ptr [ %94, %91 ], [ %72, %71 ], [ %42, %38 ], [ %24, %20 ], [ %9, %1 ]
  %113 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 8
  br label %384

114:                                              ; preds = %103
  %115 = add i32 %105, 1
  store i32 %115, ptr %104, align 4
  %116 = getelementptr i32, ptr %94, i32 %105
  store i32 %101, ptr %116, align 4
  %117 = load ptr, ptr %8, align 4
  %118 = load i32, ptr %10, align 4
  %119 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 8
  %120 = load i32, ptr %119, align 4
  %121 = shl i32 %120, 8
  %122 = icmp eq i32 %121, 0
  %123 = or i32 %121, 4194408
  %124 = select i1 %122, i32 -12580760, i32 %123
  %125 = icmp eq i32 %118, 0
  br i1 %125, label %126, label %384

126:                                              ; preds = %114
  %127 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %133, !prof !8

132:                                              ; preds = %126
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

133:                                              ; preds = %126
  %134 = add i32 %128, 1
  store i32 %134, ptr %127, align 4
  %135 = getelementptr i32, ptr %117, i32 %128
  store i32 %124, ptr %135, align 4
  %136 = load i32, ptr %10, align 4
  %137 = load ptr, ptr %8, align 4
  %138 = icmp eq i32 %136, 0
  br i1 %138, label %139, label %384

139:                                              ; preds = %133
  %140 = load i32, ptr %127, align 4
  store i32 %140, ptr %83, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %154, %139
  %143 = phi i32 [ %155, %154 ], [ %140, %139 ]
  %144 = phi i32 [ %156, %154 ], [ 0, %139 ]
  %145 = getelementptr i32, ptr %137, i32 %144
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, -983296
  %148 = icmp eq i32 %147, -12582400
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = and i32 %146, 16711935
  %151 = shl i32 %143, 8
  %152 = or i32 %150, %151
  store i32 %152, ptr %145, align 4
  %153 = load i32, ptr %127, align 4
  br label %154

154:                                              ; preds = %149, %142
  %155 = phi i32 [ %143, %142 ], [ %153, %149 ]
  %156 = add nuw i32 %144, 1
  %157 = icmp ult i32 %156, %155
  br i1 %157, label %142, label %158

158:                                              ; preds = %154
  %159 = load i32, ptr %10, align 4
  %160 = load ptr, ptr %8, align 4
  %161 = icmp eq i32 %159, 0
  br i1 %161, label %162, label %384

162:                                              ; preds = %158, %139
  %163 = phi ptr [ %160, %158 ], [ %137, %139 ]
  %164 = phi i32 [ %155, %158 ], [ 0, %139 ]
  %165 = load i32, ptr %129, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %168, !prof !8

167:                                              ; preds = %162
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

168:                                              ; preds = %162
  %169 = add i32 %164, 1
  store i32 %169, ptr %127, align 4
  %170 = getelementptr i32, ptr %163, i32 %164
  store i32 5242976, ptr %170, align 4
  %171 = load i32, ptr %10, align 4
  %172 = load ptr, ptr %8, align 4
  %173 = icmp eq i32 %171, 0
  br i1 %173, label %174, label %384

174:                                              ; preds = %168
  %175 = load i32, ptr %127, align 4
  %176 = load i32, ptr %129, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %179, !prof !8

178:                                              ; preds = %174
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

179:                                              ; preds = %174
  %180 = add i32 %175, 1
  store i32 %180, ptr %127, align 4
  %181 = getelementptr i32, ptr %172, i32 %175
  store i32 6291463, ptr %181, align 4
  %182 = load i32, ptr %10, align 4
  %183 = load ptr, ptr %8, align 4
  %184 = icmp eq i32 %182, 0
  br i1 %184, label %185, label %384

185:                                              ; preds = %179
  %186 = load i32, ptr %127, align 4
  store i32 %186, ptr %96, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %208, label %188

188:                                              ; preds = %200, %185
  %189 = phi i32 [ %201, %200 ], [ %186, %185 ]
  %190 = phi i32 [ %202, %200 ], [ 0, %185 ]
  %191 = getelementptr i32, ptr %183, i32 %190
  %192 = load i32, ptr %191, align 4
  %193 = and i32 %192, -983296
  %194 = icmp eq i32 %193, -12582144
  br i1 %194, label %195, label %200

195:                                              ; preds = %188
  %196 = and i32 %192, 16711935
  %197 = shl i32 %189, 8
  %198 = or i32 %196, %197
  store i32 %198, ptr %191, align 4
  %199 = load i32, ptr %127, align 4
  br label %200

200:                                              ; preds = %195, %188
  %201 = phi i32 [ %189, %188 ], [ %199, %195 ]
  %202 = add nuw i32 %190, 1
  %203 = icmp ult i32 %202, %201
  br i1 %203, label %188, label %204

204:                                              ; preds = %200
  %205 = load i32, ptr %10, align 4
  %206 = load ptr, ptr %8, align 4
  %207 = icmp eq i32 %205, 0
  br i1 %207, label %208, label %384

208:                                              ; preds = %204, %185
  %209 = phi ptr [ %206, %204 ], [ %183, %185 ]
  %210 = phi i32 [ %201, %204 ], [ 0, %185 ]
  %211 = load i32, ptr %129, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %214, !prof !8

213:                                              ; preds = %208
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

214:                                              ; preds = %208
  %215 = add i32 %210, 1
  store i32 %215, ptr %127, align 4
  %216 = getelementptr i32, ptr %209, i32 %210
  store i32 5242976, ptr %216, align 4
  %217 = load i32, ptr %10, align 4
  %218 = load ptr, ptr %8, align 4
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %220, label %384

220:                                              ; preds = %214
  %221 = load i32, ptr %127, align 4
  %222 = load i32, ptr %129, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %225, !prof !8

224:                                              ; preds = %220
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

225:                                              ; preds = %220
  %226 = add i32 %221, 1
  store i32 %226, ptr %127, align 4
  %227 = getelementptr i32, ptr %218, i32 %221
  store i32 7340032, ptr %227, align 4
  %228 = load i32, ptr %10, align 4
  %229 = load ptr, ptr %8, align 4
  %230 = icmp eq i32 %228, 0
  br i1 %230, label %231, label %384

231:                                              ; preds = %225
  %232 = load i32, ptr %127, align 4
  %233 = load i32, ptr %129, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %236, !prof !8

235:                                              ; preds = %231
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

236:                                              ; preds = %231
  %237 = add i32 %232, 1
  store i32 %237, ptr %127, align 4
  %238 = getelementptr i32, ptr %229, i32 %232
  store i32 9504896, ptr %238, align 4
  %239 = load i32, ptr %10, align 4
  %240 = load ptr, ptr %8, align 4
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %242, label %384

242:                                              ; preds = %236
  %243 = load i32, ptr %127, align 4
  %244 = load i32, ptr %129, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %247, !prof !8

246:                                              ; preds = %242
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

247:                                              ; preds = %242
  %248 = add i32 %243, 1
  store i32 %248, ptr %127, align 4
  %249 = getelementptr i32, ptr %240, i32 %243
  store i32 9445374, ptr %249, align 4
  %250 = load i32, ptr %10, align 4
  %251 = load ptr, ptr %8, align 4
  %252 = icmp eq i32 %250, 0
  br i1 %252, label %253, label %384

253:                                              ; preds = %247
  %254 = load i32, ptr %127, align 4
  %255 = load i32, ptr %129, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %258, !prof !8

257:                                              ; preds = %253
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

258:                                              ; preds = %253
  %259 = add i32 %254, 1
  store i32 %259, ptr %127, align 4
  %260 = getelementptr i32, ptr %251, i32 %254
  store i32 26476544, ptr %260, align 4
  %261 = load i32, ptr %10, align 4
  %262 = load ptr, ptr %8, align 4
  %263 = icmp eq i32 %261, 0
  br i1 %263, label %264, label %384

264:                                              ; preds = %258
  %265 = load i32, ptr %127, align 4
  %266 = load i32, ptr %129, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %269, !prof !8

268:                                              ; preds = %264
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

269:                                              ; preds = %264
  %270 = add i32 %265, 1
  store i32 %270, ptr %127, align 4
  %271 = getelementptr i32, ptr %262, i32 %265
  store i32 2097184, ptr %271, align 4
  %272 = load i32, ptr %10, align 4
  %273 = load ptr, ptr %8, align 4
  %274 = icmp eq i32 %272, 0
  br i1 %274, label %275, label %384

275:                                              ; preds = %269
  %276 = load i32, ptr %127, align 4
  %277 = load i32, ptr %129, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %280, !prof !8

279:                                              ; preds = %275
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

280:                                              ; preds = %275
  %281 = add i32 %276, 1
  store i32 %281, ptr %127, align 4
  %282 = getelementptr i32, ptr %273, i32 %276
  store i32 6291467, ptr %282, align 4
  %283 = load i32, ptr %10, align 4
  %284 = load ptr, ptr %8, align 4
  %285 = icmp eq i32 %283, 0
  br i1 %285, label %286, label %384

286:                                              ; preds = %280
  %287 = load i32, ptr %127, align 4
  %288 = load i32, ptr %129, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %291, !prof !8

290:                                              ; preds = %286
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

291:                                              ; preds = %286
  %292 = add i32 %287, 1
  store i32 %292, ptr %127, align 4
  %293 = getelementptr i32, ptr %284, i32 %287
  store i32 5242985, ptr %293, align 4
  %294 = load i32, ptr %10, align 4
  %295 = load ptr, ptr %8, align 4
  %296 = icmp eq i32 %294, 0
  br i1 %296, label %297, label %384

297:                                              ; preds = %291
  %298 = load i32, ptr %127, align 4
  %299 = load i32, ptr %129, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %302, !prof !8

301:                                              ; preds = %297
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

302:                                              ; preds = %297
  %303 = add i32 %298, 1
  store i32 %303, ptr %127, align 4
  %304 = getelementptr i32, ptr %295, i32 %298
  store i32 6291468, ptr %304, align 4
  %305 = load ptr, ptr %8, align 4
  %306 = load i32, ptr %10, align 4
  %307 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 5
  %308 = load i32, ptr %307, align 4
  %309 = shl i32 %308, 8
  %310 = icmp eq i32 %309, 0
  %311 = or i32 %309, 4194408
  %312 = select i1 %310, i32 -12581528, i32 %311
  %313 = icmp eq i32 %306, 0
  br i1 %313, label %314, label %384

314:                                              ; preds = %302
  %315 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %316 = load i32, ptr %315, align 4
  %317 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %316, %318
  br i1 %319, label %320, label %321, !prof !8

320:                                              ; preds = %314
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

321:                                              ; preds = %314
  %322 = add i32 %316, 1
  store i32 %322, ptr %315, align 4
  %323 = getelementptr i32, ptr %305, i32 %316
  store i32 %312, ptr %323, align 4
  %324 = load i32, ptr %10, align 4
  %325 = load ptr, ptr %8, align 4
  %326 = icmp eq i32 %324, 0
  br i1 %326, label %327, label %384

327:                                              ; preds = %321
  %328 = load i32, ptr %315, align 4
  store i32 %328, ptr %2, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %350, label %330

330:                                              ; preds = %342, %327
  %331 = phi i32 [ %343, %342 ], [ %328, %327 ]
  %332 = phi i32 [ %344, %342 ], [ 0, %327 ]
  %333 = getelementptr i32, ptr %325, i32 %332
  %334 = load i32, ptr %333, align 4
  %335 = and i32 %334, -983296
  %336 = icmp eq i32 %335, -12581888
  br i1 %336, label %337, label %342

337:                                              ; preds = %330
  %338 = and i32 %334, 16711935
  %339 = shl i32 %331, 8
  %340 = or i32 %338, %339
  store i32 %340, ptr %333, align 4
  %341 = load i32, ptr %315, align 4
  br label %342

342:                                              ; preds = %337, %330
  %343 = phi i32 [ %331, %330 ], [ %341, %337 ]
  %344 = add nuw i32 %332, 1
  %345 = icmp ult i32 %344, %343
  br i1 %345, label %330, label %346

346:                                              ; preds = %342
  %347 = load i32, ptr %10, align 4
  %348 = load ptr, ptr %8, align 4
  %349 = icmp eq i32 %347, 0
  br i1 %349, label %350, label %384

350:                                              ; preds = %346, %327
  %351 = phi ptr [ %348, %346 ], [ %325, %327 ]
  %352 = phi i32 [ %343, %346 ], [ 0, %327 ]
  %353 = load i32, ptr %317, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %356, !prof !8

355:                                              ; preds = %350
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

356:                                              ; preds = %350
  %357 = add i32 %352, 1
  store i32 %357, ptr %315, align 4
  %358 = getelementptr i32, ptr %351, i32 %352
  store i32 7340160, ptr %358, align 4
  %359 = load i32, ptr %10, align 4
  %360 = load ptr, ptr %8, align 4
  %361 = icmp eq i32 %359, 0
  br i1 %361, label %362, label %384

362:                                              ; preds = %356
  %363 = load i32, ptr %315, align 4
  store i32 %363, ptr %307, align 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  store i32 8, ptr %366, align 4
  %367 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 9
  store i32 8, ptr %367, align 4
  br label %396

368:                                              ; preds = %380, %362
  %369 = phi i32 [ %381, %380 ], [ %363, %362 ]
  %370 = phi i32 [ %382, %380 ], [ 0, %362 ]
  %371 = getelementptr i32, ptr %360, i32 %370
  %372 = load i32, ptr %371, align 4
  %373 = and i32 %372, -983296
  %374 = icmp eq i32 %373, -12581632
  br i1 %374, label %375, label %380

375:                                              ; preds = %368
  %376 = and i32 %372, 16711935
  %377 = shl i32 %369, 8
  %378 = or i32 %376, %377
  store i32 %378, ptr %371, align 4
  %379 = load i32, ptr %315, align 4
  br label %380

380:                                              ; preds = %375, %368
  %381 = phi i32 [ %369, %368 ], [ %379, %375 ]
  %382 = add nuw i32 %370, 1
  %383 = icmp ult i32 %382, %381
  br i1 %383, label %368, label %390

384:                                              ; preds = %356, %346, %321, %302, %291, %280, %269, %258, %247, %236, %225, %214, %204, %179, %168, %158, %133, %114, %110
  %385 = phi ptr [ %119, %321 ], [ %119, %302 ], [ %119, %356 ], [ %119, %346 ], [ %113, %110 ], [ %119, %291 ], [ %119, %280 ], [ %119, %258 ], [ %119, %269 ], [ %119, %225 ], [ %119, %214 ], [ %119, %247 ], [ %119, %236 ], [ %119, %114 ], [ %119, %133 ], [ %119, %158 ], [ %119, %168 ], [ %119, %179 ], [ %119, %204 ]
  %386 = phi i32 [ %324, %321 ], [ %306, %302 ], [ %359, %356 ], [ %347, %346 ], [ %111, %110 ], [ %294, %291 ], [ %283, %280 ], [ %261, %258 ], [ %272, %269 ], [ %228, %225 ], [ %217, %214 ], [ %250, %247 ], [ %239, %236 ], [ %118, %114 ], [ %136, %133 ], [ %159, %158 ], [ %171, %168 ], [ %182, %179 ], [ %205, %204 ]
  %387 = phi ptr [ %325, %321 ], [ %305, %302 ], [ %360, %356 ], [ %348, %346 ], [ %112, %110 ], [ %295, %291 ], [ %284, %280 ], [ %262, %258 ], [ %273, %269 ], [ %229, %225 ], [ %218, %214 ], [ %251, %247 ], [ %240, %236 ], [ %117, %114 ], [ %137, %133 ], [ %160, %158 ], [ %172, %168 ], [ %183, %179 ], [ %206, %204 ]
  %388 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  store i32 8, ptr %388, align 4
  %389 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 9
  store i32 8, ptr %389, align 4
  br label %420

390:                                              ; preds = %380
  %391 = load i32, ptr %10, align 4
  %392 = load ptr, ptr %8, align 4
  %393 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  store i32 8, ptr %393, align 4
  %394 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 9
  store i32 8, ptr %394, align 4
  %395 = icmp eq i32 %391, 0
  br i1 %395, label %396, label %420

396:                                              ; preds = %390, %365
  %397 = phi ptr [ %367, %365 ], [ %394, %390 ]
  %398 = phi ptr [ %366, %365 ], [ %393, %390 ]
  %399 = phi ptr [ %360, %365 ], [ %392, %390 ]
  %400 = phi i32 [ 0, %365 ], [ %381, %390 ]
  %401 = load i32, ptr %317, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %404, !prof !8

403:                                              ; preds = %396
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

404:                                              ; preds = %396
  %405 = add i32 %400, 1
  store i32 %405, ptr %315, align 4
  %406 = getelementptr i32, ptr %399, i32 %400
  store i32 2097160, ptr %406, align 4
  %407 = load i32, ptr %10, align 4
  %408 = load ptr, ptr %8, align 4
  %409 = icmp eq i32 %407, 0
  br i1 %409, label %410, label %420

410:                                              ; preds = %404
  %411 = load i32, ptr %315, align 4
  %412 = load i32, ptr %317, align 4
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %414, label %415, !prof !8

414:                                              ; preds = %410
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

415:                                              ; preds = %410
  %416 = add i32 %411, 1
  store i32 %416, ptr %315, align 4
  %417 = getelementptr i32, ptr %408, i32 %411
  store i32 6291466, ptr %417, align 4
  %418 = load ptr, ptr %8, align 4
  %419 = load i32, ptr %10, align 4
  br label %420

420:                                              ; preds = %415, %404, %390, %384
  %421 = phi ptr [ %385, %384 ], [ %119, %390 ], [ %119, %404 ], [ %119, %415 ]
  %422 = phi i32 [ %386, %384 ], [ %391, %390 ], [ %407, %404 ], [ %419, %415 ]
  %423 = phi ptr [ %387, %384 ], [ %392, %390 ], [ %408, %404 ], [ %418, %415 ]
  %424 = phi ptr [ %389, %384 ], [ %394, %390 ], [ %397, %404 ], [ %397, %415 ]
  %425 = phi ptr [ %388, %384 ], [ %393, %390 ], [ %398, %404 ], [ %398, %415 ]
  %426 = load ptr, ptr %0, align 4
  %427 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 6
  store i32 41, ptr %427, align 4
  %428 = load i32, ptr %425, align 4
  store i32 %428, ptr %424, align 4
  %429 = add i32 %428, 1
  store i32 %429, ptr %425, align 4
  %430 = icmp eq i32 %422, 0
  br i1 %430, label %431, label %442

431:                                              ; preds = %420
  %432 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %433 = load i32, ptr %432, align 4
  %434 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %435 = load i32, ptr %434, align 4
  %436 = icmp eq i32 %433, %435
  br i1 %436, label %437, label %438, !prof !8

437:                                              ; preds = %431
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

438:                                              ; preds = %431
  %439 = add i32 %433, 1
  store i32 %439, ptr %432, align 4
  %440 = getelementptr i32, ptr %423, i32 %433
  store i32 1065001, ptr %440, align 4
  %441 = load i32, ptr %10, align 4
  br label %442

442:                                              ; preds = %438, %420
  %443 = phi i32 [ %422, %420 ], [ %441, %438 ]
  %444 = icmp eq i32 %443, 1
  br i1 %444, label %445, label %457

445:                                              ; preds = %442
  %446 = load i32, ptr %427, align 4
  %447 = sub i32 41, %446
  %448 = load i32, ptr %424, align 4
  %449 = add i32 %447, %448
  %450 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %451 = load ptr, ptr %450, align 4
  %452 = load ptr, ptr %451, align 8
  %453 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %452, i32 0, i32 3
  %454 = load ptr, ptr %453, align 4
  %455 = shl i32 %449, 2
  tail call void %454(ptr noundef %451, i32 noundef %455, i32 noundef 8) #6
  %456 = load i32, ptr %10, align 4
  br label %457

457:                                              ; preds = %445, %442
  %458 = phi i32 [ %443, %442 ], [ %456, %445 ]
  store i32 81, ptr %427, align 4
  %459 = load i32, ptr %425, align 4
  store i32 %459, ptr %424, align 4
  %460 = add i32 %459, 58
  store i32 %460, ptr %425, align 4
  %461 = load ptr, ptr %8, align 4
  %462 = icmp eq i32 %458, 0
  br i1 %462, label %463, label %474

463:                                              ; preds = %457
  %464 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %465 = load i32, ptr %464, align 4
  %466 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %467 = load i32, ptr %466, align 4
  %468 = icmp eq i32 %465, %467
  br i1 %468, label %469, label %470, !prof !8

469:                                              ; preds = %463
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

470:                                              ; preds = %463
  %471 = add i32 %465, 1
  store i32 %471, ptr %464, align 4
  %472 = getelementptr i32, ptr %461, i32 %465
  store i32 1998929, ptr %472, align 4
  %473 = load i32, ptr %10, align 4
  br label %474

474:                                              ; preds = %470, %457
  %475 = phi i32 [ %458, %457 ], [ %473, %470 ]
  %476 = icmp eq i32 %475, 1
  br i1 %476, label %477, label %489

477:                                              ; preds = %474
  %478 = load i32, ptr %427, align 4
  %479 = sub i32 81, %478
  %480 = load i32, ptr %424, align 4
  %481 = add i32 %479, %480
  %482 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %483 = load ptr, ptr %482, align 4
  %484 = load ptr, ptr %483, align 8
  %485 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %484, i32 0, i32 3
  %486 = load ptr, ptr %485, align 4
  %487 = shl i32 %481, 2
  tail call void %486(ptr noundef %483, i32 noundef %487, i32 noundef 1) #6
  %488 = load i32, ptr %10, align 4
  br label %489

489:                                              ; preds = %477, %474
  %490 = phi i32 [ %475, %474 ], [ %488, %477 ]
  store i32 197, ptr %427, align 4
  %491 = load i32, ptr %425, align 4
  store i32 %491, ptr %424, align 4
  %492 = add i32 %491, 1
  store i32 %492, ptr %425, align 4
  %493 = load ptr, ptr %8, align 4
  %494 = icmp eq i32 %490, 0
  br i1 %494, label %495, label %506

495:                                              ; preds = %489
  %496 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %497 = load i32, ptr %496, align 4
  %498 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %499 = load i32, ptr %498, align 4
  %500 = icmp eq i32 %497, %499
  br i1 %500, label %501, label %502, !prof !8

501:                                              ; preds = %495
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

502:                                              ; preds = %495
  %503 = add i32 %497, 1
  store i32 %503, ptr %496, align 4
  %504 = getelementptr i32, ptr %493, i32 %497
  store i32 1065157, ptr %504, align 4
  %505 = load i32, ptr %10, align 4
  br label %506

506:                                              ; preds = %502, %489
  %507 = phi i32 [ %490, %489 ], [ %505, %502 ]
  %508 = icmp eq i32 %507, 1
  br i1 %508, label %509, label %521

509:                                              ; preds = %506
  %510 = load i32, ptr %427, align 4
  %511 = sub i32 197, %510
  %512 = load i32, ptr %424, align 4
  %513 = add i32 %511, %512
  %514 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %515 = load ptr, ptr %514, align 4
  %516 = load ptr, ptr %515, align 8
  %517 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %516, i32 0, i32 3
  %518 = load ptr, ptr %517, align 4
  %519 = shl i32 %513, 2
  tail call void %518(ptr noundef %515, i32 noundef %519, i32 noundef 0) #6
  %520 = load i32, ptr %10, align 4
  br label %521

521:                                              ; preds = %509, %506
  %522 = phi i32 [ %507, %506 ], [ %520, %509 ]
  store i32 256, ptr %427, align 4
  %523 = load i32, ptr %425, align 4
  store i32 %523, ptr %424, align 4
  %524 = add i32 %523, 10
  store i32 %524, ptr %425, align 4
  %525 = load ptr, ptr %8, align 4
  %526 = icmp eq i32 %522, 0
  br i1 %526, label %529, label %527

527:                                              ; preds = %521
  %528 = add i32 %523, 20
  br label %549

529:                                              ; preds = %521
  %530 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %531 = load i32, ptr %530, align 4
  %532 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %533 = load i32, ptr %532, align 4
  %534 = icmp eq i32 %531, %533
  br i1 %534, label %535, label %536, !prof !8

535:                                              ; preds = %529
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

536:                                              ; preds = %529
  %537 = add i32 %531, 1
  store i32 %537, ptr %530, align 4
  %538 = getelementptr i32, ptr %525, i32 %531
  store i32 1212672, ptr %538, align 4
  %539 = load i32, ptr %10, align 4
  %540 = load i32, ptr %425, align 4
  %541 = load ptr, ptr %8, align 4
  store i32 288, ptr %427, align 4
  store i32 %540, ptr %424, align 4
  %542 = add i32 %540, 10
  store i32 %542, ptr %425, align 4
  %543 = icmp eq i32 %539, 0
  br i1 %543, label %544, label %549

544:                                              ; preds = %536
  %545 = load i32, ptr %530, align 4
  %546 = load i32, ptr %532, align 4
  %547 = icmp eq i32 %545, %546
  br i1 %547, label %548, label %553, !prof !8

548:                                              ; preds = %544
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

549:                                              ; preds = %536, %527
  %550 = phi i32 [ %522, %527 ], [ %539, %536 ]
  %551 = phi i32 [ %528, %527 ], [ %542, %536 ]
  store i32 320, ptr %427, align 4
  store i32 %551, ptr %424, align 4
  %552 = add i32 %551, 19
  store i32 %552, ptr %425, align 4
  br label %570

553:                                              ; preds = %544
  %554 = add i32 %545, 1
  store i32 %554, ptr %530, align 4
  %555 = getelementptr i32, ptr %541, i32 %545
  store i32 1212704, ptr %555, align 4
  %556 = load i32, ptr %425, align 4
  %557 = load ptr, ptr %8, align 4
  %558 = load i32, ptr %10, align 4
  store i32 320, ptr %427, align 4
  store i32 %556, ptr %424, align 4
  %559 = add i32 %556, 19
  store i32 %559, ptr %425, align 4
  %560 = icmp eq i32 %558, 0
  br i1 %560, label %561, label %570

561:                                              ; preds = %553
  %562 = load i32, ptr %530, align 4
  %563 = load i32, ptr %532, align 4
  %564 = icmp eq i32 %562, %563
  br i1 %564, label %565, label %566, !prof !8

565:                                              ; preds = %561
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

566:                                              ; preds = %561
  %567 = add i32 %562, 1
  store i32 %567, ptr %530, align 4
  %568 = getelementptr i32, ptr %557, i32 %562
  store i32 1360192, ptr %568, align 4
  %569 = load i32, ptr %10, align 4
  br label %570

570:                                              ; preds = %566, %553, %549
  %571 = phi i32 [ %558, %553 ], [ %569, %566 ], [ %550, %549 ]
  %572 = icmp eq i32 %571, 1
  br i1 %572, label %573, label %633

573:                                              ; preds = %570
  %574 = load i32, ptr %427, align 4
  %575 = sub i32 325, %574
  %576 = load i32, ptr %424, align 4
  %577 = add i32 %575, %576
  %578 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %579 = load ptr, ptr %578, align 4
  %580 = load ptr, ptr %579, align 8
  %581 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %580, i32 0, i32 3
  %582 = load ptr, ptr %581, align 4
  %583 = shl i32 %577, 2
  tail call void %582(ptr noundef %579, i32 noundef %583, i32 noundef 262144) #6
  %584 = load i32, ptr %10, align 4
  %585 = icmp eq i32 %584, 1
  br i1 %585, label %586, label %633

586:                                              ; preds = %573
  %587 = load i32, ptr %427, align 4
  %588 = sub i32 329, %587
  %589 = load i32, ptr %424, align 4
  %590 = add i32 %588, %589
  %591 = load ptr, ptr %578, align 4
  %592 = load ptr, ptr %591, align 8
  %593 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %592, i32 0, i32 3
  %594 = load ptr, ptr %593, align 4
  %595 = shl i32 %590, 2
  tail call void %594(ptr noundef %591, i32 noundef %595, i32 noundef 1431655765) #6
  %596 = load i32, ptr %10, align 4
  %597 = icmp eq i32 %596, 1
  br i1 %597, label %598, label %633

598:                                              ; preds = %586
  %599 = load i32, ptr %427, align 4
  %600 = sub i32 330, %599
  %601 = load i32, ptr %424, align 4
  %602 = add i32 %600, %601
  %603 = load ptr, ptr %578, align 4
  %604 = load ptr, ptr %603, align 8
  %605 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %604, i32 0, i32 3
  %606 = load ptr, ptr %605, align 4
  %607 = shl i32 %602, 2
  tail call void %606(ptr noundef %603, i32 noundef %607, i32 noundef 1431655765) #6
  %608 = load i32, ptr %10, align 4
  %609 = icmp eq i32 %608, 1
  br i1 %609, label %610, label %633

610:                                              ; preds = %598
  %611 = load i32, ptr %427, align 4
  %612 = sub i32 331, %611
  %613 = load i32, ptr %424, align 4
  %614 = add i32 %612, %613
  %615 = load ptr, ptr %578, align 4
  %616 = load ptr, ptr %615, align 8
  %617 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %616, i32 0, i32 3
  %618 = load ptr, ptr %617, align 4
  %619 = shl i32 %614, 2
  tail call void %618(ptr noundef %615, i32 noundef %619, i32 noundef 1431655765) #6
  %620 = load i32, ptr %10, align 4
  %621 = icmp eq i32 %620, 1
  br i1 %621, label %622, label %633

622:                                              ; preds = %610
  %623 = load i32, ptr %427, align 4
  %624 = sub i32 332, %623
  %625 = load i32, ptr %424, align 4
  %626 = add i32 %624, %625
  %627 = load ptr, ptr %578, align 4
  %628 = load ptr, ptr %627, align 8
  %629 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %628, i32 0, i32 3
  %630 = load ptr, ptr %629, align 4
  %631 = shl i32 %626, 2
  tail call void %630(ptr noundef %627, i32 noundef %631, i32 noundef 1431655765) #6
  %632 = load i32, ptr %10, align 4
  br label %633

633:                                              ; preds = %622, %610, %598, %586, %573, %570
  %634 = phi i32 [ %620, %610 ], [ %632, %622 ], [ %608, %598 ], [ %596, %586 ], [ %584, %573 ], [ %571, %570 ]
  store i32 344, ptr %427, align 4
  %635 = load i32, ptr %425, align 4
  store i32 %635, ptr %424, align 4
  %636 = add i32 %635, 6
  store i32 %636, ptr %425, align 4
  %637 = load ptr, ptr %8, align 4
  %638 = icmp eq i32 %634, 0
  br i1 %638, label %639, label %650

639:                                              ; preds = %633
  %640 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %641 = load i32, ptr %640, align 4
  %642 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %643 = load i32, ptr %642, align 4
  %644 = icmp eq i32 %641, %643
  br i1 %644, label %645, label %646, !prof !8

645:                                              ; preds = %639
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

646:                                              ; preds = %639
  %647 = add i32 %641, 1
  store i32 %647, ptr %640, align 4
  %648 = getelementptr i32, ptr %637, i32 %641
  store i32 1147224, ptr %648, align 4
  %649 = load i32, ptr %10, align 4
  br label %650

650:                                              ; preds = %646, %633
  %651 = phi i32 [ %634, %633 ], [ %649, %646 ]
  %652 = icmp eq i32 %651, 1
  br i1 %652, label %653, label %677

653:                                              ; preds = %650
  %654 = load i32, ptr %427, align 4
  %655 = sub i32 346, %654
  %656 = load i32, ptr %424, align 4
  %657 = add i32 %655, %656
  %658 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %659 = load ptr, ptr %658, align 4
  %660 = load ptr, ptr %659, align 8
  %661 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %660, i32 0, i32 3
  %662 = load ptr, ptr %661, align 4
  %663 = shl i32 %657, 2
  tail call void %662(ptr noundef %659, i32 noundef %663, i32 noundef 65535) #6
  %664 = load i32, ptr %10, align 4
  %665 = icmp eq i32 %664, 1
  br i1 %665, label %666, label %677

666:                                              ; preds = %653
  %667 = load i32, ptr %427, align 4
  %668 = sub i32 347, %667
  %669 = load i32, ptr %424, align 4
  %670 = add i32 %668, %669
  %671 = load ptr, ptr %658, align 4
  %672 = load ptr, ptr %671, align 8
  %673 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %672, i32 0, i32 3
  %674 = load ptr, ptr %673, align 4
  %675 = shl i32 %670, 2
  tail call void %674(ptr noundef %671, i32 noundef %675, i32 noundef 65535) #6
  %676 = load i32, ptr %10, align 4
  br label %677

677:                                              ; preds = %666, %653, %650
  %678 = phi i32 [ %664, %653 ], [ %676, %666 ], [ %651, %650 ]
  store i32 351, ptr %427, align 4
  %679 = load i32, ptr %425, align 4
  store i32 %679, ptr %424, align 4
  %680 = add i32 %679, 5
  store i32 %680, ptr %425, align 4
  %681 = load ptr, ptr %8, align 4
  %682 = icmp eq i32 %678, 0
  br i1 %682, label %685, label %683

683:                                              ; preds = %677
  store i32 452, ptr %427, align 4
  store i32 %680, ptr %424, align 4
  %684 = add i32 %679, 8
  store i32 %684, ptr %425, align 4
  br label %709

685:                                              ; preds = %677
  %686 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %687 = load i32, ptr %686, align 4
  %688 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %689 = load i32, ptr %688, align 4
  %690 = icmp eq i32 %687, %689
  br i1 %690, label %691, label %692, !prof !8

691:                                              ; preds = %685
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

692:                                              ; preds = %685
  %693 = add i32 %687, 1
  store i32 %693, ptr %686, align 4
  %694 = getelementptr i32, ptr %681, i32 %687
  store i32 1130847, ptr %694, align 4
  %695 = load i32, ptr %425, align 4
  %696 = load ptr, ptr %8, align 4
  %697 = load i32, ptr %10, align 4
  store i32 452, ptr %427, align 4
  store i32 %695, ptr %424, align 4
  %698 = add i32 %695, 3
  store i32 %698, ptr %425, align 4
  %699 = icmp eq i32 %697, 0
  br i1 %699, label %700, label %709

700:                                              ; preds = %692
  %701 = load i32, ptr %686, align 4
  %702 = load i32, ptr %688, align 4
  %703 = icmp eq i32 %701, %702
  br i1 %703, label %704, label %705, !prof !8

704:                                              ; preds = %700
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

705:                                              ; preds = %700
  %706 = add i32 %701, 1
  store i32 %706, ptr %686, align 4
  %707 = getelementptr i32, ptr %696, i32 %701
  store i32 1098180, ptr %707, align 4
  %708 = load i32, ptr %10, align 4
  br label %709

709:                                              ; preds = %705, %692, %683
  %710 = phi i32 [ %697, %692 ], [ %708, %705 ], [ %678, %683 ]
  %711 = icmp eq i32 %710, 1
  br i1 %711, label %712, label %736

712:                                              ; preds = %709
  %713 = load i32, ptr %427, align 4
  %714 = sub i32 452, %713
  %715 = load i32, ptr %424, align 4
  %716 = add i32 %714, %715
  %717 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %718 = load ptr, ptr %717, align 4
  %719 = load ptr, ptr %718, align 8
  %720 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %719, i32 0, i32 3
  %721 = load ptr, ptr %720, align 4
  %722 = shl i32 %716, 2
  tail call void %721(ptr noundef %718, i32 noundef %722, i32 noundef 536936449) #6
  %723 = load i32, ptr %10, align 4
  %724 = icmp eq i32 %723, 1
  br i1 %724, label %725, label %736

725:                                              ; preds = %712
  %726 = load i32, ptr %427, align 4
  %727 = sub i32 453, %726
  %728 = load i32, ptr %424, align 4
  %729 = add i32 %727, %728
  %730 = load ptr, ptr %717, align 4
  %731 = load ptr, ptr %730, align 8
  %732 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %731, i32 0, i32 3
  %733 = load ptr, ptr %732, align 4
  %734 = shl i32 %729, 2
  tail call void %733(ptr noundef %730, i32 noundef %734, i32 noundef 259256064) #6
  %735 = load i32, ptr %10, align 4
  br label %736

736:                                              ; preds = %725, %712, %709
  %737 = phi i32 [ %723, %712 ], [ %735, %725 ], [ %710, %709 ]
  store i32 457, ptr %427, align 4
  %738 = load i32, ptr %425, align 4
  store i32 %738, ptr %424, align 4
  %739 = add i32 %738, 1
  store i32 %739, ptr %425, align 4
  %740 = load ptr, ptr %8, align 4
  %741 = icmp eq i32 %737, 0
  br i1 %741, label %742, label %753

742:                                              ; preds = %736
  %743 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %744 = load i32, ptr %743, align 4
  %745 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %746 = load i32, ptr %745, align 4
  %747 = icmp eq i32 %744, %746
  br i1 %747, label %748, label %749, !prof !8

748:                                              ; preds = %742
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

749:                                              ; preds = %742
  %750 = add i32 %744, 1
  store i32 %750, ptr %743, align 4
  %751 = getelementptr i32, ptr %740, i32 %744
  store i32 1065417, ptr %751, align 4
  %752 = load i32, ptr %10, align 4
  br label %753

753:                                              ; preds = %749, %736
  %754 = phi i32 [ %737, %736 ], [ %752, %749 ]
  %755 = icmp eq i32 %754, 1
  br i1 %755, label %756, label %768

756:                                              ; preds = %753
  %757 = load i32, ptr %427, align 4
  %758 = sub i32 457, %757
  %759 = load i32, ptr %424, align 4
  %760 = add i32 %758, %759
  %761 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %762 = load ptr, ptr %761, align 4
  %763 = load ptr, ptr %762, align 8
  %764 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %763, i32 0, i32 3
  %765 = load ptr, ptr %764, align 4
  %766 = shl i32 %760, 2
  tail call void %765(ptr noundef %762, i32 noundef %766, i32 noundef 33589281) #6
  %767 = load i32, ptr %10, align 4
  br label %768

768:                                              ; preds = %756, %753
  %769 = phi i32 [ %754, %753 ], [ %767, %756 ]
  store i32 476, ptr %427, align 4
  %770 = load i32, ptr %425, align 4
  store i32 %770, ptr %424, align 4
  %771 = add i32 %770, 3
  store i32 %771, ptr %425, align 4
  %772 = load ptr, ptr %8, align 4
  %773 = icmp eq i32 %769, 0
  br i1 %773, label %774, label %784

774:                                              ; preds = %768
  %775 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %776 = load i32, ptr %775, align 4
  %777 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %778 = load i32, ptr %777, align 4
  %779 = icmp eq i32 %776, %778
  br i1 %779, label %780, label %781, !prof !8

780:                                              ; preds = %774
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

781:                                              ; preds = %774
  %782 = add i32 %776, 1
  store i32 %782, ptr %775, align 4
  %783 = getelementptr i32, ptr %772, i32 %776
  store i32 1098204, ptr %783, align 4
  br label %784

784:                                              ; preds = %781, %768
  %785 = getelementptr inbounds %struct.nvkm_device, ptr %426, i32 0, i32 16
  %786 = load i32, ptr %785, align 4
  %787 = icmp eq i32 %786, 64
  br i1 %787, label %788, label %1043

788:                                              ; preds = %784
  store i32 517, ptr %427, align 4
  %789 = load i32, ptr %425, align 4
  store i32 %789, ptr %424, align 4
  %790 = add i32 %789, 4
  store i32 %790, ptr %425, align 4
  %791 = load ptr, ptr %8, align 4
  %792 = load i32, ptr %10, align 4
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %796, label %794

794:                                              ; preds = %788
  %795 = add i32 %789, 9
  br label %816

796:                                              ; preds = %788
  %797 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %798 = load i32, ptr %797, align 4
  %799 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %800 = load i32, ptr %799, align 4
  %801 = icmp eq i32 %798, %800
  br i1 %801, label %802, label %803, !prof !8

802:                                              ; preds = %796
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

803:                                              ; preds = %796
  %804 = add i32 %798, 1
  store i32 %804, ptr %797, align 4
  %805 = getelementptr i32, ptr %791, i32 %798
  store i32 1114629, ptr %805, align 4
  %806 = load i32, ptr %10, align 4
  %807 = load i32, ptr %425, align 4
  %808 = load ptr, ptr %8, align 4
  store i32 522, ptr %427, align 4
  store i32 %807, ptr %424, align 4
  %809 = add i32 %807, 5
  store i32 %809, ptr %425, align 4
  %810 = icmp eq i32 %806, 0
  br i1 %810, label %811, label %816

811:                                              ; preds = %803
  %812 = load i32, ptr %797, align 4
  %813 = load i32, ptr %799, align 4
  %814 = icmp eq i32 %812, %813
  br i1 %814, label %815, label %820, !prof !8

815:                                              ; preds = %811
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

816:                                              ; preds = %803, %794
  %817 = phi i32 [ %792, %794 ], [ %806, %803 ]
  %818 = phi i32 [ %795, %794 ], [ %809, %803 ]
  store i32 528, ptr %427, align 4
  store i32 %818, ptr %424, align 4
  %819 = add i32 %818, 5
  store i32 %819, ptr %425, align 4
  br label %837

820:                                              ; preds = %811
  %821 = add i32 %812, 1
  store i32 %821, ptr %797, align 4
  %822 = getelementptr i32, ptr %808, i32 %812
  store i32 1131018, ptr %822, align 4
  %823 = load i32, ptr %425, align 4
  %824 = load ptr, ptr %8, align 4
  %825 = load i32, ptr %10, align 4
  store i32 528, ptr %427, align 4
  store i32 %823, ptr %424, align 4
  %826 = add i32 %823, 5
  store i32 %826, ptr %425, align 4
  %827 = icmp eq i32 %825, 0
  br i1 %827, label %828, label %837

828:                                              ; preds = %820
  %829 = load i32, ptr %797, align 4
  %830 = load i32, ptr %799, align 4
  %831 = icmp eq i32 %829, %830
  br i1 %831, label %832, label %833, !prof !8

832:                                              ; preds = %828
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

833:                                              ; preds = %828
  %834 = add i32 %829, 1
  store i32 %834, ptr %797, align 4
  %835 = getelementptr i32, ptr %824, i32 %829
  store i32 1131024, ptr %835, align 4
  %836 = load i32, ptr %10, align 4
  br label %837

837:                                              ; preds = %833, %820, %816
  %838 = phi i32 [ %825, %820 ], [ %836, %833 ], [ %817, %816 ]
  %839 = icmp eq i32 %838, 1
  br i1 %839, label %840, label %852

840:                                              ; preds = %837
  %841 = load i32, ptr %427, align 4
  %842 = sub i32 532, %841
  %843 = load i32, ptr %424, align 4
  %844 = add i32 %842, %843
  %845 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %846 = load ptr, ptr %845, align 4
  %847 = load ptr, ptr %846, align 8
  %848 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %847, i32 0, i32 3
  %849 = load ptr, ptr %848, align 4
  %850 = shl i32 %844, 2
  tail call void %849(ptr noundef %846, i32 noundef %850, i32 noundef 64) #6
  %851 = load i32, ptr %10, align 4
  br label %852

852:                                              ; preds = %840, %837
  %853 = phi i32 [ %838, %837 ], [ %851, %840 ]
  store i32 534, ptr %427, align 4
  %854 = load i32, ptr %425, align 4
  store i32 %854, ptr %424, align 4
  %855 = add i32 %854, 4
  store i32 %855, ptr %425, align 4
  %856 = load ptr, ptr %8, align 4
  %857 = icmp eq i32 %853, 0
  br i1 %857, label %858, label %869

858:                                              ; preds = %852
  %859 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %860 = load i32, ptr %859, align 4
  %861 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %862 = load i32, ptr %861, align 4
  %863 = icmp eq i32 %860, %862
  br i1 %863, label %864, label %865, !prof !8

864:                                              ; preds = %858
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

865:                                              ; preds = %858
  %866 = add i32 %860, 1
  store i32 %866, ptr %859, align 4
  %867 = getelementptr i32, ptr %856, i32 %860
  store i32 1114646, ptr %867, align 4
  %868 = load i32, ptr %10, align 4
  br label %869

869:                                              ; preds = %865, %852
  %870 = phi i32 [ %853, %852 ], [ %868, %865 ]
  %871 = icmp eq i32 %870, 1
  br i1 %871, label %872, label %908

872:                                              ; preds = %869
  %873 = load i32, ptr %427, align 4
  %874 = sub i32 534, %873
  %875 = load i32, ptr %424, align 4
  %876 = add i32 %874, %875
  %877 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %878 = load ptr, ptr %877, align 4
  %879 = load ptr, ptr %878, align 8
  %880 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %879, i32 0, i32 3
  %881 = load ptr, ptr %880, align 4
  %882 = shl i32 %876, 2
  tail call void %881(ptr noundef %878, i32 noundef %882, i32 noundef 64) #6
  %883 = load i32, ptr %10, align 4
  %884 = icmp eq i32 %883, 1
  br i1 %884, label %885, label %908

885:                                              ; preds = %872
  %886 = load i32, ptr %427, align 4
  %887 = sub i32 535, %886
  %888 = load i32, ptr %424, align 4
  %889 = add i32 %887, %888
  %890 = load ptr, ptr %877, align 4
  %891 = load ptr, ptr %890, align 8
  %892 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %891, i32 0, i32 3
  %893 = load ptr, ptr %892, align 4
  %894 = shl i32 %889, 2
  tail call void %893(ptr noundef %890, i32 noundef %894, i32 noundef 64) #6
  %895 = load i32, ptr %10, align 4
  %896 = icmp eq i32 %895, 1
  br i1 %896, label %897, label %908

897:                                              ; preds = %885
  %898 = load i32, ptr %427, align 4
  %899 = sub i32 537, %898
  %900 = load i32, ptr %424, align 4
  %901 = add i32 %899, %900
  %902 = load ptr, ptr %877, align 4
  %903 = load ptr, ptr %902, align 8
  %904 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %903, i32 0, i32 3
  %905 = load ptr, ptr %904, align 4
  %906 = shl i32 %901, 2
  tail call void %905(ptr noundef %902, i32 noundef %906, i32 noundef -2147483648) #6
  %907 = load i32, ptr %10, align 4
  br label %908

908:                                              ; preds = %897, %885, %872, %869
  %909 = phi i32 [ %895, %885 ], [ %907, %897 ], [ %883, %872 ], [ %870, %869 ]
  store i32 539, ptr %427, align 4
  %910 = load i32, ptr %425, align 4
  store i32 %910, ptr %424, align 4
  %911 = add i32 %910, 9
  store i32 %911, ptr %425, align 4
  %912 = load ptr, ptr %8, align 4
  %913 = icmp eq i32 %909, 0
  br i1 %913, label %914, label %925

914:                                              ; preds = %908
  %915 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %916 = load i32, ptr %915, align 4
  %917 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %918 = load i32, ptr %917, align 4
  %919 = icmp eq i32 %916, %918
  br i1 %919, label %920, label %921, !prof !8

920:                                              ; preds = %914
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

921:                                              ; preds = %914
  %922 = add i32 %916, 1
  store i32 %922, ptr %915, align 4
  %923 = getelementptr i32, ptr %912, i32 %916
  store i32 1196571, ptr %923, align 4
  %924 = load i32, ptr %10, align 4
  br label %925

925:                                              ; preds = %921, %908
  %926 = phi i32 [ %909, %908 ], [ %924, %921 ]
  %927 = icmp eq i32 %926, 1
  br i1 %927, label %928, label %1000

928:                                              ; preds = %925
  %929 = load i32, ptr %427, align 4
  %930 = sub i32 539, %929
  %931 = load i32, ptr %424, align 4
  %932 = add i32 %930, %931
  %933 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %934 = load ptr, ptr %933, align 4
  %935 = load ptr, ptr %934, align 8
  %936 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %935, i32 0, i32 3
  %937 = load ptr, ptr %936, align 4
  %938 = shl i32 %932, 2
  tail call void %937(ptr noundef %934, i32 noundef %938, i32 noundef -2147483648) #6
  %939 = load i32, ptr %10, align 4
  %940 = icmp eq i32 %939, 1
  br i1 %940, label %941, label %1000

941:                                              ; preds = %928
  %942 = load i32, ptr %427, align 4
  %943 = sub i32 540, %942
  %944 = load i32, ptr %424, align 4
  %945 = add i32 %943, %944
  %946 = load ptr, ptr %933, align 4
  %947 = load ptr, ptr %946, align 8
  %948 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %947, i32 0, i32 3
  %949 = load ptr, ptr %948, align 4
  %950 = shl i32 %945, 2
  tail call void %949(ptr noundef %946, i32 noundef %950, i32 noundef -2147483648) #6
  %951 = load i32, ptr %10, align 4
  %952 = icmp eq i32 %951, 1
  br i1 %952, label %953, label %1000

953:                                              ; preds = %941
  %954 = load i32, ptr %427, align 4
  %955 = sub i32 541, %954
  %956 = load i32, ptr %424, align 4
  %957 = add i32 %955, %956
  %958 = load ptr, ptr %933, align 4
  %959 = load ptr, ptr %958, align 8
  %960 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %959, i32 0, i32 3
  %961 = load ptr, ptr %960, align 4
  %962 = shl i32 %957, 2
  tail call void %961(ptr noundef %958, i32 noundef %962, i32 noundef -2147483648) #6
  %963 = load i32, ptr %10, align 4
  %964 = icmp eq i32 %963, 1
  br i1 %964, label %965, label %1000

965:                                              ; preds = %953
  %966 = load i32, ptr %427, align 4
  %967 = sub i32 542, %966
  %968 = load i32, ptr %424, align 4
  %969 = add i32 %967, %968
  %970 = load ptr, ptr %933, align 4
  %971 = load ptr, ptr %970, align 8
  %972 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %971, i32 0, i32 3
  %973 = load ptr, ptr %972, align 4
  %974 = shl i32 %969, 2
  tail call void %973(ptr noundef %970, i32 noundef %974, i32 noundef -2147483648) #6
  %975 = load i32, ptr %10, align 4
  %976 = icmp eq i32 %975, 1
  br i1 %976, label %977, label %1000

977:                                              ; preds = %965
  %978 = load i32, ptr %427, align 4
  %979 = sub i32 546, %978
  %980 = load i32, ptr %424, align 4
  %981 = add i32 %979, %980
  %982 = load ptr, ptr %933, align 4
  %983 = load ptr, ptr %982, align 8
  %984 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %983, i32 0, i32 3
  %985 = load ptr, ptr %984, align 4
  %986 = shl i32 %981, 2
  tail call void %985(ptr noundef %982, i32 noundef %986, i32 noundef 64) #6
  %987 = load i32, ptr %10, align 4
  %988 = icmp eq i32 %987, 1
  br i1 %988, label %989, label %1000

989:                                              ; preds = %977
  %990 = load i32, ptr %427, align 4
  %991 = sub i32 547, %990
  %992 = load i32, ptr %424, align 4
  %993 = add i32 %991, %992
  %994 = load ptr, ptr %933, align 4
  %995 = load ptr, ptr %994, align 8
  %996 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %995, i32 0, i32 3
  %997 = load ptr, ptr %996, align 4
  %998 = shl i32 %993, 2
  tail call void %997(ptr noundef %994, i32 noundef %998, i32 noundef -2147483648) #6
  %999 = load i32, ptr %10, align 4
  br label %1000

1000:                                             ; preds = %989, %977, %965, %953, %941, %928, %925
  %1001 = phi i32 [ %987, %977 ], [ %999, %989 ], [ %975, %965 ], [ %963, %953 ], [ %951, %941 ], [ %926, %925 ], [ %939, %928 ]
  store i32 624, ptr %427, align 4
  %1002 = load i32, ptr %425, align 4
  store i32 %1002, ptr %424, align 4
  %1003 = add i32 %1002, 8
  store i32 %1003, ptr %425, align 4
  %1004 = load ptr, ptr %8, align 4
  %1005 = icmp eq i32 %1001, 0
  br i1 %1005, label %1006, label %1017

1006:                                             ; preds = %1000
  %1007 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1008 = load i32, ptr %1007, align 4
  %1009 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1010 = load i32, ptr %1009, align 4
  %1011 = icmp eq i32 %1008, %1010
  br i1 %1011, label %1012, label %1013, !prof !8

1012:                                             ; preds = %1006
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1013:                                             ; preds = %1006
  %1014 = add i32 %1008, 1
  store i32 %1014, ptr %1007, align 4
  %1015 = getelementptr i32, ptr %1004, i32 %1008
  store i32 1180272, ptr %1015, align 4
  %1016 = load i32, ptr %10, align 4
  br label %1017

1017:                                             ; preds = %1013, %1000
  %1018 = phi i32 [ %1001, %1000 ], [ %1016, %1013 ]
  %1019 = icmp eq i32 %1018, 1
  br i1 %1019, label %1020, label %1404

1020:                                             ; preds = %1017
  %1021 = load i32, ptr %427, align 4
  %1022 = sub i32 627, %1021
  %1023 = load i32, ptr %424, align 4
  %1024 = add i32 %1022, %1023
  %1025 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1026 = load ptr, ptr %1025, align 4
  %1027 = load ptr, ptr %1026, align 8
  %1028 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1027, i32 0, i32 3
  %1029 = load ptr, ptr %1028, align 4
  %1030 = shl i32 %1024, 2
  tail call void %1029(ptr noundef %1026, i32 noundef %1030, i32 noundef -2147483648) #6
  %1031 = load i32, ptr %10, align 4
  %1032 = icmp eq i32 %1031, 1
  br i1 %1032, label %1033, label %1404

1033:                                             ; preds = %1020
  %1034 = load i32, ptr %427, align 4
  %1035 = sub i32 631, %1034
  %1036 = load i32, ptr %424, align 4
  %1037 = add i32 %1035, %1036
  %1038 = load ptr, ptr %1025, align 4
  %1039 = load ptr, ptr %1038, align 8
  %1040 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1039, i32 0, i32 3
  %1041 = load ptr, ptr %1040, align 4
  %1042 = shl i32 %1037, 2
  tail call void %1041(ptr noundef %1038, i32 noundef %1042, i32 noundef -2147483648) #6
  br label %1402

1043:                                             ; preds = %784
  store i32 528, ptr %427, align 4
  %1044 = load i32, ptr %425, align 4
  store i32 %1044, ptr %424, align 4
  %1045 = add i32 %1044, 20
  store i32 %1045, ptr %425, align 4
  %1046 = load ptr, ptr %8, align 4
  %1047 = load i32, ptr %10, align 4
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1049, label %1059

1049:                                             ; preds = %1043
  %1050 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1051 = load i32, ptr %1050, align 4
  %1052 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1053 = load i32, ptr %1052, align 4
  %1054 = icmp eq i32 %1051, %1053
  br i1 %1054, label %1055, label %1056, !prof !8

1055:                                             ; preds = %1049
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1056:                                             ; preds = %1049
  %1057 = add i32 %1051, 1
  store i32 %1057, ptr %1050, align 4
  %1058 = getelementptr i32, ptr %1046, i32 %1051
  store i32 1376784, ptr %1058, align 4
  br label %1059

1059:                                             ; preds = %1056, %1043
  %1060 = load ptr, ptr %0, align 4
  %1061 = getelementptr inbounds %struct.nvkm_device, ptr %1060, i32 0, i32 16
  %1062 = load i32, ptr %1061, align 4
  %1063 = and i32 %1062, 240
  %1064 = icmp ne i32 %1063, 96
  %1065 = and i32 %1062, 15
  %1066 = lshr i32 -2736, %1065
  %1067 = and i32 %1066, 1
  %1068 = icmp eq i32 %1067, 0
  %1069 = select i1 %1064, i1 %1068, i1 false
  br i1 %1069, label %1168, label %1070

1070:                                             ; preds = %1059
  %1071 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1072 = load i32, ptr %10, align 4
  %1073 = icmp eq i32 %1072, 1
  br i1 %1073, label %1074, label %1207

1074:                                             ; preds = %1070
  %1075 = load i32, ptr %427, align 4
  %1076 = sub i32 536, %1075
  %1077 = load i32, ptr %424, align 4
  %1078 = add i32 %1076, %1077
  %1079 = load ptr, ptr %1071, align 4
  %1080 = load ptr, ptr %1079, align 8
  %1081 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1080, i32 0, i32 3
  %1082 = load ptr, ptr %1081, align 4
  %1083 = shl i32 %1078, 2
  tail call void %1082(ptr noundef %1079, i32 noundef %1083, i32 noundef 1) #6
  %1084 = load i32, ptr %10, align 4
  %1085 = icmp eq i32 %1084, 1
  br i1 %1085, label %1086, label %1207

1086:                                             ; preds = %1074
  %1087 = load i32, ptr %427, align 4
  %1088 = sub i32 537, %1087
  %1089 = load i32, ptr %424, align 4
  %1090 = add i32 %1088, %1089
  %1091 = load ptr, ptr %1071, align 4
  %1092 = load ptr, ptr %1091, align 8
  %1093 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1092, i32 0, i32 3
  %1094 = load ptr, ptr %1093, align 4
  %1095 = shl i32 %1090, 2
  tail call void %1094(ptr noundef %1091, i32 noundef %1095, i32 noundef 1) #6
  %1096 = load i32, ptr %10, align 4
  %1097 = icmp eq i32 %1096, 1
  br i1 %1097, label %1098, label %1207

1098:                                             ; preds = %1086
  %1099 = load i32, ptr %427, align 4
  %1100 = sub i32 538, %1099
  %1101 = load i32, ptr %424, align 4
  %1102 = add i32 %1100, %1101
  %1103 = load ptr, ptr %1071, align 4
  %1104 = load ptr, ptr %1103, align 8
  %1105 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1104, i32 0, i32 3
  %1106 = load ptr, ptr %1105, align 4
  %1107 = shl i32 %1102, 2
  tail call void %1106(ptr noundef %1103, i32 noundef %1107, i32 noundef 1) #6
  %1108 = load i32, ptr %10, align 4
  %1109 = icmp eq i32 %1108, 1
  br i1 %1109, label %1110, label %1207

1110:                                             ; preds = %1098
  %1111 = load i32, ptr %427, align 4
  %1112 = sub i32 539, %1111
  %1113 = load i32, ptr %424, align 4
  %1114 = add i32 %1112, %1113
  %1115 = load ptr, ptr %1071, align 4
  %1116 = load ptr, ptr %1115, align 8
  %1117 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1116, i32 0, i32 3
  %1118 = load ptr, ptr %1117, align 4
  %1119 = shl i32 %1114, 2
  tail call void %1118(ptr noundef %1115, i32 noundef %1119, i32 noundef 1) #6
  %1120 = load i32, ptr %10, align 4
  %1121 = icmp eq i32 %1120, 1
  br i1 %1121, label %1122, label %1207

1122:                                             ; preds = %1110
  %1123 = load i32, ptr %427, align 4
  %1124 = sub i32 540, %1123
  %1125 = load i32, ptr %424, align 4
  %1126 = add i32 %1124, %1125
  %1127 = load ptr, ptr %1071, align 4
  %1128 = load ptr, ptr %1127, align 8
  %1129 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1128, i32 0, i32 3
  %1130 = load ptr, ptr %1129, align 4
  %1131 = shl i32 %1126, 2
  tail call void %1130(ptr noundef %1127, i32 noundef %1131, i32 noundef 1) #6
  %1132 = load i32, ptr %10, align 4
  %1133 = icmp eq i32 %1132, 1
  br i1 %1133, label %1134, label %1207

1134:                                             ; preds = %1122
  %1135 = load i32, ptr %427, align 4
  %1136 = sub i32 541, %1135
  %1137 = load i32, ptr %424, align 4
  %1138 = add i32 %1136, %1137
  %1139 = load ptr, ptr %1071, align 4
  %1140 = load ptr, ptr %1139, align 8
  %1141 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1140, i32 0, i32 3
  %1142 = load ptr, ptr %1141, align 4
  %1143 = shl i32 %1138, 2
  tail call void %1142(ptr noundef %1139, i32 noundef %1143, i32 noundef 1) #6
  %1144 = load i32, ptr %10, align 4
  %1145 = icmp eq i32 %1144, 1
  br i1 %1145, label %1146, label %1207

1146:                                             ; preds = %1134
  %1147 = load i32, ptr %427, align 4
  %1148 = sub i32 542, %1147
  %1149 = load i32, ptr %424, align 4
  %1150 = add i32 %1148, %1149
  %1151 = load ptr, ptr %1071, align 4
  %1152 = load ptr, ptr %1151, align 8
  %1153 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1152, i32 0, i32 3
  %1154 = load ptr, ptr %1153, align 4
  %1155 = shl i32 %1150, 2
  tail call void %1154(ptr noundef %1151, i32 noundef %1155, i32 noundef 1) #6
  %1156 = load i32, ptr %10, align 4
  %1157 = icmp eq i32 %1156, 1
  br i1 %1157, label %1158, label %1207

1158:                                             ; preds = %1146
  %1159 = load i32, ptr %427, align 4
  %1160 = sub i32 543, %1159
  %1161 = load i32, ptr %424, align 4
  %1162 = add i32 %1160, %1161
  %1163 = load ptr, ptr %1071, align 4
  %1164 = load ptr, ptr %1163, align 8
  %1165 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1164, i32 0, i32 3
  %1166 = load ptr, ptr %1165, align 4
  %1167 = shl i32 %1162, 2
  tail call void %1166(ptr noundef %1163, i32 noundef %1167, i32 noundef 1) #6
  br label %1168

1168:                                             ; preds = %1158, %1059
  %1169 = load i32, ptr %10, align 4
  %1170 = icmp eq i32 %1169, 1
  br i1 %1170, label %1171, label %1207

1171:                                             ; preds = %1168
  %1172 = load i32, ptr %427, align 4
  %1173 = sub i32 544, %1172
  %1174 = load i32, ptr %424, align 4
  %1175 = add i32 %1173, %1174
  %1176 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1177 = load ptr, ptr %1176, align 4
  %1178 = load ptr, ptr %1177, align 8
  %1179 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1178, i32 0, i32 3
  %1180 = load ptr, ptr %1179, align 4
  %1181 = shl i32 %1175, 2
  tail call void %1180(ptr noundef %1177, i32 noundef %1181, i32 noundef 64) #6
  %1182 = load i32, ptr %10, align 4
  %1183 = icmp eq i32 %1182, 1
  br i1 %1183, label %1184, label %1207

1184:                                             ; preds = %1171
  %1185 = load i32, ptr %427, align 4
  %1186 = sub i32 545, %1185
  %1187 = load i32, ptr %424, align 4
  %1188 = add i32 %1186, %1187
  %1189 = load ptr, ptr %1176, align 4
  %1190 = load ptr, ptr %1189, align 8
  %1191 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1190, i32 0, i32 3
  %1192 = load ptr, ptr %1191, align 4
  %1193 = shl i32 %1188, 2
  tail call void %1192(ptr noundef %1189, i32 noundef %1193, i32 noundef 64) #6
  %1194 = load i32, ptr %10, align 4
  %1195 = icmp eq i32 %1194, 1
  br i1 %1195, label %1196, label %1207

1196:                                             ; preds = %1184
  %1197 = load i32, ptr %427, align 4
  %1198 = sub i32 546, %1197
  %1199 = load i32, ptr %424, align 4
  %1200 = add i32 %1198, %1199
  %1201 = load ptr, ptr %1176, align 4
  %1202 = load ptr, ptr %1201, align 8
  %1203 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1202, i32 0, i32 3
  %1204 = load ptr, ptr %1203, align 4
  %1205 = shl i32 %1200, 2
  tail call void %1204(ptr noundef %1201, i32 noundef %1205, i32 noundef 64) #6
  %1206 = load i32, ptr %10, align 4
  br label %1207

1207:                                             ; preds = %1196, %1184, %1171, %1168, %1146, %1134, %1122, %1110, %1098, %1086, %1074, %1070
  %1208 = phi i32 [ %1194, %1184 ], [ %1169, %1168 ], [ %1182, %1171 ], [ %1206, %1196 ], [ %1156, %1146 ], [ %1144, %1134 ], [ %1132, %1122 ], [ %1120, %1110 ], [ %1108, %1098 ], [ %1096, %1086 ], [ %1084, %1074 ], [ %1072, %1070 ]
  store i32 549, ptr %427, align 4
  %1209 = load i32, ptr %425, align 4
  store i32 %1209, ptr %424, align 4
  %1210 = add i32 %1209, 11
  store i32 %1210, ptr %425, align 4
  %1211 = load ptr, ptr %8, align 4
  %1212 = icmp eq i32 %1208, 0
  br i1 %1212, label %1213, label %1224

1213:                                             ; preds = %1207
  %1214 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1215 = load i32, ptr %1214, align 4
  %1216 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1217 = load i32, ptr %1216, align 4
  %1218 = icmp eq i32 %1215, %1217
  br i1 %1218, label %1219, label %1220, !prof !8

1219:                                             ; preds = %1213
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1220:                                             ; preds = %1213
  %1221 = add i32 %1215, 1
  store i32 %1221, ptr %1214, align 4
  %1222 = getelementptr i32, ptr %1211, i32 %1215
  store i32 1229349, ptr %1222, align 4
  %1223 = load i32, ptr %10, align 4
  br label %1224

1224:                                             ; preds = %1220, %1207
  %1225 = phi i32 [ %1208, %1207 ], [ %1223, %1220 ]
  %1226 = icmp eq i32 %1225, 1
  br i1 %1226, label %1227, label %1238

1227:                                             ; preds = %1224
  %1228 = load i32, ptr %427, align 4
  %1229 = sub i32 549, %1228
  %1230 = load i32, ptr %424, align 4
  %1231 = add i32 %1229, %1230
  %1232 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1233 = load ptr, ptr %1232, align 4
  %1234 = load ptr, ptr %1233, align 8
  %1235 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1234, i32 0, i32 3
  %1236 = load ptr, ptr %1235, align 4
  %1237 = shl i32 %1231, 2
  tail call void %1236(ptr noundef %1233, i32 noundef %1237, i32 noundef 64) #6
  br label %1238

1238:                                             ; preds = %1227, %1224
  %1239 = load ptr, ptr %0, align 4
  %1240 = getelementptr inbounds %struct.nvkm_device, ptr %1239, i32 0, i32 16
  %1241 = load i32, ptr %1240, align 4
  %1242 = and i32 %1241, 240
  %1243 = icmp ne i32 %1242, 96
  %1244 = and i32 %1241, 15
  %1245 = lshr i32 -2736, %1244
  %1246 = and i32 %1245, 1
  %1247 = icmp eq i32 %1246, 0
  %1248 = select i1 %1243, i1 %1247, i1 false
  br i1 %1248, label %1249, label %1347

1249:                                             ; preds = %1238
  %1250 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1251 = load i32, ptr %10, align 4
  %1252 = icmp eq i32 %1251, 1
  br i1 %1252, label %1253, label %1347

1253:                                             ; preds = %1249
  %1254 = load i32, ptr %427, align 4
  %1255 = sub i32 552, %1254
  %1256 = load i32, ptr %424, align 4
  %1257 = add i32 %1255, %1256
  %1258 = load ptr, ptr %1250, align 4
  %1259 = load ptr, ptr %1258, align 8
  %1260 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1259, i32 0, i32 3
  %1261 = load ptr, ptr %1260, align 4
  %1262 = shl i32 %1257, 2
  tail call void %1261(ptr noundef %1258, i32 noundef %1262, i32 noundef -2147483648) #6
  %1263 = load i32, ptr %10, align 4
  %1264 = icmp eq i32 %1263, 1
  br i1 %1264, label %1265, label %1347

1265:                                             ; preds = %1253
  %1266 = load i32, ptr %427, align 4
  %1267 = sub i32 553, %1266
  %1268 = load i32, ptr %424, align 4
  %1269 = add i32 %1267, %1268
  %1270 = load ptr, ptr %1250, align 4
  %1271 = load ptr, ptr %1270, align 8
  %1272 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1271, i32 0, i32 3
  %1273 = load ptr, ptr %1272, align 4
  %1274 = shl i32 %1269, 2
  tail call void %1273(ptr noundef %1270, i32 noundef %1274, i32 noundef -2147483648) #6
  %1275 = load i32, ptr %10, align 4
  %1276 = icmp eq i32 %1275, 1
  br i1 %1276, label %1277, label %1347

1277:                                             ; preds = %1265
  %1278 = load i32, ptr %427, align 4
  %1279 = sub i32 554, %1278
  %1280 = load i32, ptr %424, align 4
  %1281 = add i32 %1279, %1280
  %1282 = load ptr, ptr %1250, align 4
  %1283 = load ptr, ptr %1282, align 8
  %1284 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1283, i32 0, i32 3
  %1285 = load ptr, ptr %1284, align 4
  %1286 = shl i32 %1281, 2
  tail call void %1285(ptr noundef %1282, i32 noundef %1286, i32 noundef -2147483648) #6
  %1287 = load i32, ptr %10, align 4
  %1288 = icmp eq i32 %1287, 1
  br i1 %1288, label %1289, label %1347

1289:                                             ; preds = %1277
  %1290 = load i32, ptr %427, align 4
  %1291 = sub i32 555, %1290
  %1292 = load i32, ptr %424, align 4
  %1293 = add i32 %1291, %1292
  %1294 = load ptr, ptr %1250, align 4
  %1295 = load ptr, ptr %1294, align 8
  %1296 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1295, i32 0, i32 3
  %1297 = load ptr, ptr %1296, align 4
  %1298 = shl i32 %1293, 2
  tail call void %1297(ptr noundef %1294, i32 noundef %1298, i32 noundef -2147483648) #6
  %1299 = load i32, ptr %10, align 4
  %1300 = icmp eq i32 %1299, 1
  br i1 %1300, label %1301, label %1347

1301:                                             ; preds = %1289
  %1302 = load i32, ptr %427, align 4
  %1303 = sub i32 556, %1302
  %1304 = load i32, ptr %424, align 4
  %1305 = add i32 %1303, %1304
  %1306 = load ptr, ptr %1250, align 4
  %1307 = load ptr, ptr %1306, align 8
  %1308 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1307, i32 0, i32 3
  %1309 = load ptr, ptr %1308, align 4
  %1310 = shl i32 %1305, 2
  tail call void %1309(ptr noundef %1306, i32 noundef %1310, i32 noundef -2147483648) #6
  %1311 = load i32, ptr %10, align 4
  %1312 = icmp eq i32 %1311, 1
  br i1 %1312, label %1313, label %1347

1313:                                             ; preds = %1301
  %1314 = load i32, ptr %427, align 4
  %1315 = sub i32 557, %1314
  %1316 = load i32, ptr %424, align 4
  %1317 = add i32 %1315, %1316
  %1318 = load ptr, ptr %1250, align 4
  %1319 = load ptr, ptr %1318, align 8
  %1320 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1319, i32 0, i32 3
  %1321 = load ptr, ptr %1320, align 4
  %1322 = shl i32 %1317, 2
  tail call void %1321(ptr noundef %1318, i32 noundef %1322, i32 noundef -2147483648) #6
  %1323 = load i32, ptr %10, align 4
  %1324 = icmp eq i32 %1323, 1
  br i1 %1324, label %1325, label %1347

1325:                                             ; preds = %1313
  %1326 = load i32, ptr %427, align 4
  %1327 = sub i32 558, %1326
  %1328 = load i32, ptr %424, align 4
  %1329 = add i32 %1327, %1328
  %1330 = load ptr, ptr %1250, align 4
  %1331 = load ptr, ptr %1330, align 8
  %1332 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1331, i32 0, i32 3
  %1333 = load ptr, ptr %1332, align 4
  %1334 = shl i32 %1329, 2
  tail call void %1333(ptr noundef %1330, i32 noundef %1334, i32 noundef -2147483648) #6
  %1335 = load i32, ptr %10, align 4
  %1336 = icmp eq i32 %1335, 1
  br i1 %1336, label %1337, label %1349

1337:                                             ; preds = %1325
  %1338 = load i32, ptr %427, align 4
  %1339 = sub i32 559, %1338
  %1340 = load i32, ptr %424, align 4
  %1341 = add i32 %1339, %1340
  %1342 = load ptr, ptr %1250, align 4
  %1343 = load ptr, ptr %1342, align 8
  %1344 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1343, i32 0, i32 3
  %1345 = load ptr, ptr %1344, align 4
  %1346 = shl i32 %1341, 2
  tail call void %1345(ptr noundef %1342, i32 noundef %1346, i32 noundef -2147483648) #6
  br label %1347

1347:                                             ; preds = %1337, %1313, %1301, %1289, %1277, %1265, %1253, %1249, %1238
  %1348 = load i32, ptr %10, align 4
  br label %1349

1349:                                             ; preds = %1347, %1325
  %1350 = phi i32 [ %1348, %1347 ], [ %1335, %1325 ]
  store i32 568, ptr %427, align 4
  %1351 = load i32, ptr %425, align 4
  store i32 %1351, ptr %424, align 4
  %1352 = add i32 %1351, 2
  store i32 %1352, ptr %425, align 4
  %1353 = load ptr, ptr %8, align 4
  %1354 = icmp eq i32 %1350, 0
  br i1 %1354, label %1357, label %1355

1355:                                             ; preds = %1349
  store i32 574, ptr %427, align 4
  store i32 %1352, ptr %424, align 4
  %1356 = add i32 %1351, 4
  store i32 %1356, ptr %425, align 4
  br label %1380

1357:                                             ; preds = %1349
  %1358 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1359 = load i32, ptr %1358, align 4
  %1360 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1361 = load i32, ptr %1360, align 4
  %1362 = icmp eq i32 %1359, %1361
  br i1 %1362, label %1363, label %1364, !prof !8

1363:                                             ; preds = %1357
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1364:                                             ; preds = %1357
  %1365 = add i32 %1359, 1
  store i32 %1365, ptr %1358, align 4
  %1366 = getelementptr i32, ptr %1353, i32 %1359
  store i32 1081912, ptr %1366, align 4
  %1367 = load i32, ptr %10, align 4
  %1368 = load i32, ptr %425, align 4
  %1369 = load ptr, ptr %8, align 4
  store i32 574, ptr %427, align 4
  store i32 %1368, ptr %424, align 4
  %1370 = add i32 %1368, 2
  store i32 %1370, ptr %425, align 4
  %1371 = icmp eq i32 %1367, 0
  br i1 %1371, label %1372, label %1380

1372:                                             ; preds = %1364
  %1373 = load i32, ptr %1358, align 4
  %1374 = load i32, ptr %1360, align 4
  %1375 = icmp eq i32 %1373, %1374
  br i1 %1375, label %1376, label %1377, !prof !8

1376:                                             ; preds = %1372
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1377:                                             ; preds = %1372
  %1378 = add i32 %1373, 1
  store i32 %1378, ptr %1358, align 4
  %1379 = getelementptr i32, ptr %1369, i32 %1373
  store i32 1081918, ptr %1379, align 4
  br label %1380

1380:                                             ; preds = %1377, %1364, %1355
  %1381 = load i32, ptr %785, align 4
  %1382 = icmp eq i32 %1381, 76
  %1383 = and i32 %1381, 240
  %1384 = icmp eq i32 %1383, 96
  %1385 = or i1 %1382, %1384
  br i1 %1385, label %1386, label %1402

1386:                                             ; preds = %1380
  store i32 638, ptr %427, align 4
  %1387 = load i32, ptr %425, align 4
  store i32 %1387, ptr %424, align 4
  %1388 = add i32 %1387, 1
  store i32 %1388, ptr %425, align 4
  %1389 = load ptr, ptr %8, align 4
  %1390 = load i32, ptr %10, align 4
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1392, label %1404

1392:                                             ; preds = %1386
  %1393 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1394 = load i32, ptr %1393, align 4
  %1395 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1396 = load i32, ptr %1395, align 4
  %1397 = icmp eq i32 %1394, %1396
  br i1 %1397, label %1398, label %1399, !prof !8

1398:                                             ; preds = %1392
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1399:                                             ; preds = %1392
  %1400 = add i32 %1394, 1
  store i32 %1400, ptr %1393, align 4
  %1401 = getelementptr i32, ptr %1389, i32 %1394
  store i32 1065598, ptr %1401, align 4
  br label %1402

1402:                                             ; preds = %1399, %1380, %1033
  %1403 = load i32, ptr %10, align 4
  br label %1404

1404:                                             ; preds = %1402, %1386, %1020, %1017
  %1405 = phi i32 [ %1403, %1402 ], [ %1390, %1386 ], [ %1031, %1020 ], [ %1018, %1017 ]
  store i32 640, ptr %427, align 4
  %1406 = load i32, ptr %425, align 4
  store i32 %1406, ptr %424, align 4
  %1407 = add i32 %1406, 73
  store i32 %1407, ptr %425, align 4
  %1408 = load ptr, ptr %8, align 4
  %1409 = icmp eq i32 %1405, 0
  br i1 %1409, label %1410, label %1434

1410:                                             ; preds = %1404
  %1411 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1412 = load i32, ptr %1411, align 4
  %1413 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1414 = load i32, ptr %1413, align 4
  %1415 = icmp eq i32 %1412, %1414
  br i1 %1415, label %1416, label %1417, !prof !8

1416:                                             ; preds = %1410
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1417:                                             ; preds = %1410
  %1418 = add i32 %1412, 1
  store i32 %1418, ptr %1411, align 4
  %1419 = getelementptr i32, ptr %1408, i32 %1412
  store i32 2097225, ptr %1419, align 4
  %1420 = load i32, ptr %427, align 4
  %1421 = load ptr, ptr %8, align 4
  %1422 = load i32, ptr %10, align 4
  %1423 = or i32 %1420, 1048576
  %1424 = icmp eq i32 %1422, 0
  br i1 %1424, label %1425, label %1434

1425:                                             ; preds = %1417
  %1426 = load i32, ptr %1411, align 4
  %1427 = load i32, ptr %1413, align 4
  %1428 = icmp eq i32 %1426, %1427
  br i1 %1428, label %1429, label %1430, !prof !8

1429:                                             ; preds = %1425
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1430:                                             ; preds = %1425
  %1431 = add i32 %1426, 1
  store i32 %1431, ptr %1411, align 4
  %1432 = getelementptr i32, ptr %1421, i32 %1426
  store i32 %1423, ptr %1432, align 4
  %1433 = load i32, ptr %10, align 4
  br label %1434

1434:                                             ; preds = %1430, %1417, %1404
  %1435 = phi i32 [ %1422, %1417 ], [ %1433, %1430 ], [ %1405, %1404 ]
  %1436 = icmp eq i32 %1435, 1
  br i1 %1436, label %1437, label %1449

1437:                                             ; preds = %1434
  %1438 = load i32, ptr %427, align 4
  %1439 = sub i32 707, %1438
  %1440 = load i32, ptr %424, align 4
  %1441 = add i32 %1439, %1440
  %1442 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1443 = load ptr, ptr %1442, align 4
  %1444 = load ptr, ptr %1443, align 8
  %1445 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1444, i32 0, i32 3
  %1446 = load ptr, ptr %1445, align 4
  %1447 = shl i32 %1441, 2
  tail call void %1446(ptr noundef %1443, i32 noundef %1447, i32 noundef 185273100) #6
  %1448 = load i32, ptr %10, align 4
  br label %1449

1449:                                             ; preds = %1437, %1434
  %1450 = phi i32 [ %1435, %1434 ], [ %1448, %1437 ]
  store i32 1024, ptr %427, align 4
  %1451 = load i32, ptr %425, align 4
  store i32 %1451, ptr %424, align 4
  %1452 = add i32 %1451, 4
  store i32 %1452, ptr %425, align 4
  %1453 = load ptr, ptr %8, align 4
  %1454 = icmp eq i32 %1450, 0
  br i1 %1454, label %1457, label %1455

1455:                                             ; preds = %1449
  store i32 5121, ptr %427, align 4
  store i32 %1452, ptr %424, align 4
  %1456 = add i32 %1451, 5
  store i32 %1456, ptr %425, align 4
  br label %1480

1457:                                             ; preds = %1449
  %1458 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1459 = load i32, ptr %1458, align 4
  %1460 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1461 = load i32, ptr %1460, align 4
  %1462 = icmp eq i32 %1459, %1461
  br i1 %1462, label %1463, label %1464, !prof !8

1463:                                             ; preds = %1457
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1464:                                             ; preds = %1457
  %1465 = add i32 %1459, 1
  store i32 %1465, ptr %1458, align 4
  %1466 = getelementptr i32, ptr %1453, i32 %1459
  store i32 1115136, ptr %1466, align 4
  %1467 = load i32, ptr %10, align 4
  %1468 = load i32, ptr %425, align 4
  %1469 = load ptr, ptr %8, align 4
  store i32 5121, ptr %427, align 4
  store i32 %1468, ptr %424, align 4
  %1470 = add i32 %1468, 1
  store i32 %1470, ptr %425, align 4
  %1471 = icmp eq i32 %1467, 0
  br i1 %1471, label %1472, label %1480

1472:                                             ; preds = %1464
  %1473 = load i32, ptr %1458, align 4
  %1474 = load i32, ptr %1460, align 4
  %1475 = icmp eq i32 %1473, %1474
  br i1 %1475, label %1476, label %1477, !prof !8

1476:                                             ; preds = %1472
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1477:                                             ; preds = %1472
  %1478 = add i32 %1473, 1
  store i32 %1478, ptr %1458, align 4
  %1479 = getelementptr i32, ptr %1469, i32 %1473
  store i32 1070081, ptr %1479, align 4
  br label %1480

1480:                                             ; preds = %1477, %1464, %1455
  %1481 = load i32, ptr %785, align 4
  switch i32 %1481, label %1513 [
    i32 71, label %1482
    i32 73, label %1482
    i32 75, label %1482
  ]

1482:                                             ; preds = %1480, %1480, %1480
  store i32 3346, ptr %427, align 4
  %1483 = load i32, ptr %425, align 4
  store i32 %1483, ptr %424, align 4
  %1484 = add i32 %1483, 1
  store i32 %1484, ptr %425, align 4
  %1485 = load ptr, ptr %8, align 4
  %1486 = load i32, ptr %10, align 4
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1488, label %1499

1488:                                             ; preds = %1482
  %1489 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1490 = load i32, ptr %1489, align 4
  %1491 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1492 = load i32, ptr %1491, align 4
  %1493 = icmp eq i32 %1490, %1492
  br i1 %1493, label %1494, label %1495, !prof !8

1494:                                             ; preds = %1488
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1495:                                             ; preds = %1488
  %1496 = add i32 %1490, 1
  store i32 %1496, ptr %1489, align 4
  %1497 = getelementptr i32, ptr %1485, i32 %1490
  store i32 1068306, ptr %1497, align 4
  %1498 = load i32, ptr %10, align 4
  br label %1499

1499:                                             ; preds = %1495, %1482
  %1500 = phi i32 [ %1486, %1482 ], [ %1498, %1495 ]
  %1501 = icmp eq i32 %1500, 1
  br i1 %1501, label %1502, label %1575

1502:                                             ; preds = %1499
  %1503 = load i32, ptr %427, align 4
  %1504 = sub i32 3346, %1503
  %1505 = load i32, ptr %424, align 4
  %1506 = add i32 %1504, %1505
  %1507 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1508 = load ptr, ptr %1507, align 4
  %1509 = load ptr, ptr %1508, align 8
  %1510 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1509, i32 0, i32 3
  %1511 = load ptr, ptr %1510, align 4
  %1512 = shl i32 %1506, 2
  tail call void %1511(ptr noundef %1508, i32 noundef %1512, i32 noundef 4112) #6
  br label %1575

1513:                                             ; preds = %1480
  store i32 3344, ptr %427, align 4
  %1514 = load i32, ptr %425, align 4
  store i32 %1514, ptr %424, align 4
  %1515 = add i32 %1514, 1
  store i32 %1515, ptr %425, align 4
  %1516 = load ptr, ptr %8, align 4
  %1517 = load i32, ptr %10, align 4
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1519, label %1529

1519:                                             ; preds = %1513
  %1520 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1521 = load i32, ptr %1520, align 4
  %1522 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1523 = load i32, ptr %1522, align 4
  %1524 = icmp eq i32 %1521, %1523
  br i1 %1524, label %1525, label %1526, !prof !8

1525:                                             ; preds = %1519
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1526:                                             ; preds = %1519
  %1527 = add i32 %1521, 1
  store i32 %1527, ptr %1520, align 4
  %1528 = getelementptr i32, ptr %1516, i32 %1521
  store i32 1068304, ptr %1528, align 4
  br label %1529

1529:                                             ; preds = %1526, %1513
  %1530 = load i32, ptr %785, align 4
  %1531 = add i32 %1530, -64
  %1532 = tail call i32 @llvm.fshl.i32(i32 %1531, i32 %1531, i32 31) #6
  switch i32 %1532, label %1561 [
    i32 0, label %1533
    i32 2, label %1547
    i32 3, label %1547
    i32 5, label %1547
  ]

1533:                                             ; preds = %1529
  %1534 = load i32, ptr %10, align 4
  %1535 = icmp eq i32 %1534, 1
  br i1 %1535, label %1536, label %1577

1536:                                             ; preds = %1533
  %1537 = load i32, ptr %427, align 4
  %1538 = sub i32 3344, %1537
  %1539 = load i32, ptr %424, align 4
  %1540 = add i32 %1538, %1539
  %1541 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1542 = load ptr, ptr %1541, align 4
  %1543 = load ptr, ptr %1542, align 8
  %1544 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1543, i32 0, i32 3
  %1545 = load ptr, ptr %1544, align 4
  %1546 = shl i32 %1540, 2
  tail call void %1545(ptr noundef %1542, i32 noundef %1546, i32 noundef 16) #6
  br label %1575

1547:                                             ; preds = %1529, %1529, %1529
  %1548 = load i32, ptr %10, align 4
  %1549 = icmp eq i32 %1548, 1
  br i1 %1549, label %1550, label %1577

1550:                                             ; preds = %1547
  %1551 = load i32, ptr %427, align 4
  %1552 = sub i32 3344, %1551
  %1553 = load i32, ptr %424, align 4
  %1554 = add i32 %1552, %1553
  %1555 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1556 = load ptr, ptr %1555, align 4
  %1557 = load ptr, ptr %1556, align 8
  %1558 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1557, i32 0, i32 3
  %1559 = load ptr, ptr %1558, align 4
  %1560 = shl i32 %1554, 2
  tail call void %1559(ptr noundef %1556, i32 noundef %1560, i32 noundef 12304) #6
  br label %1575

1561:                                             ; preds = %1529
  %1562 = load i32, ptr %10, align 4
  %1563 = icmp eq i32 %1562, 1
  br i1 %1563, label %1564, label %1577

1564:                                             ; preds = %1561
  %1565 = load i32, ptr %427, align 4
  %1566 = sub i32 3344, %1565
  %1567 = load i32, ptr %424, align 4
  %1568 = add i32 %1566, %1567
  %1569 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1570 = load ptr, ptr %1569, align 4
  %1571 = load ptr, ptr %1570, align 8
  %1572 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1571, i32 0, i32 3
  %1573 = load ptr, ptr %1572, align 4
  %1574 = shl i32 %1568, 2
  tail call void %1573(ptr noundef %1570, i32 noundef %1574, i32 noundef 4112) #6
  br label %1575

1575:                                             ; preds = %1564, %1550, %1536, %1502, %1499
  %1576 = load i32, ptr %10, align 4
  br label %1577

1577:                                             ; preds = %1575, %1561, %1547, %1533
  %1578 = phi i32 [ %1576, %1575 ], [ %1534, %1533 ], [ %1548, %1547 ], [ %1562, %1561 ]
  %1579 = load ptr, ptr %8, align 4
  %1580 = icmp eq i32 %1578, 0
  br i1 %1580, label %1583, label %1581

1581:                                             ; preds = %1577
  %1582 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 7
  br label %1612

1583:                                             ; preds = %1577
  %1584 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1585 = load i32, ptr %1584, align 4
  %1586 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1587 = load i32, ptr %1586, align 4
  %1588 = icmp eq i32 %1585, %1587
  br i1 %1588, label %1589, label %1590, !prof !8

1589:                                             ; preds = %1583
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1590:                                             ; preds = %1583
  %1591 = add i32 %1585, 1
  store i32 %1591, ptr %1584, align 4
  %1592 = getelementptr i32, ptr %1579, i32 %1585
  store i32 5242976, ptr %1592, align 4
  %1593 = load ptr, ptr %8, align 4
  %1594 = load i32, ptr %10, align 4
  %1595 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 7
  %1596 = load i32, ptr %1595, align 4
  %1597 = shl i32 %1596, 8
  %1598 = icmp eq i32 %1597, 0
  %1599 = or i32 %1597, 4194534
  %1600 = select i1 %1598, i32 -12580890, i32 %1599
  %1601 = icmp eq i32 %1594, 0
  br i1 %1601, label %1602, label %1612

1602:                                             ; preds = %1590
  %1603 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1604 = load i32, ptr %1603, align 4
  %1605 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1606 = load i32, ptr %1605, align 4
  %1607 = icmp eq i32 %1604, %1606
  br i1 %1607, label %1608, label %1609, !prof !8

1608:                                             ; preds = %1602
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1609:                                             ; preds = %1602
  %1610 = add i32 %1604, 1
  store i32 %1610, ptr %1603, align 4
  %1611 = getelementptr i32, ptr %1593, i32 %1604
  store i32 %1600, ptr %1611, align 4
  br label %1612

1612:                                             ; preds = %1609, %1590, %1581
  %1613 = phi ptr [ %1582, %1581 ], [ %1595, %1590 ], [ %1595, %1609 ]
  %1614 = load ptr, ptr %0, align 4
  %1615 = getelementptr inbounds %struct.nvkm_device, ptr %1614, i32 0, i32 16
  %1616 = load i32, ptr %1615, align 4
  switch i32 %1616, label %1721 [
    i32 64, label %1617
    i32 70, label %1648
    i32 71, label %1648
    i32 73, label %1648
    i32 75, label %1648
  ]

1617:                                             ; preds = %1612
  store i32 1568, ptr %427, align 4
  %1618 = load i32, ptr %425, align 4
  store i32 %1618, ptr %424, align 4
  %1619 = add i32 %1618, 51
  store i32 %1619, ptr %425, align 4
  %1620 = load ptr, ptr %8, align 4
  %1621 = load i32, ptr %10, align 4
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1623, label %1634

1623:                                             ; preds = %1617
  %1624 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1625 = load i32, ptr %1624, align 4
  %1626 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1627 = load i32, ptr %1626, align 4
  %1628 = icmp eq i32 %1625, %1627
  br i1 %1628, label %1629, label %1630, !prof !8

1629:                                             ; preds = %1623
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1630:                                             ; preds = %1623
  %1631 = add i32 %1625, 1
  store i32 %1631, ptr %1624, align 4
  %1632 = getelementptr i32, ptr %1620, i32 %1625
  store i32 1885728, ptr %1632, align 4
  %1633 = load i32, ptr %10, align 4
  br label %1634

1634:                                             ; preds = %1630, %1617
  %1635 = phi i32 [ %1621, %1617 ], [ %1633, %1630 ]
  %1636 = icmp eq i32 %1635, 1
  br i1 %1636, label %1637, label %1721

1637:                                             ; preds = %1634
  %1638 = load i32, ptr %427, align 4
  %1639 = sub i32 1616, %1638
  %1640 = load i32, ptr %424, align 4
  %1641 = add i32 %1639, %1640
  %1642 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1643 = load ptr, ptr %1642, align 4
  %1644 = load ptr, ptr %1643, align 8
  %1645 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1644, i32 0, i32 3
  %1646 = load ptr, ptr %1645, align 4
  %1647 = shl i32 %1641, 2
  tail call void %1646(ptr noundef %1643, i32 noundef %1647, i32 noundef 256) #6
  br label %1721

1648:                                             ; preds = %1612, %1612, %1612, %1612
  store i32 1568, ptr %427, align 4
  %1649 = load i32, ptr %425, align 4
  store i32 %1649, ptr %424, align 4
  %1650 = add i32 %1649, 32
  store i32 %1650, ptr %425, align 4
  %1651 = load ptr, ptr %8, align 4
  %1652 = load i32, ptr %10, align 4
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1654, label %1664

1654:                                             ; preds = %1648
  %1655 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1656 = load i32, ptr %1655, align 4
  %1657 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1658 = load i32, ptr %1657, align 4
  %1659 = icmp eq i32 %1656, %1658
  br i1 %1659, label %1660, label %1661, !prof !8

1660:                                             ; preds = %1654
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1661:                                             ; preds = %1654
  %1662 = add i32 %1656, 1
  store i32 %1662, ptr %1655, align 4
  %1663 = getelementptr i32, ptr %1651, i32 %1656
  store i32 1574432, ptr %1663, align 4
  br label %1664

1664:                                             ; preds = %1661, %1648
  %1665 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  br label %1666

1666:                                             ; preds = %1681, %1664
  %1667 = phi i32 [ 0, %1664 ], [ %1682, %1681 ]
  %1668 = load i32, ptr %10, align 4
  %1669 = icmp eq i32 %1668, 1
  br i1 %1669, label %1670, label %1681

1670:                                             ; preds = %1666
  %1671 = add nuw nsw i32 %1667, 1568
  %1672 = load i32, ptr %427, align 4
  %1673 = sub i32 %1671, %1672
  %1674 = load i32, ptr %424, align 4
  %1675 = add i32 %1673, %1674
  %1676 = load ptr, ptr %1665, align 4
  %1677 = load ptr, ptr %1676, align 8
  %1678 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1677, i32 0, i32 3
  %1679 = load ptr, ptr %1678, align 4
  %1680 = shl i32 %1675, 2
  tail call void %1679(ptr noundef %1676, i32 noundef %1680, i32 noundef 273) #6
  br label %1681

1681:                                             ; preds = %1670, %1666
  %1682 = add nuw nsw i32 %1667, 1
  %1683 = icmp eq i32 %1682, 16
  br i1 %1683, label %1684, label %1666

1684:                                             ; preds = %1681
  %1685 = load i32, ptr %1615, align 4
  %1686 = icmp eq i32 %1685, 70
  br i1 %1686, label %1687, label %1705

1687:                                             ; preds = %1684
  store i32 1600, ptr %427, align 4
  %1688 = load i32, ptr %425, align 4
  store i32 %1688, ptr %424, align 4
  %1689 = add i32 %1688, 16
  store i32 %1689, ptr %425, align 4
  %1690 = load ptr, ptr %8, align 4
  %1691 = load i32, ptr %10, align 4
  %1692 = icmp eq i32 %1691, 0
  br i1 %1692, label %1695, label %1693

1693:                                             ; preds = %1687
  %1694 = add i32 %1688, 19
  store i32 %1694, ptr %425, align 4
  br label %1721

1695:                                             ; preds = %1687
  %1696 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1697 = load i32, ptr %1696, align 4
  %1698 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1699 = load i32, ptr %1698, align 4
  %1700 = icmp eq i32 %1697, %1699
  br i1 %1700, label %1701, label %1702, !prof !8

1701:                                             ; preds = %1695
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1702:                                             ; preds = %1695
  %1703 = add i32 %1697, 1
  store i32 %1703, ptr %1696, align 4
  %1704 = getelementptr i32, ptr %1690, i32 %1697
  store i32 1312320, ptr %1704, align 4
  br label %1705

1705:                                             ; preds = %1702, %1684
  %1706 = load i32, ptr %10, align 4
  %1707 = load i32, ptr %425, align 4
  %1708 = load ptr, ptr %8, align 4
  store i32 1616, ptr %427, align 4
  store i32 %1707, ptr %424, align 4
  %1709 = add i32 %1707, 3
  store i32 %1709, ptr %425, align 4
  %1710 = icmp eq i32 %1706, 0
  br i1 %1710, label %1711, label %1721

1711:                                             ; preds = %1705
  %1712 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1713 = load i32, ptr %1712, align 4
  %1714 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1715 = load i32, ptr %1714, align 4
  %1716 = icmp eq i32 %1713, %1715
  br i1 %1716, label %1717, label %1718, !prof !8

1717:                                             ; preds = %1711
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1718:                                             ; preds = %1711
  %1719 = add i32 %1713, 1
  store i32 %1719, ptr %1712, align 4
  %1720 = getelementptr i32, ptr %1708, i32 %1713
  store i32 1099344, ptr %1720, align 4
  br label %1721

1721:                                             ; preds = %1718, %1705, %1693, %1637, %1634, %1612
  store i32 1619, ptr %427, align 4
  %1722 = load i32, ptr %425, align 4
  store i32 %1722, ptr %424, align 4
  %1723 = add i32 %1722, 18
  store i32 %1723, ptr %425, align 4
  %1724 = load ptr, ptr %8, align 4
  %1725 = load i32, ptr %10, align 4
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1727, label %1738

1727:                                             ; preds = %1721
  %1728 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1729 = load i32, ptr %1728, align 4
  %1730 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1731 = load i32, ptr %1730, align 4
  %1732 = icmp eq i32 %1729, %1731
  br i1 %1732, label %1733, label %1734, !prof !8

1733:                                             ; preds = %1727
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1734:                                             ; preds = %1727
  %1735 = add i32 %1729, 1
  store i32 %1735, ptr %1728, align 4
  %1736 = getelementptr i32, ptr %1724, i32 %1729
  store i32 1345107, ptr %1736, align 4
  %1737 = load i32, ptr %10, align 4
  br label %1738

1738:                                             ; preds = %1734, %1721
  %1739 = phi i32 [ %1725, %1721 ], [ %1737, %1734 ]
  %1740 = icmp eq i32 %1739, 1
  br i1 %1740, label %1741, label %1812

1741:                                             ; preds = %1738
  %1742 = load i32, ptr %427, align 4
  %1743 = sub i32 1621, %1742
  %1744 = load i32, ptr %424, align 4
  %1745 = add i32 %1743, %1744
  %1746 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1747 = load ptr, ptr %1746, align 4
  %1748 = load ptr, ptr %1747, align 8
  %1749 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1748, i32 0, i32 3
  %1750 = load ptr, ptr %1749, align 4
  %1751 = shl i32 %1745, 2
  tail call void %1750(ptr noundef %1747, i32 noundef %1751, i32 noundef 273) #6
  %1752 = load i32, ptr %10, align 4
  %1753 = icmp eq i32 %1752, 1
  br i1 %1753, label %1754, label %1812

1754:                                             ; preds = %1741
  %1755 = load i32, ptr %427, align 4
  %1756 = sub i32 1622, %1755
  %1757 = load i32, ptr %424, align 4
  %1758 = add i32 %1756, %1757
  %1759 = load ptr, ptr %1746, align 4
  %1760 = load ptr, ptr %1759, align 8
  %1761 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1760, i32 0, i32 3
  %1762 = load ptr, ptr %1761, align 4
  %1763 = shl i32 %1758, 2
  tail call void %1762(ptr noundef %1759, i32 noundef %1763, i32 noundef 524384) #6
  %1764 = load i32, ptr %10, align 4
  %1765 = icmp eq i32 %1764, 1
  br i1 %1765, label %1766, label %1812

1766:                                             ; preds = %1754
  %1767 = load i32, ptr %427, align 4
  %1768 = sub i32 1629, %1767
  %1769 = load i32, ptr %424, align 4
  %1770 = add i32 %1768, %1769
  %1771 = load ptr, ptr %1746, align 4
  %1772 = load ptr, ptr %1771, align 8
  %1773 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1772, i32 0, i32 3
  %1774 = load ptr, ptr %1773, align 4
  %1775 = shl i32 %1770, 2
  tail call void %1774(ptr noundef %1771, i32 noundef %1775, i32 noundef 128) #6
  %1776 = load i32, ptr %10, align 4
  %1777 = icmp eq i32 %1776, 1
  br i1 %1777, label %1778, label %1812

1778:                                             ; preds = %1766
  %1779 = load i32, ptr %427, align 4
  %1780 = sub i32 1630, %1779
  %1781 = load i32, ptr %424, align 4
  %1782 = add i32 %1780, %1781
  %1783 = load ptr, ptr %1746, align 4
  %1784 = load ptr, ptr %1783, align 8
  %1785 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1784, i32 0, i32 3
  %1786 = load ptr, ptr %1785, align 4
  %1787 = shl i32 %1782, 2
  tail call void %1786(ptr noundef %1783, i32 noundef %1787, i32 noundef -65536) #6
  %1788 = load i32, ptr %10, align 4
  %1789 = icmp eq i32 %1788, 1
  br i1 %1789, label %1790, label %1812

1790:                                             ; preds = %1778
  %1791 = load i32, ptr %427, align 4
  %1792 = sub i32 1631, %1791
  %1793 = load i32, ptr %424, align 4
  %1794 = add i32 %1792, %1793
  %1795 = load ptr, ptr %1746, align 4
  %1796 = load ptr, ptr %1795, align 8
  %1797 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1796, i32 0, i32 3
  %1798 = load ptr, ptr %1797, align 4
  %1799 = shl i32 %1794, 2
  tail call void %1798(ptr noundef %1795, i32 noundef %1799, i32 noundef 1) #6
  %1800 = load i32, ptr %10, align 4
  %1801 = icmp eq i32 %1800, 1
  br i1 %1801, label %1802, label %1812

1802:                                             ; preds = %1790
  %1803 = load i32, ptr %427, align 4
  %1804 = sub i32 1636, %1803
  %1805 = load i32, ptr %424, align 4
  %1806 = add i32 %1804, %1805
  %1807 = load ptr, ptr %1746, align 4
  %1808 = load ptr, ptr %1807, align 8
  %1809 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1808, i32 0, i32 3
  %1810 = load ptr, ptr %1809, align 4
  %1811 = shl i32 %1806, 2
  tail call void %1810(ptr noundef %1807, i32 noundef %1811, i32 noundef 1178599424) #6
  br label %1812

1812:                                             ; preds = %1802, %1790, %1778, %1766, %1754, %1741, %1738
  %1813 = load i32, ptr %1615, align 4
  %1814 = icmp eq i32 %1813, 64
  store i32 1640, ptr %427, align 4
  %1815 = load i32, ptr %425, align 4
  store i32 %1815, ptr %424, align 4
  br i1 %1814, label %1816, label %1846

1816:                                             ; preds = %1812
  %1817 = add i32 %1815, 2
  store i32 %1817, ptr %425, align 4
  %1818 = load ptr, ptr %8, align 4
  %1819 = load i32, ptr %10, align 4
  %1820 = icmp eq i32 %1819, 0
  br i1 %1820, label %1823, label %1821

1821:                                             ; preds = %1816
  store i32 1643, ptr %427, align 4
  store i32 %1817, ptr %424, align 4
  %1822 = add i32 %1815, 7
  store i32 %1822, ptr %425, align 4
  br label %1876

1823:                                             ; preds = %1816
  %1824 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1825 = load i32, ptr %1824, align 4
  %1826 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1827 = load i32, ptr %1826, align 4
  %1828 = icmp eq i32 %1825, %1827
  br i1 %1828, label %1829, label %1830, !prof !8

1829:                                             ; preds = %1823
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1830:                                             ; preds = %1823
  %1831 = add i32 %1825, 1
  store i32 %1831, ptr %1824, align 4
  %1832 = getelementptr i32, ptr %1818, i32 %1825
  store i32 1082984, ptr %1832, align 4
  %1833 = load i32, ptr %10, align 4
  %1834 = load i32, ptr %425, align 4
  %1835 = load ptr, ptr %8, align 4
  store i32 1643, ptr %427, align 4
  store i32 %1834, ptr %424, align 4
  %1836 = add i32 %1834, 5
  store i32 %1836, ptr %425, align 4
  %1837 = icmp eq i32 %1833, 0
  br i1 %1837, label %1838, label %1876

1838:                                             ; preds = %1830
  %1839 = load i32, ptr %1824, align 4
  %1840 = load i32, ptr %1826, align 4
  %1841 = icmp eq i32 %1839, %1840
  br i1 %1841, label %1842, label %1843, !prof !8

1842:                                             ; preds = %1838
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1843:                                             ; preds = %1838
  %1844 = add i32 %1839, 1
  store i32 %1844, ptr %1824, align 4
  %1845 = getelementptr i32, ptr %1835, i32 %1839
  store i32 1132139, ptr %1845, align 4
  br label %1876

1846:                                             ; preds = %1812
  %1847 = add i32 %1815, 1
  store i32 %1847, ptr %425, align 4
  %1848 = load ptr, ptr %8, align 4
  %1849 = load i32, ptr %10, align 4
  %1850 = icmp eq i32 %1849, 0
  br i1 %1850, label %1853, label %1851

1851:                                             ; preds = %1846
  store i32 1645, ptr %427, align 4
  store i32 %1847, ptr %424, align 4
  %1852 = add i32 %1815, 4
  store i32 %1852, ptr %425, align 4
  br label %1876

1853:                                             ; preds = %1846
  %1854 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1855 = load i32, ptr %1854, align 4
  %1856 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1857 = load i32, ptr %1856, align 4
  %1858 = icmp eq i32 %1855, %1857
  br i1 %1858, label %1859, label %1860, !prof !8

1859:                                             ; preds = %1853
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1860:                                             ; preds = %1853
  %1861 = add i32 %1855, 1
  store i32 %1861, ptr %1854, align 4
  %1862 = getelementptr i32, ptr %1848, i32 %1855
  store i32 1066600, ptr %1862, align 4
  %1863 = load i32, ptr %10, align 4
  %1864 = load i32, ptr %425, align 4
  %1865 = load ptr, ptr %8, align 4
  store i32 1645, ptr %427, align 4
  store i32 %1864, ptr %424, align 4
  %1866 = add i32 %1864, 3
  store i32 %1866, ptr %425, align 4
  %1867 = icmp eq i32 %1863, 0
  br i1 %1867, label %1868, label %1876

1868:                                             ; preds = %1860
  %1869 = load i32, ptr %1854, align 4
  %1870 = load i32, ptr %1856, align 4
  %1871 = icmp eq i32 %1869, %1870
  br i1 %1871, label %1872, label %1873, !prof !8

1872:                                             ; preds = %1868
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1873:                                             ; preds = %1868
  %1874 = add i32 %1869, 1
  store i32 %1874, ptr %1854, align 4
  %1875 = getelementptr i32, ptr %1865, i32 %1869
  store i32 1099373, ptr %1875, align 4
  br label %1876

1876:                                             ; preds = %1873, %1860, %1851, %1843, %1830, %1821
  %1877 = load i32, ptr %10, align 4
  %1878 = icmp eq i32 %1877, 1
  br i1 %1878, label %1879, label %1890

1879:                                             ; preds = %1876
  %1880 = load i32, ptr %427, align 4
  %1881 = sub i32 1647, %1880
  %1882 = load i32, ptr %424, align 4
  %1883 = add i32 %1881, %1882
  %1884 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1885 = load ptr, ptr %1884, align 4
  %1886 = load ptr, ptr %1885, align 8
  %1887 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1886, i32 0, i32 3
  %1888 = load ptr, ptr %1887, align 4
  %1889 = shl i32 %1883, 2
  tail call void %1888(ptr noundef %1885, i32 noundef %1889, i32 noundef -65536) #6
  br label %1890

1890:                                             ; preds = %1879, %1876
  %1891 = load i32, ptr %1615, align 4
  switch i32 %1891, label %1928 [
    i32 70, label %1892
    i32 71, label %1892
    i32 73, label %1892
    i32 75, label %1892
  ]

1892:                                             ; preds = %1890, %1890, %1890, %1890
  store i32 1648, ptr %427, align 4
  %1893 = load i32, ptr %425, align 4
  store i32 %1893, ptr %424, align 4
  %1894 = add i32 %1893, 18
  store i32 %1894, ptr %425, align 4
  %1895 = load ptr, ptr %8, align 4
  %1896 = load i32, ptr %10, align 4
  %1897 = icmp eq i32 %1896, 0
  br i1 %1897, label %1898, label %1908

1898:                                             ; preds = %1892
  %1899 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1900 = load i32, ptr %1899, align 4
  %1901 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1902 = load i32, ptr %1901, align 4
  %1903 = icmp eq i32 %1900, %1902
  br i1 %1903, label %1904, label %1905, !prof !8

1904:                                             ; preds = %1898
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1905:                                             ; preds = %1898
  %1906 = add i32 %1900, 1
  store i32 %1906, ptr %1899, align 4
  %1907 = getelementptr i32, ptr %1895, i32 %1900
  store i32 1345136, ptr %1907, align 4
  br label %1908

1908:                                             ; preds = %1905, %1892
  %1909 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  br label %1910

1910:                                             ; preds = %1925, %1908
  %1911 = phi i32 [ 0, %1908 ], [ %1926, %1925 ]
  %1912 = load i32, ptr %10, align 4
  %1913 = icmp eq i32 %1912, 1
  br i1 %1913, label %1914, label %1925

1914:                                             ; preds = %1910
  %1915 = add nuw nsw i32 %1911, 1648
  %1916 = load i32, ptr %427, align 4
  %1917 = sub i32 %1915, %1916
  %1918 = load i32, ptr %424, align 4
  %1919 = add i32 %1917, %1918
  %1920 = load ptr, ptr %1909, align 4
  %1921 = load ptr, ptr %1920, align 8
  %1922 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1921, i32 0, i32 3
  %1923 = load ptr, ptr %1922, align 4
  %1924 = shl i32 %1919, 2
  tail call void %1923(ptr noundef %1920, i32 noundef %1924, i32 noundef -2004318072) #6
  br label %1925

1925:                                             ; preds = %1914, %1910
  %1926 = add nuw nsw i32 %1911, 1
  %1927 = icmp eq i32 %1926, 16
  br i1 %1927, label %1928, label %1910

1928:                                             ; preds = %1925, %1890
  store i32 1666, ptr %427, align 4
  %1929 = load i32, ptr %425, align 4
  store i32 %1929, ptr %424, align 4
  %1930 = add i32 %1929, 8
  store i32 %1930, ptr %425, align 4
  %1931 = load ptr, ptr %8, align 4
  %1932 = load i32, ptr %10, align 4
  %1933 = icmp eq i32 %1932, 0
  br i1 %1933, label %1934, label %1945

1934:                                             ; preds = %1928
  %1935 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1936 = load i32, ptr %1935, align 4
  %1937 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1938 = load i32, ptr %1937, align 4
  %1939 = icmp eq i32 %1936, %1938
  br i1 %1939, label %1940, label %1941, !prof !8

1940:                                             ; preds = %1934
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1941:                                             ; preds = %1934
  %1942 = add i32 %1936, 1
  store i32 %1942, ptr %1935, align 4
  %1943 = getelementptr i32, ptr %1931, i32 %1936
  store i32 1181314, ptr %1943, align 4
  %1944 = load i32, ptr %10, align 4
  br label %1945

1945:                                             ; preds = %1941, %1928
  %1946 = phi i32 [ %1932, %1928 ], [ %1944, %1941 ]
  %1947 = icmp eq i32 %1946, 1
  br i1 %1947, label %1948, label %1984

1948:                                             ; preds = %1945
  %1949 = load i32, ptr %427, align 4
  %1950 = sub i32 1668, %1949
  %1951 = load i32, ptr %424, align 4
  %1952 = add i32 %1950, %1951
  %1953 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1954 = load ptr, ptr %1953, align 4
  %1955 = load ptr, ptr %1954, align 8
  %1956 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1955, i32 0, i32 3
  %1957 = load ptr, ptr %1956, align 4
  %1958 = shl i32 %1952, 2
  tail call void %1957(ptr noundef %1954, i32 noundef %1958, i32 noundef 268369920) #6
  %1959 = load i32, ptr %10, align 4
  %1960 = icmp eq i32 %1959, 1
  br i1 %1960, label %1961, label %1984

1961:                                             ; preds = %1948
  %1962 = load i32, ptr %427, align 4
  %1963 = sub i32 1669, %1962
  %1964 = load i32, ptr %424, align 4
  %1965 = add i32 %1963, %1964
  %1966 = load ptr, ptr %1953, align 4
  %1967 = load ptr, ptr %1966, align 8
  %1968 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1967, i32 0, i32 3
  %1969 = load ptr, ptr %1968, align 4
  %1970 = shl i32 %1965, 2
  tail call void %1969(ptr noundef %1966, i32 noundef %1970, i32 noundef 268369920) #6
  %1971 = load i32, ptr %10, align 4
  %1972 = icmp eq i32 %1971, 1
  br i1 %1972, label %1973, label %1984

1973:                                             ; preds = %1961
  %1974 = load i32, ptr %427, align 4
  %1975 = sub i32 1671, %1974
  %1976 = load i32, ptr %424, align 4
  %1977 = add i32 %1975, %1976
  %1978 = load ptr, ptr %1953, align 4
  %1979 = load ptr, ptr %1978, align 8
  %1980 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1979, i32 0, i32 3
  %1981 = load ptr, ptr %1980, align 4
  %1982 = shl i32 %1977, 2
  tail call void %1981(ptr noundef %1978, i32 noundef %1982, i32 noundef 69888) #6
  %1983 = load i32, ptr %10, align 4
  br label %1984

1984:                                             ; preds = %1973, %1961, %1948, %1945
  %1985 = phi i32 [ %1971, %1961 ], [ %1983, %1973 ], [ %1959, %1948 ], [ %1946, %1945 ]
  store i32 1675, ptr %427, align 4
  %1986 = load i32, ptr %425, align 4
  store i32 %1986, ptr %424, align 4
  %1987 = add i32 %1986, 4
  store i32 %1987, ptr %425, align 4
  %1988 = load ptr, ptr %8, align 4
  %1989 = icmp eq i32 %1985, 0
  br i1 %1989, label %1992, label %1990

1990:                                             ; preds = %1984
  store i32 1681, ptr %427, align 4
  store i32 %1987, ptr %424, align 4
  %1991 = add i32 %1986, 30
  store i32 %1991, ptr %425, align 4
  br label %2015

1992:                                             ; preds = %1984
  %1993 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1994 = load i32, ptr %1993, align 4
  %1995 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1996 = load i32, ptr %1995, align 4
  %1997 = icmp eq i32 %1994, %1996
  br i1 %1997, label %1998, label %1999, !prof !8

1998:                                             ; preds = %1992
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1999:                                             ; preds = %1992
  %2000 = add i32 %1994, 1
  store i32 %2000, ptr %1993, align 4
  %2001 = getelementptr i32, ptr %1988, i32 %1994
  store i32 1115787, ptr %2001, align 4
  %2002 = load i32, ptr %425, align 4
  %2003 = load ptr, ptr %8, align 4
  %2004 = load i32, ptr %10, align 4
  store i32 1681, ptr %427, align 4
  store i32 %2002, ptr %424, align 4
  %2005 = add i32 %2002, 26
  store i32 %2005, ptr %425, align 4
  %2006 = icmp eq i32 %2004, 0
  br i1 %2006, label %2007, label %2015

2007:                                             ; preds = %1999
  %2008 = load i32, ptr %1993, align 4
  %2009 = load i32, ptr %1995, align 4
  %2010 = icmp eq i32 %2008, %2009
  br i1 %2010, label %2011, label %2012, !prof !8

2011:                                             ; preds = %2007
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2012:                                             ; preds = %2007
  %2013 = add i32 %2008, 1
  store i32 %2013, ptr %1993, align 4
  %2014 = getelementptr i32, ptr %2003, i32 %2008
  store i32 1476241, ptr %2014, align 4
  br label %2015

2015:                                             ; preds = %2012, %1999, %1990
  %2016 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  br label %2017

2017:                                             ; preds = %2032, %2015
  %2018 = phi i32 [ 0, %2015 ], [ %2033, %2032 ]
  %2019 = load i32, ptr %10, align 4
  %2020 = icmp eq i32 %2019, 1
  br i1 %2020, label %2021, label %2032

2021:                                             ; preds = %2017
  %2022 = add nuw nsw i32 %2018, 1681
  %2023 = load i32, ptr %427, align 4
  %2024 = sub i32 %2022, %2023
  %2025 = load i32, ptr %424, align 4
  %2026 = add i32 %2024, %2025
  %2027 = load ptr, ptr %2016, align 4
  %2028 = load ptr, ptr %2027, align 8
  %2029 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2028, i32 0, i32 3
  %2030 = load ptr, ptr %2029, align 4
  %2031 = shl i32 %2026, 2
  tail call void %2030(ptr noundef %2027, i32 noundef %2031, i32 noundef 134152192) #6
  br label %2032

2032:                                             ; preds = %2021, %2017
  %2033 = add nuw nsw i32 %2018, 1
  %2034 = icmp eq i32 %2033, 16
  br i1 %2034, label %2035, label %2017

2035:                                             ; preds = %2032
  %2036 = load i32, ptr %10, align 4
  %2037 = icmp eq i32 %2036, 1
  br i1 %2037, label %2038, label %2048

2038:                                             ; preds = %2035
  %2039 = load i32, ptr %427, align 4
  %2040 = sub i32 1699, %2039
  %2041 = load i32, ptr %424, align 4
  %2042 = add i32 %2040, %2041
  %2043 = load ptr, ptr %2016, align 4
  %2044 = load ptr, ptr %2043, align 8
  %2045 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2044, i32 0, i32 3
  %2046 = load ptr, ptr %2045, align 4
  %2047 = shl i32 %2042, 2
  tail call void %2046(ptr noundef %2043, i32 noundef %2047, i32 noundef 1266679807) #6
  br label %2048

2048:                                             ; preds = %2038, %2035
  %2049 = load i32, ptr %1615, align 4
  %2050 = icmp eq i32 %2049, 64
  store i32 1710, ptr %427, align 4
  %2051 = load i32, ptr %425, align 4
  store i32 %2051, ptr %424, align 4
  br i1 %2050, label %2052, label %2069

2052:                                             ; preds = %2048
  %2053 = add i32 %2051, 3
  store i32 %2053, ptr %425, align 4
  %2054 = load ptr, ptr %8, align 4
  %2055 = load i32, ptr %10, align 4
  %2056 = icmp eq i32 %2055, 0
  br i1 %2056, label %2059, label %2057

2057:                                             ; preds = %2052
  store i32 1716, ptr %427, align 4
  store i32 %2053, ptr %424, align 4
  %2058 = add i32 %2051, 11
  store i32 %2058, ptr %425, align 4
  br label %2116

2059:                                             ; preds = %2052
  %2060 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2061 = load i32, ptr %2060, align 4
  %2062 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2063 = load i32, ptr %2062, align 4
  %2064 = icmp eq i32 %2061, %2063
  br i1 %2064, label %2065, label %2066, !prof !8

2065:                                             ; preds = %2059
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2066:                                             ; preds = %2059
  %2067 = add i32 %2061, 1
  store i32 %2067, ptr %2060, align 4
  %2068 = getelementptr i32, ptr %2054, i32 %2061
  store i32 1099438, ptr %2068, align 4
  br label %2099

2069:                                             ; preds = %2048
  %2070 = add i32 %2051, 1
  store i32 %2070, ptr %425, align 4
  %2071 = load ptr, ptr %8, align 4
  %2072 = load i32, ptr %10, align 4
  %2073 = icmp eq i32 %2072, 0
  br i1 %2073, label %2076, label %2074

2074:                                             ; preds = %2069
  %2075 = add i32 %2051, 2
  store i32 %2075, ptr %425, align 4
  br label %2099

2076:                                             ; preds = %2069
  %2077 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2078 = load i32, ptr %2077, align 4
  %2079 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2080 = load i32, ptr %2079, align 4
  %2081 = icmp eq i32 %2078, %2080
  br i1 %2081, label %2082, label %2083, !prof !8

2082:                                             ; preds = %2076
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2083:                                             ; preds = %2076
  %2084 = add i32 %2078, 1
  store i32 %2084, ptr %2077, align 4
  %2085 = getelementptr i32, ptr %2071, i32 %2078
  store i32 1066670, ptr %2085, align 4
  %2086 = load i32, ptr %10, align 4
  %2087 = load i32, ptr %425, align 4
  %2088 = load ptr, ptr %8, align 4
  store i32 1712, ptr %427, align 4
  store i32 %2087, ptr %424, align 4
  %2089 = add i32 %2087, 1
  store i32 %2089, ptr %425, align 4
  %2090 = icmp eq i32 %2086, 0
  br i1 %2090, label %2091, label %2099

2091:                                             ; preds = %2083
  %2092 = load i32, ptr %2077, align 4
  %2093 = load i32, ptr %2079, align 4
  %2094 = icmp eq i32 %2092, %2093
  br i1 %2094, label %2095, label %2096, !prof !8

2095:                                             ; preds = %2091
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2096:                                             ; preds = %2091
  %2097 = add i32 %2092, 1
  store i32 %2097, ptr %2077, align 4
  %2098 = getelementptr i32, ptr %2088, i32 %2092
  store i32 1066672, ptr %2098, align 4
  br label %2099

2099:                                             ; preds = %2096, %2083, %2074, %2066
  %2100 = load i32, ptr %10, align 4
  %2101 = load i32, ptr %425, align 4
  %2102 = load ptr, ptr %8, align 4
  store i32 1716, ptr %427, align 4
  store i32 %2101, ptr %424, align 4
  %2103 = add i32 %2101, 8
  store i32 %2103, ptr %425, align 4
  %2104 = icmp eq i32 %2100, 0
  br i1 %2104, label %2105, label %2116

2105:                                             ; preds = %2099
  %2106 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2107 = load i32, ptr %2106, align 4
  %2108 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2109 = load i32, ptr %2108, align 4
  %2110 = icmp eq i32 %2107, %2109
  br i1 %2110, label %2111, label %2112, !prof !8

2111:                                             ; preds = %2105
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2112:                                             ; preds = %2105
  %2113 = add i32 %2107, 1
  store i32 %2113, ptr %2106, align 4
  %2114 = getelementptr i32, ptr %2102, i32 %2107
  store i32 1181364, ptr %2114, align 4
  %2115 = load i32, ptr %10, align 4
  br label %2116

2116:                                             ; preds = %2112, %2099, %2057
  %2117 = phi i32 [ %2100, %2099 ], [ %2115, %2112 ], [ %2055, %2057 ]
  %2118 = icmp eq i32 %2117, 1
  br i1 %2118, label %2119, label %2166

2119:                                             ; preds = %2116
  %2120 = load i32, ptr %427, align 4
  %2121 = sub i32 1716, %2120
  %2122 = load i32, ptr %424, align 4
  %2123 = add i32 %2121, %2122
  %2124 = load ptr, ptr %2016, align 4
  %2125 = load ptr, ptr %2124, align 8
  %2126 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2125, i32 0, i32 3
  %2127 = load ptr, ptr %2126, align 4
  %2128 = shl i32 %2123, 2
  tail call void %2127(ptr noundef %2124, i32 noundef %2128, i32 noundef 807407616) #6
  %2129 = load i32, ptr %10, align 4
  %2130 = icmp eq i32 %2129, 1
  br i1 %2130, label %2131, label %2166

2131:                                             ; preds = %2119
  %2132 = load i32, ptr %427, align 4
  %2133 = sub i32 1717, %2132
  %2134 = load i32, ptr %424, align 4
  %2135 = add i32 %2133, %2134
  %2136 = load ptr, ptr %2016, align 4
  %2137 = load ptr, ptr %2136, align 8
  %2138 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2137, i32 0, i32 3
  %2139 = load ptr, ptr %2138, align 4
  %2140 = shl i32 %2135, 2
  tail call void %2139(ptr noundef %2136, i32 noundef %2140, i32 noundef 1885360192) #6
  %2141 = load i32, ptr %10, align 4
  %2142 = icmp eq i32 %2141, 1
  br i1 %2142, label %2143, label %2166

2143:                                             ; preds = %2131
  %2144 = load i32, ptr %427, align 4
  %2145 = sub i32 1718, %2144
  %2146 = load i32, ptr %424, align 4
  %2147 = add i32 %2145, %2146
  %2148 = load ptr, ptr %2016, align 4
  %2149 = load ptr, ptr %2148, align 8
  %2150 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2149, i32 0, i32 3
  %2151 = load ptr, ptr %2150, align 4
  %2152 = shl i32 %2147, 2
  tail call void %2151(ptr noundef %2148, i32 noundef %2152, i32 noundef -1196910456) #6
  %2153 = load i32, ptr %10, align 4
  %2154 = icmp eq i32 %2153, 1
  br i1 %2154, label %2155, label %2166

2155:                                             ; preds = %2143
  %2156 = load i32, ptr %427, align 4
  %2157 = sub i32 1719, %2156
  %2158 = load i32, ptr %424, align 4
  %2159 = add i32 %2157, %2158
  %2160 = load ptr, ptr %2016, align 4
  %2161 = load ptr, ptr %2160, align 8
  %2162 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2161, i32 0, i32 3
  %2163 = load ptr, ptr %2162, align 4
  %2164 = shl i32 %2159, 2
  tail call void %2163(ptr noundef %2160, i32 noundef %2164, i32 noundef -118957880) #6
  %2165 = load i32, ptr %10, align 4
  br label %2166

2166:                                             ; preds = %2155, %2143, %2131, %2119, %2116
  %2167 = phi i32 [ %2129, %2119 ], [ %2117, %2116 ], [ %2141, %2131 ], [ %2153, %2143 ], [ %2165, %2155 ]
  %2168 = load i32, ptr %1615, align 4
  %2169 = icmp eq i32 %2168, 64
  %2170 = select i1 %2169, i32 2, i32 1
  store i32 1732, ptr %427, align 4
  %2171 = load i32, ptr %425, align 4
  store i32 %2171, ptr %424, align 4
  %2172 = add i32 %2171, %2170
  store i32 %2172, ptr %425, align 4
  %2173 = shl nuw nsw i32 %2170, 14
  %2174 = or i32 %2173, 1050308
  %2175 = load ptr, ptr %8, align 4
  %2176 = icmp eq i32 %2167, 0
  br i1 %2176, label %2177, label %2188

2177:                                             ; preds = %2166
  %2178 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2179 = load i32, ptr %2178, align 4
  %2180 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2181 = load i32, ptr %2180, align 4
  %2182 = icmp eq i32 %2179, %2181
  br i1 %2182, label %2183, label %2184, !prof !8

2183:                                             ; preds = %2177
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2184:                                             ; preds = %2177
  %2185 = add i32 %2179, 1
  store i32 %2185, ptr %2178, align 4
  %2186 = getelementptr i32, ptr %2175, i32 %2179
  store i32 %2174, ptr %2186, align 4
  %2187 = load i32, ptr %10, align 4
  br label %2188

2188:                                             ; preds = %2184, %2166
  %2189 = phi i32 [ %2167, %2166 ], [ %2187, %2184 ]
  %2190 = icmp eq i32 %2189, 1
  br i1 %2190, label %2191, label %2202

2191:                                             ; preds = %2188
  %2192 = load i32, ptr %427, align 4
  %2193 = sub i32 1732, %2192
  %2194 = load i32, ptr %424, align 4
  %2195 = add i32 %2193, %2194
  %2196 = load ptr, ptr %2016, align 4
  %2197 = load ptr, ptr %2196, align 8
  %2198 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2197, i32 0, i32 3
  %2199 = load ptr, ptr %2198, align 4
  %2200 = shl i32 %2195, 2
  tail call void %2199(ptr noundef %2196, i32 noundef %2200, i32 noundef 1074790400) #6
  %2201 = load i32, ptr %10, align 4
  br label %2202

2202:                                             ; preds = %2191, %2188
  %2203 = phi i32 [ %2189, %2188 ], [ %2201, %2191 ]
  %2204 = load i32, ptr %1615, align 4
  %2205 = icmp eq i32 %2204, 64
  %2206 = select i1 %2205, i32 6, i32 5
  store i32 1734, ptr %427, align 4
  %2207 = load i32, ptr %425, align 4
  store i32 %2207, ptr %424, align 4
  %2208 = add i32 %2207, %2206
  store i32 %2208, ptr %425, align 4
  %2209 = shl nuw nsw i32 %2206, 14
  %2210 = or i32 %2209, 1050310
  %2211 = load ptr, ptr %8, align 4
  %2212 = icmp eq i32 %2203, 0
  br i1 %2212, label %2213, label %2224

2213:                                             ; preds = %2202
  %2214 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2215 = load i32, ptr %2214, align 4
  %2216 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2217 = load i32, ptr %2216, align 4
  %2218 = icmp eq i32 %2215, %2217
  br i1 %2218, label %2219, label %2220, !prof !8

2219:                                             ; preds = %2213
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2220:                                             ; preds = %2213
  %2221 = add i32 %2215, 1
  store i32 %2221, ptr %2214, align 4
  %2222 = getelementptr i32, ptr %2211, i32 %2215
  store i32 %2210, ptr %2222, align 4
  %2223 = load i32, ptr %10, align 4
  br label %2224

2224:                                             ; preds = %2220, %2202
  %2225 = phi i32 [ %2203, %2202 ], [ %2223, %2220 ]
  %2226 = icmp eq i32 %2225, 1
  br i1 %2226, label %2227, label %2241

2227:                                             ; preds = %2224
  %2228 = load i32, ptr %1615, align 4
  %2229 = icmp eq i32 %2228, 64
  %2230 = select i1 %2229, i32 4, i32 0
  %2231 = load i32, ptr %427, align 4
  %2232 = sub i32 1738, %2231
  %2233 = load i32, ptr %424, align 4
  %2234 = add i32 %2232, %2233
  %2235 = load ptr, ptr %2016, align 4
  %2236 = load ptr, ptr %2235, align 8
  %2237 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2236, i32 0, i32 3
  %2238 = load ptr, ptr %2237, align 4
  %2239 = shl i32 %2234, 2
  tail call void %2238(ptr noundef %2235, i32 noundef %2239, i32 noundef %2230) #6
  %2240 = load i32, ptr %10, align 4
  br label %2241

2241:                                             ; preds = %2227, %2224
  %2242 = phi i32 [ %2225, %2224 ], [ %2240, %2227 ]
  store i32 1740, ptr %427, align 4
  %2243 = load i32, ptr %425, align 4
  store i32 %2243, ptr %424, align 4
  %2244 = add i32 %2243, 25
  store i32 %2244, ptr %425, align 4
  %2245 = load ptr, ptr %8, align 4
  %2246 = icmp eq i32 %2242, 0
  br i1 %2246, label %2247, label %2258

2247:                                             ; preds = %2241
  %2248 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2249 = load i32, ptr %2248, align 4
  %2250 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2251 = load i32, ptr %2250, align 4
  %2252 = icmp eq i32 %2249, %2251
  br i1 %2252, label %2253, label %2254, !prof !8

2253:                                             ; preds = %2247
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2254:                                             ; preds = %2247
  %2255 = add i32 %2249, 1
  store i32 %2255, ptr %2248, align 4
  %2256 = getelementptr i32, ptr %2245, i32 %2249
  store i32 1459916, ptr %2256, align 4
  %2257 = load i32, ptr %10, align 4
  br label %2258

2258:                                             ; preds = %2254, %2241
  %2259 = phi i32 [ %2242, %2241 ], [ %2257, %2254 ]
  %2260 = icmp eq i32 %2259, 1
  br i1 %2260, label %2261, label %2355

2261:                                             ; preds = %2258
  %2262 = load i32, ptr %427, align 4
  %2263 = sub i32 1741, %2262
  %2264 = load i32, ptr %424, align 4
  %2265 = add i32 %2263, %2264
  %2266 = load ptr, ptr %2016, align 4
  %2267 = load ptr, ptr %2266, align 8
  %2268 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2267, i32 0, i32 3
  %2269 = load ptr, ptr %2268, align 4
  %2270 = shl i32 %2265, 2
  tail call void %2269(ptr noundef %2266, i32 noundef %2270, i32 noundef 65535) #6
  %2271 = load i32, ptr %10, align 4
  %2272 = icmp eq i32 %2271, 1
  br i1 %2272, label %2273, label %2355

2273:                                             ; preds = %2261
  %2274 = load i32, ptr %427, align 4
  %2275 = sub i32 1754, %2274
  %2276 = load i32, ptr %424, align 4
  %2277 = add i32 %2275, %2276
  %2278 = load ptr, ptr %2016, align 4
  %2279 = load ptr, ptr %2278, align 8
  %2280 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2279, i32 0, i32 3
  %2281 = load ptr, ptr %2280, align 4
  %2282 = shl i32 %2277, 2
  tail call void %2281(ptr noundef %2278, i32 noundef %2282, i32 noundef 1129416150) #6
  %2283 = load i32, ptr %10, align 4
  %2284 = icmp eq i32 %2283, 1
  br i1 %2284, label %2285, label %2355

2285:                                             ; preds = %2273
  %2286 = load i32, ptr %427, align 4
  %2287 = sub i32 1755, %2286
  %2288 = load i32, ptr %424, align 4
  %2289 = add i32 %2287, %2288
  %2290 = load ptr, ptr %2016, align 4
  %2291 = load ptr, ptr %2290, align 8
  %2292 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2291, i32 0, i32 3
  %2293 = load ptr, ptr %2292, align 4
  %2294 = shl i32 %2289, 2
  tail call void %2293(ptr noundef %2290, i32 noundef %2294, i32 noundef 559265433) #6
  %2295 = load i32, ptr %10, align 4
  %2296 = icmp eq i32 %2295, 1
  br i1 %2296, label %2297, label %2355

2297:                                             ; preds = %2285
  %2298 = load i32, ptr %427, align 4
  %2299 = sub i32 1756, %2298
  %2300 = load i32, ptr %424, align 4
  %2301 = add i32 %2299, %2300
  %2302 = load ptr, ptr %2016, align 4
  %2303 = load ptr, ptr %2302, align 8
  %2304 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2303, i32 0, i32 3
  %2305 = load ptr, ptr %2304, align 4
  %2306 = shl i32 %2301, 2
  tail call void %2305(ptr noundef %2302, i32 noundef %2306, i32 noundef -19088744) #6
  %2307 = load i32, ptr %10, align 4
  %2308 = icmp eq i32 %2307, 1
  br i1 %2308, label %2309, label %2355

2309:                                             ; preds = %2297
  %2310 = load i32, ptr %427, align 4
  %2311 = sub i32 1757, %2310
  %2312 = load i32, ptr %424, align 4
  %2313 = add i32 %2311, %2312
  %2314 = load ptr, ptr %2016, align 4
  %2315 = load ptr, ptr %2314, align 8
  %2316 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2315, i32 0, i32 3
  %2317 = load ptr, ptr %2316, align 4
  %2318 = shl i32 %2313, 2
  tail call void %2317(ptr noundef %2314, i32 noundef %2318, i32 noundef 152) #6
  %2319 = load i32, ptr %10, align 4
  %2320 = icmp eq i32 %2319, 1
  br i1 %2320, label %2321, label %2355

2321:                                             ; preds = %2309
  %2322 = load i32, ptr %427, align 4
  %2323 = sub i32 1761, %2322
  %2324 = load i32, ptr %424, align 4
  %2325 = add i32 %2323, %2324
  %2326 = load ptr, ptr %2016, align 4
  %2327 = load ptr, ptr %2326, align 8
  %2328 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2327, i32 0, i32 3
  %2329 = load ptr, ptr %2328, align 4
  %2330 = shl i32 %2325, 2
  tail call void %2329(ptr noundef %2326, i32 noundef %2330, i32 noundef -1) #6
  %2331 = load i32, ptr %10, align 4
  %2332 = icmp eq i32 %2331, 1
  br i1 %2332, label %2333, label %2355

2333:                                             ; preds = %2321
  %2334 = load i32, ptr %427, align 4
  %2335 = sub i32 1762, %2334
  %2336 = load i32, ptr %424, align 4
  %2337 = add i32 %2335, %2336
  %2338 = load ptr, ptr %2016, align 4
  %2339 = load ptr, ptr %2338, align 8
  %2340 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2339, i32 0, i32 3
  %2341 = load ptr, ptr %2340, align 4
  %2342 = shl i32 %2337, 2
  tail call void %2341(ptr noundef %2338, i32 noundef %2342, i32 noundef 16740352) #6
  %2343 = load i32, ptr %10, align 4
  %2344 = icmp eq i32 %2343, 1
  br i1 %2344, label %2345, label %2355

2345:                                             ; preds = %2333
  %2346 = load i32, ptr %427, align 4
  %2347 = sub i32 1763, %2346
  %2348 = load i32, ptr %424, align 4
  %2349 = add i32 %2347, %2348
  %2350 = load ptr, ptr %2016, align 4
  %2351 = load ptr, ptr %2350, align 8
  %2352 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2351, i32 0, i32 3
  %2353 = load ptr, ptr %2352, align 4
  %2354 = shl i32 %2349, 2
  tail call void %2353(ptr noundef %2350, i32 noundef %2354, i32 noundef 65535) #6
  br label %2355

2355:                                             ; preds = %2345, %2333, %2321, %2309, %2297, %2285, %2273, %2261, %2258
  %2356 = load i32, ptr %1615, align 4
  switch i32 %2356, label %2357 [
    i32 68, label %2375
    i32 74, label %2375
    i32 78, label %2375
  ]

2357:                                             ; preds = %2355
  store i32 1765, ptr %427, align 4
  %2358 = load i32, ptr %425, align 4
  store i32 %2358, ptr %424, align 4
  %2359 = add i32 %2358, 1
  store i32 %2359, ptr %425, align 4
  %2360 = load ptr, ptr %8, align 4
  %2361 = load i32, ptr %10, align 4
  %2362 = icmp eq i32 %2361, 0
  br i1 %2362, label %2365, label %2363

2363:                                             ; preds = %2357
  store i32 1766, ptr %427, align 4
  store i32 %2359, ptr %424, align 4
  %2364 = add i32 %2358, 9
  store i32 %2364, ptr %425, align 4
  br label %2392

2365:                                             ; preds = %2357
  %2366 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2367 = load i32, ptr %2366, align 4
  %2368 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2369 = load i32, ptr %2368, align 4
  %2370 = icmp eq i32 %2367, %2369
  br i1 %2370, label %2371, label %2372, !prof !8

2371:                                             ; preds = %2365
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2372:                                             ; preds = %2365
  %2373 = add i32 %2367, 1
  store i32 %2373, ptr %2366, align 4
  %2374 = getelementptr i32, ptr %2360, i32 %2367
  store i32 1066725, ptr %2374, align 4
  br label %2375

2375:                                             ; preds = %2372, %2355, %2355, %2355
  %2376 = load i32, ptr %10, align 4
  %2377 = load i32, ptr %425, align 4
  %2378 = load ptr, ptr %8, align 4
  store i32 1766, ptr %427, align 4
  store i32 %2377, ptr %424, align 4
  %2379 = add i32 %2377, 8
  store i32 %2379, ptr %425, align 4
  %2380 = icmp eq i32 %2376, 0
  br i1 %2380, label %2381, label %2392

2381:                                             ; preds = %2375
  %2382 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2383 = load i32, ptr %2382, align 4
  %2384 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2385 = load i32, ptr %2384, align 4
  %2386 = icmp eq i32 %2383, %2385
  br i1 %2386, label %2387, label %2388, !prof !8

2387:                                             ; preds = %2381
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2388:                                             ; preds = %2381
  %2389 = add i32 %2383, 1
  store i32 %2389, ptr %2382, align 4
  %2390 = getelementptr i32, ptr %2378, i32 %2383
  store i32 1181414, ptr %2390, align 4
  %2391 = load i32, ptr %10, align 4
  br label %2392

2392:                                             ; preds = %2388, %2375, %2363
  %2393 = phi i32 [ %2376, %2375 ], [ %2391, %2388 ], [ %2361, %2363 ]
  %2394 = icmp eq i32 %2393, 1
  br i1 %2394, label %2395, label %2406

2395:                                             ; preds = %2392
  %2396 = load i32, ptr %427, align 4
  %2397 = sub i32 1767, %2396
  %2398 = load i32, ptr %424, align 4
  %2399 = add i32 %2397, %2398
  %2400 = load ptr, ptr %2016, align 4
  %2401 = load ptr, ptr %2400, align 8
  %2402 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2401, i32 0, i32 3
  %2403 = load ptr, ptr %2402, align 4
  %2404 = shl i32 %2399, 2
  tail call void %2403(ptr noundef %2400, i32 noundef %2404, i32 noundef 16711680) #6
  %2405 = load i32, ptr %10, align 4
  br label %2406

2406:                                             ; preds = %2395, %2392
  %2407 = phi i32 [ %2393, %2392 ], [ %2405, %2395 ]
  store i32 1776, ptr %427, align 4
  %2408 = load i32, ptr %425, align 4
  store i32 %2408, ptr %424, align 4
  %2409 = add i32 %2408, 9
  store i32 %2409, ptr %425, align 4
  %2410 = load ptr, ptr %8, align 4
  %2411 = icmp eq i32 %2407, 0
  br i1 %2411, label %2412, label %2423

2412:                                             ; preds = %2406
  %2413 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2414 = load i32, ptr %2413, align 4
  %2415 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2416 = load i32, ptr %2415, align 4
  %2417 = icmp eq i32 %2414, %2416
  br i1 %2417, label %2418, label %2419, !prof !8

2418:                                             ; preds = %2412
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2419:                                             ; preds = %2412
  %2420 = add i32 %2414, 1
  store i32 %2420, ptr %2413, align 4
  %2421 = getelementptr i32, ptr %2410, i32 %2414
  store i32 1197808, ptr %2421, align 4
  %2422 = load i32, ptr %10, align 4
  br label %2423

2423:                                             ; preds = %2419, %2406
  %2424 = phi i32 [ %2407, %2406 ], [ %2422, %2419 ]
  %2425 = icmp eq i32 %2424, 1
  br i1 %2425, label %2426, label %2437

2426:                                             ; preds = %2423
  %2427 = load i32, ptr %427, align 4
  %2428 = sub i32 1784, %2427
  %2429 = load i32, ptr %424, align 4
  %2430 = add i32 %2428, %2429
  %2431 = load ptr, ptr %2016, align 4
  %2432 = load ptr, ptr %2431, align 8
  %2433 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2432, i32 0, i32 3
  %2434 = load ptr, ptr %2433, align 4
  %2435 = shl i32 %2430, 2
  tail call void %2434(ptr noundef %2431, i32 noundef %2435, i32 noundef 16776960) #6
  %2436 = load i32, ptr %10, align 4
  br label %2437

2437:                                             ; preds = %2426, %2423
  %2438 = phi i32 [ %2424, %2423 ], [ %2436, %2426 ]
  store i32 1792, ptr %427, align 4
  %2439 = load i32, ptr %425, align 4
  store i32 %2439, ptr %424, align 4
  %2440 = add i32 %2439, 192
  store i32 %2440, ptr %425, align 4
  %2441 = load ptr, ptr %8, align 4
  %2442 = icmp eq i32 %2438, 0
  br i1 %2442, label %2443, label %2466

2443:                                             ; preds = %2437
  %2444 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2445 = load i32, ptr %2444, align 4
  %2446 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2447 = load i32, ptr %2446, align 4
  %2448 = icmp eq i32 %2445, %2447
  br i1 %2448, label %2449, label %2450, !prof !8

2449:                                             ; preds = %2443
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2450:                                             ; preds = %2443
  %2451 = add i32 %2445, 1
  store i32 %2451, ptr %2444, align 4
  %2452 = getelementptr i32, ptr %2441, i32 %2445
  store i32 2097344, ptr %2452, align 4
  %2453 = load i32, ptr %427, align 4
  %2454 = or i32 %2453, 1048576
  %2455 = load ptr, ptr %8, align 4
  %2456 = load i32, ptr %10, align 4
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2458, label %2466

2458:                                             ; preds = %2450
  %2459 = load i32, ptr %2444, align 4
  %2460 = load i32, ptr %2446, align 4
  %2461 = icmp eq i32 %2459, %2460
  br i1 %2461, label %2462, label %2463, !prof !8

2462:                                             ; preds = %2458
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2463:                                             ; preds = %2458
  %2464 = add i32 %2459, 1
  store i32 %2464, ptr %2444, align 4
  %2465 = getelementptr i32, ptr %2455, i32 %2459
  store i32 %2454, ptr %2465, align 4
  br label %2466

2466:                                             ; preds = %2463, %2450, %2437
  br label %2467

2467:                                             ; preds = %2554, %2466
  %2468 = phi i32 [ %2555, %2554 ], [ 0, %2466 ]
  %2469 = shl i32 %2468, 2
  %2470 = load i32, ptr %10, align 4
  %2471 = icmp eq i32 %2470, 1
  br i1 %2471, label %2472, label %2554

2472:                                             ; preds = %2467
  %2473 = add nuw nsw i32 %2469, 7232
  %2474 = lshr exact i32 %2473, 2
  %2475 = load i32, ptr %427, align 4
  %2476 = sub i32 %2474, %2475
  %2477 = load i32, ptr %424, align 4
  %2478 = add i32 %2476, %2477
  %2479 = load ptr, ptr %2016, align 4
  %2480 = load ptr, ptr %2479, align 8
  %2481 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2480, i32 0, i32 3
  %2482 = load ptr, ptr %2481, align 4
  %2483 = shl i32 %2478, 2
  tail call void %2482(ptr noundef %2479, i32 noundef %2483, i32 noundef 99464) #6
  %2484 = load i32, ptr %10, align 4
  %2485 = icmp eq i32 %2484, 1
  br i1 %2485, label %2486, label %2554

2486:                                             ; preds = %2472
  %2487 = add nuw nsw i32 %2469, 7296
  %2488 = lshr exact i32 %2487, 2
  %2489 = load i32, ptr %427, align 4
  %2490 = sub i32 %2488, %2489
  %2491 = load i32, ptr %424, align 4
  %2492 = add i32 %2490, %2491
  %2493 = load ptr, ptr %2016, align 4
  %2494 = load ptr, ptr %2493, align 8
  %2495 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2494, i32 0, i32 3
  %2496 = load ptr, ptr %2495, align 4
  %2497 = shl i32 %2492, 2
  tail call void %2496(ptr noundef %2493, i32 noundef %2497, i32 noundef 164354) #6
  %2498 = load i32, ptr %10, align 4
  %2499 = icmp eq i32 %2498, 1
  br i1 %2499, label %2500, label %2554

2500:                                             ; preds = %2486
  %2501 = add nuw nsw i32 %2469, 7424
  %2502 = lshr exact i32 %2501, 2
  %2503 = load i32, ptr %427, align 4
  %2504 = sub i32 %2502, %2503
  %2505 = load i32, ptr %424, align 4
  %2506 = add i32 %2504, %2505
  %2507 = load ptr, ptr %2016, align 4
  %2508 = load ptr, ptr %2507, align 8
  %2509 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2508, i32 0, i32 3
  %2510 = load ptr, ptr %2509, align 4
  %2511 = shl i32 %2506, 2
  tail call void %2510(ptr noundef %2507, i32 noundef %2511, i32 noundef 43748) #6
  %2512 = load i32, ptr %10, align 4
  %2513 = icmp eq i32 %2512, 1
  br i1 %2513, label %2514, label %2554

2514:                                             ; preds = %2500
  %2515 = add nuw nsw i32 %2469, 7488
  %2516 = lshr exact i32 %2515, 2
  %2517 = load i32, ptr %427, align 4
  %2518 = sub i32 %2516, %2517
  %2519 = load i32, ptr %424, align 4
  %2520 = add i32 %2518, %2519
  %2521 = load ptr, ptr %2016, align 4
  %2522 = load ptr, ptr %2521, align 8
  %2523 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2522, i32 0, i32 3
  %2524 = load ptr, ptr %2523, align 4
  %2525 = shl i32 %2520, 2
  tail call void %2524(ptr noundef %2521, i32 noundef %2525, i32 noundef 16850944) #6
  %2526 = load i32, ptr %10, align 4
  %2527 = icmp eq i32 %2526, 1
  br i1 %2527, label %2528, label %2554

2528:                                             ; preds = %2514
  %2529 = add nuw nsw i32 %2469, 7552
  %2530 = lshr exact i32 %2529, 2
  %2531 = load i32, ptr %427, align 4
  %2532 = sub i32 %2530, %2531
  %2533 = load i32, ptr %424, align 4
  %2534 = add i32 %2532, %2533
  %2535 = load ptr, ptr %2016, align 4
  %2536 = load ptr, ptr %2535, align 8
  %2537 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2536, i32 0, i32 3
  %2538 = load ptr, ptr %2537, align 4
  %2539 = shl i32 %2534, 2
  tail call void %2538(ptr noundef %2535, i32 noundef %2539, i32 noundef 524296) #6
  %2540 = load i32, ptr %10, align 4
  %2541 = icmp eq i32 %2540, 1
  br i1 %2541, label %2542, label %2554

2542:                                             ; preds = %2528
  %2543 = add nuw nsw i32 %2469, 7680
  %2544 = lshr exact i32 %2543, 2
  %2545 = load i32, ptr %427, align 4
  %2546 = sub i32 %2544, %2545
  %2547 = load i32, ptr %424, align 4
  %2548 = add i32 %2546, %2547
  %2549 = load ptr, ptr %2016, align 4
  %2550 = load ptr, ptr %2549, align 8
  %2551 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2550, i32 0, i32 3
  %2552 = load ptr, ptr %2551, align 4
  %2553 = shl i32 %2548, 2
  tail call void %2552(ptr noundef %2549, i32 noundef %2553, i32 noundef 1048584) #6
  br label %2554

2554:                                             ; preds = %2542, %2528, %2514, %2500, %2486, %2472, %2467
  %2555 = add nuw nsw i32 %2468, 1
  %2556 = icmp eq i32 %2555, 16
  br i1 %2556, label %2557, label %2467

2557:                                             ; preds = %2616, %2554
  %2558 = phi i32 [ %2617, %2616 ], [ 0, %2554 ]
  %2559 = shl i32 %2558, 2
  %2560 = load i32, ptr %10, align 4
  %2561 = icmp eq i32 %2560, 1
  br i1 %2561, label %2562, label %2616

2562:                                             ; preds = %2557
  %2563 = add nuw nsw i32 %2559, 7824
  %2564 = lshr exact i32 %2563, 2
  %2565 = load i32, ptr %427, align 4
  %2566 = sub i32 %2564, %2565
  %2567 = load i32, ptr %424, align 4
  %2568 = add i32 %2566, %2567
  %2569 = load ptr, ptr %2016, align 4
  %2570 = load ptr, ptr %2569, align 8
  %2571 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2570, i32 0, i32 3
  %2572 = load ptr, ptr %2571, align 4
  %2573 = shl i32 %2568, 2
  tail call void %2572(ptr noundef %2569, i32 noundef %2573, i32 noundef 113792) #6
  %2574 = load i32, ptr %10, align 4
  %2575 = icmp eq i32 %2574, 1
  br i1 %2575, label %2576, label %2616

2576:                                             ; preds = %2562
  %2577 = add nuw nsw i32 %2559, 7840
  %2578 = lshr exact i32 %2577, 2
  %2579 = load i32, ptr %427, align 4
  %2580 = sub i32 %2578, %2579
  %2581 = load i32, ptr %424, align 4
  %2582 = add i32 %2580, %2581
  %2583 = load ptr, ptr %2016, align 4
  %2584 = load ptr, ptr %2583, align 8
  %2585 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2584, i32 0, i32 3
  %2586 = load ptr, ptr %2585, align 4
  %2587 = shl i32 %2582, 2
  tail call void %2586(ptr noundef %2583, i32 noundef %2587, i32 noundef 514) #6
  %2588 = load i32, ptr %10, align 4
  %2589 = icmp eq i32 %2588, 1
  br i1 %2589, label %2590, label %2616

2590:                                             ; preds = %2576
  %2591 = add nuw nsw i32 %2559, 7872
  %2592 = lshr exact i32 %2591, 2
  %2593 = load i32, ptr %427, align 4
  %2594 = sub i32 %2592, %2593
  %2595 = load i32, ptr %424, align 4
  %2596 = add i32 %2594, %2595
  %2597 = load ptr, ptr %2016, align 4
  %2598 = load ptr, ptr %2597, align 8
  %2599 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2598, i32 0, i32 3
  %2600 = load ptr, ptr %2599, align 4
  %2601 = shl i32 %2596, 2
  tail call void %2600(ptr noundef %2597, i32 noundef %2601, i32 noundef 8) #6
  %2602 = load i32, ptr %10, align 4
  %2603 = icmp eq i32 %2602, 1
  br i1 %2603, label %2604, label %2616

2604:                                             ; preds = %2590
  %2605 = add nuw nsw i32 %2559, 7904
  %2606 = lshr exact i32 %2605, 2
  %2607 = load i32, ptr %427, align 4
  %2608 = sub i32 %2606, %2607
  %2609 = load i32, ptr %424, align 4
  %2610 = add i32 %2608, %2609
  %2611 = load ptr, ptr %2016, align 4
  %2612 = load ptr, ptr %2611, align 8
  %2613 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2612, i32 0, i32 3
  %2614 = load ptr, ptr %2613, align 4
  %2615 = shl i32 %2610, 2
  tail call void %2614(ptr noundef %2611, i32 noundef %2615, i32 noundef 524296) #6
  br label %2616

2616:                                             ; preds = %2604, %2590, %2576, %2562, %2557
  %2617 = add nuw nsw i32 %2558, 1
  %2618 = icmp eq i32 %2617, 4
  br i1 %2618, label %2619, label %2557

2619:                                             ; preds = %2616
  store i32 983, ptr %427, align 4
  %2620 = load i32, ptr %425, align 4
  store i32 %2620, ptr %424, align 4
  %2621 = add i32 %2620, 3
  store i32 %2621, ptr %425, align 4
  %2622 = load ptr, ptr %8, align 4
  %2623 = load i32, ptr %10, align 4
  %2624 = icmp eq i32 %2623, 0
  br i1 %2624, label %2625, label %2636

2625:                                             ; preds = %2619
  %2626 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2627 = load i32, ptr %2626, align 4
  %2628 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2629 = load i32, ptr %2628, align 4
  %2630 = icmp eq i32 %2627, %2629
  br i1 %2630, label %2631, label %2632, !prof !8

2631:                                             ; preds = %2625
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2632:                                             ; preds = %2625
  %2633 = add i32 %2627, 1
  store i32 %2633, ptr %2626, align 4
  %2634 = getelementptr i32, ptr %2622, i32 %2627
  store i32 1098711, ptr %2634, align 4
  %2635 = load i32, ptr %10, align 4
  br label %2636

2636:                                             ; preds = %2632, %2619
  %2637 = phi i32 [ %2623, %2619 ], [ %2635, %2632 ]
  %2638 = icmp eq i32 %2637, 1
  br i1 %2638, label %2639, label %2650

2639:                                             ; preds = %2636
  %2640 = load i32, ptr %427, align 4
  %2641 = sub i32 983, %2640
  %2642 = load i32, ptr %424, align 4
  %2643 = add i32 %2641, %2642
  %2644 = load ptr, ptr %2016, align 4
  %2645 = load ptr, ptr %2644, align 8
  %2646 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2645, i32 0, i32 3
  %2647 = load ptr, ptr %2646, align 4
  %2648 = shl i32 %2643, 2
  tail call void %2647(ptr noundef %2644, i32 noundef %2648, i32 noundef 2) #6
  %2649 = load i32, ptr %10, align 4
  br label %2650

2650:                                             ; preds = %2639, %2636
  %2651 = phi i32 [ %2637, %2636 ], [ %2649, %2639 ]
  store i32 993, ptr %427, align 4
  %2652 = load i32, ptr %425, align 4
  store i32 %2652, ptr %424, align 4
  %2653 = add i32 %2652, 1
  store i32 %2653, ptr %425, align 4
  %2654 = load ptr, ptr %8, align 4
  %2655 = icmp eq i32 %2651, 0
  br i1 %2655, label %2656, label %2681

2656:                                             ; preds = %2650
  %2657 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2658 = load i32, ptr %2657, align 4
  %2659 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2660 = load i32, ptr %2659, align 4
  %2661 = icmp eq i32 %2658, %2660
  br i1 %2661, label %2662, label %2663, !prof !8

2662:                                             ; preds = %2656
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2663:                                             ; preds = %2656
  %2664 = add i32 %2658, 1
  store i32 %2664, ptr %2657, align 4
  %2665 = getelementptr i32, ptr %2654, i32 %2658
  store i32 1065953, ptr %2665, align 4
  %2666 = load ptr, ptr %8, align 4
  %2667 = load i32, ptr %10, align 4
  %2668 = icmp eq i32 %2667, 0
  br i1 %2668, label %2669, label %2681

2669:                                             ; preds = %2663
  %2670 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2671 = load i32, ptr %2670, align 4
  %2672 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2673 = load i32, ptr %2672, align 4
  %2674 = icmp eq i32 %2671, %2673
  br i1 %2674, label %2675, label %2676, !prof !8

2675:                                             ; preds = %2669
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2676:                                             ; preds = %2669
  %2677 = add i32 %2671, 1
  store i32 %2677, ptr %2670, align 4
  %2678 = getelementptr i32, ptr %2666, i32 %2671
  store i32 5242976, ptr %2678, align 4
  %2679 = load ptr, ptr %8, align 4
  %2680 = load i32, ptr %10, align 4
  br label %2681

2681:                                             ; preds = %2676, %2663, %2650
  %2682 = phi i32 [ %2667, %2663 ], [ %2680, %2676 ], [ %2651, %2650 ]
  %2683 = phi ptr [ %2666, %2663 ], [ %2679, %2676 ], [ %2654, %2650 ]
  %2684 = load ptr, ptr %0, align 4
  store i32 2048, ptr %427, align 4
  %2685 = load i32, ptr %425, align 4
  store i32 %2685, ptr %424, align 4
  %2686 = add i32 %2685, 1
  store i32 %2686, ptr %425, align 4
  %2687 = icmp eq i32 %2682, 0
  br i1 %2687, label %2688, label %2701

2688:                                             ; preds = %2681
  %2689 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2690 = load i32, ptr %2689, align 4
  %2691 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2692 = load i32, ptr %2691, align 4
  %2693 = icmp eq i32 %2690, %2692
  br i1 %2693, label %2694, label %2695, !prof !8

2694:                                             ; preds = %2688
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2695:                                             ; preds = %2688
  %2696 = add i32 %2690, 1
  store i32 %2696, ptr %2689, align 4
  %2697 = getelementptr i32, ptr %2683, i32 %2690
  store i32 1067008, ptr %2697, align 4
  %2698 = load i32, ptr %425, align 4
  %2699 = load ptr, ptr %8, align 4
  %2700 = load i32, ptr %10, align 4
  br label %2701

2701:                                             ; preds = %2695, %2681
  %2702 = phi i32 [ %2682, %2681 ], [ %2700, %2695 ]
  %2703 = phi ptr [ %2683, %2681 ], [ %2699, %2695 ]
  %2704 = phi i32 [ %2686, %2681 ], [ %2698, %2695 ]
  %2705 = getelementptr inbounds %struct.nvkm_device, ptr %2684, i32 0, i32 16
  %2706 = load i32, ptr %2705, align 4
  %2707 = icmp eq i32 %2706, 64
  %2708 = select i1 %2707, i32 1, i32 2
  store i32 2305, ptr %427, align 4
  store i32 %2704, ptr %424, align 4
  %2709 = add i32 %2708, %2704
  store i32 %2709, ptr %425, align 4
  %2710 = shl nuw nsw i32 %2708, 14
  %2711 = or i32 %2710, 1050881
  %2712 = icmp eq i32 %2702, 0
  br i1 %2712, label %2713, label %2723

2713:                                             ; preds = %2701
  %2714 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2715 = load i32, ptr %2714, align 4
  %2716 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2717 = load i32, ptr %2716, align 4
  %2718 = icmp eq i32 %2715, %2717
  br i1 %2718, label %2719, label %2720, !prof !8

2719:                                             ; preds = %2713
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2720:                                             ; preds = %2713
  %2721 = add i32 %2715, 1
  store i32 %2721, ptr %2714, align 4
  %2722 = getelementptr i32, ptr %2703, i32 %2715
  store i32 %2711, ptr %2722, align 4
  br label %2723

2723:                                             ; preds = %2720, %2701
  %2724 = load i32, ptr %2705, align 4
  switch i32 %2724, label %2764 [
    i32 64, label %2725
    i32 76, label %2738
    i32 78, label %2738
    i32 103, label %2738
    i32 70, label %2751
    i32 73, label %2751
    i32 75, label %2751
  ]

2725:                                             ; preds = %2723
  %2726 = load i32, ptr %10, align 4
  %2727 = icmp eq i32 %2726, 1
  br i1 %2727, label %2728, label %2828

2728:                                             ; preds = %2725
  %2729 = load i32, ptr %427, align 4
  %2730 = sub i32 2305, %2729
  %2731 = load i32, ptr %424, align 4
  %2732 = add i32 %2730, %2731
  %2733 = load ptr, ptr %2016, align 4
  %2734 = load ptr, ptr %2733, align 8
  %2735 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2734, i32 0, i32 3
  %2736 = load ptr, ptr %2735, align 4
  %2737 = shl i32 %2732, 2
  tail call void %2736(ptr noundef %2733, i32 noundef %2737, i32 noundef 1) #6
  br label %2777

2738:                                             ; preds = %2723, %2723, %2723
  %2739 = load i32, ptr %10, align 4
  %2740 = icmp eq i32 %2739, 1
  br i1 %2740, label %2741, label %2777

2741:                                             ; preds = %2738
  %2742 = load i32, ptr %427, align 4
  %2743 = sub i32 2305, %2742
  %2744 = load i32, ptr %424, align 4
  %2745 = add i32 %2743, %2744
  %2746 = load ptr, ptr %2016, align 4
  %2747 = load ptr, ptr %2746, align 8
  %2748 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2747, i32 0, i32 3
  %2749 = load ptr, ptr %2748, align 4
  %2750 = shl i32 %2745, 2
  tail call void %2749(ptr noundef %2746, i32 noundef %2750, i32 noundef 32) #6
  br label %2777

2751:                                             ; preds = %2723, %2723, %2723
  %2752 = load i32, ptr %10, align 4
  %2753 = icmp eq i32 %2752, 1
  br i1 %2753, label %2754, label %2777

2754:                                             ; preds = %2751
  %2755 = load i32, ptr %427, align 4
  %2756 = sub i32 2305, %2755
  %2757 = load i32, ptr %424, align 4
  %2758 = add i32 %2756, %2757
  %2759 = load ptr, ptr %2016, align 4
  %2760 = load ptr, ptr %2759, align 8
  %2761 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2760, i32 0, i32 3
  %2762 = load ptr, ptr %2761, align 4
  %2763 = shl i32 %2758, 2
  tail call void %2762(ptr noundef %2759, i32 noundef %2763, i32 noundef 1057) #6
  br label %2777

2764:                                             ; preds = %2723
  %2765 = load i32, ptr %10, align 4
  %2766 = icmp eq i32 %2765, 1
  br i1 %2766, label %2767, label %2779

2767:                                             ; preds = %2764
  %2768 = load i32, ptr %427, align 4
  %2769 = sub i32 2305, %2768
  %2770 = load i32, ptr %424, align 4
  %2771 = add i32 %2769, %2770
  %2772 = load ptr, ptr %2016, align 4
  %2773 = load ptr, ptr %2772, align 8
  %2774 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2773, i32 0, i32 3
  %2775 = load ptr, ptr %2774, align 4
  %2776 = shl i32 %2771, 2
  tail call void %2775(ptr noundef %2772, i32 noundef %2776, i32 noundef 33) #6
  br label %2777

2777:                                             ; preds = %2767, %2754, %2751, %2741, %2738, %2728
  %2778 = load i32, ptr %2705, align 4
  br label %2779

2779:                                             ; preds = %2777, %2764
  %2780 = phi i32 [ %2778, %2777 ], [ %2724, %2764 ]
  %2781 = icmp eq i32 %2780, 64
  br i1 %2781, label %2828, label %2782

2782:                                             ; preds = %2779
  %2783 = load i32, ptr %10, align 4
  %2784 = icmp eq i32 %2783, 1
  br i1 %2784, label %2785, label %2796

2785:                                             ; preds = %2782
  %2786 = load i32, ptr %427, align 4
  %2787 = sub i32 2306, %2786
  %2788 = load i32, ptr %424, align 4
  %2789 = add i32 %2787, %2788
  %2790 = load ptr, ptr %2016, align 4
  %2791 = load ptr, ptr %2790, align 8
  %2792 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2791, i32 0, i32 3
  %2793 = load ptr, ptr %2792, align 4
  %2794 = shl i32 %2789, 2
  tail call void %2793(ptr noundef %2790, i32 noundef %2794, i32 noundef 51130563) #6
  %2795 = load i32, ptr %2705, align 4
  br label %2796

2796:                                             ; preds = %2785, %2782
  %2797 = phi i32 [ %2795, %2785 ], [ %2780, %2782 ]
  switch i32 %2797, label %2828 [
    i32 68, label %2798
    i32 70, label %2798
    i32 74, label %2798
    i32 76, label %2798
    i32 78, label %2798
    i32 103, label %2798
  ]

2798:                                             ; preds = %2796, %2796, %2796, %2796, %2796, %2796
  store i32 2320, ptr %427, align 4
  %2799 = load i32, ptr %425, align 4
  store i32 %2799, ptr %424, align 4
  %2800 = add i32 %2799, 1
  store i32 %2800, ptr %425, align 4
  %2801 = load ptr, ptr %8, align 4
  %2802 = load i32, ptr %10, align 4
  %2803 = icmp eq i32 %2802, 0
  br i1 %2803, label %2804, label %2815

2804:                                             ; preds = %2798
  %2805 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2806 = load i32, ptr %2805, align 4
  %2807 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2808 = load i32, ptr %2807, align 4
  %2809 = icmp eq i32 %2806, %2808
  br i1 %2809, label %2810, label %2811, !prof !8

2810:                                             ; preds = %2804
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2811:                                             ; preds = %2804
  %2812 = add i32 %2806, 1
  store i32 %2812, ptr %2805, align 4
  %2813 = getelementptr i32, ptr %2801, i32 %2806
  store i32 1067280, ptr %2813, align 4
  %2814 = load i32, ptr %10, align 4
  br label %2815

2815:                                             ; preds = %2811, %2798
  %2816 = phi i32 [ %2802, %2798 ], [ %2814, %2811 ]
  %2817 = icmp eq i32 %2816, 1
  br i1 %2817, label %2818, label %2828

2818:                                             ; preds = %2815
  %2819 = load i32, ptr %427, align 4
  %2820 = sub i32 2320, %2819
  %2821 = load i32, ptr %424, align 4
  %2822 = add i32 %2820, %2821
  %2823 = load ptr, ptr %2016, align 4
  %2824 = load ptr, ptr %2823, align 8
  %2825 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2824, i32 0, i32 3
  %2826 = load ptr, ptr %2825, align 4
  %2827 = shl i32 %2822, 2
  tail call void %2826(ptr noundef %2823, i32 noundef %2827, i32 noundef 69633) #6
  br label %2828

2828:                                             ; preds = %2818, %2815, %2796, %2779, %2725
  %2829 = load i32, ptr %2705, align 4
  %2830 = icmp eq i32 %2829, 64
  %2831 = select i1 %2830, i32 8, i32 9
  store i32 2336, ptr %427, align 4
  %2832 = load i32, ptr %425, align 4
  store i32 %2832, ptr %424, align 4
  %2833 = add i32 %2832, %2831
  store i32 %2833, ptr %425, align 4
  %2834 = shl nuw nsw i32 %2831, 14
  %2835 = or i32 %2834, 1050912
  %2836 = load ptr, ptr %8, align 4
  %2837 = load i32, ptr %10, align 4
  %2838 = icmp eq i32 %2837, 0
  br i1 %2838, label %2839, label %2850

2839:                                             ; preds = %2828
  %2840 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2841 = load i32, ptr %2840, align 4
  %2842 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2843 = load i32, ptr %2842, align 4
  %2844 = icmp eq i32 %2841, %2843
  br i1 %2844, label %2845, label %2846, !prof !8

2845:                                             ; preds = %2839
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2846:                                             ; preds = %2839
  %2847 = add i32 %2841, 1
  store i32 %2847, ptr %2840, align 4
  %2848 = getelementptr i32, ptr %2836, i32 %2841
  store i32 %2835, ptr %2848, align 4
  %2849 = load i32, ptr %10, align 4
  br label %2850

2850:                                             ; preds = %2846, %2828
  %2851 = phi i32 [ %2837, %2828 ], [ %2849, %2846 ]
  %2852 = icmp eq i32 %2851, 1
  br i1 %2852, label %2853, label %2875

2853:                                             ; preds = %2850
  %2854 = load i32, ptr %427, align 4
  %2855 = sub i32 2338, %2854
  %2856 = load i32, ptr %424, align 4
  %2857 = add i32 %2855, %2856
  %2858 = load ptr, ptr %2016, align 4
  %2859 = load ptr, ptr %2858, align 8
  %2860 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2859, i32 0, i32 3
  %2861 = load ptr, ptr %2860, align 4
  %2862 = shl i32 %2857, 2
  tail call void %2861(ptr noundef %2858, i32 noundef %2862, i32 noundef 1040318976) #6
  %2863 = load i32, ptr %10, align 4
  %2864 = icmp eq i32 %2863, 1
  br i1 %2864, label %2865, label %2875

2865:                                             ; preds = %2853
  %2866 = load i32, ptr %427, align 4
  %2867 = sub i32 2339, %2866
  %2868 = load i32, ptr %424, align 4
  %2869 = add i32 %2867, %2868
  %2870 = load ptr, ptr %2016, align 4
  %2871 = load ptr, ptr %2870, align 8
  %2872 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2871, i32 0, i32 3
  %2873 = load ptr, ptr %2872, align 4
  %2874 = shl i32 %2869, 2
  tail call void %2873(ptr noundef %2870, i32 noundef %2874, i32 noundef 16777215) #6
  br label %2875

2875:                                             ; preds = %2865, %2853, %2850
  %2876 = load i32, ptr %2705, align 4
  switch i32 %2876, label %2916 [
    i32 64, label %2877
    i32 71, label %2890
    i32 65, label %2903
    i32 66, label %2903
    i32 73, label %2903
    i32 75, label %2903
  ]

2877:                                             ; preds = %2875
  %2878 = load i32, ptr %10, align 4
  %2879 = icmp eq i32 %2878, 1
  br i1 %2879, label %2880, label %2946

2880:                                             ; preds = %2877
  %2881 = load i32, ptr %427, align 4
  %2882 = sub i32 2340, %2881
  %2883 = load i32, ptr %424, align 4
  %2884 = add i32 %2882, %2883
  %2885 = load ptr, ptr %2016, align 4
  %2886 = load ptr, ptr %2885, align 8
  %2887 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2886, i32 0, i32 3
  %2888 = load ptr, ptr %2887, align 4
  %2889 = shl i32 %2884, 2
  tail call void %2888(ptr noundef %2885, i32 noundef %2889, i32 noundef 1611677440) #6
  br label %2929

2890:                                             ; preds = %2875
  %2891 = load i32, ptr %10, align 4
  %2892 = icmp eq i32 %2891, 1
  br i1 %2892, label %2893, label %2946

2893:                                             ; preds = %2890
  %2894 = load i32, ptr %427, align 4
  %2895 = sub i32 2340, %2894
  %2896 = load i32, ptr %424, align 4
  %2897 = add i32 %2895, %2896
  %2898 = load ptr, ptr %2016, align 4
  %2899 = load ptr, ptr %2898, align 8
  %2900 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2899, i32 0, i32 3
  %2901 = load ptr, ptr %2900, align 4
  %2902 = shl i32 %2897, 2
  tail call void %2901(ptr noundef %2898, i32 noundef %2902, i32 noundef 1074806528) #6
  br label %2929

2903:                                             ; preds = %2875, %2875, %2875, %2875
  %2904 = load i32, ptr %10, align 4
  %2905 = icmp eq i32 %2904, 1
  br i1 %2905, label %2906, label %2946

2906:                                             ; preds = %2903
  %2907 = load i32, ptr %427, align 4
  %2908 = sub i32 2340, %2907
  %2909 = load i32, ptr %424, align 4
  %2910 = add i32 %2908, %2909
  %2911 = load ptr, ptr %2016, align 4
  %2912 = load ptr, ptr %2911, align 8
  %2913 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2912, i32 0, i32 3
  %2914 = load ptr, ptr %2913, align 4
  %2915 = shl i32 %2910, 2
  tail call void %2914(ptr noundef %2911, i32 noundef %2915, i32 noundef 537935616) #6
  br label %2929

2916:                                             ; preds = %2875
  %2917 = load i32, ptr %10, align 4
  %2918 = icmp eq i32 %2917, 1
  br i1 %2918, label %2919, label %2946

2919:                                             ; preds = %2916
  %2920 = load i32, ptr %427, align 4
  %2921 = sub i32 2340, %2920
  %2922 = load i32, ptr %424, align 4
  %2923 = add i32 %2921, %2922
  %2924 = load ptr, ptr %2016, align 4
  %2925 = load ptr, ptr %2924, align 8
  %2926 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2925, i32 0, i32 3
  %2927 = load ptr, ptr %2926, align 4
  %2928 = shl i32 %2923, 2
  tail call void %2927(ptr noundef %2924, i32 noundef %2928, i32 noundef 202391296) #6
  br label %2929

2929:                                             ; preds = %2919, %2906, %2893, %2880
  %2930 = load i32, ptr %10, align 4
  %2931 = icmp eq i32 %2930, 1
  br i1 %2931, label %2932, label %2946

2932:                                             ; preds = %2929
  %2933 = load i32, ptr %2705, align 4
  %2934 = icmp ult i32 %2933, 68
  %2935 = select i1 %2934, i32 131072, i32 262144
  %2936 = load i32, ptr %427, align 4
  %2937 = sub i32 2343, %2936
  %2938 = load i32, ptr %424, align 4
  %2939 = add i32 %2937, %2938
  %2940 = load ptr, ptr %2016, align 4
  %2941 = load ptr, ptr %2940, align 8
  %2942 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2941, i32 0, i32 3
  %2943 = load ptr, ptr %2942, align 4
  %2944 = shl i32 %2939, 2
  tail call void %2943(ptr noundef %2940, i32 noundef %2944, i32 noundef %2935) #6
  %2945 = load i32, ptr %10, align 4
  br label %2946

2946:                                             ; preds = %2932, %2929, %2916, %2903, %2890, %2877
  %2947 = phi i32 [ %2930, %2929 ], [ %2878, %2877 ], [ %2891, %2890 ], [ %2904, %2903 ], [ %2917, %2916 ], [ %2945, %2932 ]
  store i32 2368, ptr %427, align 4
  %2948 = load i32, ptr %425, align 4
  store i32 %2948, ptr %424, align 4
  %2949 = add i32 %2948, 31
  store i32 %2949, ptr %425, align 4
  %2950 = load ptr, ptr %8, align 4
  %2951 = icmp eq i32 %2947, 0
  br i1 %2951, label %2952, label %2963

2952:                                             ; preds = %2946
  %2953 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2954 = load i32, ptr %2953, align 4
  %2955 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2956 = load i32, ptr %2955, align 4
  %2957 = icmp eq i32 %2954, %2956
  br i1 %2957, label %2958, label %2959, !prof !8

2958:                                             ; preds = %2952
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2959:                                             ; preds = %2952
  %2960 = add i32 %2954, 1
  store i32 %2960, ptr %2953, align 4
  %2961 = getelementptr i32, ptr %2950, i32 %2954
  store i32 1558848, ptr %2961, align 4
  %2962 = load i32, ptr %10, align 4
  br label %2963

2963:                                             ; preds = %2959, %2946
  %2964 = phi i32 [ %2947, %2946 ], [ %2962, %2959 ]
  %2965 = icmp eq i32 %2964, 1
  br i1 %2965, label %2966, label %2976

2966:                                             ; preds = %2963
  %2967 = load i32, ptr %427, align 4
  %2968 = sub i32 2380, %2967
  %2969 = load i32, ptr %424, align 4
  %2970 = add i32 %2968, %2969
  %2971 = load ptr, ptr %2016, align 4
  %2972 = load ptr, ptr %2971, align 8
  %2973 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2972, i32 0, i32 3
  %2974 = load ptr, ptr %2973, align 4
  %2975 = shl i32 %2970, 2
  tail call void %2974(ptr noundef %2971, i32 noundef %2975, i32 noundef 33024) #6
  br label %2976

2976:                                             ; preds = %2966, %2963
  %2977 = load i32, ptr %2705, align 4
  %2978 = icmp eq i32 %2977, 64
  br i1 %2978, label %2979, label %2997

2979:                                             ; preds = %2976
  store i32 2399, ptr %427, align 4
  %2980 = load i32, ptr %425, align 4
  store i32 %2980, ptr %424, align 4
  %2981 = add i32 %2980, 6
  store i32 %2981, ptr %425, align 4
  %2982 = load ptr, ptr %8, align 4
  %2983 = load i32, ptr %10, align 4
  %2984 = icmp eq i32 %2983, 0
  br i1 %2984, label %2987, label %2985

2985:                                             ; preds = %2979
  %2986 = add i32 %2980, 22
  br label %3010

2987:                                             ; preds = %2979
  %2988 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2989 = load i32, ptr %2988, align 4
  %2990 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2991 = load i32, ptr %2990, align 4
  %2992 = icmp eq i32 %2989, %2991
  br i1 %2992, label %2993, label %2994, !prof !8

2993:                                             ; preds = %2987
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2994:                                             ; preds = %2987
  %2995 = add i32 %2989, 1
  store i32 %2995, ptr %2988, align 4
  %2996 = getelementptr i32, ptr %2982, i32 %2989
  store i32 1149279, ptr %2996, align 4
  br label %2997

2997:                                             ; preds = %2994, %2976
  %2998 = load i32, ptr %10, align 4
  %2999 = load i32, ptr %425, align 4
  %3000 = load ptr, ptr %8, align 4
  store i32 2405, ptr %427, align 4
  store i32 %2999, ptr %424, align 4
  %3001 = add i32 %2999, 16
  store i32 %3001, ptr %425, align 4
  %3002 = icmp eq i32 %2998, 0
  br i1 %3002, label %3003, label %3010

3003:                                             ; preds = %2997
  %3004 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3005 = load i32, ptr %3004, align 4
  %3006 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3007 = load i32, ptr %3006, align 4
  %3008 = icmp eq i32 %3005, %3007
  br i1 %3008, label %3009, label %3014, !prof !8

3009:                                             ; preds = %3003
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3010:                                             ; preds = %2997, %2985
  %3011 = phi i32 [ %2983, %2985 ], [ %2998, %2997 ]
  %3012 = phi i32 [ %2986, %2985 ], [ %3001, %2997 ]
  store i32 2560, ptr %427, align 4
  store i32 %3012, ptr %424, align 4
  %3013 = add i32 %3012, 17
  store i32 %3013, ptr %425, align 4
  br label %3031

3014:                                             ; preds = %3003
  %3015 = add i32 %3005, 1
  store i32 %3015, ptr %3004, align 4
  %3016 = getelementptr i32, ptr %3000, i32 %3005
  store i32 1313125, ptr %3016, align 4
  %3017 = load i32, ptr %425, align 4
  %3018 = load ptr, ptr %8, align 4
  %3019 = load i32, ptr %10, align 4
  store i32 2560, ptr %427, align 4
  store i32 %3017, ptr %424, align 4
  %3020 = add i32 %3017, 17
  store i32 %3020, ptr %425, align 4
  %3021 = icmp eq i32 %3019, 0
  br i1 %3021, label %3022, label %3031

3022:                                             ; preds = %3014
  %3023 = load i32, ptr %3004, align 4
  %3024 = load i32, ptr %3006, align 4
  %3025 = icmp eq i32 %3023, %3024
  br i1 %3025, label %3026, label %3027, !prof !8

3026:                                             ; preds = %3022
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3027:                                             ; preds = %3022
  %3028 = add i32 %3023, 1
  store i32 %3028, ptr %3004, align 4
  %3029 = getelementptr i32, ptr %3018, i32 %3023
  store i32 1329664, ptr %3029, align 4
  %3030 = load i32, ptr %10, align 4
  br label %3031

3031:                                             ; preds = %3027, %3014, %3010
  %3032 = phi i32 [ %3019, %3014 ], [ %3030, %3027 ], [ %3011, %3010 ]
  %3033 = icmp eq i32 %3032, 1
  br i1 %3033, label %3034, label %3044

3034:                                             ; preds = %3031
  %3035 = load i32, ptr %427, align 4
  %3036 = sub i32 2560, %3035
  %3037 = load i32, ptr %424, align 4
  %3038 = add i32 %3036, %3037
  %3039 = load ptr, ptr %2016, align 4
  %3040 = load ptr, ptr %3039, align 8
  %3041 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3040, i32 0, i32 3
  %3042 = load ptr, ptr %3041, align 4
  %3043 = shl i32 %3038, 2
  tail call void %3042(ptr noundef %3039, i32 noundef %3043, i32 noundef 1) #6
  br label %3044

3044:                                             ; preds = %3034, %3031
  %3045 = load i32, ptr %2705, align 4
  switch i32 %3045, label %3286 [
    i32 71, label %3046
    i32 73, label %3046
    i32 75, label %3046
    i32 64, label %3237
  ]

3046:                                             ; preds = %3044, %3044, %3044
  store i32 2585, ptr %427, align 4
  %3047 = load i32, ptr %425, align 4
  store i32 %3047, ptr %424, align 4
  %3048 = add i32 %3047, 1
  store i32 %3048, ptr %425, align 4
  %3049 = load ptr, ptr %8, align 4
  %3050 = load i32, ptr %10, align 4
  %3051 = icmp eq i32 %3050, 0
  br i1 %3051, label %3052, label %3063

3052:                                             ; preds = %3046
  %3053 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3054 = load i32, ptr %3053, align 4
  %3055 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3056 = load i32, ptr %3055, align 4
  %3057 = icmp eq i32 %3054, %3056
  br i1 %3057, label %3058, label %3059, !prof !8

3058:                                             ; preds = %3052
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3059:                                             ; preds = %3052
  %3060 = add i32 %3054, 1
  store i32 %3060, ptr %3053, align 4
  %3061 = getelementptr i32, ptr %3049, i32 %3054
  store i32 1067545, ptr %3061, align 4
  %3062 = load i32, ptr %10, align 4
  br label %3063

3063:                                             ; preds = %3059, %3046
  %3064 = phi i32 [ %3050, %3046 ], [ %3062, %3059 ]
  %3065 = icmp eq i32 %3064, 1
  br i1 %3065, label %3066, label %3077

3066:                                             ; preds = %3063
  %3067 = load i32, ptr %427, align 4
  %3068 = sub i32 2585, %3067
  %3069 = load i32, ptr %424, align 4
  %3070 = add i32 %3068, %3069
  %3071 = load ptr, ptr %2016, align 4
  %3072 = load ptr, ptr %3071, align 8
  %3073 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3072, i32 0, i32 3
  %3074 = load ptr, ptr %3073, align 4
  %3075 = shl i32 %3070, 2
  tail call void %3074(ptr noundef %3071, i32 noundef %3075, i32 noundef 4097) #6
  %3076 = load i32, ptr %10, align 4
  br label %3077

3077:                                             ; preds = %3066, %3063
  %3078 = phi i32 [ %3064, %3063 ], [ %3076, %3066 ]
  store i32 2588, ptr %427, align 4
  %3079 = load i32, ptr %425, align 4
  store i32 %3079, ptr %424, align 4
  %3080 = add i32 %3079, 3
  store i32 %3080, ptr %425, align 4
  %3081 = load ptr, ptr %8, align 4
  %3082 = icmp eq i32 %3078, 0
  br i1 %3082, label %3083, label %3094

3083:                                             ; preds = %3077
  %3084 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3085 = load i32, ptr %3084, align 4
  %3086 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3087 = load i32, ptr %3086, align 4
  %3088 = icmp eq i32 %3085, %3087
  br i1 %3088, label %3089, label %3090, !prof !8

3089:                                             ; preds = %3083
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3090:                                             ; preds = %3083
  %3091 = add i32 %3085, 1
  store i32 %3091, ptr %3084, align 4
  %3092 = getelementptr i32, ptr %3081, i32 %3085
  store i32 1100316, ptr %3092, align 4
  %3093 = load i32, ptr %10, align 4
  br label %3094

3094:                                             ; preds = %3090, %3077
  %3095 = phi i32 [ %3078, %3077 ], [ %3093, %3090 ]
  %3096 = icmp eq i32 %3095, 1
  br i1 %3096, label %3097, label %3107

3097:                                             ; preds = %3094
  %3098 = load i32, ptr %427, align 4
  %3099 = sub i32 2590, %3098
  %3100 = load i32, ptr %424, align 4
  %3101 = add i32 %3099, %3100
  %3102 = load ptr, ptr %2016, align 4
  %3103 = load ptr, ptr %3102, align 8
  %3104 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3103, i32 0, i32 3
  %3105 = load ptr, ptr %3104, align 4
  %3106 = shl i32 %3101, 2
  tail call void %3105(ptr noundef %3102, i32 noundef %3106, i32 noundef 3) #6
  br label %3107

3107:                                             ; preds = %3097, %3094
  %3108 = load i32, ptr %2705, align 4
  %3109 = icmp eq i32 %3108, 71
  br i1 %3109, label %3347, label %3110

3110:                                             ; preds = %3107
  store i32 2624, ptr %427, align 4
  %3111 = load i32, ptr %425, align 4
  store i32 %3111, ptr %424, align 4
  %3112 = add i32 %3111, 1
  store i32 %3112, ptr %425, align 4
  %3113 = load ptr, ptr %8, align 4
  %3114 = load i32, ptr %10, align 4
  %3115 = icmp eq i32 %3114, 0
  br i1 %3115, label %3118, label %3116

3116:                                             ; preds = %3110
  store i32 %3112, ptr %424, align 4
  %3117 = add i32 %3111, 2
  br label %3138

3118:                                             ; preds = %3110
  %3119 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3120 = load i32, ptr %3119, align 4
  %3121 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3122 = load i32, ptr %3121, align 4
  %3123 = icmp eq i32 %3120, %3122
  br i1 %3123, label %3124, label %3125, !prof !8

3124:                                             ; preds = %3118
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3125:                                             ; preds = %3118
  %3126 = add i32 %3120, 1
  store i32 %3126, ptr %3119, align 4
  %3127 = getelementptr i32, ptr %3113, i32 %3120
  store i32 1067584, ptr %3127, align 4
  %3128 = load i32, ptr %10, align 4
  %3129 = load i32, ptr %425, align 4
  %3130 = load ptr, ptr %8, align 4
  store i32 2640, ptr %427, align 4
  store i32 %3129, ptr %424, align 4
  %3131 = add i32 %3129, 1
  store i32 %3131, ptr %425, align 4
  %3132 = icmp eq i32 %3128, 0
  br i1 %3132, label %3133, label %3138

3133:                                             ; preds = %3125
  %3134 = load i32, ptr %3119, align 4
  %3135 = load i32, ptr %3121, align 4
  %3136 = icmp eq i32 %3134, %3135
  br i1 %3136, label %3137, label %3141, !prof !8

3137:                                             ; preds = %3133
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3138:                                             ; preds = %3125, %3116
  %3139 = phi i32 [ %3117, %3116 ], [ %3131, %3125 ]
  %3140 = add i32 %3139, 1
  store i32 %3140, ptr %425, align 4
  br label %3154

3141:                                             ; preds = %3133
  %3142 = add i32 %3134, 1
  store i32 %3142, ptr %3119, align 4
  %3143 = getelementptr i32, ptr %3130, i32 %3134
  store i32 1067600, ptr %3143, align 4
  %3144 = load i32, ptr %425, align 4
  %3145 = load ptr, ptr %8, align 4
  %3146 = load i32, ptr %10, align 4
  store i32 2656, ptr %427, align 4
  store i32 %3144, ptr %424, align 4
  %3147 = add i32 %3144, 1
  store i32 %3147, ptr %425, align 4
  %3148 = icmp eq i32 %3146, 0
  br i1 %3148, label %3149, label %3154

3149:                                             ; preds = %3141
  %3150 = load i32, ptr %3119, align 4
  %3151 = load i32, ptr %3121, align 4
  %3152 = icmp eq i32 %3150, %3151
  br i1 %3152, label %3153, label %3157, !prof !8

3153:                                             ; preds = %3149
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3154:                                             ; preds = %3141, %3138
  %3155 = phi i32 [ %3140, %3138 ], [ %3147, %3141 ]
  %3156 = add i32 %3155, 1
  br label %3170

3157:                                             ; preds = %3149
  %3158 = add i32 %3150, 1
  store i32 %3158, ptr %3119, align 4
  %3159 = getelementptr i32, ptr %3145, i32 %3150
  store i32 1067616, ptr %3159, align 4
  %3160 = load i32, ptr %10, align 4
  %3161 = load i32, ptr %425, align 4
  %3162 = load ptr, ptr %8, align 4
  store i32 2672, ptr %427, align 4
  store i32 %3161, ptr %424, align 4
  %3163 = add i32 %3161, 1
  store i32 %3163, ptr %425, align 4
  %3164 = icmp eq i32 %3160, 0
  br i1 %3164, label %3165, label %3170

3165:                                             ; preds = %3157
  %3166 = load i32, ptr %3119, align 4
  %3167 = load i32, ptr %3121, align 4
  %3168 = icmp eq i32 %3166, %3167
  br i1 %3168, label %3169, label %3173, !prof !8

3169:                                             ; preds = %3165
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3170:                                             ; preds = %3157, %3154
  %3171 = phi i32 [ %3156, %3154 ], [ %3163, %3157 ]
  %3172 = add i32 %3171, 1
  br label %3186

3173:                                             ; preds = %3165
  %3174 = add i32 %3166, 1
  store i32 %3174, ptr %3119, align 4
  %3175 = getelementptr i32, ptr %3162, i32 %3166
  store i32 1067632, ptr %3175, align 4
  %3176 = load i32, ptr %425, align 4
  %3177 = load ptr, ptr %8, align 4
  %3178 = load i32, ptr %10, align 4
  store i32 2688, ptr %427, align 4
  store i32 %3176, ptr %424, align 4
  %3179 = add i32 %3176, 1
  store i32 %3179, ptr %425, align 4
  %3180 = icmp eq i32 %3178, 0
  br i1 %3180, label %3181, label %3186

3181:                                             ; preds = %3173
  %3182 = load i32, ptr %3119, align 4
  %3183 = load i32, ptr %3121, align 4
  %3184 = icmp eq i32 %3182, %3183
  br i1 %3184, label %3185, label %3189, !prof !8

3185:                                             ; preds = %3181
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3186:                                             ; preds = %3173, %3170
  %3187 = phi i32 [ %3172, %3170 ], [ %3179, %3173 ]
  %3188 = add i32 %3187, 1
  br label %3202

3189:                                             ; preds = %3181
  %3190 = add i32 %3182, 1
  store i32 %3190, ptr %3119, align 4
  %3191 = getelementptr i32, ptr %3177, i32 %3182
  store i32 1067648, ptr %3191, align 4
  %3192 = load i32, ptr %10, align 4
  %3193 = load i32, ptr %425, align 4
  %3194 = load ptr, ptr %8, align 4
  store i32 2704, ptr %427, align 4
  store i32 %3193, ptr %424, align 4
  %3195 = add i32 %3193, 1
  store i32 %3195, ptr %425, align 4
  %3196 = icmp eq i32 %3192, 0
  br i1 %3196, label %3197, label %3202

3197:                                             ; preds = %3189
  %3198 = load i32, ptr %3119, align 4
  %3199 = load i32, ptr %3121, align 4
  %3200 = icmp eq i32 %3198, %3199
  br i1 %3200, label %3201, label %3205, !prof !8

3201:                                             ; preds = %3197
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3202:                                             ; preds = %3189, %3186
  %3203 = phi i32 [ %3188, %3186 ], [ %3195, %3189 ]
  store i32 2720, ptr %427, align 4
  store i32 %3203, ptr %424, align 4
  %3204 = add i32 %3203, 1
  br label %3218

3205:                                             ; preds = %3197
  %3206 = add i32 %3198, 1
  store i32 %3206, ptr %3119, align 4
  %3207 = getelementptr i32, ptr %3194, i32 %3198
  store i32 1067664, ptr %3207, align 4
  %3208 = load i32, ptr %425, align 4
  %3209 = load ptr, ptr %8, align 4
  %3210 = load i32, ptr %10, align 4
  store i32 2720, ptr %427, align 4
  store i32 %3208, ptr %424, align 4
  %3211 = add i32 %3208, 1
  store i32 %3211, ptr %425, align 4
  %3212 = icmp eq i32 %3210, 0
  br i1 %3212, label %3213, label %3218

3213:                                             ; preds = %3205
  %3214 = load i32, ptr %3119, align 4
  %3215 = load i32, ptr %3121, align 4
  %3216 = icmp eq i32 %3214, %3215
  br i1 %3216, label %3217, label %3221, !prof !8

3217:                                             ; preds = %3213
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3218:                                             ; preds = %3205, %3202
  %3219 = phi i32 [ %3204, %3202 ], [ %3211, %3205 ]
  %3220 = add i32 %3219, 1
  store i32 %3220, ptr %425, align 4
  br label %3347

3221:                                             ; preds = %3213
  %3222 = add i32 %3214, 1
  store i32 %3222, ptr %3119, align 4
  %3223 = getelementptr i32, ptr %3209, i32 %3214
  store i32 1067680, ptr %3223, align 4
  %3224 = load i32, ptr %10, align 4
  %3225 = load i32, ptr %425, align 4
  %3226 = load ptr, ptr %8, align 4
  store i32 2736, ptr %427, align 4
  store i32 %3225, ptr %424, align 4
  %3227 = add i32 %3225, 1
  store i32 %3227, ptr %425, align 4
  %3228 = icmp eq i32 %3224, 0
  br i1 %3228, label %3229, label %3347

3229:                                             ; preds = %3221
  %3230 = load i32, ptr %3119, align 4
  %3231 = load i32, ptr %3121, align 4
  %3232 = icmp eq i32 %3230, %3231
  br i1 %3232, label %3233, label %3234, !prof !8

3233:                                             ; preds = %3229
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3234:                                             ; preds = %3229
  %3235 = add i32 %3230, 1
  store i32 %3235, ptr %3119, align 4
  %3236 = getelementptr i32, ptr %3226, i32 %3230
  store i32 1067696, ptr %3236, align 4
  br label %3347

3237:                                             ; preds = %3044
  store i32 2577, ptr %427, align 4
  %3238 = load i32, ptr %425, align 4
  store i32 %3238, ptr %424, align 4
  %3239 = add i32 %3238, 1
  store i32 %3239, ptr %425, align 4
  %3240 = load ptr, ptr %8, align 4
  %3241 = load i32, ptr %10, align 4
  %3242 = icmp eq i32 %3241, 0
  br i1 %3242, label %3243, label %3254

3243:                                             ; preds = %3237
  %3244 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3245 = load i32, ptr %3244, align 4
  %3246 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3247 = load i32, ptr %3246, align 4
  %3248 = icmp eq i32 %3245, %3247
  br i1 %3248, label %3249, label %3250, !prof !8

3249:                                             ; preds = %3243
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3250:                                             ; preds = %3243
  %3251 = add i32 %3245, 1
  store i32 %3251, ptr %3244, align 4
  %3252 = getelementptr i32, ptr %3240, i32 %3245
  store i32 1067537, ptr %3252, align 4
  %3253 = load i32, ptr %10, align 4
  br label %3254

3254:                                             ; preds = %3250, %3237
  %3255 = phi i32 [ %3241, %3237 ], [ %3253, %3250 ]
  %3256 = icmp eq i32 %3255, 1
  br i1 %3256, label %3257, label %3268

3257:                                             ; preds = %3254
  %3258 = load i32, ptr %427, align 4
  %3259 = sub i32 2577, %3258
  %3260 = load i32, ptr %424, align 4
  %3261 = add i32 %3259, %3260
  %3262 = load ptr, ptr %2016, align 4
  %3263 = load ptr, ptr %3262, align 8
  %3264 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3263, i32 0, i32 3
  %3265 = load ptr, ptr %3264, align 4
  %3266 = shl i32 %3261, 2
  tail call void %3265(ptr noundef %3262, i32 noundef %3266, i32 noundef 1) #6
  %3267 = load i32, ptr %10, align 4
  br label %3268

3268:                                             ; preds = %3257, %3254
  %3269 = phi i32 [ %3255, %3254 ], [ %3267, %3257 ]
  store i32 2580, ptr %427, align 4
  %3270 = load i32, ptr %425, align 4
  store i32 %3270, ptr %424, align 4
  %3271 = add i32 %3270, 1
  store i32 %3271, ptr %425, align 4
  %3272 = load ptr, ptr %8, align 4
  %3273 = icmp eq i32 %3269, 0
  br i1 %3273, label %3276, label %3274

3274:                                             ; preds = %3268
  store i32 2816, ptr %427, align 4
  store i32 %3271, ptr %424, align 4
  %3275 = add i32 %3270, 5
  store i32 %3275, ptr %425, align 4
  br label %3364

3276:                                             ; preds = %3268
  %3277 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3278 = load i32, ptr %3277, align 4
  %3279 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3280 = load i32, ptr %3279, align 4
  %3281 = icmp eq i32 %3278, %3280
  br i1 %3281, label %3282, label %3283, !prof !8

3282:                                             ; preds = %3276
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3283:                                             ; preds = %3276
  %3284 = add i32 %3278, 1
  store i32 %3284, ptr %3277, align 4
  %3285 = getelementptr i32, ptr %3272, i32 %3278
  store i32 1067540, ptr %3285, align 4
  br label %3347

3286:                                             ; preds = %3044
  store i32 2577, ptr %427, align 4
  %3287 = load i32, ptr %425, align 4
  store i32 %3287, ptr %424, align 4
  %3288 = add i32 %3287, 1
  store i32 %3288, ptr %425, align 4
  %3289 = load ptr, ptr %8, align 4
  %3290 = load i32, ptr %10, align 4
  %3291 = icmp eq i32 %3290, 0
  br i1 %3291, label %3292, label %3303

3292:                                             ; preds = %3286
  %3293 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3294 = load i32, ptr %3293, align 4
  %3295 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3296 = load i32, ptr %3295, align 4
  %3297 = icmp eq i32 %3294, %3296
  br i1 %3297, label %3298, label %3299, !prof !8

3298:                                             ; preds = %3292
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3299:                                             ; preds = %3292
  %3300 = add i32 %3294, 1
  store i32 %3300, ptr %3293, align 4
  %3301 = getelementptr i32, ptr %3289, i32 %3294
  store i32 1067537, ptr %3301, align 4
  %3302 = load i32, ptr %10, align 4
  br label %3303

3303:                                             ; preds = %3299, %3286
  %3304 = phi i32 [ %3290, %3286 ], [ %3302, %3299 ]
  %3305 = icmp eq i32 %3304, 1
  br i1 %3305, label %3306, label %3317

3306:                                             ; preds = %3303
  %3307 = load i32, ptr %427, align 4
  %3308 = sub i32 2577, %3307
  %3309 = load i32, ptr %424, align 4
  %3310 = add i32 %3308, %3309
  %3311 = load ptr, ptr %2016, align 4
  %3312 = load ptr, ptr %3311, align 8
  %3313 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3312, i32 0, i32 3
  %3314 = load ptr, ptr %3313, align 4
  %3315 = shl i32 %3310, 2
  tail call void %3314(ptr noundef %3311, i32 noundef %3315, i32 noundef 4097) #6
  %3316 = load i32, ptr %10, align 4
  br label %3317

3317:                                             ; preds = %3306, %3303
  %3318 = phi i32 [ %3304, %3303 ], [ %3316, %3306 ]
  store i32 2580, ptr %427, align 4
  %3319 = load i32, ptr %425, align 4
  store i32 %3319, ptr %424, align 4
  %3320 = add i32 %3319, 2
  store i32 %3320, ptr %425, align 4
  %3321 = load ptr, ptr %8, align 4
  %3322 = icmp eq i32 %3318, 0
  br i1 %3322, label %3323, label %3334

3323:                                             ; preds = %3317
  %3324 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3325 = load i32, ptr %3324, align 4
  %3326 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3327 = load i32, ptr %3326, align 4
  %3328 = icmp eq i32 %3325, %3327
  br i1 %3328, label %3329, label %3330, !prof !8

3329:                                             ; preds = %3323
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3330:                                             ; preds = %3323
  %3331 = add i32 %3325, 1
  store i32 %3331, ptr %3324, align 4
  %3332 = getelementptr i32, ptr %3321, i32 %3325
  store i32 1083924, ptr %3332, align 4
  %3333 = load i32, ptr %10, align 4
  br label %3334

3334:                                             ; preds = %3330, %3317
  %3335 = phi i32 [ %3318, %3317 ], [ %3333, %3330 ]
  %3336 = icmp eq i32 %3335, 1
  br i1 %3336, label %3337, label %3347

3337:                                             ; preds = %3334
  %3338 = load i32, ptr %427, align 4
  %3339 = sub i32 2581, %3338
  %3340 = load i32, ptr %424, align 4
  %3341 = add i32 %3339, %3340
  %3342 = load ptr, ptr %2016, align 4
  %3343 = load ptr, ptr %3342, align 8
  %3344 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3343, i32 0, i32 3
  %3345 = load ptr, ptr %3344, align 4
  %3346 = shl i32 %3341, 2
  tail call void %3345(ptr noundef %3342, i32 noundef %3346, i32 noundef 3) #6
  br label %3347

3347:                                             ; preds = %3337, %3334, %3283, %3234, %3221, %3218, %3107
  %3348 = load i32, ptr %10, align 4
  %3349 = load i32, ptr %425, align 4
  %3350 = load ptr, ptr %8, align 4
  store i32 2816, ptr %427, align 4
  store i32 %3349, ptr %424, align 4
  %3351 = add i32 %3349, 4
  store i32 %3351, ptr %425, align 4
  %3352 = icmp eq i32 %3348, 0
  br i1 %3352, label %3353, label %3364

3353:                                             ; preds = %3347
  %3354 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3355 = load i32, ptr %3354, align 4
  %3356 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3357 = load i32, ptr %3356, align 4
  %3358 = icmp eq i32 %3355, %3357
  br i1 %3358, label %3359, label %3360, !prof !8

3359:                                             ; preds = %3353
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3360:                                             ; preds = %3353
  %3361 = add i32 %3355, 1
  store i32 %3361, ptr %3354, align 4
  %3362 = getelementptr i32, ptr %3350, i32 %3355
  store i32 1116928, ptr %3362, align 4
  %3363 = load i32, ptr %10, align 4
  br label %3364

3364:                                             ; preds = %3360, %3347, %3274
  %3365 = phi i32 [ %3348, %3347 ], [ %3363, %3360 ], [ %3269, %3274 ]
  %3366 = load i32, ptr %2705, align 4
  %3367 = icmp eq i32 %3365, 1
  br i1 %3367, label %3368, label %3381

3368:                                             ; preds = %3364
  %3369 = icmp eq i32 %3366, 64
  %3370 = select i1 %3369, i32 -2139095039, i32 8945665
  %3371 = load i32, ptr %427, align 4
  %3372 = sub i32 2816, %3371
  %3373 = load i32, ptr %424, align 4
  %3374 = add i32 %3372, %3373
  %3375 = load ptr, ptr %2016, align 4
  %3376 = load ptr, ptr %3375, align 8
  %3377 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3376, i32 0, i32 3
  %3378 = load ptr, ptr %3377, align 4
  %3379 = shl i32 %3374, 2
  tail call void %3378(ptr noundef %3375, i32 noundef %3379, i32 noundef %3370) #6
  %3380 = load i32, ptr %2705, align 4
  br label %3381

3381:                                             ; preds = %3368, %3364
  %3382 = phi i32 [ %3366, %3364 ], [ %3380, %3368 ]
  switch i32 %3382, label %3450 [
    i32 71, label %3383
    i32 73, label %3383
    i32 75, label %3383
  ]

3383:                                             ; preds = %3381, %3381, %3381
  store i32 2824, ptr %427, align 4
  %3384 = load i32, ptr %425, align 4
  store i32 %3384, ptr %424, align 4
  %3385 = add i32 %3384, 40
  store i32 %3385, ptr %425, align 4
  %3386 = load ptr, ptr %8, align 4
  %3387 = load i32, ptr %10, align 4
  %3388 = icmp eq i32 %3387, 0
  br i1 %3388, label %3389, label %3399

3389:                                             ; preds = %3383
  %3390 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3391 = load i32, ptr %3390, align 4
  %3392 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3393 = load i32, ptr %3392, align 4
  %3394 = icmp eq i32 %3391, %3393
  br i1 %3394, label %3395, label %3396, !prof !8

3395:                                             ; preds = %3389
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3396:                                             ; preds = %3389
  %3397 = add i32 %3391, 1
  store i32 %3397, ptr %3390, align 4
  %3398 = getelementptr i32, ptr %3386, i32 %3391
  store i32 1706760, ptr %3398, align 4
  br label %3399

3399:                                             ; preds = %3396, %3383
  br label %3400

3400:                                             ; preds = %3415, %3399
  %3401 = phi i32 [ %3416, %3415 ], [ 0, %3399 ]
  %3402 = load i32, ptr %10, align 4
  %3403 = icmp eq i32 %3402, 1
  br i1 %3403, label %3404, label %3415

3404:                                             ; preds = %3400
  %3405 = add nuw nsw i32 %3401, 2832
  %3406 = load i32, ptr %427, align 4
  %3407 = sub i32 %3405, %3406
  %3408 = load i32, ptr %424, align 4
  %3409 = add i32 %3407, %3408
  %3410 = load ptr, ptr %2016, align 4
  %3411 = load ptr, ptr %3410, align 8
  %3412 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3411, i32 0, i32 3
  %3413 = load ptr, ptr %3412, align 4
  %3414 = shl i32 %3409, 2
  tail call void %3413(ptr noundef %3410, i32 noundef %3414, i32 noundef -1) #6
  br label %3415

3415:                                             ; preds = %3404, %3400
  %3416 = add nuw nsw i32 %3401, 1
  %3417 = icmp eq i32 %3416, 32
  br i1 %3417, label %3418, label %3400

3418:                                             ; preds = %3415
  store i32 3118, ptr %427, align 4
  %3419 = load i32, ptr %425, align 4
  store i32 %3419, ptr %424, align 4
  %3420 = add i32 %3419, 13
  store i32 %3420, ptr %425, align 4
  %3421 = load ptr, ptr %8, align 4
  %3422 = load i32, ptr %10, align 4
  %3423 = icmp eq i32 %3422, 0
  br i1 %3423, label %3424, label %3435

3424:                                             ; preds = %3418
  %3425 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3426 = load i32, ptr %3425, align 4
  %3427 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3428 = load i32, ptr %3427, align 4
  %3429 = icmp eq i32 %3426, %3428
  br i1 %3429, label %3430, label %3431, !prof !8

3430:                                             ; preds = %3424
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3431:                                             ; preds = %3424
  %3432 = add i32 %3426, 1
  store i32 %3432, ptr %3425, align 4
  %3433 = getelementptr i32, ptr %3421, i32 %3426
  store i32 1264686, ptr %3433, align 4
  %3434 = load i32, ptr %10, align 4
  br label %3435

3435:                                             ; preds = %3431, %3418
  %3436 = phi i32 [ %3422, %3418 ], [ %3434, %3431 ]
  %3437 = icmp eq i32 %3436, 1
  br i1 %3437, label %3438, label %3588

3438:                                             ; preds = %3435
  %3439 = load i32, ptr %427, align 4
  %3440 = sub i32 3127, %3439
  %3441 = load i32, ptr %424, align 4
  %3442 = add i32 %3440, %3441
  %3443 = load ptr, ptr %2016, align 4
  %3444 = load ptr, ptr %3443, align 8
  %3445 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3444, i32 0, i32 3
  %3446 = load ptr, ptr %3445, align 4
  %3447 = shl i32 %3442, 2
  tail call void %3446(ptr noundef %3443, i32 noundef %3447, i32 noundef 5) #6
  %3448 = load i32, ptr %10, align 4
  %3449 = icmp eq i32 %3448, 1
  br i1 %3449, label %3577, label %3588

3450:                                             ; preds = %3381
  store i32 2820, ptr %427, align 4
  %3451 = load i32, ptr %425, align 4
  store i32 %3451, ptr %424, align 4
  %3452 = add i32 %3451, 4
  store i32 %3452, ptr %425, align 4
  %3453 = load ptr, ptr %8, align 4
  %3454 = load i32, ptr %10, align 4
  %3455 = icmp eq i32 %3454, 0
  br i1 %3455, label %3456, label %3466

3456:                                             ; preds = %3450
  %3457 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3458 = load i32, ptr %3457, align 4
  %3459 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3460 = load i32, ptr %3459, align 4
  %3461 = icmp eq i32 %3458, %3460
  br i1 %3461, label %3462, label %3463, !prof !8

3462:                                             ; preds = %3456
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3463:                                             ; preds = %3456
  %3464 = add i32 %3458, 1
  store i32 %3464, ptr %3457, align 4
  %3465 = getelementptr i32, ptr %3453, i32 %3458
  store i32 1116932, ptr %3465, align 4
  br label %3466

3466:                                             ; preds = %3463, %3450
  %3467 = load i32, ptr %2705, align 4
  %3468 = icmp eq i32 %3467, 64
  br i1 %3468, label %3469, label %3485

3469:                                             ; preds = %3466
  store i32 2824, ptr %427, align 4
  %3470 = load i32, ptr %425, align 4
  store i32 %3470, ptr %424, align 4
  %3471 = add i32 %3470, 36
  store i32 %3471, ptr %425, align 4
  %3472 = load ptr, ptr %8, align 4
  %3473 = load i32, ptr %10, align 4
  %3474 = icmp eq i32 %3473, 0
  br i1 %3474, label %3475, label %3536

3475:                                             ; preds = %3469
  %3476 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3477 = load i32, ptr %3476, align 4
  %3478 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3479 = load i32, ptr %3478, align 4
  %3480 = icmp eq i32 %3477, %3479
  br i1 %3480, label %3481, label %3482, !prof !8

3481:                                             ; preds = %3475
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3482:                                             ; preds = %3475
  %3483 = add i32 %3477, 1
  store i32 %3483, ptr %3476, align 4
  %3484 = getelementptr i32, ptr %3472, i32 %3477
  store i32 1641224, ptr %3484, align 4
  br label %3536

3485:                                             ; preds = %3466
  %3486 = icmp ult i32 %3467, 67
  br i1 %3486, label %3487, label %3503

3487:                                             ; preds = %3485
  store i32 2824, ptr %427, align 4
  %3488 = load i32, ptr %425, align 4
  store i32 %3488, ptr %424, align 4
  %3489 = add i32 %3488, 24
  store i32 %3489, ptr %425, align 4
  %3490 = load ptr, ptr %8, align 4
  %3491 = load i32, ptr %10, align 4
  %3492 = icmp eq i32 %3491, 0
  br i1 %3492, label %3493, label %3536

3493:                                             ; preds = %3487
  %3494 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3495 = load i32, ptr %3494, align 4
  %3496 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3497 = load i32, ptr %3496, align 4
  %3498 = icmp eq i32 %3495, %3497
  br i1 %3498, label %3499, label %3500, !prof !8

3499:                                             ; preds = %3493
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3500:                                             ; preds = %3493
  %3501 = add i32 %3495, 1
  store i32 %3501, ptr %3494, align 4
  %3502 = getelementptr i32, ptr %3490, i32 %3495
  store i32 1444616, ptr %3502, align 4
  br label %3536

3503:                                             ; preds = %3485
  %3504 = icmp ult i32 %3467, 75
  store i32 2824, ptr %427, align 4
  %3505 = load i32, ptr %425, align 4
  store i32 %3505, ptr %424, align 4
  br i1 %3504, label %3506, label %3521

3506:                                             ; preds = %3503
  %3507 = add i32 %3505, 16
  store i32 %3507, ptr %425, align 4
  %3508 = load ptr, ptr %8, align 4
  %3509 = load i32, ptr %10, align 4
  %3510 = icmp eq i32 %3509, 0
  br i1 %3510, label %3511, label %3536

3511:                                             ; preds = %3506
  %3512 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3513 = load i32, ptr %3512, align 4
  %3514 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3515 = load i32, ptr %3514, align 4
  %3516 = icmp eq i32 %3513, %3515
  br i1 %3516, label %3517, label %3518, !prof !8

3517:                                             ; preds = %3511
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3518:                                             ; preds = %3511
  %3519 = add i32 %3513, 1
  store i32 %3519, ptr %3512, align 4
  %3520 = getelementptr i32, ptr %3508, i32 %3513
  store i32 1313544, ptr %3520, align 4
  br label %3536

3521:                                             ; preds = %3503
  %3522 = add i32 %3505, 8
  store i32 %3522, ptr %425, align 4
  %3523 = load ptr, ptr %8, align 4
  %3524 = load i32, ptr %10, align 4
  %3525 = icmp eq i32 %3524, 0
  br i1 %3525, label %3526, label %3536

3526:                                             ; preds = %3521
  %3527 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3528 = load i32, ptr %3527, align 4
  %3529 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3530 = load i32, ptr %3529, align 4
  %3531 = icmp eq i32 %3528, %3530
  br i1 %3531, label %3532, label %3533, !prof !8

3532:                                             ; preds = %3526
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3533:                                             ; preds = %3526
  %3534 = add i32 %3528, 1
  store i32 %3534, ptr %3527, align 4
  %3535 = getelementptr i32, ptr %3523, i32 %3528
  store i32 1182472, ptr %3535, align 4
  br label %3536

3536:                                             ; preds = %3533, %3521, %3518, %3506, %3500, %3487, %3482, %3469
  %3537 = load i32, ptr %2705, align 4
  %3538 = icmp eq i32 %3537, 64
  %3539 = select i1 %3538, i32 12, i32 13
  store i32 2860, ptr %427, align 4
  %3540 = load i32, ptr %425, align 4
  store i32 %3540, ptr %424, align 4
  %3541 = add i32 %3540, %3539
  store i32 %3541, ptr %425, align 4
  %3542 = shl nuw nsw i32 %3539, 14
  %3543 = or i32 %3542, 1051436
  %3544 = load ptr, ptr %8, align 4
  %3545 = load i32, ptr %10, align 4
  %3546 = icmp eq i32 %3545, 0
  br i1 %3546, label %3547, label %3558

3547:                                             ; preds = %3536
  %3548 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3549 = load i32, ptr %3548, align 4
  %3550 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3551 = load i32, ptr %3550, align 4
  %3552 = icmp eq i32 %3549, %3551
  br i1 %3552, label %3553, label %3554, !prof !8

3553:                                             ; preds = %3547
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3554:                                             ; preds = %3547
  %3555 = add i32 %3549, 1
  store i32 %3555, ptr %3548, align 4
  %3556 = getelementptr i32, ptr %3544, i32 %3549
  store i32 %3543, ptr %3556, align 4
  %3557 = load i32, ptr %10, align 4
  br label %3558

3558:                                             ; preds = %3554, %3536
  %3559 = phi i32 [ %3545, %3536 ], [ %3557, %3554 ]
  %3560 = icmp eq i32 %3559, 1
  br i1 %3560, label %3561, label %3571

3561:                                             ; preds = %3558
  %3562 = load i32, ptr %427, align 4
  %3563 = sub i32 2869, %3562
  %3564 = load i32, ptr %424, align 4
  %3565 = add i32 %3563, %3564
  %3566 = load ptr, ptr %2016, align 4
  %3567 = load ptr, ptr %3566, align 8
  %3568 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3567, i32 0, i32 3
  %3569 = load ptr, ptr %3568, align 4
  %3570 = shl i32 %3565, 2
  tail call void %3569(ptr noundef %3566, i32 noundef %3570, i32 noundef 5) #6
  br label %3571

3571:                                             ; preds = %3561, %3558
  %3572 = load i32, ptr %2705, align 4
  %3573 = icmp eq i32 %3572, 64
  br i1 %3573, label %3588, label %3574

3574:                                             ; preds = %3571
  %3575 = load i32, ptr %10, align 4
  %3576 = icmp eq i32 %3575, 1
  br i1 %3576, label %3577, label %3588

3577:                                             ; preds = %3574, %3438
  %3578 = phi i32 [ 3130, %3438 ], [ 2872, %3574 ]
  %3579 = load i32, ptr %427, align 4
  %3580 = sub i32 %3578, %3579
  %3581 = load i32, ptr %424, align 4
  %3582 = add i32 %3580, %3581
  %3583 = load ptr, ptr %2016, align 4
  %3584 = load ptr, ptr %3583, align 8
  %3585 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3584, i32 0, i32 3
  %3586 = load ptr, ptr %3585, align 4
  %3587 = shl i32 %3582, 2
  tail call void %3586(ptr noundef %3583, i32 noundef %3587, i32 noundef 65535) #6
  br label %3588

3588:                                             ; preds = %3577, %3574, %3571, %3438, %3435
  %3589 = load i32, ptr %2705, align 4
  %3590 = icmp eq i32 %3589, 64
  %3591 = select i1 %3590, i32 4, i32 3
  store i32 3328, ptr %427, align 4
  %3592 = load i32, ptr %425, align 4
  store i32 %3592, ptr %424, align 4
  %3593 = add i32 %3592, %3591
  store i32 %3593, ptr %425, align 4
  %3594 = shl nuw nsw i32 %3591, 14
  %3595 = or i32 %3594, 1051904
  %3596 = load ptr, ptr %8, align 4
  %3597 = load i32, ptr %10, align 4
  %3598 = icmp eq i32 %3597, 0
  br i1 %3598, label %3599, label %3612

3599:                                             ; preds = %3588
  %3600 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3601 = load i32, ptr %3600, align 4
  %3602 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3603 = load i32, ptr %3602, align 4
  %3604 = icmp eq i32 %3601, %3603
  br i1 %3604, label %3605, label %3606, !prof !8

3605:                                             ; preds = %3599
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3606:                                             ; preds = %3599
  %3607 = add i32 %3601, 1
  store i32 %3607, ptr %3600, align 4
  %3608 = getelementptr i32, ptr %3596, i32 %3601
  store i32 %3595, ptr %3608, align 4
  %3609 = load i32, ptr %425, align 4
  %3610 = load ptr, ptr %8, align 4
  %3611 = load i32, ptr %10, align 4
  br label %3612

3612:                                             ; preds = %3606, %3588
  %3613 = phi i32 [ %3597, %3588 ], [ %3611, %3606 ]
  %3614 = phi ptr [ %3596, %3588 ], [ %3610, %3606 ]
  %3615 = phi i32 [ %3593, %3588 ], [ %3609, %3606 ]
  %3616 = load i32, ptr %2705, align 4
  %3617 = icmp eq i32 %3616, 64
  %3618 = select i1 %3617, i32 4, i32 3
  store i32 3332, ptr %427, align 4
  store i32 %3615, ptr %424, align 4
  %3619 = add i32 %3618, %3615
  store i32 %3619, ptr %425, align 4
  %3620 = shl nuw nsw i32 %3618, 14
  %3621 = or i32 %3620, 1051908
  %3622 = icmp eq i32 %3613, 0
  br i1 %3622, label %3623, label %3633

3623:                                             ; preds = %3612
  %3624 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3625 = load i32, ptr %3624, align 4
  %3626 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3627 = load i32, ptr %3626, align 4
  %3628 = icmp eq i32 %3625, %3627
  br i1 %3628, label %3629, label %3630, !prof !8

3629:                                             ; preds = %3623
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3630:                                             ; preds = %3623
  %3631 = add i32 %3625, 1
  store i32 %3631, ptr %3624, align 4
  %3632 = getelementptr i32, ptr %3614, i32 %3625
  store i32 %3621, ptr %3632, align 4
  br label %3633

3633:                                             ; preds = %3630, %3612
  %3634 = load ptr, ptr %0, align 4
  %3635 = getelementptr inbounds %struct.nvkm_device, ptr %3634, i32 0, i32 16
  %3636 = load i32, ptr %3635, align 4
  %3637 = add i32 %3636, -64
  %3638 = icmp ult i32 %3637, 12
  br i1 %3638, label %3639, label %3642

3639:                                             ; preds = %3633
  %3640 = getelementptr inbounds [12 x i32], ptr @switch.table.nv40_grctx_generate.1, i32 0, i32 %3637
  %3641 = load i32, ptr %3640, align 4
  br label %3642

3642:                                             ; preds = %3639, %3633
  %3643 = phi i32 [ %3641, %3639 ], [ 1, %3633 ]
  store i32 3336, ptr %427, align 4
  %3644 = load i32, ptr %425, align 4
  store i32 %3644, ptr %424, align 4
  %3645 = add i32 %3644, %3643
  store i32 %3645, ptr %425, align 4
  %3646 = shl nuw nsw i32 %3643, 14
  %3647 = or i32 %3646, 1051912
  %3648 = load ptr, ptr %8, align 4
  %3649 = load i32, ptr %10, align 4
  %3650 = icmp eq i32 %3649, 0
  br i1 %3650, label %3651, label %3661

3651:                                             ; preds = %3642
  %3652 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3653 = load i32, ptr %3652, align 4
  %3654 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3655 = load i32, ptr %3654, align 4
  %3656 = icmp eq i32 %3653, %3655
  br i1 %3656, label %3657, label %3658, !prof !8

3657:                                             ; preds = %3651
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3658:                                             ; preds = %3651
  %3659 = add i32 %3653, 1
  store i32 %3659, ptr %3652, align 4
  %3660 = getelementptr i32, ptr %3648, i32 %3653
  store i32 %3647, ptr %3660, align 4
  br label %3661

3661:                                             ; preds = %3658, %3642
  br label %3662

3662:                                             ; preds = %3689, %3661
  %3663 = phi i32 [ %3690, %3689 ], [ 0, %3661 ]
  %3664 = load ptr, ptr %0, align 4
  %3665 = getelementptr inbounds %struct.nvkm_device, ptr %3664, i32 0, i32 16
  %3666 = load i32, ptr %3665, align 4
  %3667 = add i32 %3666, -64
  %3668 = icmp ult i32 %3667, 12
  br i1 %3668, label %3669, label %3672

3669:                                             ; preds = %3662
  %3670 = getelementptr inbounds [12 x i32], ptr @switch.table.nv40_grctx_generate.1, i32 0, i32 %3667
  %3671 = load i32, ptr %3670, align 4
  br label %3672

3672:                                             ; preds = %3669, %3662
  %3673 = phi i32 [ %3671, %3669 ], [ 1, %3662 ]
  %3674 = icmp ult i32 %3663, %3673
  br i1 %3674, label %3675, label %3691

3675:                                             ; preds = %3672
  %3676 = load i32, ptr %10, align 4
  %3677 = icmp eq i32 %3676, 1
  br i1 %3677, label %3678, label %3689

3678:                                             ; preds = %3675
  %3679 = add nuw nsw i32 %3663, 3336
  %3680 = load i32, ptr %427, align 4
  %3681 = sub i32 %3679, %3680
  %3682 = load i32, ptr %424, align 4
  %3683 = add i32 %3681, %3682
  %3684 = load ptr, ptr %2016, align 4
  %3685 = load ptr, ptr %3684, align 8
  %3686 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3685, i32 0, i32 3
  %3687 = load ptr, ptr %3686, align 4
  %3688 = shl i32 %3683, 2
  tail call void %3687(ptr noundef %3684, i32 noundef %3688, i32 noundef 21845) #6
  br label %3689

3689:                                             ; preds = %3678, %3675
  %3690 = add nuw nsw i32 %3663, 1
  br label %3662

3691:                                             ; preds = %3672
  %3692 = load i32, ptr %2705, align 4
  %3693 = icmp eq i32 %3692, 64
  br i1 %3693, label %3724, label %3694

3694:                                             ; preds = %3691
  store i32 3456, ptr %427, align 4
  %3695 = load i32, ptr %425, align 4
  store i32 %3695, ptr %424, align 4
  %3696 = add i32 %3695, 1
  store i32 %3696, ptr %425, align 4
  %3697 = load ptr, ptr %8, align 4
  %3698 = load i32, ptr %10, align 4
  %3699 = icmp eq i32 %3698, 0
  br i1 %3699, label %3700, label %3711

3700:                                             ; preds = %3694
  %3701 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3702 = load i32, ptr %3701, align 4
  %3703 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3704 = load i32, ptr %3703, align 4
  %3705 = icmp eq i32 %3702, %3704
  br i1 %3705, label %3706, label %3707, !prof !8

3706:                                             ; preds = %3700
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3707:                                             ; preds = %3700
  %3708 = add i32 %3702, 1
  store i32 %3708, ptr %3701, align 4
  %3709 = getelementptr i32, ptr %3697, i32 %3702
  store i32 1068416, ptr %3709, align 4
  %3710 = load i32, ptr %10, align 4
  br label %3711

3711:                                             ; preds = %3707, %3694
  %3712 = phi i32 [ %3698, %3694 ], [ %3710, %3707 ]
  %3713 = icmp eq i32 %3712, 1
  br i1 %3713, label %3714, label %3724

3714:                                             ; preds = %3711
  %3715 = load i32, ptr %427, align 4
  %3716 = sub i32 3456, %3715
  %3717 = load i32, ptr %424, align 4
  %3718 = add i32 %3716, %3717
  %3719 = load ptr, ptr %2016, align 4
  %3720 = load ptr, ptr %3719, align 8
  %3721 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3720, i32 0, i32 3
  %3722 = load ptr, ptr %3721, align 4
  %3723 = shl i32 %3718, 2
  tail call void %3722(ptr noundef %3719, i32 noundef %3723, i32 noundef 1) #6
  br label %3724

3724:                                             ; preds = %3714, %3711, %3691
  store i32 3584, ptr %427, align 4
  %3725 = load i32, ptr %425, align 4
  store i32 %3725, ptr %424, align 4
  %3726 = add i32 %3725, 1
  store i32 %3726, ptr %425, align 4
  %3727 = load ptr, ptr %8, align 4
  %3728 = load i32, ptr %10, align 4
  %3729 = icmp eq i32 %3728, 0
  br i1 %3729, label %3732, label %3730

3730:                                             ; preds = %3724
  store i32 3846, ptr %427, align 4
  store i32 %3726, ptr %424, align 4
  %3731 = add i32 %3725, 2
  store i32 %3731, ptr %425, align 4
  br label %3756

3732:                                             ; preds = %3724
  %3733 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3734 = load i32, ptr %3733, align 4
  %3735 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3736 = load i32, ptr %3735, align 4
  %3737 = icmp eq i32 %3734, %3736
  br i1 %3737, label %3738, label %3739, !prof !8

3738:                                             ; preds = %3732
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3739:                                             ; preds = %3732
  %3740 = add i32 %3734, 1
  store i32 %3740, ptr %3733, align 4
  %3741 = getelementptr i32, ptr %3727, i32 %3734
  store i32 1068544, ptr %3741, align 4
  %3742 = load i32, ptr %10, align 4
  %3743 = load i32, ptr %425, align 4
  %3744 = load ptr, ptr %8, align 4
  store i32 3846, ptr %427, align 4
  store i32 %3743, ptr %424, align 4
  %3745 = add i32 %3743, 1
  store i32 %3745, ptr %425, align 4
  %3746 = icmp eq i32 %3742, 0
  br i1 %3746, label %3747, label %3756

3747:                                             ; preds = %3739
  %3748 = load i32, ptr %3733, align 4
  %3749 = load i32, ptr %3735, align 4
  %3750 = icmp eq i32 %3748, %3749
  br i1 %3750, label %3751, label %3752, !prof !8

3751:                                             ; preds = %3747
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3752:                                             ; preds = %3747
  %3753 = add i32 %3748, 1
  store i32 %3753, ptr %3733, align 4
  %3754 = getelementptr i32, ptr %3744, i32 %3748
  store i32 1068806, ptr %3754, align 4
  %3755 = load i32, ptr %10, align 4
  br label %3756

3756:                                             ; preds = %3752, %3739, %3730
  %3757 = phi i32 [ %3742, %3739 ], [ %3755, %3752 ], [ %3728, %3730 ]
  %3758 = icmp eq i32 %3757, 1
  br i1 %3758, label %3759, label %3769

3759:                                             ; preds = %3756
  %3760 = load i32, ptr %427, align 4
  %3761 = sub i32 3846, %3760
  %3762 = load i32, ptr %424, align 4
  %3763 = add i32 %3761, %3762
  %3764 = load ptr, ptr %2016, align 4
  %3765 = load ptr, ptr %3764, align 8
  %3766 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3765, i32 0, i32 3
  %3767 = load ptr, ptr %3766, align 4
  %3768 = shl i32 %3763, 2
  tail call void %3767(ptr noundef %3764, i32 noundef %3768, i32 noundef 1) #6
  br label %3769

3769:                                             ; preds = %3759, %3756
  %3770 = load i32, ptr %2705, align 4
  switch i32 %3770, label %3834 [
    i32 70, label %3771
    i32 71, label %3771
    i32 73, label %3771
    i32 75, label %3771
  ]

3771:                                             ; preds = %3769, %3769, %3769, %3769
  store i32 5126, ptr %427, align 4
  %3772 = load i32, ptr %425, align 4
  store i32 %3772, ptr %424, align 4
  %3773 = add i32 %3772, 1
  store i32 %3773, ptr %425, align 4
  %3774 = load ptr, ptr %8, align 4
  %3775 = load i32, ptr %10, align 4
  %3776 = icmp eq i32 %3775, 0
  br i1 %3776, label %3777, label %3788

3777:                                             ; preds = %3771
  %3778 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3779 = load i32, ptr %3778, align 4
  %3780 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3781 = load i32, ptr %3780, align 4
  %3782 = icmp eq i32 %3779, %3781
  br i1 %3782, label %3783, label %3784, !prof !8

3783:                                             ; preds = %3777
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3784:                                             ; preds = %3777
  %3785 = add i32 %3779, 1
  store i32 %3785, ptr %3778, align 4
  %3786 = getelementptr i32, ptr %3774, i32 %3779
  store i32 1070086, ptr %3786, align 4
  %3787 = load i32, ptr %10, align 4
  br label %3788

3788:                                             ; preds = %3784, %3771
  %3789 = phi i32 [ %3775, %3771 ], [ %3787, %3784 ]
  %3790 = icmp eq i32 %3789, 1
  br i1 %3790, label %3791, label %3802

3791:                                             ; preds = %3788
  %3792 = load i32, ptr %427, align 4
  %3793 = sub i32 5126, %3792
  %3794 = load i32, ptr %424, align 4
  %3795 = add i32 %3793, %3794
  %3796 = load ptr, ptr %2016, align 4
  %3797 = load ptr, ptr %3796, align 8
  %3798 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3797, i32 0, i32 3
  %3799 = load ptr, ptr %3798, align 4
  %3800 = shl i32 %3795, 2
  tail call void %3799(ptr noundef %3796, i32 noundef %3800, i32 noundef 148897793) #6
  %3801 = load i32, ptr %10, align 4
  br label %3802

3802:                                             ; preds = %3791, %3788
  %3803 = phi i32 [ %3789, %3788 ], [ %3801, %3791 ]
  store i32 5897, ptr %427, align 4
  %3804 = load i32, ptr %425, align 4
  store i32 %3804, ptr %424, align 4
  %3805 = add i32 %3804, 1
  store i32 %3805, ptr %425, align 4
  %3806 = load ptr, ptr %8, align 4
  %3807 = icmp eq i32 %3803, 0
  br i1 %3807, label %3808, label %3819

3808:                                             ; preds = %3802
  %3809 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3810 = load i32, ptr %3809, align 4
  %3811 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3812 = load i32, ptr %3811, align 4
  %3813 = icmp eq i32 %3810, %3812
  br i1 %3813, label %3814, label %3815, !prof !8

3814:                                             ; preds = %3808
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3815:                                             ; preds = %3808
  %3816 = add i32 %3810, 1
  store i32 %3816, ptr %3809, align 4
  %3817 = getelementptr i32, ptr %3806, i32 %3810
  store i32 1070857, ptr %3817, align 4
  %3818 = load i32, ptr %10, align 4
  br label %3819

3819:                                             ; preds = %3815, %3802
  %3820 = phi i32 [ %3803, %3802 ], [ %3818, %3815 ]
  %3821 = icmp eq i32 %3820, 1
  br i1 %3821, label %3822, label %3832

3822:                                             ; preds = %3819
  %3823 = load i32, ptr %427, align 4
  %3824 = sub i32 5897, %3823
  %3825 = load i32, ptr %424, align 4
  %3826 = add i32 %3824, %3825
  %3827 = load ptr, ptr %2016, align 4
  %3828 = load ptr, ptr %3827, align 8
  %3829 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3828, i32 0, i32 3
  %3830 = load ptr, ptr %3829, align 4
  %3831 = shl i32 %3826, 2
  tail call void %3830(ptr noundef %3827, i32 noundef %3831, i32 noundef 929792) #6
  br label %3832

3832:                                             ; preds = %3822, %3819
  %3833 = load i32, ptr %2705, align 4
  br label %3834

3834:                                             ; preds = %3832, %3769
  %3835 = phi i32 [ %3833, %3832 ], [ %3770, %3769 ]
  %3836 = icmp eq i32 %3835, 78
  br i1 %3836, label %3855, label %3837

3837:                                             ; preds = %3834
  store i32 5632, ptr %427, align 4
  %3838 = load i32, ptr %425, align 4
  store i32 %3838, ptr %424, align 4
  %3839 = add i32 %3838, 11
  store i32 %3839, ptr %425, align 4
  %3840 = load ptr, ptr %8, align 4
  %3841 = load i32, ptr %10, align 4
  %3842 = icmp eq i32 %3841, 0
  br i1 %3842, label %3845, label %3843

3843:                                             ; preds = %3837
  store i32 7168, ptr %427, align 4
  store i32 %3839, ptr %424, align 4
  %3844 = add i32 %3838, 12
  store i32 %3844, ptr %425, align 4
  br label %3873

3845:                                             ; preds = %3837
  %3846 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3847 = load i32, ptr %3846, align 4
  %3848 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3849 = load i32, ptr %3848, align 4
  %3850 = icmp eq i32 %3847, %3849
  br i1 %3850, label %3851, label %3852, !prof !8

3851:                                             ; preds = %3845
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3852:                                             ; preds = %3845
  %3853 = add i32 %3847, 1
  store i32 %3853, ptr %3846, align 4
  %3854 = getelementptr i32, ptr %3840, i32 %3847
  store i32 1234432, ptr %3854, align 4
  br label %3855

3855:                                             ; preds = %3852, %3834
  %3856 = load i32, ptr %10, align 4
  %3857 = load i32, ptr %425, align 4
  %3858 = load ptr, ptr %8, align 4
  store i32 7168, ptr %427, align 4
  store i32 %3857, ptr %424, align 4
  %3859 = add i32 %3857, 1
  store i32 %3859, ptr %425, align 4
  %3860 = icmp eq i32 %3856, 0
  br i1 %3860, label %3861, label %3873

3861:                                             ; preds = %3855
  %3862 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3863 = load i32, ptr %3862, align 4
  %3864 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3865 = load i32, ptr %3864, align 4
  %3866 = icmp eq i32 %3863, %3865
  br i1 %3866, label %3867, label %3868, !prof !8

3867:                                             ; preds = %3861
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3868:                                             ; preds = %3861
  %3869 = add i32 %3863, 1
  store i32 %3869, ptr %3862, align 4
  %3870 = getelementptr i32, ptr %3858, i32 %3863
  store i32 1072128, ptr %3870, align 4
  %3871 = load ptr, ptr %8, align 4
  %3872 = load i32, ptr %10, align 4
  br label %3873

3873:                                             ; preds = %3868, %3855, %3843
  %3874 = phi i32 [ 1, %3843 ], [ %3856, %3855 ], [ %3872, %3868 ]
  %3875 = phi ptr [ %3840, %3843 ], [ %3858, %3855 ], [ %3871, %3868 ]
  %3876 = load ptr, ptr %0, align 4
  %3877 = getelementptr inbounds %struct.nvkm_device, ptr %3876, i32 0, i32 16
  %3878 = load i32, ptr %3877, align 4
  %3879 = and i32 %3878, 240
  %3880 = icmp ne i32 %3879, 96
  %3881 = and i32 %3878, 15
  %3882 = lshr i32 -2736, %3881
  %3883 = and i32 %3882, 1
  %3884 = icmp eq i32 %3883, 0
  %3885 = select i1 %3880, i1 %3884, i1 false
  %3886 = select i1 %3885, i32 1668, i32 132
  %3887 = icmp eq i32 %3874, 0
  br i1 %3887, label %3888, label %3971

3888:                                             ; preds = %3873
  %3889 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3890 = load i32, ptr %3889, align 4
  %3891 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3892 = load i32, ptr %3891, align 4
  %3893 = icmp eq i32 %3890, %3892
  br i1 %3893, label %3894, label %3895, !prof !8

3894:                                             ; preds = %3888
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3895:                                             ; preds = %3888
  %3896 = add i32 %3890, 1
  store i32 %3896, ptr %3889, align 4
  %3897 = getelementptr i32, ptr %3875, i32 %3890
  store i32 3145728, ptr %3897, align 4
  %3898 = load i32, ptr %10, align 4
  %3899 = add nuw nsw i32 %3886, 2097148
  %3900 = load ptr, ptr %8, align 4
  %3901 = icmp eq i32 %3898, 0
  br i1 %3901, label %3902, label %3971

3902:                                             ; preds = %3895
  %3903 = load i32, ptr %3889, align 4
  %3904 = load i32, ptr %3891, align 4
  %3905 = icmp eq i32 %3903, %3904
  br i1 %3905, label %3906, label %3907, !prof !8

3906:                                             ; preds = %3902
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3907:                                             ; preds = %3902
  %3908 = add i32 %3903, 1
  store i32 %3908, ptr %3889, align 4
  %3909 = getelementptr i32, ptr %3900, i32 %3903
  store i32 %3899, ptr %3909, align 4
  %3910 = load ptr, ptr %8, align 4
  %3911 = load i32, ptr %10, align 4
  %3912 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 6
  %3913 = load i32, ptr %3912, align 4
  %3914 = shl i32 %3913, 8
  %3915 = icmp eq i32 %3914, 0
  %3916 = or i32 %3914, 4194304
  %3917 = select i1 %3915, i32 -12581376, i32 %3916
  %3918 = icmp eq i32 %3911, 0
  br i1 %3918, label %3919, label %3971

3919:                                             ; preds = %3907
  %3920 = load i32, ptr %3889, align 4
  %3921 = load i32, ptr %3891, align 4
  %3922 = icmp eq i32 %3920, %3921
  br i1 %3922, label %3923, label %3924, !prof !8

3923:                                             ; preds = %3919
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3924:                                             ; preds = %3919
  %3925 = add i32 %3920, 1
  store i32 %3925, ptr %3889, align 4
  %3926 = getelementptr i32, ptr %3910, i32 %3920
  store i32 %3917, ptr %3926, align 4
  %3927 = load i32, ptr %10, align 4
  %3928 = or i32 %3886, 2097152
  %3929 = load ptr, ptr %8, align 4
  %3930 = icmp eq i32 %3927, 0
  br i1 %3930, label %3931, label %3971

3931:                                             ; preds = %3924
  %3932 = load i32, ptr %3889, align 4
  %3933 = load i32, ptr %3891, align 4
  %3934 = icmp eq i32 %3932, %3933
  br i1 %3934, label %3935, label %3936, !prof !8

3935:                                             ; preds = %3931
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3936:                                             ; preds = %3931
  %3937 = add i32 %3932, 1
  store i32 %3937, ptr %3889, align 4
  %3938 = getelementptr i32, ptr %3929, i32 %3932
  store i32 %3928, ptr %3938, align 4
  %3939 = load i32, ptr %10, align 4
  %3940 = load ptr, ptr %8, align 4
  %3941 = icmp eq i32 %3939, 0
  br i1 %3941, label %3942, label %3971

3942:                                             ; preds = %3936
  %3943 = load i32, ptr %3889, align 4
  store i32 %3943, ptr %3912, align 4
  %3944 = icmp eq i32 %3943, 0
  br i1 %3944, label %3965, label %3945

3945:                                             ; preds = %3957, %3942
  %3946 = phi i32 [ %3958, %3957 ], [ %3943, %3942 ]
  %3947 = phi i32 [ %3959, %3957 ], [ 0, %3942 ]
  %3948 = getelementptr i32, ptr %3940, i32 %3947
  %3949 = load i32, ptr %3948, align 4
  %3950 = and i32 %3949, -983296
  %3951 = icmp eq i32 %3950, -12581376
  br i1 %3951, label %3952, label %3957

3952:                                             ; preds = %3945
  %3953 = and i32 %3949, 16711935
  %3954 = shl i32 %3946, 8
  %3955 = or i32 %3953, %3954
  store i32 %3955, ptr %3948, align 4
  %3956 = load i32, ptr %3889, align 4
  br label %3957

3957:                                             ; preds = %3952, %3945
  %3958 = phi i32 [ %3946, %3945 ], [ %3956, %3952 ]
  %3959 = add nuw i32 %3947, 1
  %3960 = icmp ult i32 %3959, %3958
  br i1 %3960, label %3945, label %3961

3961:                                             ; preds = %3957
  %3962 = load i32, ptr %10, align 4
  %3963 = load ptr, ptr %8, align 4
  %3964 = icmp eq i32 %3962, 0
  br i1 %3964, label %3965, label %3971

3965:                                             ; preds = %3961, %3942
  %3966 = phi ptr [ %3963, %3961 ], [ %3940, %3942 ]
  %3967 = phi i32 [ %3958, %3961 ], [ 0, %3942 ]
  %3968 = load i32, ptr %3891, align 4
  %3969 = icmp eq i32 %3967, %3968
  br i1 %3969, label %3970, label %3974, !prof !8

3970:                                             ; preds = %3965
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3971:                                             ; preds = %3961, %3936, %3924, %3907, %3895, %3873
  %3972 = load i32, ptr %425, align 4
  %3973 = add i32 %3972, %3886
  store i32 %3973, ptr %425, align 4
  store i32 %3973, ptr %424, align 4
  br label %4004

3974:                                             ; preds = %3965
  %3975 = add i32 %3967, 1
  store i32 %3975, ptr %3889, align 4
  %3976 = getelementptr i32, ptr %3966, i32 %3967
  store i32 8388609, ptr %3976, align 4
  %3977 = load ptr, ptr %8, align 4
  %3978 = load i32, ptr %10, align 4
  %3979 = load i32, ptr %425, align 4
  %3980 = add i32 %3979, %3886
  store i32 %3980, ptr %425, align 4
  store i32 %3980, ptr %424, align 4
  %3981 = or i32 %3980, 2097152
  %3982 = icmp eq i32 %3978, 0
  br i1 %3982, label %3983, label %4004

3983:                                             ; preds = %3974
  %3984 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3985 = load i32, ptr %3984, align 4
  %3986 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3987 = load i32, ptr %3986, align 4
  %3988 = icmp eq i32 %3985, %3987
  br i1 %3988, label %3989, label %3990, !prof !8

3989:                                             ; preds = %3983
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3990:                                             ; preds = %3983
  %3991 = add i32 %3985, 1
  store i32 %3991, ptr %3984, align 4
  %3992 = getelementptr i32, ptr %3977, i32 %3985
  store i32 %3981, ptr %3992, align 4
  %3993 = load i32, ptr %10, align 4
  %3994 = load ptr, ptr %8, align 4
  %3995 = icmp eq i32 %3993, 0
  br i1 %3995, label %3996, label %4004

3996:                                             ; preds = %3990
  %3997 = load i32, ptr %3984, align 4
  %3998 = load i32, ptr %3986, align 4
  %3999 = icmp eq i32 %3997, %3998
  br i1 %3999, label %4000, label %4001, !prof !8

4000:                                             ; preds = %3996
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4001:                                             ; preds = %3996
  %4002 = add i32 %3997, 1
  store i32 %4002, ptr %3984, align 4
  %4003 = getelementptr i32, ptr %3994, i32 %3997
  store i32 6291466, ptr %4003, align 4
  br label %4004

4004:                                             ; preds = %4001, %3990, %3974, %3971
  %4005 = load ptr, ptr %0, align 4
  %4006 = load ptr, ptr %2016, align 4
  %4007 = getelementptr inbounds %struct.nvkm_device, ptr %4005, i32 0, i32 16
  %4008 = load i32, ptr %4007, align 4
  switch i32 %4008, label %4010 [
    i32 71, label %4012
    i32 73, label %4012
    i32 75, label %4012
    i32 64, label %4022
    i32 65, label %4011
    i32 66, label %4011
    i32 67, label %4009
    i32 68, label %4009
    i32 70, label %4009
    i32 74, label %4009
  ]

4009:                                             ; preds = %4004, %4004, %4004, %4004
  br label %4012

4010:                                             ; preds = %4004
  br label %4012

4011:                                             ; preds = %4004, %4004
  br label %4022

4012:                                             ; preds = %4010, %4009, %4004, %4004, %4004
  %4013 = phi i32 [ 1, %4010 ], [ 3, %4009 ], [ 8, %4004 ], [ 8, %4004 ], [ 8, %4004 ]
  %4014 = and i32 %4008, 240
  %4015 = icmp ne i32 %4014, 96
  %4016 = and i32 %4008, 15
  %4017 = lshr i32 -2736, %4016
  %4018 = and i32 %4017, 1
  %4019 = icmp eq i32 %4018, 0
  %4020 = select i1 %4015, i1 %4019, i1 false
  %4021 = select i1 %4020, i32 4752, i32 4704
  br label %4022

4022:                                             ; preds = %4012, %4011, %4004
  %4023 = phi i32 [ 256, %4012 ], [ 512, %4004 ], [ 256, %4011 ]
  %4024 = phi i32 [ %4013, %4012 ], [ 6, %4004 ], [ 5, %4011 ]
  %4025 = phi i32 [ %4021, %4012 ], [ 6824, %4004 ], [ 5056, %4011 ]
  %4026 = phi i32 [ 1872, %4012 ], [ 2176, %4004 ], [ 2176, %4011 ]
  %4027 = phi i32 [ 4048, %4012 ], [ 5480, %4004 ], [ 4352, %4011 ]
  %4028 = mul nuw nsw i32 %4025, %4024
  %4029 = add nuw nsw i32 %4028, 192
  %4030 = or i32 %4029, 2097152
  %4031 = load ptr, ptr %8, align 4
  %4032 = load i32, ptr %10, align 4
  %4033 = icmp eq i32 %4032, 0
  br i1 %4033, label %4034, label %4047

4034:                                             ; preds = %4022
  %4035 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %4036 = load i32, ptr %4035, align 4
  %4037 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %4038 = load i32, ptr %4037, align 4
  %4039 = icmp eq i32 %4036, %4038
  br i1 %4039, label %4040, label %4041, !prof !8

4040:                                             ; preds = %4034
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4041:                                             ; preds = %4034
  %4042 = add i32 %4036, 1
  store i32 %4042, ptr %4035, align 4
  %4043 = getelementptr i32, ptr %4031, i32 %4036
  store i32 %4030, ptr %4043, align 4
  %4044 = load i32, ptr %4007, align 4
  %4045 = load ptr, ptr %8, align 4
  %4046 = load i32, ptr %10, align 4
  br label %4047

4047:                                             ; preds = %4041, %4022
  %4048 = phi i32 [ %4032, %4022 ], [ %4046, %4041 ]
  %4049 = phi ptr [ %4031, %4022 ], [ %4045, %4041 ]
  %4050 = phi i32 [ %4008, %4022 ], [ %4044, %4041 ]
  %4051 = and i32 %4050, 240
  %4052 = icmp ne i32 %4051, 96
  %4053 = and i32 %4050, 15
  %4054 = lshr i32 -2736, %4053
  %4055 = and i32 %4054, 1
  %4056 = icmp eq i32 %4055, 0
  %4057 = select i1 %4052, i1 %4056, i1 false
  %4058 = select i1 %4057, i32 8388673, i32 8388649
  %4059 = icmp eq i32 %4048, 0
  br i1 %4059, label %4060, label %4071

4060:                                             ; preds = %4047
  %4061 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %4062 = load i32, ptr %4061, align 4
  %4063 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %4064 = load i32, ptr %4063, align 4
  %4065 = icmp eq i32 %4062, %4064
  br i1 %4065, label %4066, label %4067, !prof !8

4066:                                             ; preds = %4060
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4067:                                             ; preds = %4060
  %4068 = add i32 %4062, 1
  store i32 %4068, ptr %4061, align 4
  %4069 = getelementptr i32, ptr %4049, i32 %4062
  store i32 %4058, ptr %4069, align 4
  %4070 = load i32, ptr %10, align 4
  br label %4071

4071:                                             ; preds = %4067, %4047
  %4072 = phi i32 [ %4048, %4047 ], [ %4070, %4067 ]
  %4073 = load i32, ptr %425, align 4
  %4074 = add i32 %4073, %4029
  store i32 %4074, ptr %425, align 4
  %4075 = icmp eq i32 %4072, 1
  br i1 %4075, label %4076, label %4173

4076:                                             ; preds = %4071
  %4077 = load ptr, ptr %4006, align 8
  %4078 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4077, i32 0, i32 3
  %4079 = load ptr, ptr %4078, align 4
  %4080 = shl i32 %4073, 2
  %4081 = add i32 %4080, 640
  tail call void %4079(ptr noundef %4006, i32 noundef %4081, i32 noundef 1065353216) #6
  %4082 = load ptr, ptr %4006, align 8
  %4083 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4082, i32 0, i32 3
  %4084 = load ptr, ptr %4083, align 4
  %4085 = add i32 %4080, 648
  tail call void %4084(ptr noundef %4006, i32 noundef %4085, i32 noundef 1065353216) #6
  %4086 = load ptr, ptr %4006, align 8
  %4087 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4086, i32 0, i32 3
  %4088 = load ptr, ptr %4087, align 4
  %4089 = add i32 %4080, 656
  tail call void %4088(ptr noundef %4006, i32 noundef %4089, i32 noundef 1065353216) #6
  %4090 = load ptr, ptr %4006, align 8
  %4091 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4090, i32 0, i32 3
  %4092 = load ptr, ptr %4091, align 4
  %4093 = add i32 %4080, 664
  tail call void %4092(ptr noundef %4006, i32 noundef %4093, i32 noundef 1065353216) #6
  %4094 = load ptr, ptr %4006, align 8
  %4095 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4094, i32 0, i32 3
  %4096 = load ptr, ptr %4095, align 4
  %4097 = add i32 %4080, 672
  tail call void %4096(ptr noundef %4006, i32 noundef %4097, i32 noundef 1065353216) #6
  %4098 = load ptr, ptr %4006, align 8
  %4099 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4098, i32 0, i32 3
  %4100 = load ptr, ptr %4099, align 4
  %4101 = add i32 %4080, 680
  tail call void %4100(ptr noundef %4006, i32 noundef %4101, i32 noundef 1065353216) #6
  %4102 = load ptr, ptr %4006, align 8
  %4103 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4102, i32 0, i32 3
  %4104 = load ptr, ptr %4103, align 4
  %4105 = add i32 %4080, 688
  tail call void %4104(ptr noundef %4006, i32 noundef %4105, i32 noundef 1065353216) #6
  %4106 = load ptr, ptr %4006, align 8
  %4107 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4106, i32 0, i32 3
  %4108 = load ptr, ptr %4107, align 4
  %4109 = add i32 %4080, 696
  tail call void %4108(ptr noundef %4006, i32 noundef %4109, i32 noundef 1065353216) #6
  %4110 = load ptr, ptr %4006, align 8
  %4111 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4110, i32 0, i32 3
  %4112 = load ptr, ptr %4111, align 4
  %4113 = add i32 %4080, 704
  tail call void %4112(ptr noundef %4006, i32 noundef %4113, i32 noundef 1065353216) #6
  %4114 = load ptr, ptr %4006, align 8
  %4115 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4114, i32 0, i32 3
  %4116 = load ptr, ptr %4115, align 4
  %4117 = add i32 %4080, 712
  tail call void %4116(ptr noundef %4006, i32 noundef %4117, i32 noundef 1065353216) #6
  %4118 = load ptr, ptr %4006, align 8
  %4119 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4118, i32 0, i32 3
  %4120 = load ptr, ptr %4119, align 4
  %4121 = add i32 %4080, 720
  tail call void %4120(ptr noundef %4006, i32 noundef %4121, i32 noundef 1065353216) #6
  %4122 = load ptr, ptr %4006, align 8
  %4123 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4122, i32 0, i32 3
  %4124 = load ptr, ptr %4123, align 4
  %4125 = add i32 %4080, 728
  tail call void %4124(ptr noundef %4006, i32 noundef %4125, i32 noundef 1065353216) #6
  %4126 = load ptr, ptr %4006, align 8
  %4127 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4126, i32 0, i32 3
  %4128 = load ptr, ptr %4127, align 4
  %4129 = add i32 %4080, 736
  tail call void %4128(ptr noundef %4006, i32 noundef %4129, i32 noundef 1065353216) #6
  %4130 = load ptr, ptr %4006, align 8
  %4131 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4130, i32 0, i32 3
  %4132 = load ptr, ptr %4131, align 4
  %4133 = add i32 %4080, 744
  tail call void %4132(ptr noundef %4006, i32 noundef %4133, i32 noundef 1065353216) #6
  %4134 = load ptr, ptr %4006, align 8
  %4135 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4134, i32 0, i32 3
  %4136 = load ptr, ptr %4135, align 4
  %4137 = add i32 %4080, 752
  tail call void %4136(ptr noundef %4006, i32 noundef %4137, i32 noundef 1065353216) #6
  %4138 = load ptr, ptr %4006, align 8
  %4139 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4138, i32 0, i32 3
  %4140 = load ptr, ptr %4139, align 4
  %4141 = add i32 %4080, 760
  tail call void %4140(ptr noundef %4006, i32 noundef %4141, i32 noundef 1065353216) #6
  %4142 = add i32 %4073, 192
  br label %4143

4143:                                             ; preds = %4167, %4076
  %4144 = phi i32 [ %4169, %4167 ], [ %4142, %4076 ]
  %4145 = phi i32 [ %4168, %4167 ], [ 0, %4076 ]
  %4146 = add i32 %4144, %4026
  br label %4149

4147:                                             ; preds = %4149
  %4148 = add i32 %4144, %4027
  br label %4158

4149:                                             ; preds = %4149, %4143
  %4150 = phi i32 [ 0, %4143 ], [ %4156, %4149 ]
  %4151 = load ptr, ptr %4006, align 8
  %4152 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4151, i32 0, i32 3
  %4153 = load ptr, ptr %4152, align 4
  %4154 = add i32 %4146, %4150
  %4155 = shl i32 %4154, 2
  tail call void %4153(ptr noundef %4006, i32 noundef %4155, i32 noundef 1) #6
  %4156 = add nuw nsw i32 %4150, 6
  %4157 = icmp ult i32 %4150, 2172
  br i1 %4157, label %4149, label %4147

4158:                                             ; preds = %4158, %4147
  %4159 = phi i32 [ 0, %4147 ], [ %4165, %4158 ]
  %4160 = load ptr, ptr %4006, align 8
  %4161 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4160, i32 0, i32 3
  %4162 = load ptr, ptr %4161, align 4
  %4163 = add i32 %4148, %4159
  %4164 = shl i32 %4163, 2
  tail call void %4162(ptr noundef %4006, i32 noundef %4164, i32 noundef 1065353216) #6
  %4165 = add nuw nsw i32 %4159, 4
  %4166 = icmp ult i32 %4165, %4023
  br i1 %4166, label %4158, label %4167

4167:                                             ; preds = %4158
  %4168 = add nuw nsw i32 %4145, 1
  %4169 = add i32 %4144, %4025
  %4170 = icmp eq i32 %4168, %4024
  br i1 %4170, label %4171, label %4143

4171:                                             ; preds = %4167
  %4172 = load i32, ptr %10, align 4
  br label %4173

4173:                                             ; preds = %4171, %4071
  %4174 = phi i32 [ %4172, %4171 ], [ %4072, %4071 ]
  %4175 = load ptr, ptr %8, align 4
  %4176 = icmp eq i32 %4174, 0
  br i1 %4176, label %4177, label %4312

4177:                                             ; preds = %4173
  %4178 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %4179 = load i32, ptr %4178, align 4
  store i32 %4179, ptr %1613, align 4
  %4180 = icmp eq i32 %4179, 0
  br i1 %4180, label %4181, label %4188

4181:                                             ; preds = %4177
  %4182 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 1
  %4183 = load i32, ptr %4182, align 4
  %4184 = shl i32 %4183, 8
  %4185 = icmp eq i32 %4184, 0
  %4186 = or i32 %4184, 4194304
  %4187 = select i1 %4185, i32 -12582656, i32 %4186
  br label %4214

4188:                                             ; preds = %4200, %4177
  %4189 = phi i32 [ %4201, %4200 ], [ %4179, %4177 ]
  %4190 = phi i32 [ %4202, %4200 ], [ 0, %4177 ]
  %4191 = getelementptr i32, ptr %4175, i32 %4190
  %4192 = load i32, ptr %4191, align 4
  %4193 = and i32 %4192, -983296
  %4194 = icmp eq i32 %4193, -12581120
  br i1 %4194, label %4195, label %4200

4195:                                             ; preds = %4188
  %4196 = and i32 %4192, 16711935
  %4197 = shl i32 %4189, 8
  %4198 = or i32 %4196, %4197
  store i32 %4198, ptr %4191, align 4
  %4199 = load i32, ptr %4178, align 4
  br label %4200

4200:                                             ; preds = %4195, %4188
  %4201 = phi i32 [ %4189, %4188 ], [ %4199, %4195 ]
  %4202 = add nuw i32 %4190, 1
  %4203 = icmp ult i32 %4202, %4201
  br i1 %4203, label %4188, label %4204

4204:                                             ; preds = %4200
  %4205 = load ptr, ptr %8, align 4
  %4206 = load i32, ptr %10, align 4
  %4207 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 1
  %4208 = load i32, ptr %4207, align 4
  %4209 = shl i32 %4208, 8
  %4210 = icmp eq i32 %4209, 0
  %4211 = or i32 %4209, 4194304
  %4212 = select i1 %4210, i32 -12582656, i32 %4211
  %4213 = icmp eq i32 %4206, 0
  br i1 %4213, label %4214, label %4312

4214:                                             ; preds = %4204, %4181
  %4215 = phi i32 [ %4187, %4181 ], [ %4212, %4204 ]
  %4216 = phi ptr [ %4175, %4181 ], [ %4205, %4204 ]
  %4217 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %4218 = load i32, ptr %4217, align 4
  %4219 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %4220 = load i32, ptr %4219, align 4
  %4221 = icmp eq i32 %4218, %4220
  br i1 %4221, label %4222, label %4223, !prof !8

4222:                                             ; preds = %4214
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4223:                                             ; preds = %4214
  %4224 = add i32 %4218, 1
  store i32 %4224, ptr %4217, align 4
  %4225 = getelementptr i32, ptr %4216, i32 %4218
  store i32 %4215, ptr %4225, align 4
  %4226 = load ptr, ptr %8, align 4
  %4227 = load i32, ptr %10, align 4
  %4228 = load i32, ptr %421, align 4
  %4229 = shl i32 %4228, 8
  %4230 = icmp eq i32 %4229, 0
  %4231 = or i32 %4229, 4194309
  %4232 = select i1 %4230, i32 -12580859, i32 %4231
  %4233 = icmp eq i32 %4227, 0
  br i1 %4233, label %4234, label %4312

4234:                                             ; preds = %4223
  %4235 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %4236 = load i32, ptr %4235, align 4
  %4237 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %4238 = load i32, ptr %4237, align 4
  %4239 = icmp eq i32 %4236, %4238
  br i1 %4239, label %4240, label %4241, !prof !8

4240:                                             ; preds = %4234
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4241:                                             ; preds = %4234
  %4242 = add i32 %4236, 1
  store i32 %4242, ptr %4235, align 4
  %4243 = getelementptr i32, ptr %4226, i32 %4236
  store i32 %4232, ptr %4243, align 4
  %4244 = load i32, ptr %10, align 4
  %4245 = load ptr, ptr %8, align 4
  %4246 = icmp eq i32 %4244, 0
  br i1 %4246, label %4247, label %4312

4247:                                             ; preds = %4241
  %4248 = load i32, ptr %4235, align 4
  %4249 = load i32, ptr %4237, align 4
  %4250 = icmp eq i32 %4248, %4249
  br i1 %4250, label %4251, label %4252, !prof !8

4251:                                             ; preds = %4247
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4252:                                             ; preds = %4247
  %4253 = add i32 %4248, 1
  store i32 %4253, ptr %4235, align 4
  %4254 = getelementptr i32, ptr %4245, i32 %4248
  store i32 6291465, ptr %4254, align 4
  %4255 = load i32, ptr %10, align 4
  %4256 = load ptr, ptr %8, align 4
  %4257 = icmp eq i32 %4255, 0
  br i1 %4257, label %4258, label %4312

4258:                                             ; preds = %4252
  %4259 = load i32, ptr %4235, align 4
  store i32 %4259, ptr %421, align 4
  %4260 = icmp eq i32 %4259, 0
  br i1 %4260, label %4281, label %4261

4261:                                             ; preds = %4273, %4258
  %4262 = phi i32 [ %4274, %4273 ], [ %4259, %4258 ]
  %4263 = phi i32 [ %4275, %4273 ], [ 0, %4258 ]
  %4264 = getelementptr i32, ptr %4256, i32 %4263
  %4265 = load i32, ptr %4264, align 4
  %4266 = and i32 %4265, -983296
  %4267 = icmp eq i32 %4266, -12580864
  br i1 %4267, label %4268, label %4273

4268:                                             ; preds = %4261
  %4269 = and i32 %4265, 16711935
  %4270 = shl i32 %4262, 8
  %4271 = or i32 %4269, %4270
  store i32 %4271, ptr %4264, align 4
  %4272 = load i32, ptr %4235, align 4
  br label %4273

4273:                                             ; preds = %4268, %4261
  %4274 = phi i32 [ %4262, %4261 ], [ %4272, %4268 ]
  %4275 = add nuw i32 %4263, 1
  %4276 = icmp ult i32 %4275, %4274
  br i1 %4276, label %4261, label %4277

4277:                                             ; preds = %4273
  %4278 = load i32, ptr %10, align 4
  %4279 = load ptr, ptr %8, align 4
  %4280 = icmp eq i32 %4278, 0
  br i1 %4280, label %4281, label %4312

4281:                                             ; preds = %4277, %4258
  %4282 = phi ptr [ %4279, %4277 ], [ %4256, %4258 ]
  %4283 = phi i32 [ %4274, %4277 ], [ 0, %4258 ]
  %4284 = load i32, ptr %4237, align 4
  %4285 = icmp eq i32 %4283, %4284
  br i1 %4285, label %4286, label %4287, !prof !8

4286:                                             ; preds = %4281
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4287:                                             ; preds = %4281
  %4288 = add i32 %4283, 1
  store i32 %4288, ptr %4235, align 4
  %4289 = getelementptr i32, ptr %4282, i32 %4283
  store i32 7340037, ptr %4289, align 4
  %4290 = load i32, ptr %10, align 4
  %4291 = load ptr, ptr %8, align 4
  %4292 = icmp eq i32 %4290, 0
  br i1 %4292, label %4293, label %4312

4293:                                             ; preds = %4287
  %4294 = load i32, ptr %4235, align 4
  %4295 = load i32, ptr %4237, align 4
  %4296 = icmp eq i32 %4294, %4295
  br i1 %4296, label %4297, label %4298, !prof !8

4297:                                             ; preds = %4293
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4298:                                             ; preds = %4293
  %4299 = add i32 %4294, 1
  store i32 %4299, ptr %4235, align 4
  %4300 = getelementptr i32, ptr %4291, i32 %4294
  store i32 7340038, ptr %4300, align 4
  %4301 = load i32, ptr %10, align 4
  %4302 = load ptr, ptr %8, align 4
  %4303 = icmp eq i32 %4301, 0
  br i1 %4303, label %4304, label %4312

4304:                                             ; preds = %4298
  %4305 = load i32, ptr %4235, align 4
  %4306 = load i32, ptr %4237, align 4
  %4307 = icmp eq i32 %4305, %4306
  br i1 %4307, label %4308, label %4309, !prof !8

4308:                                             ; preds = %4304
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4309:                                             ; preds = %4304
  %4310 = add i32 %4305, 1
  store i32 %4310, ptr %4235, align 4
  %4311 = getelementptr i32, ptr %4302, i32 %4305
  store i32 6291470, ptr %4311, align 4
  br label %4312

4312:                                             ; preds = %4309, %4298, %4287, %4277, %4252, %4241, %4223, %4204, %4173
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_grctx_init(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvkm_grctx, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1024) #7
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(152) %6, i8 0, i64 152, i1 false)
  store ptr %0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 2
  store ptr %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 4
  store i32 256, ptr %9, align 4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  call fastcc void @nv40_grctx_generate(ptr noundef nonnull %3)
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 4195108
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #6, !srcloc !11
  %15 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %18, %11
  %19 = phi i32 [ %24, %18 ], [ 0, %11 ]
  %20 = getelementptr i32, ptr %5, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr i8, ptr %22, i32 4195112
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !11
  %24 = add nuw i32 %19, 1
  %25 = load i32, ptr %15, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %18, label %27

27:                                               ; preds = %18, %11
  %28 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 2
  store i32 %30, ptr %1, align 4
  call void @kfree(ptr noundef nonnull %5) #6
  br label %31

31:                                               ; preds = %27, %2
  %32 = phi i32 [ 0, %27 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %3) #6
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{i64 2154734295, i64 2154734807, i64 2154734332, i64 2154734388, i64 2154734422, i64 2154734446, i64 2154734487, i64 2154734508, i64 2154734536, i64 2154734570}
!10 = !{i64 2151498475}
!11 = !{i64 3957382}
