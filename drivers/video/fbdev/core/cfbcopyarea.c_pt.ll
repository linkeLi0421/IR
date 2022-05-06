; ModuleID = '/llk/IR/drivers/video/fbdev/core/cfbcopyarea.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/cfbcopyarea.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfb_copyarea:\09\09\09\09\09"
module asm "\09.asciz \09\22cfb_copyarea\22\09\09\09\09\09"
module asm "__kstrtabns_cfb_copyarea:\09\09\09\09\09"
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

@__kstrtab_cfb_copyarea = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfb_copyarea = external dso_local constant [0 x i8], align 1
@__ksymtab_cfb_copyarea = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfb_copyarea to i32), ptr @__kstrtab_cfb_copyarea, ptr @__kstrtabns_cfb_copyarea }, section "___ksymtab+cfb_copyarea", align 4
@__UNIQUE_ID_author259 = internal constant [57 x i8] c"cfbcopyarea.author=James Simmons <jsimmons@users.sf.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [62 x i8] c"cfbcopyarea.description=Generic software accelerated copyarea\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [54 x i8] c"cfbcopyarea.file=drivers/video/fbdev/core/cfbcopyarea\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [24 x i8] c"cfbcopyarea.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__ksymtab_cfb_copyarea], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfb_copyarea(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %12, label %13, label %536

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
  br i1 %54, label %536, label %304

56:                                               ; preds = %53
  br i1 %54, label %536, label %57

57:                                               ; preds = %302, %56
  %58 = phi i32 [ %63, %302 ], [ %45, %56 ]
  %59 = phi i32 [ %62, %302 ], [ %41, %56 ]
  %60 = phi i32 [ %61, %302 ], [ %4, %56 ]
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
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #1, !srcloc !8
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #1, !srcloc !8
  %97 = xor i32 %96, %95
  %98 = and i32 %94, %97
  %99 = xor i32 %98, %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %99) #1, !srcloc !9
  br label %302

100:                                              ; preds = %88
  br i1 %91, label %110, label %101

101:                                              ; preds = %100
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #1, !srcloc !8
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #1, !srcloc !8
  %104 = xor i32 %103, %102
  %105 = and i32 %104, %84
  %106 = xor i32 %105, %102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %106) #1, !srcloc !9
  %107 = getelementptr i32, ptr %75, i32 -1
  %108 = getelementptr i32, ptr %79, i32 -1
  %109 = sub i32 %71, %89
  br label %110

110:                                              ; preds = %101, %100
  %111 = phi ptr [ %108, %101 ], [ %79, %100 ]
  %112 = phi i32 [ %109, %101 ], [ %71, %100 ]
  %113 = phi ptr [ %107, %101 ], [ %75, %100 ]
  %114 = lshr i32 %112, 5
  %115 = icmp ugt i32 %112, 255
  br i1 %115, label %121, label %116

116:                                              ; preds = %121, %110
  %117 = phi ptr [ %111, %110 ], [ %146, %121 ]
  %118 = phi i32 [ %114, %110 ], [ %149, %121 ]
  %119 = phi ptr [ %113, %110 ], [ %148, %121 ]
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %160, label %151

121:                                              ; preds = %121, %110
  %122 = phi ptr [ %148, %121 ], [ %113, %110 ]
  %123 = phi i32 [ %149, %121 ], [ %114, %110 ]
  %124 = phi ptr [ %146, %121 ], [ %111, %110 ]
  %125 = getelementptr i32, ptr %124, i32 -1
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #1, !srcloc !8
  %127 = getelementptr i32, ptr %122, i32 -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %126) #1, !srcloc !9
  %128 = getelementptr i32, ptr %124, i32 -2
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #1, !srcloc !8
  %130 = getelementptr i32, ptr %122, i32 -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %129) #1, !srcloc !9
  %131 = getelementptr i32, ptr %124, i32 -3
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #1, !srcloc !8
  %133 = getelementptr i32, ptr %122, i32 -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %132) #1, !srcloc !9
  %134 = getelementptr i32, ptr %124, i32 -4
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #1, !srcloc !8
  %136 = getelementptr i32, ptr %122, i32 -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %135) #1, !srcloc !9
  %137 = getelementptr i32, ptr %124, i32 -5
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #1, !srcloc !8
  %139 = getelementptr i32, ptr %122, i32 -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %138) #1, !srcloc !9
  %140 = getelementptr i32, ptr %124, i32 -6
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #1, !srcloc !8
  %142 = getelementptr i32, ptr %122, i32 -6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %141) #1, !srcloc !9
  %143 = getelementptr i32, ptr %124, i32 -7
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #1, !srcloc !8
  %145 = getelementptr i32, ptr %122, i32 -7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %144) #1, !srcloc !9
  %146 = getelementptr i32, ptr %124, i32 -8
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #1, !srcloc !8
  %148 = getelementptr i32, ptr %122, i32 -8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %147) #1, !srcloc !9
  %149 = add i32 %123, -8
  %150 = icmp ugt i32 %149, 7
  br i1 %150, label %121, label %116

