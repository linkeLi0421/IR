; ModuleID = '/llk/IR/lib/earlycpio.c_pt.bc'
source_filename = "../lib/earlycpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpio_data = type { ptr, i32, [18 x i8] }

@.str = private unnamed_addr constant [45 x i8] c"\014File %s exceeding MAX_CPIO_FILE_NAME [%d]\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @find_cpio_data(ptr noalias sret(%struct.cpio_data) align 4 %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [14 x i32], align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %0, i8 0, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !8
  %7 = tail call i32 @strlen(ptr noundef %1)
  %8 = icmp ugt i32 %3, 110
  br i1 %8, label %9, label %230

9:                                                ; preds = %5
  %10 = getelementptr inbounds [14 x i32], ptr %6, i32 0, i32 12
  %11 = getelementptr inbounds [14 x i32], ptr %6, i32 0, i32 7
  %12 = getelementptr inbounds [14 x i32], ptr %6, i32 0, i32 2
  br label %13

13:                                               ; preds = %21, %9
  %14 = phi i32 [ %3, %9 ], [ %23, %21 ]
  %15 = phi ptr [ %2, %9 ], [ %22, %21 ]
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %15, i32 4
  %20 = add i32 %14, -4
  br label %21

21:                                               ; preds = %226, %18
  %22 = phi ptr [ %194, %226 ], [ %19, %18 ]
  %23 = phi i32 [ %229, %226 ], [ %20, %18 ]
  %24 = icmp ugt i32 %23, 110
  br i1 %24, label %13, label %230

25:                                               ; preds = %172, %13
  %26 = phi i1 [ false, %172 ], [ true, %13 ]
  %27 = phi i32 [ 7, %172 ], [ 5, %13 ]
  %28 = phi i32 [ %175, %172 ], [ 14, %13 ]
  %29 = phi ptr [ %174, %172 ], [ %6, %13 ]
  %30 = phi ptr [ %32, %172 ], [ %15, %13 ]
  %31 = getelementptr i8, ptr %30, i32 1
  %32 = getelementptr i8, ptr %31, i32 %27
  %33 = getelementptr i8, ptr %30, i32 1
  %34 = load i8, ptr %30, align 1
  %35 = add i8 %34, -48
  %36 = icmp ult i8 %35, 10
  br i1 %36, label %37, label %165

37:                                               ; preds = %25
  %38 = zext i8 %35 to i32
  br label %39

39:                                               ; preds = %169, %37
  %40 = phi i32 [ %38, %37 ], [ %171, %169 ]
  %41 = shl nsw i32 %40, 4
  %42 = getelementptr i8, ptr %30, i32 2
  %43 = load i8, ptr %33, align 1
  %44 = add i8 %43, -48
  %45 = icmp ult i8 %44, 10
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = or i8 %43, 32
  %48 = add i8 %47, -97
  %49 = icmp ult i8 %48, 6
  br i1 %49, label %50, label %230

50:                                               ; preds = %46
  %51 = zext i8 %48 to i32
  %52 = or i32 %41, 10
  %53 = add nsw i32 %52, %51
  br label %57

54:                                               ; preds = %39
  %55 = zext i8 %44 to i32
  %56 = add nuw nsw i32 %41, %55
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i32 [ %56, %54 ], [ %53, %50 ]
  %59 = shl i32 %58, 4
  %60 = getelementptr i8, ptr %30, i32 3
  %61 = load i8, ptr %42, align 1
  %62 = add i8 %61, -48
  %63 = icmp ult i8 %62, 10
  br i1 %63, label %72, label %64

64:                                               ; preds = %57
  %65 = or i8 %61, 32
  %66 = add i8 %65, -97
  %67 = icmp ult i8 %66, 6
  br i1 %67, label %68, label %230

68:                                               ; preds = %64
  %69 = zext i8 %66 to i32
  %70 = or i32 %59, 10
  %71 = add i32 %70, %69
  br label %75

