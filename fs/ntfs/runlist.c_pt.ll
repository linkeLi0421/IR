; ModuleID = '/llk/IR/fs/ntfs/runlist.c_pt.bc'
source_filename = "../fs/ntfs/runlist.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.runlist_element = type { i64, i64, i64 }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.67 }
%union.anon.67 = type { %struct.anon.69 }
%struct.anon.69 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }

@__func__.ntfs_runlists_merge = private unnamed_addr constant [20 x i8] c"ntfs_runlists_merge\00", align 1
@.str = private unnamed_addr constant [33 x i8] c"Run lists overlap. Cannot merge!\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Merge failed.\00", align 1
@__func__.ntfs_mapping_pairs_decompress = private unnamed_addr constant [30 x i8] c"ntfs_mapping_pairs_decompress\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Corrupt attribute.\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Missing length entry in mapping pairs array.\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Invalid length in mapping pairs array.\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Invalid LCN < -1 in mapping pairs array.\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Corrupt mapping pairs array in non-resident attribute.\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Corrupt attribute.  deltaxcn = 0x%llx, max_cluster = 0x%llx\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Failed to merge runlists.\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ntfs_runlists_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %766, label %4, !prof !8

4:                                                ; preds = %2
  %5 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %6, %5
  br i1 %7, label %766, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %0, null
  br i1 %9, label %18, label %10, !prof !8

10:                                               ; preds = %8
  %11 = getelementptr %struct.runlist_element, ptr %1, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %60, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.runlist_element, ptr %1, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = icmp slt i64 %16, -1
  br i1 %17, label %54, label %45

18:                                               ; preds = %8
  %19 = load i64, ptr %1, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %766, label %21, !prof !9

21:                                               ; preds = %21, %18
  %22 = phi i32 [ %26, %21 ], [ 0, %18 ]
  %23 = getelementptr %struct.runlist_element, ptr %1, i32 %22, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = add i32 %22, 1
  br i1 %25, label %27, label %21, !prof !8

27:                                               ; preds = %21
  %28 = add i32 %22, 2
  %29 = tail call fastcc ptr @ntfs_rl_realloc(ptr noundef nonnull %1, i32 noundef %26, i32 noundef %28)
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %766, label %31

31:                                               ; preds = %27
  %32 = icmp ult i32 %22, 2147483647
  br i1 %32, label %33, label %36, !prof !9

33:                                               ; preds = %31
  %34 = getelementptr %struct.runlist_element, ptr %29, i32 1
  %35 = mul i32 %26, 24
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %34, ptr align 8 %29, i32 %35, i1 false) #6
  br label %36

36:                                               ; preds = %33, %31
  store i64 0, ptr %29, align 8
  %37 = getelementptr inbounds %struct.runlist_element, ptr %29, i32 0, i32 1
  store i64 -2, ptr %37, align 8
  %38 = getelementptr %struct.runlist_element, ptr %29, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.runlist_element, ptr %29, i32 0, i32 2
  store i64 %39, ptr %40, align 8
  br label %766

41:                                               ; preds = %54
  %42 = getelementptr %struct.runlist_element, ptr %1, i32 %56, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = icmp slt i64 %43, -1
  br i1 %44, label %54, label %45

45:                                               ; preds = %41, %14
  %46 = phi i64 [ %12, %14 ], [ %58, %41 ]
  %47 = phi i32 [ 0, %14 ], [ %56, %41 ]
  %48 = phi i64 [ %16, %14 ], [ %43, %41 ]
  %49 = getelementptr %struct.runlist_element, ptr %1, i32 %47
  %50 = getelementptr %struct.runlist_element, ptr %0, i32 0, i32 2
  %51 = load i64, ptr %50, align 8
  %52 = icmp eq i64 %51, 0
  %53 = load i64, ptr %49, align 8
  br i1 %52, label %79, label %61

54:                                               ; preds = %41, %14
  %55 = phi i32 [ %56, %41 ], [ 0, %14 ]
  %56 = add i32 %55, 1
  %57 = getelementptr %struct.runlist_element, ptr %1, i32 %56, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %41

60:                                               ; preds = %54, %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 570, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

61:                                               ; preds = %68, %45
  %62 = phi i64 [ %72, %68 ], [ %51, %45 ]
  %63 = phi ptr [ %70, %68 ], [ %0, %45 ]
  %64 = phi i32 [ %69, %68 ], [ 0, %45 ]
  %65 = load i64, ptr %63, align 8
  %66 = add i64 %65, %62
  %67 = icmp sgt i64 %66, %53
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  %69 = add i32 %64, 1
  %70 = getelementptr %struct.runlist_element, ptr %0, i32 %69
  %71 = getelementptr %struct.runlist_element, ptr %0, i32 %69, i32 2
  %72 = load i64, ptr %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %61

74:                                               ; preds = %68, %61
  %75 = phi i32 [ %69, %68 ], [ %64, %61 ]
  %76 = phi ptr [ %70, %68 ], [ %63, %61 ]
  %77 = phi i64 [ 0, %68 ], [ %62, %61 ]
  %78 = xor i1 %67, true
  br label %79

79:                                               ; preds = %74, %45
  %80 = phi i32 [ %75, %74 ], [ 0, %45 ]
  %81 = phi ptr [ %76, %74 ], [ %0, %45 ]
  %82 = phi i64 [ %77, %74 ], [ 0, %45 ]
  %83 = phi i1 [ %78, %74 ], [ true, %45 ]
  %84 = load i64, ptr %81, align 8
  %85 = icmp eq i64 %84, %53
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = getelementptr %struct.runlist_element, ptr %0, i32 %80, i32 1
  %88 = load i64, ptr %87, align 8
  %89 = icmp sgt i64 %88, -1
  %90 = icmp sgt i64 %48, -1
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %93, label %92

92:                                               ; preds = %86, %79
  br label %94

93:                                               ; preds = %86
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_runlists_merge, ptr noundef null, ptr noundef nonnull @.str) #6
  br label %766

94:                                               ; preds = %94, %92
  %95 = phi i32 [ %96, %94 ], [ %47, %92 ]
  %96 = add i32 %95, 1
  %97 = getelementptr %struct.runlist_element, ptr %1, i32 %96, i32 2
  %98 = load i64, ptr %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %94

100:                                              ; preds = %100, %94
  %101 = phi i32 [ %105, %100 ], [ %80, %94 ]
  %102 = getelementptr %struct.runlist_element, ptr %0, i32 %101, i32 2
  %103 = load i64, ptr %102, align 8
  %104 = icmp eq i64 %103, 0
  %105 = add i32 %101, 1
  br i1 %104, label %106, label %100

106:                                              ; preds = %100
  %107 = getelementptr %struct.runlist_element, ptr %1, i32 %96, i32 1
  %108 = load i64, ptr %107, align 8
  %109 = icmp eq i64 %108, -3
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = getelementptr %struct.runlist_element, ptr %1, i32 %96
  %112 = load i64, ptr %111, align 8
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i32 [ %96, %110 ], [ 0, %106 ]
  %115 = phi i64 [ %112, %110 ], [ 0, %106 ]
  %116 = icmp sgt i32 %96, -1
  %117 = icmp slt i64 %108, -1
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %127

119:                                              ; preds = %122, %113
  %120 = phi i32 [ %123, %122 ], [ %96, %113 ]
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = add nsw i32 %120, -1
  %124 = getelementptr %struct.runlist_element, ptr %1, i32 %123, i32 1
  %125 = load i64, ptr %124, align 8
  %126 = icmp slt i64 %125, -1
  br i1 %126, label %119, label %127

127:                                              ; preds = %122, %119, %113
  %128 = phi i32 [ %96, %113 ], [ -1, %119 ], [ %123, %122 ]
  %129 = sub i32 %128, %47
  %130 = add i32 %129, 1
  %131 = getelementptr %struct.runlist_element, ptr %0, i32 %80, i32 1
  %132 = load i64, ptr %131, align 8
  %133 = icmp slt i64 %132, -2
  br i1 %133, label %145, label %134

134:                                              ; preds = %127
  %135 = add i64 %84, %82
  %136 = getelementptr %struct.runlist_element, ptr %1, i32 %95
  %137 = load i64, ptr %136, align 8
  %138 = getelementptr %struct.runlist_element, ptr %1, i32 %95, i32 2
  %139 = load i64, ptr %138, align 8
  %140 = add i64 %139, %137
  %141 = icmp sgt i64 %135, %140
  br i1 %141, label %145, label %142

142:                                              ; preds = %134
  %143 = add i32 %129, 2
  %144 = select i1 %83, i32 %143, i32 %130
  br label %145

