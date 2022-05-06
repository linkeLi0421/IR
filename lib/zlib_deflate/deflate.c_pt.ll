; ModuleID = '/llk/IR/lib/zlib_deflate/deflate.c_pt.bc'
source_filename = "../lib/zlib_deflate/deflate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.deflate_workspace = type { %struct.deflate_state, ptr, ptr, ptr, ptr }
%struct.deflate_state = type { ptr, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i16, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { ptr, i32, ptr }

@configuration_table = internal unnamed_addr constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zlib_deflateInit2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %78, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 6
  store ptr null, ptr %9, align 4
  %10 = icmp eq i32 %1, -1
  %11 = select i1 %10, i32 6, i32 %1
  %12 = tail call i32 @llvm.abs.i32(i32 %3, i1 false)
  %13 = add i32 %4, -9
  %14 = icmp ult i32 %13, -8
  %15 = icmp ne i32 %2, 8
  %16 = or i1 %15, %14
  %17 = add i32 %12, -16
  %18 = icmp ult i32 %17, -7
  %19 = or i1 %18, %16
  %20 = icmp ugt i32 %11, 9
  %21 = or i1 %20, %19
  %22 = icmp ugt i32 %5, 2
  %23 = or i1 %22, %21
  br i1 %23, label %78, label %24

24:                                               ; preds = %8
  %25 = lshr i32 %3, 31
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 5836
  %29 = getelementptr inbounds %struct.deflate_workspace, ptr %27, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = shl nuw nsw i32 1, %12
  %31 = shl nuw nsw i32 %30, 1
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = getelementptr inbounds %struct.deflate_workspace, ptr %27, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = getelementptr i8, ptr %32, i32 %31
  %35 = getelementptr inbounds %struct.deflate_workspace, ptr %27, i32 0, i32 3
  store ptr %34, ptr %35, align 4
  %36 = add nuw nsw i32 %4, 7
  %37 = shl nuw nsw i32 128, %4
  %38 = shl nuw nsw i32 %37, 1
  %39 = getelementptr i8, ptr %34, i32 %38
  %40 = getelementptr inbounds %struct.deflate_workspace, ptr %27, i32 0, i32 4
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  store ptr %27, ptr %41, align 4
  store ptr %0, ptr %27, align 4
  %42 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 6
  store i32 %25, ptr %42, align 4
  %43 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 11
  store i32 %12, ptr %43, align 4
  %44 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 10
  store i32 %30, ptr %44, align 4
  %45 = add nsw i32 %30, -1
  %46 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 12
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 19
  store i32 %36, ptr %47, align 4
  %48 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 18
  store i32 %37, ptr %48, align 4
  %49 = add nsw i32 %37, -1
  %50 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 20
  store i32 %49, ptr %50, align 4
  %51 = trunc i32 %4 to i8
  %52 = add nuw nsw i8 %51, 9
  %53 = udiv i8 %52, 3
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 21
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %29, align 4
  %57 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 13
  store ptr %56, ptr %57, align 4
  %58 = load ptr, ptr %33, align 4
  %59 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 15
  store ptr %58, ptr %59, align 4
  %60 = load ptr, ptr %35, align 4
  %61 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 16
  store ptr %60, ptr %61, align 4
  %62 = shl nuw nsw i32 64, %4
  %63 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 48
  store i32 %62, ptr %63, align 4
  %64 = load ptr, ptr %40, align 4
  %65 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 2
  store ptr %64, ptr %65, align 4
  %66 = shl nuw nsw i32 %62, 2
  %67 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 3
  store i32 %66, ptr %67, align 4
  %68 = lshr exact i32 %62, 1
  %69 = getelementptr i16, ptr %64, i32 %68
  %70 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 50
  store ptr %69, ptr %70, align 4
  %71 = mul nuw nsw i32 %62, 3
  %72 = getelementptr i8, ptr %64, i32 %71
  %73 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 47
  store ptr %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 32
  store i32 %11, ptr %74, align 4
  %75 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 33
  store i32 %5, ptr %75, align 4
  %76 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 8
  store i8 8, ptr %76, align 1
  %77 = tail call i32 @zlib_deflateReset(ptr noundef nonnull %0)
  br label %78

78:                                               ; preds = %24, %8, %6
  %79 = phi i32 [ %77, %24 ], [ -2, %6 ], [ -2, %8 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zlib_deflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %67, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %67, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 6
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 9
  store i32 2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 4
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store i32 0, ptr %16, align 4
  br label %22

20:                                               ; preds = %7
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20, %19
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ 42, %22 ], [ 113, %20 ]
  %25 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 10
  store i32 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 9
  store i32 0, ptr %27, align 4
  tail call void @zlib_tr_init(ptr noundef nonnull %5) #10
  %28 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 1
  %31 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 14
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 16
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 18
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  %37 = getelementptr i16, ptr %33, i32 %36
  store i16 0, ptr %37, align 2
  %38 = load ptr, ptr %32, align 4
  %39 = load i32, ptr %34, align 4
  %40 = shl i32 %39, 1
  %41 = add i32 %40, -2
  tail call void @llvm.memset.p0.i32(ptr align 1 %38, i8 0, i32 %41, i1 false) #10
  %42 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 32
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr [10 x %struct.config_s], ptr @configuration_table, i32 0, i32 %43, i32 1
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 31
  store i32 %46, ptr %47, align 4
  %48 = getelementptr [10 x %struct.config_s], ptr @configuration_table, i32 0, i32 %43
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 34
  store i32 %50, ptr %51, align 4
  %52 = getelementptr [10 x %struct.config_s], ptr @configuration_table, i32 0, i32 %43, i32 2
  %53 = load i16, ptr %52, align 4
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 35
  store i32 %54, ptr %55, align 4
  %56 = getelementptr [10 x %struct.config_s], ptr @configuration_table, i32 0, i32 %43, i32 3
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 30
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 26
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 22
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 28
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 29
  store i32 2, ptr %63, align 4
  %64 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 23
  store i32 2, ptr %64, align 4
  %65 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 25
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 17
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %23, %3, %1
  %68 = phi i32 [ 0, %23 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zlib_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zlib_deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %232, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt i32 %1, 5
  %9 = or i1 %8, %7
  br i1 %9, label %232, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %232

17:                                               ; preds = %13, %10
  %18 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 666
  %21 = icmp ne i32 %1, 5
  %22 = and i1 %21, %20
  br i1 %22, label %232, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %232, label %27

27:                                               ; preds = %23
  store ptr %0, ptr %6, align 4
  %28 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  store i32 %1, ptr %28, align 4
  %30 = icmp eq i32 %19, 42
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %33, 12
  %35 = add i32 %34, -30720
  %36 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 32
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  %39 = ashr i32 %38, 1
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 3)
  %41 = shl nuw nsw i32 %40, 6
  %42 = or i32 %41, %35
  %43 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 26
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = or i32 %42, 32
  %47 = select i1 %45, i32 %42, i32 %46
  %48 = urem i32 %47, 31
  %49 = or i32 %48, %47
  store i32 113, ptr %18, align 4
  %50 = lshr i32 %47, 8
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = getelementptr i8, ptr %53, i32 %55
  store i8 %51, ptr %57, align 1
  %58 = trunc i32 %49 to i8
  %59 = xor i8 %58, 31
  %60 = load ptr, ptr %52, align 4
  %61 = load i32, ptr %54, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %54, align 4
  %63 = getelementptr i8, ptr %60, i32 %61
  store i8 %59, ptr %63, align 1
  %64 = load i32, ptr %43, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %31
  %67 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 10
  %68 = load i32, ptr %67, align 4
  %69 = lshr i32 %68, 16
  %70 = lshr i32 %68, 24
  %71 = trunc i32 %70 to i8
  %72 = load ptr, ptr %52, align 4
  %73 = load i32, ptr %54, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %54, align 4
  %75 = getelementptr i8, ptr %72, i32 %73
  store i8 %71, ptr %75, align 1
  %76 = trunc i32 %69 to i8
  %77 = load ptr, ptr %52, align 4
  %78 = load i32, ptr %54, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %54, align 4
  %80 = getelementptr i8, ptr %77, i32 %78
  store i8 %76, ptr %80, align 1
  %81 = load i32, ptr %67, align 4
  %82 = lshr i32 %81, 8
  %83 = trunc i32 %82 to i8
  %84 = load ptr, ptr %52, align 4
  %85 = load i32, ptr %54, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %54, align 4
  %87 = getelementptr i8, ptr %84, i32 %85
  store i8 %83, ptr %87, align 1
  %88 = trunc i32 %81 to i8
  %89 = load ptr, ptr %52, align 4
  %90 = load i32, ptr %54, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %54, align 4
  %92 = getelementptr i8, ptr %89, i32 %90
  store i8 %88, ptr %92, align 1
  br label %93

93:                                               ; preds = %66, %31
  %94 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 10
  store i32 1, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %27
  %96 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %136, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr inbounds %struct.deflate_state, ptr %100, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %24, align 4
  %104 = tail call i32 @llvm.umin.i32(i32 %102, i32 %103) #10
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %132, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.deflate_state, ptr %100, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %108, ptr align 1 %112, i32 %104, i1 false) #10
  %113 = load ptr, ptr %107, align 4
  %114 = getelementptr i8, ptr %113, i32 %104
  store ptr %114, ptr %107, align 4
  br label %115

