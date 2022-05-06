; ModuleID = '/llk/IR/lib/gen_crc32table.c_pt.bc'
source_filename = "../lib/gen_crc32table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [65 x i8] c"static const u32 ____cacheline_aligned crc32table_le[%d][%d] = {\00", align 1
@crc32table_le = internal global [8 x [256 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"tole\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"static const u32 ____cacheline_aligned crc32table_be[%d][%d] = {\00", align 1
@crc32table_be = internal unnamed_addr global [8 x [256 x i32]] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"tobe\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"static const u32 ____cacheline_aligned crc32ctable_le[%d][%d] = {\00", align 1
@crc32ctable_le = internal global [8 x [256 x i32]] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [15 x i8] c"%s(0x%8.8xL), \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"%s(0x%8.8xL)},\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"/* this file is generated - do not edit */\0A\00", align 1
@str.13 = private unnamed_addr constant [3 x i8] c"};\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call i32 @puts(ptr nonnull @str)
  tail call fastcc void @crc32init_le_generic(i32 noundef -306674912, ptr noundef nonnull @crc32table_le) #4
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef 256)
  br label %5

5:                                                ; preds = %20, %2
  %6 = phi i64 [ 0, %2 ], [ %24, %20 ]
  %7 = tail call i32 @putchar(i32 123) #4
  br label %8

8:                                                ; preds = %14, %5
  %9 = phi i64 [ 0, %5 ], [ %18, %14 ]
  %10 = and i64 %9, 3
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 @putchar(i32 10) #4
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds [256 x i32], ptr @crc32table_le, i64 %6, i64 %9
  %16 = load i32, ptr %15, align 4, !tbaa !5
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef %16) #4
  %18 = add nuw nsw i64 %9, 1
  %19 = icmp eq i64 %18, 255
  br i1 %19, label %20, label %8

20:                                               ; preds = %14
  %21 = getelementptr inbounds [256 x i32], ptr @crc32table_le, i64 %6, i64 255
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef %22) #4
  %24 = add nuw nsw i64 %6, 1
  %25 = icmp eq i64 %24, 8
  br i1 %25, label %26, label %5

26:                                               ; preds = %20
  %27 = tail call i32 @puts(ptr nonnull @str.13)
  store <4 x i32> <i32 0, i32 79764919, i32 159529838, i32 222504665>, ptr @crc32table_be, align 16, !tbaa !5
  store <4 x i32> <i32 319059676, i32 398814059, i32 445009330, i32 507990021>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 4), align 16, !tbaa !5
  store <4 x i32> <i32 638119352, i32 583659535, i32 797628118, i32 726387553>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 8), align 16, !tbaa !5
  store <4 x i32> <i32 890018660, i32 835552979, i32 1015980042, i32 944750013>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 12), align 16, !tbaa !5
  store <4 x i32> <i32 1276238704, i32 1221641927, i32 1167319070, i32 1095957929>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 16), align 16, !tbaa !5
  store <4 x i32> <i32 1595256236, i32 1540665371, i32 1452775106, i32 1381403509>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 20), align 16, !tbaa !5
  store <4 x i32> <i32 1780037320, i32 1859660671, i32 1671105958, i32 1733955601>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 24), align 16, !tbaa !5
  store <4 x i32> <i32 2031960084, i32 2111593891, i32 1889500026, i32 1952343757>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 28), align 16, !tbaa !5
  store i32 -1742489888, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 32), align 16, !tbaa !5
  store i32 -1662866601, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 33), align 4, !tbaa !5
  %28 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 2), align 8, !tbaa !5
  %29 = xor <4 x i32> %28, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %29, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 34), align 8, !tbaa !5
  %30 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 6), align 8, !tbaa !5
  %31 = xor <4 x i32> %30, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %31, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 38), align 8, !tbaa !5
  %32 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 10), align 8, !tbaa !5
  %33 = xor <4 x i32> %32, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %33, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 42), align 8, !tbaa !5
  %34 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 14), align 8, !tbaa !5
  %35 = xor <4 x i32> %34, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %35, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 46), align 8, !tbaa !5
  %36 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 18), align 8, !tbaa !5
  %37 = xor <4 x i32> %36, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %37, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 50), align 8, !tbaa !5
  %38 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 22), align 8, !tbaa !5
  %39 = xor <4 x i32> %38, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %39, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 54), align 8, !tbaa !5
  %40 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 26), align 8, !tbaa !5
  %41 = xor <4 x i32> %40, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %41, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 58), align 8, !tbaa !5
  %42 = load i32, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 30), align 8, !tbaa !5
  %43 = xor i32 %42, -1742489888
  store i32 %43, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 62), align 8, !tbaa !5
  %44 = load i32, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 31), align 4, !tbaa !5
  %45 = xor i32 %44, -1742489888
  store i32 %45, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 63), align 4, !tbaa !5
  %46 = load <4 x i32>, ptr @crc32table_be, align 16, !tbaa !5
  %47 = xor <4 x i32> %46, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %47, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 64), align 16, !tbaa !5
  %48 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 4), align 16, !tbaa !5
  %49 = xor <4 x i32> %48, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %49, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 68), align 16, !tbaa !5
  %50 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 8), align 16, !tbaa !5
  %51 = xor <4 x i32> %50, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %51, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 72), align 16, !tbaa !5
  %52 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 12), align 16, !tbaa !5
  %53 = xor <4 x i32> %52, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %53, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 76), align 16, !tbaa !5
  %54 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 16), align 16, !tbaa !5
  %55 = xor <4 x i32> %54, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %55, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 80), align 16, !tbaa !5
  %56 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 20), align 16, !tbaa !5
  %57 = xor <4 x i32> %56, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %57, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 84), align 16, !tbaa !5
  %58 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 24), align 16, !tbaa !5
  %59 = xor <4 x i32> %58, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %59, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 88), align 16, !tbaa !5
  %60 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 28), align 16, !tbaa !5
  %61 = xor <4 x i32> %60, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %61, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 92), align 16, !tbaa !5
  %62 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 32), align 16, !tbaa !5
  %63 = xor <4 x i32> %62, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %63, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 96), align 16, !tbaa !5
  %64 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 36), align 16, !tbaa !5
  %65 = xor <4 x i32> %64, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %65, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 100), align 16, !tbaa !5
  %66 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 40), align 16, !tbaa !5
  %67 = xor <4 x i32> %66, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %67, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 104), align 16, !tbaa !5
  %68 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 44), align 16, !tbaa !5
  %69 = xor <4 x i32> %68, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %69, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 108), align 16, !tbaa !5
  %70 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 48), align 16, !tbaa !5
  %71 = xor <4 x i32> %70, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %71, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 112), align 16, !tbaa !5
  %72 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 52), align 16, !tbaa !5
  %73 = xor <4 x i32> %72, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %73, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 116), align 16, !tbaa !5
  %74 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 56), align 16, !tbaa !5
  %75 = xor <4 x i32> %74, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %75, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 120), align 16, !tbaa !5
  %76 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 60), align 16, !tbaa !5
  %77 = xor <4 x i32> %76, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %77, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 124), align 16, !tbaa !5
  br label %78