151:                                              ; preds = %151, %116
  %152 = phi ptr [ %158, %151 ], [ %119, %116 ]
  %153 = phi i32 [ %155, %151 ], [ %118, %116 ]
  %154 = phi ptr [ %156, %151 ], [ %117, %116 ]
  %155 = add i32 %153, -1
  %156 = getelementptr i32, ptr %154, i32 -1
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #1, !srcloc !8
  %158 = getelementptr i32, ptr %152, i32 -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %157) #1, !srcloc !9
  %159 = icmp eq i32 %155, 0
  br i1 %159, label %160, label %151

160:                                              ; preds = %151, %116
  %161 = phi ptr [ %117, %116 ], [ %156, %151 ]
  %162 = phi ptr [ %119, %116 ], [ %158, %151 ]
  %163 = icmp eq i32 %66, 0
  br i1 %163, label %302, label %164

164:                                              ; preds = %160
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #1, !srcloc !8
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #1, !srcloc !8
  %167 = xor i32 %166, %165
  %168 = and i32 %167, %86
  %169 = xor i32 %168, %166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %169) #1, !srcloc !9
  br label %302

170:                                              ; preds = %57
  %171 = and i32 %82, 31
  %172 = sub nsw i32 0, %82
  %173 = and i32 %172, 31
  %174 = add nuw nsw i32 %80, 1
  %175 = icmp ugt i32 %71, %174
  br i1 %175, label %201, label %176

176:                                              ; preds = %170
  %177 = icmp eq i32 %83, 0
  %178 = select i1 %177, i32 -1, i32 %85
  %179 = and i32 %178, %86
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #1, !srcloc !8
  %181 = icmp slt i32 %82, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = lshr i32 %180, %173
  br label %195

184:                                              ; preds = %176
  %185 = add nuw nsw i32 %81, 1
  %186 = icmp ult i32 %185, %71
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = shl i32 %180, %171
  br label %195

189:                                              ; preds = %184
  %190 = getelementptr i32, ptr %79, i32 -1
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #1, !srcloc !8
  %192 = shl i32 %180, %171
  %193 = lshr i32 %191, %173
  %194 = or i32 %193, %192
  br label %195

195:                                              ; preds = %189, %187, %182
  %196 = phi i32 [ %183, %182 ], [ %188, %187 ], [ %194, %189 ]
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #1, !srcloc !8
  %198 = xor i32 %197, %196
  %199 = and i32 %179, %198
  %200 = xor i32 %199, %197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %200) #1, !srcloc !9
  br label %302

201:                                              ; preds = %170
  %202 = getelementptr i32, ptr %79, i32 -1
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #1, !srcloc !8
  %204 = icmp slt i32 %82, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = lshr i32 %203, %173
  br label %213

207:                                              ; preds = %201
  %208 = getelementptr i32, ptr %202, i32 -1
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #1, !srcloc !8
  %210 = shl i32 %203, %171
  %211 = lshr i32 %209, %173
  %212 = or i32 %211, %210
  br label %213

213:                                              ; preds = %207, %205
  %214 = phi ptr [ %202, %205 ], [ %208, %207 ]
  %215 = phi i32 [ %206, %205 ], [ %212, %207 ]
  %216 = phi i32 [ %203, %205 ], [ %209, %207 ]
  %217 = icmp eq i32 %83, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %215) #1, !srcloc !9
  br label %224

219:                                              ; preds = %213
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #1, !srcloc !8
  %221 = xor i32 %220, %215
  %222 = and i32 %221, %84
  %223 = xor i32 %222, %215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %223) #1, !srcloc !9
  br label %224

224:                                              ; preds = %219, %218
  %225 = sub i32 %71, %174
  %226 = and i32 %225, 31
  %227 = lshr i32 %225, 5
  %228 = getelementptr i32, ptr %75, i32 -1
  %229 = icmp ugt i32 %225, 127
  br i1 %229, label %236, label %230

