; ModuleID = '/llk/IR/kernel/printk/printk_ringbuffer.c_pt.bc'
source_filename = "../kernel/printk/printk_ringbuffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.prb_reserved_entry = type { ptr, i32, i32, i32 }
%struct.prb_desc_ring = type { i32, ptr, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.prb_desc = type { %struct.atomic_t, %struct.prb_data_blk_lpos }
%struct.prb_data_blk_lpos = type { i32, i32 }
%struct.printk_info = type { i64, i64, i16, i8, i8, i32, %struct.dev_printk_info }
%struct.dev_printk_info = type { [16 x i8], [48 x i8] }
%struct.printk_record = type { ptr, ptr, i32 }
%struct.printk_ringbuffer = type { %struct.prb_desc_ring, %struct.prb_data_ring, %struct.atomic_t }
%struct.prb_data_ring = type { i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.prb_data_block = type { i32, [0 x i8] }

@prb_reserve_in_last.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [34 x i8] c"kernel/printk/printk_ringbuffer.c\00", align 1
@prb_reserve_in_last.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\014wrong text_len value (%hu, expecting 0)\0A\00", align 1
@prb_reserve_in_last.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@prb_reserve_in_last.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\014wrong text_len value (%hu, expecting <=%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@get_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_data.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_data.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_data.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@desc_reserve.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@desc_reserve.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@_prb_commit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @prb_reserve_in_last(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !9
  %9 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %10 = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %1, align 4
  %15 = shl nsw i32 -1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  %18 = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.prb_desc, ptr %19, i32 %17
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1073741823
  %23 = icmp ne i32 %22, %11
  %24 = icmp ult i32 %21, 1073741824
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store volatile i32 %21, ptr %6, align 4
  br label %53

27:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %28 = getelementptr %struct.printk_info, ptr %13, i32 %17, i32 5
  %29 = load i32, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %30 = load volatile i32, ptr %20, align 4
  %31 = and i32 %30, 1073741823
  %32 = icmp eq i32 %31, %11
  store volatile i32 %30, ptr %6, align 4
  %33 = and i32 %30, -1073741824
  %34 = icmp eq i32 %33, 1073741824
  %35 = and i1 %32, %34
  %36 = icmp eq i32 %29, %3
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %53

38:                                               ; preds = %27
  %39 = load ptr, ptr %18, align 4
  %40 = load i32, ptr %1, align 4
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %11, %42
  %44 = getelementptr %struct.prb_desc, ptr %39, i32 %43
  %45 = or i32 %11, 1073741824
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #10, !srcloc !13
  br label %46

46:                                               ; preds = %46, %38
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 %45, i32 %11, ptr elementtype(i32) %44) #10, !srcloc !14
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %46

50:                                               ; preds = %46
  %51 = extractvalue { i32, i32 } %47, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %52 = icmp eq i32 %51, %45
  br i1 %52, label %54, label %53

53:                                               ; preds = %50, %27, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %56

54:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  %55 = icmp eq ptr %44, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %54, %53
  %57 = load i32, ptr %9, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %57) #10, !srcloc !16
  br label %258

58:                                               ; preds = %54
  %59 = load ptr, ptr %12, align 4
  %60 = load i32, ptr %1, align 4
  %61 = shl nsw i32 -1, %60
  %62 = xor i32 %61, -1
  %63 = and i32 %11, %62
  %64 = getelementptr %struct.printk_info, ptr %59, i32 %63
  store ptr %1, ptr %0, align 4
  %65 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 2
  store i32 %11, ptr %65, align 4
  %66 = getelementptr %struct.printk_info, ptr %59, i32 %63, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %3
  br i1 %68, label %69, label %257

69:                                               ; preds = %58
  %70 = getelementptr %struct.prb_desc, ptr %39, i32 %43, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %69
  %75 = getelementptr %struct.prb_desc, ptr %39, i32 %43, i32 1, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %111, label %79

79:                                               ; preds = %74
  %80 = getelementptr %struct.printk_info, ptr %59, i32 %63, i32 2
  %81 = load i16, ptr %80, align 8
  %82 = icmp ne i16 %81, 0
  %83 = load i1, ptr @prb_reserve_in_last.__already_done, align 1
  %84 = xor i1 %83, true
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %87, !prof !17

86:                                               ; preds = %79
  store i1 true, ptr @prb_reserve_in_last.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1385, i32 noundef 9, ptr noundef null) #10
  br label %87

87:                                               ; preds = %86, %79
  br i1 %82, label %88, label %95

88:                                               ; preds = %87
  %89 = load i1, ptr @prb_reserve_in_last.__already_done.1, align 1
  br i1 %89, label %94, label %90, !prof !18

90:                                               ; preds = %88
  store i1 true, ptr @prb_reserve_in_last.__already_done.1, align 1
  %91 = load i16, ptr %80, align 8
  %92 = zext i16 %91 to i32
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %92) #11
  br label %94

94:                                               ; preds = %90, %88
  store i16 0, ptr %80, align 8
  br label %95

95:                                               ; preds = %94, %87
  %96 = getelementptr inbounds %struct.printk_record, ptr %2, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 1
  %101 = add i32 %97, 7
  %102 = and i32 %101, -4
  %103 = load i32, ptr %100, align 4
  %104 = shl nuw i32 1, %103
  %105 = add i32 %104, -4
  %106 = icmp ugt i32 %102, %105
  %107 = icmp ugt i32 %97, %4
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %257, label %109

109:                                              ; preds = %99, %95
  %110 = tail call fastcc ptr @data_alloc(ptr noundef %1, i32 noundef %97, ptr noundef %70, i32 noundef %11)
  br label %218

111:                                              ; preds = %74, %69
  %112 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 1
  %113 = call fastcc ptr @get_data(ptr noundef %112, ptr noundef %70, ptr noundef nonnull %7)
  %114 = icmp eq ptr %113, null
  br i1 %114, label %257, label %115

115:                                              ; preds = %111
  %116 = getelementptr %struct.printk_info, ptr %59, i32 %63, i32 2
  %117 = load i16, ptr %116, align 8
  %118 = zext i16 %117 to i32
  %119 = load i32, ptr %7, align 4
  %120 = icmp ult i32 %119, %118
  %121 = load i1, ptr @prb_reserve_in_last.__already_done.3, align 1
  %122 = xor i1 %121, true
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %124, label %125, !prof !17