78:                                               ; preds = %78, %26
  %79 = phi i64 [ 0, %26 ], [ %91, %78 ]
  %80 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %79
  %81 = load <4 x i32>, ptr %80, align 16, !tbaa !5
  %82 = xor <4 x i32> %81, <i32 1762451694, i32 1762451694, i32 1762451694, i32 1762451694>
  %83 = add nuw nsw i64 %79, 128
  %84 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %83
  store <4 x i32> %82, ptr %84, align 16, !tbaa !5
  %85 = or i64 %79, 4
  %86 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %85
  %87 = load <4 x i32>, ptr %86, align 16, !tbaa !5
  %88 = xor <4 x i32> %87, <i32 1762451694, i32 1762451694, i32 1762451694, i32 1762451694>
  %89 = add nuw nsw i64 %79, 132
  %90 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %89
  store <4 x i32> %88, ptr %90, align 16, !tbaa !5
  %91 = add nuw nsw i64 %79, 8
  %92 = icmp eq i64 %91, 128
  br i1 %92, label %93, label %78, !llvm.loop !9

93:                                               ; preds = %93, %78
  %94 = phi i64 [ %146, %93 ], [ 0, %78 ]
  %95 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !5
  %97 = lshr i32 %96, 24
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = shl i32 %96, 8
  %102 = xor i32 %100, %101
  %103 = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 1, i64 %94
  store i32 %102, ptr %103, align 4, !tbaa !5
  %104 = lshr i32 %102, 24
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !5
  %108 = shl i32 %102, 8
  %109 = xor i32 %107, %108
  %110 = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 2, i64 %94
  store i32 %109, ptr %110, align 4, !tbaa !5
  %111 = lshr i32 %109, 24
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !5
  %115 = shl i32 %109, 8
  %116 = xor i32 %114, %115
  %117 = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 3, i64 %94
  store i32 %116, ptr %117, align 4, !tbaa !5
  %118 = lshr i32 %116, 24
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !5
  %122 = shl i32 %116, 8
  %123 = xor i32 %121, %122
  %124 = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 4, i64 %94
  store i32 %123, ptr %124, align 4, !tbaa !5
  %125 = lshr i32 %123, 24
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !5
  %129 = shl i32 %123, 8
  %130 = xor i32 %128, %129
  %131 = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 5, i64 %94
  store i32 %130, ptr %131, align 4, !tbaa !5
  %132 = lshr i32 %130, 24
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !5
  %136 = shl i32 %130, 8
  %137 = xor i32 %135, %136
  %138 = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 6, i64 %94
  store i32 %137, ptr %138, align 4, !tbaa !5
  %139 = lshr i32 %137, 24
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !5
  %143 = shl i32 %137, 8
  %144 = xor i32 %142, %143
  %145 = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 7, i64 %94
  store i32 %144, ptr %145, align 4, !tbaa !5
  %146 = add nuw nsw i64 %94, 1
  %147 = icmp eq i64 %146, 256
  br i1 %147, label %148, label %93