230:                                              ; preds = %236, %224
  %231 = phi ptr [ %214, %224 ], [ %260, %236 ]
  %232 = phi i32 [ %227, %224 ], [ %265, %236 ]
  %233 = phi i32 [ %216, %224 ], [ %261, %236 ]
  %234 = phi ptr [ %228, %224 ], [ %266, %236 ]
  %235 = icmp eq i32 %232, 0
  br i1 %235, label %281, label %268

236:                                              ; preds = %236, %224
  %237 = phi ptr [ %266, %236 ], [ %228, %224 ]
  %238 = phi i32 [ %261, %236 ], [ %216, %224 ]
  %239 = phi ptr [ %259, %236 ], [ %75, %224 ]
  %240 = phi i32 [ %265, %236 ], [ %227, %224 ]
  %241 = phi ptr [ %260, %236 ], [ %214, %224 ]
  %242 = getelementptr i32, ptr %241, i32 -1
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #1, !srcloc !8
  %244 = shl i32 %238, %171
  %245 = lshr i32 %243, %173
  %246 = or i32 %245, %244
  %247 = getelementptr i32, ptr %239, i32 -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %246) #1, !srcloc !9
  %248 = getelementptr i32, ptr %241, i32 -2
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #1, !srcloc !8
  %250 = shl i32 %243, %171
  %251 = lshr i32 %249, %173
  %252 = or i32 %251, %250
  %253 = getelementptr i32, ptr %239, i32 -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %252) #1, !srcloc !9
  %254 = getelementptr i32, ptr %241, i32 -3
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #1, !srcloc !8
  %256 = shl i32 %249, %171
  %257 = lshr i32 %255, %173
  %258 = or i32 %257, %256
  %259 = getelementptr i32, ptr %239, i32 -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 %258) #1, !srcloc !9
  %260 = getelementptr i32, ptr %241, i32 -4
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #1, !srcloc !8
  %262 = shl i32 %255, %171
  %263 = lshr i32 %261, %173
  %264 = or i32 %263, %262
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %264) #1, !srcloc !9
  %265 = add i32 %240, -4
  %266 = getelementptr i32, ptr %239, i32 -5
  %267 = icmp ugt i32 %265, 3
  br i1 %267, label %236, label %230

268:                                              ; preds = %268, %230
  %269 = phi i32 [ %275, %268 ], [ %233, %230 ]
  %270 = phi ptr [ %279, %268 ], [ %234, %230 ]
  %271 = phi i32 [ %273, %268 ], [ %232, %230 ]
  %272 = phi ptr [ %274, %268 ], [ %231, %230 ]
  %273 = add i32 %271, -1
  %274 = getelementptr i32, ptr %272, i32 -1
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #1, !srcloc !8
  %276 = shl i32 %269, %171
  %277 = lshr i32 %275, %173
  %278 = or i32 %277, %276
  %279 = getelementptr i32, ptr %270, i32 -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %278) #1, !srcloc !9
  %280 = icmp eq i32 %273, 0
  br i1 %280, label %281, label %268

281:                                              ; preds = %268, %230
  %282 = phi ptr [ %231, %230 ], [ %274, %268 ]
  %283 = phi ptr [ %234, %230 ], [ %279, %268 ]
  %284 = phi i32 [ %233, %230 ], [ %275, %268 ]
  %285 = icmp eq i32 %226, 0
  br i1 %285, label %302, label %286

286:                                              ; preds = %281
  %287 = sub nuw nsw i32 32, %171
  %288 = icmp ugt i32 %226, %287
  br i1 %288, label %291, label %289

289:                                              ; preds = %286
  %290 = shl i32 %284, %171
  br label %296

291:                                              ; preds = %286
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %282) #1, !srcloc !8
  %293 = shl i32 %284, %171
  %294 = lshr i32 %292, %173
  %295 = or i32 %294, %293
  br label %296

296:                                              ; preds = %291, %289
  %297 = phi i32 [ %290, %289 ], [ %295, %291 ]
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %283) #1, !srcloc !8
  %299 = xor i32 %298, %297
  %300 = and i32 %299, %86
  %301 = xor i32 %300, %298
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 %301) #1, !srcloc !9
  br label %302

302:                                              ; preds = %296, %281, %195, %164, %160, %92
  %303 = icmp eq i32 %61, 0
  br i1 %303, label %536, label %57

