; ModuleID = '/llk/IR/drivers/video/fbdev/core/fbcon_rotate.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcon_rotate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fbcon_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.fb_var_screeninfo, %struct.timer_list, %struct.fb_cursor, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%union.anon.68 = type { ptr }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fbcon_display = type { ptr, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_set_rotate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 6
  store ptr @fbcon_rotate_font, ptr %2, align 4
  %3 = getelementptr inbounds %struct.fbcon_ops, ptr %0, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %8 [
    i32 1, label %5
    i32 2, label %6
    i32 3, label %7
  ]

5:                                                ; preds = %1
  tail call void @fbcon_rotate_cw(ptr noundef %0) #5
  br label %8

6:                                                ; preds = %1
  tail call void @fbcon_rotate_ud(ptr noundef %0) #5
  br label %8

7:                                                ; preds = %1
  tail call void @fbcon_rotate_ccw(ptr noundef %0) #5
  br label %8

8:                                                ; preds = %7, %6, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fbcon_rotate_font(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 28
  %6 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 28, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %7, %9
  %11 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %13, label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.fbcon_display, ptr %12, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 21
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %238, label %19

19:                                               ; preds = %13, %2
  store ptr %7, ptr %8, align 4
  %20 = getelementptr inbounds %struct.fbcon_display, ptr %12, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 21
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 28, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %5, align 4
  %26 = add i32 %25, 7
  %27 = lshr i32 %26, 3
  %28 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 28, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %27, %29
  %31 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 20
  %32 = load i32, ptr %31, align 4
  switch i32 %32, label %37 [
    i32 1, label %33
    i32 3, label %33
  ]

33:                                               ; preds = %19, %19
  %34 = add i32 %29, 7
  %35 = lshr i32 %34, 3
  %36 = mul i32 %35, %25
  br label %37

37:                                               ; preds = %33, %19
  %38 = phi i32 [ %36, %33 ], [ %30, %19 ]
  %39 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.fb_ops, ptr %40, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = tail call i32 %42(ptr noundef %0) #5
  br label %46

46:                                               ; preds = %44, %37
  %47 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 27
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %38, %24
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 23
  %53 = load ptr, ptr %52, align 4
  br label %64

54:                                               ; preds = %46
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 %38) #5
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %238, label %57, !prof !8

57:                                               ; preds = %54
  %58 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %49, i32 noundef 3264) #6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %238, label %60

60:                                               ; preds = %57
  store i32 %49, ptr %47, align 4
  %61 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 23
  %62 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %62) #5
  store ptr %58, ptr %61, align 4
  %63 = load i32, ptr %47, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = phi i32 [ %48, %51 ], [ %63, %60 ]
  %66 = phi ptr [ %53, %51 ], [ %58, %60 ]
  tail call void @llvm.memset.p0.i32(ptr align 1 %66, i8 0, i32 %65, i1 false)
  %67 = load i32, ptr %31, align 4
  switch i32 %67, label %238 [
    i32 2, label %72
    i32 1, label %70
    i32 3, label %68
  ]

68:                                               ; preds = %64
  %69 = icmp eq i32 %24, 0
  br i1 %69, label %238, label %183

70:                                               ; preds = %64
  %71 = icmp eq i32 %24, 0
  br i1 %71, label %238, label %129

72:                                               ; preds = %64
  %73 = icmp eq i32 %24, 0
  br i1 %73, label %238, label %74

74:                                               ; preds = %125, %72
  %75 = phi ptr [ %127, %125 ], [ %66, %72 ]
  %76 = phi ptr [ %126, %125 ], [ %7, %72 ]
  %77 = phi i32 [ %78, %125 ], [ %24, %72 ]
  %78 = add i32 %77, -1
  %79 = load i32, ptr %5, align 4
  %80 = load i32, ptr %28, align 4
  %81 = add i32 %79, 7
  %82 = and i32 %81, -8
  %83 = icmp eq i32 %80, 0
  br i1 %83, label %125, label %84