115:                                              ; preds = %110, %106
  %116 = getelementptr inbounds %struct.deflate_state, ptr %100, i32 0, i32 4
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 %104
  store ptr %118, ptr %116, align 4
  %119 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, %104
  store i32 %121, ptr %119, align 4
  %122 = load i32, ptr %24, align 4
  %123 = sub i32 %122, %104
  store i32 %123, ptr %24, align 4
  %124 = load i32, ptr %101, align 4
  %125 = sub i32 %124, %104
  store i32 %125, ptr %101, align 4
  %126 = icmp eq i32 %124, %104
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.deflate_state, ptr %100, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  store ptr %129, ptr %116, align 4
  br label %130

130:                                              ; preds = %127, %115
  %131 = load i32, ptr %24, align 4
  br label %132

132:                                              ; preds = %130, %99
  %133 = phi i32 [ %131, %130 ], [ %103, %99 ]
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  store i32 -1, ptr %28, align 4
  br label %232

136:                                              ; preds = %95
  %137 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  %140 = icmp sge i32 %29, %1
  %141 = and i1 %21, %140
  %142 = select i1 %139, i1 %141, i1 false
  br i1 %142, label %232, label %143

143:                                              ; preds = %136, %132
  %144 = load i32, ptr %18, align 4
  %145 = icmp eq i32 %144, 666
  %146 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %145, label %149, label %150

149:                                              ; preds = %143
  br i1 %148, label %151, label %232

150:                                              ; preds = %143
  br i1 %148, label %151, label %158

151:                                              ; preds = %150, %149
  %152 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 28
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  %155 = icmp eq i32 %1, 0
  %156 = select i1 %155, i1 true, i1 %145
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %196, label %158

158:                                              ; preds = %151, %150
  %159 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 32
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr [10 x %struct.config_s], ptr @configuration_table, i32 0, i32 %160, i32 4
  %162 = load ptr, ptr %161, align 4
  %163 = tail call i32 %162(ptr noundef nonnull %6, i32 noundef %1) #10
  %164 = and i32 %163, -2
  %165 = icmp eq i32 %164, 2
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  store i32 666, ptr %18, align 4
  br label %167

167:                                              ; preds = %166, %158
  %168 = and i32 %163, -3
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, ptr %24, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %232

173:                                              ; preds = %170
  store i32 -1, ptr %28, align 4
  br label %232

174:                                              ; preds = %167
  %175 = icmp eq i32 %163, 1
  br i1 %175, label %176, label %196

176:                                              ; preds = %174
  switch i32 %1, label %179 [
    i32 1, label %177
    i32 2, label %178
  ]

177:                                              ; preds = %176
  tail call void @zlib_tr_align(ptr noundef nonnull %6) #10
  br label %192

178:                                              ; preds = %176
  tail call void @zlib_tr_stored_type_only(ptr noundef nonnull %6) #10
  br label %192

179:                                              ; preds = %176
  tail call void @zlib_tr_stored_block(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %180 = icmp eq i32 %1, 4
  br i1 %180, label %181, label %192

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 16
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 18
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, -1
  %187 = getelementptr i16, ptr %183, i32 %186
  store i16 0, ptr %187, align 2
  %188 = load ptr, ptr %182, align 4
  %189 = load i32, ptr %184, align 4
  %190 = shl i32 %189, 1
  %191 = add i32 %190, -2
  tail call void @llvm.memset.p0.i32(ptr align 1 %188, i8 0, i32 %191, i1 false)
  br label %192

192:                                              ; preds = %181, %179, %178, %177
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %193 = load i32, ptr %24, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i32 -1, ptr %28, align 4
  br label %232

196:                                              ; preds = %192, %174, %151
  br i1 %21, label %232, label %197

197:                                              ; preds = %196
  %198 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 6
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %232

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 10
  %203 = load i32, ptr %202, align 4
  %204 = lshr i32 %203, 16
  %205 = lshr i32 %203, 24
  %206 = trunc i32 %205 to i8
  %207 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 2
  %208 = load ptr, ptr %207, align 4
  %209 = load i32, ptr %96, align 4
  %210 = add i32 %209, 1
  store i32 %210, ptr %96, align 4
  %211 = getelementptr i8, ptr %208, i32 %209
  store i8 %206, ptr %211, align 1
  %212 = trunc i32 %204 to i8
  %213 = load ptr, ptr %207, align 4
  %214 = load i32, ptr %96, align 4
  %215 = add i32 %214, 1
  store i32 %215, ptr %96, align 4
  %216 = getelementptr i8, ptr %213, i32 %214
  store i8 %212, ptr %216, align 1
  %217 = load i32, ptr %202, align 4
  %218 = lshr i32 %217, 8
  %219 = trunc i32 %218 to i8
  %220 = load ptr, ptr %207, align 4
  %221 = load i32, ptr %96, align 4
  %222 = add i32 %221, 1
  store i32 %222, ptr %96, align 4
  %223 = getelementptr i8, ptr %220, i32 %221
  store i8 %219, ptr %223, align 1
  %224 = trunc i32 %217 to i8
  %225 = load ptr, ptr %207, align 4
  %226 = load i32, ptr %96, align 4
  %227 = add i32 %226, 1
  store i32 %227, ptr %96, align 4
  %228 = getelementptr i8, ptr %225, i32 %226
  store i8 %224, ptr %228, align 1
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  store i32 -1, ptr %198, align 4
  %229 = load i32, ptr %96, align 4
  %230 = icmp eq i32 %229, 0
  %231 = zext i1 %230 to i32
  br label %232

232:                                              ; preds = %201, %197, %196, %195, %173, %170, %149, %136, %135, %23, %17, %13, %4, %2
  %233 = phi i32 [ 0, %135 ], [ %231, %201 ], [ -2, %4 ], [ -2, %2 ], [ -2, %17 ], [ -2, %13 ], [ -5, %23 ], [ -5, %136 ], [ -5, %149 ], [ 0, %195 ], [ 0, %173 ], [ 0, %196 ], [ 1, %197 ], [ 0, %170 ]
  ret i32 %233
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @flush_pending(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %12, ptr align 1 %16, i32 %8, i1 false)
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr i8, ptr %17, i32 %8
  store ptr %18, ptr %11, align 4
  br label %19

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %8
  store ptr %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %8
  store i32 %25, ptr %23, align 4
  %26 = load i32, ptr %6, align 4
  %27 = sub i32 %26, %8
  store i32 %27, ptr %6, align 4
  %28 = load i32, ptr %4, align 4
  %29 = sub i32 %28, %8
  store i32 %29, ptr %4, align 4
  %30 = icmp eq i32 %28, %8
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  store ptr %33, ptr %20, align 4
  br label %34

34:                                               ; preds = %31, %19, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zlib_tr_align(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zlib_tr_stored_type_only(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zlib_tr_stored_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_deflateEnd(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %13 [
    i32 666, label %10
    i32 113, label %10
    i32 42, label %10
  ]

10:                                               ; preds = %7, %7, %7
  store ptr null, ptr %4, align 4
  %11 = icmp eq i32 %9, 113
  %12 = select i1 %11, i32 -3, i32 0
  br label %13

13:                                               ; preds = %10, %7, %3, %1
  %14 = phi i32 [ %12, %10 ], [ -2, %3 ], [ -2, %1 ], [ -2, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zlib_deflate_workspacesize(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.abs.i32(i32 %0, i1 false)
  %4 = add i32 %1, -9
  %5 = icmp ult i32 %4, -8
  %6 = add i32 %3, -16
  %7 = icmp ult i32 %6, -7
  %8 = or i1 %7, %5
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/zlib_deflate/deflate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1134, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

10:                                               ; preds = %2
  %11 = shl nuw nsw i32 4, %3
  %12 = add nuw nsw i32 %11, 5836
  %13 = shl nuw nsw i32 512, %1
  %14 = add nuw nsw i32 %12, %13
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_deflate_dfltcc_enabled() local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -5
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 65535)
  %7 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 28
  %8 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 26
  %9 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 22
  %10 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 13
  %11 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 10
  br label %12

12:                                               ; preds = %135, %2
  %13 = load i32, ptr %7, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  tail call fastcc void @fill_window(ptr noundef %0)
  %16 = load i32, ptr %7, align 4
  %17 = or i32 %16, %1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %192, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %136, label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %16, %19 ], [ %13, %12 ]
  %23 = load i32, ptr %8, align 4
  %24 = add i32 %23, %22
  store i32 %24, ptr %8, align 4
  store i32 0, ptr %7, align 4
  %25 = load i32, ptr %9, align 4
  %26 = add i32 %25, %6
  %27 = icmp ne i32 %24, 0
  %28 = icmp ult i32 %24, %26
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %81, label %30

30:                                               ; preds = %21
  %31 = sub i32 %24, %26
  store i32 %31, ptr %7, align 4
  store i32 %26, ptr %8, align 4
  %32 = icmp sgt i32 %25, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr i8, ptr %34, i32 %25
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ %35, %33 ], [ null, %30 ]
  %38 = tail call i32 @zlib_tr_flush_block(ptr noundef %0, ptr noundef %37, i32 noundef %6, i32 noundef 0) #10
  %39 = load i32, ptr %8, align 4
  store i32 %39, ptr %9, align 4
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.deflate_state, ptr %42, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %44, i32 %46) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.deflate_state, ptr %42, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %51, ptr align 1 %55, i32 %47, i1 false) #10
  %56 = load ptr, ptr %50, align 4
  %57 = getelementptr i8, ptr %56, i32 %47
  store ptr %57, ptr %50, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = getelementptr inbounds %struct.deflate_state, ptr %42, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 %47
  store ptr %61, ptr %59, align 4
  %62 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %47
  store i32 %64, ptr %62, align 4
  %65 = load i32, ptr %45, align 4
  %66 = sub i32 %65, %47
  store i32 %66, ptr %45, align 4
  %67 = load i32, ptr %43, align 4
  %68 = sub i32 %67, %47
  store i32 %68, ptr %43, align 4
  %69 = icmp eq i32 %67, %47
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.deflate_state, ptr %42, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  store ptr %72, ptr %59, align 4
  br label %73

73:                                               ; preds = %70, %58, %36
  %74 = load ptr, ptr %0, align 4
  %75 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %192, label %78

78:                                               ; preds = %73
  %79 = load i32, ptr %9, align 4
  %80 = load i32, ptr %8, align 4
  br label %81

81:                                               ; preds = %78, %21
  %82 = phi i32 [ %80, %78 ], [ %24, %21 ]
  %83 = phi i32 [ %79, %78 ], [ %25, %21 ]
  %84 = sub i32 %82, %83
  %85 = load i32, ptr %11, align 4
  %86 = add i32 %85, -262
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %135, label %88

88:                                               ; preds = %81
  %89 = icmp sgt i32 %83, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load ptr, ptr %10, align 4
  %92 = getelementptr i8, ptr %91, i32 %83
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi ptr [ %92, %90 ], [ null, %88 ]
  %95 = tail call i32 @zlib_tr_flush_block(ptr noundef %0, ptr noundef %94, i32 noundef %84, i32 noundef 0) #10
  %96 = load i32, ptr %8, align 4
  store i32 %96, ptr %9, align 4
  %97 = load ptr, ptr %0, align 4
  %98 = getelementptr inbounds %struct.z_stream_s, ptr %97, i32 0, i32 7
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.deflate_state, ptr %99, i32 0, i32 5
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.z_stream_s, ptr %97, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = tail call i32 @llvm.umin.i32(i32 %101, i32 %103) #10
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %93
  %107 = getelementptr inbounds %struct.z_stream_s, ptr %97, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.deflate_state, ptr %99, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %108, ptr align 1 %112, i32 %104, i1 false) #10
  %113 = load ptr, ptr %107, align 4
  %114 = getelementptr i8, ptr %113, i32 %104
  store ptr %114, ptr %107, align 4
  br label %115

