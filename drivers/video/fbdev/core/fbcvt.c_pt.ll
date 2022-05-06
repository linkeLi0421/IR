; ModuleID = '/llk/IR/drivers/video/fbdev/core/fbcvt.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcvt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"\016fbcvt: Invalid input parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\016fbcvt: Refresh rate not CVT standard\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\016fbcvt: 60Hz refresh rate advised for reduced blanking\0A\00", align 1
@fb_cvt_vbi_tab = internal unnamed_addr constant [8 x i8] c"\04\05\06\07\07\08\09\0A", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\016fbcvt: Aspect ratio not CVT standard\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"fbcvt: %dx%d@%d: CVT Name - \00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Not a CVT standard - %d.%03d Mega Pixel Image\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c".%03dM\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\016%s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.fb_find_mode_cvt = private unnamed_addr constant [5 x ptr] [ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.9, ptr @.str.10], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_find_mode_cvt(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  %5 = icmp ne i32 %2, 0
  %6 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %9, 0
  %15 = icmp ne i32 %11, 0
  %16 = select i1 %14, i1 %15, i1 false
  %17 = icmp ne i32 %13, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %238

21:                                               ; preds = %3
  switch i32 %13, label %22 [
    i32 85, label %24
    i32 70, label %24
    i32 60, label %24
    i32 50, label %24
  ]

22:                                               ; preds = %21
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %24

24:                                               ; preds = %22, %21, %21, %21, %21
  %25 = phi i32 [ 1, %22 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ]
  %26 = and i32 %9, -8
  %27 = and i32 %7, 1
  %28 = icmp eq i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = shl i32 %13, %30
  %32 = select i1 %28, i32 1, i32 2
  %33 = icmp ne i32 %13, 60
  %34 = select i1 %5, i1 %33, i1 false
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %37

37:                                               ; preds = %35, %24
  %38 = phi i32 [ 1, %35 ], [ %25, %24 ]
  br i1 %4, label %46, label %39

39:                                               ; preds = %37
  %40 = mul i32 %26, 18
  %41 = udiv i32 %40, 1000
  %42 = and i32 %41, 536870904
  %43 = lshr i32 %11, %30
  %44 = mul i32 %43, 18
  %45 = udiv i32 %44, 1000
  br label %46

46:                                               ; preds = %39, %37
  %47 = phi i32 [ 0, %37 ], [ %42, %39 ]
  %48 = phi i32 [ 0, %37 ], [ %45, %39 ]
  %49 = shl i32 %11, 2
  %50 = freeze i32 %49
  %51 = udiv i32 %50, 3
  %52 = icmp eq i32 %26, %51
  %53 = mul i32 %51, 3
  %54 = sub i32 %50, %53
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %52, %55
  br i1 %56, label %92, label %57

57:                                               ; preds = %46
  %58 = shl i32 %11, 4
  %59 = freeze i32 %58
  %60 = udiv i32 %59, 9
  %61 = icmp eq i32 %26, %60
  %62 = mul i32 %60, 9
  %63 = sub i32 %59, %62
  %64 = icmp eq i32 %63, 0
  %65 = and i1 %61, %64
  br i1 %65, label %92, label %66

66:                                               ; preds = %57
  %67 = freeze i32 %58
  %68 = udiv i32 %67, 10
  %69 = icmp eq i32 %26, %68
  %70 = mul i32 %68, 10
  %71 = sub i32 %67, %70
  %72 = icmp eq i32 %71, 0
  %73 = and i1 %69, %72
  br i1 %73, label %92, label %74

74:                                               ; preds = %66
  %75 = mul i32 %11, 5
  %76 = lshr i32 %75, 2
  %77 = icmp eq i32 %26, %76
  %78 = and i32 %75, 3
  %79 = icmp eq i32 %78, 0
  %80 = and i1 %77, %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %74
  %82 = mul i32 %11, 15
  %83 = freeze i32 %82
  %84 = udiv i32 %83, 9
  %85 = icmp eq i32 %26, %84
  %86 = mul i32 %84, 9
  %87 = sub i32 %83, %86
  %88 = icmp eq i32 %87, 0
  %89 = and i1 %85, %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %92

92:                                               ; preds = %90, %81, %74, %66, %57, %46
  %93 = phi i32 [ %38, %46 ], [ %38, %57 ], [ %38, %66 ], [ %38, %74 ], [ %38, %81 ], [ 1, %90 ]
  %94 = phi i1 [ true, %46 ], [ true, %57 ], [ true, %66 ], [ true, %74 ], [ true, %81 ], [ false, %90 ]
  %95 = phi i32 [ 0, %46 ], [ 1, %57 ], [ 2, %66 ], [ 3, %74 ], [ 4, %81 ], [ 7, %90 ]
  %96 = shl nuw nsw i32 %47, 1
  %97 = add i32 %96, %26
  %98 = udiv i32 1000000000, %31
  br i1 %5, label %99, label %105

99:                                               ; preds = %92
  %100 = add nsw i32 %98, -460000
  %101 = lshr i32 %11, %30
  %102 = shl nuw nsw i32 %48, 1
  %103 = add i32 %102, %101
  %104 = shl i32 %103, 1
  br label %114

105:                                              ; preds = %92
  %106 = add nsw i32 %98, -550000
  %107 = lshr i32 %11, %30
  %108 = shl nuw nsw i32 %48, 1
  %109 = add i32 %108, %107
  %110 = shl i32 %109, 1
  %111 = add nuw nsw i32 %32, 6
  %112 = add i32 %111, %110
  %113 = and i32 %112, -2
  br label %114

114:                                              ; preds = %105, %99
  %115 = phi i32 [ %102, %99 ], [ %108, %105 ]
  %116 = phi i32 [ %101, %99 ], [ %107, %105 ]
  %117 = phi i32 [ 1, %99 ], [ 4, %105 ]
  %118 = phi i32 [ 460000, %99 ], [ 550000, %105 ]
  %119 = phi i32 [ %100, %99 ], [ %106, %105 ]
  %120 = phi i32 [ %104, %99 ], [ %113, %105 ]
  %121 = udiv i32 %119, %120
  %122 = shl i32 %121, 1
  %123 = getelementptr [8 x i8], ptr @fb_cvt_vbi_tab, i32 0, i32 %95
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = lshr i32 %32, 1
  %127 = udiv i32 %118, %122
  %128 = add nuw nsw i32 %127, %117
  %129 = add nuw nsw i32 %125, 9
  %130 = tail call i32 @llvm.umax.i32(i32 %128, i32 %129) #7
  %131 = add i32 %116, %126
  %132 = add i32 %131, %115
  %133 = add i32 %132, %130
  %134 = or i32 %133, %126
  br i1 %5, label %148, label %135

135:                                              ; preds = %114
  %136 = mul i32 %121, 153600
  %137 = icmp ugt i32 %136, -1734966297
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = mul i32 %97, 20000
  %140 = udiv i32 %139, 80000
  br label %153

141:                                              ; preds = %135
  %142 = udiv i32 %136, 1000
  %143 = sub nuw nsw i32 7680000, %142
  %144 = lshr i32 %143, 8
  %145 = mul i32 %144, %97
  %146 = sub nuw nsw i32 100000, %144
  %147 = udiv i32 %145, %146
  br label %153

148:                                              ; preds = %114
  %149 = add i32 %97, 160
  %150 = mul i32 %149, %31
  %151 = mul i32 %150, %134
  %152 = udiv i32 %151, 1000
  br label %162

153:                                              ; preds = %141, %138
  %154 = phi i32 [ %147, %141 ], [ %140, %138 ]
  %155 = and i32 %154, -16
  %156 = add i32 %155, %97
  %157 = shl i32 %156, 3
  %158 = udiv i32 %157, 100
  %159 = and i32 %158, 67108856
  %160 = mul i32 %156, 1000000
  %161 = udiv i32 %160, %122
  br label %162

162:                                              ; preds = %153, %148
  %163 = phi i32 [ 32, %148 ], [ %159, %153 ]
  %164 = phi i32 [ 160, %148 ], [ %155, %153 ]
  %165 = phi i32 [ %152, %148 ], [ %161, %153 ]
  %166 = urem i32 %165, 250
  %167 = sub i32 %165, %166
  %168 = mul i32 %167, 1000
  %169 = lshr exact i32 %164, 1
  %170 = add nuw nsw i32 %169, %47
  %171 = add nuw nsw i32 %96, %164
  %172 = add nuw nsw i32 %163, %170
  %173 = sub nsw i32 %171, %172
  %174 = add nuw nsw i32 %48, 3
  %175 = add i32 %48, %116
  %176 = add i32 %175, %125
  %177 = sub i32 -3, %176
  %178 = add i32 %177, %134
  %179 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %180 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %179, i32 noundef 3520, i32 noundef 256) #8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %223, label %182