304:                                              ; preds = %532, %55
  %305 = phi i32 [ %534, %532 ], [ %45, %55 ]
  %306 = phi i32 [ %533, %532 ], [ %41, %55 ]
  %307 = phi i32 [ %308, %532 ], [ %4, %55 ]
  %308 = add i32 %307, -1
  %309 = lshr i32 %306, 5
  %310 = getelementptr i32, ptr %33, i32 %309
  %311 = and i32 %306, 31
  %312 = lshr i32 %305, 5
  %313 = getelementptr i32, ptr %33, i32 %312
  %314 = and i32 %305, 31
  %315 = load i32, ptr %37, align 4
  %316 = mul i32 %315, %6
  %317 = sub nsw i32 %311, %314
  %318 = shl nsw i32 -1, %311
  %319 = add i32 %316, %311
  %320 = and i32 %319, 31
  %321 = shl nsw i32 -1, %320
  %322 = xor i32 %321, -1
  %323 = icmp eq i32 %311, %314
  br i1 %323, label %324, label %406

324:                                              ; preds = %304
  %325 = icmp ult i32 %319, 33
  br i1 %325, label %326, label %335

326:                                              ; preds = %324
  %327 = icmp eq i32 %320, 0
  %328 = select i1 %327, i32 -1, i32 %322
  %329 = and i32 %328, %318
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #1, !srcloc !8
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #1, !srcloc !8
  %332 = xor i32 %331, %330
  %333 = and i32 %329, %332
  %334 = xor i32 %333, %331
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %310, i32 %334) #1, !srcloc !9
  br label %532

335:                                              ; preds = %324
  %336 = icmp eq i32 %311, 0
  br i1 %336, label %346, label %337

337:                                              ; preds = %335
  %338 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #1, !srcloc !8
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #1, !srcloc !8
  %340 = xor i32 %339, %338
  %341 = and i32 %340, %318
  %342 = xor i32 %341, %339
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %310, i32 %342) #1, !srcloc !9
  %343 = getelementptr i32, ptr %310, i32 1
  %344 = getelementptr i32, ptr %313, i32 1
  %345 = add i32 %319, -32
  br label %346

346:                                              ; preds = %337, %335
  %347 = phi ptr [ %344, %337 ], [ %313, %335 ]
  %348 = phi i32 [ %345, %337 ], [ %316, %335 ]
  %349 = phi ptr [ %343, %337 ], [ %310, %335 ]
  %350 = lshr i32 %348, 5
  %351 = icmp ugt i32 %348, 255
  br i1 %351, label %357, label %352

352:                                              ; preds = %357, %346
  %353 = phi ptr [ %347, %346 ], [ %382, %357 ]
  %354 = phi i32 [ %350, %346 ], [ %385, %357 ]
  %355 = phi ptr [ %349, %346 ], [ %384, %357 ]
  %356 = icmp eq i32 %354, 0
  br i1 %356, label %396, label %387

357:                                              ; preds = %357, %346
  %358 = phi ptr [ %384, %357 ], [ %349, %346 ]
  %359 = phi i32 [ %385, %357 ], [ %350, %346 ]
  %360 = phi ptr [ %382, %357 ], [ %347, %346 ]
  %361 = getelementptr i32, ptr %360, i32 1
  %362 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %360) #1, !srcloc !8
  %363 = getelementptr i32, ptr %358, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 %362) #1, !srcloc !9
  %364 = getelementptr i32, ptr %360, i32 2
  %365 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %361) #1, !srcloc !8
  %366 = getelementptr i32, ptr %358, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %363, i32 %365) #1, !srcloc !9
  %367 = getelementptr i32, ptr %360, i32 3
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %364) #1, !srcloc !8
  %369 = getelementptr i32, ptr %358, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %366, i32 %368) #1, !srcloc !9
  %370 = getelementptr i32, ptr %360, i32 4
  %371 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %367) #1, !srcloc !8
  %372 = getelementptr i32, ptr %358, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %371) #1, !srcloc !9
  %373 = getelementptr i32, ptr %360, i32 5
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %370) #1, !srcloc !8
  %375 = getelementptr i32, ptr %358, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %372, i32 %374) #1, !srcloc !9
  %376 = getelementptr i32, ptr %360, i32 6
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %373) #1, !srcloc !8
  %378 = getelementptr i32, ptr %358, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %375, i32 %377) #1, !srcloc !9
  %379 = getelementptr i32, ptr %360, i32 7
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %376) #1, !srcloc !8
  %381 = getelementptr i32, ptr %358, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %378, i32 %380) #1, !srcloc !9
  %382 = getelementptr i32, ptr %360, i32 8
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %379) #1, !srcloc !8
  %384 = getelementptr i32, ptr %358, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %381, i32 %383) #1, !srcloc !9
  %385 = add i32 %359, -8
  %386 = icmp ugt i32 %385, 7
  br i1 %386, label %357, label %352