115:                                              ; preds = %110, %106
  %116 = getelementptr inbounds %struct.deflate_state, ptr %99, i32 0, i32 4
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 %104
  store ptr %118, ptr %116, align 4
  %119 = getelementptr inbounds %struct.z_stream_s, ptr %97, i32 0, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, %104
  store i32 %121, ptr %119, align 4
  %122 = load i32, ptr %102, align 4
  %123 = sub i32 %122, %104
  store i32 %123, ptr %102, align 4
  %124 = load i32, ptr %100, align 4
  %125 = sub i32 %124, %104
  store i32 %125, ptr %100, align 4
  %126 = icmp eq i32 %124, %104
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.deflate_state, ptr %99, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  store ptr %129, ptr %116, align 4
  br label %130

130:                                              ; preds = %127, %115, %93
  %131 = load ptr, ptr %0, align 4
  %132 = getelementptr inbounds %struct.z_stream_s, ptr %131, i32 0, i32 4
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %192, label %135

135:                                              ; preds = %130, %81
  br label %12

136:                                              ; preds = %19
  %137 = load i32, ptr %9, align 4
  %138 = icmp sgt i32 %137, -1
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load ptr, ptr %10, align 4
  %141 = getelementptr i8, ptr %140, i32 %137
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi ptr [ %141, %139 ], [ null, %136 ]
  %144 = load i32, ptr %8, align 4
  %145 = sub i32 %144, %137
  %146 = icmp eq i32 %1, 5
  %147 = zext i1 %146 to i32
  %148 = tail call i32 @zlib_tr_flush_block(ptr noundef %0, ptr noundef %143, i32 noundef %145, i32 noundef %147) #10
  %149 = load i32, ptr %8, align 4
  store i32 %149, ptr %9, align 4
  %150 = load ptr, ptr %0, align 4
  %151 = getelementptr inbounds %struct.z_stream_s, ptr %150, i32 0, i32 7
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.deflate_state, ptr %152, i32 0, i32 5
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.z_stream_s, ptr %150, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = tail call i32 @llvm.umin.i32(i32 %154, i32 %156) #10
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %183, label %159

159:                                              ; preds = %142
  %160 = getelementptr inbounds %struct.z_stream_s, ptr %150, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.deflate_state, ptr %152, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %161, ptr align 1 %165, i32 %157, i1 false) #10
  %166 = load ptr, ptr %160, align 4
  %167 = getelementptr i8, ptr %166, i32 %157
  store ptr %167, ptr %160, align 4
  br label %168

168:                                              ; preds = %163, %159
  %169 = getelementptr inbounds %struct.deflate_state, ptr %152, i32 0, i32 4
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr i8, ptr %170, i32 %157
  store ptr %171, ptr %169, align 4
  %172 = getelementptr inbounds %struct.z_stream_s, ptr %150, i32 0, i32 5
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, %157
  store i32 %174, ptr %172, align 4
  %175 = load i32, ptr %155, align 4
  %176 = sub i32 %175, %157
  store i32 %176, ptr %155, align 4
  %177 = load i32, ptr %153, align 4
  %178 = sub i32 %177, %157
  store i32 %178, ptr %153, align 4
  %179 = icmp eq i32 %177, %157
  br i1 %179, label %180, label %183

180:                                              ; preds = %168
  %181 = getelementptr inbounds %struct.deflate_state, ptr %152, i32 0, i32 2
  %182 = load ptr, ptr %181, align 4
  store ptr %182, ptr %169, align 4
  br label %183

183:                                              ; preds = %180, %168, %142
  %184 = load ptr, ptr %0, align 4
  %185 = getelementptr inbounds %struct.z_stream_s, ptr %184, i32 0, i32 4
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = select i1 %146, i32 2, i32 0
  br label %192

190:                                              ; preds = %183
  %191 = select i1 %146, i32 3, i32 1
  br label %192

192:                                              ; preds = %190, %188, %130, %73, %15
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ], [ 0, %15 ], [ 0, %73 ], [ 0, %130 ]
  ret i32 %193
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 28
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 17
  %6 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 21
  %7 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 13
  %8 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 26
  %9 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 20
  %10 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 16
  %11 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 15
  %12 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 12
  %13 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 10
  %14 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 33
  %15 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 23
  %16 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 27
  %17 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 31
  %18 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 22
  br label %19

19:                                               ; preds = %205, %2
  %20 = phi i32 [ 0, %2 ], [ %153, %205 ]
  %21 = load i32, ptr %3, align 4
  %22 = icmp ult i32 %21, 262
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  tail call fastcc void @fill_window(ptr noundef %0)
  %24 = load i32, ptr %3, align 4
  %25 = icmp ult i32 %24, 262
  %26 = and i1 %4, %25
  br i1 %26, label %262, label %27

27:                                               ; preds = %23
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %206, label %29

29:                                               ; preds = %27
  %30 = icmp ugt i32 %24, 2
  br i1 %30, label %31, label %57

31:                                               ; preds = %29, %19
  %32 = load i32, ptr %5, align 4
  %33 = load i32, ptr %6, align 4
  %34 = shl i32 %32, %33
  %35 = load ptr, ptr %7, align 4
  %36 = load i32, ptr %8, align 4
  %37 = add i32 %36, 2
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = xor i32 %34, %40
  %42 = load i32, ptr %9, align 4
  %43 = and i32 %41, %42
  store i32 %43, ptr %5, align 4
  %44 = load ptr, ptr %10, align 4
  %45 = getelementptr i16, ptr %44, i32 %43
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = load ptr, ptr %11, align 4
  %49 = load i32, ptr %12, align 4
  %50 = and i32 %49, %36
  %51 = getelementptr i16, ptr %48, i32 %50
  store i16 %46, ptr %51, align 2
  %52 = load i32, ptr %8, align 4
  %53 = trunc i32 %52 to i16
  %54 = load ptr, ptr %10, align 4
  %55 = load i32, ptr %5, align 4
  %56 = getelementptr i16, ptr %54, i32 %55
  store i16 %53, ptr %56, align 2
  br label %57

