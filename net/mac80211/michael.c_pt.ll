; ModuleID = '/llk/IR/net/mac80211/michael.c_pt.bc'
source_filename = "../net/mac80211/michael.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @michael_mic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load i16, ptr %1, align 2
  %7 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 4
  %8 = and i16 %6, 768
  %9 = icmp eq i16 %8, 768
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 6
  br label %17

12:                                               ; preds = %5
  %13 = and i16 %6, 512
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  %16 = select i1 %14, ptr %15, ptr %7
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi ptr [ %11, %10 ], [ %16, %12 ]
  %19 = and i16 %6, 140
  %20 = icmp eq i16 %19, 136
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = select i1 %9, i32 30, i32 24
  %23 = getelementptr i8, ptr %1, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 15
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i32 [ %26, %21 ], [ 0, %17 ]
  %29 = and i16 %6, 256
  %30 = icmp eq i16 %29, 0
  %31 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %32 = select i1 %30, ptr %31, ptr %7
  %33 = load i32, ptr %0, align 1
  %34 = getelementptr i8, ptr %0, i32 4
  %35 = load i32, ptr %34, align 1
  %36 = load i32, ptr %32, align 1
  %37 = xor i32 %36, %33
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17) #2
  %39 = xor i32 %38, %35
  %40 = add i32 %39, %37
  %41 = lshr i32 %40, 8
  %42 = and i32 %41, 16711935
  %43 = shl i32 %40, 8
  %44 = and i32 %43, -16711936
  %45 = or i32 %42, %44
  %46 = xor i32 %45, %39
  %47 = add i32 %46, %40
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 3) #2
  %49 = xor i32 %48, %46
  %50 = add i32 %49, %47
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 30) #2
  %52 = xor i32 %51, %49
  %53 = add i32 %52, %50
  %54 = getelementptr i8, ptr %32, i32 4
  %55 = load i16, ptr %54, align 1
  %56 = zext i16 %55 to i32
  %57 = load i16, ptr %18, align 1
  %58 = zext i16 %57 to i32
  %59 = shl nuw i32 %58, 16
  %60 = or i32 %59, %56
  %61 = xor i32 %53, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 17) #2
  %63 = xor i32 %62, %52
  %64 = add i32 %63, %61
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 16711935
  %67 = shl i32 %64, 8
  %68 = and i32 %67, -16711936
  %69 = or i32 %66, %68
  %70 = xor i32 %69, %63
  %71 = add i32 %70, %64
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 3) #2
  %73 = xor i32 %72, %70
  %74 = add i32 %73, %71
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 30) #2
  %76 = xor i32 %75, %73
  %77 = add i32 %76, %74
  %78 = getelementptr i8, ptr %18, i32 2
  %79 = load i32, ptr %78, align 1
  %80 = xor i32 %77, %79
  %81 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 17) #2
  %82 = xor i32 %81, %76
  %83 = add i32 %82, %80
  %84 = lshr i32 %83, 8
  %85 = and i32 %84, 16711935
  %86 = shl i32 %83, 8
  %87 = and i32 %86, -16711936
  %88 = or i32 %85, %87
  %89 = xor i32 %88, %82
  %90 = add i32 %89, %83
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 3) #2
  %92 = xor i32 %91, %89
  %93 = add i32 %92, %90
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 30) #2
  %95 = xor i32 %94, %92
  %96 = add i32 %95, %93
  %97 = xor i32 %96, %28
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %96, i32 17) #2
  %99 = xor i32 %98, %95
  %100 = add i32 %99, %97
  %101 = lshr i32 %100, 8
  %102 = and i32 %101, 16711935
  %103 = shl i32 %100, 8
  %104 = and i32 %103, -16711936
  %105 = or i32 %102, %104
  %106 = xor i32 %105, %99
  %107 = add i32 %106, %100
  %108 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 3) #2
  %109 = xor i32 %108, %106
  %110 = add i32 %109, %107
  %111 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 30) #2
  %112 = xor i32 %111, %109
  %113 = add i32 %112, %110
  %114 = and i32 %3, 3
  %115 = icmp ult i32 %3, 4
  br i1 %115, label %118, label %116