145:                                              ; preds = %142, %134, %127
  %146 = phi i1 [ false, %134 ], [ true, %142 ], [ false, %127 ]
  %147 = phi i1 [ %85, %134 ], [ %85, %142 ], [ true, %127 ]
  %148 = phi i32 [ %130, %134 ], [ %144, %142 ], [ %130, %127 ]
  %149 = icmp eq i32 %114, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %145
  %151 = add i64 %84, %82
  %152 = getelementptr %struct.runlist_element, ptr %1, i32 %95
  %153 = load i64, ptr %152, align 8
  %154 = icmp sle i64 %151, %153
  %155 = and i1 %146, %154
  br label %156

156:                                              ; preds = %150, %145
  %157 = phi i1 [ %146, %145 ], [ %155, %150 ]
  %158 = icmp eq ptr %49, null
  br i1 %147, label %159, label %500

159:                                              ; preds = %156
  br i1 %157, label %160, label %339

160:                                              ; preds = %159
  br i1 %158, label %161, label %162, !prof !8

161:                                              ; preds = %160
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 377, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

162:                                              ; preds = %160
  %163 = add i32 %80, 1
  %164 = icmp slt i32 %163, %105
  br i1 %164, label %165, label %205

165:                                              ; preds = %162
  %166 = getelementptr %struct.runlist_element, ptr %49, i32 %148
  %167 = getelementptr %struct.runlist_element, ptr %166, i32 -1
  %168 = getelementptr %struct.runlist_element, ptr %81, i32 1
  %169 = icmp eq ptr %167, null
  br i1 %169, label %170, label %171, !prof !8

170:                                              ; preds = %165
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

171:                                              ; preds = %165
  %172 = icmp eq ptr %168, null
  br i1 %172, label %173, label %174, !prof !8

173:                                              ; preds = %171
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.runlist_element, ptr %167, i32 0, i32 1
  %176 = load i64, ptr %175, align 8
  %177 = icmp eq i64 %176, -2
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = getelementptr %struct.runlist_element, ptr %81, i32 1, i32 1
  %180 = load i64, ptr %179, align 8
  %181 = icmp eq i64 %180, -2
  br i1 %181, label %205, label %182

182:                                              ; preds = %178, %174
  %183 = load i64, ptr %167, align 8
  %184 = getelementptr inbounds %struct.runlist_element, ptr %167, i32 0, i32 2
  %185 = load i64, ptr %184, align 8
  %186 = add i64 %185, %183
  %187 = load i64, ptr %168, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %182
  %190 = icmp sgt i64 %176, -1
  br i1 %190, label %191, label %198

191:                                              ; preds = %189
  %192 = getelementptr %struct.runlist_element, ptr %81, i32 1, i32 1
  %193 = load i64, ptr %192, align 8
  %194 = icmp sgt i64 %193, -1
  %195 = add i64 %185, %176
  %196 = icmp eq i64 %195, %193
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %205, label %204

198:                                              ; preds = %189
  %199 = icmp eq i64 %176, -1
  br i1 %199, label %200, label %204

200:                                              ; preds = %198
  %201 = getelementptr %struct.runlist_element, ptr %81, i32 1, i32 1
  %202 = load i64, ptr %201, align 8
  %203 = icmp eq i64 %202, -1
  br i1 %203, label %205, label %204

204:                                              ; preds = %200, %198, %191
  br label %205

205:                                              ; preds = %204, %200, %191, %182, %178, %162
  %206 = phi i1 [ false, %162 ], [ false, %204 ], [ true, %178 ], [ false, %182 ], [ true, %191 ], [ true, %200 ]
  %207 = icmp sgt i32 %80, 0
  br i1 %207, label %208, label %242

208:                                              ; preds = %205
  %209 = getelementptr %struct.runlist_element, ptr %81, i32 -1
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %212, !prof !8

211:                                              ; preds = %208
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

212:                                              ; preds = %208
  %213 = getelementptr %struct.runlist_element, ptr %81, i32 -1, i32 1
  %214 = load i64, ptr %213, align 8
  %215 = icmp eq i64 %214, -2
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = icmp eq i64 %48, -2
  br i1 %217, label %242, label %224

218:                                              ; preds = %212
  %219 = load i64, ptr %209, align 8
  %220 = getelementptr %struct.runlist_element, ptr %81, i32 -1, i32 2
  %221 = load i64, ptr %220, align 8
  %222 = add i64 %221, %219
  %223 = icmp eq i64 %222, %53
  br i1 %223, label %230, label %242

224:                                              ; preds = %216
  %225 = load i64, ptr %209, align 8
  %226 = getelementptr %struct.runlist_element, ptr %81, i32 -1, i32 2
  %227 = load i64, ptr %226, align 8
  %228 = add i64 %227, %225
  %229 = icmp eq i64 %228, %53
  br i1 %229, label %241, label %242

230:                                              ; preds = %218
  %231 = icmp sgt i64 %214, -1
  br i1 %231, label %232, label %237

232:                                              ; preds = %230
  %233 = icmp sgt i64 %48, -1
  %234 = add i64 %221, %214
  %235 = icmp eq i64 %234, %48
  %236 = select i1 %233, i1 %235, i1 false
  br i1 %236, label %242, label %241

237:                                              ; preds = %230
  %238 = icmp eq i64 %214, -1
  %239 = icmp eq i64 %48, -1
  %240 = select i1 %238, i1 %239, i1 false
  br i1 %240, label %242, label %241

241:                                              ; preds = %237, %232, %224
  br label %242

242:                                              ; preds = %241, %237, %232, %224, %218, %216, %205
  %243 = phi i1 [ false, %205 ], [ false, %241 ], [ true, %216 ], [ false, %218 ], [ true, %232 ], [ false, %224 ], [ true, %237 ]
  %244 = sext i1 %243 to i32
  %245 = zext i1 %243 to i32
  %246 = xor i32 %245, -1
  %247 = sext i1 %206 to i32
  %248 = zext i1 %206 to i32
  %249 = add i32 %148, %247
  %250 = add i32 %249, %246
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %286

252:                                              ; preds = %242
  %253 = add i32 %250, %105
  %254 = mul i32 %105, 24
  %255 = add i32 %254, 4095
  %256 = and i32 %255, -4096
  %257 = mul i32 %253, 24
  %258 = add i32 %257, 4095
  %259 = and i32 %258, -4096
  %260 = icmp eq i32 %256, %259
  br i1 %260, label %283, label %261

261:                                              ; preds = %252
  %262 = icmp ult i32 %259, 4097
  br i1 %262, label %263, label %269, !prof !9

263:                                              ; preds = %261
  %264 = icmp eq i32 %259, 0
  br i1 %264, label %265, label %266, !prof !8

265:                                              ; preds = %263
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

266:                                              ; preds = %263
  %267 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %268 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %267, i32 noundef 3136, i32 noundef 4096) #7
  br label %275

269:                                              ; preds = %261
  %270 = lshr i32 %258, 12
  %271 = load volatile i32, ptr @_totalram_pages, align 4
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %273, label %764, !prof !9

273:                                              ; preds = %269
  %274 = tail call noalias ptr @__vmalloc(i32 noundef %259, i32 noundef 3138) #8
  br label %275

275:                                              ; preds = %273, %266
  %276 = phi ptr [ %268, %266 ], [ %274, %273 ]
  %277 = icmp eq ptr %276, null
  br i1 %277, label %764, label %278, !prof !8

278:                                              ; preds = %275
  %279 = icmp sgt i32 %256, %259
  br i1 %279, label %280, label %281, !prof !8

280:                                              ; preds = %278
  br label %281

281:                                              ; preds = %280, %278
  %282 = phi i32 [ %259, %280 ], [ %256, %278 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %276, ptr nonnull align 8 %0, i32 %282, i1 false) #6
  tail call void @kvfree(ptr noundef nonnull %0) #6
  br label %283

283:                                              ; preds = %281, %252
  %284 = phi ptr [ %0, %252 ], [ %276, %281 ]
  %285 = icmp ugt ptr %284, inttoptr (i32 -4096 to ptr)
  br i1 %285, label %701, label %286

286:                                              ; preds = %283, %242
  %287 = phi ptr [ %284, %283 ], [ %0, %242 ]
  br i1 %206, label %288, label %298