148:                                              ; preds = %93
  %149 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef 8, i32 noundef 256)
  br label %150

150:                                              ; preds = %165, %148
  %151 = phi i64 [ 0, %148 ], [ %169, %165 ]
  %152 = tail call i32 @putchar(i32 123) #4
  br label %153

153:                                              ; preds = %159, %150
  %154 = phi i64 [ 0, %150 ], [ %163, %159 ]
  %155 = and i64 %154, 3
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = tail call i32 @putchar(i32 10) #4
  br label %159

159:                                              ; preds = %157, %153
  %160 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 %151, i64 %154
  %161 = load i32, ptr %160, align 4, !tbaa !5
  %162 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %161) #4
  %163 = add nuw nsw i64 %154, 1
  %164 = icmp eq i64 %163, 255
  br i1 %164, label %165, label %153

165:                                              ; preds = %159
  %166 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 %151, i64 255
  %167 = load i32, ptr %166, align 4, !tbaa !5
  %168 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %167) #4
  %169 = add nuw nsw i64 %151, 1
  %170 = icmp eq i64 %169, 8
  br i1 %170, label %171, label %150

171:                                              ; preds = %165
  %172 = tail call i32 @puts(ptr nonnull @str.13)
  tail call fastcc void @crc32init_le_generic(i32 noundef -2097792136, ptr noundef nonnull @crc32ctable_le) #4
  %173 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef 8, i32 noundef 256)
  br label %174

174:                                              ; preds = %189, %171
  %175 = phi i64 [ 0, %171 ], [ %193, %189 ]
  %176 = tail call i32 @putchar(i32 123) #4
  br label %177

