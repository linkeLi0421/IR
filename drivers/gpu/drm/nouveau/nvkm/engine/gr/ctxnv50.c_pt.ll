; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_grctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [32 x i32], i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.138, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.138 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.98, %struct.anon.99, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.98 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.99 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.87, i32, i32, i32, i32, i32, i32, %union.anon.91, i32, i32, [11 x i32], %union.anon.95 }>
%union.anon.87 = type { %struct.anon.90 }
%struct.anon.90 = type { i64 }
%union.anon.91 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i32, i8 }
%union.anon.95 = type <{ %struct.anon.97, [12 x i8] }>
%struct.anon.97 = type { i48 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_grctx_fill(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvkm_grctx, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %4, i8 0, i64 156, i1 false)
  store ptr %0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 1
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 3
  store ptr %1, ptr %6, align 4
  call fastcc void @nv50_grctx_generate(ptr noundef nonnull %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_grctx_generate(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %134

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

14:                                               ; preds = %7
  %15 = add i32 %9, 1
  store i32 %15, ptr %8, align 4
  %16 = getelementptr i32, ptr %3, i32 %9
  store i32 7340188, ptr %16, align 4
  %17 = load i32, ptr %4, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %134

20:                                               ; preds = %14
  %21 = load i32, ptr %8, align 4
  %22 = load i32, ptr %10, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

25:                                               ; preds = %20
  %26 = add i32 %21, 1
  store i32 %26, ptr %8, align 4
  %27 = getelementptr i32, ptr %18, i32 %21
  store i32 7340174, ptr %27, align 4
  %28 = load ptr, ptr %2, align 4
  %29 = load i32, ptr %4, align 4
  %30 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 8
  %33 = icmp eq i32 %32, 0
  %34 = or i32 %32, 4194372
  %35 = select i1 %33, i32 -12581820, i32 %34
  %36 = icmp eq i32 %29, 0
  br i1 %36, label %37, label %134

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

44:                                               ; preds = %37
  %45 = add i32 %39, 1
  store i32 %45, ptr %38, align 4
  %46 = getelementptr i32, ptr %28, i32 %39
  store i32 %35, ptr %46, align 4
  %47 = load i32, ptr %30, align 4
  %48 = load ptr, ptr %2, align 4
  %49 = load i32, ptr %4, align 4
  %50 = shl i32 %47, 8
  %51 = icmp eq i32 %50, 0
  %52 = or i32 %50, 4194309
  %53 = select i1 %51, i32 -12581883, i32 %52
  %54 = icmp eq i32 %49, 0
  br i1 %54, label %55, label %134

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62, !prof !8

61:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

62:                                               ; preds = %55
  %63 = add i32 %57, 1
  store i32 %63, ptr %56, align 4
  %64 = getelementptr i32, ptr %48, i32 %57
  store i32 %53, ptr %64, align 4
  %65 = load i32, ptr %4, align 4
  %66 = load ptr, ptr %2, align 4
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %134

68:                                               ; preds = %62
  %69 = load i32, ptr %56, align 4
  %70 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 1
  store i32 %69, ptr %70, align 4
  %71 = icmp eq i32 %69, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = shl i32 %74, 8
  %76 = icmp eq i32 %75, 0
  %77 = or i32 %75, 4194373
  %78 = select i1 %76, i32 -12582331, i32 %77
  br label %105

79:                                               ; preds = %91, %68
  %80 = phi i32 [ %92, %91 ], [ %69, %68 ]
  %81 = phi i32 [ %93, %91 ], [ 0, %68 ]
  %82 = getelementptr i32, ptr %66, i32 %81
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, -917760
  %85 = icmp eq i32 %84, -12582656
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = and i32 %83, 16711935
  %88 = shl i32 %80, 8
  %89 = or i32 %87, %88
  store i32 %89, ptr %82, align 4
  %90 = load i32, ptr %56, align 4
  br label %91

91:                                               ; preds = %86, %79
  %92 = phi i32 [ %80, %79 ], [ %90, %86 ]
  %93 = add nuw i32 %81, 1
  %94 = icmp ult i32 %93, %92
  br i1 %94, label %79, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %2, align 4
  %97 = load i32, ptr %4, align 4
  %98 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = shl i32 %99, 8
  %101 = icmp eq i32 %100, 0
  %102 = or i32 %100, 4194373
  %103 = select i1 %101, i32 -12582331, i32 %102
  %104 = icmp eq i32 %97, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %95, %72
  %106 = phi i32 [ %78, %72 ], [ %103, %95 ]
  %107 = phi ptr [ %73, %72 ], [ %98, %95 ]
  %108 = phi ptr [ %66, %72 ], [ %96, %95 ]
  %109 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %115, !prof !8

114:                                              ; preds = %105
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

115:                                              ; preds = %105
  %116 = add i32 %110, 1
  store i32 %116, ptr %109, align 4
  %117 = getelementptr i32, ptr %108, i32 %110
  store i32 %106, ptr %117, align 4
  %118 = load ptr, ptr %2, align 4
  %119 = load i32, ptr %4, align 4
  %120 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = shl i32 %121, 8
  %123 = icmp eq i32 %122, 0
  %124 = or i32 %122, 4194310
  %125 = select i1 %123, i32 -12582138, i32 %124
  %126 = icmp eq i32 %119, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %136, !prof !8

133:                                              ; preds = %127
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

134:                                              ; preds = %115, %95, %62, %44, %25, %14, %1
  %135 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 6
  br label %495

136:                                              ; preds = %127
  %137 = add i32 %129, 1
  store i32 %137, ptr %128, align 4
  %138 = getelementptr i32, ptr %118, i32 %129
  store i32 %125, ptr %138, align 4
  %139 = load ptr, ptr %2, align 4
  %140 = load i32, ptr %4, align 4
  %141 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = shl i32 %142, 8
  %144 = icmp eq i32 %143, 0
  %145 = or i32 %143, 4194381
  %146 = select i1 %144, i32 -12581299, i32 %145
  %147 = icmp eq i32 %140, 0
  br i1 %147, label %148, label %495

148:                                              ; preds = %136
  %149 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %155, !prof !8

154:                                              ; preds = %148
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

155:                                              ; preds = %148
  %156 = add i32 %150, 1
  store i32 %156, ptr %149, align 4
  %157 = getelementptr i32, ptr %139, i32 %150
  store i32 %146, ptr %157, align 4
  %158 = load i32, ptr %4, align 4
  %159 = load ptr, ptr %2, align 4
  %160 = icmp eq i32 %158, 0
  br i1 %160, label %161, label %495

161:                                              ; preds = %155
  %162 = load i32, ptr %149, align 4
  store i32 %162, ptr %107, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %184, label %164

164:                                              ; preds = %176, %161
  %165 = phi i32 [ %177, %176 ], [ %162, %161 ]
  %166 = phi i32 [ %178, %176 ], [ 0, %161 ]
  %167 = getelementptr i32, ptr %159, i32 %166
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, -917760
  %170 = icmp eq i32 %169, -12582400
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = and i32 %168, 16711935
  %173 = shl i32 %165, 8
  %174 = or i32 %172, %173
  store i32 %174, ptr %167, align 4
  %175 = load i32, ptr %149, align 4
  br label %176

176:                                              ; preds = %171, %164
  %177 = phi i32 [ %165, %164 ], [ %175, %171 ]
  %178 = add nuw i32 %166, 1
  %179 = icmp ult i32 %178, %177
  br i1 %179, label %164, label %180

180:                                              ; preds = %176
  %181 = load i32, ptr %4, align 4
  %182 = load ptr, ptr %2, align 4
  %183 = icmp eq i32 %181, 0
  br i1 %183, label %184, label %495

184:                                              ; preds = %180, %161
  %185 = phi ptr [ %182, %180 ], [ %159, %161 ]
  %186 = phi i32 [ %177, %180 ], [ 0, %161 ]
  %187 = load i32, ptr %151, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190, !prof !8

189:                                              ; preds = %184
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

190:                                              ; preds = %184
  %191 = add i32 %186, 1
  store i32 %191, ptr %149, align 4
  %192 = getelementptr i32, ptr %185, i32 %186
  store i32 9502719, ptr %192, align 4
  %193 = load i32, ptr %4, align 4
  %194 = load ptr, ptr %2, align 4
  %195 = icmp eq i32 %193, 0
  br i1 %195, label %196, label %495

196:                                              ; preds = %190
  %197 = load i32, ptr %149, align 4
  %198 = load i32, ptr %151, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %201, !prof !8

200:                                              ; preds = %196
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

201:                                              ; preds = %196
  %202 = add i32 %197, 1
  store i32 %202, ptr %149, align 4
  %203 = getelementptr i32, ptr %194, i32 %197
  store i32 9568255, ptr %203, align 4
  %204 = load i32, ptr %4, align 4
  %205 = load ptr, ptr %2, align 4
  %206 = icmp eq i32 %204, 0
  br i1 %206, label %207, label %495

207:                                              ; preds = %201
  %208 = load i32, ptr %149, align 4
  %209 = load i32, ptr %151, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %212, !prof !8

211:                                              ; preds = %207
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

212:                                              ; preds = %207
  %213 = add i32 %208, 1
  store i32 %213, ptr %149, align 4
  %214 = getelementptr i32, ptr %205, i32 %208
  store i32 6291465, ptr %214, align 4
  %215 = load i32, ptr %4, align 4
  %216 = load ptr, ptr %2, align 4
  %217 = icmp eq i32 %215, 0
  br i1 %217, label %218, label %495

218:                                              ; preds = %212
  %219 = load i32, ptr %149, align 4
  %220 = load i32, ptr %151, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %223, !prof !8

222:                                              ; preds = %218
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

223:                                              ; preds = %218
  %224 = add i32 %219, 1
  store i32 %224, ptr %149, align 4
  %225 = getelementptr i32, ptr %216, i32 %219
  store i32 6291461, ptr %225, align 4
  %226 = load i32, ptr %4, align 4
  %227 = load ptr, ptr %2, align 4
  %228 = icmp eq i32 %226, 0
  br i1 %228, label %229, label %495

229:                                              ; preds = %223
  %230 = load i32, ptr %149, align 4
  %231 = load i32, ptr %151, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %234, !prof !8

233:                                              ; preds = %229
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

234:                                              ; preds = %229
  %235 = add i32 %230, 1
  store i32 %235, ptr %149, align 4
  %236 = getelementptr i32, ptr %227, i32 %230
  store i32 7340161, ptr %236, align 4
  %237 = load i32, ptr %4, align 4
  %238 = load ptr, ptr %2, align 4
  %239 = icmp eq i32 %237, 0
  br i1 %239, label %240, label %495

240:                                              ; preds = %234
  %241 = load i32, ptr %149, align 4
  store i32 %241, ptr %120, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %263, label %243

243:                                              ; preds = %255, %240
  %244 = phi i32 [ %256, %255 ], [ %241, %240 ]
  %245 = phi i32 [ %257, %255 ], [ 0, %240 ]
  %246 = getelementptr i32, ptr %238, i32 %245
  %247 = load i32, ptr %246, align 4
  %248 = and i32 %247, -917760
  %249 = icmp eq i32 %248, -12582144
  br i1 %249, label %250, label %255

250:                                              ; preds = %243
  %251 = and i32 %247, 16711935
  %252 = shl i32 %244, 8
  %253 = or i32 %251, %252
  store i32 %253, ptr %246, align 4
  %254 = load i32, ptr %149, align 4
  br label %255

255:                                              ; preds = %250, %243
  %256 = phi i32 [ %244, %243 ], [ %254, %250 ]
  %257 = add nuw i32 %245, 1
  %258 = icmp ult i32 %257, %256
  br i1 %258, label %243, label %259

259:                                              ; preds = %255
  %260 = load i32, ptr %4, align 4
  %261 = load ptr, ptr %2, align 4
  %262 = icmp eq i32 %260, 0
  br i1 %262, label %263, label %495

263:                                              ; preds = %259, %240
  %264 = phi ptr [ %261, %259 ], [ %238, %240 ]
  %265 = phi i32 [ %256, %259 ], [ 0, %240 ]
  %266 = load i32, ptr %151, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %269, !prof !8

268:                                              ; preds = %263
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

269:                                              ; preds = %263
  %270 = add i32 %265, 1
  store i32 %270, ptr %149, align 4
  %271 = getelementptr i32, ptr %264, i32 %265
  store i32 6291460, ptr %271, align 4
  %272 = load i32, ptr %4, align 4
  %273 = load ptr, ptr %2, align 4
  %274 = icmp eq i32 %272, 0
  br i1 %274, label %275, label %495

275:                                              ; preds = %269
  %276 = load i32, ptr %149, align 4
  %277 = load i32, ptr %151, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %280, !prof !8

279:                                              ; preds = %275
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

280:                                              ; preds = %275
  %281 = add i32 %276, 1
  store i32 %281, ptr %149, align 4
  %282 = getelementptr i32, ptr %273, i32 %276
  store i32 5242954, ptr %282, align 4
  %283 = load i32, ptr %4, align 4
  %284 = load ptr, ptr %2, align 4
  %285 = icmp eq i32 %283, 0
  br i1 %285, label %286, label %495

286:                                              ; preds = %280
  %287 = load i32, ptr %149, align 4
  %288 = load i32, ptr %151, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %291, !prof !8

290:                                              ; preds = %286
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

291:                                              ; preds = %286
  %292 = add i32 %287, 1
  store i32 %292, ptr %149, align 4
  %293 = getelementptr i32, ptr %284, i32 %287
  store i32 7340061, ptr %293, align 4
  %294 = load i32, ptr %4, align 4
  %295 = load ptr, ptr %2, align 4
  %296 = icmp eq i32 %294, 0
  br i1 %296, label %297, label %495

297:                                              ; preds = %291
  %298 = load i32, ptr %149, align 4
  %299 = load i32, ptr %151, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %302, !prof !8

301:                                              ; preds = %297
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

302:                                              ; preds = %297
  %303 = add i32 %298, 1
  store i32 %303, ptr %149, align 4
  %304 = getelementptr i32, ptr %295, i32 %298
  store i32 7340032, ptr %304, align 4
  %305 = load ptr, ptr %2, align 4
  %306 = load i32, ptr %4, align 4
  %307 = load i32, ptr %141, align 4
  %308 = shl i32 %307, 8
  %309 = icmp eq i32 %308, 0
  %310 = or i32 %308, 4194315
  %311 = select i1 %309, i32 -12581365, i32 %310
  %312 = icmp eq i32 %306, 0
  br i1 %312, label %313, label %495

313:                                              ; preds = %302
  %314 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %315 = load i32, ptr %314, align 4
  %316 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %317 = load i32, ptr %316, align 4
  %318 = icmp eq i32 %315, %317
  br i1 %318, label %319, label %320, !prof !8

319:                                              ; preds = %313
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

320:                                              ; preds = %313
  %321 = add i32 %315, 1
  store i32 %321, ptr %314, align 4
  %322 = getelementptr i32, ptr %305, i32 %315
  store i32 %311, ptr %322, align 4
  %323 = load ptr, ptr %2, align 4
  %324 = load i32, ptr %4, align 4
  %325 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 5
  %326 = load i32, ptr %325, align 4
  %327 = shl i32 %326, 8
  %328 = icmp eq i32 %327, 0
  %329 = or i32 %327, 4194381
  %330 = select i1 %328, i32 -12581555, i32 %329
  %331 = icmp eq i32 %324, 0
  br i1 %331, label %332, label %495

332:                                              ; preds = %320
  %333 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %334 = load i32, ptr %333, align 4
  %335 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %334, %336
  br i1 %337, label %338, label %339, !prof !8

338:                                              ; preds = %332
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

339:                                              ; preds = %332
  %340 = add i32 %334, 1
  store i32 %340, ptr %333, align 4
  %341 = getelementptr i32, ptr %323, i32 %334
  store i32 %330, ptr %341, align 4
  %342 = load i32, ptr %4, align 4
  %343 = load ptr, ptr %2, align 4
  %344 = icmp eq i32 %342, 0
  br i1 %344, label %345, label %495

345:                                              ; preds = %339
  %346 = load i32, ptr %333, align 4
  store i32 %346, ptr %30, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %368, label %348

348:                                              ; preds = %360, %345
  %349 = phi i32 [ %361, %360 ], [ %346, %345 ]
  %350 = phi i32 [ %362, %360 ], [ 0, %345 ]
  %351 = getelementptr i32, ptr %343, i32 %350
  %352 = load i32, ptr %351, align 4
  %353 = and i32 %352, -917760
  %354 = icmp eq i32 %353, -12581888
  br i1 %354, label %355, label %360

355:                                              ; preds = %348
  %356 = and i32 %352, 16711935
  %357 = shl i32 %349, 8
  %358 = or i32 %356, %357
  store i32 %358, ptr %351, align 4
  %359 = load i32, ptr %333, align 4
  br label %360

360:                                              ; preds = %355, %348
  %361 = phi i32 [ %349, %348 ], [ %359, %355 ]
  %362 = add nuw i32 %350, 1
  %363 = icmp ult i32 %362, %361
  br i1 %363, label %348, label %364

364:                                              ; preds = %360
  %365 = load i32, ptr %4, align 4
  %366 = load ptr, ptr %2, align 4
  %367 = icmp eq i32 %365, 0
  br i1 %367, label %368, label %495

368:                                              ; preds = %364, %345
  %369 = phi ptr [ %366, %364 ], [ %343, %345 ]
  %370 = phi i32 [ %361, %364 ], [ 0, %345 ]
  %371 = load i32, ptr %335, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %374, !prof !8

373:                                              ; preds = %368
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

374:                                              ; preds = %368
  %375 = add i32 %370, 1
  store i32 %375, ptr %333, align 4
  %376 = getelementptr i32, ptr %369, i32 %370
  store i32 7340189, ptr %376, align 4
  %377 = load i32, ptr %4, align 4
  %378 = load ptr, ptr %2, align 4
  %379 = icmp eq i32 %377, 0
  br i1 %379, label %380, label %495

380:                                              ; preds = %374
  %381 = load i32, ptr %333, align 4
  %382 = load i32, ptr %335, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %385, !prof !8

384:                                              ; preds = %380
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

385:                                              ; preds = %380
  %386 = add i32 %381, 1
  store i32 %386, ptr %333, align 4
  %387 = getelementptr i32, ptr %378, i32 %381
  store i32 5242944, ptr %387, align 4
  %388 = load i32, ptr %4, align 4
  %389 = load ptr, ptr %2, align 4
  %390 = icmp eq i32 %388, 0
  br i1 %390, label %391, label %495

391:                                              ; preds = %385
  %392 = load i32, ptr %333, align 4
  %393 = load i32, ptr %335, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %396, !prof !8

395:                                              ; preds = %391
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

396:                                              ; preds = %391
  %397 = add i32 %392, 1
  store i32 %397, ptr %333, align 4
  %398 = getelementptr i32, ptr %389, i32 %392
  store i32 5243087, ptr %398, align 4
  %399 = load ptr, ptr %2, align 4
  %400 = load i32, ptr %4, align 4
  %401 = load i32, ptr %30, align 4
  %402 = shl i32 %401, 8
  %403 = icmp eq i32 %402, 0
  %404 = or i32 %402, 4194496
  %405 = select i1 %403, i32 -12581696, i32 %404
  %406 = icmp eq i32 %400, 0
  br i1 %406, label %407, label %495

407:                                              ; preds = %396
  %408 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %409 = load i32, ptr %408, align 4
  %410 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %411 = load i32, ptr %410, align 4
  %412 = icmp eq i32 %409, %411
  br i1 %412, label %413, label %414, !prof !8

413:                                              ; preds = %407
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

414:                                              ; preds = %407
  %415 = add i32 %409, 1
  store i32 %415, ptr %408, align 4
  %416 = getelementptr i32, ptr %399, i32 %409
  store i32 %405, ptr %416, align 4
  %417 = load i32, ptr %4, align 4
  %418 = load ptr, ptr %2, align 4
  %419 = icmp eq i32 %417, 0
  br i1 %419, label %420, label %495

420:                                              ; preds = %414
  %421 = load i32, ptr %408, align 4
  %422 = load i32, ptr %410, align 4
  %423 = icmp eq i32 %421, %422
  br i1 %423, label %424, label %425, !prof !8

424:                                              ; preds = %420
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

425:                                              ; preds = %420
  %426 = add i32 %421, 1
  store i32 %426, ptr %408, align 4
  %427 = getelementptr i32, ptr %418, i32 %421
  store i32 7340161, ptr %427, align 4
  %428 = load i32, ptr %4, align 4
  %429 = load ptr, ptr %2, align 4
  %430 = icmp eq i32 %428, 0
  br i1 %430, label %431, label %495

431:                                              ; preds = %425
  %432 = load i32, ptr %408, align 4
  %433 = load i32, ptr %410, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %436, !prof !8

435:                                              ; preds = %431
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

436:                                              ; preds = %431
  %437 = add i32 %432, 1
  store i32 %437, ptr %408, align 4
  %438 = getelementptr i32, ptr %429, i32 %432
  store i32 7340160, ptr %438, align 4
  %439 = load i32, ptr %4, align 4
  %440 = load ptr, ptr %2, align 4
  %441 = icmp eq i32 %439, 0
  br i1 %441, label %442, label %495

442:                                              ; preds = %436
  %443 = load i32, ptr %408, align 4
  store i32 %443, ptr %325, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %465, label %445

445:                                              ; preds = %457, %442
  %446 = phi i32 [ %458, %457 ], [ %443, %442 ]
  %447 = phi i32 [ %459, %457 ], [ 0, %442 ]
  %448 = getelementptr i32, ptr %440, i32 %447
  %449 = load i32, ptr %448, align 4
  %450 = and i32 %449, -917760
  %451 = icmp eq i32 %450, -12581632
  br i1 %451, label %452, label %457

452:                                              ; preds = %445
  %453 = and i32 %449, 16711935
  %454 = shl i32 %446, 8
  %455 = or i32 %453, %454
  store i32 %455, ptr %448, align 4
  %456 = load i32, ptr %408, align 4
  br label %457

457:                                              ; preds = %452, %445
  %458 = phi i32 [ %446, %445 ], [ %456, %452 ]
  %459 = add nuw i32 %447, 1
  %460 = icmp ult i32 %459, %458
  br i1 %460, label %445, label %461

461:                                              ; preds = %457
  %462 = load i32, ptr %4, align 4
  %463 = load ptr, ptr %2, align 4
  %464 = icmp eq i32 %462, 0
  br i1 %464, label %465, label %495

465:                                              ; preds = %461, %442
  %466 = phi ptr [ %463, %461 ], [ %440, %442 ]
  %467 = phi i32 [ %458, %461 ], [ 0, %442 ]
  %468 = load i32, ptr %410, align 4
  %469 = icmp eq i32 %467, %468
  br i1 %469, label %470, label %471, !prof !8

470:                                              ; preds = %465
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

471:                                              ; preds = %465
  %472 = add i32 %467, 1
  store i32 %472, ptr %408, align 4
  %473 = getelementptr i32, ptr %466, i32 %467
  store i32 7340163, ptr %473, align 4
  %474 = load i32, ptr %4, align 4
  %475 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  store i32 1, ptr %475, align 4
  %476 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 9
  store i32 1, ptr %476, align 4
  %477 = load ptr, ptr %2, align 4
  %478 = icmp eq i32 %474, 0
  br i1 %478, label %479, label %499

479:                                              ; preds = %471
  %480 = load i32, ptr %408, align 4
  %481 = load i32, ptr %410, align 4
  %482 = icmp eq i32 %480, %481
  br i1 %482, label %483, label %484, !prof !8

483:                                              ; preds = %479
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

484:                                              ; preds = %479
  %485 = add i32 %480, 1
  store i32 %485, ptr %408, align 4
  %486 = getelementptr i32, ptr %477, i32 %480
  store i32 2097153, ptr %486, align 4
  %487 = load i32, ptr %4, align 4
  %488 = load ptr, ptr %2, align 4
  %489 = icmp eq i32 %487, 0
  br i1 %489, label %490, label %499

490:                                              ; preds = %484
  %491 = load i32, ptr %408, align 4
  %492 = load i32, ptr %410, align 4
  %493 = icmp eq i32 %491, %492
  br i1 %493, label %494, label %506, !prof !8

494:                                              ; preds = %490
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

495:                                              ; preds = %461, %436, %425, %414, %396, %385, %374, %364, %339, %320, %302, %291, %280, %269, %259, %234, %223, %212, %201, %190, %180, %155, %136, %134
  %496 = phi ptr [ %141, %461 ], [ %141, %425 ], [ %141, %436 ], [ %141, %414 ], [ %141, %396 ], [ %141, %385 ], [ %141, %374 ], [ %141, %364 ], [ %141, %320 ], [ %141, %339 ], [ %141, %302 ], [ %135, %134 ], [ %141, %291 ], [ %141, %280 ], [ %141, %259 ], [ %141, %269 ], [ %141, %212 ], [ %141, %201 ], [ %141, %234 ], [ %141, %223 ], [ %141, %136 ], [ %141, %155 ], [ %141, %180 ], [ %141, %190 ]
  %497 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  store i32 1, ptr %497, align 4
  %498 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 9
  br label %499

499:                                              ; preds = %495, %484, %471
  %500 = phi ptr [ %141, %484 ], [ %141, %471 ], [ %496, %495 ]
  %501 = phi ptr [ %476, %484 ], [ %476, %471 ], [ %498, %495 ]
  %502 = phi ptr [ %475, %484 ], [ %475, %471 ], [ %497, %495 ]
  %503 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 6
  store i32 522, ptr %503, align 4
  %504 = load i32, ptr %502, align 4
  store i32 %504, ptr %501, align 4
  %505 = add i32 %504, 1
  store i32 %505, ptr %502, align 4
  br label %515

506:                                              ; preds = %490
  %507 = add i32 %491, 1
  store i32 %507, ptr %408, align 4
  %508 = getelementptr i32, ptr %488, i32 %491
  store i32 6291462, ptr %508, align 4
  %509 = load ptr, ptr %2, align 4
  %510 = load i32, ptr %4, align 4
  %511 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 6
  store i32 522, ptr %511, align 4
  %512 = load i32, ptr %475, align 4
  store i32 %512, ptr %476, align 4
  %513 = add i32 %512, 1
  store i32 %513, ptr %475, align 4
  %514 = icmp eq i32 %510, 0
  br i1 %514, label %519, label %515

515:                                              ; preds = %506, %499
  %516 = phi ptr [ %502, %499 ], [ %475, %506 ]
  %517 = phi ptr [ %501, %499 ], [ %476, %506 ]
  %518 = phi ptr [ %500, %499 ], [ %141, %506 ]
  store i32 64, ptr %516, align 4
  store i32 64, ptr %517, align 4
  br label %551

519:                                              ; preds = %506
  %520 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %521 = load i32, ptr %520, align 4
  %522 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %523 = load i32, ptr %522, align 4
  %524 = icmp eq i32 %521, %523
  br i1 %524, label %525, label %526, !prof !8

525:                                              ; preds = %519
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

526:                                              ; preds = %519
  %527 = add i32 %521, 1
  store i32 %527, ptr %520, align 4
  %528 = getelementptr i32, ptr %509, i32 %521
  store i32 1114634, ptr %528, align 4
  %529 = load i32, ptr %4, align 4
  store i32 64, ptr %475, align 4
  store i32 64, ptr %476, align 4
  %530 = load ptr, ptr %2, align 4
  %531 = icmp eq i32 %529, 0
  br i1 %531, label %532, label %551

532:                                              ; preds = %526
  %533 = load i32, ptr %520, align 4
  %534 = load i32, ptr %522, align 4
  %535 = icmp eq i32 %533, %534
  br i1 %535, label %536, label %537, !prof !8

536:                                              ; preds = %532
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

537:                                              ; preds = %532
  %538 = add i32 %533, 1
  store i32 %538, ptr %520, align 4
  %539 = getelementptr i32, ptr %530, i32 %533
  store i32 2097216, ptr %539, align 4
  %540 = load i32, ptr %4, align 4
  %541 = load ptr, ptr %2, align 4
  %542 = icmp eq i32 %540, 0
  br i1 %542, label %543, label %551

543:                                              ; preds = %537
  %544 = load i32, ptr %520, align 4
  %545 = load i32, ptr %522, align 4
  %546 = icmp eq i32 %544, %545
  br i1 %546, label %547, label %548, !prof !8

547:                                              ; preds = %543
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

548:                                              ; preds = %543
  %549 = add i32 %544, 1
  store i32 %549, ptr %520, align 4
  %550 = getelementptr i32, ptr %541, i32 %544
  store i32 6291462, ptr %550, align 4
  br label %551

551:                                              ; preds = %548, %537, %526, %515
  %552 = phi ptr [ %516, %515 ], [ %475, %526 ], [ %475, %537 ], [ %475, %548 ]
  %553 = phi ptr [ %517, %515 ], [ %476, %526 ], [ %476, %537 ], [ %476, %548 ]
  %554 = phi ptr [ %518, %515 ], [ %141, %526 ], [ %141, %537 ], [ %141, %548 ]
  tail call fastcc void @nv50_gr_construct_mmio(ptr noundef %0)
  %555 = load ptr, ptr %0, align 4
  %556 = getelementptr inbounds %struct.nvkm_device, ptr %555, i32 0, i32 11
  %557 = load ptr, ptr %556, align 4
  %558 = getelementptr i8, ptr %557, i32 5440
  %559 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %558) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %560 = load i32, ptr %552, align 4
  %561 = add i32 %560, 63
  %562 = and i32 %561, -64
  store i32 %562, ptr %553, align 4
  %563 = getelementptr inbounds %struct.nvkm_device, ptr %555, i32 0, i32 16
  %564 = load i32, ptr %563, align 4
  %565 = icmp ult i32 %564, 160
  store i32 %562, ptr %552, align 4
  %566 = load ptr, ptr %0, align 4
  %567 = getelementptr inbounds %struct.nvkm_device, ptr %566, i32 0, i32 16
  %568 = load i32, ptr %567, align 4
  %569 = icmp eq i32 %568, 80
  br i1 %565, label %570, label %694

570:                                              ; preds = %551
  br i1 %569, label %577, label %571

571:                                              ; preds = %570
  %572 = add i32 %568, -161
  %573 = icmp ult i32 %572, 9
  %574 = icmp eq i32 %568, 175
  %575 = or i1 %574, %573
  %576 = select i1 %575, i32 32, i32 48
  br label %577

577:                                              ; preds = %571, %570
  %578 = phi i32 [ 40, %570 ], [ %576, %571 ]
  %579 = or i32 %562, %578
  store i32 %579, ptr %552, align 4
  %580 = load i32, ptr %567, align 4
  %581 = icmp eq i32 %580, 80
  %582 = select i1 %581, i32 192, i32 6144
  %583 = add i32 %582, %579
  %584 = add i32 %583, 24
  store i32 %584, ptr %552, align 4
  %585 = load i32, ptr %567, align 4
  %586 = add i32 %585, -161
  %587 = icmp ult i32 %586, 9
  %588 = icmp eq i32 %585, 175
  %589 = or i1 %588, %587
  %590 = add i32 %583, 48
  %591 = select i1 %589, i32 %590, i32 %584
  %592 = add i32 %591, 288
  store i32 %592, ptr %552, align 4
  %593 = load i32, ptr %567, align 4
  %594 = icmp ult i32 %593, 144
  %595 = add i32 %591, 320
  %596 = select i1 %594, i32 %595, i32 %592
  %597 = add i32 %596, 256
  store i32 %597, ptr %552, align 4
  %598 = load i32, ptr %567, align 4
  %599 = icmp eq i32 %598, 80
  %600 = icmp ult i32 %598, 160
  %601 = select i1 %600, i32 496, i32 528
  %602 = select i1 %599, i32 480, i32 %601
  %603 = add i32 %596, 168
  %604 = add i32 %603, %602
  store i32 %604, ptr %552, align 4
  tail call fastcc void @nv50_gr_construct_gene_m2mf(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_unk24xx(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_clipid(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_zcull(ptr noundef %0) #6
  %605 = load i32, ptr %552, align 4
  %606 = sub i32 %605, %562
  %607 = or i32 %562, 1
  store i32 %607, ptr %552, align 4
  tail call fastcc void @nv50_gr_construct_gene_vfetch(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_eng2d(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_csched(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_ropm1(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_ropm2(ptr noundef %0) #6
  %608 = load i32, ptr %552, align 4
  %609 = sub i32 %608, %562
  %610 = lshr i32 %609, 3
  %611 = or i32 %562, 2
  store i32 %611, ptr %552, align 4
  tail call fastcc void @nv50_gr_construct_gene_ccache(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_unk1cxx(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_strmout(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_unk14xx(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_unk10xx(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_unk34xx(ptr noundef %0) #6
  %612 = load i32, ptr %552, align 4
  %613 = sub i32 %612, %562
  %614 = lshr i32 %613, 3
  %615 = or i32 %562, 3
  store i32 %615, ptr %552, align 4
  %616 = and i32 %559, 65536
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %619, label %618

618:                                              ; preds = %577
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %619

619:                                              ; preds = %618, %577
  %620 = and i32 %559, 131072
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %623, label %622

622:                                              ; preds = %619
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %623

623:                                              ; preds = %622, %619
  %624 = and i32 %559, 262144
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %627, label %626

626:                                              ; preds = %623
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %627

627:                                              ; preds = %626, %623
  %628 = and i32 %559, 524288
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %631, label %630

630:                                              ; preds = %627
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %631

631:                                              ; preds = %630, %627
  %632 = and i32 %559, 1048576
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %635, label %634

634:                                              ; preds = %631
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %635

635:                                              ; preds = %634, %631
  %636 = and i32 %559, 2097152
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %639, label %638

638:                                              ; preds = %635
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %639

639:                                              ; preds = %638, %635
  %640 = lshr i32 %606, 3
  %641 = tail call i32 @llvm.umax.i32(i32 %610, i32 %640) #6
  %642 = tail call i32 @llvm.umax.i32(i32 %614, i32 %641) #6
  %643 = load i32, ptr %552, align 4
  %644 = sub i32 %643, %562
  %645 = lshr i32 %644, 3
  %646 = tail call i32 @llvm.umax.i32(i32 %645, i32 %642) #6
  %647 = or i32 %562, 4
  store i32 %647, ptr %552, align 4
  %648 = and i32 %559, 1
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %651, label %650

650:                                              ; preds = %639
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %651

651:                                              ; preds = %650, %639
  %652 = and i32 %559, 2
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %651
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %655

655:                                              ; preds = %654, %651
  %656 = load i32, ptr %552, align 4
  %657 = sub i32 %656, %562
  %658 = lshr i32 %657, 3
  %659 = tail call i32 @llvm.umax.i32(i32 %658, i32 %646) #6
  %660 = or i32 %562, 5
  store i32 %660, ptr %552, align 4
  %661 = and i32 %559, 4
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %664, label %663

663:                                              ; preds = %655
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %664

664:                                              ; preds = %663, %655
  %665 = and i32 %559, 8
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %668, label %667

667:                                              ; preds = %664
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %668

668:                                              ; preds = %667, %664
  %669 = load i32, ptr %552, align 4
  %670 = sub i32 %669, %562
  %671 = lshr i32 %670, 3
  %672 = tail call i32 @llvm.umax.i32(i32 %671, i32 %659) #6
  %673 = or i32 %562, 6
  store i32 %673, ptr %552, align 4
  %674 = and i32 %559, 16
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %677, label %676

676:                                              ; preds = %668
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %677

677:                                              ; preds = %676, %668
  %678 = and i32 %559, 32
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %681, label %680

680:                                              ; preds = %677
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %681

681:                                              ; preds = %680, %677
  %682 = load i32, ptr %552, align 4
  %683 = sub i32 %682, %562
  %684 = lshr i32 %683, 3
  %685 = tail call i32 @llvm.umax.i32(i32 %684, i32 %672) #6
  %686 = or i32 %562, 7
  store i32 %686, ptr %552, align 4
  %687 = and i32 %559, 64
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %690, label %689

689:                                              ; preds = %681
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %690

690:                                              ; preds = %689, %681
  %691 = and i32 %559, 128
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %842, label %693

693:                                              ; preds = %690
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %842

694:                                              ; preds = %551
  br i1 %569, label %701, label %695

695:                                              ; preds = %694
  %696 = add i32 %568, -161
  %697 = icmp ult i32 %696, 9
  %698 = icmp eq i32 %568, 175
  %699 = or i1 %698, %697
  %700 = select i1 %699, i32 32, i32 48
  br label %701

701:                                              ; preds = %695, %694
  %702 = phi i32 [ 40, %694 ], [ %700, %695 ]
  %703 = or i32 %562, %702
  store i32 %703, ptr %552, align 4
  %704 = load i32, ptr %567, align 4
  %705 = icmp eq i32 %704, 80
  %706 = select i1 %705, i32 192, i32 6144
  %707 = add i32 %706, %703
  %708 = add i32 %707, 24
  store i32 %708, ptr %552, align 4
  %709 = load i32, ptr %567, align 4
  %710 = add i32 %709, -161
  %711 = icmp ult i32 %710, 9
  %712 = icmp eq i32 %709, 175
  %713 = or i1 %712, %711
  %714 = add i32 %707, 48
  %715 = select i1 %713, i32 %714, i32 %708
  %716 = add i32 %715, 288
  store i32 %716, ptr %552, align 4
  %717 = load i32, ptr %567, align 4
  %718 = icmp ult i32 %717, 144
  %719 = add i32 %715, 320
  %720 = select i1 %718, i32 %719, i32 %716
  %721 = add i32 %720, 256
  store i32 %721, ptr %552, align 4
  %722 = load i32, ptr %567, align 4
  %723 = icmp eq i32 %722, 80
  %724 = icmp ult i32 %722, 160
  %725 = select i1 %724, i32 496, i32 528
  %726 = select i1 %723, i32 480, i32 %725
  %727 = add i32 %720, 168
  %728 = add i32 %727, %726
  store i32 %728, ptr %552, align 4
  tail call fastcc void @nv50_gr_construct_gene_m2mf(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_unk34xx(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_csched(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_unk1cxx(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_strmout(ptr noundef %0) #6
  %729 = load i32, ptr %552, align 4
  %730 = sub i32 %729, %562
  %731 = lshr i32 %730, 3
  %732 = or i32 %562, 1
  store i32 %732, ptr %552, align 4
  tail call fastcc void @nv50_gr_construct_gene_unk10xx(ptr noundef %0) #6
  %733 = load i32, ptr %552, align 4
  %734 = sub i32 %733, %562
  %735 = lshr i32 %734, 3
  %736 = tail call i32 @llvm.umax.i32(i32 %735, i32 %731) #6
  %737 = or i32 %562, 2
  store i32 %737, ptr %552, align 4
  %738 = load i32, ptr %563, align 4
  %739 = icmp eq i32 %738, 160
  br i1 %739, label %740, label %741

740:                                              ; preds = %701
  tail call fastcc void @nv50_gr_construct_gene_unk14xx(ptr noundef %0) #6
  br label %741

741:                                              ; preds = %740, %701
  tail call fastcc void @nv50_gr_construct_gene_unk24xx(ptr noundef %0) #6
  %742 = load i32, ptr %552, align 4
  %743 = sub i32 %742, %562
  %744 = lshr i32 %743, 3
  %745 = or i32 %562, 3
  store i32 %745, ptr %552, align 4
  tail call fastcc void @nv50_gr_construct_gene_vfetch(ptr noundef %0) #6
  %746 = load i32, ptr %552, align 4
  %747 = sub i32 %746, %562
  %748 = lshr i32 %747, 3
  %749 = or i32 %562, 4
  store i32 %749, ptr %552, align 4
  tail call fastcc void @nv50_gr_construct_gene_ccache(ptr noundef %0) #6
  %750 = load i32, ptr %552, align 4
  %751 = sub i32 %750, %562
  %752 = lshr i32 %751, 3
  %753 = or i32 %562, 5
  store i32 %753, ptr %552, align 4
  tail call fastcc void @nv50_gr_construct_gene_ropm2(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_ropm1(ptr noundef %0) #6
  %754 = and i32 %559, 65536
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %757, label %756

756:                                              ; preds = %741
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %757

757:                                              ; preds = %756, %741
  %758 = and i32 %559, 131072
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %761, label %760

760:                                              ; preds = %757
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %761

761:                                              ; preds = %760, %757
  %762 = and i32 %559, 262144
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %765, label %764

764:                                              ; preds = %761
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %765

765:                                              ; preds = %764, %761
  %766 = and i32 %559, 524288
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %769, label %768

768:                                              ; preds = %765
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %769

769:                                              ; preds = %768, %765
  %770 = and i32 %559, 1048576
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %773, label %772

772:                                              ; preds = %769
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %773

773:                                              ; preds = %772, %769
  %774 = and i32 %559, 2097152
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %777, label %776

776:                                              ; preds = %773
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %777

777:                                              ; preds = %776, %773
  %778 = and i32 %559, 4194304
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %781, label %780

780:                                              ; preds = %777
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %781

781:                                              ; preds = %780, %777
  %782 = and i32 %559, 8388608
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %785, label %784

784:                                              ; preds = %781
  tail call fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) #6
  br label %785

785:                                              ; preds = %784, %781
  %786 = tail call i32 @llvm.umax.i32(i32 %744, i32 %736) #6
  %787 = tail call i32 @llvm.umax.i32(i32 %748, i32 %786) #6
  %788 = tail call i32 @llvm.umax.i32(i32 %752, i32 %787) #6
  %789 = load i32, ptr %552, align 4
  %790 = sub i32 %789, %562
  %791 = lshr i32 %790, 3
  %792 = tail call i32 @llvm.umax.i32(i32 %791, i32 %788) #6
  %793 = or i32 %562, 6
  store i32 %793, ptr %552, align 4
  tail call fastcc void @nv50_gr_construct_gene_zcull(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_clipid(ptr noundef %0) #6
  tail call fastcc void @nv50_gr_construct_gene_eng2d(ptr noundef %0) #6
  %794 = and i32 %559, 1
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %797, label %796

796:                                              ; preds = %785
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %797

797:                                              ; preds = %796, %785
  %798 = and i32 %559, 2
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %801, label %800

800:                                              ; preds = %797
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %801

801:                                              ; preds = %800, %797
  %802 = and i32 %559, 4
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %805, label %804

804:                                              ; preds = %801
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %805

805:                                              ; preds = %804, %801
  %806 = and i32 %559, 8
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %809, label %808

808:                                              ; preds = %805
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %809

809:                                              ; preds = %808, %805
  %810 = load i32, ptr %552, align 4
  %811 = sub i32 %810, %562
  %812 = lshr i32 %811, 3
  %813 = tail call i32 @llvm.umax.i32(i32 %812, i32 %792) #6
  %814 = or i32 %562, 7
  store i32 %814, ptr %552, align 4
  %815 = load i32, ptr %563, align 4
  %816 = icmp eq i32 %815, 160
  br i1 %816, label %817, label %841

817:                                              ; preds = %809
  %818 = and i32 %559, 16
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %821, label %820

820:                                              ; preds = %817
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %821

821:                                              ; preds = %820, %817
  %822 = and i32 %559, 32
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %825, label %824

824:                                              ; preds = %821
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %825

825:                                              ; preds = %824, %821
  %826 = and i32 %559, 64
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %829, label %828

828:                                              ; preds = %825
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %829

829:                                              ; preds = %828, %825
  %830 = and i32 %559, 128
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %833, label %832

832:                                              ; preds = %829
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %833

833:                                              ; preds = %832, %829
  %834 = and i32 %559, 256
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %837, label %836

836:                                              ; preds = %833
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %837

837:                                              ; preds = %836, %833
  %838 = and i32 %559, 512
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %842, label %840

840:                                              ; preds = %837
  tail call fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) #6
  br label %842

841:                                              ; preds = %809
  tail call fastcc void @nv50_gr_construct_gene_unk14xx(ptr noundef %0) #6
  br label %842

842:                                              ; preds = %841, %840, %837, %693, %690
  %843 = phi i32 [ %685, %693 ], [ %685, %690 ], [ %813, %837 ], [ %813, %840 ], [ %813, %841 ]
  %844 = load i32, ptr %552, align 4
  %845 = sub i32 %844, %562
  %846 = lshr i32 %845, 3
  %847 = tail call i32 @llvm.umax.i32(i32 %846, i32 %843) #6
  %848 = shl nuw i32 %847, 3
  %849 = or i32 %561, 63
  %850 = add i32 %848, %849
  %851 = and i32 %850, -64
  store i32 %851, ptr %552, align 4
  %852 = or i32 %562, 2097152
  %853 = load ptr, ptr %2, align 4
  %854 = load i32, ptr %4, align 4
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %922

856:                                              ; preds = %842
  %857 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %858 = load i32, ptr %857, align 4
  %859 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %860 = load i32, ptr %859, align 4
  %861 = icmp eq i32 %858, %860
  br i1 %861, label %862, label %863, !prof !8

862:                                              ; preds = %856
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

863:                                              ; preds = %856
  %864 = add i32 %858, 1
  store i32 %864, ptr %857, align 4
  %865 = getelementptr i32, ptr %853, i32 %858
  store i32 %852, ptr %865, align 4
  %866 = load i32, ptr %4, align 4
  %867 = load ptr, ptr %2, align 4
  %868 = icmp eq i32 %866, 0
  br i1 %868, label %869, label %922

869:                                              ; preds = %863
  %870 = load i32, ptr %857, align 4
  %871 = load i32, ptr %859, align 4
  %872 = icmp eq i32 %870, %871
  br i1 %872, label %873, label %874, !prof !8

873:                                              ; preds = %869
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

874:                                              ; preds = %869
  %875 = add i32 %870, 1
  store i32 %875, ptr %857, align 4
  %876 = getelementptr i32, ptr %867, i32 %870
  store i32 6291463, ptr %876, align 4
  %877 = load i32, ptr %4, align 4
  %878 = or i32 %847, 2097152
  %879 = load ptr, ptr %2, align 4
  %880 = icmp eq i32 %877, 0
  br i1 %880, label %881, label %922

881:                                              ; preds = %874
  %882 = load i32, ptr %857, align 4
  %883 = load i32, ptr %859, align 4
  %884 = icmp eq i32 %882, %883
  br i1 %884, label %885, label %886, !prof !8

885:                                              ; preds = %881
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

886:                                              ; preds = %881
  %887 = add i32 %882, 1
  store i32 %887, ptr %857, align 4
  %888 = getelementptr i32, ptr %879, i32 %882
  store i32 %878, ptr %888, align 4
  %889 = load i32, ptr %4, align 4
  %890 = load ptr, ptr %2, align 4
  %891 = icmp eq i32 %889, 0
  br i1 %891, label %892, label %922

892:                                              ; preds = %886
  %893 = load i32, ptr %857, align 4
  %894 = load i32, ptr %859, align 4
  %895 = icmp eq i32 %893, %894
  br i1 %895, label %896, label %897, !prof !8

896:                                              ; preds = %892
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

897:                                              ; preds = %892
  %898 = add i32 %893, 1
  store i32 %898, ptr %857, align 4
  %899 = getelementptr i32, ptr %890, i32 %893
  store i32 12583167, ptr %899, align 4
  %900 = load i32, ptr %4, align 4
  %901 = load ptr, ptr %2, align 4
  %902 = icmp eq i32 %900, 0
  br i1 %902, label %903, label %922

903:                                              ; preds = %897
  %904 = load i32, ptr %857, align 4
  %905 = load i32, ptr %859, align 4
  %906 = icmp eq i32 %904, %905
  br i1 %906, label %907, label %908, !prof !8

907:                                              ; preds = %903
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

908:                                              ; preds = %903
  %909 = add i32 %904, 1
  store i32 %909, ptr %857, align 4
  %910 = getelementptr i32, ptr %901, i32 %904
  store i32 8388863, ptr %910, align 4
  %911 = load i32, ptr %4, align 4
  %912 = load ptr, ptr %2, align 4
  %913 = icmp eq i32 %911, 0
  br i1 %913, label %914, label %922

914:                                              ; preds = %908
  %915 = load i32, ptr %857, align 4
  %916 = load i32, ptr %859, align 4
  %917 = icmp eq i32 %915, %916
  br i1 %917, label %918, label %919, !prof !8

918:                                              ; preds = %914
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

919:                                              ; preds = %914
  %920 = add i32 %915, 1
  store i32 %920, ptr %857, align 4
  %921 = getelementptr i32, ptr %912, i32 %915
  store i32 5243083, ptr %921, align 4
  br label %922

922:                                              ; preds = %919, %908, %897, %886, %874, %863, %842
  %923 = load ptr, ptr %0, align 4
  %924 = getelementptr inbounds %struct.nvkm_device, ptr %923, i32 0, i32 11
  %925 = load ptr, ptr %924, align 4
  %926 = getelementptr i8, ptr %925, i32 5440
  %927 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %926) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %928 = load i32, ptr %552, align 4
  %929 = add i32 %928, 63
  %930 = and i32 %929, -64
  %931 = getelementptr inbounds %struct.nvkm_device, ptr %923, i32 0, i32 16
  %932 = load i32, ptr %931, align 4
  %933 = icmp ult i32 %932, 160
  store i32 %930, ptr %552, align 4
  %934 = load i32, ptr %4, align 4
  %935 = icmp eq i32 %934, 1
  br i1 %933, label %936, label %1019

936:                                              ; preds = %922
  br i1 %935, label %937, label %945

937:                                              ; preds = %936
  %938 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %939 = load ptr, ptr %938, align 4
  %940 = load ptr, ptr %939, align 8
  %941 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %940, i32 0, i32 3
  %942 = load ptr, ptr %941, align 4
  %943 = shl i32 %930, 2
  tail call void %942(ptr noundef %939, i32 noundef %943, i32 noundef 135269394) #6
  %944 = load i32, ptr %552, align 4
  br label %945

945:                                              ; preds = %937, %936
  %946 = phi i32 [ %944, %937 ], [ %930, %936 ]
  %947 = add i32 %946, 8
  store i32 %947, ptr %552, align 4
  %948 = and i32 %927, 1
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %952, label %950

950:                                              ; preds = %945
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  %951 = load i32, ptr %552, align 4
  br label %952

952:                                              ; preds = %950, %945
  %953 = phi i32 [ %951, %950 ], [ %947, %945 ]
  %954 = sub i32 %953, %930
  %955 = lshr i32 %954, 3
  %956 = or i32 %930, 1
  store i32 %956, ptr %552, align 4
  %957 = and i32 %927, 2
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %961, label %959

959:                                              ; preds = %952
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  %960 = load i32, ptr %552, align 4
  br label %961

961:                                              ; preds = %959, %952
  %962 = phi i32 [ %960, %959 ], [ %956, %952 ]
  %963 = sub i32 %962, %930
  %964 = lshr i32 %963, 3
  %965 = tail call i32 @llvm.umax.i32(i32 %964, i32 %955) #6
  %966 = or i32 %930, 2
  store i32 %966, ptr %552, align 4
  %967 = and i32 %927, 4
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %971, label %969

969:                                              ; preds = %961
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  %970 = load i32, ptr %552, align 4
  br label %971

971:                                              ; preds = %969, %961
  %972 = phi i32 [ %970, %969 ], [ %966, %961 ]
  %973 = sub i32 %972, %930
  %974 = lshr i32 %973, 3
  %975 = tail call i32 @llvm.umax.i32(i32 %974, i32 %965) #6
  %976 = or i32 %930, 3
  store i32 %976, ptr %552, align 4
  %977 = and i32 %927, 8
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %981, label %979

979:                                              ; preds = %971
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  %980 = load i32, ptr %552, align 4
  br label %981

981:                                              ; preds = %979, %971
  %982 = phi i32 [ %980, %979 ], [ %976, %971 ]
  %983 = sub i32 %982, %930
  %984 = lshr i32 %983, 3
  %985 = tail call i32 @llvm.umax.i32(i32 %984, i32 %975) #6
  %986 = or i32 %930, 4
  store i32 %986, ptr %552, align 4
  %987 = and i32 %927, 16
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %991, label %989

989:                                              ; preds = %981
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  %990 = load i32, ptr %552, align 4
  br label %991

991:                                              ; preds = %989, %981
  %992 = phi i32 [ %990, %989 ], [ %986, %981 ]
  %993 = sub i32 %992, %930
  %994 = lshr i32 %993, 3
  %995 = tail call i32 @llvm.umax.i32(i32 %994, i32 %985) #6
  %996 = or i32 %930, 5
  store i32 %996, ptr %552, align 4
  %997 = and i32 %927, 32
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1001, label %999

999:                                              ; preds = %991
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  %1000 = load i32, ptr %552, align 4
  br label %1001

1001:                                             ; preds = %999, %991
  %1002 = phi i32 [ %1000, %999 ], [ %996, %991 ]
  %1003 = sub i32 %1002, %930
  %1004 = lshr i32 %1003, 3
  %1005 = tail call i32 @llvm.umax.i32(i32 %1004, i32 %995) #6
  %1006 = or i32 %930, 6
  store i32 %1006, ptr %552, align 4
  %1007 = and i32 %927, 64
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1011, label %1009

1009:                                             ; preds = %1001
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  %1010 = load i32, ptr %552, align 4
  br label %1011

1011:                                             ; preds = %1009, %1001
  %1012 = phi i32 [ %1010, %1009 ], [ %1006, %1001 ]
  %1013 = sub i32 %1012, %930
  %1014 = lshr i32 %1013, 3
  %1015 = tail call i32 @llvm.umax.i32(i32 %1014, i32 %1005) #6
  %1016 = or i32 %930, 7
  store i32 %1016, ptr %552, align 4
  %1017 = and i32 %927, 128
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1088, label %1083

1019:                                             ; preds = %922
  br i1 %935, label %1020, label %1028

1020:                                             ; preds = %1019
  %1021 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1022 = load ptr, ptr %1021, align 4
  %1023 = load ptr, ptr %1022, align 8
  %1024 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1023, i32 0, i32 3
  %1025 = load ptr, ptr %1024, align 4
  %1026 = shl i32 %930, 2
  tail call void %1025(ptr noundef %1022, i32 noundef %1026, i32 noundef 135269394) #6
  %1027 = load i32, ptr %552, align 4
  br label %1028

1028:                                             ; preds = %1020, %1019
  %1029 = phi i32 [ %1027, %1020 ], [ %930, %1019 ]
  %1030 = add i32 %1029, 8
  store i32 %1030, ptr %552, align 4
  %1031 = and i32 %927, 1
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1034, label %1033

1033:                                             ; preds = %1028
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  br label %1034

1034:                                             ; preds = %1033, %1028
  %1035 = and i32 %927, 2
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1038, label %1037

1037:                                             ; preds = %1034
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  br label %1038

1038:                                             ; preds = %1037, %1034
  %1039 = load i32, ptr %552, align 4
  %1040 = sub i32 %1039, %930
  %1041 = lshr i32 %1040, 3
  %1042 = or i32 %930, 1
  store i32 %1042, ptr %552, align 4
  %1043 = and i32 %927, 4
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1046, label %1045

1045:                                             ; preds = %1038
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  br label %1046

1046:                                             ; preds = %1045, %1038
  %1047 = and i32 %927, 8
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1050, label %1049

1049:                                             ; preds = %1046
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  br label %1050

1050:                                             ; preds = %1049, %1046
  %1051 = load i32, ptr %552, align 4
  %1052 = sub i32 %1051, %930
  %1053 = lshr i32 %1052, 3
  %1054 = tail call i32 @llvm.umax.i32(i32 %1053, i32 %1041) #6
  %1055 = or i32 %930, 2
  store i32 %1055, ptr %552, align 4
  %1056 = and i32 %927, 16
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1059, label %1058

1058:                                             ; preds = %1050
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  br label %1059

1059:                                             ; preds = %1058, %1050
  %1060 = and i32 %927, 32
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1063, label %1062

1062:                                             ; preds = %1059
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  br label %1063

1063:                                             ; preds = %1062, %1059
  %1064 = and i32 %927, 64
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1067, label %1066

1066:                                             ; preds = %1063
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  br label %1067

1067:                                             ; preds = %1066, %1063
  %1068 = load i32, ptr %552, align 4
  %1069 = sub i32 %1068, %930
  %1070 = lshr i32 %1069, 3
  %1071 = tail call i32 @llvm.umax.i32(i32 %1070, i32 %1054) #6
  %1072 = or i32 %930, 3
  store i32 %1072, ptr %552, align 4
  %1073 = and i32 %927, 128
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1076, label %1075

1075:                                             ; preds = %1067
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  br label %1076

1076:                                             ; preds = %1075, %1067
  %1077 = and i32 %927, 256
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1080, label %1079

1079:                                             ; preds = %1076
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  br label %1080

1080:                                             ; preds = %1079, %1076
  %1081 = and i32 %927, 512
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1085, label %1083

1083:                                             ; preds = %1080, %1011
  %1084 = phi i32 [ %1015, %1011 ], [ %1071, %1080 ]
  tail call fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) #6
  br label %1085

1085:                                             ; preds = %1083, %1080
  %1086 = phi i32 [ %1071, %1080 ], [ %1084, %1083 ]
  %1087 = load i32, ptr %552, align 4
  br label %1088

1088:                                             ; preds = %1085, %1011
  %1089 = phi i32 [ %1016, %1011 ], [ %1087, %1085 ]
  %1090 = phi i32 [ %1015, %1011 ], [ %1086, %1085 ]
  %1091 = sub i32 %1089, %930
  %1092 = lshr i32 %1091, 3
  %1093 = tail call i32 @llvm.umax.i32(i32 %1092, i32 %1090) #6
  %1094 = shl nuw i32 %1093, 3
  %1095 = or i32 %929, 63
  %1096 = add i32 %1094, %1095
  %1097 = and i32 %1096, -64
  store i32 %1097, ptr %552, align 4
  %1098 = or i32 %930, 2097152
  %1099 = load ptr, ptr %2, align 4
  %1100 = load i32, ptr %4, align 4
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1102, label %1443

1102:                                             ; preds = %1088
  %1103 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1104 = load i32, ptr %1103, align 4
  %1105 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1106 = load i32, ptr %1105, align 4
  %1107 = icmp eq i32 %1104, %1106
  br i1 %1107, label %1108, label %1109, !prof !8

1108:                                             ; preds = %1102
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1109:                                             ; preds = %1102
  %1110 = add i32 %1104, 1
  store i32 %1110, ptr %1103, align 4
  %1111 = getelementptr i32, ptr %1099, i32 %1104
  store i32 %1098, ptr %1111, align 4
  %1112 = load i32, ptr %4, align 4
  %1113 = load ptr, ptr %2, align 4
  %1114 = icmp eq i32 %1112, 0
  br i1 %1114, label %1115, label %1443

1115:                                             ; preds = %1109
  %1116 = load i32, ptr %1103, align 4
  %1117 = load i32, ptr %1105, align 4
  %1118 = icmp eq i32 %1116, %1117
  br i1 %1118, label %1119, label %1120, !prof !8

1119:                                             ; preds = %1115
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1120:                                             ; preds = %1115
  %1121 = add i32 %1116, 1
  store i32 %1121, ptr %1103, align 4
  %1122 = getelementptr i32, ptr %1113, i32 %1116
  store i32 6291463, ptr %1122, align 4
  %1123 = load i32, ptr %4, align 4
  %1124 = or i32 %1093, 2097152
  %1125 = load ptr, ptr %2, align 4
  %1126 = icmp eq i32 %1123, 0
  br i1 %1126, label %1127, label %1443

1127:                                             ; preds = %1120
  %1128 = load i32, ptr %1103, align 4
  %1129 = load i32, ptr %1105, align 4
  %1130 = icmp eq i32 %1128, %1129
  br i1 %1130, label %1131, label %1132, !prof !8

1131:                                             ; preds = %1127
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1132:                                             ; preds = %1127
  %1133 = add i32 %1128, 1
  store i32 %1133, ptr %1103, align 4
  %1134 = getelementptr i32, ptr %1125, i32 %1128
  store i32 %1124, ptr %1134, align 4
  %1135 = load i32, ptr %4, align 4
  %1136 = load ptr, ptr %2, align 4
  %1137 = icmp eq i32 %1135, 0
  br i1 %1137, label %1138, label %1443

1138:                                             ; preds = %1132
  %1139 = load i32, ptr %1103, align 4
  %1140 = load i32, ptr %1105, align 4
  %1141 = icmp eq i32 %1139, %1140
  br i1 %1141, label %1142, label %1143, !prof !8

1142:                                             ; preds = %1138
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1143:                                             ; preds = %1138
  %1144 = add i32 %1139, 1
  store i32 %1144, ptr %1103, align 4
  %1145 = getelementptr i32, ptr %1136, i32 %1139
  store i32 13107455, ptr %1145, align 4
  %1146 = load i32, ptr %4, align 4
  %1147 = load ptr, ptr %2, align 4
  %1148 = icmp eq i32 %1146, 0
  br i1 %1148, label %1149, label %1443

1149:                                             ; preds = %1143
  %1150 = load i32, ptr %1103, align 4
  %1151 = load i32, ptr %1105, align 4
  %1152 = icmp eq i32 %1150, %1151
  br i1 %1152, label %1153, label %1154, !prof !8

1153:                                             ; preds = %1149
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1154:                                             ; preds = %1149
  %1155 = add i32 %1150, 1
  store i32 %1155, ptr %1103, align 4
  %1156 = getelementptr i32, ptr %1147, i32 %1150
  store i32 8913151, ptr %1156, align 4
  %1157 = load i32, ptr %4, align 4
  %1158 = load ptr, ptr %2, align 4
  %1159 = icmp eq i32 %1157, 0
  br i1 %1159, label %1160, label %1443

1160:                                             ; preds = %1154
  %1161 = load i32, ptr %1103, align 4
  %1162 = load i32, ptr %1105, align 4
  %1163 = icmp eq i32 %1161, %1162
  br i1 %1163, label %1164, label %1165, !prof !8

1164:                                             ; preds = %1160
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1165:                                             ; preds = %1160
  %1166 = add i32 %1161, 1
  store i32 %1166, ptr %1103, align 4
  %1167 = getelementptr i32, ptr %1158, i32 %1161
  store i32 5243083, ptr %1167, align 4
  %1168 = load ptr, ptr %2, align 4
  %1169 = load i32, ptr %4, align 4
  %1170 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 1
  %1171 = load i32, ptr %1170, align 4
  %1172 = shl i32 %1171, 8
  %1173 = icmp eq i32 %1172, 0
  %1174 = or i32 %1172, 4194304
  %1175 = select i1 %1173, i32 -12582656, i32 %1174
  %1176 = icmp eq i32 %1169, 0
  br i1 %1176, label %1177, label %1443

1177:                                             ; preds = %1165
  %1178 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1179 = load i32, ptr %1178, align 4
  %1180 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1181 = load i32, ptr %1180, align 4
  %1182 = icmp eq i32 %1179, %1181
  br i1 %1182, label %1183, label %1184, !prof !8

1183:                                             ; preds = %1177
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1184:                                             ; preds = %1177
  %1185 = add i32 %1179, 1
  store i32 %1185, ptr %1178, align 4
  %1186 = getelementptr i32, ptr %1168, i32 %1179
  store i32 %1175, ptr %1186, align 4
  %1187 = load i32, ptr %4, align 4
  %1188 = load ptr, ptr %2, align 4
  %1189 = icmp eq i32 %1187, 0
  br i1 %1189, label %1190, label %1443

1190:                                             ; preds = %1184
  %1191 = load i32, ptr %1178, align 4
  %1192 = load i32, ptr %1180, align 4
  %1193 = icmp eq i32 %1191, %1192
  br i1 %1193, label %1194, label %1195, !prof !8

1194:                                             ; preds = %1190
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1195:                                             ; preds = %1190
  %1196 = add i32 %1191, 1
  store i32 %1196, ptr %1178, align 4
  %1197 = getelementptr i32, ptr %1188, i32 %1191
  store i32 7340192, ptr %1197, align 4
  %1198 = load i32, ptr %4, align 4
  %1199 = load ptr, ptr %2, align 4
  %1200 = icmp eq i32 %1198, 0
  br i1 %1200, label %1201, label %1443

1201:                                             ; preds = %1195
  %1202 = load i32, ptr %1178, align 4
  %1203 = load i32, ptr %1180, align 4
  %1204 = icmp eq i32 %1202, %1203
  br i1 %1204, label %1205, label %1206, !prof !8

1205:                                             ; preds = %1201
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1206:                                             ; preds = %1201
  %1207 = add i32 %1202, 1
  store i32 %1207, ptr %1178, align 4
  %1208 = getelementptr i32, ptr %1199, i32 %1202
  store i32 7340160, ptr %1208, align 4
  %1209 = load i32, ptr %4, align 4
  %1210 = load i32, ptr %553, align 4
  %1211 = or i32 %1210, 2097152
  %1212 = load ptr, ptr %2, align 4
  %1213 = icmp eq i32 %1209, 0
  br i1 %1213, label %1214, label %1443

1214:                                             ; preds = %1206
  %1215 = load i32, ptr %1178, align 4
  %1216 = load i32, ptr %1180, align 4
  %1217 = icmp eq i32 %1215, %1216
  br i1 %1217, label %1218, label %1219, !prof !8

1218:                                             ; preds = %1214
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1219:                                             ; preds = %1214
  %1220 = add i32 %1215, 1
  store i32 %1220, ptr %1178, align 4
  %1221 = getelementptr i32, ptr %1212, i32 %1215
  store i32 %1211, ptr %1221, align 4
  %1222 = load i32, ptr %4, align 4
  %1223 = load ptr, ptr %2, align 4
  %1224 = icmp eq i32 %1222, 0
  br i1 %1224, label %1225, label %1443

1225:                                             ; preds = %1219
  %1226 = load i32, ptr %1178, align 4
  %1227 = load i32, ptr %1180, align 4
  %1228 = icmp eq i32 %1226, %1227
  br i1 %1228, label %1229, label %1230, !prof !8

1229:                                             ; preds = %1225
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1230:                                             ; preds = %1225
  %1231 = add i32 %1226, 1
  store i32 %1231, ptr %1178, align 4
  %1232 = getelementptr i32, ptr %1223, i32 %1226
  store i32 6291463, ptr %1232, align 4
  %1233 = load i32, ptr %4, align 4
  %1234 = load ptr, ptr %2, align 4
  %1235 = icmp eq i32 %1233, 0
  br i1 %1235, label %1236, label %1443

1236:                                             ; preds = %1230
  %1237 = load i32, ptr %1178, align 4
  %1238 = load i32, ptr %1180, align 4
  %1239 = icmp eq i32 %1237, %1238
  br i1 %1239, label %1240, label %1241, !prof !8

1240:                                             ; preds = %1236
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1241:                                             ; preds = %1236
  %1242 = add i32 %1237, 1
  store i32 %1242, ptr %1178, align 4
  %1243 = getelementptr i32, ptr %1234, i32 %1237
  store i32 2097156, ptr %1243, align 4
  %1244 = load i32, ptr %4, align 4
  %1245 = load ptr, ptr %2, align 4
  %1246 = icmp eq i32 %1244, 0
  br i1 %1246, label %1247, label %1443

1247:                                             ; preds = %1241
  %1248 = load i32, ptr %1178, align 4
  %1249 = load i32, ptr %1180, align 4
  %1250 = icmp eq i32 %1248, %1249
  br i1 %1250, label %1251, label %1252, !prof !8

1251:                                             ; preds = %1247
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1252:                                             ; preds = %1247
  %1253 = add i32 %1248, 1
  store i32 %1253, ptr %1178, align 4
  %1254 = getelementptr i32, ptr %1245, i32 %1248
  store i32 12583167, ptr %1254, align 4
  %1255 = load i32, ptr %4, align 4
  %1256 = load ptr, ptr %2, align 4
  %1257 = icmp eq i32 %1255, 0
  br i1 %1257, label %1258, label %1443

1258:                                             ; preds = %1252
  %1259 = load i32, ptr %1178, align 4
  %1260 = load i32, ptr %1180, align 4
  %1261 = icmp eq i32 %1259, %1260
  br i1 %1261, label %1262, label %1263, !prof !8

1262:                                             ; preds = %1258
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1263:                                             ; preds = %1258
  %1264 = add i32 %1259, 1
  store i32 %1264, ptr %1178, align 4
  %1265 = getelementptr i32, ptr %1256, i32 %1259
  store i32 8388863, ptr %1265, align 4
  %1266 = load i32, ptr %4, align 4
  %1267 = load ptr, ptr %2, align 4
  %1268 = icmp eq i32 %1266, 0
  br i1 %1268, label %1269, label %1443

1269:                                             ; preds = %1263
  %1270 = load i32, ptr %1178, align 4
  %1271 = load i32, ptr %1180, align 4
  %1272 = icmp eq i32 %1270, %1271
  br i1 %1272, label %1273, label %1274, !prof !8

1273:                                             ; preds = %1269
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1274:                                             ; preds = %1269
  %1275 = add i32 %1270, 1
  store i32 %1275, ptr %1178, align 4
  %1276 = getelementptr i32, ptr %1267, i32 %1270
  store i32 5243083, ptr %1276, align 4
  %1277 = load i32, ptr %4, align 4
  %1278 = load ptr, ptr %2, align 4
  %1279 = icmp eq i32 %1277, 0
  br i1 %1279, label %1280, label %1443

1280:                                             ; preds = %1274
  %1281 = load i32, ptr %1178, align 4
  store i32 %1281, ptr %554, align 4
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1303, label %1283

1283:                                             ; preds = %1295, %1280
  %1284 = phi i32 [ %1296, %1295 ], [ %1281, %1280 ]
  %1285 = phi i32 [ %1297, %1295 ], [ 0, %1280 ]
  %1286 = getelementptr i32, ptr %1278, i32 %1285
  %1287 = load i32, ptr %1286, align 4
  %1288 = and i32 %1287, -917760
  %1289 = icmp eq i32 %1288, -12581376
  br i1 %1289, label %1290, label %1295

1290:                                             ; preds = %1283
  %1291 = and i32 %1287, 16711935
  %1292 = shl i32 %1284, 8
  %1293 = or i32 %1291, %1292
  store i32 %1293, ptr %1286, align 4
  %1294 = load i32, ptr %1178, align 4
  br label %1295

1295:                                             ; preds = %1290, %1283
  %1296 = phi i32 [ %1284, %1283 ], [ %1294, %1290 ]
  %1297 = add nuw i32 %1285, 1
  %1298 = icmp ult i32 %1297, %1296
  br i1 %1298, label %1283, label %1299

1299:                                             ; preds = %1295
  %1300 = load i32, ptr %4, align 4
  %1301 = load ptr, ptr %2, align 4
  %1302 = icmp eq i32 %1300, 0
  br i1 %1302, label %1303, label %1443

1303:                                             ; preds = %1299, %1280
  %1304 = phi ptr [ %1301, %1299 ], [ %1278, %1280 ]
  %1305 = phi i32 [ %1296, %1299 ], [ 0, %1280 ]
  %1306 = load i32, ptr %1180, align 4
  %1307 = icmp eq i32 %1305, %1306
  br i1 %1307, label %1308, label %1309, !prof !8

1308:                                             ; preds = %1303
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1309:                                             ; preds = %1303
  %1310 = add i32 %1305, 1
  store i32 %1310, ptr %1178, align 4
  %1311 = getelementptr i32, ptr %1304, i32 %1305
  store i32 7340033, ptr %1311, align 4
  %1312 = load i32, ptr %4, align 4
  %1313 = load ptr, ptr %2, align 4
  %1314 = icmp eq i32 %1312, 0
  br i1 %1314, label %1315, label %1443

1315:                                             ; preds = %1309
  %1316 = load i32, ptr %1178, align 4
  %1317 = load i32, ptr %1180, align 4
  %1318 = icmp eq i32 %1316, %1317
  br i1 %1318, label %1319, label %1320, !prof !8

1319:                                             ; preds = %1315
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1320:                                             ; preds = %1315
  %1321 = add i32 %1316, 1
  store i32 %1321, ptr %1178, align 4
  %1322 = getelementptr i32, ptr %1313, i32 %1316
  store i32 7340035, ptr %1322, align 4
  %1323 = load i32, ptr %4, align 4
  %1324 = load ptr, ptr %2, align 4
  %1325 = icmp eq i32 %1323, 0
  br i1 %1325, label %1326, label %1443

1326:                                             ; preds = %1320
  %1327 = load i32, ptr %1178, align 4
  %1328 = load i32, ptr %1180, align 4
  %1329 = icmp eq i32 %1327, %1328
  br i1 %1329, label %1330, label %1331, !prof !8

1330:                                             ; preds = %1326
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1331:                                             ; preds = %1326
  %1332 = add i32 %1327, 1
  store i32 %1332, ptr %1178, align 4
  %1333 = getelementptr i32, ptr %1324, i32 %1327
  store i32 7340061, ptr %1333, align 4
  %1334 = load ptr, ptr %2, align 4
  %1335 = load i32, ptr %4, align 4
  %1336 = getelementptr %struct.nvkm_grctx, ptr %0, i32 0, i32 7, i32 7
  %1337 = load i32, ptr %1336, align 4
  %1338 = shl i32 %1337, 8
  %1339 = icmp eq i32 %1338, 0
  %1340 = or i32 %1338, 4194309
  %1341 = select i1 %1339, i32 -12581115, i32 %1340
  %1342 = icmp eq i32 %1335, 0
  br i1 %1342, label %1343, label %1443

1343:                                             ; preds = %1331
  %1344 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %1345 = load i32, ptr %1344, align 4
  %1346 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %1347 = load i32, ptr %1346, align 4
  %1348 = icmp eq i32 %1345, %1347
  br i1 %1348, label %1349, label %1350, !prof !8

1349:                                             ; preds = %1343
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1350:                                             ; preds = %1343
  %1351 = add i32 %1345, 1
  store i32 %1351, ptr %1344, align 4
  %1352 = getelementptr i32, ptr %1334, i32 %1345
  store i32 %1341, ptr %1352, align 4
  %1353 = load i32, ptr %4, align 4
  %1354 = load ptr, ptr %2, align 4
  %1355 = icmp eq i32 %1353, 0
  br i1 %1355, label %1356, label %1443

1356:                                             ; preds = %1350
  %1357 = load i32, ptr %1344, align 4
  %1358 = load i32, ptr %1346, align 4
  %1359 = icmp eq i32 %1357, %1358
  br i1 %1359, label %1360, label %1361, !prof !8

1360:                                             ; preds = %1356
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1361:                                             ; preds = %1356
  %1362 = add i32 %1357, 1
  store i32 %1362, ptr %1344, align 4
  %1363 = getelementptr i32, ptr %1354, i32 %1357
  store i32 6291469, ptr %1363, align 4
  %1364 = load i32, ptr %4, align 4
  %1365 = load ptr, ptr %2, align 4
  %1366 = icmp eq i32 %1364, 0
  br i1 %1366, label %1367, label %1443

1367:                                             ; preds = %1361
  %1368 = load i32, ptr %1344, align 4
  store i32 %1368, ptr %1336, align 4
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1390, label %1370

1370:                                             ; preds = %1382, %1367
  %1371 = phi i32 [ %1383, %1382 ], [ %1368, %1367 ]
  %1372 = phi i32 [ %1384, %1382 ], [ 0, %1367 ]
  %1373 = getelementptr i32, ptr %1365, i32 %1372
  %1374 = load i32, ptr %1373, align 4
  %1375 = and i32 %1374, -917760
  %1376 = icmp eq i32 %1375, -12581120
  br i1 %1376, label %1377, label %1382

1377:                                             ; preds = %1370
  %1378 = and i32 %1374, 16711935
  %1379 = shl i32 %1371, 8
  %1380 = or i32 %1378, %1379
  store i32 %1380, ptr %1373, align 4
  %1381 = load i32, ptr %1344, align 4
  br label %1382

1382:                                             ; preds = %1377, %1370
  %1383 = phi i32 [ %1371, %1370 ], [ %1381, %1377 ]
  %1384 = add nuw i32 %1372, 1
  %1385 = icmp ult i32 %1384, %1383
  br i1 %1385, label %1370, label %1386

1386:                                             ; preds = %1382
  %1387 = load i32, ptr %4, align 4
  %1388 = load ptr, ptr %2, align 4
  %1389 = icmp eq i32 %1387, 0
  br i1 %1389, label %1390, label %1443

1390:                                             ; preds = %1386, %1367
  %1391 = phi ptr [ %1388, %1386 ], [ %1365, %1367 ]
  %1392 = phi i32 [ %1383, %1386 ], [ 0, %1367 ]
  %1393 = load i32, ptr %1346, align 4
  %1394 = icmp eq i32 %1392, %1393
  br i1 %1394, label %1395, label %1396, !prof !8

1395:                                             ; preds = %1390
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1396:                                             ; preds = %1390
  %1397 = add i32 %1392, 1
  store i32 %1397, ptr %1344, align 4
  %1398 = getelementptr i32, ptr %1391, i32 %1392
  store i32 7340037, ptr %1398, align 4
  %1399 = load i32, ptr %4, align 4
  %1400 = load ptr, ptr %2, align 4
  %1401 = icmp eq i32 %1399, 0
  br i1 %1401, label %1402, label %1443

1402:                                             ; preds = %1396
  %1403 = load i32, ptr %1344, align 4
  %1404 = load i32, ptr %1346, align 4
  %1405 = icmp eq i32 %1403, %1404
  br i1 %1405, label %1406, label %1407, !prof !8

1406:                                             ; preds = %1402
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1407:                                             ; preds = %1402
  %1408 = add i32 %1403, 1
  store i32 %1408, ptr %1344, align 4
  %1409 = getelementptr i32, ptr %1400, i32 %1403
  store i32 7340038, ptr %1409, align 4
  %1410 = load i32, ptr %4, align 4
  %1411 = load ptr, ptr %2, align 4
  %1412 = icmp eq i32 %1410, 0
  br i1 %1412, label %1413, label %1443

1413:                                             ; preds = %1407
  %1414 = load i32, ptr %1344, align 4
  %1415 = load i32, ptr %1346, align 4
  %1416 = icmp eq i32 %1414, %1415
  br i1 %1416, label %1417, label %1418, !prof !8

1417:                                             ; preds = %1413
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1418:                                             ; preds = %1413
  %1419 = add i32 %1414, 1
  store i32 %1419, ptr %1344, align 4
  %1420 = getelementptr i32, ptr %1411, i32 %1414
  store i32 7340046, ptr %1420, align 4
  %1421 = load i32, ptr %4, align 4
  %1422 = load ptr, ptr %2, align 4
  %1423 = icmp eq i32 %1421, 0
  br i1 %1423, label %1424, label %1443

1424:                                             ; preds = %1418
  %1425 = load i32, ptr %1344, align 4
  %1426 = load i32, ptr %1346, align 4
  %1427 = icmp eq i32 %1425, %1426
  br i1 %1427, label %1428, label %1429, !prof !8

1428:                                             ; preds = %1424
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1429:                                             ; preds = %1424
  %1430 = add i32 %1425, 1
  store i32 %1430, ptr %1344, align 4
  %1431 = getelementptr i32, ptr %1422, i32 %1425
  store i32 7340060, ptr %1431, align 4
  %1432 = load i32, ptr %4, align 4
  %1433 = load ptr, ptr %2, align 4
  %1434 = icmp eq i32 %1432, 0
  br i1 %1434, label %1435, label %1443

1435:                                             ; preds = %1429
  %1436 = load i32, ptr %1344, align 4
  %1437 = load i32, ptr %1346, align 4
  %1438 = icmp eq i32 %1436, %1437
  br i1 %1438, label %1439, label %1440, !prof !8

1439:                                             ; preds = %1435
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

1440:                                             ; preds = %1435
  %1441 = add i32 %1436, 1
  store i32 %1441, ptr %1344, align 4
  %1442 = getelementptr i32, ptr %1433, i32 %1436
  store i32 6291468, ptr %1442, align 4
  br label %1443

1443:                                             ; preds = %1440, %1429, %1418, %1407, %1396, %1386, %1361, %1350, %1331, %1320, %1309, %1299, %1274, %1263, %1252, %1241, %1230, %1219, %1206, %1195, %1184, %1165, %1154, %1143, %1132, %1120, %1109, %1088
  %1444 = load i32, ptr %552, align 4
  %1445 = add i32 %1444, 1024
  store i32 %1445, ptr %552, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_grctx_init(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvkm_grctx, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 2048) #7
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(152) %6, i8 0, i64 152, i1 false)
  store ptr %0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 2
  store ptr %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_grctx, ptr %3, i32 0, i32 4
  store i32 512, ptr %9, align 4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  call fastcc void @nv50_grctx_generate(ptr noundef nonnull %3)
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 4195108
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #6, !srcloc !13
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
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !13
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_mmio(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 5440
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %7 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 6
  store i32 514, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 9
  store i32 %9, ptr %10, align 4
  %11 = add i32 %9, 7
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

24:                                               ; preds = %17
  %25 = add i32 %19, 1
  store i32 %25, ptr %18, align 4
  %26 = getelementptr i32, ptr %13, i32 %19
  store i32 1507842, ptr %26, align 4
  %27 = load i32, ptr %14, align 4
  br label %28

28:                                               ; preds = %24, %1
  %29 = phi i32 [ %15, %1 ], [ %27, %24 ]
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, ptr %7, align 4
  %33 = sub i32 517, %32
  %34 = load i32, ptr %10, align 4
  %35 = add i32 %33, %34
  %36 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = shl i32 %35, 2
  tail call void %40(ptr noundef %37, i32 noundef %41, i32 noundef 48) #6
  %42 = load i32, ptr %14, align 4
  br label %43

43:                                               ; preds = %31, %28
  %44 = phi i32 [ %29, %28 ], [ %42, %31 ]
  store i32 525, ptr %7, align 4
  %45 = load i32, ptr %8, align 4
  store i32 %45, ptr %10, align 4
  %46 = add i32 %45, 50
  store i32 %46, ptr %8, align 4
  %47 = load ptr, ptr %12, align 4
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %49
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

56:                                               ; preds = %49
  %57 = add i32 %51, 1
  store i32 %57, ptr %50, align 4
  %58 = getelementptr i32, ptr %47, i32 %51
  store i32 2097202, ptr %58, align 4
  %59 = load i32, ptr %7, align 4
  %60 = load i32, ptr %14, align 4
  %61 = or i32 %59, 1048576
  %62 = load ptr, ptr %12, align 4
  %63 = icmp eq i32 %60, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load i32, ptr %50, align 4
  %66 = load i32, ptr %52, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69, !prof !8

68:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

69:                                               ; preds = %64
  %70 = add i32 %65, 1
  store i32 %70, ptr %50, align 4
  %71 = getelementptr i32, ptr %62, i32 %65
  store i32 %61, ptr %71, align 4
  br label %72

72:                                               ; preds = %69, %56, %43
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 80
  br i1 %75, label %76, label %126

76:                                               ; preds = %72
  %77 = load i32, ptr %14, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %191

79:                                               ; preds = %76
  %80 = load i32, ptr %7, align 4
  %81 = sub i32 525, %80
  %82 = load i32, ptr %10, align 4
  %83 = add i32 %81, %82
  %84 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = shl i32 %83, 2
  tail call void %88(ptr noundef %85, i32 noundef %89, i32 noundef -12582848) #6
  %90 = load i32, ptr %14, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %140

92:                                               ; preds = %79
  %93 = load i32, ptr %7, align 4
  %94 = sub i32 526, %93
  %95 = load i32, ptr %10, align 4
  %96 = add i32 %94, %95
  %97 = load ptr, ptr %84, align 4
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %98, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = shl i32 %96, 2
  tail call void %100(ptr noundef %97, i32 noundef %101, i32 noundef -1048448) #6
  %102 = load i32, ptr %14, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %140

104:                                              ; preds = %92
  %105 = load i32, ptr %7, align 4
  %106 = sub i32 527, %105
  %107 = load i32, ptr %10, align 4
  %108 = add i32 %106, %107
  %109 = load ptr, ptr %84, align 4
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %110, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  %113 = shl i32 %108, 2
  tail call void %112(ptr noundef %109, i32 noundef %113, i32 noundef -589680) #6
  %114 = load i32, ptr %14, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %140

116:                                              ; preds = %104
  %117 = load i32, ptr %7, align 4
  %118 = sub i32 528, %117
  %119 = load i32, ptr %10, align 4
  %120 = add i32 %118, %119
  %121 = load ptr, ptr %84, align 4
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %122, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = shl i32 %120, 2
  tail call void %124(ptr noundef %121, i32 noundef %125, i32 noundef -1571160) #6
  br label %126

126:                                              ; preds = %116, %72
  %127 = load i32, ptr %14, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i32, ptr %7, align 4
  %131 = sub i32 529, %130
  %132 = load i32, ptr %10, align 4
  %133 = add i32 %131, %132
  %134 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %136, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = shl i32 %133, 2
  tail call void %138(ptr noundef %135, i32 noundef %139, i32 noundef 2) #6
  br label %140

140:                                              ; preds = %129, %126, %104, %92, %79
  %141 = load i32, ptr %73, align 4
  %142 = add i32 %141, -161
  %143 = icmp ult i32 %142, 9
  %144 = icmp eq i32 %141, 175
  %145 = or i1 %144, %143
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load i32, ptr %14, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %186

149:                                              ; preds = %146
  %150 = load i32, ptr %7, align 4
  %151 = sub i32 549, %150
  %152 = load i32, ptr %10, align 4
  %153 = add i32 %151, %152
  %154 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %156, i32 0, i32 3
  %158 = load ptr, ptr %157, align 4
  %159 = shl i32 %153, 2
  tail call void %158(ptr noundef %155, i32 noundef %159, i32 noundef 4096) #6
  br label %160

160:                                              ; preds = %149, %140
  %161 = load i32, ptr %14, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %186

163:                                              ; preds = %160
  %164 = load i32, ptr %7, align 4
  %165 = sub i32 570, %164
  %166 = load i32, ptr %10, align 4
  %167 = add i32 %165, %166
  %168 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %170, i32 0, i32 3
  %172 = load ptr, ptr %171, align 4
  %173 = shl i32 %167, 2
  tail call void %172(ptr noundef %169, i32 noundef %173, i32 noundef 3) #6
  %174 = load i32, ptr %14, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %186

176:                                              ; preds = %163
  %177 = load i32, ptr %7, align 4
  %178 = sub i32 571, %177
  %179 = load i32, ptr %10, align 4
  %180 = add i32 %178, %179
  %181 = load ptr, ptr %168, align 4
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %182, i32 0, i32 3
  %184 = load ptr, ptr %183, align 4
  %185 = shl i32 %180, 2
  tail call void %184(ptr noundef %181, i32 noundef %185, i32 noundef 4096) #6
  br label %186

186:                                              ; preds = %176, %163, %160, %146
  %187 = load i32, ptr %73, align 4
  %188 = icmp eq i32 %187, 80
  br i1 %188, label %189, label %207

189:                                              ; preds = %186
  %190 = load i32, ptr %14, align 4
  br label %191

191:                                              ; preds = %189, %76
  %192 = phi i32 [ %190, %189 ], [ %77, %76 ]
  store i32 578, ptr %7, align 4
  %193 = load i32, ptr %8, align 4
  store i32 %193, ptr %10, align 4
  %194 = add i32 %193, 11
  store i32 %194, ptr %8, align 4
  %195 = load ptr, ptr %12, align 4
  %196 = icmp eq i32 %192, 0
  br i1 %196, label %197, label %240

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %204, !prof !8

203:                                              ; preds = %197
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

204:                                              ; preds = %197
  %205 = add i32 %199, 1
  store i32 %205, ptr %198, align 4
  %206 = getelementptr i32, ptr %195, i32 %199
  store i32 1770050, ptr %206, align 4
  br label %240

207:                                              ; preds = %186
  %208 = icmp ult i32 %187, 160
  store i32 578, ptr %7, align 4
  %209 = load i32, ptr %8, align 4
  store i32 %209, ptr %10, align 4
  br i1 %208, label %210, label %225

210:                                              ; preds = %207
  %211 = add i32 %209, 12
  store i32 %211, ptr %8, align 4
  %212 = load ptr, ptr %12, align 4
  %213 = load i32, ptr %14, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %240

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %219 = load i32, ptr %218, align 4
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %222, !prof !8

221:                                              ; preds = %215
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

222:                                              ; preds = %215
  %223 = add i32 %217, 1
  store i32 %223, ptr %216, align 4
  %224 = getelementptr i32, ptr %212, i32 %217
  store i32 1835586, ptr %224, align 4
  br label %240

225:                                              ; preds = %207
  %226 = add i32 %209, 14
  store i32 %226, ptr %8, align 4
  %227 = load ptr, ptr %12, align 4
  %228 = load i32, ptr %14, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %237, !prof !8

236:                                              ; preds = %230
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

237:                                              ; preds = %230
  %238 = add i32 %232, 1
  store i32 %238, ptr %231, align 4
  %239 = getelementptr i32, ptr %227, i32 %232
  store i32 1966658, ptr %239, align 4
  br label %240

240:                                              ; preds = %237, %225, %222, %210, %204, %191
  %241 = load i32, ptr %73, align 4
  %242 = icmp ugt i32 %241, 159
  br i1 %242, label %243, label %328

243:                                              ; preds = %240
  store i32 704, ptr %7, align 4
  %244 = load i32, ptr %8, align 4
  store i32 %244, ptr %10, align 4
  %245 = add i32 %244, 1
  store i32 %245, ptr %8, align 4
  %246 = load ptr, ptr %12, align 4
  %247 = load i32, ptr %14, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %251 = load i32, ptr %250, align 4
  %252 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %251, %253
  br i1 %254, label %255, label %256, !prof !8

255:                                              ; preds = %249
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

256:                                              ; preds = %249
  %257 = add i32 %251, 1
  store i32 %257, ptr %250, align 4
  %258 = getelementptr i32, ptr %246, i32 %251
  store i32 1114816, ptr %258, align 4
  br label %259

259:                                              ; preds = %256, %243
  %260 = load i32, ptr %73, align 4
  %261 = add i32 %260, -161
  %262 = icmp ult i32 %261, 9
  %263 = icmp eq i32 %260, 175
  %264 = or i1 %263, %262
  br i1 %264, label %265, label %328

265:                                              ; preds = %259
  store i32 708, ptr %7, align 4
  %266 = load i32, ptr %8, align 4
  store i32 %266, ptr %10, align 4
  %267 = add i32 %266, 1
  store i32 %267, ptr %8, align 4
  %268 = load ptr, ptr %12, align 4
  %269 = load i32, ptr %14, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %273, %275
  br i1 %276, label %277, label %278, !prof !8

277:                                              ; preds = %271
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

278:                                              ; preds = %271
  %279 = add i32 %273, 1
  store i32 %279, ptr %272, align 4
  %280 = getelementptr i32, ptr %268, i32 %273
  store i32 1114820, ptr %280, align 4
  %281 = load i32, ptr %14, align 4
  br label %282

282:                                              ; preds = %278, %265
  %283 = phi i32 [ %269, %265 ], [ %281, %278 ]
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %297

285:                                              ; preds = %282
  %286 = load i32, ptr %7, align 4
  %287 = sub i32 708, %286
  %288 = load i32, ptr %10, align 4
  %289 = add i32 %287, %288
  %290 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %291 = load ptr, ptr %290, align 4
  %292 = load ptr, ptr %291, align 8
  %293 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %292, i32 0, i32 3
  %294 = load ptr, ptr %293, align 4
  %295 = shl i32 %289, 2
  tail call void %294(ptr noundef %291, i32 noundef %295, i32 noundef 90781) #6
  %296 = load i32, ptr %14, align 4
  br label %297

297:                                              ; preds = %285, %282
  %298 = phi i32 [ %283, %282 ], [ %296, %285 ]
  store i32 712, ptr %7, align 4
  %299 = load i32, ptr %8, align 4
  store i32 %299, ptr %10, align 4
  %300 = add i32 %299, 1
  store i32 %300, ptr %8, align 4
  %301 = load ptr, ptr %12, align 4
  %302 = icmp eq i32 %298, 0
  br i1 %302, label %303, label %314

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %305 = load i32, ptr %304, align 4
  %306 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %307 = load i32, ptr %306, align 4
  %308 = icmp eq i32 %305, %307
  br i1 %308, label %309, label %310, !prof !8

309:                                              ; preds = %303
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

310:                                              ; preds = %303
  %311 = add i32 %305, 1
  store i32 %311, ptr %304, align 4
  %312 = getelementptr i32, ptr %301, i32 %305
  store i32 1114824, ptr %312, align 4
  %313 = load i32, ptr %14, align 4
  br label %314

314:                                              ; preds = %310, %297
  %315 = phi i32 [ %298, %297 ], [ %313, %310 ]
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %317, label %328

317:                                              ; preds = %314
  %318 = load i32, ptr %7, align 4
  %319 = sub i32 712, %318
  %320 = load i32, ptr %10, align 4
  %321 = add i32 %319, %320
  %322 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %323 = load ptr, ptr %322, align 4
  %324 = load ptr, ptr %323, align 8
  %325 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %324, i32 0, i32 3
  %326 = load ptr, ptr %325, align 4
  %327 = shl i32 %321, 2
  tail call void %326(ptr noundef %323, i32 noundef %327, i32 noundef 90781) #6
  br label %328

328:                                              ; preds = %317, %314, %259, %240
  %329 = load ptr, ptr %0, align 4
  %330 = load i32, ptr %8, align 4
  %331 = add i32 %330, 3
  store i32 %331, ptr %8, align 4
  %332 = load i32, ptr %14, align 4
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %336, label %334

334:                                              ; preds = %328
  %335 = add i32 %330, 4
  br label %354

336:                                              ; preds = %328
  %337 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %338 = load ptr, ptr %337, align 4
  %339 = load ptr, ptr %338, align 8
  %340 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %339, i32 0, i32 3
  %341 = load ptr, ptr %340, align 4
  %342 = shl i32 %331, 2
  tail call void %341(ptr noundef %338, i32 noundef %342, i32 noundef 2) #6
  %343 = load i32, ptr %14, align 4
  %344 = load i32, ptr %8, align 4
  %345 = add i32 %344, 1
  store i32 %345, ptr %8, align 4
  %346 = icmp eq i32 %343, 1
  br i1 %346, label %347, label %354

347:                                              ; preds = %336
  %348 = load ptr, ptr %337, align 4
  %349 = load ptr, ptr %348, align 8
  %350 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %349, i32 0, i32 3
  %351 = load ptr, ptr %350, align 4
  %352 = shl i32 %345, 2
  tail call void %351(ptr noundef %348, i32 noundef %352, i32 noundef 1) #6
  %353 = load i32, ptr %8, align 4
  br label %354

354:                                              ; preds = %347, %336, %334
  %355 = phi i32 [ %353, %347 ], [ %335, %334 ], [ %345, %336 ]
  %356 = add i32 %355, 3
  store i32 %356, ptr %8, align 4
  %357 = getelementptr inbounds %struct.nvkm_device, ptr %329, i32 0, i32 16
  %358 = load i32, ptr %357, align 4
  %359 = icmp ugt i32 %358, 147
  br i1 %359, label %360, label %362

360:                                              ; preds = %354
  %361 = add i32 %355, 4
  store i32 %361, ptr %8, align 4
  br label %362

362:                                              ; preds = %360, %354
  %363 = phi i32 [ %361, %360 ], [ %356, %354 ]
  %364 = load i32, ptr %14, align 4
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %368, label %366

366:                                              ; preds = %362
  %367 = add i32 %363, 1
  br label %379

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %370 = load ptr, ptr %369, align 4
  %371 = load ptr, ptr %370, align 8
  %372 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %371, i32 0, i32 3
  %373 = load ptr, ptr %372, align 4
  %374 = shl i32 %363, 2
  tail call void %373(ptr noundef %370, i32 noundef %374, i32 noundef 1) #6
  %375 = load i32, ptr %14, align 4
  %376 = load i32, ptr %8, align 4
  %377 = add i32 %376, 1
  store i32 %377, ptr %8, align 4
  %378 = icmp eq i32 %375, 1
  br i1 %378, label %382, label %379

379:                                              ; preds = %368, %366
  %380 = phi i32 [ %377, %368 ], [ %367, %366 ]
  %381 = add i32 %380, 6
  store i32 %381, ptr %8, align 4
  br label %392

382:                                              ; preds = %368
  %383 = load ptr, ptr %369, align 4
  %384 = load ptr, ptr %383, align 8
  %385 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %384, i32 0, i32 3
  %386 = load ptr, ptr %385, align 4
  %387 = shl i32 %377, 2
  tail call void %386(ptr noundef %383, i32 noundef %387, i32 noundef 256) #6
  %388 = load i32, ptr %8, align 4
  %389 = load i32, ptr %14, align 4
  %390 = add i32 %388, 6
  store i32 %390, ptr %8, align 4
  %391 = icmp eq i32 %389, 1
  br i1 %391, label %395, label %392

392:                                              ; preds = %382, %379
  %393 = phi i32 [ %380, %379 ], [ %388, %382 ]
  %394 = add i32 %393, 8
  br label %417

395:                                              ; preds = %382
  %396 = load ptr, ptr %369, align 4
  %397 = load ptr, ptr %396, align 8
  %398 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %397, i32 0, i32 3
  %399 = load ptr, ptr %398, align 4
  %400 = shl i32 %390, 2
  tail call void %399(ptr noundef %396, i32 noundef %400, i32 noundef 2) #6
  %401 = load i32, ptr %14, align 4
  %402 = load i32, ptr %8, align 4
  %403 = add i32 %402, 1
  store i32 %403, ptr %8, align 4
  %404 = icmp eq i32 %401, 1
  br i1 %404, label %407, label %405

405:                                              ; preds = %395
  %406 = add i32 %402, 2
  br label %417

407:                                              ; preds = %395
  %408 = load ptr, ptr %369, align 4
  %409 = load ptr, ptr %408, align 8
  %410 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %409, i32 0, i32 3
  %411 = load ptr, ptr %410, align 4
  %412 = shl i32 %403, 2
  tail call void %411(ptr noundef %408, i32 noundef %412, i32 noundef 1) #6
  %413 = load i32, ptr %14, align 4
  %414 = load i32, ptr %8, align 4
  %415 = add i32 %414, 1
  store i32 %415, ptr %8, align 4
  %416 = icmp eq i32 %413, 1
  br i1 %416, label %420, label %417

417:                                              ; preds = %407, %405, %392
  %418 = phi i32 [ %406, %405 ], [ %394, %392 ], [ %415, %407 ]
  %419 = add i32 %418, 4
  br label %440

420:                                              ; preds = %407
  %421 = load ptr, ptr %369, align 4
  %422 = load ptr, ptr %421, align 8
  %423 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %422, i32 0, i32 3
  %424 = load ptr, ptr %423, align 4
  %425 = shl i32 %415, 2
  tail call void %424(ptr noundef %421, i32 noundef %425, i32 noundef 1) #6
  %426 = load i32, ptr %14, align 4
  %427 = load i32, ptr %8, align 4
  %428 = add i32 %427, 4
  store i32 %428, ptr %8, align 4
  %429 = icmp eq i32 %426, 1
  br i1 %429, label %430, label %440

430:                                              ; preds = %420
  %431 = load ptr, ptr %369, align 4
  %432 = load ptr, ptr %431, align 8
  %433 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %432, i32 0, i32 3
  %434 = load ptr, ptr %433, align 4
  %435 = shl i32 %428, 2
  tail call void %434(ptr noundef %431, i32 noundef %435, i32 noundef 1) #6
  %436 = load i32, ptr %8, align 4
  %437 = load i32, ptr %14, align 4
  %438 = add i32 %436, 1
  store i32 %438, ptr %8, align 4
  %439 = icmp eq i32 %437, 1
  br i1 %439, label %443, label %440

440:                                              ; preds = %430, %420, %417
  %441 = phi i32 [ %436, %430 ], [ %419, %417 ], [ %428, %420 ]
  %442 = add i32 %441, 4
  br label %475

443:                                              ; preds = %430
  %444 = load ptr, ptr %369, align 4
  %445 = load ptr, ptr %444, align 8
  %446 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %445, i32 0, i32 3
  %447 = load ptr, ptr %446, align 4
  %448 = shl i32 %438, 2
  tail call void %447(ptr noundef %444, i32 noundef %448, i32 noundef 4194303) #6
  %449 = load i32, ptr %14, align 4
  %450 = load i32, ptr %8, align 4
  %451 = add i32 %450, 1
  store i32 %451, ptr %8, align 4
  %452 = icmp eq i32 %449, 1
  br i1 %452, label %455, label %453

453:                                              ; preds = %443
  %454 = add i32 %450, 3
  br label %475

455:                                              ; preds = %443
  %456 = load ptr, ptr %369, align 4
  %457 = load ptr, ptr %456, align 8
  %458 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %457, i32 0, i32 3
  %459 = load ptr, ptr %458, align 4
  %460 = shl i32 %451, 2
  tail call void %459(ptr noundef %456, i32 noundef %460, i32 noundef 8191) #6
  %461 = load i32, ptr %14, align 4
  %462 = load i32, ptr %8, align 4
  %463 = add i32 %462, 2
  store i32 %463, ptr %8, align 4
  %464 = icmp eq i32 %461, 1
  br i1 %464, label %465, label %475

465:                                              ; preds = %455
  %466 = load ptr, ptr %369, align 4
  %467 = load ptr, ptr %466, align 8
  %468 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %467, i32 0, i32 3
  %469 = load ptr, ptr %468, align 4
  %470 = shl i32 %463, 2
  tail call void %469(ptr noundef %466, i32 noundef %470, i32 noundef 1) #6
  %471 = load i32, ptr %8, align 4
  %472 = load i32, ptr %14, align 4
  %473 = add i32 %471, 1
  store i32 %473, ptr %8, align 4
  %474 = icmp eq i32 %472, 1
  br i1 %474, label %478, label %475

475:                                              ; preds = %465, %455, %453, %440
  %476 = phi i32 [ %471, %465 ], [ %442, %440 ], [ %463, %455 ], [ %454, %453 ]
  %477 = add i32 %476, 3
  br label %498

478:                                              ; preds = %465
  %479 = load ptr, ptr %369, align 4
  %480 = load ptr, ptr %479, align 8
  %481 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %480, i32 0, i32 3
  %482 = load ptr, ptr %481, align 4
  %483 = shl i32 %473, 2
  tail call void %482(ptr noundef %479, i32 noundef %483, i32 noundef 1) #6
  %484 = load i32, ptr %14, align 4
  %485 = load i32, ptr %8, align 4
  %486 = add i32 %485, 2
  store i32 %486, ptr %8, align 4
  %487 = icmp eq i32 %484, 1
  br i1 %487, label %488, label %498

488:                                              ; preds = %478
  %489 = load ptr, ptr %369, align 4
  %490 = load ptr, ptr %489, align 8
  %491 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %490, i32 0, i32 3
  %492 = load ptr, ptr %491, align 4
  %493 = shl i32 %486, 2
  tail call void %492(ptr noundef %489, i32 noundef %493, i32 noundef 1) #6
  %494 = load i32, ptr %8, align 4
  %495 = load i32, ptr %14, align 4
  %496 = add i32 %494, 1
  store i32 %496, ptr %8, align 4
  %497 = icmp eq i32 %495, 1
  br i1 %497, label %501, label %498

498:                                              ; preds = %488, %478, %475
  %499 = phi i32 [ %494, %488 ], [ %486, %478 ], [ %477, %475 ]
  %500 = add i32 %499, 2
  br label %523

501:                                              ; preds = %488
  %502 = load ptr, ptr %369, align 4
  %503 = load ptr, ptr %502, align 8
  %504 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %503, i32 0, i32 3
  %505 = load ptr, ptr %504, align 4
  %506 = shl i32 %496, 2
  tail call void %505(ptr noundef %502, i32 noundef %506, i32 noundef 1) #6
  %507 = load i32, ptr %14, align 4
  %508 = load i32, ptr %8, align 4
  %509 = add i32 %508, 1
  store i32 %509, ptr %8, align 4
  %510 = icmp eq i32 %507, 1
  br i1 %510, label %513, label %511

511:                                              ; preds = %501
  %512 = add i32 %508, 3
  br label %543

513:                                              ; preds = %501
  %514 = load ptr, ptr %369, align 4
  %515 = load ptr, ptr %514, align 8
  %516 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %515, i32 0, i32 3
  %517 = load ptr, ptr %516, align 4
  %518 = shl i32 %509, 2
  tail call void %517(ptr noundef %514, i32 noundef %518, i32 noundef 1) #6
  %519 = load i32, ptr %14, align 4
  %520 = load i32, ptr %8, align 4
  %521 = add i32 %520, 1
  store i32 %521, ptr %8, align 4
  %522 = icmp eq i32 %519, 1
  br i1 %522, label %526, label %523

523:                                              ; preds = %513, %498
  %524 = phi i32 [ %500, %498 ], [ %520, %513 ]
  %525 = add i32 %524, 2
  br label %543

526:                                              ; preds = %513
  %527 = load ptr, ptr %369, align 4
  %528 = load ptr, ptr %527, align 8
  %529 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %528, i32 0, i32 3
  %530 = load ptr, ptr %529, align 4
  %531 = shl i32 %521, 2
  tail call void %530(ptr noundef %527, i32 noundef %531, i32 noundef 4) #6
  %532 = load i32, ptr %14, align 4
  %533 = load i32, ptr %8, align 4
  %534 = add i32 %533, 1
  store i32 %534, ptr %8, align 4
  %535 = icmp eq i32 %532, 1
  br i1 %535, label %536, label %543

536:                                              ; preds = %526
  %537 = load ptr, ptr %369, align 4
  %538 = load ptr, ptr %537, align 8
  %539 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %538, i32 0, i32 3
  %540 = load ptr, ptr %539, align 4
  %541 = shl i32 %534, 2
  tail call void %540(ptr noundef %537, i32 noundef %541, i32 noundef 1) #6
  %542 = load i32, ptr %8, align 4
  br label %543

543:                                              ; preds = %536, %526, %523, %511
  %544 = phi i32 [ %542, %536 ], [ %525, %523 ], [ %534, %526 ], [ %512, %511 ]
  %545 = add i32 %544, 1
  store i32 %545, ptr %8, align 4
  %546 = load i32, ptr %357, align 4
  %547 = add i32 %546, -161
  %548 = icmp ult i32 %547, 9
  %549 = icmp eq i32 %546, 175
  %550 = or i1 %549, %548
  br i1 %550, label %551, label %553

551:                                              ; preds = %543
  %552 = add i32 %544, 2
  store i32 %552, ptr %8, align 4
  br label %553

553:                                              ; preds = %551, %543
  %554 = phi i32 [ %545, %543 ], [ %552, %551 ]
  %555 = load i32, ptr %14, align 4
  %556 = icmp eq i32 %555, 1
  br i1 %556, label %559, label %557

557:                                              ; preds = %553
  %558 = add i32 %554, 1
  br label %582

559:                                              ; preds = %553
  %560 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %561 = load ptr, ptr %560, align 4
  %562 = load ptr, ptr %561, align 8
  %563 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %562, i32 0, i32 3
  %564 = load ptr, ptr %563, align 4
  %565 = shl i32 %554, 2
  tail call void %564(ptr noundef %561, i32 noundef %565, i32 noundef 1) #6
  %566 = load i32, ptr %14, align 4
  %567 = load i32, ptr %8, align 4
  %568 = add i32 %567, 1
  store i32 %568, ptr %8, align 4
  %569 = icmp eq i32 %566, 1
  br i1 %569, label %572, label %570

570:                                              ; preds = %559
  %571 = add i32 %567, 2
  br label %595

572:                                              ; preds = %559
  %573 = load ptr, ptr %560, align 4
  %574 = load ptr, ptr %573, align 8
  %575 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %574, i32 0, i32 3
  %576 = load ptr, ptr %575, align 4
  %577 = shl i32 %568, 2
  tail call void %576(ptr noundef %573, i32 noundef %577, i32 noundef 1) #6
  %578 = load i32, ptr %14, align 4
  %579 = load i32, ptr %8, align 4
  %580 = add i32 %579, 1
  store i32 %580, ptr %8, align 4
  %581 = icmp eq i32 %578, 1
  br i1 %581, label %585, label %582

582:                                              ; preds = %572, %557
  %583 = phi i32 [ %558, %557 ], [ %579, %572 ]
  %584 = add i32 %583, 2
  br label %608

585:                                              ; preds = %572
  %586 = load ptr, ptr %560, align 4
  %587 = load ptr, ptr %586, align 8
  %588 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %587, i32 0, i32 3
  %589 = load ptr, ptr %588, align 4
  %590 = shl i32 %580, 2
  tail call void %589(ptr noundef %586, i32 noundef %590, i32 noundef 7) #6
  %591 = load i32, ptr %14, align 4
  %592 = load i32, ptr %8, align 4
  %593 = add i32 %592, 1
  store i32 %593, ptr %8, align 4
  %594 = icmp eq i32 %591, 1
  br i1 %594, label %598, label %595

595:                                              ; preds = %585, %570
  %596 = phi i32 [ %571, %570 ], [ %592, %585 ]
  %597 = add i32 %596, 2
  br label %621

598:                                              ; preds = %585
  %599 = load ptr, ptr %560, align 4
  %600 = load ptr, ptr %599, align 8
  %601 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %600, i32 0, i32 3
  %602 = load ptr, ptr %601, align 4
  %603 = shl i32 %593, 2
  tail call void %602(ptr noundef %599, i32 noundef %603, i32 noundef 1) #6
  %604 = load i32, ptr %14, align 4
  %605 = load i32, ptr %8, align 4
  %606 = add i32 %605, 1
  store i32 %606, ptr %8, align 4
  %607 = icmp eq i32 %604, 1
  br i1 %607, label %611, label %608

608:                                              ; preds = %598, %582
  %609 = phi i32 [ %584, %582 ], [ %605, %598 ]
  %610 = add i32 %609, 2
  br label %634

611:                                              ; preds = %598
  %612 = load ptr, ptr %560, align 4
  %613 = load ptr, ptr %612, align 8
  %614 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %613, i32 0, i32 3
  %615 = load ptr, ptr %614, align 4
  %616 = shl i32 %606, 2
  tail call void %615(ptr noundef %612, i32 noundef %616, i32 noundef 7) #6
  %617 = load i32, ptr %14, align 4
  %618 = load i32, ptr %8, align 4
  %619 = add i32 %618, 1
  store i32 %619, ptr %8, align 4
  %620 = icmp eq i32 %617, 1
  br i1 %620, label %624, label %621

621:                                              ; preds = %611, %595
  %622 = phi i32 [ %597, %595 ], [ %618, %611 ]
  %623 = add i32 %622, 3
  br label %654

624:                                              ; preds = %611
  %625 = load ptr, ptr %560, align 4
  %626 = load ptr, ptr %625, align 8
  %627 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %626, i32 0, i32 3
  %628 = load ptr, ptr %627, align 4
  %629 = shl i32 %619, 2
  tail call void %628(ptr noundef %625, i32 noundef %629, i32 noundef 1) #6
  %630 = load i32, ptr %14, align 4
  %631 = load i32, ptr %8, align 4
  %632 = add i32 %631, 1
  store i32 %632, ptr %8, align 4
  %633 = icmp eq i32 %630, 1
  br i1 %633, label %637, label %634

634:                                              ; preds = %624, %608
  %635 = phi i32 [ %610, %608 ], [ %631, %624 ]
  %636 = add i32 %635, 2
  br label %654

637:                                              ; preds = %624
  %638 = load ptr, ptr %560, align 4
  %639 = load ptr, ptr %638, align 8
  %640 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %639, i32 0, i32 3
  %641 = load ptr, ptr %640, align 4
  %642 = shl i32 %632, 2
  tail call void %641(ptr noundef %638, i32 noundef %642, i32 noundef 1) #6
  %643 = load i32, ptr %14, align 4
  %644 = load i32, ptr %8, align 4
  %645 = add i32 %644, 1
  store i32 %645, ptr %8, align 4
  %646 = icmp eq i32 %643, 1
  br i1 %646, label %647, label %654

647:                                              ; preds = %637
  %648 = load ptr, ptr %560, align 4
  %649 = load ptr, ptr %648, align 8
  %650 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %649, i32 0, i32 3
  %651 = load ptr, ptr %650, align 4
  %652 = shl i32 %645, 2
  tail call void %651(ptr noundef %648, i32 noundef %652, i32 noundef 1) #6
  %653 = load i32, ptr %8, align 4
  br label %654

654:                                              ; preds = %647, %637, %634, %621
  %655 = phi i32 [ %653, %647 ], [ %636, %634 ], [ %645, %637 ], [ %623, %621 ]
  %656 = add i32 %655, 1
  store i32 %656, ptr %8, align 4
  %657 = load i32, ptr %357, align 4
  %658 = icmp eq i32 %657, 80
  br i1 %658, label %659, label %798

659:                                              ; preds = %654
  %660 = add i32 %655, 5
  store i32 %660, ptr %8, align 4
  %661 = load i32, ptr %14, align 4
  %662 = icmp eq i32 %661, 1
  br i1 %662, label %665, label %663

663:                                              ; preds = %659
  %664 = add i32 %655, 8
  br label %688

665:                                              ; preds = %659
  %666 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %667 = load ptr, ptr %666, align 4
  %668 = load ptr, ptr %667, align 8
  %669 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %668, i32 0, i32 3
  %670 = load ptr, ptr %669, align 4
  %671 = shl i32 %660, 2
  tail call void %670(ptr noundef %667, i32 noundef %671, i32 noundef 1) #6
  %672 = load i32, ptr %14, align 4
  %673 = load i32, ptr %8, align 4
  %674 = add i32 %673, 1
  store i32 %674, ptr %8, align 4
  %675 = icmp eq i32 %672, 1
  br i1 %675, label %678, label %676

676:                                              ; preds = %665
  %677 = add i32 %673, 3
  br label %688

678:                                              ; preds = %665
  %679 = load ptr, ptr %666, align 4
  %680 = load ptr, ptr %679, align 8
  %681 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %680, i32 0, i32 3
  %682 = load ptr, ptr %681, align 4
  %683 = shl i32 %674, 2
  tail call void %682(ptr noundef %679, i32 noundef %683, i32 noundef 1) #6
  %684 = load i32, ptr %14, align 4
  %685 = load i32, ptr %8, align 4
  %686 = add i32 %685, 2
  store i32 %686, ptr %8, align 4
  %687 = icmp eq i32 %684, 1
  br i1 %687, label %691, label %688

688:                                              ; preds = %678, %676, %663
  %689 = phi i32 [ %664, %663 ], [ %686, %678 ], [ %677, %676 ]
  %690 = add i32 %689, 1
  br label %701

691:                                              ; preds = %678
  %692 = load ptr, ptr %666, align 4
  %693 = load ptr, ptr %692, align 8
  %694 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %693, i32 0, i32 3
  %695 = load ptr, ptr %694, align 4
  %696 = shl i32 %686, 2
  tail call void %695(ptr noundef %692, i32 noundef %696, i32 noundef 1) #6
  %697 = load i32, ptr %8, align 4
  %698 = load i32, ptr %14, align 4
  %699 = add i32 %697, 1
  store i32 %699, ptr %8, align 4
  %700 = icmp eq i32 %698, 1
  br i1 %700, label %704, label %701

701:                                              ; preds = %691, %688
  %702 = phi i32 [ %690, %688 ], [ %699, %691 ]
  %703 = add i32 %702, 4
  br label %724

704:                                              ; preds = %691
  %705 = load ptr, ptr %666, align 4
  %706 = load ptr, ptr %705, align 8
  %707 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %706, i32 0, i32 3
  %708 = load ptr, ptr %707, align 4
  %709 = shl i32 %699, 2
  tail call void %708(ptr noundef %705, i32 noundef %709, i32 noundef 10) #6
  %710 = load i32, ptr %14, align 4
  %711 = load i32, ptr %8, align 4
  %712 = add i32 %711, 4
  store i32 %712, ptr %8, align 4
  %713 = icmp eq i32 %710, 1
  br i1 %713, label %714, label %724

714:                                              ; preds = %704
  %715 = load ptr, ptr %666, align 4
  %716 = load ptr, ptr %715, align 8
  %717 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %716, i32 0, i32 3
  %718 = load ptr, ptr %717, align 4
  %719 = shl i32 %712, 2
  tail call void %718(ptr noundef %715, i32 noundef %719, i32 noundef 64) #6
  %720 = load i32, ptr %8, align 4
  %721 = load i32, ptr %14, align 4
  %722 = add i32 %720, 2
  store i32 %722, ptr %8, align 4
  %723 = icmp eq i32 %721, 1
  br i1 %723, label %727, label %724

724:                                              ; preds = %714, %704, %701
  %725 = phi i32 [ %720, %714 ], [ %703, %701 ], [ %712, %704 ]
  %726 = add i32 %725, 3
  br label %749

727:                                              ; preds = %714
  %728 = load ptr, ptr %666, align 4
  %729 = load ptr, ptr %728, align 8
  %730 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %729, i32 0, i32 3
  %731 = load ptr, ptr %730, align 4
  %732 = shl i32 %722, 2
  tail call void %731(ptr noundef %728, i32 noundef %732, i32 noundef 2) #6
  %733 = load i32, ptr %14, align 4
  %734 = load i32, ptr %8, align 4
  %735 = add i32 %734, 1
  store i32 %735, ptr %8, align 4
  %736 = icmp eq i32 %733, 1
  br i1 %736, label %739, label %737

737:                                              ; preds = %727
  %738 = add i32 %734, 3
  br label %762

739:                                              ; preds = %727
  %740 = load ptr, ptr %666, align 4
  %741 = load ptr, ptr %740, align 8
  %742 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %741, i32 0, i32 3
  %743 = load ptr, ptr %742, align 4
  %744 = shl i32 %735, 2
  tail call void %743(ptr noundef %740, i32 noundef %744, i32 noundef 256) #6
  %745 = load i32, ptr %14, align 4
  %746 = load i32, ptr %8, align 4
  %747 = add i32 %746, 1
  store i32 %747, ptr %8, align 4
  %748 = icmp eq i32 %745, 1
  br i1 %748, label %752, label %749

749:                                              ; preds = %739, %724
  %750 = phi i32 [ %726, %724 ], [ %746, %739 ]
  %751 = add i32 %750, 2
  br label %762

752:                                              ; preds = %739
  %753 = load ptr, ptr %666, align 4
  %754 = load ptr, ptr %753, align 8
  %755 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %754, i32 0, i32 3
  %756 = load ptr, ptr %755, align 4
  %757 = shl i32 %747, 2
  tail call void %756(ptr noundef %753, i32 noundef %757, i32 noundef 1) #6
  %758 = load i32, ptr %14, align 4
  %759 = load i32, ptr %8, align 4
  %760 = add i32 %759, 1
  store i32 %760, ptr %8, align 4
  %761 = icmp eq i32 %758, 1
  br i1 %761, label %765, label %762

762:                                              ; preds = %752, %749, %737
  %763 = phi i32 [ %738, %737 ], [ %760, %752 ], [ %751, %749 ]
  %764 = add i32 %763, 7
  br label %775

765:                                              ; preds = %752
  %766 = load ptr, ptr %666, align 4
  %767 = load ptr, ptr %766, align 8
  %768 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %767, i32 0, i32 3
  %769 = load ptr, ptr %768, align 4
  %770 = shl i32 %760, 2
  tail call void %769(ptr noundef %766, i32 noundef %770, i32 noundef 256) #6
  %771 = load i32, ptr %8, align 4
  %772 = load i32, ptr %14, align 4
  %773 = add i32 %771, 7
  store i32 %773, ptr %8, align 4
  %774 = icmp eq i32 %772, 1
  br i1 %774, label %778, label %775

775:                                              ; preds = %765, %762
  %776 = phi i32 [ %764, %762 ], [ %773, %765 ]
  %777 = add i32 %776, 9
  br label %795

778:                                              ; preds = %765
  %779 = load ptr, ptr %666, align 4
  %780 = load ptr, ptr %779, align 8
  %781 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %780, i32 0, i32 3
  %782 = load ptr, ptr %781, align 4
  %783 = shl i32 %773, 2
  tail call void %782(ptr noundef %779, i32 noundef %783, i32 noundef 1) #6
  %784 = load i32, ptr %8, align 4
  %785 = load i32, ptr %14, align 4
  %786 = add i32 %784, 9
  store i32 %786, ptr %8, align 4
  %787 = icmp eq i32 %785, 1
  br i1 %787, label %788, label %795

788:                                              ; preds = %778
  %789 = load ptr, ptr %666, align 4
  %790 = load ptr, ptr %789, align 8
  %791 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %790, i32 0, i32 3
  %792 = load ptr, ptr %791, align 4
  %793 = shl i32 %786, 2
  tail call void %792(ptr noundef %789, i32 noundef %793, i32 noundef 4) #6
  %794 = load i32, ptr %8, align 4
  br label %795

795:                                              ; preds = %788, %778, %775
  %796 = phi i32 [ %794, %788 ], [ %786, %778 ], [ %777, %775 ]
  %797 = add i32 %796, 2
  br label %798

798:                                              ; preds = %795, %654
  %799 = phi i32 [ %797, %795 ], [ %656, %654 ]
  %800 = add i32 %799, 4
  store i32 %800, ptr %8, align 4
  %801 = load i32, ptr %14, align 4
  %802 = icmp eq i32 %801, 1
  br i1 %802, label %805, label %803

803:                                              ; preds = %798
  %804 = add i32 %799, 7
  br label %838

805:                                              ; preds = %798
  %806 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %807 = load ptr, ptr %806, align 4
  %808 = load ptr, ptr %807, align 8
  %809 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %808, i32 0, i32 3
  %810 = load ptr, ptr %809, align 4
  %811 = shl i32 %800, 2
  tail call void %810(ptr noundef %807, i32 noundef %811, i32 noundef 1) #6
  %812 = load i32, ptr %14, align 4
  %813 = load i32, ptr %8, align 4
  %814 = add i32 %813, 1
  store i32 %814, ptr %8, align 4
  %815 = icmp eq i32 %812, 1
  br i1 %815, label %818, label %816

816:                                              ; preds = %805
  %817 = add i32 %813, 3
  br label %838

818:                                              ; preds = %805
  %819 = load ptr, ptr %806, align 4
  %820 = load ptr, ptr %819, align 8
  %821 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %820, i32 0, i32 3
  %822 = load ptr, ptr %821, align 4
  %823 = shl i32 %814, 2
  tail call void %822(ptr noundef %819, i32 noundef %823, i32 noundef 256) #6
  %824 = load i32, ptr %14, align 4
  %825 = load i32, ptr %8, align 4
  %826 = add i32 %825, 2
  store i32 %826, ptr %8, align 4
  %827 = icmp eq i32 %824, 1
  br i1 %827, label %828, label %838

828:                                              ; preds = %818
  %829 = load ptr, ptr %806, align 4
  %830 = load ptr, ptr %829, align 8
  %831 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %830, i32 0, i32 3
  %832 = load ptr, ptr %831, align 4
  %833 = shl i32 %826, 2
  tail call void %832(ptr noundef %829, i32 noundef %833, i32 noundef 1) #6
  %834 = load i32, ptr %8, align 4
  %835 = load i32, ptr %14, align 4
  %836 = add i32 %834, 3
  store i32 %836, ptr %8, align 4
  %837 = icmp eq i32 %835, 1
  br i1 %837, label %841, label %838

838:                                              ; preds = %828, %818, %816, %803
  %839 = phi i32 [ %834, %828 ], [ %826, %818 ], [ %817, %816 ], [ %804, %803 ]
  %840 = add i32 %839, 4
  br label %863

841:                                              ; preds = %828
  %842 = load ptr, ptr %806, align 4
  %843 = load ptr, ptr %842, align 8
  %844 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %843, i32 0, i32 3
  %845 = load ptr, ptr %844, align 4
  %846 = shl i32 %836, 2
  tail call void %845(ptr noundef %842, i32 noundef %846, i32 noundef 256) #6
  %847 = load i32, ptr %14, align 4
  %848 = load i32, ptr %8, align 4
  %849 = add i32 %848, 1
  store i32 %849, ptr %8, align 4
  %850 = icmp eq i32 %847, 1
  br i1 %850, label %853, label %851

851:                                              ; preds = %841
  %852 = add i32 %848, 4
  br label %876

853:                                              ; preds = %841
  %854 = load ptr, ptr %806, align 4
  %855 = load ptr, ptr %854, align 8
  %856 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %855, i32 0, i32 3
  %857 = load ptr, ptr %856, align 4
  %858 = shl i32 %849, 2
  tail call void %857(ptr noundef %854, i32 noundef %858, i32 noundef 1) #6
  %859 = load i32, ptr %14, align 4
  %860 = load i32, ptr %8, align 4
  %861 = add i32 %860, 1
  store i32 %861, ptr %8, align 4
  %862 = icmp eq i32 %859, 1
  br i1 %862, label %866, label %863

863:                                              ; preds = %853, %838
  %864 = phi i32 [ %840, %838 ], [ %860, %853 ]
  %865 = add i32 %864, 3
  br label %876

866:                                              ; preds = %853
  %867 = load ptr, ptr %806, align 4
  %868 = load ptr, ptr %867, align 8
  %869 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %868, i32 0, i32 3
  %870 = load ptr, ptr %869, align 4
  %871 = shl i32 %861, 2
  tail call void %870(ptr noundef %867, i32 noundef %871, i32 noundef 256) #6
  %872 = load i32, ptr %14, align 4
  %873 = load i32, ptr %8, align 4
  %874 = add i32 %873, 2
  store i32 %874, ptr %8, align 4
  %875 = icmp eq i32 %872, 1
  br i1 %875, label %879, label %876

876:                                              ; preds = %866, %863, %851
  %877 = phi i32 [ %852, %851 ], [ %874, %866 ], [ %865, %863 ]
  %878 = add i32 %877, 3
  br label %896

879:                                              ; preds = %866
  %880 = load ptr, ptr %806, align 4
  %881 = load ptr, ptr %880, align 8
  %882 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %881, i32 0, i32 3
  %883 = load ptr, ptr %882, align 4
  %884 = shl i32 %874, 2
  tail call void %883(ptr noundef %880, i32 noundef %884, i32 noundef 1) #6
  %885 = load i32, ptr %8, align 4
  %886 = load i32, ptr %14, align 4
  %887 = add i32 %885, 3
  store i32 %887, ptr %8, align 4
  %888 = icmp eq i32 %886, 1
  br i1 %888, label %889, label %896

889:                                              ; preds = %879
  %890 = load ptr, ptr %806, align 4
  %891 = load ptr, ptr %890, align 8
  %892 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %891, i32 0, i32 3
  %893 = load ptr, ptr %892, align 4
  %894 = shl i32 %887, 2
  tail call void %893(ptr noundef %890, i32 noundef %894, i32 noundef 256) #6
  %895 = load i32, ptr %8, align 4
  br label %896

896:                                              ; preds = %889, %879, %876
  %897 = phi i32 [ %895, %889 ], [ %887, %879 ], [ %878, %876 ]
  %898 = add i32 %897, 1
  store i32 %898, ptr %8, align 4
  %899 = load i32, ptr %357, align 4
  %900 = icmp eq i32 %899, 80
  br i1 %900, label %901, label %976

901:                                              ; preds = %896
  %902 = load i32, ptr %14, align 4
  %903 = icmp eq i32 %902, 1
  br i1 %903, label %906, label %904

904:                                              ; preds = %901
  %905 = add i32 %897, 3
  br label %927

906:                                              ; preds = %901
  %907 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %908 = load ptr, ptr %907, align 4
  %909 = load ptr, ptr %908, align 8
  %910 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %909, i32 0, i32 3
  %911 = load ptr, ptr %910, align 4
  %912 = shl i32 %898, 2
  tail call void %911(ptr noundef %908, i32 noundef %912, i32 noundef 1) #6
  %913 = load i32, ptr %14, align 4
  %914 = load i32, ptr %8, align 4
  %915 = add i32 %914, 2
  store i32 %915, ptr %8, align 4
  %916 = icmp eq i32 %913, 1
  br i1 %916, label %917, label %927

917:                                              ; preds = %906
  %918 = load ptr, ptr %907, align 4
  %919 = load ptr, ptr %918, align 8
  %920 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %919, i32 0, i32 3
  %921 = load ptr, ptr %920, align 4
  %922 = shl i32 %915, 2
  tail call void %921(ptr noundef %918, i32 noundef %922, i32 noundef 1) #6
  %923 = load i32, ptr %8, align 4
  %924 = load i32, ptr %14, align 4
  %925 = add i32 %923, 3
  store i32 %925, ptr %8, align 4
  %926 = icmp eq i32 %924, 1
  br i1 %926, label %930, label %927

927:                                              ; preds = %917, %906, %904
  %928 = phi i32 [ %923, %917 ], [ %915, %906 ], [ %905, %904 ]
  %929 = add i32 %928, 5
  br label %940

930:                                              ; preds = %917
  %931 = load ptr, ptr %907, align 4
  %932 = load ptr, ptr %931, align 8
  %933 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %932, i32 0, i32 3
  %934 = load ptr, ptr %933, align 4
  %935 = shl i32 %925, 2
  tail call void %934(ptr noundef %931, i32 noundef %935, i32 noundef 2) #6
  %936 = load i32, ptr %14, align 4
  %937 = load i32, ptr %8, align 4
  %938 = add i32 %937, 2
  store i32 %938, ptr %8, align 4
  %939 = icmp eq i32 %936, 1
  br i1 %939, label %943, label %940

940:                                              ; preds = %930, %927
  %941 = phi i32 [ %938, %930 ], [ %929, %927 ]
  %942 = add i32 %941, 2
  br label %953

943:                                              ; preds = %930
  %944 = load ptr, ptr %907, align 4
  %945 = load ptr, ptr %944, align 8
  %946 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %945, i32 0, i32 3
  %947 = load ptr, ptr %946, align 4
  %948 = shl i32 %938, 2
  tail call void %947(ptr noundef %944, i32 noundef %948, i32 noundef 1) #6
  %949 = load i32, ptr %8, align 4
  %950 = load i32, ptr %14, align 4
  %951 = add i32 %949, 2
  store i32 %951, ptr %8, align 4
  %952 = icmp eq i32 %950, 1
  br i1 %952, label %956, label %953

953:                                              ; preds = %943, %940
  %954 = phi i32 [ %942, %940 ], [ %951, %943 ]
  %955 = add i32 %954, 5
  br label %973

956:                                              ; preds = %943
  %957 = load ptr, ptr %907, align 4
  %958 = load ptr, ptr %957, align 8
  %959 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %958, i32 0, i32 3
  %960 = load ptr, ptr %959, align 4
  %961 = shl i32 %951, 2
  tail call void %960(ptr noundef %957, i32 noundef %961, i32 noundef 1) #6
  %962 = load i32, ptr %8, align 4
  %963 = load i32, ptr %14, align 4
  %964 = add i32 %962, 5
  store i32 %964, ptr %8, align 4
  %965 = icmp eq i32 %963, 1
  br i1 %965, label %966, label %973

966:                                              ; preds = %956
  %967 = load ptr, ptr %907, align 4
  %968 = load ptr, ptr %967, align 8
  %969 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %968, i32 0, i32 3
  %970 = load ptr, ptr %969, align 4
  %971 = shl i32 %964, 2
  tail call void %970(ptr noundef %967, i32 noundef %971, i32 noundef 3) #6
  %972 = load i32, ptr %8, align 4
  br label %973

973:                                              ; preds = %966, %956, %953
  %974 = phi i32 [ %972, %966 ], [ %964, %956 ], [ %955, %953 ]
  %975 = add i32 %974, 3
  br label %976

976:                                              ; preds = %973, %896
  %977 = phi i32 [ %975, %973 ], [ %898, %896 ]
  %978 = add i32 %977, 4
  store i32 %978, ptr %8, align 4
  %979 = load i32, ptr %14, align 4
  %980 = icmp eq i32 %979, 1
  br i1 %980, label %983, label %981

981:                                              ; preds = %976
  %982 = add i32 %977, 6
  br label %1014

983:                                              ; preds = %976
  %984 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %985 = load ptr, ptr %984, align 4
  %986 = load ptr, ptr %985, align 8
  %987 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %986, i32 0, i32 3
  %988 = load ptr, ptr %987, align 4
  %989 = shl i32 %978, 2
  tail call void %988(ptr noundef %985, i32 noundef %989, i32 noundef 4) #6
  %990 = load i32, ptr %14, align 4
  %991 = load i32, ptr %8, align 4
  %992 = add i32 %991, 1
  store i32 %992, ptr %8, align 4
  %993 = icmp eq i32 %990, 1
  br i1 %993, label %996, label %994

994:                                              ; preds = %983
  %995 = add i32 %991, 2
  br label %1014

996:                                              ; preds = %983
  %997 = load ptr, ptr %984, align 4
  %998 = load ptr, ptr %997, align 8
  %999 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %998, i32 0, i32 3
  %1000 = load ptr, ptr %999, align 4
  %1001 = shl i32 %992, 2
  tail call void %1000(ptr noundef %997, i32 noundef %1001, i32 noundef 112) #6
  %1002 = load i32, ptr %14, align 4
  %1003 = load i32, ptr %8, align 4
  %1004 = add i32 %1003, 1
  store i32 %1004, ptr %8, align 4
  %1005 = icmp eq i32 %1002, 1
  br i1 %1005, label %1006, label %1014

1006:                                             ; preds = %996
  %1007 = load ptr, ptr %984, align 4
  %1008 = load ptr, ptr %1007, align 8
  %1009 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1008, i32 0, i32 3
  %1010 = load ptr, ptr %1009, align 4
  %1011 = shl i32 %1004, 2
  tail call void %1010(ptr noundef %1007, i32 noundef %1011, i32 noundef 128) #6
  %1012 = load i32, ptr %8, align 4
  %1013 = load i32, ptr %14, align 4
  br label %1014

1014:                                             ; preds = %1006, %996, %994, %981
  %1015 = phi i32 [ %1013, %1006 ], [ %990, %994 ], [ %1002, %996 ], [ %979, %981 ]
  %1016 = phi i32 [ %1012, %1006 ], [ %995, %994 ], [ %1004, %996 ], [ %982, %981 ]
  %1017 = add i32 %1016, 4
  store i32 %1017, ptr %8, align 4
  %1018 = load i32, ptr %357, align 4
  %1019 = add i32 %1018, -161
  %1020 = icmp ult i32 %1019, 9
  %1021 = icmp eq i32 %1018, 175
  %1022 = or i1 %1021, %1020
  %1023 = select i1 %1022, i32 6, i32 5
  %1024 = add i32 %1023, %1016
  store i32 %1024, ptr %8, align 4
  %1025 = icmp eq i32 %1015, 1
  br i1 %1025, label %1026, label %1034

1026:                                             ; preds = %1014
  %1027 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1028 = load ptr, ptr %1027, align 4
  %1029 = load ptr, ptr %1028, align 8
  %1030 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1029, i32 0, i32 3
  %1031 = load ptr, ptr %1030, align 4
  %1032 = shl i32 %1024, 2
  tail call void %1031(ptr noundef %1028, i32 noundef %1032, i32 noundef 12) #6
  %1033 = load i32, ptr %8, align 4
  br label %1034

1034:                                             ; preds = %1026, %1014
  %1035 = phi i32 [ %1033, %1026 ], [ %1024, %1014 ]
  %1036 = add i32 %1035, 1
  store i32 %1036, ptr %8, align 4
  %1037 = load i32, ptr %357, align 4
  %1038 = icmp eq i32 %1037, 80
  br i1 %1038, label %1041, label %1039

1039:                                             ; preds = %1034
  %1040 = add i32 %1035, 2
  store i32 %1040, ptr %8, align 4
  br label %1041

1041:                                             ; preds = %1039, %1034
  %1042 = phi i32 [ %1040, %1039 ], [ %1036, %1034 ]
  %1043 = load i32, ptr %14, align 4
  %1044 = icmp eq i32 %1043, 1
  br i1 %1044, label %1047, label %1045

1045:                                             ; preds = %1041
  %1046 = add i32 %1042, 1
  br label %1065

1047:                                             ; preds = %1041
  %1048 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1049 = load ptr, ptr %1048, align 4
  %1050 = load ptr, ptr %1049, align 8
  %1051 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1050, i32 0, i32 3
  %1052 = load ptr, ptr %1051, align 4
  %1053 = shl i32 %1042, 2
  tail call void %1052(ptr noundef %1049, i32 noundef %1053, i32 noundef 8) #6
  %1054 = load i32, ptr %14, align 4
  %1055 = load i32, ptr %8, align 4
  %1056 = add i32 %1055, 1
  store i32 %1056, ptr %8, align 4
  %1057 = icmp eq i32 %1054, 1
  br i1 %1057, label %1058, label %1065

1058:                                             ; preds = %1047
  %1059 = load ptr, ptr %1048, align 4
  %1060 = load ptr, ptr %1059, align 8
  %1061 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1060, i32 0, i32 3
  %1062 = load ptr, ptr %1061, align 4
  %1063 = shl i32 %1056, 2
  tail call void %1062(ptr noundef %1059, i32 noundef %1063, i32 noundef 20) #6
  %1064 = load i32, ptr %8, align 4
  br label %1065

1065:                                             ; preds = %1058, %1047, %1045
  %1066 = phi i32 [ %1064, %1058 ], [ %1046, %1045 ], [ %1056, %1047 ]
  %1067 = add i32 %1066, 1
  store i32 %1067, ptr %8, align 4
  %1068 = load i32, ptr %357, align 4
  %1069 = icmp eq i32 %1068, 80
  br i1 %1069, label %1070, label %1072

1070:                                             ; preds = %1065
  %1071 = add i32 %1066, 3
  br label %1150

1072:                                             ; preds = %1065
  %1073 = add i32 %1066, 2
  store i32 %1073, ptr %8, align 4
  %1074 = load i32, ptr %14, align 4
  %1075 = icmp eq i32 %1074, 1
  br i1 %1075, label %1078, label %1076

1076:                                             ; preds = %1072
  %1077 = add i32 %1066, 3
  br label %1101

1078:                                             ; preds = %1072
  %1079 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1080 = load ptr, ptr %1079, align 4
  %1081 = load ptr, ptr %1080, align 8
  %1082 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1081, i32 0, i32 3
  %1083 = load ptr, ptr %1082, align 4
  %1084 = shl i32 %1073, 2
  tail call void %1083(ptr noundef %1080, i32 noundef %1084, i32 noundef 41) #6
  %1085 = load i32, ptr %14, align 4
  %1086 = load i32, ptr %8, align 4
  %1087 = add i32 %1086, 1
  store i32 %1087, ptr %8, align 4
  %1088 = icmp eq i32 %1085, 1
  br i1 %1088, label %1091, label %1089

1089:                                             ; preds = %1078
  %1090 = add i32 %1086, 2
  br label %1114

1091:                                             ; preds = %1078
  %1092 = load ptr, ptr %1079, align 4
  %1093 = load ptr, ptr %1092, align 8
  %1094 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1093, i32 0, i32 3
  %1095 = load ptr, ptr %1094, align 4
  %1096 = shl i32 %1087, 2
  tail call void %1095(ptr noundef %1092, i32 noundef %1096, i32 noundef 39) #6
  %1097 = load i32, ptr %14, align 4
  %1098 = load i32, ptr %8, align 4
  %1099 = add i32 %1098, 1
  store i32 %1099, ptr %8, align 4
  %1100 = icmp eq i32 %1097, 1
  br i1 %1100, label %1104, label %1101

1101:                                             ; preds = %1091, %1076
  %1102 = phi i32 [ %1077, %1076 ], [ %1098, %1091 ]
  %1103 = add i32 %1102, 2
  br label %1127

1104:                                             ; preds = %1091
  %1105 = load ptr, ptr %1079, align 4
  %1106 = load ptr, ptr %1105, align 8
  %1107 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1106, i32 0, i32 3
  %1108 = load ptr, ptr %1107, align 4
  %1109 = shl i32 %1099, 2
  tail call void %1108(ptr noundef %1105, i32 noundef %1109, i32 noundef 38) #6
  %1110 = load i32, ptr %14, align 4
  %1111 = load i32, ptr %8, align 4
  %1112 = add i32 %1111, 1
  store i32 %1112, ptr %8, align 4
  %1113 = icmp eq i32 %1110, 1
  br i1 %1113, label %1117, label %1114

1114:                                             ; preds = %1104, %1089
  %1115 = phi i32 [ %1090, %1089 ], [ %1111, %1104 ]
  %1116 = add i32 %1115, 3
  br label %1147

1117:                                             ; preds = %1104
  %1118 = load ptr, ptr %1079, align 4
  %1119 = load ptr, ptr %1118, align 8
  %1120 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1119, i32 0, i32 3
  %1121 = load ptr, ptr %1120, align 4
  %1122 = shl i32 %1112, 2
  tail call void %1121(ptr noundef %1118, i32 noundef %1122, i32 noundef 8) #6
  %1123 = load i32, ptr %14, align 4
  %1124 = load i32, ptr %8, align 4
  %1125 = add i32 %1124, 1
  store i32 %1125, ptr %8, align 4
  %1126 = icmp eq i32 %1123, 1
  br i1 %1126, label %1130, label %1127

1127:                                             ; preds = %1117, %1101
  %1128 = phi i32 [ %1103, %1101 ], [ %1124, %1117 ]
  %1129 = add i32 %1128, 2
  br label %1147

1130:                                             ; preds = %1117
  %1131 = load ptr, ptr %1079, align 4
  %1132 = load ptr, ptr %1131, align 8
  %1133 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1132, i32 0, i32 3
  %1134 = load ptr, ptr %1133, align 4
  %1135 = shl i32 %1125, 2
  tail call void %1134(ptr noundef %1131, i32 noundef %1135, i32 noundef 4) #6
  %1136 = load i32, ptr %14, align 4
  %1137 = load i32, ptr %8, align 4
  %1138 = add i32 %1137, 1
  store i32 %1138, ptr %8, align 4
  %1139 = icmp eq i32 %1136, 1
  br i1 %1139, label %1140, label %1147

1140:                                             ; preds = %1130
  %1141 = load ptr, ptr %1079, align 4
  %1142 = load ptr, ptr %1141, align 8
  %1143 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1142, i32 0, i32 3
  %1144 = load ptr, ptr %1143, align 4
  %1145 = shl i32 %1138, 2
  tail call void %1144(ptr noundef %1141, i32 noundef %1145, i32 noundef 39) #6
  %1146 = load i32, ptr %8, align 4
  br label %1147

1147:                                             ; preds = %1140, %1130, %1127, %1114
  %1148 = phi i32 [ %1146, %1140 ], [ %1129, %1127 ], [ %1138, %1130 ], [ %1116, %1114 ]
  %1149 = add i32 %1148, 2
  br label %1150

1150:                                             ; preds = %1147, %1070
  %1151 = phi i32 [ %1149, %1147 ], [ %1071, %1070 ]
  %1152 = add i32 %1151, 1
  store i32 %1152, ptr %8, align 4
  %1153 = load i32, ptr %14, align 4
  %1154 = icmp eq i32 %1153, 1
  br i1 %1154, label %1157, label %1155

1155:                                             ; preds = %1150
  %1156 = add i32 %1151, 2
  br label %1180

1157:                                             ; preds = %1150
  %1158 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1159 = load ptr, ptr %1158, align 4
  %1160 = load ptr, ptr %1159, align 8
  %1161 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1160, i32 0, i32 3
  %1162 = load ptr, ptr %1161, align 4
  %1163 = shl i32 %1152, 2
  tail call void %1162(ptr noundef %1159, i32 noundef %1163, i32 noundef 1) #6
  %1164 = load i32, ptr %14, align 4
  %1165 = load i32, ptr %8, align 4
  %1166 = add i32 %1165, 1
  store i32 %1166, ptr %8, align 4
  %1167 = icmp eq i32 %1164, 1
  br i1 %1167, label %1170, label %1168

1168:                                             ; preds = %1157
  %1169 = add i32 %1165, 2
  br label %1194

1170:                                             ; preds = %1157
  %1171 = load ptr, ptr %1158, align 4
  %1172 = load ptr, ptr %1171, align 8
  %1173 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1172, i32 0, i32 3
  %1174 = load ptr, ptr %1173, align 4
  %1175 = shl i32 %1166, 2
  tail call void %1174(ptr noundef %1171, i32 noundef %1175, i32 noundef 2) #6
  %1176 = load i32, ptr %14, align 4
  %1177 = load i32, ptr %8, align 4
  %1178 = add i32 %1177, 1
  store i32 %1178, ptr %8, align 4
  %1179 = icmp eq i32 %1176, 1
  br i1 %1179, label %1184, label %1180

1180:                                             ; preds = %1170, %1155
  %1181 = phi i32 [ %1153, %1155 ], [ %1176, %1170 ]
  %1182 = phi i32 [ %1156, %1155 ], [ %1177, %1170 ]
  %1183 = add i32 %1182, 2
  br label %1208

1184:                                             ; preds = %1170
  %1185 = load ptr, ptr %1158, align 4
  %1186 = load ptr, ptr %1185, align 8
  %1187 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1186, i32 0, i32 3
  %1188 = load ptr, ptr %1187, align 4
  %1189 = shl i32 %1178, 2
  tail call void %1188(ptr noundef %1185, i32 noundef %1189, i32 noundef 3) #6
  %1190 = load i32, ptr %14, align 4
  %1191 = load i32, ptr %8, align 4
  %1192 = add i32 %1191, 1
  store i32 %1192, ptr %8, align 4
  %1193 = icmp eq i32 %1190, 1
  br i1 %1193, label %1198, label %1194

1194:                                             ; preds = %1184, %1168
  %1195 = phi i32 [ %1164, %1168 ], [ %1190, %1184 ]
  %1196 = phi i32 [ %1169, %1168 ], [ %1191, %1184 ]
  %1197 = add i32 %1196, 2
  br label %1222

1198:                                             ; preds = %1184
  %1199 = load ptr, ptr %1158, align 4
  %1200 = load ptr, ptr %1199, align 8
  %1201 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1200, i32 0, i32 3
  %1202 = load ptr, ptr %1201, align 4
  %1203 = shl i32 %1192, 2
  tail call void %1202(ptr noundef %1199, i32 noundef %1203, i32 noundef 4) #6
  %1204 = load i32, ptr %14, align 4
  %1205 = load i32, ptr %8, align 4
  %1206 = add i32 %1205, 1
  store i32 %1206, ptr %8, align 4
  %1207 = icmp eq i32 %1204, 1
  br i1 %1207, label %1212, label %1208

1208:                                             ; preds = %1198, %1180
  %1209 = phi i32 [ %1181, %1180 ], [ %1204, %1198 ]
  %1210 = phi i32 [ %1183, %1180 ], [ %1205, %1198 ]
  %1211 = add i32 %1210, 2
  br label %1236

1212:                                             ; preds = %1198
  %1213 = load ptr, ptr %1158, align 4
  %1214 = load ptr, ptr %1213, align 8
  %1215 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1214, i32 0, i32 3
  %1216 = load ptr, ptr %1215, align 4
  %1217 = shl i32 %1206, 2
  tail call void %1216(ptr noundef %1213, i32 noundef %1217, i32 noundef 5) #6
  %1218 = load i32, ptr %14, align 4
  %1219 = load i32, ptr %8, align 4
  %1220 = add i32 %1219, 1
  store i32 %1220, ptr %8, align 4
  %1221 = icmp eq i32 %1218, 1
  br i1 %1221, label %1226, label %1222

1222:                                             ; preds = %1212, %1194
  %1223 = phi i32 [ %1195, %1194 ], [ %1218, %1212 ]
  %1224 = phi i32 [ %1197, %1194 ], [ %1219, %1212 ]
  %1225 = add i32 %1224, 2
  br label %1250

1226:                                             ; preds = %1212
  %1227 = load ptr, ptr %1158, align 4
  %1228 = load ptr, ptr %1227, align 8
  %1229 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1228, i32 0, i32 3
  %1230 = load ptr, ptr %1229, align 4
  %1231 = shl i32 %1220, 2
  tail call void %1230(ptr noundef %1227, i32 noundef %1231, i32 noundef 6) #6
  %1232 = load i32, ptr %14, align 4
  %1233 = load i32, ptr %8, align 4
  %1234 = add i32 %1233, 1
  store i32 %1234, ptr %8, align 4
  %1235 = icmp eq i32 %1232, 1
  br i1 %1235, label %1240, label %1236

1236:                                             ; preds = %1226, %1208
  %1237 = phi i32 [ %1209, %1208 ], [ %1232, %1226 ]
  %1238 = phi i32 [ %1211, %1208 ], [ %1233, %1226 ]
  %1239 = add i32 %1238, 19
  br label %1272

1240:                                             ; preds = %1226
  %1241 = load ptr, ptr %1158, align 4
  %1242 = load ptr, ptr %1241, align 8
  %1243 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1242, i32 0, i32 3
  %1244 = load ptr, ptr %1243, align 4
  %1245 = shl i32 %1234, 2
  tail call void %1244(ptr noundef %1241, i32 noundef %1245, i32 noundef 7) #6
  %1246 = load i32, ptr %14, align 4
  %1247 = load i32, ptr %8, align 4
  %1248 = add i32 %1247, 1
  store i32 %1248, ptr %8, align 4
  %1249 = icmp eq i32 %1246, 1
  br i1 %1249, label %1254, label %1250

1250:                                             ; preds = %1240, %1222
  %1251 = phi i32 [ %1223, %1222 ], [ %1246, %1240 ]
  %1252 = phi i32 [ %1225, %1222 ], [ %1247, %1240 ]
  %1253 = add i32 %1252, 18
  br label %1272

1254:                                             ; preds = %1240
  %1255 = load ptr, ptr %1158, align 4
  %1256 = load ptr, ptr %1255, align 8
  %1257 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1256, i32 0, i32 3
  %1258 = load ptr, ptr %1257, align 4
  %1259 = shl i32 %1248, 2
  tail call void %1258(ptr noundef %1255, i32 noundef %1259, i32 noundef 1) #6
  %1260 = load i32, ptr %14, align 4
  %1261 = load i32, ptr %8, align 4
  %1262 = add i32 %1261, 17
  store i32 %1262, ptr %8, align 4
  %1263 = icmp eq i32 %1260, 1
  br i1 %1263, label %1264, label %1272

1264:                                             ; preds = %1254
  %1265 = load ptr, ptr %1158, align 4
  %1266 = load ptr, ptr %1265, align 8
  %1267 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1266, i32 0, i32 3
  %1268 = load ptr, ptr %1267, align 4
  %1269 = shl i32 %1262, 2
  tail call void %1268(ptr noundef %1265, i32 noundef %1269, i32 noundef 207) #6
  %1270 = load i32, ptr %8, align 4
  %1271 = load i32, ptr %14, align 4
  br label %1272

1272:                                             ; preds = %1264, %1254, %1250, %1236
  %1273 = phi i32 [ %1271, %1264 ], [ %1251, %1250 ], [ %1260, %1254 ], [ %1237, %1236 ]
  %1274 = phi i32 [ %1270, %1264 ], [ %1253, %1250 ], [ %1262, %1254 ], [ %1239, %1236 ]
  %1275 = add i32 %1274, 8
  store i32 %1275, ptr %8, align 4
  %1276 = load i32, ptr %357, align 4
  %1277 = icmp eq i32 %1276, 80
  %1278 = select i1 %1277, i32 10, i32 11
  %1279 = add i32 %1278, %1274
  %1280 = add i32 %1279, 1
  store i32 %1280, ptr %8, align 4
  %1281 = icmp eq i32 %1273, 1
  br i1 %1281, label %1284, label %1282

1282:                                             ; preds = %1272
  %1283 = add i32 %1279, 3
  br label %1314

1284:                                             ; preds = %1272
  %1285 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1286 = load ptr, ptr %1285, align 4
  %1287 = load ptr, ptr %1286, align 8
  %1288 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1287, i32 0, i32 3
  %1289 = load ptr, ptr %1288, align 4
  %1290 = shl i32 %1280, 2
  tail call void %1289(ptr noundef %1286, i32 noundef %1290, i32 noundef 128) #6
  %1291 = load i32, ptr %14, align 4
  %1292 = load i32, ptr %8, align 4
  %1293 = add i32 %1292, 1
  store i32 %1293, ptr %8, align 4
  %1294 = icmp eq i32 %1291, 1
  br i1 %1294, label %1297, label %1295

1295:                                             ; preds = %1284
  %1296 = add i32 %1292, 2
  br label %1314

1297:                                             ; preds = %1284
  %1298 = load ptr, ptr %1285, align 4
  %1299 = load ptr, ptr %1298, align 8
  %1300 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1299, i32 0, i32 3
  %1301 = load ptr, ptr %1300, align 4
  %1302 = shl i32 %1293, 2
  tail call void %1301(ptr noundef %1298, i32 noundef %1302, i32 noundef 4) #6
  %1303 = load i32, ptr %14, align 4
  %1304 = load i32, ptr %8, align 4
  %1305 = add i32 %1304, 1
  store i32 %1305, ptr %8, align 4
  %1306 = icmp eq i32 %1303, 1
  br i1 %1306, label %1307, label %1314

1307:                                             ; preds = %1297
  %1308 = load ptr, ptr %1285, align 4
  %1309 = load ptr, ptr %1308, align 8
  %1310 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1309, i32 0, i32 3
  %1311 = load ptr, ptr %1310, align 4
  %1312 = shl i32 %1305, 2
  tail call void %1311(ptr noundef %1308, i32 noundef %1312, i32 noundef 4) #6
  %1313 = load i32, ptr %8, align 4
  br label %1314

1314:                                             ; preds = %1307, %1297, %1295, %1282
  %1315 = phi i32 [ %1313, %1307 ], [ %1296, %1295 ], [ %1305, %1297 ], [ %1283, %1282 ]
  %1316 = add i32 %1315, 1
  store i32 %1316, ptr %8, align 4
  %1317 = load i32, ptr %357, align 4
  %1318 = add i32 %1317, -161
  %1319 = icmp ult i32 %1318, 9
  %1320 = icmp eq i32 %1317, 175
  %1321 = or i1 %1320, %1319
  br i1 %1321, label %1322, label %1337

1322:                                             ; preds = %1314
  %1323 = load i32, ptr %14, align 4
  %1324 = icmp eq i32 %1323, 1
  br i1 %1324, label %1325, label %1333

1325:                                             ; preds = %1322
  %1326 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1327 = load ptr, ptr %1326, align 4
  %1328 = load ptr, ptr %1327, align 8
  %1329 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1328, i32 0, i32 3
  %1330 = load ptr, ptr %1329, align 4
  %1331 = shl i32 %1316, 2
  tail call void %1330(ptr noundef %1327, i32 noundef %1331, i32 noundef 3) #6
  %1332 = load i32, ptr %8, align 4
  br label %1333

1333:                                             ; preds = %1325, %1322
  %1334 = phi i32 [ %1332, %1325 ], [ %1316, %1322 ]
  %1335 = add i32 %1334, 2
  store i32 %1335, ptr %8, align 4
  %1336 = load i32, ptr %357, align 4
  br label %1337

1337:                                             ; preds = %1333, %1314
  %1338 = phi i32 [ %1316, %1314 ], [ %1335, %1333 ]
  %1339 = phi i32 [ %1317, %1314 ], [ %1336, %1333 ]
  %1340 = icmp eq i32 %1339, 80
  br i1 %1340, label %1355, label %1341

1341:                                             ; preds = %1337
  %1342 = load i32, ptr %14, align 4
  %1343 = icmp eq i32 %1342, 1
  br i1 %1343, label %1344, label %1352

1344:                                             ; preds = %1341
  %1345 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1346 = load ptr, ptr %1345, align 4
  %1347 = load ptr, ptr %1346, align 8
  %1348 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1347, i32 0, i32 3
  %1349 = load ptr, ptr %1348, align 4
  %1350 = shl i32 %1338, 2
  tail call void %1349(ptr noundef %1346, i32 noundef %1350, i32 noundef 3) #6
  %1351 = load i32, ptr %8, align 4
  br label %1352

1352:                                             ; preds = %1344, %1341
  %1353 = phi i32 [ %1351, %1344 ], [ %1338, %1341 ]
  %1354 = add i32 %1353, 1
  store i32 %1354, ptr %8, align 4
  br label %1355

1355:                                             ; preds = %1352, %1337
  %1356 = phi i32 [ %1354, %1352 ], [ %1338, %1337 ]
  %1357 = load i32, ptr %14, align 4
  %1358 = icmp eq i32 %1357, 1
  br i1 %1358, label %1359, label %1367

1359:                                             ; preds = %1355
  %1360 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1361 = load ptr, ptr %1360, align 4
  %1362 = load ptr, ptr %1361, align 8
  %1363 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1362, i32 0, i32 3
  %1364 = load ptr, ptr %1363, align 4
  %1365 = shl i32 %1356, 2
  tail call void %1364(ptr noundef %1361, i32 noundef %1365, i32 noundef 1) #6
  %1366 = load i32, ptr %8, align 4
  br label %1367

1367:                                             ; preds = %1359, %1355
  %1368 = phi i32 [ %1366, %1359 ], [ %1356, %1355 ]
  %1369 = add i32 %1368, 2
  store i32 %1369, ptr %8, align 4
  %1370 = load i32, ptr %357, align 4
  %1371 = icmp eq i32 %1370, 80
  br i1 %1371, label %1374, label %1372

1372:                                             ; preds = %1367
  %1373 = add i32 %1368, 3
  store i32 %1373, ptr %8, align 4
  br label %1374

1374:                                             ; preds = %1372, %1367
  %1375 = phi i32 [ %1373, %1372 ], [ %1369, %1367 ]
  %1376 = load i32, ptr %14, align 4
  %1377 = icmp eq i32 %1376, 1
  br i1 %1377, label %1380, label %1378

1378:                                             ; preds = %1374
  %1379 = add i32 %1375, 1
  br label %1403

1380:                                             ; preds = %1374
  %1381 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1382 = load ptr, ptr %1381, align 4
  %1383 = load ptr, ptr %1382, align 8
  %1384 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1383, i32 0, i32 3
  %1385 = load ptr, ptr %1384, align 4
  %1386 = shl i32 %1375, 2
  tail call void %1385(ptr noundef %1382, i32 noundef %1386, i32 noundef 18) #6
  %1387 = load i32, ptr %14, align 4
  %1388 = load i32, ptr %8, align 4
  %1389 = add i32 %1388, 1
  store i32 %1389, ptr %8, align 4
  %1390 = icmp eq i32 %1387, 1
  br i1 %1390, label %1393, label %1391

1391:                                             ; preds = %1380
  %1392 = add i32 %1388, 3
  br label %1417

1393:                                             ; preds = %1380
  %1394 = load ptr, ptr %1381, align 4
  %1395 = load ptr, ptr %1394, align 8
  %1396 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1395, i32 0, i32 3
  %1397 = load ptr, ptr %1396, align 4
  %1398 = shl i32 %1389, 2
  tail call void %1397(ptr noundef %1394, i32 noundef %1398, i32 noundef 16) #6
  %1399 = load i32, ptr %14, align 4
  %1400 = load i32, ptr %8, align 4
  %1401 = add i32 %1400, 1
  store i32 %1401, ptr %8, align 4
  %1402 = icmp eq i32 %1399, 1
  br i1 %1402, label %1407, label %1403

1403:                                             ; preds = %1393, %1378
  %1404 = phi i32 [ %1376, %1378 ], [ %1399, %1393 ]
  %1405 = phi i32 [ %1379, %1378 ], [ %1400, %1393 ]
  %1406 = add i32 %1405, 2
  br label %1417

1407:                                             ; preds = %1393
  %1408 = load ptr, ptr %1381, align 4
  %1409 = load ptr, ptr %1408, align 8
  %1410 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1409, i32 0, i32 3
  %1411 = load ptr, ptr %1410, align 4
  %1412 = shl i32 %1401, 2
  tail call void %1411(ptr noundef %1408, i32 noundef %1412, i32 noundef 12) #6
  %1413 = load i32, ptr %14, align 4
  %1414 = load i32, ptr %8, align 4
  %1415 = add i32 %1414, 1
  store i32 %1415, ptr %8, align 4
  %1416 = icmp eq i32 %1413, 1
  br i1 %1416, label %1421, label %1417

1417:                                             ; preds = %1407, %1403, %1391
  %1418 = phi i32 [ %1404, %1403 ], [ %1387, %1391 ], [ %1413, %1407 ]
  %1419 = phi i32 [ %1406, %1403 ], [ %1392, %1391 ], [ %1415, %1407 ]
  %1420 = add i32 %1419, 4
  br label %1441

1421:                                             ; preds = %1407
  %1422 = load ptr, ptr %1381, align 4
  %1423 = load ptr, ptr %1422, align 8
  %1424 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1423, i32 0, i32 3
  %1425 = load ptr, ptr %1424, align 4
  %1426 = shl i32 %1415, 2
  tail call void %1425(ptr noundef %1422, i32 noundef %1426, i32 noundef 1) #6
  %1427 = load i32, ptr %14, align 4
  %1428 = load i32, ptr %8, align 4
  %1429 = add i32 %1428, 4
  store i32 %1429, ptr %8, align 4
  %1430 = icmp eq i32 %1427, 1
  br i1 %1430, label %1431, label %1441

1431:                                             ; preds = %1421
  %1432 = load ptr, ptr %1381, align 4
  %1433 = load ptr, ptr %1432, align 8
  %1434 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1433, i32 0, i32 3
  %1435 = load ptr, ptr %1434, align 4
  %1436 = shl i32 %1429, 2
  tail call void %1435(ptr noundef %1432, i32 noundef %1436, i32 noundef 4) #6
  %1437 = load i32, ptr %8, align 4
  %1438 = load i32, ptr %14, align 4
  %1439 = add i32 %1437, 1
  store i32 %1439, ptr %8, align 4
  %1440 = icmp eq i32 %1438, 1
  br i1 %1440, label %1445, label %1441

1441:                                             ; preds = %1431, %1421, %1417
  %1442 = phi i32 [ %1438, %1431 ], [ %1418, %1417 ], [ %1427, %1421 ]
  %1443 = phi i32 [ %1437, %1431 ], [ %1420, %1417 ], [ %1429, %1421 ]
  %1444 = add i32 %1443, 2
  br label %1463

1445:                                             ; preds = %1431
  %1446 = load ptr, ptr %1381, align 4
  %1447 = load ptr, ptr %1446, align 8
  %1448 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1447, i32 0, i32 3
  %1449 = load ptr, ptr %1448, align 4
  %1450 = shl i32 %1439, 2
  tail call void %1449(ptr noundef %1446, i32 noundef %1450, i32 noundef 2) #6
  %1451 = load i32, ptr %14, align 4
  %1452 = load i32, ptr %8, align 4
  %1453 = add i32 %1452, 1
  store i32 %1453, ptr %8, align 4
  %1454 = icmp eq i32 %1451, 1
  br i1 %1454, label %1455, label %1463

1455:                                             ; preds = %1445
  %1456 = load ptr, ptr %1381, align 4
  %1457 = load ptr, ptr %1456, align 8
  %1458 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1457, i32 0, i32 3
  %1459 = load ptr, ptr %1458, align 4
  %1460 = shl i32 %1453, 2
  tail call void %1459(ptr noundef %1456, i32 noundef %1460, i32 noundef 4) #6
  %1461 = load i32, ptr %8, align 4
  %1462 = load i32, ptr %14, align 4
  br label %1463

1463:                                             ; preds = %1455, %1445, %1441
  %1464 = phi i32 [ %1462, %1455 ], [ %1442, %1441 ], [ %1451, %1445 ]
  %1465 = phi i32 [ %1461, %1455 ], [ %1444, %1441 ], [ %1453, %1445 ]
  %1466 = add i32 %1465, 1
  store i32 %1466, ptr %8, align 4
  %1467 = load i32, ptr %357, align 4
  %1468 = icmp ugt i32 %1467, 159
  %1469 = add i32 %1465, 2
  %1470 = select i1 %1468, i32 %1469, i32 %1466
  %1471 = add i32 %1470, 2
  store i32 %1471, ptr %8, align 4
  %1472 = icmp eq i32 %1464, 1
  br i1 %1472, label %1475, label %1473

1473:                                             ; preds = %1463
  %1474 = add i32 %1470, 3
  br label %1493

1475:                                             ; preds = %1463
  %1476 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1477 = load ptr, ptr %1476, align 4
  %1478 = load ptr, ptr %1477, align 8
  %1479 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1478, i32 0, i32 3
  %1480 = load ptr, ptr %1479, align 4
  %1481 = shl i32 %1471, 2
  tail call void %1480(ptr noundef %1477, i32 noundef %1481, i32 noundef 4194303) #6
  %1482 = load i32, ptr %14, align 4
  %1483 = load i32, ptr %8, align 4
  %1484 = add i32 %1483, 1
  store i32 %1484, ptr %8, align 4
  %1485 = icmp eq i32 %1482, 1
  br i1 %1485, label %1486, label %1493

1486:                                             ; preds = %1475
  %1487 = load ptr, ptr %1476, align 4
  %1488 = load ptr, ptr %1487, align 8
  %1489 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1488, i32 0, i32 3
  %1490 = load ptr, ptr %1489, align 4
  %1491 = shl i32 %1484, 2
  tail call void %1490(ptr noundef %1487, i32 noundef %1491, i32 noundef 8191) #6
  %1492 = load i32, ptr %8, align 4
  br label %1493

1493:                                             ; preds = %1486, %1475, %1473
  %1494 = phi i32 [ %1492, %1486 ], [ %1474, %1473 ], [ %1484, %1475 ]
  %1495 = add i32 %1494, 2
  store i32 %1495, ptr %8, align 4
  %1496 = load i32, ptr %357, align 4
  %1497 = icmp eq i32 %1496, 80
  br i1 %1497, label %1540, label %1498

1498:                                             ; preds = %1493
  %1499 = add i32 %1494, 10
  store i32 %1499, ptr %8, align 4
  %1500 = load i32, ptr %357, align 4
  %1501 = icmp ugt i32 %1500, 159
  br i1 %1501, label %1502, label %1540

1502:                                             ; preds = %1498
  %1503 = load i32, ptr %14, align 4
  %1504 = icmp eq i32 %1503, 1
  br i1 %1504, label %1507, label %1505

1505:                                             ; preds = %1502
  %1506 = add i32 %1494, 12
  br label %1537

1507:                                             ; preds = %1502
  %1508 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1509 = load ptr, ptr %1508, align 4
  %1510 = load ptr, ptr %1509, align 8
  %1511 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1510, i32 0, i32 3
  %1512 = load ptr, ptr %1511, align 4
  %1513 = shl i32 %1499, 2
  tail call void %1512(ptr noundef %1509, i32 noundef %1513, i32 noundef 1) #6
  %1514 = load i32, ptr %14, align 4
  %1515 = load i32, ptr %8, align 4
  %1516 = add i32 %1515, 1
  store i32 %1516, ptr %8, align 4
  %1517 = icmp eq i32 %1514, 1
  br i1 %1517, label %1520, label %1518

1518:                                             ; preds = %1507
  %1519 = add i32 %1515, 2
  br label %1537

1520:                                             ; preds = %1507
  %1521 = load ptr, ptr %1508, align 4
  %1522 = load ptr, ptr %1521, align 8
  %1523 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1522, i32 0, i32 3
  %1524 = load ptr, ptr %1523, align 4
  %1525 = shl i32 %1516, 2
  tail call void %1524(ptr noundef %1521, i32 noundef %1525, i32 noundef 1) #6
  %1526 = load i32, ptr %14, align 4
  %1527 = load i32, ptr %8, align 4
  %1528 = add i32 %1527, 1
  store i32 %1528, ptr %8, align 4
  %1529 = icmp eq i32 %1526, 1
  br i1 %1529, label %1530, label %1537

1530:                                             ; preds = %1520
  %1531 = load ptr, ptr %1508, align 4
  %1532 = load ptr, ptr %1531, align 8
  %1533 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1532, i32 0, i32 3
  %1534 = load ptr, ptr %1533, align 4
  %1535 = shl i32 %1528, 2
  tail call void %1534(ptr noundef %1531, i32 noundef %1535, i32 noundef 2) #6
  %1536 = load i32, ptr %8, align 4
  br label %1537

1537:                                             ; preds = %1530, %1520, %1518, %1505
  %1538 = phi i32 [ %1536, %1530 ], [ %1519, %1518 ], [ %1528, %1520 ], [ %1506, %1505 ]
  %1539 = add i32 %1538, 2
  store i32 %1539, ptr %8, align 4
  br label %1540

1540:                                             ; preds = %1537, %1498, %1493
  %1541 = phi i32 [ %1495, %1493 ], [ %1539, %1537 ], [ %1499, %1498 ]
  %1542 = load i32, ptr %14, align 4
  %1543 = icmp eq i32 %1542, 1
  br i1 %1543, label %1546, label %1544

1544:                                             ; preds = %1540
  %1545 = add i32 %1541, 2
  br label %1576

1546:                                             ; preds = %1540
  %1547 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1548 = load ptr, ptr %1547, align 4
  %1549 = load ptr, ptr %1548, align 8
  %1550 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1549, i32 0, i32 3
  %1551 = load ptr, ptr %1550, align 4
  %1552 = shl i32 %1541, 2
  tail call void %1551(ptr noundef %1548, i32 noundef %1552, i32 noundef 4) #6
  %1553 = load i32, ptr %14, align 4
  %1554 = load i32, ptr %8, align 4
  %1555 = add i32 %1554, 1
  store i32 %1555, ptr %8, align 4
  %1556 = icmp eq i32 %1553, 1
  br i1 %1556, label %1559, label %1557

1557:                                             ; preds = %1546
  %1558 = add i32 %1554, 2
  br label %1576

1559:                                             ; preds = %1546
  %1560 = load ptr, ptr %1547, align 4
  %1561 = load ptr, ptr %1560, align 8
  %1562 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1561, i32 0, i32 3
  %1563 = load ptr, ptr %1562, align 4
  %1564 = shl i32 %1555, 2
  tail call void %1563(ptr noundef %1560, i32 noundef %1564, i32 noundef 20) #6
  %1565 = load i32, ptr %14, align 4
  %1566 = load i32, ptr %8, align 4
  %1567 = add i32 %1566, 1
  store i32 %1567, ptr %8, align 4
  %1568 = icmp eq i32 %1565, 1
  br i1 %1568, label %1569, label %1576

1569:                                             ; preds = %1559
  %1570 = load ptr, ptr %1547, align 4
  %1571 = load ptr, ptr %1570, align 8
  %1572 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1571, i32 0, i32 3
  %1573 = load ptr, ptr %1572, align 4
  %1574 = shl i32 %1567, 2
  tail call void %1573(ptr noundef %1570, i32 noundef %1574, i32 noundef 1) #6
  %1575 = load i32, ptr %8, align 4
  br label %1576

1576:                                             ; preds = %1569, %1559, %1557, %1544
  %1577 = phi i32 [ %1575, %1569 ], [ %1558, %1557 ], [ %1567, %1559 ], [ %1545, %1544 ]
  %1578 = add i32 %1577, 3
  store i32 %1578, ptr %8, align 4
  %1579 = load i32, ptr %357, align 4
  %1580 = add i32 %1579, -161
  %1581 = icmp ult i32 %1580, 9
  %1582 = icmp eq i32 %1579, 175
  %1583 = or i1 %1582, %1581
  br i1 %1583, label %1584, label %1586

1584:                                             ; preds = %1576
  %1585 = add i32 %1577, 4
  store i32 %1585, ptr %8, align 4
  br label %1586

1586:                                             ; preds = %1584, %1576
  %1587 = phi i32 [ %1578, %1576 ], [ %1585, %1584 ]
  %1588 = load i32, ptr %14, align 4
  %1589 = icmp eq i32 %1588, 1
  br i1 %1589, label %1590, label %1599

1590:                                             ; preds = %1586
  %1591 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1592 = load ptr, ptr %1591, align 4
  %1593 = load ptr, ptr %1592, align 8
  %1594 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1593, i32 0, i32 3
  %1595 = load ptr, ptr %1594, align 4
  %1596 = shl i32 %1587, 2
  tail call void %1595(ptr noundef %1592, i32 noundef %1596, i32 noundef 2) #6
  %1597 = load i32, ptr %8, align 4
  %1598 = load i32, ptr %14, align 4
  br label %1599

1599:                                             ; preds = %1590, %1586
  %1600 = phi i32 [ %1598, %1590 ], [ %1588, %1586 ]
  %1601 = phi i32 [ %1597, %1590 ], [ %1587, %1586 ]
  %1602 = add i32 %1601, 1
  store i32 %1602, ptr %8, align 4
  %1603 = load i32, ptr %357, align 4
  %1604 = icmp ugt i32 %1603, 159
  %1605 = add i32 %1601, 2
  %1606 = select i1 %1604, i32 %1605, i32 %1602
  %1607 = add i32 %1606, 1
  store i32 %1607, ptr %8, align 4
  %1608 = load i32, ptr %357, align 4
  %1609 = icmp ugt i32 %1608, 159
  %1610 = add i32 %1606, 2
  %1611 = select i1 %1609, i32 %1610, i32 %1607
  %1612 = add i32 %1611, 1
  store i32 %1612, ptr %8, align 4
  %1613 = icmp eq i32 %1600, 1
  br i1 %1613, label %1616, label %1614

1614:                                             ; preds = %1599
  %1615 = add i32 %1611, 3
  br label %1627

1616:                                             ; preds = %1599
  %1617 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1618 = load ptr, ptr %1617, align 4
  %1619 = load ptr, ptr %1618, align 8
  %1620 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1619, i32 0, i32 3
  %1621 = load ptr, ptr %1620, align 4
  %1622 = shl i32 %1612, 2
  tail call void %1621(ptr noundef %1618, i32 noundef %1622, i32 noundef 1) #6
  %1623 = load i32, ptr %14, align 4
  %1624 = load i32, ptr %8, align 4
  %1625 = add i32 %1624, 2
  store i32 %1625, ptr %8, align 4
  %1626 = icmp eq i32 %1623, 1
  br i1 %1626, label %1630, label %1627

1627:                                             ; preds = %1616, %1614
  %1628 = phi i32 [ %1625, %1616 ], [ %1615, %1614 ]
  %1629 = add i32 %1628, 1
  br label %1647

1630:                                             ; preds = %1616
  %1631 = load ptr, ptr %1617, align 4
  %1632 = load ptr, ptr %1631, align 8
  %1633 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1632, i32 0, i32 3
  %1634 = load ptr, ptr %1633, align 4
  %1635 = shl i32 %1625, 2
  tail call void %1634(ptr noundef %1631, i32 noundef %1635, i32 noundef 2) #6
  %1636 = load i32, ptr %8, align 4
  %1637 = load i32, ptr %14, align 4
  %1638 = add i32 %1636, 1
  store i32 %1638, ptr %8, align 4
  %1639 = icmp eq i32 %1637, 1
  br i1 %1639, label %1640, label %1647

1640:                                             ; preds = %1630
  %1641 = load ptr, ptr %1617, align 4
  %1642 = load ptr, ptr %1641, align 8
  %1643 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1642, i32 0, i32 3
  %1644 = load ptr, ptr %1643, align 4
  %1645 = shl i32 %1638, 2
  tail call void %1644(ptr noundef %1641, i32 noundef %1645, i32 noundef 4096) #6
  %1646 = load i32, ptr %8, align 4
  br label %1647

1647:                                             ; preds = %1640, %1630, %1627
  %1648 = phi i32 [ %1646, %1640 ], [ %1638, %1630 ], [ %1629, %1627 ]
  %1649 = add i32 %1648, 1
  store i32 %1649, ptr %8, align 4
  %1650 = load i32, ptr %357, align 4
  %1651 = icmp eq i32 %1650, 80
  br i1 %1651, label %1690, label %1652

1652:                                             ; preds = %1647
  %1653 = load i32, ptr %14, align 4
  %1654 = icmp eq i32 %1653, 1
  br i1 %1654, label %1657, label %1655

1655:                                             ; preds = %1652
  %1656 = add i32 %1648, 3
  br label %1687

1657:                                             ; preds = %1652
  %1658 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1659 = load ptr, ptr %1658, align 4
  %1660 = load ptr, ptr %1659, align 8
  %1661 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1660, i32 0, i32 3
  %1662 = load ptr, ptr %1661, align 4
  %1663 = shl i32 %1649, 2
  tail call void %1662(ptr noundef %1659, i32 noundef %1663, i32 noundef 3584) #6
  %1664 = load i32, ptr %14, align 4
  %1665 = load i32, ptr %8, align 4
  %1666 = add i32 %1665, 1
  store i32 %1666, ptr %8, align 4
  %1667 = icmp eq i32 %1664, 1
  br i1 %1667, label %1670, label %1668

1668:                                             ; preds = %1657
  %1669 = add i32 %1665, 2
  br label %1687

1670:                                             ; preds = %1657
  %1671 = load ptr, ptr %1658, align 4
  %1672 = load ptr, ptr %1671, align 8
  %1673 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1672, i32 0, i32 3
  %1674 = load ptr, ptr %1673, align 4
  %1675 = shl i32 %1666, 2
  tail call void %1674(ptr noundef %1671, i32 noundef %1675, i32 noundef 4096) #6
  %1676 = load i32, ptr %14, align 4
  %1677 = load i32, ptr %8, align 4
  %1678 = add i32 %1677, 1
  store i32 %1678, ptr %8, align 4
  %1679 = icmp eq i32 %1676, 1
  br i1 %1679, label %1680, label %1687

1680:                                             ; preds = %1670
  %1681 = load ptr, ptr %1658, align 4
  %1682 = load ptr, ptr %1681, align 8
  %1683 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1682, i32 0, i32 3
  %1684 = load ptr, ptr %1683, align 4
  %1685 = shl i32 %1678, 2
  tail call void %1684(ptr noundef %1681, i32 noundef %1685, i32 noundef 7680) #6
  %1686 = load i32, ptr %8, align 4
  br label %1687

1687:                                             ; preds = %1680, %1670, %1668, %1655
  %1688 = phi i32 [ %1686, %1680 ], [ %1669, %1668 ], [ %1678, %1670 ], [ %1656, %1655 ]
  %1689 = add i32 %1688, 1
  br label %1690

1690:                                             ; preds = %1687, %1647
  %1691 = phi i32 [ %1689, %1687 ], [ %1649, %1647 ]
  %1692 = add i32 %1691, 1
  store i32 %1692, ptr %8, align 4
  %1693 = load i32, ptr %14, align 4
  %1694 = icmp eq i32 %1693, 1
  br i1 %1694, label %1697, label %1695

1695:                                             ; preds = %1690
  %1696 = add i32 %1691, 2
  br label %1720

1697:                                             ; preds = %1690
  %1698 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1699 = load ptr, ptr %1698, align 4
  %1700 = load ptr, ptr %1699, align 8
  %1701 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1700, i32 0, i32 3
  %1702 = load ptr, ptr %1701, align 4
  %1703 = shl i32 %1692, 2
  tail call void %1702(ptr noundef %1699, i32 noundef %1703, i32 noundef 1) #6
  %1704 = load i32, ptr %14, align 4
  %1705 = load i32, ptr %8, align 4
  %1706 = add i32 %1705, 1
  store i32 %1706, ptr %8, align 4
  %1707 = icmp eq i32 %1704, 1
  br i1 %1707, label %1710, label %1708

1708:                                             ; preds = %1697
  %1709 = add i32 %1705, 2
  br label %1733

1710:                                             ; preds = %1697
  %1711 = load ptr, ptr %1698, align 4
  %1712 = load ptr, ptr %1711, align 8
  %1713 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1712, i32 0, i32 3
  %1714 = load ptr, ptr %1713, align 4
  %1715 = shl i32 %1706, 2
  tail call void %1714(ptr noundef %1711, i32 noundef %1715, i32 noundef 1) #6
  %1716 = load i32, ptr %14, align 4
  %1717 = load i32, ptr %8, align 4
  %1718 = add i32 %1717, 1
  store i32 %1718, ptr %8, align 4
  %1719 = icmp eq i32 %1716, 1
  br i1 %1719, label %1723, label %1720

1720:                                             ; preds = %1710, %1695
  %1721 = phi i32 [ %1696, %1695 ], [ %1717, %1710 ]
  %1722 = add i32 %1721, 3
  br label %1746

1723:                                             ; preds = %1710
  %1724 = load ptr, ptr %1698, align 4
  %1725 = load ptr, ptr %1724, align 8
  %1726 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1725, i32 0, i32 3
  %1727 = load ptr, ptr %1726, align 4
  %1728 = shl i32 %1718, 2
  tail call void %1727(ptr noundef %1724, i32 noundef %1728, i32 noundef 1) #6
  %1729 = load i32, ptr %14, align 4
  %1730 = load i32, ptr %8, align 4
  %1731 = add i32 %1730, 1
  store i32 %1731, ptr %8, align 4
  %1732 = icmp eq i32 %1729, 1
  br i1 %1732, label %1736, label %1733

1733:                                             ; preds = %1723, %1708
  %1734 = phi i32 [ %1709, %1708 ], [ %1730, %1723 ]
  %1735 = add i32 %1734, 2
  br label %1746

1736:                                             ; preds = %1723
  %1737 = load ptr, ptr %1698, align 4
  %1738 = load ptr, ptr %1737, align 8
  %1739 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1738, i32 0, i32 3
  %1740 = load ptr, ptr %1739, align 4
  %1741 = shl i32 %1731, 2
  tail call void %1740(ptr noundef %1737, i32 noundef %1741, i32 noundef 1) #6
  %1742 = load i32, ptr %14, align 4
  %1743 = load i32, ptr %8, align 4
  %1744 = add i32 %1743, 1
  store i32 %1744, ptr %8, align 4
  %1745 = icmp eq i32 %1742, 1
  br i1 %1745, label %1749, label %1746

1746:                                             ; preds = %1736, %1733, %1720
  %1747 = phi i32 [ %1735, %1733 ], [ %1722, %1720 ], [ %1744, %1736 ]
  %1748 = add i32 %1747, 4
  br label %1766

1749:                                             ; preds = %1736
  %1750 = load ptr, ptr %1698, align 4
  %1751 = load ptr, ptr %1750, align 8
  %1752 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1751, i32 0, i32 3
  %1753 = load ptr, ptr %1752, align 4
  %1754 = shl i32 %1744, 2
  tail call void %1753(ptr noundef %1750, i32 noundef %1754, i32 noundef 1) #6
  %1755 = load i32, ptr %14, align 4
  %1756 = load i32, ptr %8, align 4
  %1757 = add i32 %1756, 4
  store i32 %1757, ptr %8, align 4
  %1758 = icmp eq i32 %1755, 1
  br i1 %1758, label %1759, label %1766

1759:                                             ; preds = %1749
  %1760 = load ptr, ptr %1698, align 4
  %1761 = load ptr, ptr %1760, align 8
  %1762 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1761, i32 0, i32 3
  %1763 = load ptr, ptr %1762, align 4
  %1764 = shl i32 %1757, 2
  tail call void %1763(ptr noundef %1760, i32 noundef %1764, i32 noundef 512) #6
  %1765 = load i32, ptr %8, align 4
  br label %1766

1766:                                             ; preds = %1759, %1749, %1746
  %1767 = phi i32 [ %1765, %1759 ], [ %1757, %1749 ], [ %1748, %1746 ]
  %1768 = add i32 %1767, 1
  store i32 %1768, ptr %8, align 4
  %1769 = load i32, ptr %357, align 4
  %1770 = add i32 %1769, -161
  %1771 = icmp ult i32 %1770, 9
  %1772 = icmp eq i32 %1769, 175
  %1773 = or i1 %1772, %1771
  br i1 %1773, label %1774, label %1788

1774:                                             ; preds = %1766
  %1775 = load i32, ptr %14, align 4
  %1776 = icmp eq i32 %1775, 1
  br i1 %1776, label %1777, label %1785

1777:                                             ; preds = %1774
  %1778 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1779 = load ptr, ptr %1778, align 4
  %1780 = load ptr, ptr %1779, align 8
  %1781 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1780, i32 0, i32 3
  %1782 = load ptr, ptr %1781, align 4
  %1783 = shl i32 %1768, 2
  tail call void %1782(ptr noundef %1779, i32 noundef %1783, i32 noundef 512) #6
  %1784 = load i32, ptr %8, align 4
  br label %1785

1785:                                             ; preds = %1777, %1774
  %1786 = phi i32 [ %1784, %1777 ], [ %1768, %1774 ]
  %1787 = add i32 %1786, 1
  br label %1788

1788:                                             ; preds = %1785, %1766
  %1789 = phi i32 [ %1768, %1766 ], [ %1787, %1785 ]
  %1790 = add i32 %1789, 1
  store i32 %1790, ptr %8, align 4
  %1791 = load i32, ptr %357, align 4
  %1792 = icmp ult i32 %1791, 160
  %1793 = load i32, ptr %14, align 4
  %1794 = icmp eq i32 %1793, 1
  br i1 %1792, label %1795, label %1867

1795:                                             ; preds = %1788
  br i1 %1794, label %1798, label %1796

1796:                                             ; preds = %1795
  %1797 = add i32 %1789, 2
  br label %1821

1798:                                             ; preds = %1795
  %1799 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1800 = load ptr, ptr %1799, align 4
  %1801 = load ptr, ptr %1800, align 8
  %1802 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1801, i32 0, i32 3
  %1803 = load ptr, ptr %1802, align 4
  %1804 = shl i32 %1790, 2
  tail call void %1803(ptr noundef %1800, i32 noundef %1804, i32 noundef 1) #6
  %1805 = load i32, ptr %14, align 4
  %1806 = load i32, ptr %8, align 4
  %1807 = add i32 %1806, 1
  store i32 %1807, ptr %8, align 4
  %1808 = icmp eq i32 %1805, 1
  br i1 %1808, label %1811, label %1809

1809:                                             ; preds = %1798
  %1810 = add i32 %1806, 5
  br label %1844

1811:                                             ; preds = %1798
  %1812 = load ptr, ptr %1799, align 4
  %1813 = load ptr, ptr %1812, align 8
  %1814 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1813, i32 0, i32 3
  %1815 = load ptr, ptr %1814, align 4
  %1816 = shl i32 %1807, 2
  tail call void %1815(ptr noundef %1812, i32 noundef %1816, i32 noundef 112) #6
  %1817 = load i32, ptr %14, align 4
  %1818 = load i32, ptr %8, align 4
  %1819 = add i32 %1818, 1
  store i32 %1819, ptr %8, align 4
  %1820 = icmp eq i32 %1817, 1
  br i1 %1820, label %1824, label %1821

1821:                                             ; preds = %1811, %1796
  %1822 = phi i32 [ %1797, %1796 ], [ %1818, %1811 ]
  %1823 = add i32 %1822, 4
  br label %1844

1824:                                             ; preds = %1811
  %1825 = load ptr, ptr %1799, align 4
  %1826 = load ptr, ptr %1825, align 8
  %1827 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1826, i32 0, i32 3
  %1828 = load ptr, ptr %1827, align 4
  %1829 = shl i32 %1819, 2
  tail call void %1828(ptr noundef %1825, i32 noundef %1829, i32 noundef 128) #6
  %1830 = load i32, ptr %14, align 4
  %1831 = load i32, ptr %8, align 4
  %1832 = add i32 %1831, 3
  store i32 %1832, ptr %8, align 4
  %1833 = icmp eq i32 %1830, 1
  br i1 %1833, label %1834, label %1844

1834:                                             ; preds = %1824
  %1835 = load ptr, ptr %1799, align 4
  %1836 = load ptr, ptr %1835, align 8
  %1837 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1836, i32 0, i32 3
  %1838 = load ptr, ptr %1837, align 4
  %1839 = shl i32 %1832, 2
  tail call void %1838(ptr noundef %1835, i32 noundef %1839, i32 noundef 1) #6
  %1840 = load i32, ptr %8, align 4
  %1841 = load i32, ptr %14, align 4
  %1842 = add i32 %1840, 1
  store i32 %1842, ptr %8, align 4
  %1843 = icmp eq i32 %1841, 1
  br i1 %1843, label %1847, label %1844

1844:                                             ; preds = %1834, %1824, %1821, %1809
  %1845 = phi i32 [ %1840, %1834 ], [ %1832, %1824 ], [ %1823, %1821 ], [ %1810, %1809 ]
  %1846 = add i32 %1845, 2
  br label %1864

1847:                                             ; preds = %1834
  %1848 = load ptr, ptr %1799, align 4
  %1849 = load ptr, ptr %1848, align 8
  %1850 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1849, i32 0, i32 3
  %1851 = load ptr, ptr %1850, align 4
  %1852 = shl i32 %1842, 2
  tail call void %1851(ptr noundef %1848, i32 noundef %1852, i32 noundef 112) #6
  %1853 = load i32, ptr %14, align 4
  %1854 = load i32, ptr %8, align 4
  %1855 = add i32 %1854, 1
  store i32 %1855, ptr %8, align 4
  %1856 = icmp eq i32 %1853, 1
  br i1 %1856, label %1857, label %1864

1857:                                             ; preds = %1847
  %1858 = load ptr, ptr %1799, align 4
  %1859 = load ptr, ptr %1858, align 8
  %1860 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1859, i32 0, i32 3
  %1861 = load ptr, ptr %1860, align 4
  %1862 = shl i32 %1855, 2
  tail call void %1861(ptr noundef %1858, i32 noundef %1862, i32 noundef 128) #6
  %1863 = load i32, ptr %8, align 4
  br label %1864

1864:                                             ; preds = %1857, %1847, %1844
  %1865 = phi i32 [ %1863, %1857 ], [ %1846, %1844 ], [ %1855, %1847 ]
  %1866 = add i32 %1865, 1
  br label %1948

1867:                                             ; preds = %1788
  br i1 %1794, label %1870, label %1868

1868:                                             ; preds = %1867
  %1869 = add i32 %1789, 2
  br label %1893

1870:                                             ; preds = %1867
  %1871 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1872 = load ptr, ptr %1871, align 4
  %1873 = load ptr, ptr %1872, align 8
  %1874 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1873, i32 0, i32 3
  %1875 = load ptr, ptr %1874, align 4
  %1876 = shl i32 %1790, 2
  tail call void %1875(ptr noundef %1872, i32 noundef %1876, i32 noundef 1) #6
  %1877 = load i32, ptr %14, align 4
  %1878 = load i32, ptr %8, align 4
  %1879 = add i32 %1878, 1
  store i32 %1879, ptr %8, align 4
  %1880 = icmp eq i32 %1877, 1
  br i1 %1880, label %1883, label %1881

1881:                                             ; preds = %1870
  %1882 = add i32 %1878, 5
  br label %1916

1883:                                             ; preds = %1870
  %1884 = load ptr, ptr %1871, align 4
  %1885 = load ptr, ptr %1884, align 8
  %1886 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1885, i32 0, i32 3
  %1887 = load ptr, ptr %1886, align 4
  %1888 = shl i32 %1879, 2
  tail call void %1887(ptr noundef %1884, i32 noundef %1888, i32 noundef 240) #6
  %1889 = load i32, ptr %14, align 4
  %1890 = load i32, ptr %8, align 4
  %1891 = add i32 %1890, 1
  store i32 %1891, ptr %8, align 4
  %1892 = icmp eq i32 %1889, 1
  br i1 %1892, label %1896, label %1893

1893:                                             ; preds = %1883, %1868
  %1894 = phi i32 [ %1869, %1868 ], [ %1890, %1883 ]
  %1895 = add i32 %1894, 4
  br label %1916

1896:                                             ; preds = %1883
  %1897 = load ptr, ptr %1871, align 4
  %1898 = load ptr, ptr %1897, align 8
  %1899 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1898, i32 0, i32 3
  %1900 = load ptr, ptr %1899, align 4
  %1901 = shl i32 %1891, 2
  tail call void %1900(ptr noundef %1897, i32 noundef %1901, i32 noundef 255) #6
  %1902 = load i32, ptr %14, align 4
  %1903 = load i32, ptr %8, align 4
  %1904 = add i32 %1903, 3
  store i32 %1904, ptr %8, align 4
  %1905 = icmp eq i32 %1902, 1
  br i1 %1905, label %1906, label %1916

1906:                                             ; preds = %1896
  %1907 = load ptr, ptr %1871, align 4
  %1908 = load ptr, ptr %1907, align 8
  %1909 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1908, i32 0, i32 3
  %1910 = load ptr, ptr %1909, align 4
  %1911 = shl i32 %1904, 2
  tail call void %1910(ptr noundef %1907, i32 noundef %1911, i32 noundef 1) #6
  %1912 = load i32, ptr %8, align 4
  %1913 = load i32, ptr %14, align 4
  %1914 = add i32 %1912, 1
  store i32 %1914, ptr %8, align 4
  %1915 = icmp eq i32 %1913, 1
  br i1 %1915, label %1919, label %1916

1916:                                             ; preds = %1906, %1896, %1893, %1881
  %1917 = phi i32 [ %1912, %1906 ], [ %1904, %1896 ], [ %1895, %1893 ], [ %1882, %1881 ]
  %1918 = add i32 %1917, 4
  br label %1948

1919:                                             ; preds = %1906
  %1920 = load ptr, ptr %1871, align 4
  %1921 = load ptr, ptr %1920, align 8
  %1922 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1921, i32 0, i32 3
  %1923 = load ptr, ptr %1922, align 4
  %1924 = shl i32 %1914, 2
  tail call void %1923(ptr noundef %1920, i32 noundef %1924, i32 noundef 240) #6
  %1925 = load i32, ptr %14, align 4
  %1926 = load i32, ptr %8, align 4
  %1927 = add i32 %1926, 1
  store i32 %1927, ptr %8, align 4
  %1928 = icmp eq i32 %1925, 1
  br i1 %1928, label %1931, label %1929

1929:                                             ; preds = %1919
  %1930 = add i32 %1926, 3
  br label %1948

1931:                                             ; preds = %1919
  %1932 = load ptr, ptr %1871, align 4
  %1933 = load ptr, ptr %1932, align 8
  %1934 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1933, i32 0, i32 3
  %1935 = load ptr, ptr %1934, align 4
  %1936 = shl i32 %1927, 2
  tail call void %1935(ptr noundef %1932, i32 noundef %1936, i32 noundef 255) #6
  %1937 = load i32, ptr %14, align 4
  %1938 = load i32, ptr %8, align 4
  %1939 = add i32 %1938, 2
  store i32 %1939, ptr %8, align 4
  %1940 = icmp eq i32 %1937, 1
  br i1 %1940, label %1941, label %1953

1941:                                             ; preds = %1931
  %1942 = load ptr, ptr %1871, align 4
  %1943 = load ptr, ptr %1942, align 8
  %1944 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1943, i32 0, i32 3
  %1945 = load ptr, ptr %1944, align 4
  %1946 = shl i32 %1939, 2
  tail call void %1945(ptr noundef %1942, i32 noundef %1946, i32 noundef 9) #6
  %1947 = load i32, ptr %8, align 4
  br label %1948

1948:                                             ; preds = %1941, %1929, %1916, %1864
  %1949 = phi i32 [ %1918, %1916 ], [ %1930, %1929 ], [ %1947, %1941 ], [ %1866, %1864 ]
  %1950 = load i32, ptr %14, align 4
  %1951 = add i32 %1949, 3
  store i32 %1951, ptr %8, align 4
  %1952 = icmp eq i32 %1950, 1
  br i1 %1952, label %1956, label %1953

1953:                                             ; preds = %1948, %1931
  %1954 = phi i32 [ %1949, %1948 ], [ %1939, %1931 ]
  %1955 = add i32 %1954, 6
  br label %1989

1956:                                             ; preds = %1948
  %1957 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1958 = load ptr, ptr %1957, align 4
  %1959 = load ptr, ptr %1958, align 8
  %1960 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1959, i32 0, i32 3
  %1961 = load ptr, ptr %1960, align 4
  %1962 = shl i32 %1951, 2
  tail call void %1961(ptr noundef %1958, i32 noundef %1962, i32 noundef 1) #6
  %1963 = load i32, ptr %14, align 4
  %1964 = load i32, ptr %8, align 4
  %1965 = add i32 %1964, 1
  store i32 %1965, ptr %8, align 4
  %1966 = icmp eq i32 %1963, 1
  br i1 %1966, label %1969, label %1967

1967:                                             ; preds = %1956
  %1968 = add i32 %1964, 3
  br label %1989

1969:                                             ; preds = %1956
  %1970 = load ptr, ptr %1957, align 4
  %1971 = load ptr, ptr %1970, align 8
  %1972 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1971, i32 0, i32 3
  %1973 = load ptr, ptr %1972, align 4
  %1974 = shl i32 %1965, 2
  tail call void %1973(ptr noundef %1970, i32 noundef %1974, i32 noundef 207) #6
  %1975 = load i32, ptr %14, align 4
  %1976 = load i32, ptr %8, align 4
  %1977 = add i32 %1976, 2
  store i32 %1977, ptr %8, align 4
  %1978 = icmp eq i32 %1975, 1
  br i1 %1978, label %1979, label %1989

1979:                                             ; preds = %1969
  %1980 = load ptr, ptr %1957, align 4
  %1981 = load ptr, ptr %1980, align 8
  %1982 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1981, i32 0, i32 3
  %1983 = load ptr, ptr %1982, align 4
  %1984 = shl i32 %1977, 2
  tail call void %1983(ptr noundef %1980, i32 noundef %1984, i32 noundef 1) #6
  %1985 = load i32, ptr %8, align 4
  %1986 = load i32, ptr %14, align 4
  %1987 = add i32 %1985, 4
  store i32 %1987, ptr %8, align 4
  %1988 = icmp eq i32 %1986, 1
  br i1 %1988, label %1992, label %1989

1989:                                             ; preds = %1979, %1969, %1967, %1953
  %1990 = phi i32 [ %1985, %1979 ], [ %1955, %1953 ], [ %1977, %1969 ], [ %1968, %1967 ]
  %1991 = add i32 %1990, 6
  br label %2012

1992:                                             ; preds = %1979
  %1993 = load ptr, ptr %1957, align 4
  %1994 = load ptr, ptr %1993, align 8
  %1995 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1994, i32 0, i32 3
  %1996 = load ptr, ptr %1995, align 4
  %1997 = shl i32 %1987, 2
  tail call void %1996(ptr noundef %1993, i32 noundef %1997, i32 noundef 207) #6
  %1998 = load i32, ptr %14, align 4
  %1999 = load i32, ptr %8, align 4
  %2000 = add i32 %1999, 2
  store i32 %2000, ptr %8, align 4
  %2001 = icmp eq i32 %1998, 1
  br i1 %2001, label %2002, label %2012

2002:                                             ; preds = %1992
  %2003 = load ptr, ptr %1957, align 4
  %2004 = load ptr, ptr %2003, align 8
  %2005 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2004, i32 0, i32 3
  %2006 = load ptr, ptr %2005, align 4
  %2007 = shl i32 %2000, 2
  tail call void %2006(ptr noundef %2003, i32 noundef %2007, i32 noundef 2) #6
  %2008 = load i32, ptr %8, align 4
  %2009 = load i32, ptr %14, align 4
  %2010 = add i32 %2008, 2
  store i32 %2010, ptr %8, align 4
  %2011 = icmp eq i32 %2009, 1
  br i1 %2011, label %2015, label %2012

2012:                                             ; preds = %2002, %1992, %1989
  %2013 = phi i32 [ %2008, %2002 ], [ %2000, %1992 ], [ %1991, %1989 ]
  %2014 = add i32 %2013, 4
  br label %2035

2015:                                             ; preds = %2002
  %2016 = load ptr, ptr %1957, align 4
  %2017 = load ptr, ptr %2016, align 8
  %2018 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2017, i32 0, i32 3
  %2019 = load ptr, ptr %2018, align 4
  %2020 = shl i32 %2010, 2
  tail call void %2019(ptr noundef %2016, i32 noundef %2020, i32 noundef 1) #6
  %2021 = load i32, ptr %14, align 4
  %2022 = load i32, ptr %8, align 4
  %2023 = add i32 %2022, 2
  store i32 %2023, ptr %8, align 4
  %2024 = icmp eq i32 %2021, 1
  br i1 %2024, label %2025, label %2035

2025:                                             ; preds = %2015
  %2026 = load ptr, ptr %1957, align 4
  %2027 = load ptr, ptr %2026, align 8
  %2028 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2027, i32 0, i32 3
  %2029 = load ptr, ptr %2028, align 4
  %2030 = shl i32 %2023, 2
  tail call void %2029(ptr noundef %2026, i32 noundef %2030, i32 noundef 1) #6
  %2031 = load i32, ptr %8, align 4
  %2032 = load i32, ptr %14, align 4
  %2033 = add i32 %2031, 2
  store i32 %2033, ptr %8, align 4
  %2034 = icmp eq i32 %2032, 1
  br i1 %2034, label %2038, label %2035

2035:                                             ; preds = %2025, %2015, %2012
  %2036 = phi i32 [ %2031, %2025 ], [ %2023, %2015 ], [ %2014, %2012 ]
  %2037 = add i32 %2036, 4
  br label %2067

2038:                                             ; preds = %2025
  %2039 = load ptr, ptr %1957, align 4
  %2040 = load ptr, ptr %2039, align 8
  %2041 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2040, i32 0, i32 3
  %2042 = load ptr, ptr %2041, align 4
  %2043 = shl i32 %2033, 2
  tail call void %2042(ptr noundef %2039, i32 noundef %2043, i32 noundef 207) #6
  %2044 = load i32, ptr %14, align 4
  %2045 = load i32, ptr %8, align 4
  %2046 = add i32 %2045, 1
  store i32 %2046, ptr %8, align 4
  %2047 = icmp eq i32 %2044, 1
  br i1 %2047, label %2050, label %2048

2048:                                             ; preds = %2038
  %2049 = add i32 %2045, 2
  br label %2067

2050:                                             ; preds = %2038
  %2051 = load ptr, ptr %1957, align 4
  %2052 = load ptr, ptr %2051, align 8
  %2053 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2052, i32 0, i32 3
  %2054 = load ptr, ptr %2053, align 4
  %2055 = shl i32 %2046, 2
  tail call void %2054(ptr noundef %2051, i32 noundef %2055, i32 noundef 207) #6
  %2056 = load i32, ptr %14, align 4
  %2057 = load i32, ptr %8, align 4
  %2058 = add i32 %2057, 1
  store i32 %2058, ptr %8, align 4
  %2059 = icmp eq i32 %2056, 1
  br i1 %2059, label %2060, label %2067

2060:                                             ; preds = %2050
  %2061 = load ptr, ptr %1957, align 4
  %2062 = load ptr, ptr %2061, align 8
  %2063 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2062, i32 0, i32 3
  %2064 = load ptr, ptr %2063, align 4
  %2065 = shl i32 %2058, 2
  tail call void %2064(ptr noundef %2061, i32 noundef %2065, i32 noundef 1) #6
  %2066 = load i32, ptr %8, align 4
  br label %2067

2067:                                             ; preds = %2060, %2050, %2048, %2035
  %2068 = phi i32 [ %2066, %2060 ], [ %2049, %2048 ], [ %2058, %2050 ], [ %2037, %2035 ]
  %2069 = add i32 %2068, 1
  %2070 = sub i32 %2069, %330
  store i32 %330, ptr %8, align 4
  %2071 = load i32, ptr %357, align 4
  %2072 = add i32 %2071, -161
  %2073 = icmp ult i32 %2072, 9
  %2074 = icmp eq i32 %2071, 175
  %2075 = or i1 %2074, %2073
  br i1 %2075, label %2076, label %2113

2076:                                             ; preds = %2067
  store i32 4608, ptr %7, align 4
  store i32 %330, ptr %10, align 4
  store i32 %2069, ptr %8, align 4
  %2077 = icmp ugt i32 %2070, 15
  br i1 %2077, label %2078, label %2095

2078:                                             ; preds = %2076
  %2079 = or i32 %2070, 2097152
  %2080 = load ptr, ptr %12, align 4
  %2081 = load i32, ptr %14, align 4
  %2082 = icmp eq i32 %2081, 0
  br i1 %2082, label %2083, label %2150

2083:                                             ; preds = %2078
  %2084 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2085 = load i32, ptr %2084, align 4
  %2086 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2087 = load i32, ptr %2086, align 4
  %2088 = icmp eq i32 %2085, %2087
  br i1 %2088, label %2089, label %2090, !prof !8

2089:                                             ; preds = %2083
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2090:                                             ; preds = %2083
  %2091 = add i32 %2085, 1
  store i32 %2091, ptr %2084, align 4
  %2092 = getelementptr i32, ptr %2080, i32 %2085
  store i32 %2079, ptr %2092, align 4
  %2093 = load i32, ptr %7, align 4
  %2094 = or i32 %2093, 1048576
  br label %2095

2095:                                             ; preds = %2090, %2076
  %2096 = phi i32 [ %2094, %2090 ], [ 1053184, %2076 ]
  %2097 = phi i32 [ 0, %2090 ], [ %2070, %2076 ]
  %2098 = load i32, ptr %14, align 4
  %2099 = shl nuw nsw i32 %2097, 16
  %2100 = or i32 %2099, %2096
  %2101 = load ptr, ptr %12, align 4
  %2102 = icmp eq i32 %2098, 0
  br i1 %2102, label %2103, label %2150

2103:                                             ; preds = %2095
  %2104 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2105 = load i32, ptr %2104, align 4
  %2106 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2107 = load i32, ptr %2106, align 4
  %2108 = icmp eq i32 %2105, %2107
  br i1 %2108, label %2109, label %2110, !prof !8

2109:                                             ; preds = %2103
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2110:                                             ; preds = %2103
  %2111 = add i32 %2105, 1
  store i32 %2111, ptr %2104, align 4
  %2112 = getelementptr i32, ptr %2101, i32 %2105
  store i32 %2100, ptr %2112, align 4
  br label %2154

2113:                                             ; preds = %2067
  store i32 5376, ptr %7, align 4
  store i32 %330, ptr %10, align 4
  store i32 %2069, ptr %8, align 4
  %2114 = icmp ugt i32 %2070, 15
  br i1 %2114, label %2115, label %2132

2115:                                             ; preds = %2113
  %2116 = or i32 %2070, 2097152
  %2117 = load ptr, ptr %12, align 4
  %2118 = load i32, ptr %14, align 4
  %2119 = icmp eq i32 %2118, 0
  br i1 %2119, label %2120, label %2150

2120:                                             ; preds = %2115
  %2121 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2122 = load i32, ptr %2121, align 4
  %2123 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2124 = load i32, ptr %2123, align 4
  %2125 = icmp eq i32 %2122, %2124
  br i1 %2125, label %2126, label %2127, !prof !8

2126:                                             ; preds = %2120
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2127:                                             ; preds = %2120
  %2128 = add i32 %2122, 1
  store i32 %2128, ptr %2121, align 4
  %2129 = getelementptr i32, ptr %2117, i32 %2122
  store i32 %2116, ptr %2129, align 4
  %2130 = load i32, ptr %7, align 4
  %2131 = or i32 %2130, 1048576
  br label %2132

2132:                                             ; preds = %2127, %2113
  %2133 = phi i32 [ %2131, %2127 ], [ 1053952, %2113 ]
  %2134 = phi i32 [ 0, %2127 ], [ %2070, %2113 ]
  %2135 = load i32, ptr %14, align 4
  %2136 = shl nuw nsw i32 %2134, 16
  %2137 = or i32 %2136, %2133
  %2138 = load ptr, ptr %12, align 4
  %2139 = icmp eq i32 %2135, 0
  br i1 %2139, label %2140, label %2150

2140:                                             ; preds = %2132
  %2141 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2142 = load i32, ptr %2141, align 4
  %2143 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2144 = load i32, ptr %2143, align 4
  %2145 = icmp eq i32 %2142, %2144
  br i1 %2145, label %2146, label %2147, !prof !8

2146:                                             ; preds = %2140
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2147:                                             ; preds = %2140
  %2148 = add i32 %2142, 1
  store i32 %2148, ptr %2141, align 4
  %2149 = getelementptr i32, ptr %2138, i32 %2142
  store i32 %2137, ptr %2149, align 4
  br label %2154

2150:                                             ; preds = %2132, %2115, %2095, %2078
  %2151 = phi i32 [ %2135, %2132 ], [ %2118, %2115 ], [ %2098, %2095 ], [ %2081, %2078 ]
  store i32 770, ptr %7, align 4
  %2152 = load i32, ptr %8, align 4
  store i32 %2152, ptr %10, align 4
  %2153 = add i32 %2152, 2
  store i32 %2153, ptr %8, align 4
  br label %2171

2154:                                             ; preds = %2147, %2110
  %2155 = load i32, ptr %14, align 4
  %2156 = load ptr, ptr %12, align 4
  store i32 770, ptr %7, align 4
  %2157 = load i32, ptr %8, align 4
  store i32 %2157, ptr %10, align 4
  %2158 = add i32 %2157, 2
  store i32 %2158, ptr %8, align 4
  %2159 = icmp eq i32 %2155, 0
  br i1 %2159, label %2160, label %2171

2160:                                             ; preds = %2154
  %2161 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2162 = load i32, ptr %2161, align 4
  %2163 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2164 = load i32, ptr %2163, align 4
  %2165 = icmp eq i32 %2162, %2164
  br i1 %2165, label %2166, label %2167, !prof !8

2166:                                             ; preds = %2160
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2167:                                             ; preds = %2160
  %2168 = add i32 %2162, 1
  store i32 %2168, ptr %2161, align 4
  %2169 = getelementptr i32, ptr %2156, i32 %2162
  store i32 1180418, ptr %2169, align 4
  %2170 = load i32, ptr %14, align 4
  br label %2171

2171:                                             ; preds = %2167, %2154, %2150
  %2172 = phi i32 [ %2155, %2154 ], [ %2170, %2167 ], [ %2151, %2150 ]
  %2173 = icmp eq i32 %2172, 1
  br i1 %2173, label %2174, label %2185

2174:                                             ; preds = %2171
  %2175 = load i32, ptr %7, align 4
  %2176 = sub i32 770, %2175
  %2177 = load i32, ptr %10, align 4
  %2178 = add i32 %2176, %2177
  %2179 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2180 = load ptr, ptr %2179, align 4
  %2181 = load ptr, ptr %2180, align 8
  %2182 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2181, i32 0, i32 3
  %2183 = load ptr, ptr %2182, align 4
  %2184 = shl i32 %2178, 2
  tail call void %2183(ptr noundef %2180, i32 noundef %2184, i32 noundef 65036) #6
  br label %2185

2185:                                             ; preds = %2174, %2171
  %2186 = load i32, ptr %73, align 4
  %2187 = icmp ult i32 %2186, 160
  br i1 %2187, label %2188, label %2219

2188:                                             ; preds = %2185
  store i32 1026, ptr %7, align 4
  %2189 = load i32, ptr %8, align 4
  store i32 %2189, ptr %10, align 4
  %2190 = add i32 %2189, 4
  store i32 %2190, ptr %8, align 4
  %2191 = load ptr, ptr %12, align 4
  %2192 = load i32, ptr %14, align 4
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2194, label %2205

2194:                                             ; preds = %2188
  %2195 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2196 = load i32, ptr %2195, align 4
  %2197 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2198 = load i32, ptr %2197, align 4
  %2199 = icmp eq i32 %2196, %2198
  br i1 %2199, label %2200, label %2201, !prof !8

2200:                                             ; preds = %2194
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2201:                                             ; preds = %2194
  %2202 = add i32 %2196, 1
  store i32 %2202, ptr %2195, align 4
  %2203 = getelementptr i32, ptr %2191, i32 %2196
  store i32 1311746, ptr %2203, align 4
  %2204 = load i32, ptr %14, align 4
  br label %2205

2205:                                             ; preds = %2201, %2188
  %2206 = phi i32 [ %2192, %2188 ], [ %2204, %2201 ]
  %2207 = icmp eq i32 %2206, 1
  br i1 %2207, label %2208, label %2282

2208:                                             ; preds = %2205
  %2209 = load i32, ptr %7, align 4
  %2210 = sub i32 1029, %2209
  %2211 = load i32, ptr %10, align 4
  %2212 = add i32 %2210, %2211
  %2213 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2214 = load ptr, ptr %2213, align 4
  %2215 = load ptr, ptr %2214, align 8
  %2216 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2215, i32 0, i32 3
  %2217 = load ptr, ptr %2216, align 4
  %2218 = shl i32 %2212, 2
  tail call void %2217(ptr noundef %2214, i32 noundef %2218, i32 noundef 4096) #6
  br label %2282

2219:                                             ; preds = %2185
  %2220 = icmp ne i32 %2186, 160
  %2221 = icmp ult i32 %2186, 170
  %2222 = and i1 %2220, %2221
  %2223 = icmp eq i32 %2186, 175
  %2224 = or i1 %2223, %2222
  store i32 1026, ptr %7, align 4
  %2225 = load i32, ptr %8, align 4
  store i32 %2225, ptr %10, align 4
  %2226 = add i32 %2225, 5
  store i32 %2226, ptr %8, align 4
  %2227 = load ptr, ptr %12, align 4
  %2228 = load i32, ptr %14, align 4
  %2229 = icmp eq i32 %2228, 0
  br i1 %2224, label %2256, label %2230

2230:                                             ; preds = %2219
  br i1 %2229, label %2231, label %2242

2231:                                             ; preds = %2230
  %2232 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2233 = load i32, ptr %2232, align 4
  %2234 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2235 = load i32, ptr %2234, align 4
  %2236 = icmp eq i32 %2233, %2235
  br i1 %2236, label %2237, label %2238, !prof !8

2237:                                             ; preds = %2231
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2238:                                             ; preds = %2231
  %2239 = add i32 %2233, 1
  store i32 %2239, ptr %2232, align 4
  %2240 = getelementptr i32, ptr %2227, i32 %2233
  store i32 1377282, ptr %2240, align 4
  %2241 = load i32, ptr %14, align 4
  br label %2242

2242:                                             ; preds = %2238, %2230
  %2243 = phi i32 [ %2228, %2230 ], [ %2241, %2238 ]
  %2244 = icmp eq i32 %2243, 1
  br i1 %2244, label %2245, label %2282

2245:                                             ; preds = %2242
  %2246 = load i32, ptr %7, align 4
  %2247 = sub i32 1030, %2246
  %2248 = load i32, ptr %10, align 4
  %2249 = add i32 %2247, %2248
  %2250 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2251 = load ptr, ptr %2250, align 4
  %2252 = load ptr, ptr %2251, align 8
  %2253 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2252, i32 0, i32 3
  %2254 = load ptr, ptr %2253, align 4
  %2255 = shl i32 %2249, 2
  tail call void %2254(ptr noundef %2251, i32 noundef %2255, i32 noundef 4096) #6
  br label %2282

2256:                                             ; preds = %2219
  br i1 %2229, label %2257, label %2268

2257:                                             ; preds = %2256
  %2258 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2259 = load i32, ptr %2258, align 4
  %2260 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2261 = load i32, ptr %2260, align 4
  %2262 = icmp eq i32 %2259, %2261
  br i1 %2262, label %2263, label %2264, !prof !8

2263:                                             ; preds = %2257
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2264:                                             ; preds = %2257
  %2265 = add i32 %2259, 1
  store i32 %2265, ptr %2258, align 4
  %2266 = getelementptr i32, ptr %2227, i32 %2259
  store i32 1377282, ptr %2266, align 4
  %2267 = load i32, ptr %14, align 4
  br label %2268

2268:                                             ; preds = %2264, %2256
  %2269 = phi i32 [ %2228, %2256 ], [ %2267, %2264 ]
  %2270 = icmp eq i32 %2269, 1
  br i1 %2270, label %2271, label %2282

2271:                                             ; preds = %2268
  %2272 = load i32, ptr %7, align 4
  %2273 = sub i32 1030, %2272
  %2274 = load i32, ptr %10, align 4
  %2275 = add i32 %2273, %2274
  %2276 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2277 = load ptr, ptr %2276, align 4
  %2278 = load ptr, ptr %2277, align 8
  %2279 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2278, i32 0, i32 3
  %2280 = load ptr, ptr %2279, align 4
  %2281 = shl i32 %2275, 2
  tail call void %2280(ptr noundef %2277, i32 noundef %2281, i32 noundef 16384) #6
  br label %2282

2282:                                             ; preds = %2271, %2268, %2245, %2242, %2208, %2205
  store i32 1280, ptr %7, align 4
  %2283 = load i32, ptr %8, align 4
  store i32 %2283, ptr %10, align 4
  %2284 = add i32 %2283, 8
  store i32 %2284, ptr %8, align 4
  %2285 = load ptr, ptr %12, align 4
  %2286 = load i32, ptr %14, align 4
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2290, label %2288

2288:                                             ; preds = %2282
  store i32 1289, ptr %7, align 4
  store i32 %2284, ptr %10, align 4
  %2289 = add i32 %2283, 11
  store i32 %2289, ptr %8, align 4
  br label %2315

2290:                                             ; preds = %2282
  %2291 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2292 = load i32, ptr %2291, align 4
  %2293 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2294 = load i32, ptr %2293, align 4
  %2295 = icmp eq i32 %2292, %2294
  br i1 %2295, label %2296, label %2297, !prof !8

2296:                                             ; preds = %2290
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2297:                                             ; preds = %2290
  %2298 = add i32 %2292, 1
  store i32 %2298, ptr %2291, align 4
  %2299 = getelementptr i32, ptr %2285, i32 %2292
  store i32 1574144, ptr %2299, align 4
  %2300 = load i32, ptr %14, align 4
  %2301 = load i32, ptr %8, align 4
  %2302 = load ptr, ptr %12, align 4
  store i32 1289, ptr %7, align 4
  store i32 %2301, ptr %10, align 4
  %2303 = add i32 %2301, 3
  store i32 %2303, ptr %8, align 4
  %2304 = icmp eq i32 %2300, 0
  br i1 %2304, label %2305, label %2315

2305:                                             ; preds = %2297
  %2306 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2307 = load i32, ptr %2306, align 4
  %2308 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2309 = load i32, ptr %2308, align 4
  %2310 = icmp eq i32 %2307, %2309
  br i1 %2310, label %2311, label %2312, !prof !8

2311:                                             ; preds = %2305
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2312:                                             ; preds = %2305
  %2313 = add i32 %2307, 1
  store i32 %2313, ptr %2306, align 4
  %2314 = getelementptr i32, ptr %2302, i32 %2307
  store i32 1246473, ptr %2314, align 4
  br label %2315

2315:                                             ; preds = %2312, %2297, %2288
  %2316 = load i32, ptr %73, align 4
  %2317 = icmp eq i32 %2316, 80
  %2318 = load i32, ptr %14, align 4
  %2319 = icmp eq i32 %2318, 1
  br i1 %2317, label %2320, label %2332

2320:                                             ; preds = %2315
  br i1 %2319, label %2321, label %2346

2321:                                             ; preds = %2320
  %2322 = load i32, ptr %7, align 4
  %2323 = sub i32 1291, %2322
  %2324 = load i32, ptr %10, align 4
  %2325 = add i32 %2323, %2324
  %2326 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2327 = load ptr, ptr %2326, align 4
  %2328 = load ptr, ptr %2327, align 8
  %2329 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2328, i32 0, i32 3
  %2330 = load ptr, ptr %2329, align 4
  %2331 = shl i32 %2325, 2
  tail call void %2330(ptr noundef %2327, i32 noundef %2331, i32 noundef 130439) #6
  br label %2344

2332:                                             ; preds = %2315
  br i1 %2319, label %2333, label %2346

2333:                                             ; preds = %2332
  %2334 = load i32, ptr %7, align 4
  %2335 = sub i32 1291, %2334
  %2336 = load i32, ptr %10, align 4
  %2337 = add i32 %2335, %2336
  %2338 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2339 = load ptr, ptr %2338, align 4
  %2340 = load ptr, ptr %2339, align 8
  %2341 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2340, i32 0, i32 3
  %2342 = load ptr, ptr %2341, align 4
  %2343 = shl i32 %2337, 2
  tail call void %2342(ptr noundef %2339, i32 noundef %2343, i32 noundef 391) #6
  br label %2344

2344:                                             ; preds = %2333, %2321
  %2345 = load i32, ptr %14, align 4
  br label %2346

2346:                                             ; preds = %2344, %2332, %2320
  %2347 = phi i32 [ %2345, %2344 ], [ %2318, %2332 ], [ %2318, %2320 ]
  store i32 1360, ptr %7, align 4
  %2348 = load i32, ptr %8, align 4
  store i32 %2348, ptr %10, align 4
  %2349 = add i32 %2348, 5
  store i32 %2349, ptr %8, align 4
  %2350 = load ptr, ptr %12, align 4
  %2351 = icmp eq i32 %2347, 0
  br i1 %2351, label %2352, label %2363

2352:                                             ; preds = %2346
  %2353 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2354 = load i32, ptr %2353, align 4
  %2355 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2356 = load i32, ptr %2355, align 4
  %2357 = icmp eq i32 %2354, %2356
  br i1 %2357, label %2358, label %2359, !prof !8

2358:                                             ; preds = %2352
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2359:                                             ; preds = %2352
  %2360 = add i32 %2354, 1
  store i32 %2360, ptr %2353, align 4
  %2361 = getelementptr i32, ptr %2350, i32 %2354
  store i32 1377616, ptr %2361, align 4
  %2362 = load i32, ptr %14, align 4
  br label %2363

2363:                                             ; preds = %2359, %2346
  %2364 = phi i32 [ %2347, %2346 ], [ %2362, %2359 ]
  %2365 = icmp eq i32 %2364, 1
  br i1 %2365, label %2366, label %2378

2366:                                             ; preds = %2363
  %2367 = load i32, ptr %7, align 4
  %2368 = sub i32 1364, %2367
  %2369 = load i32, ptr %10, align 4
  %2370 = add i32 %2368, %2369
  %2371 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2372 = load ptr, ptr %2371, align 4
  %2373 = load ptr, ptr %2372, align 8
  %2374 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2373, i32 0, i32 3
  %2375 = load ptr, ptr %2374, align 4
  %2376 = shl i32 %2370, 2
  tail call void %2375(ptr noundef %2372, i32 noundef %2376, i32 noundef 4120) #6
  %2377 = load i32, ptr %14, align 4
  br label %2378

2378:                                             ; preds = %2366, %2363
  %2379 = phi i32 [ %2364, %2363 ], [ %2377, %2366 ]
  store i32 1541, ptr %7, align 4
  %2380 = load i32, ptr %8, align 4
  store i32 %2380, ptr %10, align 4
  %2381 = add i32 %2380, 1
  store i32 %2381, ptr %8, align 4
  %2382 = load ptr, ptr %12, align 4
  %2383 = icmp eq i32 %2379, 0
  br i1 %2383, label %2384, label %2395

2384:                                             ; preds = %2378
  %2385 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2386 = load i32, ptr %2385, align 4
  %2387 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2388 = load i32, ptr %2387, align 4
  %2389 = icmp eq i32 %2386, %2388
  br i1 %2389, label %2390, label %2391, !prof !8

2390:                                             ; preds = %2384
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2391:                                             ; preds = %2384
  %2392 = add i32 %2386, 1
  store i32 %2392, ptr %2385, align 4
  %2393 = getelementptr i32, ptr %2382, i32 %2386
  store i32 1115653, ptr %2393, align 4
  %2394 = load i32, ptr %14, align 4
  br label %2395

2395:                                             ; preds = %2391, %2378
  %2396 = phi i32 [ %2379, %2378 ], [ %2394, %2391 ]
  %2397 = icmp eq i32 %2396, 1
  br i1 %2397, label %2398, label %2409

2398:                                             ; preds = %2395
  %2399 = load i32, ptr %7, align 4
  %2400 = sub i32 1541, %2399
  %2401 = load i32, ptr %10, align 4
  %2402 = add i32 %2400, %2401
  %2403 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2404 = load ptr, ptr %2403, align 4
  %2405 = load ptr, ptr %2404, align 8
  %2406 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2405, i32 0, i32 3
  %2407 = load ptr, ptr %2406, align 4
  %2408 = shl i32 %2402, 2
  tail call void %2407(ptr noundef %2404, i32 noundef %2408, i32 noundef 255) #6
  br label %2409

2409:                                             ; preds = %2398, %2395
  %2410 = load i32, ptr %73, align 4
  %2411 = icmp eq i32 %2410, 80
  br i1 %2411, label %2412, label %2432

2412:                                             ; preds = %2409
  store i32 1543, ptr %7, align 4
  %2413 = load i32, ptr %8, align 4
  store i32 %2413, ptr %10, align 4
  %2414 = add i32 %2413, 14
  store i32 %2414, ptr %8, align 4
  %2415 = load ptr, ptr %12, align 4
  %2416 = load i32, ptr %14, align 4
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2418, label %2429

2418:                                             ; preds = %2412
  %2419 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2420 = load i32, ptr %2419, align 4
  %2421 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2422 = load i32, ptr %2421, align 4
  %2423 = icmp eq i32 %2420, %2422
  br i1 %2423, label %2424, label %2425, !prof !8

2424:                                             ; preds = %2418
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2425:                                             ; preds = %2418
  %2426 = add i32 %2420, 1
  store i32 %2426, ptr %2419, align 4
  %2427 = getelementptr i32, ptr %2415, i32 %2420
  store i32 1967623, ptr %2427, align 4
  %2428 = load i32, ptr %14, align 4
  br label %2429

2429:                                             ; preds = %2425, %2412
  %2430 = phi i32 [ %2416, %2412 ], [ %2428, %2425 ]
  %2431 = icmp eq i32 %2430, 1
  br i1 %2431, label %2486, label %2498

2432:                                             ; preds = %2409
  %2433 = icmp ult i32 %2410, 160
  store i32 1543, ptr %7, align 4
  %2434 = load i32, ptr %8, align 4
  store i32 %2434, ptr %10, align 4
  br i1 %2433, label %2435, label %2454

2435:                                             ; preds = %2432
  %2436 = add i32 %2434, 15
  store i32 %2436, ptr %8, align 4
  %2437 = load ptr, ptr %12, align 4
  %2438 = load i32, ptr %14, align 4
  %2439 = icmp eq i32 %2438, 0
  br i1 %2439, label %2440, label %2451

2440:                                             ; preds = %2435
  %2441 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2442 = load i32, ptr %2441, align 4
  %2443 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2444 = load i32, ptr %2443, align 4
  %2445 = icmp eq i32 %2442, %2444
  br i1 %2445, label %2446, label %2447, !prof !8

2446:                                             ; preds = %2440
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2447:                                             ; preds = %2440
  %2448 = add i32 %2442, 1
  store i32 %2448, ptr %2441, align 4
  %2449 = getelementptr i32, ptr %2437, i32 %2442
  store i32 2033159, ptr %2449, align 4
  %2450 = load i32, ptr %14, align 4
  br label %2451

2451:                                             ; preds = %2447, %2435
  %2452 = phi i32 [ %2438, %2435 ], [ %2450, %2447 ]
  %2453 = icmp eq i32 %2452, 1
  br i1 %2453, label %2486, label %2498

2454:                                             ; preds = %2432
  %2455 = add i32 %2434, 19
  store i32 %2455, ptr %8, align 4
  %2456 = load ptr, ptr %12, align 4
  %2457 = load i32, ptr %14, align 4
  %2458 = icmp eq i32 %2457, 0
  br i1 %2458, label %2459, label %2483

2459:                                             ; preds = %2454
  %2460 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2461 = load i32, ptr %2460, align 4
  %2462 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2463 = load i32, ptr %2462, align 4
  %2464 = icmp eq i32 %2461, %2463
  br i1 %2464, label %2465, label %2466, !prof !8

2465:                                             ; preds = %2459
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2466:                                             ; preds = %2459
  %2467 = add i32 %2461, 1
  store i32 %2467, ptr %2460, align 4
  %2468 = getelementptr i32, ptr %2456, i32 %2461
  store i32 2097171, ptr %2468, align 4
  %2469 = load i32, ptr %7, align 4
  %2470 = load i32, ptr %14, align 4
  %2471 = or i32 %2469, 1048576
  %2472 = load ptr, ptr %12, align 4
  %2473 = icmp eq i32 %2470, 0
  br i1 %2473, label %2474, label %2483

2474:                                             ; preds = %2466
  %2475 = load i32, ptr %2460, align 4
  %2476 = load i32, ptr %2462, align 4
  %2477 = icmp eq i32 %2475, %2476
  br i1 %2477, label %2478, label %2479, !prof !8

2478:                                             ; preds = %2474
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2479:                                             ; preds = %2474
  %2480 = add i32 %2475, 1
  store i32 %2480, ptr %2460, align 4
  %2481 = getelementptr i32, ptr %2472, i32 %2475
  store i32 %2471, ptr %2481, align 4
  %2482 = load i32, ptr %14, align 4
  br label %2483

2483:                                             ; preds = %2479, %2466, %2454
  %2484 = phi i32 [ %2470, %2466 ], [ %2482, %2479 ], [ %2457, %2454 ]
  %2485 = icmp eq i32 %2484, 1
  br i1 %2485, label %2486, label %2498

2486:                                             ; preds = %2483, %2451, %2429
  %2487 = phi i32 [ 1556, %2429 ], [ 1557, %2451 ], [ 1561, %2483 ]
  %2488 = load i32, ptr %7, align 4
  %2489 = sub i32 %2487, %2488
  %2490 = load i32, ptr %10, align 4
  %2491 = add i32 %2489, %2490
  %2492 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2493 = load ptr, ptr %2492, align 4
  %2494 = load ptr, ptr %2493, align 8
  %2495 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2494, i32 0, i32 3
  %2496 = load ptr, ptr %2495, align 4
  %2497 = shl i32 %2491, 2
  tail call void %2496(ptr noundef %2493, i32 noundef %2497, i32 noundef 4) #6
  br label %2498

2498:                                             ; preds = %2486, %2483, %2451, %2429
  store i32 1792, ptr %7, align 4
  %2499 = load i32, ptr %8, align 4
  store i32 %2499, ptr %10, align 4
  %2500 = add i32 %2499, 1
  store i32 %2500, ptr %8, align 4
  %2501 = load ptr, ptr %12, align 4
  %2502 = load i32, ptr %14, align 4
  %2503 = icmp eq i32 %2502, 0
  br i1 %2503, label %2504, label %2514

2504:                                             ; preds = %2498
  %2505 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2506 = load i32, ptr %2505, align 4
  %2507 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2508 = load i32, ptr %2507, align 4
  %2509 = icmp eq i32 %2506, %2508
  br i1 %2509, label %2510, label %2511, !prof !8

2510:                                             ; preds = %2504
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2511:                                             ; preds = %2504
  %2512 = add i32 %2506, 1
  store i32 %2512, ptr %2505, align 4
  %2513 = getelementptr i32, ptr %2501, i32 %2506
  store i32 1115904, ptr %2513, align 4
  br label %2514

2514:                                             ; preds = %2511, %2498
  %2515 = load i32, ptr %73, align 4
  switch i32 %2515, label %2572 [
    i32 80, label %2516
    i32 132, label %2530
    i32 134, label %2530
    i32 148, label %2530
    i32 146, label %2544
    i32 150, label %2544
    i32 152, label %2544
    i32 160, label %2544
    i32 170, label %2544
    i32 172, label %2544
    i32 163, label %2558
    i32 165, label %2558
    i32 168, label %2558
    i32 175, label %2558
  ]

2516:                                             ; preds = %2514
  %2517 = load i32, ptr %14, align 4
  %2518 = icmp eq i32 %2517, 1
  br i1 %2518, label %2519, label %2574

2519:                                             ; preds = %2516
  %2520 = load i32, ptr %7, align 4
  %2521 = sub i32 1792, %2520
  %2522 = load i32, ptr %10, align 4
  %2523 = add i32 %2521, %2522
  %2524 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2525 = load ptr, ptr %2524, align 4
  %2526 = load ptr, ptr %2525, align 8
  %2527 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2526, i32 0, i32 3
  %2528 = load ptr, ptr %2527, align 4
  %2529 = shl i32 %2523, 2
  tail call void %2528(ptr noundef %2525, i32 noundef %2529, i32 noundef 65631) #6
  br label %2572

2530:                                             ; preds = %2514, %2514, %2514
  %2531 = load i32, ptr %14, align 4
  %2532 = icmp eq i32 %2531, 1
  br i1 %2532, label %2533, label %2574

2533:                                             ; preds = %2530
  %2534 = load i32, ptr %7, align 4
  %2535 = sub i32 1792, %2534
  %2536 = load i32, ptr %10, align 4
  %2537 = add i32 %2535, %2536
  %2538 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2539 = load ptr, ptr %2538, align 4
  %2540 = load ptr, ptr %2539, align 8
  %2541 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2540, i32 0, i32 3
  %2542 = load ptr, ptr %2541, align 4
  %2543 = shl i32 %2537, 2
  tail call void %2542(ptr noundef %2539, i32 noundef %2543, i32 noundef 72155359) #6
  br label %2572

2544:                                             ; preds = %2514, %2514, %2514, %2514, %2514, %2514
  %2545 = load i32, ptr %14, align 4
  %2546 = icmp eq i32 %2545, 1
  br i1 %2546, label %2547, label %2574

2547:                                             ; preds = %2544
  %2548 = load i32, ptr %7, align 4
  %2549 = sub i32 1792, %2548
  %2550 = load i32, ptr %10, align 4
  %2551 = add i32 %2549, %2550
  %2552 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2553 = load ptr, ptr %2552, align 4
  %2554 = load ptr, ptr %2553, align 8
  %2555 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2554, i32 0, i32 3
  %2556 = load ptr, ptr %2555, align 4
  %2557 = shl i32 %2551, 2
  tail call void %2556(ptr noundef %2553, i32 noundef %2557, i32 noundef 69533919) #6
  br label %2572

2558:                                             ; preds = %2514, %2514, %2514, %2514
  %2559 = load i32, ptr %14, align 4
  %2560 = icmp eq i32 %2559, 1
  br i1 %2560, label %2561, label %2574

2561:                                             ; preds = %2558
  %2562 = load i32, ptr %7, align 4
  %2563 = sub i32 1792, %2562
  %2564 = load i32, ptr %10, align 4
  %2565 = add i32 %2563, %2564
  %2566 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2567 = load ptr, ptr %2566, align 4
  %2568 = load ptr, ptr %2567, align 8
  %2569 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2568, i32 0, i32 3
  %2570 = load ptr, ptr %2569, align 4
  %2571 = shl i32 %2565, 2
  tail call void %2570(ptr noundef %2567, i32 noundef %2571, i32 noundef 337969375) #6
  br label %2572

2572:                                             ; preds = %2561, %2547, %2533, %2519, %2514
  %2573 = load i32, ptr %14, align 4
  br label %2574

2574:                                             ; preds = %2572, %2558, %2544, %2530, %2516
  %2575 = phi i32 [ %2573, %2572 ], [ %2559, %2558 ], [ %2545, %2544 ], [ %2531, %2530 ], [ %2517, %2516 ]
  store i32 2304, ptr %7, align 4
  %2576 = load i32, ptr %8, align 4
  store i32 %2576, ptr %10, align 4
  %2577 = add i32 %2576, 1
  store i32 %2577, ptr %8, align 4
  %2578 = load ptr, ptr %12, align 4
  %2579 = icmp eq i32 %2575, 0
  br i1 %2579, label %2580, label %2590

2580:                                             ; preds = %2574
  %2581 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2582 = load i32, ptr %2581, align 4
  %2583 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2584 = load i32, ptr %2583, align 4
  %2585 = icmp eq i32 %2582, %2584
  br i1 %2585, label %2586, label %2587, !prof !8

2586:                                             ; preds = %2580
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2587:                                             ; preds = %2580
  %2588 = add i32 %2582, 1
  store i32 %2588, ptr %2581, align 4
  %2589 = getelementptr i32, ptr %2578, i32 %2582
  store i32 1116416, ptr %2589, align 4
  br label %2590

2590:                                             ; preds = %2587, %2574
  %2591 = load i32, ptr %73, align 4
  %2592 = icmp eq i32 %2591, 80
  store i32 2306, ptr %7, align 4
  %2593 = load i32, ptr %8, align 4
  store i32 %2593, ptr %10, align 4
  br i1 %2592, label %2594, label %2609

2594:                                             ; preds = %2590
  %2595 = add i32 %2593, 1
  store i32 %2595, ptr %8, align 4
  %2596 = load ptr, ptr %12, align 4
  %2597 = load i32, ptr %14, align 4
  %2598 = icmp eq i32 %2597, 0
  br i1 %2598, label %2599, label %2626

2599:                                             ; preds = %2594
  %2600 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2601 = load i32, ptr %2600, align 4
  %2602 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2603 = load i32, ptr %2602, align 4
  %2604 = icmp eq i32 %2601, %2603
  br i1 %2604, label %2605, label %2606, !prof !8

2605:                                             ; preds = %2599
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2606:                                             ; preds = %2599
  %2607 = add i32 %2601, 1
  store i32 %2607, ptr %2600, align 4
  %2608 = getelementptr i32, ptr %2596, i32 %2601
  store i32 1116418, ptr %2608, align 4
  br label %2624

2609:                                             ; preds = %2590
  %2610 = add i32 %2593, 2
  store i32 %2610, ptr %8, align 4
  %2611 = load ptr, ptr %12, align 4
  %2612 = load i32, ptr %14, align 4
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2614, label %2626

2614:                                             ; preds = %2609
  %2615 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2616 = load i32, ptr %2615, align 4
  %2617 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2618 = load i32, ptr %2617, align 4
  %2619 = icmp eq i32 %2616, %2618
  br i1 %2619, label %2620, label %2621, !prof !8

2620:                                             ; preds = %2614
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2621:                                             ; preds = %2614
  %2622 = add i32 %2616, 1
  store i32 %2622, ptr %2615, align 4
  %2623 = getelementptr i32, ptr %2611, i32 %2616
  store i32 1181954, ptr %2623, align 4
  br label %2624

2624:                                             ; preds = %2621, %2606
  %2625 = load i32, ptr %14, align 4
  br label %2626

2626:                                             ; preds = %2624, %2609, %2594
  %2627 = phi i32 [ %2625, %2624 ], [ %2612, %2609 ], [ %2597, %2594 ]
  %2628 = icmp eq i32 %2627, 1
  br i1 %2628, label %2629, label %2641

2629:                                             ; preds = %2626
  %2630 = load i32, ptr %7, align 4
  %2631 = sub i32 2306, %2630
  %2632 = load i32, ptr %10, align 4
  %2633 = add i32 %2631, %2632
  %2634 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2635 = load ptr, ptr %2634, align 4
  %2636 = load ptr, ptr %2635, align 8
  %2637 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2636, i32 0, i32 3
  %2638 = load ptr, ptr %2637, align 4
  %2639 = shl i32 %2633, 2
  tail call void %2638(ptr noundef %2635, i32 noundef %2639, i32 noundef 1536) #6
  %2640 = load i32, ptr %14, align 4
  br label %2641

2641:                                             ; preds = %2629, %2626
  %2642 = phi i32 [ %2627, %2626 ], [ %2640, %2629 ]
  store i32 2560, ptr %7, align 4
  %2643 = load i32, ptr %8, align 4
  store i32 %2643, ptr %10, align 4
  %2644 = add i32 %2643, 1
  store i32 %2644, ptr %8, align 4
  %2645 = load ptr, ptr %12, align 4
  %2646 = icmp eq i32 %2642, 0
  br i1 %2646, label %2647, label %2657

2647:                                             ; preds = %2641
  %2648 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2649 = load i32, ptr %2648, align 4
  %2650 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2651 = load i32, ptr %2650, align 4
  %2652 = icmp eq i32 %2649, %2651
  br i1 %2652, label %2653, label %2654, !prof !8

2653:                                             ; preds = %2647
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2654:                                             ; preds = %2647
  %2655 = add i32 %2649, 1
  store i32 %2655, ptr %2648, align 4
  %2656 = getelementptr i32, ptr %2645, i32 %2649
  store i32 1116672, ptr %2656, align 4
  br label %2657

2657:                                             ; preds = %2654, %2641
  %2658 = load i32, ptr %73, align 4
  %2659 = icmp eq i32 %2658, 80
  br i1 %2659, label %2660, label %2674

2660:                                             ; preds = %2657
  %2661 = load i32, ptr %14, align 4
  %2662 = icmp eq i32 %2661, 1
  br i1 %2662, label %2663, label %2676

2663:                                             ; preds = %2660
  %2664 = load i32, ptr %7, align 4
  %2665 = sub i32 2560, %2664
  %2666 = load i32, ptr %10, align 4
  %2667 = add i32 %2665, %2666
  %2668 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2669 = load ptr, ptr %2668, align 4
  %2670 = load ptr, ptr %2669, align 8
  %2671 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2670, i32 0, i32 3
  %2672 = load ptr, ptr %2671, align 4
  %2673 = shl i32 %2667, 2
  tail call void %2672(ptr noundef %2669, i32 noundef %2673, i32 noundef 6) #6
  br label %2674

2674:                                             ; preds = %2663, %2657
  %2675 = load i32, ptr %14, align 4
  br label %2676

2676:                                             ; preds = %2674, %2660
  %2677 = phi i32 [ %2675, %2674 ], [ %2661, %2660 ]
  store i32 2818, ptr %7, align 4
  %2678 = load i32, ptr %8, align 4
  store i32 %2678, ptr %10, align 4
  %2679 = add i32 %2678, 6
  store i32 %2679, ptr %8, align 4
  %2680 = load ptr, ptr %12, align 4
  %2681 = icmp eq i32 %2677, 0
  br i1 %2681, label %2682, label %2692

2682:                                             ; preds = %2676
  %2683 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2684 = load i32, ptr %2683, align 4
  %2685 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2686 = load i32, ptr %2685, align 4
  %2687 = icmp eq i32 %2684, %2686
  br i1 %2687, label %2688, label %2689, !prof !8

2688:                                             ; preds = %2682
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2689:                                             ; preds = %2682
  %2690 = add i32 %2684, 1
  store i32 %2690, ptr %2683, align 4
  %2691 = getelementptr i32, ptr %2680, i32 %2684
  store i32 1444610, ptr %2691, align 4
  br label %2692

2692:                                             ; preds = %2689, %2676
  %2693 = load i32, ptr %73, align 4
  %2694 = icmp eq i32 %2693, 80
  br i1 %2694, label %2709, label %2695

2695:                                             ; preds = %2692
  %2696 = load i32, ptr %14, align 4
  %2697 = icmp eq i32 %2696, 1
  br i1 %2697, label %2698, label %2744

2698:                                             ; preds = %2695
  %2699 = load i32, ptr %7, align 4
  %2700 = sub i32 2821, %2699
  %2701 = load i32, ptr %10, align 4
  %2702 = add i32 %2700, %2701
  %2703 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2704 = load ptr, ptr %2703, align 4
  %2705 = load ptr, ptr %2704, align 8
  %2706 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2705, i32 0, i32 3
  %2707 = load ptr, ptr %2706, align 4
  %2708 = shl i32 %2702, 2
  tail call void %2707(ptr noundef %2704, i32 noundef %2708, i32 noundef 16777216) #6
  br label %2709

2709:                                             ; preds = %2698, %2692
  %2710 = load i32, ptr %14, align 4
  %2711 = icmp eq i32 %2710, 1
  br i1 %2711, label %2712, label %2723

2712:                                             ; preds = %2709
  %2713 = load i32, ptr %7, align 4
  %2714 = sub i32 2822, %2713
  %2715 = load i32, ptr %10, align 4
  %2716 = add i32 %2714, %2715
  %2717 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2718 = load ptr, ptr %2717, align 4
  %2719 = load ptr, ptr %2718, align 8
  %2720 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2719, i32 0, i32 3
  %2721 = load ptr, ptr %2720, align 4
  %2722 = shl i32 %2716, 2
  tail call void %2721(ptr noundef %2718, i32 noundef %2722, i32 noundef 255) #6
  br label %2723

2723:                                             ; preds = %2712, %2709
  %2724 = load i32, ptr %73, align 4
  %2725 = icmp eq i32 %2724, 80
  br i1 %2725, label %2726, label %2742

2726:                                             ; preds = %2723
  store i32 2856, ptr %7, align 4
  %2727 = load i32, ptr %8, align 4
  store i32 %2727, ptr %10, align 4
  %2728 = add i32 %2727, 1
  store i32 %2728, ptr %8, align 4
  %2729 = load ptr, ptr %12, align 4
  %2730 = load i32, ptr %14, align 4
  %2731 = icmp eq i32 %2730, 0
  br i1 %2731, label %2732, label %2760

2732:                                             ; preds = %2726
  %2733 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2734 = load i32, ptr %2733, align 4
  %2735 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2736 = load i32, ptr %2735, align 4
  %2737 = icmp eq i32 %2734, %2736
  br i1 %2737, label %2738, label %2739, !prof !8

2738:                                             ; preds = %2732
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2739:                                             ; preds = %2732
  %2740 = add i32 %2734, 1
  store i32 %2740, ptr %2733, align 4
  %2741 = getelementptr i32, ptr %2729, i32 %2734
  store i32 1116968, ptr %2741, align 4
  br label %2760

2742:                                             ; preds = %2723
  %2743 = load i32, ptr %14, align 4
  br label %2744

2744:                                             ; preds = %2742, %2695
  %2745 = phi i32 [ %2743, %2742 ], [ %2696, %2695 ]
  store i32 2856, ptr %7, align 4
  %2746 = load i32, ptr %8, align 4
  store i32 %2746, ptr %10, align 4
  %2747 = add i32 %2746, 2
  store i32 %2747, ptr %8, align 4
  %2748 = load ptr, ptr %12, align 4
  %2749 = icmp eq i32 %2745, 0
  br i1 %2749, label %2750, label %2760

2750:                                             ; preds = %2744
  %2751 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2752 = load i32, ptr %2751, align 4
  %2753 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2754 = load i32, ptr %2753, align 4
  %2755 = icmp eq i32 %2752, %2754
  br i1 %2755, label %2756, label %2757, !prof !8

2756:                                             ; preds = %2750
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2757:                                             ; preds = %2750
  %2758 = add i32 %2752, 1
  store i32 %2758, ptr %2751, align 4
  %2759 = getelementptr i32, ptr %2748, i32 %2752
  store i32 1182504, ptr %2759, align 4
  br label %2760

2760:                                             ; preds = %2757, %2744, %2739, %2726
  %2761 = load i32, ptr %73, align 4
  %2762 = icmp ult i32 %2761, 160
  br i1 %2762, label %2763, label %2777

2763:                                             ; preds = %2760
  %2764 = load i32, ptr %14, align 4
  %2765 = icmp eq i32 %2764, 1
  br i1 %2765, label %2766, label %2811

2766:                                             ; preds = %2763
  %2767 = load i32, ptr %7, align 4
  %2768 = sub i32 2856, %2767
  %2769 = load i32, ptr %10, align 4
  %2770 = add i32 %2768, %2769
  %2771 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2772 = load ptr, ptr %2771, align 4
  %2773 = load ptr, ptr %2772, align 8
  %2774 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2773, i32 0, i32 3
  %2775 = load ptr, ptr %2774, align 4
  %2776 = shl i32 %2770, 2
  tail call void %2775(ptr noundef %2772, i32 noundef %2776, i32 noundef 1024) #6
  br label %2809

2777:                                             ; preds = %2760
  %2778 = icmp ne i32 %2761, 160
  %2779 = icmp ult i32 %2761, 170
  %2780 = and i1 %2778, %2779
  %2781 = icmp eq i32 %2761, 175
  %2782 = or i1 %2781, %2780
  %2783 = load i32, ptr %14, align 4
  %2784 = icmp eq i32 %2783, 1
  br i1 %2782, label %2797, label %2785

2785:                                             ; preds = %2777
  br i1 %2784, label %2786, label %2811

2786:                                             ; preds = %2785
  %2787 = load i32, ptr %7, align 4
  %2788 = sub i32 2856, %2787
  %2789 = load i32, ptr %10, align 4
  %2790 = add i32 %2788, %2789
  %2791 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2792 = load ptr, ptr %2791, align 4
  %2793 = load ptr, ptr %2792, align 8
  %2794 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2793, i32 0, i32 3
  %2795 = load ptr, ptr %2794, align 4
  %2796 = shl i32 %2790, 2
  tail call void %2795(ptr noundef %2792, i32 noundef %2796, i32 noundef 2048) #6
  br label %2809

2797:                                             ; preds = %2777
  br i1 %2784, label %2798, label %2811

2798:                                             ; preds = %2797
  %2799 = load i32, ptr %7, align 4
  %2800 = sub i32 2856, %2799
  %2801 = load i32, ptr %10, align 4
  %2802 = add i32 %2800, %2801
  %2803 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2804 = load ptr, ptr %2803, align 4
  %2805 = load ptr, ptr %2804, align 8
  %2806 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2805, i32 0, i32 3
  %2807 = load ptr, ptr %2806, align 4
  %2808 = shl i32 %2802, 2
  tail call void %2807(ptr noundef %2804, i32 noundef %2808, i32 noundef 1024) #6
  br label %2809

2809:                                             ; preds = %2798, %2786, %2766
  %2810 = load i32, ptr %14, align 4
  br label %2811

2811:                                             ; preds = %2809, %2797, %2785, %2763
  %2812 = phi i32 [ %2810, %2809 ], [ %2783, %2797 ], [ %2783, %2785 ], [ %2764, %2763 ]
  store i32 2859, ptr %7, align 4
  %2813 = load i32, ptr %8, align 4
  store i32 %2813, ptr %10, align 4
  %2814 = add i32 %2813, 4
  store i32 %2814, ptr %8, align 4
  %2815 = load ptr, ptr %12, align 4
  %2816 = icmp eq i32 %2812, 0
  br i1 %2816, label %2819, label %2817

2817:                                             ; preds = %2811
  store i32 3073, ptr %7, align 4
  store i32 %2814, ptr %10, align 4
  %2818 = add i32 %2813, 5
  store i32 %2818, ptr %8, align 4
  br label %2845

2819:                                             ; preds = %2811
  %2820 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2821 = load i32, ptr %2820, align 4
  %2822 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2823 = load i32, ptr %2822, align 4
  %2824 = icmp eq i32 %2821, %2823
  br i1 %2824, label %2825, label %2826, !prof !8

2825:                                             ; preds = %2819
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2826:                                             ; preds = %2819
  %2827 = add i32 %2821, 1
  store i32 %2827, ptr %2820, align 4
  %2828 = getelementptr i32, ptr %2815, i32 %2821
  store i32 1313579, ptr %2828, align 4
  %2829 = load i32, ptr %8, align 4
  %2830 = load ptr, ptr %12, align 4
  %2831 = load i32, ptr %14, align 4
  store i32 3073, ptr %7, align 4
  store i32 %2829, ptr %10, align 4
  %2832 = add i32 %2829, 1
  store i32 %2832, ptr %8, align 4
  %2833 = icmp eq i32 %2831, 0
  br i1 %2833, label %2834, label %2845

2834:                                             ; preds = %2826
  %2835 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2836 = load i32, ptr %2835, align 4
  %2837 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2838 = load i32, ptr %2837, align 4
  %2839 = icmp eq i32 %2836, %2838
  br i1 %2839, label %2840, label %2841, !prof !8

2840:                                             ; preds = %2834
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2841:                                             ; preds = %2834
  %2842 = add i32 %2836, 1
  store i32 %2842, ptr %2835, align 4
  %2843 = getelementptr i32, ptr %2830, i32 %2836
  store i32 1117185, ptr %2843, align 4
  %2844 = load i32, ptr %14, align 4
  br label %2845

2845:                                             ; preds = %2841, %2826, %2817
  %2846 = phi i32 [ %2831, %2826 ], [ %2844, %2841 ], [ %2812, %2817 ]
  %2847 = icmp eq i32 %2846, 1
  br i1 %2847, label %2848, label %2859

2848:                                             ; preds = %2845
  %2849 = load i32, ptr %7, align 4
  %2850 = sub i32 3073, %2849
  %2851 = load i32, ptr %10, align 4
  %2852 = add i32 %2850, %2851
  %2853 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2854 = load ptr, ptr %2853, align 4
  %2855 = load ptr, ptr %2854, align 8
  %2856 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2855, i32 0, i32 3
  %2857 = load ptr, ptr %2856, align 4
  %2858 = shl i32 %2852, 2
  tail call void %2857(ptr noundef %2854, i32 noundef %2858, i32 noundef 1) #6
  br label %2859

2859:                                             ; preds = %2848, %2845
  %2860 = load i32, ptr %73, align 4
  %2861 = icmp ugt i32 %2860, 159
  br i1 %2861, label %2862, label %2893

2862:                                             ; preds = %2859
  store i32 3329, ptr %7, align 4
  %2863 = load i32, ptr %8, align 4
  store i32 %2863, ptr %10, align 4
  %2864 = add i32 %2863, 1
  store i32 %2864, ptr %8, align 4
  %2865 = load ptr, ptr %12, align 4
  %2866 = load i32, ptr %14, align 4
  %2867 = icmp eq i32 %2866, 0
  br i1 %2867, label %2868, label %2879

2868:                                             ; preds = %2862
  %2869 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2870 = load i32, ptr %2869, align 4
  %2871 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2872 = load i32, ptr %2871, align 4
  %2873 = icmp eq i32 %2870, %2872
  br i1 %2873, label %2874, label %2875, !prof !8

2874:                                             ; preds = %2868
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2875:                                             ; preds = %2868
  %2876 = add i32 %2870, 1
  store i32 %2876, ptr %2869, align 4
  %2877 = getelementptr i32, ptr %2865, i32 %2870
  store i32 1117441, ptr %2877, align 4
  %2878 = load i32, ptr %14, align 4
  br label %2879

2879:                                             ; preds = %2875, %2862
  %2880 = phi i32 [ %2866, %2862 ], [ %2878, %2875 ]
  %2881 = icmp eq i32 %2880, 1
  br i1 %2881, label %2882, label %2893

2882:                                             ; preds = %2879
  %2883 = load i32, ptr %7, align 4
  %2884 = sub i32 3329, %2883
  %2885 = load i32, ptr %10, align 4
  %2886 = add i32 %2884, %2885
  %2887 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2888 = load ptr, ptr %2887, align 4
  %2889 = load ptr, ptr %2888, align 8
  %2890 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2889, i32 0, i32 3
  %2891 = load ptr, ptr %2890, align 4
  %2892 = shl i32 %2886, 2
  tail call void %2891(ptr noundef %2888, i32 noundef %2892, i32 noundef 1) #6
  br label %2893

2893:                                             ; preds = %2882, %2879, %2859
  store i32 5120, ptr %7, align 4
  %2894 = load i32, ptr %8, align 4
  store i32 %2894, ptr %10, align 4
  %2895 = add i32 %2894, 1
  store i32 %2895, ptr %8, align 4
  %2896 = load ptr, ptr %12, align 4
  %2897 = load i32, ptr %14, align 4
  %2898 = icmp eq i32 %2897, 0
  br i1 %2898, label %2899, label %2909

2899:                                             ; preds = %2893
  %2900 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2901 = load i32, ptr %2900, align 4
  %2902 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2903 = load i32, ptr %2902, align 4
  %2904 = icmp eq i32 %2901, %2903
  br i1 %2904, label %2905, label %2906, !prof !8

2905:                                             ; preds = %2899
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2906:                                             ; preds = %2899
  %2907 = add i32 %2901, 1
  store i32 %2907, ptr %2900, align 4
  %2908 = getelementptr i32, ptr %2896, i32 %2901
  store i32 1119232, ptr %2908, align 4
  br label %2909

2909:                                             ; preds = %2906, %2893
  %2910 = load i32, ptr %73, align 4
  switch i32 %2910, label %2953 [
    i32 80, label %2911
    i32 132, label %2925
    i32 160, label %2925
    i32 163, label %2925
    i32 165, label %2925
    i32 168, label %2925
    i32 170, label %2925
    i32 172, label %2925
    i32 175, label %2925
    i32 134, label %2939
    i32 146, label %2939
    i32 148, label %2939
    i32 150, label %2939
    i32 152, label %2939
  ]

2911:                                             ; preds = %2909
  %2912 = load i32, ptr %14, align 4
  %2913 = icmp eq i32 %2912, 1
  br i1 %2913, label %2914, label %2955

2914:                                             ; preds = %2911
  %2915 = load i32, ptr %7, align 4
  %2916 = sub i32 5120, %2915
  %2917 = load i32, ptr %10, align 4
  %2918 = add i32 %2916, %2917
  %2919 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2920 = load ptr, ptr %2919, align 4
  %2921 = load ptr, ptr %2920, align 8
  %2922 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2921, i32 0, i32 3
  %2923 = load ptr, ptr %2922, align 4
  %2924 = shl i32 %2918, 2
  tail call void %2923(ptr noundef %2920, i32 noundef %2924, i32 noundef 3145856) #6
  br label %2953

2925:                                             ; preds = %2909, %2909, %2909, %2909, %2909, %2909, %2909, %2909
  %2926 = load i32, ptr %14, align 4
  %2927 = icmp eq i32 %2926, 1
  br i1 %2927, label %2928, label %2955

2928:                                             ; preds = %2925
  %2929 = load i32, ptr %7, align 4
  %2930 = sub i32 5120, %2929
  %2931 = load i32, ptr %10, align 4
  %2932 = add i32 %2930, %2931
  %2933 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2934 = load ptr, ptr %2933, align 4
  %2935 = load ptr, ptr %2934, align 8
  %2936 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2935, i32 0, i32 3
  %2937 = load ptr, ptr %2936, align 4
  %2938 = shl i32 %2932, 2
  tail call void %2937(ptr noundef %2934, i32 noundef %2938, i32 noundef 917632) #6
  br label %2953

2939:                                             ; preds = %2909, %2909, %2909, %2909, %2909
  %2940 = load i32, ptr %14, align 4
  %2941 = icmp eq i32 %2940, 1
  br i1 %2941, label %2942, label %2955

2942:                                             ; preds = %2939
  %2943 = load i32, ptr %7, align 4
  %2944 = sub i32 5120, %2943
  %2945 = load i32, ptr %10, align 4
  %2946 = add i32 %2944, %2945
  %2947 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2948 = load ptr, ptr %2947, align 4
  %2949 = load ptr, ptr %2948, align 8
  %2950 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2949, i32 0, i32 3
  %2951 = load ptr, ptr %2950, align 4
  %2952 = shl i32 %2946, 2
  tail call void %2951(ptr noundef %2948, i32 noundef %2952, i32 noundef 128) #6
  br label %2953

2953:                                             ; preds = %2942, %2928, %2914, %2909
  %2954 = load i32, ptr %14, align 4
  br label %2955

2955:                                             ; preds = %2953, %2939, %2925, %2911
  %2956 = phi i32 [ %2954, %2953 ], [ %2940, %2939 ], [ %2926, %2925 ], [ %2912, %2911 ]
  store i32 5125, ptr %7, align 4
  %2957 = load i32, ptr %8, align 4
  store i32 %2957, ptr %10, align 4
  %2958 = add i32 %2957, 1
  store i32 %2958, ptr %8, align 4
  %2959 = load ptr, ptr %12, align 4
  %2960 = icmp eq i32 %2956, 0
  br i1 %2960, label %2961, label %2972

2961:                                             ; preds = %2955
  %2962 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2963 = load i32, ptr %2962, align 4
  %2964 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2965 = load i32, ptr %2964, align 4
  %2966 = icmp eq i32 %2963, %2965
  br i1 %2966, label %2967, label %2968, !prof !8

2967:                                             ; preds = %2961
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

2968:                                             ; preds = %2961
  %2969 = add i32 %2963, 1
  store i32 %2969, ptr %2962, align 4
  %2970 = getelementptr i32, ptr %2959, i32 %2963
  store i32 1119237, ptr %2970, align 4
  %2971 = load i32, ptr %14, align 4
  br label %2972

2972:                                             ; preds = %2968, %2955
  %2973 = phi i32 [ %2956, %2955 ], [ %2971, %2968 ]
  %2974 = icmp eq i32 %2973, 1
  br i1 %2974, label %2975, label %2987

2975:                                             ; preds = %2972
  %2976 = load i32, ptr %7, align 4
  %2977 = sub i32 5125, %2976
  %2978 = load i32, ptr %10, align 4
  %2979 = add i32 %2977, %2978
  %2980 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2981 = load ptr, ptr %2980, align 4
  %2982 = load ptr, ptr %2981, align 8
  %2983 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2982, i32 0, i32 3
  %2984 = load ptr, ptr %2983, align 4
  %2985 = shl i32 %2979, 2
  tail call void %2984(ptr noundef %2981, i32 noundef %2985, i32 noundef 4) #6
  %2986 = load i32, ptr %14, align 4
  br label %2987

2987:                                             ; preds = %2975, %2972
  %2988 = phi i32 [ %2973, %2972 ], [ %2986, %2975 ]
  store i32 5127, ptr %7, align 4
  %2989 = load i32, ptr %8, align 4
  store i32 %2989, ptr %10, align 4
  %2990 = add i32 %2989, 1
  store i32 %2990, ptr %8, align 4
  %2991 = load ptr, ptr %12, align 4
  %2992 = icmp eq i32 %2988, 0
  br i1 %2992, label %2995, label %2993

2993:                                             ; preds = %2987
  %2994 = add i32 %2989, 2
  br label %3017

2995:                                             ; preds = %2987
  %2996 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %2997 = load i32, ptr %2996, align 4
  %2998 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %2999 = load i32, ptr %2998, align 4
  %3000 = icmp eq i32 %2997, %2999
  br i1 %3000, label %3001, label %3002, !prof !8

3001:                                             ; preds = %2995
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3002:                                             ; preds = %2995
  %3003 = add i32 %2997, 1
  store i32 %3003, ptr %2996, align 4
  %3004 = getelementptr i32, ptr %2991, i32 %2997
  store i32 1119239, ptr %3004, align 4
  %3005 = load i32, ptr %8, align 4
  %3006 = load ptr, ptr %12, align 4
  %3007 = load i32, ptr %14, align 4
  store i32 5129, ptr %7, align 4
  store i32 %3005, ptr %10, align 4
  %3008 = add i32 %3005, 1
  store i32 %3008, ptr %8, align 4
  %3009 = icmp eq i32 %3007, 0
  br i1 %3009, label %3010, label %3017

3010:                                             ; preds = %3002
  %3011 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3012 = load i32, ptr %3011, align 4
  %3013 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3014 = load i32, ptr %3013, align 4
  %3015 = icmp eq i32 %3012, %3014
  br i1 %3015, label %3016, label %3020, !prof !8

3016:                                             ; preds = %3010
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3017:                                             ; preds = %3002, %2993
  %3018 = phi i32 [ %2994, %2993 ], [ %3008, %3002 ]
  store i32 5131, ptr %7, align 4
  store i32 %3018, ptr %10, align 4
  %3019 = add i32 %3018, 1
  store i32 %3019, ptr %8, align 4
  br label %3038

3020:                                             ; preds = %3010
  %3021 = add i32 %3012, 1
  store i32 %3021, ptr %3011, align 4
  %3022 = getelementptr i32, ptr %3006, i32 %3012
  store i32 1119241, ptr %3022, align 4
  %3023 = load i32, ptr %14, align 4
  %3024 = load i32, ptr %8, align 4
  %3025 = load ptr, ptr %12, align 4
  store i32 5131, ptr %7, align 4
  store i32 %3024, ptr %10, align 4
  %3026 = add i32 %3024, 1
  store i32 %3026, ptr %8, align 4
  %3027 = icmp eq i32 %3023, 0
  br i1 %3027, label %3028, label %3038

3028:                                             ; preds = %3020
  %3029 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3030 = load i32, ptr %3029, align 4
  %3031 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3032 = load i32, ptr %3031, align 4
  %3033 = icmp eq i32 %3030, %3032
  br i1 %3033, label %3034, label %3035, !prof !8

3034:                                             ; preds = %3028
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3035:                                             ; preds = %3028
  %3036 = add i32 %3030, 1
  store i32 %3036, ptr %3029, align 4
  %3037 = getelementptr i32, ptr %3025, i32 %3030
  store i32 1119243, ptr %3037, align 4
  br label %3038

3038:                                             ; preds = %3035, %3020, %3017
  %3039 = load i32, ptr %73, align 4
  %3040 = icmp eq i32 %3039, 80
  br i1 %3040, label %3041, label %3059

3041:                                             ; preds = %3038
  store i32 6392, ptr %7, align 4
  %3042 = load i32, ptr %8, align 4
  store i32 %3042, ptr %10, align 4
  %3043 = add i32 %3042, 1
  store i32 %3043, ptr %8, align 4
  %3044 = load ptr, ptr %12, align 4
  %3045 = load i32, ptr %14, align 4
  %3046 = icmp eq i32 %3045, 0
  br i1 %3046, label %3047, label %3057

3047:                                             ; preds = %3041
  %3048 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3049 = load i32, ptr %3048, align 4
  %3050 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3051 = load i32, ptr %3050, align 4
  %3052 = icmp eq i32 %3049, %3051
  br i1 %3052, label %3053, label %3054, !prof !8

3053:                                             ; preds = %3047
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3054:                                             ; preds = %3047
  %3055 = add i32 %3049, 1
  store i32 %3055, ptr %3048, align 4
  %3056 = getelementptr i32, ptr %3044, i32 %3049
  store i32 1120504, ptr %3056, align 4
  br label %3057

3057:                                             ; preds = %3054, %3041
  %3058 = load i32, ptr %73, align 4
  br label %3059

3059:                                             ; preds = %3057, %3038
  %3060 = phi i32 [ %3058, %3057 ], [ %3039, %3038 ]
  %3061 = icmp ult i32 %3060, 144
  store i32 6661, ptr %7, align 4
  %3062 = load i32, ptr %8, align 4
  store i32 %3062, ptr %10, align 4
  br i1 %3061, label %3063, label %3131

3063:                                             ; preds = %3059
  %3064 = add i32 %3062, 43
  store i32 %3064, ptr %8, align 4
  %3065 = load ptr, ptr %12, align 4
  %3066 = load i32, ptr %14, align 4
  %3067 = icmp eq i32 %3066, 0
  br i1 %3067, label %3068, label %3092

3068:                                             ; preds = %3063
  %3069 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3070 = load i32, ptr %3069, align 4
  %3071 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3072 = load i32, ptr %3071, align 4
  %3073 = icmp eq i32 %3070, %3072
  br i1 %3073, label %3074, label %3075, !prof !8

3074:                                             ; preds = %3068
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3075:                                             ; preds = %3068
  %3076 = add i32 %3070, 1
  store i32 %3076, ptr %3069, align 4
  %3077 = getelementptr i32, ptr %3065, i32 %3070
  store i32 2097195, ptr %3077, align 4
  %3078 = load i32, ptr %7, align 4
  %3079 = load i32, ptr %14, align 4
  %3080 = or i32 %3078, 1048576
  %3081 = load ptr, ptr %12, align 4
  %3082 = icmp eq i32 %3079, 0
  br i1 %3082, label %3083, label %3092

3083:                                             ; preds = %3075
  %3084 = load i32, ptr %3069, align 4
  %3085 = load i32, ptr %3071, align 4
  %3086 = icmp eq i32 %3084, %3085
  br i1 %3086, label %3087, label %3088, !prof !8

3087:                                             ; preds = %3083
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3088:                                             ; preds = %3083
  %3089 = add i32 %3084, 1
  store i32 %3089, ptr %3069, align 4
  %3090 = getelementptr i32, ptr %3081, i32 %3084
  store i32 %3080, ptr %3090, align 4
  %3091 = load i32, ptr %14, align 4
  br label %3092

3092:                                             ; preds = %3088, %3075, %3063
  %3093 = phi i32 [ %3079, %3075 ], [ %3091, %3088 ], [ %3066, %3063 ]
  %3094 = icmp eq i32 %3093, 1
  br i1 %3094, label %3095, label %3215

3095:                                             ; preds = %3092
  %3096 = load i32, ptr %7, align 4
  %3097 = sub i32 6662, %3096
  %3098 = load i32, ptr %10, align 4
  %3099 = add i32 %3097, %3098
  %3100 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %3101 = load ptr, ptr %3100, align 4
  %3102 = load ptr, ptr %3101, align 8
  %3103 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3102, i32 0, i32 3
  %3104 = load ptr, ptr %3103, align 4
  %3105 = shl i32 %3099, 2
  tail call void %3104(ptr noundef %3101, i32 noundef %3105, i32 noundef 3968) #6
  %3106 = load i32, ptr %14, align 4
  %3107 = icmp eq i32 %3106, 1
  br i1 %3107, label %3108, label %3215

3108:                                             ; preds = %3095
  %3109 = load i32, ptr %7, align 4
  %3110 = sub i32 6680, %3109
  %3111 = load i32, ptr %10, align 4
  %3112 = add i32 %3110, %3111
  %3113 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %3114 = load ptr, ptr %3113, align 4
  %3115 = load ptr, ptr %3114, align 8
  %3116 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3115, i32 0, i32 3
  %3117 = load ptr, ptr %3116, align 4
  %3118 = shl i32 %3112, 2
  tail call void %3117(ptr noundef %3114, i32 noundef %3118, i32 noundef 8323200) #6
  %3119 = load i32, ptr %14, align 4
  %3120 = icmp eq i32 %3119, 1
  br i1 %3120, label %3121, label %3215

3121:                                             ; preds = %3108
  %3122 = load i32, ptr %7, align 4
  %3123 = sub i32 6695, %3122
  %3124 = load i32, ptr %10, align 4
  %3125 = add i32 %3123, %3124
  %3126 = load ptr, ptr %3113, align 4
  %3127 = load ptr, ptr %3126, align 8
  %3128 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3127, i32 0, i32 3
  %3129 = load ptr, ptr %3128, align 4
  %3130 = shl i32 %3125, 2
  tail call void %3129(ptr noundef %3126, i32 noundef %3130, i32 noundef 8323200) #6
  br label %3215

3131:                                             ; preds = %3059
  %3132 = add i32 %3062, 4
  store i32 %3132, ptr %8, align 4
  %3133 = load ptr, ptr %12, align 4
  %3134 = load i32, ptr %14, align 4
  %3135 = icmp eq i32 %3134, 0
  br i1 %3135, label %3136, label %3146

3136:                                             ; preds = %3131
  %3137 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3138 = load i32, ptr %3137, align 4
  %3139 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3140 = load i32, ptr %3139, align 4
  %3141 = icmp eq i32 %3138, %3140
  br i1 %3141, label %3142, label %3143, !prof !8

3142:                                             ; preds = %3136
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3143:                                             ; preds = %3136
  %3144 = add i32 %3138, 1
  store i32 %3144, ptr %3137, align 4
  %3145 = getelementptr i32, ptr %3133, i32 %3138
  store i32 1317381, ptr %3145, align 4
  br label %3146

3146:                                             ; preds = %3143, %3131
  %3147 = load i32, ptr %73, align 4
  %3148 = icmp eq i32 %3147, 152
  %3149 = load i32, ptr %14, align 4
  %3150 = icmp eq i32 %3149, 1
  br i1 %3148, label %3151, label %3163

3151:                                             ; preds = %3146
  br i1 %3150, label %3152, label %3197

3152:                                             ; preds = %3151
  %3153 = load i32, ptr %7, align 4
  %3154 = sub i32 6662, %3153
  %3155 = load i32, ptr %10, align 4
  %3156 = add i32 %3154, %3155
  %3157 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %3158 = load ptr, ptr %3157, align 4
  %3159 = load ptr, ptr %3158, align 8
  %3160 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3159, i32 0, i32 3
  %3161 = load ptr, ptr %3160, align 4
  %3162 = shl i32 %3156, 2
  tail call void %3161(ptr noundef %3158, i32 noundef %3162, i32 noundef 3968) #6
  br label %3175

3163:                                             ; preds = %3146
  br i1 %3150, label %3164, label %3177

3164:                                             ; preds = %3163
  %3165 = load i32, ptr %7, align 4
  %3166 = sub i32 6662, %3165
  %3167 = load i32, ptr %10, align 4
  %3168 = add i32 %3166, %3167
  %3169 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %3170 = load ptr, ptr %3169, align 4
  %3171 = load ptr, ptr %3170, align 8
  %3172 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3171, i32 0, i32 3
  %3173 = load ptr, ptr %3172, align 4
  %3174 = shl i32 %3168, 2
  tail call void %3173(ptr noundef %3170, i32 noundef %3174, i32 noundef 8064) #6
  br label %3175

3175:                                             ; preds = %3164, %3152
  %3176 = load i32, ptr %73, align 4
  br label %3177

3177:                                             ; preds = %3175, %3163
  %3178 = phi i32 [ %3176, %3175 ], [ %3147, %3163 ]
  %3179 = add i32 %3178, -161
  %3180 = icmp ult i32 %3179, 9
  %3181 = icmp eq i32 %3178, 175
  %3182 = or i1 %3181, %3180
  br i1 %3182, label %3183, label %3197

3183:                                             ; preds = %3177
  %3184 = load i32, ptr %14, align 4
  %3185 = icmp eq i32 %3184, 1
  br i1 %3185, label %3186, label %3199

3186:                                             ; preds = %3183
  %3187 = load i32, ptr %7, align 4
  %3188 = sub i32 6663, %3187
  %3189 = load i32, ptr %10, align 4
  %3190 = add i32 %3188, %3189
  %3191 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %3192 = load ptr, ptr %3191, align 4
  %3193 = load ptr, ptr %3192, align 8
  %3194 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3193, i32 0, i32 3
  %3195 = load ptr, ptr %3194, align 4
  %3196 = shl i32 %3190, 2
  tail call void %3195(ptr noundef %3192, i32 noundef %3196, i32 noundef 48) #6
  br label %3197

3197:                                             ; preds = %3186, %3177, %3151
  %3198 = load i32, ptr %14, align 4
  br label %3199

3199:                                             ; preds = %3197, %3183
  %3200 = phi i32 [ %3198, %3197 ], [ %3184, %3183 ]
  store i32 6668, ptr %7, align 4
  %3201 = load i32, ptr %8, align 4
  store i32 %3201, ptr %10, align 4
  %3202 = add i32 %3201, 3
  store i32 %3202, ptr %8, align 4
  %3203 = load ptr, ptr %12, align 4
  %3204 = icmp eq i32 %3200, 0
  br i1 %3204, label %3205, label %3215

3205:                                             ; preds = %3199
  %3206 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3207 = load i32, ptr %3206, align 4
  %3208 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3209 = load i32, ptr %3208, align 4
  %3210 = icmp eq i32 %3207, %3209
  br i1 %3210, label %3211, label %3212, !prof !8

3211:                                             ; preds = %3205
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3212:                                             ; preds = %3205
  %3213 = add i32 %3207, 1
  store i32 %3213, ptr %3206, align 4
  %3214 = getelementptr i32, ptr %3203, i32 %3207
  store i32 1251852, ptr %3214, align 4
  br label %3215

3215:                                             ; preds = %3212, %3199, %3121, %3108, %3095, %3092
  %3216 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 5
  %3217 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 4
  %3218 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  br label %3219

3219:                                             ; preds = %3599, %3215
  %3220 = phi i32 [ 0, %3215 ], [ %3600, %3599 ]
  %3221 = shl i32 65536, %3220
  %3222 = and i32 %3221, %6
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3599, label %3224

3224:                                             ; preds = %3219
  %3225 = shl i32 %3220, 8
  %3226 = add nuw nsw i32 %3225, 28672
  %3227 = lshr exact i32 %3226, 2
  store i32 %3227, ptr %7, align 4
  %3228 = load i32, ptr %8, align 4
  store i32 %3228, ptr %10, align 4
  %3229 = add i32 %3228, 3
  store i32 %3229, ptr %8, align 4
  %3230 = or i32 %3227, 1245184
  %3231 = load ptr, ptr %12, align 4
  %3232 = load i32, ptr %14, align 4
  %3233 = icmp eq i32 %3232, 0
  br i1 %3233, label %3234, label %3242

3234:                                             ; preds = %3224
  %3235 = load i32, ptr %3216, align 4
  %3236 = load i32, ptr %3217, align 4
  %3237 = icmp eq i32 %3235, %3236
  br i1 %3237, label %3238, label %3239, !prof !8

3238:                                             ; preds = %3234
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3239:                                             ; preds = %3234
  %3240 = add i32 %3235, 1
  store i32 %3240, ptr %3216, align 4
  %3241 = getelementptr i32, ptr %3231, i32 %3235
  store i32 %3230, ptr %3241, align 4
  br label %3242

3242:                                             ; preds = %3239, %3224
  %3243 = load i32, ptr %73, align 4
  switch i32 %3243, label %3257 [
    i32 80, label %3244
    i32 165, label %3270
  ]

3244:                                             ; preds = %3242
  %3245 = load i32, ptr %14, align 4
  %3246 = icmp eq i32 %3245, 1
  br i1 %3246, label %3247, label %3305

3247:                                             ; preds = %3244
  %3248 = load i32, ptr %7, align 4
  %3249 = sub i32 %3227, %3248
  %3250 = load i32, ptr %10, align 4
  %3251 = add i32 %3249, %3250
  %3252 = load ptr, ptr %3218, align 4
  %3253 = load ptr, ptr %3252, align 8
  %3254 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3253, i32 0, i32 3
  %3255 = load ptr, ptr %3254, align 4
  %3256 = shl i32 %3251, 2
  tail call void %3255(ptr noundef %3252, i32 noundef %3256, i32 noundef 460650528) #6
  br label %3283

3257:                                             ; preds = %3242
  %3258 = load i32, ptr %14, align 4
  %3259 = icmp eq i32 %3258, 1
  br i1 %3259, label %3260, label %3300

3260:                                             ; preds = %3257
  %3261 = load i32, ptr %7, align 4
  %3262 = sub i32 %3227, %3261
  %3263 = load i32, ptr %10, align 4
  %3264 = add i32 %3262, %3263
  %3265 = load ptr, ptr %3218, align 4
  %3266 = load ptr, ptr %3265, align 8
  %3267 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3266, i32 0, i32 3
  %3268 = load ptr, ptr %3267, align 4
  %3269 = shl i32 %3264, 2
  tail call void %3268(ptr noundef %3265, i32 noundef %3269, i32 noundef 997521441) #6
  br label %3283

3270:                                             ; preds = %3242
  %3271 = load i32, ptr %14, align 4
  %3272 = icmp eq i32 %3271, 1
  br i1 %3272, label %3273, label %3371

3273:                                             ; preds = %3270
  %3274 = load i32, ptr %7, align 4
  %3275 = sub i32 %3227, %3274
  %3276 = load i32, ptr %10, align 4
  %3277 = add i32 %3275, %3276
  %3278 = load ptr, ptr %3218, align 4
  %3279 = load ptr, ptr %3278, align 8
  %3280 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3279, i32 0, i32 3
  %3281 = load ptr, ptr %3280, align 4
  %3282 = shl i32 %3277, 2
  tail call void %3281(ptr noundef %3278, i32 noundef %3282, i32 noundef 2071263265) #6
  br label %3283

3283:                                             ; preds = %3273, %3260, %3247
  %3284 = load i32, ptr %14, align 4
  %3285 = icmp eq i32 %3284, 1
  br i1 %3285, label %3286, label %3298

3286:                                             ; preds = %3283
  %3287 = add nuw nsw i32 %3225, 28676
  %3288 = lshr exact i32 %3287, 2
  %3289 = load i32, ptr %7, align 4
  %3290 = sub i32 %3288, %3289
  %3291 = load i32, ptr %10, align 4
  %3292 = add i32 %3290, %3291
  %3293 = load ptr, ptr %3218, align 4
  %3294 = load ptr, ptr %3293, align 8
  %3295 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3294, i32 0, i32 3
  %3296 = load ptr, ptr %3295, align 4
  %3297 = shl i32 %3292, 2
  tail call void %3296(ptr noundef %3293, i32 noundef %3297, i32 noundef -1996128255) #6
  br label %3298

3298:                                             ; preds = %3286, %3283
  %3299 = load i32, ptr %73, align 4
  br label %3300

3300:                                             ; preds = %3298, %3257
  %3301 = phi i32 [ %3299, %3298 ], [ %3243, %3257 ]
  %3302 = icmp eq i32 %3301, 80
  br i1 %3302, label %3303, label %3322

3303:                                             ; preds = %3300
  %3304 = load i32, ptr %14, align 4
  br label %3305

3305:                                             ; preds = %3303, %3244
  %3306 = phi i32 [ %3304, %3303 ], [ %3245, %3244 ]
  %3307 = add nuw nsw i32 %3225, 28688
  %3308 = lshr exact i32 %3307, 2
  store i32 %3308, ptr %7, align 4
  %3309 = load i32, ptr %8, align 4
  store i32 %3309, ptr %10, align 4
  %3310 = add i32 %3309, 1
  store i32 %3310, ptr %8, align 4
  %3311 = or i32 %3308, 1114112
  %3312 = load ptr, ptr %12, align 4
  %3313 = icmp eq i32 %3306, 0
  br i1 %3313, label %3314, label %3433

3314:                                             ; preds = %3305
  %3315 = load i32, ptr %3216, align 4
  %3316 = load i32, ptr %3217, align 4
  %3317 = icmp eq i32 %3315, %3316
  br i1 %3317, label %3318, label %3319, !prof !8

3318:                                             ; preds = %3314
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3319:                                             ; preds = %3314
  %3320 = add i32 %3315, 1
  store i32 %3320, ptr %3216, align 4
  %3321 = getelementptr i32, ptr %3312, i32 %3315
  store i32 %3311, ptr %3321, align 4
  br label %3433

3322:                                             ; preds = %3300
  %3323 = icmp ult i32 %3301, 160
  br i1 %3323, label %3326, label %3324

3324:                                             ; preds = %3322
  %3325 = load i32, ptr %14, align 4
  br label %3371

3326:                                             ; preds = %3322
  %3327 = add nuw nsw i32 %3225, 28688
  %3328 = lshr exact i32 %3327, 2
  store i32 %3328, ptr %7, align 4
  %3329 = load i32, ptr %8, align 4
  store i32 %3329, ptr %10, align 4
  %3330 = add i32 %3329, 2
  store i32 %3330, ptr %8, align 4
  %3331 = or i32 %3328, 1179648
  %3332 = load ptr, ptr %12, align 4
  %3333 = load i32, ptr %14, align 4
  %3334 = icmp eq i32 %3333, 0
  br i1 %3334, label %3335, label %3344

3335:                                             ; preds = %3326
  %3336 = load i32, ptr %3216, align 4
  %3337 = load i32, ptr %3217, align 4
  %3338 = icmp eq i32 %3336, %3337
  br i1 %3338, label %3339, label %3340, !prof !8

3339:                                             ; preds = %3335
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3340:                                             ; preds = %3335
  %3341 = add i32 %3336, 1
  store i32 %3341, ptr %3216, align 4
  %3342 = getelementptr i32, ptr %3332, i32 %3336
  store i32 %3331, ptr %3342, align 4
  %3343 = load i32, ptr %14, align 4
  br label %3344

3344:                                             ; preds = %3340, %3326
  %3345 = phi i32 [ %3333, %3326 ], [ %3343, %3340 ]
  %3346 = icmp eq i32 %3345, 1
  br i1 %3346, label %3347, label %3433

3347:                                             ; preds = %3344
  %3348 = load i32, ptr %7, align 4
  %3349 = sub i32 %3328, %3348
  %3350 = load i32, ptr %10, align 4
  %3351 = add i32 %3349, %3350
  %3352 = load ptr, ptr %3218, align 4
  %3353 = load ptr, ptr %3352, align 8
  %3354 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3353, i32 0, i32 3
  %3355 = load ptr, ptr %3354, align 4
  %3356 = shl i32 %3351, 2
  tail call void %3355(ptr noundef %3352, i32 noundef %3356, i32 noundef 4096) #6
  %3357 = load i32, ptr %14, align 4
  %3358 = icmp eq i32 %3357, 1
  br i1 %3358, label %3359, label %3433

3359:                                             ; preds = %3347
  %3360 = add nuw nsw i32 %3225, 28692
  %3361 = lshr exact i32 %3360, 2
  %3362 = load i32, ptr %7, align 4
  %3363 = sub i32 %3361, %3362
  %3364 = load i32, ptr %10, align 4
  %3365 = add i32 %3363, %3364
  %3366 = load ptr, ptr %3218, align 4
  %3367 = load ptr, ptr %3366, align 8
  %3368 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3367, i32 0, i32 3
  %3369 = load ptr, ptr %3368, align 4
  %3370 = shl i32 %3365, 2
  tail call void %3369(ptr noundef %3366, i32 noundef %3370, i32 noundef 31) #6
  br label %3433

3371:                                             ; preds = %3324, %3270
  %3372 = phi i32 [ %3325, %3324 ], [ %3271, %3270 ]
  %3373 = add nuw nsw i32 %3225, 28688
  %3374 = lshr exact i32 %3373, 2
  store i32 %3374, ptr %7, align 4
  %3375 = load i32, ptr %8, align 4
  store i32 %3375, ptr %10, align 4
  %3376 = add i32 %3375, 3
  store i32 %3376, ptr %8, align 4
  %3377 = or i32 %3374, 1245184
  %3378 = load ptr, ptr %12, align 4
  %3379 = icmp eq i32 %3372, 0
  br i1 %3379, label %3380, label %3389

3380:                                             ; preds = %3371
  %3381 = load i32, ptr %3216, align 4
  %3382 = load i32, ptr %3217, align 4
  %3383 = icmp eq i32 %3381, %3382
  br i1 %3383, label %3384, label %3385, !prof !8

3384:                                             ; preds = %3380
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3385:                                             ; preds = %3380
  %3386 = add i32 %3381, 1
  store i32 %3386, ptr %3216, align 4
  %3387 = getelementptr i32, ptr %3378, i32 %3381
  store i32 %3377, ptr %3387, align 4
  %3388 = load i32, ptr %14, align 4
  br label %3389

3389:                                             ; preds = %3385, %3371
  %3390 = phi i32 [ %3372, %3371 ], [ %3388, %3385 ]
  %3391 = icmp eq i32 %3390, 1
  br i1 %3391, label %3392, label %3402

3392:                                             ; preds = %3389
  %3393 = load i32, ptr %7, align 4
  %3394 = sub i32 %3374, %3393
  %3395 = load i32, ptr %10, align 4
  %3396 = add i32 %3394, %3395
  %3397 = load ptr, ptr %3218, align 4
  %3398 = load ptr, ptr %3397, align 8
  %3399 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3398, i32 0, i32 3
  %3400 = load ptr, ptr %3399, align 4
  %3401 = shl i32 %3396, 2
  tail call void %3400(ptr noundef %3397, i32 noundef %3401, i32 noundef 4096) #6
  br label %3402

3402:                                             ; preds = %3392, %3389
  %3403 = load i32, ptr %73, align 4
  %3404 = icmp eq i32 %3403, 165
  %3405 = load i32, ptr %14, align 4
  %3406 = icmp eq i32 %3405, 1
  br i1 %3404, label %3420, label %3407

3407:                                             ; preds = %3402
  br i1 %3406, label %3408, label %3433

3408:                                             ; preds = %3407
  %3409 = add nuw nsw i32 %3225, 28692
  %3410 = lshr exact i32 %3409, 2
  %3411 = load i32, ptr %7, align 4
  %3412 = sub i32 %3410, %3411
  %3413 = load i32, ptr %10, align 4
  %3414 = add i32 %3412, %3413
  %3415 = load ptr, ptr %3218, align 4
  %3416 = load ptr, ptr %3415, align 8
  %3417 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3416, i32 0, i32 3
  %3418 = load ptr, ptr %3417, align 4
  %3419 = shl i32 %3414, 2
  tail call void %3418(ptr noundef %3415, i32 noundef %3419, i32 noundef 255) #6
  br label %3433

3420:                                             ; preds = %3402
  br i1 %3406, label %3421, label %3433

3421:                                             ; preds = %3420
  %3422 = add nuw nsw i32 %3225, 28692
  %3423 = lshr exact i32 %3422, 2
  %3424 = load i32, ptr %7, align 4
  %3425 = sub i32 %3423, %3424
  %3426 = load i32, ptr %10, align 4
  %3427 = add i32 %3425, %3426
  %3428 = load ptr, ptr %3218, align 4
  %3429 = load ptr, ptr %3428, align 8
  %3430 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3429, i32 0, i32 3
  %3431 = load ptr, ptr %3430, align 4
  %3432 = shl i32 %3427, 2
  tail call void %3431(ptr noundef %3428, i32 noundef %3432, i32 noundef 511) #6
  br label %3433

3433:                                             ; preds = %3421, %3420, %3408, %3407, %3359, %3347, %3344, %3319, %3305
  %3434 = add nuw nsw i32 %3225, 28800
  %3435 = lshr exact i32 %3434, 2
  store i32 %3435, ptr %7, align 4
  %3436 = load i32, ptr %8, align 4
  store i32 %3436, ptr %10, align 4
  %3437 = add i32 %3436, 4
  store i32 %3437, ptr %8, align 4
  %3438 = or i32 %3435, 1310720
  %3439 = load ptr, ptr %12, align 4
  %3440 = load i32, ptr %14, align 4
  %3441 = icmp eq i32 %3440, 0
  br i1 %3441, label %3442, label %3450

3442:                                             ; preds = %3433
  %3443 = load i32, ptr %3216, align 4
  %3444 = load i32, ptr %3217, align 4
  %3445 = icmp eq i32 %3443, %3444
  br i1 %3445, label %3446, label %3447, !prof !8

3446:                                             ; preds = %3442
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3447:                                             ; preds = %3442
  %3448 = add i32 %3443, 1
  store i32 %3448, ptr %3216, align 4
  %3449 = getelementptr i32, ptr %3439, i32 %3443
  store i32 %3438, ptr %3449, align 4
  br label %3450

3450:                                             ; preds = %3447, %3433
  %3451 = load i32, ptr %73, align 4
  %3452 = icmp eq i32 %3451, 165
  %3453 = load i32, ptr %14, align 4
  %3454 = icmp eq i32 %3453, 1
  br i1 %3452, label %3466, label %3455

3455:                                             ; preds = %3450
  br i1 %3454, label %3456, label %3479

3456:                                             ; preds = %3455
  %3457 = load i32, ptr %7, align 4
  %3458 = sub i32 %3435, %3457
  %3459 = load i32, ptr %10, align 4
  %3460 = add i32 %3458, %3459
  %3461 = load ptr, ptr %3218, align 4
  %3462 = load ptr, ptr %3461, align 8
  %3463 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3462, i32 0, i32 3
  %3464 = load ptr, ptr %3463, align 4
  %3465 = shl i32 %3460, 2
  tail call void %3464(ptr noundef %3461, i32 noundef %3465, i32 noundef 41685242) #6
  br label %3477

3466:                                             ; preds = %3450
  br i1 %3454, label %3467, label %3545

3467:                                             ; preds = %3466
  %3468 = load i32, ptr %7, align 4
  %3469 = sub i32 %3435, %3468
  %3470 = load i32, ptr %10, align 4
  %3471 = add i32 %3469, %3470
  %3472 = load ptr, ptr %3218, align 4
  %3473 = load ptr, ptr %3472, align 8
  %3474 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3473, i32 0, i32 3
  %3475 = load ptr, ptr %3474, align 4
  %3476 = shl i32 %3471, 2
  tail call void %3475(ptr noundef %3472, i32 noundef %3476, i32 noundef -2105798406) #6
  br label %3477

3477:                                             ; preds = %3467, %3456
  %3478 = load i32, ptr %73, align 4
  br label %3479

3479:                                             ; preds = %3477, %3455
  %3480 = phi i32 [ %3478, %3477 ], [ %3451, %3455 ]
  %3481 = icmp eq i32 %3480, 80
  %3482 = load i32, ptr %14, align 4
  %3483 = icmp eq i32 %3482, 1
  br i1 %3481, label %3484, label %3497

3484:                                             ; preds = %3479
  br i1 %3483, label %3485, label %3525

3485:                                             ; preds = %3484
  %3486 = add nuw nsw i32 %3225, 28804
  %3487 = lshr exact i32 %3486, 2
  %3488 = load i32, ptr %7, align 4
  %3489 = sub i32 %3487, %3488
  %3490 = load i32, ptr %10, align 4
  %3491 = add i32 %3489, %3490
  %3492 = load ptr, ptr %3218, align 4
  %3493 = load ptr, ptr %3492, align 8
  %3494 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3493, i32 0, i32 3
  %3495 = load ptr, ptr %3494, align 4
  %3496 = shl i32 %3491, 2
  tail call void %3495(ptr noundef %3492, i32 noundef %3496, i32 noundef 192) #6
  br label %3510

3497:                                             ; preds = %3479
  br i1 %3483, label %3498, label %3525

3498:                                             ; preds = %3497
  %3499 = add nuw nsw i32 %3225, 28804
  %3500 = lshr exact i32 %3499, 2
  %3501 = load i32, ptr %7, align 4
  %3502 = sub i32 %3500, %3501
  %3503 = load i32, ptr %10, align 4
  %3504 = add i32 %3502, %3503
  %3505 = load ptr, ptr %3218, align 4
  %3506 = load ptr, ptr %3505, align 8
  %3507 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3506, i32 0, i32 3
  %3508 = load ptr, ptr %3507, align 4
  %3509 = shl i32 %3504, 2
  tail call void %3508(ptr noundef %3505, i32 noundef %3509, i32 noundef 1073742016) #6
  br label %3510

3510:                                             ; preds = %3498, %3485
  %3511 = load i32, ptr %14, align 4
  %3512 = icmp eq i32 %3511, 1
  br i1 %3512, label %3513, label %3525

3513:                                             ; preds = %3510
  %3514 = add nuw nsw i32 %3225, 28808
  %3515 = lshr exact i32 %3514, 2
  %3516 = load i32, ptr %7, align 4
  %3517 = sub i32 %3515, %3516
  %3518 = load i32, ptr %10, align 4
  %3519 = add i32 %3517, %3518
  %3520 = load ptr, ptr %3218, align 4
  %3521 = load ptr, ptr %3520, align 8
  %3522 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3521, i32 0, i32 3
  %3523 = load ptr, ptr %3522, align 4
  %3524 = shl i32 %3519, 2
  tail call void %3523(ptr noundef %3520, i32 noundef %3524, i32 noundef -1215750016) #6
  br label %3525

3525:                                             ; preds = %3513, %3510, %3497, %3484
  %3526 = load i32, ptr %73, align 4
  %3527 = icmp ult i32 %3526, 160
  br i1 %3527, label %3528, label %3545

3528:                                             ; preds = %3525
  %3529 = add nuw nsw i32 %3225, 28820
  %3530 = lshr exact i32 %3529, 2
  store i32 %3530, ptr %7, align 4
  %3531 = load i32, ptr %8, align 4
  store i32 %3531, ptr %10, align 4
  %3532 = add i32 %3531, 1
  store i32 %3532, ptr %8, align 4
  %3533 = or i32 %3530, 1114112
  %3534 = load ptr, ptr %12, align 4
  %3535 = load i32, ptr %14, align 4
  %3536 = icmp eq i32 %3535, 0
  br i1 %3536, label %3537, label %3599

3537:                                             ; preds = %3528
  %3538 = load i32, ptr %3216, align 4
  %3539 = load i32, ptr %3217, align 4
  %3540 = icmp eq i32 %3538, %3539
  br i1 %3540, label %3541, label %3542, !prof !8

3541:                                             ; preds = %3537
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3542:                                             ; preds = %3537
  %3543 = add i32 %3538, 1
  store i32 %3543, ptr %3216, align 4
  %3544 = getelementptr i32, ptr %3534, i32 %3538
  store i32 %3533, ptr %3544, align 4
  br label %3599

3545:                                             ; preds = %3525, %3466
  %3546 = phi i32 [ %3526, %3525 ], [ 165, %3466 ]
  %3547 = icmp ne i32 %3546, 160
  %3548 = icmp ult i32 %3546, 170
  %3549 = and i1 %3547, %3548
  %3550 = icmp eq i32 %3546, 175
  %3551 = or i1 %3550, %3549
  %3552 = add nuw nsw i32 %3225, 28820
  %3553 = lshr exact i32 %3552, 2
  store i32 %3553, ptr %7, align 4
  %3554 = load i32, ptr %8, align 4
  store i32 %3554, ptr %10, align 4
  br i1 %3551, label %3569, label %3555

3555:                                             ; preds = %3545
  %3556 = add i32 %3554, 3
  store i32 %3556, ptr %8, align 4
  %3557 = or i32 %3553, 1245184
  %3558 = load ptr, ptr %12, align 4
  %3559 = load i32, ptr %14, align 4
  %3560 = icmp eq i32 %3559, 0
  br i1 %3560, label %3561, label %3599

3561:                                             ; preds = %3555
  %3562 = load i32, ptr %3216, align 4
  %3563 = load i32, ptr %3217, align 4
  %3564 = icmp eq i32 %3562, %3563
  br i1 %3564, label %3565, label %3566, !prof !8

3565:                                             ; preds = %3561
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3566:                                             ; preds = %3561
  %3567 = add i32 %3562, 1
  store i32 %3567, ptr %3216, align 4
  %3568 = getelementptr i32, ptr %3558, i32 %3562
  store i32 %3557, ptr %3568, align 4
  br label %3599

3569:                                             ; preds = %3545
  %3570 = add i32 %3554, 4
  store i32 %3570, ptr %8, align 4
  %3571 = or i32 %3553, 1310720
  %3572 = load ptr, ptr %12, align 4
  %3573 = load i32, ptr %14, align 4
  %3574 = icmp eq i32 %3573, 0
  br i1 %3574, label %3575, label %3584

3575:                                             ; preds = %3569
  %3576 = load i32, ptr %3216, align 4
  %3577 = load i32, ptr %3217, align 4
  %3578 = icmp eq i32 %3576, %3577
  br i1 %3578, label %3579, label %3580, !prof !8

3579:                                             ; preds = %3575
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3580:                                             ; preds = %3575
  %3581 = add i32 %3576, 1
  store i32 %3581, ptr %3216, align 4
  %3582 = getelementptr i32, ptr %3572, i32 %3576
  store i32 %3571, ptr %3582, align 4
  %3583 = load i32, ptr %14, align 4
  br label %3584

3584:                                             ; preds = %3580, %3569
  %3585 = phi i32 [ %3573, %3569 ], [ %3583, %3580 ]
  %3586 = icmp eq i32 %3585, 1
  br i1 %3586, label %3587, label %3599

3587:                                             ; preds = %3584
  %3588 = add nuw nsw i32 %3225, 28832
  %3589 = lshr exact i32 %3588, 2
  %3590 = load i32, ptr %7, align 4
  %3591 = sub i32 %3589, %3590
  %3592 = load i32, ptr %10, align 4
  %3593 = add i32 %3591, %3592
  %3594 = load ptr, ptr %3218, align 4
  %3595 = load ptr, ptr %3594, align 8
  %3596 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3595, i32 0, i32 3
  %3597 = load ptr, ptr %3596, align 4
  %3598 = shl i32 %3593, 2
  tail call void %3597(ptr noundef %3594, i32 noundef %3598, i32 noundef 1) #6
  br label %3599

3599:                                             ; preds = %3587, %3584, %3566, %3555, %3542, %3528, %3219
  %3600 = add nuw nsw i32 %3220, 1
  %3601 = icmp eq i32 %3600, 8
  br i1 %3601, label %3602, label %3219

3602:                                             ; preds = %3599
  store i32 7936, ptr %7, align 4
  %3603 = load i32, ptr %8, align 4
  store i32 %3603, ptr %10, align 4
  %3604 = add i32 %3603, 3
  store i32 %3604, ptr %8, align 4
  %3605 = load ptr, ptr %12, align 4
  %3606 = load i32, ptr %14, align 4
  %3607 = icmp eq i32 %3606, 0
  br i1 %3607, label %3608, label %3616

3608:                                             ; preds = %3602
  %3609 = load i32, ptr %3216, align 4
  %3610 = load i32, ptr %3217, align 4
  %3611 = icmp eq i32 %3609, %3610
  br i1 %3611, label %3612, label %3613, !prof !8

3612:                                             ; preds = %3608
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3613:                                             ; preds = %3608
  %3614 = add i32 %3609, 1
  store i32 %3614, ptr %3216, align 4
  %3615 = getelementptr i32, ptr %3605, i32 %3609
  store i32 1253120, ptr %3615, align 4
  br label %3616

3616:                                             ; preds = %3613, %3602
  %3617 = load i32, ptr %73, align 4
  %3618 = icmp ult i32 %3617, 144
  br i1 %3618, label %3619, label %3632

3619:                                             ; preds = %3616
  %3620 = load i32, ptr %14, align 4
  %3621 = icmp eq i32 %3620, 1
  br i1 %3621, label %3622, label %3724

3622:                                             ; preds = %3619
  %3623 = load i32, ptr %7, align 4
  %3624 = sub i32 7936, %3623
  %3625 = load i32, ptr %10, align 4
  %3626 = add i32 %3624, %3625
  %3627 = load ptr, ptr %3218, align 4
  %3628 = load ptr, ptr %3627, align 8
  %3629 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3628, i32 0, i32 3
  %3630 = load ptr, ptr %3629, align 4
  %3631 = shl i32 %3626, 2
  tail call void %3630(ptr noundef %3627, i32 noundef %3631, i32 noundef 65600) #6
  br label %3658

3632:                                             ; preds = %3616
  %3633 = icmp ult i32 %3617, 160
  %3634 = load i32, ptr %14, align 4
  %3635 = icmp eq i32 %3634, 1
  br i1 %3633, label %3636, label %3647

3636:                                             ; preds = %3632
  br i1 %3635, label %3637, label %3671

3637:                                             ; preds = %3636
  %3638 = load i32, ptr %7, align 4
  %3639 = sub i32 7936, %3638
  %3640 = load i32, ptr %10, align 4
  %3641 = add i32 %3639, %3640
  %3642 = load ptr, ptr %3218, align 4
  %3643 = load ptr, ptr %3642, align 8
  %3644 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3643, i32 0, i32 3
  %3645 = load ptr, ptr %3644, align 4
  %3646 = shl i32 %3641, 2
  tail call void %3645(ptr noundef %3642, i32 noundef %3646, i32 noundef 3735616) #6
  br label %3658

3647:                                             ; preds = %3632
  br i1 %3635, label %3648, label %3671

3648:                                             ; preds = %3647
  %3649 = load i32, ptr %7, align 4
  %3650 = sub i32 7936, %3649
  %3651 = load i32, ptr %10, align 4
  %3652 = add i32 %3650, %3651
  %3653 = load ptr, ptr %3218, align 4
  %3654 = load ptr, ptr %3653, align 8
  %3655 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3654, i32 0, i32 3
  %3656 = load ptr, ptr %3655, align 4
  %3657 = shl i32 %3652, 2
  tail call void %3656(ptr noundef %3653, i32 noundef %3657, i32 noundef 3997760) #6
  br label %3658

3658:                                             ; preds = %3648, %3637, %3622
  %3659 = load i32, ptr %14, align 4
  %3660 = icmp eq i32 %3659, 1
  br i1 %3660, label %3661, label %3671

3661:                                             ; preds = %3658
  %3662 = load i32, ptr %7, align 4
  %3663 = sub i32 7938, %3662
  %3664 = load i32, ptr %10, align 4
  %3665 = add i32 %3663, %3664
  %3666 = load ptr, ptr %3218, align 4
  %3667 = load ptr, ptr %3666, align 8
  %3668 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3667, i32 0, i32 3
  %3669 = load ptr, ptr %3668, align 4
  %3670 = shl i32 %3665, 2
  tail call void %3669(ptr noundef %3666, i32 noundef %3670, i32 noundef 34) #6
  br label %3671

3671:                                             ; preds = %3661, %3658, %3647, %3636
  %3672 = load i32, ptr %73, align 4
  %3673 = icmp ugt i32 %3672, 159
  br i1 %3673, label %3674, label %3722

3674:                                             ; preds = %3671
  store i32 7940, ptr %7, align 4
  %3675 = load i32, ptr %8, align 4
  store i32 %3675, ptr %10, align 4
  %3676 = add i32 %3675, 3
  store i32 %3676, ptr %8, align 4
  %3677 = load ptr, ptr %12, align 4
  %3678 = load i32, ptr %14, align 4
  %3679 = icmp eq i32 %3678, 0
  br i1 %3679, label %3682, label %3680

3680:                                             ; preds = %3674
  %3681 = add i32 %3675, 4
  br label %3700

3682:                                             ; preds = %3674
  %3683 = load i32, ptr %3216, align 4
  %3684 = load i32, ptr %3217, align 4
  %3685 = icmp eq i32 %3683, %3684
  br i1 %3685, label %3686, label %3687, !prof !8

3686:                                             ; preds = %3682
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3687:                                             ; preds = %3682
  %3688 = add i32 %3683, 1
  store i32 %3688, ptr %3216, align 4
  %3689 = getelementptr i32, ptr %3677, i32 %3683
  store i32 1253124, ptr %3689, align 4
  %3690 = load i32, ptr %14, align 4
  %3691 = load i32, ptr %8, align 4
  %3692 = load ptr, ptr %12, align 4
  store i32 7944, ptr %7, align 4
  store i32 %3691, ptr %10, align 4
  %3693 = add i32 %3691, 1
  store i32 %3693, ptr %8, align 4
  %3694 = icmp eq i32 %3690, 0
  br i1 %3694, label %3695, label %3700

3695:                                             ; preds = %3687
  %3696 = load i32, ptr %3216, align 4
  %3697 = load i32, ptr %3217, align 4
  %3698 = icmp eq i32 %3696, %3697
  br i1 %3698, label %3699, label %3703, !prof !8

3699:                                             ; preds = %3695
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3700:                                             ; preds = %3687, %3680
  %3701 = phi i32 [ %3681, %3680 ], [ %3693, %3687 ]
  store i32 7947, ptr %7, align 4
  store i32 %3701, ptr %10, align 4
  %3702 = add i32 %3701, 1
  store i32 %3702, ptr %8, align 4
  br label %3719

3703:                                             ; preds = %3695
  %3704 = add i32 %3696, 1
  store i32 %3704, ptr %3216, align 4
  %3705 = getelementptr i32, ptr %3692, i32 %3696
  store i32 1122056, ptr %3705, align 4
  %3706 = load i32, ptr %8, align 4
  %3707 = load ptr, ptr %12, align 4
  %3708 = load i32, ptr %14, align 4
  store i32 7947, ptr %7, align 4
  store i32 %3706, ptr %10, align 4
  %3709 = add i32 %3706, 1
  store i32 %3709, ptr %8, align 4
  %3710 = icmp eq i32 %3708, 0
  br i1 %3710, label %3711, label %3719

3711:                                             ; preds = %3703
  %3712 = load i32, ptr %3216, align 4
  %3713 = load i32, ptr %3217, align 4
  %3714 = icmp eq i32 %3712, %3713
  br i1 %3714, label %3715, label %3716, !prof !8

3715:                                             ; preds = %3711
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3716:                                             ; preds = %3711
  %3717 = add i32 %3712, 1
  store i32 %3717, ptr %3216, align 4
  %3718 = getelementptr i32, ptr %3707, i32 %3712
  store i32 1122059, ptr %3718, align 4
  br label %3719

3719:                                             ; preds = %3716, %3703, %3700
  %3720 = load i32, ptr %73, align 4
  %3721 = icmp ult i32 %3720, 160
  br i1 %3721, label %3722, label %3738

3722:                                             ; preds = %3719, %3671
  %3723 = load i32, ptr %14, align 4
  br label %3724

3724:                                             ; preds = %3722, %3619
  %3725 = phi i32 [ %3723, %3722 ], [ %3620, %3619 ]
  store i32 8000, ptr %7, align 4
  %3726 = load i32, ptr %8, align 4
  store i32 %3726, ptr %10, align 4
  %3727 = add i32 %3726, 9
  store i32 %3727, ptr %8, align 4
  %3728 = load ptr, ptr %12, align 4
  %3729 = icmp eq i32 %3725, 0
  br i1 %3729, label %3730, label %3765

3730:                                             ; preds = %3724
  %3731 = load i32, ptr %3216, align 4
  %3732 = load i32, ptr %3217, align 4
  %3733 = icmp eq i32 %3731, %3732
  br i1 %3733, label %3734, label %3735, !prof !8

3734:                                             ; preds = %3730
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3735:                                             ; preds = %3730
  %3736 = add i32 %3731, 1
  store i32 %3736, ptr %3216, align 4
  %3737 = getelementptr i32, ptr %3728, i32 %3731
  store i32 1646400, ptr %3737, align 4
  br label %3765

3738:                                             ; preds = %3719
  store i32 8000, ptr %7, align 4
  %3739 = load i32, ptr %8, align 4
  store i32 %3739, ptr %10, align 4
  %3740 = add i32 %3739, 21
  store i32 %3740, ptr %8, align 4
  %3741 = load ptr, ptr %12, align 4
  %3742 = load i32, ptr %14, align 4
  %3743 = icmp eq i32 %3742, 0
  br i1 %3743, label %3744, label %3765

3744:                                             ; preds = %3738
  %3745 = load i32, ptr %3216, align 4
  %3746 = load i32, ptr %3217, align 4
  %3747 = icmp eq i32 %3745, %3746
  br i1 %3747, label %3748, label %3749, !prof !8

3748:                                             ; preds = %3744
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3749:                                             ; preds = %3744
  %3750 = add i32 %3745, 1
  store i32 %3750, ptr %3216, align 4
  %3751 = getelementptr i32, ptr %3741, i32 %3745
  store i32 2097173, ptr %3751, align 4
  %3752 = load i32, ptr %7, align 4
  %3753 = load i32, ptr %14, align 4
  %3754 = or i32 %3752, 1048576
  %3755 = load ptr, ptr %12, align 4
  %3756 = icmp eq i32 %3753, 0
  br i1 %3756, label %3757, label %3765

3757:                                             ; preds = %3749
  %3758 = load i32, ptr %3216, align 4
  %3759 = load i32, ptr %3217, align 4
  %3760 = icmp eq i32 %3758, %3759
  br i1 %3760, label %3761, label %3762, !prof !8

3761:                                             ; preds = %3757
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3762:                                             ; preds = %3757
  %3763 = add i32 %3758, 1
  store i32 %3763, ptr %3216, align 4
  %3764 = getelementptr i32, ptr %3755, i32 %3758
  store i32 %3754, ptr %3764, align 4
  br label %3765

3765:                                             ; preds = %3762, %3749, %3738, %3735, %3724
  %3766 = load i32, ptr %73, align 4
  %3767 = icmp eq i32 %3766, 152
  br i1 %3767, label %3768, label %3781

3768:                                             ; preds = %3765
  %3769 = load i32, ptr %14, align 4
  %3770 = icmp eq i32 %3769, 1
  br i1 %3770, label %3771, label %3856

3771:                                             ; preds = %3768
  %3772 = load i32, ptr %7, align 4
  %3773 = sub i32 8002, %3772
  %3774 = load i32, ptr %10, align 4
  %3775 = add i32 %3773, %3774
  %3776 = load ptr, ptr %3218, align 4
  %3777 = load ptr, ptr %3776, align 8
  %3778 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3777, i32 0, i32 3
  %3779 = load ptr, ptr %3778, align 4
  %3780 = shl i32 %3775, 2
  tail call void %3779(ptr noundef %3776, i32 noundef %3780, i32 noundef 3670080) #6
  br label %3856

3781:                                             ; preds = %3765
  %3782 = icmp ult i32 %3766, 144
  br i1 %3782, label %3783, label %3796

3783:                                             ; preds = %3781
  %3784 = load i32, ptr %14, align 4
  %3785 = icmp eq i32 %3784, 1
  br i1 %3785, label %3786, label %3856

3786:                                             ; preds = %3783
  %3787 = load i32, ptr %7, align 4
  %3788 = sub i32 8002, %3787
  %3789 = load i32, ptr %10, align 4
  %3790 = add i32 %3788, %3789
  %3791 = load ptr, ptr %3218, align 4
  %3792 = load ptr, ptr %3791, align 8
  %3793 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3792, i32 0, i32 3
  %3794 = load ptr, ptr %3793, align 4
  %3795 = shl i32 %3790, 2
  tail call void %3794(ptr noundef %3791, i32 noundef %3795, i32 noundef 65600) #6
  br label %3843

3796:                                             ; preds = %3781
  %3797 = icmp ult i32 %3766, 160
  br i1 %3797, label %3798, label %3811

3798:                                             ; preds = %3796
  %3799 = load i32, ptr %14, align 4
  %3800 = icmp eq i32 %3799, 1
  br i1 %3800, label %3801, label %3856

3801:                                             ; preds = %3798
  %3802 = load i32, ptr %7, align 4
  %3803 = sub i32 8002, %3802
  %3804 = load i32, ptr %10, align 4
  %3805 = add i32 %3803, %3804
  %3806 = load ptr, ptr %3218, align 4
  %3807 = load ptr, ptr %3806, align 8
  %3808 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3807, i32 0, i32 3
  %3809 = load ptr, ptr %3808, align 4
  %3810 = shl i32 %3805, 2
  tail call void %3809(ptr noundef %3806, i32 noundef %3810, i32 noundef 3735616) #6
  br label %3843

3811:                                             ; preds = %3796
  %3812 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 33
  %3813 = load ptr, ptr %3812, align 8
  %3814 = getelementptr inbounds %struct.nvkm_fb, ptr %3813, i32 0, i32 3
  %3815 = load ptr, ptr %3814, align 4
  %3816 = getelementptr inbounds %struct.nvkm_ram, ptr %3815, i32 0, i32 2
  %3817 = load i32, ptr %3816, align 8
  %3818 = icmp eq i32 %3817, 10
  %3819 = load i32, ptr %14, align 4
  %3820 = icmp eq i32 %3819, 1
  br i1 %3818, label %3832, label %3821

3821:                                             ; preds = %3811
  br i1 %3820, label %3822, label %3856

3822:                                             ; preds = %3821
  %3823 = load i32, ptr %7, align 4
  %3824 = sub i32 8002, %3823
  %3825 = load i32, ptr %10, align 4
  %3826 = add i32 %3824, %3825
  %3827 = load ptr, ptr %3218, align 4
  %3828 = load ptr, ptr %3827, align 8
  %3829 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3828, i32 0, i32 3
  %3830 = load ptr, ptr %3829, align 4
  %3831 = shl i32 %3826, 2
  tail call void %3830(ptr noundef %3827, i32 noundef %3831, i32 noundef 3997760) #6
  br label %3843

3832:                                             ; preds = %3811
  br i1 %3820, label %3833, label %3856

3833:                                             ; preds = %3832
  %3834 = load i32, ptr %7, align 4
  %3835 = sub i32 8002, %3834
  %3836 = load i32, ptr %10, align 4
  %3837 = add i32 %3835, %3836
  %3838 = load ptr, ptr %3218, align 4
  %3839 = load ptr, ptr %3838, align 8
  %3840 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3839, i32 0, i32 3
  %3841 = load ptr, ptr %3840, align 4
  %3842 = shl i32 %3837, 2
  tail call void %3841(ptr noundef %3838, i32 noundef %3842, i32 noundef 3932224) #6
  br label %3843

3843:                                             ; preds = %3833, %3822, %3801, %3786
  %3844 = load i32, ptr %14, align 4
  %3845 = icmp eq i32 %3844, 1
  br i1 %3845, label %3846, label %3856

3846:                                             ; preds = %3843
  %3847 = load i32, ptr %7, align 4
  %3848 = sub i32 8003, %3847
  %3849 = load i32, ptr %10, align 4
  %3850 = add i32 %3848, %3849
  %3851 = load ptr, ptr %3218, align 4
  %3852 = load ptr, ptr %3851, align 8
  %3853 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3852, i32 0, i32 3
  %3854 = load ptr, ptr %3853, align 4
  %3855 = shl i32 %3850, 2
  tail call void %3854(ptr noundef %3851, i32 noundef %3855, i32 noundef 34) #6
  br label %3856

3856:                                             ; preds = %3846, %3843, %3832, %3821, %3798, %3783, %3771, %3768
  br label %3857

3857:                                             ; preds = %5325, %3856
  %3858 = phi i32 [ %5326, %5325 ], [ 0, %3856 ]
  %3859 = shl nuw nsw i32 1, %3858
  %3860 = and i32 %3859, %6
  %3861 = icmp eq i32 %3860, 0
  br i1 %3861, label %5325, label %3862

3862:                                             ; preds = %3857
  %3863 = load i32, ptr %73, align 4
  %3864 = icmp ult i32 %3863, 160
  %3865 = select i1 %3864, i32 12, i32 11
  %3866 = shl i32 %3858, %3865
  %3867 = select i1 %3864, i32 4230144, i32 4227200
  %3868 = add i32 %3866, %3867
  %3869 = add i32 %3868, -4194304
  %3870 = lshr exact i32 %3869, 2
  store i32 %3870, ptr %7, align 4
  %3871 = load i32, ptr %8, align 4
  store i32 %3871, ptr %10, align 4
  %3872 = add i32 %3871, 1
  store i32 %3872, ptr %8, align 4
  %3873 = or i32 %3870, 1114112
  %3874 = load ptr, ptr %12, align 4
  %3875 = load i32, ptr %14, align 4
  %3876 = icmp eq i32 %3875, 0
  br i1 %3876, label %3877, label %3886

3877:                                             ; preds = %3862
  %3878 = load i32, ptr %3216, align 4
  %3879 = load i32, ptr %3217, align 4
  %3880 = icmp eq i32 %3878, %3879
  br i1 %3880, label %3881, label %3882, !prof !8

3881:                                             ; preds = %3877
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3882:                                             ; preds = %3877
  %3883 = add i32 %3878, 1
  store i32 %3883, ptr %3216, align 4
  %3884 = getelementptr i32, ptr %3874, i32 %3878
  store i32 %3873, ptr %3884, align 4
  %3885 = load i32, ptr %14, align 4
  br label %3886

3886:                                             ; preds = %3882, %3862
  %3887 = phi i32 [ %3875, %3862 ], [ %3885, %3882 ]
  %3888 = icmp eq i32 %3887, 1
  br i1 %3888, label %3889, label %3900

3889:                                             ; preds = %3886
  %3890 = load i32, ptr %7, align 4
  %3891 = sub i32 %3870, %3890
  %3892 = load i32, ptr %10, align 4
  %3893 = add i32 %3891, %3892
  %3894 = load ptr, ptr %3218, align 4
  %3895 = load ptr, ptr %3894, align 8
  %3896 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3895, i32 0, i32 3
  %3897 = load ptr, ptr %3896, align 4
  %3898 = shl i32 %3893, 2
  tail call void %3897(ptr noundef %3894, i32 noundef %3898, i32 noundef 65290) #6
  %3899 = load i32, ptr %14, align 4
  br label %3900

3900:                                             ; preds = %3889, %3886
  %3901 = phi i32 [ %3887, %3886 ], [ %3899, %3889 ]
  %3902 = add i32 %3868, -4194296
  %3903 = lshr exact i32 %3902, 2
  store i32 %3903, ptr %7, align 4
  %3904 = load i32, ptr %8, align 4
  store i32 %3904, ptr %10, align 4
  %3905 = add i32 %3904, 1
  store i32 %3905, ptr %8, align 4
  %3906 = or i32 %3903, 1114112
  %3907 = load ptr, ptr %12, align 4
  %3908 = icmp eq i32 %3901, 0
  br i1 %3908, label %3909, label %3917

3909:                                             ; preds = %3900
  %3910 = load i32, ptr %3216, align 4
  %3911 = load i32, ptr %3217, align 4
  %3912 = icmp eq i32 %3910, %3911
  br i1 %3912, label %3913, label %3914, !prof !8

3913:                                             ; preds = %3909
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3914:                                             ; preds = %3909
  %3915 = add i32 %3910, 1
  store i32 %3915, ptr %3216, align 4
  %3916 = getelementptr i32, ptr %3907, i32 %3910
  store i32 %3906, ptr %3916, align 4
  br label %3917

3917:                                             ; preds = %3914, %3900
  %3918 = load i32, ptr %73, align 4
  %3919 = icmp ult i32 %3918, 160
  br label %3920

3920:                                             ; preds = %4250, %3917
  %3921 = phi i32 [ %3918, %3917 ], [ %4251, %4250 ]
  %3922 = phi i1 [ %3919, %3917 ], [ %4253, %4250 ]
  %3923 = phi i32 [ 0, %3917 ], [ %4252, %4250 ]
  %3924 = shl i32 16777216, %3923
  %3925 = and i32 %3924, %6
  %3926 = icmp eq i32 %3925, 0
  br i1 %3926, label %4250, label %3927

3927:                                             ; preds = %3920
  %3928 = shl i32 %3923, 7
  %3929 = select i1 %3922, i32 4227584, i32 4227328
  %3930 = add i32 %3928, %3866
  %3931 = add i32 %3930, %3929
  %3932 = add i32 %3931, -4194304
  %3933 = lshr exact i32 %3932, 2
  store i32 %3933, ptr %7, align 4
  %3934 = load i32, ptr %8, align 4
  store i32 %3934, ptr %10, align 4
  %3935 = add i32 %3934, 32
  store i32 %3935, ptr %8, align 4
  %3936 = load ptr, ptr %12, align 4
  %3937 = load i32, ptr %14, align 4
  %3938 = icmp eq i32 %3937, 0
  br i1 %3938, label %3939, label %3961

3939:                                             ; preds = %3927
  %3940 = load i32, ptr %3216, align 4
  %3941 = load i32, ptr %3217, align 4
  %3942 = icmp eq i32 %3940, %3941
  br i1 %3942, label %3943, label %3944, !prof !8

3943:                                             ; preds = %3939
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3944:                                             ; preds = %3939
  %3945 = add i32 %3940, 1
  store i32 %3945, ptr %3216, align 4
  %3946 = getelementptr i32, ptr %3936, i32 %3940
  store i32 2097184, ptr %3946, align 4
  %3947 = load i32, ptr %7, align 4
  %3948 = load i32, ptr %14, align 4
  %3949 = or i32 %3947, 1048576
  %3950 = load ptr, ptr %12, align 4
  %3951 = icmp eq i32 %3948, 0
  br i1 %3951, label %3952, label %3961

3952:                                             ; preds = %3944
  %3953 = load i32, ptr %3216, align 4
  %3954 = load i32, ptr %3217, align 4
  %3955 = icmp eq i32 %3953, %3954
  br i1 %3955, label %3956, label %3957, !prof !8

3956:                                             ; preds = %3952
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

3957:                                             ; preds = %3952
  %3958 = add i32 %3953, 1
  store i32 %3958, ptr %3216, align 4
  %3959 = getelementptr i32, ptr %3950, i32 %3953
  store i32 %3949, ptr %3959, align 4
  %3960 = load i32, ptr %14, align 4
  br label %3961

3961:                                             ; preds = %3957, %3944, %3927
  %3962 = phi i32 [ %3948, %3944 ], [ %3960, %3957 ], [ %3937, %3927 ]
  %3963 = icmp eq i32 %3962, 1
  br i1 %3963, label %3964, label %4016

3964:                                             ; preds = %3961
  %3965 = load i32, ptr %7, align 4
  %3966 = sub i32 %3933, %3965
  %3967 = load i32, ptr %10, align 4
  %3968 = add i32 %3966, %3967
  %3969 = load ptr, ptr %3218, align 4
  %3970 = load ptr, ptr %3969, align 8
  %3971 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3970, i32 0, i32 3
  %3972 = load ptr, ptr %3971, align 4
  %3973 = shl i32 %3968, 2
  tail call void %3972(ptr noundef %3969, i32 noundef %3973, i32 noundef 25165824) #6
  %3974 = load i32, ptr %14, align 4
  %3975 = icmp eq i32 %3974, 1
  br i1 %3975, label %3976, label %4016

3976:                                             ; preds = %3964
  %3977 = add i32 %3931, -4194300
  %3978 = lshr exact i32 %3977, 2
  %3979 = load i32, ptr %7, align 4
  %3980 = sub i32 %3978, %3979
  %3981 = load i32, ptr %10, align 4
  %3982 = add i32 %3980, %3981
  %3983 = load ptr, ptr %3218, align 4
  %3984 = load ptr, ptr %3983, align 8
  %3985 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3984, i32 0, i32 3
  %3986 = load ptr, ptr %3985, align 4
  %3987 = shl i32 %3982, 2
  tail call void %3986(ptr noundef %3983, i32 noundef %3987, i32 noundef 1441792) #6
  %3988 = load i32, ptr %14, align 4
  %3989 = icmp eq i32 %3988, 1
  br i1 %3989, label %3990, label %4016

3990:                                             ; preds = %3976
  %3991 = add i32 %3931, -4194296
  %3992 = lshr exact i32 %3991, 2
  %3993 = load i32, ptr %7, align 4
  %3994 = sub i32 %3992, %3993
  %3995 = load i32, ptr %10, align 4
  %3996 = add i32 %3994, %3995
  %3997 = load ptr, ptr %3218, align 4
  %3998 = load ptr, ptr %3997, align 8
  %3999 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3998, i32 0, i32 3
  %4000 = load ptr, ptr %3999, align 4
  %4001 = shl i32 %3996, 2
  tail call void %4000(ptr noundef %3997, i32 noundef %4001, i32 noundef 25165824) #6
  %4002 = load i32, ptr %14, align 4
  %4003 = icmp eq i32 %4002, 1
  br i1 %4003, label %4004, label %4016

4004:                                             ; preds = %3990
  %4005 = add i32 %3931, -4194280
  %4006 = lshr exact i32 %4005, 2
  %4007 = load i32, ptr %7, align 4
  %4008 = sub i32 %4006, %4007
  %4009 = load i32, ptr %10, align 4
  %4010 = add i32 %4008, %4009
  %4011 = load ptr, ptr %3218, align 4
  %4012 = load ptr, ptr %4011, align 8
  %4013 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4012, i32 0, i32 3
  %4014 = load ptr, ptr %4013, align 4
  %4015 = shl i32 %4010, 2
  tail call void %4014(ptr noundef %4011, i32 noundef %4015, i32 noundef 262143) #6
  br label %4016

4016:                                             ; preds = %4004, %3990, %3976, %3964, %3961
  %4017 = load i32, ptr %73, align 4
  switch i32 %4017, label %4123 [
    i32 80, label %4018
    i32 132, label %4033
    i32 134, label %4048
    i32 146, label %4063
    i32 150, label %4063
    i32 152, label %4063
    i32 148, label %4078
    i32 160, label %4093
    i32 165, label %4093
    i32 163, label %4108
    i32 168, label %4108
    i32 170, label %4108
    i32 172, label %4108
    i32 175, label %4108
  ]

4018:                                             ; preds = %4016
  %4019 = load i32, ptr %14, align 4
  %4020 = icmp eq i32 %4019, 1
  br i1 %4020, label %4021, label %4250

4021:                                             ; preds = %4018
  %4022 = add i32 %3931, -4194276
  %4023 = lshr exact i32 %4022, 2
  %4024 = load i32, ptr %7, align 4
  %4025 = sub i32 %4023, %4024
  %4026 = load i32, ptr %10, align 4
  %4027 = add i32 %4025, %4026
  %4028 = load ptr, ptr %3218, align 4
  %4029 = load ptr, ptr %4028, align 8
  %4030 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4029, i32 0, i32 3
  %4031 = load ptr, ptr %4030, align 4
  %4032 = shl i32 %4027, 2
  tail call void %4031(ptr noundef %4028, i32 noundef %4032, i32 noundef 524288) #6
  br label %4123

4033:                                             ; preds = %4016
  %4034 = load i32, ptr %14, align 4
  %4035 = icmp eq i32 %4034, 1
  br i1 %4035, label %4036, label %4250

4036:                                             ; preds = %4033
  %4037 = add i32 %3931, -4194276
  %4038 = lshr exact i32 %4037, 2
  %4039 = load i32, ptr %7, align 4
  %4040 = sub i32 %4038, %4039
  %4041 = load i32, ptr %10, align 4
  %4042 = add i32 %4040, %4041
  %4043 = load ptr, ptr %3218, align 4
  %4044 = load ptr, ptr %4043, align 8
  %4045 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4044, i32 0, i32 3
  %4046 = load ptr, ptr %4045, align 4
  %4047 = shl i32 %4042, 2
  tail call void %4046(ptr noundef %4043, i32 noundef %4047, i32 noundef 8912896) #6
  br label %4123

4048:                                             ; preds = %4016
  %4049 = load i32, ptr %14, align 4
  %4050 = icmp eq i32 %4049, 1
  br i1 %4050, label %4051, label %4250

4051:                                             ; preds = %4048
  %4052 = add i32 %3931, -4194276
  %4053 = lshr exact i32 %4052, 2
  %4054 = load i32, ptr %7, align 4
  %4055 = sub i32 %4053, %4054
  %4056 = load i32, ptr %10, align 4
  %4057 = add i32 %4055, %4056
  %4058 = load ptr, ptr %3218, align 4
  %4059 = load ptr, ptr %4058, align 8
  %4060 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4059, i32 0, i32 3
  %4061 = load ptr, ptr %4060, align 4
  %4062 = shl i32 %4057, 2
  tail call void %4061(ptr noundef %4058, i32 noundef %4062, i32 noundef 25952256) #6
  br label %4123

4063:                                             ; preds = %4016, %4016, %4016
  %4064 = load i32, ptr %14, align 4
  %4065 = icmp eq i32 %4064, 1
  br i1 %4065, label %4066, label %4138

4066:                                             ; preds = %4063
  %4067 = add i32 %3931, -4194276
  %4068 = lshr exact i32 %4067, 2
  %4069 = load i32, ptr %7, align 4
  %4070 = sub i32 %4068, %4069
  %4071 = load i32, ptr %10, align 4
  %4072 = add i32 %4070, %4071
  %4073 = load ptr, ptr %3218, align 4
  %4074 = load ptr, ptr %4073, align 8
  %4075 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4074, i32 0, i32 3
  %4076 = load ptr, ptr %4075, align 4
  %4077 = shl i32 %4072, 2
  tail call void %4076(ptr noundef %4073, i32 noundef %4077, i32 noundef 294387712) #6
  br label %4123

4078:                                             ; preds = %4016
  %4079 = load i32, ptr %14, align 4
  %4080 = icmp eq i32 %4079, 1
  br i1 %4080, label %4081, label %4250

4081:                                             ; preds = %4078
  %4082 = add i32 %3931, -4194276
  %4083 = lshr exact i32 %4082, 2
  %4084 = load i32, ptr %7, align 4
  %4085 = sub i32 %4083, %4084
  %4086 = load i32, ptr %10, align 4
  %4087 = add i32 %4085, %4086
  %4088 = load ptr, ptr %3218, align 4
  %4089 = load ptr, ptr %4088, align 8
  %4090 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4089, i32 0, i32 3
  %4091 = load ptr, ptr %4090, align 4
  %4092 = shl i32 %4087, 2
  tail call void %4091(ptr noundef %4088, i32 noundef %4092, i32 noundef 277348352) #6
  br label %4123

4093:                                             ; preds = %4016, %4016
  %4094 = load i32, ptr %14, align 4
  %4095 = icmp eq i32 %4094, 1
  br i1 %4095, label %4096, label %4138

4096:                                             ; preds = %4093
  %4097 = add i32 %3931, -4194276
  %4098 = lshr exact i32 %4097, 2
  %4099 = load i32, ptr %7, align 4
  %4100 = sub i32 %4098, %4099
  %4101 = load i32, ptr %10, align 4
  %4102 = add i32 %4100, %4101
  %4103 = load ptr, ptr %3218, align 4
  %4104 = load ptr, ptr %4103, align 8
  %4105 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4104, i32 0, i32 3
  %4106 = load ptr, ptr %4105, align 4
  %4107 = shl i32 %4102, 2
  tail call void %4106(ptr noundef %4103, i32 noundef %4107, i32 noundef 822870016) #6
  br label %4123

4108:                                             ; preds = %4016, %4016, %4016, %4016, %4016
  %4109 = load i32, ptr %14, align 4
  %4110 = icmp eq i32 %4109, 1
  br i1 %4110, label %4111, label %4138

4111:                                             ; preds = %4108
  %4112 = add i32 %3931, -4194276
  %4113 = lshr exact i32 %4112, 2
  %4114 = load i32, ptr %7, align 4
  %4115 = sub i32 %4113, %4114
  %4116 = load i32, ptr %10, align 4
  %4117 = add i32 %4115, %4116
  %4118 = load ptr, ptr %3218, align 4
  %4119 = load ptr, ptr %4118, align 8
  %4120 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4119, i32 0, i32 3
  %4121 = load ptr, ptr %4120, align 4
  %4122 = shl i32 %4117, 2
  tail call void %4121(ptr noundef %4118, i32 noundef %4122, i32 noundef 806092800) #6
  br label %4123

4123:                                             ; preds = %4111, %4096, %4081, %4066, %4051, %4036, %4021, %4016
  %4124 = load i32, ptr %14, align 4
  %4125 = icmp eq i32 %4124, 1
  br i1 %4125, label %4126, label %4138

4126:                                             ; preds = %4123
  %4127 = add i32 %3931, -4194240
  %4128 = lshr exact i32 %4127, 2
  %4129 = load i32, ptr %7, align 4
  %4130 = sub i32 %4128, %4129
  %4131 = load i32, ptr %10, align 4
  %4132 = add i32 %4130, %4131
  %4133 = load ptr, ptr %3218, align 4
  %4134 = load ptr, ptr %4133, align 8
  %4135 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4134, i32 0, i32 3
  %4136 = load ptr, ptr %4135, align 4
  %4137 = shl i32 %4132, 2
  tail call void %4136(ptr noundef %4133, i32 noundef %4137, i32 noundef 66561) #6
  br label %4138

4138:                                             ; preds = %4126, %4123, %4108, %4093, %4063
  %4139 = load i32, ptr %73, align 4
  %4140 = icmp eq i32 %4139, 80
  %4141 = load i32, ptr %14, align 4
  %4142 = icmp eq i32 %4141, 1
  br i1 %4140, label %4143, label %4156

4143:                                             ; preds = %4138
  br i1 %4142, label %4144, label %4229

4144:                                             ; preds = %4143
  %4145 = add i32 %3931, -4194232
  %4146 = lshr exact i32 %4145, 2
  %4147 = load i32, ptr %7, align 4
  %4148 = sub i32 %4146, %4147
  %4149 = load i32, ptr %10, align 4
  %4150 = add i32 %4148, %4149
  %4151 = load ptr, ptr %3218, align 4
  %4152 = load ptr, ptr %4151, align 8
  %4153 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4152, i32 0, i32 3
  %4154 = load ptr, ptr %4153, align 4
  %4155 = shl i32 %4150, 2
  tail call void %4154(ptr noundef %4151, i32 noundef %4155, i32 noundef 64) #6
  br label %4169

4156:                                             ; preds = %4138
  br i1 %4142, label %4157, label %4229

4157:                                             ; preds = %4156
  %4158 = add i32 %3931, -4194232
  %4159 = lshr exact i32 %4158, 2
  %4160 = load i32, ptr %7, align 4
  %4161 = sub i32 %4159, %4160
  %4162 = load i32, ptr %10, align 4
  %4163 = add i32 %4161, %4162
  %4164 = load ptr, ptr %3218, align 4
  %4165 = load ptr, ptr %4164, align 8
  %4166 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4165, i32 0, i32 3
  %4167 = load ptr, ptr %4166, align 4
  %4168 = shl i32 %4163, 2
  tail call void %4167(ptr noundef %4164, i32 noundef %4168, i32 noundef 120) #6
  br label %4169

4169:                                             ; preds = %4157, %4144
  %4170 = load i32, ptr %14, align 4
  %4171 = icmp eq i32 %4170, 1
  br i1 %4171, label %4172, label %4198

4172:                                             ; preds = %4169
  %4173 = add i32 %3931, -4194224
  %4174 = lshr exact i32 %4173, 2
  %4175 = load i32, ptr %7, align 4
  %4176 = sub i32 %4174, %4175
  %4177 = load i32, ptr %10, align 4
  %4178 = add i32 %4176, %4177
  %4179 = load ptr, ptr %3218, align 4
  %4180 = load ptr, ptr %4179, align 8
  %4181 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4180, i32 0, i32 3
  %4182 = load ptr, ptr %4181, align 4
  %4183 = shl i32 %4178, 2
  tail call void %4182(ptr noundef %4179, i32 noundef %4183, i32 noundef 191) #6
  %4184 = load i32, ptr %14, align 4
  %4185 = icmp eq i32 %4184, 1
  br i1 %4185, label %4186, label %4198

4186:                                             ; preds = %4172
  %4187 = add i32 %3931, -4194216
  %4188 = lshr exact i32 %4187, 2
  %4189 = load i32, ptr %7, align 4
  %4190 = sub i32 %4188, %4189
  %4191 = load i32, ptr %10, align 4
  %4192 = add i32 %4190, %4191
  %4193 = load ptr, ptr %3218, align 4
  %4194 = load ptr, ptr %4193, align 8
  %4195 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4194, i32 0, i32 3
  %4196 = load ptr, ptr %4195, align 4
  %4197 = shl i32 %4192, 2
  tail call void %4196(ptr noundef %4193, i32 noundef %4197, i32 noundef 4624) #6
  br label %4198

4198:                                             ; preds = %4186, %4172, %4169
  %4199 = load i32, ptr %73, align 4
  %4200 = icmp eq i32 %4199, 80
  %4201 = load i32, ptr %14, align 4
  %4202 = icmp eq i32 %4201, 1
  br i1 %4200, label %4203, label %4216

4203:                                             ; preds = %4198
  br i1 %4202, label %4204, label %4250

4204:                                             ; preds = %4203
  %4205 = add i32 %3931, -4194212
  %4206 = lshr exact i32 %4205, 2
  %4207 = load i32, ptr %7, align 4
  %4208 = sub i32 %4206, %4207
  %4209 = load i32, ptr %10, align 4
  %4210 = add i32 %4208, %4209
  %4211 = load ptr, ptr %3218, align 4
  %4212 = load ptr, ptr %4211, align 8
  %4213 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4212, i32 0, i32 3
  %4214 = load ptr, ptr %4213, align 4
  %4215 = shl i32 %4210, 2
  tail call void %4214(ptr noundef %4211, i32 noundef %4215, i32 noundef 128) #6
  br label %4229

4216:                                             ; preds = %4198
  br i1 %4202, label %4217, label %4231

4217:                                             ; preds = %4216
  %4218 = add i32 %3931, -4194212
  %4219 = lshr exact i32 %4218, 2
  %4220 = load i32, ptr %7, align 4
  %4221 = sub i32 %4219, %4220
  %4222 = load i32, ptr %10, align 4
  %4223 = add i32 %4221, %4222
  %4224 = load ptr, ptr %3218, align 4
  %4225 = load ptr, ptr %4224, align 8
  %4226 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4225, i32 0, i32 3
  %4227 = load ptr, ptr %4226, align 4
  %4228 = shl i32 %4223, 2
  tail call void %4227(ptr noundef %4224, i32 noundef %4228, i32 noundef 134217856) #6
  br label %4229

4229:                                             ; preds = %4217, %4204, %4156, %4143
  %4230 = load i32, ptr %73, align 4
  br label %4231

4231:                                             ; preds = %4229, %4216
  %4232 = phi i32 [ %4230, %4229 ], [ %4199, %4216 ]
  %4233 = icmp ugt i32 %4232, 159
  br i1 %4233, label %4234, label %4250

4234:                                             ; preds = %4231
  %4235 = load i32, ptr %14, align 4
  %4236 = icmp eq i32 %4235, 1
  br i1 %4236, label %4237, label %4250

4237:                                             ; preds = %4234
  %4238 = add i32 %3931, -4194200
  %4239 = lshr exact i32 %4238, 2
  %4240 = load i32, ptr %7, align 4
  %4241 = sub i32 %4239, %4240
  %4242 = load i32, ptr %10, align 4
  %4243 = add i32 %4241, %4242
  %4244 = load ptr, ptr %3218, align 4
  %4245 = load ptr, ptr %4244, align 8
  %4246 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4245, i32 0, i32 3
  %4247 = load ptr, ptr %4246, align 4
  %4248 = shl i32 %4243, 2
  tail call void %4247(ptr noundef %4244, i32 noundef %4248, i32 noundef 62) #6
  %4249 = load i32, ptr %73, align 4
  br label %4250

4250:                                             ; preds = %4237, %4234, %4231, %4203, %4078, %4048, %4033, %4018, %3920
  %4251 = phi i32 [ 148, %4078 ], [ 134, %4048 ], [ 132, %4033 ], [ 80, %4018 ], [ %4249, %4237 ], [ %4232, %4234 ], [ %4232, %4231 ], [ %3921, %3920 ], [ 80, %4203 ]
  %4252 = add nuw nsw i32 %3923, 1
  %4253 = icmp ult i32 %4251, 160
  %4254 = select i1 %4253, i32 2, i32 4
  %4255 = icmp ult i32 %4252, %4254
  br i1 %4255, label %3920, label %4256

4256:                                             ; preds = %4250
  %4257 = add i32 %3866, 33536
  %4258 = lshr exact i32 %4257, 2
  store i32 %4258, ptr %7, align 4
  %4259 = load i32, ptr %8, align 4
  store i32 %4259, ptr %10, align 4
  br i1 %4253, label %4260, label %4274

4260:                                             ; preds = %4256
  %4261 = add i32 %4259, 4
  store i32 %4261, ptr %8, align 4
  %4262 = or i32 %4258, 1310720
  %4263 = load ptr, ptr %12, align 4
  %4264 = load i32, ptr %14, align 4
  %4265 = icmp eq i32 %4264, 0
  br i1 %4265, label %4266, label %4288

4266:                                             ; preds = %4260
  %4267 = load i32, ptr %3216, align 4
  %4268 = load i32, ptr %3217, align 4
  %4269 = icmp eq i32 %4267, %4268
  br i1 %4269, label %4270, label %4271, !prof !8

4270:                                             ; preds = %4266
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4271:                                             ; preds = %4266
  %4272 = add i32 %4267, 1
  store i32 %4272, ptr %3216, align 4
  %4273 = getelementptr i32, ptr %4263, i32 %4267
  store i32 %4262, ptr %4273, align 4
  br label %4288

4274:                                             ; preds = %4256
  %4275 = add i32 %4259, 5
  store i32 %4275, ptr %8, align 4
  %4276 = or i32 %4258, 1376256
  %4277 = load ptr, ptr %12, align 4
  %4278 = load i32, ptr %14, align 4
  %4279 = icmp eq i32 %4278, 0
  br i1 %4279, label %4280, label %4288

4280:                                             ; preds = %4274
  %4281 = load i32, ptr %3216, align 4
  %4282 = load i32, ptr %3217, align 4
  %4283 = icmp eq i32 %4281, %4282
  br i1 %4283, label %4284, label %4285, !prof !8

4284:                                             ; preds = %4280
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4285:                                             ; preds = %4280
  %4286 = add i32 %4281, 1
  store i32 %4286, ptr %3216, align 4
  %4287 = getelementptr i32, ptr %4277, i32 %4281
  store i32 %4276, ptr %4287, align 4
  br label %4288

4288:                                             ; preds = %4285, %4274, %4271, %4260
  %4289 = load i32, ptr %73, align 4
  %4290 = icmp eq i32 %4289, 80
  br i1 %4290, label %4291, label %4306

4291:                                             ; preds = %4288
  %4292 = load i32, ptr %14, align 4
  %4293 = icmp eq i32 %4292, 1
  br i1 %4293, label %4294, label %4360

4294:                                             ; preds = %4291
  %4295 = add i32 %3866, 33540
  %4296 = lshr exact i32 %4295, 2
  %4297 = load i32, ptr %7, align 4
  %4298 = sub i32 %4296, %4297
  %4299 = load i32, ptr %10, align 4
  %4300 = add i32 %4298, %4299
  %4301 = load ptr, ptr %3218, align 4
  %4302 = load ptr, ptr %4301, align 8
  %4303 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4302, i32 0, i32 3
  %4304 = load ptr, ptr %4303, align 4
  %4305 = shl i32 %4300, 2
  tail call void %4304(ptr noundef %4301, i32 noundef %4305, i32 noundef 28784) #6
  br label %4357

4306:                                             ; preds = %4288
  %4307 = icmp ult i32 %4289, 160
  br i1 %4307, label %4308, label %4323

4308:                                             ; preds = %4306
  %4309 = load i32, ptr %14, align 4
  %4310 = icmp eq i32 %4309, 1
  br i1 %4310, label %4311, label %4357

4311:                                             ; preds = %4308
  %4312 = add i32 %3866, 33540
  %4313 = lshr exact i32 %4312, 2
  %4314 = load i32, ptr %7, align 4
  %4315 = sub i32 %4313, %4314
  %4316 = load i32, ptr %10, align 4
  %4317 = add i32 %4315, %4316
  %4318 = load ptr, ptr %3218, align 4
  %4319 = load ptr, ptr %4318, align 8
  %4320 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4319, i32 0, i32 3
  %4321 = load ptr, ptr %4320, align 4
  %4322 = shl i32 %4317, 2
  tail call void %4321(ptr noundef %4318, i32 noundef %4322, i32 noundef 159856) #6
  br label %4357

4323:                                             ; preds = %4306
  %4324 = icmp ne i32 %4289, 160
  %4325 = icmp ult i32 %4289, 170
  %4326 = and i1 %4324, %4325
  %4327 = icmp eq i32 %4289, 175
  %4328 = or i1 %4327, %4326
  %4329 = load i32, ptr %14, align 4
  %4330 = icmp eq i32 %4329, 1
  br i1 %4328, label %4344, label %4331

4331:                                             ; preds = %4323
  br i1 %4330, label %4332, label %4357

4332:                                             ; preds = %4331
  %4333 = add i32 %3866, 33540
  %4334 = lshr exact i32 %4333, 2
  %4335 = load i32, ptr %7, align 4
  %4336 = sub i32 %4334, %4335
  %4337 = load i32, ptr %10, align 4
  %4338 = add i32 %4336, %4337
  %4339 = load ptr, ptr %3218, align 4
  %4340 = load ptr, ptr %4339, align 8
  %4341 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4340, i32 0, i32 3
  %4342 = load ptr, ptr %4341, align 4
  %4343 = shl i32 %4338, 2
  tail call void %4342(ptr noundef %4339, i32 noundef %4343, i32 noundef 17985648) #6
  br label %4357

4344:                                             ; preds = %4323
  br i1 %4330, label %4345, label %4357

4345:                                             ; preds = %4344
  %4346 = add i32 %3866, 33540
  %4347 = lshr exact i32 %4346, 2
  %4348 = load i32, ptr %7, align 4
  %4349 = sub i32 %4347, %4348
  %4350 = load i32, ptr %10, align 4
  %4351 = add i32 %4349, %4350
  %4352 = load ptr, ptr %3218, align 4
  %4353 = load ptr, ptr %4352, align 8
  %4354 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4353, i32 0, i32 3
  %4355 = load ptr, ptr %4354, align 4
  %4356 = shl i32 %4351, 2
  tail call void %4355(ptr noundef %4352, i32 noundef %4356, i32 noundef 85094512) #6
  br label %4357

4357:                                             ; preds = %4345, %4344, %4332, %4331, %4311, %4308, %4294
  %4358 = load i32, ptr %73, align 4
  %4359 = icmp ult i32 %4358, 160
  br i1 %4359, label %4360, label %4377

4360:                                             ; preds = %4357, %4291
  %4361 = add i32 %3866, 33560
  %4362 = lshr exact i32 %4361, 2
  store i32 %4362, ptr %7, align 4
  %4363 = load i32, ptr %8, align 4
  store i32 %4363, ptr %10, align 4
  %4364 = add i32 %4363, 1
  store i32 %4364, ptr %8, align 4
  %4365 = or i32 %4362, 1114112
  %4366 = load ptr, ptr %12, align 4
  %4367 = load i32, ptr %14, align 4
  %4368 = icmp eq i32 %4367, 0
  br i1 %4368, label %4369, label %4394

4369:                                             ; preds = %4360
  %4370 = load i32, ptr %3216, align 4
  %4371 = load i32, ptr %3217, align 4
  %4372 = icmp eq i32 %4370, %4371
  br i1 %4372, label %4373, label %4374, !prof !8

4373:                                             ; preds = %4369
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4374:                                             ; preds = %4369
  %4375 = add i32 %4370, 1
  store i32 %4375, ptr %3216, align 4
  %4376 = getelementptr i32, ptr %4366, i32 %4370
  store i32 %4365, ptr %4376, align 4
  br label %4394

4377:                                             ; preds = %4357
  %4378 = add i32 %3866, 33568
  %4379 = lshr exact i32 %4378, 2
  store i32 %4379, ptr %7, align 4
  %4380 = load i32, ptr %8, align 4
  store i32 %4380, ptr %10, align 4
  %4381 = add i32 %4380, 1
  store i32 %4381, ptr %8, align 4
  %4382 = or i32 %4379, 1114112
  %4383 = load ptr, ptr %12, align 4
  %4384 = load i32, ptr %14, align 4
  %4385 = icmp eq i32 %4384, 0
  br i1 %4385, label %4386, label %4394

4386:                                             ; preds = %4377
  %4387 = load i32, ptr %3216, align 4
  %4388 = load i32, ptr %3217, align 4
  %4389 = icmp eq i32 %4387, %4388
  br i1 %4389, label %4390, label %4391, !prof !8

4390:                                             ; preds = %4386
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4391:                                             ; preds = %4386
  %4392 = add i32 %4387, 1
  store i32 %4392, ptr %3216, align 4
  %4393 = getelementptr i32, ptr %4383, i32 %4387
  store i32 %4382, ptr %4393, align 4
  br label %4394

4394:                                             ; preds = %4391, %4377, %4374, %4360
  %4395 = load i32, ptr %73, align 4
  %4396 = icmp eq i32 %4395, 80
  br i1 %4396, label %4397, label %4412

4397:                                             ; preds = %4394
  %4398 = load i32, ptr %14, align 4
  %4399 = icmp eq i32 %4398, 1
  br i1 %4399, label %4400, label %4445

4400:                                             ; preds = %4397
  %4401 = add i32 %3866, 33560
  %4402 = lshr exact i32 %4401, 2
  %4403 = load i32, ptr %7, align 4
  %4404 = sub i32 %4402, %4403
  %4405 = load i32, ptr %10, align 4
  %4406 = add i32 %4404, %4405
  %4407 = load ptr, ptr %3218, align 4
  %4408 = load ptr, ptr %4407, align 8
  %4409 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4408, i32 0, i32 3
  %4410 = load ptr, ptr %4409, align 4
  %4411 = shl i32 %4406, 2
  tail call void %4410(ptr noundef %4407, i32 noundef %4411, i32 noundef 262143) #6
  br label %4442

4412:                                             ; preds = %4394
  %4413 = icmp ult i32 %4395, 160
  %4414 = load i32, ptr %14, align 4
  %4415 = icmp eq i32 %4414, 1
  br i1 %4413, label %4416, label %4429

4416:                                             ; preds = %4412
  br i1 %4415, label %4417, label %4442

4417:                                             ; preds = %4416
  %4418 = add i32 %3866, 33560
  %4419 = lshr exact i32 %4418, 2
  %4420 = load i32, ptr %7, align 4
  %4421 = sub i32 %4419, %4420
  %4422 = load i32, ptr %10, align 4
  %4423 = add i32 %4421, %4422
  %4424 = load ptr, ptr %3218, align 4
  %4425 = load ptr, ptr %4424, align 8
  %4426 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4425, i32 0, i32 3
  %4427 = load ptr, ptr %4426, align 4
  %4428 = shl i32 %4423, 2
  tail call void %4427(ptr noundef %4424, i32 noundef %4428, i32 noundef 67108863) #6
  br label %4442

4429:                                             ; preds = %4412
  br i1 %4415, label %4430, label %4442

4430:                                             ; preds = %4429
  %4431 = add i32 %3866, 33568
  %4432 = lshr exact i32 %4431, 2
  %4433 = load i32, ptr %7, align 4
  %4434 = sub i32 %4432, %4433
  %4435 = load i32, ptr %10, align 4
  %4436 = add i32 %4434, %4435
  %4437 = load ptr, ptr %3218, align 4
  %4438 = load ptr, ptr %4437, align 8
  %4439 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4438, i32 0, i32 3
  %4440 = load ptr, ptr %4439, align 4
  %4441 = shl i32 %4436, 2
  tail call void %4440(ptr noundef %4437, i32 noundef %4441, i32 noundef 134217727) #6
  br label %4442

4442:                                             ; preds = %4430, %4429, %4417, %4416, %4400
  %4443 = load i32, ptr %73, align 4
  %4444 = icmp ult i32 %4443, 160
  br i1 %4444, label %4445, label %4462

4445:                                             ; preds = %4442, %4397
  %4446 = add i32 %3866, 33572
  %4447 = lshr exact i32 %4446, 2
  store i32 %4447, ptr %7, align 4
  %4448 = load i32, ptr %8, align 4
  store i32 %4448, ptr %10, align 4
  %4449 = add i32 %4448, 5
  store i32 %4449, ptr %8, align 4
  %4450 = or i32 %4447, 1376256
  %4451 = load ptr, ptr %12, align 4
  %4452 = load i32, ptr %14, align 4
  %4453 = icmp eq i32 %4452, 0
  br i1 %4453, label %4454, label %4479

4454:                                             ; preds = %4445
  %4455 = load i32, ptr %3216, align 4
  %4456 = load i32, ptr %3217, align 4
  %4457 = icmp eq i32 %4455, %4456
  br i1 %4457, label %4458, label %4459, !prof !8

4458:                                             ; preds = %4454
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4459:                                             ; preds = %4454
  %4460 = add i32 %4455, 1
  store i32 %4460, ptr %3216, align 4
  %4461 = getelementptr i32, ptr %4451, i32 %4455
  store i32 %4450, ptr %4461, align 4
  br label %4479

4462:                                             ; preds = %4442
  %4463 = add i32 %3866, 33576
  %4464 = lshr exact i32 %4463, 2
  store i32 %4464, ptr %7, align 4
  %4465 = load i32, ptr %8, align 4
  store i32 %4465, ptr %10, align 4
  %4466 = add i32 %4465, 4
  store i32 %4466, ptr %8, align 4
  %4467 = or i32 %4464, 1310720
  %4468 = load ptr, ptr %12, align 4
  %4469 = load i32, ptr %14, align 4
  %4470 = icmp eq i32 %4469, 0
  br i1 %4470, label %4471, label %4479

4471:                                             ; preds = %4462
  %4472 = load i32, ptr %3216, align 4
  %4473 = load i32, ptr %3217, align 4
  %4474 = icmp eq i32 %4472, %4473
  br i1 %4474, label %4475, label %4476, !prof !8

4475:                                             ; preds = %4471
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4476:                                             ; preds = %4471
  %4477 = add i32 %4472, 1
  store i32 %4477, ptr %3216, align 4
  %4478 = getelementptr i32, ptr %4468, i32 %4472
  store i32 %4467, ptr %4478, align 4
  br label %4479

4479:                                             ; preds = %4476, %4462, %4459, %4445
  %4480 = load i32, ptr %73, align 4
  %4481 = icmp ult i32 %4480, 160
  br i1 %4481, label %4482, label %4500

4482:                                             ; preds = %4479
  %4483 = add i32 %3866, 4227904
  %4484 = add i32 %3866, 33600
  %4485 = lshr exact i32 %4484, 2
  store i32 %4485, ptr %7, align 4
  %4486 = load i32, ptr %8, align 4
  store i32 %4486, ptr %10, align 4
  %4487 = add i32 %4486, 9
  store i32 %4487, ptr %8, align 4
  %4488 = or i32 %4485, 1638400
  %4489 = load ptr, ptr %12, align 4
  %4490 = load i32, ptr %14, align 4
  %4491 = icmp eq i32 %4490, 0
  br i1 %4491, label %4492, label %4544

4492:                                             ; preds = %4482
  %4493 = load i32, ptr %3216, align 4
  %4494 = load i32, ptr %3217, align 4
  %4495 = icmp eq i32 %4493, %4494
  br i1 %4495, label %4496, label %4497, !prof !8

4496:                                             ; preds = %4492
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4497:                                             ; preds = %4492
  %4498 = add i32 %4493, 1
  store i32 %4498, ptr %3216, align 4
  %4499 = getelementptr i32, ptr %4489, i32 %4493
  store i32 %4488, ptr %4499, align 4
  br label %4541

4500:                                             ; preds = %4479
  %4501 = icmp ne i32 %4480, 160
  %4502 = icmp ult i32 %4480, 170
  %4503 = and i1 %4501, %4502
  %4504 = icmp eq i32 %4480, 175
  %4505 = or i1 %4504, %4503
  %4506 = add i32 %3866, 33596
  %4507 = lshr exact i32 %4506, 2
  store i32 %4507, ptr %7, align 4
  %4508 = load i32, ptr %8, align 4
  store i32 %4508, ptr %10, align 4
  br i1 %4505, label %4525, label %4509

4509:                                             ; preds = %4500
  %4510 = add i32 %4508, 11
  store i32 %4510, ptr %8, align 4
  %4511 = or i32 %4507, 1769472
  %4512 = load ptr, ptr %12, align 4
  %4513 = load i32, ptr %14, align 4
  %4514 = icmp eq i32 %4513, 0
  br i1 %4514, label %4515, label %4523

4515:                                             ; preds = %4509
  %4516 = load i32, ptr %3216, align 4
  %4517 = load i32, ptr %3217, align 4
  %4518 = icmp eq i32 %4516, %4517
  br i1 %4518, label %4519, label %4520, !prof !8

4519:                                             ; preds = %4515
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4520:                                             ; preds = %4515
  %4521 = add i32 %4516, 1
  store i32 %4521, ptr %3216, align 4
  %4522 = getelementptr i32, ptr %4512, i32 %4516
  store i32 %4511, ptr %4522, align 4
  br label %4523

4523:                                             ; preds = %4520, %4509
  %4524 = add i32 %3866, 4227908
  br label %4541

4525:                                             ; preds = %4500
  %4526 = add i32 %4508, 13
  store i32 %4526, ptr %8, align 4
  %4527 = or i32 %4507, 1900544
  %4528 = load ptr, ptr %12, align 4
  %4529 = load i32, ptr %14, align 4
  %4530 = icmp eq i32 %4529, 0
  br i1 %4530, label %4531, label %4539

4531:                                             ; preds = %4525
  %4532 = load i32, ptr %3216, align 4
  %4533 = load i32, ptr %3217, align 4
  %4534 = icmp eq i32 %4532, %4533
  br i1 %4534, label %4535, label %4536, !prof !8

4535:                                             ; preds = %4531
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4536:                                             ; preds = %4531
  %4537 = add i32 %4532, 1
  store i32 %4537, ptr %3216, align 4
  %4538 = getelementptr i32, ptr %4528, i32 %4532
  store i32 %4527, ptr %4538, align 4
  br label %4539

4539:                                             ; preds = %4536, %4525
  %4540 = add i32 %3866, 4227908
  br label %4541

4541:                                             ; preds = %4539, %4523, %4497
  %4542 = phi i32 [ %4483, %4497 ], [ %4524, %4523 ], [ %4540, %4539 ]
  %4543 = load i32, ptr %14, align 4
  br label %4544

4544:                                             ; preds = %4541, %4482
  %4545 = phi i32 [ %4543, %4541 ], [ %4490, %4482 ]
  %4546 = phi i32 [ %4542, %4541 ], [ %4483, %4482 ]
  %4547 = icmp eq i32 %4545, 1
  br i1 %4547, label %4548, label %4574

4548:                                             ; preds = %4544
  %4549 = add i32 %4546, -4194304
  %4550 = lshr i32 %4549, 2
  %4551 = load i32, ptr %7, align 4
  %4552 = sub i32 %4550, %4551
  %4553 = load i32, ptr %10, align 4
  %4554 = add i32 %4552, %4553
  %4555 = load ptr, ptr %3218, align 4
  %4556 = load ptr, ptr %4555, align 8
  %4557 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4556, i32 0, i32 3
  %4558 = load ptr, ptr %4557, align 4
  %4559 = shl i32 %4554, 2
  tail call void %4558(ptr noundef %4555, i32 noundef %4559, i32 noundef 1180679) #6
  %4560 = load i32, ptr %14, align 4
  %4561 = icmp eq i32 %4560, 1
  br i1 %4561, label %4562, label %4574

4562:                                             ; preds = %4548
  %4563 = add i32 %4546, -4194300
  %4564 = lshr i32 %4563, 2
  %4565 = load i32, ptr %7, align 4
  %4566 = sub i32 %4564, %4565
  %4567 = load i32, ptr %10, align 4
  %4568 = add i32 %4566, %4567
  %4569 = load ptr, ptr %3218, align 4
  %4570 = load ptr, ptr %4569, align 8
  %4571 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4570, i32 0, i32 3
  %4572 = load ptr, ptr %4571, align 4
  %4573 = shl i32 %4568, 2
  tail call void %4572(ptr noundef %4569, i32 noundef %4573, i32 noundef 84481287) #6
  br label %4574

4574:                                             ; preds = %4562, %4548, %4544
  %4575 = load i32, ptr %73, align 4
  %4576 = icmp eq i32 %4575, 132
  %4577 = load i32, ptr %14, align 4
  %4578 = icmp eq i32 %4577, 1
  br i1 %4576, label %4579, label %4592

4579:                                             ; preds = %4574
  br i1 %4578, label %4580, label %4642

4580:                                             ; preds = %4579
  %4581 = add i32 %4546, -4194296
  %4582 = lshr i32 %4581, 2
  %4583 = load i32, ptr %7, align 4
  %4584 = sub i32 %4582, %4583
  %4585 = load i32, ptr %10, align 4
  %4586 = add i32 %4584, %4585
  %4587 = load ptr, ptr %3218, align 4
  %4588 = load ptr, ptr %4587, align 8
  %4589 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4588, i32 0, i32 3
  %4590 = load ptr, ptr %4589, align 4
  %4591 = shl i32 %4586, 2
  tail call void %4590(ptr noundef %4587, i32 noundef %4591, i32 noundef 84935170) #6
  br label %4605

4592:                                             ; preds = %4574
  br i1 %4578, label %4593, label %4622

4593:                                             ; preds = %4592
  %4594 = add i32 %4546, -4194296
  %4595 = lshr i32 %4594, 2
  %4596 = load i32, ptr %7, align 4
  %4597 = sub i32 %4595, %4596
  %4598 = load i32, ptr %10, align 4
  %4599 = add i32 %4597, %4598
  %4600 = load ptr, ptr %3218, align 4
  %4601 = load ptr, ptr %4600, align 8
  %4602 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4601, i32 0, i32 3
  %4603 = load ptr, ptr %4602, align 4
  %4604 = shl i32 %4599, 2
  tail call void %4603(ptr noundef %4600, i32 noundef %4604, i32 noundef 83952130) #6
  br label %4605

4605:                                             ; preds = %4593, %4580
  %4606 = load i32, ptr %14, align 4
  %4607 = icmp eq i32 %4606, 1
  br i1 %4607, label %4608, label %4620

4608:                                             ; preds = %4605
  %4609 = add i32 %4546, -4194292
  %4610 = lshr i32 %4609, 2
  %4611 = load i32, ptr %7, align 4
  %4612 = sub i32 %4610, %4611
  %4613 = load i32, ptr %10, align 4
  %4614 = add i32 %4612, %4613
  %4615 = load ptr, ptr %3218, align 4
  %4616 = load ptr, ptr %4615, align 8
  %4617 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4616, i32 0, i32 3
  %4618 = load ptr, ptr %4617, align 4
  %4619 = shl i32 %4614, 2
  tail call void %4618(ptr noundef %4615, i32 noundef %4619, i32 noundef 197121) #6
  br label %4620

4620:                                             ; preds = %4608, %4605
  %4621 = load i32, ptr %73, align 4
  br label %4622

4622:                                             ; preds = %4620, %4592
  %4623 = phi i32 [ %4621, %4620 ], [ %4575, %4592 ]
  %4624 = icmp eq i32 %4623, 163
  br i1 %4624, label %4625, label %4642

4625:                                             ; preds = %4622
  %4626 = add i32 %3866, 33644
  %4627 = lshr exact i32 %4626, 2
  store i32 %4627, ptr %7, align 4
  %4628 = load i32, ptr %8, align 4
  store i32 %4628, ptr %10, align 4
  %4629 = add i32 %4628, 1
  store i32 %4629, ptr %8, align 4
  %4630 = or i32 %4627, 1114112
  %4631 = load ptr, ptr %12, align 4
  %4632 = load i32, ptr %14, align 4
  %4633 = icmp eq i32 %4632, 0
  br i1 %4633, label %4634, label %4642

4634:                                             ; preds = %4625
  %4635 = load i32, ptr %3216, align 4
  %4636 = load i32, ptr %3217, align 4
  %4637 = icmp eq i32 %4635, %4636
  br i1 %4637, label %4638, label %4639, !prof !8

4638:                                             ; preds = %4634
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4639:                                             ; preds = %4634
  %4640 = add i32 %4635, 1
  store i32 %4640, ptr %3216, align 4
  %4641 = getelementptr i32, ptr %4631, i32 %4635
  store i32 %4630, ptr %4641, align 4
  br label %4642

4642:                                             ; preds = %4639, %4625, %4622, %4579
  %4643 = add i32 %3866, 33792
  %4644 = lshr exact i32 %4643, 2
  store i32 %4644, ptr %7, align 4
  %4645 = load i32, ptr %8, align 4
  store i32 %4645, ptr %10, align 4
  %4646 = add i32 %4645, 2
  store i32 %4646, ptr %8, align 4
  %4647 = or i32 %4644, 1179648
  %4648 = load ptr, ptr %12, align 4
  %4649 = load i32, ptr %14, align 4
  %4650 = icmp eq i32 %4649, 0
  br i1 %4650, label %4651, label %4660

4651:                                             ; preds = %4642
  %4652 = load i32, ptr %3216, align 4
  %4653 = load i32, ptr %3217, align 4
  %4654 = icmp eq i32 %4652, %4653
  br i1 %4654, label %4655, label %4656, !prof !8

4655:                                             ; preds = %4651
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4656:                                             ; preds = %4651
  %4657 = add i32 %4652, 1
  store i32 %4657, ptr %3216, align 4
  %4658 = getelementptr i32, ptr %4648, i32 %4652
  store i32 %4647, ptr %4658, align 4
  %4659 = load i32, ptr %14, align 4
  br label %4660

4660:                                             ; preds = %4656, %4642
  %4661 = phi i32 [ %4649, %4642 ], [ %4659, %4656 ]
  %4662 = icmp eq i32 %4661, 1
  br i1 %4662, label %4663, label %4676

4663:                                             ; preds = %4660
  %4664 = add i32 %3866, 33796
  %4665 = lshr exact i32 %4664, 2
  %4666 = load i32, ptr %7, align 4
  %4667 = sub i32 %4665, %4666
  %4668 = load i32, ptr %10, align 4
  %4669 = add i32 %4667, %4668
  %4670 = load ptr, ptr %3218, align 4
  %4671 = load ptr, ptr %4670, align 8
  %4672 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4671, i32 0, i32 3
  %4673 = load ptr, ptr %4672, align 4
  %4674 = shl i32 %4669, 2
  tail call void %4673(ptr noundef %4670, i32 noundef %4674, i32 noundef 64) #6
  %4675 = load i32, ptr %14, align 4
  br label %4676

4676:                                             ; preds = %4663, %4660
  %4677 = phi i32 [ %4661, %4660 ], [ %4675, %4663 ]
  %4678 = add i32 %3866, 33804
  %4679 = lshr exact i32 %4678, 2
  store i32 %4679, ptr %7, align 4
  %4680 = load i32, ptr %8, align 4
  store i32 %4680, ptr %10, align 4
  %4681 = add i32 %4680, 2
  store i32 %4681, ptr %8, align 4
  %4682 = or i32 %4679, 1179648
  %4683 = load ptr, ptr %12, align 4
  %4684 = icmp eq i32 %4677, 0
  br i1 %4684, label %4685, label %4694

4685:                                             ; preds = %4676
  %4686 = load i32, ptr %3216, align 4
  %4687 = load i32, ptr %3217, align 4
  %4688 = icmp eq i32 %4686, %4687
  br i1 %4688, label %4689, label %4690, !prof !8

4689:                                             ; preds = %4685
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4690:                                             ; preds = %4685
  %4691 = add i32 %4686, 1
  store i32 %4691, ptr %3216, align 4
  %4692 = getelementptr i32, ptr %4683, i32 %4686
  store i32 %4682, ptr %4692, align 4
  %4693 = load i32, ptr %14, align 4
  br label %4694

4694:                                             ; preds = %4690, %4676
  %4695 = phi i32 [ %4677, %4676 ], [ %4693, %4690 ]
  %4696 = icmp eq i32 %4695, 1
  br i1 %4696, label %4697, label %4722

4697:                                             ; preds = %4694
  %4698 = load i32, ptr %7, align 4
  %4699 = sub i32 %4679, %4698
  %4700 = load i32, ptr %10, align 4
  %4701 = add i32 %4699, %4700
  %4702 = load ptr, ptr %3218, align 4
  %4703 = load ptr, ptr %4702, align 8
  %4704 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4703, i32 0, i32 3
  %4705 = load ptr, ptr %4704, align 4
  %4706 = shl i32 %4701, 2
  tail call void %4705(ptr noundef %4702, i32 noundef %4706, i32 noundef 218893066) #6
  %4707 = load i32, ptr %14, align 4
  %4708 = icmp eq i32 %4707, 1
  br i1 %4708, label %4709, label %4722

4709:                                             ; preds = %4697
  %4710 = add i32 %3866, 33808
  %4711 = lshr exact i32 %4710, 2
  %4712 = load i32, ptr %7, align 4
  %4713 = sub i32 %4711, %4712
  %4714 = load i32, ptr %10, align 4
  %4715 = add i32 %4713, %4714
  %4716 = load ptr, ptr %3218, align 4
  %4717 = load ptr, ptr %4716, align 8
  %4718 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4717, i32 0, i32 3
  %4719 = load ptr, ptr %4718, align 4
  %4720 = shl i32 %4715, 2
  tail call void %4719(ptr noundef %4716, i32 noundef %4720, i32 noundef 1315344) #6
  %4721 = load i32, ptr %14, align 4
  br label %4722

4722:                                             ; preds = %4709, %4697, %4694
  %4723 = phi i32 [ %4707, %4697 ], [ %4721, %4709 ], [ %4695, %4694 ]
  %4724 = load i32, ptr %73, align 4
  %4725 = icmp ult i32 %4724, 160
  %4726 = select i1 %4725, i32 4229120, i32 4228352
  %4727 = add i32 %4726, %3866
  %4728 = add i32 %4727, -4194304
  %4729 = lshr exact i32 %4728, 2
  store i32 %4729, ptr %7, align 4
  %4730 = load i32, ptr %8, align 4
  store i32 %4730, ptr %10, align 4
  %4731 = add i32 %4730, 6
  store i32 %4731, ptr %8, align 4
  %4732 = or i32 %4729, 1441792
  %4733 = load ptr, ptr %12, align 4
  %4734 = icmp eq i32 %4723, 0
  br i1 %4734, label %4735, label %4744

4735:                                             ; preds = %4722
  %4736 = load i32, ptr %3216, align 4
  %4737 = load i32, ptr %3217, align 4
  %4738 = icmp eq i32 %4736, %4737
  br i1 %4738, label %4739, label %4740, !prof !8

4739:                                             ; preds = %4735
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4740:                                             ; preds = %4735
  %4741 = add i32 %4736, 1
  store i32 %4741, ptr %3216, align 4
  %4742 = getelementptr i32, ptr %4733, i32 %4736
  store i32 %4732, ptr %4742, align 4
  %4743 = load i32, ptr %14, align 4
  br label %4744

4744:                                             ; preds = %4740, %4722
  %4745 = phi i32 [ %4723, %4722 ], [ %4743, %4740 ]
  %4746 = icmp eq i32 %4745, 1
  br i1 %4746, label %4747, label %4785

4747:                                             ; preds = %4744
  %4748 = load i32, ptr %7, align 4
  %4749 = sub i32 %4729, %4748
  %4750 = load i32, ptr %10, align 4
  %4751 = add i32 %4749, %4750
  %4752 = load ptr, ptr %3218, align 4
  %4753 = load ptr, ptr %4752, align 8
  %4754 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4753, i32 0, i32 3
  %4755 = load ptr, ptr %4754, align 4
  %4756 = shl i32 %4751, 2
  tail call void %4755(ptr noundef %4752, i32 noundef %4756, i32 noundef 496) #6
  %4757 = load i32, ptr %14, align 4
  %4758 = icmp eq i32 %4757, 1
  br i1 %4758, label %4759, label %4785

4759:                                             ; preds = %4747
  %4760 = add i32 %4727, -4194300
  %4761 = lshr exact i32 %4760, 2
  %4762 = load i32, ptr %7, align 4
  %4763 = sub i32 %4761, %4762
  %4764 = load i32, ptr %10, align 4
  %4765 = add i32 %4763, %4764
  %4766 = load ptr, ptr %3218, align 4
  %4767 = load ptr, ptr %4766, align 8
  %4768 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4767, i32 0, i32 3
  %4769 = load ptr, ptr %4768, align 4
  %4770 = shl i32 %4765, 2
  tail call void %4769(ptr noundef %4766, i32 noundef %4770, i32 noundef 1) #6
  %4771 = load i32, ptr %14, align 4
  %4772 = icmp eq i32 %4771, 1
  br i1 %4772, label %4773, label %4785

4773:                                             ; preds = %4759
  %4774 = add i32 %4727, -4194296
  %4775 = lshr exact i32 %4774, 2
  %4776 = load i32, ptr %7, align 4
  %4777 = sub i32 %4775, %4776
  %4778 = load i32, ptr %10, align 4
  %4779 = add i32 %4777, %4778
  %4780 = load ptr, ptr %3218, align 4
  %4781 = load ptr, ptr %4780, align 8
  %4782 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4781, i32 0, i32 3
  %4783 = load ptr, ptr %4782, align 4
  %4784 = shl i32 %4779, 2
  tail call void %4783(ptr noundef %4780, i32 noundef %4784, i32 noundef 3) #6
  br label %4785

4785:                                             ; preds = %4773, %4759, %4747, %4744
  %4786 = load i32, ptr %73, align 4
  switch i32 %4786, label %4802 [
    i32 172, label %4787
    i32 171, label %4787
    i32 170, label %4787
    i32 80, label %4787
  ]

4787:                                             ; preds = %4785, %4785, %4785, %4785
  %4788 = load i32, ptr %14, align 4
  %4789 = icmp eq i32 %4788, 1
  br i1 %4789, label %4790, label %4818

4790:                                             ; preds = %4787
  %4791 = add i32 %4727, -4194292
  %4792 = lshr exact i32 %4791, 2
  %4793 = load i32, ptr %7, align 4
  %4794 = sub i32 %4792, %4793
  %4795 = load i32, ptr %10, align 4
  %4796 = add i32 %4794, %4795
  %4797 = load ptr, ptr %3218, align 4
  %4798 = load ptr, ptr %4797, align 8
  %4799 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4798, i32 0, i32 3
  %4800 = load ptr, ptr %4799, align 4
  %4801 = shl i32 %4796, 2
  tail call void %4800(ptr noundef %4797, i32 noundef %4801, i32 noundef 32768) #6
  br label %4802

4802:                                             ; preds = %4790, %4785
  %4803 = load i32, ptr %14, align 4
  %4804 = icmp eq i32 %4803, 1
  br i1 %4804, label %4805, label %4818

4805:                                             ; preds = %4802
  %4806 = add i32 %4727, -4194284
  %4807 = lshr exact i32 %4806, 2
  %4808 = load i32, ptr %7, align 4
  %4809 = sub i32 %4807, %4808
  %4810 = load i32, ptr %10, align 4
  %4811 = add i32 %4809, %4810
  %4812 = load ptr, ptr %3218, align 4
  %4813 = load ptr, ptr %4812, align 8
  %4814 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4813, i32 0, i32 3
  %4815 = load ptr, ptr %4814, align 4
  %4816 = shl i32 %4811, 2
  tail call void %4815(ptr noundef %4812, i32 noundef %4816, i32 noundef 237056) #6
  %4817 = load i32, ptr %14, align 4
  br label %4818

4818:                                             ; preds = %4805, %4802, %4787
  %4819 = phi i32 [ %4788, %4787 ], [ %4803, %4802 ], [ %4817, %4805 ]
  %4820 = add i32 %4727, -4194276
  %4821 = lshr exact i32 %4820, 2
  store i32 %4821, ptr %7, align 4
  %4822 = load i32, ptr %8, align 4
  store i32 %4822, ptr %10, align 4
  %4823 = add i32 %4822, 2
  store i32 %4823, ptr %8, align 4
  %4824 = or i32 %4821, 1179648
  %4825 = load ptr, ptr %12, align 4
  %4826 = icmp eq i32 %4819, 0
  br i1 %4826, label %4827, label %4835

4827:                                             ; preds = %4818
  %4828 = load i32, ptr %3216, align 4
  %4829 = load i32, ptr %3217, align 4
  %4830 = icmp eq i32 %4828, %4829
  br i1 %4830, label %4831, label %4832, !prof !8

4831:                                             ; preds = %4827
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4832:                                             ; preds = %4827
  %4833 = add i32 %4828, 1
  store i32 %4833, ptr %3216, align 4
  %4834 = getelementptr i32, ptr %4825, i32 %4828
  store i32 %4824, ptr %4834, align 4
  br label %4835

4835:                                             ; preds = %4832, %4818
  %4836 = load i32, ptr %73, align 4
  %4837 = icmp eq i32 %4836, 80
  %4838 = load i32, ptr %14, align 4
  %4839 = icmp eq i32 %4838, 1
  br i1 %4837, label %4840, label %4851

4840:                                             ; preds = %4835
  br i1 %4839, label %4841, label %4944

4841:                                             ; preds = %4840
  %4842 = load i32, ptr %7, align 4
  %4843 = sub i32 %4821, %4842
  %4844 = load i32, ptr %10, align 4
  %4845 = add i32 %4843, %4844
  %4846 = load ptr, ptr %3218, align 4
  %4847 = load ptr, ptr %4846, align 8
  %4848 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4847, i32 0, i32 3
  %4849 = load ptr, ptr %4848, align 4
  %4850 = shl i32 %4845, 2
  tail call void %4849(ptr noundef %4846, i32 noundef %4850, i32 noundef 64) #6
  br label %4862

4851:                                             ; preds = %4835
  br i1 %4839, label %4852, label %4879

4852:                                             ; preds = %4851
  %4853 = load i32, ptr %7, align 4
  %4854 = sub i32 %4821, %4853
  %4855 = load i32, ptr %10, align 4
  %4856 = add i32 %4854, %4855
  %4857 = load ptr, ptr %3218, align 4
  %4858 = load ptr, ptr %4857, align 8
  %4859 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4858, i32 0, i32 3
  %4860 = load ptr, ptr %4859, align 4
  %4861 = shl i32 %4856, 2
  tail call void %4860(ptr noundef %4857, i32 noundef %4861, i32 noundef 256) #6
  br label %4862

4862:                                             ; preds = %4852, %4841
  %4863 = load i32, ptr %14, align 4
  %4864 = icmp eq i32 %4863, 1
  br i1 %4864, label %4865, label %4877

4865:                                             ; preds = %4862
  %4866 = add i32 %4727, -4194272
  %4867 = lshr exact i32 %4866, 2
  %4868 = load i32, ptr %7, align 4
  %4869 = sub i32 %4867, %4868
  %4870 = load i32, ptr %10, align 4
  %4871 = add i32 %4869, %4870
  %4872 = load ptr, ptr %3218, align 4
  %4873 = load ptr, ptr %4872, align 8
  %4874 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4873, i32 0, i32 3
  %4875 = load ptr, ptr %4874, align 4
  %4876 = shl i32 %4871, 2
  tail call void %4875(ptr noundef %4872, i32 noundef %4876, i32 noundef 14336) #6
  br label %4877

4877:                                             ; preds = %4865, %4862
  %4878 = load i32, ptr %73, align 4
  br label %4879

4879:                                             ; preds = %4877, %4851
  %4880 = phi i32 [ %4878, %4877 ], [ %4836, %4851 ]
  %4881 = icmp ugt i32 %4880, 159
  br i1 %4881, label %4882, label %4944

4882:                                             ; preds = %4879
  %4883 = add i32 %3866, 34124
  %4884 = lshr exact i32 %4883, 2
  store i32 %4884, ptr %7, align 4
  %4885 = load i32, ptr %8, align 4
  store i32 %4885, ptr %10, align 4
  %4886 = add i32 %4885, 2
  store i32 %4886, ptr %8, align 4
  %4887 = or i32 %4884, 1179648
  %4888 = load ptr, ptr %12, align 4
  %4889 = load i32, ptr %14, align 4
  %4890 = icmp eq i32 %4889, 0
  br i1 %4890, label %4891, label %4899

4891:                                             ; preds = %4882
  %4892 = load i32, ptr %3216, align 4
  %4893 = load i32, ptr %3217, align 4
  %4894 = icmp eq i32 %4892, %4893
  br i1 %4894, label %4895, label %4896, !prof !8

4895:                                             ; preds = %4891
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4896:                                             ; preds = %4891
  %4897 = add i32 %4892, 1
  store i32 %4897, ptr %3216, align 4
  %4898 = getelementptr i32, ptr %4888, i32 %4892
  store i32 %4887, ptr %4898, align 4
  br label %4899

4899:                                             ; preds = %4896, %4882
  %4900 = load i32, ptr %73, align 4
  %4901 = add i32 %4900, -161
  %4902 = icmp ult i32 %4901, 9
  %4903 = icmp eq i32 %4900, 175
  %4904 = or i1 %4903, %4902
  %4905 = load i32, ptr %14, align 4
  %4906 = icmp eq i32 %4905, 1
  br i1 %4904, label %4918, label %4907

4907:                                             ; preds = %4899
  br i1 %4906, label %4908, label %4944

4908:                                             ; preds = %4907
  %4909 = load i32, ptr %7, align 4
  %4910 = sub i32 %4884, %4909
  %4911 = load i32, ptr %10, align 4
  %4912 = add i32 %4910, %4911
  %4913 = load ptr, ptr %3218, align 4
  %4914 = load ptr, ptr %4913, align 8
  %4915 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4914, i32 0, i32 3
  %4916 = load ptr, ptr %4915, align 4
  %4917 = shl i32 %4912, 2
  tail call void %4916(ptr noundef %4913, i32 noundef %4917, i32 noundef 4186118) #6
  br label %4929

4918:                                             ; preds = %4899
  br i1 %4906, label %4919, label %4944

4919:                                             ; preds = %4918
  %4920 = load i32, ptr %7, align 4
  %4921 = sub i32 %4884, %4920
  %4922 = load i32, ptr %10, align 4
  %4923 = add i32 %4921, %4922
  %4924 = load ptr, ptr %3218, align 4
  %4925 = load ptr, ptr %4924, align 8
  %4926 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4925, i32 0, i32 3
  %4927 = load ptr, ptr %4926, align 4
  %4928 = shl i32 %4923, 2
  tail call void %4927(ptr noundef %4924, i32 noundef %4928, i32 noundef 4186119) #6
  br label %4929

4929:                                             ; preds = %4919, %4908
  %4930 = load i32, ptr %14, align 4
  %4931 = icmp eq i32 %4930, 1
  br i1 %4931, label %4932, label %4944

4932:                                             ; preds = %4929
  %4933 = add i32 %3866, 34128
  %4934 = lshr exact i32 %4933, 2
  %4935 = load i32, ptr %7, align 4
  %4936 = sub i32 %4934, %4935
  %4937 = load i32, ptr %10, align 4
  %4938 = add i32 %4936, %4937
  %4939 = load ptr, ptr %3218, align 4
  %4940 = load ptr, ptr %4939, align 8
  %4941 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4940, i32 0, i32 3
  %4942 = load ptr, ptr %4941, align 4
  %4943 = shl i32 %4938, 2
  tail call void %4942(ptr noundef %4939, i32 noundef %4943, i32 noundef 4186112) #6
  br label %4944

4944:                                             ; preds = %4932, %4929, %4918, %4907, %4879, %4840
  %4945 = load i32, ptr %73, align 4
  %4946 = icmp ult i32 %4945, 160
  %4947 = select i1 %4946, i32 4229632, i32 4228736
  %4948 = add i32 %3866, -4194304
  %4949 = add i32 %4948, %4947
  %4950 = lshr exact i32 %4949, 2
  store i32 %4950, ptr %7, align 4
  %4951 = load i32, ptr %8, align 4
  store i32 %4951, ptr %10, align 4
  %4952 = add i32 %4951, 1
  store i32 %4952, ptr %8, align 4
  %4953 = or i32 %4950, 1114112
  %4954 = load ptr, ptr %12, align 4
  %4955 = load i32, ptr %14, align 4
  %4956 = icmp eq i32 %4955, 0
  br i1 %4956, label %4957, label %4966

4957:                                             ; preds = %4944
  %4958 = load i32, ptr %3216, align 4
  %4959 = load i32, ptr %3217, align 4
  %4960 = icmp eq i32 %4958, %4959
  br i1 %4960, label %4961, label %4962, !prof !8

4961:                                             ; preds = %4957
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4962:                                             ; preds = %4957
  %4963 = add i32 %4958, 1
  store i32 %4963, ptr %3216, align 4
  %4964 = getelementptr i32, ptr %4954, i32 %4958
  store i32 %4953, ptr %4964, align 4
  %4965 = load i32, ptr %14, align 4
  br label %4966

4966:                                             ; preds = %4962, %4944
  %4967 = phi i32 [ %4955, %4944 ], [ %4965, %4962 ]
  %4968 = icmp eq i32 %4967, 1
  br i1 %4968, label %4969, label %4980

4969:                                             ; preds = %4966
  %4970 = load i32, ptr %7, align 4
  %4971 = sub i32 %4950, %4970
  %4972 = load i32, ptr %10, align 4
  %4973 = add i32 %4971, %4972
  %4974 = load ptr, ptr %3218, align 4
  %4975 = load ptr, ptr %4974, align 8
  %4976 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4975, i32 0, i32 3
  %4977 = load ptr, ptr %4976, align 4
  %4978 = shl i32 %4973, 2
  tail call void %4977(ptr noundef %4974, i32 noundef %4978, i32 noundef 4210752) #6
  %4979 = load i32, ptr %14, align 4
  br label %4980

4980:                                             ; preds = %4969, %4966
  %4981 = phi i32 [ %4967, %4966 ], [ %4979, %4969 ]
  %4982 = load i32, ptr %73, align 4
  %4983 = icmp ult i32 %4982, 160
  %4984 = select i1 %4983, i32 4230656, i32 4228864
  %4985 = add i32 %4984, %3866
  %4986 = add i32 %4985, -4194304
  %4987 = lshr exact i32 %4986, 2
  store i32 %4987, ptr %7, align 4
  %4988 = load i32, ptr %8, align 4
  store i32 %4988, ptr %10, align 4
  %4989 = add i32 %4988, 2
  store i32 %4989, ptr %8, align 4
  %4990 = or i32 %4987, 1179648
  %4991 = load ptr, ptr %12, align 4
  %4992 = icmp eq i32 %4981, 0
  br i1 %4992, label %4993, label %5001

4993:                                             ; preds = %4980
  %4994 = load i32, ptr %3216, align 4
  %4995 = load i32, ptr %3217, align 4
  %4996 = icmp eq i32 %4994, %4995
  br i1 %4996, label %4997, label %4998, !prof !8

4997:                                             ; preds = %4993
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4998:                                             ; preds = %4993
  %4999 = add i32 %4994, 1
  store i32 %4999, ptr %3216, align 4
  %5000 = getelementptr i32, ptr %4991, i32 %4994
  store i32 %4990, ptr %5000, align 4
  br label %5001

5001:                                             ; preds = %4998, %4980
  %5002 = load i32, ptr %73, align 4
  %5003 = icmp ult i32 %5002, 160
  br i1 %5003, label %5004, label %5017

5004:                                             ; preds = %5001
  %5005 = load i32, ptr %14, align 4
  %5006 = icmp eq i32 %5005, 1
  br i1 %5006, label %5007, label %5072

5007:                                             ; preds = %5004
  %5008 = load i32, ptr %7, align 4
  %5009 = sub i32 %4987, %5008
  %5010 = load i32, ptr %10, align 4
  %5011 = add i32 %5009, %5010
  %5012 = load ptr, ptr %3218, align 4
  %5013 = load ptr, ptr %5012, align 8
  %5014 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5013, i32 0, i32 3
  %5015 = load ptr, ptr %5014, align 4
  %5016 = shl i32 %5011, 2
  tail call void %5015(ptr noundef %5012, i32 noundef %5016, i32 noundef 7860229) #6
  br label %5070

5017:                                             ; preds = %5001
  switch i32 %5002, label %5057 [
    i32 165, label %5018
    i32 168, label %5031
    i32 172, label %5044
  ]

5018:                                             ; preds = %5017
  %5019 = load i32, ptr %14, align 4
  %5020 = icmp eq i32 %5019, 1
  br i1 %5020, label %5021, label %5070

5021:                                             ; preds = %5018
  %5022 = load i32, ptr %7, align 4
  %5023 = sub i32 %4987, %5022
  %5024 = load i32, ptr %10, align 4
  %5025 = add i32 %5023, %5024
  %5026 = load ptr, ptr %3218, align 4
  %5027 = load ptr, ptr %5026, align 8
  %5028 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5027, i32 0, i32 3
  %5029 = load ptr, ptr %5028, align 4
  %5030 = shl i32 %5025, 2
  tail call void %5029(ptr noundef %5026, i32 noundef %5030, i32 noundef 1828188167) #6
  br label %5070

5031:                                             ; preds = %5017
  %5032 = load i32, ptr %14, align 4
  %5033 = icmp eq i32 %5032, 1
  br i1 %5033, label %5034, label %5070

5034:                                             ; preds = %5031
  %5035 = load i32, ptr %7, align 4
  %5036 = sub i32 %4987, %5035
  %5037 = load i32, ptr %10, align 4
  %5038 = add i32 %5036, %5037
  %5039 = load ptr, ptr %3218, align 4
  %5040 = load ptr, ptr %5039, align 8
  %5041 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5040, i32 0, i32 3
  %5042 = load ptr, ptr %5041, align 4
  %5043 = shl i32 %5038, 2
  tail call void %5042(ptr noundef %5039, i32 noundef %5043, i32 noundef 1828712455) #6
  br label %5070

5044:                                             ; preds = %5017
  %5045 = load i32, ptr %14, align 4
  %5046 = icmp eq i32 %5045, 1
  br i1 %5046, label %5047, label %5070

5047:                                             ; preds = %5044
  %5048 = load i32, ptr %7, align 4
  %5049 = sub i32 %4987, %5048
  %5050 = load i32, ptr %10, align 4
  %5051 = add i32 %5049, %5050
  %5052 = load ptr, ptr %3218, align 4
  %5053 = load ptr, ptr %5052, align 8
  %5054 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5053, i32 0, i32 3
  %5055 = load ptr, ptr %5054, align 4
  %5056 = shl i32 %5051, 2
  tail call void %5055(ptr noundef %5052, i32 noundef %5056, i32 noundef 218099719) #6
  br label %5070

5057:                                             ; preds = %5017
  %5058 = load i32, ptr %14, align 4
  %5059 = icmp eq i32 %5058, 1
  br i1 %5059, label %5060, label %5070

5060:                                             ; preds = %5057
  %5061 = load i32, ptr %7, align 4
  %5062 = sub i32 %4987, %5061
  %5063 = load i32, ptr %10, align 4
  %5064 = add i32 %5062, %5063
  %5065 = load ptr, ptr %3218, align 4
  %5066 = load ptr, ptr %5065, align 8
  %5067 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5066, i32 0, i32 3
  %5068 = load ptr, ptr %5067, align 4
  %5069 = shl i32 %5064, 2
  tail call void %5068(ptr noundef %5065, i32 noundef %5069, i32 noundef 217575431) #6
  br label %5070

5070:                                             ; preds = %5060, %5057, %5047, %5044, %5034, %5031, %5021, %5018, %5007
  %5071 = load i32, ptr %73, align 4
  br label %5072

5072:                                             ; preds = %5070, %5004
  %5073 = phi i32 [ %5071, %5070 ], [ %5002, %5004 ]
  %5074 = icmp eq i32 %5073, 80
  br i1 %5074, label %5075, label %5090

5075:                                             ; preds = %5072
  %5076 = load i32, ptr %14, align 4
  %5077 = icmp eq i32 %5076, 1
  br i1 %5077, label %5078, label %5120

5078:                                             ; preds = %5075
  %5079 = add i32 %4985, -4194300
  %5080 = lshr exact i32 %5079, 2
  %5081 = load i32, ptr %7, align 4
  %5082 = sub i32 %5080, %5081
  %5083 = load i32, ptr %10, align 4
  %5084 = add i32 %5082, %5083
  %5085 = load ptr, ptr %3218, align 4
  %5086 = load ptr, ptr %5085, align 8
  %5087 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5086, i32 0, i32 3
  %5088 = load ptr, ptr %5087, align 4
  %5089 = shl i32 %5084, 2
  tail call void %5088(ptr noundef %5085, i32 noundef %5089, i32 noundef 32767) #6
  br label %5120

5090:                                             ; preds = %5072
  %5091 = icmp ult i32 %5073, 160
  %5092 = load i32, ptr %14, align 4
  %5093 = icmp eq i32 %5092, 1
  br i1 %5091, label %5094, label %5107

5094:                                             ; preds = %5090
  br i1 %5093, label %5095, label %5120

5095:                                             ; preds = %5094
  %5096 = add i32 %4985, -4194300
  %5097 = lshr exact i32 %5096, 2
  %5098 = load i32, ptr %7, align 4
  %5099 = sub i32 %5097, %5098
  %5100 = load i32, ptr %10, align 4
  %5101 = add i32 %5099, %5100
  %5102 = load ptr, ptr %3218, align 4
  %5103 = load ptr, ptr %5102, align 8
  %5104 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5103, i32 0, i32 3
  %5105 = load ptr, ptr %5104, align 4
  %5106 = shl i32 %5101, 2
  tail call void %5105(ptr noundef %5102, i32 noundef %5106, i32 noundef 4161535) #6
  br label %5120

5107:                                             ; preds = %5090
  br i1 %5093, label %5108, label %5120

5108:                                             ; preds = %5107
  %5109 = add i32 %4985, -4194300
  %5110 = lshr exact i32 %5109, 2
  %5111 = load i32, ptr %7, align 4
  %5112 = sub i32 %5110, %5111
  %5113 = load i32, ptr %10, align 4
  %5114 = add i32 %5112, %5113
  %5115 = load ptr, ptr %3218, align 4
  %5116 = load ptr, ptr %5115, align 8
  %5117 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5116, i32 0, i32 3
  %5118 = load ptr, ptr %5117, align 4
  %5119 = shl i32 %5114, 2
  tail call void %5118(ptr noundef %5115, i32 noundef %5119, i32 noundef 46104575) #6
  br label %5120

5120:                                             ; preds = %5108, %5107, %5095, %5094, %5078, %5075
  %5121 = add i32 %4985, -4194260
  %5122 = lshr exact i32 %5121, 2
  store i32 %5122, ptr %7, align 4
  %5123 = load i32, ptr %8, align 4
  store i32 %5123, ptr %10, align 4
  %5124 = add i32 %5123, 1
  store i32 %5124, ptr %8, align 4
  %5125 = or i32 %5122, 1114112
  %5126 = load ptr, ptr %12, align 4
  %5127 = load i32, ptr %14, align 4
  %5128 = icmp eq i32 %5127, 0
  br i1 %5128, label %5129, label %5137

5129:                                             ; preds = %5120
  %5130 = load i32, ptr %3216, align 4
  %5131 = load i32, ptr %3217, align 4
  %5132 = icmp eq i32 %5130, %5131
  br i1 %5132, label %5133, label %5134, !prof !8

5133:                                             ; preds = %5129
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

5134:                                             ; preds = %5129
  %5135 = add i32 %5130, 1
  store i32 %5135, ptr %3216, align 4
  %5136 = getelementptr i32, ptr %5126, i32 %5130
  store i32 %5125, ptr %5136, align 4
  br label %5137

5137:                                             ; preds = %5134, %5120
  %5138 = load i32, ptr %73, align 4
  %5139 = icmp eq i32 %5138, 80
  br i1 %5139, label %5140, label %5257

5140:                                             ; preds = %5137
  %5141 = add i32 %4985, -4194224
  %5142 = lshr exact i32 %5141, 2
  store i32 %5142, ptr %7, align 4
  %5143 = load i32, ptr %8, align 4
  store i32 %5143, ptr %10, align 4
  %5144 = add i32 %5143, 9
  store i32 %5144, ptr %8, align 4
  %5145 = or i32 %5142, 1638400
  %5146 = load ptr, ptr %12, align 4
  %5147 = load i32, ptr %14, align 4
  %5148 = icmp eq i32 %5147, 0
  br i1 %5148, label %5149, label %5158

5149:                                             ; preds = %5140
  %5150 = load i32, ptr %3216, align 4
  %5151 = load i32, ptr %3217, align 4
  %5152 = icmp eq i32 %5150, %5151
  br i1 %5152, label %5153, label %5154, !prof !8

5153:                                             ; preds = %5149
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

5154:                                             ; preds = %5149
  %5155 = add i32 %5150, 1
  store i32 %5155, ptr %3216, align 4
  %5156 = getelementptr i32, ptr %5146, i32 %5150
  store i32 %5145, ptr %5156, align 4
  %5157 = load i32, ptr %14, align 4
  br label %5158

5158:                                             ; preds = %5154, %5140
  %5159 = phi i32 [ %5147, %5140 ], [ %5157, %5154 ]
  %5160 = icmp eq i32 %5159, 1
  br i1 %5160, label %5161, label %5325

5161:                                             ; preds = %5158
  %5162 = add i32 %4985, -4194220
  %5163 = lshr exact i32 %5162, 2
  %5164 = load i32, ptr %7, align 4
  %5165 = sub i32 %5163, %5164
  %5166 = load i32, ptr %10, align 4
  %5167 = add i32 %5165, %5166
  %5168 = load ptr, ptr %3218, align 4
  %5169 = load ptr, ptr %5168, align 8
  %5170 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5169, i32 0, i32 3
  %5171 = load ptr, ptr %5170, align 4
  %5172 = shl i32 %5167, 2
  tail call void %5171(ptr noundef %5168, i32 noundef %5172, i32 noundef 1023) #6
  %5173 = load i32, ptr %14, align 4
  %5174 = icmp eq i32 %5173, 1
  br i1 %5174, label %5175, label %5325

5175:                                             ; preds = %5161
  %5176 = add i32 %4985, -4194216
  %5177 = lshr exact i32 %5176, 2
  %5178 = load i32, ptr %7, align 4
  %5179 = sub i32 %5177, %5178
  %5180 = load i32, ptr %10, align 4
  %5181 = add i32 %5179, %5180
  %5182 = load ptr, ptr %3218, align 4
  %5183 = load ptr, ptr %5182, align 8
  %5184 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5183, i32 0, i32 3
  %5185 = load ptr, ptr %5184, align 4
  %5186 = shl i32 %5181, 2
  tail call void %5185(ptr noundef %5182, i32 noundef %5186, i32 noundef 3) #6
  %5187 = load i32, ptr %14, align 4
  %5188 = icmp eq i32 %5187, 1
  br i1 %5188, label %5189, label %5325

5189:                                             ; preds = %5175
  %5190 = add i32 %4985, -4194212
  %5191 = lshr exact i32 %5190, 2
  %5192 = load i32, ptr %7, align 4
  %5193 = sub i32 %5191, %5192
  %5194 = load i32, ptr %10, align 4
  %5195 = add i32 %5193, %5194
  %5196 = load ptr, ptr %3218, align 4
  %5197 = load ptr, ptr %5196, align 8
  %5198 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5197, i32 0, i32 3
  %5199 = load ptr, ptr %5198, align 4
  %5200 = shl i32 %5195, 2
  tail call void %5199(ptr noundef %5196, i32 noundef %5200, i32 noundef 3) #6
  %5201 = load i32, ptr %14, align 4
  %5202 = icmp eq i32 %5201, 1
  br i1 %5202, label %5203, label %5325

5203:                                             ; preds = %5189
  %5204 = add i32 %4985, -4194208
  %5205 = lshr exact i32 %5204, 2
  %5206 = load i32, ptr %7, align 4
  %5207 = sub i32 %5205, %5206
  %5208 = load i32, ptr %10, align 4
  %5209 = add i32 %5207, %5208
  %5210 = load ptr, ptr %3218, align 4
  %5211 = load ptr, ptr %5210, align 8
  %5212 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5211, i32 0, i32 3
  %5213 = load ptr, ptr %5212, align 4
  %5214 = shl i32 %5209, 2
  tail call void %5213(ptr noundef %5210, i32 noundef %5214, i32 noundef 511) #6
  %5215 = load i32, ptr %14, align 4
  %5216 = icmp eq i32 %5215, 1
  br i1 %5216, label %5217, label %5325

5217:                                             ; preds = %5203
  %5218 = add i32 %4985, -4194204
  %5219 = lshr exact i32 %5218, 2
  %5220 = load i32, ptr %7, align 4
  %5221 = sub i32 %5219, %5220
  %5222 = load i32, ptr %10, align 4
  %5223 = add i32 %5221, %5222
  %5224 = load ptr, ptr %3218, align 4
  %5225 = load ptr, ptr %5224, align 8
  %5226 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5225, i32 0, i32 3
  %5227 = load ptr, ptr %5226, align 4
  %5228 = shl i32 %5223, 2
  tail call void %5227(ptr noundef %5224, i32 noundef %5228, i32 noundef 31) #6
  %5229 = load i32, ptr %14, align 4
  %5230 = icmp eq i32 %5229, 1
  br i1 %5230, label %5231, label %5325

5231:                                             ; preds = %5217
  %5232 = add i32 %4985, -4194200
  %5233 = lshr exact i32 %5232, 2
  %5234 = load i32, ptr %7, align 4
  %5235 = sub i32 %5233, %5234
  %5236 = load i32, ptr %10, align 4
  %5237 = add i32 %5235, %5236
  %5238 = load ptr, ptr %3218, align 4
  %5239 = load ptr, ptr %5238, align 8
  %5240 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5239, i32 0, i32 3
  %5241 = load ptr, ptr %5240, align 4
  %5242 = shl i32 %5237, 2
  tail call void %5241(ptr noundef %5238, i32 noundef %5242, i32 noundef 15) #6
  %5243 = load i32, ptr %14, align 4
  %5244 = icmp eq i32 %5243, 1
  br i1 %5244, label %5245, label %5325

5245:                                             ; preds = %5231
  %5246 = add i32 %4985, -4194196
  %5247 = lshr exact i32 %5246, 2
  %5248 = load i32, ptr %7, align 4
  %5249 = sub i32 %5247, %5248
  %5250 = load i32, ptr %10, align 4
  %5251 = add i32 %5249, %5250
  %5252 = load ptr, ptr %3218, align 4
  %5253 = load ptr, ptr %5252, align 8
  %5254 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5253, i32 0, i32 3
  %5255 = load ptr, ptr %5254, align 4
  %5256 = shl i32 %5251, 2
  tail call void %5255(ptr noundef %5252, i32 noundef %5256, i32 noundef 15) #6
  br label %5325

5257:                                             ; preds = %5137
  %5258 = icmp ult i32 %5138, 160
  %5259 = add i32 %4985, -4194224
  %5260 = lshr exact i32 %5259, 2
  store i32 %5260, ptr %7, align 4
  %5261 = load i32, ptr %8, align 4
  store i32 %5261, ptr %10, align 4
  %5262 = add i32 %5261, 1
  store i32 %5262, ptr %8, align 4
  %5263 = or i32 %5260, 1114112
  %5264 = load ptr, ptr %12, align 4
  %5265 = load i32, ptr %14, align 4
  %5266 = icmp eq i32 %5265, 0
  br i1 %5258, label %5267, label %5296

5267:                                             ; preds = %5257
  br i1 %5266, label %5268, label %5279

5268:                                             ; preds = %5267
  %5269 = load i32, ptr %3216, align 4
  %5270 = load i32, ptr %3217, align 4
  %5271 = icmp eq i32 %5269, %5270
  br i1 %5271, label %5272, label %5273, !prof !8

5272:                                             ; preds = %5268
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

5273:                                             ; preds = %5268
  %5274 = add i32 %5269, 1
  store i32 %5274, ptr %3216, align 4
  %5275 = getelementptr i32, ptr %5264, i32 %5269
  store i32 %5263, ptr %5275, align 4
  %5276 = load i32, ptr %8, align 4
  %5277 = load ptr, ptr %12, align 4
  %5278 = load i32, ptr %14, align 4
  br label %5279

5279:                                             ; preds = %5273, %5267
  %5280 = phi i32 [ %5265, %5267 ], [ %5278, %5273 ]
  %5281 = phi ptr [ %5264, %5267 ], [ %5277, %5273 ]
  %5282 = phi i32 [ %5262, %5267 ], [ %5276, %5273 ]
  %5283 = add i32 %4985, -4194192
  %5284 = lshr exact i32 %5283, 2
  store i32 %5284, ptr %7, align 4
  store i32 %5282, ptr %10, align 4
  %5285 = add i32 %5282, 1
  store i32 %5285, ptr %8, align 4
  %5286 = or i32 %5284, 1114112
  %5287 = icmp eq i32 %5280, 0
  br i1 %5287, label %5288, label %5325

5288:                                             ; preds = %5279
  %5289 = load i32, ptr %3216, align 4
  %5290 = load i32, ptr %3217, align 4
  %5291 = icmp eq i32 %5289, %5290
  br i1 %5291, label %5292, label %5293, !prof !8

5292:                                             ; preds = %5288
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

5293:                                             ; preds = %5288
  %5294 = add i32 %5289, 1
  store i32 %5294, ptr %3216, align 4
  %5295 = getelementptr i32, ptr %5281, i32 %5289
  store i32 %5286, ptr %5295, align 4
  br label %5325

5296:                                             ; preds = %5257
  br i1 %5266, label %5297, label %5308

5297:                                             ; preds = %5296
  %5298 = load i32, ptr %3216, align 4
  %5299 = load i32, ptr %3217, align 4
  %5300 = icmp eq i32 %5298, %5299
  br i1 %5300, label %5301, label %5302, !prof !8

5301:                                             ; preds = %5297
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

5302:                                             ; preds = %5297
  %5303 = add i32 %5298, 1
  store i32 %5303, ptr %3216, align 4
  %5304 = getelementptr i32, ptr %5264, i32 %5298
  store i32 %5263, ptr %5304, align 4
  %5305 = load i32, ptr %8, align 4
  %5306 = load ptr, ptr %12, align 4
  %5307 = load i32, ptr %14, align 4
  br label %5308

5308:                                             ; preds = %5302, %5296
  %5309 = phi i32 [ %5265, %5296 ], [ %5307, %5302 ]
  %5310 = phi ptr [ %5264, %5296 ], [ %5306, %5302 ]
  %5311 = phi i32 [ %5262, %5296 ], [ %5305, %5302 ]
  %5312 = add i32 %4985, -4194208
  %5313 = lshr exact i32 %5312, 2
  store i32 %5313, ptr %7, align 4
  store i32 %5311, ptr %10, align 4
  %5314 = add i32 %5311, 5
  store i32 %5314, ptr %8, align 4
  %5315 = or i32 %5313, 1376256
  %5316 = icmp eq i32 %5309, 0
  br i1 %5316, label %5317, label %5325

5317:                                             ; preds = %5308
  %5318 = load i32, ptr %3216, align 4
  %5319 = load i32, ptr %3217, align 4
  %5320 = icmp eq i32 %5318, %5319
  br i1 %5320, label %5321, label %5322, !prof !8

5321:                                             ; preds = %5317
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

5322:                                             ; preds = %5317
  %5323 = add i32 %5318, 1
  store i32 %5323, ptr %3216, align 4
  %5324 = getelementptr i32, ptr %5310, i32 %5318
  store i32 %5315, ptr %5324, align 4
  br label %5325

5325:                                             ; preds = %5322, %5308, %5293, %5279, %5245, %5231, %5217, %5203, %5189, %5175, %5161, %5158, %3857
  %5326 = add nuw nsw i32 %3858, 1
  %5327 = icmp eq i32 %5326, 10
  br i1 %5327, label %5328, label %3857

5328:                                             ; preds = %5325
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_m2mf(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 72
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = add i32 %6, 80
  br label %36

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = shl i32 %7, 2
  tail call void %18(ptr noundef %15, i32 noundef %19, i32 noundef 33) #6
  %20 = load i32, ptr %8, align 4
  %21 = load i32, ptr %5, align 4
  %22 = add i32 %21, 8
  store i32 %22, ptr %5, align 4
  %23 = icmp eq i32 %20, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  %25 = add i32 %21, 16
  br label %50

26:                                               ; preds = %13
  %27 = load ptr, ptr %14, align 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = shl i32 %22, 2
  tail call void %30(ptr noundef %27, i32 noundef %31, i32 noundef 1) #6
  %32 = load i32, ptr %8, align 4
  %33 = load i32, ptr %5, align 4
  %34 = add i32 %33, 8
  store i32 %34, ptr %5, align 4
  %35 = icmp eq i32 %32, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %26, %11
  %37 = phi i32 [ %12, %11 ], [ %33, %26 ]
  %38 = add i32 %37, 16
  br label %65

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = shl i32 %34, 2
  tail call void %44(ptr noundef %41, i32 noundef %45, i32 noundef 2) #6
  %46 = load i32, ptr %8, align 4
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 8
  store i32 %48, ptr %5, align 4
  %49 = icmp eq i32 %46, 1
  br i1 %49, label %54, label %50

50:                                               ; preds = %39, %24
  %51 = phi i32 [ %25, %24 ], [ %47, %39 ]
  %52 = add i32 %51, 16
  %53 = add i32 %51, 24
  store i32 %53, ptr %5, align 4
  br label %80

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = shl i32 %48, 2
  tail call void %59(ptr noundef %56, i32 noundef %60, i32 noundef 256) #6
  %61 = load i32, ptr %8, align 4
  %62 = load i32, ptr %5, align 4
  %63 = add i32 %62, 8
  store i32 %63, ptr %5, align 4
  %64 = icmp eq i32 %61, 1
  br i1 %64, label %69, label %65

65:                                               ; preds = %54, %36
  %66 = phi i32 [ %38, %36 ], [ %62, %54 ]
  %67 = add i32 %66, 16
  store i32 %67, ptr %5, align 4
  %68 = add i32 %66, 40
  br label %105

69:                                               ; preds = %54
  %70 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = shl i32 %63, 2
  tail call void %74(ptr noundef %71, i32 noundef %75, i32 noundef 256) #6
  %76 = load i32, ptr %8, align 4
  %77 = load i32, ptr %5, align 4
  %78 = add i32 %77, 8
  store i32 %78, ptr %5, align 4
  %79 = icmp eq i32 %76, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %69, %50
  %81 = phi i32 [ %52, %50 ], [ %77, %69 ]
  %82 = add i32 %81, 32
  br label %105

83:                                               ; preds = %69
  %84 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = shl i32 %78, 2
  tail call void %88(ptr noundef %85, i32 noundef %89, i32 noundef 1) #6
  %90 = load i32, ptr %8, align 4
  %91 = load i32, ptr %5, align 4
  %92 = add i32 %91, 24
  store i32 %92, ptr %5, align 4
  %93 = icmp eq i32 %90, 1
  br i1 %93, label %94, label %105

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %97, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = shl i32 %92, 2
  tail call void %99(ptr noundef %96, i32 noundef %100, i32 noundef 1) #6
  %101 = load i32, ptr %5, align 4
  %102 = load i32, ptr %8, align 4
  %103 = add i32 %101, 8
  store i32 %103, ptr %5, align 4
  %104 = icmp eq i32 %102, 1
  br i1 %104, label %108, label %105

105:                                              ; preds = %94, %83, %80, %65
  %106 = phi i32 [ %101, %94 ], [ %68, %65 ], [ %92, %83 ], [ %82, %80 ]
  %107 = add i32 %106, 16
  br label %131

108:                                              ; preds = %94
  %109 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %111, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = shl i32 %103, 2
  tail call void %113(ptr noundef %110, i32 noundef %114, i32 noundef 2) #6
  %115 = load i32, ptr %8, align 4
  %116 = load i32, ptr %5, align 4
  %117 = add i32 %116, 8
  store i32 %117, ptr %5, align 4
  %118 = icmp eq i32 %115, 1
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  %120 = add i32 %116, 24
  br label %153

121:                                              ; preds = %108
  %122 = load ptr, ptr %109, align 4
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = shl i32 %117, 2
  tail call void %125(ptr noundef %122, i32 noundef %126, i32 noundef 256) #6
  %127 = load i32, ptr %8, align 4
  %128 = load i32, ptr %5, align 4
  %129 = add i32 %128, 8
  store i32 %129, ptr %5, align 4
  %130 = icmp eq i32 %127, 1
  br i1 %130, label %134, label %131

131:                                              ; preds = %121, %105
  %132 = phi i32 [ %107, %105 ], [ %128, %121 ]
  %133 = add i32 %132, 16
  br label %153

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = shl i32 %129, 2
  tail call void %139(ptr noundef %136, i32 noundef %140, i32 noundef 256) #6
  %141 = load i32, ptr %8, align 4
  %142 = load i32, ptr %5, align 4
  %143 = add i32 %142, 8
  store i32 %143, ptr %5, align 4
  %144 = icmp eq i32 %141, 1
  br i1 %144, label %145, label %153

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %148, i32 0, i32 3
  %150 = load ptr, ptr %149, align 4
  %151 = shl i32 %143, 2
  tail call void %150(ptr noundef %147, i32 noundef %151, i32 noundef 1) #6
  %152 = load i32, ptr %5, align 4
  br label %153

153:                                              ; preds = %145, %134, %131, %119
  %154 = phi i32 [ %152, %145 ], [ %133, %131 ], [ %143, %134 ], [ %120, %119 ]
  %155 = icmp ugt i32 %4, 145
  %156 = icmp ne i32 %4, 152
  %157 = and i1 %155, %156
  %158 = select i1 %157, i32 18504, i32 8776
  %159 = add i32 %154, %158
  %160 = add i32 %159, 592
  store i32 %160, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_unk24xx(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 432
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = add i32 %4, 440
  br label %30

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %5, 2
  tail call void %16(ptr noundef %13, i32 noundef %17, i32 noundef 4) #6
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %3, align 4
  %20 = add i32 %19, 8
  store i32 %20, ptr %3, align 4
  %21 = icmp eq i32 %18, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %11
  %23 = load ptr, ptr %12, align 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = shl i32 %20, 2
  tail call void %26(ptr noundef %23, i32 noundef %27, i32 noundef 4) #6
  %28 = load i32, ptr %3, align 4
  %29 = load i32, ptr %6, align 4
  br label %30

30:                                               ; preds = %22, %11, %9
  %31 = phi i32 [ %29, %22 ], [ %7, %9 ], [ %18, %11 ]
  %32 = phi i32 [ %28, %22 ], [ %10, %9 ], [ %20, %11 ]
  %33 = add i32 %32, 8
  store i32 %33, ptr %3, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -161
  %37 = icmp ult i32 %36, 9
  %38 = icmp eq i32 %35, 175
  %39 = or i1 %38, %37
  %40 = select i1 %39, i32 57960, i32 57944
  %41 = add i32 %32, %40
  %42 = add i32 %41, 8
  store i32 %42, ptr %3, align 4
  %43 = icmp eq i32 %31, 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %30
  %45 = add i32 %41, 24
  br label %77

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = shl i32 %42, 2
  tail call void %51(ptr noundef %48, i32 noundef %52, i32 noundef 4) #6
  %53 = load i32, ptr %6, align 4
  %54 = load i32, ptr %3, align 4
  %55 = add i32 %54, 8
  store i32 %55, ptr %3, align 4
  %56 = icmp eq i32 %53, 1
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  %58 = add i32 %54, 16
  br label %77

59:                                               ; preds = %46
  %60 = load ptr, ptr %47, align 4
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = shl i32 %55, 2
  tail call void %63(ptr noundef %60, i32 noundef %64, i32 noundef 4) #6
  %65 = load i32, ptr %6, align 4
  %66 = load i32, ptr %3, align 4
  %67 = add i32 %66, 8
  store i32 %67, ptr %3, align 4
  %68 = icmp eq i32 %65, 1
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = shl i32 %67, 2
  tail call void %74(ptr noundef %71, i32 noundef %75, i32 noundef 135269394) #6
  %76 = load i32, ptr %3, align 4
  br label %77

77:                                               ; preds = %69, %59, %57, %44
  %78 = phi i32 [ %76, %69 ], [ %58, %57 ], [ %67, %59 ], [ %45, %44 ]
  %79 = add i32 %78, 8
  store i32 %79, ptr %3, align 4
  %80 = load i32, ptr %34, align 4
  %81 = icmp eq i32 %80, 80
  br i1 %81, label %96, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr %6, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = shl i32 %79, 2
  tail call void %90(ptr noundef %87, i32 noundef %91, i32 noundef 3) #6
  %92 = load i32, ptr %3, align 4
  br label %93

93:                                               ; preds = %85, %82
  %94 = phi i32 [ %92, %85 ], [ %79, %82 ]
  %95 = add i32 %94, 8
  br label %96

96:                                               ; preds = %93, %77
  %97 = phi i32 [ %95, %93 ], [ %79, %77 ]
  %98 = add i32 %97, 8
  store i32 %98, ptr %3, align 4
  %99 = load i32, ptr %6, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = add i32 %97, 24
  br label %114

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %106, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = shl i32 %98, 2
  tail call void %108(ptr noundef %105, i32 noundef %109, i32 noundef 135269394) #6
  %110 = load i32, ptr %6, align 4
  %111 = load i32, ptr %3, align 4
  %112 = add i32 %111, 16
  store i32 %112, ptr %3, align 4
  %113 = icmp eq i32 %110, 1
  br i1 %113, label %117, label %114

114:                                              ; preds = %103, %101
  %115 = phi i32 [ %112, %103 ], [ %102, %101 ]
  %116 = add i32 %115, 8
  br label %135

117:                                              ; preds = %103
  %118 = load ptr, ptr %104, align 4
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = shl i32 %112, 2
  tail call void %121(ptr noundef %118, i32 noundef %122, i32 noundef 527380) #6
  %123 = load i32, ptr %3, align 4
  %124 = load i32, ptr %6, align 4
  %125 = add i32 %123, 8
  store i32 %125, ptr %3, align 4
  %126 = icmp eq i32 %124, 1
  br i1 %126, label %127, label %135

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %130, i32 0, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = shl i32 %125, 2
  tail call void %132(ptr noundef %129, i32 noundef %133, i32 noundef 1) #6
  %134 = load i32, ptr %3, align 4
  br label %135

135:                                              ; preds = %127, %117, %114
  %136 = phi i32 [ %134, %127 ], [ %125, %117 ], [ %116, %114 ]
  %137 = add i32 %136, 8
  store i32 %137, ptr %3, align 4
  %138 = load i32, ptr %34, align 4
  %139 = icmp ugt i32 %138, 159
  br i1 %139, label %140, label %161

140:                                              ; preds = %135
  %141 = load i32, ptr %6, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %158

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %146, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  %149 = shl i32 %137, 2
  tail call void %148(ptr noundef %145, i32 noundef %149, i32 noundef 4) #6
  %150 = load ptr, ptr %144, align 4
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %151, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  %154 = load i32, ptr %3, align 4
  %155 = shl i32 %154, 2
  %156 = add i32 %155, 32
  tail call void %153(ptr noundef %150, i32 noundef %156, i32 noundef 4) #6
  %157 = load i32, ptr %3, align 4
  br label %158

158:                                              ; preds = %143, %140
  %159 = phi i32 [ %157, %143 ], [ %137, %140 ]
  %160 = add i32 %159, 16
  store i32 %160, ptr %3, align 4
  br label %161

161:                                              ; preds = %158, %135
  %162 = phi i32 [ %160, %158 ], [ %137, %135 ]
  %163 = load i32, ptr %6, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %167, label %165

165:                                              ; preds = %161
  %166 = add i32 %162, 24
  br label %188

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %170, i32 0, i32 3
  %172 = load ptr, ptr %171, align 4
  %173 = shl i32 %162, 2
  tail call void %172(ptr noundef %169, i32 noundef %173, i32 noundef 527380) #6
  %174 = load i32, ptr %6, align 4
  %175 = load i32, ptr %3, align 4
  %176 = add i32 %175, 24
  store i32 %176, ptr %3, align 4
  %177 = icmp eq i32 %174, 1
  br i1 %177, label %178, label %188

178:                                              ; preds = %167
  %179 = load ptr, ptr %168, align 4
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %180, i32 0, i32 3
  %182 = load ptr, ptr %181, align 4
  %183 = shl i32 %176, 2
  tail call void %182(ptr noundef %179, i32 noundef %183, i32 noundef 135269394) #6
  %184 = load i32, ptr %3, align 4
  %185 = load i32, ptr %6, align 4
  %186 = add i32 %184, 8
  store i32 %186, ptr %3, align 4
  %187 = icmp eq i32 %185, 1
  br i1 %187, label %191, label %188

188:                                              ; preds = %178, %167, %165
  %189 = phi i32 [ %184, %178 ], [ %176, %167 ], [ %166, %165 ]
  %190 = add i32 %189, 32
  br label %202

191:                                              ; preds = %178
  %192 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %193 = load ptr, ptr %192, align 4
  %194 = load ptr, ptr %193, align 8
  %195 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %194, i32 0, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = shl i32 %186, 2
  tail call void %196(ptr noundef %193, i32 noundef %197, i32 noundef 39) #6
  %198 = load i32, ptr %6, align 4
  %199 = load i32, ptr %3, align 4
  %200 = add i32 %199, 24
  store i32 %200, ptr %3, align 4
  %201 = icmp eq i32 %198, 1
  br i1 %201, label %205, label %202

202:                                              ; preds = %191, %188
  %203 = phi i32 [ %200, %191 ], [ %190, %188 ]
  %204 = add i32 %203, 7696
  br label %215

205:                                              ; preds = %191
  %206 = load ptr, ptr %192, align 4
  %207 = load ptr, ptr %206, align 8
  %208 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %207, i32 0, i32 3
  %209 = load ptr, ptr %208, align 4
  %210 = shl i32 %200, 2
  tail call void %209(ptr noundef %206, i32 noundef %210, i32 noundef 1) #6
  %211 = load i32, ptr %3, align 4
  %212 = load i32, ptr %6, align 4
  %213 = add i32 %211, 7696
  store i32 %213, ptr %3, align 4
  %214 = icmp eq i32 %212, 1
  br i1 %214, label %218, label %215

215:                                              ; preds = %205, %202
  %216 = phi i32 [ %204, %202 ], [ %213, %205 ]
  %217 = add i32 %216, 184
  br label %237

218:                                              ; preds = %205
  %219 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  %221 = load ptr, ptr %220, align 8
  %222 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %221, i32 0, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = shl i32 %213, 2
  tail call void %223(ptr noundef %220, i32 noundef %224, i32 noundef 1) #6
  %225 = load i32, ptr %3, align 4
  %226 = load i32, ptr %6, align 4
  %227 = add i32 %225, 184
  store i32 %227, ptr %3, align 4
  %228 = icmp eq i32 %226, 1
  br i1 %228, label %229, label %237

229:                                              ; preds = %218
  %230 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = load ptr, ptr %231, align 8
  %233 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %232, i32 0, i32 3
  %234 = load ptr, ptr %233, align 4
  %235 = shl i32 %227, 2
  tail call void %234(ptr noundef %231, i32 noundef %235, i32 noundef 135269394) #6
  %236 = load i32, ptr %3, align 4
  br label %237

237:                                              ; preds = %229, %218, %215
  %238 = phi i32 [ %236, %229 ], [ %227, %218 ], [ %217, %215 ]
  %239 = add i32 %238, 8
  store i32 %239, ptr %3, align 4
  %240 = load i32, ptr %34, align 4
  %241 = icmp eq i32 %240, 80
  br i1 %241, label %244, label %242

242:                                              ; preds = %237
  %243 = add i32 %238, 16
  store i32 %243, ptr %3, align 4
  br label %244

244:                                              ; preds = %242, %237
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_clipid(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 88
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = add i32 %3, 112
  br label %28

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = shl i32 %4, 2
  tail call void %15(ptr noundef %12, i32 noundef %16, i32 noundef 67108864) #6
  %17 = load ptr, ptr %11, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %2, align 4
  %22 = shl i32 %21, 2
  %23 = add i32 %22, 32
  tail call void %20(ptr noundef %17, i32 noundef %23, i32 noundef 67108864) #6
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr %2, align 4
  %26 = add i32 %25, 24
  store i32 %26, ptr %2, align 4
  %27 = icmp eq i32 %24, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %10, %8
  %29 = phi i32 [ %26, %10 ], [ %9, %8 ]
  %30 = add i32 %29, 32
  br label %49

31:                                               ; preds = %10
  %32 = load ptr, ptr %11, align 4
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = shl i32 %26, 2
  tail call void %35(ptr noundef %32, i32 noundef %36, i32 noundef 128) #6
  %37 = load i32, ptr %2, align 4
  %38 = load i32, ptr %5, align 4
  %39 = add i32 %37, 32
  store i32 %39, ptr %2, align 4
  %40 = icmp eq i32 %38, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = shl i32 %39, 2
  tail call void %46(ptr noundef %43, i32 noundef %47, i32 noundef 128) #6
  %48 = load i32, ptr %2, align 4
  br label %49

49:                                               ; preds = %41, %31, %28
  %50 = phi i32 [ %48, %41 ], [ %39, %31 ], [ %30, %28 ]
  %51 = add i32 %50, 16
  store i32 %51, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_zcull(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  br label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %10, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %11, align 4
  %17 = shl i32 %16, 2
  tail call void %15(ptr noundef %12, i32 noundef %17, i32 noundef 63) #6
  %18 = load i32, ptr %3, align 4
  %19 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 88
  store i32 %21, ptr %19, align 4
  %22 = icmp eq i32 %18, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %6
  %24 = phi i32 [ %8, %6 ], [ %20, %9 ]
  %25 = phi ptr [ %7, %6 ], [ %19, %9 ]
  %26 = add i32 %24, 96
  store i32 %26, ptr %25, align 4
  br label %38

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = shl i32 %21, 2
  tail call void %32(ptr noundef %29, i32 noundef %33, i32 noundef 2) #6
  %34 = load i32, ptr %3, align 4
  %35 = load i32, ptr %19, align 4
  %36 = add i32 %35, 8
  store i32 %36, ptr %19, align 4
  %37 = icmp eq i32 %34, 1
  br i1 %37, label %42, label %38

38:                                               ; preds = %27, %23
  %39 = phi ptr [ %19, %27 ], [ %25, %23 ]
  %40 = phi i32 [ %36, %27 ], [ %26, %23 ]
  %41 = add i32 %40, 80
  store i32 %41, ptr %39, align 4
  br label %59

42:                                               ; preds = %27
  %43 = load ptr, ptr %28, align 4
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = shl i32 %36, 2
  tail call void %46(ptr noundef %43, i32 noundef %47, i32 noundef 67108864) #6
  %48 = load ptr, ptr %28, align 4
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %19, align 4
  %53 = shl i32 %52, 2
  %54 = add i32 %53, 32
  tail call void %51(ptr noundef %48, i32 noundef %54, i32 noundef 67108864) #6
  %55 = load i32, ptr %19, align 4
  %56 = load i32, ptr %3, align 4
  %57 = add i32 %55, 80
  store i32 %57, ptr %19, align 4
  %58 = icmp eq i32 %56, 1
  br i1 %58, label %63, label %59

59:                                               ; preds = %42, %38
  %60 = phi ptr [ %39, %38 ], [ %19, %42 ]
  %61 = phi i32 [ %41, %38 ], [ %57, %42 ]
  %62 = add i32 %61, 32
  store i32 %62, ptr %60, align 4
  br label %82

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = shl i32 %57, 2
  tail call void %68(ptr noundef %65, i32 noundef %69, i32 noundef 4) #6
  %70 = load i32, ptr %3, align 4
  %71 = load i32, ptr %19, align 4
  %72 = add i32 %71, 32
  store i32 %72, ptr %19, align 4
  %73 = icmp eq i32 %70, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = shl i32 %72, 2
  tail call void %79(ptr noundef %76, i32 noundef %80, i32 noundef 4) #6
  %81 = load i32, ptr %19, align 4
  br label %82

82:                                               ; preds = %74, %63, %59
  %83 = phi ptr [ %19, %74 ], [ %19, %63 ], [ %60, %59 ]
  %84 = phi i32 [ %81, %74 ], [ %72, %63 ], [ %62, %59 ]
  %85 = add i32 %84, 120
  store i32 %85, ptr %83, align 4
  %86 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 80
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = add i32 %84, 128
  store i32 %90, ptr %83, align 4
  br label %91

91:                                               ; preds = %89, %82
  %92 = phi i32 [ %90, %89 ], [ %85, %82 ]
  %93 = add i32 %92, 16
  store i32 %93, ptr %83, align 4
  %94 = load i32, ptr %3, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = add i32 %92, 24
  %98 = add i32 %92, 32
  store i32 %98, ptr %83, align 4
  br label %122

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = shl i32 %93, 2
  tail call void %104(ptr noundef %101, i32 noundef %105, i32 noundef 1) #6
  %106 = load i32, ptr %3, align 4
  %107 = load i32, ptr %83, align 4
  %108 = add i32 %107, 8
  store i32 %108, ptr %83, align 4
  %109 = icmp eq i32 %106, 1
  br i1 %109, label %112, label %110

110:                                              ; preds = %99
  %111 = add i32 %107, 304
  br label %172

112:                                              ; preds = %99
  %113 = load ptr, ptr %100, align 4
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %114, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = shl i32 %108, 2
  tail call void %116(ptr noundef %113, i32 noundef %117, i32 noundef 4097) #6
  %118 = load i32, ptr %3, align 4
  %119 = load i32, ptr %83, align 4
  %120 = add i32 %119, 8
  store i32 %120, ptr %83, align 4
  %121 = icmp eq i32 %118, 1
  br i1 %121, label %125, label %122

122:                                              ; preds = %112, %96
  %123 = phi i32 [ %97, %96 ], [ %119, %112 ]
  %124 = add i32 %123, 296
  br label %172

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %128, i32 0, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = shl i32 %120, 2
  tail call void %130(ptr noundef %127, i32 noundef %131, i32 noundef 65535) #6
  %132 = load ptr, ptr %126, align 4
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %133, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = load i32, ptr %83, align 4
  %137 = shl i32 %136, 2
  %138 = add i32 %137, 32
  tail call void %135(ptr noundef %132, i32 noundef %138, i32 noundef 65535) #6
  %139 = load ptr, ptr %126, align 4
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %140, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = load i32, ptr %83, align 4
  %144 = shl i32 %143, 2
  %145 = add i32 %144, 64
  tail call void %142(ptr noundef %139, i32 noundef %145, i32 noundef 65535) #6
  %146 = load ptr, ptr %126, align 4
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %147, i32 0, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = load i32, ptr %83, align 4
  %151 = shl i32 %150, 2
  %152 = add i32 %151, 96
  tail call void %149(ptr noundef %146, i32 noundef %152, i32 noundef 65535) #6
  %153 = load i32, ptr %3, align 4
  %154 = load i32, ptr %83, align 4
  %155 = add i32 %154, 288
  store i32 %155, ptr %83, align 4
  %156 = icmp eq i32 %153, 1
  br i1 %156, label %157, label %174

157:                                              ; preds = %125
  %158 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i32 [ %155, %157 ], [ %171, %159 ]
  %161 = phi i32 [ 0, %157 ], [ %169, %159 ]
  %162 = load ptr, ptr %158, align 4
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %163, i32 0, i32 3
  %165 = load ptr, ptr %164, align 4
  %166 = shl i32 %161, 3
  %167 = add i32 %160, %166
  %168 = shl i32 %167, 2
  tail call void %165(ptr noundef %162, i32 noundef %168, i32 noundef 1065353216) #6
  %169 = add nuw nsw i32 %161, 1
  %170 = icmp eq i32 %169, 16
  %171 = load i32, ptr %83, align 4
  br i1 %170, label %177, label %159

172:                                              ; preds = %122, %110
  %173 = phi i32 [ %124, %122 ], [ %111, %110 ]
  store i32 %173, ptr %83, align 4
  br label %174

174:                                              ; preds = %172, %125
  %175 = phi i32 [ %155, %125 ], [ %173, %172 ]
  %176 = add i32 %175, 128
  store i32 %176, ptr %83, align 4
  br label %181

177:                                              ; preds = %159
  %178 = load i32, ptr %3, align 4
  %179 = add i32 %171, 128
  store i32 %179, ptr %83, align 4
  %180 = icmp eq i32 %178, 1
  br i1 %180, label %184, label %181

181:                                              ; preds = %177, %174
  %182 = phi i32 [ %175, %174 ], [ %171, %177 ]
  %183 = add i32 %182, 144
  store i32 %183, ptr %83, align 4
  br label %202

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr %186, align 8
  %188 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %187, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  %190 = shl i32 %179, 2
  tail call void %189(ptr noundef %186, i32 noundef %190, i32 noundef 16) #6
  %191 = load i32, ptr %3, align 4
  %192 = load i32, ptr %83, align 4
  %193 = add i32 %192, 16
  store i32 %193, ptr %83, align 4
  %194 = icmp eq i32 %191, 1
  br i1 %194, label %195, label %202

195:                                              ; preds = %184
  %196 = load ptr, ptr %185, align 4
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %197, i32 0, i32 3
  %199 = load ptr, ptr %198, align 4
  %200 = shl i32 %193, 2
  tail call void %199(ptr noundef %196, i32 noundef %200, i32 noundef 3) #6
  %201 = load i32, ptr %83, align 4
  br label %202

202:                                              ; preds = %195, %184, %181
  %203 = phi i32 [ %201, %195 ], [ %183, %181 ], [ %193, %184 ]
  %204 = add i32 %203, 16
  store i32 %204, ptr %83, align 4
  %205 = load i32, ptr %86, align 4
  %206 = icmp eq i32 %205, 80
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  %208 = add i32 %203, 24
  store i32 %208, ptr %83, align 4
  br label %209

209:                                              ; preds = %207, %202
  %210 = phi i32 [ %208, %207 ], [ %204, %202 ]
  %211 = add i32 %210, 8
  store i32 %211, ptr %83, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_vfetch(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -161
  %6 = icmp ult i32 %5, 9
  %7 = icmp eq i32 %4, 175
  %8 = or i1 %7, %6
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = icmp ugt i32 %4, 159
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  br label %33

14:                                               ; preds = %9, %1
  %15 = phi i32 [ 16, %9 ], [ 32, %1 ]
  %16 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 8
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = shl i32 %18, 2
  tail call void %27(ptr noundef %24, i32 noundef %28, i32 noundef 1) #6
  %29 = load i32, ptr %16, align 4
  br label %30

30:                                               ; preds = %22, %14
  %31 = phi i32 [ %29, %22 ], [ %18, %14 ]
  %32 = add i32 %31, 8
  br label %33

33:                                               ; preds = %30, %11
  %34 = phi i32 [ %32, %30 ], [ %13, %11 ]
  %35 = phi i32 [ %15, %30 ], [ 16, %11 ]
  %36 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %37 = add i32 %34, 32
  store i32 %37, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = shl nuw nsw i32 %35, 1
  %43 = add nuw nsw i32 %42, 8
  %44 = add i32 %43, %37
  br label %66

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = shl i32 %37, 2
  tail call void %50(ptr noundef %47, i32 noundef %51, i32 noundef 15) #6
  %52 = load i32, ptr %36, align 4
  %53 = load i32, ptr %38, align 4
  %54 = shl nuw nsw i32 %35, 1
  %55 = add nuw nsw i32 %54, 8
  %56 = add i32 %55, %52
  store i32 %56, ptr %36, align 4
  %57 = icmp eq i32 %53, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = shl i32 %56, 2
  tail call void %63(ptr noundef %60, i32 noundef %64, i32 noundef 32) #6
  %65 = load i32, ptr %36, align 4
  br label %66

66:                                               ; preds = %58, %45, %41
  %67 = phi i32 [ %54, %58 ], [ %54, %45 ], [ %42, %41 ]
  %68 = phi i32 [ %65, %58 ], [ %56, %45 ], [ %44, %41 ]
  %69 = add i32 %68, 32
  store i32 %69, ptr %36, align 4
  %70 = load i32, ptr %3, align 4
  %71 = add i32 %70, -161
  %72 = icmp ult i32 %71, 9
  %73 = icmp eq i32 %70, 175
  %74 = or i1 %73, %72
  %75 = icmp ugt i32 %70, 159
  %76 = select i1 %75, i32 104, i32 96
  %77 = select i1 %74, i32 120, i32 %76
  %78 = add i32 %68, %77
  %79 = add i32 %78, 24
  store i32 %79, ptr %36, align 4
  %80 = load i32, ptr %38, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %84, label %82

82:                                               ; preds = %66
  %83 = add i32 %78, 136
  br label %105

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %87, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = shl i32 %79, 2
  tail call void %89(ptr noundef %86, i32 noundef %90, i32 noundef 26) #6
  %91 = load i32, ptr %38, align 4
  %92 = load i32, ptr %36, align 4
  %93 = add i32 %92, 112
  store i32 %93, ptr %36, align 4
  %94 = icmp eq i32 %91, 1
  br i1 %94, label %95, label %105

95:                                               ; preds = %84
  %96 = load ptr, ptr %85, align 4
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %97, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = shl i32 %93, 2
  tail call void %99(ptr noundef %96, i32 noundef %100, i32 noundef 4) #6
  %101 = load i32, ptr %36, align 4
  %102 = load i32, ptr %38, align 4
  %103 = add i32 %101, 8
  store i32 %103, ptr %36, align 4
  %104 = icmp eq i32 %102, 1
  br i1 %104, label %108, label %105

105:                                              ; preds = %95, %84, %82
  %106 = phi i32 [ %101, %95 ], [ %93, %84 ], [ %83, %82 ]
  %107 = add i32 %106, 24
  br label %119

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %111, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = shl i32 %103, 2
  tail call void %113(ptr noundef %110, i32 noundef %114, i32 noundef 4) #6
  %115 = load i32, ptr %38, align 4
  %116 = load i32, ptr %36, align 4
  %117 = add i32 %116, 16
  store i32 %117, ptr %36, align 4
  %118 = icmp eq i32 %115, 1
  br i1 %118, label %122, label %119

119:                                              ; preds = %108, %105
  %120 = phi i32 [ %117, %108 ], [ %107, %105 ]
  %121 = add i32 %120, 8
  br label %140

122:                                              ; preds = %108
  %123 = load ptr, ptr %109, align 4
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = shl i32 %117, 2
  tail call void %126(ptr noundef %123, i32 noundef %127, i32 noundef 4) #6
  %128 = load i32, ptr %36, align 4
  %129 = load i32, ptr %38, align 4
  %130 = add i32 %128, 8
  store i32 %130, ptr %36, align 4
  %131 = icmp eq i32 %129, 1
  br i1 %131, label %132, label %140

132:                                              ; preds = %122
  %133 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %135, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  %138 = shl i32 %130, 2
  tail call void %137(ptr noundef %134, i32 noundef %138, i32 noundef 8) #6
  %139 = load i32, ptr %36, align 4
  br label %140

140:                                              ; preds = %132, %122, %119
  %141 = phi i32 [ %139, %132 ], [ %130, %122 ], [ %121, %119 ]
  %142 = add i32 %141, 16
  store i32 %142, ptr %36, align 4
  %143 = load i32, ptr %3, align 4
  %144 = icmp eq i32 %143, 80
  %145 = load i32, ptr %38, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %144, label %147, label %155

147:                                              ; preds = %140
  br i1 %146, label %148, label %163

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %150 = load ptr, ptr %149, align 4
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %151, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  %154 = shl i32 %142, 2
  tail call void %153(ptr noundef %150, i32 noundef %154, i32 noundef 1023) #6
  br label %163

155:                                              ; preds = %140
  br i1 %146, label %156, label %163

156:                                              ; preds = %155
  %157 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %158 = load ptr, ptr %157, align 4
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %159, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = shl i32 %142, 2
  tail call void %161(ptr noundef %158, i32 noundef %162, i32 noundef 2047) #6
  br label %163

163:                                              ; preds = %156, %155, %148, %147
  %164 = load i32, ptr %36, align 4
  %165 = add i32 %164, 8
  store i32 %165, ptr %36, align 4
  %166 = load i32, ptr %3, align 4
  %167 = icmp eq i32 %166, 168
  br i1 %167, label %168, label %182

168:                                              ; preds = %163
  %169 = load i32, ptr %38, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %179

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %174, i32 0, i32 3
  %176 = load ptr, ptr %175, align 4
  %177 = shl i32 %165, 2
  tail call void %176(ptr noundef %173, i32 noundef %177, i32 noundef 7680) #6
  %178 = load i32, ptr %36, align 4
  br label %179

179:                                              ; preds = %171, %168
  %180 = phi i32 [ %178, %171 ], [ %165, %168 ]
  %181 = add i32 %180, 8
  br label %182

182:                                              ; preds = %179, %163
  %183 = phi i32 [ %181, %179 ], [ %165, %163 ]
  %184 = add i32 %183, 96
  store i32 %184, ptr %36, align 4
  %185 = load i32, ptr %38, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %190, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = shl i32 %184, 2
  tail call void %192(ptr noundef %189, i32 noundef %193, i32 noundef 15) #6
  %194 = load i32, ptr %36, align 4
  br label %195

195:                                              ; preds = %187, %182
  %196 = phi i32 [ %194, %187 ], [ %184, %182 ]
  %197 = add i32 %196, %35
  %198 = add i32 %197, 8
  store i32 %198, ptr %36, align 4
  %199 = load i32, ptr %3, align 4
  %200 = add i32 %199, -81
  %201 = icmp ult i32 %200, 79
  %202 = select i1 %201, i32 %198, i32 %197
  %203 = add i32 %202, 24
  store i32 %203, ptr %36, align 4
  %204 = load i32, ptr %3, align 4
  %205 = add i32 %204, -161
  %206 = icmp ult i32 %205, 9
  %207 = icmp eq i32 %204, 175
  %208 = or i1 %207, %206
  %209 = select i1 %208, i32 184, i32 112
  %210 = add i32 %202, %209
  %211 = shl nuw nsw i32 %35, 3
  %212 = add nuw nsw i32 %211, 16
  %213 = add i32 %212, %210
  store i32 %213, ptr %36, align 4
  %214 = load i32, ptr %3, align 4
  %215 = icmp ugt i32 %214, 159
  %216 = add i32 %213, 8
  %217 = select i1 %215, i32 %216, i32 %213
  %218 = mul nuw nsw i32 %35, 72
  %219 = add nuw nsw i32 %218, 224
  %220 = add i32 %219, %217
  store i32 %220, ptr %36, align 4
  %221 = load i32, ptr %3, align 4
  %222 = add i32 %221, -161
  %223 = icmp ult i32 %222, 9
  %224 = icmp eq i32 %221, 175
  %225 = or i1 %224, %223
  br i1 %225, label %226, label %231

226:                                              ; preds = %195
  %227 = add nuw nsw i32 %211, 24
  %228 = add i32 %227, %220
  store i32 %228, ptr %36, align 4
  %229 = load i32, ptr %3, align 4
  %230 = add i32 %229, -161
  br label %231

231:                                              ; preds = %226, %195
  %232 = phi i32 [ %222, %195 ], [ %230, %226 ]
  %233 = phi i32 [ %220, %195 ], [ %228, %226 ]
  %234 = phi i32 [ %221, %195 ], [ %229, %226 ]
  %235 = icmp ult i32 %232, 9
  %236 = icmp eq i32 %234, 175
  %237 = or i1 %236, %235
  %238 = select i1 %237, i32 16, i32 40
  %239 = add i32 %233, %238
  %240 = add i32 %239, 8
  store i32 %240, ptr %36, align 4
  %241 = load i32, ptr %3, align 4
  %242 = icmp ult i32 %241, 160
  br i1 %242, label %250, label %243

243:                                              ; preds = %231
  %244 = icmp ne i32 %241, 160
  %245 = icmp ult i32 %241, 170
  %246 = and i1 %244, %245
  %247 = icmp eq i32 %241, 175
  %248 = or i1 %247, %246
  %249 = select i1 %248, i32 712, i32 648
  br label %250

250:                                              ; preds = %243, %231
  %251 = phi i32 [ 664, %231 ], [ %249, %243 ]
  %252 = add i32 %239, %251
  store i32 %252, ptr %36, align 4
  %253 = load i32, ptr %38, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %257, label %255

255:                                              ; preds = %250
  %256 = add i32 %252, %35
  br label %276

257:                                              ; preds = %250
  %258 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %259 = load ptr, ptr %258, align 4
  %260 = load ptr, ptr %259, align 8
  %261 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %260, i32 0, i32 3
  %262 = load ptr, ptr %261, align 4
  %263 = shl i32 %252, 2
  tail call void %262(ptr noundef %259, i32 noundef %263, i32 noundef 15) #6
  %264 = load i32, ptr %38, align 4
  %265 = load i32, ptr %36, align 4
  %266 = add i32 %265, %35
  store i32 %266, ptr %36, align 4
  %267 = icmp eq i32 %264, 1
  br i1 %267, label %268, label %276

268:                                              ; preds = %257
  %269 = load ptr, ptr %258, align 4
  %270 = load ptr, ptr %269, align 8
  %271 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %270, i32 0, i32 3
  %272 = load ptr, ptr %271, align 4
  %273 = shl i32 %266, 2
  tail call void %272(ptr noundef %269, i32 noundef %273, i32 noundef 1) #6
  %274 = load i32, ptr %36, align 4
  %275 = load i32, ptr %38, align 4
  br label %276

276:                                              ; preds = %268, %257, %255
  %277 = phi i32 [ %275, %268 ], [ %253, %255 ], [ %264, %257 ]
  %278 = phi i32 [ %274, %268 ], [ %256, %255 ], [ %266, %257 ]
  %279 = shl nuw nsw i32 %35, 5
  %280 = or i32 %279, 8
  %281 = add i32 %280, %278
  %282 = add i32 %281, 32
  store i32 %282, ptr %36, align 4
  %283 = load i32, ptr %3, align 4
  %284 = add i32 %283, -161
  %285 = icmp ult i32 %284, 9
  %286 = icmp eq i32 %283, 175
  %287 = or i1 %286, %285
  %288 = select i1 %287, i32 264, i32 208
  %289 = add i32 %281, %288
  store i32 %289, ptr %36, align 4
  %290 = icmp eq i32 %277, 1
  br i1 %290, label %291, label %299

291:                                              ; preds = %276
  %292 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %293, align 8
  %295 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %294, i32 0, i32 3
  %296 = load ptr, ptr %295, align 4
  %297 = shl i32 %289, 2
  tail call void %296(ptr noundef %293, i32 noundef %297, i32 noundef 15) #6
  %298 = load i32, ptr %36, align 4
  br label %299

299:                                              ; preds = %291, %276
  %300 = phi i32 [ %298, %291 ], [ %289, %276 ]
  %301 = add i32 %300, %35
  store i32 %301, ptr %36, align 4
  %302 = load i32, ptr %3, align 4
  %303 = icmp ult i32 %302, 160
  br i1 %303, label %311, label %304

304:                                              ; preds = %299
  %305 = icmp ne i32 %302, 160
  %306 = icmp ult i32 %302, 170
  %307 = and i1 %305, %306
  %308 = icmp eq i32 %302, 175
  %309 = or i1 %308, %307
  %310 = select i1 %309, i32 96, i32 56
  br label %311

311:                                              ; preds = %304, %299
  %312 = phi i32 [ 64, %299 ], [ %310, %304 ]
  %313 = add i32 %301, %312
  %314 = add i32 %313, 80
  store i32 %314, ptr %36, align 4
  %315 = load i32, ptr %3, align 4
  %316 = icmp eq i32 %315, 160
  %317 = select i1 %316, i32 12, i32 4
  %318 = add i32 %315, -161
  %319 = icmp ult i32 %318, 9
  %320 = icmp eq i32 %315, 175
  %321 = or i1 %320, %319
  %322 = add i32 %313, 336
  %323 = select i1 %321, i32 %322, i32 %314
  %324 = add i32 %323, 4160
  store i32 %324, ptr %36, align 4
  br label %325

325:                                              ; preds = %325, %311
  %326 = phi i32 [ 1, %311 ], [ %336, %325 ]
  %327 = phi i32 [ %324, %311 ], [ %335, %325 ]
  %328 = load i32, ptr %3, align 4
  %329 = add i32 %328, -161
  %330 = icmp ult i32 %329, 9
  %331 = icmp eq i32 %328, 175
  %332 = or i1 %331, %330
  %333 = add i32 %327, 256
  %334 = select i1 %332, i32 %333, i32 %327
  %335 = add i32 %334, 4160
  store i32 %335, ptr %36, align 4
  %336 = add nuw nsw i32 %326, 1
  %337 = icmp eq i32 %336, %317
  br i1 %337, label %338, label %325

338:                                              ; preds = %325
  %339 = add i32 %334, 4168
  store i32 %339, ptr %36, align 4
  %340 = load i32, ptr %38, align 4
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %342, label %350

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %344 = load ptr, ptr %343, align 4
  %345 = load ptr, ptr %344, align 8
  %346 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %345, i32 0, i32 3
  %347 = load ptr, ptr %346, align 4
  %348 = shl i32 %339, 2
  tail call void %347(ptr noundef %344, i32 noundef %348, i32 noundef 15) #6
  %349 = load i32, ptr %36, align 4
  br label %350

350:                                              ; preds = %342, %338
  %351 = phi i32 [ %349, %342 ], [ %339, %338 ]
  %352 = add i32 %351, %67
  %353 = add i32 %352, 16
  store i32 %353, ptr %36, align 4
  %354 = load i32, ptr %3, align 4
  %355 = add i32 %354, -161
  %356 = icmp ult i32 %355, 9
  %357 = icmp eq i32 %354, 175
  %358 = or i1 %357, %356
  %359 = select i1 %358, i32 %353, i32 %352
  %360 = add i32 %359, 56
  store i32 %360, ptr %36, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_eng2d(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 40
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 160
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = add i32 %4, 56
  store i32 %10, ptr %3, align 4
  %11 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = shl i32 %10, 2
  tail call void %19(ptr noundef %16, i32 noundef %20, i32 noundef 1) #6
  %21 = load ptr, ptr %15, align 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %3, align 4
  %26 = shl i32 %25, 2
  %27 = add i32 %26, 32
  tail call void %24(ptr noundef %21, i32 noundef %27, i32 noundef 1) #6
  %28 = load i32, ptr %3, align 4
  br label %29

29:                                               ; preds = %14, %9
  %30 = phi i32 [ %28, %14 ], [ %10, %9 ]
  %31 = add i32 %30, 24
  store i32 %31, ptr %3, align 4
  br label %32

32:                                               ; preds = %29, %1
  %33 = phi i32 [ %31, %29 ], [ %5, %1 ]
  %34 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = add i32 %33, 8
  store i32 %38, ptr %3, align 4
  br label %62

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = shl i32 %33, 2
  tail call void %44(ptr noundef %41, i32 noundef %45, i32 noundef 1) #6
  %46 = load i32, ptr %34, align 4
  %47 = load i32, ptr %3, align 4
  %48 = add i32 %47, 8
  store i32 %48, ptr %3, align 4
  %49 = icmp eq i32 %46, 1
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  %51 = add i32 %47, 16
  br label %76

52:                                               ; preds = %39
  %53 = load ptr, ptr %40, align 4
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = shl i32 %48, 2
  tail call void %56(ptr noundef %53, i32 noundef %57, i32 noundef 256) #6
  %58 = load i32, ptr %34, align 4
  %59 = load i32, ptr %3, align 4
  %60 = add i32 %59, 8
  store i32 %60, ptr %3, align 4
  %61 = icmp eq i32 %58, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %52, %37
  %63 = phi i32 [ %38, %37 ], [ %59, %52 ]
  %64 = add i32 %63, 32
  br label %101

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = shl i32 %60, 2
  tail call void %70(ptr noundef %67, i32 noundef %71, i32 noundef 256) #6
  %72 = load i32, ptr %34, align 4
  %73 = load i32, ptr %3, align 4
  %74 = add i32 %73, 8
  store i32 %74, ptr %3, align 4
  %75 = icmp eq i32 %72, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %65, %50
  %77 = phi i32 [ %51, %50 ], [ %73, %65 ]
  %78 = add i32 %77, 24
  br label %101

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = shl i32 %74, 2
  tail call void %84(ptr noundef %81, i32 noundef %85, i32 noundef 17) #6
  %86 = load i32, ptr %34, align 4
  %87 = load i32, ptr %3, align 4
  %88 = add i32 %87, 16
  store i32 %88, ptr %3, align 4
  %89 = icmp eq i32 %86, 1
  br i1 %89, label %90, label %101

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = shl i32 %88, 2
  tail call void %95(ptr noundef %92, i32 noundef %96, i32 noundef 8) #6
  %97 = load i32, ptr %3, align 4
  %98 = load i32, ptr %34, align 4
  %99 = add i32 %97, 48
  store i32 %99, ptr %3, align 4
  %100 = icmp eq i32 %98, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %90, %79, %76, %62
  %102 = phi i32 [ %97, %90 ], [ %64, %62 ], [ %88, %79 ], [ %78, %76 ]
  %103 = add i32 %102, 64
  br label %115

104:                                              ; preds = %90
  %105 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = shl i32 %99, 2
  tail call void %109(ptr noundef %106, i32 noundef %110, i32 noundef 1) #6
  %111 = load i32, ptr %34, align 4
  %112 = load i32, ptr %3, align 4
  %113 = add i32 %112, 16
  store i32 %113, ptr %3, align 4
  %114 = icmp eq i32 %111, 1
  br i1 %114, label %118, label %115

115:                                              ; preds = %104, %101
  %116 = phi i32 [ %113, %104 ], [ %103, %101 ]
  %117 = add i32 %116, 8
  store i32 %117, ptr %3, align 4
  br label %128

118:                                              ; preds = %104
  %119 = load ptr, ptr %105, align 4
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %120, i32 0, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = shl i32 %113, 2
  tail call void %122(ptr noundef %119, i32 noundef %123, i32 noundef 1) #6
  %124 = load i32, ptr %3, align 4
  %125 = load i32, ptr %34, align 4
  %126 = add i32 %124, 8
  store i32 %126, ptr %3, align 4
  %127 = icmp eq i32 %125, 1
  br i1 %127, label %131, label %128

128:                                              ; preds = %118, %115
  %129 = phi i32 [ %116, %115 ], [ %124, %118 ]
  %130 = add i32 %129, 16
  br label %154

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %134, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = shl i32 %126, 2
  tail call void %136(ptr noundef %133, i32 noundef %137, i32 noundef 1) #6
  %138 = load i32, ptr %34, align 4
  %139 = load i32, ptr %3, align 4
  %140 = add i32 %139, 8
  store i32 %140, ptr %3, align 4
  %141 = icmp eq i32 %138, 1
  br i1 %141, label %144, label %142

142:                                              ; preds = %131
  %143 = add i32 %139, 24
  br label %179

144:                                              ; preds = %131
  %145 = load ptr, ptr %132, align 4
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %146, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  %149 = shl i32 %140, 2
  tail call void %148(ptr noundef %145, i32 noundef %149, i32 noundef 1) #6
  %150 = load i32, ptr %34, align 4
  %151 = load i32, ptr %3, align 4
  %152 = add i32 %151, 8
  store i32 %152, ptr %3, align 4
  %153 = icmp eq i32 %150, 1
  br i1 %153, label %157, label %154

154:                                              ; preds = %144, %128
  %155 = phi i32 [ %130, %128 ], [ %151, %144 ]
  %156 = add i32 %155, 16
  br label %179

157:                                              ; preds = %144
  %158 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %159 = load ptr, ptr %158, align 4
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %160, i32 0, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = shl i32 %152, 2
  tail call void %162(ptr noundef %159, i32 noundef %163, i32 noundef 207) #6
  %164 = load i32, ptr %34, align 4
  %165 = load i32, ptr %3, align 4
  %166 = add i32 %165, 8
  store i32 %166, ptr %3, align 4
  %167 = icmp eq i32 %164, 1
  br i1 %167, label %168, label %179

168:                                              ; preds = %157
  %169 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %171, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  %174 = shl i32 %166, 2
  tail call void %173(ptr noundef %170, i32 noundef %174, i32 noundef 2) #6
  %175 = load i32, ptr %3, align 4
  %176 = load i32, ptr %34, align 4
  %177 = add i32 %175, 56
  store i32 %177, ptr %3, align 4
  %178 = icmp eq i32 %176, 1
  br i1 %178, label %182, label %179

179:                                              ; preds = %168, %157, %154, %142
  %180 = phi i32 [ %175, %168 ], [ %143, %142 ], [ %166, %157 ], [ %156, %154 ]
  %181 = add i32 %180, 72
  br label %193

182:                                              ; preds = %168
  %183 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %184 = load ptr, ptr %183, align 4
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %185, i32 0, i32 3
  %187 = load ptr, ptr %186, align 4
  %188 = shl i32 %177, 2
  tail call void %187(ptr noundef %184, i32 noundef %188, i32 noundef 1) #6
  %189 = load i32, ptr %34, align 4
  %190 = load i32, ptr %3, align 4
  %191 = add i32 %190, 16
  store i32 %191, ptr %3, align 4
  %192 = icmp eq i32 %189, 1
  br i1 %192, label %196, label %193

193:                                              ; preds = %182, %179
  %194 = phi i32 [ %191, %182 ], [ %181, %179 ]
  %195 = add i32 %194, 8
  store i32 %195, ptr %3, align 4
  br label %206

196:                                              ; preds = %182
  %197 = load ptr, ptr %183, align 4
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %198, i32 0, i32 3
  %200 = load ptr, ptr %199, align 4
  %201 = shl i32 %191, 2
  tail call void %200(ptr noundef %197, i32 noundef %201, i32 noundef 1) #6
  %202 = load i32, ptr %3, align 4
  %203 = load i32, ptr %34, align 4
  %204 = add i32 %202, 8
  store i32 %204, ptr %3, align 4
  %205 = icmp eq i32 %203, 1
  br i1 %205, label %209, label %206

206:                                              ; preds = %196, %193
  %207 = phi i32 [ %194, %193 ], [ %202, %196 ]
  %208 = add i32 %207, 16
  br label %230

209:                                              ; preds = %196
  %210 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %211 = load ptr, ptr %210, align 4
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %212, i32 0, i32 3
  %214 = load ptr, ptr %213, align 4
  %215 = shl i32 %204, 2
  tail call void %214(ptr noundef %211, i32 noundef %215, i32 noundef 1) #6
  %216 = load i32, ptr %34, align 4
  %217 = load i32, ptr %3, align 4
  %218 = add i32 %217, 8
  store i32 %218, ptr %3, align 4
  %219 = icmp eq i32 %216, 1
  br i1 %219, label %220, label %230

220:                                              ; preds = %209
  %221 = load ptr, ptr %210, align 4
  %222 = load ptr, ptr %221, align 8
  %223 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %222, i32 0, i32 3
  %224 = load ptr, ptr %223, align 4
  %225 = shl i32 %218, 2
  tail call void %224(ptr noundef %221, i32 noundef %225, i32 noundef 1) #6
  %226 = load i32, ptr %3, align 4
  %227 = load i32, ptr %34, align 4
  %228 = add i32 %226, 40
  store i32 %228, ptr %3, align 4
  %229 = icmp eq i32 %227, 1
  br i1 %229, label %233, label %230

230:                                              ; preds = %220, %209, %206
  %231 = phi i32 [ %226, %220 ], [ %218, %209 ], [ %208, %206 ]
  %232 = add i32 %231, 56
  br label %254

233:                                              ; preds = %220
  %234 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %235 = load ptr, ptr %234, align 4
  %236 = load ptr, ptr %235, align 8
  %237 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %236, i32 0, i32 3
  %238 = load ptr, ptr %237, align 4
  %239 = shl i32 %228, 2
  tail call void %238(ptr noundef %235, i32 noundef %239, i32 noundef 4) #6
  %240 = load i32, ptr %34, align 4
  %241 = load i32, ptr %3, align 4
  %242 = add i32 %241, 16
  store i32 %242, ptr %3, align 4
  %243 = icmp eq i32 %240, 1
  br i1 %243, label %244, label %254

244:                                              ; preds = %233
  %245 = load ptr, ptr %234, align 4
  %246 = load ptr, ptr %245, align 8
  %247 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %246, i32 0, i32 3
  %248 = load ptr, ptr %247, align 4
  %249 = shl i32 %242, 2
  tail call void %248(ptr noundef %245, i32 noundef %249, i32 noundef 1) #6
  %250 = load i32, ptr %3, align 4
  %251 = load i32, ptr %34, align 4
  %252 = add i32 %250, 8
  store i32 %252, ptr %3, align 4
  %253 = icmp eq i32 %251, 1
  br i1 %253, label %257, label %254

254:                                              ; preds = %244, %233, %230
  %255 = phi i32 [ %250, %244 ], [ %242, %233 ], [ %232, %230 ]
  %256 = add i32 %255, 40
  br label %275

257:                                              ; preds = %244
  %258 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %259 = load ptr, ptr %258, align 4
  %260 = load ptr, ptr %259, align 8
  %261 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %260, i32 0, i32 3
  %262 = load ptr, ptr %261, align 4
  %263 = shl i32 %252, 2
  tail call void %262(ptr noundef %259, i32 noundef %263, i32 noundef 21) #6
  %264 = load i32, ptr %34, align 4
  %265 = load i32, ptr %3, align 4
  %266 = add i32 %265, 32
  store i32 %266, ptr %3, align 4
  %267 = icmp eq i32 %264, 1
  br i1 %267, label %268, label %275

268:                                              ; preds = %257
  %269 = load ptr, ptr %258, align 4
  %270 = load ptr, ptr %269, align 8
  %271 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %270, i32 0, i32 3
  %272 = load ptr, ptr %271, align 4
  %273 = shl i32 %266, 2
  tail call void %272(ptr noundef %269, i32 noundef %273, i32 noundef 71582848) #6
  %274 = load i32, ptr %3, align 4
  br label %275

275:                                              ; preds = %268, %257, %254
  %276 = phi i32 [ %274, %268 ], [ %256, %254 ], [ %266, %257 ]
  %277 = add i32 %276, 448
  store i32 %277, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_csched(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 32
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = shl i32 %5, 2
  tail call void %14(ptr noundef %11, i32 noundef %15, i32 noundef 135269394) #6
  %16 = load i32, ptr %3, align 4
  %17 = load i32, ptr %6, align 4
  %18 = add i32 %16, 40
  store i32 %18, ptr %3, align 4
  %19 = icmp eq i32 %17, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %9, %1
  %21 = phi i32 [ %16, %9 ], [ %5, %1 ]
  %22 = add i32 %21, 64
  br label %44

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = shl i32 %18, 2
  tail call void %28(ptr noundef %25, i32 noundef %29, i32 noundef 256) #6
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %3, align 4
  %32 = add i32 %31, 24
  store i32 %32, ptr %3, align 4
  %33 = icmp eq i32 %30, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load ptr, ptr %24, align 4
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = shl i32 %32, 2
  tail call void %38(ptr noundef %35, i32 noundef %39, i32 noundef 65537) #6
  %40 = load i32, ptr %3, align 4
  %41 = load i32, ptr %6, align 4
  %42 = add i32 %40, 16
  store i32 %42, ptr %3, align 4
  %43 = icmp eq i32 %41, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %34, %23, %20
  %45 = phi i32 [ %40, %34 ], [ %32, %23 ], [ %22, %20 ]
  %46 = add i32 %45, 24
  store i32 %46, ptr %3, align 4
  br label %70

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = shl i32 %42, 2
  tail call void %52(ptr noundef %49, i32 noundef %53, i32 noundef 65537) #6
  %54 = load i32, ptr %6, align 4
  %55 = load i32, ptr %3, align 4
  %56 = add i32 %55, 8
  store i32 %56, ptr %3, align 4
  %57 = icmp eq i32 %54, 1
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  %59 = add i32 %55, 16
  br label %84

60:                                               ; preds = %47
  %61 = load ptr, ptr %48, align 4
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = shl i32 %56, 2
  tail call void %64(ptr noundef %61, i32 noundef %65, i32 noundef 1) #6
  %66 = load i32, ptr %6, align 4
  %67 = load i32, ptr %3, align 4
  %68 = add i32 %67, 8
  store i32 %68, ptr %3, align 4
  %69 = icmp eq i32 %66, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %60, %44
  %71 = phi i32 [ %46, %44 ], [ %67, %60 ]
  %72 = add i32 %71, 16
  br label %98

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = shl i32 %68, 2
  tail call void %78(ptr noundef %75, i32 noundef %79, i32 noundef 65537) #6
  %80 = load i32, ptr %6, align 4
  %81 = load i32, ptr %3, align 4
  %82 = add i32 %81, 8
  store i32 %82, ptr %3, align 4
  %83 = icmp eq i32 %80, 1
  br i1 %83, label %87, label %84

84:                                               ; preds = %73, %58
  %85 = phi i32 [ %59, %58 ], [ %81, %73 ]
  %86 = add i32 %85, 24
  br label %120

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %90, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = shl i32 %82, 2
  tail call void %92(ptr noundef %89, i32 noundef %93, i32 noundef 1) #6
  %94 = load i32, ptr %6, align 4
  %95 = load i32, ptr %3, align 4
  %96 = add i32 %95, 8
  store i32 %96, ptr %3, align 4
  %97 = icmp eq i32 %94, 1
  br i1 %97, label %101, label %98

98:                                               ; preds = %87, %70
  %99 = phi i32 [ %72, %70 ], [ %95, %87 ]
  %100 = add i32 %99, 16
  br label %120

101:                                              ; preds = %87
  %102 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = shl i32 %96, 2
  tail call void %106(ptr noundef %103, i32 noundef %107, i32 noundef 4) #6
  %108 = load i32, ptr %6, align 4
  %109 = load i32, ptr %3, align 4
  %110 = add i32 %109, 8
  store i32 %110, ptr %3, align 4
  %111 = icmp eq i32 %108, 1
  br i1 %111, label %112, label %120

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %115, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = shl i32 %110, 2
  tail call void %117(ptr noundef %114, i32 noundef %118, i32 noundef 2) #6
  %119 = load i32, ptr %3, align 4
  br label %120

120:                                              ; preds = %112, %101, %98, %84
  %121 = phi i32 [ %119, %112 ], [ %100, %98 ], [ %110, %101 ], [ %86, %84 ]
  %122 = add i32 %121, 520
  store i32 %122, ptr %3, align 4
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %124 = load i32, ptr %123, align 4
  switch i32 %124, label %143 [
    i32 80, label %125
    i32 146, label %125
    i32 132, label %127
    i32 148, label %129
    i32 150, label %129
    i32 134, label %131
    i32 152, label %131
    i32 160, label %133
    i32 163, label %135
    i32 165, label %137
    i32 175, label %137
    i32 170, label %139
    i32 168, label %141
    i32 172, label %141
  ]

125:                                              ; preds = %120, %120
  %126 = add i32 %121, 1880
  br label %143

127:                                              ; preds = %120
  %128 = add i32 %121, 1560
  br label %143

129:                                              ; preds = %120, %120
  %130 = add i32 %121, 1240
  br label %143

131:                                              ; preds = %120, %120
  %132 = add i32 %121, 728
  br label %143

133:                                              ; preds = %120
  %134 = add i32 %121, 3000
  br label %143

135:                                              ; preds = %120
  %136 = add i32 %121, 1560
  br label %143

137:                                              ; preds = %120, %120
  %138 = add i32 %121, 1080
  br label %143

139:                                              ; preds = %120
  %140 = add i32 %121, 664
  br label %143

141:                                              ; preds = %120, %120
  %142 = add i32 %121, 728
  br label %143

143:                                              ; preds = %141, %139, %137, %135, %133, %131, %129, %127, %125, %120
  %144 = phi i32 [ %122, %120 ], [ %142, %141 ], [ %140, %139 ], [ %138, %137 ], [ %136, %135 ], [ %134, %133 ], [ %132, %131 ], [ %130, %129 ], [ %128, %127 ], [ %126, %125 ]
  %145 = add i32 %144, 136
  store i32 %145, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_ropm1(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 8
  br label %30

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %11, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %12, align 4
  %18 = shl i32 %17, 2
  tail call void %16(ptr noundef %13, i32 noundef %18, i32 noundef 82034655) #6
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %12, align 4
  %21 = add i32 %20, 8
  store i32 %21, ptr %12, align 4
  %22 = icmp eq i32 %19, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %10
  %24 = load ptr, ptr %11, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = shl i32 %21, 2
  tail call void %27(ptr noundef %24, i32 noundef %28, i32 noundef 82034655) #6
  %29 = load i32, ptr %12, align 4
  br label %30

30:                                               ; preds = %23, %10, %6
  %31 = phi i32 [ %9, %6 ], [ %21, %10 ], [ %29, %23 ]
  %32 = phi ptr [ %7, %6 ], [ %12, %10 ], [ %12, %23 ]
  %33 = add i32 %31, 24
  store i32 %33, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -161
  %37 = icmp ult i32 %36, 9
  %38 = icmp eq i32 %35, 175
  %39 = or i1 %38, %37
  br i1 %39, label %40, label %54

40:                                               ; preds = %30
  %41 = load i32, ptr %3, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = shl i32 %33, 2
  tail call void %48(ptr noundef %45, i32 noundef %49, i32 noundef 17) #6
  %50 = load i32, ptr %32, align 4
  br label %51

51:                                               ; preds = %43, %40
  %52 = phi i32 [ %50, %43 ], [ %33, %40 ]
  %53 = add i32 %52, 8
  store i32 %53, ptr %32, align 4
  br label %54

54:                                               ; preds = %51, %30
  %55 = phi i32 [ %33, %30 ], [ %53, %51 ]
  %56 = add i32 %55, 8
  store i32 %56, ptr %32, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_ropm2(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 8
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = shl i32 %5, 2
  tail call void %14(ptr noundef %11, i32 noundef %15, i32 noundef 262957185) #6
  %16 = load i32, ptr %3, align 4
  %17 = load i32, ptr %6, align 4
  %18 = add i32 %16, 96
  store i32 %18, ptr %3, align 4
  %19 = icmp eq i32 %17, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %9, %1
  %21 = phi i32 [ %16, %9 ], [ %5, %1 ]
  %22 = add i32 %21, 104
  br label %41

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = shl i32 %18, 2
  tail call void %28(ptr noundef %25, i32 noundef %29, i32 noundef 82034655) #6
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %3, align 4
  %32 = add i32 %31, 8
  store i32 %32, ptr %3, align 4
  %33 = icmp eq i32 %30, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load ptr, ptr %24, align 4
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = shl i32 %32, 2
  tail call void %38(ptr noundef %35, i32 noundef %39, i32 noundef 82034655) #6
  %40 = load i32, ptr %3, align 4
  br label %41

41:                                               ; preds = %34, %23, %20
  %42 = phi i32 [ %40, %34 ], [ %22, %20 ], [ %32, %23 ]
  %43 = add i32 %42, 32
  store i32 %43, ptr %3, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, -161
  %47 = icmp ult i32 %46, 9
  %48 = icmp eq i32 %45, 175
  %49 = or i1 %48, %47
  br i1 %49, label %50, label %64

50:                                               ; preds = %41
  %51 = load i32, ptr %6, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = shl i32 %43, 2
  tail call void %58(ptr noundef %55, i32 noundef %59, i32 noundef 17) #6
  %60 = load i32, ptr %3, align 4
  br label %61

61:                                               ; preds = %53, %50
  %62 = phi i32 [ %60, %53 ], [ %43, %50 ]
  %63 = add i32 %62, 8
  br label %64

64:                                               ; preds = %61, %41
  %65 = phi i32 [ %43, %41 ], [ %63, %61 ]
  %66 = add i32 %65, 8
  store i32 %66, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_ccache(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 16400
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %16 [
    i32 80, label %8
    i32 146, label %8
    i32 160, label %8
    i32 132, label %10
    i32 148, label %12
    i32 150, label %12
    i32 163, label %12
    i32 134, label %14
    i32 152, label %14
    i32 165, label %14
    i32 168, label %14
    i32 170, label %14
    i32 172, label %14
    i32 175, label %14
  ]

8:                                                ; preds = %1, %1, %1
  %9 = add i32 %4, 16744
  br label %16

10:                                               ; preds = %1
  %11 = add i32 %4, 16728
  br label %16

12:                                               ; preds = %1, %1, %1
  %13 = add i32 %4, 16712
  br label %16

14:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %15 = add i32 %4, 16696
  br label %16

16:                                               ; preds = %14, %12, %10, %8, %1
  %17 = phi i32 [ %5, %1 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ]
  %18 = add i32 %17, 4760
  store i32 %18, ptr %3, align 4
  %19 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = add i32 %17, 4784
  br label %42

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = shl i32 %18, 2
  tail call void %29(ptr noundef %26, i32 noundef %30, i32 noundef 4194303) #6
  %31 = load i32, ptr %19, align 4
  %32 = load i32, ptr %3, align 4
  %33 = add i32 %32, 24
  store i32 %33, ptr %3, align 4
  %34 = icmp eq i32 %31, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load ptr, ptr %25, align 4
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = shl i32 %33, 2
  tail call void %39(ptr noundef %36, i32 noundef %40, i32 noundef 8191) #6
  %41 = load i32, ptr %3, align 4
  br label %42

42:                                               ; preds = %35, %24, %22
  %43 = phi i32 [ %41, %35 ], [ %23, %22 ], [ %33, %24 ]
  %44 = add i32 %43, 104
  store i32 %44, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_unk1cxx(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 16
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = shl i32 %5, 2
  tail call void %14(ptr noundef %11, i32 noundef %15, i32 noundef 1065353216) #6
  %16 = load i32, ptr %3, align 4
  %17 = load i32, ptr %6, align 4
  %18 = add i32 %16, 56
  store i32 %18, ptr %3, align 4
  %19 = icmp eq i32 %17, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %9, %1
  %21 = phi i32 [ %16, %9 ], [ %5, %1 ]
  %22 = add i32 %21, 88
  br label %46

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = shl i32 %18, 2
  tail call void %28(ptr noundef %25, i32 noundef %29, i32 noundef 4) #6
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %3, align 4
  %32 = add i32 %31, 8
  store i32 %32, ptr %3, align 4
  %33 = icmp eq i32 %30, 1
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  %35 = add i32 %31, 32
  br label %46

36:                                               ; preds = %23
  %37 = load ptr, ptr %24, align 4
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = shl i32 %32, 2
  tail call void %40(ptr noundef %37, i32 noundef %41, i32 noundef 26) #6
  %42 = load i32, ptr %6, align 4
  %43 = load i32, ptr %3, align 4
  %44 = add i32 %43, 24
  store i32 %44, ptr %3, align 4
  %45 = icmp eq i32 %42, 1
  br i1 %45, label %51, label %48

46:                                               ; preds = %34, %20
  %47 = phi i32 [ %35, %34 ], [ %22, %20 ]
  store i32 %47, ptr %3, align 4
  br label %48

48:                                               ; preds = %46, %36
  %49 = phi i32 [ %44, %36 ], [ %47, %46 ]
  %50 = add i32 %49, 152
  br label %73

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = shl i32 %44, 2
  tail call void %56(ptr noundef %53, i32 noundef %57, i32 noundef 1) #6
  %58 = load i32, ptr %3, align 4
  %59 = load i32, ptr %6, align 4
  %60 = add i32 %58, 152
  store i32 %60, ptr %3, align 4
  %61 = icmp eq i32 %59, 1
  br i1 %61, label %62, label %73

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = shl i32 %60, 2
  tail call void %67(ptr noundef %64, i32 noundef %68, i32 noundef 16776960) #6
  %69 = load i32, ptr %3, align 4
  %70 = load i32, ptr %6, align 4
  %71 = add i32 %69, 56
  store i32 %71, ptr %3, align 4
  %72 = icmp eq i32 %70, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %62, %51, %48
  %74 = phi i32 [ %69, %62 ], [ %50, %48 ], [ %60, %51 ]
  %75 = add i32 %74, 120
  br label %97

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = shl i32 %71, 2
  tail call void %81(ptr noundef %78, i32 noundef %82, i32 noundef 15) #6
  %83 = load i32, ptr %6, align 4
  %84 = load i32, ptr %3, align 4
  %85 = add i32 %84, 64
  store i32 %85, ptr %3, align 4
  %86 = icmp eq i32 %83, 1
  br i1 %86, label %87, label %97

87:                                               ; preds = %76
  %88 = load ptr, ptr %77, align 4
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = shl i32 %85, 2
  tail call void %91(ptr noundef %88, i32 noundef %92, i32 noundef 262957185) #6
  %93 = load i32, ptr %3, align 4
  %94 = load i32, ptr %6, align 4
  %95 = add i32 %93, 8
  store i32 %95, ptr %3, align 4
  %96 = icmp eq i32 %94, 1
  br i1 %96, label %100, label %97

97:                                               ; preds = %87, %76, %73
  %98 = phi i32 [ %93, %87 ], [ %85, %76 ], [ %75, %73 ]
  %99 = add i32 %98, 136
  br label %118

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %103, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = shl i32 %95, 2
  tail call void %105(ptr noundef %102, i32 noundef %106, i32 noundef 17) #6
  %107 = load i32, ptr %6, align 4
  %108 = load i32, ptr %3, align 4
  %109 = add i32 %108, 128
  store i32 %109, ptr %3, align 4
  %110 = icmp eq i32 %107, 1
  br i1 %110, label %111, label %118

111:                                              ; preds = %100
  %112 = load ptr, ptr %101, align 4
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = shl i32 %109, 2
  tail call void %115(ptr noundef %112, i32 noundef %116, i32 noundef 4) #6
  %117 = load i32, ptr %3, align 4
  br label %118

118:                                              ; preds = %111, %100, %97
  %119 = phi i32 [ %117, %111 ], [ %99, %97 ], [ %109, %100 ]
  %120 = add i32 %119, 24
  store i32 %120, ptr %3, align 4
  %121 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, -161
  %124 = icmp ult i32 %123, 9
  %125 = icmp eq i32 %122, 175
  %126 = or i1 %125, %124
  br i1 %126, label %127, label %141

127:                                              ; preds = %118
  %128 = load i32, ptr %6, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %133, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = shl i32 %120, 2
  tail call void %135(ptr noundef %132, i32 noundef %136, i32 noundef 3) #6
  %137 = load i32, ptr %3, align 4
  br label %138

138:                                              ; preds = %130, %127
  %139 = phi i32 [ %137, %130 ], [ %120, %127 ]
  %140 = add i32 %139, 8
  br label %157

141:                                              ; preds = %118
  %142 = icmp ugt i32 %122, 159
  br i1 %142, label %143, label %157

143:                                              ; preds = %141
  %144 = load i32, ptr %6, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %149, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = shl i32 %120, 2
  tail call void %151(ptr noundef %148, i32 noundef %152, i32 noundef 1) #6
  %153 = load i32, ptr %3, align 4
  br label %154

154:                                              ; preds = %146, %143
  %155 = phi i32 [ %153, %146 ], [ %120, %143 ]
  %156 = add i32 %155, 8
  br label %157

157:                                              ; preds = %154, %141, %138
  %158 = phi i32 [ %120, %141 ], [ %156, %154 ], [ %140, %138 ]
  %159 = add i32 %158, 16
  store i32 %159, ptr %3, align 4
  %160 = load i32, ptr %6, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %164, label %162

162:                                              ; preds = %157
  %163 = add i32 %158, 24
  br label %175

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %167, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = shl i32 %159, 2
  tail call void %169(ptr noundef %166, i32 noundef %170, i32 noundef 2) #6
  %171 = load i32, ptr %6, align 4
  %172 = load i32, ptr %3, align 4
  %173 = add i32 %172, 8
  store i32 %173, ptr %3, align 4
  %174 = icmp eq i32 %171, 1
  br i1 %174, label %178, label %175

175:                                              ; preds = %164, %162
  %176 = phi i32 [ %163, %162 ], [ %173, %164 ]
  %177 = add i32 %176, 40
  br label %195

178:                                              ; preds = %164
  %179 = load ptr, ptr %165, align 4
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %180, i32 0, i32 3
  %182 = load ptr, ptr %181, align 4
  %183 = shl i32 %173, 2
  tail call void %182(ptr noundef %179, i32 noundef %183, i32 noundef 67108864) #6
  %184 = load ptr, ptr %165, align 4
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %185, i32 0, i32 3
  %187 = load ptr, ptr %186, align 4
  %188 = load i32, ptr %3, align 4
  %189 = shl i32 %188, 2
  %190 = add i32 %189, 32
  tail call void %187(ptr noundef %184, i32 noundef %190, i32 noundef 67108864) #6
  %191 = load i32, ptr %6, align 4
  %192 = load i32, ptr %3, align 4
  %193 = add i32 %192, 40
  store i32 %193, ptr %3, align 4
  %194 = icmp eq i32 %191, 1
  br i1 %194, label %198, label %195

195:                                              ; preds = %178, %175
  %196 = phi i32 [ %177, %175 ], [ %193, %178 ]
  %197 = add i32 %196, 8
  br label %217

198:                                              ; preds = %178
  %199 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %200 = load ptr, ptr %199, align 4
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %201, i32 0, i32 3
  %203 = load ptr, ptr %202, align 4
  %204 = shl i32 %193, 2
  tail call void %203(ptr noundef %200, i32 noundef %204, i32 noundef 5) #6
  %205 = load i32, ptr %3, align 4
  %206 = load i32, ptr %6, align 4
  %207 = add i32 %205, 8
  store i32 %207, ptr %3, align 4
  %208 = icmp eq i32 %206, 1
  br i1 %208, label %209, label %217

209:                                              ; preds = %198
  %210 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %211 = load ptr, ptr %210, align 4
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %212, i32 0, i32 3
  %214 = load ptr, ptr %213, align 4
  %215 = shl i32 %207, 2
  tail call void %214(ptr noundef %211, i32 noundef %215, i32 noundef 82) #6
  %216 = load i32, ptr %3, align 4
  br label %217

217:                                              ; preds = %209, %198, %195
  %218 = phi i32 [ %216, %209 ], [ %207, %198 ], [ %197, %195 ]
  %219 = add i32 %218, 32
  store i32 %219, ptr %3, align 4
  %220 = load i32, ptr %121, align 4
  %221 = icmp eq i32 %220, 80
  br i1 %221, label %244, label %222

222:                                              ; preds = %217
  %223 = add i32 %218, 40
  store i32 %223, ptr %3, align 4
  %224 = load i32, ptr %6, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %234

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %228 = load ptr, ptr %227, align 4
  %229 = load ptr, ptr %228, align 8
  %230 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %229, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = shl i32 %223, 2
  tail call void %231(ptr noundef %228, i32 noundef %232, i32 noundef 1) #6
  %233 = load i32, ptr %3, align 4
  br label %234

234:                                              ; preds = %226, %222
  %235 = phi i32 [ %233, %226 ], [ %223, %222 ]
  %236 = add i32 %235, 8
  store i32 %236, ptr %3, align 4
  %237 = load i32, ptr %121, align 4
  %238 = add i32 %237, -161
  %239 = icmp ult i32 %238, 9
  %240 = icmp eq i32 %237, 175
  %241 = or i1 %240, %239
  %242 = add i32 %235, 16
  %243 = select i1 %241, i32 %242, i32 %236
  br label %244

244:                                              ; preds = %234, %217
  %245 = phi i32 [ %219, %217 ], [ %243, %234 ]
  %246 = add i32 %245, 128
  store i32 %246, ptr %3, align 4
  %247 = load i32, ptr %6, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %251, label %249

249:                                              ; preds = %244
  %250 = add i32 %245, 256
  br label %285

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %253 = load ptr, ptr %252, align 4
  %254 = load ptr, ptr %253, align 8
  %255 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %254, i32 0, i32 3
  %256 = load ptr, ptr %255, align 4
  %257 = shl i32 %246, 2
  tail call void %256(ptr noundef %253, i32 noundef %257, i32 noundef 1065353216) #6
  br label %258

258:                                              ; preds = %258, %251
  %259 = phi i32 [ 1, %251 ], [ %268, %258 ]
  %260 = load i32, ptr %3, align 4
  %261 = load ptr, ptr %252, align 4
  %262 = load ptr, ptr %261, align 8
  %263 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %262, i32 0, i32 3
  %264 = load ptr, ptr %263, align 4
  %265 = shl i32 %259, 3
  %266 = add i32 %260, %265
  %267 = shl i32 %266, 2
  tail call void %264(ptr noundef %261, i32 noundef %267, i32 noundef 1065353216) #6
  %268 = add nuw nsw i32 %259, 1
  %269 = icmp eq i32 %268, 16
  br i1 %269, label %270, label %258

270:                                              ; preds = %258
  %271 = load i32, ptr %6, align 4
  %272 = load i32, ptr %3, align 4
  %273 = add i32 %272, 128
  store i32 %273, ptr %3, align 4
  %274 = icmp eq i32 %271, 1
  br i1 %274, label %275, label %285

275:                                              ; preds = %270
  %276 = load ptr, ptr %252, align 4
  %277 = load ptr, ptr %276, align 8
  %278 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %277, i32 0, i32 3
  %279 = load ptr, ptr %278, align 4
  %280 = shl i32 %273, 2
  tail call void %279(ptr noundef %276, i32 noundef %280, i32 noundef 16) #6
  %281 = load i32, ptr %3, align 4
  %282 = load i32, ptr %6, align 4
  %283 = add i32 %281, 312
  store i32 %283, ptr %3, align 4
  %284 = icmp eq i32 %282, 1
  br i1 %284, label %288, label %285

285:                                              ; preds = %275, %270, %249
  %286 = phi i32 [ %281, %275 ], [ %273, %270 ], [ %250, %249 ]
  %287 = add i32 %286, 344
  br label %311

288:                                              ; preds = %275
  %289 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %290 = load ptr, ptr %289, align 4
  %291 = load ptr, ptr %290, align 8
  %292 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %291, i32 0, i32 3
  %293 = load ptr, ptr %292, align 4
  %294 = shl i32 %283, 2
  tail call void %293(ptr noundef %290, i32 noundef %294, i32 noundef 135269394) #6
  %295 = load i32, ptr %6, align 4
  %296 = load i32, ptr %3, align 4
  %297 = add i32 %296, 8
  store i32 %297, ptr %3, align 4
  %298 = icmp eq i32 %295, 1
  br i1 %298, label %301, label %299

299:                                              ; preds = %288
  %300 = add i32 %296, 32
  br label %311

301:                                              ; preds = %288
  %302 = load ptr, ptr %289, align 4
  %303 = load ptr, ptr %302, align 8
  %304 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %303, i32 0, i32 3
  %305 = load ptr, ptr %304, align 4
  %306 = shl i32 %297, 2
  tail call void %305(ptr noundef %302, i32 noundef %306, i32 noundef 5) #6
  %307 = load i32, ptr %6, align 4
  %308 = load i32, ptr %3, align 4
  %309 = add i32 %308, 24
  store i32 %309, ptr %3, align 4
  %310 = icmp eq i32 %307, 1
  br i1 %310, label %314, label %311

311:                                              ; preds = %301, %299, %285
  %312 = phi i32 [ %287, %285 ], [ %309, %301 ], [ %300, %299 ]
  %313 = add i32 %312, 16
  br label %354

314:                                              ; preds = %301
  %315 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %316 = load ptr, ptr %315, align 4
  %317 = load ptr, ptr %316, align 8
  %318 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %317, i32 0, i32 3
  %319 = load ptr, ptr %318, align 4
  %320 = shl i32 %309, 2
  tail call void %319(ptr noundef %316, i32 noundef %320, i32 noundef 1) #6
  %321 = load i32, ptr %3, align 4
  %322 = load i32, ptr %6, align 4
  %323 = add i32 %321, 16
  store i32 %323, ptr %3, align 4
  %324 = icmp eq i32 %322, 1
  br i1 %324, label %325, label %354

325:                                              ; preds = %314
  %326 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %327 = load ptr, ptr %326, align 4
  %328 = load ptr, ptr %327, align 8
  %329 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %328, i32 0, i32 3
  %330 = load ptr, ptr %329, align 4
  %331 = shl i32 %323, 2
  tail call void %330(ptr noundef %327, i32 noundef %331, i32 noundef 65535) #6
  %332 = load ptr, ptr %326, align 4
  %333 = load ptr, ptr %332, align 8
  %334 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %333, i32 0, i32 3
  %335 = load ptr, ptr %334, align 4
  %336 = load i32, ptr %3, align 4
  %337 = shl i32 %336, 2
  %338 = add i32 %337, 32
  tail call void %335(ptr noundef %332, i32 noundef %338, i32 noundef 65535) #6
  %339 = load ptr, ptr %326, align 4
  %340 = load ptr, ptr %339, align 8
  %341 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %340, i32 0, i32 3
  %342 = load ptr, ptr %341, align 4
  %343 = load i32, ptr %3, align 4
  %344 = shl i32 %343, 2
  %345 = add i32 %344, 64
  tail call void %342(ptr noundef %339, i32 noundef %345, i32 noundef 65535) #6
  %346 = load ptr, ptr %326, align 4
  %347 = load ptr, ptr %346, align 8
  %348 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %347, i32 0, i32 3
  %349 = load ptr, ptr %348, align 4
  %350 = load i32, ptr %3, align 4
  %351 = shl i32 %350, 2
  %352 = add i32 %351, 96
  tail call void %349(ptr noundef %346, i32 noundef %352, i32 noundef 65535) #6
  %353 = load i32, ptr %3, align 4
  br label %354

354:                                              ; preds = %325, %314, %311
  %355 = phi i32 [ %353, %325 ], [ %323, %314 ], [ %313, %311 ]
  %356 = add i32 %355, 32
  store i32 %356, ptr %3, align 4
  %357 = load i32, ptr %121, align 4
  %358 = icmp eq i32 %357, 80
  br i1 %358, label %375, label %359

359:                                              ; preds = %354
  %360 = load i32, ptr %6, align 4
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %362, label %370

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %364 = load ptr, ptr %363, align 4
  %365 = load ptr, ptr %364, align 8
  %366 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %365, i32 0, i32 3
  %367 = load ptr, ptr %366, align 4
  %368 = shl i32 %356, 2
  tail call void %367(ptr noundef %364, i32 noundef %368, i32 noundef 3) #6
  %369 = load i32, ptr %3, align 4
  br label %370

370:                                              ; preds = %362, %359
  %371 = phi i32 [ %369, %362 ], [ %356, %359 ]
  %372 = add i32 %371, 8
  store i32 %372, ptr %3, align 4
  %373 = load i32, ptr %121, align 4
  %374 = icmp ult i32 %373, 160
  br i1 %374, label %375, label %378

375:                                              ; preds = %370, %354
  %376 = phi i32 [ %356, %354 ], [ %372, %370 ]
  %377 = add i32 %376, 224
  br label %386

378:                                              ; preds = %370
  %379 = icmp ne i32 %373, 160
  %380 = icmp ult i32 %373, 170
  %381 = and i1 %379, %380
  %382 = icmp eq i32 %373, 175
  %383 = or i1 %382, %381
  %384 = add i32 %371, 80
  %385 = select i1 %383, i32 %384, i32 %372
  br label %386

386:                                              ; preds = %378, %375
  %387 = phi i32 [ %377, %375 ], [ %385, %378 ]
  %388 = add i32 %387, 24
  store i32 %388, ptr %3, align 4
  %389 = load i32, ptr %6, align 4
  %390 = icmp eq i32 %389, 1
  br i1 %390, label %393, label %391

391:                                              ; preds = %386
  %392 = add i32 %387, 32
  br label %411

393:                                              ; preds = %386
  %394 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %395 = load ptr, ptr %394, align 4
  %396 = load ptr, ptr %395, align 8
  %397 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %396, i32 0, i32 3
  %398 = load ptr, ptr %397, align 4
  %399 = shl i32 %388, 2
  tail call void %398(ptr noundef %395, i32 noundef %399, i32 noundef 16776960) #6
  %400 = load i32, ptr %6, align 4
  %401 = load i32, ptr %3, align 4
  %402 = add i32 %401, 8
  store i32 %402, ptr %3, align 4
  %403 = icmp eq i32 %400, 1
  br i1 %403, label %404, label %411

404:                                              ; preds = %393
  %405 = load ptr, ptr %394, align 4
  %406 = load ptr, ptr %405, align 8
  %407 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %406, i32 0, i32 3
  %408 = load ptr, ptr %407, align 4
  %409 = shl i32 %402, 2
  tail call void %408(ptr noundef %405, i32 noundef %409, i32 noundef 26) #6
  %410 = load i32, ptr %3, align 4
  br label %411

411:                                              ; preds = %404, %393, %391
  %412 = phi i32 [ %410, %404 ], [ %392, %391 ], [ %402, %393 ]
  %413 = add i32 %412, 16
  store i32 %413, ptr %3, align 4
  %414 = load i32, ptr %121, align 4
  %415 = icmp eq i32 %414, 80
  br i1 %415, label %432, label %416

416:                                              ; preds = %411
  %417 = load i32, ptr %6, align 4
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %419, label %427

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %421 = load ptr, ptr %420, align 4
  %422 = load ptr, ptr %421, align 8
  %423 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %422, i32 0, i32 3
  %424 = load ptr, ptr %423, align 4
  %425 = shl i32 %413, 2
  tail call void %424(ptr noundef %421, i32 noundef %425, i32 noundef 3) #6
  %426 = load i32, ptr %3, align 4
  br label %427

427:                                              ; preds = %419, %416
  %428 = phi i32 [ %426, %419 ], [ %413, %416 ]
  %429 = add i32 %428, 16
  store i32 %429, ptr %3, align 4
  %430 = load i32, ptr %121, align 4
  %431 = icmp ult i32 %430, 160
  br i1 %431, label %432, label %435

432:                                              ; preds = %427, %411
  %433 = phi i32 [ %413, %411 ], [ %429, %427 ]
  %434 = add i32 %433, 296
  br label %437

435:                                              ; preds = %427
  %436 = add i32 %428, 488
  br label %437

437:                                              ; preds = %435, %432
  %438 = phi i32 [ %436, %435 ], [ %434, %432 ]
  store i32 %438, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_strmout(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 16
  br label %51

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %11, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %12, align 4
  %18 = shl i32 %17, 2
  tail call void %16(ptr noundef %13, i32 noundef %18, i32 noundef 258) #6
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %12, align 4
  %21 = add i32 %20, 16
  store i32 %21, ptr %12, align 4
  %22 = icmp eq i32 %19, 1
  br i1 %22, label %23, label %51

23:                                               ; preds = %10
  %24 = load ptr, ptr %11, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = shl i32 %21, 2
  tail call void %27(ptr noundef %24, i32 noundef %28, i32 noundef 4) #6
  %29 = load ptr, ptr %11, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %12, align 4
  %34 = shl i32 %33, 2
  %35 = add i32 %34, 32
  tail call void %32(ptr noundef %29, i32 noundef %35, i32 noundef 4) #6
  %36 = load ptr, ptr %11, align 4
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %12, align 4
  %41 = shl i32 %40, 2
  %42 = add i32 %41, 64
  tail call void %39(ptr noundef %36, i32 noundef %42, i32 noundef 4) #6
  %43 = load ptr, ptr %11, align 4
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %12, align 4
  %48 = shl i32 %47, 2
  %49 = add i32 %48, 96
  tail call void %46(ptr noundef %43, i32 noundef %49, i32 noundef 4) #6
  %50 = load i32, ptr %12, align 4
  br label %51

51:                                               ; preds = %23, %10, %6
  %52 = phi i32 [ %9, %6 ], [ %21, %10 ], [ %50, %23 ]
  %53 = phi ptr [ %7, %6 ], [ %12, %10 ], [ %12, %23 ]
  %54 = add i32 %52, 32
  store i32 %54, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 159
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = add i32 %52, 96
  store i32 %59, ptr %53, align 4
  br label %60

60:                                               ; preds = %58, %51
  %61 = phi i32 [ %59, %58 ], [ %54, %51 ]
  %62 = load i32, ptr %3, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = add i32 %61, 8
  store i32 %65, ptr %53, align 4
  br label %84

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %69, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = shl i32 %61, 2
  tail call void %71(ptr noundef %68, i32 noundef %72, i32 noundef 4) #6
  %73 = load i32, ptr %3, align 4
  %74 = load i32, ptr %53, align 4
  %75 = add i32 %74, 8
  store i32 %75, ptr %53, align 4
  %76 = icmp eq i32 %73, 1
  br i1 %76, label %77, label %84

77:                                               ; preds = %66
  %78 = load ptr, ptr %67, align 4
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = shl i32 %75, 2
  tail call void %81(ptr noundef %78, i32 noundef %82, i32 noundef 4) #6
  %83 = load i32, ptr %53, align 4
  br label %84

84:                                               ; preds = %77, %66, %64
  %85 = phi i32 [ %83, %77 ], [ %65, %64 ], [ %75, %66 ]
  %86 = add i32 %85, 16
  store i32 %86, ptr %53, align 4
  %87 = load i32, ptr %55, align 4
  %88 = icmp eq i32 %87, 80
  %89 = load i32, ptr %3, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %88, label %91, label %99

91:                                               ; preds = %84
  br i1 %90, label %92, label %107

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = shl i32 %86, 2
  tail call void %97(ptr noundef %94, i32 noundef %98, i32 noundef 1023) #6
  br label %110

99:                                               ; preds = %84
  br i1 %90, label %100, label %107

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %103, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = shl i32 %86, 2
  tail call void %105(ptr noundef %102, i32 noundef %106, i32 noundef 2047) #6
  br label %110

107:                                              ; preds = %99, %91
  %108 = load i32, ptr %53, align 4
  %109 = add i32 %108, 16
  store i32 %109, ptr %53, align 4
  br label %115

110:                                              ; preds = %100, %92
  %111 = load i32, ptr %3, align 4
  %112 = load i32, ptr %53, align 4
  %113 = add i32 %112, 16
  store i32 %113, ptr %53, align 4
  %114 = icmp eq i32 %111, 1
  br i1 %114, label %118, label %115

115:                                              ; preds = %110, %107
  %116 = phi i32 [ %109, %107 ], [ %113, %110 ]
  %117 = add i32 %116, 80
  store i32 %117, ptr %53, align 4
  br label %158

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %121, i32 0, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = shl i32 %113, 2
  tail call void %123(ptr noundef %120, i32 noundef %124, i32 noundef 258) #6
  %125 = load i32, ptr %53, align 4
  %126 = load i32, ptr %3, align 4
  %127 = add i32 %125, 80
  store i32 %127, ptr %53, align 4
  %128 = icmp eq i32 %126, 1
  br i1 %128, label %129, label %158

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %132, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = shl i32 %127, 2
  tail call void %134(ptr noundef %131, i32 noundef %135, i32 noundef 4) #6
  %136 = load ptr, ptr %130, align 4
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = load i32, ptr %53, align 4
  %141 = shl i32 %140, 2
  %142 = add i32 %141, 32
  tail call void %139(ptr noundef %136, i32 noundef %142, i32 noundef 4) #6
  %143 = load ptr, ptr %130, align 4
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %144, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = load i32, ptr %53, align 4
  %148 = shl i32 %147, 2
  %149 = add i32 %148, 64
  tail call void %146(ptr noundef %143, i32 noundef %149, i32 noundef 4) #6
  %150 = load ptr, ptr %130, align 4
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %151, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  %154 = load i32, ptr %53, align 4
  %155 = shl i32 %154, 2
  %156 = add i32 %155, 96
  tail call void %153(ptr noundef %150, i32 noundef %156, i32 noundef 4) #6
  %157 = load i32, ptr %53, align 4
  br label %158

158:                                              ; preds = %129, %118, %115
  %159 = phi i32 [ %157, %129 ], [ %127, %118 ], [ %117, %115 ]
  %160 = add i32 %159, 32
  store i32 %160, ptr %53, align 4
  %161 = load i32, ptr %55, align 4
  %162 = icmp ugt i32 %161, 159
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = add i32 %159, 96
  store i32 %164, ptr %53, align 4
  br label %165

165:                                              ; preds = %163, %158
  %166 = phi i32 [ %164, %163 ], [ %160, %158 ]
  %167 = add i32 %166, 352
  store i32 %167, ptr %53, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_unk14xx(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 80
  %6 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  br i1 %5, label %67, label %8

8:                                                ; preds = %1
  %9 = add i32 %7, 40
  store i32 %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = add i32 %7, 64
  br label %36

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = shl i32 %9, 2
  tail call void %20(ptr noundef %17, i32 noundef %21, i32 noundef 527380) #6
  %22 = load i32, ptr %10, align 4
  %23 = load i32, ptr %6, align 4
  %24 = add i32 %23, 24
  store i32 %24, ptr %6, align 4
  %25 = icmp eq i32 %22, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %15
  %27 = load ptr, ptr %16, align 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = shl i32 %24, 2
  tail call void %30(ptr noundef %27, i32 noundef %31, i32 noundef 2052) #6
  %32 = load i32, ptr %6, align 4
  %33 = load i32, ptr %10, align 4
  %34 = add i32 %32, 16
  store i32 %34, ptr %6, align 4
  %35 = icmp eq i32 %33, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %26, %15, %13
  %37 = phi i32 [ %32, %26 ], [ %24, %15 ], [ %14, %13 ]
  %38 = add i32 %37, 32
  br label %64

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = shl i32 %34, 2
  tail call void %44(ptr noundef %41, i32 noundef %45, i32 noundef 4) #6
  %46 = load ptr, ptr %40, align 4
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %6, align 4
  %51 = shl i32 %50, 2
  %52 = add i32 %51, 32
  tail call void %49(ptr noundef %46, i32 noundef %52, i32 noundef 4) #6
  %53 = load i32, ptr %10, align 4
  %54 = load i32, ptr %6, align 4
  %55 = add i32 %54, 16
  store i32 %55, ptr %6, align 4
  %56 = icmp eq i32 %53, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %39
  %58 = load ptr, ptr %40, align 4
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = shl i32 %55, 2
  tail call void %61(ptr noundef %58, i32 noundef %62, i32 noundef 135269394) #6
  %63 = load i32, ptr %6, align 4
  br label %64

64:                                               ; preds = %57, %39, %36
  %65 = phi i32 [ %63, %57 ], [ %38, %36 ], [ %55, %39 ]
  %66 = add i32 %65, 8
  br label %67

67:                                               ; preds = %64, %1
  %68 = phi i32 [ %66, %64 ], [ %7, %1 ]
  %69 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %70 = add i32 %68, 8
  store i32 %70, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = add i32 %68, 32
  br label %107

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = shl i32 %70, 2
  tail call void %81(ptr noundef %78, i32 noundef %82, i32 noundef 4) #6
  %83 = load i32, ptr %71, align 4
  %84 = load i32, ptr %69, align 4
  %85 = add i32 %84, 8
  store i32 %85, ptr %69, align 4
  %86 = icmp eq i32 %83, 1
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  %88 = add i32 %84, 24
  br label %107

89:                                               ; preds = %76
  %90 = load ptr, ptr %77, align 4
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = shl i32 %85, 2
  tail call void %93(ptr noundef %90, i32 noundef %94, i32 noundef 4) #6
  %95 = load i32, ptr %71, align 4
  %96 = load i32, ptr %69, align 4
  %97 = add i32 %96, 16
  store i32 %97, ptr %69, align 4
  %98 = icmp eq i32 %95, 1
  br i1 %98, label %99, label %107

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = shl i32 %97, 2
  tail call void %104(ptr noundef %101, i32 noundef %105, i32 noundef 16) #6
  %106 = load i32, ptr %69, align 4
  br label %107

107:                                              ; preds = %99, %89, %87, %74
  %108 = phi i32 [ %106, %99 ], [ %88, %87 ], [ %97, %89 ], [ %75, %74 ]
  %109 = add i32 %108, 16
  store i32 %109, ptr %69, align 4
  %110 = load i32, ptr %3, align 4
  %111 = icmp eq i32 %110, 80
  %112 = add i32 %108, 24
  %113 = select i1 %111, i32 %109, i32 %112
  %114 = add i32 %113, 16
  store i32 %114, ptr %69, align 4
  %115 = load i32, ptr %71, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %119, label %117

117:                                              ; preds = %107
  %118 = add i32 %113, 32
  br label %150

119:                                              ; preds = %107
  %120 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %122, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = shl i32 %114, 2
  tail call void %124(ptr noundef %121, i32 noundef %125, i32 noundef 2052) #6
  %126 = load i32, ptr %71, align 4
  %127 = load i32, ptr %69, align 4
  %128 = add i32 %127, 8
  store i32 %128, ptr %69, align 4
  %129 = icmp eq i32 %126, 1
  br i1 %129, label %132, label %130

130:                                              ; preds = %119
  %131 = add i32 %127, 16
  br label %150

132:                                              ; preds = %119
  %133 = load ptr, ptr %120, align 4
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %134, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = shl i32 %128, 2
  tail call void %136(ptr noundef %133, i32 noundef %137, i32 noundef 1) #6
  %138 = load i32, ptr %71, align 4
  %139 = load i32, ptr %69, align 4
  %140 = add i32 %139, 8
  store i32 %140, ptr %69, align 4
  %141 = icmp eq i32 %138, 1
  br i1 %141, label %142, label %150

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %145, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = shl i32 %140, 2
  tail call void %147(ptr noundef %144, i32 noundef %148, i32 noundef 26) #6
  %149 = load i32, ptr %69, align 4
  br label %150

150:                                              ; preds = %142, %132, %130, %117
  %151 = phi i32 [ %149, %142 ], [ %131, %130 ], [ %140, %132 ], [ %118, %117 ]
  %152 = add i32 %151, 8
  store i32 %152, ptr %69, align 4
  %153 = load i32, ptr %3, align 4
  %154 = icmp eq i32 %153, 80
  br i1 %154, label %169, label %155

155:                                              ; preds = %150
  %156 = load i32, ptr %71, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %161, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = shl i32 %152, 2
  tail call void %163(ptr noundef %160, i32 noundef %164, i32 noundef 127) #6
  %165 = load i32, ptr %69, align 4
  br label %166

166:                                              ; preds = %158, %155
  %167 = phi i32 [ %165, %158 ], [ %152, %155 ]
  %168 = add i32 %167, 8
  br label %169

169:                                              ; preds = %166, %150
  %170 = phi i32 [ %168, %166 ], [ %152, %150 ]
  %171 = add i32 %170, 8
  store i32 %171, ptr %69, align 4
  %172 = load i32, ptr %71, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %176, label %174

174:                                              ; preds = %169
  %175 = add i32 %170, 32
  br label %199

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %179, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  %182 = shl i32 %171, 2
  tail call void %181(ptr noundef %178, i32 noundef %182, i32 noundef 1) #6
  %183 = load i32, ptr %71, align 4
  %184 = load i32, ptr %69, align 4
  %185 = add i32 %184, 8
  store i32 %185, ptr %69, align 4
  %186 = icmp eq i32 %183, 1
  br i1 %186, label %189, label %187

187:                                              ; preds = %176
  %188 = add i32 %184, 24
  br label %199

189:                                              ; preds = %176
  %190 = load ptr, ptr %177, align 4
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %191, i32 0, i32 3
  %193 = load ptr, ptr %192, align 4
  %194 = shl i32 %185, 2
  tail call void %193(ptr noundef %190, i32 noundef %194, i32 noundef 527380) #6
  %195 = load i32, ptr %71, align 4
  %196 = load i32, ptr %69, align 4
  %197 = add i32 %196, 16
  store i32 %197, ptr %69, align 4
  %198 = icmp eq i32 %195, 1
  br i1 %198, label %201, label %212

199:                                              ; preds = %187, %174
  %200 = phi i32 [ %188, %187 ], [ %175, %174 ]
  store i32 %200, ptr %69, align 4
  br label %212

201:                                              ; preds = %189
  %202 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %203 = load ptr, ptr %202, align 4
  %204 = load ptr, ptr %203, align 8
  %205 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %204, i32 0, i32 3
  %206 = load ptr, ptr %205, align 4
  %207 = shl i32 %197, 2
  tail call void %206(ptr noundef %203, i32 noundef %207, i32 noundef 135269394) #6
  %208 = load i32, ptr %69, align 4
  %209 = load i32, ptr %71, align 4
  %210 = add i32 %208, 8
  store i32 %210, ptr %69, align 4
  %211 = icmp eq i32 %209, 1
  br i1 %211, label %215, label %212

212:                                              ; preds = %201, %199, %189
  %213 = phi i32 [ %208, %201 ], [ %197, %189 ], [ %200, %199 ]
  %214 = add i32 %213, 32
  br label %249

215:                                              ; preds = %201
  %216 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %217 = load ptr, ptr %216, align 4
  %218 = load ptr, ptr %217, align 8
  %219 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %218, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  %221 = shl i32 %210, 2
  tail call void %220(ptr noundef %217, i32 noundef %221, i32 noundef 4) #6
  %222 = load i32, ptr %71, align 4
  %223 = load i32, ptr %69, align 4
  %224 = add i32 %223, 8
  store i32 %224, ptr %69, align 4
  %225 = icmp eq i32 %222, 1
  br i1 %225, label %228, label %226

226:                                              ; preds = %215
  %227 = add i32 %223, 24
  br label %249

228:                                              ; preds = %215
  %229 = load ptr, ptr %216, align 4
  %230 = load ptr, ptr %229, align 8
  %231 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %230, i32 0, i32 3
  %232 = load ptr, ptr %231, align 4
  %233 = shl i32 %224, 2
  tail call void %232(ptr noundef %229, i32 noundef %233, i32 noundef 4) #6
  %234 = load i32, ptr %71, align 4
  %235 = load i32, ptr %69, align 4
  %236 = add i32 %235, 16
  store i32 %236, ptr %69, align 4
  %237 = icmp eq i32 %234, 1
  br i1 %237, label %238, label %249

238:                                              ; preds = %228
  %239 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %240 = load ptr, ptr %239, align 4
  %241 = load ptr, ptr %240, align 8
  %242 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %241, i32 0, i32 3
  %243 = load ptr, ptr %242, align 4
  %244 = shl i32 %236, 2
  tail call void %243(ptr noundef %240, i32 noundef %244, i32 noundef 16) #6
  %245 = load i32, ptr %69, align 4
  %246 = load i32, ptr %71, align 4
  %247 = add i32 %245, 32
  store i32 %247, ptr %69, align 4
  %248 = icmp eq i32 %246, 1
  br i1 %248, label %252, label %249

249:                                              ; preds = %238, %228, %226, %212
  %250 = phi i32 [ %245, %238 ], [ %214, %212 ], [ %236, %228 ], [ %227, %226 ]
  %251 = add i32 %250, 40
  br label %270

252:                                              ; preds = %238
  %253 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %254 = load ptr, ptr %253, align 4
  %255 = load ptr, ptr %254, align 8
  %256 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %255, i32 0, i32 3
  %257 = load ptr, ptr %256, align 4
  %258 = shl i32 %247, 2
  tail call void %257(ptr noundef %254, i32 noundef %258, i32 noundef 1) #6
  %259 = load i32, ptr %71, align 4
  %260 = load i32, ptr %69, align 4
  %261 = add i32 %260, 8
  store i32 %261, ptr %69, align 4
  %262 = icmp eq i32 %259, 1
  br i1 %262, label %263, label %270

263:                                              ; preds = %252
  %264 = load ptr, ptr %253, align 4
  %265 = load ptr, ptr %264, align 8
  %266 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %265, i32 0, i32 3
  %267 = load ptr, ptr %266, align 4
  %268 = shl i32 %261, 2
  tail call void %267(ptr noundef %264, i32 noundef %268, i32 noundef 135269394) #6
  %269 = load i32, ptr %69, align 4
  br label %270

270:                                              ; preds = %263, %252, %249
  %271 = phi i32 [ %269, %263 ], [ %251, %249 ], [ %261, %252 ]
  %272 = add i32 %271, 56
  store i32 %272, ptr %69, align 4
  %273 = load i32, ptr %3, align 4
  %274 = icmp eq i32 %273, 80
  %275 = load i32, ptr %71, align 4
  %276 = icmp eq i32 %275, 1
  br i1 %274, label %277, label %285

277:                                              ; preds = %270
  br i1 %276, label %278, label %293

278:                                              ; preds = %277
  %279 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %280 = load ptr, ptr %279, align 4
  %281 = load ptr, ptr %280, align 8
  %282 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %281, i32 0, i32 3
  %283 = load ptr, ptr %282, align 4
  %284 = shl i32 %272, 2
  tail call void %283(ptr noundef %280, i32 noundef %284, i32 noundef 1023) #6
  br label %296

285:                                              ; preds = %270
  br i1 %276, label %286, label %293

286:                                              ; preds = %285
  %287 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %288 = load ptr, ptr %287, align 4
  %289 = load ptr, ptr %288, align 8
  %290 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %289, i32 0, i32 3
  %291 = load ptr, ptr %290, align 4
  %292 = shl i32 %272, 2
  tail call void %291(ptr noundef %288, i32 noundef %292, i32 noundef 2047) #6
  br label %296

293:                                              ; preds = %285, %277
  %294 = load i32, ptr %69, align 4
  %295 = add i32 %294, 8
  br label %301

296:                                              ; preds = %286, %278
  %297 = load i32, ptr %71, align 4
  %298 = load i32, ptr %69, align 4
  %299 = add i32 %298, 8
  store i32 %299, ptr %69, align 4
  %300 = icmp eq i32 %297, 1
  br i1 %300, label %304, label %301

301:                                              ; preds = %296, %293
  %302 = phi i32 [ %295, %293 ], [ %299, %296 ]
  %303 = add i32 %302, 456
  store i32 %303, ptr %69, align 4
  br label %315

304:                                              ; preds = %296
  %305 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %306 = load ptr, ptr %305, align 4
  %307 = load ptr, ptr %306, align 8
  %308 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %307, i32 0, i32 3
  %309 = load ptr, ptr %308, align 4
  %310 = shl i32 %299, 2
  tail call void %309(ptr noundef %306, i32 noundef %310, i32 noundef 527380) #6
  %311 = load i32, ptr %69, align 4
  %312 = load i32, ptr %71, align 4
  %313 = add i32 %311, 456
  store i32 %313, ptr %69, align 4
  %314 = icmp eq i32 %312, 1
  br i1 %314, label %318, label %315

315:                                              ; preds = %304, %301
  %316 = phi i32 [ %302, %301 ], [ %311, %304 ]
  %317 = add i32 %316, 480
  br label %339

318:                                              ; preds = %304
  %319 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %320 = load ptr, ptr %319, align 4
  %321 = load ptr, ptr %320, align 8
  %322 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %321, i32 0, i32 3
  %323 = load ptr, ptr %322, align 4
  %324 = shl i32 %313, 2
  tail call void %323(ptr noundef %320, i32 noundef %324, i32 noundef 1) #6
  %325 = load i32, ptr %71, align 4
  %326 = load i32, ptr %69, align 4
  %327 = add i32 %326, 24
  store i32 %327, ptr %69, align 4
  %328 = icmp eq i32 %325, 1
  br i1 %328, label %329, label %339

329:                                              ; preds = %318
  %330 = load ptr, ptr %319, align 4
  %331 = load ptr, ptr %330, align 8
  %332 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %331, i32 0, i32 3
  %333 = load ptr, ptr %332, align 4
  %334 = shl i32 %327, 2
  tail call void %333(ptr noundef %330, i32 noundef %334, i32 noundef 16) #6
  %335 = load i32, ptr %69, align 4
  %336 = load i32, ptr %71, align 4
  %337 = add i32 %335, 456
  store i32 %337, ptr %69, align 4
  %338 = icmp eq i32 %336, 1
  br i1 %338, label %342, label %339

339:                                              ; preds = %329, %318, %315
  %340 = phi i32 [ %335, %329 ], [ %327, %318 ], [ %317, %315 ]
  %341 = add i32 %340, 488
  br label %370

342:                                              ; preds = %329
  %343 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %344 = load ptr, ptr %343, align 4
  %345 = load ptr, ptr %344, align 8
  %346 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %345, i32 0, i32 3
  %347 = load ptr, ptr %346, align 4
  %348 = shl i32 %337, 2
  tail call void %347(ptr noundef %344, i32 noundef %348, i32 noundef 136) #6
  %349 = load ptr, ptr %343, align 4
  %350 = load ptr, ptr %349, align 8
  %351 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %350, i32 0, i32 3
  %352 = load ptr, ptr %351, align 4
  %353 = load i32, ptr %69, align 4
  %354 = shl i32 %353, 2
  %355 = add i32 %354, 32
  tail call void %352(ptr noundef %349, i32 noundef %355, i32 noundef 136) #6
  %356 = load i32, ptr %71, align 4
  %357 = load i32, ptr %69, align 4
  %358 = add i32 %357, 32
  store i32 %358, ptr %69, align 4
  %359 = icmp eq i32 %356, 1
  br i1 %359, label %360, label %370

360:                                              ; preds = %342
  %361 = load ptr, ptr %343, align 4
  %362 = load ptr, ptr %361, align 8
  %363 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %362, i32 0, i32 3
  %364 = load ptr, ptr %363, align 4
  %365 = shl i32 %358, 2
  tail call void %364(ptr noundef %361, i32 noundef %365, i32 noundef 4) #6
  %366 = load i32, ptr %69, align 4
  %367 = load i32, ptr %71, align 4
  %368 = add i32 %366, 184
  store i32 %368, ptr %69, align 4
  %369 = icmp eq i32 %367, 1
  br i1 %369, label %373, label %370

370:                                              ; preds = %360, %342, %339
  %371 = phi i32 [ %366, %360 ], [ %358, %342 ], [ %341, %339 ]
  %372 = add i32 %371, 208
  br label %391

373:                                              ; preds = %360
  %374 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %375 = load ptr, ptr %374, align 4
  %376 = load ptr, ptr %375, align 8
  %377 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %376, i32 0, i32 3
  %378 = load ptr, ptr %377, align 4
  %379 = shl i32 %368, 2
  tail call void %378(ptr noundef %375, i32 noundef %379, i32 noundef 38) #6
  %380 = load i32, ptr %71, align 4
  %381 = load i32, ptr %69, align 4
  %382 = add i32 %381, 24
  store i32 %382, ptr %69, align 4
  %383 = icmp eq i32 %380, 1
  br i1 %383, label %384, label %391

384:                                              ; preds = %373
  %385 = load ptr, ptr %374, align 4
  %386 = load ptr, ptr %385, align 8
  %387 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %386, i32 0, i32 3
  %388 = load ptr, ptr %387, align 4
  %389 = shl i32 %382, 2
  tail call void %388(ptr noundef %385, i32 noundef %389, i32 noundef 1065353216) #6
  %390 = load i32, ptr %69, align 4
  br label %391

391:                                              ; preds = %384, %373, %370
  %392 = phi i32 [ %390, %384 ], [ %372, %370 ], [ %382, %373 ]
  %393 = add i32 %392, 32
  store i32 %393, ptr %69, align 4
  %394 = load i32, ptr %3, align 4
  %395 = add i32 %394, -161
  %396 = icmp ult i32 %395, 9
  %397 = icmp eq i32 %394, 175
  %398 = or i1 %397, %396
  br i1 %398, label %399, label %401

399:                                              ; preds = %391
  %400 = add i32 %392, 40
  store i32 %400, ptr %69, align 4
  br label %401

401:                                              ; preds = %399, %391
  %402 = phi i32 [ %393, %391 ], [ %400, %399 ]
  %403 = load i32, ptr %71, align 4
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %407, label %405

405:                                              ; preds = %401
  %406 = add i32 %402, 8
  br label %425

407:                                              ; preds = %401
  %408 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %409 = load ptr, ptr %408, align 4
  %410 = load ptr, ptr %409, align 8
  %411 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %410, i32 0, i32 3
  %412 = load ptr, ptr %411, align 4
  %413 = shl i32 %402, 2
  tail call void %412(ptr noundef %409, i32 noundef %413, i32 noundef 26) #6
  %414 = load i32, ptr %71, align 4
  %415 = load i32, ptr %69, align 4
  %416 = add i32 %415, 8
  store i32 %416, ptr %69, align 4
  %417 = icmp eq i32 %414, 1
  br i1 %417, label %418, label %425

418:                                              ; preds = %407
  %419 = load ptr, ptr %408, align 4
  %420 = load ptr, ptr %419, align 8
  %421 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %420, i32 0, i32 3
  %422 = load ptr, ptr %421, align 4
  %423 = shl i32 %416, 2
  tail call void %422(ptr noundef %419, i32 noundef %423, i32 noundef 16) #6
  %424 = load i32, ptr %69, align 4
  br label %425

425:                                              ; preds = %418, %407, %405
  %426 = phi i32 [ %424, %418 ], [ %406, %405 ], [ %416, %407 ]
  %427 = add i32 %426, 8
  store i32 %427, ptr %69, align 4
  %428 = load i32, ptr %3, align 4
  %429 = icmp eq i32 %428, 80
  %430 = add i32 %426, 32
  %431 = select i1 %429, i32 %427, i32 %430
  %432 = add i32 %431, 296
  store i32 %432, ptr %69, align 4
  %433 = load i32, ptr %71, align 4
  %434 = icmp eq i32 %433, 1
  br i1 %434, label %437, label %435

435:                                              ; preds = %425
  %436 = add i32 %431, 312
  br label %458

437:                                              ; preds = %425
  %438 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %439 = load ptr, ptr %438, align 4
  %440 = load ptr, ptr %439, align 8
  %441 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %440, i32 0, i32 3
  %442 = load ptr, ptr %441, align 4
  %443 = shl i32 %432, 2
  tail call void %442(ptr noundef %439, i32 noundef %443, i32 noundef 82) #6
  %444 = load i32, ptr %71, align 4
  %445 = load i32, ptr %69, align 4
  %446 = add i32 %445, 16
  store i32 %446, ptr %69, align 4
  %447 = icmp eq i32 %444, 1
  br i1 %447, label %448, label %458

448:                                              ; preds = %437
  %449 = load ptr, ptr %438, align 4
  %450 = load ptr, ptr %449, align 8
  %451 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %450, i32 0, i32 3
  %452 = load ptr, ptr %451, align 4
  %453 = shl i32 %446, 2
  tail call void %452(ptr noundef %449, i32 noundef %453, i32 noundef 38) #6
  %454 = load i32, ptr %69, align 4
  %455 = load i32, ptr %71, align 4
  %456 = add i32 %454, 16
  store i32 %456, ptr %69, align 4
  %457 = icmp eq i32 %455, 1
  br i1 %457, label %461, label %458

458:                                              ; preds = %448, %437, %435
  %459 = phi i32 [ %454, %448 ], [ %446, %437 ], [ %436, %435 ]
  %460 = add i32 %459, 40
  br label %484

461:                                              ; preds = %448
  %462 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %463 = load ptr, ptr %462, align 4
  %464 = load ptr, ptr %463, align 8
  %465 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %464, i32 0, i32 3
  %466 = load ptr, ptr %465, align 4
  %467 = shl i32 %456, 2
  tail call void %466(ptr noundef %463, i32 noundef %467, i32 noundef 4) #6
  %468 = load i32, ptr %71, align 4
  %469 = load i32, ptr %69, align 4
  %470 = add i32 %469, 8
  store i32 %470, ptr %69, align 4
  %471 = icmp eq i32 %468, 1
  br i1 %471, label %474, label %472

472:                                              ; preds = %461
  %473 = add i32 %469, 24
  br label %484

474:                                              ; preds = %461
  %475 = load ptr, ptr %462, align 4
  %476 = load ptr, ptr %475, align 8
  %477 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %476, i32 0, i32 3
  %478 = load ptr, ptr %477, align 4
  %479 = shl i32 %470, 2
  tail call void %478(ptr noundef %475, i32 noundef %479, i32 noundef 4) #6
  %480 = load i32, ptr %71, align 4
  %481 = load i32, ptr %69, align 4
  %482 = add i32 %481, 16
  store i32 %482, ptr %69, align 4
  %483 = icmp eq i32 %480, 1
  br i1 %483, label %487, label %484

484:                                              ; preds = %474, %472, %458
  %485 = phi i32 [ %460, %458 ], [ %482, %474 ], [ %473, %472 ]
  %486 = add i32 %485, 24
  br label %506

487:                                              ; preds = %474
  %488 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %489 = load ptr, ptr %488, align 4
  %490 = load ptr, ptr %489, align 8
  %491 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %490, i32 0, i32 3
  %492 = load ptr, ptr %491, align 4
  %493 = shl i32 %482, 2
  tail call void %492(ptr noundef %489, i32 noundef %493, i32 noundef 26) #6
  %494 = load i32, ptr %69, align 4
  %495 = load i32, ptr %71, align 4
  %496 = add i32 %494, 24
  store i32 %496, ptr %69, align 4
  %497 = icmp eq i32 %495, 1
  br i1 %497, label %498, label %506

498:                                              ; preds = %487
  %499 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %500 = load ptr, ptr %499, align 4
  %501 = load ptr, ptr %500, align 8
  %502 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %501, i32 0, i32 3
  %503 = load ptr, ptr %502, align 4
  %504 = shl i32 %496, 2
  tail call void %503(ptr noundef %500, i32 noundef %504, i32 noundef 16776960) #6
  %505 = load i32, ptr %69, align 4
  br label %506

506:                                              ; preds = %498, %487, %484
  %507 = phi i32 [ %505, %498 ], [ %496, %487 ], [ %486, %484 ]
  %508 = add i32 %507, 16
  store i32 %508, ptr %69, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_unk10xx(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 8
  br label %23

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %11, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %12, align 4
  %18 = shl i32 %17, 2
  tail call void %16(ptr noundef %13, i32 noundef %18, i32 noundef 4) #6
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %12, align 4
  %21 = add i32 %20, 8
  store i32 %21, ptr %12, align 4
  %22 = icmp eq i32 %19, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %10, %6
  %24 = phi i32 [ %21, %10 ], [ %9, %6 ]
  %25 = phi ptr [ %12, %10 ], [ %7, %6 ]
  %26 = add i32 %24, 16
  store i32 %26, ptr %25, align 4
  br label %37

27:                                               ; preds = %10
  %28 = load ptr, ptr %11, align 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = shl i32 %21, 2
  tail call void %31(ptr noundef %28, i32 noundef %32, i32 noundef 4) #6
  %33 = load i32, ptr %12, align 4
  %34 = load i32, ptr %3, align 4
  %35 = add i32 %33, 16
  store i32 %35, ptr %12, align 4
  %36 = icmp eq i32 %34, 1
  br i1 %36, label %41, label %37

37:                                               ; preds = %27, %23
  %38 = phi ptr [ %25, %23 ], [ %12, %27 ]
  %39 = phi i32 [ %24, %23 ], [ %33, %27 ]
  %40 = add i32 %39, 32
  store i32 %40, ptr %38, align 4
  br label %72

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = shl i32 %35, 2
  tail call void %46(ptr noundef %43, i32 noundef %47, i32 noundef 128) #6
  %48 = load i32, ptr %3, align 4
  %49 = load i32, ptr %12, align 4
  %50 = add i32 %49, 8
  store i32 %50, ptr %12, align 4
  %51 = icmp eq i32 %48, 1
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = add i32 %49, 16
  store i32 %53, ptr %12, align 4
  br label %72

54:                                               ; preds = %41
  %55 = load ptr, ptr %42, align 4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = shl i32 %50, 2
  tail call void %58(ptr noundef %55, i32 noundef %59, i32 noundef 4) #6
  %60 = load i32, ptr %3, align 4
  %61 = load i32, ptr %12, align 4
  %62 = add i32 %61, 8
  store i32 %62, ptr %12, align 4
  %63 = icmp eq i32 %60, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = shl i32 %62, 2
  tail call void %69(ptr noundef %66, i32 noundef %70, i32 noundef 527380) #6
  %71 = load i32, ptr %12, align 4
  br label %72

72:                                               ; preds = %64, %54, %52, %37
  %73 = phi ptr [ %12, %64 ], [ %12, %52 ], [ %12, %54 ], [ %38, %37 ]
  %74 = phi i32 [ %71, %64 ], [ %53, %52 ], [ %62, %54 ], [ %40, %37 ]
  %75 = add i32 %74, 16
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 80
  %79 = load i32, ptr %3, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %78, label %81, label %89

81:                                               ; preds = %72
  br i1 %80, label %82, label %97

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = shl i32 %75, 2
  tail call void %87(ptr noundef %84, i32 noundef %88, i32 noundef 1023) #6
  br label %97

89:                                               ; preds = %72
  br i1 %80, label %90, label %97

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = shl i32 %75, 2
  tail call void %95(ptr noundef %92, i32 noundef %96, i32 noundef 2047) #6
  br label %97

97:                                               ; preds = %90, %89, %82, %81
  %98 = load i32, ptr %73, align 4
  %99 = add i32 %98, 24
  store i32 %99, ptr %73, align 4
  %100 = load i32, ptr %76, align 4
  switch i32 %100, label %107 [
    i32 80, label %104
    i32 134, label %104
    i32 152, label %104
    i32 170, label %104
    i32 172, label %104
    i32 132, label %101
    i32 146, label %101
    i32 148, label %101
    i32 150, label %101
    i32 165, label %102
    i32 168, label %102
    i32 160, label %103
    i32 163, label %103
    i32 175, label %103
  ]

101:                                              ; preds = %97, %97, %97, %97
  br label %104

102:                                              ; preds = %97, %97
  br label %104

103:                                              ; preds = %97, %97, %97
  br label %104

104:                                              ; preds = %103, %102, %101, %97, %97, %97, %97, %97
  %105 = phi i32 [ 2328, %101 ], [ 2072, %102 ], [ 8216, %103 ], [ 1304, %97 ], [ 1304, %97 ], [ 1304, %97 ], [ 1304, %97 ], [ 1304, %97 ]
  %106 = add i32 %98, %105
  store i32 %106, ptr %73, align 4
  br label %107

107:                                              ; preds = %104, %97
  %108 = phi i32 [ %99, %97 ], [ %106, %104 ]
  %109 = add i32 %108, 64
  store i32 %109, ptr %73, align 4
  %110 = load i32, ptr %76, align 4
  switch i32 %110, label %117 [
    i32 80, label %113
    i32 134, label %113
    i32 152, label %113
    i32 170, label %113
    i32 172, label %113
    i32 132, label %112
    i32 146, label %112
    i32 148, label %112
    i32 150, label %112
    i32 165, label %111
    i32 168, label %111
    i32 160, label %114
    i32 163, label %114
    i32 175, label %114
  ]

111:                                              ; preds = %107, %107
  br label %114

112:                                              ; preds = %107, %107, %107, %107
  br label %114

113:                                              ; preds = %107, %107, %107, %107, %107
  br label %114

114:                                              ; preds = %113, %112, %111, %107, %107, %107
  %115 = phi i32 [ 2112, %111 ], [ 2368, %112 ], [ 1344, %113 ], [ 8256, %107 ], [ 8256, %107 ], [ 8256, %107 ]
  %116 = add i32 %108, %115
  store i32 %116, ptr %73, align 4
  br label %117

117:                                              ; preds = %114, %107
  %118 = phi i32 [ %109, %107 ], [ %116, %114 ]
  %119 = add i32 %118, 64
  store i32 %119, ptr %73, align 4
  %120 = load i32, ptr %76, align 4
  switch i32 %120, label %127 [
    i32 80, label %123
    i32 134, label %123
    i32 152, label %123
    i32 170, label %123
    i32 172, label %123
    i32 132, label %122
    i32 146, label %122
    i32 148, label %122
    i32 150, label %122
    i32 165, label %121
    i32 168, label %121
    i32 160, label %124
    i32 163, label %124
    i32 175, label %124
  ]

121:                                              ; preds = %117, %117
  br label %124

122:                                              ; preds = %117, %117, %117, %117
  br label %124

123:                                              ; preds = %117, %117, %117, %117, %117
  br label %124

124:                                              ; preds = %123, %122, %121, %117, %117, %117
  %125 = phi i32 [ 2112, %121 ], [ 2368, %122 ], [ 1344, %123 ], [ 8256, %117 ], [ 8256, %117 ], [ 8256, %117 ]
  %126 = add i32 %118, %125
  store i32 %126, ptr %73, align 4
  br label %127

127:                                              ; preds = %124, %117
  %128 = phi i32 [ %119, %117 ], [ %126, %124 ]
  %129 = add i32 %128, 64
  store i32 %129, ptr %73, align 4
  %130 = load i32, ptr %76, align 4
  switch i32 %130, label %137 [
    i32 80, label %133
    i32 134, label %133
    i32 152, label %133
    i32 170, label %133
    i32 172, label %133
    i32 132, label %132
    i32 146, label %132
    i32 148, label %132
    i32 150, label %132
    i32 165, label %131
    i32 168, label %131
    i32 160, label %134
    i32 163, label %134
    i32 175, label %134
  ]

131:                                              ; preds = %127, %127
  br label %134

132:                                              ; preds = %127, %127, %127, %127
  br label %134

133:                                              ; preds = %127, %127, %127, %127, %127
  br label %134

134:                                              ; preds = %133, %132, %131, %127, %127, %127
  %135 = phi i32 [ 2112, %131 ], [ 2368, %132 ], [ 1344, %133 ], [ 8256, %127 ], [ 8256, %127 ], [ 8256, %127 ]
  %136 = add i32 %128, %135
  store i32 %136, ptr %73, align 4
  br label %137

137:                                              ; preds = %134, %127
  %138 = phi i32 [ %129, %127 ], [ %136, %134 ]
  %139 = add i32 %138, 64
  store i32 %139, ptr %73, align 4
  %140 = load i32, ptr %76, align 4
  switch i32 %140, label %147 [
    i32 80, label %143
    i32 134, label %143
    i32 152, label %143
    i32 170, label %143
    i32 172, label %143
    i32 132, label %142
    i32 146, label %142
    i32 148, label %142
    i32 150, label %142
    i32 165, label %141
    i32 168, label %141
    i32 160, label %144
    i32 163, label %144
    i32 175, label %144
  ]

141:                                              ; preds = %137, %137
  br label %144

142:                                              ; preds = %137, %137, %137, %137
  br label %144

143:                                              ; preds = %137, %137, %137, %137, %137
  br label %144

144:                                              ; preds = %143, %142, %141, %137, %137, %137
  %145 = phi i32 [ 2112, %141 ], [ 2368, %142 ], [ 1344, %143 ], [ 8256, %137 ], [ 8256, %137 ], [ 8256, %137 ]
  %146 = add i32 %138, %145
  store i32 %146, ptr %73, align 4
  br label %147

147:                                              ; preds = %144, %137
  %148 = phi i32 [ %139, %137 ], [ %146, %144 ]
  %149 = add i32 %148, 64
  store i32 %149, ptr %73, align 4
  %150 = load i32, ptr %76, align 4
  switch i32 %150, label %157 [
    i32 80, label %153
    i32 134, label %153
    i32 152, label %153
    i32 170, label %153
    i32 172, label %153
    i32 132, label %152
    i32 146, label %152
    i32 148, label %152
    i32 150, label %152
    i32 165, label %151
    i32 168, label %151
    i32 160, label %154
    i32 163, label %154
    i32 175, label %154
  ]

151:                                              ; preds = %147, %147
  br label %154

152:                                              ; preds = %147, %147, %147, %147
  br label %154

153:                                              ; preds = %147, %147, %147, %147, %147
  br label %154

154:                                              ; preds = %153, %152, %151, %147, %147, %147
  %155 = phi i32 [ 2112, %151 ], [ 2368, %152 ], [ 1344, %153 ], [ 8256, %147 ], [ 8256, %147 ], [ 8256, %147 ]
  %156 = add i32 %148, %155
  store i32 %156, ptr %73, align 4
  br label %157

157:                                              ; preds = %154, %147
  %158 = phi i32 [ %149, %147 ], [ %156, %154 ]
  %159 = add i32 %158, 64
  store i32 %159, ptr %73, align 4
  %160 = load i32, ptr %76, align 4
  switch i32 %160, label %167 [
    i32 80, label %163
    i32 134, label %163
    i32 152, label %163
    i32 170, label %163
    i32 172, label %163
    i32 132, label %162
    i32 146, label %162
    i32 148, label %162
    i32 150, label %162
    i32 165, label %161
    i32 168, label %161
    i32 160, label %164
    i32 163, label %164
    i32 175, label %164
  ]

161:                                              ; preds = %157, %157
  br label %164

162:                                              ; preds = %157, %157, %157, %157
  br label %164

163:                                              ; preds = %157, %157, %157, %157, %157
  br label %164

164:                                              ; preds = %163, %162, %161, %157, %157, %157
  %165 = phi i32 [ 2112, %161 ], [ 2368, %162 ], [ 1344, %163 ], [ 8256, %157 ], [ 8256, %157 ], [ 8256, %157 ]
  %166 = add i32 %158, %165
  store i32 %166, ptr %73, align 4
  br label %167

167:                                              ; preds = %164, %157
  %168 = phi i32 [ %159, %157 ], [ %166, %164 ]
  %169 = add i32 %168, 64
  store i32 %169, ptr %73, align 4
  %170 = load i32, ptr %76, align 4
  switch i32 %170, label %177 [
    i32 80, label %173
    i32 134, label %173
    i32 152, label %173
    i32 170, label %173
    i32 172, label %173
    i32 132, label %172
    i32 146, label %172
    i32 148, label %172
    i32 150, label %172
    i32 165, label %171
    i32 168, label %171
    i32 160, label %174
    i32 163, label %174
    i32 175, label %174
  ]

171:                                              ; preds = %167, %167
  br label %174

172:                                              ; preds = %167, %167, %167, %167
  br label %174

173:                                              ; preds = %167, %167, %167, %167, %167
  br label %174

174:                                              ; preds = %173, %172, %171, %167, %167, %167
  %175 = phi i32 [ 2112, %171 ], [ 2368, %172 ], [ 1344, %173 ], [ 8256, %167 ], [ 8256, %167 ], [ 8256, %167 ]
  %176 = add i32 %168, %175
  store i32 %176, ptr %73, align 4
  br label %177

177:                                              ; preds = %174, %167
  %178 = phi i32 [ %169, %167 ], [ %176, %174 ]
  %179 = add i32 %178, 64
  store i32 %179, ptr %73, align 4
  %180 = load i32, ptr %3, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %184, label %182

182:                                              ; preds = %177
  %183 = add i32 %178, 72
  store i32 %183, ptr %73, align 4
  br label %195

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr %186, align 8
  %188 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %187, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  %190 = shl i32 %179, 2
  tail call void %189(ptr noundef %186, i32 noundef %190, i32 noundef 4) #6
  %191 = load i32, ptr %73, align 4
  %192 = load i32, ptr %3, align 4
  %193 = add i32 %191, 8
  store i32 %193, ptr %73, align 4
  %194 = icmp eq i32 %192, 1
  br i1 %194, label %198, label %195

195:                                              ; preds = %184, %182
  %196 = phi i32 [ %183, %182 ], [ %193, %184 ]
  %197 = add i32 %196, 16
  store i32 %197, ptr %73, align 4
  br label %209

198:                                              ; preds = %184
  %199 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %200 = load ptr, ptr %199, align 4
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %201, i32 0, i32 3
  %203 = load ptr, ptr %202, align 4
  %204 = shl i32 %193, 2
  tail call void %203(ptr noundef %200, i32 noundef %204, i32 noundef 4) #6
  %205 = load i32, ptr %73, align 4
  %206 = load i32, ptr %3, align 4
  %207 = add i32 %205, 16
  store i32 %207, ptr %73, align 4
  %208 = icmp eq i32 %206, 1
  br i1 %208, label %212, label %209

209:                                              ; preds = %198, %195
  %210 = phi i32 [ %197, %195 ], [ %207, %198 ]
  %211 = add i32 %210, 8
  store i32 %211, ptr %73, align 4
  br label %223

212:                                              ; preds = %198
  %213 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %214 = load ptr, ptr %213, align 4
  %215 = load ptr, ptr %214, align 8
  %216 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %215, i32 0, i32 3
  %217 = load ptr, ptr %216, align 4
  %218 = shl i32 %207, 2
  tail call void %217(ptr noundef %214, i32 noundef %218, i32 noundef 128) #6
  %219 = load i32, ptr %73, align 4
  %220 = load i32, ptr %3, align 4
  %221 = add i32 %219, 8
  store i32 %221, ptr %73, align 4
  %222 = icmp eq i32 %220, 1
  br i1 %222, label %226, label %223

223:                                              ; preds = %212, %209
  %224 = phi i32 [ %211, %209 ], [ %221, %212 ]
  %225 = add i32 %224, 8
  store i32 %225, ptr %73, align 4
  br label %237

226:                                              ; preds = %212
  %227 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %228 = load ptr, ptr %227, align 4
  %229 = load ptr, ptr %228, align 8
  %230 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %229, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = shl i32 %221, 2
  tail call void %231(ptr noundef %228, i32 noundef %232, i32 noundef 4) #6
  %233 = load i32, ptr %73, align 4
  %234 = load i32, ptr %3, align 4
  %235 = add i32 %233, 8
  store i32 %235, ptr %73, align 4
  %236 = icmp eq i32 %234, 1
  br i1 %236, label %240, label %237

237:                                              ; preds = %226, %223
  %238 = phi i32 [ %225, %223 ], [ %235, %226 ]
  %239 = add i32 %238, 16
  store i32 %239, ptr %73, align 4
  br label %251

240:                                              ; preds = %226
  %241 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %242 = load ptr, ptr %241, align 4
  %243 = load ptr, ptr %242, align 8
  %244 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %243, i32 0, i32 3
  %245 = load ptr, ptr %244, align 4
  %246 = shl i32 %235, 2
  tail call void %245(ptr noundef %242, i32 noundef %246, i32 noundef 1) #6
  %247 = load i32, ptr %73, align 4
  %248 = load i32, ptr %3, align 4
  %249 = add i32 %247, 16
  store i32 %249, ptr %73, align 4
  %250 = icmp eq i32 %248, 1
  br i1 %250, label %254, label %251

251:                                              ; preds = %240, %237
  %252 = phi i32 [ %239, %237 ], [ %249, %240 ]
  %253 = add i32 %252, 16
  store i32 %253, ptr %73, align 4
  br label %273

254:                                              ; preds = %240
  %255 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %256 = load ptr, ptr %255, align 4
  %257 = load ptr, ptr %256, align 8
  %258 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %257, i32 0, i32 3
  %259 = load ptr, ptr %258, align 4
  %260 = shl i32 %249, 2
  tail call void %259(ptr noundef %256, i32 noundef %260, i32 noundef 39) #6
  %261 = load i32, ptr %73, align 4
  %262 = load i32, ptr %3, align 4
  %263 = add i32 %261, 16
  store i32 %263, ptr %73, align 4
  %264 = icmp eq i32 %262, 1
  br i1 %264, label %265, label %273

265:                                              ; preds = %254
  %266 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %267 = load ptr, ptr %266, align 4
  %268 = load ptr, ptr %267, align 8
  %269 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %268, i32 0, i32 3
  %270 = load ptr, ptr %269, align 4
  %271 = shl i32 %263, 2
  tail call void %270(ptr noundef %267, i32 noundef %271, i32 noundef 38) #6
  %272 = load i32, ptr %73, align 4
  br label %273

273:                                              ; preds = %265, %254, %251
  %274 = phi i32 [ %272, %265 ], [ %263, %254 ], [ %253, %251 ]
  %275 = add i32 %274, 16
  store i32 %275, ptr %73, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_unk34xx(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 16
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %5, %9 ], [ %23, %11 ]
  %13 = phi i32 [ 0, %9 ], [ %21, %11 ]
  %14 = load ptr, ptr %10, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = shl i32 %13, 3
  %19 = add i32 %12, %18
  %20 = shl i32 %19, 2
  tail call void %17(ptr noundef %14, i32 noundef %20, i32 noundef 67108864) #6
  %21 = add nuw nsw i32 %13, 1
  %22 = icmp eq i32 %21, 16
  %23 = load i32, ptr %3, align 4
  br i1 %22, label %24, label %11

24:                                               ; preds = %11
  %25 = load i32, ptr %6, align 4
  %26 = add i32 %23, 416
  store i32 %26, ptr %3, align 4
  %27 = icmp eq i32 %25, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %1
  %29 = phi i32 [ %23, %24 ], [ %5, %1 ]
  %30 = add i32 %29, 448
  br label %62

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = shl i32 %26, 2
  tail call void %36(ptr noundef %33, i32 noundef %37, i32 noundef 82034655) #6
  %38 = load i32, ptr %6, align 4
  %39 = load i32, ptr %3, align 4
  %40 = add i32 %39, 8
  store i32 %40, ptr %3, align 4
  %41 = icmp eq i32 %38, 1
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  %43 = add i32 %39, 32
  br label %62

44:                                               ; preds = %31
  %45 = load ptr, ptr %32, align 4
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = shl i32 %40, 2
  tail call void %48(ptr noundef %45, i32 noundef %49, i32 noundef 82034655) #6
  %50 = load i32, ptr %6, align 4
  %51 = load i32, ptr %3, align 4
  %52 = add i32 %51, 24
  store i32 %52, ptr %3, align 4
  %53 = icmp eq i32 %50, 1
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = shl i32 %52, 2
  tail call void %59(ptr noundef %56, i32 noundef %60, i32 noundef 130593) #6
  %61 = load i32, ptr %3, align 4
  br label %62

62:                                               ; preds = %54, %44, %42, %28
  %63 = phi i32 [ %61, %54 ], [ %43, %42 ], [ %52, %44 ], [ %30, %28 ]
  %64 = add i32 %63, 8
  store i32 %64, ptr %3, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %66, 159
  br i1 %67, label %68, label %101

68:                                               ; preds = %62
  %69 = load i32, ptr %6, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = shl i32 %64, 2
  tail call void %76(ptr noundef %73, i32 noundef %77, i32 noundef 262957185) #6
  %78 = load i32, ptr %3, align 4
  br label %79

79:                                               ; preds = %71, %68
  %80 = phi i32 [ %78, %71 ], [ %64, %68 ]
  %81 = add i32 %80, 8
  store i32 %81, ptr %3, align 4
  %82 = load i32, ptr %65, align 4
  %83 = add i32 %82, -161
  %84 = icmp ult i32 %83, 9
  %85 = icmp eq i32 %82, 175
  %86 = or i1 %85, %84
  br i1 %86, label %87, label %101

87:                                               ; preds = %79
  %88 = load i32, ptr %6, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = shl i32 %81, 2
  tail call void %95(ptr noundef %92, i32 noundef %96, i32 noundef 1) #6
  %97 = load i32, ptr %3, align 4
  br label %98

98:                                               ; preds = %90, %87
  %99 = phi i32 [ %97, %90 ], [ %81, %87 ]
  %100 = add i32 %99, 32
  store i32 %100, ptr %3, align 4
  br label %101

101:                                              ; preds = %98, %79, %62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_gene_ropc(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 80
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -161
  %8 = icmp ult i32 %7, 9
  %9 = icmp eq i32 %4, 175
  %10 = or i1 %9, %8
  %11 = select i1 %10, i32 556647, i32 2096743
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ 15968, %1 ], [ %11, %6 ]
  %14 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 64
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = add i32 %15, 80
  br label %40

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = shl i32 %16, 2
  tail call void %27(ptr noundef %24, i32 noundef %28, i32 noundef 2) #6
  %29 = load i32, ptr %17, align 4
  %30 = load i32, ptr %14, align 4
  %31 = add i32 %30, 16
  store i32 %31, ptr %14, align 4
  %32 = icmp eq i32 %29, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load ptr, ptr %23, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = shl i32 %31, 2
  tail call void %37(ptr noundef %34, i32 noundef %38, i32 noundef %13) #6
  %39 = load i32, ptr %14, align 4
  br label %40

40:                                               ; preds = %33, %22, %20
  %41 = phi i32 [ %39, %33 ], [ %21, %20 ], [ %31, %22 ]
  %42 = add i32 %41, 40
  store i32 %42, ptr %14, align 4
  %43 = load i32, ptr %3, align 4
  %44 = add i32 %43, -161
  %45 = icmp ult i32 %44, 9
  %46 = icmp eq i32 %43, 175
  %47 = or i1 %46, %45
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = load i32, ptr %17, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = shl i32 %42, 2
  tail call void %56(ptr noundef %53, i32 noundef %57, i32 noundef 1) #6
  %58 = load i32, ptr %14, align 4
  br label %59

59:                                               ; preds = %51, %48
  %60 = phi i32 [ %58, %51 ], [ %42, %48 ]
  %61 = add i32 %60, 8
  br label %62

62:                                               ; preds = %59, %40
  %63 = phi i32 [ %42, %40 ], [ %61, %59 ]
  %64 = add i32 %63, 56
  store i32 %64, ptr %14, align 4
  %65 = load i32, ptr %3, align 4
  %66 = icmp ult i32 %65, 160
  %67 = add i32 %65, -170
  %68 = icmp ult i32 %67, 3
  %69 = or i1 %66, %68
  br i1 %69, label %84, label %70

70:                                               ; preds = %62
  %71 = load i32, ptr %17, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = shl i32 %64, 2
  tail call void %78(ptr noundef %75, i32 noundef %79, i32 noundef 21) #6
  %80 = load i32, ptr %14, align 4
  br label %81

81:                                               ; preds = %73, %70
  %82 = phi i32 [ %80, %73 ], [ %64, %70 ]
  %83 = add i32 %82, 8
  br label %84

84:                                               ; preds = %81, %62
  %85 = phi i32 [ %83, %81 ], [ %64, %62 ]
  %86 = add i32 %85, 8
  store i32 %86, ptr %14, align 4
  %87 = load i32, ptr %17, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = add i32 %85, 40
  br label %122

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = shl i32 %86, 2
  tail call void %96(ptr noundef %93, i32 noundef %97, i32 noundef 1) #6
  %98 = load i32, ptr %17, align 4
  %99 = load i32, ptr %14, align 4
  %100 = add i32 %99, 8
  store i32 %100, ptr %14, align 4
  %101 = icmp eq i32 %98, 1
  br i1 %101, label %104, label %102

102:                                              ; preds = %91
  %103 = add i32 %99, 32
  br label %122

104:                                              ; preds = %91
  %105 = load ptr, ptr %92, align 4
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %106, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = shl i32 %100, 2
  tail call void %108(ptr noundef %105, i32 noundef %109, i32 noundef 16) #6
  %110 = load i32, ptr %17, align 4
  %111 = load i32, ptr %14, align 4
  %112 = add i32 %111, 24
  store i32 %112, ptr %14, align 4
  %113 = icmp eq i32 %110, 1
  br i1 %113, label %114, label %122

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = shl i32 %112, 2
  tail call void %119(ptr noundef %116, i32 noundef %120, i32 noundef 1) #6
  %121 = load i32, ptr %14, align 4
  br label %122

122:                                              ; preds = %114, %104, %102, %89
  %123 = phi i32 [ %121, %114 ], [ %103, %102 ], [ %112, %104 ], [ %90, %89 ]
  %124 = add i32 %123, 16
  store i32 %124, ptr %14, align 4
  %125 = load i32, ptr %3, align 4
  switch i32 %125, label %126 [
    i32 134, label %128
    i32 146, label %128
    i32 152, label %128
  ]

126:                                              ; preds = %122
  %127 = icmp ugt i32 %125, 159
  br i1 %127, label %128, label %205

128:                                              ; preds = %126, %122, %122, %122
  %129 = add i32 %123, 40
  store i32 %129, ptr %14, align 4
  %130 = load i32, ptr %17, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = add i32 %123, 48
  br label %157

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = shl i32 %129, 2
  tail call void %139(ptr noundef %136, i32 noundef %140, i32 noundef 4) #6
  %141 = load i32, ptr %17, align 4
  %142 = load i32, ptr %14, align 4
  %143 = add i32 %142, 8
  store i32 %143, ptr %14, align 4
  %144 = icmp eq i32 %141, 1
  br i1 %144, label %147, label %145

145:                                              ; preds = %134
  %146 = add i32 %142, 24
  br label %179

147:                                              ; preds = %134
  %148 = load ptr, ptr %135, align 4
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %149, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = shl i32 %143, 2
  tail call void %151(ptr noundef %148, i32 noundef %152, i32 noundef 1024) #6
  %153 = load i32, ptr %17, align 4
  %154 = load i32, ptr %14, align 4
  %155 = add i32 %154, 8
  store i32 %155, ptr %14, align 4
  %156 = icmp eq i32 %153, 1
  br i1 %156, label %160, label %157

157:                                              ; preds = %147, %132
  %158 = phi i32 [ %133, %132 ], [ %154, %147 ]
  %159 = add i32 %158, 16
  br label %179

160:                                              ; preds = %147
  %161 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %163, i32 0, i32 3
  %165 = load ptr, ptr %164, align 4
  %166 = shl i32 %155, 2
  tail call void %165(ptr noundef %162, i32 noundef %166, i32 noundef 768) #6
  %167 = load i32, ptr %17, align 4
  %168 = load i32, ptr %14, align 4
  %169 = add i32 %168, 8
  store i32 %169, ptr %14, align 4
  %170 = icmp eq i32 %167, 1
  br i1 %170, label %171, label %179

171:                                              ; preds = %160
  %172 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %174, i32 0, i32 3
  %176 = load ptr, ptr %175, align 4
  %177 = shl i32 %169, 2
  tail call void %176(ptr noundef %173, i32 noundef %177, i32 noundef 4097) #6
  %178 = load i32, ptr %14, align 4
  br label %179

179:                                              ; preds = %171, %160, %157, %145
  %180 = phi i32 [ %178, %171 ], [ %159, %157 ], [ %169, %160 ], [ %146, %145 ]
  %181 = add i32 %180, 8
  store i32 %181, ptr %14, align 4
  %182 = load i32, ptr %3, align 4
  %183 = icmp eq i32 %182, 160
  br i1 %183, label %205, label %184

184:                                              ; preds = %179
  %185 = add i32 %182, -161
  %186 = icmp ult i32 %185, 9
  %187 = icmp eq i32 %182, 175
  %188 = or i1 %187, %186
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = add i32 %180, 16
  br label %205

191:                                              ; preds = %184
  %192 = load i32, ptr %17, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %197, i32 0, i32 3
  %199 = load ptr, ptr %198, align 4
  %200 = shl i32 %181, 2
  tail call void %199(ptr noundef %196, i32 noundef %200, i32 noundef 21) #6
  %201 = load i32, ptr %14, align 4
  br label %202

202:                                              ; preds = %194, %191
  %203 = phi i32 [ %201, %194 ], [ %181, %191 ]
  %204 = add i32 %203, 8
  br label %205

205:                                              ; preds = %202, %189, %179, %126
  %206 = phi i32 [ %181, %179 ], [ %204, %202 ], [ %190, %189 ], [ %124, %126 ]
  %207 = add i32 %206, 40
  store i32 %207, ptr %14, align 4
  %208 = load i32, ptr %17, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %221

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %212 = load ptr, ptr %211, align 4
  %213 = load ptr, ptr %212, align 8
  %214 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %213, i32 0, i32 3
  %215 = load ptr, ptr %214, align 4
  %216 = shl i32 %207, 2
  tail call void %215(ptr noundef %212, i32 noundef %216, i32 noundef 2) #6
  %217 = load i32, ptr %14, align 4
  %218 = load i32, ptr %17, align 4
  %219 = add i32 %217, 72
  store i32 %219, ptr %14, align 4
  %220 = icmp eq i32 %218, 1
  br i1 %220, label %224, label %221

221:                                              ; preds = %210, %205
  %222 = phi i32 [ %217, %210 ], [ %207, %205 ]
  %223 = add i32 %222, 96
  br label %258

224:                                              ; preds = %210
  %225 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %226 = load ptr, ptr %225, align 4
  %227 = load ptr, ptr %226, align 8
  %228 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %227, i32 0, i32 3
  %229 = load ptr, ptr %228, align 4
  %230 = shl i32 %219, 2
  tail call void %229(ptr noundef %226, i32 noundef %230, i32 noundef 1) #6
  %231 = load i32, ptr %17, align 4
  %232 = load i32, ptr %14, align 4
  %233 = add i32 %232, 8
  store i32 %233, ptr %14, align 4
  %234 = icmp eq i32 %231, 1
  br i1 %234, label %237, label %235

235:                                              ; preds = %224
  %236 = add i32 %232, 24
  br label %258

237:                                              ; preds = %224
  %238 = load ptr, ptr %225, align 4
  %239 = load ptr, ptr %238, align 8
  %240 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %239, i32 0, i32 3
  %241 = load ptr, ptr %240, align 4
  %242 = shl i32 %233, 2
  tail call void %241(ptr noundef %238, i32 noundef %242, i32 noundef 16) #6
  %243 = load i32, ptr %17, align 4
  %244 = load i32, ptr %14, align 4
  %245 = add i32 %244, 16
  store i32 %245, ptr %14, align 4
  %246 = icmp eq i32 %243, 1
  br i1 %246, label %247, label %258

247:                                              ; preds = %237
  %248 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %249 = load ptr, ptr %248, align 4
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %250, i32 0, i32 3
  %252 = load ptr, ptr %251, align 4
  %253 = shl i32 %245, 2
  tail call void %252(ptr noundef %249, i32 noundef %253, i32 noundef 1) #6
  %254 = load i32, ptr %14, align 4
  %255 = load i32, ptr %17, align 4
  %256 = add i32 %254, 160
  store i32 %256, ptr %14, align 4
  %257 = icmp eq i32 %255, 1
  br i1 %257, label %261, label %258

258:                                              ; preds = %247, %237, %235, %221
  %259 = phi i32 [ %254, %247 ], [ %223, %221 ], [ %245, %237 ], [ %236, %235 ]
  %260 = add i32 %259, 296
  store i32 %260, ptr %14, align 4
  br label %289

261:                                              ; preds = %247
  %262 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %263 = load ptr, ptr %262, align 4
  %264 = load ptr, ptr %263, align 8
  %265 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %264, i32 0, i32 3
  %266 = load ptr, ptr %265, align 4
  %267 = shl i32 %256, 2
  tail call void %266(ptr noundef %263, i32 noundef %267, i32 noundef 16) #6
  %268 = load i32, ptr %17, align 4
  %269 = load i32, ptr %14, align 4
  %270 = add i32 %269, 136
  store i32 %270, ptr %14, align 4
  %271 = icmp eq i32 %268, 1
  br i1 %271, label %272, label %289

272:                                              ; preds = %272, %261
  %273 = phi i32 [ %284, %272 ], [ %270, %261 ]
  %274 = phi i32 [ %282, %272 ], [ 0, %261 ]
  %275 = load ptr, ptr %262, align 4
  %276 = load ptr, ptr %275, align 8
  %277 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %276, i32 0, i32 3
  %278 = load ptr, ptr %277, align 4
  %279 = shl i32 %274, 3
  %280 = add i32 %273, %279
  %281 = shl i32 %280, 2
  tail call void %278(ptr noundef %275, i32 noundef %281, i32 noundef 1065353216) #6
  %282 = add nuw nsw i32 %274, 1
  %283 = icmp eq i32 %282, 16
  %284 = load i32, ptr %14, align 4
  br i1 %283, label %285, label %272

285:                                              ; preds = %272
  %286 = load i32, ptr %17, align 4
  %287 = add i32 %284, 328
  store i32 %287, ptr %14, align 4
  %288 = icmp eq i32 %286, 1
  br i1 %288, label %292, label %289

289:                                              ; preds = %285, %261, %258
  %290 = phi i32 [ %284, %285 ], [ %270, %261 ], [ %260, %258 ]
  %291 = add i32 %290, 344
  br label %313

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %294 = load ptr, ptr %293, align 4
  %295 = load ptr, ptr %294, align 8
  %296 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %295, i32 0, i32 3
  %297 = load ptr, ptr %296, align 4
  %298 = shl i32 %287, 2
  tail call void %297(ptr noundef %294, i32 noundef %298, i32 noundef 16) #6
  %299 = load i32, ptr %17, align 4
  %300 = load i32, ptr %14, align 4
  %301 = add i32 %300, 16
  store i32 %301, ptr %14, align 4
  %302 = icmp eq i32 %299, 1
  br i1 %302, label %303, label %313

303:                                              ; preds = %292
  %304 = load ptr, ptr %293, align 4
  %305 = load ptr, ptr %304, align 8
  %306 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %305, i32 0, i32 3
  %307 = load ptr, ptr %306, align 4
  %308 = shl i32 %301, 2
  tail call void %307(ptr noundef %304, i32 noundef %308, i32 noundef 63) #6
  %309 = load i32, ptr %14, align 4
  %310 = load i32, ptr %17, align 4
  %311 = add i32 %309, 56
  store i32 %311, ptr %14, align 4
  %312 = icmp eq i32 %310, 1
  br i1 %312, label %316, label %313

313:                                              ; preds = %303, %292, %289
  %314 = phi i32 [ %309, %303 ], [ %301, %292 ], [ %291, %289 ]
  %315 = add i32 %314, 72
  br label %327

316:                                              ; preds = %303
  %317 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %318 = load ptr, ptr %317, align 4
  %319 = load ptr, ptr %318, align 8
  %320 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %319, i32 0, i32 3
  %321 = load ptr, ptr %320, align 4
  %322 = shl i32 %311, 2
  tail call void %321(ptr noundef %318, i32 noundef %322, i32 noundef 1) #6
  %323 = load i32, ptr %17, align 4
  %324 = load i32, ptr %14, align 4
  %325 = add i32 %324, 16
  store i32 %325, ptr %14, align 4
  %326 = icmp eq i32 %323, 1
  br i1 %326, label %330, label %327

327:                                              ; preds = %316, %313
  %328 = phi i32 [ %325, %316 ], [ %315, %313 ]
  %329 = add i32 %328, 16
  br label %348

330:                                              ; preds = %316
  %331 = load ptr, ptr %317, align 4
  %332 = load ptr, ptr %331, align 8
  %333 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %332, i32 0, i32 3
  %334 = load ptr, ptr %333, align 4
  %335 = shl i32 %325, 2
  tail call void %334(ptr noundef %331, i32 noundef %335, i32 noundef 1) #6
  %336 = load i32, ptr %14, align 4
  %337 = load i32, ptr %17, align 4
  %338 = add i32 %336, 16
  store i32 %338, ptr %14, align 4
  %339 = icmp eq i32 %337, 1
  br i1 %339, label %340, label %348

340:                                              ; preds = %330
  %341 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %342 = load ptr, ptr %341, align 4
  %343 = load ptr, ptr %342, align 8
  %344 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %343, i32 0, i32 3
  %345 = load ptr, ptr %344, align 4
  %346 = shl i32 %338, 2
  tail call void %345(ptr noundef %342, i32 noundef %346, i32 noundef 1) #6
  %347 = load i32, ptr %14, align 4
  br label %348

348:                                              ; preds = %340, %330, %327
  %349 = phi i32 [ %347, %340 ], [ %338, %330 ], [ %329, %327 ]
  %350 = add i32 %349, 8
  store i32 %350, ptr %14, align 4
  %351 = load i32, ptr %3, align 4
  %352 = icmp ugt i32 %351, 159
  br i1 %352, label %353, label %368

353:                                              ; preds = %348
  %354 = add i32 %349, 24
  store i32 %354, ptr %14, align 4
  %355 = load i32, ptr %17, align 4
  %356 = icmp eq i32 %355, 1
  br i1 %356, label %357, label %365

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %359 = load ptr, ptr %358, align 4
  %360 = load ptr, ptr %359, align 8
  %361 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %360, i32 0, i32 3
  %362 = load ptr, ptr %361, align 4
  %363 = shl i32 %354, 2
  tail call void %362(ptr noundef %359, i32 noundef %363, i32 noundef 4097) #6
  %364 = load i32, ptr %14, align 4
  br label %365

365:                                              ; preds = %357, %353
  %366 = phi i32 [ %364, %357 ], [ %354, %353 ]
  %367 = add i32 %366, 96
  br label %370

368:                                              ; preds = %348
  %369 = add i32 %349, 104
  br label %370

370:                                              ; preds = %368, %365
  %371 = phi i32 [ %369, %368 ], [ %367, %365 ]
  store i32 %371, ptr %14, align 4
  %372 = load i32, ptr %17, align 4
  %373 = icmp eq i32 %372, 1
  br i1 %373, label %376, label %374

374:                                              ; preds = %370
  %375 = add i32 %371, 64
  br label %387

376:                                              ; preds = %370
  %377 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %378 = load ptr, ptr %377, align 4
  %379 = load ptr, ptr %378, align 8
  %380 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %379, i32 0, i32 3
  %381 = load ptr, ptr %380, align 4
  %382 = shl i32 %371, 2
  tail call void %381(ptr noundef %378, i32 noundef %382, i32 noundef 17) #6
  %383 = load i32, ptr %17, align 4
  %384 = load i32, ptr %14, align 4
  %385 = add i32 %384, 64
  store i32 %385, ptr %14, align 4
  %386 = icmp eq i32 %383, 1
  br i1 %386, label %390, label %387

387:                                              ; preds = %376, %374
  %388 = phi i32 [ %385, %376 ], [ %375, %374 ]
  %389 = add i32 %388, 64
  br label %408

390:                                              ; preds = %376
  %391 = load ptr, ptr %377, align 4
  %392 = load ptr, ptr %391, align 8
  %393 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %392, i32 0, i32 3
  %394 = load ptr, ptr %393, align 4
  %395 = shl i32 %385, 2
  tail call void %394(ptr noundef %391, i32 noundef %395, i32 noundef 15) #6
  %396 = load i32, ptr %14, align 4
  %397 = load i32, ptr %17, align 4
  %398 = add i32 %396, 64
  store i32 %398, ptr %14, align 4
  %399 = icmp eq i32 %397, 1
  br i1 %399, label %400, label %408

400:                                              ; preds = %390
  %401 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %402 = load ptr, ptr %401, align 4
  %403 = load ptr, ptr %402, align 8
  %404 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %403, i32 0, i32 3
  %405 = load ptr, ptr %404, align 4
  %406 = shl i32 %398, 2
  tail call void %405(ptr noundef %402, i32 noundef %406, i32 noundef 17) #6
  %407 = load i32, ptr %14, align 4
  br label %408

408:                                              ; preds = %400, %390, %387
  %409 = phi i32 [ %407, %400 ], [ %398, %390 ], [ %389, %387 ]
  %410 = add i32 %409, 16
  store i32 %410, ptr %14, align 4
  %411 = load i32, ptr %3, align 4
  %412 = icmp eq i32 %411, 80
  %413 = add i32 %409, 32
  %414 = select i1 %412, i32 %410, i32 %413
  %415 = add i32 %414, 24
  store i32 %415, ptr %14, align 4
  %416 = load i32, ptr %17, align 4
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %421, label %418

418:                                              ; preds = %408
  %419 = add i32 %414, 40
  %420 = add i32 %414, 48
  store i32 %420, ptr %14, align 4
  br label %452

421:                                              ; preds = %408
  %422 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %423 = load ptr, ptr %422, align 4
  %424 = load ptr, ptr %423, align 8
  %425 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %424, i32 0, i32 3
  %426 = load ptr, ptr %425, align 4
  %427 = shl i32 %415, 2
  tail call void %426(ptr noundef %423, i32 noundef %427, i32 noundef 1) #6
  %428 = load ptr, ptr %422, align 4
  %429 = load ptr, ptr %428, align 8
  %430 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %429, i32 0, i32 3
  %431 = load ptr, ptr %430, align 4
  %432 = load i32, ptr %14, align 4
  %433 = shl i32 %432, 2
  %434 = add i32 %433, 32
  tail call void %431(ptr noundef %428, i32 noundef %434, i32 noundef 1) #6
  %435 = load i32, ptr %17, align 4
  %436 = load i32, ptr %14, align 4
  %437 = add i32 %436, 16
  store i32 %437, ptr %14, align 4
  %438 = icmp eq i32 %435, 1
  br i1 %438, label %442, label %439

439:                                              ; preds = %421
  %440 = add i32 %436, 24
  %441 = add i32 %436, 32
  store i32 %441, ptr %14, align 4
  br label %466

442:                                              ; preds = %421
  %443 = load ptr, ptr %422, align 4
  %444 = load ptr, ptr %443, align 8
  %445 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %444, i32 0, i32 3
  %446 = load ptr, ptr %445, align 4
  %447 = shl i32 %437, 2
  tail call void %446(ptr noundef %443, i32 noundef %447, i32 noundef 1) #6
  %448 = load i32, ptr %17, align 4
  %449 = load i32, ptr %14, align 4
  %450 = add i32 %449, 8
  store i32 %450, ptr %14, align 4
  %451 = icmp eq i32 %448, 1
  br i1 %451, label %455, label %452

452:                                              ; preds = %442, %418
  %453 = phi i32 [ %419, %418 ], [ %449, %442 ]
  %454 = add i32 %453, 16
  br label %480

455:                                              ; preds = %442
  %456 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %457 = load ptr, ptr %456, align 4
  %458 = load ptr, ptr %457, align 8
  %459 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %458, i32 0, i32 3
  %460 = load ptr, ptr %459, align 4
  %461 = shl i32 %450, 2
  tail call void %460(ptr noundef %457, i32 noundef %461, i32 noundef 2) #6
  %462 = load i32, ptr %17, align 4
  %463 = load i32, ptr %14, align 4
  %464 = add i32 %463, 8
  store i32 %464, ptr %14, align 4
  %465 = icmp eq i32 %462, 1
  br i1 %465, label %469, label %466

466:                                              ; preds = %455, %439
  %467 = phi i32 [ %440, %439 ], [ %463, %455 ]
  %468 = add i32 %467, 16
  br label %494

469:                                              ; preds = %455
  %470 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %471 = load ptr, ptr %470, align 4
  %472 = load ptr, ptr %471, align 8
  %473 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %472, i32 0, i32 3
  %474 = load ptr, ptr %473, align 4
  %475 = shl i32 %464, 2
  tail call void %474(ptr noundef %471, i32 noundef %475, i32 noundef 1) #6
  %476 = load i32, ptr %17, align 4
  %477 = load i32, ptr %14, align 4
  %478 = add i32 %477, 8
  store i32 %478, ptr %14, align 4
  %479 = icmp eq i32 %476, 1
  br i1 %479, label %483, label %480

480:                                              ; preds = %469, %452
  %481 = phi i32 [ %454, %452 ], [ %477, %469 ]
  %482 = add i32 %481, 32
  br label %508

483:                                              ; preds = %469
  %484 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %485 = load ptr, ptr %484, align 4
  %486 = load ptr, ptr %485, align 8
  %487 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %486, i32 0, i32 3
  %488 = load ptr, ptr %487, align 4
  %489 = shl i32 %478, 2
  tail call void %488(ptr noundef %485, i32 noundef %489, i32 noundef 2) #6
  %490 = load i32, ptr %17, align 4
  %491 = load i32, ptr %14, align 4
  %492 = add i32 %491, 8
  store i32 %492, ptr %14, align 4
  %493 = icmp eq i32 %490, 1
  br i1 %493, label %497, label %494

494:                                              ; preds = %483, %466
  %495 = phi i32 [ %468, %466 ], [ %491, %483 ]
  %496 = add i32 %495, 24
  br label %508

497:                                              ; preds = %483
  %498 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %499 = load ptr, ptr %498, align 4
  %500 = load ptr, ptr %499, align 8
  %501 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %500, i32 0, i32 3
  %502 = load ptr, ptr %501, align 4
  %503 = shl i32 %492, 2
  tail call void %502(ptr noundef %499, i32 noundef %503, i32 noundef 1) #6
  %504 = load i32, ptr %17, align 4
  %505 = load i32, ptr %14, align 4
  %506 = add i32 %505, 16
  store i32 %506, ptr %14, align 4
  %507 = icmp eq i32 %504, 1
  br i1 %507, label %511, label %508

508:                                              ; preds = %497, %494, %480
  %509 = phi i32 [ %482, %480 ], [ %506, %497 ], [ %496, %494 ]
  %510 = add i32 %509, 16
  br label %530

511:                                              ; preds = %497
  %512 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %513 = load ptr, ptr %512, align 4
  %514 = load ptr, ptr %513, align 8
  %515 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %514, i32 0, i32 3
  %516 = load ptr, ptr %515, align 4
  %517 = shl i32 %506, 2
  tail call void %516(ptr noundef %513, i32 noundef %517, i32 noundef %13) #6
  %518 = load i32, ptr %14, align 4
  %519 = load i32, ptr %17, align 4
  %520 = add i32 %518, 16
  store i32 %520, ptr %14, align 4
  %521 = icmp eq i32 %519, 1
  br i1 %521, label %522, label %530

522:                                              ; preds = %511
  %523 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %524 = load ptr, ptr %523, align 4
  %525 = load ptr, ptr %524, align 8
  %526 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %525, i32 0, i32 3
  %527 = load ptr, ptr %526, align 4
  %528 = shl i32 %520, 2
  tail call void %527(ptr noundef %524, i32 noundef %528, i32 noundef 262957185) #6
  %529 = load i32, ptr %14, align 4
  br label %530

530:                                              ; preds = %522, %511, %508
  %531 = phi i32 [ %529, %522 ], [ %520, %511 ], [ %510, %508 ]
  %532 = add i32 %531, 8
  store i32 %532, ptr %14, align 4
  %533 = load i32, ptr %3, align 4
  %534 = add i32 %533, -161
  %535 = icmp ult i32 %534, 9
  %536 = icmp eq i32 %533, 175
  %537 = or i1 %536, %535
  br i1 %537, label %538, label %1006

538:                                              ; preds = %530
  %539 = add i32 %531, 16
  store i32 %539, ptr %14, align 4
  %540 = load i32, ptr %17, align 4
  %541 = icmp eq i32 %540, 1
  br i1 %541, label %544, label %542

542:                                              ; preds = %538
  %543 = add i32 %531, 80
  br label %665

544:                                              ; preds = %538
  %545 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %546 = load ptr, ptr %545, align 4
  %547 = load ptr, ptr %546, align 8
  %548 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %547, i32 0, i32 3
  %549 = load ptr, ptr %548, align 4
  %550 = shl i32 %539, 2
  tail call void %549(ptr noundef %546, i32 noundef %550, i32 noundef 1) #6
  %551 = load ptr, ptr %545, align 4
  %552 = load ptr, ptr %551, align 8
  %553 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %552, i32 0, i32 3
  %554 = load ptr, ptr %553, align 4
  %555 = load i32, ptr %14, align 4
  %556 = shl i32 %555, 2
  %557 = add i32 %556, 32
  tail call void %554(ptr noundef %551, i32 noundef %557, i32 noundef 1) #6
  %558 = load ptr, ptr %545, align 4
  %559 = load ptr, ptr %558, align 8
  %560 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %559, i32 0, i32 3
  %561 = load ptr, ptr %560, align 4
  %562 = load i32, ptr %14, align 4
  %563 = shl i32 %562, 2
  %564 = add i32 %563, 64
  tail call void %561(ptr noundef %558, i32 noundef %564, i32 noundef 1) #6
  %565 = load ptr, ptr %545, align 4
  %566 = load ptr, ptr %565, align 8
  %567 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %566, i32 0, i32 3
  %568 = load ptr, ptr %567, align 4
  %569 = load i32, ptr %14, align 4
  %570 = shl i32 %569, 2
  %571 = add i32 %570, 96
  tail call void %568(ptr noundef %565, i32 noundef %571, i32 noundef 1) #6
  %572 = load ptr, ptr %545, align 4
  %573 = load ptr, ptr %572, align 8
  %574 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %573, i32 0, i32 3
  %575 = load ptr, ptr %574, align 4
  %576 = load i32, ptr %14, align 4
  %577 = shl i32 %576, 2
  %578 = add i32 %577, 128
  tail call void %575(ptr noundef %572, i32 noundef %578, i32 noundef 1) #6
  %579 = load ptr, ptr %545, align 4
  %580 = load ptr, ptr %579, align 8
  %581 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %580, i32 0, i32 3
  %582 = load ptr, ptr %581, align 4
  %583 = load i32, ptr %14, align 4
  %584 = shl i32 %583, 2
  %585 = add i32 %584, 160
  tail call void %582(ptr noundef %579, i32 noundef %585, i32 noundef 1) #6
  %586 = load ptr, ptr %545, align 4
  %587 = load ptr, ptr %586, align 8
  %588 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %587, i32 0, i32 3
  %589 = load ptr, ptr %588, align 4
  %590 = load i32, ptr %14, align 4
  %591 = shl i32 %590, 2
  %592 = add i32 %591, 192
  tail call void %589(ptr noundef %586, i32 noundef %592, i32 noundef 1) #6
  %593 = load ptr, ptr %545, align 4
  %594 = load ptr, ptr %593, align 8
  %595 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %594, i32 0, i32 3
  %596 = load ptr, ptr %595, align 4
  %597 = load i32, ptr %14, align 4
  %598 = shl i32 %597, 2
  %599 = add i32 %598, 224
  tail call void %596(ptr noundef %593, i32 noundef %599, i32 noundef 1) #6
  %600 = load i32, ptr %17, align 4
  %601 = load i32, ptr %14, align 4
  %602 = add i32 %601, 64
  store i32 %602, ptr %14, align 4
  %603 = icmp eq i32 %600, 1
  br i1 %603, label %606, label %604

604:                                              ; preds = %544
  %605 = add i32 %601, 128
  br label %728

606:                                              ; preds = %544
  %607 = load ptr, ptr %545, align 4
  %608 = load ptr, ptr %607, align 8
  %609 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %608, i32 0, i32 3
  %610 = load ptr, ptr %609, align 4
  %611 = shl i32 %602, 2
  tail call void %610(ptr noundef %607, i32 noundef %611, i32 noundef 1) #6
  %612 = load ptr, ptr %545, align 4
  %613 = load ptr, ptr %612, align 8
  %614 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %613, i32 0, i32 3
  %615 = load ptr, ptr %614, align 4
  %616 = load i32, ptr %14, align 4
  %617 = shl i32 %616, 2
  %618 = add i32 %617, 32
  tail call void %615(ptr noundef %612, i32 noundef %618, i32 noundef 1) #6
  %619 = load ptr, ptr %545, align 4
  %620 = load ptr, ptr %619, align 8
  %621 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %620, i32 0, i32 3
  %622 = load ptr, ptr %621, align 4
  %623 = load i32, ptr %14, align 4
  %624 = shl i32 %623, 2
  %625 = add i32 %624, 64
  tail call void %622(ptr noundef %619, i32 noundef %625, i32 noundef 1) #6
  %626 = load ptr, ptr %545, align 4
  %627 = load ptr, ptr %626, align 8
  %628 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %627, i32 0, i32 3
  %629 = load ptr, ptr %628, align 4
  %630 = load i32, ptr %14, align 4
  %631 = shl i32 %630, 2
  %632 = add i32 %631, 96
  tail call void %629(ptr noundef %626, i32 noundef %632, i32 noundef 1) #6
  %633 = load ptr, ptr %545, align 4
  %634 = load ptr, ptr %633, align 8
  %635 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %634, i32 0, i32 3
  %636 = load ptr, ptr %635, align 4
  %637 = load i32, ptr %14, align 4
  %638 = shl i32 %637, 2
  %639 = add i32 %638, 128
  tail call void %636(ptr noundef %633, i32 noundef %639, i32 noundef 1) #6
  %640 = load ptr, ptr %545, align 4
  %641 = load ptr, ptr %640, align 8
  %642 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %641, i32 0, i32 3
  %643 = load ptr, ptr %642, align 4
  %644 = load i32, ptr %14, align 4
  %645 = shl i32 %644, 2
  %646 = add i32 %645, 160
  tail call void %643(ptr noundef %640, i32 noundef %646, i32 noundef 1) #6
  %647 = load ptr, ptr %545, align 4
  %648 = load ptr, ptr %647, align 8
  %649 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %648, i32 0, i32 3
  %650 = load ptr, ptr %649, align 4
  %651 = load i32, ptr %14, align 4
  %652 = shl i32 %651, 2
  %653 = add i32 %652, 192
  tail call void %650(ptr noundef %647, i32 noundef %653, i32 noundef 1) #6
  %654 = load ptr, ptr %545, align 4
  %655 = load ptr, ptr %654, align 8
  %656 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %655, i32 0, i32 3
  %657 = load ptr, ptr %656, align 4
  %658 = load i32, ptr %14, align 4
  %659 = shl i32 %658, 2
  %660 = add i32 %659, 224
  tail call void %657(ptr noundef %654, i32 noundef %660, i32 noundef 1) #6
  %661 = load i32, ptr %17, align 4
  %662 = load i32, ptr %14, align 4
  %663 = add i32 %662, 64
  store i32 %663, ptr %14, align 4
  %664 = icmp eq i32 %661, 1
  br i1 %664, label %668, label %665

665:                                              ; preds = %606, %542
  %666 = phi i32 [ %543, %542 ], [ %662, %606 ]
  %667 = add i32 %666, 128
  br label %792

668:                                              ; preds = %606
  %669 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %670 = load ptr, ptr %669, align 4
  %671 = load ptr, ptr %670, align 8
  %672 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %671, i32 0, i32 3
  %673 = load ptr, ptr %672, align 4
  %674 = shl i32 %663, 2
  tail call void %673(ptr noundef %670, i32 noundef %674, i32 noundef 1) #6
  %675 = load ptr, ptr %669, align 4
  %676 = load ptr, ptr %675, align 8
  %677 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %676, i32 0, i32 3
  %678 = load ptr, ptr %677, align 4
  %679 = load i32, ptr %14, align 4
  %680 = shl i32 %679, 2
  %681 = add i32 %680, 32
  tail call void %678(ptr noundef %675, i32 noundef %681, i32 noundef 1) #6
  %682 = load ptr, ptr %669, align 4
  %683 = load ptr, ptr %682, align 8
  %684 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %683, i32 0, i32 3
  %685 = load ptr, ptr %684, align 4
  %686 = load i32, ptr %14, align 4
  %687 = shl i32 %686, 2
  %688 = add i32 %687, 64
  tail call void %685(ptr noundef %682, i32 noundef %688, i32 noundef 1) #6
  %689 = load ptr, ptr %669, align 4
  %690 = load ptr, ptr %689, align 8
  %691 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %690, i32 0, i32 3
  %692 = load ptr, ptr %691, align 4
  %693 = load i32, ptr %14, align 4
  %694 = shl i32 %693, 2
  %695 = add i32 %694, 96
  tail call void %692(ptr noundef %689, i32 noundef %695, i32 noundef 1) #6
  %696 = load ptr, ptr %669, align 4
  %697 = load ptr, ptr %696, align 8
  %698 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %697, i32 0, i32 3
  %699 = load ptr, ptr %698, align 4
  %700 = load i32, ptr %14, align 4
  %701 = shl i32 %700, 2
  %702 = add i32 %701, 128
  tail call void %699(ptr noundef %696, i32 noundef %702, i32 noundef 1) #6
  %703 = load ptr, ptr %669, align 4
  %704 = load ptr, ptr %703, align 8
  %705 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %704, i32 0, i32 3
  %706 = load ptr, ptr %705, align 4
  %707 = load i32, ptr %14, align 4
  %708 = shl i32 %707, 2
  %709 = add i32 %708, 160
  tail call void %706(ptr noundef %703, i32 noundef %709, i32 noundef 1) #6
  %710 = load ptr, ptr %669, align 4
  %711 = load ptr, ptr %710, align 8
  %712 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %711, i32 0, i32 3
  %713 = load ptr, ptr %712, align 4
  %714 = load i32, ptr %14, align 4
  %715 = shl i32 %714, 2
  %716 = add i32 %715, 192
  tail call void %713(ptr noundef %710, i32 noundef %716, i32 noundef 1) #6
  %717 = load ptr, ptr %669, align 4
  %718 = load ptr, ptr %717, align 8
  %719 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %718, i32 0, i32 3
  %720 = load ptr, ptr %719, align 4
  %721 = load i32, ptr %14, align 4
  %722 = shl i32 %721, 2
  %723 = add i32 %722, 224
  tail call void %720(ptr noundef %717, i32 noundef %723, i32 noundef 1) #6
  %724 = load i32, ptr %17, align 4
  %725 = load i32, ptr %14, align 4
  %726 = add i32 %725, 64
  store i32 %726, ptr %14, align 4
  %727 = icmp eq i32 %724, 1
  br i1 %727, label %732, label %728

728:                                              ; preds = %668, %604
  %729 = phi i32 [ %605, %604 ], [ %725, %668 ]
  %730 = add i32 %729, 128
  %731 = add i32 %729, 192
  store i32 %731, ptr %14, align 4
  br label %855

732:                                              ; preds = %668
  %733 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %734 = load ptr, ptr %733, align 4
  %735 = load ptr, ptr %734, align 8
  %736 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %735, i32 0, i32 3
  %737 = load ptr, ptr %736, align 4
  %738 = shl i32 %726, 2
  tail call void %737(ptr noundef %734, i32 noundef %738, i32 noundef 2) #6
  %739 = load ptr, ptr %733, align 4
  %740 = load ptr, ptr %739, align 8
  %741 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %740, i32 0, i32 3
  %742 = load ptr, ptr %741, align 4
  %743 = load i32, ptr %14, align 4
  %744 = shl i32 %743, 2
  %745 = add i32 %744, 32
  tail call void %742(ptr noundef %739, i32 noundef %745, i32 noundef 2) #6
  %746 = load ptr, ptr %733, align 4
  %747 = load ptr, ptr %746, align 8
  %748 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %747, i32 0, i32 3
  %749 = load ptr, ptr %748, align 4
  %750 = load i32, ptr %14, align 4
  %751 = shl i32 %750, 2
  %752 = add i32 %751, 64
  tail call void %749(ptr noundef %746, i32 noundef %752, i32 noundef 2) #6
  %753 = load ptr, ptr %733, align 4
  %754 = load ptr, ptr %753, align 8
  %755 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %754, i32 0, i32 3
  %756 = load ptr, ptr %755, align 4
  %757 = load i32, ptr %14, align 4
  %758 = shl i32 %757, 2
  %759 = add i32 %758, 96
  tail call void %756(ptr noundef %753, i32 noundef %759, i32 noundef 2) #6
  %760 = load ptr, ptr %733, align 4
  %761 = load ptr, ptr %760, align 8
  %762 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %761, i32 0, i32 3
  %763 = load ptr, ptr %762, align 4
  %764 = load i32, ptr %14, align 4
  %765 = shl i32 %764, 2
  %766 = add i32 %765, 128
  tail call void %763(ptr noundef %760, i32 noundef %766, i32 noundef 2) #6
  %767 = load ptr, ptr %733, align 4
  %768 = load ptr, ptr %767, align 8
  %769 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %768, i32 0, i32 3
  %770 = load ptr, ptr %769, align 4
  %771 = load i32, ptr %14, align 4
  %772 = shl i32 %771, 2
  %773 = add i32 %772, 160
  tail call void %770(ptr noundef %767, i32 noundef %773, i32 noundef 2) #6
  %774 = load ptr, ptr %733, align 4
  %775 = load ptr, ptr %774, align 8
  %776 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %775, i32 0, i32 3
  %777 = load ptr, ptr %776, align 4
  %778 = load i32, ptr %14, align 4
  %779 = shl i32 %778, 2
  %780 = add i32 %779, 192
  tail call void %777(ptr noundef %774, i32 noundef %780, i32 noundef 2) #6
  %781 = load ptr, ptr %733, align 4
  %782 = load ptr, ptr %781, align 8
  %783 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %782, i32 0, i32 3
  %784 = load ptr, ptr %783, align 4
  %785 = load i32, ptr %14, align 4
  %786 = shl i32 %785, 2
  %787 = add i32 %786, 224
  tail call void %784(ptr noundef %781, i32 noundef %787, i32 noundef 2) #6
  %788 = load i32, ptr %17, align 4
  %789 = load i32, ptr %14, align 4
  %790 = add i32 %789, 64
  store i32 %790, ptr %14, align 4
  %791 = icmp eq i32 %788, 1
  br i1 %791, label %795, label %792

792:                                              ; preds = %732, %665
  %793 = phi i32 [ %667, %665 ], [ %789, %732 ]
  %794 = add i32 %793, 128
  store i32 %794, ptr %14, align 4
  br label %918

795:                                              ; preds = %732
  %796 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %797 = load ptr, ptr %796, align 4
  %798 = load ptr, ptr %797, align 8
  %799 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %798, i32 0, i32 3
  %800 = load ptr, ptr %799, align 4
  %801 = shl i32 %790, 2
  tail call void %800(ptr noundef %797, i32 noundef %801, i32 noundef 1) #6
  %802 = load ptr, ptr %796, align 4
  %803 = load ptr, ptr %802, align 8
  %804 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %803, i32 0, i32 3
  %805 = load ptr, ptr %804, align 4
  %806 = load i32, ptr %14, align 4
  %807 = shl i32 %806, 2
  %808 = add i32 %807, 32
  tail call void %805(ptr noundef %802, i32 noundef %808, i32 noundef 1) #6
  %809 = load ptr, ptr %796, align 4
  %810 = load ptr, ptr %809, align 8
  %811 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %810, i32 0, i32 3
  %812 = load ptr, ptr %811, align 4
  %813 = load i32, ptr %14, align 4
  %814 = shl i32 %813, 2
  %815 = add i32 %814, 64
  tail call void %812(ptr noundef %809, i32 noundef %815, i32 noundef 1) #6
  %816 = load ptr, ptr %796, align 4
  %817 = load ptr, ptr %816, align 8
  %818 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %817, i32 0, i32 3
  %819 = load ptr, ptr %818, align 4
  %820 = load i32, ptr %14, align 4
  %821 = shl i32 %820, 2
  %822 = add i32 %821, 96
  tail call void %819(ptr noundef %816, i32 noundef %822, i32 noundef 1) #6
  %823 = load ptr, ptr %796, align 4
  %824 = load ptr, ptr %823, align 8
  %825 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %824, i32 0, i32 3
  %826 = load ptr, ptr %825, align 4
  %827 = load i32, ptr %14, align 4
  %828 = shl i32 %827, 2
  %829 = add i32 %828, 128
  tail call void %826(ptr noundef %823, i32 noundef %829, i32 noundef 1) #6
  %830 = load ptr, ptr %796, align 4
  %831 = load ptr, ptr %830, align 8
  %832 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %831, i32 0, i32 3
  %833 = load ptr, ptr %832, align 4
  %834 = load i32, ptr %14, align 4
  %835 = shl i32 %834, 2
  %836 = add i32 %835, 160
  tail call void %833(ptr noundef %830, i32 noundef %836, i32 noundef 1) #6
  %837 = load ptr, ptr %796, align 4
  %838 = load ptr, ptr %837, align 8
  %839 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %838, i32 0, i32 3
  %840 = load ptr, ptr %839, align 4
  %841 = load i32, ptr %14, align 4
  %842 = shl i32 %841, 2
  %843 = add i32 %842, 192
  tail call void %840(ptr noundef %837, i32 noundef %843, i32 noundef 1) #6
  %844 = load ptr, ptr %796, align 4
  %845 = load ptr, ptr %844, align 8
  %846 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %845, i32 0, i32 3
  %847 = load ptr, ptr %846, align 4
  %848 = load i32, ptr %14, align 4
  %849 = shl i32 %848, 2
  %850 = add i32 %849, 224
  tail call void %847(ptr noundef %844, i32 noundef %850, i32 noundef 1) #6
  %851 = load i32, ptr %17, align 4
  %852 = load i32, ptr %14, align 4
  %853 = add i32 %852, 64
  store i32 %853, ptr %14, align 4
  %854 = icmp eq i32 %851, 1
  br i1 %854, label %858, label %855

855:                                              ; preds = %795, %728
  %856 = phi i32 [ %730, %728 ], [ %852, %795 ]
  %857 = add i32 %856, 216
  br label %981

858:                                              ; preds = %795
  %859 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %860 = load ptr, ptr %859, align 4
  %861 = load ptr, ptr %860, align 8
  %862 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %861, i32 0, i32 3
  %863 = load ptr, ptr %862, align 4
  %864 = shl i32 %853, 2
  tail call void %863(ptr noundef %860, i32 noundef %864, i32 noundef 2) #6
  %865 = load ptr, ptr %859, align 4
  %866 = load ptr, ptr %865, align 8
  %867 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %866, i32 0, i32 3
  %868 = load ptr, ptr %867, align 4
  %869 = load i32, ptr %14, align 4
  %870 = shl i32 %869, 2
  %871 = add i32 %870, 32
  tail call void %868(ptr noundef %865, i32 noundef %871, i32 noundef 2) #6
  %872 = load ptr, ptr %859, align 4
  %873 = load ptr, ptr %872, align 8
  %874 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %873, i32 0, i32 3
  %875 = load ptr, ptr %874, align 4
  %876 = load i32, ptr %14, align 4
  %877 = shl i32 %876, 2
  %878 = add i32 %877, 64
  tail call void %875(ptr noundef %872, i32 noundef %878, i32 noundef 2) #6
  %879 = load ptr, ptr %859, align 4
  %880 = load ptr, ptr %879, align 8
  %881 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %880, i32 0, i32 3
  %882 = load ptr, ptr %881, align 4
  %883 = load i32, ptr %14, align 4
  %884 = shl i32 %883, 2
  %885 = add i32 %884, 96
  tail call void %882(ptr noundef %879, i32 noundef %885, i32 noundef 2) #6
  %886 = load ptr, ptr %859, align 4
  %887 = load ptr, ptr %886, align 8
  %888 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %887, i32 0, i32 3
  %889 = load ptr, ptr %888, align 4
  %890 = load i32, ptr %14, align 4
  %891 = shl i32 %890, 2
  %892 = add i32 %891, 128
  tail call void %889(ptr noundef %886, i32 noundef %892, i32 noundef 2) #6
  %893 = load ptr, ptr %859, align 4
  %894 = load ptr, ptr %893, align 8
  %895 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %894, i32 0, i32 3
  %896 = load ptr, ptr %895, align 4
  %897 = load i32, ptr %14, align 4
  %898 = shl i32 %897, 2
  %899 = add i32 %898, 160
  tail call void %896(ptr noundef %893, i32 noundef %899, i32 noundef 2) #6
  %900 = load ptr, ptr %859, align 4
  %901 = load ptr, ptr %900, align 8
  %902 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %901, i32 0, i32 3
  %903 = load ptr, ptr %902, align 4
  %904 = load i32, ptr %14, align 4
  %905 = shl i32 %904, 2
  %906 = add i32 %905, 192
  tail call void %903(ptr noundef %900, i32 noundef %906, i32 noundef 2) #6
  %907 = load ptr, ptr %859, align 4
  %908 = load ptr, ptr %907, align 8
  %909 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %908, i32 0, i32 3
  %910 = load ptr, ptr %909, align 4
  %911 = load i32, ptr %14, align 4
  %912 = shl i32 %911, 2
  %913 = add i32 %912, 224
  tail call void %910(ptr noundef %907, i32 noundef %913, i32 noundef 2) #6
  %914 = load i32, ptr %17, align 4
  %915 = load i32, ptr %14, align 4
  %916 = add i32 %915, 64
  store i32 %916, ptr %14, align 4
  %917 = icmp eq i32 %914, 1
  br i1 %917, label %921, label %918

918:                                              ; preds = %858, %792
  %919 = phi i32 [ %794, %792 ], [ %915, %858 ]
  %920 = add i32 %919, 152
  br label %981

921:                                              ; preds = %858
  %922 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %923 = load ptr, ptr %922, align 4
  %924 = load ptr, ptr %923, align 8
  %925 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %924, i32 0, i32 3
  %926 = load ptr, ptr %925, align 4
  %927 = shl i32 %916, 2
  tail call void %926(ptr noundef %923, i32 noundef %927, i32 noundef 1) #6
  %928 = load ptr, ptr %922, align 4
  %929 = load ptr, ptr %928, align 8
  %930 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %929, i32 0, i32 3
  %931 = load ptr, ptr %930, align 4
  %932 = load i32, ptr %14, align 4
  %933 = shl i32 %932, 2
  %934 = add i32 %933, 32
  tail call void %931(ptr noundef %928, i32 noundef %934, i32 noundef 1) #6
  %935 = load ptr, ptr %922, align 4
  %936 = load ptr, ptr %935, align 8
  %937 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %936, i32 0, i32 3
  %938 = load ptr, ptr %937, align 4
  %939 = load i32, ptr %14, align 4
  %940 = shl i32 %939, 2
  %941 = add i32 %940, 64
  tail call void %938(ptr noundef %935, i32 noundef %941, i32 noundef 1) #6
  %942 = load ptr, ptr %922, align 4
  %943 = load ptr, ptr %942, align 8
  %944 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %943, i32 0, i32 3
  %945 = load ptr, ptr %944, align 4
  %946 = load i32, ptr %14, align 4
  %947 = shl i32 %946, 2
  %948 = add i32 %947, 96
  tail call void %945(ptr noundef %942, i32 noundef %948, i32 noundef 1) #6
  %949 = load ptr, ptr %922, align 4
  %950 = load ptr, ptr %949, align 8
  %951 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %950, i32 0, i32 3
  %952 = load ptr, ptr %951, align 4
  %953 = load i32, ptr %14, align 4
  %954 = shl i32 %953, 2
  %955 = add i32 %954, 128
  tail call void %952(ptr noundef %949, i32 noundef %955, i32 noundef 1) #6
  %956 = load ptr, ptr %922, align 4
  %957 = load ptr, ptr %956, align 8
  %958 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %957, i32 0, i32 3
  %959 = load ptr, ptr %958, align 4
  %960 = load i32, ptr %14, align 4
  %961 = shl i32 %960, 2
  %962 = add i32 %961, 160
  tail call void %959(ptr noundef %956, i32 noundef %962, i32 noundef 1) #6
  %963 = load ptr, ptr %922, align 4
  %964 = load ptr, ptr %963, align 8
  %965 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %964, i32 0, i32 3
  %966 = load ptr, ptr %965, align 4
  %967 = load i32, ptr %14, align 4
  %968 = shl i32 %967, 2
  %969 = add i32 %968, 192
  tail call void %966(ptr noundef %963, i32 noundef %969, i32 noundef 1) #6
  %970 = load ptr, ptr %922, align 4
  %971 = load ptr, ptr %970, align 8
  %972 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %971, i32 0, i32 3
  %973 = load ptr, ptr %972, align 4
  %974 = load i32, ptr %14, align 4
  %975 = shl i32 %974, 2
  %976 = add i32 %975, 224
  tail call void %973(ptr noundef %970, i32 noundef %976, i32 noundef 1) #6
  %977 = load i32, ptr %17, align 4
  %978 = load i32, ptr %14, align 4
  %979 = add i32 %978, 88
  store i32 %979, ptr %14, align 4
  %980 = icmp eq i32 %977, 1
  br i1 %980, label %984, label %981

981:                                              ; preds = %921, %918, %855
  %982 = phi i32 [ %857, %855 ], [ %979, %921 ], [ %920, %918 ]
  %983 = add i32 %982, 48
  br label %1003

984:                                              ; preds = %921
  %985 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %986 = load ptr, ptr %985, align 4
  %987 = load ptr, ptr %986, align 8
  %988 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %987, i32 0, i32 3
  %989 = load ptr, ptr %988, align 4
  %990 = shl i32 %979, 2
  tail call void %989(ptr noundef %986, i32 noundef %990, i32 noundef 1) #6
  %991 = load i32, ptr %14, align 4
  %992 = load i32, ptr %17, align 4
  %993 = add i32 %991, 48
  store i32 %993, ptr %14, align 4
  %994 = icmp eq i32 %992, 1
  br i1 %994, label %995, label %1003

995:                                              ; preds = %984
  %996 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %997 = load ptr, ptr %996, align 4
  %998 = load ptr, ptr %997, align 8
  %999 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %998, i32 0, i32 3
  %1000 = load ptr, ptr %999, align 4
  %1001 = shl i32 %993, 2
  tail call void %1000(ptr noundef %997, i32 noundef %1001, i32 noundef 1) #6
  %1002 = load i32, ptr %14, align 4
  br label %1003

1003:                                             ; preds = %995, %984, %981
  %1004 = phi i32 [ %1002, %995 ], [ %993, %984 ], [ %983, %981 ]
  %1005 = add i32 %1004, 24
  br label %1012

1006:                                             ; preds = %530
  %1007 = icmp ugt i32 %533, 159
  br i1 %1007, label %1008, label %1010

1008:                                             ; preds = %1006
  %1009 = add i32 %531, 64
  br label %1012

1010:                                             ; preds = %1006
  %1011 = add i32 %531, 32
  br label %1012

1012:                                             ; preds = %1010, %1008, %1003
  %1013 = phi i32 [ %1009, %1008 ], [ %1011, %1010 ], [ %1005, %1003 ]
  %1014 = add i32 %1013, 72
  store i32 %1014, ptr %14, align 4
  %1015 = load i32, ptr %3, align 4
  %1016 = icmp ugt i32 %1015, 159
  %1017 = add i32 %1013, 88
  %1018 = select i1 %1016, i32 %1017, i32 %1014
  %1019 = add i32 %1018, 72
  store i32 %1019, ptr %14, align 4
  %1020 = load i32, ptr %17, align 4
  %1021 = icmp eq i32 %1020, 1
  br i1 %1021, label %1025, label %1022

1022:                                             ; preds = %1012
  %1023 = add i32 %1018, 80
  %1024 = add i32 %1018, 88
  store i32 %1024, ptr %14, align 4
  br label %1048

1025:                                             ; preds = %1012
  %1026 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1027 = load ptr, ptr %1026, align 4
  %1028 = load ptr, ptr %1027, align 8
  %1029 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1028, i32 0, i32 3
  %1030 = load ptr, ptr %1029, align 4
  %1031 = shl i32 %1019, 2
  tail call void %1030(ptr noundef %1027, i32 noundef %1031, i32 noundef 1) #6
  %1032 = load i32, ptr %17, align 4
  %1033 = load i32, ptr %14, align 4
  %1034 = add i32 %1033, 8
  store i32 %1034, ptr %14, align 4
  %1035 = icmp eq i32 %1032, 1
  br i1 %1035, label %1038, label %1036

1036:                                             ; preds = %1025
  %1037 = add i32 %1033, 16
  store i32 %1037, ptr %14, align 4
  br label %1062

1038:                                             ; preds = %1025
  %1039 = load ptr, ptr %1026, align 4
  %1040 = load ptr, ptr %1039, align 8
  %1041 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1040, i32 0, i32 3
  %1042 = load ptr, ptr %1041, align 4
  %1043 = shl i32 %1034, 2
  tail call void %1042(ptr noundef %1039, i32 noundef %1043, i32 noundef 2) #6
  %1044 = load i32, ptr %17, align 4
  %1045 = load i32, ptr %14, align 4
  %1046 = add i32 %1045, 8
  store i32 %1046, ptr %14, align 4
  %1047 = icmp eq i32 %1044, 1
  br i1 %1047, label %1051, label %1048

1048:                                             ; preds = %1038, %1022
  %1049 = phi i32 [ %1023, %1022 ], [ %1045, %1038 ]
  %1050 = add i32 %1049, 16
  br label %1076

1051:                                             ; preds = %1038
  %1052 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1053 = load ptr, ptr %1052, align 4
  %1054 = load ptr, ptr %1053, align 8
  %1055 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1054, i32 0, i32 3
  %1056 = load ptr, ptr %1055, align 4
  %1057 = shl i32 %1046, 2
  tail call void %1056(ptr noundef %1053, i32 noundef %1057, i32 noundef 1) #6
  %1058 = load i32, ptr %17, align 4
  %1059 = load i32, ptr %14, align 4
  %1060 = add i32 %1059, 8
  store i32 %1060, ptr %14, align 4
  %1061 = icmp eq i32 %1058, 1
  br i1 %1061, label %1065, label %1062

1062:                                             ; preds = %1051, %1036
  %1063 = phi i32 [ %1037, %1036 ], [ %1059, %1051 ]
  %1064 = add i32 %1063, 16
  br label %1090

1065:                                             ; preds = %1051
  %1066 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1067 = load ptr, ptr %1066, align 4
  %1068 = load ptr, ptr %1067, align 8
  %1069 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1068, i32 0, i32 3
  %1070 = load ptr, ptr %1069, align 4
  %1071 = shl i32 %1060, 2
  tail call void %1070(ptr noundef %1067, i32 noundef %1071, i32 noundef 1) #6
  %1072 = load i32, ptr %17, align 4
  %1073 = load i32, ptr %14, align 4
  %1074 = add i32 %1073, 8
  store i32 %1074, ptr %14, align 4
  %1075 = icmp eq i32 %1072, 1
  br i1 %1075, label %1079, label %1076

1076:                                             ; preds = %1065, %1048
  %1077 = phi i32 [ %1050, %1048 ], [ %1073, %1065 ]
  %1078 = add i32 %1077, 24
  br label %1112

1079:                                             ; preds = %1065
  %1080 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1081 = load ptr, ptr %1080, align 4
  %1082 = load ptr, ptr %1081, align 8
  %1083 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1082, i32 0, i32 3
  %1084 = load ptr, ptr %1083, align 4
  %1085 = shl i32 %1074, 2
  tail call void %1084(ptr noundef %1081, i32 noundef %1085, i32 noundef 2) #6
  %1086 = load i32, ptr %17, align 4
  %1087 = load i32, ptr %14, align 4
  %1088 = add i32 %1087, 8
  store i32 %1088, ptr %14, align 4
  %1089 = icmp eq i32 %1086, 1
  br i1 %1089, label %1093, label %1090

1090:                                             ; preds = %1079, %1062
  %1091 = phi i32 [ %1064, %1062 ], [ %1087, %1079 ]
  %1092 = add i32 %1091, 16
  br label %1112

1093:                                             ; preds = %1079
  %1094 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1095 = load ptr, ptr %1094, align 4
  %1096 = load ptr, ptr %1095, align 8
  %1097 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1096, i32 0, i32 3
  %1098 = load ptr, ptr %1097, align 4
  %1099 = shl i32 %1088, 2
  tail call void %1098(ptr noundef %1095, i32 noundef %1099, i32 noundef 1) #6
  %1100 = load i32, ptr %17, align 4
  %1101 = load i32, ptr %14, align 4
  %1102 = add i32 %1101, 8
  store i32 %1102, ptr %14, align 4
  %1103 = icmp eq i32 %1100, 1
  br i1 %1103, label %1104, label %1112

1104:                                             ; preds = %1093
  %1105 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1106 = load ptr, ptr %1105, align 4
  %1107 = load ptr, ptr %1106, align 8
  %1108 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1107, i32 0, i32 3
  %1109 = load ptr, ptr %1108, align 4
  %1110 = shl i32 %1102, 2
  tail call void %1109(ptr noundef %1106, i32 noundef %1110, i32 noundef 1) #6
  %1111 = load i32, ptr %14, align 4
  br label %1112

1112:                                             ; preds = %1104, %1093, %1090, %1076
  %1113 = phi i32 [ %1111, %1104 ], [ %1092, %1090 ], [ %1102, %1093 ], [ %1078, %1076 ]
  %1114 = add i32 %1113, 32
  store i32 %1114, ptr %14, align 4
  %1115 = load i32, ptr %3, align 4
  %1116 = icmp ugt i32 %1115, 159
  br i1 %1116, label %1117, label %1563

1117:                                             ; preds = %1112
  %1118 = add i32 %1113, 40
  store i32 %1118, ptr %14, align 4
  %1119 = load i32, ptr %3, align 4
  %1120 = add i32 %1119, -161
  %1121 = icmp ult i32 %1120, 9
  %1122 = icmp eq i32 %1119, 175
  %1123 = or i1 %1122, %1121
  br i1 %1123, label %1124, label %1563

1124:                                             ; preds = %1117
  %1125 = load i32, ptr %17, align 4
  %1126 = icmp eq i32 %1125, 1
  br i1 %1126, label %1130, label %1127

1127:                                             ; preds = %1124
  %1128 = add i32 %1113, 104
  %1129 = add i32 %1113, 168
  store i32 %1129, ptr %14, align 4
  br label %1251

1130:                                             ; preds = %1124
  %1131 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1132 = load ptr, ptr %1131, align 4
  %1133 = load ptr, ptr %1132, align 8
  %1134 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1133, i32 0, i32 3
  %1135 = load ptr, ptr %1134, align 4
  %1136 = shl i32 %1118, 2
  tail call void %1135(ptr noundef %1132, i32 noundef %1136, i32 noundef 1) #6
  %1137 = load ptr, ptr %1131, align 4
  %1138 = load ptr, ptr %1137, align 8
  %1139 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1138, i32 0, i32 3
  %1140 = load ptr, ptr %1139, align 4
  %1141 = load i32, ptr %14, align 4
  %1142 = shl i32 %1141, 2
  %1143 = add i32 %1142, 32
  tail call void %1140(ptr noundef %1137, i32 noundef %1143, i32 noundef 1) #6
  %1144 = load ptr, ptr %1131, align 4
  %1145 = load ptr, ptr %1144, align 8
  %1146 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1145, i32 0, i32 3
  %1147 = load ptr, ptr %1146, align 4
  %1148 = load i32, ptr %14, align 4
  %1149 = shl i32 %1148, 2
  %1150 = add i32 %1149, 64
  tail call void %1147(ptr noundef %1144, i32 noundef %1150, i32 noundef 1) #6
  %1151 = load ptr, ptr %1131, align 4
  %1152 = load ptr, ptr %1151, align 8
  %1153 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1152, i32 0, i32 3
  %1154 = load ptr, ptr %1153, align 4
  %1155 = load i32, ptr %14, align 4
  %1156 = shl i32 %1155, 2
  %1157 = add i32 %1156, 96
  tail call void %1154(ptr noundef %1151, i32 noundef %1157, i32 noundef 1) #6
  %1158 = load ptr, ptr %1131, align 4
  %1159 = load ptr, ptr %1158, align 8
  %1160 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1159, i32 0, i32 3
  %1161 = load ptr, ptr %1160, align 4
  %1162 = load i32, ptr %14, align 4
  %1163 = shl i32 %1162, 2
  %1164 = add i32 %1163, 128
  tail call void %1161(ptr noundef %1158, i32 noundef %1164, i32 noundef 1) #6
  %1165 = load ptr, ptr %1131, align 4
  %1166 = load ptr, ptr %1165, align 8
  %1167 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1166, i32 0, i32 3
  %1168 = load ptr, ptr %1167, align 4
  %1169 = load i32, ptr %14, align 4
  %1170 = shl i32 %1169, 2
  %1171 = add i32 %1170, 160
  tail call void %1168(ptr noundef %1165, i32 noundef %1171, i32 noundef 1) #6
  %1172 = load ptr, ptr %1131, align 4
  %1173 = load ptr, ptr %1172, align 8
  %1174 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1173, i32 0, i32 3
  %1175 = load ptr, ptr %1174, align 4
  %1176 = load i32, ptr %14, align 4
  %1177 = shl i32 %1176, 2
  %1178 = add i32 %1177, 192
  tail call void %1175(ptr noundef %1172, i32 noundef %1178, i32 noundef 1) #6
  %1179 = load ptr, ptr %1131, align 4
  %1180 = load ptr, ptr %1179, align 8
  %1181 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1180, i32 0, i32 3
  %1182 = load ptr, ptr %1181, align 4
  %1183 = load i32, ptr %14, align 4
  %1184 = shl i32 %1183, 2
  %1185 = add i32 %1184, 224
  tail call void %1182(ptr noundef %1179, i32 noundef %1185, i32 noundef 1) #6
  %1186 = load i32, ptr %17, align 4
  %1187 = load i32, ptr %14, align 4
  %1188 = add i32 %1187, 64
  store i32 %1188, ptr %14, align 4
  %1189 = icmp eq i32 %1186, 1
  br i1 %1189, label %1192, label %1190

1190:                                             ; preds = %1130
  %1191 = add i32 %1187, 128
  store i32 %1191, ptr %14, align 4
  br label %1314

1192:                                             ; preds = %1130
  %1193 = load ptr, ptr %1131, align 4
  %1194 = load ptr, ptr %1193, align 8
  %1195 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1194, i32 0, i32 3
  %1196 = load ptr, ptr %1195, align 4
  %1197 = shl i32 %1188, 2
  tail call void %1196(ptr noundef %1193, i32 noundef %1197, i32 noundef 1) #6
  %1198 = load ptr, ptr %1131, align 4
  %1199 = load ptr, ptr %1198, align 8
  %1200 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1199, i32 0, i32 3
  %1201 = load ptr, ptr %1200, align 4
  %1202 = load i32, ptr %14, align 4
  %1203 = shl i32 %1202, 2
  %1204 = add i32 %1203, 32
  tail call void %1201(ptr noundef %1198, i32 noundef %1204, i32 noundef 1) #6
  %1205 = load ptr, ptr %1131, align 4
  %1206 = load ptr, ptr %1205, align 8
  %1207 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1206, i32 0, i32 3
  %1208 = load ptr, ptr %1207, align 4
  %1209 = load i32, ptr %14, align 4
  %1210 = shl i32 %1209, 2
  %1211 = add i32 %1210, 64
  tail call void %1208(ptr noundef %1205, i32 noundef %1211, i32 noundef 1) #6
  %1212 = load ptr, ptr %1131, align 4
  %1213 = load ptr, ptr %1212, align 8
  %1214 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1213, i32 0, i32 3
  %1215 = load ptr, ptr %1214, align 4
  %1216 = load i32, ptr %14, align 4
  %1217 = shl i32 %1216, 2
  %1218 = add i32 %1217, 96
  tail call void %1215(ptr noundef %1212, i32 noundef %1218, i32 noundef 1) #6
  %1219 = load ptr, ptr %1131, align 4
  %1220 = load ptr, ptr %1219, align 8
  %1221 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1220, i32 0, i32 3
  %1222 = load ptr, ptr %1221, align 4
  %1223 = load i32, ptr %14, align 4
  %1224 = shl i32 %1223, 2
  %1225 = add i32 %1224, 128
  tail call void %1222(ptr noundef %1219, i32 noundef %1225, i32 noundef 1) #6
  %1226 = load ptr, ptr %1131, align 4
  %1227 = load ptr, ptr %1226, align 8
  %1228 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1227, i32 0, i32 3
  %1229 = load ptr, ptr %1228, align 4
  %1230 = load i32, ptr %14, align 4
  %1231 = shl i32 %1230, 2
  %1232 = add i32 %1231, 160
  tail call void %1229(ptr noundef %1226, i32 noundef %1232, i32 noundef 1) #6
  %1233 = load ptr, ptr %1131, align 4
  %1234 = load ptr, ptr %1233, align 8
  %1235 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1234, i32 0, i32 3
  %1236 = load ptr, ptr %1235, align 4
  %1237 = load i32, ptr %14, align 4
  %1238 = shl i32 %1237, 2
  %1239 = add i32 %1238, 192
  tail call void %1236(ptr noundef %1233, i32 noundef %1239, i32 noundef 1) #6
  %1240 = load ptr, ptr %1131, align 4
  %1241 = load ptr, ptr %1240, align 8
  %1242 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1241, i32 0, i32 3
  %1243 = load ptr, ptr %1242, align 4
  %1244 = load i32, ptr %14, align 4
  %1245 = shl i32 %1244, 2
  %1246 = add i32 %1245, 224
  tail call void %1243(ptr noundef %1240, i32 noundef %1246, i32 noundef 1) #6
  %1247 = load i32, ptr %17, align 4
  %1248 = load i32, ptr %14, align 4
  %1249 = add i32 %1248, 64
  store i32 %1249, ptr %14, align 4
  %1250 = icmp eq i32 %1247, 1
  br i1 %1250, label %1254, label %1251

1251:                                             ; preds = %1192, %1127
  %1252 = phi i32 [ %1128, %1127 ], [ %1248, %1192 ]
  %1253 = add i32 %1252, 128
  br label %1377

1254:                                             ; preds = %1192
  %1255 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1256 = load ptr, ptr %1255, align 4
  %1257 = load ptr, ptr %1256, align 8
  %1258 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1257, i32 0, i32 3
  %1259 = load ptr, ptr %1258, align 4
  %1260 = shl i32 %1249, 2
  tail call void %1259(ptr noundef %1256, i32 noundef %1260, i32 noundef 2) #6
  %1261 = load ptr, ptr %1255, align 4
  %1262 = load ptr, ptr %1261, align 8
  %1263 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1262, i32 0, i32 3
  %1264 = load ptr, ptr %1263, align 4
  %1265 = load i32, ptr %14, align 4
  %1266 = shl i32 %1265, 2
  %1267 = add i32 %1266, 32
  tail call void %1264(ptr noundef %1261, i32 noundef %1267, i32 noundef 2) #6
  %1268 = load ptr, ptr %1255, align 4
  %1269 = load ptr, ptr %1268, align 8
  %1270 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1269, i32 0, i32 3
  %1271 = load ptr, ptr %1270, align 4
  %1272 = load i32, ptr %14, align 4
  %1273 = shl i32 %1272, 2
  %1274 = add i32 %1273, 64
  tail call void %1271(ptr noundef %1268, i32 noundef %1274, i32 noundef 2) #6
  %1275 = load ptr, ptr %1255, align 4
  %1276 = load ptr, ptr %1275, align 8
  %1277 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1276, i32 0, i32 3
  %1278 = load ptr, ptr %1277, align 4
  %1279 = load i32, ptr %14, align 4
  %1280 = shl i32 %1279, 2
  %1281 = add i32 %1280, 96
  tail call void %1278(ptr noundef %1275, i32 noundef %1281, i32 noundef 2) #6
  %1282 = load ptr, ptr %1255, align 4
  %1283 = load ptr, ptr %1282, align 8
  %1284 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1283, i32 0, i32 3
  %1285 = load ptr, ptr %1284, align 4
  %1286 = load i32, ptr %14, align 4
  %1287 = shl i32 %1286, 2
  %1288 = add i32 %1287, 128
  tail call void %1285(ptr noundef %1282, i32 noundef %1288, i32 noundef 2) #6
  %1289 = load ptr, ptr %1255, align 4
  %1290 = load ptr, ptr %1289, align 8
  %1291 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1290, i32 0, i32 3
  %1292 = load ptr, ptr %1291, align 4
  %1293 = load i32, ptr %14, align 4
  %1294 = shl i32 %1293, 2
  %1295 = add i32 %1294, 160
  tail call void %1292(ptr noundef %1289, i32 noundef %1295, i32 noundef 2) #6
  %1296 = load ptr, ptr %1255, align 4
  %1297 = load ptr, ptr %1296, align 8
  %1298 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1297, i32 0, i32 3
  %1299 = load ptr, ptr %1298, align 4
  %1300 = load i32, ptr %14, align 4
  %1301 = shl i32 %1300, 2
  %1302 = add i32 %1301, 192
  tail call void %1299(ptr noundef %1296, i32 noundef %1302, i32 noundef 2) #6
  %1303 = load ptr, ptr %1255, align 4
  %1304 = load ptr, ptr %1303, align 8
  %1305 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1304, i32 0, i32 3
  %1306 = load ptr, ptr %1305, align 4
  %1307 = load i32, ptr %14, align 4
  %1308 = shl i32 %1307, 2
  %1309 = add i32 %1308, 224
  tail call void %1306(ptr noundef %1303, i32 noundef %1309, i32 noundef 2) #6
  %1310 = load i32, ptr %17, align 4
  %1311 = load i32, ptr %14, align 4
  %1312 = add i32 %1311, 64
  store i32 %1312, ptr %14, align 4
  %1313 = icmp eq i32 %1310, 1
  br i1 %1313, label %1317, label %1314

1314:                                             ; preds = %1254, %1190
  %1315 = phi i32 [ %1191, %1190 ], [ %1311, %1254 ]
  %1316 = add i32 %1315, 128
  br label %1440

1317:                                             ; preds = %1254
  %1318 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1319 = load ptr, ptr %1318, align 4
  %1320 = load ptr, ptr %1319, align 8
  %1321 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1320, i32 0, i32 3
  %1322 = load ptr, ptr %1321, align 4
  %1323 = shl i32 %1312, 2
  tail call void %1322(ptr noundef %1319, i32 noundef %1323, i32 noundef 1) #6
  %1324 = load ptr, ptr %1318, align 4
  %1325 = load ptr, ptr %1324, align 8
  %1326 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1325, i32 0, i32 3
  %1327 = load ptr, ptr %1326, align 4
  %1328 = load i32, ptr %14, align 4
  %1329 = shl i32 %1328, 2
  %1330 = add i32 %1329, 32
  tail call void %1327(ptr noundef %1324, i32 noundef %1330, i32 noundef 1) #6
  %1331 = load ptr, ptr %1318, align 4
  %1332 = load ptr, ptr %1331, align 8
  %1333 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1332, i32 0, i32 3
  %1334 = load ptr, ptr %1333, align 4
  %1335 = load i32, ptr %14, align 4
  %1336 = shl i32 %1335, 2
  %1337 = add i32 %1336, 64
  tail call void %1334(ptr noundef %1331, i32 noundef %1337, i32 noundef 1) #6
  %1338 = load ptr, ptr %1318, align 4
  %1339 = load ptr, ptr %1338, align 8
  %1340 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1339, i32 0, i32 3
  %1341 = load ptr, ptr %1340, align 4
  %1342 = load i32, ptr %14, align 4
  %1343 = shl i32 %1342, 2
  %1344 = add i32 %1343, 96
  tail call void %1341(ptr noundef %1338, i32 noundef %1344, i32 noundef 1) #6
  %1345 = load ptr, ptr %1318, align 4
  %1346 = load ptr, ptr %1345, align 8
  %1347 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1346, i32 0, i32 3
  %1348 = load ptr, ptr %1347, align 4
  %1349 = load i32, ptr %14, align 4
  %1350 = shl i32 %1349, 2
  %1351 = add i32 %1350, 128
  tail call void %1348(ptr noundef %1345, i32 noundef %1351, i32 noundef 1) #6
  %1352 = load ptr, ptr %1318, align 4
  %1353 = load ptr, ptr %1352, align 8
  %1354 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1353, i32 0, i32 3
  %1355 = load ptr, ptr %1354, align 4
  %1356 = load i32, ptr %14, align 4
  %1357 = shl i32 %1356, 2
  %1358 = add i32 %1357, 160
  tail call void %1355(ptr noundef %1352, i32 noundef %1358, i32 noundef 1) #6
  %1359 = load ptr, ptr %1318, align 4
  %1360 = load ptr, ptr %1359, align 8
  %1361 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1360, i32 0, i32 3
  %1362 = load ptr, ptr %1361, align 4
  %1363 = load i32, ptr %14, align 4
  %1364 = shl i32 %1363, 2
  %1365 = add i32 %1364, 192
  tail call void %1362(ptr noundef %1359, i32 noundef %1365, i32 noundef 1) #6
  %1366 = load ptr, ptr %1318, align 4
  %1367 = load ptr, ptr %1366, align 8
  %1368 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1367, i32 0, i32 3
  %1369 = load ptr, ptr %1368, align 4
  %1370 = load i32, ptr %14, align 4
  %1371 = shl i32 %1370, 2
  %1372 = add i32 %1371, 224
  tail call void %1369(ptr noundef %1366, i32 noundef %1372, i32 noundef 1) #6
  %1373 = load i32, ptr %17, align 4
  %1374 = load i32, ptr %14, align 4
  %1375 = add i32 %1374, 64
  store i32 %1375, ptr %14, align 4
  %1376 = icmp eq i32 %1373, 1
  br i1 %1376, label %1380, label %1377

1377:                                             ; preds = %1317, %1251
  %1378 = phi i32 [ %1253, %1251 ], [ %1374, %1317 ]
  %1379 = add i32 %1378, 192
  br label %1560

1380:                                             ; preds = %1317
  %1381 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1382 = load ptr, ptr %1381, align 4
  %1383 = load ptr, ptr %1382, align 8
  %1384 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1383, i32 0, i32 3
  %1385 = load ptr, ptr %1384, align 4
  %1386 = shl i32 %1375, 2
  tail call void %1385(ptr noundef %1382, i32 noundef %1386, i32 noundef 1) #6
  %1387 = load ptr, ptr %1381, align 4
  %1388 = load ptr, ptr %1387, align 8
  %1389 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1388, i32 0, i32 3
  %1390 = load ptr, ptr %1389, align 4
  %1391 = load i32, ptr %14, align 4
  %1392 = shl i32 %1391, 2
  %1393 = add i32 %1392, 32
  tail call void %1390(ptr noundef %1387, i32 noundef %1393, i32 noundef 1) #6
  %1394 = load ptr, ptr %1381, align 4
  %1395 = load ptr, ptr %1394, align 8
  %1396 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1395, i32 0, i32 3
  %1397 = load ptr, ptr %1396, align 4
  %1398 = load i32, ptr %14, align 4
  %1399 = shl i32 %1398, 2
  %1400 = add i32 %1399, 64
  tail call void %1397(ptr noundef %1394, i32 noundef %1400, i32 noundef 1) #6
  %1401 = load ptr, ptr %1381, align 4
  %1402 = load ptr, ptr %1401, align 8
  %1403 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1402, i32 0, i32 3
  %1404 = load ptr, ptr %1403, align 4
  %1405 = load i32, ptr %14, align 4
  %1406 = shl i32 %1405, 2
  %1407 = add i32 %1406, 96
  tail call void %1404(ptr noundef %1401, i32 noundef %1407, i32 noundef 1) #6
  %1408 = load ptr, ptr %1381, align 4
  %1409 = load ptr, ptr %1408, align 8
  %1410 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1409, i32 0, i32 3
  %1411 = load ptr, ptr %1410, align 4
  %1412 = load i32, ptr %14, align 4
  %1413 = shl i32 %1412, 2
  %1414 = add i32 %1413, 128
  tail call void %1411(ptr noundef %1408, i32 noundef %1414, i32 noundef 1) #6
  %1415 = load ptr, ptr %1381, align 4
  %1416 = load ptr, ptr %1415, align 8
  %1417 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1416, i32 0, i32 3
  %1418 = load ptr, ptr %1417, align 4
  %1419 = load i32, ptr %14, align 4
  %1420 = shl i32 %1419, 2
  %1421 = add i32 %1420, 160
  tail call void %1418(ptr noundef %1415, i32 noundef %1421, i32 noundef 1) #6
  %1422 = load ptr, ptr %1381, align 4
  %1423 = load ptr, ptr %1422, align 8
  %1424 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1423, i32 0, i32 3
  %1425 = load ptr, ptr %1424, align 4
  %1426 = load i32, ptr %14, align 4
  %1427 = shl i32 %1426, 2
  %1428 = add i32 %1427, 192
  tail call void %1425(ptr noundef %1422, i32 noundef %1428, i32 noundef 1) #6
  %1429 = load ptr, ptr %1381, align 4
  %1430 = load ptr, ptr %1429, align 8
  %1431 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1430, i32 0, i32 3
  %1432 = load ptr, ptr %1431, align 4
  %1433 = load i32, ptr %14, align 4
  %1434 = shl i32 %1433, 2
  %1435 = add i32 %1434, 224
  tail call void %1432(ptr noundef %1429, i32 noundef %1435, i32 noundef 1) #6
  %1436 = load i32, ptr %17, align 4
  %1437 = load i32, ptr %14, align 4
  %1438 = add i32 %1437, 64
  store i32 %1438, ptr %14, align 4
  %1439 = icmp eq i32 %1436, 1
  br i1 %1439, label %1443, label %1440

1440:                                             ; preds = %1380, %1314
  %1441 = phi i32 [ %1316, %1314 ], [ %1437, %1380 ]
  %1442 = add i32 %1441, 128
  br label %1560

1443:                                             ; preds = %1380
  %1444 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1445 = load ptr, ptr %1444, align 4
  %1446 = load ptr, ptr %1445, align 8
  %1447 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1446, i32 0, i32 3
  %1448 = load ptr, ptr %1447, align 4
  %1449 = shl i32 %1438, 2
  tail call void %1448(ptr noundef %1445, i32 noundef %1449, i32 noundef 2) #6
  %1450 = load ptr, ptr %1444, align 4
  %1451 = load ptr, ptr %1450, align 8
  %1452 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1451, i32 0, i32 3
  %1453 = load ptr, ptr %1452, align 4
  %1454 = load i32, ptr %14, align 4
  %1455 = shl i32 %1454, 2
  %1456 = add i32 %1455, 32
  tail call void %1453(ptr noundef %1450, i32 noundef %1456, i32 noundef 2) #6
  %1457 = load ptr, ptr %1444, align 4
  %1458 = load ptr, ptr %1457, align 8
  %1459 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1458, i32 0, i32 3
  %1460 = load ptr, ptr %1459, align 4
  %1461 = load i32, ptr %14, align 4
  %1462 = shl i32 %1461, 2
  %1463 = add i32 %1462, 64
  tail call void %1460(ptr noundef %1457, i32 noundef %1463, i32 noundef 2) #6
  %1464 = load ptr, ptr %1444, align 4
  %1465 = load ptr, ptr %1464, align 8
  %1466 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1465, i32 0, i32 3
  %1467 = load ptr, ptr %1466, align 4
  %1468 = load i32, ptr %14, align 4
  %1469 = shl i32 %1468, 2
  %1470 = add i32 %1469, 96
  tail call void %1467(ptr noundef %1464, i32 noundef %1470, i32 noundef 2) #6
  %1471 = load ptr, ptr %1444, align 4
  %1472 = load ptr, ptr %1471, align 8
  %1473 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1472, i32 0, i32 3
  %1474 = load ptr, ptr %1473, align 4
  %1475 = load i32, ptr %14, align 4
  %1476 = shl i32 %1475, 2
  %1477 = add i32 %1476, 128
  tail call void %1474(ptr noundef %1471, i32 noundef %1477, i32 noundef 2) #6
  %1478 = load ptr, ptr %1444, align 4
  %1479 = load ptr, ptr %1478, align 8
  %1480 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1479, i32 0, i32 3
  %1481 = load ptr, ptr %1480, align 4
  %1482 = load i32, ptr %14, align 4
  %1483 = shl i32 %1482, 2
  %1484 = add i32 %1483, 160
  tail call void %1481(ptr noundef %1478, i32 noundef %1484, i32 noundef 2) #6
  %1485 = load ptr, ptr %1444, align 4
  %1486 = load ptr, ptr %1485, align 8
  %1487 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1486, i32 0, i32 3
  %1488 = load ptr, ptr %1487, align 4
  %1489 = load i32, ptr %14, align 4
  %1490 = shl i32 %1489, 2
  %1491 = add i32 %1490, 192
  tail call void %1488(ptr noundef %1485, i32 noundef %1491, i32 noundef 2) #6
  %1492 = load ptr, ptr %1444, align 4
  %1493 = load ptr, ptr %1492, align 8
  %1494 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1493, i32 0, i32 3
  %1495 = load ptr, ptr %1494, align 4
  %1496 = load i32, ptr %14, align 4
  %1497 = shl i32 %1496, 2
  %1498 = add i32 %1497, 224
  tail call void %1495(ptr noundef %1492, i32 noundef %1498, i32 noundef 2) #6
  %1499 = load i32, ptr %17, align 4
  %1500 = load i32, ptr %14, align 4
  %1501 = add i32 %1500, 64
  store i32 %1501, ptr %14, align 4
  %1502 = icmp eq i32 %1499, 1
  br i1 %1502, label %1503, label %1560

1503:                                             ; preds = %1443
  %1504 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1505 = load ptr, ptr %1504, align 4
  %1506 = load ptr, ptr %1505, align 8
  %1507 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1506, i32 0, i32 3
  %1508 = load ptr, ptr %1507, align 4
  %1509 = shl i32 %1501, 2
  tail call void %1508(ptr noundef %1505, i32 noundef %1509, i32 noundef 1) #6
  %1510 = load ptr, ptr %1504, align 4
  %1511 = load ptr, ptr %1510, align 8
  %1512 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1511, i32 0, i32 3
  %1513 = load ptr, ptr %1512, align 4
  %1514 = load i32, ptr %14, align 4
  %1515 = shl i32 %1514, 2
  %1516 = add i32 %1515, 32
  tail call void %1513(ptr noundef %1510, i32 noundef %1516, i32 noundef 1) #6
  %1517 = load ptr, ptr %1504, align 4
  %1518 = load ptr, ptr %1517, align 8
  %1519 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1518, i32 0, i32 3
  %1520 = load ptr, ptr %1519, align 4
  %1521 = load i32, ptr %14, align 4
  %1522 = shl i32 %1521, 2
  %1523 = add i32 %1522, 64
  tail call void %1520(ptr noundef %1517, i32 noundef %1523, i32 noundef 1) #6
  %1524 = load ptr, ptr %1504, align 4
  %1525 = load ptr, ptr %1524, align 8
  %1526 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1525, i32 0, i32 3
  %1527 = load ptr, ptr %1526, align 4
  %1528 = load i32, ptr %14, align 4
  %1529 = shl i32 %1528, 2
  %1530 = add i32 %1529, 96
  tail call void %1527(ptr noundef %1524, i32 noundef %1530, i32 noundef 1) #6
  %1531 = load ptr, ptr %1504, align 4
  %1532 = load ptr, ptr %1531, align 8
  %1533 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1532, i32 0, i32 3
  %1534 = load ptr, ptr %1533, align 4
  %1535 = load i32, ptr %14, align 4
  %1536 = shl i32 %1535, 2
  %1537 = add i32 %1536, 128
  tail call void %1534(ptr noundef %1531, i32 noundef %1537, i32 noundef 1) #6
  %1538 = load ptr, ptr %1504, align 4
  %1539 = load ptr, ptr %1538, align 8
  %1540 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1539, i32 0, i32 3
  %1541 = load ptr, ptr %1540, align 4
  %1542 = load i32, ptr %14, align 4
  %1543 = shl i32 %1542, 2
  %1544 = add i32 %1543, 160
  tail call void %1541(ptr noundef %1538, i32 noundef %1544, i32 noundef 1) #6
  %1545 = load ptr, ptr %1504, align 4
  %1546 = load ptr, ptr %1545, align 8
  %1547 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1546, i32 0, i32 3
  %1548 = load ptr, ptr %1547, align 4
  %1549 = load i32, ptr %14, align 4
  %1550 = shl i32 %1549, 2
  %1551 = add i32 %1550, 192
  tail call void %1548(ptr noundef %1545, i32 noundef %1551, i32 noundef 1) #6
  %1552 = load ptr, ptr %1504, align 4
  %1553 = load ptr, ptr %1552, align 8
  %1554 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1553, i32 0, i32 3
  %1555 = load ptr, ptr %1554, align 4
  %1556 = load i32, ptr %14, align 4
  %1557 = shl i32 %1556, 2
  %1558 = add i32 %1557, 224
  tail call void %1555(ptr noundef %1552, i32 noundef %1558, i32 noundef 1) #6
  %1559 = load i32, ptr %14, align 4
  br label %1560

1560:                                             ; preds = %1503, %1443, %1440, %1377
  %1561 = phi i32 [ %1559, %1503 ], [ %1442, %1440 ], [ %1501, %1443 ], [ %1379, %1377 ]
  %1562 = add i32 %1561, 88
  store i32 %1562, ptr %14, align 4
  br label %1563

1563:                                             ; preds = %1560, %1117, %1112
  %1564 = phi i32 [ %1118, %1117 ], [ %1114, %1112 ], [ %1562, %1560 ]
  %1565 = load i32, ptr %17, align 4
  %1566 = icmp eq i32 %1565, 1
  br i1 %1566, label %1569, label %1567

1567:                                             ; preds = %1563
  %1568 = add i32 %1564, 8
  br label %1587

1569:                                             ; preds = %1563
  %1570 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1571 = load ptr, ptr %1570, align 4
  %1572 = load ptr, ptr %1571, align 8
  %1573 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1572, i32 0, i32 3
  %1574 = load ptr, ptr %1573, align 4
  %1575 = shl i32 %1564, 2
  tail call void %1574(ptr noundef %1571, i32 noundef %1575, i32 noundef 17) #6
  %1576 = load i32, ptr %17, align 4
  %1577 = load i32, ptr %14, align 4
  %1578 = add i32 %1577, 8
  store i32 %1578, ptr %14, align 4
  %1579 = icmp eq i32 %1576, 1
  br i1 %1579, label %1580, label %1587

1580:                                             ; preds = %1569
  %1581 = load ptr, ptr %1570, align 4
  %1582 = load ptr, ptr %1581, align 8
  %1583 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1582, i32 0, i32 3
  %1584 = load ptr, ptr %1583, align 4
  %1585 = shl i32 %1578, 2
  tail call void %1584(ptr noundef %1581, i32 noundef %1585, i32 noundef 1) #6
  %1586 = load i32, ptr %14, align 4
  br label %1587

1587:                                             ; preds = %1580, %1569, %1567
  %1588 = phi i32 [ %1586, %1580 ], [ %1568, %1567 ], [ %1578, %1569 ]
  %1589 = add i32 %1588, 736
  store i32 %1589, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_xfer_tp(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 160
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call fastcc void @nv50_gr_construct_xfer_unk84xx(ptr noundef %0)
  tail call fastcc void @nv50_gr_construct_xfer_tprop(ptr noundef %0)
  tail call fastcc void @nv50_gr_construct_xfer_tex(ptr noundef %0)
  tail call fastcc void @nv50_gr_construct_xfer_unk8cxx(ptr noundef %0)
  br label %8

7:                                                ; preds = %1
  tail call fastcc void @nv50_gr_construct_xfer_tex(ptr noundef %0)
  tail call fastcc void @nv50_gr_construct_xfer_tprop(ptr noundef %0)
  tail call fastcc void @nv50_gr_construct_xfer_unk8cxx(ptr noundef %0)
  tail call fastcc void @nv50_gr_construct_xfer_unk84xx(ptr noundef %0)
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_xfer_unk84xx(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %6 [
    i32 80, label %7
    i32 134, label %5
    i32 152, label %5
    i32 168, label %5
    i32 170, label %5
    i32 172, label %5
    i32 175, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %5, %1
  %8 = phi i1 [ true, %6 ], [ false, %5 ], [ false, %1 ]
  %9 = phi i32 [ 0, %6 ], [ 7680, %5 ], [ 4096, %1 ]
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 8
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %24

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = shl i32 %12, 2
  tail call void %21(ptr noundef %18, i32 noundef %22, i32 noundef 4) #6
  %23 = load i32, ptr %10, align 4
  br label %24

24:                                               ; preds = %16, %7
  %25 = phi i32 [ %23, %16 ], [ %12, %7 ]
  %26 = add i32 %25, 32
  store i32 %26, ptr %10, align 4
  %27 = load i32, ptr %3, align 4
  %28 = add i32 %27, -161
  %29 = icmp ult i32 %28, 9
  %30 = icmp eq i32 %27, 175
  %31 = or i1 %30, %29
  %32 = icmp ult i32 %27, 160
  %33 = select i1 %32, i32 160, i32 152
  %34 = select i1 %31, i32 280, i32 %33
  %35 = add i32 %25, %34
  %36 = add i32 %35, 16
  store i32 %36, ptr %10, align 4
  %37 = load i32, ptr %13, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %24
  %40 = add i32 %35, 24
  br label %59

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = shl i32 %36, 2
  tail call void %46(ptr noundef %43, i32 noundef %47, i32 noundef 4) #6
  %48 = load i32, ptr %13, align 4
  %49 = load i32, ptr %10, align 4
  %50 = add i32 %49, 8
  store i32 %50, ptr %10, align 4
  %51 = icmp eq i32 %48, 1
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load ptr, ptr %42, align 4
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = shl i32 %50, 2
  tail call void %56(ptr noundef %53, i32 noundef %57, i32 noundef 4) #6
  %58 = load i32, ptr %10, align 4
  br label %59

59:                                               ; preds = %52, %41, %39
  %60 = phi i32 [ %58, %52 ], [ %40, %39 ], [ %50, %41 ]
  %61 = add i32 %60, 8
  store i32 %61, ptr %10, align 4
  %62 = load i32, ptr %3, align 4
  %63 = icmp ugt i32 %62, 159
  %64 = load i32, ptr %13, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %63, label %66, label %74

66:                                               ; preds = %59
  br i1 %65, label %67, label %82

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = shl i32 %61, 2
  tail call void %72(ptr noundef %69, i32 noundef %73, i32 noundef 50462976) #6
  br label %84

74:                                               ; preds = %59
  br i1 %65, label %75, label %82

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %78, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = shl i32 %61, 2
  tail call void %80(ptr noundef %77, i32 noundef %81, i32 noundef 6324352) #6
  br label %84

82:                                               ; preds = %74, %66
  %83 = load i32, ptr %10, align 4
  br label %89

84:                                               ; preds = %75, %67
  %85 = load i32, ptr %13, align 4
  %86 = load i32, ptr %10, align 4
  %87 = add i32 %86, 40
  store i32 %87, ptr %10, align 4
  %88 = icmp eq i32 %85, 1
  br i1 %88, label %92, label %89

89:                                               ; preds = %84, %82
  %90 = phi i32 [ %83, %82 ], [ %86, %84 ]
  %91 = add i32 %90, 64
  br label %113

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = shl i32 %87, 2
  tail call void %97(ptr noundef %94, i32 noundef %98, i32 noundef 4) #6
  %99 = load i32, ptr %13, align 4
  %100 = load i32, ptr %10, align 4
  %101 = add i32 %100, 24
  store i32 %101, ptr %10, align 4
  %102 = icmp eq i32 %99, 1
  br i1 %102, label %103, label %113

103:                                              ; preds = %92
  %104 = load ptr, ptr %93, align 4
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = shl i32 %101, 2
  tail call void %107(ptr noundef %104, i32 noundef %108, i32 noundef 4) #6
  %109 = load i32, ptr %10, align 4
  %110 = load i32, ptr %13, align 4
  %111 = add i32 %109, 8
  store i32 %111, ptr %10, align 4
  %112 = icmp eq i32 %110, 1
  br i1 %112, label %116, label %113

113:                                              ; preds = %103, %92, %89
  %114 = phi i32 [ %109, %103 ], [ %101, %92 ], [ %91, %89 ]
  %115 = add i32 %114, 16
  br label %134

116:                                              ; preds = %103
  %117 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = shl i32 %111, 2
  tail call void %121(ptr noundef %118, i32 noundef %122, i32 noundef 4) #6
  %123 = load i32, ptr %13, align 4
  %124 = load i32, ptr %10, align 4
  %125 = add i32 %124, 8
  store i32 %125, ptr %10, align 4
  %126 = icmp eq i32 %123, 1
  br i1 %126, label %127, label %134

127:                                              ; preds = %116
  %128 = load ptr, ptr %117, align 4
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %129, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = shl i32 %125, 2
  tail call void %131(ptr noundef %128, i32 noundef %132, i32 noundef 128) #6
  %133 = load i32, ptr %10, align 4
  br label %134

134:                                              ; preds = %127, %116, %113
  %135 = phi i32 [ %133, %127 ], [ %115, %113 ], [ %125, %116 ]
  %136 = add i32 %135, 8
  store i32 %136, ptr %10, align 4
  br i1 %8, label %151, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr %13, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %143, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  %146 = shl i32 %136, 2
  tail call void %145(ptr noundef %142, i32 noundef %146, i32 noundef %9) #6
  %147 = load i32, ptr %10, align 4
  br label %148

148:                                              ; preds = %140, %137
  %149 = phi i32 [ %147, %140 ], [ %136, %137 ]
  %150 = add i32 %149, 8
  store i32 %150, ptr %10, align 4
  br label %151

151:                                              ; preds = %148, %134
  %152 = phi i32 [ %150, %148 ], [ %136, %134 ]
  %153 = load i32, ptr %13, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %158, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = shl i32 %152, 2
  tail call void %160(ptr noundef %157, i32 noundef %161, i32 noundef 4) #6
  %162 = load i32, ptr %10, align 4
  %163 = load i32, ptr %13, align 4
  %164 = add i32 %162, 296
  store i32 %164, ptr %10, align 4
  %165 = icmp eq i32 %163, 1
  br i1 %165, label %169, label %166

166:                                              ; preds = %155, %151
  %167 = phi i32 [ %162, %155 ], [ %152, %151 ]
  %168 = add i32 %167, 304
  br label %192

169:                                              ; preds = %155
  %170 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %172, i32 0, i32 3
  %174 = load ptr, ptr %173, align 4
  %175 = shl i32 %164, 2
  tail call void %174(ptr noundef %171, i32 noundef %175, i32 noundef 4) #6
  %176 = load i32, ptr %13, align 4
  %177 = load i32, ptr %10, align 4
  %178 = add i32 %177, 8
  store i32 %178, ptr %10, align 4
  %179 = icmp eq i32 %176, 1
  br i1 %179, label %182, label %180

180:                                              ; preds = %169
  %181 = add i32 %177, 16
  br label %206

182:                                              ; preds = %169
  %183 = load ptr, ptr %170, align 4
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %184, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = shl i32 %178, 2
  tail call void %186(ptr noundef %183, i32 noundef %187, i32 noundef 128) #6
  %188 = load i32, ptr %13, align 4
  %189 = load i32, ptr %10, align 4
  %190 = add i32 %189, 8
  store i32 %190, ptr %10, align 4
  %191 = icmp eq i32 %188, 1
  br i1 %191, label %195, label %192

192:                                              ; preds = %182, %166
  %193 = phi i32 [ %168, %166 ], [ %189, %182 ]
  %194 = add i32 %193, 24
  br label %228

195:                                              ; preds = %182
  %196 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %197 = load ptr, ptr %196, align 4
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %198, i32 0, i32 3
  %200 = load ptr, ptr %199, align 4
  %201 = shl i32 %190, 2
  tail call void %200(ptr noundef %197, i32 noundef %201, i32 noundef 4) #6
  %202 = load i32, ptr %13, align 4
  %203 = load i32, ptr %10, align 4
  %204 = add i32 %203, 8
  store i32 %204, ptr %10, align 4
  %205 = icmp eq i32 %202, 1
  br i1 %205, label %209, label %206

206:                                              ; preds = %195, %180
  %207 = phi i32 [ %181, %180 ], [ %203, %195 ]
  %208 = add i32 %207, 16
  br label %228

209:                                              ; preds = %195
  %210 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %211 = load ptr, ptr %210, align 4
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %212, i32 0, i32 3
  %214 = load ptr, ptr %213, align 4
  %215 = shl i32 %204, 2
  tail call void %214(ptr noundef %211, i32 noundef %215, i32 noundef 50462976) #6
  %216 = load i32, ptr %13, align 4
  %217 = load i32, ptr %10, align 4
  %218 = add i32 %217, 8
  store i32 %218, ptr %10, align 4
  %219 = icmp eq i32 %216, 1
  br i1 %219, label %220, label %228

220:                                              ; preds = %209
  %221 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %222 = load ptr, ptr %221, align 4
  %223 = load ptr, ptr %222, align 8
  %224 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %223, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = shl i32 %218, 2
  tail call void %225(ptr noundef %222, i32 noundef %226, i32 noundef 3) #6
  %227 = load i32, ptr %10, align 4
  br label %228

228:                                              ; preds = %220, %209, %206, %192
  %229 = phi i32 [ %227, %220 ], [ %208, %206 ], [ %218, %209 ], [ %194, %192 ]
  %230 = add i32 %229, 8
  store i32 %230, ptr %10, align 4
  br i1 %8, label %245, label %231

231:                                              ; preds = %228
  %232 = load i32, ptr %13, align 4
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %242

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %236 = load ptr, ptr %235, align 4
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %237, i32 0, i32 3
  %239 = load ptr, ptr %238, align 4
  %240 = shl i32 %230, 2
  tail call void %239(ptr noundef %236, i32 noundef %240, i32 noundef %9) #6
  %241 = load i32, ptr %10, align 4
  br label %242

242:                                              ; preds = %234, %231
  %243 = phi i32 [ %241, %234 ], [ %230, %231 ]
  %244 = add i32 %243, 8
  store i32 %244, ptr %10, align 4
  br label %245

245:                                              ; preds = %242, %228
  %246 = phi i32 [ %244, %242 ], [ %230, %228 ]
  %247 = load i32, ptr %13, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %260

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %251 = load ptr, ptr %250, align 4
  %252 = load ptr, ptr %251, align 8
  %253 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %252, i32 0, i32 3
  %254 = load ptr, ptr %253, align 4
  %255 = shl i32 %246, 2
  tail call void %254(ptr noundef %251, i32 noundef %255, i32 noundef 4) #6
  %256 = load i32, ptr %10, align 4
  %257 = load i32, ptr %13, align 4
  %258 = add i32 %256, 40
  store i32 %258, ptr %10, align 4
  %259 = icmp eq i32 %257, 1
  br i1 %259, label %263, label %260

260:                                              ; preds = %249, %245
  %261 = phi i32 [ %256, %249 ], [ %246, %245 ]
  %262 = add i32 %261, 48
  br label %274

263:                                              ; preds = %249
  %264 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %265 = load ptr, ptr %264, align 4
  %266 = load ptr, ptr %265, align 8
  %267 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %266, i32 0, i32 3
  %268 = load ptr, ptr %267, align 4
  %269 = shl i32 %258, 2
  tail call void %268(ptr noundef %265, i32 noundef %269, i32 noundef 4) #6
  %270 = load i32, ptr %13, align 4
  %271 = load i32, ptr %10, align 4
  %272 = add i32 %271, 8
  store i32 %272, ptr %10, align 4
  %273 = icmp eq i32 %270, 1
  br i1 %273, label %277, label %274

274:                                              ; preds = %263, %260
  %275 = phi i32 [ %262, %260 ], [ %272, %263 ]
  %276 = add i32 %275, 32
  br label %295

277:                                              ; preds = %263
  %278 = load ptr, ptr %264, align 4
  %279 = load ptr, ptr %278, align 8
  %280 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %279, i32 0, i32 3
  %281 = load ptr, ptr %280, align 4
  %282 = shl i32 %272, 2
  tail call void %281(ptr noundef %278, i32 noundef %282, i32 noundef 3) #6
  %283 = load i32, ptr %13, align 4
  %284 = load i32, ptr %10, align 4
  %285 = add i32 %284, 32
  store i32 %285, ptr %10, align 4
  %286 = icmp eq i32 %283, 1
  br i1 %286, label %287, label %295

287:                                              ; preds = %277
  %288 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %289 = load ptr, ptr %288, align 4
  %290 = load ptr, ptr %289, align 8
  %291 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %290, i32 0, i32 3
  %292 = load ptr, ptr %291, align 4
  %293 = shl i32 %285, 2
  tail call void %292(ptr noundef %289, i32 noundef %293, i32 noundef 4) #6
  %294 = load i32, ptr %10, align 4
  br label %295

295:                                              ; preds = %287, %277, %274
  %296 = phi i32 [ %294, %287 ], [ %285, %277 ], [ %276, %274 ]
  %297 = add i32 %296, 32
  store i32 %297, ptr %10, align 4
  %298 = load i32, ptr %3, align 4
  switch i32 %298, label %299 [
    i32 148, label %308
    i32 150, label %308
  ]

299:                                              ; preds = %295
  %300 = icmp ult i32 %298, 160
  br i1 %300, label %308, label %301

301:                                              ; preds = %299
  %302 = icmp ne i32 %298, 160
  %303 = icmp ult i32 %298, 170
  %304 = and i1 %302, %303
  %305 = icmp eq i32 %298, 175
  %306 = or i1 %305, %304
  %307 = select i1 %306, i32 8352, i32 4256
  br label %308

308:                                              ; preds = %301, %299, %295, %295
  %309 = phi i32 [ 33056, %295 ], [ 33056, %295 ], [ 20768, %299 ], [ %307, %301 ]
  %310 = add i32 %296, %309
  %311 = add i32 %310, 8
  store i32 %311, ptr %10, align 4
  %312 = load i32, ptr %13, align 4
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %316, label %314

314:                                              ; preds = %308
  %315 = add i32 %310, 16
  br label %334

316:                                              ; preds = %308
  %317 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %318 = load ptr, ptr %317, align 4
  %319 = load ptr, ptr %318, align 8
  %320 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %319, i32 0, i32 3
  %321 = load ptr, ptr %320, align 4
  %322 = shl i32 %311, 2
  tail call void %321(ptr noundef %318, i32 noundef %322, i32 noundef 4) #6
  %323 = load i32, ptr %13, align 4
  %324 = load i32, ptr %10, align 4
  %325 = add i32 %324, 8
  store i32 %325, ptr %10, align 4
  %326 = icmp eq i32 %323, 1
  br i1 %326, label %327, label %334

327:                                              ; preds = %316
  %328 = load ptr, ptr %317, align 4
  %329 = load ptr, ptr %328, align 8
  %330 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %329, i32 0, i32 3
  %331 = load ptr, ptr %330, align 4
  %332 = shl i32 %325, 2
  tail call void %331(ptr noundef %328, i32 noundef %332, i32 noundef 3) #6
  %333 = load i32, ptr %10, align 4
  br label %334

334:                                              ; preds = %327, %316, %314
  %335 = phi i32 [ %333, %327 ], [ %315, %314 ], [ %325, %316 ]
  %336 = add i32 %335, 24
  store i32 %336, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_xfer_tprop(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 80
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -161
  %8 = icmp ult i32 %7, 9
  %9 = icmp eq i32 %4, 175
  %10 = or i1 %9, %8
  %11 = select i1 %10, i32 556647, i32 2096743
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ 1023, %1 ], [ 2047, %6 ]
  %14 = phi i32 [ 15968, %1 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 24
  store i32 %17, ptr %15, align 4
  %18 = load i32, ptr %3, align 4
  %19 = add i32 %18, -161
  %20 = icmp ult i32 %19, 9
  %21 = icmp eq i32 %18, 175
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %38

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = shl i32 %17, 2
  tail call void %32(ptr noundef %29, i32 noundef %33, i32 noundef 1) #6
  %34 = load i32, ptr %15, align 4
  br label %35

35:                                               ; preds = %27, %23
  %36 = phi i32 [ %34, %27 ], [ %17, %23 ]
  %37 = add i32 %36, 8
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %17, %12 ], [ %37, %35 ]
  %40 = add i32 %39, 96
  store i32 %40, ptr %15, align 4
  %41 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = shl i32 %40, 2
  tail call void %49(ptr noundef %46, i32 noundef %50, i32 noundef 15) #6
  %51 = load i32, ptr %15, align 4
  %52 = load i32, ptr %41, align 4
  %53 = add i32 %51, 96
  store i32 %53, ptr %15, align 4
  %54 = icmp eq i32 %52, 1
  br i1 %54, label %58, label %55

55:                                               ; preds = %44, %38
  %56 = phi i32 [ %51, %44 ], [ %40, %38 ]
  %57 = add i32 %56, 104
  br label %69

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = shl i32 %53, 2
  tail call void %63(ptr noundef %60, i32 noundef %64, i32 noundef 4) #6
  %65 = load i32, ptr %41, align 4
  %66 = load i32, ptr %15, align 4
  %67 = add i32 %66, 8
  store i32 %67, ptr %15, align 4
  %68 = icmp eq i32 %65, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %58, %55
  %70 = phi i32 [ %67, %58 ], [ %57, %55 ]
  %71 = add i32 %70, 96
  br label %103

72:                                               ; preds = %58
  %73 = load ptr, ptr %59, align 4
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = shl i32 %67, 2
  tail call void %76(ptr noundef %73, i32 noundef %77, i32 noundef 65535) #6
  %78 = load ptr, ptr %59, align 4
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = load i32, ptr %15, align 4
  %83 = shl i32 %82, 2
  %84 = add i32 %83, 32
  tail call void %81(ptr noundef %78, i32 noundef %84, i32 noundef 65535) #6
  %85 = load ptr, ptr %59, align 4
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %15, align 4
  %90 = shl i32 %89, 2
  %91 = add i32 %90, 64
  tail call void %88(ptr noundef %85, i32 noundef %91, i32 noundef 65535) #6
  %92 = load ptr, ptr %59, align 4
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = load i32, ptr %15, align 4
  %97 = shl i32 %96, 2
  %98 = add i32 %97, 96
  tail call void %95(ptr noundef %92, i32 noundef %98, i32 noundef 65535) #6
  %99 = load i32, ptr %15, align 4
  %100 = load i32, ptr %41, align 4
  %101 = add i32 %99, 96
  store i32 %101, ptr %15, align 4
  %102 = icmp eq i32 %100, 1
  br i1 %102, label %106, label %103

103:                                              ; preds = %72, %69
  %104 = phi i32 [ %71, %69 ], [ %101, %72 ]
  %105 = add i32 %104, 32
  br label %117

106:                                              ; preds = %72
  %107 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = shl i32 %101, 2
  tail call void %111(ptr noundef %108, i32 noundef %112, i32 noundef 1) #6
  %113 = load i32, ptr %41, align 4
  %114 = load i32, ptr %15, align 4
  %115 = add i32 %114, 32
  store i32 %115, ptr %15, align 4
  %116 = icmp eq i32 %113, 1
  br i1 %116, label %120, label %117

117:                                              ; preds = %106, %103
  %118 = phi i32 [ %105, %103 ], [ %115, %106 ]
  %119 = add i32 %118, 48
  br label %139

120:                                              ; preds = %106
  %121 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = shl i32 %115, 2
  tail call void %125(ptr noundef %122, i32 noundef %126, i32 noundef 1) #6
  %127 = load i32, ptr %15, align 4
  %128 = load i32, ptr %41, align 4
  %129 = add i32 %127, 48
  store i32 %129, ptr %15, align 4
  %130 = icmp eq i32 %128, 1
  br i1 %130, label %131, label %139

131:                                              ; preds = %120
  %132 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %134, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = shl i32 %129, 2
  tail call void %136(ptr noundef %133, i32 noundef %137, i32 noundef 1) #6
  %138 = load i32, ptr %15, align 4
  br label %139

139:                                              ; preds = %131, %120, %117
  %140 = phi i32 [ %138, %131 ], [ %129, %120 ], [ %119, %117 ]
  %141 = add i32 %140, 24
  store i32 %141, ptr %15, align 4
  %142 = load i32, ptr %3, align 4
  %143 = add i32 %142, -161
  %144 = icmp ult i32 %143, 9
  %145 = icmp eq i32 %142, 175
  %146 = or i1 %145, %144
  br i1 %146, label %147, label %161

147:                                              ; preds = %139
  %148 = load i32, ptr %41, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %153, i32 0, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = shl i32 %141, 2
  tail call void %155(ptr noundef %152, i32 noundef %156, i32 noundef 3) #6
  %157 = load i32, ptr %15, align 4
  br label %158

158:                                              ; preds = %150, %147
  %159 = phi i32 [ %157, %150 ], [ %141, %147 ]
  %160 = add i32 %159, 24
  br label %179

161:                                              ; preds = %139
  %162 = icmp ugt i32 %142, 159
  br i1 %162, label %163, label %177

163:                                              ; preds = %161
  %164 = load i32, ptr %41, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %168 = load ptr, ptr %167, align 4
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %169, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = shl i32 %141, 2
  tail call void %171(ptr noundef %168, i32 noundef %172, i32 noundef 1) #6
  %173 = load i32, ptr %15, align 4
  br label %174

174:                                              ; preds = %166, %163
  %175 = phi i32 [ %173, %166 ], [ %141, %163 ]
  %176 = add i32 %175, 16
  br label %179

177:                                              ; preds = %161
  %178 = add i32 %140, 32
  br label %179

179:                                              ; preds = %177, %174, %158
  %180 = phi i32 [ %176, %174 ], [ %178, %177 ], [ %160, %158 ]
  %181 = add i32 %180, 72
  store i32 %181, ptr %15, align 4
  %182 = load i32, ptr %41, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %186, label %184

184:                                              ; preds = %179
  %185 = add i32 %180, 80
  store i32 %185, ptr %15, align 4
  br label %209

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %188 = load ptr, ptr %187, align 4
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %189, i32 0, i32 3
  %191 = load ptr, ptr %190, align 4
  %192 = shl i32 %181, 2
  tail call void %191(ptr noundef %188, i32 noundef %192, i32 noundef 1) #6
  %193 = load i32, ptr %41, align 4
  %194 = load i32, ptr %15, align 4
  %195 = add i32 %194, 8
  store i32 %195, ptr %15, align 4
  %196 = icmp eq i32 %193, 1
  br i1 %196, label %199, label %197

197:                                              ; preds = %186
  %198 = add i32 %194, 16
  br label %223

199:                                              ; preds = %186
  %200 = load ptr, ptr %187, align 4
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %201, i32 0, i32 3
  %203 = load ptr, ptr %202, align 4
  %204 = shl i32 %195, 2
  tail call void %203(ptr noundef %200, i32 noundef %204, i32 noundef 1) #6
  %205 = load i32, ptr %41, align 4
  %206 = load i32, ptr %15, align 4
  %207 = add i32 %206, 8
  store i32 %207, ptr %15, align 4
  %208 = icmp eq i32 %205, 1
  br i1 %208, label %212, label %209

209:                                              ; preds = %199, %184
  %210 = phi i32 [ %185, %184 ], [ %206, %199 ]
  %211 = add i32 %210, 16
  br label %237

212:                                              ; preds = %199
  %213 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %214 = load ptr, ptr %213, align 4
  %215 = load ptr, ptr %214, align 8
  %216 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %215, i32 0, i32 3
  %217 = load ptr, ptr %216, align 4
  %218 = shl i32 %207, 2
  tail call void %217(ptr noundef %214, i32 noundef %218, i32 noundef 2) #6
  %219 = load i32, ptr %41, align 4
  %220 = load i32, ptr %15, align 4
  %221 = add i32 %220, 8
  store i32 %221, ptr %15, align 4
  %222 = icmp eq i32 %219, 1
  br i1 %222, label %226, label %223

223:                                              ; preds = %212, %197
  %224 = phi i32 [ %198, %197 ], [ %220, %212 ]
  %225 = add i32 %224, 24
  br label %259

226:                                              ; preds = %212
  %227 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %228 = load ptr, ptr %227, align 4
  %229 = load ptr, ptr %228, align 8
  %230 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %229, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = shl i32 %221, 2
  tail call void %231(ptr noundef %228, i32 noundef %232, i32 noundef 1) #6
  %233 = load i32, ptr %41, align 4
  %234 = load i32, ptr %15, align 4
  %235 = add i32 %234, 8
  store i32 %235, ptr %15, align 4
  %236 = icmp eq i32 %233, 1
  br i1 %236, label %240, label %237

237:                                              ; preds = %226, %209
  %238 = phi i32 [ %211, %209 ], [ %234, %226 ]
  %239 = add i32 %238, 16
  br label %259

240:                                              ; preds = %226
  %241 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %242 = load ptr, ptr %241, align 4
  %243 = load ptr, ptr %242, align 8
  %244 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %243, i32 0, i32 3
  %245 = load ptr, ptr %244, align 4
  %246 = shl i32 %235, 2
  tail call void %245(ptr noundef %242, i32 noundef %246, i32 noundef 1) #6
  %247 = load i32, ptr %41, align 4
  %248 = load i32, ptr %15, align 4
  %249 = add i32 %248, 8
  store i32 %249, ptr %15, align 4
  %250 = icmp eq i32 %247, 1
  br i1 %250, label %251, label %259

251:                                              ; preds = %240
  %252 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %253 = load ptr, ptr %252, align 4
  %254 = load ptr, ptr %253, align 8
  %255 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %254, i32 0, i32 3
  %256 = load ptr, ptr %255, align 4
  %257 = shl i32 %249, 2
  tail call void %256(ptr noundef %253, i32 noundef %257, i32 noundef 2) #6
  %258 = load i32, ptr %15, align 4
  br label %259

259:                                              ; preds = %251, %240, %237, %223
  %260 = phi i32 [ %258, %251 ], [ %239, %237 ], [ %249, %240 ], [ %225, %223 ]
  %261 = add i32 %260, 8
  store i32 %261, ptr %15, align 4
  %262 = load i32, ptr %3, align 4
  %263 = add i32 %262, -161
  %264 = icmp ult i32 %263, 9
  %265 = icmp eq i32 %262, 175
  %266 = or i1 %265, %264
  br i1 %266, label %267, label %707

267:                                              ; preds = %259
  %268 = add i32 %260, 16
  store i32 %268, ptr %15, align 4
  %269 = load i32, ptr %41, align 4
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %274, label %271

271:                                              ; preds = %267
  %272 = add i32 %260, 80
  %273 = add i32 %260, 144
  store i32 %273, ptr %15, align 4
  br label %395

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %276 = load ptr, ptr %275, align 4
  %277 = load ptr, ptr %276, align 8
  %278 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %277, i32 0, i32 3
  %279 = load ptr, ptr %278, align 4
  %280 = shl i32 %268, 2
  tail call void %279(ptr noundef %276, i32 noundef %280, i32 noundef 1) #6
  %281 = load ptr, ptr %275, align 4
  %282 = load ptr, ptr %281, align 8
  %283 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %282, i32 0, i32 3
  %284 = load ptr, ptr %283, align 4
  %285 = load i32, ptr %15, align 4
  %286 = shl i32 %285, 2
  %287 = add i32 %286, 32
  tail call void %284(ptr noundef %281, i32 noundef %287, i32 noundef 1) #6
  %288 = load ptr, ptr %275, align 4
  %289 = load ptr, ptr %288, align 8
  %290 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %289, i32 0, i32 3
  %291 = load ptr, ptr %290, align 4
  %292 = load i32, ptr %15, align 4
  %293 = shl i32 %292, 2
  %294 = add i32 %293, 64
  tail call void %291(ptr noundef %288, i32 noundef %294, i32 noundef 1) #6
  %295 = load ptr, ptr %275, align 4
  %296 = load ptr, ptr %295, align 8
  %297 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %296, i32 0, i32 3
  %298 = load ptr, ptr %297, align 4
  %299 = load i32, ptr %15, align 4
  %300 = shl i32 %299, 2
  %301 = add i32 %300, 96
  tail call void %298(ptr noundef %295, i32 noundef %301, i32 noundef 1) #6
  %302 = load ptr, ptr %275, align 4
  %303 = load ptr, ptr %302, align 8
  %304 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %303, i32 0, i32 3
  %305 = load ptr, ptr %304, align 4
  %306 = load i32, ptr %15, align 4
  %307 = shl i32 %306, 2
  %308 = add i32 %307, 128
  tail call void %305(ptr noundef %302, i32 noundef %308, i32 noundef 1) #6
  %309 = load ptr, ptr %275, align 4
  %310 = load ptr, ptr %309, align 8
  %311 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %310, i32 0, i32 3
  %312 = load ptr, ptr %311, align 4
  %313 = load i32, ptr %15, align 4
  %314 = shl i32 %313, 2
  %315 = add i32 %314, 160
  tail call void %312(ptr noundef %309, i32 noundef %315, i32 noundef 1) #6
  %316 = load ptr, ptr %275, align 4
  %317 = load ptr, ptr %316, align 8
  %318 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %317, i32 0, i32 3
  %319 = load ptr, ptr %318, align 4
  %320 = load i32, ptr %15, align 4
  %321 = shl i32 %320, 2
  %322 = add i32 %321, 192
  tail call void %319(ptr noundef %316, i32 noundef %322, i32 noundef 1) #6
  %323 = load ptr, ptr %275, align 4
  %324 = load ptr, ptr %323, align 8
  %325 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %324, i32 0, i32 3
  %326 = load ptr, ptr %325, align 4
  %327 = load i32, ptr %15, align 4
  %328 = shl i32 %327, 2
  %329 = add i32 %328, 224
  tail call void %326(ptr noundef %323, i32 noundef %329, i32 noundef 1) #6
  %330 = load i32, ptr %41, align 4
  %331 = load i32, ptr %15, align 4
  %332 = add i32 %331, 64
  store i32 %332, ptr %15, align 4
  %333 = icmp eq i32 %330, 1
  br i1 %333, label %336, label %334

334:                                              ; preds = %274
  %335 = add i32 %331, 128
  store i32 %335, ptr %15, align 4
  br label %458

336:                                              ; preds = %274
  %337 = load ptr, ptr %275, align 4
  %338 = load ptr, ptr %337, align 8
  %339 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %338, i32 0, i32 3
  %340 = load ptr, ptr %339, align 4
  %341 = shl i32 %332, 2
  tail call void %340(ptr noundef %337, i32 noundef %341, i32 noundef 1) #6
  %342 = load ptr, ptr %275, align 4
  %343 = load ptr, ptr %342, align 8
  %344 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %343, i32 0, i32 3
  %345 = load ptr, ptr %344, align 4
  %346 = load i32, ptr %15, align 4
  %347 = shl i32 %346, 2
  %348 = add i32 %347, 32
  tail call void %345(ptr noundef %342, i32 noundef %348, i32 noundef 1) #6
  %349 = load ptr, ptr %275, align 4
  %350 = load ptr, ptr %349, align 8
  %351 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %350, i32 0, i32 3
  %352 = load ptr, ptr %351, align 4
  %353 = load i32, ptr %15, align 4
  %354 = shl i32 %353, 2
  %355 = add i32 %354, 64
  tail call void %352(ptr noundef %349, i32 noundef %355, i32 noundef 1) #6
  %356 = load ptr, ptr %275, align 4
  %357 = load ptr, ptr %356, align 8
  %358 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %357, i32 0, i32 3
  %359 = load ptr, ptr %358, align 4
  %360 = load i32, ptr %15, align 4
  %361 = shl i32 %360, 2
  %362 = add i32 %361, 96
  tail call void %359(ptr noundef %356, i32 noundef %362, i32 noundef 1) #6
  %363 = load ptr, ptr %275, align 4
  %364 = load ptr, ptr %363, align 8
  %365 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %364, i32 0, i32 3
  %366 = load ptr, ptr %365, align 4
  %367 = load i32, ptr %15, align 4
  %368 = shl i32 %367, 2
  %369 = add i32 %368, 128
  tail call void %366(ptr noundef %363, i32 noundef %369, i32 noundef 1) #6
  %370 = load ptr, ptr %275, align 4
  %371 = load ptr, ptr %370, align 8
  %372 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %371, i32 0, i32 3
  %373 = load ptr, ptr %372, align 4
  %374 = load i32, ptr %15, align 4
  %375 = shl i32 %374, 2
  %376 = add i32 %375, 160
  tail call void %373(ptr noundef %370, i32 noundef %376, i32 noundef 1) #6
  %377 = load ptr, ptr %275, align 4
  %378 = load ptr, ptr %377, align 8
  %379 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %378, i32 0, i32 3
  %380 = load ptr, ptr %379, align 4
  %381 = load i32, ptr %15, align 4
  %382 = shl i32 %381, 2
  %383 = add i32 %382, 192
  tail call void %380(ptr noundef %377, i32 noundef %383, i32 noundef 1) #6
  %384 = load ptr, ptr %275, align 4
  %385 = load ptr, ptr %384, align 8
  %386 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %385, i32 0, i32 3
  %387 = load ptr, ptr %386, align 4
  %388 = load i32, ptr %15, align 4
  %389 = shl i32 %388, 2
  %390 = add i32 %389, 224
  tail call void %387(ptr noundef %384, i32 noundef %390, i32 noundef 1) #6
  %391 = load i32, ptr %41, align 4
  %392 = load i32, ptr %15, align 4
  %393 = add i32 %392, 64
  store i32 %393, ptr %15, align 4
  %394 = icmp eq i32 %391, 1
  br i1 %394, label %398, label %395

395:                                              ; preds = %336, %271
  %396 = phi i32 [ %272, %271 ], [ %392, %336 ]
  %397 = add i32 %396, 128
  br label %521

398:                                              ; preds = %336
  %399 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %400 = load ptr, ptr %399, align 4
  %401 = load ptr, ptr %400, align 8
  %402 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %401, i32 0, i32 3
  %403 = load ptr, ptr %402, align 4
  %404 = shl i32 %393, 2
  tail call void %403(ptr noundef %400, i32 noundef %404, i32 noundef 1) #6
  %405 = load ptr, ptr %399, align 4
  %406 = load ptr, ptr %405, align 8
  %407 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %406, i32 0, i32 3
  %408 = load ptr, ptr %407, align 4
  %409 = load i32, ptr %15, align 4
  %410 = shl i32 %409, 2
  %411 = add i32 %410, 32
  tail call void %408(ptr noundef %405, i32 noundef %411, i32 noundef 1) #6
  %412 = load ptr, ptr %399, align 4
  %413 = load ptr, ptr %412, align 8
  %414 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %413, i32 0, i32 3
  %415 = load ptr, ptr %414, align 4
  %416 = load i32, ptr %15, align 4
  %417 = shl i32 %416, 2
  %418 = add i32 %417, 64
  tail call void %415(ptr noundef %412, i32 noundef %418, i32 noundef 1) #6
  %419 = load ptr, ptr %399, align 4
  %420 = load ptr, ptr %419, align 8
  %421 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %420, i32 0, i32 3
  %422 = load ptr, ptr %421, align 4
  %423 = load i32, ptr %15, align 4
  %424 = shl i32 %423, 2
  %425 = add i32 %424, 96
  tail call void %422(ptr noundef %419, i32 noundef %425, i32 noundef 1) #6
  %426 = load ptr, ptr %399, align 4
  %427 = load ptr, ptr %426, align 8
  %428 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %427, i32 0, i32 3
  %429 = load ptr, ptr %428, align 4
  %430 = load i32, ptr %15, align 4
  %431 = shl i32 %430, 2
  %432 = add i32 %431, 128
  tail call void %429(ptr noundef %426, i32 noundef %432, i32 noundef 1) #6
  %433 = load ptr, ptr %399, align 4
  %434 = load ptr, ptr %433, align 8
  %435 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %434, i32 0, i32 3
  %436 = load ptr, ptr %435, align 4
  %437 = load i32, ptr %15, align 4
  %438 = shl i32 %437, 2
  %439 = add i32 %438, 160
  tail call void %436(ptr noundef %433, i32 noundef %439, i32 noundef 1) #6
  %440 = load ptr, ptr %399, align 4
  %441 = load ptr, ptr %440, align 8
  %442 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %441, i32 0, i32 3
  %443 = load ptr, ptr %442, align 4
  %444 = load i32, ptr %15, align 4
  %445 = shl i32 %444, 2
  %446 = add i32 %445, 192
  tail call void %443(ptr noundef %440, i32 noundef %446, i32 noundef 1) #6
  %447 = load ptr, ptr %399, align 4
  %448 = load ptr, ptr %447, align 8
  %449 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %448, i32 0, i32 3
  %450 = load ptr, ptr %449, align 4
  %451 = load i32, ptr %15, align 4
  %452 = shl i32 %451, 2
  %453 = add i32 %452, 224
  tail call void %450(ptr noundef %447, i32 noundef %453, i32 noundef 1) #6
  %454 = load i32, ptr %41, align 4
  %455 = load i32, ptr %15, align 4
  %456 = add i32 %455, 64
  store i32 %456, ptr %15, align 4
  %457 = icmp eq i32 %454, 1
  br i1 %457, label %461, label %458

458:                                              ; preds = %398, %334
  %459 = phi i32 [ %335, %334 ], [ %455, %398 ]
  %460 = add i32 %459, 128
  br label %584

461:                                              ; preds = %398
  %462 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %463 = load ptr, ptr %462, align 4
  %464 = load ptr, ptr %463, align 8
  %465 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %464, i32 0, i32 3
  %466 = load ptr, ptr %465, align 4
  %467 = shl i32 %456, 2
  tail call void %466(ptr noundef %463, i32 noundef %467, i32 noundef 2) #6
  %468 = load ptr, ptr %462, align 4
  %469 = load ptr, ptr %468, align 8
  %470 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %469, i32 0, i32 3
  %471 = load ptr, ptr %470, align 4
  %472 = load i32, ptr %15, align 4
  %473 = shl i32 %472, 2
  %474 = add i32 %473, 32
  tail call void %471(ptr noundef %468, i32 noundef %474, i32 noundef 2) #6
  %475 = load ptr, ptr %462, align 4
  %476 = load ptr, ptr %475, align 8
  %477 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %476, i32 0, i32 3
  %478 = load ptr, ptr %477, align 4
  %479 = load i32, ptr %15, align 4
  %480 = shl i32 %479, 2
  %481 = add i32 %480, 64
  tail call void %478(ptr noundef %475, i32 noundef %481, i32 noundef 2) #6
  %482 = load ptr, ptr %462, align 4
  %483 = load ptr, ptr %482, align 8
  %484 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %483, i32 0, i32 3
  %485 = load ptr, ptr %484, align 4
  %486 = load i32, ptr %15, align 4
  %487 = shl i32 %486, 2
  %488 = add i32 %487, 96
  tail call void %485(ptr noundef %482, i32 noundef %488, i32 noundef 2) #6
  %489 = load ptr, ptr %462, align 4
  %490 = load ptr, ptr %489, align 8
  %491 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %490, i32 0, i32 3
  %492 = load ptr, ptr %491, align 4
  %493 = load i32, ptr %15, align 4
  %494 = shl i32 %493, 2
  %495 = add i32 %494, 128
  tail call void %492(ptr noundef %489, i32 noundef %495, i32 noundef 2) #6
  %496 = load ptr, ptr %462, align 4
  %497 = load ptr, ptr %496, align 8
  %498 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %497, i32 0, i32 3
  %499 = load ptr, ptr %498, align 4
  %500 = load i32, ptr %15, align 4
  %501 = shl i32 %500, 2
  %502 = add i32 %501, 160
  tail call void %499(ptr noundef %496, i32 noundef %502, i32 noundef 2) #6
  %503 = load ptr, ptr %462, align 4
  %504 = load ptr, ptr %503, align 8
  %505 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %504, i32 0, i32 3
  %506 = load ptr, ptr %505, align 4
  %507 = load i32, ptr %15, align 4
  %508 = shl i32 %507, 2
  %509 = add i32 %508, 192
  tail call void %506(ptr noundef %503, i32 noundef %509, i32 noundef 2) #6
  %510 = load ptr, ptr %462, align 4
  %511 = load ptr, ptr %510, align 8
  %512 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %511, i32 0, i32 3
  %513 = load ptr, ptr %512, align 4
  %514 = load i32, ptr %15, align 4
  %515 = shl i32 %514, 2
  %516 = add i32 %515, 224
  tail call void %513(ptr noundef %510, i32 noundef %516, i32 noundef 2) #6
  %517 = load i32, ptr %41, align 4
  %518 = load i32, ptr %15, align 4
  %519 = add i32 %518, 64
  store i32 %519, ptr %15, align 4
  %520 = icmp eq i32 %517, 1
  br i1 %520, label %524, label %521

521:                                              ; preds = %461, %395
  %522 = phi i32 [ %397, %395 ], [ %518, %461 ]
  %523 = add i32 %522, 192
  br label %704

524:                                              ; preds = %461
  %525 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %526 = load ptr, ptr %525, align 4
  %527 = load ptr, ptr %526, align 8
  %528 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %527, i32 0, i32 3
  %529 = load ptr, ptr %528, align 4
  %530 = shl i32 %519, 2
  tail call void %529(ptr noundef %526, i32 noundef %530, i32 noundef 1) #6
  %531 = load ptr, ptr %525, align 4
  %532 = load ptr, ptr %531, align 8
  %533 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %532, i32 0, i32 3
  %534 = load ptr, ptr %533, align 4
  %535 = load i32, ptr %15, align 4
  %536 = shl i32 %535, 2
  %537 = add i32 %536, 32
  tail call void %534(ptr noundef %531, i32 noundef %537, i32 noundef 1) #6
  %538 = load ptr, ptr %525, align 4
  %539 = load ptr, ptr %538, align 8
  %540 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %539, i32 0, i32 3
  %541 = load ptr, ptr %540, align 4
  %542 = load i32, ptr %15, align 4
  %543 = shl i32 %542, 2
  %544 = add i32 %543, 64
  tail call void %541(ptr noundef %538, i32 noundef %544, i32 noundef 1) #6
  %545 = load ptr, ptr %525, align 4
  %546 = load ptr, ptr %545, align 8
  %547 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %546, i32 0, i32 3
  %548 = load ptr, ptr %547, align 4
  %549 = load i32, ptr %15, align 4
  %550 = shl i32 %549, 2
  %551 = add i32 %550, 96
  tail call void %548(ptr noundef %545, i32 noundef %551, i32 noundef 1) #6
  %552 = load ptr, ptr %525, align 4
  %553 = load ptr, ptr %552, align 8
  %554 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %553, i32 0, i32 3
  %555 = load ptr, ptr %554, align 4
  %556 = load i32, ptr %15, align 4
  %557 = shl i32 %556, 2
  %558 = add i32 %557, 128
  tail call void %555(ptr noundef %552, i32 noundef %558, i32 noundef 1) #6
  %559 = load ptr, ptr %525, align 4
  %560 = load ptr, ptr %559, align 8
  %561 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %560, i32 0, i32 3
  %562 = load ptr, ptr %561, align 4
  %563 = load i32, ptr %15, align 4
  %564 = shl i32 %563, 2
  %565 = add i32 %564, 160
  tail call void %562(ptr noundef %559, i32 noundef %565, i32 noundef 1) #6
  %566 = load ptr, ptr %525, align 4
  %567 = load ptr, ptr %566, align 8
  %568 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %567, i32 0, i32 3
  %569 = load ptr, ptr %568, align 4
  %570 = load i32, ptr %15, align 4
  %571 = shl i32 %570, 2
  %572 = add i32 %571, 192
  tail call void %569(ptr noundef %566, i32 noundef %572, i32 noundef 1) #6
  %573 = load ptr, ptr %525, align 4
  %574 = load ptr, ptr %573, align 8
  %575 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %574, i32 0, i32 3
  %576 = load ptr, ptr %575, align 4
  %577 = load i32, ptr %15, align 4
  %578 = shl i32 %577, 2
  %579 = add i32 %578, 224
  tail call void %576(ptr noundef %573, i32 noundef %579, i32 noundef 1) #6
  %580 = load i32, ptr %41, align 4
  %581 = load i32, ptr %15, align 4
  %582 = add i32 %581, 64
  store i32 %582, ptr %15, align 4
  %583 = icmp eq i32 %580, 1
  br i1 %583, label %587, label %584

584:                                              ; preds = %524, %458
  %585 = phi i32 [ %460, %458 ], [ %581, %524 ]
  %586 = add i32 %585, 128
  br label %704

587:                                              ; preds = %524
  %588 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %589 = load ptr, ptr %588, align 4
  %590 = load ptr, ptr %589, align 8
  %591 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %590, i32 0, i32 3
  %592 = load ptr, ptr %591, align 4
  %593 = shl i32 %582, 2
  tail call void %592(ptr noundef %589, i32 noundef %593, i32 noundef 2) #6
  %594 = load ptr, ptr %588, align 4
  %595 = load ptr, ptr %594, align 8
  %596 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %595, i32 0, i32 3
  %597 = load ptr, ptr %596, align 4
  %598 = load i32, ptr %15, align 4
  %599 = shl i32 %598, 2
  %600 = add i32 %599, 32
  tail call void %597(ptr noundef %594, i32 noundef %600, i32 noundef 2) #6
  %601 = load ptr, ptr %588, align 4
  %602 = load ptr, ptr %601, align 8
  %603 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %602, i32 0, i32 3
  %604 = load ptr, ptr %603, align 4
  %605 = load i32, ptr %15, align 4
  %606 = shl i32 %605, 2
  %607 = add i32 %606, 64
  tail call void %604(ptr noundef %601, i32 noundef %607, i32 noundef 2) #6
  %608 = load ptr, ptr %588, align 4
  %609 = load ptr, ptr %608, align 8
  %610 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %609, i32 0, i32 3
  %611 = load ptr, ptr %610, align 4
  %612 = load i32, ptr %15, align 4
  %613 = shl i32 %612, 2
  %614 = add i32 %613, 96
  tail call void %611(ptr noundef %608, i32 noundef %614, i32 noundef 2) #6
  %615 = load ptr, ptr %588, align 4
  %616 = load ptr, ptr %615, align 8
  %617 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %616, i32 0, i32 3
  %618 = load ptr, ptr %617, align 4
  %619 = load i32, ptr %15, align 4
  %620 = shl i32 %619, 2
  %621 = add i32 %620, 128
  tail call void %618(ptr noundef %615, i32 noundef %621, i32 noundef 2) #6
  %622 = load ptr, ptr %588, align 4
  %623 = load ptr, ptr %622, align 8
  %624 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %623, i32 0, i32 3
  %625 = load ptr, ptr %624, align 4
  %626 = load i32, ptr %15, align 4
  %627 = shl i32 %626, 2
  %628 = add i32 %627, 160
  tail call void %625(ptr noundef %622, i32 noundef %628, i32 noundef 2) #6
  %629 = load ptr, ptr %588, align 4
  %630 = load ptr, ptr %629, align 8
  %631 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %630, i32 0, i32 3
  %632 = load ptr, ptr %631, align 4
  %633 = load i32, ptr %15, align 4
  %634 = shl i32 %633, 2
  %635 = add i32 %634, 192
  tail call void %632(ptr noundef %629, i32 noundef %635, i32 noundef 2) #6
  %636 = load ptr, ptr %588, align 4
  %637 = load ptr, ptr %636, align 8
  %638 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %637, i32 0, i32 3
  %639 = load ptr, ptr %638, align 4
  %640 = load i32, ptr %15, align 4
  %641 = shl i32 %640, 2
  %642 = add i32 %641, 224
  tail call void %639(ptr noundef %636, i32 noundef %642, i32 noundef 2) #6
  %643 = load i32, ptr %41, align 4
  %644 = load i32, ptr %15, align 4
  %645 = add i32 %644, 64
  store i32 %645, ptr %15, align 4
  %646 = icmp eq i32 %643, 1
  br i1 %646, label %647, label %704

647:                                              ; preds = %587
  %648 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %649 = load ptr, ptr %648, align 4
  %650 = load ptr, ptr %649, align 8
  %651 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %650, i32 0, i32 3
  %652 = load ptr, ptr %651, align 4
  %653 = shl i32 %645, 2
  tail call void %652(ptr noundef %649, i32 noundef %653, i32 noundef 1) #6
  %654 = load ptr, ptr %648, align 4
  %655 = load ptr, ptr %654, align 8
  %656 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %655, i32 0, i32 3
  %657 = load ptr, ptr %656, align 4
  %658 = load i32, ptr %15, align 4
  %659 = shl i32 %658, 2
  %660 = add i32 %659, 32
  tail call void %657(ptr noundef %654, i32 noundef %660, i32 noundef 1) #6
  %661 = load ptr, ptr %648, align 4
  %662 = load ptr, ptr %661, align 8
  %663 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %662, i32 0, i32 3
  %664 = load ptr, ptr %663, align 4
  %665 = load i32, ptr %15, align 4
  %666 = shl i32 %665, 2
  %667 = add i32 %666, 64
  tail call void %664(ptr noundef %661, i32 noundef %667, i32 noundef 1) #6
  %668 = load ptr, ptr %648, align 4
  %669 = load ptr, ptr %668, align 8
  %670 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %669, i32 0, i32 3
  %671 = load ptr, ptr %670, align 4
  %672 = load i32, ptr %15, align 4
  %673 = shl i32 %672, 2
  %674 = add i32 %673, 96
  tail call void %671(ptr noundef %668, i32 noundef %674, i32 noundef 1) #6
  %675 = load ptr, ptr %648, align 4
  %676 = load ptr, ptr %675, align 8
  %677 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %676, i32 0, i32 3
  %678 = load ptr, ptr %677, align 4
  %679 = load i32, ptr %15, align 4
  %680 = shl i32 %679, 2
  %681 = add i32 %680, 128
  tail call void %678(ptr noundef %675, i32 noundef %681, i32 noundef 1) #6
  %682 = load ptr, ptr %648, align 4
  %683 = load ptr, ptr %682, align 8
  %684 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %683, i32 0, i32 3
  %685 = load ptr, ptr %684, align 4
  %686 = load i32, ptr %15, align 4
  %687 = shl i32 %686, 2
  %688 = add i32 %687, 160
  tail call void %685(ptr noundef %682, i32 noundef %688, i32 noundef 1) #6
  %689 = load ptr, ptr %648, align 4
  %690 = load ptr, ptr %689, align 8
  %691 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %690, i32 0, i32 3
  %692 = load ptr, ptr %691, align 4
  %693 = load i32, ptr %15, align 4
  %694 = shl i32 %693, 2
  %695 = add i32 %694, 192
  tail call void %692(ptr noundef %689, i32 noundef %695, i32 noundef 1) #6
  %696 = load ptr, ptr %648, align 4
  %697 = load ptr, ptr %696, align 8
  %698 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %697, i32 0, i32 3
  %699 = load ptr, ptr %698, align 4
  %700 = load i32, ptr %15, align 4
  %701 = shl i32 %700, 2
  %702 = add i32 %701, 224
  tail call void %699(ptr noundef %696, i32 noundef %702, i32 noundef 1) #6
  %703 = load i32, ptr %15, align 4
  br label %704

704:                                              ; preds = %647, %587, %584, %521
  %705 = phi i32 [ %703, %647 ], [ %586, %584 ], [ %645, %587 ], [ %523, %521 ]
  %706 = add i32 %705, 72
  store i32 %706, ptr %15, align 4
  br label %707

707:                                              ; preds = %704, %259
  %708 = phi i32 [ %261, %259 ], [ %706, %704 ]
  %709 = load i32, ptr %41, align 4
  %710 = icmp eq i32 %709, 1
  br i1 %710, label %713, label %711

711:                                              ; preds = %707
  %712 = add i32 %708, 16
  br label %734

713:                                              ; preds = %707
  %714 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %715 = load ptr, ptr %714, align 4
  %716 = load ptr, ptr %715, align 8
  %717 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %716, i32 0, i32 3
  %718 = load ptr, ptr %717, align 4
  %719 = shl i32 %708, 2
  tail call void %718(ptr noundef %715, i32 noundef %719, i32 noundef 1) #6
  %720 = load i32, ptr %41, align 4
  %721 = load i32, ptr %15, align 4
  %722 = add i32 %721, 16
  store i32 %722, ptr %15, align 4
  %723 = icmp eq i32 %720, 1
  br i1 %723, label %724, label %734

724:                                              ; preds = %713
  %725 = load ptr, ptr %714, align 4
  %726 = load ptr, ptr %725, align 8
  %727 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %726, i32 0, i32 3
  %728 = load ptr, ptr %727, align 4
  %729 = shl i32 %722, 2
  tail call void %728(ptr noundef %725, i32 noundef %729, i32 noundef 17) #6
  %730 = load i32, ptr %15, align 4
  %731 = load i32, ptr %41, align 4
  %732 = add i32 %730, 64
  store i32 %732, ptr %15, align 4
  %733 = icmp eq i32 %731, 1
  br i1 %733, label %737, label %734

734:                                              ; preds = %724, %713, %711
  %735 = phi i32 [ %730, %724 ], [ %722, %713 ], [ %712, %711 ]
  %736 = add i32 %735, 88
  store i32 %736, ptr %15, align 4
  br label %758

737:                                              ; preds = %724
  %738 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %739 = load ptr, ptr %738, align 4
  %740 = load ptr, ptr %739, align 8
  %741 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %740, i32 0, i32 3
  %742 = load ptr, ptr %741, align 4
  %743 = shl i32 %732, 2
  tail call void %742(ptr noundef %739, i32 noundef %743, i32 noundef 262957185) #6
  %744 = load i32, ptr %41, align 4
  %745 = load i32, ptr %15, align 4
  %746 = add i32 %745, 24
  store i32 %746, ptr %15, align 4
  %747 = icmp eq i32 %744, 1
  br i1 %747, label %748, label %758

748:                                              ; preds = %737
  %749 = load ptr, ptr %738, align 4
  %750 = load ptr, ptr %749, align 8
  %751 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %750, i32 0, i32 3
  %752 = load ptr, ptr %751, align 4
  %753 = shl i32 %746, 2
  tail call void %752(ptr noundef %749, i32 noundef %753, i32 noundef 4) #6
  %754 = load i32, ptr %15, align 4
  %755 = load i32, ptr %41, align 4
  %756 = add i32 %754, 32
  store i32 %756, ptr %15, align 4
  %757 = icmp eq i32 %755, 1
  br i1 %757, label %761, label %758

758:                                              ; preds = %748, %737, %734
  %759 = phi i32 [ %754, %748 ], [ %746, %737 ], [ %736, %734 ]
  %760 = add i32 %759, 56
  br label %795

761:                                              ; preds = %748
  %762 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %763 = load ptr, ptr %762, align 4
  %764 = load ptr, ptr %763, align 8
  %765 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %764, i32 0, i32 3
  %766 = load ptr, ptr %765, align 4
  %767 = shl i32 %756, 2
  tail call void %766(ptr noundef %763, i32 noundef %767, i32 noundef 17) #6
  %768 = load i32, ptr %41, align 4
  %769 = load i32, ptr %15, align 4
  %770 = add i32 %769, 8
  store i32 %770, ptr %15, align 4
  %771 = icmp eq i32 %768, 1
  br i1 %771, label %774, label %772

772:                                              ; preds = %761
  %773 = add i32 %769, 24
  br label %795

774:                                              ; preds = %761
  %775 = load ptr, ptr %762, align 4
  %776 = load ptr, ptr %775, align 8
  %777 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %776, i32 0, i32 3
  %778 = load ptr, ptr %777, align 4
  %779 = shl i32 %770, 2
  tail call void %778(ptr noundef %775, i32 noundef %779, i32 noundef 1) #6
  %780 = load i32, ptr %41, align 4
  %781 = load i32, ptr %15, align 4
  %782 = add i32 %781, 16
  store i32 %782, ptr %15, align 4
  %783 = icmp eq i32 %780, 1
  br i1 %783, label %784, label %795

784:                                              ; preds = %774
  %785 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %786 = load ptr, ptr %785, align 4
  %787 = load ptr, ptr %786, align 8
  %788 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %787, i32 0, i32 3
  %789 = load ptr, ptr %788, align 4
  %790 = shl i32 %782, 2
  tail call void %789(ptr noundef %786, i32 noundef %790, i32 noundef 207) #6
  %791 = load i32, ptr %15, align 4
  %792 = load i32, ptr %41, align 4
  %793 = add i32 %791, 8
  store i32 %793, ptr %15, align 4
  %794 = icmp eq i32 %792, 1
  br i1 %794, label %798, label %795

795:                                              ; preds = %784, %774, %772, %758
  %796 = phi i32 [ %791, %784 ], [ %760, %758 ], [ %782, %774 ], [ %773, %772 ]
  %797 = add i32 %796, 16
  br label %816

798:                                              ; preds = %784
  %799 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %800 = load ptr, ptr %799, align 4
  %801 = load ptr, ptr %800, align 8
  %802 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %801, i32 0, i32 3
  %803 = load ptr, ptr %802, align 4
  %804 = shl i32 %793, 2
  tail call void %803(ptr noundef %800, i32 noundef %804, i32 noundef 207) #6
  %805 = load i32, ptr %41, align 4
  %806 = load i32, ptr %15, align 4
  %807 = add i32 %806, 8
  store i32 %807, ptr %15, align 4
  %808 = icmp eq i32 %805, 1
  br i1 %808, label %809, label %816

809:                                              ; preds = %798
  %810 = load ptr, ptr %799, align 4
  %811 = load ptr, ptr %810, align 8
  %812 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %811, i32 0, i32 3
  %813 = load ptr, ptr %812, align 4
  %814 = shl i32 %807, 2
  tail call void %813(ptr noundef %810, i32 noundef %814, i32 noundef 207) #6
  %815 = load i32, ptr %15, align 4
  br label %816

816:                                              ; preds = %809, %798, %795
  %817 = phi i32 [ %815, %809 ], [ %797, %795 ], [ %807, %798 ]
  %818 = add i32 %817, 8
  store i32 %818, ptr %15, align 4
  %819 = load i32, ptr %3, align 4
  %820 = add i32 %819, -161
  %821 = icmp ult i32 %820, 9
  %822 = icmp eq i32 %819, 175
  %823 = or i1 %822, %821
  br i1 %823, label %824, label %838

824:                                              ; preds = %816
  %825 = load i32, ptr %41, align 4
  %826 = icmp eq i32 %825, 1
  br i1 %826, label %827, label %835

827:                                              ; preds = %824
  %828 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %829 = load ptr, ptr %828, align 4
  %830 = load ptr, ptr %829, align 8
  %831 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %830, i32 0, i32 3
  %832 = load ptr, ptr %831, align 4
  %833 = shl i32 %818, 2
  tail call void %832(ptr noundef %829, i32 noundef %833, i32 noundef 1) #6
  %834 = load i32, ptr %15, align 4
  br label %835

835:                                              ; preds = %827, %824
  %836 = phi i32 [ %834, %827 ], [ %818, %824 ]
  %837 = add i32 %836, 8
  br label %838

838:                                              ; preds = %835, %816
  %839 = phi i32 [ %818, %816 ], [ %837, %835 ]
  %840 = add i32 %839, 80
  store i32 %840, ptr %15, align 4
  %841 = load i32, ptr %41, align 4
  %842 = icmp eq i32 %841, 1
  br i1 %842, label %845, label %843

843:                                              ; preds = %838
  %844 = add i32 %839, 88
  br label %869

845:                                              ; preds = %838
  %846 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %847 = load ptr, ptr %846, align 4
  %848 = load ptr, ptr %847, align 8
  %849 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %848, i32 0, i32 3
  %850 = load ptr, ptr %849, align 4
  %851 = shl i32 %840, 2
  tail call void %850(ptr noundef %847, i32 noundef %851, i32 noundef 1) #6
  %852 = load i32, ptr %41, align 4
  %853 = load i32, ptr %15, align 4
  %854 = add i32 %853, 8
  store i32 %854, ptr %15, align 4
  %855 = icmp eq i32 %852, 1
  br i1 %855, label %859, label %856

856:                                              ; preds = %845
  %857 = add i32 %853, 16
  %858 = add i32 %853, 24
  store i32 %858, ptr %15, align 4
  br label %883

859:                                              ; preds = %845
  %860 = load ptr, ptr %846, align 4
  %861 = load ptr, ptr %860, align 8
  %862 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %861, i32 0, i32 3
  %863 = load ptr, ptr %862, align 4
  %864 = shl i32 %854, 2
  tail call void %863(ptr noundef %860, i32 noundef %864, i32 noundef 1) #6
  %865 = load i32, ptr %41, align 4
  %866 = load i32, ptr %15, align 4
  %867 = add i32 %866, 8
  store i32 %867, ptr %15, align 4
  %868 = icmp eq i32 %865, 1
  br i1 %868, label %872, label %869

869:                                              ; preds = %859, %843
  %870 = phi i32 [ %844, %843 ], [ %866, %859 ]
  %871 = add i32 %870, 16
  store i32 %871, ptr %15, align 4
  br label %897

872:                                              ; preds = %859
  %873 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %874 = load ptr, ptr %873, align 4
  %875 = load ptr, ptr %874, align 8
  %876 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %875, i32 0, i32 3
  %877 = load ptr, ptr %876, align 4
  %878 = shl i32 %867, 2
  tail call void %877(ptr noundef %874, i32 noundef %878, i32 noundef 2) #6
  %879 = load i32, ptr %41, align 4
  %880 = load i32, ptr %15, align 4
  %881 = add i32 %880, 8
  store i32 %881, ptr %15, align 4
  %882 = icmp eq i32 %879, 1
  br i1 %882, label %886, label %883

883:                                              ; preds = %872, %856
  %884 = phi i32 [ %857, %856 ], [ %880, %872 ]
  %885 = add i32 %884, 16
  br label %911

886:                                              ; preds = %872
  %887 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %888 = load ptr, ptr %887, align 4
  %889 = load ptr, ptr %888, align 8
  %890 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %889, i32 0, i32 3
  %891 = load ptr, ptr %890, align 4
  %892 = shl i32 %881, 2
  tail call void %891(ptr noundef %888, i32 noundef %892, i32 noundef 1) #6
  %893 = load i32, ptr %41, align 4
  %894 = load i32, ptr %15, align 4
  %895 = add i32 %894, 8
  store i32 %895, ptr %15, align 4
  %896 = icmp eq i32 %893, 1
  br i1 %896, label %900, label %897

897:                                              ; preds = %886, %869
  %898 = phi i32 [ %871, %869 ], [ %894, %886 ]
  %899 = add i32 %898, 16
  br label %925

900:                                              ; preds = %886
  %901 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %902 = load ptr, ptr %901, align 4
  %903 = load ptr, ptr %902, align 8
  %904 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %903, i32 0, i32 3
  %905 = load ptr, ptr %904, align 4
  %906 = shl i32 %895, 2
  tail call void %905(ptr noundef %902, i32 noundef %906, i32 noundef 1) #6
  %907 = load i32, ptr %41, align 4
  %908 = load i32, ptr %15, align 4
  %909 = add i32 %908, 8
  store i32 %909, ptr %15, align 4
  %910 = icmp eq i32 %907, 1
  br i1 %910, label %914, label %911

911:                                              ; preds = %900, %883
  %912 = phi i32 [ %885, %883 ], [ %908, %900 ]
  %913 = add i32 %912, 32
  br label %939

914:                                              ; preds = %900
  %915 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %916 = load ptr, ptr %915, align 4
  %917 = load ptr, ptr %916, align 8
  %918 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %917, i32 0, i32 3
  %919 = load ptr, ptr %918, align 4
  %920 = shl i32 %909, 2
  tail call void %919(ptr noundef %916, i32 noundef %920, i32 noundef 2) #6
  %921 = load i32, ptr %41, align 4
  %922 = load i32, ptr %15, align 4
  %923 = add i32 %922, 8
  store i32 %923, ptr %15, align 4
  %924 = icmp eq i32 %921, 1
  br i1 %924, label %928, label %925

925:                                              ; preds = %914, %897
  %926 = phi i32 [ %899, %897 ], [ %922, %914 ]
  %927 = add i32 %926, 24
  br label %939

928:                                              ; preds = %914
  %929 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %930 = load ptr, ptr %929, align 4
  %931 = load ptr, ptr %930, align 8
  %932 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %931, i32 0, i32 3
  %933 = load ptr, ptr %932, align 4
  %934 = shl i32 %923, 2
  tail call void %933(ptr noundef %930, i32 noundef %934, i32 noundef 1) #6
  %935 = load i32, ptr %41, align 4
  %936 = load i32, ptr %15, align 4
  %937 = add i32 %936, 16
  store i32 %937, ptr %15, align 4
  %938 = icmp eq i32 %935, 1
  br i1 %938, label %942, label %939

939:                                              ; preds = %928, %925, %911
  %940 = phi i32 [ %913, %911 ], [ %937, %928 ], [ %927, %925 ]
  %941 = add i32 %940, 64
  store i32 %941, ptr %15, align 4
  br label %1002

942:                                              ; preds = %928
  %943 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %944 = load ptr, ptr %943, align 4
  %945 = load ptr, ptr %944, align 8
  %946 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %945, i32 0, i32 3
  %947 = load ptr, ptr %946, align 4
  %948 = shl i32 %937, 2
  tail call void %947(ptr noundef %944, i32 noundef %948, i32 noundef 1) #6
  %949 = load ptr, ptr %943, align 4
  %950 = load ptr, ptr %949, align 8
  %951 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %950, i32 0, i32 3
  %952 = load ptr, ptr %951, align 4
  %953 = load i32, ptr %15, align 4
  %954 = shl i32 %953, 2
  %955 = add i32 %954, 32
  tail call void %952(ptr noundef %949, i32 noundef %955, i32 noundef 1) #6
  %956 = load ptr, ptr %943, align 4
  %957 = load ptr, ptr %956, align 8
  %958 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %957, i32 0, i32 3
  %959 = load ptr, ptr %958, align 4
  %960 = load i32, ptr %15, align 4
  %961 = shl i32 %960, 2
  %962 = add i32 %961, 64
  tail call void %959(ptr noundef %956, i32 noundef %962, i32 noundef 1) #6
  %963 = load ptr, ptr %943, align 4
  %964 = load ptr, ptr %963, align 8
  %965 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %964, i32 0, i32 3
  %966 = load ptr, ptr %965, align 4
  %967 = load i32, ptr %15, align 4
  %968 = shl i32 %967, 2
  %969 = add i32 %968, 96
  tail call void %966(ptr noundef %963, i32 noundef %969, i32 noundef 1) #6
  %970 = load ptr, ptr %943, align 4
  %971 = load ptr, ptr %970, align 8
  %972 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %971, i32 0, i32 3
  %973 = load ptr, ptr %972, align 4
  %974 = load i32, ptr %15, align 4
  %975 = shl i32 %974, 2
  %976 = add i32 %975, 128
  tail call void %973(ptr noundef %970, i32 noundef %976, i32 noundef 1) #6
  %977 = load ptr, ptr %943, align 4
  %978 = load ptr, ptr %977, align 8
  %979 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %978, i32 0, i32 3
  %980 = load ptr, ptr %979, align 4
  %981 = load i32, ptr %15, align 4
  %982 = shl i32 %981, 2
  %983 = add i32 %982, 160
  tail call void %980(ptr noundef %977, i32 noundef %983, i32 noundef 1) #6
  %984 = load ptr, ptr %943, align 4
  %985 = load ptr, ptr %984, align 8
  %986 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %985, i32 0, i32 3
  %987 = load ptr, ptr %986, align 4
  %988 = load i32, ptr %15, align 4
  %989 = shl i32 %988, 2
  %990 = add i32 %989, 192
  tail call void %987(ptr noundef %984, i32 noundef %990, i32 noundef 1) #6
  %991 = load ptr, ptr %943, align 4
  %992 = load ptr, ptr %991, align 8
  %993 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %992, i32 0, i32 3
  %994 = load ptr, ptr %993, align 4
  %995 = load i32, ptr %15, align 4
  %996 = shl i32 %995, 2
  %997 = add i32 %996, 224
  tail call void %994(ptr noundef %991, i32 noundef %997, i32 noundef 1) #6
  %998 = load i32, ptr %15, align 4
  %999 = load i32, ptr %41, align 4
  %1000 = add i32 %998, 64
  store i32 %1000, ptr %15, align 4
  %1001 = icmp eq i32 %999, 1
  br i1 %1001, label %1005, label %1002

1002:                                             ; preds = %942, %939
  %1003 = phi i32 [ %940, %939 ], [ %998, %942 ]
  %1004 = add i32 %1003, 128
  br label %1026

1005:                                             ; preds = %942
  %1006 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1007 = load ptr, ptr %1006, align 4
  %1008 = load ptr, ptr %1007, align 8
  %1009 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1008, i32 0, i32 3
  %1010 = load ptr, ptr %1009, align 4
  %1011 = shl i32 %1000, 2
  tail call void %1010(ptr noundef %1007, i32 noundef %1011, i32 noundef 17) #6
  %1012 = load i32, ptr %41, align 4
  %1013 = load i32, ptr %15, align 4
  %1014 = add i32 %1013, 64
  store i32 %1014, ptr %15, align 4
  %1015 = icmp eq i32 %1012, 1
  br i1 %1015, label %1016, label %1026

1016:                                             ; preds = %1005
  %1017 = load ptr, ptr %1006, align 4
  %1018 = load ptr, ptr %1017, align 8
  %1019 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1018, i32 0, i32 3
  %1020 = load ptr, ptr %1019, align 4
  %1021 = shl i32 %1014, 2
  tail call void %1020(ptr noundef %1017, i32 noundef %1021, i32 noundef 262957185) #6
  %1022 = load i32, ptr %15, align 4
  %1023 = load i32, ptr %41, align 4
  %1024 = add i32 %1022, 8
  store i32 %1024, ptr %15, align 4
  %1025 = icmp eq i32 %1023, 1
  br i1 %1025, label %1029, label %1026

1026:                                             ; preds = %1016, %1005, %1002
  %1027 = phi i32 [ %1022, %1016 ], [ %1014, %1005 ], [ %1004, %1002 ]
  %1028 = add i32 %1027, 72
  br label %1050

1029:                                             ; preds = %1016
  %1030 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1031 = load ptr, ptr %1030, align 4
  %1032 = load ptr, ptr %1031, align 8
  %1033 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1032, i32 0, i32 3
  %1034 = load ptr, ptr %1033, align 4
  %1035 = shl i32 %1024, 2
  tail call void %1034(ptr noundef %1031, i32 noundef %1035, i32 noundef 15) #6
  %1036 = load i32, ptr %41, align 4
  %1037 = load i32, ptr %15, align 4
  %1038 = add i32 %1037, 64
  store i32 %1038, ptr %15, align 4
  %1039 = icmp eq i32 %1036, 1
  br i1 %1039, label %1040, label %1050

1040:                                             ; preds = %1029
  %1041 = load ptr, ptr %1030, align 4
  %1042 = load ptr, ptr %1041, align 8
  %1043 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1042, i32 0, i32 3
  %1044 = load ptr, ptr %1043, align 4
  %1045 = shl i32 %1038, 2
  tail call void %1044(ptr noundef %1041, i32 noundef %1045, i32 noundef %14) #6
  %1046 = load i32, ptr %15, align 4
  %1047 = load i32, ptr %41, align 4
  %1048 = add i32 %1046, 24
  store i32 %1048, ptr %15, align 4
  %1049 = icmp eq i32 %1047, 1
  br i1 %1049, label %1053, label %1050

1050:                                             ; preds = %1040, %1029, %1026
  %1051 = phi i32 [ %1046, %1040 ], [ %1038, %1029 ], [ %1028, %1026 ]
  %1052 = add i32 %1051, 32
  br label %1071

1053:                                             ; preds = %1040
  %1054 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1055 = load ptr, ptr %1054, align 4
  %1056 = load ptr, ptr %1055, align 8
  %1057 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1056, i32 0, i32 3
  %1058 = load ptr, ptr %1057, align 4
  %1059 = shl i32 %1048, 2
  tail call void %1058(ptr noundef %1055, i32 noundef %1059, i32 noundef 17) #6
  %1060 = load i32, ptr %41, align 4
  %1061 = load i32, ptr %15, align 4
  %1062 = add i32 %1061, 8
  store i32 %1062, ptr %15, align 4
  %1063 = icmp eq i32 %1060, 1
  br i1 %1063, label %1064, label %1071

1064:                                             ; preds = %1053
  %1065 = load ptr, ptr %1054, align 4
  %1066 = load ptr, ptr %1065, align 8
  %1067 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1066, i32 0, i32 3
  %1068 = load ptr, ptr %1067, align 4
  %1069 = shl i32 %1062, 2
  tail call void %1068(ptr noundef %1065, i32 noundef %1069, i32 noundef 1) #6
  %1070 = load i32, ptr %15, align 4
  br label %1071

1071:                                             ; preds = %1064, %1053, %1050
  %1072 = phi i32 [ %1070, %1064 ], [ %1052, %1050 ], [ %1062, %1053 ]
  %1073 = add i32 %1072, 8
  store i32 %1073, ptr %15, align 4
  %1074 = load i32, ptr %3, align 4
  %1075 = add i32 %1074, -161
  %1076 = icmp ult i32 %1075, 9
  %1077 = icmp eq i32 %1074, 175
  %1078 = or i1 %1077, %1076
  br i1 %1078, label %1079, label %1094

1079:                                             ; preds = %1071
  %1080 = load i32, ptr %41, align 4
  %1081 = icmp eq i32 %1080, 1
  br i1 %1081, label %1082, label %1090

1082:                                             ; preds = %1079
  %1083 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1084 = load ptr, ptr %1083, align 4
  %1085 = load ptr, ptr %1084, align 8
  %1086 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1085, i32 0, i32 3
  %1087 = load ptr, ptr %1086, align 4
  %1088 = shl i32 %1073, 2
  tail call void %1087(ptr noundef %1084, i32 noundef %1088, i32 noundef 1) #6
  %1089 = load i32, ptr %15, align 4
  br label %1090

1090:                                             ; preds = %1082, %1079
  %1091 = phi i32 [ %1089, %1082 ], [ %1073, %1079 ]
  %1092 = add i32 %1091, 8
  store i32 %1092, ptr %15, align 4
  %1093 = load i32, ptr %3, align 4
  br label %1094

1094:                                             ; preds = %1090, %1071
  %1095 = phi i32 [ %1073, %1071 ], [ %1092, %1090 ]
  %1096 = phi i32 [ %1074, %1071 ], [ %1093, %1090 ]
  %1097 = icmp eq i32 %1096, 80
  %1098 = select i1 %1097, i32 8, i32 24
  %1099 = add i32 %1095, %1098
  store i32 %1099, ptr %15, align 4
  %1100 = load i32, ptr %41, align 4
  %1101 = icmp eq i32 %1100, 1
  br i1 %1101, label %1104, label %1102

1102:                                             ; preds = %1094
  %1103 = add i32 %1099, 48
  br label %1126

1104:                                             ; preds = %1094
  %1105 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1106 = load ptr, ptr %1105, align 4
  %1107 = load ptr, ptr %1106, align 8
  %1108 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1107, i32 0, i32 3
  %1109 = load ptr, ptr %1108, align 4
  %1110 = shl i32 %1099, 2
  tail call void %1109(ptr noundef %1106, i32 noundef %1110, i32 noundef 4) #6
  %1111 = load i32, ptr %15, align 4
  %1112 = load i32, ptr %41, align 4
  %1113 = add i32 %1111, 48
  store i32 %1113, ptr %15, align 4
  %1114 = icmp eq i32 %1112, 1
  br i1 %1114, label %1115, label %1126

1115:                                             ; preds = %1104
  %1116 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1117 = load ptr, ptr %1116, align 4
  %1118 = load ptr, ptr %1117, align 8
  %1119 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1118, i32 0, i32 3
  %1120 = load ptr, ptr %1119, align 4
  %1121 = shl i32 %1113, 2
  tail call void %1120(ptr noundef %1117, i32 noundef %1121, i32 noundef 1) #6
  %1122 = load i32, ptr %15, align 4
  %1123 = load i32, ptr %41, align 4
  %1124 = add i32 %1122, 40
  store i32 %1124, ptr %15, align 4
  %1125 = icmp eq i32 %1123, 1
  br i1 %1125, label %1129, label %1126

1126:                                             ; preds = %1115, %1104, %1102
  %1127 = phi i32 [ %1122, %1115 ], [ %1103, %1102 ], [ %1113, %1104 ]
  %1128 = add i32 %1127, 104
  br label %1150

1129:                                             ; preds = %1115
  %1130 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1131 = load ptr, ptr %1130, align 4
  %1132 = load ptr, ptr %1131, align 8
  %1133 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1132, i32 0, i32 3
  %1134 = load ptr, ptr %1133, align 4
  %1135 = shl i32 %1124, 2
  tail call void %1134(ptr noundef %1131, i32 noundef %1135, i32 noundef 17) #6
  %1136 = load i32, ptr %41, align 4
  %1137 = load i32, ptr %15, align 4
  %1138 = add i32 %1137, 64
  store i32 %1138, ptr %15, align 4
  %1139 = icmp eq i32 %1136, 1
  br i1 %1139, label %1140, label %1150

1140:                                             ; preds = %1129
  %1141 = load ptr, ptr %1130, align 4
  %1142 = load ptr, ptr %1141, align 8
  %1143 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1142, i32 0, i32 3
  %1144 = load ptr, ptr %1143, align 4
  %1145 = shl i32 %1138, 2
  tail call void %1144(ptr noundef %1141, i32 noundef %1145, i32 noundef 262957185) #6
  %1146 = load i32, ptr %15, align 4
  %1147 = load i32, ptr %41, align 4
  %1148 = add i32 %1146, 32
  store i32 %1148, ptr %15, align 4
  %1149 = icmp eq i32 %1147, 1
  br i1 %1149, label %1154, label %1150

1150:                                             ; preds = %1140, %1129, %1126
  %1151 = phi i32 [ %1146, %1140 ], [ %1138, %1129 ], [ %1128, %1126 ]
  %1152 = add i32 %1151, 40
  store i32 %1152, ptr %15, align 4
  %1153 = add i32 %1151, 56
  br label %1188

1154:                                             ; preds = %1140
  %1155 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1156 = load ptr, ptr %1155, align 4
  %1157 = load ptr, ptr %1156, align 8
  %1158 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1157, i32 0, i32 3
  %1159 = load ptr, ptr %1158, align 4
  %1160 = shl i32 %1148, 2
  tail call void %1159(ptr noundef %1156, i32 noundef %1160, i32 noundef 17) #6
  %1161 = load i32, ptr %41, align 4
  %1162 = load i32, ptr %15, align 4
  %1163 = add i32 %1162, 8
  store i32 %1163, ptr %15, align 4
  %1164 = icmp eq i32 %1161, 1
  br i1 %1164, label %1167, label %1165

1165:                                             ; preds = %1154
  %1166 = add i32 %1162, 24
  br label %1188

1167:                                             ; preds = %1154
  %1168 = load ptr, ptr %1155, align 4
  %1169 = load ptr, ptr %1168, align 8
  %1170 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1169, i32 0, i32 3
  %1171 = load ptr, ptr %1170, align 4
  %1172 = shl i32 %1163, 2
  tail call void %1171(ptr noundef %1168, i32 noundef %1172, i32 noundef 1) #6
  %1173 = load i32, ptr %41, align 4
  %1174 = load i32, ptr %15, align 4
  %1175 = add i32 %1174, 16
  store i32 %1175, ptr %15, align 4
  %1176 = icmp eq i32 %1173, 1
  br i1 %1176, label %1177, label %1188

1177:                                             ; preds = %1167
  %1178 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1179 = load ptr, ptr %1178, align 4
  %1180 = load ptr, ptr %1179, align 8
  %1181 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1180, i32 0, i32 3
  %1182 = load ptr, ptr %1181, align 4
  %1183 = shl i32 %1175, 2
  tail call void %1182(ptr noundef %1179, i32 noundef %1183, i32 noundef 1) #6
  %1184 = load i32, ptr %15, align 4
  %1185 = load i32, ptr %41, align 4
  %1186 = add i32 %1184, 16
  store i32 %1186, ptr %15, align 4
  %1187 = icmp eq i32 %1185, 1
  br i1 %1187, label %1191, label %1188

1188:                                             ; preds = %1177, %1167, %1165, %1150
  %1189 = phi i32 [ %1184, %1177 ], [ %1153, %1150 ], [ %1175, %1167 ], [ %1166, %1165 ]
  %1190 = add i32 %1189, 32
  br label %1212

1191:                                             ; preds = %1177
  %1192 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1193 = load ptr, ptr %1192, align 4
  %1194 = load ptr, ptr %1193, align 8
  %1195 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1194, i32 0, i32 3
  %1196 = load ptr, ptr %1195, align 4
  %1197 = shl i32 %1186, 2
  tail call void %1196(ptr noundef %1193, i32 noundef %1197, i32 noundef 1) #6
  %1198 = load i32, ptr %41, align 4
  %1199 = load i32, ptr %15, align 4
  %1200 = add i32 %1199, 16
  store i32 %1200, ptr %15, align 4
  %1201 = icmp eq i32 %1198, 1
  br i1 %1201, label %1202, label %1212

1202:                                             ; preds = %1191
  %1203 = load ptr, ptr %1192, align 4
  %1204 = load ptr, ptr %1203, align 8
  %1205 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1204, i32 0, i32 3
  %1206 = load ptr, ptr %1205, align 4
  %1207 = shl i32 %1200, 2
  tail call void %1206(ptr noundef %1203, i32 noundef %1207, i32 noundef %13) #6
  %1208 = load i32, ptr %15, align 4
  %1209 = load i32, ptr %41, align 4
  %1210 = add i32 %1208, 16
  store i32 %1210, ptr %15, align 4
  %1211 = icmp eq i32 %1209, 1
  br i1 %1211, label %1215, label %1212

1212:                                             ; preds = %1202, %1191, %1188
  %1213 = phi i32 [ %1208, %1202 ], [ %1200, %1191 ], [ %1190, %1188 ]
  %1214 = add i32 %1213, 32
  br label %1233

1215:                                             ; preds = %1202
  %1216 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1217 = load ptr, ptr %1216, align 4
  %1218 = load ptr, ptr %1217, align 8
  %1219 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1218, i32 0, i32 3
  %1220 = load ptr, ptr %1219, align 4
  %1221 = shl i32 %1210, 2
  tail call void %1220(ptr noundef %1217, i32 noundef %1221, i32 noundef 1) #6
  %1222 = load i32, ptr %41, align 4
  %1223 = load i32, ptr %15, align 4
  %1224 = add i32 %1223, 16
  store i32 %1224, ptr %15, align 4
  %1225 = icmp eq i32 %1222, 1
  br i1 %1225, label %1226, label %1233

1226:                                             ; preds = %1215
  %1227 = load ptr, ptr %1216, align 4
  %1228 = load ptr, ptr %1227, align 8
  %1229 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1228, i32 0, i32 3
  %1230 = load ptr, ptr %1229, align 4
  %1231 = shl i32 %1224, 2
  tail call void %1230(ptr noundef %1227, i32 noundef %1231, i32 noundef 1) #6
  %1232 = load i32, ptr %15, align 4
  br label %1233

1233:                                             ; preds = %1226, %1215, %1212
  %1234 = phi i32 [ %1232, %1226 ], [ %1214, %1212 ], [ %1224, %1215 ]
  %1235 = add i32 %1234, 24
  store i32 %1235, ptr %15, align 4
  %1236 = load i32, ptr %3, align 4
  %1237 = add i32 %1236, -161
  %1238 = icmp ult i32 %1237, 9
  %1239 = icmp eq i32 %1236, 175
  %1240 = or i1 %1239, %1238
  br i1 %1240, label %1241, label %1255

1241:                                             ; preds = %1233
  %1242 = load i32, ptr %41, align 4
  %1243 = icmp eq i32 %1242, 1
  br i1 %1243, label %1244, label %1252

1244:                                             ; preds = %1241
  %1245 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1246 = load ptr, ptr %1245, align 4
  %1247 = load ptr, ptr %1246, align 8
  %1248 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1247, i32 0, i32 3
  %1249 = load ptr, ptr %1248, align 4
  %1250 = shl i32 %1235, 2
  tail call void %1249(ptr noundef %1246, i32 noundef %1250, i32 noundef 1) #6
  %1251 = load i32, ptr %15, align 4
  br label %1252

1252:                                             ; preds = %1244, %1241
  %1253 = phi i32 [ %1251, %1244 ], [ %1235, %1241 ]
  %1254 = add i32 %1253, 8
  br label %1255

1255:                                             ; preds = %1252, %1233
  %1256 = phi i32 [ %1235, %1233 ], [ %1254, %1252 ]
  %1257 = add i32 %1256, 320
  store i32 %1257, ptr %15, align 4
  %1258 = load i32, ptr %41, align 4
  %1259 = icmp eq i32 %1258, 1
  br i1 %1259, label %1262, label %1260

1260:                                             ; preds = %1255
  %1261 = add i32 %1256, 448
  br label %1334

1262:                                             ; preds = %1255
  %1263 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1264 = load ptr, ptr %1263, align 4
  %1265 = load ptr, ptr %1264, align 8
  %1266 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1265, i32 0, i32 3
  %1267 = load ptr, ptr %1266, align 4
  %1268 = shl i32 %1257, 2
  tail call void %1267(ptr noundef %1264, i32 noundef %1268, i32 noundef 8) #6
  %1269 = load ptr, ptr %1263, align 4
  %1270 = load ptr, ptr %1269, align 8
  %1271 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1270, i32 0, i32 3
  %1272 = load ptr, ptr %1271, align 4
  %1273 = load i32, ptr %15, align 4
  %1274 = shl i32 %1273, 2
  %1275 = add i32 %1274, 32
  tail call void %1272(ptr noundef %1269, i32 noundef %1275, i32 noundef 8) #6
  %1276 = load ptr, ptr %1263, align 4
  %1277 = load ptr, ptr %1276, align 8
  %1278 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1277, i32 0, i32 3
  %1279 = load ptr, ptr %1278, align 4
  %1280 = load i32, ptr %15, align 4
  %1281 = shl i32 %1280, 2
  %1282 = add i32 %1281, 64
  tail call void %1279(ptr noundef %1276, i32 noundef %1282, i32 noundef 8) #6
  %1283 = load ptr, ptr %1263, align 4
  %1284 = load ptr, ptr %1283, align 8
  %1285 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1284, i32 0, i32 3
  %1286 = load ptr, ptr %1285, align 4
  %1287 = load i32, ptr %15, align 4
  %1288 = shl i32 %1287, 2
  %1289 = add i32 %1288, 96
  tail call void %1286(ptr noundef %1283, i32 noundef %1289, i32 noundef 8) #6
  %1290 = load ptr, ptr %1263, align 4
  %1291 = load ptr, ptr %1290, align 8
  %1292 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1291, i32 0, i32 3
  %1293 = load ptr, ptr %1292, align 4
  %1294 = load i32, ptr %15, align 4
  %1295 = shl i32 %1294, 2
  %1296 = add i32 %1295, 128
  tail call void %1293(ptr noundef %1290, i32 noundef %1296, i32 noundef 8) #6
  %1297 = load ptr, ptr %1263, align 4
  %1298 = load ptr, ptr %1297, align 8
  %1299 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1298, i32 0, i32 3
  %1300 = load ptr, ptr %1299, align 4
  %1301 = load i32, ptr %15, align 4
  %1302 = shl i32 %1301, 2
  %1303 = add i32 %1302, 160
  tail call void %1300(ptr noundef %1297, i32 noundef %1303, i32 noundef 8) #6
  %1304 = load ptr, ptr %1263, align 4
  %1305 = load ptr, ptr %1304, align 8
  %1306 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1305, i32 0, i32 3
  %1307 = load ptr, ptr %1306, align 4
  %1308 = load i32, ptr %15, align 4
  %1309 = shl i32 %1308, 2
  %1310 = add i32 %1309, 192
  tail call void %1307(ptr noundef %1304, i32 noundef %1310, i32 noundef 8) #6
  %1311 = load ptr, ptr %1263, align 4
  %1312 = load ptr, ptr %1311, align 8
  %1313 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1312, i32 0, i32 3
  %1314 = load ptr, ptr %1313, align 4
  %1315 = load i32, ptr %15, align 4
  %1316 = shl i32 %1315, 2
  %1317 = add i32 %1316, 224
  tail call void %1314(ptr noundef %1311, i32 noundef %1317, i32 noundef 8) #6
  %1318 = load i32, ptr %41, align 4
  %1319 = load i32, ptr %15, align 4
  %1320 = add i32 %1319, 64
  store i32 %1320, ptr %15, align 4
  %1321 = icmp eq i32 %1318, 1
  br i1 %1321, label %1324, label %1322

1322:                                             ; preds = %1262
  %1323 = add i32 %1319, 128
  br label %1334

1324:                                             ; preds = %1262
  %1325 = load ptr, ptr %1263, align 4
  %1326 = load ptr, ptr %1325, align 8
  %1327 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1326, i32 0, i32 3
  %1328 = load ptr, ptr %1327, align 4
  %1329 = shl i32 %1320, 2
  tail call void %1328(ptr noundef %1325, i32 noundef %1329, i32 noundef 17) #6
  %1330 = load i32, ptr %41, align 4
  %1331 = load i32, ptr %15, align 4
  %1332 = add i32 %1331, 64
  store i32 %1332, ptr %15, align 4
  %1333 = icmp eq i32 %1330, 1
  br i1 %1333, label %1336, label %1347

1334:                                             ; preds = %1322, %1260
  %1335 = phi i32 [ %1323, %1322 ], [ %1261, %1260 ]
  store i32 %1335, ptr %15, align 4
  br label %1347

1336:                                             ; preds = %1324
  %1337 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1338 = load ptr, ptr %1337, align 4
  %1339 = load ptr, ptr %1338, align 8
  %1340 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1339, i32 0, i32 3
  %1341 = load ptr, ptr %1340, align 4
  %1342 = shl i32 %1332, 2
  tail call void %1341(ptr noundef %1338, i32 noundef %1342, i32 noundef 262957185) #6
  %1343 = load i32, ptr %15, align 4
  %1344 = load i32, ptr %41, align 4
  %1345 = add i32 %1343, 8
  store i32 %1345, ptr %15, align 4
  %1346 = icmp eq i32 %1344, 1
  br i1 %1346, label %1350, label %1347

1347:                                             ; preds = %1336, %1334, %1324
  %1348 = phi i32 [ %1343, %1336 ], [ %1332, %1324 ], [ %1335, %1334 ]
  %1349 = add i32 %1348, 72
  br label %1471

1350:                                             ; preds = %1336
  %1351 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1352 = load ptr, ptr %1351, align 4
  %1353 = load ptr, ptr %1352, align 8
  %1354 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1353, i32 0, i32 3
  %1355 = load ptr, ptr %1354, align 4
  %1356 = shl i32 %1345, 2
  tail call void %1355(ptr noundef %1352, i32 noundef %1356, i32 noundef 1024) #6
  %1357 = load ptr, ptr %1351, align 4
  %1358 = load ptr, ptr %1357, align 8
  %1359 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1358, i32 0, i32 3
  %1360 = load ptr, ptr %1359, align 4
  %1361 = load i32, ptr %15, align 4
  %1362 = shl i32 %1361, 2
  %1363 = add i32 %1362, 32
  tail call void %1360(ptr noundef %1357, i32 noundef %1363, i32 noundef 1024) #6
  %1364 = load ptr, ptr %1351, align 4
  %1365 = load ptr, ptr %1364, align 8
  %1366 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1365, i32 0, i32 3
  %1367 = load ptr, ptr %1366, align 4
  %1368 = load i32, ptr %15, align 4
  %1369 = shl i32 %1368, 2
  %1370 = add i32 %1369, 64
  tail call void %1367(ptr noundef %1364, i32 noundef %1370, i32 noundef 1024) #6
  %1371 = load ptr, ptr %1351, align 4
  %1372 = load ptr, ptr %1371, align 8
  %1373 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1372, i32 0, i32 3
  %1374 = load ptr, ptr %1373, align 4
  %1375 = load i32, ptr %15, align 4
  %1376 = shl i32 %1375, 2
  %1377 = add i32 %1376, 96
  tail call void %1374(ptr noundef %1371, i32 noundef %1377, i32 noundef 1024) #6
  %1378 = load ptr, ptr %1351, align 4
  %1379 = load ptr, ptr %1378, align 8
  %1380 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1379, i32 0, i32 3
  %1381 = load ptr, ptr %1380, align 4
  %1382 = load i32, ptr %15, align 4
  %1383 = shl i32 %1382, 2
  %1384 = add i32 %1383, 128
  tail call void %1381(ptr noundef %1378, i32 noundef %1384, i32 noundef 1024) #6
  %1385 = load ptr, ptr %1351, align 4
  %1386 = load ptr, ptr %1385, align 8
  %1387 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1386, i32 0, i32 3
  %1388 = load ptr, ptr %1387, align 4
  %1389 = load i32, ptr %15, align 4
  %1390 = shl i32 %1389, 2
  %1391 = add i32 %1390, 160
  tail call void %1388(ptr noundef %1385, i32 noundef %1391, i32 noundef 1024) #6
  %1392 = load ptr, ptr %1351, align 4
  %1393 = load ptr, ptr %1392, align 8
  %1394 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1393, i32 0, i32 3
  %1395 = load ptr, ptr %1394, align 4
  %1396 = load i32, ptr %15, align 4
  %1397 = shl i32 %1396, 2
  %1398 = add i32 %1397, 192
  tail call void %1395(ptr noundef %1392, i32 noundef %1398, i32 noundef 1024) #6
  %1399 = load ptr, ptr %1351, align 4
  %1400 = load ptr, ptr %1399, align 8
  %1401 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1400, i32 0, i32 3
  %1402 = load ptr, ptr %1401, align 4
  %1403 = load i32, ptr %15, align 4
  %1404 = shl i32 %1403, 2
  %1405 = add i32 %1404, 224
  tail call void %1402(ptr noundef %1399, i32 noundef %1405, i32 noundef 1024) #6
  %1406 = load i32, ptr %41, align 4
  %1407 = load i32, ptr %15, align 4
  %1408 = add i32 %1407, 64
  store i32 %1408, ptr %15, align 4
  %1409 = icmp eq i32 %1406, 1
  br i1 %1409, label %1412, label %1410

1410:                                             ; preds = %1350
  %1411 = add i32 %1407, 128
  br label %1485

1412:                                             ; preds = %1350
  %1413 = load ptr, ptr %1351, align 4
  %1414 = load ptr, ptr %1413, align 8
  %1415 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1414, i32 0, i32 3
  %1416 = load ptr, ptr %1415, align 4
  %1417 = shl i32 %1408, 2
  tail call void %1416(ptr noundef %1413, i32 noundef %1417, i32 noundef 768) #6
  %1418 = load ptr, ptr %1351, align 4
  %1419 = load ptr, ptr %1418, align 8
  %1420 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1419, i32 0, i32 3
  %1421 = load ptr, ptr %1420, align 4
  %1422 = load i32, ptr %15, align 4
  %1423 = shl i32 %1422, 2
  %1424 = add i32 %1423, 32
  tail call void %1421(ptr noundef %1418, i32 noundef %1424, i32 noundef 768) #6
  %1425 = load ptr, ptr %1351, align 4
  %1426 = load ptr, ptr %1425, align 8
  %1427 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1426, i32 0, i32 3
  %1428 = load ptr, ptr %1427, align 4
  %1429 = load i32, ptr %15, align 4
  %1430 = shl i32 %1429, 2
  %1431 = add i32 %1430, 64
  tail call void %1428(ptr noundef %1425, i32 noundef %1431, i32 noundef 768) #6
  %1432 = load ptr, ptr %1351, align 4
  %1433 = load ptr, ptr %1432, align 8
  %1434 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1433, i32 0, i32 3
  %1435 = load ptr, ptr %1434, align 4
  %1436 = load i32, ptr %15, align 4
  %1437 = shl i32 %1436, 2
  %1438 = add i32 %1437, 96
  tail call void %1435(ptr noundef %1432, i32 noundef %1438, i32 noundef 768) #6
  %1439 = load ptr, ptr %1351, align 4
  %1440 = load ptr, ptr %1439, align 8
  %1441 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1440, i32 0, i32 3
  %1442 = load ptr, ptr %1441, align 4
  %1443 = load i32, ptr %15, align 4
  %1444 = shl i32 %1443, 2
  %1445 = add i32 %1444, 128
  tail call void %1442(ptr noundef %1439, i32 noundef %1445, i32 noundef 768) #6
  %1446 = load ptr, ptr %1351, align 4
  %1447 = load ptr, ptr %1446, align 8
  %1448 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1447, i32 0, i32 3
  %1449 = load ptr, ptr %1448, align 4
  %1450 = load i32, ptr %15, align 4
  %1451 = shl i32 %1450, 2
  %1452 = add i32 %1451, 160
  tail call void %1449(ptr noundef %1446, i32 noundef %1452, i32 noundef 768) #6
  %1453 = load ptr, ptr %1351, align 4
  %1454 = load ptr, ptr %1453, align 8
  %1455 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1454, i32 0, i32 3
  %1456 = load ptr, ptr %1455, align 4
  %1457 = load i32, ptr %15, align 4
  %1458 = shl i32 %1457, 2
  %1459 = add i32 %1458, 192
  tail call void %1456(ptr noundef %1453, i32 noundef %1459, i32 noundef 768) #6
  %1460 = load ptr, ptr %1351, align 4
  %1461 = load ptr, ptr %1460, align 8
  %1462 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1461, i32 0, i32 3
  %1463 = load ptr, ptr %1462, align 4
  %1464 = load i32, ptr %15, align 4
  %1465 = shl i32 %1464, 2
  %1466 = add i32 %1465, 224
  tail call void %1463(ptr noundef %1460, i32 noundef %1466, i32 noundef 768) #6
  %1467 = load i32, ptr %41, align 4
  %1468 = load i32, ptr %15, align 4
  %1469 = add i32 %1468, 64
  store i32 %1469, ptr %15, align 4
  %1470 = icmp eq i32 %1467, 1
  br i1 %1470, label %1474, label %1471

1471:                                             ; preds = %1412, %1347
  %1472 = phi i32 [ %1349, %1347 ], [ %1468, %1412 ]
  %1473 = add i32 %1472, 136
  br label %1499

1474:                                             ; preds = %1412
  %1475 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1476 = load ptr, ptr %1475, align 4
  %1477 = load ptr, ptr %1476, align 8
  %1478 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1477, i32 0, i32 3
  %1479 = load ptr, ptr %1478, align 4
  %1480 = shl i32 %1469, 2
  tail call void %1479(ptr noundef %1476, i32 noundef %1480, i32 noundef 1) #6
  %1481 = load i32, ptr %41, align 4
  %1482 = load i32, ptr %15, align 4
  %1483 = add i32 %1482, 8
  store i32 %1483, ptr %15, align 4
  %1484 = icmp eq i32 %1481, 1
  br i1 %1484, label %1488, label %1485

1485:                                             ; preds = %1474, %1410
  %1486 = phi i32 [ %1411, %1410 ], [ %1482, %1474 ]
  %1487 = add i32 %1486, 72
  br label %1499

1488:                                             ; preds = %1474
  %1489 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1490 = load ptr, ptr %1489, align 4
  %1491 = load ptr, ptr %1490, align 8
  %1492 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1491, i32 0, i32 3
  %1493 = load ptr, ptr %1492, align 4
  %1494 = shl i32 %1483, 2
  tail call void %1493(ptr noundef %1490, i32 noundef %1494, i32 noundef 15) #6
  %1495 = load i32, ptr %41, align 4
  %1496 = load i32, ptr %15, align 4
  %1497 = add i32 %1496, 64
  store i32 %1497, ptr %15, align 4
  %1498 = icmp eq i32 %1495, 1
  br i1 %1498, label %1502, label %1499

1499:                                             ; preds = %1488, %1485, %1471
  %1500 = phi i32 [ %1473, %1471 ], [ %1497, %1488 ], [ %1487, %1485 ]
  %1501 = add i32 %1500, 8
  store i32 %1501, ptr %15, align 4
  br label %1513

1502:                                             ; preds = %1488
  %1503 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1504 = load ptr, ptr %1503, align 4
  %1505 = load ptr, ptr %1504, align 8
  %1506 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1505, i32 0, i32 3
  %1507 = load ptr, ptr %1506, align 4
  %1508 = shl i32 %1497, 2
  tail call void %1507(ptr noundef %1504, i32 noundef %1508, i32 noundef 32) #6
  %1509 = load i32, ptr %15, align 4
  %1510 = load i32, ptr %41, align 4
  %1511 = add i32 %1509, 8
  store i32 %1511, ptr %15, align 4
  %1512 = icmp eq i32 %1510, 1
  br i1 %1512, label %1516, label %1513

1513:                                             ; preds = %1502, %1499
  %1514 = phi i32 [ %1500, %1499 ], [ %1509, %1502 ]
  %1515 = add i32 %1514, 32
  br label %1550

1516:                                             ; preds = %1502
  %1517 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1518 = load ptr, ptr %1517, align 4
  %1519 = load ptr, ptr %1518, align 8
  %1520 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1519, i32 0, i32 3
  %1521 = load ptr, ptr %1520, align 4
  %1522 = shl i32 %1511, 2
  tail call void %1521(ptr noundef %1518, i32 noundef %1522, i32 noundef 17) #6
  %1523 = load i32, ptr %41, align 4
  %1524 = load i32, ptr %15, align 4
  %1525 = add i32 %1524, 8
  store i32 %1525, ptr %15, align 4
  %1526 = icmp eq i32 %1523, 1
  br i1 %1526, label %1529, label %1527

1527:                                             ; preds = %1516
  %1528 = add i32 %1524, 24
  br label %1550

1529:                                             ; preds = %1516
  %1530 = load ptr, ptr %1517, align 4
  %1531 = load ptr, ptr %1530, align 8
  %1532 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1531, i32 0, i32 3
  %1533 = load ptr, ptr %1532, align 4
  %1534 = shl i32 %1525, 2
  tail call void %1533(ptr noundef %1530, i32 noundef %1534, i32 noundef 256) #6
  %1535 = load i32, ptr %41, align 4
  %1536 = load i32, ptr %15, align 4
  %1537 = add i32 %1536, 16
  store i32 %1537, ptr %15, align 4
  %1538 = icmp eq i32 %1535, 1
  br i1 %1538, label %1539, label %1550

1539:                                             ; preds = %1529
  %1540 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1541 = load ptr, ptr %1540, align 4
  %1542 = load ptr, ptr %1541, align 8
  %1543 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1542, i32 0, i32 3
  %1544 = load ptr, ptr %1543, align 4
  %1545 = shl i32 %1537, 2
  tail call void %1544(ptr noundef %1541, i32 noundef %1545, i32 noundef 1) #6
  %1546 = load i32, ptr %15, align 4
  %1547 = load i32, ptr %41, align 4
  %1548 = add i32 %1546, 24
  store i32 %1548, ptr %15, align 4
  %1549 = icmp eq i32 %1547, 1
  br i1 %1549, label %1553, label %1550

1550:                                             ; preds = %1539, %1529, %1527, %1513
  %1551 = phi i32 [ %1546, %1539 ], [ %1515, %1513 ], [ %1537, %1529 ], [ %1528, %1527 ]
  %1552 = add i32 %1551, 48
  br label %1584

1553:                                             ; preds = %1539
  %1554 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1555 = load ptr, ptr %1554, align 4
  %1556 = load ptr, ptr %1555, align 8
  %1557 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1556, i32 0, i32 3
  %1558 = load ptr, ptr %1557, align 4
  %1559 = shl i32 %1548, 2
  tail call void %1558(ptr noundef %1555, i32 noundef %1559, i32 noundef 64) #6
  %1560 = load i32, ptr %41, align 4
  %1561 = load i32, ptr %15, align 4
  %1562 = add i32 %1561, 8
  store i32 %1562, ptr %15, align 4
  %1563 = icmp eq i32 %1560, 1
  br i1 %1563, label %1566, label %1564

1564:                                             ; preds = %1553
  %1565 = add i32 %1561, 24
  br label %1584

1566:                                             ; preds = %1553
  %1567 = load ptr, ptr %1554, align 4
  %1568 = load ptr, ptr %1567, align 8
  %1569 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1568, i32 0, i32 3
  %1570 = load ptr, ptr %1569, align 4
  %1571 = shl i32 %1562, 2
  tail call void %1570(ptr noundef %1567, i32 noundef %1571, i32 noundef 256) #6
  %1572 = load i32, ptr %41, align 4
  %1573 = load i32, ptr %15, align 4
  %1574 = add i32 %1573, 16
  store i32 %1574, ptr %15, align 4
  %1575 = icmp eq i32 %1572, 1
  br i1 %1575, label %1576, label %1584

1576:                                             ; preds = %1566
  %1577 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1578 = load ptr, ptr %1577, align 4
  %1579 = load ptr, ptr %1578, align 8
  %1580 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1579, i32 0, i32 3
  %1581 = load ptr, ptr %1580, align 4
  %1582 = shl i32 %1574, 2
  tail call void %1581(ptr noundef %1578, i32 noundef %1582, i32 noundef 3) #6
  %1583 = load i32, ptr %15, align 4
  br label %1584

1584:                                             ; preds = %1576, %1566, %1564, %1550
  %1585 = phi i32 [ %1583, %1576 ], [ %1565, %1564 ], [ %1574, %1566 ], [ %1552, %1550 ]
  %1586 = add i32 %1585, 40
  store i32 %1586, ptr %15, align 4
  %1587 = load i32, ptr %3, align 4
  %1588 = add i32 %1587, -161
  %1589 = icmp ult i32 %1588, 9
  %1590 = icmp eq i32 %1587, 175
  %1591 = or i1 %1590, %1589
  br i1 %1591, label %1592, label %1606

1592:                                             ; preds = %1584
  %1593 = load i32, ptr %41, align 4
  %1594 = icmp eq i32 %1593, 1
  br i1 %1594, label %1595, label %1603

1595:                                             ; preds = %1592
  %1596 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1597 = load ptr, ptr %1596, align 4
  %1598 = load ptr, ptr %1597, align 8
  %1599 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1598, i32 0, i32 3
  %1600 = load ptr, ptr %1599, align 4
  %1601 = shl i32 %1586, 2
  tail call void %1600(ptr noundef %1597, i32 noundef %1601, i32 noundef 1) #6
  %1602 = load i32, ptr %15, align 4
  br label %1603

1603:                                             ; preds = %1595, %1592
  %1604 = phi i32 [ %1602, %1595 ], [ %1586, %1592 ]
  %1605 = add i32 %1604, 8
  store i32 %1605, ptr %15, align 4
  br label %1606

1606:                                             ; preds = %1603, %1584
  %1607 = phi i32 [ %1586, %1584 ], [ %1605, %1603 ]
  %1608 = load i32, ptr %41, align 4
  %1609 = icmp eq i32 %1608, 1
  br i1 %1609, label %1612, label %1610

1610:                                             ; preds = %1606
  %1611 = add i32 %1607, 32
  br label %1623

1612:                                             ; preds = %1606
  %1613 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1614 = load ptr, ptr %1613, align 4
  %1615 = load ptr, ptr %1614, align 8
  %1616 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1615, i32 0, i32 3
  %1617 = load ptr, ptr %1616, align 4
  %1618 = shl i32 %1607, 2
  tail call void %1617(ptr noundef %1614, i32 noundef %1618, i32 noundef %14) #6
  %1619 = load i32, ptr %41, align 4
  %1620 = load i32, ptr %15, align 4
  %1621 = add i32 %1620, 32
  store i32 %1621, ptr %15, align 4
  %1622 = icmp eq i32 %1619, 1
  br i1 %1622, label %1626, label %1623

1623:                                             ; preds = %1612, %1610
  %1624 = phi i32 [ %1611, %1610 ], [ %1621, %1612 ]
  %1625 = add i32 %1624, 8
  br label %1637

1626:                                             ; preds = %1612
  %1627 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1628 = load ptr, ptr %1627, align 4
  %1629 = load ptr, ptr %1628, align 8
  %1630 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1629, i32 0, i32 3
  %1631 = load ptr, ptr %1630, align 4
  %1632 = shl i32 %1621, 2
  tail call void %1631(ptr noundef %1628, i32 noundef %1632, i32 noundef 2) #6
  %1633 = load i32, ptr %15, align 4
  %1634 = load i32, ptr %41, align 4
  %1635 = add i32 %1633, 8
  store i32 %1635, ptr %15, align 4
  %1636 = icmp eq i32 %1634, 1
  br i1 %1636, label %1640, label %1637

1637:                                             ; preds = %1626, %1623
  %1638 = phi i32 [ %1625, %1623 ], [ %1635, %1626 ]
  %1639 = add i32 %1638, 80
  store i32 %1639, ptr %15, align 4
  br label %1662

1640:                                             ; preds = %1626
  %1641 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1642 = load ptr, ptr %1641, align 4
  %1643 = load ptr, ptr %1642, align 8
  %1644 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1643, i32 0, i32 3
  %1645 = load ptr, ptr %1644, align 4
  %1646 = shl i32 %1635, 2
  tail call void %1645(ptr noundef %1642, i32 noundef %1646, i32 noundef 262957185) #6
  %1647 = load i32, ptr %15, align 4
  %1648 = load i32, ptr %41, align 4
  %1649 = add i32 %1647, 80
  store i32 %1649, ptr %15, align 4
  %1650 = icmp eq i32 %1648, 1
  br i1 %1650, label %1651, label %1662

1651:                                             ; preds = %1640
  %1652 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1653 = load ptr, ptr %1652, align 4
  %1654 = load ptr, ptr %1653, align 8
  %1655 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1654, i32 0, i32 3
  %1656 = load ptr, ptr %1655, align 4
  %1657 = shl i32 %1649, 2
  tail call void %1656(ptr noundef %1653, i32 noundef %1657, i32 noundef 1) #6
  %1658 = load i32, ptr %15, align 4
  %1659 = load i32, ptr %41, align 4
  %1660 = add i32 %1658, 40
  store i32 %1660, ptr %15, align 4
  %1661 = icmp eq i32 %1659, 1
  br i1 %1661, label %1665, label %1662

1662:                                             ; preds = %1651, %1640, %1637
  %1663 = phi i32 [ %1658, %1651 ], [ %1639, %1637 ], [ %1649, %1640 ]
  %1664 = add i32 %1663, 56
  br label %1686

1665:                                             ; preds = %1651
  %1666 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1667 = load ptr, ptr %1666, align 4
  %1668 = load ptr, ptr %1667, align 8
  %1669 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1668, i32 0, i32 3
  %1670 = load ptr, ptr %1669, align 4
  %1671 = shl i32 %1660, 2
  tail call void %1670(ptr noundef %1667, i32 noundef %1671, i32 noundef 4) #6
  %1672 = load i32, ptr %41, align 4
  %1673 = load i32, ptr %15, align 4
  %1674 = add i32 %1673, 16
  store i32 %1674, ptr %15, align 4
  %1675 = icmp eq i32 %1672, 1
  br i1 %1675, label %1676, label %1686

1676:                                             ; preds = %1665
  %1677 = load ptr, ptr %1666, align 4
  %1678 = load ptr, ptr %1677, align 8
  %1679 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1678, i32 0, i32 3
  %1680 = load ptr, ptr %1679, align 4
  %1681 = shl i32 %1674, 2
  tail call void %1680(ptr noundef %1677, i32 noundef %1681, i32 noundef 1) #6
  %1682 = load i32, ptr %15, align 4
  %1683 = load i32, ptr %41, align 4
  %1684 = add i32 %1682, 8
  store i32 %1684, ptr %15, align 4
  %1685 = icmp eq i32 %1683, 1
  br i1 %1685, label %1689, label %1686

1686:                                             ; preds = %1676, %1665, %1662
  %1687 = phi i32 [ %1682, %1676 ], [ %1674, %1665 ], [ %1664, %1662 ]
  %1688 = add i32 %1687, 24
  br label %1720

1689:                                             ; preds = %1676
  %1690 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1691 = load ptr, ptr %1690, align 4
  %1692 = load ptr, ptr %1691, align 8
  %1693 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1692, i32 0, i32 3
  %1694 = load ptr, ptr %1693, align 4
  %1695 = shl i32 %1684, 2
  tail call void %1694(ptr noundef %1691, i32 noundef %1695, i32 noundef 1024) #6
  %1696 = load i32, ptr %41, align 4
  %1697 = load i32, ptr %15, align 4
  %1698 = add i32 %1697, 8
  store i32 %1698, ptr %15, align 4
  %1699 = icmp eq i32 %1696, 1
  br i1 %1699, label %1702, label %1700

1700:                                             ; preds = %1689
  %1701 = add i32 %1697, 16
  br label %1720

1702:                                             ; preds = %1689
  %1703 = load ptr, ptr %1690, align 4
  %1704 = load ptr, ptr %1703, align 8
  %1705 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1704, i32 0, i32 3
  %1706 = load ptr, ptr %1705, align 4
  %1707 = shl i32 %1698, 2
  tail call void %1706(ptr noundef %1703, i32 noundef %1707, i32 noundef 768) #6
  %1708 = load i32, ptr %41, align 4
  %1709 = load i32, ptr %15, align 4
  %1710 = add i32 %1709, 8
  store i32 %1710, ptr %15, align 4
  %1711 = icmp eq i32 %1708, 1
  br i1 %1711, label %1712, label %1720

1712:                                             ; preds = %1702
  %1713 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1714 = load ptr, ptr %1713, align 4
  %1715 = load ptr, ptr %1714, align 8
  %1716 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1715, i32 0, i32 3
  %1717 = load ptr, ptr %1716, align 4
  %1718 = shl i32 %1710, 2
  tail call void %1717(ptr noundef %1714, i32 noundef %1718, i32 noundef 4097) #6
  %1719 = load i32, ptr %15, align 4
  br label %1720

1720:                                             ; preds = %1712, %1702, %1700, %1686
  %1721 = phi i32 [ %1719, %1712 ], [ %1701, %1700 ], [ %1710, %1702 ], [ %1688, %1686 ]
  %1722 = add i32 %1721, 24
  store i32 %1722, ptr %15, align 4
  %1723 = load i32, ptr %3, align 4
  %1724 = add i32 %1723, -161
  %1725 = icmp ult i32 %1724, 9
  %1726 = icmp eq i32 %1723, 175
  %1727 = or i1 %1726, %1725
  %1728 = add i32 %1721, 32
  %1729 = select i1 %1727, i32 %1728, i32 %1722
  %1730 = add i32 %1729, 8
  store i32 %1730, ptr %15, align 4
  %1731 = load i32, ptr %41, align 4
  %1732 = icmp eq i32 %1731, 1
  br i1 %1732, label %1735, label %1733

1733:                                             ; preds = %1720
  %1734 = add i32 %1729, 72
  br label %1746

1735:                                             ; preds = %1720
  %1736 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1737 = load ptr, ptr %1736, align 4
  %1738 = load ptr, ptr %1737, align 8
  %1739 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1738, i32 0, i32 3
  %1740 = load ptr, ptr %1739, align 4
  %1741 = shl i32 %1730, 2
  tail call void %1740(ptr noundef %1737, i32 noundef %1741, i32 noundef 17) #6
  %1742 = load i32, ptr %41, align 4
  %1743 = load i32, ptr %15, align 4
  %1744 = add i32 %1743, 64
  store i32 %1744, ptr %15, align 4
  %1745 = icmp eq i32 %1742, 1
  br i1 %1745, label %1749, label %1746

1746:                                             ; preds = %1735, %1733
  %1747 = phi i32 [ %1744, %1735 ], [ %1734, %1733 ]
  %1748 = add i32 %1747, 8
  br label %1767

1749:                                             ; preds = %1735
  %1750 = load ptr, ptr %1736, align 4
  %1751 = load ptr, ptr %1750, align 8
  %1752 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1751, i32 0, i32 3
  %1753 = load ptr, ptr %1752, align 4
  %1754 = shl i32 %1744, 2
  tail call void %1753(ptr noundef %1750, i32 noundef %1754, i32 noundef 262957185) #6
  %1755 = load i32, ptr %15, align 4
  %1756 = load i32, ptr %41, align 4
  %1757 = add i32 %1755, 8
  store i32 %1757, ptr %15, align 4
  %1758 = icmp eq i32 %1756, 1
  br i1 %1758, label %1759, label %1767

1759:                                             ; preds = %1749
  %1760 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1761 = load ptr, ptr %1760, align 4
  %1762 = load ptr, ptr %1761, align 8
  %1763 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1762, i32 0, i32 3
  %1764 = load ptr, ptr %1763, align 4
  %1765 = shl i32 %1757, 2
  tail call void %1764(ptr noundef %1761, i32 noundef %1765, i32 noundef 15) #6
  %1766 = load i32, ptr %15, align 4
  br label %1767

1767:                                             ; preds = %1759, %1749, %1746
  %1768 = phi i32 [ %1766, %1759 ], [ %1757, %1749 ], [ %1748, %1746 ]
  %1769 = add i32 %1768, 168
  store i32 %1769, ptr %15, align 4
  %1770 = load i32, ptr %3, align 4
  %1771 = add i32 %1770, -161
  %1772 = icmp ult i32 %1771, 9
  %1773 = icmp eq i32 %1770, 175
  %1774 = or i1 %1773, %1772
  br i1 %1774, label %1775, label %1790

1775:                                             ; preds = %1767
  %1776 = add i32 %1768, 176
  store i32 %1776, ptr %15, align 4
  %1777 = load i32, ptr %41, align 4
  %1778 = icmp eq i32 %1777, 1
  br i1 %1778, label %1779, label %1787

1779:                                             ; preds = %1775
  %1780 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1781 = load ptr, ptr %1780, align 4
  %1782 = load ptr, ptr %1781, align 8
  %1783 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1782, i32 0, i32 3
  %1784 = load ptr, ptr %1783, align 4
  %1785 = shl i32 %1776, 2
  tail call void %1784(ptr noundef %1781, i32 noundef %1785, i32 noundef 1) #6
  %1786 = load i32, ptr %15, align 4
  br label %1787

1787:                                             ; preds = %1779, %1775
  %1788 = phi i32 [ %1786, %1779 ], [ %1776, %1775 ]
  %1789 = add i32 %1788, 8
  br label %1790

1790:                                             ; preds = %1787, %1767
  %1791 = phi i32 [ %1769, %1767 ], [ %1789, %1787 ]
  %1792 = add i32 %1791, 24
  store i32 %1792, ptr %15, align 4
  %1793 = load i32, ptr %3, align 4
  %1794 = icmp ugt i32 %1793, 159
  br i1 %1794, label %1795, label %1809

1795:                                             ; preds = %1790
  %1796 = load i32, ptr %41, align 4
  %1797 = icmp eq i32 %1796, 1
  br i1 %1797, label %1798, label %1806

1798:                                             ; preds = %1795
  %1799 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1800 = load ptr, ptr %1799, align 4
  %1801 = load ptr, ptr %1800, align 8
  %1802 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1801, i32 0, i32 3
  %1803 = load ptr, ptr %1802, align 4
  %1804 = shl i32 %1792, 2
  tail call void %1803(ptr noundef %1800, i32 noundef %1804, i32 noundef 262957185) #6
  %1805 = load i32, ptr %15, align 4
  br label %1806

1806:                                             ; preds = %1798, %1795
  %1807 = phi i32 [ %1805, %1798 ], [ %1792, %1795 ]
  %1808 = add i32 %1807, 8
  store i32 %1808, ptr %15, align 4
  br label %1809

1809:                                             ; preds = %1806, %1790
  %1810 = phi i32 [ %1808, %1806 ], [ %1792, %1790 ]
  %1811 = load i32, ptr %41, align 4
  %1812 = icmp eq i32 %1811, 1
  br i1 %1812, label %1815, label %1813

1813:                                             ; preds = %1809
  %1814 = add i32 %1810, 32
  br label %1837

1815:                                             ; preds = %1809
  %1816 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1817 = load ptr, ptr %1816, align 4
  %1818 = load ptr, ptr %1817, align 8
  %1819 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1818, i32 0, i32 3
  %1820 = load ptr, ptr %1819, align 4
  %1821 = shl i32 %1810, 2
  tail call void %1820(ptr noundef %1817, i32 noundef %1821, i32 noundef %14) #6
  %1822 = load i32, ptr %41, align 4
  %1823 = load i32, ptr %15, align 4
  %1824 = add i32 %1823, 32
  store i32 %1824, ptr %15, align 4
  %1825 = icmp eq i32 %1822, 1
  br i1 %1825, label %1826, label %1837

1826:                                             ; preds = %1815
  %1827 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1828 = load ptr, ptr %1827, align 4
  %1829 = load ptr, ptr %1828, align 8
  %1830 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1829, i32 0, i32 3
  %1831 = load ptr, ptr %1830, align 4
  %1832 = shl i32 %1824, 2
  tail call void %1831(ptr noundef %1828, i32 noundef %1832, i32 noundef 17) #6
  %1833 = load i32, ptr %15, align 4
  %1834 = load i32, ptr %41, align 4
  %1835 = add i32 %1833, 24
  store i32 %1835, ptr %15, align 4
  %1836 = icmp eq i32 %1834, 1
  br i1 %1836, label %1840, label %1837

1837:                                             ; preds = %1826, %1815, %1813
  %1838 = phi i32 [ %1833, %1826 ], [ %1814, %1813 ], [ %1824, %1815 ]
  %1839 = add i32 %1838, 40
  br label %1851

1840:                                             ; preds = %1826
  %1841 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1842 = load ptr, ptr %1841, align 4
  %1843 = load ptr, ptr %1842, align 8
  %1844 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1843, i32 0, i32 3
  %1845 = load ptr, ptr %1844, align 4
  %1846 = shl i32 %1835, 2
  tail call void %1845(ptr noundef %1842, i32 noundef %1846, i32 noundef 4) #6
  %1847 = load i32, ptr %41, align 4
  %1848 = load i32, ptr %15, align 4
  %1849 = add i32 %1848, 16
  store i32 %1849, ptr %15, align 4
  %1850 = icmp eq i32 %1847, 1
  br i1 %1850, label %1854, label %1851

1851:                                             ; preds = %1840, %1837
  %1852 = phi i32 [ %1849, %1840 ], [ %1839, %1837 ]
  %1853 = add i32 %1852, 8
  br label %1864

1854:                                             ; preds = %1840
  %1855 = load ptr, ptr %1841, align 4
  %1856 = load ptr, ptr %1855, align 8
  %1857 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1856, i32 0, i32 3
  %1858 = load ptr, ptr %1857, align 4
  %1859 = shl i32 %1849, 2
  tail call void %1858(ptr noundef %1855, i32 noundef %1859, i32 noundef 1) #6
  %1860 = load i32, ptr %15, align 4
  %1861 = load i32, ptr %41, align 4
  %1862 = add i32 %1860, 8
  store i32 %1862, ptr %15, align 4
  %1863 = icmp eq i32 %1861, 1
  br i1 %1863, label %1867, label %1864

1864:                                             ; preds = %1854, %1851
  %1865 = phi i32 [ %1853, %1851 ], [ %1862, %1854 ]
  %1866 = add i32 %1865, 32
  br label %1886

1867:                                             ; preds = %1854
  %1868 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1869 = load ptr, ptr %1868, align 4
  %1870 = load ptr, ptr %1869, align 8
  %1871 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1870, i32 0, i32 3
  %1872 = load ptr, ptr %1871, align 4
  %1873 = shl i32 %1862, 2
  tail call void %1872(ptr noundef %1869, i32 noundef %1873, i32 noundef 1) #6
  %1874 = load i32, ptr %41, align 4
  %1875 = load i32, ptr %15, align 4
  %1876 = add i32 %1875, 32
  store i32 %1876, ptr %15, align 4
  %1877 = icmp eq i32 %1874, 1
  br i1 %1877, label %1878, label %1886

1878:                                             ; preds = %1867
  %1879 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1880 = load ptr, ptr %1879, align 4
  %1881 = load ptr, ptr %1880, align 8
  %1882 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1881, i32 0, i32 3
  %1883 = load ptr, ptr %1882, align 4
  %1884 = shl i32 %1876, 2
  tail call void %1883(ptr noundef %1880, i32 noundef %1884, i32 noundef 1) #6
  %1885 = load i32, ptr %15, align 4
  br label %1886

1886:                                             ; preds = %1878, %1867, %1864
  %1887 = phi i32 [ %1885, %1878 ], [ %1876, %1867 ], [ %1866, %1864 ]
  %1888 = add i32 %1887, 8
  store i32 %1888, ptr %15, align 4
  %1889 = load i32, ptr %3, align 4
  %1890 = add i32 %1889, -161
  %1891 = icmp ult i32 %1890, 9
  %1892 = icmp eq i32 %1889, 175
  %1893 = or i1 %1892, %1891
  br i1 %1893, label %1894, label %1908

1894:                                             ; preds = %1886
  %1895 = load i32, ptr %41, align 4
  %1896 = icmp eq i32 %1895, 1
  br i1 %1896, label %1897, label %1905

1897:                                             ; preds = %1894
  %1898 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1899 = load ptr, ptr %1898, align 4
  %1900 = load ptr, ptr %1899, align 8
  %1901 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1900, i32 0, i32 3
  %1902 = load ptr, ptr %1901, align 4
  %1903 = shl i32 %1888, 2
  tail call void %1902(ptr noundef %1899, i32 noundef %1903, i32 noundef 1) #6
  %1904 = load i32, ptr %15, align 4
  br label %1905

1905:                                             ; preds = %1897, %1894
  %1906 = phi i32 [ %1904, %1897 ], [ %1888, %1894 ]
  %1907 = add i32 %1906, 16
  br label %1908

1908:                                             ; preds = %1905, %1886
  %1909 = phi i32 [ %1888, %1886 ], [ %1907, %1905 ]
  %1910 = add i32 %1909, 8
  store i32 %1910, ptr %15, align 4
  %1911 = load i32, ptr %3, align 4
  %1912 = icmp ugt i32 %1911, 159
  br i1 %1912, label %1913, label %2126

1913:                                             ; preds = %1908
  %1914 = add i32 %1909, 32
  store i32 %1914, ptr %15, align 4
  %1915 = load i32, ptr %41, align 4
  %1916 = icmp eq i32 %1915, 1
  br i1 %1916, label %1919, label %1917

1917:                                             ; preds = %1913
  %1918 = add i32 %1909, 72
  br label %1940

1919:                                             ; preds = %1913
  %1920 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1921 = load ptr, ptr %1920, align 4
  %1922 = load ptr, ptr %1921, align 8
  %1923 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1922, i32 0, i32 3
  %1924 = load ptr, ptr %1923, align 4
  %1925 = shl i32 %1914, 2
  tail call void %1924(ptr noundef %1921, i32 noundef %1925, i32 noundef 262957185) #6
  %1926 = load i32, ptr %41, align 4
  %1927 = load i32, ptr %15, align 4
  %1928 = add i32 %1927, 40
  store i32 %1928, ptr %15, align 4
  %1929 = icmp eq i32 %1926, 1
  br i1 %1929, label %1930, label %1940

1930:                                             ; preds = %1919
  %1931 = load ptr, ptr %1920, align 4
  %1932 = load ptr, ptr %1931, align 8
  %1933 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1932, i32 0, i32 3
  %1934 = load ptr, ptr %1933, align 4
  %1935 = shl i32 %1928, 2
  tail call void %1934(ptr noundef %1931, i32 noundef %1935, i32 noundef 4) #6
  %1936 = load i32, ptr %15, align 4
  %1937 = load i32, ptr %41, align 4
  %1938 = add i32 %1936, 16
  store i32 %1938, ptr %15, align 4
  %1939 = icmp eq i32 %1937, 1
  br i1 %1939, label %1944, label %1940

1940:                                             ; preds = %1930, %1919, %1917
  %1941 = phi i32 [ %1936, %1930 ], [ %1928, %1919 ], [ %1918, %1917 ]
  %1942 = phi i32 [ %1937, %1930 ], [ %1926, %1919 ], [ %1915, %1917 ]
  %1943 = add i32 %1941, 48
  br label %1970

1944:                                             ; preds = %1930
  %1945 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1946 = load ptr, ptr %1945, align 4
  %1947 = load ptr, ptr %1946, align 8
  %1948 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1947, i32 0, i32 3
  %1949 = load ptr, ptr %1948, align 4
  %1950 = shl i32 %1938, 2
  tail call void %1949(ptr noundef %1946, i32 noundef %1950, i32 noundef 1) #6
  %1951 = load ptr, ptr %1945, align 4
  %1952 = load ptr, ptr %1951, align 8
  %1953 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1952, i32 0, i32 3
  %1954 = load ptr, ptr %1953, align 4
  %1955 = load i32, ptr %15, align 4
  %1956 = shl i32 %1955, 2
  %1957 = add i32 %1956, 32
  tail call void %1954(ptr noundef %1951, i32 noundef %1957, i32 noundef 1) #6
  %1958 = load i32, ptr %41, align 4
  %1959 = load i32, ptr %15, align 4
  %1960 = add i32 %1959, 32
  store i32 %1960, ptr %15, align 4
  %1961 = icmp eq i32 %1958, 1
  br i1 %1961, label %1962, label %1970

1962:                                             ; preds = %1944
  %1963 = load ptr, ptr %1945, align 4
  %1964 = load ptr, ptr %1963, align 8
  %1965 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1964, i32 0, i32 3
  %1966 = load ptr, ptr %1965, align 4
  %1967 = shl i32 %1960, 2
  tail call void %1966(ptr noundef %1963, i32 noundef %1967, i32 noundef 1) #6
  %1968 = load i32, ptr %15, align 4
  %1969 = load i32, ptr %41, align 4
  br label %1970

1970:                                             ; preds = %1962, %1944, %1940
  %1971 = phi i32 [ %1969, %1962 ], [ %1942, %1940 ], [ %1958, %1944 ]
  %1972 = phi i32 [ %1968, %1962 ], [ %1943, %1940 ], [ %1960, %1944 ]
  %1973 = add i32 %1972, 16
  store i32 %1973, ptr %15, align 4
  %1974 = load i32, ptr %3, align 4
  %1975 = add i32 %1974, -161
  %1976 = icmp ult i32 %1975, 9
  %1977 = icmp eq i32 %1974, 175
  %1978 = or i1 %1977, %1976
  %1979 = select i1 %1978, i32 88, i32 80
  %1980 = add i32 %1972, %1979
  %1981 = add i32 %1980, 8
  store i32 %1981, ptr %15, align 4
  %1982 = icmp eq i32 %1971, 1
  br i1 %1982, label %1985, label %1983

1983:                                             ; preds = %1970
  %1984 = add i32 %1980, 136
  br label %2068

1985:                                             ; preds = %1970
  %1986 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %1987 = load ptr, ptr %1986, align 4
  %1988 = load ptr, ptr %1987, align 8
  %1989 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1988, i32 0, i32 3
  %1990 = load ptr, ptr %1989, align 4
  %1991 = shl i32 %1981, 2
  tail call void %1990(ptr noundef %1987, i32 noundef %1991, i32 noundef 1) #6
  %1992 = load ptr, ptr %1986, align 4
  %1993 = load ptr, ptr %1992, align 8
  %1994 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1993, i32 0, i32 3
  %1995 = load ptr, ptr %1994, align 4
  %1996 = load i32, ptr %15, align 4
  %1997 = shl i32 %1996, 2
  %1998 = add i32 %1997, 32
  tail call void %1995(ptr noundef %1992, i32 noundef %1998, i32 noundef 1) #6
  %1999 = load ptr, ptr %1986, align 4
  %2000 = load ptr, ptr %1999, align 8
  %2001 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2000, i32 0, i32 3
  %2002 = load ptr, ptr %2001, align 4
  %2003 = load i32, ptr %15, align 4
  %2004 = shl i32 %2003, 2
  %2005 = add i32 %2004, 64
  tail call void %2002(ptr noundef %1999, i32 noundef %2005, i32 noundef 1) #6
  %2006 = load ptr, ptr %1986, align 4
  %2007 = load ptr, ptr %2006, align 8
  %2008 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2007, i32 0, i32 3
  %2009 = load ptr, ptr %2008, align 4
  %2010 = load i32, ptr %15, align 4
  %2011 = shl i32 %2010, 2
  %2012 = add i32 %2011, 96
  tail call void %2009(ptr noundef %2006, i32 noundef %2012, i32 noundef 1) #6
  %2013 = load ptr, ptr %1986, align 4
  %2014 = load ptr, ptr %2013, align 8
  %2015 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2014, i32 0, i32 3
  %2016 = load ptr, ptr %2015, align 4
  %2017 = load i32, ptr %15, align 4
  %2018 = shl i32 %2017, 2
  %2019 = add i32 %2018, 128
  tail call void %2016(ptr noundef %2013, i32 noundef %2019, i32 noundef 1) #6
  %2020 = load ptr, ptr %1986, align 4
  %2021 = load ptr, ptr %2020, align 8
  %2022 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2021, i32 0, i32 3
  %2023 = load ptr, ptr %2022, align 4
  %2024 = load i32, ptr %15, align 4
  %2025 = shl i32 %2024, 2
  %2026 = add i32 %2025, 160
  tail call void %2023(ptr noundef %2020, i32 noundef %2026, i32 noundef 1) #6
  %2027 = load ptr, ptr %1986, align 4
  %2028 = load ptr, ptr %2027, align 8
  %2029 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2028, i32 0, i32 3
  %2030 = load ptr, ptr %2029, align 4
  %2031 = load i32, ptr %15, align 4
  %2032 = shl i32 %2031, 2
  %2033 = add i32 %2032, 192
  tail call void %2030(ptr noundef %2027, i32 noundef %2033, i32 noundef 1) #6
  %2034 = load ptr, ptr %1986, align 4
  %2035 = load ptr, ptr %2034, align 8
  %2036 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2035, i32 0, i32 3
  %2037 = load ptr, ptr %2036, align 4
  %2038 = load i32, ptr %15, align 4
  %2039 = shl i32 %2038, 2
  %2040 = add i32 %2039, 224
  tail call void %2037(ptr noundef %2034, i32 noundef %2040, i32 noundef 1) #6
  %2041 = load i32, ptr %41, align 4
  %2042 = load i32, ptr %15, align 4
  %2043 = add i32 %2042, 64
  store i32 %2043, ptr %15, align 4
  %2044 = icmp eq i32 %2041, 1
  br i1 %2044, label %2047, label %2045

2045:                                             ; preds = %1985
  %2046 = add i32 %2042, 128
  br label %2068

2047:                                             ; preds = %1985
  %2048 = load ptr, ptr %1986, align 4
  %2049 = load ptr, ptr %2048, align 8
  %2050 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2049, i32 0, i32 3
  %2051 = load ptr, ptr %2050, align 4
  %2052 = shl i32 %2043, 2
  tail call void %2051(ptr noundef %2048, i32 noundef %2052, i32 noundef 17) #6
  %2053 = load i32, ptr %41, align 4
  %2054 = load i32, ptr %15, align 4
  %2055 = add i32 %2054, 64
  store i32 %2055, ptr %15, align 4
  %2056 = icmp eq i32 %2053, 1
  br i1 %2056, label %2057, label %2068

2057:                                             ; preds = %2047
  %2058 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2059 = load ptr, ptr %2058, align 4
  %2060 = load ptr, ptr %2059, align 8
  %2061 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2060, i32 0, i32 3
  %2062 = load ptr, ptr %2061, align 4
  %2063 = shl i32 %2055, 2
  tail call void %2062(ptr noundef %2059, i32 noundef %2063, i32 noundef 262957185) #6
  %2064 = load i32, ptr %15, align 4
  %2065 = load i32, ptr %41, align 4
  %2066 = add i32 %2064, 8
  store i32 %2066, ptr %15, align 4
  %2067 = icmp eq i32 %2065, 1
  br i1 %2067, label %2071, label %2068

2068:                                             ; preds = %2057, %2047, %2045, %1983
  %2069 = phi i32 [ %2064, %2057 ], [ %1984, %1983 ], [ %2055, %2047 ], [ %2046, %2045 ]
  %2070 = add i32 %2069, 72
  br label %2082

2071:                                             ; preds = %2057
  %2072 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2073 = load ptr, ptr %2072, align 4
  %2074 = load ptr, ptr %2073, align 8
  %2075 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2074, i32 0, i32 3
  %2076 = load ptr, ptr %2075, align 4
  %2077 = shl i32 %2066, 2
  tail call void %2076(ptr noundef %2073, i32 noundef %2077, i32 noundef 15) #6
  %2078 = load i32, ptr %41, align 4
  %2079 = load i32, ptr %15, align 4
  %2080 = add i32 %2079, 64
  store i32 %2080, ptr %15, align 4
  %2081 = icmp eq i32 %2078, 1
  br i1 %2081, label %2085, label %2082

2082:                                             ; preds = %2071, %2068
  %2083 = phi i32 [ %2080, %2071 ], [ %2070, %2068 ]
  %2084 = add i32 %2083, 8
  br label %2103

2085:                                             ; preds = %2071
  %2086 = load ptr, ptr %2072, align 4
  %2087 = load ptr, ptr %2086, align 8
  %2088 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2087, i32 0, i32 3
  %2089 = load ptr, ptr %2088, align 4
  %2090 = shl i32 %2080, 2
  tail call void %2089(ptr noundef %2086, i32 noundef %2090, i32 noundef 17) #6
  %2091 = load i32, ptr %15, align 4
  %2092 = load i32, ptr %41, align 4
  %2093 = add i32 %2091, 8
  store i32 %2093, ptr %15, align 4
  %2094 = icmp eq i32 %2092, 1
  br i1 %2094, label %2095, label %2103

2095:                                             ; preds = %2085
  %2096 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2097 = load ptr, ptr %2096, align 4
  %2098 = load ptr, ptr %2097, align 8
  %2099 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2098, i32 0, i32 3
  %2100 = load ptr, ptr %2099, align 4
  %2101 = shl i32 %2093, 2
  tail call void %2100(ptr noundef %2097, i32 noundef %2101, i32 noundef 1) #6
  %2102 = load i32, ptr %15, align 4
  br label %2103

2103:                                             ; preds = %2095, %2085, %2082
  %2104 = phi i32 [ %2102, %2095 ], [ %2093, %2085 ], [ %2084, %2082 ]
  %2105 = add i32 %2104, 48
  store i32 %2105, ptr %15, align 4
  %2106 = load i32, ptr %3, align 4
  %2107 = add i32 %2106, -161
  %2108 = icmp ult i32 %2107, 9
  %2109 = icmp eq i32 %2106, 175
  %2110 = or i1 %2109, %2108
  br i1 %2110, label %2111, label %2126

2111:                                             ; preds = %2103
  %2112 = add i32 %2104, 56
  store i32 %2112, ptr %15, align 4
  %2113 = load i32, ptr %41, align 4
  %2114 = icmp eq i32 %2113, 1
  br i1 %2114, label %2115, label %2123

2115:                                             ; preds = %2111
  %2116 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %2117 = load ptr, ptr %2116, align 4
  %2118 = load ptr, ptr %2117, align 8
  %2119 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2118, i32 0, i32 3
  %2120 = load ptr, ptr %2119, align 4
  %2121 = shl i32 %2112, 2
  tail call void %2120(ptr noundef %2117, i32 noundef %2121, i32 noundef 1) #6
  %2122 = load i32, ptr %15, align 4
  br label %2123

2123:                                             ; preds = %2115, %2111
  %2124 = phi i32 [ %2122, %2115 ], [ %2112, %2111 ]
  %2125 = add i32 %2124, 8
  store i32 %2125, ptr %15, align 4
  br label %2126

2126:                                             ; preds = %2123, %2103, %1908
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_xfer_tex(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 16
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 80
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = add i32 %4, 24
  store i32 %10, ptr %3, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ %5, %1 ]
  %13 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = add i32 %12, 16
  br label %37

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = shl i32 %12, 2
  tail call void %23(ptr noundef %20, i32 noundef %24, i32 noundef 1) #6
  %25 = load i32, ptr %13, align 4
  %26 = load i32, ptr %3, align 4
  %27 = add i32 %26, 16
  store i32 %27, ptr %3, align 4
  %28 = icmp eq i32 %25, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load ptr, ptr %19, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = shl i32 %27, 2
  tail call void %33(ptr noundef %30, i32 noundef %34, i32 noundef 1) #6
  %35 = load i32, ptr %3, align 4
  %36 = load i32, ptr %13, align 4
  br label %37

37:                                               ; preds = %29, %18, %16
  %38 = phi i32 [ %36, %29 ], [ %14, %16 ], [ %25, %18 ]
  %39 = phi i32 [ %35, %29 ], [ %17, %16 ], [ %27, %18 ]
  %40 = add i32 %39, 16
  store i32 %40, ptr %3, align 4
  %41 = load i32, ptr %6, align 4
  %42 = icmp eq i32 %41, 80
  %43 = select i1 %42, i32 24, i32 32
  %44 = add i32 %39, %43
  store i32 %44, ptr %3, align 4
  %45 = icmp eq i32 %38, 1
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = add i32 %44, 16
  br label %69

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = shl i32 %44, 2
  tail call void %53(ptr noundef %50, i32 noundef %54, i32 noundef 712057992) #6
  %55 = load i32, ptr %13, align 4
  %56 = load i32, ptr %3, align 4
  %57 = add i32 %56, 16
  store i32 %57, ptr %3, align 4
  %58 = icmp eq i32 %55, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %48
  %60 = load ptr, ptr %49, align 4
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = shl i32 %57, 2
  tail call void %63(ptr noundef %60, i32 noundef %64, i32 noundef 1082507264) #6
  %65 = load i32, ptr %3, align 4
  %66 = load i32, ptr %13, align 4
  %67 = add i32 %65, 8
  store i32 %67, ptr %3, align 4
  %68 = icmp eq i32 %66, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %59, %48, %46
  %70 = phi i32 [ %65, %59 ], [ %57, %48 ], [ %47, %46 ]
  %71 = add i32 %70, 16
  br label %95

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = shl i32 %67, 2
  tail call void %77(ptr noundef %74, i32 noundef %78, i32 noundef 64) #6
  %79 = load i32, ptr %13, align 4
  %80 = load i32, ptr %3, align 4
  %81 = add i32 %80, 8
  store i32 %81, ptr %3, align 4
  %82 = icmp eq i32 %79, 1
  br i1 %82, label %85, label %83

83:                                               ; preds = %72
  %84 = add i32 %80, 24
  br label %117

85:                                               ; preds = %72
  %86 = load ptr, ptr %73, align 4
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %87, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = shl i32 %81, 2
  tail call void %89(ptr noundef %86, i32 noundef %90, i32 noundef 256) #6
  %91 = load i32, ptr %13, align 4
  %92 = load i32, ptr %3, align 4
  %93 = add i32 %92, 8
  store i32 %93, ptr %3, align 4
  %94 = icmp eq i32 %91, 1
  br i1 %94, label %98, label %95

95:                                               ; preds = %85, %69
  %96 = phi i32 [ %71, %69 ], [ %92, %85 ]
  %97 = add i32 %96, 16
  br label %117

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = shl i32 %93, 2
  tail call void %103(ptr noundef %100, i32 noundef %104, i32 noundef 65792) #6
  %105 = load i32, ptr %13, align 4
  %106 = load i32, ptr %3, align 4
  %107 = add i32 %106, 8
  store i32 %107, ptr %3, align 4
  %108 = icmp eq i32 %105, 1
  br i1 %108, label %109, label %117

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %112, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = shl i32 %107, 2
  tail call void %114(ptr noundef %111, i32 noundef %115, i32 noundef 41943040) #6
  %116 = load i32, ptr %3, align 4
  br label %117

117:                                              ; preds = %109, %98, %95, %83
  %118 = phi i32 [ %116, %109 ], [ %97, %95 ], [ %107, %98 ], [ %84, %83 ]
  %119 = add i32 %118, 16
  store i32 %119, ptr %3, align 4
  %120 = load i32, ptr %6, align 4
  %121 = icmp eq i32 %120, 80
  %122 = add i32 %120, -170
  %123 = icmp ult i32 %122, 3
  %124 = select i1 %123, i32 64, i32 80
  %125 = select i1 %121, i32 56, i32 %124
  %126 = add i32 %118, %125
  %127 = add i32 %126, 24
  store i32 %127, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_xfer_unk8cxx(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 48
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = add i32 %4, 56
  br label %34

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %5, 2
  tail call void %16(ptr noundef %13, i32 noundef %17, i32 noundef 82034655) #6
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %3, align 4
  %20 = add i32 %19, 8
  store i32 %20, ptr %3, align 4
  %21 = icmp eq i32 %18, 1
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  %23 = add i32 %19, 32
  br label %48

24:                                               ; preds = %11
  %25 = load ptr, ptr %12, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = shl i32 %20, 2
  tail call void %28(ptr noundef %25, i32 noundef %29, i32 noundef 82034655) #6
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %3, align 4
  %32 = add i32 %31, 8
  store i32 %32, ptr %3, align 4
  %33 = icmp eq i32 %30, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %24, %9
  %35 = phi i32 [ %10, %9 ], [ %31, %24 ]
  %36 = add i32 %35, 24
  br label %48

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = shl i32 %32, 2
  tail call void %42(ptr noundef %39, i32 noundef %43, i32 noundef 1) #6
  %44 = load i32, ptr %6, align 4
  %45 = load i32, ptr %3, align 4
  %46 = add i32 %45, 16
  store i32 %46, ptr %3, align 4
  %47 = icmp eq i32 %44, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %37, %34, %22
  %49 = phi i32 [ %23, %22 ], [ %46, %37 ], [ %36, %34 ]
  %50 = add i32 %49, 8
  br label %70

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = shl i32 %46, 2
  tail call void %56(ptr noundef %53, i32 noundef %57, i32 noundef 16776960) #6
  %58 = load i32, ptr %3, align 4
  %59 = load i32, ptr %6, align 4
  %60 = add i32 %58, 8
  store i32 %60, ptr %3, align 4
  %61 = icmp eq i32 %59, 1
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = shl i32 %60, 2
  tail call void %67(ptr noundef %64, i32 noundef %68, i32 noundef 1) #6
  %69 = load i32, ptr %3, align 4
  br label %70

70:                                               ; preds = %62, %51, %48
  %71 = phi i32 [ %69, %62 ], [ %60, %51 ], [ %50, %48 ]
  %72 = add i32 %71, 8
  store i32 %72, ptr %3, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, -161
  %76 = icmp ult i32 %75, 9
  %77 = icmp eq i32 %74, 175
  %78 = or i1 %77, %76
  br i1 %78, label %79, label %93

79:                                               ; preds = %70
  %80 = load i32, ptr %6, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = shl i32 %72, 2
  tail call void %87(ptr noundef %84, i32 noundef %88, i32 noundef 1) #6
  %89 = load i32, ptr %3, align 4
  br label %90

90:                                               ; preds = %82, %79
  %91 = phi i32 [ %89, %82 ], [ %72, %79 ]
  %92 = add i32 %91, 8
  br label %93

93:                                               ; preds = %90, %70
  %94 = phi i32 [ %72, %70 ], [ %92, %90 ]
  %95 = add i32 %94, 16
  store i32 %95, ptr %3, align 4
  %96 = load i32, ptr %6, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = shl i32 %95, 2
  tail call void %103(ptr noundef %100, i32 noundef %104, i32 noundef 16776960) #6
  %105 = load i32, ptr %3, align 4
  %106 = load i32, ptr %6, align 4
  %107 = add i32 %105, 72
  store i32 %107, ptr %3, align 4
  %108 = icmp eq i32 %106, 1
  br i1 %108, label %112, label %109

109:                                              ; preds = %98, %93
  %110 = phi i32 [ %105, %98 ], [ %95, %93 ]
  %111 = add i32 %110, 88
  store i32 %111, ptr %3, align 4
  br label %133

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %115, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = shl i32 %107, 2
  tail call void %117(ptr noundef %114, i32 noundef %118, i32 noundef 1) #6
  %119 = load i32, ptr %6, align 4
  %120 = load i32, ptr %3, align 4
  %121 = add i32 %120, 16
  store i32 %121, ptr %3, align 4
  %122 = icmp eq i32 %119, 1
  br i1 %122, label %123, label %133

123:                                              ; preds = %112
  %124 = load ptr, ptr %113, align 4
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %125, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = shl i32 %121, 2
  tail call void %127(ptr noundef %124, i32 noundef %128, i32 noundef 1) #6
  %129 = load i32, ptr %3, align 4
  %130 = load i32, ptr %6, align 4
  %131 = add i32 %129, 8
  store i32 %131, ptr %3, align 4
  %132 = icmp eq i32 %130, 1
  br i1 %132, label %136, label %133

133:                                              ; preds = %123, %112, %109
  %134 = phi i32 [ %129, %123 ], [ %121, %112 ], [ %111, %109 ]
  %135 = add i32 %134, 16
  br label %159

136:                                              ; preds = %123
  %137 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %139, i32 0, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = shl i32 %131, 2
  tail call void %141(ptr noundef %138, i32 noundef %142, i32 noundef 807407616) #6
  %143 = load i32, ptr %6, align 4
  %144 = load i32, ptr %3, align 4
  %145 = add i32 %144, 8
  store i32 %145, ptr %3, align 4
  %146 = icmp eq i32 %143, 1
  br i1 %146, label %149, label %147

147:                                              ; preds = %136
  %148 = add i32 %144, 16
  br label %173

149:                                              ; preds = %136
  %150 = load ptr, ptr %137, align 4
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %151, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  %154 = shl i32 %145, 2
  tail call void %153(ptr noundef %150, i32 noundef %154, i32 noundef 1885360192) #6
  %155 = load i32, ptr %6, align 4
  %156 = load i32, ptr %3, align 4
  %157 = add i32 %156, 8
  store i32 %157, ptr %3, align 4
  %158 = icmp eq i32 %155, 1
  br i1 %158, label %162, label %159

159:                                              ; preds = %149, %133
  %160 = phi i32 [ %135, %133 ], [ %156, %149 ]
  %161 = add i32 %160, 32
  br label %195

162:                                              ; preds = %149
  %163 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %164 = load ptr, ptr %163, align 4
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %165, i32 0, i32 3
  %167 = load ptr, ptr %166, align 4
  %168 = shl i32 %157, 2
  tail call void %167(ptr noundef %164, i32 noundef %168, i32 noundef -1196910456) #6
  %169 = load i32, ptr %6, align 4
  %170 = load i32, ptr %3, align 4
  %171 = add i32 %170, 8
  store i32 %171, ptr %3, align 4
  %172 = icmp eq i32 %169, 1
  br i1 %172, label %176, label %173

173:                                              ; preds = %162, %147
  %174 = phi i32 [ %148, %147 ], [ %170, %162 ]
  %175 = add i32 %174, 24
  br label %195

176:                                              ; preds = %162
  %177 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %179, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  %182 = shl i32 %171, 2
  tail call void %181(ptr noundef %178, i32 noundef %182, i32 noundef -118957880) #6
  %183 = load i32, ptr %6, align 4
  %184 = load i32, ptr %3, align 4
  %185 = add i32 %184, 16
  store i32 %185, ptr %3, align 4
  %186 = icmp eq i32 %183, 1
  br i1 %186, label %187, label %195

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %190, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = shl i32 %185, 2
  tail call void %192(ptr noundef %189, i32 noundef %193, i32 noundef 26) #6
  %194 = load i32, ptr %3, align 4
  br label %195

195:                                              ; preds = %187, %176, %173, %159
  %196 = phi i32 [ %194, %187 ], [ %175, %173 ], [ %185, %176 ], [ %161, %159 ]
  %197 = add i32 %196, 8
  store i32 %197, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_construct_xfer_mpc(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %7 [
    i32 152, label %5
    i32 170, label %5
    i32 175, label %6
    i32 165, label %6
    i32 163, label %6
    i32 160, label %6
  ]

5:                                                ; preds = %1, %1
  br label %7

6:                                                ; preds = %1, %1, %1, %1
  br label %7

7:                                                ; preds = %6, %5, %1
  %8 = phi i32 [ 3, %6 ], [ 1, %5 ], [ 2, %1 ]
  %9 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 8
  %10 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nvkm_grctx, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %9, align 4
  br label %13

13:                                               ; preds = %183, %7
  %14 = phi i32 [ %12, %7 ], [ %192, %183 ]
  %15 = phi i32 [ 0, %7 ], [ %193, %183 ]
  %16 = add i32 %14, 8
  store i32 %16, ptr %9, align 4
  %17 = load i32, ptr %10, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load ptr, ptr %11, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = shl i32 %16, 2
  tail call void %23(ptr noundef %20, i32 noundef %24, i32 noundef 128) #6
  %25 = load i32, ptr %10, align 4
  %26 = load i32, ptr %9, align 4
  %27 = add i32 %26, 8
  store i32 %27, ptr %9, align 4
  %28 = icmp eq i32 %25, 1
  br i1 %28, label %33, label %31

29:                                               ; preds = %13
  %30 = add i32 %14, 24
  br label %50

31:                                               ; preds = %19
  %32 = add i32 %26, 16
  br label %50

33:                                               ; preds = %19
  %34 = load ptr, ptr %11, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = shl i32 %27, 2
  tail call void %37(ptr noundef %34, i32 noundef %38, i32 noundef -2147454972) #6
  %39 = load i32, ptr %10, align 4
  %40 = load i32, ptr %9, align 4
  %41 = add i32 %40, 8
  store i32 %41, ptr %9, align 4
  %42 = icmp eq i32 %39, 1
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load ptr, ptr %11, align 4
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = shl i32 %41, 2
  tail call void %47(ptr noundef %44, i32 noundef %48, i32 noundef 67109888) #6
  %49 = load i32, ptr %9, align 4
  br label %50

50:                                               ; preds = %43, %33, %31, %29
  %51 = phi i32 [ %49, %43 ], [ %32, %31 ], [ %41, %33 ], [ %30, %29 ]
  %52 = add i32 %51, 8
  store i32 %52, ptr %9, align 4
  %53 = load i32, ptr %3, align 4
  %54 = icmp ugt i32 %53, 159
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load i32, ptr %10, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load ptr, ptr %11, align 4
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = shl i32 %52, 2
  tail call void %62(ptr noundef %59, i32 noundef %63, i32 noundef 192) #6
  %64 = load i32, ptr %9, align 4
  br label %65

65:                                               ; preds = %58, %55
  %66 = phi i32 [ %64, %58 ], [ %52, %55 ]
  %67 = add i32 %66, 8
  store i32 %67, ptr %9, align 4
  br label %68

68:                                               ; preds = %65, %50
  %69 = phi i32 [ %67, %65 ], [ %52, %50 ]
  %70 = load i32, ptr %10, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load ptr, ptr %11, align 4
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = shl i32 %69, 2
  tail call void %76(ptr noundef %73, i32 noundef %77, i32 noundef 4096) #6
  %78 = load i32, ptr %9, align 4
  br label %79

79:                                               ; preds = %72, %68
  %80 = phi i32 [ %78, %72 ], [ %69, %68 ]
  %81 = add i32 %80, 24
  store i32 %81, ptr %9, align 4
  %82 = load i32, ptr %3, align 4
  switch i32 %82, label %83 [
    i32 134, label %86
    i32 152, label %86
    i32 168, label %86
  ]

83:                                               ; preds = %79
  %84 = add i32 %82, -170
  %85 = icmp ult i32 %84, 3
  br i1 %85, label %86, label %111

86:                                               ; preds = %83, %79, %79, %79
  %87 = load i32, ptr %10, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load ptr, ptr %11, align 4
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = shl i32 %81, 2
  tail call void %93(ptr noundef %90, i32 noundef %94, i32 noundef 3584) #6
  %95 = load i32, ptr %10, align 4
  %96 = load i32, ptr %9, align 4
  %97 = add i32 %96, 8
  store i32 %97, ptr %9, align 4
  %98 = icmp eq i32 %95, 1
  br i1 %98, label %101, label %108

99:                                               ; preds = %86
  %100 = add i32 %80, 32
  br label %108

101:                                              ; preds = %89
  %102 = load ptr, ptr %11, align 4
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %103, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = shl i32 %97, 2
  tail call void %105(ptr noundef %102, i32 noundef %106, i32 noundef 7680) #6
  %107 = load i32, ptr %9, align 4
  br label %108

108:                                              ; preds = %101, %99, %89
  %109 = phi i32 [ %107, %101 ], [ %100, %99 ], [ %97, %89 ]
  %110 = add i32 %109, 8
  store i32 %110, ptr %9, align 4
  br label %111

111:                                              ; preds = %108, %83
  %112 = phi i32 [ %110, %108 ], [ %81, %83 ]
  %113 = load i32, ptr %10, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load ptr, ptr %11, align 4
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = shl i32 %112, 2
  tail call void %119(ptr noundef %116, i32 noundef %120, i32 noundef 1) #6
  %121 = load i32, ptr %9, align 4
  br label %122

122:                                              ; preds = %115, %111
  %123 = phi i32 [ %121, %115 ], [ %112, %111 ]
  %124 = add i32 %123, 24
  store i32 %124, ptr %9, align 4
  %125 = load i32, ptr %3, align 4
  %126 = icmp eq i32 %125, 80
  br i1 %126, label %127, label %147

127:                                              ; preds = %122
  %128 = load i32, ptr %10, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load ptr, ptr %11, align 4
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %132, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = shl i32 %124, 2
  tail call void %134(ptr noundef %131, i32 noundef %135, i32 noundef 4096) #6
  %136 = load ptr, ptr %11, align 4
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = load i32, ptr %9, align 4
  %141 = shl i32 %140, 2
  %142 = add i32 %141, 32
  tail call void %139(ptr noundef %136, i32 noundef %142, i32 noundef 4096) #6
  %143 = load i32, ptr %9, align 4
  br label %144

144:                                              ; preds = %130, %127
  %145 = phi i32 [ %143, %130 ], [ %124, %127 ]
  %146 = add i32 %145, 16
  store i32 %146, ptr %9, align 4
  br label %147

147:                                              ; preds = %144, %122
  %148 = phi i32 [ %146, %144 ], [ %124, %122 ]
  %149 = load i32, ptr %10, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load ptr, ptr %11, align 4
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %153, i32 0, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = shl i32 %148, 2
  tail call void %155(ptr noundef %152, i32 noundef %156, i32 noundef 1) #6
  %157 = load i32, ptr %10, align 4
  %158 = load i32, ptr %9, align 4
  %159 = add i32 %158, 16
  store i32 %159, ptr %9, align 4
  %160 = icmp eq i32 %157, 1
  br i1 %160, label %166, label %163

161:                                              ; preds = %147
  %162 = add i32 %148, 16
  br label %163

163:                                              ; preds = %161, %151
  %164 = phi i32 [ %159, %151 ], [ %162, %161 ]
  %165 = add i32 %164, 8
  br label %183

166:                                              ; preds = %151
  %167 = load ptr, ptr %11, align 4
  %168 = load ptr, ptr %167, align 8
  %169 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %168, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = shl i32 %159, 2
  tail call void %170(ptr noundef %167, i32 noundef %171, i32 noundef 4) #6
  %172 = load i32, ptr %9, align 4
  %173 = load i32, ptr %10, align 4
  %174 = add i32 %172, 8
  store i32 %174, ptr %9, align 4
  %175 = icmp eq i32 %173, 1
  br i1 %175, label %176, label %183

176:                                              ; preds = %166
  %177 = load ptr, ptr %11, align 4
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %178, i32 0, i32 3
  %180 = load ptr, ptr %179, align 4
  %181 = shl i32 %174, 2
  tail call void %180(ptr noundef %177, i32 noundef %181, i32 noundef 2) #6
  %182 = load i32, ptr %9, align 4
  br label %183

183:                                              ; preds = %176, %166, %163
  %184 = phi i32 [ %182, %176 ], [ %174, %166 ], [ %165, %163 ]
  %185 = add i32 %184, 8
  store i32 %185, ptr %9, align 4
  %186 = load i32, ptr %3, align 4
  %187 = add i32 %186, -170
  %188 = icmp ult i32 %187, 3
  %189 = icmp ugt i32 %186, 159
  %190 = select i1 %189, i32 104, i32 88
  %191 = select i1 %188, i32 96, i32 %190
  %192 = add i32 %184, %191
  store i32 %192, ptr %9, align 4
  %193 = add nuw nsw i32 %15, 1
  %194 = icmp eq i32 %193, %8
  br i1 %194, label %195, label %13

195:                                              ; preds = %183
  %196 = load i32, ptr %10, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load ptr, ptr %11, align 4
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %200, i32 0, i32 3
  %202 = load ptr, ptr %201, align 4
  %203 = shl i32 %192, 2
  tail call void %202(ptr noundef %199, i32 noundef %203, i32 noundef 135269394) #6
  %204 = load i32, ptr %9, align 4
  br label %205

205:                                              ; preds = %198, %195
  %206 = phi i32 [ %204, %198 ], [ %192, %195 ]
  %207 = add i32 %206, 16
  store i32 %207, ptr %9, align 4
  %208 = load i32, ptr %3, align 4
  %209 = icmp ugt i32 %208, 159
  br i1 %209, label %210, label %223

210:                                              ; preds = %205
  %211 = load i32, ptr %10, align 4
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %220

213:                                              ; preds = %210
  %214 = load ptr, ptr %11, align 4
  %215 = load ptr, ptr %214, align 8
  %216 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %215, i32 0, i32 3
  %217 = load ptr, ptr %216, align 4
  %218 = shl i32 %207, 2
  tail call void %217(ptr noundef %214, i32 noundef %218, i32 noundef 130593) #6
  %219 = load i32, ptr %9, align 4
  br label %220

220:                                              ; preds = %213, %210
  %221 = phi i32 [ %219, %213 ], [ %207, %210 ]
  %222 = add i32 %221, 8
  br label %223

223:                                              ; preds = %220, %205
  %224 = phi i32 [ %222, %220 ], [ %207, %205 ]
  %225 = add i32 %224, 40
  store i32 %225, ptr %9, align 4
  %226 = load i32, ptr %10, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = add i32 %224, 72
  store i32 %229, ptr %9, align 4
  br label %273

230:                                              ; preds = %223
  %231 = load ptr, ptr %11, align 4
  %232 = load ptr, ptr %231, align 8
  %233 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %232, i32 0, i32 3
  %234 = load ptr, ptr %233, align 4
  %235 = shl i32 %225, 2
  tail call void %234(ptr noundef %231, i32 noundef %235, i32 noundef 65535) #6
  %236 = load ptr, ptr %11, align 4
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %237, i32 0, i32 3
  %239 = load ptr, ptr %238, align 4
  %240 = load i32, ptr %9, align 4
  %241 = shl i32 %240, 2
  %242 = add i32 %241, 32
  tail call void %239(ptr noundef %236, i32 noundef %242, i32 noundef 65535) #6
  %243 = load ptr, ptr %11, align 4
  %244 = load ptr, ptr %243, align 8
  %245 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %244, i32 0, i32 3
  %246 = load ptr, ptr %245, align 4
  %247 = load i32, ptr %9, align 4
  %248 = shl i32 %247, 2
  %249 = add i32 %248, 64
  tail call void %246(ptr noundef %243, i32 noundef %249, i32 noundef 65535) #6
  %250 = load ptr, ptr %11, align 4
  %251 = load ptr, ptr %250, align 8
  %252 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %251, i32 0, i32 3
  %253 = load ptr, ptr %252, align 4
  %254 = load i32, ptr %9, align 4
  %255 = shl i32 %254, 2
  %256 = add i32 %255, 96
  tail call void %253(ptr noundef %250, i32 noundef %256, i32 noundef 65535) #6
  %257 = load i32, ptr %10, align 4
  %258 = load i32, ptr %9, align 4
  %259 = add i32 %258, 32
  store i32 %259, ptr %9, align 4
  %260 = icmp eq i32 %257, 1
  br i1 %260, label %263, label %261

261:                                              ; preds = %230
  %262 = add i32 %258, 40
  br label %286

263:                                              ; preds = %230
  %264 = load ptr, ptr %11, align 4
  %265 = load ptr, ptr %264, align 8
  %266 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %265, i32 0, i32 3
  %267 = load ptr, ptr %266, align 4
  %268 = shl i32 %259, 2
  tail call void %267(ptr noundef %264, i32 noundef %268, i32 noundef 1) #6
  %269 = load i32, ptr %10, align 4
  %270 = load i32, ptr %9, align 4
  %271 = add i32 %270, 8
  store i32 %271, ptr %9, align 4
  %272 = icmp eq i32 %269, 1
  br i1 %272, label %276, label %273

273:                                              ; preds = %263, %228
  %274 = phi i32 [ %229, %228 ], [ %270, %263 ]
  %275 = add i32 %274, 16
  br label %299

276:                                              ; preds = %263
  %277 = load ptr, ptr %11, align 4
  %278 = load ptr, ptr %277, align 8
  %279 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %278, i32 0, i32 3
  %280 = load ptr, ptr %279, align 4
  %281 = shl i32 %271, 2
  tail call void %280(ptr noundef %277, i32 noundef %281, i32 noundef 65537) #6
  %282 = load i32, ptr %10, align 4
  %283 = load i32, ptr %9, align 4
  %284 = add i32 %283, 8
  store i32 %284, ptr %9, align 4
  %285 = icmp eq i32 %282, 1
  br i1 %285, label %289, label %286

286:                                              ; preds = %276, %261
  %287 = phi i32 [ %262, %261 ], [ %283, %276 ]
  %288 = add i32 %287, 32
  br label %319

289:                                              ; preds = %276
  %290 = load ptr, ptr %11, align 4
  %291 = load ptr, ptr %290, align 8
  %292 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %291, i32 0, i32 3
  %293 = load ptr, ptr %292, align 4
  %294 = shl i32 %284, 2
  tail call void %293(ptr noundef %290, i32 noundef %294, i32 noundef 65537) #6
  %295 = load i32, ptr %10, align 4
  %296 = load i32, ptr %9, align 4
  %297 = add i32 %296, 8
  store i32 %297, ptr %9, align 4
  %298 = icmp eq i32 %295, 1
  br i1 %298, label %302, label %299

299:                                              ; preds = %289, %273
  %300 = phi i32 [ %275, %273 ], [ %296, %289 ]
  %301 = add i32 %300, 24
  br label %319

302:                                              ; preds = %289
  %303 = load ptr, ptr %11, align 4
  %304 = load ptr, ptr %303, align 8
  %305 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %304, i32 0, i32 3
  %306 = load ptr, ptr %305, align 4
  %307 = shl i32 %297, 2
  tail call void %306(ptr noundef %303, i32 noundef %307, i32 noundef 1) #6
  %308 = load i32, ptr %10, align 4
  %309 = load i32, ptr %9, align 4
  %310 = add i32 %309, 16
  store i32 %310, ptr %9, align 4
  %311 = icmp eq i32 %308, 1
  br i1 %311, label %312, label %319

312:                                              ; preds = %302
  %313 = load ptr, ptr %11, align 4
  %314 = load ptr, ptr %313, align 8
  %315 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %314, i32 0, i32 3
  %316 = load ptr, ptr %315, align 4
  %317 = shl i32 %310, 2
  tail call void %316(ptr noundef %313, i32 noundef %317, i32 noundef 130593) #6
  %318 = load i32, ptr %9, align 4
  br label %319

319:                                              ; preds = %312, %302, %299, %286
  %320 = phi i32 [ %318, %312 ], [ %301, %299 ], [ %310, %302 ], [ %288, %286 ]
  %321 = add i32 %320, 16
  store i32 %321, ptr %9, align 4
  %322 = load i32, ptr %3, align 4
  %323 = add i32 %322, -161
  %324 = icmp ult i32 %323, 9
  %325 = icmp eq i32 %322, 175
  %326 = or i1 %325, %324
  br i1 %326, label %327, label %340

327:                                              ; preds = %319
  %328 = load i32, ptr %10, align 4
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %337

330:                                              ; preds = %327
  %331 = load ptr, ptr %11, align 4
  %332 = load ptr, ptr %331, align 8
  %333 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %332, i32 0, i32 3
  %334 = load ptr, ptr %333, align 4
  %335 = shl i32 %321, 2
  tail call void %334(ptr noundef %331, i32 noundef %335, i32 noundef 1) #6
  %336 = load i32, ptr %9, align 4
  br label %337

337:                                              ; preds = %330, %327
  %338 = phi i32 [ %336, %330 ], [ %321, %327 ]
  %339 = add i32 %338, 8
  br label %340

340:                                              ; preds = %337, %319
  %341 = phi i32 [ %321, %319 ], [ %339, %337 ]
  %342 = add i32 %341, 32
  store i32 %342, ptr %9, align 4
  %343 = load i32, ptr %10, align 4
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %347, label %345

345:                                              ; preds = %340
  %346 = add i32 %341, 56
  br label %379

347:                                              ; preds = %340
  %348 = load ptr, ptr %11, align 4
  %349 = load ptr, ptr %348, align 8
  %350 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %349, i32 0, i32 3
  %351 = load ptr, ptr %350, align 4
  %352 = shl i32 %342, 2
  tail call void %351(ptr noundef %348, i32 noundef %352, i32 noundef 135269394) #6
  %353 = load i32, ptr %10, align 4
  %354 = load i32, ptr %9, align 4
  %355 = add i32 %354, 8
  store i32 %355, ptr %9, align 4
  %356 = icmp eq i32 %353, 1
  br i1 %356, label %359, label %357

357:                                              ; preds = %347
  %358 = add i32 %354, 24
  br label %379

359:                                              ; preds = %347
  %360 = load ptr, ptr %11, align 4
  %361 = load ptr, ptr %360, align 8
  %362 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %361, i32 0, i32 3
  %363 = load ptr, ptr %362, align 4
  %364 = shl i32 %355, 2
  tail call void %363(ptr noundef %360, i32 noundef %364, i32 noundef 4) #6
  %365 = load i32, ptr %10, align 4
  %366 = load i32, ptr %9, align 4
  %367 = add i32 %366, 16
  store i32 %367, ptr %9, align 4
  %368 = icmp eq i32 %365, 1
  br i1 %368, label %369, label %379

369:                                              ; preds = %359
  %370 = load ptr, ptr %11, align 4
  %371 = load ptr, ptr %370, align 8
  %372 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %371, i32 0, i32 3
  %373 = load ptr, ptr %372, align 4
  %374 = shl i32 %367, 2
  tail call void %373(ptr noundef %370, i32 noundef %374, i32 noundef 2) #6
  %375 = load i32, ptr %9, align 4
  %376 = load i32, ptr %10, align 4
  %377 = add i32 %375, 8
  store i32 %377, ptr %9, align 4
  %378 = icmp eq i32 %376, 1
  br i1 %378, label %382, label %379

379:                                              ; preds = %369, %359, %357, %345
  %380 = phi i32 [ %375, %369 ], [ %346, %345 ], [ %367, %359 ], [ %358, %357 ]
  %381 = add i32 %380, 80
  br label %399

382:                                              ; preds = %369
  %383 = load ptr, ptr %11, align 4
  %384 = load ptr, ptr %383, align 8
  %385 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %384, i32 0, i32 3
  %386 = load ptr, ptr %385, align 4
  %387 = shl i32 %377, 2
  tail call void %386(ptr noundef %383, i32 noundef %387, i32 noundef 17) #6
  %388 = load i32, ptr %10, align 4
  %389 = load i32, ptr %9, align 4
  %390 = add i32 %389, 72
  store i32 %390, ptr %9, align 4
  %391 = icmp eq i32 %388, 1
  br i1 %391, label %392, label %399

392:                                              ; preds = %382
  %393 = load ptr, ptr %11, align 4
  %394 = load ptr, ptr %393, align 8
  %395 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %394, i32 0, i32 3
  %396 = load ptr, ptr %395, align 4
  %397 = shl i32 %390, 2
  tail call void %396(ptr noundef %393, i32 noundef %397, i32 noundef 262957185) #6
  %398 = load i32, ptr %9, align 4
  br label %399

399:                                              ; preds = %392, %382, %379
  %400 = phi i32 [ %398, %392 ], [ %381, %379 ], [ %390, %382 ]
  %401 = add i32 %400, 16
  store i32 %401, ptr %9, align 4
  %402 = load i32, ptr %3, align 4
  %403 = add i32 %402, -161
  %404 = icmp ult i32 %403, 9
  %405 = icmp eq i32 %402, 175
  %406 = or i1 %405, %404
  br i1 %406, label %407, label %420

407:                                              ; preds = %399
  %408 = load i32, ptr %10, align 4
  %409 = icmp eq i32 %408, 1
  br i1 %409, label %410, label %417

410:                                              ; preds = %407
  %411 = load ptr, ptr %11, align 4
  %412 = load ptr, ptr %411, align 8
  %413 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %412, i32 0, i32 3
  %414 = load ptr, ptr %413, align 4
  %415 = shl i32 %401, 2
  tail call void %414(ptr noundef %411, i32 noundef %415, i32 noundef 3) #6
  %416 = load i32, ptr %9, align 4
  br label %417

417:                                              ; preds = %410, %407
  %418 = phi i32 [ %416, %410 ], [ %401, %407 ]
  %419 = add i32 %418, 8
  br label %420

420:                                              ; preds = %417, %399
  %421 = phi i32 [ %401, %399 ], [ %419, %417 ]
  %422 = add i32 %421, 24
  store i32 %422, ptr %9, align 4
  %423 = load i32, ptr %10, align 4
  %424 = icmp eq i32 %423, 1
  br i1 %424, label %427, label %425

425:                                              ; preds = %420
  %426 = add i32 %421, 104
  br label %447

427:                                              ; preds = %420
  %428 = load ptr, ptr %11, align 4
  %429 = load ptr, ptr %428, align 8
  %430 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %429, i32 0, i32 3
  %431 = load ptr, ptr %430, align 4
  %432 = shl i32 %422, 2
  tail call void %431(ptr noundef %428, i32 noundef %432, i32 noundef 4) #6
  %433 = load i32, ptr %10, align 4
  %434 = load i32, ptr %9, align 4
  %435 = add i32 %434, 80
  store i32 %435, ptr %9, align 4
  %436 = icmp eq i32 %433, 1
  br i1 %436, label %437, label %447

437:                                              ; preds = %427
  %438 = load ptr, ptr %11, align 4
  %439 = load ptr, ptr %438, align 8
  %440 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %439, i32 0, i32 3
  %441 = load ptr, ptr %440, align 4
  %442 = shl i32 %435, 2
  tail call void %441(ptr noundef %438, i32 noundef %442, i32 noundef 2) #6
  %443 = load i32, ptr %9, align 4
  %444 = load i32, ptr %10, align 4
  %445 = add i32 %443, 8
  store i32 %445, ptr %9, align 4
  %446 = icmp eq i32 %444, 1
  br i1 %446, label %450, label %447

447:                                              ; preds = %437, %427, %425
  %448 = phi i32 [ %443, %437 ], [ %435, %427 ], [ %426, %425 ]
  %449 = add i32 %448, 16
  store i32 %449, ptr %9, align 4
  br label %472

450:                                              ; preds = %437
  %451 = load ptr, ptr %11, align 4
  %452 = load ptr, ptr %451, align 8
  %453 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %452, i32 0, i32 3
  %454 = load ptr, ptr %453, align 4
  %455 = shl i32 %445, 2
  tail call void %454(ptr noundef %451, i32 noundef %455, i32 noundef 1) #6
  %456 = load i32, ptr %10, align 4
  %457 = load i32, ptr %9, align 4
  %458 = add i32 %457, 8
  store i32 %458, ptr %9, align 4
  %459 = icmp eq i32 %456, 1
  br i1 %459, label %462, label %460

460:                                              ; preds = %450
  %461 = add i32 %457, 16
  br label %485

462:                                              ; preds = %450
  %463 = load ptr, ptr %11, align 4
  %464 = load ptr, ptr %463, align 8
  %465 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %464, i32 0, i32 3
  %466 = load ptr, ptr %465, align 4
  %467 = shl i32 %458, 2
  tail call void %466(ptr noundef %463, i32 noundef %467, i32 noundef 1) #6
  %468 = load i32, ptr %10, align 4
  %469 = load i32, ptr %9, align 4
  %470 = add i32 %469, 8
  store i32 %470, ptr %9, align 4
  %471 = icmp eq i32 %468, 1
  br i1 %471, label %475, label %472

472:                                              ; preds = %462, %447
  %473 = phi i32 [ %449, %447 ], [ %469, %462 ]
  %474 = add i32 %473, 16
  br label %498

475:                                              ; preds = %462
  %476 = load ptr, ptr %11, align 4
  %477 = load ptr, ptr %476, align 8
  %478 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %477, i32 0, i32 3
  %479 = load ptr, ptr %478, align 4
  %480 = shl i32 %470, 2
  tail call void %479(ptr noundef %476, i32 noundef %480, i32 noundef 2) #6
  %481 = load i32, ptr %10, align 4
  %482 = load i32, ptr %9, align 4
  %483 = add i32 %482, 8
  store i32 %483, ptr %9, align 4
  %484 = icmp eq i32 %481, 1
  br i1 %484, label %488, label %485

485:                                              ; preds = %475, %460
  %486 = phi i32 [ %461, %460 ], [ %482, %475 ]
  %487 = add i32 %486, 24
  br label %518

488:                                              ; preds = %475
  %489 = load ptr, ptr %11, align 4
  %490 = load ptr, ptr %489, align 8
  %491 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %490, i32 0, i32 3
  %492 = load ptr, ptr %491, align 4
  %493 = shl i32 %483, 2
  tail call void %492(ptr noundef %489, i32 noundef %493, i32 noundef 1) #6
  %494 = load i32, ptr %10, align 4
  %495 = load i32, ptr %9, align 4
  %496 = add i32 %495, 8
  store i32 %496, ptr %9, align 4
  %497 = icmp eq i32 %494, 1
  br i1 %497, label %501, label %498

498:                                              ; preds = %488, %472
  %499 = phi i32 [ %474, %472 ], [ %495, %488 ]
  %500 = add i32 %499, 16
  br label %518

501:                                              ; preds = %488
  %502 = load ptr, ptr %11, align 4
  %503 = load ptr, ptr %502, align 8
  %504 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %503, i32 0, i32 3
  %505 = load ptr, ptr %504, align 4
  %506 = shl i32 %496, 2
  tail call void %505(ptr noundef %502, i32 noundef %506, i32 noundef 1) #6
  %507 = load i32, ptr %10, align 4
  %508 = load i32, ptr %9, align 4
  %509 = add i32 %508, 8
  store i32 %509, ptr %9, align 4
  %510 = icmp eq i32 %507, 1
  br i1 %510, label %511, label %518

511:                                              ; preds = %501
  %512 = load ptr, ptr %11, align 4
  %513 = load ptr, ptr %512, align 8
  %514 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %513, i32 0, i32 3
  %515 = load ptr, ptr %514, align 4
  %516 = shl i32 %509, 2
  tail call void %515(ptr noundef %512, i32 noundef %516, i32 noundef 1) #6
  %517 = load i32, ptr %9, align 4
  br label %518

518:                                              ; preds = %511, %501, %498, %485
  %519 = phi i32 [ %517, %511 ], [ %500, %498 ], [ %509, %501 ], [ %487, %485 ]
  %520 = add i32 %519, 8
  store i32 %520, ptr %9, align 4
  %521 = load i32, ptr %3, align 4
  %522 = add i32 %521, -161
  %523 = icmp ult i32 %522, 9
  %524 = icmp eq i32 %521, 175
  %525 = or i1 %524, %523
  br i1 %525, label %526, label %961

526:                                              ; preds = %518
  %527 = add i32 %519, 16
  store i32 %527, ptr %9, align 4
  %528 = load i32, ptr %10, align 4
  %529 = icmp eq i32 %528, 1
  br i1 %529, label %533, label %530

530:                                              ; preds = %526
  %531 = add i32 %519, 80
  %532 = add i32 %519, 144
  store i32 %532, ptr %9, align 4
  br label %654

533:                                              ; preds = %526
  %534 = load ptr, ptr %11, align 4
  %535 = load ptr, ptr %534, align 8
  %536 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %535, i32 0, i32 3
  %537 = load ptr, ptr %536, align 4
  %538 = shl i32 %527, 2
  tail call void %537(ptr noundef %534, i32 noundef %538, i32 noundef 2) #6
  %539 = load ptr, ptr %11, align 4
  %540 = load ptr, ptr %539, align 8
  %541 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %540, i32 0, i32 3
  %542 = load ptr, ptr %541, align 4
  %543 = load i32, ptr %9, align 4
  %544 = shl i32 %543, 2
  %545 = add i32 %544, 32
  tail call void %542(ptr noundef %539, i32 noundef %545, i32 noundef 2) #6
  %546 = load ptr, ptr %11, align 4
  %547 = load ptr, ptr %546, align 8
  %548 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %547, i32 0, i32 3
  %549 = load ptr, ptr %548, align 4
  %550 = load i32, ptr %9, align 4
  %551 = shl i32 %550, 2
  %552 = add i32 %551, 64
  tail call void %549(ptr noundef %546, i32 noundef %552, i32 noundef 2) #6
  %553 = load ptr, ptr %11, align 4
  %554 = load ptr, ptr %553, align 8
  %555 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %554, i32 0, i32 3
  %556 = load ptr, ptr %555, align 4
  %557 = load i32, ptr %9, align 4
  %558 = shl i32 %557, 2
  %559 = add i32 %558, 96
  tail call void %556(ptr noundef %553, i32 noundef %559, i32 noundef 2) #6
  %560 = load ptr, ptr %11, align 4
  %561 = load ptr, ptr %560, align 8
  %562 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %561, i32 0, i32 3
  %563 = load ptr, ptr %562, align 4
  %564 = load i32, ptr %9, align 4
  %565 = shl i32 %564, 2
  %566 = add i32 %565, 128
  tail call void %563(ptr noundef %560, i32 noundef %566, i32 noundef 2) #6
  %567 = load ptr, ptr %11, align 4
  %568 = load ptr, ptr %567, align 8
  %569 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %568, i32 0, i32 3
  %570 = load ptr, ptr %569, align 4
  %571 = load i32, ptr %9, align 4
  %572 = shl i32 %571, 2
  %573 = add i32 %572, 160
  tail call void %570(ptr noundef %567, i32 noundef %573, i32 noundef 2) #6
  %574 = load ptr, ptr %11, align 4
  %575 = load ptr, ptr %574, align 8
  %576 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %575, i32 0, i32 3
  %577 = load ptr, ptr %576, align 4
  %578 = load i32, ptr %9, align 4
  %579 = shl i32 %578, 2
  %580 = add i32 %579, 192
  tail call void %577(ptr noundef %574, i32 noundef %580, i32 noundef 2) #6
  %581 = load ptr, ptr %11, align 4
  %582 = load ptr, ptr %581, align 8
  %583 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %582, i32 0, i32 3
  %584 = load ptr, ptr %583, align 4
  %585 = load i32, ptr %9, align 4
  %586 = shl i32 %585, 2
  %587 = add i32 %586, 224
  tail call void %584(ptr noundef %581, i32 noundef %587, i32 noundef 2) #6
  %588 = load i32, ptr %10, align 4
  %589 = load i32, ptr %9, align 4
  %590 = add i32 %589, 64
  store i32 %590, ptr %9, align 4
  %591 = icmp eq i32 %588, 1
  br i1 %591, label %595, label %592

592:                                              ; preds = %533
  %593 = add i32 %589, 128
  %594 = add i32 %589, 192
  store i32 %594, ptr %9, align 4
  br label %716

595:                                              ; preds = %533
  %596 = load ptr, ptr %11, align 4
  %597 = load ptr, ptr %596, align 8
  %598 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %597, i32 0, i32 3
  %599 = load ptr, ptr %598, align 4
  %600 = shl i32 %590, 2
  tail call void %599(ptr noundef %596, i32 noundef %600, i32 noundef 1) #6
  %601 = load ptr, ptr %11, align 4
  %602 = load ptr, ptr %601, align 8
  %603 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %602, i32 0, i32 3
  %604 = load ptr, ptr %603, align 4
  %605 = load i32, ptr %9, align 4
  %606 = shl i32 %605, 2
  %607 = add i32 %606, 32
  tail call void %604(ptr noundef %601, i32 noundef %607, i32 noundef 1) #6
  %608 = load ptr, ptr %11, align 4
  %609 = load ptr, ptr %608, align 8
  %610 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %609, i32 0, i32 3
  %611 = load ptr, ptr %610, align 4
  %612 = load i32, ptr %9, align 4
  %613 = shl i32 %612, 2
  %614 = add i32 %613, 64
  tail call void %611(ptr noundef %608, i32 noundef %614, i32 noundef 1) #6
  %615 = load ptr, ptr %11, align 4
  %616 = load ptr, ptr %615, align 8
  %617 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %616, i32 0, i32 3
  %618 = load ptr, ptr %617, align 4
  %619 = load i32, ptr %9, align 4
  %620 = shl i32 %619, 2
  %621 = add i32 %620, 96
  tail call void %618(ptr noundef %615, i32 noundef %621, i32 noundef 1) #6
  %622 = load ptr, ptr %11, align 4
  %623 = load ptr, ptr %622, align 8
  %624 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %623, i32 0, i32 3
  %625 = load ptr, ptr %624, align 4
  %626 = load i32, ptr %9, align 4
  %627 = shl i32 %626, 2
  %628 = add i32 %627, 128
  tail call void %625(ptr noundef %622, i32 noundef %628, i32 noundef 1) #6
  %629 = load ptr, ptr %11, align 4
  %630 = load ptr, ptr %629, align 8
  %631 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %630, i32 0, i32 3
  %632 = load ptr, ptr %631, align 4
  %633 = load i32, ptr %9, align 4
  %634 = shl i32 %633, 2
  %635 = add i32 %634, 160
  tail call void %632(ptr noundef %629, i32 noundef %635, i32 noundef 1) #6
  %636 = load ptr, ptr %11, align 4
  %637 = load ptr, ptr %636, align 8
  %638 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %637, i32 0, i32 3
  %639 = load ptr, ptr %638, align 4
  %640 = load i32, ptr %9, align 4
  %641 = shl i32 %640, 2
  %642 = add i32 %641, 192
  tail call void %639(ptr noundef %636, i32 noundef %642, i32 noundef 1) #6
  %643 = load ptr, ptr %11, align 4
  %644 = load ptr, ptr %643, align 8
  %645 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %644, i32 0, i32 3
  %646 = load ptr, ptr %645, align 4
  %647 = load i32, ptr %9, align 4
  %648 = shl i32 %647, 2
  %649 = add i32 %648, 224
  tail call void %646(ptr noundef %643, i32 noundef %649, i32 noundef 1) #6
  %650 = load i32, ptr %10, align 4
  %651 = load i32, ptr %9, align 4
  %652 = add i32 %651, 64
  store i32 %652, ptr %9, align 4
  %653 = icmp eq i32 %650, 1
  br i1 %653, label %657, label %654

654:                                              ; preds = %595, %530
  %655 = phi i32 [ %531, %530 ], [ %651, %595 ]
  %656 = add i32 %655, 128
  br label %778

657:                                              ; preds = %595
  %658 = load ptr, ptr %11, align 4
  %659 = load ptr, ptr %658, align 8
  %660 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %659, i32 0, i32 3
  %661 = load ptr, ptr %660, align 4
  %662 = shl i32 %652, 2
  tail call void %661(ptr noundef %658, i32 noundef %662, i32 noundef 1) #6
  %663 = load ptr, ptr %11, align 4
  %664 = load ptr, ptr %663, align 8
  %665 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %664, i32 0, i32 3
  %666 = load ptr, ptr %665, align 4
  %667 = load i32, ptr %9, align 4
  %668 = shl i32 %667, 2
  %669 = add i32 %668, 32
  tail call void %666(ptr noundef %663, i32 noundef %669, i32 noundef 1) #6
  %670 = load ptr, ptr %11, align 4
  %671 = load ptr, ptr %670, align 8
  %672 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %671, i32 0, i32 3
  %673 = load ptr, ptr %672, align 4
  %674 = load i32, ptr %9, align 4
  %675 = shl i32 %674, 2
  %676 = add i32 %675, 64
  tail call void %673(ptr noundef %670, i32 noundef %676, i32 noundef 1) #6
  %677 = load ptr, ptr %11, align 4
  %678 = load ptr, ptr %677, align 8
  %679 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %678, i32 0, i32 3
  %680 = load ptr, ptr %679, align 4
  %681 = load i32, ptr %9, align 4
  %682 = shl i32 %681, 2
  %683 = add i32 %682, 96
  tail call void %680(ptr noundef %677, i32 noundef %683, i32 noundef 1) #6
  %684 = load ptr, ptr %11, align 4
  %685 = load ptr, ptr %684, align 8
  %686 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %685, i32 0, i32 3
  %687 = load ptr, ptr %686, align 4
  %688 = load i32, ptr %9, align 4
  %689 = shl i32 %688, 2
  %690 = add i32 %689, 128
  tail call void %687(ptr noundef %684, i32 noundef %690, i32 noundef 1) #6
  %691 = load ptr, ptr %11, align 4
  %692 = load ptr, ptr %691, align 8
  %693 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %692, i32 0, i32 3
  %694 = load ptr, ptr %693, align 4
  %695 = load i32, ptr %9, align 4
  %696 = shl i32 %695, 2
  %697 = add i32 %696, 160
  tail call void %694(ptr noundef %691, i32 noundef %697, i32 noundef 1) #6
  %698 = load ptr, ptr %11, align 4
  %699 = load ptr, ptr %698, align 8
  %700 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %699, i32 0, i32 3
  %701 = load ptr, ptr %700, align 4
  %702 = load i32, ptr %9, align 4
  %703 = shl i32 %702, 2
  %704 = add i32 %703, 192
  tail call void %701(ptr noundef %698, i32 noundef %704, i32 noundef 1) #6
  %705 = load ptr, ptr %11, align 4
  %706 = load ptr, ptr %705, align 8
  %707 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %706, i32 0, i32 3
  %708 = load ptr, ptr %707, align 4
  %709 = load i32, ptr %9, align 4
  %710 = shl i32 %709, 2
  %711 = add i32 %710, 224
  tail call void %708(ptr noundef %705, i32 noundef %711, i32 noundef 1) #6
  %712 = load i32, ptr %10, align 4
  %713 = load i32, ptr %9, align 4
  %714 = add i32 %713, 64
  store i32 %714, ptr %9, align 4
  %715 = icmp eq i32 %712, 1
  br i1 %715, label %719, label %716

716:                                              ; preds = %657, %592
  %717 = phi i32 [ %593, %592 ], [ %713, %657 ]
  %718 = add i32 %717, 128
  br label %840

719:                                              ; preds = %657
  %720 = load ptr, ptr %11, align 4
  %721 = load ptr, ptr %720, align 8
  %722 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %721, i32 0, i32 3
  %723 = load ptr, ptr %722, align 4
  %724 = shl i32 %714, 2
  tail call void %723(ptr noundef %720, i32 noundef %724, i32 noundef 2) #6
  %725 = load ptr, ptr %11, align 4
  %726 = load ptr, ptr %725, align 8
  %727 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %726, i32 0, i32 3
  %728 = load ptr, ptr %727, align 4
  %729 = load i32, ptr %9, align 4
  %730 = shl i32 %729, 2
  %731 = add i32 %730, 32
  tail call void %728(ptr noundef %725, i32 noundef %731, i32 noundef 2) #6
  %732 = load ptr, ptr %11, align 4
  %733 = load ptr, ptr %732, align 8
  %734 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %733, i32 0, i32 3
  %735 = load ptr, ptr %734, align 4
  %736 = load i32, ptr %9, align 4
  %737 = shl i32 %736, 2
  %738 = add i32 %737, 64
  tail call void %735(ptr noundef %732, i32 noundef %738, i32 noundef 2) #6
  %739 = load ptr, ptr %11, align 4
  %740 = load ptr, ptr %739, align 8
  %741 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %740, i32 0, i32 3
  %742 = load ptr, ptr %741, align 4
  %743 = load i32, ptr %9, align 4
  %744 = shl i32 %743, 2
  %745 = add i32 %744, 96
  tail call void %742(ptr noundef %739, i32 noundef %745, i32 noundef 2) #6
  %746 = load ptr, ptr %11, align 4
  %747 = load ptr, ptr %746, align 8
  %748 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %747, i32 0, i32 3
  %749 = load ptr, ptr %748, align 4
  %750 = load i32, ptr %9, align 4
  %751 = shl i32 %750, 2
  %752 = add i32 %751, 128
  tail call void %749(ptr noundef %746, i32 noundef %752, i32 noundef 2) #6
  %753 = load ptr, ptr %11, align 4
  %754 = load ptr, ptr %753, align 8
  %755 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %754, i32 0, i32 3
  %756 = load ptr, ptr %755, align 4
  %757 = load i32, ptr %9, align 4
  %758 = shl i32 %757, 2
  %759 = add i32 %758, 160
  tail call void %756(ptr noundef %753, i32 noundef %759, i32 noundef 2) #6
  %760 = load ptr, ptr %11, align 4
  %761 = load ptr, ptr %760, align 8
  %762 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %761, i32 0, i32 3
  %763 = load ptr, ptr %762, align 4
  %764 = load i32, ptr %9, align 4
  %765 = shl i32 %764, 2
  %766 = add i32 %765, 192
  tail call void %763(ptr noundef %760, i32 noundef %766, i32 noundef 2) #6
  %767 = load ptr, ptr %11, align 4
  %768 = load ptr, ptr %767, align 8
  %769 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %768, i32 0, i32 3
  %770 = load ptr, ptr %769, align 4
  %771 = load i32, ptr %9, align 4
  %772 = shl i32 %771, 2
  %773 = add i32 %772, 224
  tail call void %770(ptr noundef %767, i32 noundef %773, i32 noundef 2) #6
  %774 = load i32, ptr %10, align 4
  %775 = load i32, ptr %9, align 4
  %776 = add i32 %775, 64
  store i32 %776, ptr %9, align 4
  %777 = icmp eq i32 %774, 1
  br i1 %777, label %781, label %778

778:                                              ; preds = %719, %654
  %779 = phi i32 [ %656, %654 ], [ %775, %719 ]
  %780 = add i32 %779, 192
  br label %958

781:                                              ; preds = %719
  %782 = load ptr, ptr %11, align 4
  %783 = load ptr, ptr %782, align 8
  %784 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %783, i32 0, i32 3
  %785 = load ptr, ptr %784, align 4
  %786 = shl i32 %776, 2
  tail call void %785(ptr noundef %782, i32 noundef %786, i32 noundef 1) #6
  %787 = load ptr, ptr %11, align 4
  %788 = load ptr, ptr %787, align 8
  %789 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %788, i32 0, i32 3
  %790 = load ptr, ptr %789, align 4
  %791 = load i32, ptr %9, align 4
  %792 = shl i32 %791, 2
  %793 = add i32 %792, 32
  tail call void %790(ptr noundef %787, i32 noundef %793, i32 noundef 1) #6
  %794 = load ptr, ptr %11, align 4
  %795 = load ptr, ptr %794, align 8
  %796 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %795, i32 0, i32 3
  %797 = load ptr, ptr %796, align 4
  %798 = load i32, ptr %9, align 4
  %799 = shl i32 %798, 2
  %800 = add i32 %799, 64
  tail call void %797(ptr noundef %794, i32 noundef %800, i32 noundef 1) #6
  %801 = load ptr, ptr %11, align 4
  %802 = load ptr, ptr %801, align 8
  %803 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %802, i32 0, i32 3
  %804 = load ptr, ptr %803, align 4
  %805 = load i32, ptr %9, align 4
  %806 = shl i32 %805, 2
  %807 = add i32 %806, 96
  tail call void %804(ptr noundef %801, i32 noundef %807, i32 noundef 1) #6
  %808 = load ptr, ptr %11, align 4
  %809 = load ptr, ptr %808, align 8
  %810 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %809, i32 0, i32 3
  %811 = load ptr, ptr %810, align 4
  %812 = load i32, ptr %9, align 4
  %813 = shl i32 %812, 2
  %814 = add i32 %813, 128
  tail call void %811(ptr noundef %808, i32 noundef %814, i32 noundef 1) #6
  %815 = load ptr, ptr %11, align 4
  %816 = load ptr, ptr %815, align 8
  %817 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %816, i32 0, i32 3
  %818 = load ptr, ptr %817, align 4
  %819 = load i32, ptr %9, align 4
  %820 = shl i32 %819, 2
  %821 = add i32 %820, 160
  tail call void %818(ptr noundef %815, i32 noundef %821, i32 noundef 1) #6
  %822 = load ptr, ptr %11, align 4
  %823 = load ptr, ptr %822, align 8
  %824 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %823, i32 0, i32 3
  %825 = load ptr, ptr %824, align 4
  %826 = load i32, ptr %9, align 4
  %827 = shl i32 %826, 2
  %828 = add i32 %827, 192
  tail call void %825(ptr noundef %822, i32 noundef %828, i32 noundef 1) #6
  %829 = load ptr, ptr %11, align 4
  %830 = load ptr, ptr %829, align 8
  %831 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %830, i32 0, i32 3
  %832 = load ptr, ptr %831, align 4
  %833 = load i32, ptr %9, align 4
  %834 = shl i32 %833, 2
  %835 = add i32 %834, 224
  tail call void %832(ptr noundef %829, i32 noundef %835, i32 noundef 1) #6
  %836 = load i32, ptr %10, align 4
  %837 = load i32, ptr %9, align 4
  %838 = add i32 %837, 64
  store i32 %838, ptr %9, align 4
  %839 = icmp eq i32 %836, 1
  br i1 %839, label %843, label %840

840:                                              ; preds = %781, %716
  %841 = phi i32 [ %718, %716 ], [ %837, %781 ]
  %842 = add i32 %841, 128
  br label %958

843:                                              ; preds = %781
  %844 = load ptr, ptr %11, align 4
  %845 = load ptr, ptr %844, align 8
  %846 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %845, i32 0, i32 3
  %847 = load ptr, ptr %846, align 4
  %848 = shl i32 %838, 2
  tail call void %847(ptr noundef %844, i32 noundef %848, i32 noundef 1) #6
  %849 = load ptr, ptr %11, align 4
  %850 = load ptr, ptr %849, align 8
  %851 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %850, i32 0, i32 3
  %852 = load ptr, ptr %851, align 4
  %853 = load i32, ptr %9, align 4
  %854 = shl i32 %853, 2
  %855 = add i32 %854, 32
  tail call void %852(ptr noundef %849, i32 noundef %855, i32 noundef 1) #6
  %856 = load ptr, ptr %11, align 4
  %857 = load ptr, ptr %856, align 8
  %858 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %857, i32 0, i32 3
  %859 = load ptr, ptr %858, align 4
  %860 = load i32, ptr %9, align 4
  %861 = shl i32 %860, 2
  %862 = add i32 %861, 64
  tail call void %859(ptr noundef %856, i32 noundef %862, i32 noundef 1) #6
  %863 = load ptr, ptr %11, align 4
  %864 = load ptr, ptr %863, align 8
  %865 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %864, i32 0, i32 3
  %866 = load ptr, ptr %865, align 4
  %867 = load i32, ptr %9, align 4
  %868 = shl i32 %867, 2
  %869 = add i32 %868, 96
  tail call void %866(ptr noundef %863, i32 noundef %869, i32 noundef 1) #6
  %870 = load ptr, ptr %11, align 4
  %871 = load ptr, ptr %870, align 8
  %872 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %871, i32 0, i32 3
  %873 = load ptr, ptr %872, align 4
  %874 = load i32, ptr %9, align 4
  %875 = shl i32 %874, 2
  %876 = add i32 %875, 128
  tail call void %873(ptr noundef %870, i32 noundef %876, i32 noundef 1) #6
  %877 = load ptr, ptr %11, align 4
  %878 = load ptr, ptr %877, align 8
  %879 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %878, i32 0, i32 3
  %880 = load ptr, ptr %879, align 4
  %881 = load i32, ptr %9, align 4
  %882 = shl i32 %881, 2
  %883 = add i32 %882, 160
  tail call void %880(ptr noundef %877, i32 noundef %883, i32 noundef 1) #6
  %884 = load ptr, ptr %11, align 4
  %885 = load ptr, ptr %884, align 8
  %886 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %885, i32 0, i32 3
  %887 = load ptr, ptr %886, align 4
  %888 = load i32, ptr %9, align 4
  %889 = shl i32 %888, 2
  %890 = add i32 %889, 192
  tail call void %887(ptr noundef %884, i32 noundef %890, i32 noundef 1) #6
  %891 = load ptr, ptr %11, align 4
  %892 = load ptr, ptr %891, align 8
  %893 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %892, i32 0, i32 3
  %894 = load ptr, ptr %893, align 4
  %895 = load i32, ptr %9, align 4
  %896 = shl i32 %895, 2
  %897 = add i32 %896, 224
  tail call void %894(ptr noundef %891, i32 noundef %897, i32 noundef 1) #6
  %898 = load i32, ptr %10, align 4
  %899 = load i32, ptr %9, align 4
  %900 = add i32 %899, 64
  store i32 %900, ptr %9, align 4
  %901 = icmp eq i32 %898, 1
  br i1 %901, label %902, label %958

902:                                              ; preds = %843
  %903 = load ptr, ptr %11, align 4
  %904 = load ptr, ptr %903, align 8
  %905 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %904, i32 0, i32 3
  %906 = load ptr, ptr %905, align 4
  %907 = shl i32 %900, 2
  tail call void %906(ptr noundef %903, i32 noundef %907, i32 noundef 1) #6
  %908 = load ptr, ptr %11, align 4
  %909 = load ptr, ptr %908, align 8
  %910 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %909, i32 0, i32 3
  %911 = load ptr, ptr %910, align 4
  %912 = load i32, ptr %9, align 4
  %913 = shl i32 %912, 2
  %914 = add i32 %913, 32
  tail call void %911(ptr noundef %908, i32 noundef %914, i32 noundef 1) #6
  %915 = load ptr, ptr %11, align 4
  %916 = load ptr, ptr %915, align 8
  %917 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %916, i32 0, i32 3
  %918 = load ptr, ptr %917, align 4
  %919 = load i32, ptr %9, align 4
  %920 = shl i32 %919, 2
  %921 = add i32 %920, 64
  tail call void %918(ptr noundef %915, i32 noundef %921, i32 noundef 1) #6
  %922 = load ptr, ptr %11, align 4
  %923 = load ptr, ptr %922, align 8
  %924 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %923, i32 0, i32 3
  %925 = load ptr, ptr %924, align 4
  %926 = load i32, ptr %9, align 4
  %927 = shl i32 %926, 2
  %928 = add i32 %927, 96
  tail call void %925(ptr noundef %922, i32 noundef %928, i32 noundef 1) #6
  %929 = load ptr, ptr %11, align 4
  %930 = load ptr, ptr %929, align 8
  %931 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %930, i32 0, i32 3
  %932 = load ptr, ptr %931, align 4
  %933 = load i32, ptr %9, align 4
  %934 = shl i32 %933, 2
  %935 = add i32 %934, 128
  tail call void %932(ptr noundef %929, i32 noundef %935, i32 noundef 1) #6
  %936 = load ptr, ptr %11, align 4
  %937 = load ptr, ptr %936, align 8
  %938 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %937, i32 0, i32 3
  %939 = load ptr, ptr %938, align 4
  %940 = load i32, ptr %9, align 4
  %941 = shl i32 %940, 2
  %942 = add i32 %941, 160
  tail call void %939(ptr noundef %936, i32 noundef %942, i32 noundef 1) #6
  %943 = load ptr, ptr %11, align 4
  %944 = load ptr, ptr %943, align 8
  %945 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %944, i32 0, i32 3
  %946 = load ptr, ptr %945, align 4
  %947 = load i32, ptr %9, align 4
  %948 = shl i32 %947, 2
  %949 = add i32 %948, 192
  tail call void %946(ptr noundef %943, i32 noundef %949, i32 noundef 1) #6
  %950 = load ptr, ptr %11, align 4
  %951 = load ptr, ptr %950, align 8
  %952 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %951, i32 0, i32 3
  %953 = load ptr, ptr %952, align 4
  %954 = load i32, ptr %9, align 4
  %955 = shl i32 %954, 2
  %956 = add i32 %955, 224
  tail call void %953(ptr noundef %950, i32 noundef %956, i32 noundef 1) #6
  %957 = load i32, ptr %9, align 4
  br label %958

958:                                              ; preds = %902, %843, %840, %778
  %959 = phi i32 [ %957, %902 ], [ %842, %840 ], [ %900, %843 ], [ %780, %778 ]
  %960 = add i32 %959, 80
  br label %961

961:                                              ; preds = %958, %518
  %962 = phi i32 [ %520, %518 ], [ %960, %958 ]
  %963 = add i32 %962, 8
  store i32 %963, ptr %9, align 4
  %964 = load i32, ptr %10, align 4
  %965 = icmp eq i32 %964, 1
  br i1 %965, label %966, label %973

966:                                              ; preds = %961
  %967 = load ptr, ptr %11, align 4
  %968 = load ptr, ptr %967, align 8
  %969 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %968, i32 0, i32 3
  %970 = load ptr, ptr %969, align 4
  %971 = shl i32 %963, 2
  tail call void %970(ptr noundef %967, i32 noundef %971, i32 noundef 4) #6
  %972 = load i32, ptr %9, align 4
  br label %973

973:                                              ; preds = %966, %961
  %974 = phi i32 [ %972, %966 ], [ %963, %961 ]
  %975 = add i32 %974, 8
  store i32 %975, ptr %9, align 4
  %976 = load i32, ptr %3, align 4
  %977 = icmp eq i32 %976, 80
  br i1 %977, label %985, label %978

978:                                              ; preds = %973
  %979 = icmp ult i32 %976, 148
  br i1 %979, label %985, label %980

980:                                              ; preds = %978
  %981 = icmp eq i32 %976, 152
  %982 = icmp eq i32 %976, 170
  %983 = or i1 %981, %982
  %984 = select i1 %983, i32 7424, i32 7456
  br label %985

985:                                              ; preds = %980, %978, %973
  %986 = phi i32 [ 7432, %973 ], [ 7448, %978 ], [ %984, %980 ]
  %987 = add i32 %974, %986
  store i32 %987, ptr %9, align 4
  %988 = load i32, ptr %10, align 4
  %989 = icmp eq i32 %988, 1
  br i1 %989, label %992, label %990

990:                                              ; preds = %985
  %991 = add i32 %987, 16
  br label %1009

992:                                              ; preds = %985
  %993 = load ptr, ptr %11, align 4
  %994 = load ptr, ptr %993, align 8
  %995 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %994, i32 0, i32 3
  %996 = load ptr, ptr %995, align 4
  %997 = shl i32 %987, 2
  tail call void %996(ptr noundef %993, i32 noundef %997, i32 noundef 17) #6
  %998 = load i32, ptr %10, align 4
  %999 = load i32, ptr %9, align 4
  %1000 = add i32 %999, 16
  store i32 %1000, ptr %9, align 4
  %1001 = icmp eq i32 %998, 1
  br i1 %1001, label %1002, label %1009

1002:                                             ; preds = %992
  %1003 = load ptr, ptr %11, align 4
  %1004 = load ptr, ptr %1003, align 8
  %1005 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1004, i32 0, i32 3
  %1006 = load ptr, ptr %1005, align 4
  %1007 = shl i32 %1000, 2
  tail call void %1006(ptr noundef %1003, i32 noundef %1007, i32 noundef 1) #6
  %1008 = load i32, ptr %9, align 4
  br label %1009

1009:                                             ; preds = %1002, %992, %990
  %1010 = phi i32 [ %1008, %1002 ], [ %991, %990 ], [ %1000, %992 ]
  %1011 = add i32 %1010, 368
  store i32 %1011, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

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
!9 = !{i64 2154840569, i64 2154841081, i64 2154840606, i64 2154840662, i64 2154840696, i64 2154840720, i64 2154840761, i64 2154840782, i64 2154840810, i64 2154840844}
!10 = !{i64 4064074}
!11 = !{i64 2151603527}
!12 = !{i64 2151604749}
!13 = !{i64 4063656}