288:                                              ; preds = %286
  %289 = getelementptr %struct.runlist_element, ptr %49, i32 %148
  %290 = getelementptr %struct.runlist_element, ptr %289, i32 -1
  %291 = getelementptr %struct.runlist_element, ptr %287, i32 %80
  %292 = getelementptr %struct.runlist_element, ptr %291, i32 1
  %293 = getelementptr inbounds %struct.runlist_element, ptr %292, i32 0, i32 2
  %294 = load i64, ptr %293, align 8
  %295 = getelementptr inbounds %struct.runlist_element, ptr %290, i32 0, i32 2
  %296 = load i64, ptr %295, align 8
  %297 = add i64 %296, %294
  store i64 %297, ptr %295, align 8
  br label %298

298:                                              ; preds = %288, %286
  br i1 %243, label %299, label %307

299:                                              ; preds = %298
  %300 = getelementptr %struct.runlist_element, ptr %287, i32 %80
  %301 = getelementptr %struct.runlist_element, ptr %300, i32 -1
  %302 = getelementptr %struct.runlist_element, ptr %1, i32 %47, i32 2
  %303 = load i64, ptr %302, align 8
  %304 = getelementptr inbounds %struct.runlist_element, ptr %301, i32 0, i32 2
  %305 = load i64, ptr %304, align 8
  %306 = add i64 %305, %303
  store i64 %306, ptr %304, align 8
  br label %307

307:                                              ; preds = %299, %298
  %308 = add i32 %163, %248
  %309 = add i32 %148, %80
  %310 = add i32 %309, %244
  %311 = sub i32 %105, %308
  %312 = icmp ne i32 %310, %308
  %313 = icmp sgt i32 %311, 0
  %314 = and i1 %313, %312
  br i1 %314, label %315, label %319, !prof !9

315:                                              ; preds = %307
  %316 = getelementptr %struct.runlist_element, ptr %287, i32 %310
  %317 = getelementptr %struct.runlist_element, ptr %287, i32 %308
  %318 = mul i32 %311, 24
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %316, ptr align 8 %317, i32 %318, i1 false) #6
  br label %319

319:                                              ; preds = %315, %307
  %320 = sub i32 %148, %245
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %326, !prof !9

322:                                              ; preds = %319
  %323 = getelementptr %struct.runlist_element, ptr %287, i32 %80
  %324 = getelementptr %struct.runlist_element, ptr %49, i32 %245
  %325 = mul i32 %320, 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %323, ptr align 8 %324, i32 %325, i1 false) #6
  br label %326

326:                                              ; preds = %322, %319
  br i1 %313, label %327, label %701

327:                                              ; preds = %326
  %328 = getelementptr %struct.runlist_element, ptr %287, i32 %310, i32 1
  %329 = load i64, ptr %328, align 8
  %330 = icmp eq i64 %329, -3
  br i1 %330, label %331, label %701

331:                                              ; preds = %327
  %332 = getelementptr %struct.runlist_element, ptr %287, i32 %310
  %333 = add i32 %310, -1
  %334 = getelementptr %struct.runlist_element, ptr %287, i32 %333
  %335 = load i64, ptr %334, align 8
  %336 = getelementptr %struct.runlist_element, ptr %287, i32 %333, i32 2
  %337 = load i64, ptr %336, align 8
  %338 = add i64 %337, %335
  store i64 %338, ptr %332, align 8
  br label %701

339:                                              ; preds = %159
  br i1 %158, label %340, label %341, !prof !8

340:                                              ; preds = %339
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

341:                                              ; preds = %339
  %342 = icmp eq i32 %80, 0
  br i1 %342, label %388, label %343

343:                                              ; preds = %341
  %344 = getelementptr %struct.runlist_element, ptr %81, i32 -1
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %347, !prof !8

346:                                              ; preds = %343
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

347:                                              ; preds = %343
  %348 = getelementptr %struct.runlist_element, ptr %81, i32 -1, i32 1
  %349 = load i64, ptr %348, align 8
  %350 = icmp eq i64 %349, -2
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = icmp eq i64 %48, -2
  br i1 %352, label %376, label %359

353:                                              ; preds = %347
  %354 = load i64, ptr %344, align 8
  %355 = getelementptr %struct.runlist_element, ptr %81, i32 -1, i32 2
  %356 = load i64, ptr %355, align 8
  %357 = add i64 %356, %354
  %358 = icmp eq i64 %357, %53
  br i1 %358, label %362, label %373

359:                                              ; preds = %351
  %360 = getelementptr %struct.runlist_element, ptr %81, i32 -1, i32 2
  %361 = load i64, ptr %360, align 8
  br label %373

362:                                              ; preds = %353
  %363 = icmp sgt i64 %349, -1
  br i1 %363, label %364, label %369

364:                                              ; preds = %362
  %365 = icmp sgt i64 %48, -1
  %366 = add i64 %356, %349
  %367 = icmp eq i64 %366, %48
  %368 = select i1 %365, i1 %367, i1 false
  br i1 %368, label %376, label %373

369:                                              ; preds = %362
  %370 = icmp eq i64 %349, -1
  %371 = icmp eq i64 %48, -1
  %372 = select i1 %370, i1 %371, i1 false
  br i1 %372, label %376, label %373

373:                                              ; preds = %369, %364, %359, %353
  %374 = phi i64 [ %356, %369 ], [ %356, %364 ], [ %356, %353 ], [ %361, %359 ]
  %375 = add i32 %80, -1
  br label %381

376:                                              ; preds = %369, %364, %351
  %377 = add i32 %80, -1
  %378 = getelementptr %struct.runlist_element, ptr %0, i32 %377, i32 2
  %379 = load i64, ptr %378, align 8
  %380 = add i64 %46, %379
  br label %381

381:                                              ; preds = %376, %373
  %382 = phi i32 [ %377, %376 ], [ %375, %373 ]
  %383 = phi i1 [ true, %376 ], [ false, %373 ]
  %384 = phi i64 [ %380, %376 ], [ %374, %373 ]
  %385 = getelementptr %struct.runlist_element, ptr %0, i32 %382
  %386 = load i64, ptr %385, align 8
  %387 = add i64 %386, %384
  br label %388

388:                                              ; preds = %381, %341
  %389 = phi i64 [ %387, %381 ], [ 0, %341 ]
  %390 = phi i1 [ %383, %381 ], [ false, %341 ]
  %391 = icmp sgt i64 %53, %389
  %392 = add i32 %148, %105
  %393 = sext i1 %390 to i32
  %394 = zext i1 %390 to i32
  %395 = add i32 %392, %393
  %396 = zext i1 %391 to i32
  %397 = add i32 %395, %396
  %398 = mul i32 %105, 24
  %399 = add i32 %398, 4095
  %400 = and i32 %399, -4096
  %401 = mul i32 %397, 24
  %402 = add i32 %401, 4095
  %403 = and i32 %402, -4096
  %404 = icmp eq i32 %400, %403
  br i1 %404, label %427, label %405

405:                                              ; preds = %388
  %406 = icmp ult i32 %403, 4097
  br i1 %406, label %407, label %413, !prof !9

407:                                              ; preds = %405
  %408 = icmp eq i32 %403, 0
  br i1 %408, label %409, label %410, !prof !8

409:                                              ; preds = %407
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

410:                                              ; preds = %407
  %411 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %412 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %411, i32 noundef 3136, i32 noundef 4096) #7
  br label %419

413:                                              ; preds = %405
  %414 = lshr i32 %402, 12
  %415 = load volatile i32, ptr @_totalram_pages, align 4
  %416 = icmp ult i32 %414, %415
  br i1 %416, label %417, label %764, !prof !9

417:                                              ; preds = %413
  %418 = tail call noalias ptr @__vmalloc(i32 noundef %403, i32 noundef 3138) #8
  br label %419

419:                                              ; preds = %417, %410
  %420 = phi ptr [ %412, %410 ], [ %418, %417 ]
  %421 = icmp eq ptr %420, null
  br i1 %421, label %764, label %422, !prof !8

422:                                              ; preds = %419
  %423 = icmp sgt i32 %400, %403
  br i1 %423, label %424, label %425, !prof !8

424:                                              ; preds = %422
  br label %425

425:                                              ; preds = %424, %422
  %426 = phi i32 [ %403, %424 ], [ %400, %422 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %420, ptr nonnull align 8 %0, i32 %426, i1 false) #6
  tail call void @kvfree(ptr noundef nonnull %0) #6
  br label %427

427:                                              ; preds = %425, %388
  %428 = phi ptr [ %0, %388 ], [ %420, %425 ]
  %429 = icmp ugt ptr %428, inttoptr (i32 -4096 to ptr)
  br i1 %429, label %701, label %430

430:                                              ; preds = %427
  br i1 %390, label %431, label %439