182:                                              ; preds = %162
  %183 = mul i32 %116, %26
  %184 = freeze i32 %183
  %185 = udiv i32 %184, 1000000
  %186 = mul i32 %185, 1000000
  %187 = sub i32 %184, %186
  %188 = udiv i32 %187, 1000
  %189 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %180, i32 noundef 255, ptr noundef nonnull @.str.4, i32 noundef %26, i32 noundef %11, i32 noundef %13) #7
  %190 = sub i32 255, %189
  %191 = icmp eq i32 %93, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %182
  %193 = getelementptr i8, ptr %180, i32 %189
  %194 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %193, i32 noundef %190, ptr noundef nonnull @.str.5, i32 noundef %185, i32 noundef %188) #7
  br label %221

195:                                              ; preds = %182
  %196 = icmp ult i32 %183, 1000000
  br i1 %196, label %202, label %197

197:                                              ; preds = %195
  %198 = getelementptr i8, ptr %180, i32 %189
  %199 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %198, i32 noundef %190, ptr noundef nonnull @.str.6, i32 noundef %185) #7
  %200 = sub i32 %190, %199
  %201 = add i32 %199, %189
  br label %202

202:                                              ; preds = %197, %195
  %203 = phi i32 [ %200, %197 ], [ %190, %195 ]
  %204 = phi i32 [ %201, %197 ], [ %189, %195 ]
  %205 = getelementptr i8, ptr %180, i32 %204
  %206 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %205, i32 noundef %203, ptr noundef nonnull @.str.7, i32 noundef %188) #7
  %207 = sub i32 %203, %206
  %208 = add i32 %206, %204
  br i1 %94, label %209, label %214