387:                                              ; preds = %387, %352
  %388 = phi ptr [ %394, %387 ], [ %355, %352 ]
  %389 = phi i32 [ %391, %387 ], [ %354, %352 ]
  %390 = phi ptr [ %392, %387 ], [ %353, %352 ]
  %391 = add i32 %389, -1
  %392 = getelementptr i32, ptr %390, i32 1
  %393 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #1, !srcloc !8
  %394 = getelementptr i32, ptr %388, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %388, i32 %393) #1, !srcloc !9
  %395 = icmp eq i32 %391, 0
  br i1 %395, label %396, label %387

396:                                              ; preds = %387, %352
  %397 = phi ptr [ %353, %352 ], [ %392, %387 ]
  %398 = phi ptr [ %355, %352 ], [ %394, %387 ]
  %399 = icmp eq i32 %320, 0
  br i1 %399, label %532, label %400

400:                                              ; preds = %396
  %401 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %397) #1, !srcloc !8
  %402 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %398) #1, !srcloc !8
  %403 = xor i32 %402, %401
  %404 = and i32 %403, %321
  %405 = xor i32 %404, %401
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 %405) #1, !srcloc !9
  br label %532

406:                                              ; preds = %304
  %407 = and i32 %317, 31
  %408 = sub nsw i32 0, %317
  %409 = and i32 %408, 31
  %410 = icmp ult i32 %319, 33
  br i1 %410, label %411, label %436

411:                                              ; preds = %406
  %412 = icmp eq i32 %320, 0
  %413 = select i1 %412, i32 -1, i32 %322
  %414 = and i32 %413, %318
  %415 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #1, !srcloc !8
  %416 = icmp sgt i32 %317, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %411
  %418 = shl i32 %415, %407
  br label %430

419:                                              ; preds = %411
  %420 = add i32 %316, %314
  %421 = icmp ult i32 %420, 33
  br i1 %421, label %422, label %424

422:                                              ; preds = %419
  %423 = lshr i32 %415, %409
  br label %430

424:                                              ; preds = %419
  %425 = getelementptr i32, ptr %313, i32 1
  %426 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %425) #1, !srcloc !8
  %427 = lshr i32 %415, %409
  %428 = shl i32 %426, %407
  %429 = or i32 %428, %427
  br label %430

430:                                              ; preds = %424, %422, %417
  %431 = phi i32 [ %418, %417 ], [ %423, %422 ], [ %429, %424 ]
  %432 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #1, !srcloc !8
  %433 = xor i32 %432, %431
  %434 = and i32 %414, %433
  %435 = xor i32 %434, %432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %310, i32 %435) #1, !srcloc !9
  br label %532

436:                                              ; preds = %406
  %437 = getelementptr i32, ptr %313, i32 1
  %438 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #1, !srcloc !8
  %439 = icmp sgt i32 %317, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %436
  %441 = shl i32 %438, %407
  br label %448

442:                                              ; preds = %436
  %443 = getelementptr i32, ptr %313, i32 2
  %444 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %437) #1, !srcloc !8
  %445 = lshr i32 %438, %409
  %446 = shl i32 %444, %407
  %447 = or i32 %446, %445
  br label %448

448:                                              ; preds = %442, %440
  %449 = phi ptr [ %437, %440 ], [ %443, %442 ]
  %450 = phi i32 [ %441, %440 ], [ %447, %442 ]
  %451 = phi i32 [ %438, %440 ], [ %444, %442 ]
  %452 = add i32 %319, -32
  %453 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #1, !srcloc !8
  %454 = xor i32 %453, %450
  %455 = and i32 %454, %318
  %456 = xor i32 %455, %453
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %310, i32 %456) #1, !srcloc !9
  %457 = lshr i32 %452, 5
  %458 = getelementptr i32, ptr %310, i32 1
  %459 = icmp ugt i32 %452, 127
  br i1 %459, label %466, label %460

460:                                              ; preds = %466, %448
  %461 = phi ptr [ %449, %448 ], [ %490, %466 ]
  %462 = phi i32 [ %457, %448 ], [ %495, %466 ]
  %463 = phi i32 [ %451, %448 ], [ %491, %466 ]
  %464 = phi ptr [ %458, %448 ], [ %496, %466 ]
  %465 = icmp eq i32 %462, 0
  br i1 %465, label %511, label %498