84:                                               ; preds = %74
  %85 = sub i32 0, %79
  %86 = and i32 %85, 7
  %87 = sub i32 %82, %86
  %88 = icmp eq i32 %82, %86
  %89 = add i32 %79, -1
  %90 = tail call i32 @llvm.umax.i32(i32 %87, i32 1) #5
  br label %91

91:                                               ; preds = %122, %84
  %92 = phi i32 [ 0, %84 ], [ %123, %122 ]
  br i1 %88, label %122, label %93

93:                                               ; preds = %91
  %94 = mul i32 %92, %82
  %95 = xor i32 %92, -1
  %96 = add i32 %80, %95
  %97 = mul i32 %96, %82
  %98 = add i32 %89, %97
  br label %99

99:                                               ; preds = %119, %93
  %100 = phi i32 [ 0, %93 ], [ %120, %119 ]
  %101 = add i32 %100, %94
  %102 = lshr i32 %101, 3
  %103 = and i32 %101, 7
  %104 = getelementptr i8, ptr %76, i32 %102
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = lshr i32 128, %103
  %108 = and i32 %107, %106
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %99
  %111 = sub i32 %98, %100
  %112 = lshr i32 %111, 3
  %113 = and i32 %111, 7
  %114 = getelementptr i8, ptr %75, i32 %112
  %115 = lshr i32 128, %113
  %116 = load i8, ptr %114, align 1
  %117 = trunc i32 %115 to i8
  %118 = or i8 %116, %117
  store i8 %118, ptr %114, align 1
  br label %119

119:                                              ; preds = %110, %99
  %120 = add nuw i32 %100, 1
  %121 = icmp eq i32 %120, %90
  br i1 %121, label %122, label %99

122:                                              ; preds = %119, %91
  %123 = add nuw i32 %92, 1
  %124 = icmp eq i32 %123, %80
  br i1 %124, label %125, label %91

125:                                              ; preds = %122, %74
  %126 = getelementptr i8, ptr %76, i32 %30
  %127 = getelementptr i8, ptr %75, i32 %38
  %128 = icmp eq i32 %78, 0
  br i1 %128, label %238, label %74

129:                                              ; preds = %179, %70
  %130 = phi ptr [ %181, %179 ], [ %66, %70 ]
  %131 = phi ptr [ %180, %179 ], [ %7, %70 ]
  %132 = phi i32 [ %133, %179 ], [ %24, %70 ]
  %133 = add i32 %132, -1
  %134 = load i32, ptr %5, align 4
  %135 = load i32, ptr %28, align 4
  %136 = add i32 %134, 7
  %137 = and i32 %136, -8
  %138 = add i32 %135, 7
  %139 = and i32 %138, -8
  %140 = icmp sgt i32 %135, 0
  br i1 %140, label %141, label %179

141:                                              ; preds = %129
  %142 = sub nsw i32 0, %135
  %143 = and i32 %142, 7
  %144 = icmp sgt i32 %134, 0
  %145 = sub i32 %139, %143
  br label %146

146:                                              ; preds = %176, %141
  %147 = phi i32 [ 0, %141 ], [ %177, %176 ]
  br i1 %144, label %148, label %176

148:                                              ; preds = %146
  %149 = mul i32 %147, %137
  %150 = xor i32 %147, -1
  %151 = add i32 %145, %150
  br label %152

152:                                              ; preds = %173, %148
  %153 = phi i32 [ 0, %148 ], [ %174, %173 ]
  %154 = add i32 %153, %149
  %155 = lshr i32 %154, 3
  %156 = and i32 %154, 7
  %157 = getelementptr i8, ptr %131, i32 %155
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = lshr i32 128, %156
  %161 = and i32 %160, %159
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %152
  %164 = mul i32 %153, %139
  %165 = add i32 %151, %164
  %166 = lshr i32 %165, 3
  %167 = and i32 %165, 7
  %168 = getelementptr i8, ptr %130, i32 %166
  %169 = lshr i32 128, %167
  %170 = load i8, ptr %168, align 1
  %171 = trunc i32 %169 to i8
  %172 = or i8 %170, %171
  store i8 %172, ptr %168, align 1
  br label %173

