; ModuleID = '/llk/IR/lib/dim/rdma_dim.c_pt.bc'
source_filename = "../lib/dim/rdma_dim.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_dim:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_dim\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_dim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }

@__kstrtab_rdma_dim = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_dim = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_dim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_dim to i32), ptr @__kstrtab_rdma_dim, ptr @__kstrtabns_rdma_dim }, section "___ksymtab+rdma_dim", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_rdma_dim], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rdma_dim(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.dim_stats, align 4
  %4 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 3, i32 3
  %6 = load i16, ptr %5, align 8
  %7 = add i16 %6, 1
  %8 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call i64 @ktime_get() #6
  store i64 %10, ptr %4, align 8
  %11 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 3, i32 1
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 3, i32 2
  store i32 0, ptr %12, align 4
  store i16 %7, ptr %5, align 8
  %13 = trunc i64 %1 to i32
  %14 = add i32 %9, %13
  store i32 %14, ptr %8, align 4
  %15 = load i8, ptr %0, align 8
  switch i8 %15, label %106 [
    i8 1, label %16
    i8 0, label %97
  ]

16:                                               ; preds = %2
  %17 = zext i16 %7 to i32
  %18 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2, i32 3
  %19 = load i16, ptr %18, align 8
  %20 = zext i16 %19 to i32
  %21 = sub nsw i32 %17, %20
  %22 = icmp ult i32 %21, 64
  br i1 %22, label %106, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2
  call void @dim_calc_stats(ptr noundef %24, ptr noundef %4, ptr noundef nonnull %3) #6
  %25 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 8
  %29 = load i8, ptr %28, align 2
  %30 = icmp ugt i8 %29, 1
  br i1 %30, label %31, label %86

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 1, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dim_stats, ptr %3, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  br label %60

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.dim_stats, ptr %3, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %40, %33
  %42 = call i32 @llvm.abs.i32(i32 %41, i1 false) #6
  %43 = mul i32 %42, 100
  %44 = udiv i32 %43, %33
  %45 = icmp ugt i32 %44, 10
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = icmp sgt i32 %40, %33
  br i1 %47, label %67, label %65

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.dim_stats, ptr %3, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 1, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %50, %52
  %54 = call i32 @llvm.abs.i32(i32 %53, i1 false) #6
  %55 = mul i32 %54, 100
  %56 = udiv i32 %55, %52
  %57 = icmp ugt i32 %56, 10
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = icmp sgt i32 %50, %52
  br i1 %59, label %67, label %65

60:                                               ; preds = %48, %35
  %61 = phi i32 [ %37, %35 ], [ %50, %48 ]
  %62 = mul nuw nsw i32 %27, 50
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %86, label %64

64:                                               ; preds = %60
  store i8 0, ptr %25, align 4
  br label %86

65:                                               ; preds = %58, %46
  call void @dim_turn(ptr noundef %0) #6
  %66 = load i8, ptr %28, align 2
  br label %67

67:                                               ; preds = %65, %58, %46
  %68 = phi i8 [ %29, %58 ], [ %29, %46 ], [ %66, %65 ]
  switch i8 %68, label %86 [
    i8 2, label %69
    i8 3, label %77
  ]

69:                                               ; preds = %67
  %70 = load i8, ptr %25, align 4
  %71 = icmp eq i8 %70, 8
  br i1 %71, label %85, label %72

72:                                               ; preds = %69
  %73 = add i8 %70, 1
  store i8 %73, ptr %25, align 4
  %74 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 9
  %75 = load i8, ptr %74, align 1
  %76 = add i8 %75, 1
  store i8 %76, ptr %74, align 1
  br label %86

77:                                               ; preds = %67
  %78 = load i8, ptr %25, align 4
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = add i8 %78, -1
  store i8 %81, ptr %25, align 4
  %82 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 10
  %83 = load i8, ptr %82, align 8
  %84 = add i8 %83, 1
  store i8 %84, ptr %82, align 8
  br label %86

85:                                               ; preds = %77, %69
  call void @dim_turn(ptr noundef %0) #6
  br label %86

86:                                               ; preds = %85, %80, %72, %67, %64, %60, %23
  %87 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %87, ptr noundef nonnull align 4 dereferenceable(20) %3, i32 20, i1 false) #6
  %88 = load i8, ptr %25, align 4
  %89 = icmp eq i8 %88, %26
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i16, ptr %5, align 8
  %92 = load i32, ptr %8, align 4
  br label %97

93:                                               ; preds = %86
  store i8 2, ptr %0, align 8
  %94 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 4
  %95 = load ptr, ptr @system_wq, align 4
  %96 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %95, ptr noundef %94) #6
  br label %106

97:                                               ; preds = %90, %2
  %98 = phi i32 [ %92, %90 ], [ %14, %2 ]
  %99 = phi i16 [ %91, %90 ], [ %7, %2 ]
  store i8 1, ptr %0, align 8
  %100 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2
  %101 = call i64 @ktime_get() #6
  store i64 %101, ptr %100, align 8
  %102 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2, i32 1
  store i32 0, ptr %102, align 8
  %103 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2, i32 2
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2, i32 3
  store i16 %99, ptr %104, align 8
  %105 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2, i32 4
  store i32 %98, ptr %105, align 4
  br label %106

106:                                              ; preds = %97, %93, %16, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_calc_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_turn(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