466:                                              ; preds = %466, %448
  %467 = phi ptr [ %496, %466 ], [ %458, %448 ]
  %468 = phi i32 [ %491, %466 ], [ %451, %448 ]
  %469 = phi ptr [ %489, %466 ], [ %310, %448 ]
  %470 = phi i32 [ %495, %466 ], [ %457, %448 ]
  %471 = phi ptr [ %490, %466 ], [ %449, %448 ]
  %472 = getelementptr i32, ptr %471, i32 1
  %473 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %471) #1, !srcloc !8
  %474 = lshr i32 %468, %409
  %475 = shl i32 %473, %407
  %476 = or i32 %475, %474
  %477 = getelementptr i32, ptr %469, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %467, i32 %476) #1, !srcloc !9
  %478 = getelementptr i32, ptr %471, i32 2
  %479 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %472) #1, !srcloc !8
  %480 = lshr i32 %473, %409
  %481 = shl i32 %479, %407
  %482 = or i32 %481, %480
  %483 = getelementptr i32, ptr %469, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %477, i32 %482) #1, !srcloc !9
  %484 = getelementptr i32, ptr %471, i32 3
  %485 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %478) #1, !srcloc !8
  %486 = lshr i32 %479, %409
  %487 = shl i32 %485, %407
  %488 = or i32 %487, %486
  %489 = getelementptr i32, ptr %469, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %483, i32 %488) #1, !srcloc !9
  %490 = getelementptr i32, ptr %471, i32 4
  %491 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %484) #1, !srcloc !8
  %492 = lshr i32 %485, %409
  %493 = shl i32 %491, %407
  %494 = or i32 %493, %492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %489, i32 %494) #1, !srcloc !9
  %495 = add i32 %470, -4
  %496 = getelementptr i32, ptr %469, i32 5
  %497 = icmp ugt i32 %495, 3
  br i1 %497, label %466, label %460

498:                                              ; preds = %498, %460
  %499 = phi i32 [ %505, %498 ], [ %463, %460 ]
  %500 = phi ptr [ %509, %498 ], [ %464, %460 ]
  %501 = phi i32 [ %503, %498 ], [ %462, %460 ]
  %502 = phi ptr [ %504, %498 ], [ %461, %460 ]
  %503 = add i32 %501, -1
  %504 = getelementptr i32, ptr %502, i32 1
  %505 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %502) #1, !srcloc !8
  %506 = lshr i32 %499, %409
  %507 = shl i32 %505, %407
  %508 = or i32 %507, %506
  %509 = getelementptr i32, ptr %500, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %500, i32 %508) #1, !srcloc !9
  %510 = icmp eq i32 %503, 0
  br i1 %510, label %511, label %498

511:                                              ; preds = %498, %460
  %512 = phi ptr [ %461, %460 ], [ %504, %498 ]
  %513 = phi ptr [ %464, %460 ], [ %509, %498 ]
  %514 = phi i32 [ %463, %460 ], [ %505, %498 ]
  %515 = icmp eq i32 %320, 0
  br i1 %515, label %532, label %516

516:                                              ; preds = %511
  %517 = sub nuw nsw i32 32, %409
  %518 = icmp ugt i32 %320, %517
  br i1 %518, label %521, label %519

519:                                              ; preds = %516
  %520 = lshr i32 %514, %409
  br label %526

521:                                              ; preds = %516
  %522 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %512) #1, !srcloc !8
  %523 = lshr i32 %514, %409
  %524 = shl i32 %522, %407
  %525 = or i32 %524, %523
  br label %526

526:                                              ; preds = %521, %519
  %527 = phi i32 [ %520, %519 ], [ %525, %521 ]
  %528 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %513) #1, !srcloc !8
  %529 = xor i32 %528, %527
  %530 = and i32 %529, %321
  %531 = xor i32 %530, %527
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %513, i32 %531) #1, !srcloc !9
  br label %532

532:                                              ; preds = %526, %511, %430, %400, %396, %326
  %533 = add i32 %306, %9
  %534 = add i32 %305, %9
  %535 = icmp eq i32 %308, 0
  br i1 %535, label %536, label %304

536:                                              ; preds = %532, %302, %56, %55, %2
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
!8 = !{i64 3567350}
!9 = !{i64 3566932}