431:                                              ; preds = %430
  %432 = getelementptr %struct.runlist_element, ptr %428, i32 %80
  %433 = getelementptr %struct.runlist_element, ptr %432, i32 -1
  %434 = getelementptr %struct.runlist_element, ptr %1, i32 %47, i32 2
  %435 = load i64, ptr %434, align 8
  %436 = getelementptr inbounds %struct.runlist_element, ptr %433, i32 0, i32 2
  %437 = load i64, ptr %436, align 8
  %438 = add i64 %437, %435
  store i64 %438, ptr %436, align 8
  br label %439

439:                                              ; preds = %431, %430
  %440 = add i32 %148, %80
  %441 = add i32 %440, %393
  %442 = add i32 %441, %396
  %443 = sub i32 %105, %80
  %444 = icmp ne i32 %442, %80
  %445 = icmp sgt i32 %443, 0
  %446 = and i1 %445, %444
  br i1 %446, label %447, label %451, !prof !9

447:                                              ; preds = %439
  %448 = getelementptr %struct.runlist_element, ptr %428, i32 %442
  %449 = getelementptr %struct.runlist_element, ptr %428, i32 %80
  %450 = mul i32 %443, 24
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %448, ptr align 8 %449, i32 %450, i1 false) #6
  br label %451

451:                                              ; preds = %447, %439
  %452 = sub i32 %148, %394
  %453 = icmp sgt i32 %452, 0
  br i1 %453, label %454, label %459, !prof !9

454:                                              ; preds = %451
  %455 = add i32 %80, %396
  %456 = getelementptr %struct.runlist_element, ptr %428, i32 %455
  %457 = getelementptr %struct.runlist_element, ptr %49, i32 %394
  %458 = mul i32 %452, 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %456, ptr align 8 %457, i32 %458, i1 false) #6
  br label %459

459:                                              ; preds = %454, %451
  %460 = add i32 %442, -1
  %461 = getelementptr %struct.runlist_element, ptr %428, i32 %460
  %462 = load i64, ptr %461, align 8
  %463 = getelementptr %struct.runlist_element, ptr %428, i32 %460, i32 2
  %464 = load i64, ptr %463, align 8
  %465 = add i64 %464, %462
  %466 = getelementptr %struct.runlist_element, ptr %428, i32 %442
  store i64 %465, ptr %466, align 8
  %467 = getelementptr %struct.runlist_element, ptr %428, i32 %442, i32 1
  %468 = load i64, ptr %467, align 8
  %469 = icmp ugt i64 %468, -3
  br i1 %469, label %470, label %476

470:                                              ; preds = %459
  %471 = add i32 %442, 1
  %472 = getelementptr %struct.runlist_element, ptr %428, i32 %471
  %473 = load i64, ptr %472, align 8
  %474 = sub i64 %473, %465
  %475 = getelementptr %struct.runlist_element, ptr %428, i32 %442, i32 2
  store i64 %474, ptr %475, align 8
  br label %476

476:                                              ; preds = %470, %459
  br i1 %391, label %477, label %701

477:                                              ; preds = %476
  %478 = icmp sgt i32 %80, 0
  br i1 %478, label %479, label %490

479:                                              ; preds = %477
  %480 = add nsw i32 %80, -1
  %481 = getelementptr %struct.runlist_element, ptr %428, i32 %480
  %482 = load i64, ptr %481, align 8
  %483 = getelementptr %struct.runlist_element, ptr %428, i32 %480, i32 2
  %484 = load i64, ptr %483, align 8
  %485 = add i64 %484, %482
  %486 = add nuw i32 %80, 1
  %487 = getelementptr %struct.runlist_element, ptr %428, i32 %486
  %488 = load i64, ptr %487, align 8
  %489 = sub i64 %488, %485
  br label %494

490:                                              ; preds = %477
  %491 = add nsw i32 %80, 1
  %492 = getelementptr %struct.runlist_element, ptr %428, i32 %491
  %493 = load i64, ptr %492, align 8
  br label %494

494:                                              ; preds = %490, %479
  %495 = phi i64 [ %485, %479 ], [ 0, %490 ]
  %496 = phi i64 [ %489, %479 ], [ %493, %490 ]
  %497 = getelementptr %struct.runlist_element, ptr %428, i32 %80
  store i64 %495, ptr %497, align 8
  %498 = getelementptr %struct.runlist_element, ptr %428, i32 %80, i32 2
  store i64 %496, ptr %498, align 8
  %499 = getelementptr %struct.runlist_element, ptr %428, i32 %80, i32 1
  store i64 -2, ptr %499, align 8
  br label %701

500:                                              ; preds = %156
  br i1 %157, label %501, label %629

501:                                              ; preds = %500
  br i1 %158, label %502, label %503, !prof !8

502:                                              ; preds = %501
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #6, !srcloc !16
  unreachable

503:                                              ; preds = %501
  %504 = add i32 %80, 1
  %505 = icmp slt i32 %504, %105
  br i1 %505, label %506, label %546

506:                                              ; preds = %503
  %507 = getelementptr %struct.runlist_element, ptr %49, i32 %148
  %508 = getelementptr %struct.runlist_element, ptr %507, i32 -1
  %509 = getelementptr %struct.runlist_element, ptr %81, i32 1
  %510 = icmp eq ptr %508, null
  br i1 %510, label %511, label %512, !prof !8

511:                                              ; preds = %506
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

512:                                              ; preds = %506
  %513 = icmp eq ptr %509, null
  br i1 %513, label %514, label %515, !prof !8

514:                                              ; preds = %512
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

515:                                              ; preds = %512
  %516 = getelementptr inbounds %struct.runlist_element, ptr %508, i32 0, i32 1
  %517 = load i64, ptr %516, align 8
  %518 = icmp eq i64 %517, -2
  br i1 %518, label %519, label %523

519:                                              ; preds = %515
  %520 = getelementptr %struct.runlist_element, ptr %81, i32 1, i32 1
  %521 = load i64, ptr %520, align 8
  %522 = icmp eq i64 %521, -2
  br i1 %522, label %546, label %523

523:                                              ; preds = %519, %515
  %524 = load i64, ptr %508, align 8
  %525 = getelementptr inbounds %struct.runlist_element, ptr %508, i32 0, i32 2
  %526 = load i64, ptr %525, align 8
  %527 = add i64 %526, %524
  %528 = load i64, ptr %509, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %530, label %546

530:                                              ; preds = %523
  %531 = icmp sgt i64 %517, -1
  br i1 %531, label %532, label %539

532:                                              ; preds = %530
  %533 = getelementptr %struct.runlist_element, ptr %81, i32 1, i32 1
  %534 = load i64, ptr %533, align 8
  %535 = icmp sgt i64 %534, -1
  %536 = add i64 %526, %517
  %537 = icmp eq i64 %536, %534
  %538 = select i1 %535, i1 %537, i1 false
  br i1 %538, label %546, label %545

539:                                              ; preds = %530
  %540 = icmp eq i64 %517, -1
  br i1 %540, label %541, label %545

541:                                              ; preds = %539
  %542 = getelementptr %struct.runlist_element, ptr %81, i32 1, i32 1
  %543 = load i64, ptr %542, align 8
  %544 = icmp eq i64 %543, -1
  br i1 %544, label %546, label %545

545:                                              ; preds = %541, %539, %532
  br label %546

546:                                              ; preds = %545, %541, %532, %523, %519, %503
  %547 = phi i1 [ false, %503 ], [ false, %545 ], [ true, %519 ], [ false, %523 ], [ true, %532 ], [ true, %541 ]
  %548 = add i32 %148, %105
  %549 = sext i1 %547 to i32
  %550 = zext i1 %547 to i32
  %551 = add i32 %548, %549
  %552 = mul i32 %105, 24
  %553 = add i32 %552, 4095
  %554 = and i32 %553, -4096
  %555 = mul i32 %551, 24
  %556 = add i32 %555, 4095
  %557 = and i32 %556, -4096
  %558 = icmp eq i32 %554, %557
  br i1 %558, label %581, label %559

559:                                              ; preds = %546
  %560 = icmp ult i32 %557, 4097
  br i1 %560, label %561, label %567, !prof !9

561:                                              ; preds = %559
  %562 = icmp eq i32 %557, 0
  br i1 %562, label %563, label %564, !prof !8

563:                                              ; preds = %561
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

564:                                              ; preds = %561
  %565 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %566 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %565, i32 noundef 3136, i32 noundef 4096) #7
  br label %573

567:                                              ; preds = %559
  %568 = lshr i32 %556, 12
  %569 = load volatile i32, ptr @_totalram_pages, align 4
  %570 = icmp ult i32 %568, %569
  br i1 %570, label %571, label %764, !prof !9

