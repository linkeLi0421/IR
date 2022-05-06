; ModuleID = '/llk/IR/kernel/time/timeconv.c_pt.bc'
source_filename = "../kernel/time/timeconv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_time64_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22time64_to_tm\22\09\09\09\09\09"
module asm "__kstrtabns_time64_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_time64_to_tm = external dso_local constant [0 x i8], align 1
@__kstrtabns_time64_to_tm = external dso_local constant [0 x i8], align 1
@__ksymtab_time64_to_tm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @time64_to_tm to i32), ptr @__kstrtab_time64_to_tm, ptr @__kstrtabns_time64_to_tm }, section "___ksymtab+time64_to_tm", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_time64_to_tm], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @time64_to_tm(i64 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i64 @div_s64_rem(i64 noundef %0, i32 noundef 86400, ptr noundef nonnull %5) #4
  %7 = trunc i64 %6 to i32
  %8 = load i32, ptr %5, align 4
  %9 = add i32 %8, %1
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = call i32 @llvm.smax.i32(i32 %9, i32 -86400)
  %13 = icmp ult i32 %9, -86400
  %14 = zext i1 %13 to i32
  %15 = add nsw i32 %9, %14
  %16 = sub i32 %12, %15
  %17 = udiv i32 %16, 86400
  %18 = add nuw nsw i32 %17, %14
  %19 = mul i32 %18, 86400
  %20 = add i32 %9, %19
  %21 = add i32 %20, 86400
  %22 = xor i32 %18, -1
  %23 = add i32 %22, %7
  br label %24

24:                                               ; preds = %11, %3
  %25 = phi i32 [ %7, %3 ], [ %23, %11 ]
  %26 = phi i32 [ %9, %3 ], [ %21, %11 ]
  %27 = icmp sgt i32 %26, 86399
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = add nuw i32 %26, 86399
  %30 = call i32 @llvm.smin.i32(i32 %26, i32 172799)
  %31 = sub nuw i32 %29, %30
  %32 = udiv i32 %31, 86400
  %33 = mul nsw i32 %32, -86400
  %34 = add i32 %25, %32
  %35 = add nsw i32 %26, -86400
  %36 = add nsw i32 %33, %35
  %37 = add i32 %34, 1
  br label %38

38:                                               ; preds = %28, %24
  %39 = phi i32 [ %25, %24 ], [ %37, %28 ]
  %40 = phi i32 [ %26, %24 ], [ %36, %28 ]
  %41 = freeze i32 %40
  %42 = sdiv i32 %41, 3600
  %43 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = mul i32 %42, 3600
  %45 = sub i32 %41, %44
  %46 = trunc i32 %45 to i16
  %47 = sdiv i16 %46, 60
  %48 = sext i16 %47 to i32
  %49 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = mul i16 %47, 60
  %51 = sub i16 %46, %50
  %52 = sext i16 %51 to i32
  store i32 %52, ptr %2, align 4
  %53 = add i32 %39, 4
  %54 = srem i32 %53, 7
  %55 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 6
  %56 = icmp slt i32 %54, 0
  %57 = add nsw i32 %54, 7
  %58 = select i1 %56, i32 %57, i32 %54
  store i32 %58, ptr %55, align 4
  %59 = sext i32 %39 to i64
  %60 = shl nsw i64 %59, 2
  %61 = add i64 %60, -9223372036854291941
  store i64 %61, ptr %4, align 8
  %62 = call i64 @div64_u64_rem(i64 noundef %61, i64 noundef 146097, ptr noundef nonnull %4) #4
  %63 = load i64, ptr %4, align 8
  %64 = trunc i64 %63 to i32
  %65 = or i32 %64, 3
  %66 = zext i32 %65 to i64
  %67 = mul nuw nsw i64 %66, 2939745
  %68 = lshr i64 %67, 32
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %38
  %72 = and i32 %69, 3
  %73 = icmp eq i32 %72, 0
  br label %77

74:                                               ; preds = %38
  %75 = and i64 %62, 3
  %76 = icmp eq i64 %75, 0
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ %73, %71 ], [ %76, %74 ]
  %79 = mul i64 %62, 100
  %80 = add i64 %68, %79
  %81 = trunc i64 %67 to i32
  %82 = udiv i32 %81, 11758980
  %83 = mul nuw nsw i32 %82, 2141
  %84 = add nuw nsw i32 %83, 132377
  %85 = lshr i32 %84, 16
  %86 = trunc i32 %84 to i16
  %87 = udiv i16 %86, 2141
  %88 = icmp ugt i32 %81, -696719417
  %89 = zext i1 %88 to i64
  %90 = add i64 %80, %89
  %91 = add nsw i32 %85, -12
  %92 = select i1 %88, i32 %91, i32 %85
  %93 = add nuw nsw i16 %87, 1
  %94 = zext i16 %93 to i32
  %95 = select i1 %78, i32 60, i32 59
  %96 = select i1 %88, i32 -306, i32 %95
  %97 = add nsw i32 %96, %82
  %98 = trunc i64 %90 to i32
  %99 = add i32 %98, 1581350388
  %100 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 5
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 4
  store i32 %92, ptr %101, align 4
  %102 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 3
  store i32 %94, ptr %102, align 4
  %103 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 7
  store i32 %97, ptr %103, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