57:                                               ; preds = %31, %29
  %58 = phi i32 [ %47, %31 ], [ %20, %29 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %8, align 4
  %62 = sub i32 %61, %58
  %63 = load i32, ptr %13, align 4
  %64 = add i32 %63, -262
  %65 = icmp ugt i32 %62, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr %14, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @longest_match(ptr noundef %0, i32 noundef %58)
  store i32 %70, ptr %15, align 4
  br label %73

71:                                               ; preds = %66, %60, %57
  %72 = load i32, ptr %15, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %72, %71 ], [ %70, %69 ]
  %75 = icmp ugt i32 %74, 2
  br i1 %75, label %76, label %140

76:                                               ; preds = %73
  %77 = load i32, ptr %8, align 4
  %78 = load i32, ptr %16, align 4
  %79 = sub i32 %77, %78
  %80 = add i32 %74, -3
  %81 = tail call i32 @zlib_tr_tally(ptr noundef %0, i32 noundef %79, i32 noundef %80) #10
  %82 = load i32, ptr %15, align 4
  %83 = load i32, ptr %3, align 4
  %84 = sub i32 %83, %82
  store i32 %84, ptr %3, align 4
  %85 = load i32, ptr %17, align 4
  %86 = icmp ule i32 %82, %85
  %87 = icmp ugt i32 %84, 2
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %124

89:                                               ; preds = %76
  %90 = add i32 %82, -1
  store i32 %90, ptr %15, align 4
  br label %91

91:                                               ; preds = %91, %89
  %92 = load i32, ptr %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %8, align 4
  %94 = load i32, ptr %5, align 4
  %95 = load i32, ptr %6, align 4
  %96 = shl i32 %94, %95
  %97 = load ptr, ptr %7, align 4
  %98 = add i32 %92, 3
  %99 = getelementptr i8, ptr %97, i32 %98
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = xor i32 %96, %101
  %103 = load i32, ptr %9, align 4
  %104 = and i32 %102, %103
  store i32 %104, ptr %5, align 4
  %105 = load ptr, ptr %10, align 4
  %106 = getelementptr i16, ptr %105, i32 %104
  %107 = load i16, ptr %106, align 2
  %108 = load ptr, ptr %11, align 4
  %109 = load i32, ptr %12, align 4
  %110 = and i32 %109, %93
  %111 = getelementptr i16, ptr %108, i32 %110
  store i16 %107, ptr %111, align 2
  %112 = load i32, ptr %8, align 4
  %113 = trunc i32 %112 to i16
  %114 = load ptr, ptr %10, align 4
  %115 = load i32, ptr %5, align 4
  %116 = getelementptr i16, ptr %114, i32 %115
  store i16 %113, ptr %116, align 2
  %117 = load i32, ptr %15, align 4
  %118 = add i32 %117, -1
  store i32 %118, ptr %15, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %91

120:                                              ; preds = %91
  %121 = zext i16 %107 to i32
  %122 = load i32, ptr %8, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %8, align 4
  br label %151

124:                                              ; preds = %76
  %125 = load i32, ptr %8, align 4
  %126 = add i32 %125, %82
  store i32 %126, ptr %8, align 4
  store i32 0, ptr %15, align 4
  %127 = load ptr, ptr %7, align 4
  %128 = getelementptr i8, ptr %127, i32 %126
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  store i32 %130, ptr %5, align 4
  %131 = load i32, ptr %6, align 4
  %132 = shl i32 %130, %131
  %133 = add i32 %126, 1
  %134 = getelementptr i8, ptr %127, i32 %133
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = xor i32 %132, %136
  %138 = load i32, ptr %9, align 4
  %139 = and i32 %137, %138
  store i32 %139, ptr %5, align 4
  br label %151

140:                                              ; preds = %73
  %141 = load ptr, ptr %7, align 4
  %142 = load i32, ptr %8, align 4
  %143 = getelementptr i8, ptr %141, i32 %142
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = tail call i32 @zlib_tr_tally(ptr noundef %0, i32 noundef 0, i32 noundef %145) #10
  %147 = load i32, ptr %3, align 4
  %148 = add i32 %147, -1
  store i32 %148, ptr %3, align 4
  %149 = load i32, ptr %8, align 4
  %150 = add i32 %149, 1
  store i32 %150, ptr %8, align 4
  br label %151

151:                                              ; preds = %140, %124, %120
  %152 = phi i32 [ %123, %120 ], [ %126, %124 ], [ %150, %140 ]
  %153 = phi i32 [ %121, %120 ], [ %58, %124 ], [ %58, %140 ]
  %154 = phi i32 [ %81, %120 ], [ %81, %124 ], [ %146, %140 ]
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %205, label %156

156:                                              ; preds = %151
  %157 = load i32, ptr %18, align 4
  %158 = icmp sgt i32 %157, -1
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load ptr, ptr %7, align 4
  %161 = getelementptr i8, ptr %160, i32 %157
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi ptr [ %161, %159 ], [ null, %156 ]
  %164 = sub i32 %152, %157
  %165 = tail call i32 @zlib_tr_flush_block(ptr noundef %0, ptr noundef %163, i32 noundef %164, i32 noundef 0) #10
  %166 = load i32, ptr %8, align 4
  store i32 %166, ptr %18, align 4
  %167 = load ptr, ptr %0, align 4
  %168 = getelementptr inbounds %struct.z_stream_s, ptr %167, i32 0, i32 7
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.deflate_state, ptr %169, i32 0, i32 5
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.z_stream_s, ptr %167, i32 0, i32 4
  %173 = load i32, ptr %172, align 4
  %174 = tail call i32 @llvm.umin.i32(i32 %171, i32 %173) #10
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %200, label %176

176:                                              ; preds = %162
  %177 = getelementptr inbounds %struct.z_stream_s, ptr %167, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.deflate_state, ptr %169, i32 0, i32 4
  %182 = load ptr, ptr %181, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %178, ptr align 1 %182, i32 %174, i1 false) #10
  %183 = load ptr, ptr %177, align 4
  %184 = getelementptr i8, ptr %183, i32 %174
  store ptr %184, ptr %177, align 4
  br label %185

185:                                              ; preds = %180, %176
  %186 = getelementptr inbounds %struct.deflate_state, ptr %169, i32 0, i32 4
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr i8, ptr %187, i32 %174
  store ptr %188, ptr %186, align 4
  %189 = getelementptr inbounds %struct.z_stream_s, ptr %167, i32 0, i32 5
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, %174
  store i32 %191, ptr %189, align 4
  %192 = load i32, ptr %172, align 4
  %193 = sub i32 %192, %174
  store i32 %193, ptr %172, align 4
  %194 = load i32, ptr %170, align 4
  %195 = sub i32 %194, %174
  store i32 %195, ptr %170, align 4
  %196 = icmp eq i32 %194, %174
  br i1 %196, label %197, label %200

197:                                              ; preds = %185
  %198 = getelementptr inbounds %struct.deflate_state, ptr %169, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  store ptr %199, ptr %186, align 4
  br label %200

200:                                              ; preds = %197, %185, %162
  %201 = load ptr, ptr %0, align 4
  %202 = getelementptr inbounds %struct.z_stream_s, ptr %201, i32 0, i32 4
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %262, label %205

205:                                              ; preds = %200, %151
  br label %19

206:                                              ; preds = %27
  %207 = load i32, ptr %18, align 4
  %208 = icmp sgt i32 %207, -1
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load ptr, ptr %7, align 4
  %211 = getelementptr i8, ptr %210, i32 %207
  br label %212

212:                                              ; preds = %209, %206
  %213 = phi ptr [ %211, %209 ], [ null, %206 ]
  %214 = load i32, ptr %8, align 4
  %215 = sub i32 %214, %207
  %216 = icmp eq i32 %1, 5
  %217 = zext i1 %216 to i32
  %218 = tail call i32 @zlib_tr_flush_block(ptr noundef %0, ptr noundef %213, i32 noundef %215, i32 noundef %217) #10
  %219 = load i32, ptr %8, align 4
  store i32 %219, ptr %18, align 4
  %220 = load ptr, ptr %0, align 4
  %221 = getelementptr inbounds %struct.z_stream_s, ptr %220, i32 0, i32 7
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.deflate_state, ptr %222, i32 0, i32 5
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr inbounds %struct.z_stream_s, ptr %220, i32 0, i32 4
  %226 = load i32, ptr %225, align 4
  %227 = tail call i32 @llvm.umin.i32(i32 %224, i32 %226) #10
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %253, label %229

229:                                              ; preds = %212
  %230 = getelementptr inbounds %struct.z_stream_s, ptr %220, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.deflate_state, ptr %222, i32 0, i32 4
  %235 = load ptr, ptr %234, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %231, ptr align 1 %235, i32 %227, i1 false) #10
  %236 = load ptr, ptr %230, align 4
  %237 = getelementptr i8, ptr %236, i32 %227
  store ptr %237, ptr %230, align 4
  br label %238

238:                                              ; preds = %233, %229
  %239 = getelementptr inbounds %struct.deflate_state, ptr %222, i32 0, i32 4
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr i8, ptr %240, i32 %227
  store ptr %241, ptr %239, align 4
  %242 = getelementptr inbounds %struct.z_stream_s, ptr %220, i32 0, i32 5
  %243 = load i32, ptr %242, align 4
  %244 = add i32 %243, %227
  store i32 %244, ptr %242, align 4
  %245 = load i32, ptr %225, align 4
  %246 = sub i32 %245, %227
  store i32 %246, ptr %225, align 4
  %247 = load i32, ptr %223, align 4
  %248 = sub i32 %247, %227
  store i32 %248, ptr %223, align 4
  %249 = icmp eq i32 %247, %227
  br i1 %249, label %250, label %253