124:                                              ; preds = %115
  store i1 true, ptr @prb_reserve_in_last.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1408, i32 noundef 9, ptr noundef null) #10
  br label %125

125:                                              ; preds = %124, %115
  br i1 %120, label %128, label %126

126:                                              ; preds = %125
  %127 = load i16, ptr %116, align 8
  br label %136

128:                                              ; preds = %125
  %129 = load i1, ptr @prb_reserve_in_last.__already_done.4, align 1
  br i1 %129, label %134, label %130, !prof !18

130:                                              ; preds = %128
  store i1 true, ptr @prb_reserve_in_last.__already_done.4, align 1
  %131 = load i16, ptr %116, align 8
  %132 = zext i16 %131 to i32
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %132, i32 noundef %119) #11
  br label %134

134:                                              ; preds = %130, %128
  %135 = trunc i32 %119 to i16
  store i16 %135, ptr %116, align 8
  br label %136

136:                                              ; preds = %134, %126
  %137 = phi i16 [ %127, %126 ], [ %135, %134 ]
  %138 = zext i16 %137 to i32
  %139 = getelementptr inbounds %struct.printk_record, ptr %2, i32 0, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, %138
  store i32 %141, ptr %139, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %136
  %144 = add i32 %141, 7
  %145 = and i32 %144, -4
  %146 = load i32, ptr %112, align 4
  %147 = shl nuw i32 1, %146
  %148 = add i32 %147, -4
  %149 = icmp ugt i32 %145, %148
  %150 = icmp ugt i32 %141, %4
  %151 = select i1 %149, i1 true, i1 %150
  br i1 %151, label %257, label %152

152:                                              ; preds = %143, %136
  %153 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 1, i32 2
  %154 = load volatile i32, ptr %153, align 4
  %155 = getelementptr %struct.prb_desc, ptr %39, i32 %43, i32 1, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %218

158:                                              ; preds = %152
  %159 = load i32, ptr %70, align 4
  %160 = load i32, ptr %112, align 4
  %161 = lshr i32 %159, %160
  %162 = lshr i32 %154, %160
  %163 = icmp eq i32 %161, %162
  %164 = add i32 %141, 7
  %165 = and i32 %164, -4
  %166 = add i32 %159, %165
  %167 = lshr i32 %166, %160
  %168 = icmp eq i32 %161, %167
  %169 = shl nsw i32 -1, %160
  %170 = and i32 %169, %166
  %171 = add i32 %170, %165
  %172 = select i1 %168, i32 %166, i32 %171
  %173 = sub i32 %154, %172
  %174 = shl nuw i32 1, %160
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %158
  %177 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 1, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = xor i32 %169, -1
  %180 = and i32 %159, %179
  %181 = select i1 %163, i32 %180, i32 0
  %182 = getelementptr i8, ptr %178, i32 %181
  %183 = getelementptr inbounds %struct.prb_data_block, ptr %182, i32 0, i32 1
  br label %218

184:                                              ; preds = %158
  %185 = sub i32 %172, %174
  %186 = tail call fastcc zeroext i1 @data_push_tail(ptr noundef %1, i32 noundef %185) #10
  br i1 %186, label %187, label %218

187:                                              ; preds = %184
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %153) #10, !srcloc !13
  br label %188

188:                                              ; preds = %188, %187
  %189 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %153, ptr %153, i32 %154, i32 %172, ptr elementtype(i32) %153) #10, !srcloc !14
  %190 = extractvalue { i32, i32 } %189, 0
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %188

192:                                              ; preds = %188
  %193 = extractvalue { i32, i32 } %189, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %194 = icmp eq i32 %193, %154
  br i1 %194, label %195, label %218

195:                                              ; preds = %192
  %196 = load i32, ptr %70, align 4
  %197 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 1, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = load i32, ptr %112, align 4
  %200 = shl nsw i32 -1, %199
  %201 = xor i32 %200, -1
  %202 = and i32 %196, %201
  %203 = getelementptr i8, ptr %198, i32 %202
  %204 = lshr i32 %196, %199
  %205 = lshr i32 %172, %199
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %215, label %207

207:                                              ; preds = %195
  store i32 %11, ptr %198, align 4
  br i1 %163, label %208, label %215

208:                                              ; preds = %207
  %209 = getelementptr inbounds %struct.prb_data_block, ptr %198, i32 0, i32 1
  %210 = getelementptr inbounds %struct.prb_data_block, ptr %203, i32 0, i32 1
  %211 = load i32, ptr %155, align 4
  %212 = load i32, ptr %70, align 4
  %213 = add i32 %211, -4
  %214 = sub i32 %213, %212
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %209, ptr align 4 %210, i32 %214, i1 false) #10
  br label %215

215:                                              ; preds = %208, %207, %195
  %216 = phi ptr [ %203, %195 ], [ %198, %208 ], [ %198, %207 ]
  store i32 %172, ptr %155, align 4
  %217 = getelementptr inbounds %struct.prb_data_block, ptr %216, i32 0, i32 1
  br label %218

218:                                              ; preds = %215, %192, %184, %176, %152, %109
  %219 = phi ptr [ %110, %109 ], [ %183, %176 ], [ %217, %215 ], [ null, %152 ], [ null, %184 ], [ null, %192 ]
  %220 = getelementptr inbounds %struct.printk_record, ptr %2, i32 0, i32 1
  store ptr %219, ptr %220, align 4
  %221 = getelementptr inbounds %struct.printk_record, ptr %2, i32 0, i32 2
  %222 = load i32, ptr %221, align 4
  %223 = icmp ne i32 %222, 0
  %224 = icmp eq ptr %219, null
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %257, label %226

226:                                              ; preds = %218
  store ptr %64, ptr %2, align 4
  %227 = load i32, ptr %70, align 4
  %228 = and i32 %227, 1
  %229 = icmp eq i32 %228, 0
  %230 = getelementptr %struct.prb_desc, ptr %39, i32 %43, i32 1, i32 1
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %231, 1
  %233 = icmp eq i32 %232, 0
  %234 = select i1 %229, i1 true, i1 %233
  br i1 %234, label %235, label %254

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 1
  %237 = load i32, ptr %236, align 4
  %238 = lshr i32 %227, %237
  %239 = lshr i32 %231, %237
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %235
  %242 = shl nsw i32 -1, %237
  %243 = xor i32 %242, -1
  %244 = and i32 %231, %243
  %245 = and i32 %227, %243
  %246 = sub i32 %244, %245
  br label %254