571:                                              ; preds = %567
  %572 = tail call noalias ptr @__vmalloc(i32 noundef %557, i32 noundef 3138) #8
  br label %573

573:                                              ; preds = %571, %564
  %574 = phi ptr [ %566, %564 ], [ %572, %571 ]
  %575 = icmp eq ptr %574, null
  br i1 %575, label %764, label %576, !prof !8

576:                                              ; preds = %573
  %577 = icmp sgt i32 %554, %557
  br i1 %577, label %578, label %579, !prof !8

578:                                              ; preds = %576
  br label %579

579:                                              ; preds = %578, %576
  %580 = phi i32 [ %557, %578 ], [ %554, %576 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %574, ptr nonnull align 8 %0, i32 %580, i1 false) #6
  tail call void @kvfree(ptr noundef nonnull %0) #6
  br label %581

581:                                              ; preds = %579, %546
  %582 = phi ptr [ %0, %546 ], [ %574, %579 ]
  %583 = icmp ugt ptr %582, inttoptr (i32 -4096 to ptr)
  br i1 %583, label %701, label %584

584:                                              ; preds = %581
  br i1 %547, label %585, label %595

585:                                              ; preds = %584
  %586 = getelementptr %struct.runlist_element, ptr %49, i32 %148
  %587 = getelementptr %struct.runlist_element, ptr %586, i32 -1
  %588 = getelementptr %struct.runlist_element, ptr %582, i32 %80
  %589 = getelementptr %struct.runlist_element, ptr %588, i32 1
  %590 = getelementptr inbounds %struct.runlist_element, ptr %589, i32 0, i32 2
  %591 = load i64, ptr %590, align 8
  %592 = getelementptr inbounds %struct.runlist_element, ptr %587, i32 0, i32 2
  %593 = load i64, ptr %592, align 8
  %594 = add i64 %593, %591
  store i64 %594, ptr %592, align 8
  br label %595

595:                                              ; preds = %585, %584
  %596 = add i32 %148, %80
  %597 = add i32 %596, 1
  %598 = add i32 %504, %550
  %599 = sub i32 %105, %598
  %600 = icmp ne i32 %597, %598
  %601 = icmp sgt i32 %599, 0
  %602 = and i1 %600, %601
  br i1 %602, label %603, label %607, !prof !9

603:                                              ; preds = %595
  %604 = getelementptr %struct.runlist_element, ptr %582, i32 %597
  %605 = getelementptr %struct.runlist_element, ptr %582, i32 %598
  %606 = mul i32 %599, 24
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %604, ptr align 8 %605, i32 %606, i1 false) #6
  br label %607

607:                                              ; preds = %603, %595
  %608 = icmp sgt i32 %148, 0
  br i1 %608, label %609, label %612, !prof !9

609:                                              ; preds = %607
  %610 = getelementptr %struct.runlist_element, ptr %582, i32 %504
  %611 = mul i32 %148, 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %610, ptr nonnull align 8 %49, i32 %611, i1 false) #6
  br label %612

612:                                              ; preds = %609, %607
  %613 = getelementptr %struct.runlist_element, ptr %582, i32 %504
  %614 = load i64, ptr %613, align 8
  %615 = getelementptr %struct.runlist_element, ptr %582, i32 %80
  %616 = load i64, ptr %615, align 8
  %617 = sub i64 %614, %616
  %618 = getelementptr %struct.runlist_element, ptr %582, i32 %80, i32 2
  store i64 %617, ptr %618, align 8
  %619 = getelementptr %struct.runlist_element, ptr %582, i32 %597, i32 1
  %620 = load i64, ptr %619, align 8
  %621 = icmp eq i64 %620, -3
  br i1 %621, label %622, label %701

622:                                              ; preds = %612
  %623 = getelementptr %struct.runlist_element, ptr %582, i32 %597
  %624 = getelementptr %struct.runlist_element, ptr %582, i32 %596
  %625 = load i64, ptr %624, align 8
  %626 = getelementptr %struct.runlist_element, ptr %582, i32 %596, i32 2
  %627 = load i64, ptr %626, align 8
  %628 = add i64 %627, %625
  store i64 %628, ptr %623, align 8
  br label %701

629:                                              ; preds = %500
  br i1 %158, label %630, label %631, !prof !8

630:                                              ; preds = %629
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 460, 0\0A.popsection", ""() #6, !srcloc !17
  unreachable

631:                                              ; preds = %629
  %632 = add i32 %148, %105
  %633 = mul i32 %105, 24
  %634 = add i32 %633, 4095
  %635 = and i32 %634, -4096
  %636 = mul i32 %632, 24
  %637 = add i32 %636, 4119
  %638 = and i32 %637, -4096
  %639 = icmp eq i32 %635, %638
  br i1 %639, label %662, label %640

640:                                              ; preds = %631
  %641 = icmp ult i32 %638, 4097
  br i1 %641, label %642, label %648, !prof !9

642:                                              ; preds = %640
  %643 = icmp eq i32 %638, 0
  br i1 %643, label %644, label %645, !prof !8

644:                                              ; preds = %642
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

645:                                              ; preds = %642
  %646 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %647 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %646, i32 noundef 3136, i32 noundef 4096) #7
  br label %654

648:                                              ; preds = %640
  %649 = lshr i32 %637, 12
  %650 = load volatile i32, ptr @_totalram_pages, align 4
  %651 = icmp ult i32 %649, %650
  br i1 %651, label %652, label %764, !prof !9

652:                                              ; preds = %648
  %653 = tail call noalias ptr @__vmalloc(i32 noundef %638, i32 noundef 3138) #8
  br label %654

654:                                              ; preds = %652, %645
  %655 = phi ptr [ %647, %645 ], [ %653, %652 ]
  %656 = icmp eq ptr %655, null
  br i1 %656, label %764, label %657, !prof !8

657:                                              ; preds = %654
  %658 = icmp sgt i32 %635, %638
  br i1 %658, label %659, label %660, !prof !8

659:                                              ; preds = %657
  br label %660

660:                                              ; preds = %659, %657
  %661 = phi i32 [ %638, %659 ], [ %635, %657 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %655, ptr nonnull align 8 %0, i32 %661, i1 false) #6
  tail call void @kvfree(ptr noundef nonnull %0) #6
  br label %662

662:                                              ; preds = %660, %631
  %663 = phi ptr [ %0, %631 ], [ %655, %660 ]
  %664 = icmp ugt ptr %663, inttoptr (i32 -4096 to ptr)
  br i1 %664, label %701, label %665

665:                                              ; preds = %662
  %666 = add i32 %80, 1
  %667 = add i32 %148, %666
  %668 = sub i32 %105, %80
  %669 = icmp ne i32 %667, %80
  %670 = icmp sgt i32 %668, 0
  %671 = and i1 %670, %669
  br i1 %671, label %672, label %676, !prof !9

672:                                              ; preds = %665
  %673 = getelementptr %struct.runlist_element, ptr %663, i32 %667
  %674 = getelementptr %struct.runlist_element, ptr %663, i32 %80
  %675 = mul i32 %668, 24
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %673, ptr align 8 %674, i32 %675, i1 false) #6
  br label %676

676:                                              ; preds = %672, %665
  %677 = icmp sgt i32 %148, 0
  br i1 %677, label %678, label %681, !prof !9

678:                                              ; preds = %676
  %679 = getelementptr %struct.runlist_element, ptr %663, i32 %666
  %680 = mul i32 %148, 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %679, ptr nonnull align 8 %49, i32 %680, i1 false) #6
  br label %681

681:                                              ; preds = %678, %676
  %682 = getelementptr %struct.runlist_element, ptr %663, i32 %666
  %683 = load i64, ptr %682, align 8
  %684 = getelementptr %struct.runlist_element, ptr %663, i32 %80
  %685 = load i64, ptr %684, align 8
  %686 = sub i64 %683, %685
  %687 = getelementptr %struct.runlist_element, ptr %663, i32 %80, i32 2
  store i64 %686, ptr %687, align 8
  %688 = add i32 %148, %80
  %689 = getelementptr %struct.runlist_element, ptr %663, i32 %688
  %690 = load i64, ptr %689, align 8
  %691 = getelementptr %struct.runlist_element, ptr %663, i32 %688, i32 2
  %692 = load i64, ptr %691, align 8
  %693 = add i64 %692, %690
  %694 = add i32 %688, 1
  %695 = getelementptr %struct.runlist_element, ptr %663, i32 %694
  store i64 %693, ptr %695, align 8
  %696 = add i32 %688, 2
  %697 = getelementptr %struct.runlist_element, ptr %663, i32 %696
  %698 = load i64, ptr %697, align 8
  %699 = sub i64 %698, %693
  %700 = getelementptr %struct.runlist_element, ptr %663, i32 %694, i32 2
  store i64 %699, ptr %700, align 8
  br label %701