72:                                               ; preds = %57
  %73 = zext i8 %62 to i32
  %74 = add nuw i32 %59, %73
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i32 [ %74, %72 ], [ %71, %68 ]
  %77 = shl i32 %76, 4
  %78 = getelementptr i8, ptr %30, i32 4
  %79 = load i8, ptr %60, align 1
  %80 = add i8 %79, -48
  %81 = icmp ult i8 %80, 10
  br i1 %81, label %90, label %82

82:                                               ; preds = %75
  %83 = or i8 %79, 32
  %84 = add i8 %83, -97
  %85 = icmp ult i8 %84, 6
  br i1 %85, label %86, label %230

86:                                               ; preds = %82
  %87 = zext i8 %84 to i32
  %88 = or i32 %77, 10
  %89 = add i32 %88, %87
  br label %93

90:                                               ; preds = %75
  %91 = zext i8 %80 to i32
  %92 = add nuw i32 %77, %91
  br label %93

93:                                               ; preds = %90, %86
  %94 = phi i32 [ %92, %90 ], [ %89, %86 ]
  %95 = shl i32 %94, 4
  %96 = getelementptr i8, ptr %30, i32 5
  %97 = load i8, ptr %78, align 1
  %98 = add i8 %97, -48
  %99 = icmp ult i8 %98, 10
  br i1 %99, label %108, label %100

100:                                              ; preds = %93
  %101 = or i8 %97, 32
  %102 = add i8 %101, -97
  %103 = icmp ult i8 %102, 6
  br i1 %103, label %104, label %230

104:                                              ; preds = %100
  %105 = zext i8 %102 to i32
  %106 = or i32 %95, 10
  %107 = add i32 %106, %105
  br label %111

108:                                              ; preds = %93
  %109 = zext i8 %98 to i32
  %110 = add nuw i32 %95, %109
  br label %111

111:                                              ; preds = %108, %104
  %112 = phi i32 [ %110, %108 ], [ %107, %104 ]
  %113 = shl i32 %112, 4
  %114 = getelementptr i8, ptr %30, i32 6
  %115 = load i8, ptr %96, align 1
  %116 = add i8 %115, -48
  %117 = icmp ult i8 %116, 10
  br i1 %117, label %126, label %118

118:                                              ; preds = %111
  %119 = or i8 %115, 32
  %120 = add i8 %119, -97
  %121 = icmp ult i8 %120, 6
  br i1 %121, label %122, label %230

122:                                              ; preds = %118
  %123 = zext i8 %120 to i32
  %124 = or i32 %113, 10
  %125 = add i32 %124, %123
  br label %129

126:                                              ; preds = %111
  %127 = zext i8 %116 to i32
  %128 = add nuw i32 %113, %127
  br label %129

129:                                              ; preds = %126, %122
  %130 = phi i32 [ %128, %126 ], [ %125, %122 ]
  br i1 %26, label %172, label %131

131:                                              ; preds = %129
  %132 = shl i32 %130, 4
  %133 = getelementptr i8, ptr %30, i32 7
  %134 = load i8, ptr %114, align 1
  %135 = add i8 %134, -48
  %136 = icmp ult i8 %135, 10
  br i1 %136, label %145, label %137

137:                                              ; preds = %131
  %138 = or i8 %134, 32
  %139 = add i8 %138, -97
  %140 = icmp ult i8 %139, 6
  br i1 %140, label %141, label %230

141:                                              ; preds = %137
  %142 = zext i8 %139 to i32
  %143 = or i32 %132, 10
  %144 = add i32 %143, %142
  br label %148

145:                                              ; preds = %131
  %146 = zext i8 %135 to i32
  %147 = add nuw i32 %132, %146
  br label %148

148:                                              ; preds = %145, %141
  %149 = phi i32 [ %147, %145 ], [ %144, %141 ]
  %150 = shl i32 %149, 4
  %151 = load i8, ptr %133, align 1
  %152 = add i8 %151, -48
  %153 = icmp ult i8 %152, 10
  br i1 %153, label %162, label %154

