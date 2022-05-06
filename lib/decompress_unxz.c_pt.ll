; ModuleID = '/llk/IR/lib/decompress_unxz.c_pt.bc'
source_filename = "../lib/decompress_unxz.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"XZ decompressor ran out of memory\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Input is not in the XZ format (wrong magic bytes)\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Input was encoded with settings that are not supported by this XZ decoder\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"XZ-compressed data is corrupt\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Bug in the XZ decompressor\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @unxz(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 section ".init.text" {
  %8 = alloca %struct.xz_buf, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #5
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = icmp eq ptr %5, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %11, %7
  %13 = icmp eq ptr %2, null
  %14 = icmp eq ptr %3, null
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call ptr @xz_dec_init(i32 noundef 0, i32 noundef 0) #5
  br label %20

18:                                               ; preds = %12
  %19 = tail call ptr @xz_dec_init(i32 noundef 2, i32 noundef -1) #5
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %105, label %23

23:                                               ; preds = %20
  br i1 %14, label %24, label %27

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 3
  store ptr %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 5
  store i32 -1, ptr %26, align 4
  br label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 5
  store i32 4096, ptr %28, align 4
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 4096) #6
  %31 = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %104, label %33

33:                                               ; preds = %27, %24
  %34 = phi ptr [ %30, %27 ], [ %4, %24 ]
  %35 = icmp eq ptr %0, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 4096) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %102, label %40

40:                                               ; preds = %36, %33
  %41 = phi ptr [ %38, %36 ], [ %0, %33 ]
  store ptr %41, ptr %8, align 4
  %42 = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 1
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 2
  store i32 %1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 4
  store i32 0, ptr %44, align 4
  br i1 %15, label %49, label %45

45:                                               ; preds = %40
  %46 = icmp ne ptr %2, null
  %47 = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 5
  %48 = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 3
  br label %51

49:                                               ; preds = %40
  %50 = call i32 @xz_dec_run(ptr noundef nonnull %21, ptr noundef nonnull %8) #5
  br label %90

51:                                               ; preds = %81, %45
  %52 = phi i32 [ %83, %81 ], [ %1, %45 ]
  %53 = phi i32 [ %82, %81 ], [ 0, %45 ]
  %54 = icmp eq i32 %53, %52
  %55 = and i1 %46, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  br i1 %10, label %60, label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %5, align 4
  %59 = add i32 %58, %52
  store i32 %59, ptr %5, align 4
  br label %60

60:                                               ; preds = %57, %56
  store i32 0, ptr %42, align 4
  %61 = call i32 %2(ptr noundef %41, i32 noundef 4096) #5
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %60
  store i32 %61, ptr %43, align 4
  br label %64

64:                                               ; preds = %63, %51
  %65 = call i32 @xz_dec_run(ptr noundef nonnull %21, ptr noundef nonnull %8) #5
  br i1 %14, label %79, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %44, align 4
  %68 = load i32, ptr %47, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = icmp ne i32 %65, 0
  %72 = icmp ne i32 %67, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %66
  %75 = load ptr, ptr %48, align 4
  %76 = call i32 %3(ptr noundef %75, i32 noundef %67) #5
  %77 = load i32, ptr %44, align 4
  %78 = icmp eq i32 %76, %77
  store i32 0, ptr %44, align 4
  br i1 %78, label %79, label %84

79:                                               ; preds = %74, %70, %64
  %80 = icmp eq i32 %65, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i32, ptr %42, align 4
  %83 = load i32, ptr %43, align 4
  br label %51

84:                                               ; preds = %79, %74, %60
  %85 = phi i32 [ %65, %79 ], [ 8, %60 ], [ 8, %74 ]
  br i1 %35, label %86, label %87

86:                                               ; preds = %84
  call void @kfree(ptr noundef %41) #5
  br label %87

87:                                               ; preds = %86, %84
  br i1 %14, label %90, label %88

88:                                               ; preds = %87
  %89 = load ptr, ptr %48, align 4
  call void @kfree(ptr noundef %89) #5
  br label %90

90:                                               ; preds = %88, %87, %49
  %91 = phi i32 [ %50, %49 ], [ %85, %88 ], [ %85, %87 ]
  br i1 %10, label %96, label %92

92:                                               ; preds = %90
  %93 = load i32, ptr %42, align 4
  %94 = load i32, ptr %5, align 4
  %95 = add i32 %94, %93
  store i32 %95, ptr %5, align 4
  br label %96

96:                                               ; preds = %92, %90
  call void @xz_dec_end(ptr noundef nonnull %21) #5
  switch i32 %91, label %101 [
    i32 1, label %106
    i32 3, label %97
    i32 5, label %98
    i32 6, label %99
    i32 7, label %100
    i32 8, label %100
  ]

97:                                               ; preds = %96
  call void %6(ptr noundef nonnull @.str) #5
  br label %106

98:                                               ; preds = %96
  call void %6(ptr noundef nonnull @.str.1) #5
  br label %106

99:                                               ; preds = %96
  call void %6(ptr noundef nonnull @.str.2) #5
  br label %106

100:                                              ; preds = %96, %96
  call void %6(ptr noundef nonnull @.str.3) #5
  br label %106

101:                                              ; preds = %96
  call void %6(ptr noundef nonnull @.str.4) #5
  br label %106

102:                                              ; preds = %36
  br i1 %14, label %104, label %103

103:                                              ; preds = %102
  tail call void @kfree(ptr noundef %34) #5
  br label %104

104:                                              ; preds = %103, %102, %27
  tail call void @xz_dec_end(ptr noundef nonnull %21) #5
  br label %105

105:                                              ; preds = %104, %20
  tail call void %6(ptr noundef nonnull @.str) #5
  br label %106

106:                                              ; preds = %105, %101, %100, %99, %98, %97, %96
  %107 = phi i32 [ -1, %105 ], [ 0, %96 ], [ -1, %101 ], [ -1, %100 ], [ -1, %99 ], [ -1, %98 ], [ -1, %97 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #5
  ret i32 %107
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_init(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_run(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