250:                                              ; preds = %238
  %251 = getelementptr inbounds %struct.deflate_state, ptr %222, i32 0, i32 2
  %252 = load ptr, ptr %251, align 4
  store ptr %252, ptr %239, align 4
  br label %253

253:                                              ; preds = %250, %238, %212
  %254 = load ptr, ptr %0, align 4
  %255 = getelementptr inbounds %struct.z_stream_s, ptr %254, i32 0, i32 4
  %256 = load i32, ptr %255, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = select i1 %216, i32 2, i32 0
  br label %262

260:                                              ; preds = %253
  %261 = select i1 %216, i32 3, i32 1
  br label %262

262:                                              ; preds = %260, %258, %200, %23
  %263 = phi i32 [ %259, %258 ], [ %261, %260 ], [ 0, %23 ], [ 0, %200 ]
  ret i32 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 28
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 17
  %6 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 21
  %7 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 13
  %8 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 26
  %9 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 20
  %10 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 16
  %11 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 15
  %12 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 12
  %13 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 23
  %14 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 29
  %15 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 27
  %16 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 24
  %17 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 31
  %18 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 10
  %19 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 33
  %20 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 25
  %21 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 22
  br label %22

22:                                               ; preds = %156, %2
  %23 = phi i32 [ 0, %2 ], [ %157, %156 ]
  %24 = load i32, ptr %3, align 4
  %25 = icmp ult i32 %24, 262
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  tail call fastcc void @fill_window(ptr noundef %0)
  %27 = load i32, ptr %3, align 4
  %28 = icmp ult i32 %27, 262
  %29 = and i1 %4, %28
  br i1 %29, label %345, label %30

30:                                               ; preds = %26
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %278, label %32

32:                                               ; preds = %30
  %33 = icmp ugt i32 %27, 2
  br i1 %33, label %34, label %60

34:                                               ; preds = %32, %22
  %35 = load i32, ptr %5, align 4
  %36 = load i32, ptr %6, align 4
  %37 = shl i32 %35, %36
  %38 = load ptr, ptr %7, align 4
  %39 = load i32, ptr %8, align 4
  %40 = add i32 %39, 2
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = xor i32 %37, %43
  %45 = load i32, ptr %9, align 4
  %46 = and i32 %44, %45
  store i32 %46, ptr %5, align 4
  %47 = load ptr, ptr %10, align 4
  %48 = getelementptr i16, ptr %47, i32 %46
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = load ptr, ptr %11, align 4
  %52 = load i32, ptr %12, align 4
  %53 = and i32 %52, %39
  %54 = getelementptr i16, ptr %51, i32 %53
  store i16 %49, ptr %54, align 2
  %55 = load i32, ptr %8, align 4
  %56 = trunc i32 %55 to i16
  %57 = load ptr, ptr %10, align 4
  %58 = load i32, ptr %5, align 4
  %59 = getelementptr i16, ptr %57, i32 %58
  store i16 %56, ptr %59, align 2
  br label %60

60:                                               ; preds = %34, %32
  %61 = phi i32 [ %50, %34 ], [ %23, %32 ]
  %62 = load i32, ptr %13, align 4
  store i32 %62, ptr %14, align 4
  %63 = load i32, ptr %15, align 4
  store i32 %63, ptr %16, align 4
  store i32 2, ptr %13, align 4
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %94, label %65

65:                                               ; preds = %60
  %66 = load i32, ptr %17, align 4
  %67 = icmp ult i32 %62, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %65
  %69 = load i32, ptr %8, align 4
  %70 = sub i32 %69, %61
  %71 = load i32, ptr %18, align 4
  %72 = add i32 %71, -262
  %73 = icmp ugt i32 %70, %72
  br i1 %73, label %91, label %74

74:                                               ; preds = %68
  %75 = load i32, ptr %19, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %91, label %77

77:                                               ; preds = %74
  %78 = tail call fastcc i32 @longest_match(ptr noundef %0, i32 noundef %61)
  store i32 %78, ptr %13, align 4
  %79 = icmp ult i32 %78, 6
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32, ptr %19, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = icmp eq i32 %78, 3
  br i1 %84, label %85, label %91

85:                                               ; preds = %83
  %86 = load i32, ptr %8, align 4
  %87 = load i32, ptr %15, align 4
  %88 = sub i32 %86, %87
  %89 = icmp ugt i32 %88, 4096
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %80
  store i32 2, ptr %13, align 4
  br label %91

91:                                               ; preds = %90, %85, %83, %77, %74, %68, %65
  %92 = phi i32 [ 2, %65 ], [ 2, %68 ], [ 2, %90 ], [ 3, %85 ], [ %78, %83 ], [ %78, %77 ], [ 2, %74 ]
  %93 = load i32, ptr %14, align 4
  br label %94

94:                                               ; preds = %91, %60
  %95 = phi i32 [ %93, %91 ], [ %62, %60 ]
  %96 = phi i32 [ %92, %91 ], [ 2, %60 ]
  %97 = icmp ult i32 %95, 3
  %98 = icmp ugt i32 %96, %95
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %207, label %100

100:                                              ; preds = %94
  %101 = load i32, ptr %8, align 4
  %102 = load i32, ptr %3, align 4
  %103 = add i32 %101, -3
  %104 = add i32 %103, %102
  %105 = load i32, ptr %16, align 4
  %106 = xor i32 %105, -1
  %107 = add i32 %101, %106
  %108 = add i32 %95, -3
  %109 = tail call i32 @zlib_tr_tally(ptr noundef %0, i32 noundef %107, i32 noundef %108) #10
  %110 = load i32, ptr %14, align 4
  %111 = load i32, ptr %3, align 4
  %112 = sub i32 1, %110
  %113 = add i32 %112, %111
  store i32 %113, ptr %3, align 4
  %114 = add i32 %110, -2
  store i32 %114, ptr %14, align 4
  br label %115

115:                                              ; preds = %147, %100
  %116 = phi i32 [ %114, %100 ], [ %150, %147 ]
  %117 = phi i32 [ %61, %100 ], [ %149, %147 ]
  %118 = load i32, ptr %8, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %8, align 4
  %120 = icmp ugt i32 %119, %104
  br i1 %120, label %147, label %121

121:                                              ; preds = %115
  %122 = load i32, ptr %5, align 4
  %123 = load i32, ptr %6, align 4
  %124 = shl i32 %122, %123
  %125 = load ptr, ptr %7, align 4
  %126 = add i32 %118, 3
  %127 = getelementptr i8, ptr %125, i32 %126
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = xor i32 %124, %129
  %131 = load i32, ptr %9, align 4
  %132 = and i32 %130, %131
  store i32 %132, ptr %5, align 4
  %133 = load ptr, ptr %10, align 4
  %134 = getelementptr i16, ptr %133, i32 %132
  %135 = load i16, ptr %134, align 2
  %136 = zext i16 %135 to i32
  %137 = load ptr, ptr %11, align 4
  %138 = load i32, ptr %12, align 4
  %139 = and i32 %138, %119
  %140 = getelementptr i16, ptr %137, i32 %139
  store i16 %135, ptr %140, align 2
  %141 = load i32, ptr %8, align 4
  %142 = trunc i32 %141 to i16
  %143 = load ptr, ptr %10, align 4
  %144 = load i32, ptr %5, align 4
  %145 = getelementptr i16, ptr %143, i32 %144
  store i16 %142, ptr %145, align 2
  %146 = load i32, ptr %14, align 4
  br label %147

147:                                              ; preds = %121, %115
  %148 = phi i32 [ %146, %121 ], [ %116, %115 ]
  %149 = phi i32 [ %136, %121 ], [ %117, %115 ]
  %150 = add i32 %148, -1
  store i32 %150, ptr %14, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %115

152:                                              ; preds = %147
  store i32 0, ptr %20, align 4
  store i32 2, ptr %13, align 4
  %153 = load i32, ptr %8, align 4
  %154 = add i32 %153, 1
  store i32 %154, ptr %8, align 4
  %155 = icmp eq i32 %109, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %273, %264, %202, %152
  %157 = phi i32 [ %61, %264 ], [ %61, %273 ], [ %149, %202 ], [ %149, %152 ]
  br label %22

158:                                              ; preds = %152
  %159 = load i32, ptr %21, align 4
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load ptr, ptr %7, align 4
  %163 = getelementptr i8, ptr %162, i32 %159
  br label %164

164:                                              ; preds = %161, %158
  %165 = phi ptr [ %163, %161 ], [ null, %158 ]
  %166 = sub i32 %154, %159
  %167 = tail call i32 @zlib_tr_flush_block(ptr noundef %0, ptr noundef %165, i32 noundef %166, i32 noundef 0) #10
  %168 = load i32, ptr %8, align 4
  store i32 %168, ptr %21, align 4
  %169 = load ptr, ptr %0, align 4
  %170 = getelementptr inbounds %struct.z_stream_s, ptr %169, i32 0, i32 7
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.deflate_state, ptr %171, i32 0, i32 5
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.z_stream_s, ptr %169, i32 0, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = tail call i32 @llvm.umin.i32(i32 %173, i32 %175) #10
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %202, label %178