173:                                              ; preds = %163, %152
  %174 = add nuw nsw i32 %153, 1
  %175 = icmp eq i32 %174, %134
  br i1 %175, label %176, label %152

176:                                              ; preds = %173, %146
  %177 = add nuw nsw i32 %147, 1
  %178 = icmp eq i32 %177, %135
  br i1 %178, label %179, label %146

179:                                              ; preds = %176, %129
  %180 = getelementptr i8, ptr %131, i32 %30
  %181 = getelementptr i8, ptr %130, i32 %38
  %182 = icmp eq i32 %133, 0
  br i1 %182, label %238, label %129

183:                                              ; preds = %234, %68
  %184 = phi ptr [ %236, %234 ], [ %66, %68 ]
  %185 = phi ptr [ %235, %234 ], [ %7, %68 ]
  %186 = phi i32 [ %187, %234 ], [ %24, %68 ]
  %187 = add i32 %186, -1
  %188 = load i32, ptr %5, align 4
  %189 = load i32, ptr %28, align 4
  %190 = add i32 %188, 7
  %191 = and i32 %190, -8
  %192 = add i32 %189, 7
  %193 = and i32 %192, -8
  %194 = icmp sgt i32 %189, 0
  br i1 %194, label %195, label %234

195:                                              ; preds = %183
  %196 = sub i32 0, %188
  %197 = and i32 %196, 7
  %198 = icmp sgt i32 %188, 0
  %199 = sub i32 %191, %197
  br label %200

200:                                              ; preds = %230, %195
  %201 = phi i3 [ 0, %195 ], [ %232, %230 ]
  %202 = phi i32 [ 0, %195 ], [ %231, %230 ]
  br i1 %198, label %203, label %230

203:                                              ; preds = %200
  %204 = zext i3 %201 to i8
  %205 = mul i32 %202, %191
  %206 = lshr i8 -128, %204
  br label %207

207:                                              ; preds = %227, %203
  %208 = phi i32 [ 0, %203 ], [ %228, %227 ]
  %209 = add i32 %208, %205
  %210 = lshr i32 %209, 3
  %211 = and i32 %209, 7
  %212 = getelementptr i8, ptr %185, i32 %210
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i32
  %215 = lshr i32 128, %211
  %216 = and i32 %215, %214
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %207
  %219 = xor i32 %208, -1
  %220 = add i32 %199, %219
  %221 = mul i32 %220, %193
  %222 = add i32 %221, %202
  %223 = lshr i32 %222, 3
  %224 = getelementptr i8, ptr %184, i32 %223
  %225 = load i8, ptr %224, align 1
  %226 = or i8 %225, %206
  store i8 %226, ptr %224, align 1
  br label %227

227:                                              ; preds = %218, %207
  %228 = add nuw nsw i32 %208, 1
  %229 = icmp eq i32 %228, %188
  br i1 %229, label %230, label %207

230:                                              ; preds = %227, %200
  %231 = add nuw nsw i32 %202, 1
  %232 = add i3 %201, 1
  %233 = icmp eq i32 %231, %189
  br i1 %233, label %234, label %200

234:                                              ; preds = %230, %183
  %235 = getelementptr i8, ptr %185, i32 %30
  %236 = getelementptr i8, ptr %184, i32 %38
  %237 = icmp eq i32 %187, 0
  br i1 %237, label %238, label %183

238:                                              ; preds = %234, %179, %125, %72, %70, %68, %64, %57, %54, %13
  %239 = phi i32 [ 0, %13 ], [ 0, %64 ], [ -12, %57 ], [ -12, %54 ], [ 0, %72 ], [ 0, %70 ], [ 0, %68 ], [ 0, %125 ], [ 0, %179 ], [ 0, %234 ]
  ret i32 %239
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_rotate_cw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_rotate_ud(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_rotate_ccw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
