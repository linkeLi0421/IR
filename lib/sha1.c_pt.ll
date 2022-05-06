; ModuleID = '/llk/IR/lib/sha1.c_pt.bc'
source_filename = "../lib/sha1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha1_transform:\09\09\09\09\09"
module asm "\09.asciz \09\22sha1_transform\22\09\09\09\09\09"
module asm "__kstrtabns_sha1_transform:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha1_init:\09\09\09\09\09"
module asm "\09.asciz \09\22sha1_init\22\09\09\09\09\09"
module asm "__kstrtabns_sha1_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_sha1_transform = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha1_transform = external dso_local constant [0 x i8], align 1
@__ksymtab_sha1_transform = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha1_transform to i32), ptr @__kstrtab_sha1_transform, ptr @__kstrtabns_sha1_transform }, section "___ksymtab+sha1_transform", align 4
@__kstrtab_sha1_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha1_init = external dso_local constant [0 x i8], align 1
@__ksymtab_sha1_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha1_init to i32), ptr @__kstrtab_sha1_init, ptr @__kstrtabns_sha1_init }, section "___ksymtab+sha1_init", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_sha1_init, ptr @__ksymtab_sha1_transform], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sha1_transform(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr i32, ptr %0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i32, ptr %0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i32, ptr %0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i32, ptr %0, i32 4
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %13, %3
  %14 = phi i32 [ %4, %3 ], [ %31, %13 ]
  %15 = phi i32 [ %6, %3 ], [ %14, %13 ]
  %16 = phi i32 [ %8, %3 ], [ %32, %13 ]
  %17 = phi i32 [ %10, %3 ], [ %16, %13 ]
  %18 = phi i32 [ %12, %3 ], [ %17, %13 ]
  %19 = phi i32 [ 0, %3 ], [ %33, %13 ]
  %20 = getelementptr i32, ptr %1, i32 %19
  %21 = load i32, ptr %20, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #3
  %23 = getelementptr i32, ptr %2, i32 %19
  store i32 %22, ptr %23, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  %24 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 5) #3
  %25 = xor i32 %16, %17
  %26 = and i32 %25, %15
  %27 = xor i32 %26, %17
  %28 = add i32 %18, 1518500249
  %29 = add i32 %28, %24
  %30 = add i32 %29, %27
  %31 = add i32 %30, %22
  %32 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 30) #3
  %33 = add nuw nsw i32 %19, 1
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %35, label %13

35:                                               ; preds = %13
  %36 = getelementptr i32, ptr %2, i32 13
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i32, ptr %2, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, %37
  %41 = getelementptr i32, ptr %2, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %40, %42
  %44 = load i32, ptr %2, align 4
  %45 = xor i32 %43, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 1) #3
  store i32 %46, ptr %2, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  %47 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 5) #3
  %48 = xor i32 %32, %16
  %49 = and i32 %48, %14
  %50 = xor i32 %49, %16
  %51 = add i32 %17, 1518500249
  %52 = add i32 %51, %47
  %53 = add i32 %52, %50
  %54 = add i32 %53, %46
  %55 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 30) #3
  %56 = getelementptr i32, ptr %2, i32 14
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i32, ptr %2, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = xor i32 %59, %57
  %61 = getelementptr i32, ptr %2, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = xor i32 %60, %62
  %64 = getelementptr i32, ptr %2, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = xor i32 %63, %65
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 1) #3
  store i32 %67, ptr %64, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  %68 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 5) #3
  %69 = xor i32 %55, %32
  %70 = and i32 %69, %31
  %71 = xor i32 %70, %32
  %72 = add i32 %16, 1518500249
  %73 = add i32 %72, %68
  %74 = add i32 %73, %71
  %75 = add i32 %74, %67
  %76 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 30) #3
  %77 = getelementptr i32, ptr %2, i32 15
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i32, ptr %2, i32 10
  %80 = load i32, ptr %79, align 4
  %81 = xor i32 %80, %78
  %82 = getelementptr i32, ptr %2, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = xor i32 %81, %83
  %85 = load i32, ptr %41, align 4
  %86 = xor i32 %84, %85
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 1) #3
  store i32 %87, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  %88 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 5) #3
  %89 = xor i32 %76, %55
  %90 = and i32 %89, %54
  %91 = xor i32 %90, %55
  %92 = add i32 %32, 1518500249
  %93 = add i32 %92, %88
  %94 = add i32 %93, %91
  %95 = add i32 %94, %87
  %96 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 30) #3
  %97 = load i32, ptr %2, align 4
  %98 = getelementptr i32, ptr %2, i32 11
  %99 = load i32, ptr %98, align 4
  %100 = xor i32 %99, %97
  %101 = getelementptr i32, ptr %2, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = xor i32 %100, %102
  %104 = load i32, ptr %61, align 4
  %105 = xor i32 %103, %104
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 1) #3
  store i32 %106, ptr %61, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  %107 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 5) #3
  %108 = xor i32 %96, %76
  %109 = and i32 %108, %75
  %110 = xor i32 %109, %76
  %111 = add i32 %55, 1518500249
  %112 = add i32 %111, %107
  %113 = add i32 %112, %110
  %114 = add i32 %113, %106
  %115 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 30) #3
  br label %116