247:                                              ; preds = %235
  %248 = shl nuw i32 1, %237
  %249 = add i32 %248, -1
  %250 = and i32 %249, %231
  %251 = add i32 %250, %248
  %252 = and i32 %249, %227
  %253 = sub i32 %251, %252
  br label %254

254:                                              ; preds = %247, %241, %226
  %255 = phi i32 [ %246, %241 ], [ %253, %247 ], [ 0, %226 ]
  %256 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 3
  store i32 %255, ptr %256, align 4
  br label %259

257:                                              ; preds = %218, %143, %111, %99, %58
  tail call void @prb_commit(ptr noundef %0)
  br label %258

258:                                              ; preds = %257, %56
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false)
  br label %259

259:                                              ; preds = %258, %254
  %260 = phi i1 [ false, %258 ], [ true, %254 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret i1 %260
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @data_alloc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store i32 3, ptr %2, align 4
  %8 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %2, i32 0, i32 1
  store i32 3, ptr %8, align 4
  br label %55

9:                                                ; preds = %4
  %10 = add i32 %1, 7
  %11 = and i32 %10, -4
  %12 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, i32 2
  %13 = load volatile i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %34, %9
  %15 = phi i32 [ %13, %9 ], [ %35, %34 ]
  %16 = add i32 %15, %11
  %17 = load i32, ptr %5, align 4
  %18 = lshr i32 %15, %17
  %19 = lshr i32 %16, %17
  %20 = icmp eq i32 %18, %19
  %21 = shl nsw i32 -1, %17
  %22 = and i32 %21, %16
  %23 = add i32 %22, %11
  %24 = select i1 %20, i32 %16, i32 %23
  %25 = add i32 %24, %21
  %26 = tail call fastcc zeroext i1 @data_push_tail(ptr noundef %0, i32 noundef %25)
  br i1 %26, label %29, label %27

27:                                               ; preds = %14
  store i32 1, ptr %2, align 4
  %28 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %2, i32 0, i32 1
  store i32 1, ptr %28, align 4
  br label %55

29:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10, !srcloc !13
  br label %30

30:                                               ; preds = %30, %29
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 %15, i32 %24, ptr elementtype(i32) %12) #10, !srcloc !14
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30
  %35 = extractvalue { i32, i32 } %31, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %36 = icmp eq i32 %35, %15
  br i1 %36, label %37, label %14, !prof !18

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %5, align 4
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %15, %42
  %44 = getelementptr i8, ptr %39, i32 %43
  store i32 %3, ptr %44, align 4
  %45 = load i32, ptr %5, align 4
  %46 = lshr i32 %15, %45
  %47 = lshr i32 %24, %45
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %37
  %50 = load ptr, ptr %38, align 4
  store i32 %3, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %37
  %52 = phi ptr [ %50, %49 ], [ %44, %37 ]
  store i32 %15, ptr %2, align 4
  %53 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %2, i32 0, i32 1
  store i32 %24, ptr %53, align 4
  %54 = getelementptr inbounds %struct.prb_data_block, ptr %52, i32 0, i32 1
  br label %55

55:                                               ; preds = %51, %27, %7
  %56 = phi ptr [ null, %7 ], [ %54, %51 ], [ null, %27 ]
  ret ptr %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %6, i1 true, i1 %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %4, 3
  %14 = icmp eq i32 %8, 3
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %81

16:                                               ; preds = %12
  store i32 0, ptr %2, align 4
  br label %81

17:                                               ; preds = %3
  %18 = load i32, ptr %0, align 4
  %19 = lshr i32 %4, %18
  %20 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %1, i32 0, i32 1
  %21 = lshr i32 %8, %18
  %22 = icmp eq i32 %19, %21
  %23 = icmp ugt i32 %8, %4
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.prb_data_ring, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = shl nsw i32 -1, %18
  %29 = xor i32 %28, -1
  %30 = and i32 %4, %29
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = sub i32 %8, %4
  br label %47

33:                                               ; preds = %17
  %34 = shl nuw i32 1, %18
  %35 = add i32 %34, %4
  %36 = lshr i32 %35, %18
  %37 = icmp eq i32 %36, %21
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.prb_data_ring, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = shl nsw i32 -1, %18
  %42 = xor i32 %41, -1
  %43 = and i32 %8, %42
  br label %47

44:                                               ; preds = %33
  %45 = load i1, ptr @get_data.__already_done, align 1
  br i1 %45, label %81, label %46, !prof !18

46:                                               ; preds = %44
  store i1 true, ptr @get_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1231, i32 noundef 9, ptr noundef null) #10
  br label %81

47:                                               ; preds = %38, %25
  %48 = phi i32 [ %43, %38 ], [ %32, %25 ]
  %49 = phi ptr [ %40, %38 ], [ %31, %25 ]
  store i32 %48, ptr %2, align 4
  %50 = load i32, ptr %1, align 4
  %51 = add i32 %50, 3
  %52 = and i32 %51, -4
  %53 = icmp ne i32 %50, %52
  %54 = load i1, ptr @get_data.__already_done.7, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %58, !prof !17

57:                                               ; preds = %47
  store i1 true, ptr @get_data.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1236, i32 noundef 9, ptr noundef null) #10
  br label %58

58:                                               ; preds = %57, %47
  br i1 %53, label %81, label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %20, align 4
  %61 = add i32 %60, 3
  %62 = and i32 %61, -4
  %63 = icmp ne i32 %60, %62
  %64 = load i1, ptr @get_data.__already_done.8, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !17

67:                                               ; preds = %59
  store i1 true, ptr @get_data.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1237, i32 noundef 9, ptr noundef null) #10
  br label %68

68:                                               ; preds = %67, %59
  br i1 %63, label %81, label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %2, align 4
  %71 = icmp ult i32 %70, 4
  %72 = load i1, ptr @get_data.__already_done.9, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !17

75:                                               ; preds = %69
  store i1 true, ptr @get_data.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1242, i32 noundef 9, ptr noundef null) #10
  br label %76

76:                                               ; preds = %75, %69
  br i1 %71, label %81, label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %2, align 4
  %79 = add i32 %78, -4
  store i32 %79, ptr %2, align 4
  %80 = getelementptr inbounds %struct.prb_data_block, ptr %49, i32 0, i32 1
  br label %81