178:                                              ; preds = %164
  %179 = getelementptr inbounds %struct.z_stream_s, ptr %169, i32 0, i32 3
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.deflate_state, ptr %171, i32 0, i32 4
  %184 = load ptr, ptr %183, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %180, ptr align 1 %184, i32 %176, i1 false) #10
  %185 = load ptr, ptr %179, align 4
  %186 = getelementptr i8, ptr %185, i32 %176
  store ptr %186, ptr %179, align 4
  br label %187

187:                                              ; preds = %182, %178
  %188 = getelementptr inbounds %struct.deflate_state, ptr %171, i32 0, i32 4
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr i8, ptr %189, i32 %176
  store ptr %190, ptr %188, align 4
  %191 = getelementptr inbounds %struct.z_stream_s, ptr %169, i32 0, i32 5
  %192 = load i32, ptr %191, align 4
  %193 = add i32 %192, %176
  store i32 %193, ptr %191, align 4
  %194 = load i32, ptr %174, align 4
  %195 = sub i32 %194, %176
  store i32 %195, ptr %174, align 4
  %196 = load i32, ptr %172, align 4
  %197 = sub i32 %196, %176
  store i32 %197, ptr %172, align 4
  %198 = icmp eq i32 %196, %176
  br i1 %198, label %199, label %202

199:                                              ; preds = %187
  %200 = getelementptr inbounds %struct.deflate_state, ptr %171, i32 0, i32 2
  %201 = load ptr, ptr %200, align 4
  store ptr %201, ptr %188, align 4
  br label %202

202:                                              ; preds = %199, %187, %164
  %203 = load ptr, ptr %0, align 4
  %204 = getelementptr inbounds %struct.z_stream_s, ptr %203, i32 0, i32 4
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %345, label %156

207:                                              ; preds = %94
  %208 = load i32, ptr %20, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %273, label %210

210:                                              ; preds = %207
  %211 = load ptr, ptr %7, align 4
  %212 = load i32, ptr %8, align 4
  %213 = add i32 %212, -1
  %214 = getelementptr i8, ptr %211, i32 %213
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = tail call i32 @zlib_tr_tally(ptr noundef %0, i32 noundef 0, i32 noundef %216) #10
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %264, label %219

219:                                              ; preds = %210
  %220 = load i32, ptr %21, align 4
  %221 = icmp sgt i32 %220, -1
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load ptr, ptr %7, align 4
  %224 = getelementptr i8, ptr %223, i32 %220
  br label %225

225:                                              ; preds = %222, %219
  %226 = phi ptr [ %224, %222 ], [ null, %219 ]
  %227 = load i32, ptr %8, align 4
  %228 = sub i32 %227, %220
  %229 = tail call i32 @zlib_tr_flush_block(ptr noundef %0, ptr noundef %226, i32 noundef %228, i32 noundef 0) #10
  %230 = load i32, ptr %8, align 4
  store i32 %230, ptr %21, align 4
  %231 = load ptr, ptr %0, align 4
  %232 = getelementptr inbounds %struct.z_stream_s, ptr %231, i32 0, i32 7
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.deflate_state, ptr %233, i32 0, i32 5
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds %struct.z_stream_s, ptr %231, i32 0, i32 4
  %237 = load i32, ptr %236, align 4
  %238 = tail call i32 @llvm.umin.i32(i32 %235, i32 %237) #10
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %264, label %240

240:                                              ; preds = %225
  %241 = getelementptr inbounds %struct.z_stream_s, ptr %231, i32 0, i32 3
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.deflate_state, ptr %233, i32 0, i32 4
  %246 = load ptr, ptr %245, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %242, ptr align 1 %246, i32 %238, i1 false) #10
  %247 = load ptr, ptr %241, align 4
  %248 = getelementptr i8, ptr %247, i32 %238
  store ptr %248, ptr %241, align 4
  br label %249

249:                                              ; preds = %244, %240
  %250 = getelementptr inbounds %struct.deflate_state, ptr %233, i32 0, i32 4
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr i8, ptr %251, i32 %238
  store ptr %252, ptr %250, align 4
  %253 = getelementptr inbounds %struct.z_stream_s, ptr %231, i32 0, i32 5
  %254 = load i32, ptr %253, align 4
  %255 = add i32 %254, %238
  store i32 %255, ptr %253, align 4
  %256 = load i32, ptr %236, align 4
  %257 = sub i32 %256, %238
  store i32 %257, ptr %236, align 4
  %258 = load i32, ptr %234, align 4
  %259 = sub i32 %258, %238
  store i32 %259, ptr %234, align 4
  %260 = icmp eq i32 %258, %238
  br i1 %260, label %261, label %264

261:                                              ; preds = %249
  %262 = getelementptr inbounds %struct.deflate_state, ptr %233, i32 0, i32 2
  %263 = load ptr, ptr %262, align 4
  store ptr %263, ptr %250, align 4
  br label %264

264:                                              ; preds = %261, %249, %225, %210
  %265 = load i32, ptr %8, align 4
  %266 = add i32 %265, 1
  store i32 %266, ptr %8, align 4
  %267 = load i32, ptr %3, align 4
  %268 = add i32 %267, -1
  store i32 %268, ptr %3, align 4
  %269 = load ptr, ptr %0, align 4
  %270 = getelementptr inbounds %struct.z_stream_s, ptr %269, i32 0, i32 4
  %271 = load i32, ptr %270, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %345, label %156

273:                                              ; preds = %207
  store i32 1, ptr %20, align 4
  %274 = load i32, ptr %8, align 4
  %275 = add i32 %274, 1
  store i32 %275, ptr %8, align 4
  %276 = load i32, ptr %3, align 4
  %277 = add i32 %276, -1
  store i32 %277, ptr %3, align 4
  br label %156

278:                                              ; preds = %30
  %279 = load i32, ptr %20, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %289, label %281

281:                                              ; preds = %278
  %282 = load ptr, ptr %7, align 4
  %283 = load i32, ptr %8, align 4
  %284 = add i32 %283, -1
  %285 = getelementptr i8, ptr %282, i32 %284
  %286 = load i8, ptr %285, align 1
  %287 = zext i8 %286 to i32
  %288 = tail call i32 @zlib_tr_tally(ptr noundef %0, i32 noundef 0, i32 noundef %287) #10
  store i32 0, ptr %20, align 4
  br label %289

289:                                              ; preds = %281, %278
  %290 = load i32, ptr %21, align 4
  %291 = icmp sgt i32 %290, -1
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load ptr, ptr %7, align 4
  %294 = getelementptr i8, ptr %293, i32 %290
  br label %295

295:                                              ; preds = %292, %289
  %296 = phi ptr [ %294, %292 ], [ null, %289 ]
  %297 = load i32, ptr %8, align 4
  %298 = sub i32 %297, %290
  %299 = icmp eq i32 %1, 5
  %300 = zext i1 %299 to i32
  %301 = tail call i32 @zlib_tr_flush_block(ptr noundef %0, ptr noundef %296, i32 noundef %298, i32 noundef %300) #10
  %302 = load i32, ptr %8, align 4
  store i32 %302, ptr %21, align 4
  %303 = load ptr, ptr %0, align 4
  %304 = getelementptr inbounds %struct.z_stream_s, ptr %303, i32 0, i32 7
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.deflate_state, ptr %305, i32 0, i32 5
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr inbounds %struct.z_stream_s, ptr %303, i32 0, i32 4
  %309 = load i32, ptr %308, align 4
  %310 = tail call i32 @llvm.umin.i32(i32 %307, i32 %309) #10
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %336, label %312

312:                                              ; preds = %295
  %313 = getelementptr inbounds %struct.z_stream_s, ptr %303, i32 0, i32 3
  %314 = load ptr, ptr %313, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %321, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.deflate_state, ptr %305, i32 0, i32 4
  %318 = load ptr, ptr %317, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %314, ptr align 1 %318, i32 %310, i1 false) #10
  %319 = load ptr, ptr %313, align 4
  %320 = getelementptr i8, ptr %319, i32 %310
  store ptr %320, ptr %313, align 4
  br label %321

321:                                              ; preds = %316, %312
  %322 = getelementptr inbounds %struct.deflate_state, ptr %305, i32 0, i32 4
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr i8, ptr %323, i32 %310
  store ptr %324, ptr %322, align 4
  %325 = getelementptr inbounds %struct.z_stream_s, ptr %303, i32 0, i32 5
  %326 = load i32, ptr %325, align 4
  %327 = add i32 %326, %310
  store i32 %327, ptr %325, align 4
  %328 = load i32, ptr %308, align 4
  %329 = sub i32 %328, %310
  store i32 %329, ptr %308, align 4
  %330 = load i32, ptr %306, align 4
  %331 = sub i32 %330, %310
  store i32 %331, ptr %306, align 4
  %332 = icmp eq i32 %330, %310
  br i1 %332, label %333, label %336

333:                                              ; preds = %321
  %334 = getelementptr inbounds %struct.deflate_state, ptr %305, i32 0, i32 2
  %335 = load ptr, ptr %334, align 4
  store ptr %335, ptr %322, align 4
  br label %336