154:                                              ; preds = %148
  %155 = or i8 %151, 32
  %156 = add i8 %155, -97
  %157 = icmp ult i8 %156, 6
  br i1 %157, label %158, label %230

158:                                              ; preds = %154
  %159 = zext i8 %156 to i32
  %160 = or i32 %150, 10
  %161 = add i32 %160, %159
  br label %172

162:                                              ; preds = %148
  %163 = zext i8 %152 to i32
  %164 = add nuw i32 %150, %163
  br label %172

165:                                              ; preds = %25
  %166 = or i8 %34, 32
  %167 = add i8 %166, -97
  %168 = icmp ult i8 %167, 6
  br i1 %168, label %169, label %230

169:                                              ; preds = %165
  %170 = zext i8 %167 to i32
  %171 = add nuw nsw i32 %170, 10
  br label %39

172:                                              ; preds = %162, %158, %129
  %173 = phi i32 [ %130, %129 ], [ %164, %162 ], [ %161, %158 ]
  %174 = getelementptr i32, ptr %29, i32 1
  store i32 %173, ptr %29, align 4
  %175 = add nsw i32 %28, -1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %25

177:                                              ; preds = %172
  %178 = load i32, ptr %6, align 4
  %179 = add i32 %178, -460547
  %180 = icmp ult i32 %179, -2
  br i1 %180, label %230, label %181

181:                                              ; preds = %177
  %182 = add i32 %14, -110
  %183 = load i32, ptr %10, align 4
  %184 = getelementptr i8, ptr %32, i32 %183
  %185 = ptrtoint ptr %184 to i32
  %186 = add i32 %185, 3
  %187 = and i32 %186, -4
  %188 = inttoptr i32 %187 to ptr
  %189 = load i32, ptr %11, align 4
  %190 = getelementptr i8, ptr %188, i32 %189
  %191 = ptrtoint ptr %190 to i32
  %192 = add i32 %191, 3
  %193 = and i32 %192, -4
  %194 = inttoptr i32 %193 to ptr
  %195 = getelementptr i8, ptr %32, i32 %182
  %196 = icmp ult ptr %195, %194
  %197 = icmp ugt ptr %32, %188
  %198 = select i1 %196, i1 true, i1 %197
  %199 = icmp ult ptr %194, %188
  %200 = select i1 %198, i1 true, i1 %199
  br i1 %200, label %230, label %201

201:                                              ; preds = %181
  %202 = load i32, ptr %12, align 4
  %203 = and i32 %202, 61440
  %204 = icmp ne i32 %203, 32768
  %205 = icmp ult i32 %183, %7
  %206 = select i1 %204, i1 true, i1 %205
  br i1 %206, label %226, label %207

207:                                              ; preds = %201
  %208 = tail call i32 @bcmp(ptr %32, ptr %1, i32 %7)
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %207
  %211 = inttoptr i32 %187 to ptr
  %212 = icmp eq ptr %4, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = ptrtoint ptr %2 to i32
  %215 = sub i32 %193, %214
  store i32 %215, ptr %4, align 4
  br label %216

216:                                              ; preds = %213, %210
  %217 = sub i32 %183, %7
  %218 = icmp ugt i32 %217, 17
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %32, i32 noundef 18) #8
  br label %221

221:                                              ; preds = %219, %216
  %222 = getelementptr inbounds %struct.cpio_data, ptr %0, i32 0, i32 2
  %223 = getelementptr i8, ptr %32, i32 %7
  %224 = tail call i32 @strlcpy(ptr noundef %222, ptr noundef %223, i32 noundef 18) #7
  store ptr %211, ptr %0, align 4
  %225 = getelementptr inbounds %struct.cpio_data, ptr %0, i32 0, i32 1
  store i32 %189, ptr %225, align 4
  br label %230

226:                                              ; preds = %207, %201
  %227 = ptrtoint ptr %32 to i32
  %228 = add i32 %182, %227
  %229 = sub i32 %228, %193
  br label %21

230:                                              ; preds = %221, %181, %177, %165, %154, %137, %118, %100, %82, %64, %46, %21, %5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