116:                                              ; preds = %27
  %117 = lshr i32 %3, 2
  br label %131

118:                                              ; preds = %131, %27
  %119 = phi i32 [ %112, %27 ], [ %153, %131 ]
  %120 = phi i32 [ %113, %27 ], [ %154, %131 ]
  %121 = icmp eq i32 %114, 0
  br i1 %121, label %174, label %122

122:                                              ; preds = %118
  %123 = and i32 %3, -4
  %124 = add nsw i32 %114, -1
  %125 = add i32 %124, %123
  %126 = getelementptr i8, ptr %2, i32 %125
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %128, 23040
  %130 = icmp eq i32 %124, 0
  br i1 %130, label %174, label %157

131:                                              ; preds = %131, %116
  %132 = phi i32 [ %155, %131 ], [ 0, %116 ]
  %133 = phi i32 [ %154, %131 ], [ %113, %116 ]
  %134 = phi i32 [ %153, %131 ], [ %112, %116 ]
  %135 = shl i32 %132, 2
  %136 = getelementptr i8, ptr %2, i32 %135
  %137 = load i32, ptr %136, align 1
  %138 = xor i32 %137, %133
  %139 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17) #2
  %140 = xor i32 %139, %134
  %141 = add i32 %140, %138
  %142 = lshr i32 %141, 8
  %143 = and i32 %142, 16711935
  %144 = shl i32 %141, 8
  %145 = and i32 %144, -16711936
  %146 = or i32 %143, %145
  %147 = xor i32 %146, %140
  %148 = add i32 %147, %141
  %149 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 3) #2
  %150 = xor i32 %149, %147
  %151 = add i32 %150, %148
  %152 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 30) #2
  %153 = xor i32 %152, %150
  %154 = add i32 %153, %151
  %155 = add nuw nsw i32 %132, 1
  %156 = icmp eq i32 %155, %117
  br i1 %156, label %118, label %131

157:                                              ; preds = %122
  %158 = shl nuw nsw i32 %129, 8
  %159 = add nsw i32 %114, -2
  %160 = add i32 %159, %123
  %161 = getelementptr i8, ptr %2, i32 %160
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  %164 = or i32 %158, %163
  %165 = icmp eq i32 %159, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %157
  %167 = shl nuw nsw i32 %164, 8
  %168 = add nsw i32 %114, -3
  %169 = add i32 %168, %123
  %170 = getelementptr i8, ptr %2, i32 %169
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = or i32 %167, %172
  br label %174

174:                                              ; preds = %166, %157, %122, %118
  %175 = phi i32 [ 90, %118 ], [ %129, %122 ], [ %164, %157 ], [ %173, %166 ]
  %176 = xor i32 %175, %120
  %177 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 17) #2
  %178 = xor i32 %177, %119
  %179 = add i32 %178, %176
  %180 = lshr i32 %179, 8
  %181 = and i32 %180, 16711935
  %182 = shl i32 %179, 8
  %183 = and i32 %182, -16711936
  %184 = or i32 %181, %183
  %185 = xor i32 %184, %178
  %186 = add i32 %185, %179
  %187 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 3) #2
  %188 = xor i32 %187, %185
  %189 = add i32 %188, %186
  %190 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 30) #2
  %191 = xor i32 %190, %188
  %192 = add i32 %191, %189
  %193 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 17) #2
  %194 = xor i32 %193, %191
  %195 = add i32 %194, %192
  %196 = lshr i32 %195, 8
  %197 = and i32 %196, 16711935
  %198 = shl i32 %195, 8
  %199 = and i32 %198, -16711936
  %200 = or i32 %197, %199
  %201 = xor i32 %200, %194
  %202 = add i32 %201, %195
  %203 = tail call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 3) #2
  %204 = xor i32 %203, %201
  %205 = add i32 %204, %202
  %206 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 30) #2
  %207 = xor i32 %206, %204
  %208 = add i32 %207, %205
  store i32 %208, ptr %4, align 1
  %209 = getelementptr i8, ptr %4, i32 4
  store i32 %207, ptr %209, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

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
