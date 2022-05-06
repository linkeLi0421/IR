; ModuleID = '/llk/IR/lib/decompress_unlzo.c_pt.bc'
source_filename = "../lib/decompress_unlzo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@lzop_magic = internal unnamed_addr constant [9 x i8] c"\89LZO\00\0D\0A\1A\0A", align 1
@.str = private unnamed_addr constant [51 x i8] c"NULL output pointer and no flush function provided\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate output buffer\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Both input pointer and fill function provided, don't know what to do\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"NULL input pointer and missing fill function\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not allocate input buffer\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"invalid header\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"file corrupted\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"dest len longer than block size\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Compressed data violation\00", align 1

; Function Attrs: cold inlinehint nofree nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @parse_header(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = getelementptr i8, ptr %0, i32 %2
  %5 = icmp slt i32 %2, 33
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 9
  br label %8

8:                                                ; preds = %15, %6
  %9 = phi ptr [ %16, %15 ], [ %0, %6 ]
  %10 = phi i32 [ %17, %15 ], [ 0, %6 ]
  %11 = load i8, ptr %9, align 1
  %12 = getelementptr [9 x i8], ptr @lzop_magic, i32 0, i32 %10
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %11, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %9, i32 1
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %8

19:                                               ; preds = %15
  %20 = load i16, ptr %7, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #7
  %22 = icmp ugt i16 %21, 2367
  %23 = select i1 %22, i32 8, i32 7
  %24 = getelementptr i8, ptr %7, i32 %23
  %25 = load i32, ptr %24, align 1
  %26 = and i32 %25, 524288
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 4, i32 8
  %29 = getelementptr i8, ptr %24, i32 %28
  %30 = ptrtoint ptr %4 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = icmp slt i32 %32, 13
  br i1 %33, label %49, label %34

34:                                               ; preds = %19
  %35 = select i1 %22, i32 12, i32 8
  %36 = getelementptr i8, ptr %29, i32 %35
  %37 = getelementptr i8, ptr %36, i32 1
  %38 = load i8, ptr %36, align 1
  %39 = zext i8 %38 to i32
  %40 = ptrtoint ptr %37 to i32
  %41 = sub i32 %30, %40
  %42 = add nuw nsw i32 %39, 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %37, i32 %42
  %46 = ptrtoint ptr %45 to i32
  %47 = ptrtoint ptr %0 to i32
  %48 = sub i32 %46, %47
  store i32 %48, ptr %1, align 4
  br label %49

49:                                               ; preds = %44, %34, %19, %8, %3
  %50 = phi i32 [ 1, %44 ], [ 0, %3 ], [ 0, %19 ], [ 0, %34 ], [ 0, %8 ]
  ret i32 %50
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @unlzo(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #2 section ".init.text" {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !8
  %10 = icmp eq ptr %4, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = icmp eq ptr %3, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void %6(ptr noundef nonnull @.str) #7
  br label %164

14:                                               ; preds = %11
  %15 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 262144, i32 noundef 3264, i32 noundef 6) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void %6(ptr noundef nonnull @.str.1) #7
  br label %164

18:                                               ; preds = %14, %7
  %19 = phi ptr [ %15, %14 ], [ %4, %7 ]
  %20 = icmp ne ptr %0, null
  %21 = icmp ne ptr %2, null
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void %6(ptr noundef nonnull @.str.2) #7
  br label %160

24:                                               ; preds = %18
  br i1 %20, label %31, label %25

25:                                               ; preds = %24
  br i1 %21, label %27, label %26

26:                                               ; preds = %25
  tail call void %6(ptr noundef nonnull @.str.3) #7
  br label %160

27:                                               ; preds = %25
  %28 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 278597, i32 noundef 3264, i32 noundef 7) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void %6(ptr noundef nonnull @.str.4) #7
  br label %160

31:                                               ; preds = %27, %24
  %32 = phi ptr [ %28, %27 ], [ %0, %24 ]
  %33 = icmp eq ptr %5, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, ptr %5, align 4
  br label %35

35:                                               ; preds = %34, %31
  br i1 %21, label %36, label %39