336:                                              ; preds = %333, %321, %295
  %337 = load ptr, ptr %0, align 4
  %338 = getelementptr inbounds %struct.z_stream_s, ptr %337, i32 0, i32 4
  %339 = load i32, ptr %338, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  %342 = select i1 %299, i32 2, i32 0
  br label %345

343:                                              ; preds = %336
  %344 = select i1 %299, i32 3, i32 1
  br label %345

345:                                              ; preds = %343, %341, %264, %202, %26
  %346 = phi i32 [ %342, %341 ], [ %344, %343 ], [ 0, %26 ], [ 0, %202 ], [ 0, %264 ]
  ret i32 %346
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fill_window(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 14
  %5 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 28
  %6 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 26
  %7 = add i32 %3, -262
  %8 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 13
  %9 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 27
  %10 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 22
  %11 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 18
  %12 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 16
  %13 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 15
  %14 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 17
  %15 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 21
  %16 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 20
  %17 = load i32, ptr %5, align 4
  br label %18

18:                                               ; preds = %259, %1
  %19 = phi i32 [ %241, %259 ], [ %17, %1 ]
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %6, align 4
  %22 = add i32 %19, %21
  %23 = sub i32 %20, %22
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i32 %21, 0
  %26 = select i1 %24, i1 %25, i1 false
  %27 = icmp eq i32 %19, 0
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %72, label %29

29:                                               ; preds = %18
  %30 = icmp eq i32 %23, -1
  br i1 %30, label %72, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %2, align 4
  %33 = add i32 %7, %32
  %34 = icmp ult i32 %21, %33
  br i1 %34, label %72, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr i8, ptr %36, i32 %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %37, i32 %3, i1 false)
  %38 = load i32, ptr %9, align 4
  %39 = sub i32 %38, %3
  store i32 %39, ptr %9, align 4
  %40 = load i32, ptr %6, align 4
  %41 = sub i32 %40, %3
  store i32 %41, ptr %6, align 4
  %42 = load i32, ptr %10, align 4
  %43 = sub i32 %42, %3
  store i32 %43, ptr %10, align 4
  %44 = load i32, ptr %11, align 4
  %45 = load ptr, ptr %12, align 4
  %46 = getelementptr i16, ptr %45, i32 %44
  br label %47

47:                                               ; preds = %47, %35
  %48 = phi i32 [ %44, %35 ], [ %55, %47 ]
  %49 = phi ptr [ %46, %35 ], [ %50, %47 ]
  %50 = getelementptr i16, ptr %49, i32 -1
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = tail call i32 @llvm.usub.sat.i32(i32 %52, i32 %3)
  %54 = trunc i32 %53 to i16
  store i16 %54, ptr %50, align 2
  %55 = add i32 %48, -1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %47

57:                                               ; preds = %47
  %58 = load ptr, ptr %13, align 4
  %59 = getelementptr i16, ptr %58, i32 %3
  br label %60

60:                                               ; preds = %60, %57
  %61 = phi i32 [ %3, %57 ], [ %68, %60 ]
  %62 = phi ptr [ %59, %57 ], [ %63, %60 ]
  %63 = getelementptr i16, ptr %62, i32 -1
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = tail call i32 @llvm.usub.sat.i32(i32 %65, i32 %3)
  %67 = trunc i32 %66 to i16
  store i16 %67, ptr %63, align 2
  %68 = add i32 %61, -1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %60

70:                                               ; preds = %60
  %71 = add i32 %23, %3
  br label %72

72:                                               ; preds = %70, %31, %29, %18
  %73 = phi i32 [ %71, %70 ], [ %23, %31 ], [ %3, %18 ], [ -2, %29 ]
  %74 = load ptr, ptr %0, align 4
  %75 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %264, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %8, align 4
  %80 = load i32, ptr %6, align 4
  %81 = getelementptr i8, ptr %79, i32 %80
  %82 = load i32, ptr %5, align 4
  %83 = getelementptr i8, ptr %81, i32 %82
  %84 = tail call i32 @llvm.umin.i32(i32 %76, i32 %73) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %239, label %86

86:                                               ; preds = %78
  %87 = sub i32 %76, %84
  store i32 %87, ptr %75, align 4
  %88 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 7
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.deflate_state, ptr %89, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %74, align 4
  br label %231

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 10
  %97 = load ptr, ptr %74, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %229, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %96, align 4
  %101 = lshr i32 %100, 16
  %102 = and i32 %100, 65535
  br label %103

103:                                              ; preds = %219, %99
  %104 = phi i32 [ %224, %219 ], [ %101, %99 ]
  %105 = phi i32 [ %223, %219 ], [ %102, %99 ]
  %106 = phi i32 [ %109, %219 ], [ %84, %99 ]
  %107 = phi ptr [ %220, %219 ], [ %97, %99 ]
  %108 = tail call i32 @llvm.umin.i32(i32 %106, i32 5552) #10
  %109 = sub i32 %106, %108
  %110 = icmp ugt i32 %108, 15
  br i1 %110, label %111, label %200

111:                                              ; preds = %111, %103
  %112 = phi i32 [ %196, %111 ], [ %108, %103 ]
  %113 = phi i32 [ %194, %111 ], [ %104, %103 ]
  %114 = phi i32 [ %193, %111 ], [ %105, %103 ]
  %115 = phi ptr [ %195, %111 ], [ %107, %103 ]
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = add i32 %114, %117
  %119 = add i32 %118, %113
  %120 = getelementptr i8, ptr %115, i32 1
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = add i32 %118, %122
  %124 = add i32 %119, %123
  %125 = getelementptr i8, ptr %115, i32 2
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = add i32 %123, %127
  %129 = add i32 %124, %128
  %130 = getelementptr i8, ptr %115, i32 3
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = add i32 %128, %132
  %134 = add i32 %129, %133
  %135 = getelementptr i8, ptr %115, i32 4
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = add i32 %133, %137
  %139 = add i32 %134, %138
  %140 = getelementptr i8, ptr %115, i32 5
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = add i32 %138, %142
  %144 = add i32 %139, %143
  %145 = getelementptr i8, ptr %115, i32 6
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = add i32 %143, %147
  %149 = add i32 %144, %148
  %150 = getelementptr i8, ptr %115, i32 7
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = add i32 %148, %152
  %154 = add i32 %149, %153
  %155 = getelementptr i8, ptr %115, i32 8
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = add i32 %153, %157
  %159 = add i32 %154, %158
  %160 = getelementptr i8, ptr %115, i32 9
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = add i32 %158, %162
  %164 = add i32 %159, %163
  %165 = getelementptr i8, ptr %115, i32 10
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i32
  %168 = add i32 %163, %167
  %169 = add i32 %164, %168
  %170 = getelementptr i8, ptr %115, i32 11
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = add i32 %168, %172
  %174 = add i32 %169, %173
  %175 = getelementptr i8, ptr %115, i32 12
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = add i32 %173, %177
  %179 = add i32 %174, %178
  %180 = getelementptr i8, ptr %115, i32 13
  %181 = load i8, ptr %180, align 1
  %182 = zext i8 %181 to i32
  %183 = add i32 %178, %182
  %184 = add i32 %179, %183
  %185 = getelementptr i8, ptr %115, i32 14
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = add i32 %183, %187
  %189 = add i32 %184, %188
  %190 = getelementptr i8, ptr %115, i32 15
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i32
  %193 = add i32 %188, %192
  %194 = add i32 %189, %193
  %195 = getelementptr i8, ptr %115, i32 16
  %196 = add nsw i32 %112, -16
  %197 = icmp ugt i32 %196, 15
  br i1 %197, label %111, label %198

198:                                              ; preds = %111
  %199 = icmp eq i32 %196, 0
  br i1 %199, label %219, label %200

200:                                              ; preds = %198, %103
  %201 = phi i32 [ %196, %198 ], [ %108, %103 ]
  %202 = phi i32 [ %194, %198 ], [ %104, %103 ]
  %203 = phi i32 [ %193, %198 ], [ %105, %103 ]
  %204 = phi ptr [ %195, %198 ], [ %107, %103 ]
  br label %205

205:                                              ; preds = %205, %200
  %206 = phi ptr [ %210, %205 ], [ %204, %200 ]
  %207 = phi i32 [ %213, %205 ], [ %203, %200 ]
  %208 = phi i32 [ %214, %205 ], [ %202, %200 ]
  %209 = phi i32 [ %215, %205 ], [ %201, %200 ]
  %210 = getelementptr i8, ptr %206, i32 1
  %211 = load i8, ptr %206, align 1
  %212 = zext i8 %211 to i32
  %213 = add i32 %207, %212
  %214 = add i32 %213, %208
  %215 = add i32 %209, -1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %205

217:                                              ; preds = %205
  %218 = getelementptr i8, ptr %204, i32 %201
  br label %219

219:                                              ; preds = %217, %198
  %220 = phi ptr [ %195, %198 ], [ %218, %217 ]
  %221 = phi i32 [ %193, %198 ], [ %213, %217 ]
  %222 = phi i32 [ %194, %198 ], [ %214, %217 ]
  %223 = urem i32 %221, 65521
  %224 = urem i32 %222, 65521
  %225 = icmp eq i32 %109, 0
  br i1 %225, label %226, label %103