116:                                              ; preds = %116, %35
  %117 = phi i32 [ %148, %116 ], [ %114, %35 ]
  %118 = phi i32 [ %117, %116 ], [ %95, %35 ]
  %119 = phi i32 [ %149, %116 ], [ %115, %35 ]
  %120 = phi i32 [ %119, %116 ], [ %96, %35 ]
  %121 = phi i32 [ %120, %116 ], [ %76, %35 ]
  %122 = phi i32 [ %150, %116 ], [ 20, %35 ]
  %123 = add nuw nsw i32 %122, 13
  %124 = and i32 %123, 15
  %125 = getelementptr i32, ptr %2, i32 %124
  %126 = load i32, ptr %125, align 4
  %127 = add nuw nsw i32 %122, 8
  %128 = and i32 %127, 15
  %129 = getelementptr i32, ptr %2, i32 %128
  %130 = load i32, ptr %129, align 4
  %131 = xor i32 %130, %126
  %132 = add nuw nsw i32 %122, 2
  %133 = and i32 %132, 15
  %134 = getelementptr i32, ptr %2, i32 %133
  %135 = load i32, ptr %134, align 4
  %136 = xor i32 %131, %135
  %137 = and i32 %122, 15
  %138 = getelementptr i32, ptr %2, i32 %137
  %139 = load i32, ptr %138, align 4
  %140 = xor i32 %136, %139
  %141 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 1) #3
  store i32 %141, ptr %138, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !10
  %142 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 5) #3
  %143 = xor i32 %119, %120
  %144 = xor i32 %143, %118
  %145 = add i32 %121, 1859775393
  %146 = add i32 %145, %142
  %147 = add i32 %146, %144
  %148 = add i32 %147, %141
  %149 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 30) #3
  %150 = add nuw nsw i32 %122, 1
  %151 = icmp eq i32 %150, 40
  br i1 %151, label %152, label %116

152:                                              ; preds = %152, %116
  %153 = phi i32 [ %186, %152 ], [ %148, %116 ]
  %154 = phi i32 [ %153, %152 ], [ %117, %116 ]
  %155 = phi i32 [ %187, %152 ], [ %149, %116 ]
  %156 = phi i32 [ %155, %152 ], [ %119, %116 ]
  %157 = phi i32 [ %156, %152 ], [ %120, %116 ]
  %158 = phi i32 [ %188, %152 ], [ 40, %116 ]
  %159 = add nuw nsw i32 %158, 13
  %160 = and i32 %159, 15
  %161 = getelementptr i32, ptr %2, i32 %160
  %162 = load i32, ptr %161, align 4
  %163 = add nuw nsw i32 %158, 8
  %164 = and i32 %163, 15
  %165 = getelementptr i32, ptr %2, i32 %164
  %166 = load i32, ptr %165, align 4
  %167 = xor i32 %166, %162
  %168 = add nuw nsw i32 %158, 2
  %169 = and i32 %168, 15
  %170 = getelementptr i32, ptr %2, i32 %169
  %171 = load i32, ptr %170, align 4
  %172 = xor i32 %167, %171
  %173 = and i32 %158, 15
  %174 = getelementptr i32, ptr %2, i32 %173
  %175 = load i32, ptr %174, align 4
  %176 = xor i32 %172, %175
  %177 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 1) #3
  store i32 %177, ptr %174, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  %178 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 5) #3
  %179 = and i32 %154, %155
  %180 = xor i32 %154, %155
  %181 = and i32 %180, %156
  %182 = add i32 %157, -1894007588
  %183 = add i32 %182, %179
  %184 = add i32 %183, %181
  %185 = add i32 %184, %178
  %186 = add i32 %185, %177
  %187 = tail call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 30) #3
  %188 = add nuw nsw i32 %158, 1
  %189 = icmp eq i32 %188, 60
  br i1 %189, label %190, label %152