701:                                              ; preds = %681, %662, %622, %612, %581, %494, %476, %427, %331, %327, %326, %283
  %702 = phi ptr [ %284, %283 ], [ %287, %331 ], [ %287, %327 ], [ %287, %326 ], [ %428, %476 ], [ %428, %494 ], [ %428, %427 ], [ %582, %612 ], [ %582, %622 ], [ %582, %581 ], [ %663, %662 ], [ %663, %681 ]
  %703 = icmp ugt ptr %702, inttoptr (i32 -4096 to ptr)
  br i1 %703, label %764, label %704

704:                                              ; preds = %701
  tail call void @kvfree(ptr noundef nonnull %1) #6
  br i1 %149, label %766, label %705

705:                                              ; preds = %705, %704
  %706 = phi i32 [ %710, %705 ], [ %101, %704 ]
  %707 = getelementptr %struct.runlist_element, ptr %702, i32 %706, i32 2
  %708 = load i64, ptr %707, align 8
  %709 = icmp eq i64 %708, 0
  %710 = add i32 %706, 1
  br i1 %709, label %711, label %705

711:                                              ; preds = %705
  %712 = getelementptr %struct.runlist_element, ptr %702, i32 %706
  %713 = load i64, ptr %712, align 8
  %714 = icmp sgt i64 %713, %115
  br i1 %714, label %766, label %715

715:                                              ; preds = %711
  %716 = icmp eq i64 %713, %115
  %717 = getelementptr %struct.runlist_element, ptr %702, i32 %706, i32 1
  br i1 %716, label %718, label %719

718:                                              ; preds = %715
  store i64 -3, ptr %717, align 8
  br label %766

719:                                              ; preds = %715
  %720 = load i64, ptr %717, align 8
  %721 = icmp eq i64 %720, -3
  %722 = sext i1 %721 to i32
  %723 = add i32 %706, %722
  %724 = zext i1 %721 to i32
  %725 = getelementptr %struct.runlist_element, ptr %702, i32 %723, i32 1
  %726 = load i64, ptr %725, align 8
  %727 = icmp eq i64 %726, -2
  br i1 %727, label %746, label %728

728:                                              ; preds = %719
  br i1 %721, label %729, label %731

729:                                              ; preds = %728
  %730 = add i32 %723, 1
  br label %741

731:                                              ; preds = %728
  %732 = add i32 %723, 2
  %733 = tail call fastcc ptr @ntfs_rl_realloc_nofail(ptr noundef %702, i32 noundef %723, i32 noundef %732)
  %734 = add i32 %723, 1
  %735 = getelementptr %struct.runlist_element, ptr %733, i32 %723
  %736 = load i64, ptr %735, align 8
  %737 = getelementptr %struct.runlist_element, ptr %733, i32 %723, i32 2
  %738 = load i64, ptr %737, align 8
  %739 = add i64 %738, %736
  %740 = getelementptr %struct.runlist_element, ptr %733, i32 %734
  store i64 %739, ptr %740, align 8
  br label %741

741:                                              ; preds = %731, %729
  %742 = phi i32 [ %730, %729 ], [ %734, %731 ]
  %743 = phi i32 [ 0, %729 ], [ 1, %731 ]
  %744 = phi ptr [ %702, %729 ], [ %733, %731 ]
  %745 = getelementptr %struct.runlist_element, ptr %744, i32 %742, i32 1
  store i64 -2, ptr %745, align 8
  br label %746

746:                                              ; preds = %741, %719
  %747 = phi ptr [ %744, %741 ], [ %702, %719 ]
  %748 = phi i32 [ %742, %741 ], [ %723, %719 ]
  %749 = phi i32 [ %743, %741 ], [ %724, %719 ]
  %750 = getelementptr %struct.runlist_element, ptr %747, i32 %748
  %751 = load i64, ptr %750, align 8
  %752 = sub i64 %115, %751
  %753 = getelementptr %struct.runlist_element, ptr %747, i32 %748, i32 2
  store i64 %752, ptr %753, align 8
  %754 = add i32 %748, 1
  %755 = icmp eq i32 %749, 0
  br i1 %755, label %756, label %759

756:                                              ; preds = %746
  %757 = add i32 %748, 2
  %758 = tail call fastcc ptr @ntfs_rl_realloc_nofail(ptr noundef %747, i32 noundef %754, i32 noundef %757)
  br label %759

759:                                              ; preds = %756, %746
  %760 = phi ptr [ %747, %746 ], [ %758, %756 ]
  %761 = getelementptr %struct.runlist_element, ptr %760, i32 %754
  store i64 %115, ptr %761, align 8
  %762 = getelementptr %struct.runlist_element, ptr %760, i32 %754, i32 1
  store i64 -3, ptr %762, align 8
  %763 = getelementptr %struct.runlist_element, ptr %760, i32 %754, i32 2
  store i64 0, ptr %763, align 8
  br label %766

764:                                              ; preds = %701, %654, %648, %573, %567, %419, %413, %275, %269
  %765 = phi ptr [ %702, %701 ], [ inttoptr (i32 -12 to ptr), %275 ], [ inttoptr (i32 -12 to ptr), %269 ], [ inttoptr (i32 -12 to ptr), %419 ], [ inttoptr (i32 -12 to ptr), %413 ], [ inttoptr (i32 -12 to ptr), %573 ], [ inttoptr (i32 -12 to ptr), %567 ], [ inttoptr (i32 -12 to ptr), %654 ], [ inttoptr (i32 -12 to ptr), %648 ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_runlists_merge, ptr noundef null, ptr noundef nonnull @.str.1) #6
  br label %766

766:                                              ; preds = %764, %759, %718, %711, %704, %93, %36, %27, %18, %4, %2
  %767 = phi ptr [ inttoptr (i32 -34 to ptr), %93 ], [ %765, %764 ], [ %0, %2 ], [ %29, %27 ], [ inttoptr (i32 -22 to ptr), %4 ], [ %29, %36 ], [ %1, %18 ], [ %702, %704 ], [ %702, %711 ], [ %760, %759 ], [ %702, %718 ]
  ret ptr %767
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_rl_realloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = mul i32 %1, 24
  %5 = add i32 %4, 4095
  %6 = and i32 %5, -4096
  %7 = mul i32 %2, 24
  %8 = add i32 %7, 4095
  %9 = and i32 %8, -4096
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %35, label %11

11:                                               ; preds = %3
  %12 = icmp ult i32 %9, 4097
  br i1 %12, label %13, label %19, !prof !9

13:                                               ; preds = %11
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3136, i32 noundef 4096) #7
  br label %25

19:                                               ; preds = %11
  %20 = lshr i32 %8, 12
  %21 = load volatile i32, ptr @_totalram_pages, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %35, !prof !9

23:                                               ; preds = %19
  %24 = tail call noalias ptr @__vmalloc(i32 noundef %9, i32 noundef 3138) #8
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi ptr [ %18, %16 ], [ %24, %23 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28, !prof !8

28:                                               ; preds = %25
  %29 = icmp eq ptr %0, null
  br i1 %29, label %35, label %30, !prof !8

30:                                               ; preds = %28
  %31 = icmp sgt i32 %6, %9
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %9, %32 ], [ %6, %30 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %26, ptr nonnull align 8 %0, i32 %34, i1 false)
  tail call void @kvfree(ptr noundef nonnull %0) #6
  br label %35