226:                                              ; preds = %219
  %227 = shl nuw i32 %224, 16
  %228 = or i32 %227, %223
  br label %229

229:                                              ; preds = %226, %95
  %230 = phi i32 [ %228, %226 ], [ 1, %95 ]
  store i32 %230, ptr %96, align 4
  br label %231

231:                                              ; preds = %229, %93
  %232 = phi ptr [ %94, %93 ], [ %97, %229 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %83, ptr align 1 %232, i32 %84, i1 false) #10
  %233 = load ptr, ptr %74, align 4
  %234 = getelementptr i8, ptr %233, i32 %84
  store ptr %234, ptr %74, align 4
  %235 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 2
  %236 = load i32, ptr %235, align 4
  %237 = add i32 %236, %84
  store i32 %237, ptr %235, align 4
  %238 = load i32, ptr %5, align 4
  br label %239

239:                                              ; preds = %231, %78
  %240 = phi i32 [ %82, %78 ], [ %238, %231 ]
  %241 = add i32 %240, %84
  store i32 %241, ptr %5, align 4
  %242 = icmp ugt i32 %241, 2
  br i1 %242, label %243, label %259

243:                                              ; preds = %239
  %244 = load ptr, ptr %8, align 4
  %245 = load i32, ptr %6, align 4
  %246 = getelementptr i8, ptr %244, i32 %245
  %247 = load i8, ptr %246, align 1
  %248 = zext i8 %247 to i32
  store i32 %248, ptr %14, align 4
  %249 = load i32, ptr %15, align 4
  %250 = shl i32 %248, %249
  %251 = add i32 %245, 1
  %252 = getelementptr i8, ptr %244, i32 %251
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i32
  %255 = xor i32 %250, %254
  %256 = load i32, ptr %16, align 4
  %257 = and i32 %255, %256
  store i32 %257, ptr %14, align 4
  %258 = icmp ult i32 %241, 262
  br i1 %258, label %259, label %264

259:                                              ; preds = %243, %239
  %260 = load ptr, ptr %0, align 4
  %261 = getelementptr inbounds %struct.z_stream_s, ptr %260, i32 0, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %18

264:                                              ; preds = %259, %243, %72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_tr_flush_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @longest_match(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 30
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 29
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 35
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -262
  %17 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %16)
  %18 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %9, i32 258
  %23 = add i32 %11, -1
  %24 = getelementptr i8, ptr %9, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr i8, ptr %9, i32 %11
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 34
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %11, %29
  %31 = lshr i32 %4, 2
  %32 = select i1 %30, i32 %4, i32 %31
  %33 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 28
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %13, i32 %34)
  %36 = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 27
  %37 = ptrtoint ptr %22 to i32
  %38 = getelementptr i8, ptr %22, i32 -258
  br label %39

39:                                               ; preds = %147, %2
  %40 = phi i32 [ %1, %2 ], [ %155, %147 ]
  %41 = phi i32 [ %32, %2 ], [ %157, %147 ]
  %42 = phi ptr [ %9, %2 ], [ %148, %147 ]
  %43 = phi i32 [ %11, %2 ], [ %149, %147 ]
  %44 = phi i8 [ %25, %2 ], [ %150, %147 ]
  %45 = phi i8 [ %27, %2 ], [ %151, %147 ]
  %46 = getelementptr i8, ptr %6, i32 %40
  %47 = getelementptr i8, ptr %46, i32 %43
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, %45
  br i1 %49, label %50, label %147

50:                                               ; preds = %39
  %51 = add i32 %43, -1
  %52 = getelementptr i8, ptr %46, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, %44
  br i1 %54, label %55, label %147

55:                                               ; preds = %50
  %56 = load i8, ptr %46, align 1
  %57 = load i8, ptr %42, align 1
  %58 = icmp eq i8 %56, %57
  br i1 %58, label %59, label %147

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %46, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr i8, ptr %42, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %61, %63
  br i1 %64, label %65, label %147

65:                                               ; preds = %59
  %66 = getelementptr i8, ptr %42, i32 2
  br label %67

67:                                               ; preds = %111, %65
  %68 = phi ptr [ %66, %65 ], [ %112, %111 ]
  %69 = phi ptr [ %46, %65 ], [ %102, %111 ]
  %70 = getelementptr i8, ptr %68, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr i8, ptr %69, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %71, %73
  br i1 %74, label %75, label %131

75:                                               ; preds = %67
  %76 = getelementptr i8, ptr %68, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr i8, ptr %69, i32 4
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %77, %79
  br i1 %80, label %81, label %129

81:                                               ; preds = %75
  %82 = getelementptr i8, ptr %68, i32 3
  %83 = load i8, ptr %82, align 1
  %84 = getelementptr i8, ptr %69, i32 5
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %83, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %81
  %88 = getelementptr i8, ptr %68, i32 4
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr i8, ptr %69, i32 6
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %89, %91
  br i1 %92, label %93, label %125

93:                                               ; preds = %87
  %94 = getelementptr i8, ptr %68, i32 5
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr i8, ptr %69, i32 7
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %95, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %93
  %100 = getelementptr i8, ptr %68, i32 6
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr i8, ptr %69, i32 8
  %103 = load i8, ptr %102, align 1
  %104 = icmp eq i8 %101, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %99
  %106 = getelementptr i8, ptr %68, i32 7
  %107 = load i8, ptr %106, align 1
  %108 = getelementptr i8, ptr %69, i32 9
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %107, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = getelementptr i8, ptr %68, i32 8
  %113 = load i8, ptr %112, align 1
  %114 = getelementptr i8, ptr %69, i32 10
  %115 = load i8, ptr %114, align 1
  %116 = icmp eq i8 %113, %115
  %117 = icmp ult ptr %112, %22
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %67, label %133

119:                                              ; preds = %105
  %120 = getelementptr i8, ptr %68, i32 7
  br label %133

121:                                              ; preds = %99
  %122 = getelementptr i8, ptr %68, i32 6
  br label %133

123:                                              ; preds = %93
  %124 = getelementptr i8, ptr %68, i32 5
  br label %133

125:                                              ; preds = %87
  %126 = getelementptr i8, ptr %68, i32 4
  br label %133

127:                                              ; preds = %81
  %128 = getelementptr i8, ptr %68, i32 3
  br label %133

129:                                              ; preds = %75
  %130 = getelementptr i8, ptr %68, i32 2
  br label %133

131:                                              ; preds = %67
  %132 = getelementptr i8, ptr %68, i32 1
  br label %133

133:                                              ; preds = %131, %129, %127, %125, %123, %121, %119, %111
  %134 = phi ptr [ %120, %119 ], [ %122, %121 ], [ %124, %123 ], [ %126, %125 ], [ %128, %127 ], [ %130, %129 ], [ %132, %131 ], [ %112, %111 ]
  %135 = ptrtoint ptr %134 to i32
  %136 = sub i32 %135, %37
  %137 = add i32 %136, 258
  %138 = icmp sgt i32 %137, %43
  br i1 %138, label %139, label %147

139:                                              ; preds = %133
  store i32 %40, ptr %36, align 4
  %140 = icmp slt i32 %137, %35
  br i1 %140, label %141, label %160

141:                                              ; preds = %139
  %142 = add i32 %136, 257
  %143 = getelementptr i8, ptr %38, i32 %142
  %144 = load i8, ptr %143, align 1
  %145 = getelementptr i8, ptr %38, i32 %137
  %146 = load i8, ptr %145, align 1
  br label %147

147:                                              ; preds = %141, %133, %59, %55, %50, %39
  %148 = phi ptr [ %42, %39 ], [ %42, %50 ], [ %42, %55 ], [ %42, %59 ], [ %38, %141 ], [ %38, %133 ]
  %149 = phi i32 [ %43, %39 ], [ %43, %50 ], [ %43, %55 ], [ %43, %59 ], [ %137, %141 ], [ %43, %133 ]
  %150 = phi i8 [ %44, %39 ], [ %44, %50 ], [ %44, %55 ], [ %44, %59 ], [ %144, %141 ], [ %44, %133 ]
  %151 = phi i8 [ %45, %39 ], [ %45, %50 ], [ %45, %55 ], [ %45, %59 ], [ %146, %141 ], [ %45, %133 ]
  %152 = and i32 %40, %21
  %153 = getelementptr i16, ptr %19, i32 %152
  %154 = load i16, ptr %153, align 2
  %155 = zext i16 %154 to i32
  %156 = icmp uge i32 %17, %155
  %157 = add i32 %41, -1
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %156, i1 true, i1 %158
  br i1 %159, label %160, label %39

160:                                              ; preds = %147, %139
  %161 = phi i32 [ %149, %147 ], [ %137, %139 ]
  %162 = tail call i32 @llvm.umin.i32(i32 %161, i32 %34)
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_tr_tally(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }

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
!8 = !{!"branch_weights", i32 7818360, i32 -388717296}
!9 = !{i64 2150449181, i64 2150449673, i64 2150449218, i64 2150449274, i64 2150449308, i64 2150449332, i64 2150449373, i64 2150449394, i64 2150449422, i64 2150449456}