81:                                               ; preds = %77, %76, %68, %58, %46, %44, %16, %12
  %82 = phi ptr [ @.str.6, %16 ], [ %80, %77 ], [ null, %12 ], [ null, %46 ], [ null, %44 ], [ null, %68 ], [ null, %58 ], [ null, %76 ]
  ret ptr %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prb_commit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.prb_desc_ring, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %2, align 4
  %8 = shl nsw i32 -1, %7
  %9 = xor i32 %8, -1
  %10 = and i32 %4, %9
  %11 = getelementptr %struct.prb_desc, ptr %6, i32 %10
  %12 = or i32 %4, 1073741824
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #10, !srcloc !13
  br label %13

13:                                               ; preds = %13, %1
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 %4, i32 %12, ptr elementtype(i32) %11) #10, !srcloc !14
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i1, ptr @_prb_commit.__already_done, align 1
  br i1 %21, label %23, label %22, !prof !18

22:                                               ; preds = %20
  store i1 true, ptr @_prb_commit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1603, i32 noundef 9, ptr noundef null) #10
  br label %23

23:                                               ; preds = %22, %20, %17
  %24 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #10, !srcloc !16
  %26 = getelementptr inbounds %struct.prb_desc_ring, ptr %2, i32 0, i32 3
  %27 = load volatile i32, ptr %26, align 4
  %28 = load i32, ptr %3, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %23
  %31 = or i32 %28, 1073741824
  %32 = load ptr, ptr %5, align 4
  %33 = load i32, ptr %2, align 4
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %28, %35
  %37 = getelementptr %struct.prb_desc, ptr %32, i32 %36
  %38 = or i32 %28, -2147483648
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #10, !srcloc !13
  br label %39

39:                                               ; preds = %39, %30
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 %31, i32 %38, ptr elementtype(i32) %37) #10, !srcloc !14
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %39

43:                                               ; preds = %39, %23
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @prb_reserve(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.printk_record, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = add i32 %7, 7
  %11 = and i32 %10, -4
  %12 = load i32, ptr %5, align 4
  %13 = shl nuw i32 1, %12
  %14 = add i32 %13, -4
  %15 = icmp ugt i32 %11, %14
  br i1 %15, label %241, label %16

16:                                               ; preds = %9, %3
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !9
  %18 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 3
  %20 = load volatile i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 4
  %22 = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 1
  br label %23

23:                                               ; preds = %127, %16
  %24 = phi i32 [ %20, %16 ], [ %128, %127 ]
  %25 = add i32 %24, 1
  %26 = and i32 %25, 1073741823
  %27 = load i32, ptr %1, align 4
  %28 = shl nsw i32 -1, %27
  %29 = add i32 %28, %25
  %30 = and i32 %29, 1073741823
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %31 = load volatile i32, ptr %21, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %122

33:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %34 = load i32, ptr %1, align 4
  %35 = shl nsw i32 -1, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %30, %36
  %38 = load ptr, ptr %22, align 4
  %39 = getelementptr %struct.prb_desc, ptr %38, i32 %37
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1073741823
  %42 = icmp eq i32 %41, %30
  %43 = lshr i32 %40, 30
  %44 = select i1 %42, i32 %43, i32 -1
  %45 = add nsw i32 %44, 1
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %57, label %47

47:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %48 = getelementptr %struct.prb_desc, ptr %38, i32 %37, i32 1
  %49 = load i64, ptr %48, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %50 = load volatile i32, ptr %39, align 4
  %51 = and i32 %50, 1073741823
  %52 = icmp eq i32 %51, %30
  %53 = lshr i32 %50, 30
  %54 = lshr i64 %49, 32
  %55 = trunc i64 %54 to i32
  br i1 %52, label %57, label %56

56:                                               ; preds = %47
  store volatile i32 %50, ptr %4, align 4
  br label %114

57:                                               ; preds = %47, %33
  %58 = phi i32 [ 0, %33 ], [ %55, %47 ]
  %59 = phi i32 [ %44, %33 ], [ %53, %47 ]
  %60 = phi i32 [ %40, %33 ], [ %50, %47 ]
  store volatile i32 %60, ptr %4, align 4
  switch i32 %59, label %74 [
    i32 -1, label %114
    i32 0, label %113
    i32 1, label %113
    i32 2, label %61
  ]

61:                                               ; preds = %57
  %62 = or i32 %30, -2147483648
  %63 = or i32 %29, -1073741824
  %64 = load ptr, ptr %22, align 4
  %65 = load i32, ptr %1, align 4
  %66 = shl nsw i32 -1, %65
  %67 = xor i32 %66, -1
  %68 = and i32 %30, %67
  %69 = getelementptr %struct.prb_desc, ptr %64, i32 %68
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #10, !srcloc !13
  br label %70

70:                                               ; preds = %70, %61
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 %62, i32 %63, ptr elementtype(i32) %69) #10, !srcloc !14
  %72 = extractvalue { i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %70

74:                                               ; preds = %70, %57
  %75 = tail call fastcc zeroext i1 @data_push_tail(ptr noundef %1, i32 noundef %58) #10
  br i1 %75, label %76, label %113

76:                                               ; preds = %74
  %77 = add i32 %29, 1
  %78 = and i32 %77, 1073741823
  %79 = load i32, ptr %1, align 4
  %80 = shl nsw i32 -1, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %78, %81
  %83 = load ptr, ptr %22, align 4
  %84 = getelementptr %struct.prb_desc, ptr %83, i32 %82
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 1073741823
  %87 = icmp eq i32 %86, %78
  %88 = lshr i32 %85, 30
  %89 = select i1 %87, i32 %88, i32 -1
  %90 = add nsw i32 %89, 1
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %98, label %92

92:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %93 = load volatile i32, ptr %84, align 4
  %94 = and i32 %93, 1073741823
  %95 = icmp eq i32 %94, %78
  %96 = lshr i32 %93, 30
  %97 = select i1 %95, i32 %96, i32 -1
  br label %98

98:                                               ; preds = %92, %76
  %99 = phi i32 [ %89, %76 ], [ %97, %92 ]
  %100 = phi i32 [ %85, %76 ], [ %93, %92 ]
  store volatile i32 %100, ptr %4, align 4
  %101 = and i32 %99, -2
  %102 = icmp eq i32 %101, 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #10, !srcloc !13
  br label %104

104:                                              ; preds = %104, %103
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 %30, i32 %78, ptr elementtype(i32) %21) #10, !srcloc !14
  %106 = extractvalue { i32, i32 } %105, 0
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %104

108:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  br label %112