35:                                               ; preds = %33, %28, %25, %19, %3
  %36 = phi ptr [ %0, %3 ], [ %26, %33 ], [ %26, %28 ], [ inttoptr (i32 -12 to ptr), %25 ], [ inttoptr (i32 -12 to ptr), %19 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_rl_realloc_nofail(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = mul i32 %1, 24
  %5 = add i32 %4, 4095
  %6 = and i32 %5, -4096
  %7 = mul i32 %2, 24
  %8 = add i32 %7, 4095
  %9 = and i32 %8, -4096
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = icmp ult i32 %9, 4097
  br i1 %12, label %13, label %19, !prof !9

13:                                               ; preds = %11
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 35904, i32 noundef 4096) #7
  br label %25

19:                                               ; preds = %11
  %20 = lshr i32 %8, 12
  %21 = load volatile i32, ptr @_totalram_pages, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %28, !prof !9

23:                                               ; preds = %19
  %24 = tail call noalias ptr @__vmalloc(i32 noundef %9, i32 noundef 35906) #8
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi ptr [ %18, %16 ], [ %24, %23 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %25, %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #6, !srcloc !18
  unreachable

29:                                               ; preds = %25
  %30 = icmp eq ptr %0, null
  br i1 %30, label %36, label %31, !prof !8

31:                                               ; preds = %29
  %32 = icmp sgt i32 %6, %9
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %9, %33 ], [ %6, %31 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %26, ptr nonnull align 8 %0, i32 %35, i1 false)
  tail call void @kvfree(ptr noundef nonnull %0) #6
  br label %36

36:                                               ; preds = %34, %29, %3
  %37 = phi ptr [ %0, %3 ], [ %26, %34 ], [ %26, %29 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ntfs_mapping_pairs_decompress(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ATTR_RECORD, ptr %1, i32 0, i32 7
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds %struct.ATTR_RECORD, ptr %1, i32 0, i32 7, i32 0, i32 2
  %7 = load i16, ptr %6, align 1
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %1, i32 %8
  %10 = getelementptr inbounds %struct.ATTR_RECORD, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 1
  %12 = getelementptr i8, ptr %1, i32 %11
  %13 = icmp ult ptr %9, %1
  %14 = icmp ugt ptr %9, %12
  %15 = select i1 %13, i1 true, i1 %14, !prof !8
  br i1 %15, label %16, label %18, !prof !8

16:                                               ; preds = %3
  %17 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %17, ptr noundef nonnull @.str.2) #6
  br label %211

18:                                               ; preds = %3
  %19 = icmp eq i64 %5, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = load i8, ptr %9, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %211, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3136, i32 noundef 4096) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %211, label %34, !prof !8

27:                                               ; preds = %18
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3136, i32 noundef 4096) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %211, label %31, !prof !8

31:                                               ; preds = %27
  store i64 0, ptr %29, align 8
  %32 = getelementptr inbounds %struct.runlist_element, ptr %29, i32 0, i32 1
  store i64 -2, ptr %32, align 8
  %33 = getelementptr inbounds %struct.runlist_element, ptr %29, i32 0, i32 2
  store i64 %5, ptr %33, align 8
  br label %34

34:                                               ; preds = %31, %23
  %35 = phi ptr [ %29, %31 ], [ %25, %23 ]
  %36 = phi i16 [ 1, %31 ], [ 0, %23 ]
  %37 = icmp ult ptr %9, %12
  br i1 %37, label %38, label %207

38:                                               ; preds = %142, %34
  %39 = phi i16 [ %146, %142 ], [ %36, %34 ]
  %40 = phi i32 [ %74, %142 ], [ 4096, %34 ]
  %41 = phi ptr [ %153, %142 ], [ %9, %34 ]
  %42 = phi ptr [ %73, %142 ], [ %35, %34 ]
  %43 = phi i64 [ %144, %142 ], [ 0, %34 ]
  %44 = phi i64 [ %109, %142 ], [ %5, %34 ]
  %45 = load i8, ptr %41, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %155, label %47

47:                                               ; preds = %38
  %48 = zext i16 %39 to i32
  %49 = mul nuw nsw i32 %48, 24
  %50 = add nuw nsw i32 %49, 72
  %51 = icmp ugt i32 %50, %40
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = add i32 %40, 4096
  %54 = icmp ult i32 %53, 4097
  br i1 %54, label %55, label %61, !prof !9

55:                                               ; preds = %52
  %56 = icmp eq i32 %53, 0
  br i1 %56, label %57, label %58, !prof !8

57:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

58:                                               ; preds = %55
  %59 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %60 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3136, i32 noundef 4096) #7
  br label %67

61:                                               ; preds = %52
  %62 = lshr i32 %53, 12
  %63 = load volatile i32, ptr @_totalram_pages, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %70, !prof !9

65:                                               ; preds = %61
  %66 = tail call noalias ptr @__vmalloc(i32 noundef %53, i32 noundef 3138) #8
  br label %67

67:                                               ; preds = %65, %58
  %68 = phi ptr [ %60, %58 ], [ %66, %65 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %67, %61
  tail call void @kvfree(ptr noundef %42) #6
  br label %211

71:                                               ; preds = %67
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %68, ptr align 8 %42, i32 %40, i1 false)
  tail call void @kvfree(ptr noundef %42) #6
  br label %72

72:                                               ; preds = %71, %47
  %73 = phi ptr [ %68, %71 ], [ %42, %47 ]
  %74 = phi i32 [ %53, %71 ], [ %40, %47 ]
  %75 = getelementptr %struct.runlist_element, ptr %73, i32 %48
  store i64 %44, ptr %75, align 8
  %76 = load i8, ptr %41, align 1
  %77 = and i8 %76, 15
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %72
  %80 = zext i8 %77 to i32
  %81 = getelementptr i8, ptr %41, i32 %80
  %82 = icmp ugt ptr %81, %12
  br i1 %82, label %207, label %83, !prof !8

83:                                               ; preds = %79
  %84 = load i8, ptr %81, align 1
  %85 = sext i8 %84 to i64
  %86 = add nsw i8 %77, -1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  %89 = zext i8 %86 to i32
  br label %90

90:                                               ; preds = %90, %88
  %91 = phi i32 [ %89, %88 ], [ %101, %90 ]
  %92 = phi i8 [ %86, %88 ], [ %99, %90 ]
  %93 = phi i64 [ %85, %88 ], [ %98, %90 ]
  %94 = shl i64 %93, 8
  %95 = getelementptr i8, ptr %41, i32 %91
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i64
  %98 = or i64 %94, %97
  %99 = add i8 %92, -1
  %100 = icmp eq i8 %99, 0
  %101 = add nsw i32 %91, -1
  br i1 %100, label %104, label %90

102:                                              ; preds = %72
  %103 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %103, ptr noundef nonnull @.str.3) #6
  br label %207

104:                                              ; preds = %90, %83
  %105 = phi i64 [ %85, %83 ], [ %98, %90 ]
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %207, label %107, !prof !8

107:                                              ; preds = %104
  %108 = getelementptr %struct.runlist_element, ptr %73, i32 %48, i32 2
  store i64 %105, ptr %108, align 8
  %109 = add i64 %105, %44
  %110 = load i8, ptr %41, align 1
  %111 = icmp ult i8 %110, 16
  br i1 %111, label %142, label %112

112:                                              ; preds = %107
  %113 = and i8 %110, 15
  %114 = lshr i8 %110, 4
  %115 = add nuw nsw i8 %114, %113
  %116 = zext i8 %115 to i32
  %117 = getelementptr i8, ptr %41, i32 %116
  %118 = icmp ugt ptr %117, %12
  br i1 %118, label %207, label %119

119:                                              ; preds = %112
  %120 = load i8, ptr %117, align 1
  %121 = sext i8 %120 to i64
  %122 = add nsw i8 %115, -1
  %123 = icmp ugt i8 %122, %113
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = zext i8 %122 to i32
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i32 [ %125, %124 ], [ %137, %126 ]
  %128 = phi i8 [ %122, %124 ], [ %135, %126 ]
  %129 = phi i64 [ %121, %124 ], [ %134, %126 ]
  %130 = shl i64 %129, 8
  %131 = getelementptr i8, ptr %41, i32 %127
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i64
  %134 = or i64 %130, %133
  %135 = add i8 %128, -1
  %136 = icmp ugt i8 %135, %113
  %137 = add nsw i32 %127, -1
  br i1 %136, label %126, label %138

138:                                              ; preds = %126, %119
  %139 = phi i64 [ %121, %119 ], [ %134, %126 ]
  %140 = add i64 %139, %43
  %141 = icmp slt i64 %140, -1
  br i1 %141, label %207, label %142, !prof !8

142:                                              ; preds = %138, %107
  %143 = phi i64 [ -1, %107 ], [ %140, %138 ]
  %144 = phi i64 [ %43, %107 ], [ %140, %138 ]
  %145 = getelementptr %struct.runlist_element, ptr %73, i32 %48, i32 1
  store i64 %143, ptr %145, align 8
  %146 = add i16 %39, 1
  %147 = load i8, ptr %41, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, 15
  %150 = lshr i32 %148, 4
  %151 = add nuw nsw i32 %150, 1
  %152 = add nuw nsw i32 %151, %149
  %153 = getelementptr i8, ptr %41, i32 %152
  %154 = icmp ult ptr %153, %12
  br i1 %154, label %38, label %207

