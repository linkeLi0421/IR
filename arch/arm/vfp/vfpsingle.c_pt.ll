; ModuleID = '/llk/IR/arch/arm/vfp/vfpsingle.c_pt.bc'
source_filename = "../arch/arm/vfp/vfpsingle.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.op = type { ptr, i32 }
%struct.vfp_single = type { i16, i16, i32 }
%struct.vfp_double = type { i16, i16, i64 }

@.str.2 = private unnamed_addr constant [43 x i8] c"\014VFP: estimate_sqrt: invalid significand\0A\00", align 1
@sqrt_oddadjust = internal unnamed_addr constant [16 x i16] [i16 4, i16 34, i16 93, i16 177, i16 285, i16 415, i16 566, i16 736, i16 924, i16 1128, i16 1349, i16 1585, i16 1835, i16 2098, i16 2374, i16 2663], align 2
@sqrt_evenadjust = internal unnamed_addr constant [16 x i16] [i16 2605, i16 2223, i16 1882, i16 1577, i16 1306, i16 1065, i16 854, i16 670, i16 512, i16 377, i16 265, i16 175, i16 104, i16 52, i16 18, i16 2], align 2
@fops_ext = internal unnamed_addr constant [32 x %struct.op] [%struct.op { ptr @vfp_single_fcpy, i32 0 }, %struct.op { ptr @vfp_single_fabs, i32 0 }, %struct.op { ptr @vfp_single_fneg, i32 0 }, %struct.op { ptr @vfp_single_fsqrt, i32 0 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_single_fcmp, i32 1 }, %struct.op { ptr @vfp_single_fcmpe, i32 1 }, %struct.op { ptr @vfp_single_fcmpz, i32 1 }, %struct.op { ptr @vfp_single_fcmpez, i32 1 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_single_fcvtd, i32 3 }, %struct.op { ptr @vfp_single_fuito, i32 1 }, %struct.op { ptr @vfp_single_fsito, i32 1 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_single_ftoui, i32 1 }, %struct.op { ptr @vfp_single_ftouiz, i32 1 }, %struct.op { ptr @vfp_single_ftosi, i32 1 }, %struct.op { ptr @vfp_single_ftosiz, i32 1 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer], align 4
@fops = internal unnamed_addr constant [16 x %struct.op] [%struct.op { ptr @vfp_single_fmac, i32 0 }, %struct.op { ptr @vfp_single_fmsc, i32 0 }, %struct.op { ptr @vfp_single_fmul, i32 0 }, %struct.op { ptr @vfp_single_fadd, i32 0 }, %struct.op { ptr @vfp_single_fnmac, i32 0 }, %struct.op { ptr @vfp_single_fnmsc, i32 0 }, %struct.op { ptr @vfp_single_fnmul, i32 0 }, %struct.op { ptr @vfp_single_fsub, i32 0 }, %struct.op { ptr @vfp_single_fdiv, i32 0 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer], align 4
@vfp_single_default_qnan = internal unnamed_addr constant %struct.vfp_single { i16 255, i16 0, i32 536870912 }, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"fcvtd\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"\016VFP: bad FP values in %s\0A\00", align 1
@__func__.vfp_single_add = private unnamed_addr constant [15 x i8] c"vfp_single_add\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__vfp_single_normaliseround(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %1, align 4
  %6 = icmp eq i16 %5, 255
  %7 = getelementptr inbounds %struct.vfp_single, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %6, label %10, label %13

10:                                               ; preds = %4
  %11 = icmp ne i32 %3, 0
  %12 = or i1 %11, %9
  br i1 %12, label %92, label %15

13:                                               ; preds = %4
  br i1 %9, label %14, label %15

14:                                               ; preds = %13
  store i16 0, ptr %1, align 4
  br label %92

15:                                               ; preds = %13, %10
  %16 = getelementptr inbounds %struct.vfp_single, ptr %1, i32 0, i32 2
  %17 = sext i16 %5 to i32
  %18 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 true) #5, !range !8
  %19 = sub nsw i32 %17, %18
  %20 = shl i32 %8, %18
  %21 = icmp slt i32 %19, 0
  %22 = lshr i32 %19, 31
  br i1 %21, label %23, label %41

23:                                               ; preds = %15
  %24 = sub nsw i32 0, %19
  %25 = icmp ult i32 %24, 32
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = lshr i32 %20, %24
  %28 = add nsw i32 %19, 32
  %29 = shl i32 %20, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = or i32 %27, %31
  br label %36

33:                                               ; preds = %23
  %34 = icmp ne i32 %20, 0
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi i32 [ %32, %26 ], [ %35, %33 ]
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 0, i32 %22
  br label %41

41:                                               ; preds = %36, %15
  %42 = phi i32 [ %19, %15 ], [ 0, %36 ]
  %43 = phi i32 [ %22, %15 ], [ %40, %36 ]
  %44 = phi i32 [ %20, %15 ], [ %37, %36 ]
  %45 = and i32 %2, 12582912
  switch i32 %45, label %50 [
    i32 0, label %46
    i32 12582912, label %57
  ]

46:                                               ; preds = %41
  %47 = and i32 %44, 256
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 127, i32 128
  br label %57

50:                                               ; preds = %41
  %51 = icmp eq i32 %45, 4194304
  %52 = getelementptr inbounds %struct.vfp_single, ptr %1, i32 0, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = icmp ne i16 %53, 0
  %55 = xor i1 %51, %54
  %56 = select i1 %55, i32 255, i32 0
  br label %57

57:                                               ; preds = %50, %46, %41
  %58 = phi i32 [ %49, %46 ], [ 0, %41 ], [ %56, %50 ]
  %59 = xor i32 %44, -1
  %60 = icmp ugt i32 %58, %59
  %61 = lshr i32 %44, 1
  %62 = and i32 %44, 1
  %63 = or i32 %61, %62
  %64 = zext i1 %60 to i32
  %65 = lshr i32 %58, %64
  %66 = add nuw nsw i32 %42, %64
  %67 = select i1 %60, i32 %63, i32 %44
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 0
  %70 = or i32 %3, 16
  %71 = select i1 %69, i32 %3, i32 %70
  %72 = icmp ugt i32 %66, 253
  br i1 %72, label %73, label %78

73:                                               ; preds = %57
  %74 = or i32 %71, 20
  %75 = icmp eq i32 %65, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i16 253, ptr %1, align 4
  store i32 2147483647, ptr %16, align 4
  br label %92

77:                                               ; preds = %73
  store i16 255, ptr %1, align 4
  store i32 0, ptr %16, align 4
  br label %92

78:                                               ; preds = %57
  %79 = add i32 %65, %67
  %80 = icmp ult i32 %79, 256
  %81 = select i1 %80, i32 0, i32 %66
  %82 = icmp ne i32 %81, 0
  %83 = icmp ugt i32 %79, -2147483648
  %84 = select i1 %82, i1 true, i1 %83
  %85 = icmp eq i32 %43, 0
  %86 = select i1 %84, i1 true, i1 %85
  %87 = or i32 %71, 8
  %88 = select i1 %86, i32 %71, i32 %87
  %89 = trunc i32 %81 to i16
  store i16 %89, ptr %1, align 4
  %90 = lshr i32 %79, 1
  store i32 %90, ptr %16, align 4
  %91 = shl nuw nsw i32 %81, 23
  br label %92

92:                                               ; preds = %78, %77, %76, %14, %10
  %93 = phi i32 [ %8, %10 ], [ 0, %14 ], [ 2147483647, %76 ], [ 0, %77 ], [ %90, %78 ]
  %94 = phi i32 [ 2139095040, %10 ], [ 0, %14 ], [ 2122317824, %76 ], [ 2139095040, %77 ], [ %91, %78 ]
  %95 = phi i32 [ %3, %10 ], [ %3, %14 ], [ %74, %76 ], [ %74, %77 ], [ %88, %78 ]
  %96 = getelementptr inbounds %struct.vfp_single, ptr %1, i32 0, i32 1
  %97 = load i16, ptr %96, align 2
  %98 = zext i16 %97 to i32
  %99 = shl nuw i32 %98, 16
  %100 = add i32 %94, %99
  %101 = lshr i32 %93, 7
  %102 = add i32 %100, %101
  tail call void @vfp_put_float(i32 noundef %102, i32 noundef %0) #5
  ret i32 %95
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_put_float(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfp_estimate_sqrt_significand(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, -1073741824
  %4 = icmp eq i32 %3, 1073741824
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %7

7:                                                ; preds = %5, %2
  %8 = shl i32 %1, 1
  %9 = lshr i32 %8, 27
  %10 = and i32 %9, 15
  %11 = and i32 %0, 1
  %12 = icmp eq i32 %11, 0
  %13 = lshr i32 %8, 17
  br i1 %12, label %25, label %14

14:                                               ; preds = %7
  %15 = add nuw nsw i32 %13, 16384
  %16 = getelementptr [16 x i16], ptr @sqrt_oddadjust, i32 0, i32 %10
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = sub nsw i32 %15, %18
  %20 = udiv i32 %8, %19
  %21 = shl i32 %20, 14
  %22 = shl nsw i32 %19, 15
  %23 = add i32 %22, %21
  %24 = and i32 %1, 2147483647
  br label %39

25:                                               ; preds = %7
  %26 = or i32 %13, 32768
  %27 = getelementptr [16 x i16], ptr @sqrt_evenadjust, i32 0, i32 %10
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = udiv i32 %8, %30
  %32 = add i32 %30, %31
  %33 = icmp ugt i32 %32, 131071
  %34 = shl i32 %32, 15
  %35 = select i1 %33, i32 -32768, i32 %34
  %36 = icmp ugt i32 %35, %8
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = ashr exact i32 %8, 1
  br label %56

39:                                               ; preds = %25, %14
  %40 = phi i32 [ %24, %14 ], [ %8, %25 ]
  %41 = phi i32 [ %23, %14 ], [ %35, %25 ]
  %42 = zext i32 %40 to i64
  %43 = shl nuw nsw i64 %42, 31
  %44 = icmp ult i32 %40, 2
  br i1 %44, label %45, label %48, !prof !9

45:                                               ; preds = %39
  %46 = trunc i64 %43 to i32
  %47 = udiv i32 %46, %41
  br label %52

48:                                               ; preds = %39
  %49 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %43) #7, !srcloc !10
  %50 = extractvalue { i64, i64 } %49, 1
  %51 = trunc i64 %50 to i32
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i32 [ %47, %45 ], [ %51, %48 ]
  %54 = lshr i32 %41, 1
  %55 = add i32 %53, %54
  br label %56

56:                                               ; preds = %52, %37
  %57 = phi i32 [ %55, %52 ], [ %38, %37 ]
  ret i32 %57
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfp_single_cpdo(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %0, 11534400
  %4 = lshr i32 %0, 15
  %5 = and i32 %4, 30
  %6 = lshr i32 %0, 7
  %7 = and i32 %6, 1
  %8 = or i32 %5, %7
  %9 = shl i32 %0, 1
  %10 = and i32 %9, 30
  %11 = lshr i32 %0, 5
  %12 = and i32 %11, 1
  %13 = or i32 %10, %12
  %14 = and i32 %1, 3145728
  %15 = icmp eq i32 %14, 3145728
  %16 = select i1 %15, i32 2, i32 1
  %17 = icmp eq i32 %3, 11534400
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = getelementptr [32 x %struct.op], ptr @fops_ext, i32 0, i32 %8
  br label %27

20:                                               ; preds = %2
  %21 = lshr i32 %0, 20
  %22 = and i32 %21, 11
  %23 = lshr i32 %0, 4
  %24 = and i32 %23, 4
  %25 = or i32 %22, %24
  %26 = getelementptr [16 x %struct.op], ptr @fops, i32 0, i32 %25
  br label %27

27:                                               ; preds = %20, %18
  %28 = phi ptr [ %19, %18 ], [ %26, %20 ]
  %29 = getelementptr inbounds %struct.op, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 11, i32 12
  %34 = select i1 %32, i32 30, i32 15
  %35 = select i1 %32, i32 22, i32 18
  %36 = select i1 %32, i32 1, i32 16
  %37 = lshr i32 %0, %33
  %38 = and i32 %37, %34
  %39 = lshr i32 %0, %35
  %40 = and i32 %39, %36
  %41 = or i32 %38, %40
  %42 = and i32 %30, 1
  %43 = icmp ne i32 %42, 0
  %44 = and i32 %41, 24
  %45 = icmp eq i32 %44, 0
  %46 = or i1 %43, %45
  %47 = and i32 %1, 458752
  %48 = select i1 %46, i32 0, i32 %47
  %49 = load ptr, ptr %28, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %76, label %51

51:                                               ; preds = %51, %27
  %52 = phi i32 [ %59, %51 ], [ 0, %27 ]
  %53 = phi i32 [ %63, %51 ], [ %41, %27 ]
  %54 = phi i32 [ %67, %51 ], [ %8, %27 ]
  %55 = phi i32 [ %74, %51 ], [ 0, %27 ]
  %56 = phi i32 [ %73, %51 ], [ %13, %27 ]
  %57 = tail call i32 @vfp_get_float(i32 noundef %56) #5
  %58 = tail call i32 %49(i32 noundef %53, i32 noundef %54, i32 noundef %57, i32 noundef %1) #5
  %59 = or i32 %58, %52
  %60 = and i32 %53, 24
  %61 = add nsw i32 %53, %16
  %62 = and i32 %61, 7
  %63 = or i32 %62, %60
  %64 = and i32 %54, 24
  %65 = add nsw i32 %54, %16
  %66 = and i32 %65, 7
  %67 = or i32 %66, %64
  %68 = and i32 %56, 24
  %69 = icmp eq i32 %68, 0
  %70 = add i32 %56, %16
  %71 = and i32 %70, 7
  %72 = or i32 %71, %68
  %73 = select i1 %69, i32 %56, i32 %72
  %74 = add nuw nsw i32 %55, 65536
  %75 = icmp ugt i32 %74, %48
  br i1 %75, label %76, label %51

76:                                               ; preds = %51, %27
  %77 = phi i32 [ -1, %27 ], [ %59, %51 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_get_float(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fcpy(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  tail call void @vfp_put_float(i32 noundef %2, i32 noundef %0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fabs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %2, 2147483647
  tail call void @vfp_put_float(i32 noundef %5, i32 noundef %0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fneg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = xor i32 %2, -2147483648
  tail call void @vfp_put_float(i32 noundef %5, i32 noundef %0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fsqrt(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_single, align 8
  %6 = alloca %struct.vfp_single, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  store i64 0, ptr %6, align 8, !annotation !11
  %7 = lshr i32 %2, 16
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, -32768
  %10 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 1
  store i16 %9, ptr %10, align 2
  %11 = lshr i32 %2, 23
  %12 = trunc i32 %11 to i16
  %13 = and i16 %12, 255
  store i16 %13, ptr %5, align 8
  %14 = shl i32 %2, 7
  %15 = and i32 %14, 1073741696
  %16 = trunc i32 %11 to i8
  switch i8 %16, label %17 [
    i8 0, label %19
    i8 -1, label %19
  ]

17:                                               ; preds = %4
  %18 = or i32 %15, 1073741824
  br label %19

19:                                               ; preds = %17, %4, %4
  %20 = phi i32 [ %18, %17 ], [ %15, %4 ], [ %15, %4 ]
  %21 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  switch i8 %16, label %99 [
    i8 -1, label %22
    i8 0, label %28
  ]

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %66, label %24

24:                                               ; preds = %22
  %25 = and i32 %20, 536870912
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 48, i32 16
  br label %31

28:                                               ; preds = %19
  %29 = icmp eq i32 %20, 0
  %30 = select i1 %29, i32 3, i32 5
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %27, %24 ], [ %30, %28 ]
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %81, label %35

35:                                               ; preds = %31
  switch i8 %16, label %45 [
    i8 -1, label %36
    i8 0, label %42
  ]

36:                                               ; preds = %35
  %37 = icmp eq i32 %20, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %36
  %39 = and i32 %20, 536870912
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 48, i32 16
  br label %45

42:                                               ; preds = %35
  %43 = icmp eq i32 %20, 0
  %44 = select i1 %43, i32 3, i32 5
  br label %45

45:                                               ; preds = %42, %38, %36, %35
  %46 = phi i32 [ 8, %36 ], [ %41, %38 ], [ 1, %35 ], [ %44, %42 ]
  %47 = and i32 %3, 33554432
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = and i32 %46, 31
  %51 = icmp eq i32 %50, 16
  %52 = select i1 %51, ptr %5, ptr null
  %53 = select i1 %51, ptr %21, ptr inttoptr (i32 4 to ptr)
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, 536870912
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %49, %45
  %57 = phi ptr [ %52, %49 ], [ @vfp_single_default_qnan, %45 ]
  %58 = load i64, ptr %57, align 4
  %59 = icmp eq i32 %46, 48
  %60 = select i1 %59, i32 1, i32 256
  %61 = lshr i64 %58, 16
  %62 = trunc i64 %61 to i16
  %63 = trunc i64 %58 to i16
  %64 = lshr i64 %58, 32
  %65 = trunc i64 %64 to i32
  br label %69

66:                                               ; preds = %22
  %67 = icmp eq i16 %9, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %99, %66
  br label %69

69:                                               ; preds = %81, %68, %66, %56
  %70 = phi i32 [ %65, %56 ], [ 536870912, %68 ], [ %20, %81 ], [ 0, %66 ]
  %71 = phi i16 [ %63, %56 ], [ 255, %68 ], [ %13, %81 ], [ %13, %66 ]
  %72 = phi i16 [ %62, %56 ], [ 0, %68 ], [ %9, %81 ], [ 0, %66 ]
  %73 = phi i32 [ %60, %56 ], [ 1, %68 ], [ 0, %81 ], [ 0, %66 ]
  %74 = zext i16 %72 to i32
  %75 = shl nuw i32 %74, 16
  %76 = zext i16 %71 to i32
  %77 = shl i32 %76, 23
  %78 = add i32 %77, %75
  %79 = lshr i32 %70, 7
  %80 = add i32 %78, %79
  tail call void @vfp_put_float(i32 noundef %80, i32 noundef %0) #5
  br label %202

81:                                               ; preds = %31
  %82 = and i32 %32, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %69

84:                                               ; preds = %81
  %85 = and i32 %32, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = icmp eq i32 %20, 0
  %89 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 false) #5, !range !8
  %90 = sub nuw nsw i32 32, %89
  %91 = select i1 %88, i32 0, i32 %90
  %92 = icmp eq i32 %91, 31
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = sub nsw i32 31, %91
  %95 = trunc i32 %91 to i16
  %96 = add nsw i16 %13, -30
  %97 = add nsw i16 %96, %95
  store i16 %97, ptr %5, align 8
  %98 = shl i32 %20, %94
  store i32 %98, ptr %21, align 4
  br label %99

99:                                               ; preds = %93, %87, %84, %19
  %100 = phi i32 [ %20, %19 ], [ %98, %93 ], [ %20, %87 ], [ %20, %84 ]
  %101 = phi i16 [ %13, %19 ], [ %97, %93 ], [ %13, %87 ], [ %13, %84 ]
  %102 = icmp eq i16 %9, 0
  br i1 %102, label %103, label %68

103:                                              ; preds = %99
  %104 = sext i16 %101 to i32
  %105 = add nsw i32 %104, 130945
  %106 = lshr i32 %105, 1
  %107 = trunc i32 %106 to i16
  %108 = add nsw i16 %107, 127
  store i16 %108, ptr %6, align 8
  %109 = and i32 %100, -1073741824
  %110 = icmp eq i32 %109, 1073741824
  br i1 %110, label %113, label %111

111:                                              ; preds = %103
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %113

113:                                              ; preds = %111, %103
  %114 = shl i32 %100, 1
  %115 = lshr i32 %114, 27
  %116 = and i32 %115, 15
  %117 = and i32 %104, 1
  %118 = icmp eq i32 %117, 0
  %119 = lshr i32 %114, 17
  br i1 %118, label %131, label %120

120:                                              ; preds = %113
  %121 = add nuw nsw i32 %119, 16384
  %122 = getelementptr [16 x i16], ptr @sqrt_oddadjust, i32 0, i32 %116
  %123 = load i16, ptr %122, align 2
  %124 = zext i16 %123 to i32
  %125 = sub nsw i32 %121, %124
  %126 = udiv i32 %114, %125
  %127 = shl i32 %126, 14
  %128 = shl nsw i32 %125, 15
  %129 = add i32 %128, %127
  %130 = and i32 %100, 2147483647
  br label %145

131:                                              ; preds = %113
  %132 = or i32 %119, 32768
  %133 = getelementptr [16 x i16], ptr @sqrt_evenadjust, i32 0, i32 %116
  %134 = load i16, ptr %133, align 2
  %135 = zext i16 %134 to i32
  %136 = sub nsw i32 %132, %135
  %137 = udiv i32 %114, %136
  %138 = add i32 %136, %137
  %139 = icmp ugt i32 %138, 131071
  %140 = shl i32 %138, 15
  %141 = select i1 %139, i32 -32768, i32 %140
  %142 = icmp ugt i32 %141, %114
  br i1 %142, label %145, label %143

143:                                              ; preds = %131
  %144 = ashr exact i32 %114, 1
  br label %162

145:                                              ; preds = %131, %120
  %146 = phi i32 [ %130, %120 ], [ %114, %131 ]
  %147 = phi i32 [ %129, %120 ], [ %141, %131 ]
  %148 = zext i32 %146 to i64
  %149 = shl nuw nsw i64 %148, 31
  %150 = icmp ult i32 %146, 2
  br i1 %150, label %151, label %154, !prof !9

151:                                              ; preds = %145
  %152 = trunc i64 %149 to i32
  %153 = udiv i32 %152, %147
  br label %158

154:                                              ; preds = %145
  %155 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %147, i64 %149) #7, !srcloc !10
  %156 = extractvalue { i64, i64 } %155, 1
  %157 = trunc i64 %156 to i32
  br label %158

158:                                              ; preds = %154, %151
  %159 = phi i32 [ %153, %151 ], [ %157, %154 ]
  %160 = lshr i32 %147, 1
  %161 = add i32 %159, %160
  br label %162

162:                                              ; preds = %158, %143
  %163 = phi i32 [ %161, %158 ], [ %144, %143 ]
  %164 = add i32 %163, 2
  %165 = getelementptr inbounds %struct.vfp_single, ptr %6, i32 0, i32 2
  %166 = and i32 %164, 126
  %167 = icmp ult i32 %166, 6
  br i1 %167, label %168, label %196

168:                                              ; preds = %162
  %169 = icmp ugt i32 %163, -3
  br i1 %169, label %196, label %170

170:                                              ; preds = %168
  %171 = and i16 %101, 1
  %172 = xor i16 %171, 1
  %173 = zext i16 %172 to i32
  %174 = shl i32 %100, %173
  %175 = zext i32 %164 to i64
  %176 = mul nuw i64 %175, %175
  %177 = zext i32 %174 to i64
  %178 = shl nuw i64 %177, 32
  %179 = sub i64 %178, %176
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %181, %170
  %182 = phi i64 [ %188, %181 ], [ %179, %170 ]
  %183 = phi i32 [ %184, %181 ], [ %164, %170 ]
  %184 = add i32 %183, -1
  %185 = zext i32 %184 to i64
  %186 = shl nuw nsw i64 %185, 1
  %187 = add nsw i64 %182, 1
  %188 = add nsw i64 %187, %186
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %181, label %190

190:                                              ; preds = %181, %170
  %191 = phi i32 [ %164, %170 ], [ %184, %181 ]
  %192 = phi i64 [ %179, %170 ], [ %188, %181 ]
  %193 = icmp ne i64 %192, 0
  %194 = zext i1 %193 to i32
  %195 = or i32 %191, %194
  br label %196

196:                                              ; preds = %190, %168, %162
  %197 = phi i32 [ %195, %190 ], [ %164, %162 ], [ -1, %168 ]
  %198 = lshr i32 %197, 1
  %199 = and i32 %197, 1
  %200 = or i32 %198, %199
  store i32 %200, ptr %165, align 4
  %201 = call i32 @__vfp_single_normaliseround(i32 noundef %0, ptr noundef nonnull %6, i32 noundef %3, i32 noundef 0)
  br label %202

202:                                              ; preds = %196, %69
  %203 = phi i32 [ %73, %69 ], [ %201, %196 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %203
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fcmp(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @vfp_get_float(i32 noundef %0) #5
  %6 = and i32 %2, 2139095040
  %7 = icmp ne i32 %6, 2139095040
  %8 = and i32 %2, 8388607
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %7, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = and i32 %2, 4194304
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 805306369, i32 805306368
  %15 = and i32 %5, 2139095040
  %16 = icmp ne i32 %15, 2139095040
  %17 = and i32 %5, 8388607
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %16, %18
  br i1 %19, label %54, label %26

20:                                               ; preds = %4
  %21 = and i32 %5, 2139095040
  %22 = icmp ne i32 %21, 2139095040
  %23 = and i32 %5, 8388607
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %22, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20, %11
  %27 = phi i32 [ 0, %20 ], [ %14, %11 ]
  %28 = or i32 %27, 805306368
  %29 = and i32 %5, 4194304
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 805306369, i32 %28
  br label %54

32:                                               ; preds = %20
  %33 = icmp eq i32 %5, %2
  br i1 %33, label %54, label %34

34:                                               ; preds = %32
  %35 = or i32 %5, %2
  %36 = and i32 %35, 2147483647
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = xor i32 %5, %2
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = icmp sgt i32 %5, -1
  %43 = select i1 %42, i32 536870912, i32 -2147483648
  br label %54

44:                                               ; preds = %38
  %45 = lshr i32 %5, 31
  %46 = icmp slt i32 %5, %2
  %47 = zext i1 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = icmp sgt i32 %5, %2
  %51 = zext i1 %50 to i32
  %52 = icmp eq i32 %45, %51
  %53 = select i1 %52, i32 0, i32 536870912
  br label %54

54:                                               ; preds = %49, %44, %41, %34, %32, %26, %11
  %55 = phi i32 [ 1610612736, %34 ], [ 1610612736, %32 ], [ %43, %41 ], [ -2147483648, %44 ], [ %53, %49 ], [ %14, %11 ], [ %31, %26 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fcmpe(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @vfp_get_float(i32 noundef %0) #5
  %6 = and i32 %2, 2139095040
  %7 = icmp ne i32 %6, 2139095040
  %8 = and i32 %2, 8388607
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %4
  %12 = and i32 %5, 2139095040
  %13 = icmp ne i32 %12, 2139095040
  %14 = and i32 %5, 8388607
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %13, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = icmp eq i32 %5, %2
  br i1 %18, label %39, label %19

19:                                               ; preds = %17
  %20 = or i32 %5, %2
  %21 = and i32 %20, 2147483647
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = xor i32 %5, %2
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = icmp sgt i32 %5, -1
  %28 = select i1 %27, i32 536870912, i32 -2147483648
  br label %39

29:                                               ; preds = %23
  %30 = lshr i32 %5, 31
  %31 = icmp slt i32 %5, %2
  %32 = zext i1 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = icmp sgt i32 %5, %2
  %36 = zext i1 %35 to i32
  %37 = icmp eq i32 %30, %36
  %38 = select i1 %37, i32 0, i32 536870912
  br label %39

39:                                               ; preds = %34, %29, %26, %19, %17, %11, %4
  %40 = phi i32 [ 1610612736, %19 ], [ 1610612736, %17 ], [ %28, %26 ], [ -2147483648, %29 ], [ %38, %34 ], [ 805306369, %11 ], [ 805306369, %4 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fcmpz(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @vfp_get_float(i32 noundef %0) #5
  %6 = and i32 %5, 2139095040
  %7 = icmp ne i32 %6, 2139095040
  %8 = and i32 %5, 8388607
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %7, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = and i32 %5, 4194304
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 805306369, i32 805306368
  br label %22

15:                                               ; preds = %4
  switch i32 %5, label %16 [
    i32 -2147483648, label %22
    i32 0, label %22
  ]

16:                                               ; preds = %15
  %17 = icmp sgt i32 %5, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = lshr i32 %5, 2
  %20 = and i32 %19, 536870912
  %21 = xor i32 %20, 536870912
  br label %22

22:                                               ; preds = %18, %16, %15, %15, %11
  %23 = phi i32 [ 1610612736, %15 ], [ %21, %18 ], [ -2147483648, %16 ], [ %14, %11 ], [ 1610612736, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fcmpez(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @vfp_get_float(i32 noundef %0) #5
  %6 = and i32 %5, 2139095040
  %7 = icmp ne i32 %6, 2139095040
  %8 = and i32 %5, 8388607
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  switch i32 %5, label %12 [
    i32 -2147483648, label %18
    i32 0, label %18
  ]

12:                                               ; preds = %11
  %13 = icmp sgt i32 %5, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = lshr i32 %5, 2
  %16 = and i32 %15, 536870912
  %17 = xor i32 %16, 536870912
  br label %18

18:                                               ; preds = %14, %12, %11, %11, %4
  %19 = phi i32 [ 1610612736, %11 ], [ %17, %14 ], [ 805306369, %4 ], [ -2147483648, %12 ], [ 1610612736, %11 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fcvtd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_double, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  store i64 0, ptr %5, align 8, !annotation !11
  %6 = lshr i32 %2, 16
  %7 = trunc i32 %6 to i16
  %8 = and i16 %7, -32768
  %9 = lshr i32 %2, 23
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, 255
  %12 = shl i32 %2, 7
  %13 = and i32 %12, 1073741696
  %14 = trunc i32 %9 to i8
  switch i8 %14, label %15 [
    i8 0, label %17
    i8 -1, label %17
  ]

15:                                               ; preds = %4
  %16 = or i32 %13, 1073741824
  br label %17

17:                                               ; preds = %15, %4, %4
  %18 = phi i32 [ %16, %15 ], [ %13, %4 ], [ %13, %4 ]
  switch i8 %14, label %24 [
    i8 -1, label %19
    i8 0, label %26
  ]

19:                                               ; preds = %17
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = and i32 %18, 536870912
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %21, %19, %17
  %25 = phi i32 [ 8, %19 ], [ 16, %21 ], [ 1, %17 ]
  br label %42

26:                                               ; preds = %17
  %27 = icmp eq i32 %18, 0
  %28 = select i1 %27, i32 3, i32 5
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 false) #5, !range !8
  %33 = sub nuw nsw i32 32, %32
  %34 = select i1 %27, i32 0, i32 %33
  %35 = icmp eq i32 %34, 31
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = sub nsw i32 31, %34
  %38 = trunc i32 %34 to i16
  %39 = add nsw i16 %11, -30
  %40 = add nsw i16 %39, %38
  %41 = shl i32 %18, %37
  br label %42

42:                                               ; preds = %36, %31, %26, %24, %21
  %43 = phi i32 [ 0, %26 ], [ 0, %24 ], [ 0, %31 ], [ 0, %36 ], [ 1, %21 ]
  %44 = phi i32 [ %28, %26 ], [ %25, %24 ], [ 5, %31 ], [ 5, %36 ], [ 48, %21 ]
  %45 = phi i32 [ %18, %26 ], [ %18, %24 ], [ %18, %31 ], [ %41, %36 ], [ %18, %21 ]
  %46 = phi i16 [ 0, %26 ], [ %11, %24 ], [ 0, %31 ], [ %40, %36 ], [ 255, %21 ]
  %47 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 1
  store i16 %8, ptr %47, align 2
  %48 = zext i32 %45 to i64
  %49 = shl nuw i64 %48, 32
  %50 = getelementptr inbounds %struct.vfp_double, ptr %5, i32 0, i32 2
  store i64 %49, ptr %50, align 8
  %51 = and i32 %44, 24
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %42
  %54 = icmp eq i32 %44, 16
  %55 = zext i16 %8 to i64
  %56 = shl nuw i64 %55, 48
  %57 = or i64 %56, 9218868437227405312
  %58 = shl nuw nsw i64 %48, 22
  %59 = or i64 %58, 2251799813685248
  %60 = select i1 %54, i64 %59, i64 %58
  %61 = add i64 %57, %60
  tail call void @vfp_put_double(i64 noundef %61, i32 noundef %0) #5
  br label %68

62:                                               ; preds = %42
  %63 = and i32 %44, 2
  %64 = icmp eq i32 %63, 0
  %65 = add nsw i16 %46, 896
  %66 = select i1 %64, i16 %65, i16 0
  store i16 %66, ptr %5, align 8
  %67 = call i32 @vfp_double_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %43, ptr noundef nonnull @.str.7) #5
  br label %68

68:                                               ; preds = %62, %53
  %69 = phi i32 [ %43, %53 ], [ %67, %62 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fuito(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_single, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 157, ptr %5, align 8, !annotation !11
  %6 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 2
  store i32 %2, ptr %6, align 4
  %7 = call i32 @__vfp_single_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fsito(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_single, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 157, ptr %5, align 8, !annotation !11
  %6 = lshr i32 %2, 16
  %7 = trunc i32 %6 to i16
  %8 = and i16 %7, -32768
  %9 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 1
  store i16 %8, ptr %9, align 2
  %10 = icmp eq i16 %8, 0
  %11 = sub i32 0, %2
  %12 = select i1 %10, i32 %2, i32 %11
  %13 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = call i32 @__vfp_single_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_ftoui(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %3, 12582912
  %6 = lshr i32 %2, 16
  %7 = trunc i32 %6 to i16
  %8 = and i16 %7, -32768
  %9 = lshr i32 %2, 23
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, 255
  %12 = shl i32 %2, 7
  %13 = and i32 %12, 1073741696
  %14 = trunc i32 %9 to i8
  switch i8 %14, label %15 [
    i8 0, label %17
    i8 -1, label %17
  ]

15:                                               ; preds = %4
  %16 = or i32 %13, 1073741824
  br label %17

17:                                               ; preds = %15, %4, %4
  %18 = phi i32 [ %16, %15 ], [ %13, %4 ], [ %13, %4 ]
  switch i8 %14, label %35 [
    i8 -1, label %19
    i8 0, label %25
  ]

19:                                               ; preds = %17
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %19
  %22 = and i32 %18, 536870912
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 48, i32 16
  br label %28

25:                                               ; preds = %17
  %26 = icmp eq i32 %18, 0
  %27 = select i1 %26, i32 3, i32 5
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i32 [ %24, %21 ], [ %27, %25 ]
  %30 = shl nuw nsw i32 %29, 5
  %31 = and i32 %30, 128
  %32 = and i32 %29, 16
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i16 %8, i16 0
  br label %35

35:                                               ; preds = %28, %17
  %36 = phi i32 [ 0, %17 ], [ %31, %28 ]
  %37 = phi i16 [ %8, %17 ], [ %34, %28 ]
  %38 = zext i16 %11 to i32
  %39 = icmp ugt i16 %11, 158
  br i1 %39, label %40, label %44

40:                                               ; preds = %35, %19
  %41 = phi i16 [ %37, %35 ], [ %8, %19 ]
  %42 = icmp eq i16 %41, 0
  %43 = sext i1 %42 to i32
  br label %90

44:                                               ; preds = %35
  %45 = icmp ugt i16 %11, 125
  br i1 %45, label %46, label %76

46:                                               ; preds = %44
  %47 = sub nsw i32 158, %38
  %48 = shl i32 %18, 1
  %49 = lshr i32 %48, %47
  %50 = add nsw i32 %38, -125
  %51 = shl i32 %18, %50
  switch i32 %5, label %56 [
    i32 0, label %52
    i32 12582912, label %61
  ]

52:                                               ; preds = %46
  %53 = and i32 %49, 1
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 2147483647, i32 -2147483648
  br label %61

56:                                               ; preds = %46
  %57 = icmp eq i32 %5, 4194304
  %58 = icmp ne i16 %37, 0
  %59 = xor i1 %57, %58
  %60 = sext i1 %59 to i32
  br label %61

61:                                               ; preds = %56, %52, %46
  %62 = phi i32 [ %55, %52 ], [ 0, %46 ], [ %60, %56 ]
  %63 = xor i32 %51, -1
  %64 = icmp ugt i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = add nuw i32 %49, %65
  %67 = icmp ne i32 %66, 0
  %68 = icmp ne i16 %37, 0
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = or i32 %36, 1
  br label %90

72:                                               ; preds = %61
  %73 = icmp eq i32 %51, 0
  %74 = or i32 %36, 16
  %75 = select i1 %73, i32 %36, i32 %74
  br label %90

76:                                               ; preds = %44
  %77 = or i32 %18, %38
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = or i32 %36, 16
  %81 = icmp eq i32 %5, 4194304
  %82 = icmp eq i16 %37, 0
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = icmp eq i32 %5, 8388608
  %86 = icmp ne i16 %37, 0
  %87 = select i1 %85, i1 %86, i1 false
  %88 = or i32 %36, 17
  %89 = select i1 %87, i32 %88, i32 %80
  br label %90

90:                                               ; preds = %84, %79, %76, %72, %70, %40
  %91 = phi i32 [ 1, %40 ], [ %36, %76 ], [ %71, %70 ], [ %75, %72 ], [ %80, %79 ], [ %89, %84 ]
  %92 = phi i32 [ %43, %40 ], [ 0, %76 ], [ 0, %70 ], [ %66, %72 ], [ 1, %79 ], [ 0, %84 ]
  tail call void @vfp_put_float(i32 noundef %92, i32 noundef %0) #5
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_ftouiz(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @vfp_single_ftoui(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 12582912)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_ftosi(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %3, 12582912
  %6 = lshr i32 %2, 16
  %7 = trunc i32 %6 to i16
  %8 = and i16 %7, -32768
  %9 = lshr i32 %2, 23
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, 255
  %12 = shl i32 %2, 7
  %13 = and i32 %12, 1073741696
  %14 = trunc i32 %9 to i8
  switch i8 %14, label %15 [
    i8 0, label %17
    i8 -1, label %17
  ]

15:                                               ; preds = %4
  %16 = or i32 %13, 1073741824
  br label %17

17:                                               ; preds = %15, %4, %4
  %18 = phi i32 [ %16, %15 ], [ %13, %4 ], [ %13, %4 ]
  switch i8 %14, label %38 [
    i8 -1, label %19
    i8 0, label %26
  ]

19:                                               ; preds = %17
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %19
  %22 = and i32 %18, 536870912
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 48, i32 16
  %25 = select i1 %23, i32 1536, i32 512
  br label %30

26:                                               ; preds = %17
  %27 = icmp eq i32 %18, 0
  %28 = select i1 %27, i32 3, i32 5
  %29 = select i1 %27, i32 96, i32 160
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i32 [ %24, %21 ], [ %28, %26 ]
  %32 = phi i32 [ %25, %21 ], [ %29, %26 ]
  %33 = and i32 %32, 128
  %34 = and i32 %31, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = or i32 %33, 1
  br label %94

38:                                               ; preds = %30, %17
  %39 = phi i32 [ %33, %30 ], [ 0, %17 ]
  %40 = zext i16 %11 to i32
  %41 = icmp ugt i16 %11, 158
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %19
  %43 = phi i32 [ %39, %38 ], [ 0, %19 ]
  %44 = icmp eq i16 %8, 0
  %45 = select i1 %44, i32 2147483647, i32 -2147483648
  %46 = or i32 %43, 1
  br label %94

47:                                               ; preds = %38
  %48 = icmp ugt i16 %11, 125
  br i1 %48, label %49, label %81

49:                                               ; preds = %47
  %50 = sub nsw i32 158, %40
  %51 = shl i32 %18, 1
  %52 = lshr i32 %51, %50
  %53 = add nsw i32 %40, -125
  %54 = shl i32 %18, %53
  switch i32 %5, label %59 [
    i32 0, label %55
    i32 12582912, label %64
  ]

55:                                               ; preds = %49
  %56 = and i32 %52, 1
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 2147483647, i32 -2147483648
  br label %64

59:                                               ; preds = %49
  %60 = icmp eq i32 %5, 4194304
  %61 = icmp ne i16 %8, 0
  %62 = xor i1 %60, %61
  %63 = sext i1 %62 to i32
  br label %64

64:                                               ; preds = %59, %55, %49
  %65 = phi i32 [ %58, %55 ], [ 0, %49 ], [ %63, %59 ]
  %66 = xor i32 %54, -1
  %67 = icmp ugt i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = add nuw i32 %52, %68
  %70 = icmp eq i16 %8, 0
  %71 = select i1 %70, i32 2147483647, i32 -2147483648
  %72 = icmp ugt i32 %69, %71
  %73 = or i32 %39, 1
  %74 = icmp eq i32 %54, 0
  %75 = or i32 %39, 16
  %76 = select i1 %74, i32 %39, i32 %75
  %77 = select i1 %72, i32 %73, i32 %76
  %78 = tail call i32 @llvm.umin.i32(i32 %69, i32 %71)
  %79 = sub i32 0, %78
  %80 = select i1 %70, i32 %78, i32 %79
  br label %94

81:                                               ; preds = %47
  %82 = or i32 %18, %40
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = or i32 %39, 16
  %86 = icmp eq i32 %5, 4194304
  %87 = icmp eq i16 %8, 0
  %88 = and i1 %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = icmp eq i32 %5, 8388608
  %91 = icmp ne i16 %8, 0
  %92 = and i1 %90, %91
  %93 = sext i1 %92 to i32
  br label %94

94:                                               ; preds = %89, %84, %81, %64, %42, %36
  %95 = phi i32 [ %37, %36 ], [ %46, %42 ], [ %77, %64 ], [ %39, %81 ], [ %85, %84 ], [ %85, %89 ]
  %96 = phi i32 [ 0, %36 ], [ %45, %42 ], [ %80, %64 ], [ 0, %81 ], [ 1, %84 ], [ %93, %89 ]
  tail call void @vfp_put_float(i32 noundef %96, i32 noundef %0) #5
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_ftosiz(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @vfp_single_ftosi(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 12582912)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_double_normaliseround(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_put_double(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fmac(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @vfp_single_multiply_accumulate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fmsc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @vfp_single_multiply_accumulate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fmul(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_single, align 8
  %6 = alloca %struct.vfp_single, align 8
  %7 = alloca %struct.vfp_single, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 0, ptr %5, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  %8 = tail call i32 @vfp_get_float(i32 noundef %1) #5
  %9 = lshr i32 %8, 16
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, -32768
  %12 = getelementptr inbounds %struct.vfp_single, ptr %6, i32 0, i32 1
  store i16 %11, ptr %12, align 2
  %13 = lshr i32 %8, 23
  %14 = trunc i32 %13 to i16
  %15 = and i16 %14, 255
  store i16 %15, ptr %6, align 8
  %16 = shl i32 %8, 7
  %17 = and i32 %16, 1073741696
  %18 = trunc i32 %13 to i8
  switch i8 %18, label %19 [
    i8 0, label %21
    i8 -1, label %21
  ]

19:                                               ; preds = %4
  %20 = or i32 %17, 1073741824
  br label %21

21:                                               ; preds = %19, %4, %4
  %22 = phi i32 [ %20, %19 ], [ %17, %4 ], [ %17, %4 ]
  %23 = getelementptr inbounds %struct.vfp_single, ptr %6, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = icmp eq i16 %15, 0
  %25 = icmp ne i32 %22, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 true) #5, !range !8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = add nsw i32 %28, -1
  %32 = trunc i32 %28 to i16
  %33 = sub nsw i16 2, %32
  store i16 %33, ptr %6, align 8
  %34 = shl i32 %22, %31
  store i32 %34, ptr %23, align 4
  br label %35

35:                                               ; preds = %30, %27, %21
  %36 = lshr i32 %2, 16
  %37 = trunc i32 %36 to i16
  %38 = and i16 %37, -32768
  %39 = getelementptr inbounds %struct.vfp_single, ptr %7, i32 0, i32 1
  store i16 %38, ptr %39, align 2
  %40 = lshr i32 %2, 23
  %41 = trunc i32 %40 to i16
  %42 = and i16 %41, 255
  store i16 %42, ptr %7, align 8
  %43 = shl i32 %2, 7
  %44 = and i32 %43, 1073741696
  %45 = trunc i32 %40 to i8
  switch i8 %45, label %46 [
    i8 0, label %48
    i8 -1, label %48
  ]

46:                                               ; preds = %35
  %47 = or i32 %44, 1073741824
  br label %48

48:                                               ; preds = %46, %35, %35
  %49 = phi i32 [ %47, %46 ], [ %44, %35 ], [ %44, %35 ]
  %50 = getelementptr inbounds %struct.vfp_single, ptr %7, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = icmp eq i16 %42, 0
  %52 = icmp ne i32 %49, 0
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 true) #5, !range !8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = add nsw i32 %55, -1
  %59 = trunc i32 %55 to i16
  %60 = sub nsw i16 2, %59
  store i16 %60, ptr %7, align 8
  %61 = shl i32 %49, %58
  store i32 %61, ptr %50, align 4
  br label %62

62:                                               ; preds = %57, %54, %48
  %63 = call fastcc i32 @vfp_single_multiply(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %3), !range !12
  %64 = call i32 @__vfp_single_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %63)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fadd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_single, align 8
  %6 = alloca %struct.vfp_single, align 8
  %7 = alloca %struct.vfp_single, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 0, ptr %5, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  %8 = tail call i32 @vfp_get_float(i32 noundef %1) #5
  %9 = lshr i32 %8, 16
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, -32768
  %12 = getelementptr inbounds %struct.vfp_single, ptr %6, i32 0, i32 1
  store i16 %11, ptr %12, align 2
  %13 = lshr i32 %8, 23
  %14 = trunc i32 %13 to i16
  %15 = and i16 %14, 255
  store i16 %15, ptr %6, align 8
  %16 = shl i32 %8, 7
  %17 = and i32 %16, 1073741696
  %18 = trunc i32 %13 to i8
  switch i8 %18, label %19 [
    i8 0, label %21
    i8 -1, label %21
  ]

19:                                               ; preds = %4
  %20 = or i32 %17, 1073741824
  br label %21

21:                                               ; preds = %19, %4, %4
  %22 = phi i32 [ %20, %19 ], [ %17, %4 ], [ %17, %4 ]
  %23 = getelementptr inbounds %struct.vfp_single, ptr %6, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = icmp eq i16 %15, 0
  %25 = icmp ne i32 %22, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 true) #5, !range !8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = add nsw i32 %28, -1
  %32 = trunc i32 %28 to i16
  %33 = sub nsw i16 2, %32
  store i16 %33, ptr %6, align 8
  %34 = shl i32 %22, %31
  store i32 %34, ptr %23, align 4
  br label %35

35:                                               ; preds = %30, %27, %21
  %36 = lshr i32 %2, 16
  %37 = trunc i32 %36 to i16
  %38 = and i16 %37, -32768
  %39 = getelementptr inbounds %struct.vfp_single, ptr %7, i32 0, i32 1
  store i16 %38, ptr %39, align 2
  %40 = lshr i32 %2, 23
  %41 = trunc i32 %40 to i16
  %42 = and i16 %41, 255
  store i16 %42, ptr %7, align 8
  %43 = shl i32 %2, 7
  %44 = and i32 %43, 1073741696
  %45 = trunc i32 %40 to i8
  switch i8 %45, label %46 [
    i8 0, label %48
    i8 -1, label %48
  ]

46:                                               ; preds = %35
  %47 = or i32 %44, 1073741824
  br label %48

48:                                               ; preds = %46, %35, %35
  %49 = phi i32 [ %47, %46 ], [ %44, %35 ], [ %44, %35 ]
  %50 = getelementptr inbounds %struct.vfp_single, ptr %7, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = icmp eq i16 %42, 0
  %52 = icmp ne i32 %49, 0
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 true) #5, !range !8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = add nsw i32 %55, -1
  %59 = trunc i32 %55 to i16
  %60 = sub nsw i16 2, %59
  store i16 %60, ptr %7, align 8
  %61 = shl i32 %49, %58
  store i32 %61, ptr %50, align 4
  br label %62

62:                                               ; preds = %57, %54, %48
  %63 = call fastcc i32 @vfp_single_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %3), !range !12
  %64 = call i32 @__vfp_single_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %63)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fnmac(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @vfp_single_multiply_accumulate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fnmsc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @vfp_single_multiply_accumulate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fnmul(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_single, align 8
  %6 = alloca %struct.vfp_single, align 8
  %7 = alloca %struct.vfp_single, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 0, ptr %5, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  %8 = tail call i32 @vfp_get_float(i32 noundef %1) #5
  %9 = lshr i32 %8, 16
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, -32768
  %12 = getelementptr inbounds %struct.vfp_single, ptr %6, i32 0, i32 1
  store i16 %11, ptr %12, align 2
  %13 = lshr i32 %8, 23
  %14 = trunc i32 %13 to i16
  %15 = and i16 %14, 255
  store i16 %15, ptr %6, align 8
  %16 = shl i32 %8, 7
  %17 = and i32 %16, 1073741696
  %18 = trunc i32 %13 to i8
  switch i8 %18, label %19 [
    i8 0, label %21
    i8 -1, label %21
  ]

19:                                               ; preds = %4
  %20 = or i32 %17, 1073741824
  br label %21

21:                                               ; preds = %19, %4, %4
  %22 = phi i32 [ %20, %19 ], [ %17, %4 ], [ %17, %4 ]
  %23 = getelementptr inbounds %struct.vfp_single, ptr %6, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = icmp eq i16 %15, 0
  %25 = icmp ne i32 %22, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 true) #5, !range !8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = add nsw i32 %28, -1
  %32 = trunc i32 %28 to i16
  %33 = sub nsw i16 2, %32
  store i16 %33, ptr %6, align 8
  %34 = shl i32 %22, %31
  store i32 %34, ptr %23, align 4
  br label %35

35:                                               ; preds = %30, %27, %21
  %36 = lshr i32 %2, 16
  %37 = trunc i32 %36 to i16
  %38 = and i16 %37, -32768
  %39 = getelementptr inbounds %struct.vfp_single, ptr %7, i32 0, i32 1
  store i16 %38, ptr %39, align 2
  %40 = lshr i32 %2, 23
  %41 = trunc i32 %40 to i16
  %42 = and i16 %41, 255
  store i16 %42, ptr %7, align 8
  %43 = shl i32 %2, 7
  %44 = and i32 %43, 1073741696
  %45 = trunc i32 %40 to i8
  switch i8 %45, label %46 [
    i8 0, label %48
    i8 -1, label %48
  ]

46:                                               ; preds = %35
  %47 = or i32 %44, 1073741824
  br label %48

48:                                               ; preds = %46, %35, %35
  %49 = phi i32 [ %47, %46 ], [ %44, %35 ], [ %44, %35 ]
  %50 = getelementptr inbounds %struct.vfp_single, ptr %7, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = icmp eq i16 %42, 0
  %52 = icmp ne i32 %49, 0
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 true) #5, !range !8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = add nsw i32 %55, -1
  %59 = trunc i32 %55 to i16
  %60 = sub nsw i16 2, %59
  store i16 %60, ptr %7, align 8
  %61 = shl i32 %49, %58
  store i32 %61, ptr %50, align 4
  br label %62

62:                                               ; preds = %57, %54, %48
  %63 = call fastcc i32 @vfp_single_multiply(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %3), !range !12
  %64 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 1
  %65 = load i16, ptr %64, align 2
  %66 = xor i16 %65, -32768
  store i16 %66, ptr %64, align 2
  %67 = call i32 @__vfp_single_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef %63)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fsub(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = xor i32 %2, -2147483648
  %6 = tail call i32 @vfp_single_fadd(i32 noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef %3)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_single_fdiv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.vfp_single, align 8
  %6 = alloca %struct.vfp_single, align 8
  %7 = alloca %struct.vfp_single, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 0, ptr %5, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  %8 = tail call i32 @vfp_get_float(i32 noundef %1) #5
  %9 = lshr i32 %8, 16
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, -32768
  %12 = getelementptr inbounds i8, ptr %6, i32 2
  store i16 %11, ptr %12, align 2
  %13 = lshr i32 %8, 23
  %14 = trunc i32 %13 to i16
  %15 = and i16 %14, 255
  store i16 %15, ptr %6, align 8
  %16 = shl i32 %8, 7
  %17 = and i32 %16, 1073741696
  %18 = trunc i32 %13 to i8
  switch i8 %18, label %19 [
    i8 0, label %21
    i8 -1, label %21
  ]

19:                                               ; preds = %4
  %20 = or i32 %17, 1073741824
  br label %21

21:                                               ; preds = %19, %4, %4
  %22 = phi i32 [ %20, %19 ], [ %17, %4 ], [ %17, %4 ]
  %23 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 %22, ptr %23, align 4
  %24 = lshr i32 %2, 16
  %25 = trunc i32 %24 to i16
  %26 = and i16 %25, -32768
  %27 = getelementptr inbounds i8, ptr %7, i32 2
  store i16 %26, ptr %27, align 2
  %28 = lshr i32 %2, 23
  %29 = trunc i32 %28 to i16
  %30 = and i16 %29, 255
  store i16 %30, ptr %7, align 8
  %31 = shl i32 %2, 7
  %32 = and i32 %31, 1073741696
  %33 = trunc i32 %28 to i8
  switch i8 %33, label %34 [
    i8 0, label %36
    i8 -1, label %36
  ]

34:                                               ; preds = %21
  %35 = or i32 %32, 1073741824
  br label %36

36:                                               ; preds = %34, %21, %21
  %37 = phi i32 [ %35, %34 ], [ %32, %21 ], [ %32, %21 ]
  %38 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 %37, ptr %38, align 4
  %39 = xor i16 %11, %26
  %40 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 1
  store i16 %39, ptr %40, align 2
  switch i8 %18, label %50 [
    i8 -1, label %41
    i8 0, label %47
  ]

41:                                               ; preds = %36
  %42 = icmp eq i32 %22, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = and i32 %22, 536870912
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 48, i32 16
  br label %50

47:                                               ; preds = %36
  %48 = icmp eq i32 %22, 0
  %49 = select i1 %48, i32 3, i32 5
  br label %50

50:                                               ; preds = %47, %43, %41, %36
  %51 = phi i32 [ 8, %41 ], [ %46, %43 ], [ 1, %36 ], [ %49, %47 ]
  switch i8 %33, label %61 [
    i8 -1, label %52
    i8 0, label %58
  ]

52:                                               ; preds = %50
  %53 = icmp eq i32 %37, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %52
  %55 = and i32 %37, 536870912
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 48, i32 16
  br label %61

58:                                               ; preds = %50
  %59 = icmp eq i32 %37, 0
  %60 = select i1 %59, i32 3, i32 5
  br label %61

61:                                               ; preds = %58, %54, %52, %50
  %62 = phi i32 [ 8, %52 ], [ %57, %54 ], [ 1, %50 ], [ %60, %58 ]
  %63 = and i32 %51, 16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %154

65:                                               ; preds = %61
  %66 = and i32 %62, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %212

68:                                               ; preds = %65
  %69 = and i32 %51, 10
  %70 = and i32 %69, %62
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %259

72:                                               ; preds = %68
  %73 = and i32 %51, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %201

75:                                               ; preds = %72
  %76 = and i32 %62, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %201

78:                                               ; preds = %75
  %79 = and i32 %62, 8
  %80 = icmp eq i32 %79, 0
  %81 = and i32 %51, 2
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %201

84:                                               ; preds = %78
  %85 = and i32 %51, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = icmp eq i32 %22, 0
  %89 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 false) #5, !range !8
  %90 = sub nuw nsw i32 32, %89
  %91 = select i1 %88, i32 0, i32 %90
  %92 = icmp eq i32 %91, 31
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = sub nsw i32 31, %91
  %95 = trunc i32 %91 to i16
  %96 = add nsw i16 %15, -30
  %97 = add nsw i16 %96, %95
  store i16 %97, ptr %6, align 8
  %98 = shl i32 %22, %94
  store i32 %98, ptr %23, align 4
  br label %99

99:                                               ; preds = %93, %87, %84
  %100 = phi i32 [ %98, %93 ], [ %22, %87 ], [ %22, %84 ]
  %101 = phi i16 [ %97, %93 ], [ %15, %87 ], [ %15, %84 ]
  %102 = and i32 %62, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %99
  %105 = icmp eq i32 %37, 0
  %106 = tail call i32 @llvm.ctlz.i32(i32 %37, i1 false) #5, !range !8
  %107 = sub nuw nsw i32 32, %106
  %108 = select i1 %105, i32 0, i32 %107
  %109 = icmp eq i32 %108, 31
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = sub nsw i32 31, %108
  %112 = trunc i32 %108 to i16
  %113 = add nsw i16 %30, -30
  %114 = add nsw i16 %113, %112
  store i16 %114, ptr %7, align 8
  %115 = shl i32 %37, %111
  store i32 %115, ptr %38, align 4
  br label %116

116:                                              ; preds = %110, %104, %99
  %117 = phi i32 [ %115, %110 ], [ %37, %104 ], [ %37, %99 ]
  %118 = phi i16 [ %114, %110 ], [ %30, %104 ], [ %30, %99 ]
  %119 = sub nsw i16 %101, %118
  %120 = shl i32 %117, 1
  %121 = shl i32 %100, 1
  %122 = icmp ugt i32 %120, %121
  %123 = select i1 %122, i16 126, i16 127
  %124 = add nsw i16 %119, %123
  %125 = xor i1 %122, true
  %126 = zext i1 %125 to i32
  %127 = lshr i32 %100, %126
  store i16 %124, ptr %5, align 8
  %128 = zext i32 %127 to i64
  %129 = shl nuw i64 %128, 32
  %130 = icmp eq i32 %127, 0
  br i1 %130, label %131, label %133, !prof !9

131:                                              ; preds = %116
  %132 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 2
  br label %140

133:                                              ; preds = %116
  %134 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %120, i64 %129) #7, !srcloc !10
  %135 = extractvalue { i64, i64 } %134, 1
  %136 = trunc i64 %135 to i32
  %137 = getelementptr inbounds %struct.vfp_single, ptr %5, i32 0, i32 2
  %138 = and i32 %136, 63
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %133, %131
  %141 = phi ptr [ %132, %131 ], [ %137, %133 ]
  %142 = phi i32 [ 0, %131 ], [ %136, %133 ]
  %143 = phi i64 [ 0, %131 ], [ %135, %133 ]
  %144 = zext i32 %120 to i64
  %145 = and i64 %143, 4294967295
  %146 = mul nuw i64 %145, %144
  %147 = icmp ne i64 %146, %129
  %148 = zext i1 %147 to i32
  %149 = or i32 %142, %148
  br label %150

150:                                              ; preds = %140, %133
  %151 = phi ptr [ %141, %140 ], [ %137, %133 ]
  %152 = phi i32 [ %149, %140 ], [ %136, %133 ]
  store i32 %152, ptr %151, align 4
  %153 = call i32 @__vfp_single_normaliseround(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3, i32 noundef 0)
  br label %260

154:                                              ; preds = %61
  switch i8 %18, label %164 [
    i8 -1, label %155
    i8 0, label %161
  ]

155:                                              ; preds = %154
  %156 = icmp eq i32 %22, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %155
  %158 = and i32 %22, 536870912
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, i32 48, i32 16
  br label %164

161:                                              ; preds = %154
  %162 = icmp eq i32 %22, 0
  %163 = select i1 %162, i32 3, i32 5
  br label %164

164:                                              ; preds = %161, %157, %155, %154
  %165 = phi i32 [ 8, %155 ], [ %160, %157 ], [ 1, %154 ], [ %163, %161 ]
  switch i8 %33, label %175 [
    i8 -1, label %166
    i8 0, label %172
  ]

166:                                              ; preds = %164
  %167 = icmp eq i32 %37, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %166
  %169 = and i32 %37, 536870912
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 48, i32 16
  br label %175

172:                                              ; preds = %164
  %173 = icmp eq i32 %37, 0
  %174 = select i1 %173, i32 3, i32 5
  br label %175

175:                                              ; preds = %172, %168, %166, %164
  %176 = phi i32 [ 8, %166 ], [ %171, %168 ], [ 1, %164 ], [ %174, %172 ]
  %177 = and i32 %3, 33554432
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = icmp eq i32 %165, 48
  %181 = icmp ne i32 %176, 48
  %182 = icmp eq i32 %165, 16
  %183 = select i1 %181, i1 %182, i1 false
  %184 = select i1 %180, i1 true, i1 %183
  %185 = select i1 %184, ptr %6, ptr %7
  %186 = select i1 %184, ptr %23, ptr %38
  %187 = load i32, ptr %186, align 4
  %188 = or i32 %187, 536870912
  store i32 %188, ptr %186, align 4
  br label %189

189:                                              ; preds = %179, %175
  %190 = phi ptr [ %185, %179 ], [ @vfp_single_default_qnan, %175 ]
  %191 = load i64, ptr %190, align 4
  %192 = icmp eq i32 %165, 48
  %193 = icmp eq i32 %176, 48
  %194 = select i1 %192, i1 true, i1 %193
  %195 = select i1 %194, i32 1, i32 256
  %196 = lshr i64 %191, 16
  %197 = trunc i64 %196 to i16
  %198 = trunc i64 %191 to i32
  %199 = lshr i64 %191, 32
  %200 = trunc i64 %199 to i32
  br label %201

201:                                              ; preds = %247, %189, %78, %75, %72
  %202 = phi i32 [ %200, %189 ], [ %258, %247 ], [ 0, %78 ], [ 0, %75 ], [ 0, %72 ]
  %203 = phi i32 [ %198, %189 ], [ %256, %247 ], [ 0, %78 ], [ 255, %75 ], [ 255, %72 ]
  %204 = phi i16 [ %197, %189 ], [ %255, %247 ], [ %39, %78 ], [ %39, %75 ], [ %39, %72 ]
  %205 = phi i32 [ %195, %189 ], [ %253, %247 ], [ 0, %78 ], [ 2, %75 ], [ 0, %72 ]
  %206 = zext i16 %204 to i32
  %207 = shl nuw i32 %206, 16
  %208 = shl i32 %203, 23
  %209 = add i32 %208, %207
  %210 = lshr i32 %202, 7
  %211 = add i32 %209, %210
  tail call void @vfp_put_float(i32 noundef %211, i32 noundef %0) #5
  br label %260

212:                                              ; preds = %65
  switch i8 %33, label %222 [
    i8 -1, label %213
    i8 0, label %219
  ]

213:                                              ; preds = %212
  %214 = icmp eq i32 %37, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %213
  %216 = and i32 %37, 536870912
  %217 = icmp eq i32 %216, 0
  %218 = select i1 %217, i32 48, i32 16
  br label %222

219:                                              ; preds = %212
  %220 = icmp eq i32 %37, 0
  %221 = select i1 %220, i32 3, i32 5
  br label %222

222:                                              ; preds = %219, %215, %213, %212
  %223 = phi i32 [ 8, %213 ], [ %218, %215 ], [ 1, %212 ], [ %221, %219 ]
  switch i8 %18, label %233 [
    i8 -1, label %224
    i8 0, label %230
  ]

224:                                              ; preds = %222
  %225 = icmp eq i32 %22, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %224
  %227 = and i32 %22, 536870912
  %228 = icmp eq i32 %227, 0
  %229 = select i1 %228, i32 48, i32 16
  br label %233

230:                                              ; preds = %222
  %231 = icmp eq i32 %22, 0
  %232 = select i1 %231, i32 3, i32 5
  br label %233

233:                                              ; preds = %230, %226, %224, %222
  %234 = phi i32 [ 8, %224 ], [ %229, %226 ], [ 1, %222 ], [ %232, %230 ]
  %235 = and i32 %3, 33554432
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %233
  %238 = icmp eq i32 %223, 48
  %239 = icmp ne i32 %234, 48
  %240 = icmp eq i32 %223, 16
  %241 = select i1 %239, i1 %240, i1 false
  %242 = select i1 %238, i1 true, i1 %241
  %243 = select i1 %242, ptr %7, ptr %6
  %244 = select i1 %242, ptr %38, ptr %23
  %245 = load i32, ptr %244, align 4
  %246 = or i32 %245, 536870912
  store i32 %246, ptr %244, align 4
  br label %247

247:                                              ; preds = %237, %233
  %248 = phi ptr [ %243, %237 ], [ @vfp_single_default_qnan, %233 ]
  %249 = load i64, ptr %248, align 4
  %250 = icmp eq i32 %223, 48
  %251 = icmp eq i32 %234, 48
  %252 = select i1 %250, i1 true, i1 %251
  %253 = select i1 %252, i32 1, i32 256
  %254 = lshr i64 %249, 16
  %255 = trunc i64 %254 to i16
  %256 = trunc i64 %249 to i32
  %257 = lshr i64 %249, 32
  %258 = trunc i64 %257 to i32
  br label %201

259:                                              ; preds = %68
  tail call void @vfp_put_float(i32 noundef 2143289344, i32 noundef %0) #5
  br label %260

260:                                              ; preds = %259, %201, %150
  %261 = phi i32 [ %205, %201 ], [ 1, %259 ], [ %153, %150 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %261
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vfp_single_multiply_accumulate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.vfp_single, align 8
  %7 = alloca %struct.vfp_single, align 8
  %8 = alloca %struct.vfp_single, align 8
  %9 = alloca %struct.vfp_single, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  store i64 0, ptr %6, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  store i64 0, ptr %7, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %10 = tail call i32 @vfp_get_float(i32 noundef %1) #5
  %11 = lshr i32 %10, 16
  %12 = trunc i32 %11 to i16
  %13 = and i16 %12, -32768
  %14 = getelementptr inbounds %struct.vfp_single, ptr %8, i32 0, i32 1
  store i16 %13, ptr %14, align 2
  %15 = lshr i32 %10, 23
  %16 = trunc i32 %15 to i16
  %17 = and i16 %16, 255
  store i16 %17, ptr %8, align 8
  %18 = shl i32 %10, 7
  %19 = and i32 %18, 1073741696
  %20 = trunc i32 %15 to i8
  switch i8 %20, label %21 [
    i8 0, label %23
    i8 -1, label %23
  ]

21:                                               ; preds = %5
  %22 = or i32 %19, 1073741824
  br label %23

23:                                               ; preds = %21, %5, %5
  %24 = phi i32 [ %22, %21 ], [ %19, %5 ], [ %19, %5 ]
  %25 = getelementptr inbounds %struct.vfp_single, ptr %8, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = icmp eq i16 %17, 0
  %27 = icmp ne i32 %24, 0
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 true) #5, !range !8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = add nsw i32 %30, -1
  %34 = trunc i32 %30 to i16
  %35 = sub nsw i16 2, %34
  store i16 %35, ptr %8, align 8
  %36 = shl i32 %24, %33
  store i32 %36, ptr %25, align 4
  br label %37

37:                                               ; preds = %32, %29, %23
  %38 = lshr i32 %2, 16
  %39 = trunc i32 %38 to i16
  %40 = and i16 %39, -32768
  %41 = getelementptr inbounds %struct.vfp_single, ptr %9, i32 0, i32 1
  store i16 %40, ptr %41, align 2
  %42 = lshr i32 %2, 23
  %43 = trunc i32 %42 to i16
  %44 = and i16 %43, 255
  store i16 %44, ptr %9, align 8
  %45 = shl i32 %2, 7
  %46 = and i32 %45, 1073741696
  %47 = trunc i32 %42 to i8
  switch i8 %47, label %48 [
    i8 0, label %50
    i8 -1, label %50
  ]

48:                                               ; preds = %37
  %49 = or i32 %46, 1073741824
  br label %50

50:                                               ; preds = %48, %37, %37
  %51 = phi i32 [ %49, %48 ], [ %46, %37 ], [ %46, %37 ]
  %52 = getelementptr inbounds %struct.vfp_single, ptr %9, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = icmp eq i16 %44, 0
  %54 = icmp ne i32 %51, 0
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = tail call i32 @llvm.ctlz.i32(i32 %51, i1 true) #5, !range !8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = add nsw i32 %57, -1
  %61 = trunc i32 %57 to i16
  %62 = sub nsw i16 2, %61
  store i16 %62, ptr %9, align 8
  %63 = shl i32 %51, %60
  store i32 %63, ptr %52, align 4
  br label %64

64:                                               ; preds = %59, %56, %50
  %65 = call fastcc i32 @vfp_single_multiply(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %3)
  %66 = and i32 %4, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.vfp_single, ptr %7, i32 0, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = xor i16 %70, -32768
  store i16 %71, ptr %69, align 2
  br label %72

72:                                               ; preds = %68, %64
  %73 = call i32 @vfp_get_float(i32 noundef %0) #5
  %74 = lshr i32 %73, 16
  %75 = trunc i32 %74 to i16
  %76 = and i16 %75, -32768
  store i16 %76, ptr %14, align 2
  %77 = lshr i32 %73, 23
  %78 = trunc i32 %77 to i16
  %79 = and i16 %78, 255
  store i16 %79, ptr %8, align 8
  %80 = shl i32 %73, 7
  %81 = and i32 %80, 1073741696
  %82 = trunc i32 %77 to i8
  switch i8 %82, label %83 [
    i8 0, label %85
    i8 -1, label %85
  ]

83:                                               ; preds = %72
  %84 = or i32 %81, 1073741824
  br label %85

85:                                               ; preds = %83, %72, %72
  %86 = phi i32 [ %84, %83 ], [ %81, %72 ], [ %81, %72 ]
  store i32 %86, ptr %25, align 4
  %87 = icmp eq i16 %79, 0
  %88 = icmp ne i32 %86, 0
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = call i32 @llvm.ctlz.i32(i32 %86, i1 true) #5, !range !8
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = add nsw i32 %91, -1
  %95 = trunc i32 %91 to i16
  %96 = sub nsw i16 2, %95
  store i16 %96, ptr %8, align 8
  %97 = shl i32 %86, %94
  store i32 %97, ptr %25, align 4
  br label %98

98:                                               ; preds = %93, %90, %85
  %99 = and i32 %4, 2
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = xor i16 %76, -32768
  store i16 %102, ptr %14, align 2
  br label %103

103:                                              ; preds = %101, %98
  %104 = call fastcc i32 @vfp_single_add(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %3)
  %105 = or i32 %104, %65
  %106 = call i32 @__vfp_single_normaliseround(i32 noundef %0, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %105)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vfp_single_multiply(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i16, ptr %1, align 4
  %6 = load i16, ptr %2, align 4
  %7 = icmp slt i16 %5, %6
  %8 = select i1 %7, ptr %1, ptr %2
  %9 = select i1 %7, ptr %2, ptr %1
  %10 = getelementptr inbounds %struct.vfp_single, ptr %9, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr inbounds %struct.vfp_single, ptr %8, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = xor i16 %13, %11
  %15 = getelementptr inbounds %struct.vfp_single, ptr %0, i32 0, i32 1
  store i16 %14, ptr %15, align 2
  %16 = load i16, ptr %9, align 4
  %17 = icmp eq i16 %16, 255
  br i1 %17, label %18, label %80

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.vfp_single, ptr %9, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i16, ptr %8, align 4
  %24 = icmp eq i16 %23, 255
  %25 = getelementptr inbounds %struct.vfp_single, ptr %8, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  br i1 %24, label %27, label %72

27:                                               ; preds = %22
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %72, label %33

29:                                               ; preds = %18
  %30 = and i32 %20, 536870912
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 48, i32 16
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i32 [ %32, %29 ], [ 8, %27 ]
  %35 = icmp eq ptr %8, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = load i16, ptr %8, align 4
  switch i16 %37, label %51 [
    i16 255, label %38
    i16 0, label %46
  ]

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.vfp_single, ptr %8, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = and i32 %40, 536870912
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 48, i32 16
  br label %51

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.vfp_single, ptr %8, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
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
  %62 = getelementptr inbounds %struct.vfp_single, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 536870912
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %55, %51
  %66 = phi ptr [ %61, %55 ], [ @vfp_single_default_qnan, %51 ]
  %67 = load i64, ptr %66, align 4
  store i64 %67, ptr %0, align 4
  %68 = icmp eq i32 %34, 48
  %69 = icmp eq i32 %52, 48
  %70 = select i1 %68, i1 true, i1 %69
  %71 = select i1 %70, i32 1, i32 256
  br label %100

72:                                               ; preds = %27, %22
  %73 = phi i32 [ 0, %27 ], [ %26, %22 ]
  %74 = sext i16 %23 to i32
  %75 = or i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i64 2305843009213694207, ptr %0, align 4
  br label %100

78:                                               ; preds = %72
  store i16 255, ptr %0, align 4
  %79 = getelementptr inbounds %struct.vfp_single, ptr %0, i32 0, i32 2
  store i32 0, ptr %79, align 4
  br label %100

80:                                               ; preds = %4
  %81 = load i16, ptr %8, align 4
  %82 = sext i16 %81 to i32
  %83 = getelementptr inbounds %struct.vfp_single, ptr %8, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = or i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  store i16 0, ptr %0, align 4
  %88 = getelementptr inbounds %struct.vfp_single, ptr %0, i32 0, i32 2
  store i32 0, ptr %88, align 4
  br label %100

89:                                               ; preds = %80
  %90 = add i16 %16, -125
  %91 = add i16 %90, %81
  store i16 %91, ptr %0, align 4
  %92 = getelementptr inbounds %struct.vfp_single, ptr %9, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = zext i32 %93 to i64
  %95 = load i32, ptr %83, align 4
  %96 = zext i32 %95 to i64
  %97 = mul nuw i64 %96, %94
  %98 = tail call i32 asm "cmp\09${1:Q}, #1\09\09@ vfp_hi64to32jamming\0A\09movcc\09$0, ${1:R}\0A\09orrcs\09$0, ${1:R}, #1", "=r,r,~{cc}"(i64 %97) #7, !srcloc !13
  %99 = getelementptr inbounds %struct.vfp_single, ptr %0, i32 0, i32 2
  store i32 %98, ptr %99, align 4
  br label %100

100:                                              ; preds = %89, %87, %78, %77, %65
  %101 = phi i32 [ %71, %65 ], [ 1, %77 ], [ 0, %78 ], [ 0, %87 ], [ 0, %89 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vfp_single_add(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vfp_single, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vfp_single, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.vfp_single_add) #6
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i16, ptr %1, align 4
  %16 = load i16, ptr %2, align 4
  %17 = icmp slt i16 %15, %16
  %18 = select i1 %17, ptr %1, ptr %2
  %19 = select i1 %17, ptr %2, ptr %1
  %20 = load i16, ptr %19, align 4
  %21 = icmp eq i16 %20, 255
  br i1 %21, label %22, label %104

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.vfp_single, ptr %19, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 8, i32 0
  %27 = load i16, ptr %18, align 4
  switch i16 %27, label %41 [
    i16 255, label %28
    i16 0, label %36
  ]

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.vfp_single, ptr %18, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = and i32 %30, 536870912
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 48, i32 16
  br label %41

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.vfp_single, ptr %18, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 3, i32 5
  br label %41

41:                                               ; preds = %36, %32, %28, %22
  %42 = phi i32 [ 8, %28 ], [ %35, %32 ], [ 1, %22 ], [ %40, %36 ]
  %43 = and i32 %42, %26
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.vfp_single, ptr %19, i32 0, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = getelementptr inbounds %struct.vfp_single, ptr %18, i32 0, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %47, %49
  %51 = select i1 %50, ptr %19, ptr @vfp_single_default_qnan
  %52 = xor i1 %50, true
  %53 = zext i1 %52 to i32
  br label %100

54:                                               ; preds = %41
  %55 = xor i1 %25, true
  %56 = and i32 %42, 1
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %100

59:                                               ; preds = %54
  %60 = and i32 %24, 536870912
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 48, i32 16
  %63 = select i1 %25, i32 8, i32 %62
  %64 = icmp eq ptr %18, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %59
  switch i16 %27, label %79 [
    i16 255, label %66
    i16 0, label %74
  ]

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.vfp_single, ptr %18, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = and i32 %68, 536870912
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 48, i32 16
  br label %79

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.vfp_single, ptr %18, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
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
  %90 = getelementptr inbounds %struct.vfp_single, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = or i32 %91, 536870912
  store i32 %92, ptr %90, align 4
  br label %93

93:                                               ; preds = %83, %79
  %94 = phi ptr [ %89, %83 ], [ @vfp_single_default_qnan, %79 ]
  %95 = load i64, ptr %94, align 4
  store i64 %95, ptr %0, align 4
  %96 = icmp eq i32 %63, 48
  %97 = icmp eq i32 %80, 48
  %98 = select i1 %96, i1 true, i1 %97
  %99 = select i1 %98, i32 1, i32 256
  br label %156

100:                                              ; preds = %54, %45
  %101 = phi ptr [ %51, %45 ], [ %19, %54 ]
  %102 = phi i32 [ %53, %45 ], [ 0, %54 ]
  %103 = load i64, ptr %101, align 4
  store i64 %103, ptr %0, align 4
  br label %156

104:                                              ; preds = %14
  %105 = load i64, ptr %19, align 4
  store i64 %105, ptr %0, align 4
  %106 = load i16, ptr %19, align 4
  %107 = sext i16 %106 to i32
  %108 = load i16, ptr %18, align 4
  %109 = sext i16 %108 to i32
  %110 = sub nsw i32 %107, %109
  %111 = getelementptr inbounds %struct.vfp_single, ptr %18, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i16 %106, %108
  %114 = lshr i64 %105, 16
  %115 = trunc i64 %114 to i16
  br i1 %113, label %128, label %116

116:                                              ; preds = %104
  %117 = icmp ult i32 %110, 32
  br i1 %117, label %118, label %125

118:                                              ; preds = %116
  %119 = lshr i32 %112, %110
  %120 = sub nuw nsw i32 32, %110
  %121 = shl i32 %112, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = or i32 %119, %123
  br label %128

125:                                              ; preds = %116
  %126 = icmp ne i32 %112, 0
  %127 = zext i1 %126 to i32
  br label %128

128:                                              ; preds = %125, %118, %104
  %129 = phi i32 [ %124, %118 ], [ %127, %125 ], [ %112, %104 ]
  %130 = getelementptr inbounds %struct.vfp_single, ptr %19, i32 0, i32 1
  %131 = load i16, ptr %130, align 2
  %132 = getelementptr inbounds %struct.vfp_single, ptr %18, i32 0, i32 1
  %133 = load i16, ptr %132, align 2
  %134 = icmp eq i16 %131, %133
  %135 = getelementptr inbounds %struct.vfp_single, ptr %19, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  br i1 %134, label %151, label %137

137:                                              ; preds = %128
  %138 = sub i32 %136, %129
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.vfp_single, ptr %0, i32 0, i32 1
  %142 = xor i16 %115, -32768
  store i16 %142, ptr %141, align 2
  %143 = sub i32 0, %138
  br label %153

144:                                              ; preds = %137
  %145 = icmp eq i32 %138, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %144
  %147 = and i32 %3, 12582912
  %148 = icmp eq i32 %147, 8388608
  %149 = select i1 %148, i16 -32768, i16 0
  %150 = getelementptr inbounds %struct.vfp_single, ptr %0, i32 0, i32 1
  store i16 %149, ptr %150, align 2
  br label %153

151:                                              ; preds = %128
  %152 = add i32 %136, %129
  br label %153

153:                                              ; preds = %151, %146, %144, %140
  %154 = phi i32 [ %143, %140 ], [ 0, %146 ], [ %138, %144 ], [ %152, %151 ]
  %155 = getelementptr inbounds %struct.vfp_single, ptr %0, i32 0, i32 2
  store i32 %154, ptr %155, align 4
  br label %156

156:                                              ; preds = %153, %100, %93
  %157 = phi i32 [ 0, %153 ], [ %102, %100 ], [ %99, %93 ]
  ret i32 %157
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148353375, i64 2148353655, i64 2148353989, i64 2148354323}
!11 = !{!"auto-init"}
!12 = !{i32 0, i32 257}
!13 = !{i64 948494, i64 948531, i64 948552}