36:                                               ; preds = %35
  %37 = getelementptr i8, ptr %32, i32 297
  %38 = tail call i32 %2(ptr noundef %37, i32 noundef 297) #7
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i32 [ %38, %36 ], [ %1, %35 ]
  %41 = phi ptr [ %37, %36 ], [ %32, %35 ]
  %42 = call i32 @parse_header(ptr noundef %41, ptr noundef nonnull %8, i32 noundef %40) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void %6(ptr noundef nonnull @.str.5) #7
  br label %156

45:                                               ; preds = %39
  %46 = load i32, ptr %8, align 4
  %47 = getelementptr i8, ptr %41, i32 %46
  %48 = sub i32 %40, %46
  br i1 %21, label %49, label %50

49:                                               ; preds = %45
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %32, ptr align 1 %47, i32 %48, i1 false)
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi ptr [ %32, %49 ], [ %47, %45 ]
  br i1 %33, label %53, label %52

52:                                               ; preds = %50
  store i32 %46, ptr %5, align 4
  br label %53

53:                                               ; preds = %52, %50
  %54 = icmp eq ptr %3, null
  br label %55

55:                                               ; preds = %146, %53
  %56 = phi i32 [ %48, %53 ], [ %143, %146 ]
  %57 = phi ptr [ %51, %53 ], [ %147, %146 ]
  %58 = phi ptr [ %19, %53 ], [ %136, %146 ]
  %59 = icmp slt i32 %56, 4
  %60 = select i1 %21, i1 %59, i1 false
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = getelementptr i8, ptr %57, i32 %56
  %63 = sub i32 4, %56
  %64 = call i32 %2(ptr noundef %62, i32 noundef %63) #7
  store i32 %64, ptr %8, align 4
  %65 = icmp sgt i32 %64, 0
  %66 = add i32 %64, %56
  br i1 %65, label %67, label %70

67:                                               ; preds = %61, %55
  %68 = phi i32 [ %56, %55 ], [ %66, %61 ]
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %61
  call void %6(ptr noundef nonnull @.str.6) #7
  br label %156

71:                                               ; preds = %67
  %72 = load i32, ptr %57, align 1
  %73 = call i32 @llvm.bswap.i32(i32 %72) #7
  %74 = getelementptr i8, ptr %57, i32 4
  %75 = add nsw i32 %68, -4
  %76 = icmp eq i32 %72, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  br i1 %33, label %156, label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %5, align 4
  %80 = add i32 %79, 4
  store i32 %80, ptr %5, align 4
  br label %156

81:                                               ; preds = %71
  %82 = icmp ugt i32 %73, 262144
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  call void %6(ptr noundef nonnull @.str.7) #7
  br label %156

84:                                               ; preds = %81
  %85 = icmp ult i32 %75, 8
  %86 = select i1 %21, i1 %85, i1 false
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = getelementptr i8, ptr %57, i32 %68
  %89 = sub nuw nsw i32 12, %68
  %90 = call i32 %2(ptr noundef %88, i32 noundef %89) #7
  store i32 %90, ptr %8, align 4
  %91 = icmp sgt i32 %90, 0
  %92 = add i32 %90, %75
  br i1 %91, label %93, label %96

93:                                               ; preds = %87, %84
  %94 = phi i32 [ %75, %84 ], [ %92, %87 ]
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %87
  call void %6(ptr noundef nonnull @.str.6) #7
  br label %156

97:                                               ; preds = %93
  %98 = load i32, ptr %74, align 1
  %99 = call i32 @llvm.bswap.i32(i32 %98) #7
  %100 = getelementptr i8, ptr %57, i32 12
  %101 = add nsw i32 %94, -8
  %102 = icmp eq i32 %98, 0
  %103 = icmp ugt i32 %99, %73
  %104 = select i1 %102, i1 true, i1 %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  call void %6(ptr noundef nonnull @.str.6) #7
  br label %156

106:                                              ; preds = %97
  %107 = icmp ugt i32 %99, %101
  %108 = select i1 %21, i1 %107, i1 false
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = getelementptr i8, ptr %100, i32 %101
  %111 = sub i32 %99, %101
  %112 = call i32 %2(ptr noundef %110, i32 noundef %111) #7
  store i32 %112, ptr %8, align 4
  %113 = call i32 @llvm.smax.i32(i32 %112, i32 0)
  %114 = add nuw i32 %113, %101
  br label %115