109:                                              ; preds = %98
  %110 = load volatile i32, ptr %21, align 4
  %111 = icmp eq i32 %110, %30
  br i1 %111, label %113, label %112

112:                                              ; preds = %109, %108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %122

113:                                              ; preds = %109, %74, %57, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %158

114:                                              ; preds = %57, %56
  %115 = load volatile i32, ptr %4, align 4
  %116 = load i32, ptr %1, align 4
  %117 = shl nsw i32 -1, %116
  %118 = add i32 %117, %29
  %119 = xor i32 %118, %115
  %120 = and i32 %119, 1073741823
  %121 = icmp eq i32 %120, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %121, label %158, label %122

122:                                              ; preds = %114, %112, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !13
  br label %123

123:                                              ; preds = %123, %122
  %124 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 %24, i32 %26, ptr elementtype(i32) %19) #10, !srcloc !14
  %125 = extractvalue { i32, i32 } %124, 0
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %123

127:                                              ; preds = %123
  %128 = extractvalue { i32, i32 } %124, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %129 = icmp eq i32 %128, %24
  br i1 %129, label %130, label %23, !prof !18

130:                                              ; preds = %127
  %131 = load ptr, ptr %22, align 4
  %132 = load i32, ptr %1, align 4
  %133 = shl nsw i32 -1, %132
  %134 = xor i32 %133, -1
  %135 = and i32 %26, %134
  %136 = getelementptr %struct.prb_desc, ptr %131, i32 %135
  %137 = load volatile i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %130
  %140 = and i32 %137, 1073741823
  %141 = icmp eq i32 %140, %30
  %142 = icmp ugt i32 %137, -1073741825
  %143 = and i1 %142, %141
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load i1, ptr @desc_reserve.__already_done, align 1
  br i1 %145, label %158, label %146, !prof !18

146:                                              ; preds = %144
  store i1 true, ptr @desc_reserve.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 974, i32 noundef 9, ptr noundef null) #10
  br label %158

147:                                              ; preds = %139, %130
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %136) #10, !srcloc !13
  br label %148

148:                                              ; preds = %148, %147
  %149 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %136, ptr %136, i32 %137, i32 %26, ptr elementtype(i32) %136) #10, !srcloc !14
  %150 = extractvalue { i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %148

152:                                              ; preds = %148
  %153 = extractvalue { i32, i32 } %149, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %154 = icmp eq i32 %153, %137
  br i1 %154, label %162, label %155

155:                                              ; preds = %152
  %156 = load i1, ptr @desc_reserve.__already_done.10, align 1
  br i1 %156, label %158, label %157, !prof !18

157:                                              ; preds = %155
  store i1 true, ptr @desc_reserve.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 988, i32 noundef 9, ptr noundef null) #10
  br label %158

158:                                              ; preds = %157, %155, %146, %144, %114, %113
  %159 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %159) #10, !srcloc !13
  %160 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %159, ptr %159, i32 1, ptr elementtype(i32) %159) #10, !srcloc !20
  %161 = load i32, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %161) #10, !srcloc !16
  br label %241

162:                                              ; preds = %152
  %163 = load ptr, ptr %22, align 4
  %164 = load i32, ptr %1, align 4
  %165 = shl nsw i32 -1, %164
  %166 = xor i32 %165, -1
  %167 = and i32 %26, %166
  %168 = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr %struct.printk_info, ptr %169, i32 %167
  %171 = load i64, ptr %170, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %170, i8 0, i32 88, i1 false)
  store ptr %1, ptr %0, align 4
  %172 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 2
  store i32 %26, ptr %172, align 4
  %173 = icmp eq i64 %171, 0
  %174 = load i32, ptr %1, align 4
  br i1 %173, label %175, label %182

175:                                              ; preds = %162
  %176 = shl nsw i32 -1, %174
  %177 = xor i32 %176, -1
  %178 = and i32 %26, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = zext i32 %178 to i64
  store i64 %181, ptr %170, align 8
  br label %187

182:                                              ; preds = %175, %162
  %183 = shl nuw i32 1, %174
  %184 = zext i32 %183 to i64
  %185 = add i64 %171, %184
  store i64 %185, ptr %170, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %201, label %187

187:                                              ; preds = %182, %180
  %188 = and i32 %24, 1073741823
  %189 = or i32 %188, 1073741824
  %190 = load ptr, ptr %22, align 4
  %191 = load i32, ptr %1, align 4
  %192 = shl nsw i32 -1, %191
  %193 = xor i32 %192, -1
  %194 = and i32 %188, %193
  %195 = getelementptr %struct.prb_desc, ptr %190, i32 %194
  %196 = or i32 %188, -2147483648
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %195) #10, !srcloc !13
  br label %197

197:                                              ; preds = %197, %187
  %198 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %195, ptr %195, i32 %189, i32 %196, ptr elementtype(i32) %195) #10, !srcloc !14
  %199 = extractvalue { i32, i32 } %198, 0
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %197

201:                                              ; preds = %197, %182
  %202 = load i32, ptr %6, align 4
  %203 = getelementptr %struct.prb_desc, ptr %163, i32 %167, i32 1
  %204 = tail call fastcc ptr @data_alloc(ptr noundef %1, i32 noundef %202, ptr noundef %203, i32 noundef %26)
  %205 = getelementptr inbounds %struct.printk_record, ptr %2, i32 0, i32 1
  store ptr %204, ptr %205, align 4
  %206 = load i32, ptr %6, align 4
  %207 = icmp ne i32 %206, 0
  %208 = icmp eq ptr %204, null
  %209 = select i1 %207, i1 %208, i1 false
  br i1 %209, label %210, label %211

210:                                              ; preds = %201
  tail call void @prb_commit(ptr noundef %0)
  br label %241

211:                                              ; preds = %201
  store ptr %170, ptr %2, align 4
  %212 = load i32, ptr %203, align 4
  %213 = and i32 %212, 1
  %214 = icmp eq i32 %213, 0
  %215 = getelementptr %struct.prb_desc, ptr %163, i32 %167, i32 1, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 0
  %219 = select i1 %214, i1 true, i1 %218
  br i1 %219, label %220, label %238

220:                                              ; preds = %211
  %221 = load i32, ptr %5, align 4
  %222 = lshr i32 %212, %221
  %223 = lshr i32 %216, %221
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = shl nsw i32 -1, %221
  %227 = xor i32 %226, -1
  %228 = and i32 %216, %227
  %229 = and i32 %212, %227
  %230 = sub i32 %228, %229
  br label %238