155:                                              ; preds = %38
  %156 = getelementptr inbounds %struct.ATTR_RECORD, ptr %1, i32 0, i32 7, i32 0, i32 1
  %157 = load i64, ptr %156, align 1
  %158 = icmp eq i64 %157, 0
  %159 = add i64 %44, -1
  %160 = icmp ne i64 %159, %157
  %161 = xor i1 %158, true
  %162 = select i1 %161, i1 %160, i1 false
  br i1 %162, label %207, label %163, !prof !8

163:                                              ; preds = %155
  %164 = load i64, ptr %4, align 1
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %193

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.ATTR_RECORD, ptr %1, i32 0, i32 7, i32 0, i32 5
  %168 = load i64, ptr %167, align 1
  %169 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 11
  %170 = load i32, ptr %169, align 8
  %171 = zext i32 %170 to i64
  %172 = add i64 %168, -1
  %173 = add i64 %172, %171
  %174 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 13
  %175 = load i8, ptr %174, align 8
  %176 = zext i8 %175 to i64
  %177 = ashr i64 %173, %176
  %178 = add i64 %177, -1
  br i1 %158, label %193, label %179

179:                                              ; preds = %166
  %180 = icmp sgt i64 %178, %157
  br i1 %180, label %181, label %189

181:                                              ; preds = %179
  %182 = zext i16 %39 to i32
  %183 = getelementptr %struct.runlist_element, ptr %42, i32 %182
  store i64 %44, ptr %183, align 8
  %184 = sub i64 %178, %157
  %185 = getelementptr %struct.runlist_element, ptr %42, i32 %182, i32 2
  store i64 %184, ptr %185, align 8
  %186 = add i64 %184, %44
  %187 = getelementptr %struct.runlist_element, ptr %42, i32 %182, i32 1
  store i64 -2, ptr %187, align 8
  %188 = add i16 %39, 1
  br label %193

189:                                              ; preds = %179
  %190 = icmp slt i64 %178, %157
  br i1 %190, label %191, label %193, !prof !8

191:                                              ; preds = %189
  %192 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %192, ptr noundef nonnull @.str.7, i64 noundef %157, i64 noundef %178) #6
  br label %207

193:                                              ; preds = %189, %181, %166, %163
  %194 = phi i16 [ %188, %181 ], [ %39, %189 ], [ %39, %166 ], [ %39, %163 ]
  %195 = phi i64 [ -3, %181 ], [ -3, %189 ], [ -3, %166 ], [ -2, %163 ]
  %196 = phi i64 [ %186, %181 ], [ %44, %189 ], [ %44, %166 ], [ %44, %163 ]
  %197 = zext i16 %194 to i32
  %198 = getelementptr %struct.runlist_element, ptr %42, i32 %197, i32 1
  store i64 %195, ptr %198, align 8
  %199 = getelementptr %struct.runlist_element, ptr %42, i32 %197
  store i64 %196, ptr %199, align 8
  %200 = getelementptr %struct.runlist_element, ptr %42, i32 %197, i32 2
  store i64 0, ptr %200, align 8
  %201 = icmp eq ptr %2, null
  br i1 %201, label %211, label %202

202:                                              ; preds = %193
  %203 = tail call ptr @ntfs_runlists_merge(ptr noundef nonnull %2, ptr noundef %42)
  %204 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  tail call void @kvfree(ptr noundef %42) #6
  %206 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %206, ptr noundef nonnull @.str.8) #6
  br label %211

207:                                              ; preds = %191, %155, %142, %138, %112, %104, %102, %79, %34
  %208 = phi ptr [ @.str.4, %102 ], [ @.str.6, %191 ], [ @.str.6, %155 ], [ @.str.2, %34 ], [ @.str.4, %104 ], [ @.str.5, %138 ], [ @.str.2, %79 ], [ @.str.2, %142 ], [ @.str.2, %112 ]
  %209 = phi ptr [ %73, %102 ], [ %42, %191 ], [ %42, %155 ], [ %35, %34 ], [ %73, %104 ], [ %73, %138 ], [ %73, %79 ], [ %73, %142 ], [ %73, %112 ]
  %210 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mapping_pairs_decompress, ptr noundef %210, ptr noundef nonnull %208) #6
  tail call void @kvfree(ptr noundef %209) #6
  br label %211

211:                                              ; preds = %207, %205, %202, %193, %70, %27, %23, %20, %16
  %212 = phi ptr [ inttoptr (i32 -5 to ptr), %16 ], [ inttoptr (i32 -5 to ptr), %207 ], [ %203, %205 ], [ %2, %20 ], [ %42, %193 ], [ %203, %202 ], [ inttoptr (i32 -12 to ptr), %23 ], [ inttoptr (i32 -12 to ptr), %27 ], [ inttoptr (i32 -12 to ptr), %70 ]
  ret ptr %212
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ntfs_rl_vcn_to_lcn(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/runlist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 994, 0\0A.popsection", ""() #6, !srcloc !19
  unreachable

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %34, label %7, !prof !8

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 8
  %9 = icmp sgt i64 %8, %1
  br i1 %9, label %34, label %10, !prof !8

10:                                               ; preds = %15, %7
  %11 = phi i32 [ %16, %15 ], [ 0, %7 ]
  %12 = getelementptr %struct.runlist_element, ptr %0, i32 %11, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15, !prof !8

15:                                               ; preds = %10
  %16 = add i32 %11, 1
  %17 = getelementptr %struct.runlist_element, ptr %0, i32 %16
  %18 = load i64, ptr %17, align 8
  %19 = icmp sgt i64 %18, %1
  br i1 %19, label %20, label %10, !prof !8

20:                                               ; preds = %15
  %21 = getelementptr %struct.runlist_element, ptr %0, i32 %11, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = icmp sgt i64 %22, -1
  br i1 %23, label %24, label %34, !prof !9

24:                                               ; preds = %20
  %25 = getelementptr %struct.runlist_element, ptr %0, i32 %11
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %22, %1
  %28 = sub i64 %27, %26
  br label %34

29:                                               ; preds = %10
  %30 = getelementptr %struct.runlist_element, ptr %0, i32 %11, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = icmp slt i64 %31, 0
  %33 = select i1 %32, i64 %31, i64 -3, !prof !9
  br label %34

34:                                               ; preds = %29, %24, %20, %7, %5
  %35 = phi i64 [ %28, %24 ], [ -2, %5 ], [ -3, %7 ], [ %22, %20 ], [ %33, %29 ]
  ret i64 %35
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152867107, i64 2152867589, i64 2152867144, i64 2152867200, i64 2152867234, i64 2152867258, i64 2152867299, i64 2152867320, i64 2152867348, i64 2152867382}
!11 = !{i64 2152863785, i64 2152864267, i64 2152863822, i64 2152863878, i64 2152863912, i64 2152863936, i64 2152863977, i64 2152863998, i64 2152864026, i64 2152864060}
!12 = !{i64 2152856151, i64 2152856633, i64 2152856188, i64 2152856244, i64 2152856278, i64 2152856302, i64 2152856343, i64 2152856364, i64 2152856392, i64 2152856426}
!13 = !{i64 2152857145, i64 2152857627, i64 2152857182, i64 2152857238, i64 2152857272, i64 2152857296, i64 2152857337, i64 2152857358, i64 2152857386, i64 2152857420}
!14 = !{i64 2152648809, i64 2152649289, i64 2152648846, i64 2152648902, i64 2152648936, i64 2152648960, i64 2152649001, i64 2152649022, i64 2152649050, i64 2152649084}
!15 = !{i64 2152861628, i64 2152862110, i64 2152861665, i64 2152861721, i64 2152861755, i64 2152861779, i64 2152861820, i64 2152861841, i64 2152861869, i64 2152861903}
!16 = !{i64 2152859471, i64 2152859953, i64 2152859508, i64 2152859564, i64 2152859598, i64 2152859622, i64 2152859663, i64 2152859684, i64 2152859712, i64 2152859746}
!17 = !{i64 2152865942, i64 2152866424, i64 2152865979, i64 2152866035, i64 2152866069, i64 2152866093, i64 2152866134, i64 2152866155, i64 2152866183, i64 2152866217}
!18 = !{i64 2152854884, i64 2152855366, i64 2152854921, i64 2152854977, i64 2152855011, i64 2152855035, i64 2152855076, i64 2152855097, i64 2152855125, i64 2152855159}
!19 = !{i64 2152873113, i64 2152873595, i64 2152873150, i64 2152873206, i64 2152873240, i64 2152873264, i64 2152873305, i64 2152873326, i64 2152873354, i64 2152873388}