190:                                              ; preds = %190, %152
  %191 = phi i32 [ %222, %190 ], [ %186, %152 ]
  %192 = phi i32 [ %191, %190 ], [ %153, %152 ]
  %193 = phi i32 [ %223, %190 ], [ %187, %152 ]
  %194 = phi i32 [ %193, %190 ], [ %155, %152 ]
  %195 = phi i32 [ %194, %190 ], [ %156, %152 ]
  %196 = phi i32 [ %224, %190 ], [ 60, %152 ]
  %197 = add nuw nsw i32 %196, 13
  %198 = and i32 %197, 15
  %199 = getelementptr i32, ptr %2, i32 %198
  %200 = load i32, ptr %199, align 4
  %201 = add nuw nsw i32 %196, 8
  %202 = and i32 %201, 15
  %203 = getelementptr i32, ptr %2, i32 %202
  %204 = load i32, ptr %203, align 4
  %205 = xor i32 %204, %200
  %206 = add nuw nsw i32 %196, 2
  %207 = and i32 %206, 15
  %208 = getelementptr i32, ptr %2, i32 %207
  %209 = load i32, ptr %208, align 4
  %210 = xor i32 %205, %209
  %211 = and i32 %196, 15
  %212 = getelementptr i32, ptr %2, i32 %211
  %213 = load i32, ptr %212, align 4
  %214 = xor i32 %210, %213
  %215 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 1) #3
  store i32 %215, ptr %212, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !12
  %216 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 5) #3
  %217 = xor i32 %193, %194
  %218 = xor i32 %217, %192
  %219 = add i32 %195, -899497514
  %220 = add i32 %219, %216
  %221 = add i32 %220, %218
  %222 = add i32 %221, %215
  %223 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 30) #3
  %224 = add nuw nsw i32 %196, 1
  %225 = icmp eq i32 %224, 80
  br i1 %225, label %226, label %190

226:                                              ; preds = %190
  %227 = load i32, ptr %0, align 4
  %228 = add i32 %227, %222
  store i32 %228, ptr %0, align 4
  %229 = load i32, ptr %5, align 4
  %230 = add i32 %229, %191
  store i32 %230, ptr %5, align 4
  %231 = load i32, ptr %7, align 4
  %232 = add i32 %231, %223
  store i32 %232, ptr %7, align 4
  %233 = load i32, ptr %9, align 4
  %234 = add i32 %233, %193
  store i32 %234, ptr %9, align 4
  %235 = load i32, ptr %11, align 4
  %236 = add i32 %235, %194
  store i32 %236, ptr %11, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @sha1_init(ptr nocapture noundef writeonly %0) #1 {
  store i32 1732584193, ptr %0, align 4
  %2 = getelementptr i32, ptr %0, i32 1
  store i32 -271733879, ptr %2, align 4
  %3 = getelementptr i32, ptr %0, i32 2
  store i32 -1732584194, ptr %3, align 4
  %4 = getelementptr i32, ptr %0, i32 3
  store i32 271733878, ptr %4, align 4
  %5 = getelementptr i32, ptr %0, i32 4
  store i32 -1009589776, ptr %5, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{i64 2148429940}
!9 = !{i64 2148430488}
!10 = !{i64 2148431020}
!11 = !{i64 2148431580}
!12 = !{i64 2148432113}