231:                                              ; preds = %220
  %232 = shl nuw i32 1, %221
  %233 = add i32 %232, -1
  %234 = and i32 %233, %216
  %235 = add i32 %234, %232
  %236 = and i32 %233, %212
  %237 = sub i32 %235, %236
  br label %238

238:                                              ; preds = %231, %225, %211
  %239 = phi i32 [ %230, %225 ], [ %237, %231 ], [ 0, %211 ]
  %240 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 3
  store i32 %239, ptr %240, align 4
  br label %242

241:                                              ; preds = %210, %158, %9
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false)
  br label %242

242:                                              ; preds = %241, %238
  %243 = phi i1 [ true, %238 ], [ false, %241 ]
  ret i1 %243
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prb_final_commit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.prb_desc_ring, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %2, align 4
  %8 = shl nsw i32 -1, %7
  %9 = xor i32 %8, -1
  %10 = and i32 %4, %9
  %11 = getelementptr %struct.prb_desc, ptr %6, i32 %10
  %12 = or i32 %4, -2147483648
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #10, !srcloc !13
  br label %13

13:                                               ; preds = %13, %1
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 %4, i32 %12, ptr elementtype(i32) %11) #10, !srcloc !14
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i1, ptr @_prb_commit.__already_done, align 1
  br i1 %21, label %23, label %22, !prof !18

22:                                               ; preds = %20
  store i1 true, ptr @_prb_commit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1603, i32 noundef 9, ptr noundef null) #10
  br label %23

23:                                               ; preds = %22, %20, %17
  %24 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #10, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @prb_read_valid(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  store i64 %1, ptr %4, align 8
  %5 = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2, ptr noundef null)
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_prb_read_valid(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.prb_desc, align 4
  %8 = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds i8, ptr %7, i32 4
  %11 = getelementptr inbounds %struct.prb_desc, ptr %7, i32 0, i32 1, i32 1
  %12 = icmp eq ptr %2, null
  %13 = getelementptr inbounds %struct.printk_record, ptr %2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.printk_record, ptr %2, i32 0, i32 2
  %15 = icmp ne ptr %3, null
  %16 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 4
  %18 = load i64, ptr %1, align 8
  br label %19

19:                                               ; preds = %198, %4
  %20 = phi i64 [ %199, %198 ], [ %18, %4 ]
  %21 = load ptr, ptr %8, align 4
  %22 = load i32, ptr %0, align 4
  %23 = shl nsw i32 -1, %22
  %24 = xor i32 %23, -1
  %25 = trunc i64 %20 to i32
  %26 = and i32 %24, %25
  %27 = getelementptr %struct.printk_info, ptr %21, i32 %26
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr %struct.prb_desc, ptr %28, i32 %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  store i64 0, ptr %10, align 4, !annotation !8
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1073741823
  %32 = and i32 %31, %24
  %33 = getelementptr %struct.prb_desc, ptr %28, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1073741823
  %36 = icmp eq i32 %35, %31
  %37 = lshr i32 %34, 30
  %38 = select i1 %36, i32 %37, i32 -1
  %39 = add nsw i32 %38, 1
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %54, label %41

41:                                               ; preds = %19
  %42 = getelementptr %struct.printk_info, ptr %21, i32 %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %43 = getelementptr %struct.prb_desc, ptr %28, i32 %32, i32 1
  %44 = load i64, ptr %43, align 4
  store i64 %44, ptr %10, align 4
  %45 = load i64, ptr %42, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %46 = load volatile i32, ptr %33, align 4
  %47 = and i32 %46, 1073741823
  %48 = icmp eq i32 %47, %31
  %49 = lshr i32 %46, 30
  %50 = select i1 %48, i32 %49, i32 -1
  %51 = trunc i64 %44 to i32
  %52 = lshr i64 %44, 32
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %41, %19
  %55 = phi i32 [ 0, %19 ], [ %53, %41 ]
  %56 = phi i32 [ 0, %19 ], [ %51, %41 ]
  %57 = phi i64 [ 0, %19 ], [ %45, %41 ]
  %58 = phi i32 [ %38, %19 ], [ %50, %41 ]
  %59 = phi i32 [ %34, %19 ], [ %46, %41 ]
  store volatile i32 %59, ptr %7, align 4
  %60 = add nsw i32 %58, -2
  %61 = icmp ult i32 %60, -3
  %62 = icmp eq i64 %57, %20
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %158

64:                                               ; preds = %54
  %65 = icmp eq i32 %58, 3
  br i1 %65, label %158, label %66

66:                                               ; preds = %64
  %67 = icmp eq i32 %56, 1
  %68 = icmp eq i32 %55, 1
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %158, label %70

70:                                               ; preds = %66
  br i1 %12, label %157, label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %2, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %72, ptr noundef align 8 dereferenceable(88) %27, i32 88, i1 false) #10
  br label %75

75:                                               ; preds = %74, %71
  %76 = getelementptr %struct.printk_info, ptr %21, i32 %26, i32 2
  %77 = load i16, ptr %76, align 8
  %78 = load ptr, ptr %13, align 4
  %79 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %80 = icmp ne ptr %78, null
  %81 = icmp ne i32 %79, 0
  %82 = and i1 %80, %81
  %83 = or i1 %15, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %75
  %85 = call fastcc ptr @get_data(ptr noundef %16, ptr noundef %10, ptr noundef nonnull %6) #10
  %86 = icmp eq ptr %85, null
  br i1 %86, label %115, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %6, align 4
  %89 = zext i16 %77 to i32
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %115, label %91

91:                                               ; preds = %87
  br i1 %15, label %92, label %111

92:                                               ; preds = %91
  %93 = icmp eq i16 %77, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %92
  %95 = ptrtoint ptr %85 to i32
  %96 = add i32 %95, %89
  br label %97

97:                                               ; preds = %103, %94
  %98 = phi ptr [ %85, %94 ], [ %105, %103 ]
  %99 = phi i32 [ 1, %94 ], [ %104, %103 ]
  %100 = phi i32 [ %89, %94 ], [ %107, %103 ]
  %101 = tail call ptr @memchr(ptr noundef %98, i32 noundef 10, i32 noundef %100) #10
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = add i32 %99, 1
  %105 = getelementptr i8, ptr %101, i32 1
  %106 = ptrtoint ptr %105 to i32
  %107 = sub i32 %96, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %97