209:                                              ; preds = %202
  %210 = getelementptr inbounds [5 x ptr], ptr @switch.table.fb_find_mode_cvt, i32 0, i32 %95
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr i8, ptr %180, i32 %208
  %213 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %212, i32 noundef %207, ptr noundef nonnull %211) #7
  br label %214

214:                                              ; preds = %209, %202
  %215 = phi i32 [ 0, %202 ], [ %213, %209 ]
  br i1 %5, label %216, label %221

216:                                              ; preds = %214
  %217 = add i32 %215, %208
  %218 = sub i32 %207, %215
  %219 = getelementptr i8, ptr %180, i32 %217
  %220 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %219, i32 noundef %218, ptr noundef nonnull @.str.12) #7
  br label %221

221:                                              ; preds = %216, %214, %192
  %222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %180) #6
  tail call void @kfree(ptr noundef nonnull %180) #7
  br label %223

223:                                              ; preds = %221, %162
  store i32 %31, ptr %12, align 4
  %224 = udiv i32 %168, 1000
  %225 = udiv i32 1000000000, %224
  %226 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 4
  store i32 %225, ptr %226, align 4
  %227 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 5
  store i32 %170, ptr %227, align 4
  %228 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 6
  store i32 %173, ptr %228, align 4
  %229 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 9
  store i32 %163, ptr %229, align 4
  %230 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 7
  store i32 %178, ptr %230, align 4
  %231 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 8
  store i32 %174, ptr %231, align 4
  %232 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 10
  store i32 %125, ptr %232, align 4
  %233 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 11
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, -4
  %236 = select i1 %5, i32 1, i32 2
  %237 = or i32 %235, %236
  store i32 %237, ptr %233, align 4
  br label %238

238:                                              ; preds = %223, %19
  %239 = phi i32 [ 0, %223 ], [ 1, %19 ]
  ret i32 %239
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