177:                                              ; preds = %183, %174
  %178 = phi i64 [ 0, %174 ], [ %187, %183 ]
  %179 = and i64 %178, 3
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = tail call i32 @putchar(i32 10) #4
  br label %183

183:                                              ; preds = %181, %177
  %184 = getelementptr inbounds [256 x i32], ptr @crc32ctable_le, i64 %175, i64 %178
  %185 = load i32, ptr %184, align 4, !tbaa !5
  %186 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef %185) #4
  %187 = add nuw nsw i64 %178, 1
  %188 = icmp eq i64 %187, 255
  br i1 %188, label %189, label %177

189:                                              ; preds = %183
  %190 = getelementptr inbounds [256 x i32], ptr @crc32ctable_le, i64 %175, i64 255
  %191 = load i32, ptr %190, align 4, !tbaa !5
  %192 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef %191) #4
  %193 = add nuw nsw i64 %175, 1
  %194 = icmp eq i64 %193, 8
  br i1 %194, label %195, label %174

195:                                              ; preds = %189
  %196 = tail call i32 @puts(ptr nonnull @str.13)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal fastcc void @crc32init_le_generic(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  store i32 0, ptr %1, align 4, !tbaa !5
  %3 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 128
  store i32 %0, ptr %3, align 4, !tbaa !5
  %4 = lshr i32 %0, 1
  %5 = and i32 %0, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 %0
  %8 = xor i32 %7, %4
  %9 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 64
  store i32 %8, ptr %9, align 4, !tbaa !5
  %10 = xor i32 %8, %0
  %11 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 192
  store i32 %10, ptr %11, align 4, !tbaa !5
  %12 = lshr i32 %8, 1
  %13 = and i32 %8, 1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 0, i32 %0
  %16 = xor i32 %15, %12
  %17 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 32
  store i32 %16, ptr %17, align 4, !tbaa !5
  %18 = xor i32 %8, %16
  %19 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 96
  store i32 %18, ptr %19, align 4, !tbaa !5
  %20 = xor i32 %16, %0
  %21 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 160
  store i32 %20, ptr %21, align 4, !tbaa !5
  %22 = xor i32 %10, %16
  %23 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 224
  store i32 %22, ptr %23, align 4, !tbaa !5
  %24 = lshr i32 %16, 1
  %25 = and i32 %16, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 %0
  %28 = xor i32 %27, %24
  %29 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 16
  store i32 %28, ptr %29, align 4, !tbaa !5
  %30 = xor i32 %16, %28
  %31 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 48
  store i32 %30, ptr %31, align 4, !tbaa !5
  %32 = xor i32 %8, %28
  %33 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 80
  store i32 %32, ptr %33, align 4, !tbaa !5
  %34 = xor i32 %18, %28
  %35 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 112
  store i32 %34, ptr %35, align 4, !tbaa !5
  %36 = xor i32 %28, %0
  %37 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 144
  store i32 %36, ptr %37, align 4, !tbaa !5
  %38 = xor i32 %20, %28
  %39 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 176
  store i32 %38, ptr %39, align 4, !tbaa !5
  %40 = xor i32 %10, %28
  %41 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 208
  store i32 %40, ptr %41, align 4, !tbaa !5
  %42 = xor i32 %22, %28
  %43 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 240
  store i32 %42, ptr %43, align 4, !tbaa !5
  %44 = lshr i32 %28, 1
  %45 = and i32 %28, 1
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 0, i32 %0
  %48 = xor i32 %47, %44
  %49 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 8
  store i32 %48, ptr %49, align 4, !tbaa !5
  %50 = xor i32 %28, %48
  %51 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 24
  store i32 %50, ptr %51, align 4, !tbaa !5
  %52 = xor i32 %16, %48
  %53 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 40
  store i32 %52, ptr %53, align 4, !tbaa !5
  %54 = xor i32 %30, %48
  %55 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 56
  store i32 %54, ptr %55, align 4, !tbaa !5
  %56 = xor i32 %8, %48
  %57 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 72
  store i32 %56, ptr %57, align 4, !tbaa !5
  %58 = xor i32 %32, %48
  %59 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 88
  store i32 %58, ptr %59, align 4, !tbaa !5
  %60 = xor i32 %18, %48
  %61 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 104
  store i32 %60, ptr %61, align 4, !tbaa !5
  %62 = xor i32 %34, %48
  %63 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 120
  store i32 %62, ptr %63, align 4, !tbaa !5
  %64 = xor i32 %48, %0
  %65 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 136
  store i32 %64, ptr %65, align 4, !tbaa !5
  %66 = xor i32 %36, %48
  %67 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 152
  store i32 %66, ptr %67, align 4, !tbaa !5
  %68 = xor i32 %20, %48
  %69 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 168
  store i32 %68, ptr %69, align 4, !tbaa !5
  %70 = xor i32 %38, %48
  %71 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 184
  store i32 %70, ptr %71, align 4, !tbaa !5
  %72 = xor i32 %10, %48
  %73 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 200
  store i32 %72, ptr %73, align 4, !tbaa !5
  %74 = xor i32 %40, %48
  %75 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 216
  store i32 %74, ptr %75, align 4, !tbaa !5
  %76 = xor i32 %22, %48
  %77 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 232
  store i32 %76, ptr %77, align 4, !tbaa !5
  %78 = xor i32 %42, %48
  %79 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 248
  store i32 %78, ptr %79, align 4, !tbaa !5
  %80 = lshr i32 %48, 1
  %81 = and i32 %48, 1
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 0, i32 %0
  %84 = xor i32 %83, %80
  br label %85

85:                                               ; preds = %85, %2
  %86 = phi i64 [ 0, %2 ], [ %110, %85 ]
  %87 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !5
  %89 = xor i32 %88, %84
  %90 = or i64 %86, 4
  %91 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %90
  store i32 %89, ptr %91, align 4, !tbaa !5
  %92 = or i64 %86, 8
  %93 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !5
  %95 = xor i32 %94, %84
  %96 = or i64 %86, 12
  %97 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %96
  store i32 %95, ptr %97, align 4, !tbaa !5
  %98 = or i64 %86, 16
  %99 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = xor i32 %100, %84
  %102 = or i64 %86, 20
  %103 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %102
  store i32 %101, ptr %103, align 4, !tbaa !5
  %104 = or i64 %86, 24
  %105 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !5
  %107 = xor i32 %106, %84
  %108 = or i64 %86, 28
  %109 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %108
  store i32 %107, ptr %109, align 4, !tbaa !5
  %110 = add nuw nsw i64 %86, 32
  %111 = icmp ult i64 %104, 248
  br i1 %111, label %85, label %112

112:                                              ; preds = %85
  %113 = lshr i32 %84, 1
  %114 = and i32 %84, 1
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i32 0, i32 %0
  %117 = xor i32 %116, %113
  br label %118

118:                                              ; preds = %118, %112
  %119 = phi i64 [ 0, %112 ], [ %143, %118 ]
  %120 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !5
  %122 = xor i32 %121, %117
  %123 = or i64 %119, 2
  %124 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %123
  store i32 %122, ptr %124, align 4, !tbaa !5
  %125 = or i64 %119, 4
  %126 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !5
  %128 = xor i32 %127, %117
  %129 = or i64 %119, 6
  %130 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %129
  store i32 %128, ptr %130, align 4, !tbaa !5
  %131 = or i64 %119, 8
  %132 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !5
  %134 = xor i32 %133, %117
  %135 = or i64 %119, 10
  %136 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %135
  store i32 %134, ptr %136, align 4, !tbaa !5
  %137 = or i64 %119, 12
  %138 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !5
  %140 = xor i32 %139, %117
  %141 = or i64 %119, 14
  %142 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %141
  store i32 %140, ptr %142, align 4, !tbaa !5
  %143 = add nuw nsw i64 %119, 16
  %144 = icmp ult i64 %137, 252
  br i1 %144, label %118, label %145

145:                                              ; preds = %118
  %146 = lshr i32 %117, 1
  %147 = and i32 %117, 1
  %148 = icmp eq i32 %147, 0
  %149 = select i1 %148, i32 0, i32 %0
  %150 = xor i32 %149, %146
  br label %151

151:                                              ; preds = %151, %145
  %152 = phi i64 [ 0, %145 ], [ %176, %151 ]
  %153 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !5
  %155 = xor i32 %154, %150
  %156 = or i64 %152, 1
  %157 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %156
  store i32 %155, ptr %157, align 4, !tbaa !5
  %158 = or i64 %152, 2
  %159 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !5
  %161 = xor i32 %160, %150
  %162 = or i64 %152, 3
  %163 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %162
  store i32 %161, ptr %163, align 4, !tbaa !5
  %164 = or i64 %152, 4
  %165 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !5
  %167 = xor i32 %166, %150
  %168 = or i64 %152, 5
  %169 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %168
  store i32 %167, ptr %169, align 4, !tbaa !5
  %170 = or i64 %152, 6
  %171 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !5
  %173 = xor i32 %172, %150
  %174 = or i64 %152, 7
  %175 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %174
  store i32 %173, ptr %175, align 4, !tbaa !5
  %176 = add nuw nsw i64 %152, 8
  %177 = icmp ult i64 %170, 254
  br i1 %177, label %151, label %178

178:                                              ; preds = %178, %151
  %179 = phi i64 [ %231, %178 ], [ 0, %151 ]
  %180 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !5
  %182 = and i32 %181, 255
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !5
  %186 = lshr i32 %181, 8
  %187 = xor i32 %185, %186
  %188 = getelementptr inbounds [256 x i32], ptr %1, i64 1, i64 %179
  store i32 %187, ptr %188, align 4, !tbaa !5
  %189 = and i32 %187, 255
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !5
  %193 = lshr i32 %187, 8
  %194 = xor i32 %192, %193
  %195 = getelementptr inbounds [256 x i32], ptr %1, i64 2, i64 %179
  store i32 %194, ptr %195, align 4, !tbaa !5
  %196 = and i32 %194, 255
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !5
  %200 = lshr i32 %194, 8
  %201 = xor i32 %199, %200
  %202 = getelementptr inbounds [256 x i32], ptr %1, i64 3, i64 %179
  store i32 %201, ptr %202, align 4, !tbaa !5
  %203 = and i32 %201, 255
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !5
  %207 = lshr i32 %201, 8
  %208 = xor i32 %206, %207
  %209 = getelementptr inbounds [256 x i32], ptr %1, i64 4, i64 %179
  store i32 %208, ptr %209, align 4, !tbaa !5
  %210 = and i32 %208, 255
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !5
  %214 = lshr i32 %208, 8
  %215 = xor i32 %213, %214
  %216 = getelementptr inbounds [256 x i32], ptr %1, i64 5, i64 %179
  store i32 %215, ptr %216, align 4, !tbaa !5
  %217 = and i32 %215, 255
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !5
  %221 = lshr i32 %215, 8
  %222 = xor i32 %220, %221
  %223 = getelementptr inbounds [256 x i32], ptr %1, i64 6, i64 %179
  store i32 %222, ptr %223, align 4, !tbaa !5
  %224 = and i32 %222, 255
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [256 x i32], ptr %1, i64 0, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !5
  %228 = lshr i32 %222, 8
  %229 = xor i32 %227, %228
  %230 = getelementptr inbounds [256 x i32], ptr %1, i64 7, i64 %179
  store i32 %229, ptr %230, align 4, !tbaa !5
  %231 = add nuw nsw i64 %179, 1
  %232 = icmp eq i64 %231, 256
  br i1 %232, label %233, label %178

233:                                              ; preds = %178
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