109:                                              ; preds = %103, %97, %92
  %110 = phi i32 [ 1, %92 ], [ %104, %103 ], [ %99, %97 ]
  store i32 %110, ptr %3, align 4
  br label %111

111:                                              ; preds = %109, %91
  br i1 %82, label %112, label %116

112:                                              ; preds = %111
  %113 = and i32 %79, 65535
  %114 = tail call i32 @llvm.umin.i32(i32 %113, i32 %89) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %78, ptr nonnull align 1 %85, i32 %114, i1 false) #10
  br label %116

115:                                              ; preds = %87, %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %158

116:                                              ; preds = %112, %111, %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %117 = load ptr, ptr %8, align 4
  %118 = load i32, ptr %0, align 4
  %119 = shl nsw i32 -1, %118
  %120 = xor i32 %119, -1
  %121 = and i32 %31, %120
  %122 = load ptr, ptr %9, align 4
  %123 = getelementptr %struct.prb_desc, ptr %122, i32 %121
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %124, 1073741823
  %126 = icmp eq i32 %125, %31
  %127 = lshr i32 %124, 30
  %128 = select i1 %126, i32 %127, i32 -1
  %129 = add nsw i32 %128, 1
  %130 = icmp ult i32 %129, 2
  br i1 %130, label %141, label %131

131:                                              ; preds = %116
  %132 = getelementptr %struct.printk_info, ptr %117, i32 %121
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %133 = getelementptr %struct.prb_desc, ptr %122, i32 %121, i32 1
  %134 = load i64, ptr %133, align 4
  store i64 %134, ptr %10, align 4
  %135 = load i64, ptr %132, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %136 = load volatile i32, ptr %123, align 4
  %137 = and i32 %136, 1073741823
  %138 = icmp eq i32 %137, %31
  %139 = lshr i32 %136, 30
  %140 = select i1 %138, i32 %139, i32 -1
  br label %141

141:                                              ; preds = %131, %116
  %142 = phi i64 [ 0, %116 ], [ %135, %131 ]
  %143 = phi i32 [ %128, %116 ], [ %140, %131 ]
  %144 = phi i32 [ %124, %116 ], [ %136, %131 ]
  store volatile i32 %144, ptr %7, align 4
  %145 = add nsw i32 %143, -2
  %146 = icmp ult i32 %145, -3
  %147 = icmp eq i64 %142, %20
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %149, label %158

149:                                              ; preds = %141
  %150 = icmp eq i32 %143, 3
  br i1 %150, label %158, label %151

151:                                              ; preds = %149
  %152 = load i32, ptr %10, align 4
  %153 = icmp eq i32 %152, 1
  %154 = load i32, ptr %11, align 4
  %155 = icmp eq i32 %154, 1
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %158, label %157

157:                                              ; preds = %151, %70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  br label %200

158:                                              ; preds = %151, %149, %141, %115, %66, %64, %54
  %159 = phi i1 [ true, %151 ], [ true, %115 ], [ false, %141 ], [ true, %149 ], [ true, %64 ], [ false, %54 ], [ true, %66 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 0, ptr %5, align 4
  br label %160

160:                                              ; preds = %191, %158
  %161 = phi i64 [ 0, %158 ], [ %186, %191 ]
  %162 = load volatile i32, ptr %17, align 4
  %163 = load ptr, ptr %8, align 4
  %164 = load i32, ptr %0, align 4
  %165 = shl nsw i32 -1, %164
  %166 = xor i32 %165, -1
  %167 = and i32 %162, %166
  %168 = load ptr, ptr %9, align 4
  %169 = getelementptr %struct.prb_desc, ptr %168, i32 %167
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %170, 1073741823
  %172 = icmp eq i32 %171, %162
  %173 = lshr i32 %170, 30
  %174 = select i1 %172, i32 %173, i32 -1
  %175 = add nsw i32 %174, 1
  %176 = icmp ult i32 %175, 2
  br i1 %176, label %185, label %177

177:                                              ; preds = %160
  %178 = getelementptr %struct.printk_info, ptr %163, i32 %167
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %179 = load i64, ptr %178, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %180 = load volatile i32, ptr %169, align 4
  %181 = and i32 %180, 1073741823
  %182 = icmp eq i32 %181, %162
  %183 = lshr i32 %180, 30
  %184 = select i1 %182, i32 %183, i32 -1
  br label %185

185:                                              ; preds = %177, %160
  %186 = phi i64 [ %161, %160 ], [ %179, %177 ]
  %187 = phi i32 [ %174, %160 ], [ %184, %177 ]
  %188 = phi i32 [ %170, %160 ], [ %180, %177 ]
  store volatile i32 %188, ptr %5, align 4
  %189 = and i32 %187, -2
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  br label %160

192:                                              ; preds = %185
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %193 = load i64, ptr %1, align 8
  %194 = icmp ult i64 %193, %186
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  br i1 %159, label %196, label %200

196:                                              ; preds = %195
  %197 = add i64 %193, 1
  br label %198

198:                                              ; preds = %196, %192
  %199 = phi i64 [ %197, %196 ], [ %186, %192 ]
  store i64 %199, ptr %1, align 8
  br label %19

200:                                              ; preds = %195, %157
  %201 = phi i1 [ true, %157 ], [ false, %195 ]
  ret i1 %201
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @prb_read_valid_info(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.printk_record, align 4
  store i64 %1, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.printk_record, ptr %6, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.printk_record, ptr %6, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @prb_first_valid_seq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8
  %3 = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef null)
  %4 = load i64, ptr %2, align 8
  %5 = select i1 %3, i64 %4, i64 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i64 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @prb_next_seq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8
  %3 = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef null)
  br i1 %3, label %4, label %8

4:                                                ; preds = %4, %1
  %5 = load i64, ptr %2, align 8
  %6 = add i64 %5, 1
  store i64 %6, ptr %2, align 8
  %7 = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef null)
  br i1 %7, label %4, label %8