115:                                              ; preds = %109, %106
  %116 = phi i32 [ %101, %106 ], [ %114, %109 ]
  %117 = icmp ult i32 %116, %99
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  call void %6(ptr noundef nonnull @.str.6) #7
  br label %156

119:                                              ; preds = %115
  store i32 %73, ptr %9, align 4
  %120 = icmp eq i32 %72, %98
  br i1 %120, label %121, label %122, !prof !9

121:                                              ; preds = %119
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %58, ptr align 1 %100, i32 %99, i1 false)
  br label %130

122:                                              ; preds = %119
  %123 = call i32 @lzo1x_decompress_safe(ptr noundef %100, i32 noundef %99, ptr noundef %58, ptr noundef nonnull %9) #7
  %124 = and i32 %123, 255
  %125 = icmp eq i32 %124, 0
  %126 = load i32, ptr %9, align 4
  %127 = icmp eq i32 %73, %126
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  call void %6(ptr noundef nonnull @.str.8) #7
  br label %156

130:                                              ; preds = %122, %121
  br i1 %54, label %134, label %131

131:                                              ; preds = %130
  %132 = call i32 %3(ptr noundef %58, i32 noundef %73) #7
  %133 = icmp eq i32 %132, %73
  br i1 %133, label %134, label %156

134:                                              ; preds = %131, %130
  %135 = select i1 %10, i32 0, i32 %73
  %136 = getelementptr i8, ptr %58, i32 %135
  br i1 %33, label %141, label %137

137:                                              ; preds = %134
  %138 = add i32 %99, 12
  %139 = load i32, ptr %5, align 4
  %140 = add i32 %138, %139
  store i32 %140, ptr %5, align 4
  br label %141

141:                                              ; preds = %137, %134
  %142 = getelementptr i8, ptr %100, i32 %99
  %143 = sub i32 %116, %99
  br i1 %21, label %144, label %146

144:                                              ; preds = %141
  %145 = icmp sgt i32 %143, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %149, %144, %141
  %147 = phi ptr [ %32, %144 ], [ %142, %141 ], [ %32, %149 ]
  br label %55

148:                                              ; preds = %144
  store i32 0, ptr %8, align 4
  br label %149

149:                                              ; preds = %149, %148
  %150 = phi i32 [ 0, %148 ], [ %154, %149 ]
  %151 = getelementptr i8, ptr %142, i32 %150
  %152 = load i8, ptr %151, align 1
  %153 = getelementptr i8, ptr %32, i32 %150
  store i8 %152, ptr %153, align 1
  %154 = add nuw nsw i32 %150, 1
  store i32 %154, ptr %8, align 4
  %155 = icmp eq i32 %154, %143
  br i1 %155, label %146, label %149

156:                                              ; preds = %131, %129, %118, %105, %96, %83, %78, %77, %70, %44
  %157 = phi ptr [ %58, %70 ], [ %58, %83 ], [ %58, %96 ], [ %58, %105 ], [ %58, %118 ], [ %58, %129 ], [ %19, %44 ], [ %58, %77 ], [ %58, %78 ], [ %58, %131 ]
  %158 = phi i32 [ -1, %70 ], [ -1, %83 ], [ -1, %96 ], [ -1, %105 ], [ -1, %118 ], [ -1, %129 ], [ -1, %44 ], [ 0, %77 ], [ 0, %78 ], [ -1, %131 ]
  br i1 %20, label %160, label %159

159:                                              ; preds = %156
  call void @kfree(ptr noundef %32) #7
  br label %160

160:                                              ; preds = %159, %156, %30, %26, %23
  %161 = phi ptr [ %19, %23 ], [ %157, %156 ], [ %157, %159 ], [ %19, %30 ], [ %19, %26 ]
  %162 = phi i32 [ -1, %23 ], [ %158, %156 ], [ %158, %159 ], [ -1, %30 ], [ -1, %26 ]
  br i1 %10, label %163, label %164

163:                                              ; preds = %160
  call void @kfree(ptr noundef %161) #7
  br label %164

164:                                              ; preds = %163, %160, %17, %13
  %165 = phi i32 [ %162, %160 ], [ %162, %163 ], [ -1, %17 ], [ -1, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  ret i32 %165
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_decompress_safe(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { cold inlinehint nofree nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
