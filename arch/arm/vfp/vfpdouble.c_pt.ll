; ModuleID = '/llk/IR/arch/arm/vfp/vfpdouble.c_pt.bc'
source_filename = "../arch/arm/vfp/vfpdouble.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.op = type { ptr, i32 }
%struct.vfp_double = type { i16, i16, i64 }
%struct.vfp_single = type { i16, i16, i32 }

@fops_ext = internal unnamed_addr constant [32 x %struct.op] [%struct.op { ptr @vfp_double_fcpy, i32 0 }, %struct.op { ptr @vfp_double_fabs, i32 0 }, %struct.op { ptr @vfp_double_fneg, i32 0 }, %struct.op { ptr @vfp_double_fsqrt, i32 0 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_double_fcmp, i32 1 }, %struct.op { ptr @vfp_double_fcmpe, i32 1 }, %struct.op { ptr @vfp_double_fcmpz, i32 1 }, %struct.op { ptr @vfp_double_fcmpez, i32 1 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_double_fcvts, i32 3 }, %struct.op { ptr @vfp_double_fuito, i32 5 }, %struct.op { ptr @vfp_double_fsito, i32 5 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_double_ftoui, i32 3 }, %struct.op { ptr @vfp_double_ftouiz, i32 3 }, %struct.op { ptr @vfp_double_ftosi, i32 3 }, %struct.op { ptr @vfp_double_ftosiz, i32 3 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer], align 4
@fops = internal unnamed_addr constant [16 x %struct.op] [%struct.op { ptr @vfp_double_fmac, i32 0 }, %struct.op { ptr @vfp_double_fmsc, i32 0 }, %struct.op { ptr @vfp_double_fmul, i32 0 }, %struct.op { ptr @vfp_double_fadd, i32 0 }, %struct.op { ptr @vfp_double_fnmac, i32 0 }, %struct.op { ptr @vfp_double_fnmsc, i32 0 }, %struct.op { ptr @vfp_double_fnmul, i32 0 }, %struct.op { ptr @vfp_double_fsub, i32 0 }, %struct.op { ptr @vfp_double_fdiv, i32 0 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer], align 4
@vfp_double_default_qnan = internal unnamed_addr constant %struct.vfp_double { i16 2047, i16 0, i64 2305843009213693952 }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"fmac\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\016VFP: bad FP values in %s\0A\00", align 1
@__func__.vfp_double_add = private unnamed_addr constant [15 x i8] c"vfp_double_add\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"fmsc\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"fnmac\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"fnmsc\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfp_double_normaliseround(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture readnone %4) local_unnamed_addr #0 {
  %6 = load i16, ptr %1, align 8
  %7 = icmp eq i16 %6, 2047
  %8 = getelementptr inbounds %struct.vfp_double, ptr %1, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %7, label %11, label %14

11:                                               ; preds = %5
  %12 = icmp ne i32 %3, 0
  %13 = or i1 %12, %10
  br i1 %13, label %111, label %16

14:                                               ; preds = %5
  br i1 %10, label %15, label %16

15:                                               ; preds = %14
  store i16 0, ptr %1, align 8
  br label %111

16:                                               ; preds = %14, %11
  %17 = getelementptr inbounds %struct.vfp_double, ptr %1, i32 0, i32 2
  %18 = sext i16 %6 to i32
  %19 = lshr i64 %9, 32
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 false) #10, !range !8
  %23 = sub nuw nsw i32 32, %22
  %24 = select i1 %21, i32 0, i32 %23
  %25 = sub nuw nsw i32 32, %24
  %26 = icmp eq i32 %24, 0
  %27 = trunc i64 %9 to i32
  %28 = icmp eq i32 %27, 0
  %29 = tail call i32 @llvm.ctlz.i32(i32 %27, i1 false) #10, !range !8
  %30 = add nuw nsw i32 %29, 32
  %31 = select i1 %28, i32 64, i32 %30
  %32 = select i1 %26, i32 %31, i32 %25
  %33 = sub nsw i32 %18, %32
  %34 = zext i32 %32 to i64
  %35 = shl i64 %9, %34
  %36 = icmp slt i32 %33, 0
  %37 = lshr i32 %33, 31
  br i1 %36, label %38, label %58

38:                                               ; preds = %16
  %39 = sub nsw i32 0, %33
  %40 = icmp ult i32 %39, 64
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = zext i32 %39 to i64
  %43 = lshr i64 %35, %42
  %44 = add nsw i32 %33, 64
  %45 = zext i32 %44 to i64
  %46 = shl i64 %35, %45
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = or i64 %43, %48
  br label %53

50:                                               ; preds = %38
  %51 = icmp ne i64 %35, 0
  %52 = zext i1 %51 to i64
  br label %53

53:                                               ; preds = %50, %41
  %54 = phi i64 [ %49, %41 ], [ %52, %50 ]
  %55 = and i64 %54, 2047
  %56 = icmp eq i64 %55, 0
  %57 = select i1 %56, i32 0, i32 %37
  br label %58

58:                                               ; preds = %53, %16
  %59 = phi i32 [ %33, %16 ], [ 0, %53 ]
  %60 = phi i32 [ %37, %16 ], [ %57, %53 ]
  %61 = phi i64 [ %35, %16 ], [ %54, %53 ]
  %62 = and i32 %2, 12582912
  switch i32 %62, label %67 [
    i32 0, label %63
    i32 12582912, label %84
  ]

63:                                               ; preds = %58
  %64 = and i64 %61, 2048
  %65 = icmp eq i64 %64, 0
  %66 = select i1 %65, i64 1023, i64 1024
  br label %74

67:                                               ; preds = %58
  %68 = icmp eq i32 %62, 4194304
  %69 = getelementptr inbounds %struct.vfp_double, ptr %1, i32 0, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = icmp ne i16 %70, 0
  %72 = xor i1 %68, %71
  %73 = select i1 %72, i64 2047, i64 0
  br label %74

74:                                               ; preds = %67, %63
  %75 = phi i64 [ %66, %63 ], [ %73, %67 ]
  %76 = xor i64 %61, -1
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = add nuw nsw i32 %59, 1
  %80 = lshr i64 %61, 1
  %81 = and i64 %61, 1
  %82 = or i64 %80, %81
  %83 = lshr i64 %75, 1
  br label %84

84:                                               ; preds = %78, %74, %58
  %85 = phi i32 [ %79, %78 ], [ %59, %74 ], [ %59, %58 ]
  %86 = phi i64 [ %83, %78 ], [ %75, %74 ], [ 0, %58 ]
  %87 = phi i64 [ %82, %78 ], [ %61, %74 ], [ %61, %58 ]
  %88 = and i64 %87, 2047
  %89 = icmp eq i64 %88, 0
  %90 = or i32 %3, 16
  %91 = select i1 %89, i32 %3, i32 %90
  %92 = icmp ugt i32 %85, 2045
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = or i32 %91, 20
  %95 = icmp eq i64 %86, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i16 2045, ptr %1, align 8
  store i64 9223372036854775807, ptr %17, align 8
  br label %111

97:                                               ; preds = %93
  store i16 2047, ptr %1, align 8
  store i64 0, ptr %17, align 8
  br label %111

98:                                               ; preds = %84
  %99 = add i64 %87, %86
  %100 = icmp ult i64 %99, 2048
  %101 = select i1 %100, i32 0, i32 %85
  %102 = icmp ne i32 %101, 0
  %103 = icmp ugt i64 %99, -9223372036854775808
  %104 = select i1 %102, i1 true, i1 %103
  %105 = icmp eq i32 %60, 0
  %106 = select i1 %104, i1 true, i1 %105
  %107 = or i32 %91, 8
  %108 = select i1 %106, i32 %91, i32 %107
  %109 = trunc i32 %101 to i16
  store i16 %109, ptr %1, align 8
  %110 = lshr i64 %99, 1
  store i64 %110, ptr %17, align 8
  br label %111

111:                                              ; preds = %98, %97, %96, %15, %11
  %112 = phi i64 [ %9, %11 ], [ 0, %15 ], [ 9223372036854775807, %96 ], [ 0, %97 ], [ %110, %98 ]
  %113 = phi i16 [ 2047, %11 ], [ 0, %15 ], [ 2045, %96 ], [ 2047, %97 ], [ %109, %98 ]
  %114 = phi i32 [ %3, %11 ], [ %3, %15 ], [ %94, %96 ], [ %94, %97 ], [ %108, %98 ]
  %115 = getelementptr inbounds %struct.vfp_double, ptr %1, i32 0, i32 1
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i64
  %118 = shl nuw i64 %117, 48
  %119 = zext i16 %113 to i64
  %120 = shl nuw nsw i64 %119, 52
  %121 = add i64 %120, %118
  %122 = lshr i64 %112, 10
  %123 = add i64 %121, %122
  tail call void @vfp_put_double(i64 noundef %123, i32 noundef %0) #10
  ret i32 %114
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_put_double(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfp_double_cpdo(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %0, 11534400
  %4 = and i32 %0, 983040
  %5 = lshr exact i32 %4, 16
  %6 = and i32 %0, 128
  %7 = lshr exact i32 %6, 3
  %8 = or i32 %5, %7
  %9 = and i32 %1, 3145728
  %10 = icmp eq i32 %9, 3145728
  %11 = select i1 %10, i32 2, i32 1
  %12 = icmp eq i32 %3, 11534400
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = lshr exact i32 %4, 15
  %15 = lshr exact i32 %6, 7
  %16 = or i32 %14, %15
  %17 = getelementptr [32 x %struct.op], ptr @fops_ext, i32 0, i32 %16
  br label %25

18:                                               ; preds = %2
  %19 = lshr i32 %0, 20
  %20 = and i32 %19, 11
  %21 = lshr i32 %0, 4
  %22 = and i32 %21, 4
  %23 = or i32 %20, %22
  %24 = getelementptr [16 x %struct.op], ptr @fops, i32 0, i32 %23
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi ptr [ %17, %13 ], [ %24, %18 ]
  %27 = getelementptr inbounds %struct.op, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 12, i32 11
  %32 = lshr i32 %0, %31
  %33 = and i32 %28, 1
  %34 = icmp ne i32 %33, 0
  %35 = and i32 %32, 12
  %36 = icmp eq i32 %35, 0
  %37 = or i1 %34, %36
  %38 = and i32 %1, 458752
  %39 = select i1 %37, i32 0, i32 %38
  %40 = load ptr, ptr %26, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %86, label %42

42:                                               ; preds = %25
  %43 = and i32 %28, 4
  %44 = icmp eq i32 %43, 0
  %45 = lshr i32 %0, 1
  %46 = and i32 %45, 16
  %47 = and i32 %0, 15
  %48 = or i32 %46, %47
  %49 = shl i32 %0, 1
  %50 = and i32 %49, 30
  %51 = lshr i32 %0, 5
  %52 = and i32 %51, 1
  %53 = or i32 %50, %52
  %54 = select i1 %44, i32 %48, i32 %53
  %55 = select i1 %30, i32 15, i32 30
  %56 = and i32 %32, %55
  %57 = select i1 %30, i32 18, i32 22
  %58 = lshr i32 %0, %57
  %59 = select i1 %30, i32 16, i32 1
  %60 = and i32 %58, %59
  %61 = or i32 %56, %60
  br label %62

62:                                               ; preds = %62, %42
  %63 = phi i32 [ %69, %62 ], [ 0, %42 ]
  %64 = phi i32 [ %73, %62 ], [ %61, %42 ]
  %65 = phi i32 [ %77, %62 ], [ %8, %42 ]
  %66 = phi i32 [ %84, %62 ], [ 0, %42 ]
  %67 = phi i32 [ %83, %62 ], [ %54, %42 ]
  %68 = tail call i32 %40(i32 noundef %64, i32 noundef %65, i32 noundef %67, i32 noundef %1) #10
  %69 = or i32 %68, %63
  %70 = and i32 %64, 12
  %71 = add nsw i32 %64, %11
  %72 = and i32 %71, 3
  %73 = or i32 %72, %70
  %74 = and i32 %65, 12
  %75 = add nsw i32 %65, %11
  %76 = and i32 %75, 3
  %77 = or i32 %76, %74
  %78 = and i32 %67, 12
  %79 = icmp eq i32 %78, 0
  %80 = add i32 %67, %11
  %81 = and i32 %80, 3
  %82 = or i32 %81, %78
  %83 = select i1 %79, i32 %67, i32 %82
  %84 = add nuw nsw i32 %66, 65536
  %85 = icmp ugt i32 %84, %39
  br i1 %85, label %86, label %62

86:                                               ; preds = %62, %25
  %87 = phi i32 [ -1, %25 ], [ %69, %62 ]
  ret i32 %87
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fcpy(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  tail call void @vfp_put_double(i64 noundef %5, i32 noundef %0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fabs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %6 = and i64 %5, 9223372036854775807
  tail call void @vfp_put_double(i64 noundef %6, i32 noundef %0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fneg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %6 = xor i64 %5, -9223372036854775808
  tail call void @vfp_put_double(i64 noundef %6, i32 noundef %0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fsqrt(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_double, align 8
  %6 = alloca %struct.vfp_double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !9
  %9 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %10 = lshr i64 %9, 48
  %11 = trunc i64 %10 to i16
  %12 = and i16 %11, -32768
  %13 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 1
  store i16 %12, ptr %13, align 2
  %14 = lshr i64 %9, 52
  %15 = trunc i64 %14 to i16
  %16 = and i16 %15, 2047
  store i16 %16, ptr %5, align 8
  %17 = shl i64 %9, 10
  %18 = and i64 %17, 4611686018427386880
  %19 = trunc i64 %14 to i11
  switch i11 %19, label %20 [
    i11 0, label %22
    i11 -1, label %22
  ]

20:                                               ; preds = %4
  %21 = or i64 %18, 4611686018427387904
  br label %22

22:                                               ; preds = %20, %4, %4
  %23 = phi i64 [ %21, %20 ], [ %18, %4 ], [ %18, %4 ]
  %24 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 2
  store i64 %23, ptr %24, align 8
  switch i11 %19, label %108 [
    i11 -1, label %25
    i11 0, label %31
  ]

25:                                               ; preds = %22
  %26 = icmp eq i64 %23, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %25
  %28 = and i64 %23, 2305843009213693952
  %29 = icmp eq i64 %28, 0
  %30 = select i1 %29, i32 48, i32 16
  br label %34

31:                                               ; preds = %22
  %32 = icmp eq i64 %23, 0
  %33 = select i1 %32, i32 3, i32 5
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %30, %27 ], [ %33, %31 ]
  %36 = and i32 %35, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %81, label %38

38:                                               ; preds = %34
  switch i11 %19, label %48 [
    i11 -1, label %39
    i11 0, label %45
  ]

39:                                               ; preds = %38
  %40 = icmp eq i64 %23, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = and i64 %23, 2305843009213693952
  %43 = icmp eq i64 %42, 0
  %44 = select i1 %43, i32 48, i32 16
  br label %48

45:                                               ; preds = %38
  %46 = icmp eq i64 %23, 0
  %47 = select i1 %46, i32 3, i32 5
  br label %48

48:                                               ; preds = %45, %41, %39, %38
  %49 = phi i32 [ 8, %39 ], [ %44, %41 ], [ 1, %38 ], [ %47, %45 ]
  %50 = and i32 %3, 33554432
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = and i32 %49, 31
  %54 = icmp eq i32 %53, 16
  %55 = select i1 %54, ptr %5, ptr null
  %56 = select i1 %54, ptr %24, ptr inttoptr (i32 8 to ptr)
  %57 = load i64, ptr %56, align 8
  %58 = or i64 %57, 2305843009213693952
  store i64 %58, ptr %56, align 8
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi ptr [ %55, %52 ], [ @vfp_double_default_qnan, %48 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef align 8 dereferenceable(16) %60, i32 16, i1 false) #10
  %61 = icmp eq i32 %49, 48
  %62 = select i1 %61, i32 1, i32 256
  br label %66

63:                                               ; preds = %25
  %64 = icmp eq i16 %12, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %108, %63
  br label %66

66:                                               ; preds = %81, %65, %63, %59
  %67 = phi i32 [ %62, %59 ], [ 1, %65 ], [ 0, %81 ], [ 0, %63 ]
  %68 = phi ptr [ %6, %59 ], [ @vfp_double_default_qnan, %65 ], [ %5, %81 ], [ %5, %63 ]
  %69 = getelementptr inbounds %struct.vfp_double, ptr %68, i32 0, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i64
  %72 = shl nuw i64 %71, 48
  %73 = load i16, ptr %68, align 8
  %74 = zext i16 %73 to i64
  %75 = shl i64 %74, 52
  %76 = add i64 %75, %72
  %77 = getelementptr inbounds %struct.vfp_double, ptr %68, i32 0, i32 2
  %78 = load i64, ptr %77, align 8
  %79 = lshr i64 %78, 10
  %80 = add i64 %76, %79
  tail call void @vfp_put_double(i64 noundef %80, i32 noundef %0) #10
  br label %237

81:                                               ; preds = %34
  %82 = and i32 %35, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %66

84:                                               ; preds = %81
  %85 = and i32 %35, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %84
  %88 = lshr i64 %23, 32
  %89 = trunc i64 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = trunc i64 %23 to i32
  %93 = icmp eq i32 %92, 0
  %94 = tail call i32 @llvm.ctlz.i32(i32 %92, i1 false) #10, !range !8
  %95 = add nuw nsw i32 %94, 31
  %96 = select i1 %93, i32 63, i32 %95
  br label %101

97:                                               ; preds = %87
  %98 = tail call i32 @llvm.ctlz.i32(i32 %89, i1 true) #10, !range !8
  %99 = add nsw i32 %98, -1
  %100 = icmp eq i32 %98, 1
  br i1 %100, label %108, label %101

101:                                              ; preds = %97, %91
  %102 = phi i32 [ %96, %91 ], [ %99, %97 ]
  %103 = trunc i32 %102 to i16
  %104 = add nuw nsw i16 %16, 1
  %105 = sub nsw i16 %104, %103
  store i16 %105, ptr %5, align 8
  %106 = zext i32 %102 to i64
  %107 = shl i64 %23, %106
  store i64 %107, ptr %24, align 8
  br label %108

108:                                              ; preds = %101, %97, %84, %22
  %109 = phi i64 [ %23, %22 ], [ %107, %101 ], [ %23, %97 ], [ %23, %84 ]
  %110 = phi i16 [ %16, %22 ], [ %105, %101 ], [ %16, %97 ], [ %16, %84 ]
  %111 = icmp eq i16 %12, 0
  br i1 %111, label %112, label %65

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 1
  store i16 0, ptr %113, align 2
  %114 = sext i16 %110 to i32
  %115 = add nsw i32 %114, 130049
  %116 = lshr i32 %115, 1
  %117 = trunc i32 %116 to i16
  %118 = add nsw i16 %117, 1023
  store i16 %118, ptr %6, align 8
  %119 = lshr i64 %109, 32
  %120 = trunc i64 %119 to i32
  %121 = tail call i32 @vfp_estimate_sqrt_significand(i32 noundef %114, i32 noundef %120) #10
  %122 = zext i32 %121 to i64
  %123 = shl nuw nsw i64 %122, 31
  %124 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 2
  %125 = and i16 %110, 1
  %126 = add nuw nsw i16 %125, 1
  %127 = zext i16 %126 to i64
  %128 = lshr i64 %109, %127
  %129 = icmp ult i64 %128, %123
  br i1 %129, label %130, label %193

130:                                              ; preds = %112
  %131 = lshr i64 %122, 1
  %132 = and i64 %123, 9223372032559808512
  %133 = icmp ugt i64 %132, %128
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = trunc i64 %131 to i32
  %136 = icmp ult i64 %128, 4294967296
  br i1 %136, label %137, label %141, !prof !10

137:                                              ; preds = %134
  %138 = trunc i64 %128 to i32
  %139 = udiv i32 %138, %135
  %140 = zext i32 %139 to i64
  br label %144

141:                                              ; preds = %134
  %142 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %135, i64 %128) #11, !srcloc !11
  %143 = extractvalue { i64, i64 } %142, 1
  br label %144

144:                                              ; preds = %141, %137
  %145 = phi i64 [ %140, %137 ], [ %143, %141 ]
  %146 = shl i64 %145, 32
  br label %147

147:                                              ; preds = %144, %130
  %148 = phi i64 [ %146, %144 ], [ -4294967296, %130 ]
  %149 = and i64 %123, 2147483648
  %150 = lshr exact i64 %148, 32
  %151 = mul nuw nsw i64 %150, %149
  %152 = mul nuw nsw i64 %150, %131
  %153 = lshr i64 %151, 32
  %154 = shl i64 %151, 32
  %155 = add nuw nsw i64 %153, %152
  %156 = tail call { i64, i64 } asm "subs\09${0:Q}, ${2:Q}, ${4:Q}\0A\09sbcs\09${0:R}, ${2:R}, ${4:R}\0A\09sbcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09sbc\09${1:R}, ${3:R}, ${5:R}\0A\09", "=r,=r,0,1,r,r,~{cc}"(i64 0, i64 %128, i64 %154, i64 %155) #11, !srcloc !12
  %157 = shl i64 %122, 63
  %158 = extractvalue { i64, i64 } %156, 1
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %160, %147
  %161 = phi i64 [ %167, %160 ], [ %158, %147 ]
  %162 = phi { i64, i64 } [ %166, %160 ], [ %156, %147 ]
  %163 = phi i64 [ %165, %160 ], [ %148, %147 ]
  %164 = extractvalue { i64, i64 } %162, 0
  %165 = add i64 %163, -4294967296
  %166 = tail call { i64, i64 } asm "adds\09${0:Q}, ${2:Q}, ${4:Q}\0A\09adcs\09${0:R}, ${2:R}, ${4:R}\0A\09adcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09adc\09${1:R}, ${3:R}, ${5:R}", "=r,=r,0,1,r,r,~{cc}"(i64 %164, i64 %161, i64 %157, i64 %131) #11, !srcloc !13
  %167 = extractvalue { i64, i64 } %166, 1
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %160, label %169

169:                                              ; preds = %160
  %170 = extractvalue { i64, i64 } %166, 1
  br label %171

171:                                              ; preds = %169, %147
  %172 = phi i64 [ %158, %147 ], [ %170, %169 ]
  %173 = phi { i64, i64 } [ %156, %147 ], [ %166, %169 ]
  %174 = phi i64 [ %148, %147 ], [ %165, %169 ]
  %175 = extractvalue { i64, i64 } %173, 0
  %176 = tail call i64 @llvm.fshl.i64(i64 %172, i64 %175, i64 32) #10
  %177 = icmp ugt i64 %132, %176
  br i1 %177, label %180, label %178

178:                                              ; preds = %171
  %179 = or i64 %174, 4294967295
  br label %193

180:                                              ; preds = %171
  %181 = trunc i64 %131 to i32
  %182 = icmp ult i64 %176, 4294967296
  br i1 %182, label %183, label %187, !prof !10

183:                                              ; preds = %180
  %184 = trunc i64 %176 to i32
  %185 = udiv i32 %184, %181
  %186 = zext i32 %185 to i64
  br label %190

187:                                              ; preds = %180
  %188 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %181, i64 %176) #11, !srcloc !11
  %189 = extractvalue { i64, i64 } %188, 1
  br label %190

190:                                              ; preds = %187, %183
  %191 = phi i64 [ %186, %183 ], [ %189, %187 ]
  %192 = or i64 %191, %174
  br label %193

193:                                              ; preds = %190, %178, %112
  %194 = phi i64 [ -1, %112 ], [ %192, %190 ], [ %179, %178 ]
  %195 = or i64 %123, 2
  %196 = add i64 %195, %194
  %197 = and i64 %196, 1022
  %198 = icmp ult i64 %197, 6
  br i1 %198, label %199, label %231

199:                                              ; preds = %193
  %200 = icmp ult i64 %196, 2
  br i1 %200, label %231, label %201

201:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !annotation !9
  %202 = shl i64 %128, 2
  store i64 %202, ptr %24, align 8
  call fastcc void @mul64to128(ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef %196, i64 noundef %196)
  %203 = load i64, ptr %7, align 8
  %204 = load i64, ptr %8, align 8
  %205 = tail call { i64, i64 } asm "subs\09${0:Q}, ${2:Q}, ${4:Q}\0A\09sbcs\09${0:R}, ${2:R}, ${4:R}\0A\09sbcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09sbc\09${1:R}, ${3:R}, ${5:R}\0A\09", "=r,=r,0,1,r,r,~{cc}"(i64 0, i64 %202, i64 %204, i64 %203) #11, !srcloc !12
  %206 = extractvalue { i64, i64 } %205, 1
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %208, %201
  %209 = phi i64 [ %218, %208 ], [ %206, %201 ]
  %210 = phi { i64, i64 } [ %217, %208 ], [ %205, %201 ]
  %211 = phi i64 [ %213, %208 ], [ %196, %201 ]
  %212 = extractvalue { i64, i64 } %210, 0
  %213 = add i64 %211, -1
  %214 = lshr i64 %213, 63
  %215 = shl i64 %213, 1
  %216 = or i64 %215, 1
  %217 = tail call { i64, i64 } asm "adds\09${0:Q}, ${2:Q}, ${4:Q}\0A\09adcs\09${0:R}, ${2:R}, ${4:R}\0A\09adcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09adc\09${1:R}, ${3:R}, ${5:R}", "=r,=r,0,1,r,r,~{cc}"(i64 %212, i64 %209, i64 %216, i64 %214) #11, !srcloc !13
  %218 = extractvalue { i64, i64 } %217, 1
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %208, label %220

220:                                              ; preds = %208
  %221 = extractvalue { i64, i64 } %217, 1
  br label %222

222:                                              ; preds = %220, %201
  %223 = phi i64 [ %206, %201 ], [ %221, %220 ]
  %224 = phi i64 [ %196, %201 ], [ %213, %220 ]
  %225 = phi { i64, i64 } [ %205, %201 ], [ %217, %220 ]
  %226 = extractvalue { i64, i64 } %225, 0
  %227 = or i64 %223, %226
  %228 = icmp ne i64 %227, 0
  %229 = zext i1 %228 to i64
  %230 = or i64 %224, %229
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %231

231:                                              ; preds = %222, %199, %193
  %232 = phi i64 [ %230, %222 ], [ %196, %193 ], [ -1, %199 ]
  %233 = lshr i64 %232, 1
  %234 = and i64 %232, 1
  %235 = or i64 %233, %234
  store i64 %235, ptr %124, align 8
  %236 = call i32 @vfp_double_normaliseround(i32 noundef %0, ptr noundef nonnull %6, i32 noundef %3, i32 noundef 0, ptr undef)
  br label %237

237:                                              ; preds = %231, %66
  %238 = phi i32 [ %67, %66 ], [ %236, %231 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fcmp(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @vfp_compare(i32 noundef %0, i32 noundef 0, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fcmpe(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %6 = tail call i64 @vfp_get_double(i32 noundef %0) #10
  %7 = and i64 %6, 9218868437227405312
  %8 = icmp ne i64 %7, 9218868437227405312
  %9 = and i64 %6, 4503599627370495
  %10 = icmp eq i64 %9, 0
  %11 = or i1 %8, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %4
  %13 = and i64 %5, 9218868437227405312
  %14 = icmp ne i64 %13, 9218868437227405312
  %15 = and i64 %5, 4503599627370495
  %16 = icmp eq i64 %15, 0
  %17 = or i1 %14, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = icmp eq i64 %6, %5
  br i1 %19, label %41, label %20

20:                                               ; preds = %18
  %21 = or i64 %6, %5
  %22 = and i64 %21, 9223372036854775807
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = xor i64 %6, %5
  %26 = icmp sgt i64 %25, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = icmp sgt i64 %6, -1
  %29 = select i1 %28, i32 536870912, i32 -2147483648
  br label %41

30:                                               ; preds = %24
  %31 = lshr i64 %6, 63
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i64 %6, %5
  %34 = zext i1 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = icmp sgt i64 %6, %5
  %38 = zext i1 %37 to i32
  %39 = icmp eq i32 %32, %38
  %40 = select i1 %39, i32 0, i32 536870912
  br label %41

41:                                               ; preds = %36, %30, %27, %20, %18, %12, %4
  %42 = phi i32 [ 805306369, %12 ], [ 1610612736, %20 ], [ 1610612736, %18 ], [ %29, %27 ], [ -2147483648, %30 ], [ %40, %36 ], [ 805306369, %4 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fcmpz(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @vfp_compare(i32 noundef %0, i32 noundef 0, i32 noundef 32)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fcmpez(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i64 @vfp_get_double(i32 noundef 32) #10
  %6 = tail call i64 @vfp_get_double(i32 noundef %0) #10
  %7 = and i64 %6, 9218868437227405312
  %8 = icmp ne i64 %7, 9218868437227405312
  %9 = and i64 %6, 4503599627370495
  %10 = icmp eq i64 %9, 0
  %11 = or i1 %8, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %4
  %13 = and i64 %5, 9218868437227405312
  %14 = icmp ne i64 %13, 9218868437227405312
  %15 = and i64 %5, 4503599627370495
  %16 = icmp eq i64 %15, 0
  %17 = or i1 %14, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = icmp eq i64 %6, %5
  br i1 %19, label %41, label %20

20:                                               ; preds = %18
  %21 = or i64 %6, %5
  %22 = and i64 %21, 9223372036854775807
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = xor i64 %6, %5
  %26 = icmp sgt i64 %25, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = icmp sgt i64 %6, -1
  %29 = select i1 %28, i32 536870912, i32 -2147483648
  br label %41

30:                                               ; preds = %24
  %31 = lshr i64 %6, 63
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i64 %6, %5
  %34 = zext i1 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = icmp sgt i64 %6, %5
  %38 = zext i1 %37 to i32
  %39 = icmp eq i32 %32, %38
  %40 = select i1 %39, i32 0, i32 536870912
  br label %41

41:                                               ; preds = %36, %30, %27, %20, %18, %12, %4
  %42 = phi i32 [ 805306369, %12 ], [ 1610612736, %20 ], [ 1610612736, %18 ], [ %29, %27 ], [ -2147483648, %30 ], [ %40, %36 ], [ 805306369, %4 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fcvts(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_single, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %6 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %7 = lshr i64 %6, 48
  %8 = trunc i64 %7 to i16
  %9 = and i16 %8, -32768
  %10 = lshr i64 %6, 52
  %11 = trunc i64 %10 to i16
  %12 = and i16 %11, 2047
  %13 = shl i64 %6, 10
  %14 = and i64 %13, 4611686018427386880
  %15 = trunc i64 %10 to i11
  switch i11 %15, label %16 [
    i11 0, label %18
    i11 -1, label %18
  ]

16:                                               ; preds = %4
  %17 = or i64 %14, 4611686018427387904
  br label %18

18:                                               ; preds = %16, %4, %4
  %19 = phi i64 [ %17, %16 ], [ %14, %4 ], [ %14, %4 ]
  switch i11 %15, label %25 [
    i11 -1, label %20
    i11 0, label %27
  ]

20:                                               ; preds = %18
  %21 = icmp eq i64 %19, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = and i64 %19, 2305843009213693952
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %22, %20, %18
  %26 = phi i32 [ 8, %20 ], [ 16, %22 ], [ 1, %18 ]
  br label %53

27:                                               ; preds = %18
  %28 = icmp eq i64 %19, 0
  %29 = select i1 %28, i32 3, i32 5
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %27
  %33 = lshr i64 %19, 32
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = trunc i64 %19 to i32
  %38 = icmp eq i32 %37, 0
  %39 = tail call i32 @llvm.ctlz.i32(i32 %37, i1 false) #10, !range !8
  %40 = add nuw nsw i32 %39, 31
  %41 = select i1 %38, i32 63, i32 %40
  br label %46

42:                                               ; preds = %32
  %43 = tail call i32 @llvm.ctlz.i32(i32 %34, i1 true) #10, !range !8
  %44 = add nsw i32 %43, -1
  %45 = icmp eq i32 %43, 1
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %36
  %47 = phi i32 [ %41, %36 ], [ %44, %42 ]
  %48 = trunc i32 %47 to i16
  %49 = add nuw nsw i16 %12, 1
  %50 = sub nsw i16 %49, %48
  %51 = zext i32 %47 to i64
  %52 = shl i64 %19, %51
  br label %53

53:                                               ; preds = %46, %42, %27, %25, %22
  %54 = phi i32 [ 0, %27 ], [ 0, %25 ], [ 0, %42 ], [ 0, %46 ], [ 1, %22 ]
  %55 = phi i32 [ %29, %27 ], [ %26, %25 ], [ 5, %42 ], [ 5, %46 ], [ 48, %22 ]
  %56 = phi i16 [ 0, %27 ], [ %12, %25 ], [ 0, %42 ], [ %50, %46 ], [ 2047, %22 ]
  %57 = phi i64 [ %19, %27 ], [ %19, %25 ], [ %19, %42 ], [ %52, %46 ], [ %19, %22 ]
  %58 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 1
  store i16 %9, ptr %58, align 2
  %59 = tail call i32 asm "cmp\09${1:Q}, #1\09\09@ vfp_hi64to32jamming\0A\09movcc\09$0, ${1:R}\0A\09orrcs\09$0, ${1:R}, #1", "=r,r,~{cc}"(i64 %57) #11, !srcloc !14
  %60 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  %61 = and i32 %55, 24
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %53
  %64 = icmp eq i32 %55, 16
  %65 = zext i16 %9 to i32
  %66 = shl nuw i32 %65, 16
  %67 = or i32 %66, 2139095040
  %68 = lshr i32 %59, 7
  %69 = or i32 %68, 4194304
  %70 = select i1 %64, i32 %69, i32 %68
  %71 = add i32 %67, %70
  tail call void @vfp_put_float(i32 noundef %71, i32 noundef %0) #10
  br label %78

72:                                               ; preds = %53
  %73 = and i32 %55, 2
  %74 = icmp eq i32 %73, 0
  %75 = add nsw i16 %56, -896
  %76 = select i1 %74, i16 %75, i16 0
  store i16 %76, ptr %5, align 8
  %77 = call i32 @__vfp_single_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %54) #10
  br label %78

78:                                               ; preds = %72, %63
  %79 = phi i32 [ %54, %63 ], [ %77, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fuito(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_double, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !9
  %6 = tail call i32 @vfp_get_float(i32 noundef %2) #10
  %7 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 1
  store i16 0, ptr %7, align 2
  store i16 1085, ptr %5, align 8
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 2
  store i64 %8, ptr %9, align 8
  %10 = call i32 @vfp_double_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef 0, ptr undef)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fsito(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_double, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !9
  %6 = tail call i32 @vfp_get_float(i32 noundef %2) #10
  %7 = lshr i32 %6, 16
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, -32768
  %10 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 1
  store i16 %9, ptr %10, align 2
  store i16 1085, ptr %5, align 8
  %11 = icmp eq i16 %9, 0
  %12 = sub i32 0, %6
  %13 = select i1 %11, i32 %6, i32 %12
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 2
  store i64 %14, ptr %15, align 8
  %16 = call i32 @vfp_double_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef 0, ptr undef)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_ftoui(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %3, 12582912
  %6 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %7 = lshr i64 %6, 48
  %8 = trunc i64 %7 to i16
  %9 = and i16 %8, -32768
  %10 = lshr i64 %6, 52
  %11 = trunc i64 %10 to i16
  %12 = and i16 %11, 2047
  %13 = shl i64 %6, 10
  %14 = and i64 %13, 4611686018427386880
  %15 = trunc i64 %10 to i11
  switch i11 %15, label %16 [
    i11 0, label %18
    i11 -1, label %18
  ]

16:                                               ; preds = %4
  %17 = or i64 %14, 4611686018427387904
  br label %18

18:                                               ; preds = %16, %4, %4
  %19 = phi i64 [ %17, %16 ], [ %14, %4 ], [ %14, %4 ]
  switch i11 %15, label %36 [
    i11 -1, label %20
    i11 0, label %26
  ]

20:                                               ; preds = %18
  %21 = icmp eq i64 %19, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %20
  %23 = and i64 %19, 2305843009213693952
  %24 = icmp eq i64 %23, 0
  %25 = select i1 %24, i32 48, i32 16
  br label %29

26:                                               ; preds = %18
  %27 = icmp eq i64 %19, 0
  %28 = select i1 %27, i32 3, i32 5
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %25, %22 ], [ %28, %26 ]
  %31 = shl nuw nsw i32 %30, 5
  %32 = and i32 %31, 128
  %33 = and i32 %30, 16
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i16 %9, i16 0
  br label %36

36:                                               ; preds = %29, %18
  %37 = phi i32 [ 0, %18 ], [ %32, %29 ]
  %38 = phi i16 [ %9, %18 ], [ %35, %29 ]
  %39 = zext i16 %12 to i32
  %40 = icmp ugt i16 %12, 1054
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %20
  %42 = phi i16 [ %38, %36 ], [ %9, %20 ]
  %43 = icmp eq i16 %42, 0
  %44 = sext i1 %43 to i32
  br label %102

45:                                               ; preds = %36
  %46 = icmp ugt i16 %12, 1021
  br i1 %46, label %47, label %87

47:                                               ; preds = %45
  %48 = sub nsw i32 1086, %39
  %49 = shl i64 %19, 1
  %50 = zext i32 %48 to i64
  %51 = lshr i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = add nsw i32 %39, -1021
  %54 = zext i32 %53 to i64
  %55 = shl i64 %19, %54
  switch i32 %5, label %60 [
    i32 0, label %56
    i32 12582912, label %75
  ]

56:                                               ; preds = %47
  %57 = and i32 %52, 1
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i64 9223372036854775807, i64 -9223372036854775808
  br label %65

60:                                               ; preds = %47
  %61 = icmp eq i32 %5, 4194304
  %62 = icmp ne i16 %38, 0
  %63 = xor i1 %61, %62
  %64 = sext i1 %63 to i64
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i64 [ %59, %56 ], [ %64, %60 ]
  %67 = xor i64 %55, -1
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = icmp eq i32 %52, -1
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = add nuw i32 %52, 1
  br label %75

73:                                               ; preds = %69
  %74 = or i32 %37, 1
  br label %75

75:                                               ; preds = %73, %71, %65, %47
  %76 = phi i32 [ %37, %71 ], [ %74, %73 ], [ %37, %65 ], [ %37, %47 ]
  %77 = phi i32 [ %72, %71 ], [ -1, %73 ], [ %52, %65 ], [ %52, %47 ]
  %78 = icmp ne i32 %77, 0
  %79 = icmp ne i16 %38, 0
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = or i32 %76, 1
  br label %102

83:                                               ; preds = %75
  %84 = icmp eq i64 %55, 0
  %85 = or i32 %76, 16
  %86 = select i1 %84, i32 %76, i32 %85
  br label %102

87:                                               ; preds = %45
  %88 = zext i16 %12 to i64
  %89 = or i64 %19, %88
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %87
  %92 = or i32 %37, 16
  %93 = icmp eq i32 %5, 4194304
  %94 = icmp eq i16 %38, 0
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = icmp eq i32 %5, 8388608
  %98 = icmp ne i16 %38, 0
  %99 = select i1 %97, i1 %98, i1 false
  %100 = or i32 %37, 17
  %101 = select i1 %99, i32 %100, i32 %92
  br label %102

102:                                              ; preds = %96, %91, %87, %83, %81, %41
  %103 = phi i32 [ 1, %41 ], [ %37, %87 ], [ %82, %81 ], [ %86, %83 ], [ %92, %91 ], [ %101, %96 ]
  %104 = phi i32 [ %44, %41 ], [ 0, %87 ], [ 0, %81 ], [ %77, %83 ], [ 1, %91 ], [ 0, %96 ]
  tail call void @vfp_put_float(i32 noundef %104, i32 noundef %0) #10
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_ftouiz(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @vfp_double_ftoui(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 12582912)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_ftosi(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %3, 12582912
  %6 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %7 = lshr i64 %6, 48
  %8 = trunc i64 %7 to i16
  %9 = and i16 %8, -32768
  %10 = lshr i64 %6, 52
  %11 = trunc i64 %10 to i16
  %12 = and i16 %11, 2047
  %13 = shl i64 %6, 10
  %14 = and i64 %13, 4611686018427386880
  %15 = trunc i64 %10 to i11
  switch i11 %15, label %16 [
    i11 0, label %18
    i11 -1, label %18
  ]

16:                                               ; preds = %4
  %17 = or i64 %14, 4611686018427387904
  br label %18

18:                                               ; preds = %16, %4, %4
  %19 = phi i64 [ %17, %16 ], [ %14, %4 ], [ %14, %4 ]
  switch i11 %15, label %37 [
    i11 -1, label %20
    i11 0, label %26
  ]

20:                                               ; preds = %18
  %21 = icmp eq i64 %19, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %20
  %23 = and i64 %19, 2305843009213693952
  %24 = icmp eq i64 %23, 0
  %25 = select i1 %24, i32 48, i32 16
  br label %29

26:                                               ; preds = %18
  %27 = icmp eq i64 %19, 0
  %28 = select i1 %27, i32 3, i32 5
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %25, %22 ], [ %28, %26 ]
  %31 = shl nuw nsw i32 %30, 5
  %32 = and i32 %31, 128
  %33 = and i32 %30, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = or i32 %32, 1
  br label %99

37:                                               ; preds = %29, %18
  %38 = phi i32 [ %32, %29 ], [ 0, %18 ]
  %39 = zext i16 %12 to i32
  %40 = icmp ugt i16 %12, 1054
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %20
  %42 = phi i32 [ %38, %37 ], [ 0, %20 ]
  %43 = icmp eq i16 %9, 0
  %44 = select i1 %43, i32 2147483647, i32 -2147483648
  %45 = or i32 %42, 1
  br label %99

46:                                               ; preds = %37
  %47 = icmp ugt i16 %12, 1021
  br i1 %47, label %48, label %85

48:                                               ; preds = %46
  %49 = sub nsw i32 1086, %39
  %50 = shl i64 %19, 1
  %51 = zext i32 %49 to i64
  %52 = lshr i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = add nsw i32 %39, -1021
  %55 = zext i32 %54 to i64
  %56 = shl i64 %19, %55
  switch i32 %5, label %61 [
    i32 0, label %57
    i32 12582912, label %66
  ]

57:                                               ; preds = %48
  %58 = and i32 %53, 1
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i64 9223372036854775807, i64 -9223372036854775808
  br label %66

61:                                               ; preds = %48
  %62 = icmp eq i32 %5, 4194304
  %63 = icmp ne i16 %9, 0
  %64 = xor i1 %62, %63
  %65 = sext i1 %64 to i64
  br label %66

66:                                               ; preds = %61, %57, %48
  %67 = phi i64 [ %60, %57 ], [ 0, %48 ], [ %65, %61 ]
  %68 = xor i64 %56, -1
  %69 = icmp ugt i64 %67, %68
  %70 = icmp ne i32 %53, -1
  %71 = select i1 %69, i1 %70, i1 false
  %72 = zext i1 %71 to i32
  %73 = add i32 %72, %53
  %74 = icmp eq i16 %9, 0
  %75 = select i1 %74, i32 2147483647, i32 -2147483648
  %76 = icmp ugt i32 %73, %75
  %77 = or i32 %38, 1
  %78 = icmp eq i64 %56, 0
  %79 = or i32 %38, 16
  %80 = select i1 %78, i32 %38, i32 %79
  %81 = select i1 %76, i32 %77, i32 %80
  %82 = tail call i32 @llvm.umin.i32(i32 %73, i32 %75)
  %83 = sub i32 0, %82
  %84 = select i1 %74, i32 %82, i32 %83
  br label %99

85:                                               ; preds = %46
  %86 = zext i16 %12 to i64
  %87 = or i64 %19, %86
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %85
  %90 = or i32 %38, 16
  %91 = icmp eq i32 %5, 4194304
  %92 = icmp eq i16 %9, 0
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = icmp eq i32 %5, 8388608
  %96 = icmp ne i16 %9, 0
  %97 = select i1 %95, i1 %96, i1 false
  %98 = sext i1 %97 to i32
  br label %99

99:                                               ; preds = %94, %89, %85, %66, %41, %35
  %100 = phi i32 [ %36, %35 ], [ %45, %41 ], [ %81, %66 ], [ %38, %85 ], [ %90, %89 ], [ %90, %94 ]
  %101 = phi i32 [ 0, %35 ], [ %44, %41 ], [ %84, %66 ], [ 0, %85 ], [ 1, %89 ], [ %98, %94 ]
  tail call void @vfp_put_float(i32 noundef %101, i32 noundef %0) #10
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_ftosiz(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @vfp_double_ftosi(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 12582912)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfp_get_double(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_estimate_sqrt_significand(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal fastcc i64 @vfp_estimate_div128to64(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = icmp ult i64 %0, %1
  br i1 %3, label %4, label %67

4:                                                ; preds = %2
  %5 = lshr i64 %1, 32
  %6 = and i64 %1, -4294967296
  %7 = icmp ugt i64 %6, %0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = trunc i64 %5 to i32
  %10 = icmp ult i64 %0, 4294967296
  br i1 %10, label %11, label %15, !prof !10

11:                                               ; preds = %8
  %12 = trunc i64 %0 to i32
  %13 = udiv i32 %12, %9
  %14 = zext i32 %13 to i64
  br label %18

15:                                               ; preds = %8
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %0) #11, !srcloc !11
  %17 = extractvalue { i64, i64 } %16, 1
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i64 [ %14, %11 ], [ %17, %15 ]
  %20 = shl i64 %19, 32
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i64 [ %20, %18 ], [ -4294967296, %4 ]
  %23 = and i64 %1, 4294967295
  %24 = lshr exact i64 %22, 32
  %25 = mul nuw i64 %24, %23
  %26 = mul nuw i64 %24, %5
  %27 = lshr i64 %25, 32
  %28 = shl i64 %25, 32
  %29 = add nuw i64 %27, %26
  %30 = tail call { i64, i64 } asm "subs\09${0:Q}, ${2:Q}, ${4:Q}\0A\09sbcs\09${0:R}, ${2:R}, ${4:R}\0A\09sbcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09sbc\09${1:R}, ${3:R}, ${5:R}\0A\09", "=r,=r,0,1,r,r,~{cc}"(i64 0, i64 %0, i64 %28, i64 %29) #11, !srcloc !12
  %31 = shl i64 %1, 32
  %32 = extractvalue { i64, i64 } %30, 1
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %34, %21
  %35 = phi i64 [ %41, %34 ], [ %32, %21 ]
  %36 = phi { i64, i64 } [ %40, %34 ], [ %30, %21 ]
  %37 = phi i64 [ %39, %34 ], [ %22, %21 ]
  %38 = extractvalue { i64, i64 } %36, 0
  %39 = add i64 %37, -4294967296
  %40 = tail call { i64, i64 } asm "adds\09${0:Q}, ${2:Q}, ${4:Q}\0A\09adcs\09${0:R}, ${2:R}, ${4:R}\0A\09adcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09adc\09${1:R}, ${3:R}, ${5:R}", "=r,=r,0,1,r,r,~{cc}"(i64 %38, i64 %35, i64 %31, i64 %5) #11, !srcloc !13
  %41 = extractvalue { i64, i64 } %40, 1
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %34, label %43

43:                                               ; preds = %34
  %44 = extractvalue { i64, i64 } %40, 1
  br label %45

45:                                               ; preds = %43, %21
  %46 = phi i64 [ %32, %21 ], [ %44, %43 ]
  %47 = phi { i64, i64 } [ %30, %21 ], [ %40, %43 ]
  %48 = phi i64 [ %22, %21 ], [ %39, %43 ]
  %49 = extractvalue { i64, i64 } %47, 0
  %50 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %49, i64 32)
  %51 = icmp ugt i64 %6, %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = or i64 %48, 4294967295
  br label %67

54:                                               ; preds = %45
  %55 = trunc i64 %5 to i32
  %56 = icmp ult i64 %50, 4294967296
  br i1 %56, label %57, label %61, !prof !10

57:                                               ; preds = %54
  %58 = trunc i64 %50 to i32
  %59 = udiv i32 %58, %55
  %60 = zext i32 %59 to i64
  br label %64

61:                                               ; preds = %54
  %62 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %55, i64 %50) #11, !srcloc !11
  %63 = extractvalue { i64, i64 } %62, 1
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i64 [ %60, %57 ], [ %63, %61 ]
  %66 = or i64 %65, %48
  br label %67

67:                                               ; preds = %64, %52, %2
  %68 = phi i64 [ -1, %2 ], [ %66, %64 ], [ %53, %52 ]
  ret i64 %68
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @mul64to128(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2, i64 noundef %3) unnamed_addr #6 {
  %5 = and i64 %2, 4294967295
  %6 = and i64 %3, 4294967295
  %7 = mul nuw i64 %6, %5
  %8 = lshr i64 %2, 32
  %9 = mul nuw i64 %6, %8
  %10 = lshr i64 %3, 32
  %11 = mul nuw i64 %10, %5
  %12 = add i64 %9, %11
  %13 = mul nuw i64 %10, %8
  %14 = icmp ult i64 %12, %11
  %15 = select i1 %14, i64 4294967296, i64 0
  %16 = lshr i64 %12, 32
  %17 = shl i64 %12, 32
  %18 = add i64 %17, %7
  %19 = icmp ult i64 %18, %17
  %20 = zext i1 %19 to i64
  %21 = add nuw i64 %16, %13
  %22 = add i64 %21, %15
  %23 = add i64 %22, %20
  store i64 %18, ptr %1, align 8
  store i64 %23, ptr %0, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vfp_compare(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %5 = and i64 %4, 9218868437227405312
  %6 = icmp ne i64 %5, 9218868437227405312
  %7 = and i64 %4, 4503599627370495
  %8 = icmp eq i64 %7, 0
  %9 = or i1 %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = icmp ne i32 %1, 0
  %12 = and i64 %4, 2251799813685248
  %13 = icmp eq i64 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  %15 = select i1 %14, i32 805306369, i32 805306368
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ 0, %3 ], [ %15, %10 ]
  %18 = tail call i64 @vfp_get_double(i32 noundef %0) #10
  %19 = and i64 %18, 9218868437227405312
  %20 = icmp ne i64 %19, 9218868437227405312
  %21 = and i64 %18, 4503599627370495
  %22 = icmp eq i64 %21, 0
  %23 = or i1 %20, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = or i32 %17, 805306368
  %28 = and i64 %18, 2251799813685248
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %26, %24
  br label %56

31:                                               ; preds = %16
  %32 = icmp eq i32 %17, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %31
  %34 = icmp eq i64 %18, %4
  br i1 %34, label %56, label %35

35:                                               ; preds = %33
  %36 = or i64 %18, %4
  %37 = and i64 %36, 9223372036854775807
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = xor i64 %18, %4
  %41 = icmp sgt i64 %40, -1
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = icmp sgt i64 %18, -1
  %44 = select i1 %43, i32 536870912, i32 -2147483648
  br label %56

45:                                               ; preds = %39
  %46 = lshr i64 %18, 63
  %47 = trunc i64 %46 to i32
  %48 = icmp slt i64 %18, %4
  %49 = zext i1 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = icmp sgt i64 %18, %4
  %53 = zext i1 %52 to i32
  %54 = icmp eq i32 %47, %53
  %55 = select i1 %54, i32 0, i32 536870912
  br label %56

56:                                               ; preds = %51, %45, %42, %35, %33, %31, %30, %26
  %57 = phi i32 [ %17, %31 ], [ 1610612736, %35 ], [ 1610612736, %33 ], [ %44, %42 ], [ -2147483648, %45 ], [ %55, %51 ], [ %27, %26 ], [ 805306369, %30 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfp_single_normaliseround(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_put_float(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_get_float(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fmac(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @vfp_double_multiply_accumulate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull @.str.11)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fmsc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @vfp_double_multiply_accumulate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 2, ptr noundef nonnull @.str.15)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fmul(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_double, align 8
  %6 = alloca %struct.vfp_double, align 8
  %7 = alloca %struct.vfp_double, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !9
  %8 = tail call i64 @vfp_get_double(i32 noundef %1) #10
  %9 = lshr i64 %8, 48
  %10 = trunc i64 %9 to i16
  %11 = and i16 %10, -32768
  %12 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 1
  store i16 %11, ptr %12, align 2
  %13 = lshr i64 %8, 52
  %14 = trunc i64 %13 to i16
  %15 = and i16 %14, 2047
  store i16 %15, ptr %6, align 8
  %16 = shl i64 %8, 10
  %17 = and i64 %16, 4611686018427386880
  %18 = trunc i64 %13 to i11
  switch i11 %18, label %19 [
    i11 0, label %21
    i11 -1, label %21
  ]

19:                                               ; preds = %4
  %20 = or i64 %17, 4611686018427387904
  br label %21

21:                                               ; preds = %19, %4, %4
  %22 = phi i64 [ %20, %19 ], [ %17, %4 ], [ %17, %4 ]
  %23 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 2
  store i64 %22, ptr %23, align 8
  %24 = icmp ne i16 %15, 0
  %25 = icmp eq i64 %22, 0
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %47, label %27

27:                                               ; preds = %21
  %28 = lshr i64 %22, 32
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = trunc i64 %22 to i32
  %33 = icmp eq i32 %32, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 false) #10, !range !8
  %35 = add nuw nsw i32 %34, 31
  %36 = select i1 %33, i32 63, i32 %35
  br label %41

37:                                               ; preds = %27
  %38 = tail call i32 @llvm.ctlz.i32(i32 %29, i1 true) #10, !range !8
  %39 = add nsw i32 %38, -1
  %40 = icmp eq i32 %38, 1
  br i1 %40, label %47, label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %36, %31 ], [ %39, %37 ]
  %43 = trunc i32 %42 to i16
  %44 = sub nsw i16 1, %43
  store i16 %44, ptr %6, align 8
  %45 = zext i32 %42 to i64
  %46 = shl i64 %22, %45
  store i64 %46, ptr %23, align 8
  br label %47

47:                                               ; preds = %41, %37, %21
  %48 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %49 = lshr i64 %48, 48
  %50 = trunc i64 %49 to i16
  %51 = and i16 %50, -32768
  %52 = getelementptr inbounds %struct.vfp_double, ptr %7, i32 0, i32 1
  store i16 %51, ptr %52, align 2
  %53 = lshr i64 %48, 52
  %54 = trunc i64 %53 to i16
  %55 = and i16 %54, 2047
  store i16 %55, ptr %7, align 8
  %56 = shl i64 %48, 10
  %57 = and i64 %56, 4611686018427386880
  %58 = trunc i64 %53 to i11
  switch i11 %58, label %59 [
    i11 0, label %61
    i11 -1, label %61
  ]

59:                                               ; preds = %47
  %60 = or i64 %57, 4611686018427387904
  br label %61

61:                                               ; preds = %59, %47, %47
  %62 = phi i64 [ %60, %59 ], [ %57, %47 ], [ %57, %47 ]
  %63 = getelementptr inbounds %struct.vfp_double, ptr %7, i32 0, i32 2
  store i64 %62, ptr %63, align 8
  %64 = icmp ne i16 %55, 0
  %65 = icmp eq i64 %62, 0
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %87, label %67

67:                                               ; preds = %61
  %68 = lshr i64 %62, 32
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = trunc i64 %62 to i32
  %73 = icmp eq i32 %72, 0
  %74 = tail call i32 @llvm.ctlz.i32(i32 %72, i1 false) #10, !range !8
  %75 = add nuw nsw i32 %74, 31
  %76 = select i1 %73, i32 63, i32 %75
  br label %81

77:                                               ; preds = %67
  %78 = tail call i32 @llvm.ctlz.i32(i32 %69, i1 true) #10, !range !8
  %79 = add nsw i32 %78, -1
  %80 = icmp eq i32 %78, 1
  br i1 %80, label %87, label %81

81:                                               ; preds = %77, %71
  %82 = phi i32 [ %76, %71 ], [ %79, %77 ]
  %83 = trunc i32 %82 to i16
  %84 = sub nsw i16 1, %83
  store i16 %84, ptr %7, align 8
  %85 = zext i32 %82 to i64
  %86 = shl i64 %62, %85
  store i64 %86, ptr %63, align 8
  br label %87

87:                                               ; preds = %81, %77, %61
  %88 = call fastcc i32 @vfp_double_multiply(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %3), !range !15
  %89 = call i32 @vfp_double_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %88, ptr undef)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fadd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_double, align 8
  %6 = alloca %struct.vfp_double, align 8
  %7 = alloca %struct.vfp_double, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !9
  %8 = tail call i64 @vfp_get_double(i32 noundef %1) #10
  %9 = lshr i64 %8, 48
  %10 = trunc i64 %9 to i16
  %11 = and i16 %10, -32768
  %12 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 1
  store i16 %11, ptr %12, align 2
  %13 = lshr i64 %8, 52
  %14 = trunc i64 %13 to i16
  %15 = and i16 %14, 2047
  store i16 %15, ptr %6, align 8
  %16 = shl i64 %8, 10
  %17 = and i64 %16, 4611686018427386880
  %18 = trunc i64 %13 to i11
  switch i11 %18, label %19 [
    i11 0, label %21
    i11 -1, label %21
  ]

19:                                               ; preds = %4
  %20 = or i64 %17, 4611686018427387904
  br label %21

21:                                               ; preds = %19, %4, %4
  %22 = phi i64 [ %20, %19 ], [ %17, %4 ], [ %17, %4 ]
  %23 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 2
  store i64 %22, ptr %23, align 8
  %24 = icmp ne i16 %15, 0
  %25 = icmp eq i64 %22, 0
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %47, label %27

27:                                               ; preds = %21
  %28 = lshr i64 %22, 32
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = trunc i64 %22 to i32
  %33 = icmp eq i32 %32, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 false) #10, !range !8
  %35 = add nuw nsw i32 %34, 31
  %36 = select i1 %33, i32 63, i32 %35
  br label %41

37:                                               ; preds = %27
  %38 = tail call i32 @llvm.ctlz.i32(i32 %29, i1 true) #10, !range !8
  %39 = add nsw i32 %38, -1
  %40 = icmp eq i32 %38, 1
  br i1 %40, label %47, label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %36, %31 ], [ %39, %37 ]
  %43 = trunc i32 %42 to i16
  %44 = sub nsw i16 1, %43
  store i16 %44, ptr %6, align 8
  %45 = zext i32 %42 to i64
  %46 = shl i64 %22, %45
  store i64 %46, ptr %23, align 8
  br label %47

47:                                               ; preds = %41, %37, %21
  %48 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %49 = lshr i64 %48, 48
  %50 = trunc i64 %49 to i16
  %51 = and i16 %50, -32768
  %52 = getelementptr inbounds %struct.vfp_double, ptr %7, i32 0, i32 1
  store i16 %51, ptr %52, align 2
  %53 = lshr i64 %48, 52
  %54 = trunc i64 %53 to i16
  %55 = and i16 %54, 2047
  store i16 %55, ptr %7, align 8
  %56 = shl i64 %48, 10
  %57 = and i64 %56, 4611686018427386880
  %58 = trunc i64 %53 to i11
  switch i11 %58, label %59 [
    i11 0, label %61
    i11 -1, label %61
  ]

59:                                               ; preds = %47
  %60 = or i64 %57, 4611686018427387904
  br label %61

61:                                               ; preds = %59, %47, %47
  %62 = phi i64 [ %60, %59 ], [ %57, %47 ], [ %57, %47 ]
  %63 = getelementptr inbounds %struct.vfp_double, ptr %7, i32 0, i32 2
  store i64 %62, ptr %63, align 8
  %64 = icmp ne i16 %55, 0
  %65 = icmp eq i64 %62, 0
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %87, label %67

67:                                               ; preds = %61
  %68 = lshr i64 %62, 32
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = trunc i64 %62 to i32
  %73 = icmp eq i32 %72, 0
  %74 = tail call i32 @llvm.ctlz.i32(i32 %72, i1 false) #10, !range !8
  %75 = add nuw nsw i32 %74, 31
  %76 = select i1 %73, i32 63, i32 %75
  br label %81

77:                                               ; preds = %67
  %78 = tail call i32 @llvm.ctlz.i32(i32 %69, i1 true) #10, !range !8
  %79 = add nsw i32 %78, -1
  %80 = icmp eq i32 %78, 1
  br i1 %80, label %87, label %81

81:                                               ; preds = %77, %71
  %82 = phi i32 [ %76, %71 ], [ %79, %77 ]
  %83 = trunc i32 %82 to i16
  %84 = sub nsw i16 1, %83
  store i16 %84, ptr %7, align 8
  %85 = zext i32 %82 to i64
  %86 = shl i64 %62, %85
  store i64 %86, ptr %63, align 8
  br label %87

87:                                               ; preds = %81, %77, %61
  %88 = call fastcc i32 @vfp_double_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %3), !range !15
  %89 = call i32 @vfp_double_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %88, ptr undef)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fnmac(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @vfp_double_multiply_accumulate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef nonnull @.str.18)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fnmsc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @vfp_double_multiply_accumulate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 3, ptr noundef nonnull @.str.19)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fnmul(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_double, align 8
  %6 = alloca %struct.vfp_double, align 8
  %7 = alloca %struct.vfp_double, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !9
  %8 = tail call i64 @vfp_get_double(i32 noundef %1) #10
  %9 = lshr i64 %8, 48
  %10 = trunc i64 %9 to i16
  %11 = and i16 %10, -32768
  %12 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 1
  store i16 %11, ptr %12, align 2
  %13 = lshr i64 %8, 52
  %14 = trunc i64 %13 to i16
  %15 = and i16 %14, 2047
  store i16 %15, ptr %6, align 8
  %16 = shl i64 %8, 10
  %17 = and i64 %16, 4611686018427386880
  %18 = trunc i64 %13 to i11
  switch i11 %18, label %19 [
    i11 0, label %21
    i11 -1, label %21
  ]

19:                                               ; preds = %4
  %20 = or i64 %17, 4611686018427387904
  br label %21

21:                                               ; preds = %19, %4, %4
  %22 = phi i64 [ %20, %19 ], [ %17, %4 ], [ %17, %4 ]
  %23 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 2
  store i64 %22, ptr %23, align 8
  %24 = icmp ne i16 %15, 0
  %25 = icmp eq i64 %22, 0
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %47, label %27

27:                                               ; preds = %21
  %28 = lshr i64 %22, 32
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = trunc i64 %22 to i32
  %33 = icmp eq i32 %32, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 false) #10, !range !8
  %35 = add nuw nsw i32 %34, 31
  %36 = select i1 %33, i32 63, i32 %35
  br label %41

37:                                               ; preds = %27
  %38 = tail call i32 @llvm.ctlz.i32(i32 %29, i1 true) #10, !range !8
  %39 = add nsw i32 %38, -1
  %40 = icmp eq i32 %38, 1
  br i1 %40, label %47, label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %36, %31 ], [ %39, %37 ]
  %43 = trunc i32 %42 to i16
  %44 = sub nsw i16 1, %43
  store i16 %44, ptr %6, align 8
  %45 = zext i32 %42 to i64
  %46 = shl i64 %22, %45
  store i64 %46, ptr %23, align 8
  br label %47

47:                                               ; preds = %41, %37, %21
  %48 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %49 = lshr i64 %48, 48
  %50 = trunc i64 %49 to i16
  %51 = and i16 %50, -32768
  %52 = getelementptr inbounds %struct.vfp_double, ptr %7, i32 0, i32 1
  store i16 %51, ptr %52, align 2
  %53 = lshr i64 %48, 52
  %54 = trunc i64 %53 to i16
  %55 = and i16 %54, 2047
  store i16 %55, ptr %7, align 8
  %56 = shl i64 %48, 10
  %57 = and i64 %56, 4611686018427386880
  %58 = trunc i64 %53 to i11
  switch i11 %58, label %59 [
    i11 0, label %61
    i11 -1, label %61
  ]

59:                                               ; preds = %47
  %60 = or i64 %57, 4611686018427387904
  br label %61

61:                                               ; preds = %59, %47, %47
  %62 = phi i64 [ %60, %59 ], [ %57, %47 ], [ %57, %47 ]
  %63 = getelementptr inbounds %struct.vfp_double, ptr %7, i32 0, i32 2
  store i64 %62, ptr %63, align 8
  %64 = icmp ne i16 %55, 0
  %65 = icmp eq i64 %62, 0
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %87, label %67

67:                                               ; preds = %61
  %68 = lshr i64 %62, 32
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = trunc i64 %62 to i32
  %73 = icmp eq i32 %72, 0
  %74 = tail call i32 @llvm.ctlz.i32(i32 %72, i1 false) #10, !range !8
  %75 = add nuw nsw i32 %74, 31
  %76 = select i1 %73, i32 63, i32 %75
  br label %81

77:                                               ; preds = %67
  %78 = tail call i32 @llvm.ctlz.i32(i32 %69, i1 true) #10, !range !8
  %79 = add nsw i32 %78, -1
  %80 = icmp eq i32 %78, 1
  br i1 %80, label %87, label %81

81:                                               ; preds = %77, %71
  %82 = phi i32 [ %76, %71 ], [ %79, %77 ]
  %83 = trunc i32 %82 to i16
  %84 = sub nsw i16 1, %83
  store i16 %84, ptr %7, align 8
  %85 = zext i32 %82 to i64
  %86 = shl i64 %62, %85
  store i64 %86, ptr %63, align 8
  br label %87

87:                                               ; preds = %81, %77, %61
  %88 = call fastcc i32 @vfp_double_multiply(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %3), !range !15
  %89 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 1
  %90 = load i16, ptr %89, align 2
  %91 = xor i16 %90, -32768
  store i16 %91, ptr %89, align 2
  %92 = call i32 @vfp_double_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %88, ptr undef)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fsub(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_double, align 8
  %6 = alloca %struct.vfp_double, align 8
  %7 = alloca %struct.vfp_double, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !9
  %8 = tail call i64 @vfp_get_double(i32 noundef %1) #10
  %9 = lshr i64 %8, 48
  %10 = trunc i64 %9 to i16
  %11 = and i16 %10, -32768
  %12 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 1
  store i16 %11, ptr %12, align 2
  %13 = lshr i64 %8, 52
  %14 = trunc i64 %13 to i16
  %15 = and i16 %14, 2047
  store i16 %15, ptr %6, align 8
  %16 = shl i64 %8, 10
  %17 = and i64 %16, 4611686018427386880
  %18 = trunc i64 %13 to i11
  switch i11 %18, label %19 [
    i11 0, label %21
    i11 -1, label %21
  ]

19:                                               ; preds = %4
  %20 = or i64 %17, 4611686018427387904
  br label %21

21:                                               ; preds = %19, %4, %4
  %22 = phi i64 [ %20, %19 ], [ %17, %4 ], [ %17, %4 ]
  %23 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 2
  store i64 %22, ptr %23, align 8
  %24 = icmp ne i16 %15, 0
  %25 = icmp eq i64 %22, 0
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %47, label %27

27:                                               ; preds = %21
  %28 = lshr i64 %22, 32
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = trunc i64 %22 to i32
  %33 = icmp eq i32 %32, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 false) #10, !range !8
  %35 = add nuw nsw i32 %34, 31
  %36 = select i1 %33, i32 63, i32 %35
  br label %41

37:                                               ; preds = %27
  %38 = tail call i32 @llvm.ctlz.i32(i32 %29, i1 true) #10, !range !8
  %39 = add nsw i32 %38, -1
  %40 = icmp eq i32 %38, 1
  br i1 %40, label %47, label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %36, %31 ], [ %39, %37 ]
  %43 = trunc i32 %42 to i16
  %44 = sub nsw i16 1, %43
  store i16 %44, ptr %6, align 8
  %45 = zext i32 %42 to i64
  %46 = shl i64 %22, %45
  store i64 %46, ptr %23, align 8
  br label %47

47:                                               ; preds = %41, %37, %21
  %48 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %49 = lshr i64 %48, 52
  %50 = trunc i64 %49 to i16
  %51 = and i16 %50, 2047
  store i16 %51, ptr %7, align 8
  %52 = shl i64 %48, 10
  %53 = and i64 %52, 4611686018427386880
  %54 = trunc i64 %49 to i11
  switch i11 %54, label %55 [
    i11 0, label %57
    i11 -1, label %57
  ]

55:                                               ; preds = %47
  %56 = or i64 %53, 4611686018427387904
  br label %57

57:                                               ; preds = %55, %47, %47
  %58 = phi i64 [ %56, %55 ], [ %53, %47 ], [ %53, %47 ]
  %59 = getelementptr inbounds %struct.vfp_double, ptr %7, i32 0, i32 2
  store i64 %58, ptr %59, align 8
  %60 = icmp ne i16 %51, 0
  %61 = icmp eq i64 %58, 0
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %83, label %63

63:                                               ; preds = %57
  %64 = lshr i64 %58, 32
  %65 = trunc i64 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = trunc i64 %58 to i32
  %69 = icmp eq i32 %68, 0
  %70 = tail call i32 @llvm.ctlz.i32(i32 %68, i1 false) #10, !range !8
  %71 = add nuw nsw i32 %70, 31
  %72 = select i1 %69, i32 63, i32 %71
  br label %77

73:                                               ; preds = %63
  %74 = tail call i32 @llvm.ctlz.i32(i32 %65, i1 true) #10, !range !8
  %75 = add nsw i32 %74, -1
  %76 = icmp eq i32 %74, 1
  br i1 %76, label %83, label %77

77:                                               ; preds = %73, %67
  %78 = phi i32 [ %72, %67 ], [ %75, %73 ]
  %79 = trunc i32 %78 to i16
  %80 = sub nsw i16 1, %79
  store i16 %80, ptr %7, align 8
  %81 = zext i32 %78 to i64
  %82 = shl i64 %58, %81
  store i64 %82, ptr %59, align 8
  br label %83

83:                                               ; preds = %77, %73, %57
  %84 = getelementptr inbounds %struct.vfp_double, ptr %7, i32 0, i32 1
  %85 = lshr i64 %48, 48
  %86 = trunc i64 %85 to i16
  %87 = and i16 %86, -32768
  %88 = xor i16 %87, -32768
  store i16 %88, ptr %84, align 2
  %89 = call fastcc i32 @vfp_double_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %3), !range !15
  %90 = call i32 @vfp_double_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %89, ptr undef)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_double_fdiv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_double, align 8
  %6 = alloca %struct.vfp_double, align 8
  %7 = alloca %struct.vfp_double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !9
  %10 = tail call i64 @vfp_get_double(i32 noundef %1) #10
  %11 = lshr i64 %10, 48
  %12 = trunc i64 %11 to i16
  %13 = and i16 %12, -32768
  %14 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 1
  store i16 %13, ptr %14, align 2
  %15 = lshr i64 %10, 52
  %16 = trunc i64 %15 to i16
  %17 = and i16 %16, 2047
  store i16 %17, ptr %6, align 8
  %18 = shl i64 %10, 10
  %19 = and i64 %18, 4611686018427386880
  %20 = trunc i64 %15 to i11
  switch i11 %20, label %21 [
    i11 0, label %23
    i11 -1, label %23
  ]

21:                                               ; preds = %4
  %22 = or i64 %19, 4611686018427387904
  br label %23

23:                                               ; preds = %21, %4, %4
  %24 = phi i64 [ %22, %21 ], [ %19, %4 ], [ %19, %4 ]
  %25 = getelementptr inbounds %struct.vfp_double, ptr %6, i32 0, i32 2
  store i64 %24, ptr %25, align 8
  %26 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %27 = lshr i64 %26, 48
  %28 = trunc i64 %27 to i16
  %29 = and i16 %28, -32768
  %30 = getelementptr inbounds %struct.vfp_double, ptr %7, i32 0, i32 1
  store i16 %29, ptr %30, align 2
  %31 = lshr i64 %26, 52
  %32 = trunc i64 %31 to i16
  %33 = and i16 %32, 2047
  store i16 %33, ptr %7, align 8
  %34 = shl i64 %26, 10
  %35 = and i64 %34, 4611686018427386880
  %36 = trunc i64 %31 to i11
  switch i11 %36, label %37 [
    i11 0, label %39
    i11 -1, label %39
  ]

37:                                               ; preds = %23
  %38 = or i64 %35, 4611686018427387904
  br label %39

39:                                               ; preds = %37, %23, %23
  %40 = phi i64 [ %38, %37 ], [ %35, %23 ], [ %35, %23 ]
  %41 = getelementptr inbounds %struct.vfp_double, ptr %7, i32 0, i32 2
  store i64 %40, ptr %41, align 8
  %42 = xor i16 %13, %29
  %43 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 1
  store i16 %42, ptr %43, align 2
  %44 = trunc i64 %15 to i11
  switch i11 %44, label %54 [
    i11 -1, label %45
    i11 0, label %51
  ]

45:                                               ; preds = %39
  %46 = icmp eq i64 %24, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %45
  %48 = and i64 %24, 2305843009213693952
  %49 = icmp eq i64 %48, 0
  %50 = select i1 %49, i32 48, i32 16
  br label %54

51:                                               ; preds = %39
  %52 = icmp eq i64 %24, 0
  %53 = select i1 %52, i32 3, i32 5
  br label %54

54:                                               ; preds = %51, %47, %45, %39
  %55 = phi i32 [ 8, %45 ], [ %50, %47 ], [ 1, %39 ], [ %53, %51 ]
  switch i11 %36, label %65 [
    i11 -1, label %56
    i11 0, label %62
  ]

56:                                               ; preds = %54
  %57 = icmp eq i64 %40, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %56
  %59 = and i64 %40, 2305843009213693952
  %60 = icmp eq i64 %59, 0
  %61 = select i1 %60, i32 48, i32 16
  br label %65

62:                                               ; preds = %54
  %63 = icmp eq i64 %40, 0
  %64 = select i1 %63, i32 3, i32 5
  br label %65

65:                                               ; preds = %62, %58, %56, %54
  %66 = phi i32 [ 8, %56 ], [ %61, %58 ], [ 1, %54 ], [ %64, %62 ]
  %67 = and i32 %55, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %179

69:                                               ; preds = %65
  %70 = and i32 %66, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %234

72:                                               ; preds = %69
  %73 = and i32 %55, 10
  %74 = and i32 %73, %66
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %281

76:                                               ; preds = %72
  %77 = and i32 %55, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %278

79:                                               ; preds = %76
  %80 = and i32 %66, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %278

82:                                               ; preds = %79
  %83 = and i32 %66, 8
  %84 = icmp eq i32 %83, 0
  %85 = and i32 %55, 2
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %276

88:                                               ; preds = %82
  %89 = and i32 %55, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %88
  %92 = lshr i64 %24, 32
  %93 = trunc i64 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = trunc i64 %24 to i32
  %97 = icmp eq i32 %96, 0
  %98 = tail call i32 @llvm.ctlz.i32(i32 %96, i1 false) #10, !range !8
  %99 = add nuw nsw i32 %98, 31
  %100 = select i1 %97, i32 63, i32 %99
  br label %105

101:                                              ; preds = %91
  %102 = tail call i32 @llvm.ctlz.i32(i32 %93, i1 true) #10, !range !8
  %103 = add nsw i32 %102, -1
  %104 = icmp eq i32 %102, 1
  br i1 %104, label %112, label %105

105:                                              ; preds = %101, %95
  %106 = phi i32 [ %100, %95 ], [ %103, %101 ]
  %107 = trunc i32 %106 to i16
  %108 = add nuw nsw i16 %17, 1
  %109 = sub nsw i16 %108, %107
  store i16 %109, ptr %6, align 8
  %110 = zext i32 %106 to i64
  %111 = shl i64 %24, %110
  br label %112

112:                                              ; preds = %105, %101, %88
  %113 = phi i64 [ %111, %105 ], [ %24, %101 ], [ %24, %88 ]
  %114 = phi i16 [ %109, %105 ], [ %17, %101 ], [ %17, %88 ]
  %115 = and i32 %66, 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %138, label %117

117:                                              ; preds = %112
  %118 = lshr i64 %40, 32
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = trunc i64 %40 to i32
  %123 = icmp eq i32 %122, 0
  %124 = tail call i32 @llvm.ctlz.i32(i32 %122, i1 false) #10, !range !8
  %125 = add nuw nsw i32 %124, 31
  %126 = select i1 %123, i32 63, i32 %125
  br label %131

127:                                              ; preds = %117
  %128 = tail call i32 @llvm.ctlz.i32(i32 %119, i1 true) #10, !range !8
  %129 = add nsw i32 %128, -1
  %130 = icmp eq i32 %128, 1
  br i1 %130, label %138, label %131

131:                                              ; preds = %127, %121
  %132 = phi i32 [ %126, %121 ], [ %129, %127 ]
  %133 = trunc i32 %132 to i16
  %134 = add nuw nsw i16 %33, 1
  %135 = sub nsw i16 %134, %133
  store i16 %135, ptr %7, align 8
  %136 = zext i32 %132 to i64
  %137 = shl i64 %40, %136
  br label %138

138:                                              ; preds = %131, %127, %112
  %139 = phi i64 [ %137, %131 ], [ %40, %127 ], [ %40, %112 ]
  %140 = phi i16 [ %135, %131 ], [ %33, %127 ], [ %33, %112 ]
  %141 = sub nsw i16 %114, %140
  %142 = add nsw i16 %141, 1022
  store i16 %142, ptr %5, align 8
  %143 = shl i64 %139, 1
  store i64 %143, ptr %41, align 8
  %144 = shl i64 %113, 1
  %145 = icmp ugt i64 %143, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %138
  %147 = lshr i64 %113, 1
  store i64 %147, ptr %25, align 8
  %148 = add nsw i16 %141, 1023
  store i16 %148, ptr %5, align 8
  br label %149

149:                                              ; preds = %146, %138
  %150 = phi i64 [ %147, %146 ], [ %113, %138 ]
  %151 = tail call fastcc i64 @vfp_estimate_div128to64(i64 noundef %150, i64 noundef %143)
  %152 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 2
  store i64 %151, ptr %152, align 8
  %153 = and i64 %151, 511
  %154 = icmp ult i64 %153, 3
  br i1 %154, label %155, label %177

155:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  store i64 0, ptr %9, align 8, !annotation !9
  call fastcc void @mul64to128(ptr noundef nonnull %8, ptr noundef nonnull %9, i64 noundef %143, i64 noundef %151)
  %156 = load i64, ptr %8, align 8
  %157 = load i64, ptr %9, align 8
  %158 = tail call { i64, i64 } asm "subs\09${0:Q}, ${2:Q}, ${4:Q}\0A\09sbcs\09${0:R}, ${2:R}, ${4:R}\0A\09sbcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09sbc\09${1:R}, ${3:R}, ${5:R}\0A\09", "=r,=r,0,1,r,r,~{cc}"(i64 0, i64 %150, i64 %157, i64 %156) #11, !srcloc !12
  %159 = extractvalue { i64, i64 } %158, 1
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %161, %155
  %162 = phi i64 [ %168, %161 ], [ %159, %155 ]
  %163 = phi { i64, i64 } [ %167, %161 ], [ %158, %155 ]
  %164 = phi i64 [ %166, %161 ], [ %151, %155 ]
  %165 = extractvalue { i64, i64 } %163, 0
  %166 = add i64 %164, -1
  %167 = tail call { i64, i64 } asm "adds\09${0:Q}, ${2:Q}, ${4:Q}\0A\09adcs\09${0:R}, ${2:R}, ${4:R}\0A\09adcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09adc\09${1:R}, ${3:R}, ${5:R}", "=r,=r,0,1,r,r,~{cc}"(i64 %165, i64 %162, i64 %143, i64 0) #11, !srcloc !13
  %168 = extractvalue { i64, i64 } %167, 1
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %161, label %170

170:                                              ; preds = %161, %155
  %171 = phi i64 [ %151, %155 ], [ %166, %161 ]
  %172 = phi { i64, i64 } [ %158, %155 ], [ %167, %161 ]
  %173 = extractvalue { i64, i64 } %172, 0
  %174 = icmp ne i64 %173, 0
  %175 = zext i1 %174 to i64
  %176 = or i64 %171, %175
  store i64 %176, ptr %152, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %177

177:                                              ; preds = %170, %149
  %178 = call i32 @vfp_double_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef 0, ptr undef)
  br label %282

179:                                              ; preds = %65
  %180 = trunc i64 %15 to i11
  switch i11 %180, label %190 [
    i11 -1, label %181
    i11 0, label %187
  ]

181:                                              ; preds = %179
  %182 = icmp eq i64 %24, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %181
  %184 = and i64 %24, 2305843009213693952
  %185 = icmp eq i64 %184, 0
  %186 = select i1 %185, i32 48, i32 16
  br label %190

187:                                              ; preds = %179
  %188 = icmp eq i64 %24, 0
  %189 = select i1 %188, i32 3, i32 5
  br label %190

190:                                              ; preds = %187, %183, %181, %179
  %191 = phi i32 [ 8, %181 ], [ %186, %183 ], [ 1, %179 ], [ %189, %187 ]
  switch i11 %36, label %201 [
    i11 -1, label %192
    i11 0, label %198
  ]

192:                                              ; preds = %190
  %193 = icmp eq i64 %40, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %192
  %195 = and i64 %40, 2305843009213693952
  %196 = icmp eq i64 %195, 0
  %197 = select i1 %196, i32 48, i32 16
  br label %201

198:                                              ; preds = %190
  %199 = icmp eq i64 %40, 0
  %200 = select i1 %199, i32 3, i32 5
  br label %201

201:                                              ; preds = %198, %194, %192, %190
  %202 = phi i32 [ 8, %192 ], [ %197, %194 ], [ 1, %190 ], [ %200, %198 ]
  %203 = and i32 %3, 33554432
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = icmp eq i32 %191, 48
  %207 = icmp ne i32 %202, 48
  %208 = icmp eq i32 %191, 16
  %209 = select i1 %207, i1 %208, i1 false
  %210 = select i1 %206, i1 true, i1 %209
  %211 = select i1 %210, ptr %6, ptr %7
  %212 = select i1 %210, ptr %25, ptr %41
  %213 = load i64, ptr %212, align 8
  %214 = or i64 %213, 2305843009213693952
  store i64 %214, ptr %212, align 8
  br label %215

215:                                              ; preds = %205, %201
  %216 = phi ptr [ %211, %205 ], [ @vfp_double_default_qnan, %201 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %216, i32 16, i1 false) #10
  %217 = icmp eq i32 %191, 48
  %218 = icmp eq i32 %202, 48
  %219 = select i1 %217, i1 true, i1 %218
  %220 = select i1 %219, i32 1, i32 256
  br label %221

221:                                              ; preds = %278, %276, %270, %215
  %222 = phi i32 [ %220, %215 ], [ %275, %270 ], [ %279, %278 ], [ 0, %276 ]
  %223 = load i16, ptr %43, align 2
  %224 = zext i16 %223 to i64
  %225 = shl nuw i64 %224, 48
  %226 = load i16, ptr %5, align 8
  %227 = zext i16 %226 to i64
  %228 = shl i64 %227, 52
  %229 = add i64 %228, %225
  %230 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 2
  %231 = load i64, ptr %230, align 8
  %232 = lshr i64 %231, 10
  %233 = add i64 %229, %232
  tail call void @vfp_put_double(i64 noundef %233, i32 noundef %0) #10
  br label %282

234:                                              ; preds = %69
  switch i11 %36, label %244 [
    i11 -1, label %235
    i11 0, label %241
  ]

235:                                              ; preds = %234
  %236 = icmp eq i64 %40, 0
  br i1 %236, label %244, label %237

237:                                              ; preds = %235
  %238 = and i64 %40, 2305843009213693952
  %239 = icmp eq i64 %238, 0
  %240 = select i1 %239, i32 48, i32 16
  br label %244

241:                                              ; preds = %234
  %242 = icmp eq i64 %40, 0
  %243 = select i1 %242, i32 3, i32 5
  br label %244

244:                                              ; preds = %241, %237, %235, %234
  %245 = phi i32 [ 8, %235 ], [ %240, %237 ], [ 1, %234 ], [ %243, %241 ]
  %246 = trunc i64 %15 to i11
  switch i11 %246, label %256 [
    i11 -1, label %247
    i11 0, label %253
  ]

247:                                              ; preds = %244
  %248 = icmp eq i64 %24, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %247
  %250 = and i64 %24, 2305843009213693952
  %251 = icmp eq i64 %250, 0
  %252 = select i1 %251, i32 48, i32 16
  br label %256

253:                                              ; preds = %244
  %254 = icmp eq i64 %24, 0
  %255 = select i1 %254, i32 3, i32 5
  br label %256

256:                                              ; preds = %253, %249, %247, %244
  %257 = phi i32 [ 8, %247 ], [ %252, %249 ], [ 1, %244 ], [ %255, %253 ]
  %258 = and i32 %3, 33554432
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  %261 = icmp eq i32 %245, 48
  %262 = icmp ne i32 %257, 48
  %263 = icmp eq i32 %245, 16
  %264 = select i1 %262, i1 %263, i1 false
  %265 = select i1 %261, i1 true, i1 %264
  %266 = select i1 %265, ptr %7, ptr %6
  %267 = select i1 %265, ptr %41, ptr %25
  %268 = load i64, ptr %267, align 8
  %269 = or i64 %268, 2305843009213693952
  store i64 %269, ptr %267, align 8
  br label %270

270:                                              ; preds = %260, %256
  %271 = phi ptr [ %266, %260 ], [ @vfp_double_default_qnan, %256 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %271, i32 16, i1 false) #10
  %272 = icmp eq i32 %245, 48
  %273 = icmp eq i32 %257, 48
  %274 = select i1 %272, i1 true, i1 %273
  %275 = select i1 %274, i32 1, i32 256
  br label %221

276:                                              ; preds = %82
  store i16 0, ptr %5, align 8
  %277 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 2
  store i64 0, ptr %277, align 8
  br label %221

278:                                              ; preds = %79, %76
  %279 = phi i32 [ 0, %76 ], [ 2, %79 ]
  store i16 2047, ptr %5, align 8
  %280 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 2
  store i64 0, ptr %280, align 8
  br label %221

281:                                              ; preds = %72
  tail call void @vfp_put_double(i64 noundef 9221120237041090560, i32 noundef %0) #10
  br label %282

282:                                              ; preds = %281, %221, %177
  %283 = phi i32 [ %222, %221 ], [ 1, %281 ], [ %178, %177 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %283
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vfp_double_multiply_accumulate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) unnamed_addr #0 {
  %7 = alloca %struct.vfp_double, align 8
  %8 = alloca %struct.vfp_double, align 8
  %9 = alloca %struct.vfp_double, align 8
  %10 = alloca %struct.vfp_double, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  store i64 0, ptr %9, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  store i64 0, ptr %10, align 8, !annotation !9
  %11 = tail call i64 @vfp_get_double(i32 noundef %1) #10
  %12 = lshr i64 %11, 48
  %13 = trunc i64 %12 to i16
  %14 = and i16 %13, -32768
  %15 = getelementptr inbounds %struct.vfp_double, ptr %9, i32 0, i32 1
  store i16 %14, ptr %15, align 2
  %16 = lshr i64 %11, 52
  %17 = trunc i64 %16 to i16
  %18 = and i16 %17, 2047
  store i16 %18, ptr %9, align 8
  %19 = shl i64 %11, 10
  %20 = and i64 %19, 4611686018427386880
  %21 = trunc i64 %16 to i11
  switch i11 %21, label %22 [
    i11 0, label %24
    i11 -1, label %24
  ]

22:                                               ; preds = %6
  %23 = or i64 %20, 4611686018427387904
  br label %24

24:                                               ; preds = %22, %6, %6
  %25 = phi i64 [ %23, %22 ], [ %20, %6 ], [ %20, %6 ]
  %26 = getelementptr inbounds %struct.vfp_double, ptr %9, i32 0, i32 2
  store i64 %25, ptr %26, align 8
  %27 = icmp ne i16 %18, 0
  %28 = icmp eq i64 %25, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %24
  %31 = lshr i64 %25, 32
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = trunc i64 %25 to i32
  %36 = icmp eq i32 %35, 0
  %37 = tail call i32 @llvm.ctlz.i32(i32 %35, i1 false) #10, !range !8
  %38 = add nuw nsw i32 %37, 31
  %39 = select i1 %36, i32 63, i32 %38
  br label %44

40:                                               ; preds = %30
  %41 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 true) #10, !range !8
  %42 = add nsw i32 %41, -1
  %43 = icmp eq i32 %41, 1
  br i1 %43, label %50, label %44

44:                                               ; preds = %40, %34
  %45 = phi i32 [ %39, %34 ], [ %42, %40 ]
  %46 = trunc i32 %45 to i16
  %47 = sub nsw i16 1, %46
  store i16 %47, ptr %9, align 8
  %48 = zext i32 %45 to i64
  %49 = shl i64 %25, %48
  store i64 %49, ptr %26, align 8
  br label %50

50:                                               ; preds = %44, %40, %24
  %51 = tail call i64 @vfp_get_double(i32 noundef %2) #10
  %52 = lshr i64 %51, 48
  %53 = trunc i64 %52 to i16
  %54 = and i16 %53, -32768
  %55 = getelementptr inbounds %struct.vfp_double, ptr %10, i32 0, i32 1
  store i16 %54, ptr %55, align 2
  %56 = lshr i64 %51, 52
  %57 = trunc i64 %56 to i16
  %58 = and i16 %57, 2047
  store i16 %58, ptr %10, align 8
  %59 = shl i64 %51, 10
  %60 = and i64 %59, 4611686018427386880
  %61 = trunc i64 %56 to i11
  switch i11 %61, label %62 [
    i11 0, label %64
    i11 -1, label %64
  ]

62:                                               ; preds = %50
  %63 = or i64 %60, 4611686018427387904
  br label %64

64:                                               ; preds = %62, %50, %50
  %65 = phi i64 [ %63, %62 ], [ %60, %50 ], [ %60, %50 ]
  %66 = getelementptr inbounds %struct.vfp_double, ptr %10, i32 0, i32 2
  store i64 %65, ptr %66, align 8
  %67 = icmp ne i16 %58, 0
  %68 = icmp eq i64 %65, 0
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %90, label %70

70:                                               ; preds = %64
  %71 = lshr i64 %65, 32
  %72 = trunc i64 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = trunc i64 %65 to i32
  %76 = icmp eq i32 %75, 0
  %77 = tail call i32 @llvm.ctlz.i32(i32 %75, i1 false) #10, !range !8
  %78 = add nuw nsw i32 %77, 31
  %79 = select i1 %76, i32 63, i32 %78
  br label %84

80:                                               ; preds = %70
  %81 = tail call i32 @llvm.ctlz.i32(i32 %72, i1 true) #10, !range !8
  %82 = add nsw i32 %81, -1
  %83 = icmp eq i32 %81, 1
  br i1 %83, label %90, label %84

84:                                               ; preds = %80, %74
  %85 = phi i32 [ %79, %74 ], [ %82, %80 ]
  %86 = trunc i32 %85 to i16
  %87 = sub nsw i16 1, %86
  store i16 %87, ptr %10, align 8
  %88 = zext i32 %85 to i64
  %89 = shl i64 %65, %88
  store i64 %89, ptr %66, align 8
  br label %90

90:                                               ; preds = %84, %80, %64
  %91 = call fastcc i32 @vfp_double_multiply(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %3)
  %92 = and i32 %4, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.vfp_double, ptr %8, i32 0, i32 1
  %96 = load i16, ptr %95, align 2
  %97 = xor i16 %96, -32768
  store i16 %97, ptr %95, align 2
  br label %98

98:                                               ; preds = %94, %90
  %99 = call i64 @vfp_get_double(i32 noundef %0) #10
  %100 = lshr i64 %99, 48
  %101 = trunc i64 %100 to i16
  %102 = and i16 %101, -32768
  store i16 %102, ptr %15, align 2
  %103 = lshr i64 %99, 52
  %104 = trunc i64 %103 to i16
  %105 = and i16 %104, 2047
  store i16 %105, ptr %9, align 8
  %106 = shl i64 %99, 10
  %107 = and i64 %106, 4611686018427386880
  %108 = trunc i64 %103 to i11
  switch i11 %108, label %109 [
    i11 0, label %111
    i11 -1, label %111
  ]

109:                                              ; preds = %98
  %110 = or i64 %107, 4611686018427387904
  br label %111

111:                                              ; preds = %109, %98, %98
  %112 = phi i64 [ %110, %109 ], [ %107, %98 ], [ %107, %98 ]
  store i64 %112, ptr %26, align 8
  %113 = icmp ne i16 %105, 0
  %114 = icmp eq i64 %112, 0
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %136, label %116

116:                                              ; preds = %111
  %117 = lshr i64 %112, 32
  %118 = trunc i64 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = trunc i64 %112 to i32
  %122 = icmp eq i32 %121, 0
  %123 = call i32 @llvm.ctlz.i32(i32 %121, i1 false) #10, !range !8
  %124 = add nuw nsw i32 %123, 31
  %125 = select i1 %122, i32 63, i32 %124
  br label %130

126:                                              ; preds = %116
  %127 = call i32 @llvm.ctlz.i32(i32 %118, i1 true) #10, !range !8
  %128 = add nsw i32 %127, -1
  %129 = icmp eq i32 %127, 1
  br i1 %129, label %136, label %130

130:                                              ; preds = %126, %120
  %131 = phi i32 [ %125, %120 ], [ %128, %126 ]
  %132 = trunc i32 %131 to i16
  %133 = sub nsw i16 1, %132
  store i16 %133, ptr %9, align 8
  %134 = zext i32 %131 to i64
  %135 = shl i64 %112, %134
  store i64 %135, ptr %26, align 8
  br label %136

136:                                              ; preds = %130, %126, %111
  %137 = and i32 %4, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = xor i16 %102, -32768
  store i16 %140, ptr %15, align 2
  br label %141

141:                                              ; preds = %139, %136
  %142 = call fastcc i32 @vfp_double_add(ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef %3)
  %143 = or i32 %142, %91
  %144 = call i32 @vfp_double_normaliseround(i32 noundef %0, ptr noundef nonnull %7, i32 noundef %3, i32 noundef %143, ptr undef)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %144
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @vfp_double_multiply(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #8 {
  %5 = load i16, ptr %1, align 8
  %6 = load i16, ptr %2, align 8
  %7 = icmp slt i16 %5, %6
  %8 = select i1 %7, ptr %1, ptr %2
  %9 = select i1 %7, ptr %2, ptr %1
  %10 = getelementptr inbounds %struct.vfp_double, ptr %9, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr inbounds %struct.vfp_double, ptr %8, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = xor i16 %13, %11
  %15 = getelementptr inbounds %struct.vfp_double, ptr %0, i32 0, i32 1
  store i16 %14, ptr %15, align 2
  %16 = load i16, ptr %9, align 8
  %17 = icmp eq i16 %16, 2047
  br i1 %17, label %18, label %79

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.vfp_double, ptr %9, i32 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i16, ptr %8, align 8
  %24 = icmp eq i16 %23, 2047
  %25 = getelementptr inbounds %struct.vfp_double, ptr %8, i32 0, i32 2
  %26 = load i64, ptr %25, align 8
  br i1 %24, label %27, label %71

27:                                               ; preds = %22
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %71, label %33

29:                                               ; preds = %18
  %30 = and i64 %20, 2305843009213693952
  %31 = icmp eq i64 %30, 0
  %32 = select i1 %31, i32 48, i32 16
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i32 [ %32, %29 ], [ 8, %27 ]
  %35 = icmp eq ptr %8, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = load i16, ptr %8, align 8
  switch i16 %37, label %51 [
    i16 2047, label %38
    i16 0, label %46
  ]

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.vfp_double, ptr %8, i32 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = and i64 %40, 2305843009213693952
  %44 = icmp eq i64 %43, 0
  %45 = select i1 %44, i32 48, i32 16
  br label %51

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.vfp_double, ptr %8, i32 0, i32 2
  %48 = load i64, ptr %47, align 8
  %49 = icmp eq i64 %48, 0
  %50 = select i1 %49, i32 3, i32 5
  br label %51

51:                                               ; preds = %46, %42, %38, %36, %33
  %52 = phi i32 [ 0, %33 ], [ 8, %38 ], [ %45, %42 ], [ 1, %36 ], [ %50, %46 ]
  %53 = and i32 %3, 33554432
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = icmp eq i32 %34, 48
  %57 = icmp ne i32 %52, 48
  %58 = icmp eq i32 %34, 16
  %59 = select i1 %57, i1 %58, i1 false
  %60 = select i1 %56, i1 true, i1 %59
  %61 = select i1 %60, ptr %9, ptr %8
  %62 = getelementptr inbounds %struct.vfp_double, ptr %61, i32 0, i32 2
  %63 = load i64, ptr %62, align 8
  %64 = or i64 %63, 2305843009213693952
  store i64 %64, ptr %62, align 8
  br label %65

65:                                               ; preds = %55, %51
  %66 = phi ptr [ %61, %55 ], [ @vfp_double_default_qnan, %51 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %66, i32 16, i1 false) #10
  %67 = icmp eq i32 %34, 48
  %68 = icmp eq i32 %52, 48
  %69 = select i1 %67, i1 true, i1 %68
  %70 = select i1 %69, i32 1, i32 256
  br label %117

71:                                               ; preds = %27, %22
  %72 = phi i64 [ 0, %27 ], [ %26, %22 ]
  %73 = sext i16 %23 to i64
  %74 = or i64 %72, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @vfp_double_default_qnan, i32 16, i1 false)
  br label %117

77:                                               ; preds = %71
  store i16 2047, ptr %0, align 8
  %78 = getelementptr inbounds %struct.vfp_double, ptr %0, i32 0, i32 2
  store i64 0, ptr %78, align 8
  br label %117

79:                                               ; preds = %4
  %80 = load i16, ptr %8, align 8
  %81 = sext i16 %80 to i64
  %82 = getelementptr inbounds %struct.vfp_double, ptr %8, i32 0, i32 2
  %83 = load i64, ptr %82, align 8
  %84 = or i64 %83, %81
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  store i16 0, ptr %0, align 8
  %87 = getelementptr inbounds %struct.vfp_double, ptr %0, i32 0, i32 2
  store i64 0, ptr %87, align 8
  br label %117

88:                                               ; preds = %79
  %89 = add i16 %16, -1021
  %90 = add i16 %89, %80
  store i16 %90, ptr %0, align 8
  %91 = getelementptr inbounds %struct.vfp_double, ptr %9, i32 0, i32 2
  %92 = load i64, ptr %91, align 8
  %93 = load i64, ptr %82, align 8
  %94 = and i64 %92, 4294967295
  %95 = and i64 %93, 4294967295
  %96 = mul nuw i64 %95, %94
  %97 = lshr i64 %92, 32
  %98 = mul nuw i64 %95, %97
  %99 = lshr i64 %93, 32
  %100 = mul nuw i64 %99, %94
  %101 = add i64 %98, %100
  %102 = mul nuw i64 %99, %97
  %103 = icmp ult i64 %101, %100
  %104 = select i1 %103, i64 4294967296, i64 0
  %105 = lshr i64 %101, 32
  %106 = shl i64 %101, 32
  %107 = add i64 %106, %96
  %108 = icmp ult i64 %107, %106
  %109 = zext i1 %108 to i64
  %110 = add nuw i64 %105, %102
  %111 = add i64 %110, %104
  %112 = add i64 %111, %109
  %113 = icmp ne i64 %107, 0
  %114 = zext i1 %113 to i64
  %115 = or i64 %112, %114
  %116 = getelementptr inbounds %struct.vfp_double, ptr %0, i32 0, i32 2
  store i64 %115, ptr %116, align 8
  br label %117

117:                                              ; preds = %88, %86, %77, %76, %65
  %118 = phi i32 [ %70, %65 ], [ 1, %76 ], [ 0, %77 ], [ 0, %86 ], [ 0, %88 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vfp_double_add(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vfp_double, ptr %1, i32 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = icmp sgt i64 %6, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vfp_double, ptr %2, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = icmp sgt i64 %10, -1
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.vfp_double_add) #12
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i16, ptr %1, align 8
  %16 = load i16, ptr %2, align 8
  %17 = icmp slt i16 %15, %16
  %18 = select i1 %17, ptr %1, ptr %2
  %19 = select i1 %17, ptr %2, ptr %1
  %20 = load i16, ptr %19, align 8
  %21 = icmp eq i16 %20, 2047
  br i1 %21, label %22, label %102

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.vfp_double, ptr %19, i32 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = select i1 %25, i32 8, i32 0
  %27 = load i16, ptr %18, align 8
  switch i16 %27, label %41 [
    i16 2047, label %28
    i16 0, label %36
  ]

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.vfp_double, ptr %18, i32 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = and i64 %30, 2305843009213693952
  %34 = icmp eq i64 %33, 0
  %35 = select i1 %34, i32 48, i32 16
  br label %41

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.vfp_double, ptr %18, i32 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %39, i32 3, i32 5
  br label %41

41:                                               ; preds = %36, %32, %28, %22
  %42 = phi i32 [ 8, %28 ], [ %35, %32 ], [ 1, %22 ], [ %40, %36 ]
  %43 = and i32 %42, %26
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.vfp_double, ptr %19, i32 0, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = getelementptr inbounds %struct.vfp_double, ptr %18, i32 0, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %47, %49
  %51 = select i1 %50, ptr %19, ptr @vfp_double_default_qnan
  %52 = xor i1 %50, true
  %53 = zext i1 %52 to i32
  br label %99

54:                                               ; preds = %41
  %55 = xor i1 %25, true
  %56 = and i32 %42, 1
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %54
  %60 = and i64 %24, 2305843009213693952
  %61 = icmp eq i64 %60, 0
  %62 = select i1 %61, i32 48, i32 16
  %63 = select i1 %25, i32 8, i32 %62
  %64 = icmp eq ptr %18, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %59
  switch i16 %27, label %79 [
    i16 2047, label %66
    i16 0, label %74
  ]

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.vfp_double, ptr %18, i32 0, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = and i64 %68, 2305843009213693952
  %72 = icmp eq i64 %71, 0
  %73 = select i1 %72, i32 48, i32 16
  br label %79

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.vfp_double, ptr %18, i32 0, i32 2
  %76 = load i64, ptr %75, align 8
  %77 = icmp eq i64 %76, 0
  %78 = select i1 %77, i32 3, i32 5
  br label %79

79:                                               ; preds = %74, %70, %66, %65, %59
  %80 = phi i32 [ 0, %59 ], [ 8, %66 ], [ %73, %70 ], [ 1, %65 ], [ %78, %74 ]
  %81 = and i32 %3, 33554432
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = icmp eq i32 %63, 48
  %85 = icmp ne i32 %80, 48
  %86 = icmp eq i32 %63, 16
  %87 = select i1 %85, i1 %86, i1 false
  %88 = select i1 %84, i1 true, i1 %87
  %89 = select i1 %88, ptr %19, ptr %18
  %90 = getelementptr inbounds %struct.vfp_double, ptr %89, i32 0, i32 2
  %91 = load i64, ptr %90, align 8
  %92 = or i64 %91, 2305843009213693952
  store i64 %92, ptr %90, align 8
  br label %93

93:                                               ; preds = %83, %79
  %94 = phi ptr [ %89, %83 ], [ @vfp_double_default_qnan, %79 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %94, i32 16, i1 false) #10
  %95 = icmp eq i32 %63, 48
  %96 = icmp eq i32 %80, 48
  %97 = select i1 %95, i1 true, i1 %96
  %98 = select i1 %97, i32 1, i32 256
  br label %154

99:                                               ; preds = %54, %45
  %100 = phi ptr [ %51, %45 ], [ %19, %54 ]
  %101 = phi i32 [ %53, %45 ], [ 0, %54 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %100, i32 16, i1 false) #10
  br label %154

102:                                              ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %19, i32 16, i1 false)
  %103 = load i16, ptr %19, align 8
  %104 = sext i16 %103 to i32
  %105 = load i16, ptr %18, align 8
  %106 = sext i16 %105 to i32
  %107 = sub nsw i32 %104, %106
  %108 = getelementptr inbounds %struct.vfp_double, ptr %18, i32 0, i32 2
  %109 = load i64, ptr %108, align 8
  %110 = icmp eq i16 %103, %105
  br i1 %110, label %125, label %111

111:                                              ; preds = %102
  %112 = icmp ult i32 %107, 64
  br i1 %112, label %113, label %122

113:                                              ; preds = %111
  %114 = zext i32 %107 to i64
  %115 = lshr i64 %109, %114
  %116 = sub nuw nsw i32 64, %107
  %117 = zext i32 %116 to i64
  %118 = shl i64 %109, %117
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = or i64 %115, %120
  br label %125

122:                                              ; preds = %111
  %123 = icmp ne i64 %109, 0
  %124 = zext i1 %123 to i64
  br label %125

125:                                              ; preds = %122, %113, %102
  %126 = phi i64 [ %121, %113 ], [ %124, %122 ], [ %109, %102 ]
  %127 = getelementptr inbounds %struct.vfp_double, ptr %19, i32 0, i32 1
  %128 = load i16, ptr %127, align 2
  %129 = getelementptr inbounds %struct.vfp_double, ptr %18, i32 0, i32 1
  %130 = load i16, ptr %129, align 2
  %131 = icmp eq i16 %128, %130
  %132 = getelementptr inbounds %struct.vfp_double, ptr %19, i32 0, i32 2
  %133 = load i64, ptr %132, align 8
  br i1 %131, label %149, label %134

134:                                              ; preds = %125
  %135 = sub i64 %133, %126
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.vfp_double, ptr %0, i32 0, i32 1
  %139 = load i16, ptr %138, align 2
  %140 = xor i16 %139, -32768
  store i16 %140, ptr %138, align 2
  %141 = sub i64 0, %135
  br label %151

142:                                              ; preds = %134
  %143 = icmp eq i64 %135, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %142
  %145 = and i32 %3, 12582912
  %146 = icmp eq i32 %145, 8388608
  %147 = select i1 %146, i16 -32768, i16 0
  %148 = getelementptr inbounds %struct.vfp_double, ptr %0, i32 0, i32 1
  store i16 %147, ptr %148, align 2
  br label %151

149:                                              ; preds = %125
  %150 = add i64 %133, %126
  br label %151

151:                                              ; preds = %149, %144, %142, %137
  %152 = phi i64 [ %141, %137 ], [ 0, %144 ], [ %135, %142 ], [ %150, %149 ]
  %153 = getelementptr inbounds %struct.vfp_double, ptr %0, i32 0, i32 2
  store i64 %152, ptr %153, align 8
  br label %154

154:                                              ; preds = %151, %99, %93
  %155 = phi i32 [ 0, %151 ], [ %101, %99 ], [ %98, %93 ]
  ret i32 %155
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148352970, i64 2148353250, i64 2148353584, i64 2148353918}
!12 = !{i64 948614, i64 948635, i64 948662, i64 948689, i64 948715}
!13 = !{i64 948308, i64 948329, i64 948356, i64 948383}
!14 = !{i64 948089, i64 948126, i64 948147}
!15 = !{i32 0, i32 257}