8:                                                ; preds = %4, %1
  %9 = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i64 %9
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prb_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #5 {
  %7 = shl nuw i32 1, %4
  %8 = shl i32 12, %4
  tail call void @llvm.memset.p0.i32(ptr align 4 %3, i8 0, i32 %8, i1 false)
  %9 = shl i32 88, %4
  tail call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 %9, i1 false)
  store i32 %4, ptr %0, align 4
  %10 = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 1
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 2
  store ptr %5, ptr %11, align 4
  %12 = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 3
  %13 = and i32 %7, 1073741823
  %14 = xor i32 %13, 1073741823
  store volatile i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 4
  store volatile i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1
  store i32 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, i32 2
  %19 = shl nsw i32 -1, %2
  store volatile i32 %19, ptr %18, align 4
  %20 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, i32 3
  store volatile i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 2
  store volatile i32 0, ptr %21, align 4
  %22 = add i32 %7, -1
  %23 = getelementptr %struct.prb_desc, ptr %3, i32 %22
  %24 = or i32 %14, -1073741824
  store volatile i32 %24, ptr %23, align 4
  %25 = getelementptr %struct.prb_desc, ptr %3, i32 %22, i32 1
  store i32 1, ptr %25, align 4
  %26 = getelementptr %struct.prb_desc, ptr %3, i32 %22, i32 1, i32 1
  store i32 1, ptr %26, align 4
  %27 = zext i32 %7 to i64
  %28 = sub nsw i64 0, %27
  store i64 %28, ptr %5, align 8
  %29 = getelementptr %struct.printk_info, ptr %5, i32 %22
  store i64 0, ptr %29, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @prb_record_text_space(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @data_push_tail(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %102

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = add i32 %10, %1
  %12 = load i32, ptr %4, align 4
  %13 = lshr i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %102

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, i32 1
  %17 = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 1
  br label %18

18:                                               ; preds = %87, %15
  %19 = phi i32 [ %12, %15 ], [ %91, %87 ]
  %20 = phi i32 [ %9, %15 ], [ %88, %87 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 0, ptr %3, align 4
  br label %21

21:                                               ; preds = %78, %18
  %22 = phi i32 [ %19, %18 ], [ %81, %78 ]
  %23 = phi i32 [ %20, %18 ], [ %58, %78 ]
  %24 = phi i32 [ 0, %18 ], [ %58, %78 ]
  %25 = phi i32 [ 0, %18 ], [ %57, %78 ]
  %26 = load ptr, ptr %16, align 4
  %27 = shl nsw i32 -1, %22
  %28 = xor i32 %27, -1
  %29 = and i32 %23, %28
  %30 = getelementptr i8, ptr %26, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %0, align 4
  %33 = shl nsw i32 -1, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %31, %34
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr %struct.prb_desc, ptr %36, i32 %35
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1073741823
  %40 = icmp eq i32 %39, %31
  %41 = lshr i32 %38, 30
  %42 = select i1 %40, i32 %41, i32 -1
  %43 = add nsw i32 %42, 1
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %56, label %45

45:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %46 = getelementptr %struct.prb_desc, ptr %36, i32 %35, i32 1
  %47 = load i64, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %48 = load volatile i32, ptr %37, align 4
  %49 = and i32 %48, 1073741823
  %50 = icmp eq i32 %49, %31
  %51 = lshr i32 %48, 30
  %52 = trunc i64 %47 to i32
  %53 = lshr i64 %47, 32
  %54 = trunc i64 %53 to i32
  br i1 %50, label %56, label %55

55:                                               ; preds = %45
  store volatile i32 %48, ptr %3, align 4
  br label %84

56:                                               ; preds = %45, %21
  %57 = phi i32 [ %25, %21 ], [ %52, %45 ]
  %58 = phi i32 [ %24, %21 ], [ %54, %45 ]
  %59 = phi i32 [ %42, %21 ], [ %51, %45 ]
  %60 = phi i32 [ %38, %21 ], [ %48, %45 ]
  store volatile i32 %60, ptr %3, align 4
  switch i32 %59, label %78 [
    i32 -1, label %84
    i32 0, label %84
    i32 1, label %84
    i32 2, label %61
    i32 3, label %76
  ]

61:                                               ; preds = %56
  %62 = icmp eq i32 %57, %23
  br i1 %62, label %63, label %84

63:                                               ; preds = %61
  %64 = or i32 %31, -2147483648
  %65 = or i32 %31, -1073741824
  %66 = load ptr, ptr %17, align 4
  %67 = load i32, ptr %0, align 4
  %68 = shl nsw i32 -1, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %31, %69
  %71 = getelementptr %struct.prb_desc, ptr %66, i32 %70
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #10, !srcloc !13
  br label %72

72:                                               ; preds = %72, %63
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 %64, i32 %65, ptr elementtype(i32) %71) #10, !srcloc !14
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %72

76:                                               ; preds = %56
  %77 = icmp eq i32 %57, %23
  br i1 %77, label %78, label %84

78:                                               ; preds = %76, %72, %56
  %79 = xor i32 %58, -1
  %80 = add i32 %79, %1
  %81 = load i32, ptr %4, align 4
  %82 = lshr i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %21, label %94

84:                                               ; preds = %76, %61, %56, %56, %56, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  %85 = load volatile i32, ptr %8, align 4
  %86 = icmp eq i32 %85, %20
  br i1 %86, label %102, label %87

87:                                               ; preds = %99, %84
  %88 = phi i32 [ %85, %84 ], [ %100, %99 ]
  %89 = xor i32 %88, -1
  %90 = add i32 %89, %1
  %91 = load i32, ptr %4, align 4
  %92 = lshr i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %18, label %102

94:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #10, !srcloc !13
  br label %95

95:                                               ; preds = %95, %94
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 %20, i32 %58, ptr elementtype(i32) %8) #10, !srcloc !14
  %97 = extractvalue { i32, i32 } %96, 0
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %95

99:                                               ; preds = %95
  %100 = extractvalue { i32, i32 } %96, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %101 = icmp eq i32 %100, %20
  br i1 %101, label %102, label %87, !prof !18

102:                                              ; preds = %99, %87, %84, %7, %2
  %103 = phi i1 [ true, %2 ], [ true, %7 ], [ false, %84 ], [ true, %87 ], [ true, %99 ]
  ret i1 %103
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 371245, i64 371306}
!10 = !{i64 2149945631}
!11 = !{i64 2149945770}
!12 = !{i64 2148091591}
!13 = !{i64 476006, i64 2147965977, i64 2147966003, i64 2147966050, i64 2147966072, i64 2147966100, i64 2147966120}
!14 = !{i64 462069, i64 462093, i64 462114, i64 462131, i64 462148}
!15 = !{i64 2148091791}
!16 = !{i64 374262}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2149947836}
!20 = !{i64 2147978189, i64 2147978215, i64 2147978244, i64 2147978278, i64 2147978309, i64 2147978332}
!21 = !{i64 2149968978}
!22 = !{i64 2149946360}
