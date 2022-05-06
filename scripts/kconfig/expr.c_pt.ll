; ModuleID = '/llk/IR/scripts/kconfig/expr.c_pt.bc'
source_filename = "../scripts/kconfig/expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }
%union.string_value = type { i64 }
%struct.gstr = type { i64, ptr, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"can't copy type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"how to free type %d?\0A\00", align 1
@trans_count = internal unnamed_addr global i32 0, align 4
@symbol_no = external global %struct.symbol, align 8
@symbol_mod = external global %struct.symbol, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"boolean symbol %s tested for 'm'? test forced to 'n'\0A\00", align 1
@symbol_yes = external global %struct.symbol, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"boolean symbol %s tested for 'm'? test forced to 'y'\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"expr_calc_value: %d?\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"expr_calc_value: relation %d?\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"<unknown type %d>\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"len != 0\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"../scripts/kconfig/lkc.h\00", align 1
@__PRETTY_FUNCTION__.xfwrite = private unnamed_addr constant [51 x i8] c"void xfwrite(const void *, size_t, size_t, FILE *)\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"Error in writing or end of file.\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c" [=%s]\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"  - \00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_symbol(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.expr, ptr %2, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !9
  ret ptr %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_one(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 %0, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !9
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_two(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 %0, ptr %4, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !9
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_comp(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 %0, ptr %4, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !9
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_and(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 2, ptr %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.expr, ptr %7, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.expr, ptr %7, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %6, %4, %2
  %11 = phi ptr [ %1, %2 ], [ %7, %6 ], [ %0, %4 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_or(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 1, ptr %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.expr, ptr %7, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.expr, ptr %7, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %6, %4, %2
  %11 = phi ptr [ %1, %2 ], [ %7, %6 ], [ %0, %4 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_copy(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @xmalloc(i64 noundef 24) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %5 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %5, label %33 [
    i32 11, label %6
    i32 3, label %12
    i32 4, label %17
    i32 9, label %17
    i32 8, label %17
    i32 7, label %17
    i32 6, label %17
    i32 5, label %17
    i32 2, label %24
    i32 1, label %24
    i32 10, label %24
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %33, %24, %17, %12, %6, %1
  %11 = phi ptr [ %4, %12 ], [ %4, %24 ], [ null, %1 ], [ null, %33 ], [ %4, %17 ], [ %4, %6 ]
  ret ptr %11

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = tail call ptr @expr_copy(ptr noundef %14)
  %16 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !9
  br label %10

17:                                               ; preds = %3, %3, %3, %3, %3, %3
  %18 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !9
  br label %10

24:                                               ; preds = %3, %3, %3
  %25 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = tail call ptr @expr_copy(ptr noundef %26)
  %28 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = tail call ptr @expr_copy(ptr noundef %30)
  %32 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !9
  br label %10

33:                                               ; preds = %3
  %34 = load ptr, ptr @stderr, align 8, !tbaa !10
  %35 = load i32, ptr %4, align 8, !tbaa !5
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef %35) #15
  tail call void @free(ptr noundef nonnull %4) #14
  br label %10
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @expr_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %4, label %13 [
    i32 11, label %16
    i32 3, label %5
    i32 4, label %16
    i32 9, label %16
    i32 8, label %16
    i32 7, label %16
    i32 6, label %16
    i32 5, label %16
    i32 1, label %8
    i32 2, label %8
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %7)
  br label %16

8:                                                ; preds = %3, %3
  %9 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %10)
  %11 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %12)
  br label %16

13:                                               ; preds = %3
  %14 = load ptr, ptr @stderr, align 8, !tbaa !10
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %4) #15
  br label %16

16:                                               ; preds = %13, %8, %5, %3, %3, %3, %3, %3, %3, %3
  tail call void @free(ptr noundef nonnull %0) #14
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @expr_eliminate_eq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 8, !tbaa !5
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  tail call fastcc void @__expr_eliminate_eq(i32 noundef %9, ptr noundef nonnull %0, ptr noundef nonnull %1)
  %13 = load ptr, ptr %0, align 8, !tbaa !10
  %14 = load i32, ptr %13, align 8, !tbaa !5
  %15 = load ptr, ptr %1, align 8, !tbaa !10
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %6, %8 ], [ %15, %12 ]
  %18 = phi i32 [ %9, %8 ], [ %14, %12 ]
  %19 = phi ptr [ %3, %8 ], [ %13, %12 ]
  %20 = load i32, ptr %17, align 8, !tbaa !5
  %21 = icmp ne i32 %18, %20
  %22 = add i32 %20, -1
  %23 = icmp ult i32 %22, 2
  %24 = and i1 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  tail call fastcc void @__expr_eliminate_eq(i32 noundef %20, ptr noundef nonnull %0, ptr noundef nonnull %1)
  %26 = load ptr, ptr %0, align 8, !tbaa !10
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi ptr [ %26, %25 ], [ %19, %16 ]
  %29 = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %28)
  store ptr %28, ptr %0, align 8, !tbaa !10
  %30 = load ptr, ptr %1, align 8, !tbaa !10
  %31 = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %30)
  store ptr %30, ptr %1, align 8, !tbaa !10
  br label %32

32:                                               ; preds = %27, %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @__expr_eliminate_eq(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %14, %3
  %5 = phi ptr [ %19, %14 ], [ %1, %3 ]
  %6 = phi ptr [ %15, %14 ], [ %2, %3 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !10
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 8, !tbaa !10
  %12 = load i32, ptr %11, align 8, !tbaa !5
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %24, label %33

14:                                               ; preds = %24, %4
  %15 = phi ptr [ %6, %4 ], [ %29, %24 ]
  %16 = phi ptr [ %7, %4 ], [ %30, %24 ]
  %17 = getelementptr inbounds %struct.expr, ptr %16, i64 0, i32 1
  tail call fastcc void @__expr_eliminate_eq(i32 noundef %0, ptr noundef nonnull %17, ptr noundef %15)
  %18 = load ptr, ptr %5, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.expr, ptr %18, i64 0, i32 2
  br label %4

20:                                               ; preds = %24
  %21 = load ptr, ptr %29, align 8, !tbaa !10
  %22 = load i32, ptr %21, align 8, !tbaa !5
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20, %10
  %25 = phi ptr [ %21, %20 ], [ %11, %10 ]
  %26 = phi ptr [ %29, %20 ], [ %6, %10 ]
  %27 = getelementptr inbounds %struct.expr, ptr %25, i64 0, i32 1
  tail call fastcc void @__expr_eliminate_eq(i32 noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %27)
  %28 = load ptr, ptr %26, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %5, align 8, !tbaa !10
  %31 = load i32, ptr %30, align 8, !tbaa !5
  %32 = icmp eq i32 %31, %0
  br i1 %32, label %14, label %20

33:                                               ; preds = %20, %10
  %34 = phi i32 [ %31, %20 ], [ %8, %10 ]
  %35 = phi ptr [ %30, %20 ], [ %7, %10 ]
  %36 = phi ptr [ %29, %20 ], [ %6, %10 ]
  %37 = phi ptr [ %21, %20 ], [ %11, %10 ]
  %38 = phi i32 [ %22, %20 ], [ %12, %10 ]
  %39 = icmp eq i32 %34, 11
  %40 = icmp eq i32 %38, 11
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.expr, ptr %35, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.expr, ptr %37, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = icmp eq ptr %44, @symbol_yes
  %50 = icmp eq ptr %44, @symbol_no
  %51 = or i1 %49, %50
  br i1 %51, label %67, label %52

52:                                               ; preds = %48, %42, %33
  %53 = tail call i32 @expr_eq(ptr noundef nonnull %35, ptr noundef nonnull %37)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr @trans_count, align 4, !tbaa !12
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr @trans_count, align 4, !tbaa !12
  %58 = load ptr, ptr %5, align 8, !tbaa !10
  tail call void @expr_free(ptr noundef %58)
  %59 = load ptr, ptr %36, align 8, !tbaa !10
  tail call void @expr_free(ptr noundef %59)
  switch i32 %0, label %67 [
    i32 1, label %61
    i32 2, label %60
  ]

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %55
  %62 = phi ptr [ @symbol_yes, %60 ], [ @symbol_no, %55 ]
  %63 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %63, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.expr, ptr %63, i64 0, i32 1
  store ptr %62, ptr %64, align 8, !tbaa !9
  store ptr %63, ptr %5, align 8, !tbaa !10
  %65 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %65, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.expr, ptr %65, i64 0, i32 1
  store ptr %62, ptr %66, align 8, !tbaa !9
  store ptr %65, ptr %36, align 8, !tbaa !10
  br label %67

67:                                               ; preds = %61, %55, %52, %48
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @expr_eliminate_yn(ptr noundef returned %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %71, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %4, label %71 [
    i32 2, label %5
    i32 1, label %38
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %7)
  store ptr %7, ptr %6, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %10)
  store ptr %10, ptr %9, align 8, !tbaa !9
  %12 = load ptr, ptr %6, align 8, !tbaa !9
  %13 = load i32, ptr %12, align 8, !tbaa !5
  %14 = icmp eq i32 %13, 11
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = icmp eq ptr %17, @symbol_no
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  tail call void @expr_free(ptr noundef nonnull %12)
  %20 = load ptr, ptr %9, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %20)
  store i32 11, ptr %0, align 8, !tbaa !5
  store ptr @symbol_no, ptr %6, align 8, !tbaa !9
  store ptr null, ptr %9, align 8, !tbaa !9
  br label %71

21:                                               ; preds = %15
  %22 = icmp eq ptr %17, @symbol_yes
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %12) #14
  %24 = load ptr, ptr %9, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %24, i64 24, i1 false), !tbaa.struct !14
  tail call void @free(ptr noundef %24) #14
  br label %71

25:                                               ; preds = %21, %5
  %26 = load i32, ptr %10, align 8, !tbaa !5
  %27 = icmp eq i32 %26, 11
  br i1 %27, label %28, label %71

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.expr, ptr %10, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = icmp eq ptr %30, @symbol_no
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  tail call void @expr_free(ptr noundef nonnull %12)
  %33 = load ptr, ptr %9, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %33)
  store i32 11, ptr %0, align 8, !tbaa !5
  store ptr @symbol_no, ptr %6, align 8, !tbaa !9
  store ptr null, ptr %9, align 8, !tbaa !9
  br label %71

34:                                               ; preds = %28
  %35 = icmp eq ptr %30, @symbol_yes
  br i1 %35, label %36, label %71

36:                                               ; preds = %34
  tail call void @free(ptr noundef nonnull %10) #14
  %37 = load ptr, ptr %6, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %37, i64 24, i1 false), !tbaa.struct !14
  tail call void @free(ptr noundef %37) #14
  br label %71

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  %41 = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %40)
  store ptr %40, ptr %39, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %43)
  store ptr %43, ptr %42, align 8, !tbaa !9
  %45 = load ptr, ptr %39, align 8, !tbaa !9
  %46 = load i32, ptr %45, align 8, !tbaa !5
  %47 = icmp eq i32 %46, 11
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.expr, ptr %45, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = icmp eq ptr %50, @symbol_no
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  tail call void @free(ptr noundef nonnull %45) #14
  %53 = load ptr, ptr %42, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %53, i64 24, i1 false), !tbaa.struct !14
  tail call void @free(ptr noundef %53) #14
  br label %71

54:                                               ; preds = %48
  %55 = icmp eq ptr %50, @symbol_yes
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  tail call void @expr_free(ptr noundef nonnull %45)
  %57 = load ptr, ptr %42, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %57)
  store i32 11, ptr %0, align 8, !tbaa !5
  store ptr @symbol_yes, ptr %39, align 8, !tbaa !9
  store ptr null, ptr %42, align 8, !tbaa !9
  br label %71

58:                                               ; preds = %54, %38
  %59 = load i32, ptr %43, align 8, !tbaa !5
  %60 = icmp eq i32 %59, 11
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.expr, ptr %43, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !9
  %64 = icmp eq ptr %63, @symbol_no
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %43) #14
  %66 = load ptr, ptr %39, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %66, i64 24, i1 false), !tbaa.struct !14
  tail call void @free(ptr noundef %66) #14
  br label %71

67:                                               ; preds = %61
  %68 = icmp eq ptr %63, @symbol_yes
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  tail call void @expr_free(ptr noundef nonnull %45)
  %70 = load ptr, ptr %42, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %70)
  store i32 11, ptr %0, align 8, !tbaa !5
  store ptr @symbol_yes, ptr %39, align 8, !tbaa !9
  store ptr null, ptr %42, align 8, !tbaa !9
  br label %71

71:                                               ; preds = %69, %67, %65, %58, %56, %52, %36, %34, %32, %25, %23, %19, %3, %1
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @expr_eq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %29, label %8

8:                                                ; preds = %56, %2
  %9 = phi ptr [ %1, %2 ], [ %60, %56 ]
  %10 = phi ptr [ %0, %2 ], [ %58, %56 ]
  store ptr %10, ptr %3, align 8, !tbaa !10
  store ptr %9, ptr %4, align 8, !tbaa !10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !5
  %14 = icmp eq i32 %13, 11
  br i1 %14, label %15, label %86

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.expr, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = icmp eq ptr %17, @symbol_yes
  br i1 %18, label %19, label %86

19:                                               ; preds = %15, %8
  %20 = icmp eq ptr %9, null
  br i1 %20, label %86, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr %9, align 8, !tbaa !5
  %23 = icmp eq i32 %22, 11
  br i1 %23, label %24, label %86

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.expr, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = icmp eq ptr %26, @symbol_yes
  %28 = zext i1 %27 to i32
  br label %86

29:                                               ; preds = %56, %2
  %30 = phi ptr [ %60, %56 ], [ %1, %2 ]
  %31 = phi ptr [ %58, %56 ], [ %0, %2 ]
  %32 = load i32, ptr %31, align 8, !tbaa !5
  %33 = load i32, ptr %30, align 8, !tbaa !5
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %29
  switch i32 %32, label %85 [
    i32 4, label %36
    i32 9, label %36
    i32 8, label %36
    i32 7, label %36
    i32 6, label %36
    i32 5, label %36
    i32 11, label %49
    i32 3, label %56
    i32 2, label %64
    i32 1, label %64
  ]

36:                                               ; preds = %35, %35, %35, %35, %35, %35
  store ptr %31, ptr %3, align 8, !tbaa !10
  store ptr %30, ptr %4, align 8, !tbaa !10
  %37 = getelementptr inbounds %struct.expr, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = getelementptr inbounds %struct.expr, ptr %30, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.expr, ptr %31, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.expr, ptr %30, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = icmp eq ptr %44, %46
  %48 = zext i1 %47 to i32
  br label %86

49:                                               ; preds = %35
  store ptr %31, ptr %3, align 8, !tbaa !10
  store ptr %30, ptr %4, align 8, !tbaa !10
  %50 = getelementptr inbounds %struct.expr, ptr %31, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.expr, ptr %30, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !9
  %54 = icmp eq ptr %51, %53
  %55 = zext i1 %54 to i32
  br label %86

56:                                               ; preds = %35
  %57 = getelementptr inbounds %struct.expr, ptr %31, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !9
  %59 = getelementptr inbounds %struct.expr, ptr %30, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  %61 = icmp ne ptr %58, null
  %62 = icmp ne ptr %60, null
  %63 = and i1 %61, %62
  br i1 %63, label %29, label %8

64:                                               ; preds = %35, %35
  %65 = tail call ptr @expr_copy(ptr noundef nonnull %31)
  store ptr %65, ptr %3, align 8, !tbaa !10
  %66 = tail call ptr @expr_copy(ptr noundef nonnull %30)
  store ptr %66, ptr %4, align 8, !tbaa !10
  %67 = load i32, ptr @trans_count, align 4, !tbaa !12
  call void @expr_eliminate_eq(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %68 = load ptr, ptr %3, align 8, !tbaa !10
  %69 = load i32, ptr %68, align 8, !tbaa !5
  %70 = icmp eq i32 %69, 11
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load ptr, ptr %4, align 8, !tbaa !10
  %73 = load i32, ptr %72, align 8, !tbaa !5
  %74 = icmp eq i32 %73, 11
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.expr, ptr %68, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !9
  %78 = getelementptr inbounds %struct.expr, ptr %72, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = icmp eq ptr %77, %79
  %81 = zext i1 %80 to i32
  br label %82

82:                                               ; preds = %75, %71, %64
  %83 = phi i32 [ 0, %71 ], [ 0, %64 ], [ %81, %75 ]
  call void @expr_free(ptr noundef nonnull %68)
  %84 = load ptr, ptr %4, align 8, !tbaa !10
  call void @expr_free(ptr noundef %84)
  store i32 %67, ptr @trans_count, align 4, !tbaa !12
  br label %86

85:                                               ; preds = %35, %29
  store ptr %31, ptr %3, align 8, !tbaa !10
  store ptr %30, ptr %4, align 8, !tbaa !10
  br label %86

86:                                               ; preds = %85, %82, %49, %42, %36, %24, %21, %19, %15, %12
  %87 = phi i32 [ %83, %82 ], [ %55, %49 ], [ 0, %15 ], [ 0, %36 ], [ %48, %42 ], [ 0, %12 ], [ 1, %19 ], [ 0, %21 ], [ %28, %24 ], [ 0, %85 ]
  ret i32 %87
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local ptr @expr_trans_bool(ptr noundef %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %4, label %5 [
    i32 2, label %6
    i32 1, label %6
    i32 3, label %6
    i32 5, label %13
  ]

5:                                                ; preds = %23, %19, %13, %6, %3, %1
  ret ptr %0

6:                                                ; preds = %3, %3, %3
  %7 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = tail call ptr @expr_trans_bool(ptr noundef %8)
  store ptr %9, ptr %7, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = tail call ptr @expr_trans_bool(ptr noundef %11)
  store ptr %12, ptr %10, align 8, !tbaa !9
  br label %5

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !15
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %5

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = icmp eq ptr %21, @symbol_no
  br i1 %22, label %23, label %5

23:                                               ; preds = %19
  store i32 11, ptr %0, align 8, !tbaa !5
  store ptr null, ptr %20, align 8, !tbaa !9
  br label %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_eliminate_dups(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !10
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @trans_count, align 4, !tbaa !12
  store i32 0, ptr @trans_count, align 4, !tbaa !12
  %6 = load i32, ptr %0, align 8, !tbaa !5
  %7 = add i32 %6, -1
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %19

9:                                                ; preds = %14, %4
  %10 = phi i32 [ %16, %14 ], [ %6, %4 ]
  call fastcc void @expr_eliminate_dups1(i32 noundef %10, ptr noundef nonnull %2, ptr noundef nonnull %2)
  %11 = load i32, ptr @trans_count, align 4, !tbaa !12
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr %2, align 8, !tbaa !10
  br i1 %12, label %19, label %14

14:                                               ; preds = %9
  %15 = call fastcc ptr @expr_eliminate_yn(ptr noundef %13)
  store ptr %13, ptr %2, align 8, !tbaa !10
  store i32 0, ptr @trans_count, align 4, !tbaa !12
  %16 = load i32, ptr %13, align 8, !tbaa !5
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %9, label %19

19:                                               ; preds = %14, %9, %4
  %20 = phi ptr [ %0, %4 ], [ %13, %9 ], [ %13, %14 ]
  store i32 %5, ptr @trans_count, align 4, !tbaa !12
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi ptr [ %20, %19 ], [ null, %1 ]
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expr_eliminate_dups1(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %14, %3
  %5 = phi ptr [ %19, %14 ], [ %1, %3 ]
  %6 = phi ptr [ %15, %14 ], [ %2, %3 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !10
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 8, !tbaa !10
  %12 = load i32, ptr %11, align 8, !tbaa !5
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %24, label %33

14:                                               ; preds = %24, %4
  %15 = phi ptr [ %6, %4 ], [ %29, %24 ]
  %16 = phi ptr [ %7, %4 ], [ %30, %24 ]
  %17 = getelementptr inbounds %struct.expr, ptr %16, i64 0, i32 1
  tail call fastcc void @expr_eliminate_dups1(i32 noundef %0, ptr noundef nonnull %17, ptr noundef %15)
  %18 = load ptr, ptr %5, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.expr, ptr %18, i64 0, i32 2
  br label %4

20:                                               ; preds = %24
  %21 = load ptr, ptr %29, align 8, !tbaa !10
  %22 = load i32, ptr %21, align 8, !tbaa !5
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20, %10
  %25 = phi ptr [ %21, %20 ], [ %11, %10 ]
  %26 = phi ptr [ %29, %20 ], [ %6, %10 ]
  %27 = getelementptr inbounds %struct.expr, ptr %25, i64 0, i32 1
  tail call fastcc void @expr_eliminate_dups1(i32 noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %27)
  %28 = load ptr, ptr %26, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %5, align 8, !tbaa !10
  %31 = load i32, ptr %30, align 8, !tbaa !5
  %32 = icmp eq i32 %31, %0
  br i1 %32, label %14, label %20

33:                                               ; preds = %20, %10
  %34 = phi i32 [ %31, %20 ], [ %8, %10 ]
  %35 = phi ptr [ %30, %20 ], [ %7, %10 ]
  %36 = phi ptr [ %29, %20 ], [ %6, %10 ]
  %37 = phi ptr [ %21, %20 ], [ %11, %10 ]
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %317, label %39

39:                                               ; preds = %33
  %40 = add i32 %34, -1
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call fastcc void @expr_eliminate_dups1(i32 noundef %34, ptr noundef nonnull %5, ptr noundef nonnull %5)
  br label %43

43:                                               ; preds = %42, %39
  switch i32 %0, label %317 [
    i32 1, label %44
    i32 2, label %145
  ]

44:                                               ; preds = %43
  %45 = load ptr, ptr %5, align 8, !tbaa !10
  %46 = load ptr, ptr %36, align 8, !tbaa !10
  %47 = tail call i32 @expr_eq(ptr noundef %45, ptr noundef %46) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %142

49:                                               ; preds = %44
  %50 = load i32, ptr %45, align 8, !tbaa !5
  switch i32 %50, label %317 [
    i32 4, label %51
    i32 5, label %51
    i32 11, label %51
    i32 3, label %51
  ]

51:                                               ; preds = %49, %49, %49, %49
  %52 = load i32, ptr %46, align 8, !tbaa !5
  switch i32 %52, label %317 [
    i32 4, label %53
    i32 5, label %53
    i32 11, label %53
    i32 3, label %53
  ]

53:                                               ; preds = %51, %51, %51, %51
  %54 = icmp eq i32 %50, 3
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.expr, ptr %45, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = load i32, ptr %57, align 8, !tbaa !5
  switch i32 %58, label %317 [
    i32 4, label %59
    i32 5, label %59
    i32 11, label %59
  ]

59:                                               ; preds = %55, %55, %55, %53
  %60 = phi ptr [ %57, %55 ], [ %57, %55 ], [ %57, %55 ], [ %45, %53 ]
  %61 = getelementptr inbounds %struct.expr, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !9
  %63 = icmp eq i32 %52, 3
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !9
  %67 = load i32, ptr %66, align 8, !tbaa !5
  %68 = icmp eq i32 %67, 11
  br i1 %68, label %69, label %317

69:                                               ; preds = %64, %59
  %70 = phi ptr [ %66, %64 ], [ %46, %59 ]
  %71 = getelementptr inbounds %struct.expr, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  %73 = icmp eq ptr %62, %72
  br i1 %73, label %74, label %317

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.symbol, ptr %62, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !15
  %77 = add i32 %76, -1
  %78 = icmp ult i32 %77, 2
  br i1 %78, label %79, label %317

79:                                               ; preds = %74
  %80 = icmp eq i32 %76, 2
  br i1 %80, label %81, label %123

81:                                               ; preds = %79
  %82 = icmp eq i32 %50, 4
  %83 = icmp eq i32 %52, 4
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %317

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.expr, ptr %45, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = icmp eq ptr %87, @symbol_yes
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !9
  %92 = icmp eq ptr %91, @symbol_mod
  br i1 %92, label %99, label %103

93:                                               ; preds = %85
  %94 = icmp eq ptr %87, @symbol_mod
  br i1 %94, label %95, label %105

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !9
  %98 = icmp eq ptr %97, @symbol_yes
  br i1 %98, label %99, label %115

99:                                               ; preds = %95, %89
  %100 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 5, ptr %100, align 8, !tbaa !5
  %101 = getelementptr inbounds %struct.expr, ptr %100, i64 0, i32 1
  store ptr %62, ptr %101, align 8, !tbaa !9
  %102 = getelementptr inbounds %struct.expr, ptr %100, i64 0, i32 2
  store ptr @symbol_no, ptr %102, align 8, !tbaa !9
  br label %308

103:                                              ; preds = %89
  %104 = icmp eq ptr %91, @symbol_no
  br i1 %104, label %111, label %317

105:                                              ; preds = %93
  %106 = icmp eq ptr %87, @symbol_no
  br i1 %106, label %107, label %317

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !9
  %110 = icmp eq ptr %109, @symbol_yes
  br i1 %110, label %111, label %117

111:                                              ; preds = %107, %103
  %112 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 5, ptr %112, align 8, !tbaa !5
  %113 = getelementptr inbounds %struct.expr, ptr %112, i64 0, i32 1
  store ptr %62, ptr %113, align 8, !tbaa !9
  %114 = getelementptr inbounds %struct.expr, ptr %112, i64 0, i32 2
  store ptr @symbol_mod, ptr %114, align 8, !tbaa !9
  br label %308

115:                                              ; preds = %95
  %116 = icmp eq ptr %97, @symbol_no
  br i1 %116, label %119, label %317

117:                                              ; preds = %107
  %118 = icmp eq ptr %109, @symbol_mod
  br i1 %118, label %119, label %317

119:                                              ; preds = %117, %115
  %120 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 5, ptr %120, align 8, !tbaa !5
  %121 = getelementptr inbounds %struct.expr, ptr %120, i64 0, i32 1
  store ptr %62, ptr %121, align 8, !tbaa !9
  %122 = getelementptr inbounds %struct.expr, ptr %120, i64 0, i32 2
  store ptr @symbol_yes, ptr %122, align 8, !tbaa !9
  br label %308

123:                                              ; preds = %79
  br i1 %54, label %124, label %131

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.expr, ptr %45, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !9
  %127 = load i32, ptr %126, align 8, !tbaa !5
  %128 = icmp eq i32 %127, 11
  %129 = icmp eq i32 %52, 11
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %139, label %131

131:                                              ; preds = %124, %123
  br i1 %63, label %132, label %317

132:                                              ; preds = %131
  %133 = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !9
  %135 = load i32, ptr %134, align 8, !tbaa !5
  %136 = icmp eq i32 %135, 11
  %137 = icmp eq i32 %50, 11
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %317

139:                                              ; preds = %132, %124
  %140 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %140, align 8, !tbaa !5
  %141 = getelementptr inbounds %struct.expr, ptr %140, i64 0, i32 1
  store ptr @symbol_yes, ptr %141, align 8, !tbaa !9
  br label %308

142:                                              ; preds = %44
  %143 = tail call ptr @expr_copy(ptr noundef %45) #14
  %144 = icmp eq ptr %143, null
  br i1 %144, label %317, label %308

145:                                              ; preds = %43
  %146 = load ptr, ptr %5, align 8, !tbaa !10
  %147 = load ptr, ptr %36, align 8, !tbaa !10
  %148 = tail call i32 @expr_eq(ptr noundef %146, ptr noundef %147) #14
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %305

150:                                              ; preds = %145
  %151 = load i32, ptr %146, align 8, !tbaa !5
  switch i32 %151, label %317 [
    i32 4, label %152
    i32 5, label %152
    i32 11, label %152
    i32 3, label %152
  ]

152:                                              ; preds = %150, %150, %150, %150
  %153 = load i32, ptr %147, align 8, !tbaa !5
  switch i32 %153, label %317 [
    i32 4, label %154
    i32 5, label %154
    i32 11, label %154
    i32 3, label %154
  ]

154:                                              ; preds = %152, %152, %152, %152
  %155 = icmp eq i32 %151, 3
  br i1 %155, label %156, label %160

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.expr, ptr %146, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !9
  %159 = load i32, ptr %158, align 8, !tbaa !5
  switch i32 %159, label %317 [
    i32 4, label %160
    i32 5, label %160
    i32 11, label %160
  ]

160:                                              ; preds = %156, %156, %156, %154
  %161 = phi ptr [ %158, %156 ], [ %158, %156 ], [ %158, %156 ], [ %146, %154 ]
  %162 = getelementptr inbounds %struct.expr, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !9
  %164 = icmp eq i32 %153, 3
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.expr, ptr %147, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !9
  %168 = load i32, ptr %167, align 8, !tbaa !5
  %169 = icmp eq i32 %168, 11
  br i1 %169, label %170, label %317

170:                                              ; preds = %165, %160
  %171 = phi ptr [ %167, %165 ], [ %147, %160 ]
  %172 = getelementptr inbounds %struct.expr, ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !9
  %174 = icmp eq ptr %163, %173
  br i1 %174, label %175, label %317

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.symbol, ptr %163, i64 0, i32 2
  %177 = load i32, ptr %176, align 8, !tbaa !15
  %178 = add i32 %177, -1
  %179 = icmp ult i32 %178, 2
  br i1 %179, label %180, label %317

180:                                              ; preds = %175
  %181 = icmp eq i32 %151, 11
  br i1 %181, label %182, label %187

182:                                              ; preds = %180
  switch i32 %153, label %217 [
    i32 4, label %183
    i32 5, label %198
  ]

183:                                              ; preds = %182
  %184 = getelementptr inbounds %struct.expr, ptr %147, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !9
  %186 = icmp eq ptr %185, @symbol_yes
  br i1 %186, label %194, label %217

187:                                              ; preds = %180
  %188 = icmp eq i32 %153, 11
  br i1 %188, label %189, label %217

189:                                              ; preds = %187
  switch i32 %151, label %217 [
    i32 4, label %190
    i32 5, label %202
  ]

190:                                              ; preds = %189
  %191 = getelementptr inbounds %struct.expr, ptr %146, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !9
  %193 = icmp eq ptr %192, @symbol_yes
  br i1 %193, label %194, label %317

194:                                              ; preds = %190, %183
  %195 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 4, ptr %195, align 8, !tbaa !5
  %196 = getelementptr inbounds %struct.expr, ptr %195, i64 0, i32 1
  store ptr %163, ptr %196, align 8, !tbaa !9
  %197 = getelementptr inbounds %struct.expr, ptr %195, i64 0, i32 2
  store ptr @symbol_yes, ptr %197, align 8, !tbaa !9
  br label %308

198:                                              ; preds = %182
  %199 = getelementptr inbounds %struct.expr, ptr %147, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !9
  %201 = icmp eq ptr %200, @symbol_no
  br i1 %201, label %206, label %209

202:                                              ; preds = %189
  %203 = getelementptr inbounds %struct.expr, ptr %146, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !9
  %205 = icmp eq ptr %204, @symbol_no
  br i1 %205, label %206, label %211

206:                                              ; preds = %202, %198
  %207 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %207, align 8, !tbaa !5
  %208 = getelementptr inbounds %struct.expr, ptr %207, i64 0, i32 1
  store ptr %163, ptr %208, align 8, !tbaa !9
  br label %308

209:                                              ; preds = %198
  %210 = icmp eq ptr %200, @symbol_mod
  br i1 %210, label %213, label %217

211:                                              ; preds = %202
  %212 = icmp eq ptr %204, @symbol_mod
  br i1 %212, label %213, label %217

213:                                              ; preds = %211, %209
  %214 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 4, ptr %214, align 8, !tbaa !5
  %215 = getelementptr inbounds %struct.expr, ptr %214, i64 0, i32 1
  store ptr %163, ptr %215, align 8, !tbaa !9
  %216 = getelementptr inbounds %struct.expr, ptr %214, i64 0, i32 2
  store ptr @symbol_yes, ptr %216, align 8, !tbaa !9
  br label %308

217:                                              ; preds = %211, %209, %189, %187, %183, %182
  %218 = icmp eq i32 %177, 2
  br i1 %218, label %219, label %317

219:                                              ; preds = %217
  switch i32 %151, label %317 [
    i32 4, label %220
    i32 5, label %244
  ]

220:                                              ; preds = %219
  %221 = icmp eq i32 %153, 5
  br i1 %221, label %222, label %317

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.expr, ptr %146, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !9
  %225 = getelementptr inbounds %struct.expr, ptr %147, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !9
  %227 = getelementptr inbounds %struct.symbol, ptr %226, i64 0, i32 6
  %228 = load i32, ptr %227, align 4, !tbaa !19
  %229 = and i32 %228, 1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %317, label %231

231:                                              ; preds = %222
  %232 = getelementptr inbounds %struct.symbol, ptr %224, i64 0, i32 6
  %233 = load i32, ptr %232, align 4, !tbaa !19
  %234 = and i32 %233, 1
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %317, label %236

236:                                              ; preds = %231
  %237 = icmp eq ptr %224, %226
  %238 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  br i1 %237, label %242, label %239

239:                                              ; preds = %236
  store i32 4, ptr %238, align 8, !tbaa !5
  %240 = getelementptr inbounds %struct.expr, ptr %238, i64 0, i32 1
  store ptr %163, ptr %240, align 8, !tbaa !9
  %241 = getelementptr inbounds %struct.expr, ptr %238, i64 0, i32 2
  store ptr %224, ptr %241, align 8, !tbaa !9
  br label %308

242:                                              ; preds = %236
  store i32 11, ptr %238, align 8, !tbaa !5
  %243 = getelementptr inbounds %struct.expr, ptr %238, i64 0, i32 1
  store ptr @symbol_no, ptr %243, align 8, !tbaa !9
  br label %308

244:                                              ; preds = %219
  switch i32 %153, label %317 [
    i32 4, label %245
    i32 5, label %267
  ]

245:                                              ; preds = %244
  %246 = getelementptr inbounds %struct.expr, ptr %147, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !9
  %248 = getelementptr inbounds %struct.expr, ptr %146, i64 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !9
  %250 = getelementptr inbounds %struct.symbol, ptr %249, i64 0, i32 6
  %251 = load i32, ptr %250, align 4, !tbaa !19
  %252 = and i32 %251, 1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %317, label %254

254:                                              ; preds = %245
  %255 = getelementptr inbounds %struct.symbol, ptr %247, i64 0, i32 6
  %256 = load i32, ptr %255, align 4, !tbaa !19
  %257 = and i32 %256, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %317, label %259

259:                                              ; preds = %254
  %260 = icmp eq ptr %247, %249
  %261 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  br i1 %260, label %265, label %262

262:                                              ; preds = %259
  store i32 4, ptr %261, align 8, !tbaa !5
  %263 = getelementptr inbounds %struct.expr, ptr %261, i64 0, i32 1
  store ptr %163, ptr %263, align 8, !tbaa !9
  %264 = getelementptr inbounds %struct.expr, ptr %261, i64 0, i32 2
  store ptr %247, ptr %264, align 8, !tbaa !9
  br label %308

265:                                              ; preds = %259
  store i32 11, ptr %261, align 8, !tbaa !5
  %266 = getelementptr inbounds %struct.expr, ptr %261, i64 0, i32 1
  store ptr @symbol_no, ptr %266, align 8, !tbaa !9
  br label %308

267:                                              ; preds = %244
  %268 = getelementptr inbounds %struct.expr, ptr %146, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !9
  %270 = icmp eq ptr %269, @symbol_yes
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.expr, ptr %147, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !9
  %274 = icmp eq ptr %273, @symbol_no
  br i1 %274, label %281, label %285

275:                                              ; preds = %267
  %276 = icmp eq ptr %269, @symbol_no
  br i1 %276, label %277, label %287

277:                                              ; preds = %275
  %278 = getelementptr inbounds %struct.expr, ptr %147, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !9
  %280 = icmp eq ptr %279, @symbol_yes
  br i1 %280, label %281, label %299

281:                                              ; preds = %277, %271
  %282 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 4, ptr %282, align 8, !tbaa !5
  %283 = getelementptr inbounds %struct.expr, ptr %282, i64 0, i32 1
  store ptr %163, ptr %283, align 8, !tbaa !9
  %284 = getelementptr inbounds %struct.expr, ptr %282, i64 0, i32 2
  store ptr @symbol_mod, ptr %284, align 8, !tbaa !9
  br label %308

285:                                              ; preds = %271
  %286 = icmp eq ptr %273, @symbol_mod
  br i1 %286, label %293, label %317

287:                                              ; preds = %275
  %288 = icmp eq ptr %269, @symbol_mod
  br i1 %288, label %289, label %317

289:                                              ; preds = %287
  %290 = getelementptr inbounds %struct.expr, ptr %147, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !9
  %292 = icmp eq ptr %291, @symbol_yes
  br i1 %292, label %293, label %297

293:                                              ; preds = %289, %285
  %294 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 4, ptr %294, align 8, !tbaa !5
  %295 = getelementptr inbounds %struct.expr, ptr %294, i64 0, i32 1
  store ptr %163, ptr %295, align 8, !tbaa !9
  %296 = getelementptr inbounds %struct.expr, ptr %294, i64 0, i32 2
  store ptr @symbol_no, ptr %296, align 8, !tbaa !9
  br label %308

297:                                              ; preds = %289
  %298 = icmp eq ptr %291, @symbol_no
  br i1 %298, label %301, label %317

299:                                              ; preds = %277
  %300 = icmp eq ptr %279, @symbol_mod
  br i1 %300, label %301, label %317

301:                                              ; preds = %299, %297
  %302 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 4, ptr %302, align 8, !tbaa !5
  %303 = getelementptr inbounds %struct.expr, ptr %302, i64 0, i32 1
  store ptr %163, ptr %303, align 8, !tbaa !9
  %304 = getelementptr inbounds %struct.expr, ptr %302, i64 0, i32 2
  store ptr @symbol_yes, ptr %304, align 8, !tbaa !9
  br label %308

305:                                              ; preds = %145
  %306 = tail call ptr @expr_copy(ptr noundef %146) #14
  %307 = icmp eq ptr %306, null
  br i1 %307, label %317, label %308

308:                                              ; preds = %305, %301, %293, %281, %265, %262, %242, %239, %213, %206, %194, %142, %139, %119, %111, %99
  %309 = phi ptr [ @symbol_no, %139 ], [ @symbol_no, %119 ], [ @symbol_no, %111 ], [ @symbol_no, %99 ], [ @symbol_no, %142 ], [ @symbol_yes, %265 ], [ @symbol_yes, %262 ], [ @symbol_yes, %242 ], [ @symbol_yes, %239 ], [ @symbol_yes, %301 ], [ @symbol_yes, %293 ], [ @symbol_yes, %281 ], [ @symbol_yes, %213 ], [ @symbol_yes, %206 ], [ @symbol_yes, %194 ], [ @symbol_yes, %305 ]
  %310 = phi ptr [ %140, %139 ], [ %120, %119 ], [ %112, %111 ], [ %100, %99 ], [ %143, %142 ], [ %261, %265 ], [ %261, %262 ], [ %238, %242 ], [ %238, %239 ], [ %302, %301 ], [ %294, %293 ], [ %282, %281 ], [ %214, %213 ], [ %207, %206 ], [ %195, %194 ], [ %306, %305 ]
  %311 = load ptr, ptr %5, align 8, !tbaa !10
  tail call void @expr_free(ptr noundef %311)
  %312 = load ptr, ptr %36, align 8, !tbaa !10
  tail call void @expr_free(ptr noundef %312)
  %313 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %313, align 8, !tbaa !5
  %314 = getelementptr inbounds %struct.expr, ptr %313, i64 0, i32 1
  store ptr %309, ptr %314, align 8, !tbaa !9
  store ptr %313, ptr %5, align 8, !tbaa !10
  store ptr %310, ptr %36, align 8, !tbaa !10
  %315 = load i32, ptr @trans_count, align 4, !tbaa !12
  %316 = add nsw i32 %315, 1
  store i32 %316, ptr @trans_count, align 4, !tbaa !12
  br label %317

317:                                              ; preds = %308, %305, %299, %297, %287, %285, %254, %245, %244, %231, %222, %220, %219, %217, %190, %175, %170, %165, %156, %152, %150, %142, %132, %131, %117, %115, %105, %103, %81, %74, %69, %64, %55, %51, %49, %43, %33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_transform(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %96, label %3

3:                                                ; preds = %62, %1
  %4 = phi ptr [ %64, %62 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  br label %7

7:                                                ; preds = %79, %3
  %8 = load i32, ptr %4, align 8, !tbaa !5
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !9
  %13 = tail call ptr @expr_transform(ptr noundef %12)
  store ptr %13, ptr %5, align 8, !tbaa !9
  %14 = load ptr, ptr %6, align 8, !tbaa !9
  %15 = tail call ptr @expr_transform(ptr noundef %14)
  store ptr %15, ptr %6, align 8, !tbaa !9
  %16 = load i32, ptr %4, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi i32 [ %8, %7 ], [ %16, %11 ]
  switch i32 %18, label %96 [
    i32 4, label %19
    i32 5, label %39
    i32 3, label %59
  ]

19:                                               ; preds = %17
  %20 = load ptr, ptr %5, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.symbol, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !15
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %96

24:                                               ; preds = %19
  %25 = load ptr, ptr %6, align 8, !tbaa !9
  %26 = icmp eq ptr %25, @symbol_no
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  store i32 3, ptr %4, align 8, !tbaa !5
  %28 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %28, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 1
  store ptr %20, ptr %29, align 8, !tbaa !9
  store ptr %28, ptr %5, align 8, !tbaa !9
  store ptr null, ptr %6, align 8, !tbaa !9
  br label %96

30:                                               ; preds = %24
  %31 = icmp eq ptr %25, @symbol_mod
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.symbol, ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !20
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %34)
  store i32 11, ptr %4, align 8, !tbaa !5
  store ptr @symbol_no, ptr %5, align 8, !tbaa !9
  store ptr null, ptr %6, align 8, !tbaa !9
  br label %96

36:                                               ; preds = %30
  %37 = icmp eq ptr %25, @symbol_yes
  br i1 %37, label %38, label %96

38:                                               ; preds = %36
  store i32 11, ptr %4, align 8, !tbaa !5
  store ptr null, ptr %6, align 8, !tbaa !9
  br label %96

39:                                               ; preds = %17
  %40 = load ptr, ptr %5, align 8, !tbaa !9
  %41 = getelementptr inbounds %struct.symbol, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !15
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %96

44:                                               ; preds = %39
  %45 = load ptr, ptr %6, align 8, !tbaa !9
  %46 = icmp eq ptr %45, @symbol_no
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 11, ptr %4, align 8, !tbaa !5
  store ptr null, ptr %6, align 8, !tbaa !9
  br label %96

48:                                               ; preds = %44
  %49 = icmp eq ptr %45, @symbol_mod
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.symbol, ptr %40, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, ptr noundef %52)
  store i32 11, ptr %4, align 8, !tbaa !5
  store ptr @symbol_yes, ptr %5, align 8, !tbaa !9
  store ptr null, ptr %6, align 8, !tbaa !9
  br label %96

54:                                               ; preds = %48
  %55 = icmp eq ptr %45, @symbol_yes
  br i1 %55, label %56, label %96

56:                                               ; preds = %54
  store i32 3, ptr %4, align 8, !tbaa !5
  %57 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %57, align 8, !tbaa !5
  %58 = getelementptr inbounds %struct.expr, ptr %57, i64 0, i32 1
  store ptr %40, ptr %58, align 8, !tbaa !9
  store ptr %57, ptr %5, align 8, !tbaa !9
  store ptr null, ptr %6, align 8, !tbaa !9
  br label %96

59:                                               ; preds = %17
  %60 = load ptr, ptr %5, align 8, !tbaa !9
  %61 = load i32, ptr %60, align 8, !tbaa !5
  switch i32 %61, label %96 [
    i32 3, label %62
    i32 4, label %66
    i32 5, label %66
    i32 7, label %70
    i32 9, label %70
    i32 6, label %74
    i32 8, label %74
    i32 1, label %78
    i32 2, label %79
    i32 11, label %85
  ]

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.expr, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !9
  tail call void @free(ptr noundef nonnull %60) #14
  tail call void @free(ptr noundef nonnull %4) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %96, label %3

66:                                               ; preds = %59, %59
  tail call void @free(ptr noundef nonnull %4) #14
  %67 = load i32, ptr %60, align 8, !tbaa !5
  %68 = icmp eq i32 %67, 4
  %69 = select i1 %68, i32 5, i32 4
  store i32 %69, ptr %60, align 8, !tbaa !5
  br label %96

70:                                               ; preds = %59, %59
  tail call void @free(ptr noundef nonnull %4) #14
  %71 = load i32, ptr %60, align 8, !tbaa !5
  %72 = icmp eq i32 %71, 7
  %73 = select i1 %72, i32 8, i32 6
  store i32 %73, ptr %60, align 8, !tbaa !5
  br label %96

74:                                               ; preds = %59, %59
  tail call void @free(ptr noundef nonnull %4) #14
  %75 = load i32, ptr %60, align 8, !tbaa !5
  %76 = icmp eq i32 %75, 6
  %77 = select i1 %76, i32 9, i32 7
  store i32 %77, ptr %60, align 8, !tbaa !5
  br label %96

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %59
  %80 = phi i32 [ 2, %78 ], [ 1, %59 ]
  store i32 %80, ptr %4, align 8, !tbaa !5
  %81 = getelementptr inbounds %struct.expr, ptr %60, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !9
  %83 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %83, align 8, !tbaa !5
  %84 = getelementptr inbounds %struct.expr, ptr %83, i64 0, i32 1
  store ptr %82, ptr %84, align 8, !tbaa !9
  store ptr %83, ptr %6, align 8, !tbaa !9
  store i32 3, ptr %60, align 8, !tbaa !5
  store ptr null, ptr %81, align 8, !tbaa !9
  br label %7

85:                                               ; preds = %59
  %86 = getelementptr inbounds %struct.expr, ptr %60, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = icmp eq ptr %87, @symbol_yes
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  tail call void @free(ptr noundef nonnull %4) #14
  store i32 11, ptr %60, align 8, !tbaa !5
  store ptr @symbol_no, ptr %86, align 8, !tbaa !9
  br label %96

90:                                               ; preds = %85
  %91 = icmp eq ptr %87, @symbol_mod
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  tail call void @free(ptr noundef nonnull %4) #14
  store i32 11, ptr %60, align 8, !tbaa !5
  store ptr @symbol_mod, ptr %86, align 8, !tbaa !9
  br label %96

93:                                               ; preds = %90
  %94 = icmp eq ptr %87, @symbol_no
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  tail call void @free(ptr noundef nonnull %4) #14
  store i32 11, ptr %60, align 8, !tbaa !5
  store ptr @symbol_yes, ptr %86, align 8, !tbaa !9
  br label %96

96:                                               ; preds = %95, %93, %92, %89, %74, %70, %66, %62, %59, %56, %54, %50, %47, %39, %38, %36, %32, %27, %19, %17, %1
  %97 = phi ptr [ %60, %89 ], [ %60, %92 ], [ %60, %95 ], [ %4, %93 ], [ %60, %74 ], [ %60, %70 ], [ %60, %66 ], [ %4, %39 ], [ %4, %47 ], [ %4, %50 ], [ %4, %56 ], [ %4, %54 ], [ %4, %19 ], [ %4, %27 ], [ %4, %32 ], [ %4, %38 ], [ %4, %36 ], [ null, %1 ], [ %4, %59 ], [ %4, %17 ], [ null, %62 ]
  ret ptr %97
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind readonly uwtable
define dso_local i32 @expr_contains_symbol(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %32, %2
  %5 = phi ptr [ %34, %32 ], [ %0, %2 ]
  %6 = load i32, ptr %5, align 8, !tbaa !5
  switch i32 %6, label %12 [
    i32 2, label %7
    i32 1, label %7
    i32 11, label %20
    i32 4, label %24
    i32 9, label %24
    i32 8, label %24
    i32 7, label %24
    i32 6, label %24
    i32 5, label %24
    i32 3, label %32
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = tail call i32 @expr_contains_symbol(ptr noundef %9, ptr noundef %1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %32, %28, %24, %20, %15, %7, %4, %2
  %13 = phi i1 [ %19, %15 ], [ %23, %20 ], [ true, %7 ], [ true, %24 ], [ %31, %28 ], [ false, %2 ], [ false, %32 ], [ false, %4 ]
  %14 = zext i1 %13 to i32
  ret i32 %14

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = tail call i32 @expr_contains_symbol(ptr noundef %17, ptr noundef %1)
  %19 = icmp ne i32 %18, 0
  br label %12

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = icmp eq ptr %22, %1
  br label %12

24:                                               ; preds = %4, %4, %4, %4, %4, %4
  %25 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %12, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = icmp eq ptr %30, %1
  br label %12

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %12, label %4
}

; Function Attrs: argmemonly nofree nosync nounwind readonly uwtable
define dso_local zeroext i1 @expr_depends_symbol(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %11, %2
  %5 = phi ptr [ %13, %11 ], [ %0, %2 ]
  %6 = load i32, ptr %5, align 8, !tbaa !5
  switch i32 %6, label %37 [
    i32 2, label %7
    i32 11, label %15
    i32 4, label %19
    i32 5, label %29
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = tail call zeroext i1 @expr_depends_symbol(ptr noundef %9, ptr noundef %1)
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %4

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = icmp eq ptr %17, %1
  br label %38

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = icmp eq ptr %25, @symbol_yes
  %27 = icmp eq ptr %25, @symbol_mod
  %28 = or i1 %26, %27
  br i1 %28, label %38, label %37

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  %36 = icmp eq ptr %35, @symbol_no
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %29, %23, %19, %4
  br label %38

38:                                               ; preds = %37, %33, %23, %15, %11, %7, %2
  %39 = phi i1 [ false, %37 ], [ %18, %15 ], [ true, %23 ], [ true, %33 ], [ false, %2 ], [ %10, %7 ], [ %10, %11 ]
  ret i1 %39
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_trans_compare(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %65, %3
  %6 = phi i32 [ %1, %3 ], [ %69, %65 ]
  %7 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.expr, ptr %7, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !9
  %9 = icmp eq i32 %6, 5
  br i1 %9, label %10, label %108

10:                                               ; preds = %5
  %11 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %11, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 1
  store ptr %7, ptr %12, align 8, !tbaa !9
  br label %108

13:                                               ; preds = %65, %3
  %14 = phi i32 [ %69, %65 ], [ %1, %3 ]
  %15 = phi ptr [ %67, %65 ], [ %0, %3 ]
  %16 = load i32, ptr %15, align 8, !tbaa !5
  switch i32 %16, label %108 [
    i32 2, label %17
    i32 1, label %41
    i32 3, label %65
    i32 5, label %71
    i32 6, label %71
    i32 7, label %71
    i32 8, label %71
    i32 9, label %71
    i32 4, label %71
    i32 11, label %102
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = tail call ptr @expr_trans_compare(ptr noundef %19, i32 noundef 4, ptr noundef %2)
  %21 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = tail call ptr @expr_trans_compare(ptr noundef %22, i32 noundef 4, ptr noundef %2)
  %24 = icmp eq ptr %2, @symbol_yes
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 2, ptr %26, align 8, !tbaa !5
  br label %31

27:                                               ; preds = %17
  %28 = icmp eq ptr %2, @symbol_no
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 1, ptr %30, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %26, %25 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.expr, ptr %32, i64 0, i32 1
  store ptr %20, ptr %33, align 8, !tbaa !9
  %34 = getelementptr inbounds %struct.expr, ptr %32, i64 0, i32 2
  store ptr %23, ptr %34, align 8, !tbaa !9
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi ptr [ %15, %27 ], [ %32, %31 ]
  %37 = icmp eq i32 %14, 5
  br i1 %37, label %38, label %108

38:                                               ; preds = %35
  %39 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %39, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.expr, ptr %39, i64 0, i32 1
  store ptr %36, ptr %40, align 8, !tbaa !9
  br label %108

41:                                               ; preds = %13
  %42 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = tail call ptr @expr_trans_compare(ptr noundef %43, i32 noundef 4, ptr noundef %2)
  %45 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = tail call ptr @expr_trans_compare(ptr noundef %46, i32 noundef 4, ptr noundef %2)
  %48 = icmp eq ptr %2, @symbol_yes
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 1, ptr %50, align 8, !tbaa !5
  br label %55

51:                                               ; preds = %41
  %52 = icmp eq ptr %2, @symbol_no
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 2, ptr %54, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ %50, %49 ], [ %54, %53 ]
  %57 = getelementptr inbounds %struct.expr, ptr %56, i64 0, i32 1
  store ptr %44, ptr %57, align 8, !tbaa !9
  %58 = getelementptr inbounds %struct.expr, ptr %56, i64 0, i32 2
  store ptr %47, ptr %58, align 8, !tbaa !9
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi ptr [ %15, %51 ], [ %56, %55 ]
  %61 = icmp eq i32 %14, 5
  br i1 %61, label %62, label %108

62:                                               ; preds = %59
  %63 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %63, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.expr, ptr %63, i64 0, i32 1
  store ptr %60, ptr %64, align 8, !tbaa !9
  br label %108

65:                                               ; preds = %13
  %66 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !9
  %68 = icmp eq i32 %14, 4
  %69 = select i1 %68, i32 5, i32 4
  %70 = icmp eq ptr %67, null
  br i1 %70, label %5, label %13

71:                                               ; preds = %13, %13, %13, %13, %13, %13
  %72 = icmp eq i32 %14, 4
  %73 = icmp eq ptr %2, @symbol_yes
  br i1 %72, label %74, label %88

74:                                               ; preds = %71
  br i1 %73, label %75, label %77

75:                                               ; preds = %74
  %76 = tail call ptr @expr_copy(ptr noundef nonnull %15)
  br label %108

77:                                               ; preds = %74
  %78 = icmp eq ptr %2, @symbol_mod
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %80, align 8, !tbaa !5
  %81 = getelementptr inbounds %struct.expr, ptr %80, i64 0, i32 1
  store ptr @symbol_no, ptr %81, align 8, !tbaa !9
  br label %108

82:                                               ; preds = %77
  %83 = icmp eq ptr %2, @symbol_no
  br i1 %83, label %84, label %108

84:                                               ; preds = %82
  %85 = tail call ptr @expr_copy(ptr noundef nonnull %15)
  %86 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %86, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.expr, ptr %86, i64 0, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !9
  br label %108

88:                                               ; preds = %71
  br i1 %73, label %89, label %93

89:                                               ; preds = %88
  %90 = tail call ptr @expr_copy(ptr noundef nonnull %15)
  %91 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %91, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.expr, ptr %91, i64 0, i32 1
  store ptr %90, ptr %92, align 8, !tbaa !9
  br label %108

93:                                               ; preds = %88
  %94 = icmp eq ptr %2, @symbol_mod
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %96, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.expr, ptr %96, i64 0, i32 1
  store ptr @symbol_yes, ptr %97, align 8, !tbaa !9
  br label %108

98:                                               ; preds = %93
  %99 = icmp eq ptr %2, @symbol_no
  br i1 %99, label %100, label %108

100:                                              ; preds = %98
  %101 = tail call ptr @expr_copy(ptr noundef nonnull %15)
  br label %108

102:                                              ; preds = %13
  %103 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !9
  %105 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 %14, ptr %105, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.expr, ptr %105, i64 0, i32 1
  store ptr %104, ptr %106, align 8, !tbaa !9
  %107 = getelementptr inbounds %struct.expr, ptr %105, i64 0, i32 2
  store ptr %2, ptr %107, align 8, !tbaa !9
  br label %108

108:                                              ; preds = %102, %100, %98, %95, %89, %84, %82, %79, %75, %62, %59, %38, %35, %13, %10, %5
  %109 = phi ptr [ %105, %102 ], [ %76, %75 ], [ %80, %79 ], [ %86, %84 ], [ %91, %89 ], [ %96, %95 ], [ %101, %100 ], [ %11, %10 ], [ %7, %5 ], [ %39, %38 ], [ %36, %35 ], [ %63, %62 ], [ %60, %59 ], [ null, %82 ], [ null, %98 ], [ null, %13 ]
  ret ptr %109
}

; Function Attrs: nounwind uwtable
define dso_local i32 @expr_calc_value(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %union.string_value, align 8
  %3 = alloca %union.string_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %107, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %6, label %34 [
    i32 11, label %7
    i32 2, label %13
    i32 1, label %21
    i32 3, label %29
    i32 4, label %36
    i32 9, label %36
    i32 8, label %36
    i32 7, label %36
    i32 6, label %36
    i32 5, label %36
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  tail call void @sym_calc_value(ptr noundef %9) #14
  %10 = load ptr, ptr %8, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.symbol, ptr %10, i64 0, i32 3, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !21
  br label %107

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = tail call i32 @expr_calc_value(ptr noundef %15)
  %17 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = tail call i32 @expr_calc_value(ptr noundef %18)
  %20 = tail call i32 @llvm.umin.i32(i32 %16, i32 %19)
  br label %107

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = tail call i32 @expr_calc_value(ptr noundef %23)
  %25 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = tail call i32 @expr_calc_value(ptr noundef %26)
  %28 = tail call i32 @llvm.umax.i32(i32 %24, i32 %27)
  br label %107

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = tail call i32 @expr_calc_value(ptr noundef %31)
  %33 = sub i32 2, %32
  br label %107

34:                                               ; preds = %5
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %6)
  br label %107

36:                                               ; preds = %5, %5, %5, %5, %5, %5
  %37 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  tail call void @sym_calc_value(ptr noundef %38) #14
  %39 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  tail call void @sym_calc_value(ptr noundef %40) #14
  %41 = load ptr, ptr %37, align 8, !tbaa !9
  %42 = tail call ptr @sym_get_string_value(ptr noundef %41) #14
  %43 = load ptr, ptr %39, align 8, !tbaa !9
  %44 = tail call ptr @sym_get_string_value(ptr noundef %43) #14
  %45 = load ptr, ptr %37, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.symbol, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !15
  %48 = icmp eq i32 %47, 5
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load ptr, ptr %39, align 8, !tbaa !9
  %51 = getelementptr inbounds %struct.symbol, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !15
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %63, label %54

54:                                               ; preds = %49, %36
  %55 = call fastcc i32 @expr_parse_string(ptr noundef %42, i32 noundef %47, ptr noundef nonnull %2)
  %56 = load ptr, ptr %39, align 8, !tbaa !9
  %57 = getelementptr inbounds %struct.symbol, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !15
  %59 = call fastcc i32 @expr_parse_string(ptr noundef %44, i32 noundef %58, ptr noundef nonnull %3)
  %60 = icmp eq i32 %55, 0
  %61 = icmp eq i32 %59, 0
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54, %49
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %44) #16
  br label %83

65:                                               ; preds = %54
  %66 = icmp eq i32 %55, 2
  %67 = icmp eq i32 %59, 2
  %68 = select i1 %66, i1 true, i1 %67
  %69 = load i64, ptr %2, align 8, !tbaa !9
  %70 = load i64, ptr %3, align 8, !tbaa !9
  br i1 %68, label %71, label %77

71:                                               ; preds = %65
  %72 = icmp ugt i64 %69, %70
  %73 = zext i1 %72 to i32
  %74 = icmp ult i64 %69, %70
  %75 = sext i1 %74 to i32
  %76 = add nsw i32 %75, %73
  br label %83

77:                                               ; preds = %65
  %78 = icmp sgt i64 %69, %70
  %79 = zext i1 %78 to i32
  %80 = icmp slt i64 %69, %70
  %81 = sext i1 %80 to i32
  %82 = add nsw i32 %81, %79
  br label %83

83:                                               ; preds = %77, %71, %63
  %84 = phi i32 [ %64, %63 ], [ %76, %71 ], [ %82, %77 ]
  %85 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %85, label %105 [
    i32 4, label %86
    i32 9, label %89
    i32 8, label %93
    i32 7, label %96
    i32 6, label %99
    i32 5, label %102
  ]

86:                                               ; preds = %83
  %87 = icmp eq i32 %84, 0
  %88 = select i1 %87, i32 2, i32 0
  br label %107

89:                                               ; preds = %83
  %90 = lshr i32 %84, 30
  %91 = and i32 %90, 2
  %92 = xor i32 %91, 2
  br label %107

93:                                               ; preds = %83
  %94 = icmp sgt i32 %84, 0
  %95 = select i1 %94, i32 2, i32 0
  br label %107

96:                                               ; preds = %83
  %97 = icmp sgt i32 %84, 0
  %98 = select i1 %97, i32 0, i32 2
  br label %107

99:                                               ; preds = %83
  %100 = lshr i32 %84, 30
  %101 = and i32 %100, 2
  br label %107

102:                                              ; preds = %83
  %103 = icmp eq i32 %84, 0
  %104 = select i1 %103, i32 0, i32 2
  br label %107

105:                                              ; preds = %83
  %106 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %85)
  br label %107

107:                                              ; preds = %105, %102, %99, %96, %93, %89, %86, %34, %29, %21, %13, %7, %1
  %108 = phi i32 [ 0, %34 ], [ 0, %105 ], [ %104, %102 ], [ %101, %99 ], [ %98, %96 ], [ %95, %93 ], [ %92, %89 ], [ %88, %86 ], [ %33, %29 ], [ %28, %21 ], [ %20, %13 ], [ %12, %7 ], [ 2, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i32 %108
}

declare void @sym_calc_value(ptr noundef) local_unnamed_addr #2

declare ptr @sym_get_string_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal fastcc i32 @expr_parse_string(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = tail call ptr @__errno_location() #17
  store i32 0, ptr %5, align 4, !tbaa !12
  switch i32 %1, label %22 [
    i32 1, label %6
    i32 2, label %6
    i32 3, label %18
    i32 4, label %20
  ]

6:                                                ; preds = %3, %3
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.24) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.25) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.6) #16
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i64 2, i64 -1
  br label %16

16:                                               ; preds = %12, %9, %6
  %17 = phi i64 [ 0, %6 ], [ %15, %12 ], [ 1, %9 ]
  store i64 %17, ptr %2, align 8, !tbaa !9
  br label %46

18:                                               ; preds = %3
  %19 = call i64 @strtoll(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 10) #14
  br label %24

20:                                               ; preds = %3
  %21 = call i64 @strtoull(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 16) #14
  br label %24

22:                                               ; preds = %3
  %23 = call i64 @strtoll(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #14
  br label %24

24:                                               ; preds = %22, %20, %18
  %25 = phi i64 [ %23, %22 ], [ %21, %20 ], [ %19, %18 ]
  %26 = phi i32 [ 1, %22 ], [ 2, %20 ], [ 1, %18 ]
  store i64 %25, ptr %2, align 8, !tbaa !9
  %27 = load i32, ptr %5, align 4, !tbaa !12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !tbaa !10
  %31 = load i8, ptr %30, align 1, !tbaa !9
  %32 = icmp eq i8 %31, 0
  %33 = icmp ugt ptr %30, %0
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = tail call ptr @__ctype_b_loc() #17
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = getelementptr inbounds i8, ptr %30, i64 -1
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = sext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %37, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !22
  %43 = and i16 %42, 4096
  %44 = icmp eq i16 %43, 0
  %45 = select i1 %44, i32 0, i32 %26
  br label %46

46:                                               ; preds = %35, %29, %24, %16
  %47 = phi i32 [ 1, %16 ], [ 0, %29 ], [ 0, %24 ], [ %45, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 %47
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @expr_print(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [32 x i8], align 16
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.6) #14
  br label %139

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8, !tbaa !5
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  switch i32 %3, label %23 [
    i32 7, label %12
    i32 6, label %12
    i32 9, label %12
    i32 8, label %12
    i32 4, label %15
    i32 5, label %15
    i32 3, label %16
    i32 2, label %17
    i32 1, label %18
    i32 10, label %19
  ]

12:                                               ; preds = %11, %11, %11, %11
  %13 = and i32 %9, -2
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %21, label %15

15:                                               ; preds = %12, %11, %11
  switch i32 %9, label %23 [
    i32 3, label %21
    i32 2, label %21
    i32 1, label %21
    i32 10, label %21
    i32 0, label %21
  ]

16:                                               ; preds = %11
  switch i32 %9, label %23 [
    i32 2, label %21
    i32 1, label %21
    i32 10, label %21
    i32 0, label %21
  ]

17:                                               ; preds = %11
  switch i32 %9, label %23 [
    i32 1, label %21
    i32 10, label %21
    i32 0, label %21
  ]

18:                                               ; preds = %11
  switch i32 %9, label %23 [
    i32 10, label %21
    i32 0, label %21
  ]

19:                                               ; preds = %11
  %20 = icmp eq i32 %9, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %19, %18, %18, %17, %17, %17, %16, %16, %16, %16, %15, %15, %15, %15, %15, %12
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.7) #14
  %22 = load i32, ptr %0, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %21, %19, %18, %17, %16, %15, %11, %8
  %24 = phi i32 [ %3, %8 ], [ %9, %18 ], [ %9, %11 ], [ %9, %15 ], [ %9, %16 ], [ %9, %17 ], [ %9, %19 ], [ %22, %21 ]
  switch i32 %24, label %123 [
    i32 11, label %25
    i32 3, label %33
    i32 4, label %36
    i32 7, label %49
    i32 6, label %49
    i32 9, label %65
    i32 8, label %65
    i32 5, label %81
    i32 1, label %94
    i32 2, label %99
    i32 10, label %104
    i32 12, label %114
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.symbol, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call void %1(ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull %29) #14
  br label %125

32:                                               ; preds = %25
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.8) #14
  br label %125

33:                                               ; preds = %23
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.9) #14
  %34 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %35, ptr noundef %1, ptr noundef %2, i32 noundef 3)
  br label %125

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = getelementptr inbounds %struct.symbol, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void %1(ptr noundef %2, ptr noundef nonnull %38, ptr noundef nonnull %40) #14
  br label %44

43:                                               ; preds = %36
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.8) #14
  br label %44

44:                                               ; preds = %43, %42
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.10) #14
  %45 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = getelementptr inbounds %struct.symbol, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !20
  tail call void %1(ptr noundef %2, ptr noundef %46, ptr noundef %48) #14
  br label %125

49:                                               ; preds = %23, %23
  %50 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.symbol, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !20
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void %1(ptr noundef %2, ptr noundef nonnull %51, ptr noundef nonnull %53) #14
  br label %57

56:                                               ; preds = %49
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.8) #14
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, ptr %0, align 8, !tbaa !5
  %59 = icmp eq i32 %58, 7
  %60 = select i1 %59, ptr @.str.11, ptr @.str.12
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull %60) #14
  %61 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !9
  %63 = getelementptr inbounds %struct.symbol, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !20
  tail call void %1(ptr noundef %2, ptr noundef %62, ptr noundef %64) #14
  br label %125

65:                                               ; preds = %23, %23
  %66 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !9
  %68 = getelementptr inbounds %struct.symbol, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !20
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  tail call void %1(ptr noundef %2, ptr noundef nonnull %67, ptr noundef nonnull %69) #14
  br label %73

72:                                               ; preds = %65
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.8) #14
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, ptr %0, align 8, !tbaa !5
  %75 = icmp eq i32 %74, 9
  %76 = select i1 %75, ptr @.str.13, ptr @.str.14
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull %76) #14
  %77 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !9
  %79 = getelementptr inbounds %struct.symbol, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !20
  tail call void %1(ptr noundef %2, ptr noundef %78, ptr noundef %80) #14
  br label %125

81:                                               ; preds = %23
  %82 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !9
  %84 = getelementptr inbounds %struct.symbol, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !20
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  tail call void %1(ptr noundef %2, ptr noundef nonnull %83, ptr noundef nonnull %85) #14
  br label %89

88:                                               ; preds = %81
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.8) #14
  br label %89

89:                                               ; preds = %88, %87
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.15) #14
  %90 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !9
  %92 = getelementptr inbounds %struct.symbol, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !20
  tail call void %1(ptr noundef %2, ptr noundef %91, ptr noundef %93) #14
  br label %125

94:                                               ; preds = %23
  %95 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %96, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.16) #14
  %97 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %98, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  br label %125

99:                                               ; preds = %23
  %100 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %101, ptr noundef %1, ptr noundef %2, i32 noundef 2)
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.17) #14
  %102 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %103, ptr noundef %1, ptr noundef %2, i32 noundef 2)
  br label %125

104:                                              ; preds = %23
  %105 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !9
  %107 = getelementptr inbounds %struct.symbol, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !20
  tail call void %1(ptr noundef %2, ptr noundef %106, ptr noundef %108) #14
  %109 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !9
  %111 = icmp eq ptr %110, null
  br i1 %111, label %125, label %112

112:                                              ; preds = %104
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.18) #14
  %113 = load ptr, ptr %109, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %113, ptr noundef %1, ptr noundef %2, i32 noundef 10)
  br label %125

114:                                              ; preds = %23
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.19) #14
  %115 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !9
  %117 = getelementptr inbounds %struct.symbol, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !20
  tail call void %1(ptr noundef %2, ptr noundef %116, ptr noundef %118) #14
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.20) #14
  %119 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !9
  %121 = getelementptr inbounds %struct.symbol, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !20
  tail call void %1(ptr noundef %2, ptr noundef %120, ptr noundef %122) #14
  tail call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.21) #14
  br label %125

123:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %124 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, i32 noundef %24) #14
  call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %125

125:                                              ; preds = %123, %114, %112, %104, %99, %94, %89, %73, %57, %44, %33, %32, %31
  %126 = load i32, ptr %0, align 8, !tbaa !5
  %127 = icmp eq i32 %126, %3
  br i1 %127, label %139, label %128

128:                                              ; preds = %125
  switch i32 %3, label %139 [
    i32 7, label %129
    i32 6, label %129
    i32 9, label %129
    i32 8, label %129
    i32 4, label %132
    i32 5, label %132
    i32 3, label %133
    i32 2, label %134
    i32 1, label %135
    i32 10, label %136
  ]

129:                                              ; preds = %128, %128, %128, %128
  %130 = and i32 %126, -2
  %131 = icmp eq i32 %130, 4
  br i1 %131, label %138, label %132

132:                                              ; preds = %129, %128, %128
  switch i32 %126, label %139 [
    i32 3, label %138
    i32 2, label %138
    i32 1, label %138
    i32 10, label %138
    i32 0, label %138
  ]

133:                                              ; preds = %128
  switch i32 %126, label %139 [
    i32 2, label %138
    i32 1, label %138
    i32 10, label %138
    i32 0, label %138
  ]

134:                                              ; preds = %128
  switch i32 %126, label %139 [
    i32 1, label %138
    i32 10, label %138
    i32 0, label %138
  ]

135:                                              ; preds = %128
  switch i32 %126, label %139 [
    i32 10, label %138
    i32 0, label %138
  ]

136:                                              ; preds = %128
  %137 = icmp eq i32 %126, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %136, %135, %135, %134, %134, %134, %133, %133, %133, %133, %132, %132, %132, %132, %132, %129
  call void %1(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.23) #14
  br label %139

139:                                              ; preds = %138, %136, %135, %134, %133, %132, %128, %125, %7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @expr_fprint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @expr_print(ptr noundef %0, ptr noundef nonnull @expr_print_file_helper, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @expr_print_file_helper(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 49, ptr noundef nonnull @__PRETTY_FUNCTION__.xfwrite) #18
  unreachable

7:                                                ; preds = %3
  %8 = tail call i64 @fwrite(ptr noundef %2, i64 noundef %4, i64 noundef 1, ptr noundef %0) #14
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @stderr, align 8, !tbaa !10
  %12 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 33, i64 1, ptr %11) #19
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @expr_gstr_print(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @expr_print(ptr noundef %0, ptr noundef nonnull @expr_print_gstr_helper, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @expr_print_gstr_helper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @sym_get_string_value(ptr noundef nonnull %1) #14
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi ptr [ %6, %5 ], [ null, %3 ]
  %9 = getelementptr inbounds %struct.gstr, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %7
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %14 = getelementptr inbounds %struct.gstr, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !27
  %16 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 10) #16
  %17 = icmp eq ptr %8, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = tail call i64 @strlen(ptr noundef nonnull %8) #16
  %20 = add i64 %13, 4
  %21 = add i64 %20, %19
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i64 [ %21, %18 ], [ %13, %12 ]
  %24 = trunc i64 %23 to i32
  %25 = icmp eq ptr %16, null
  %26 = select i1 %25, ptr %15, ptr %16
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #16
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %15 to i64
  %30 = sub i64 %29, %28
  %31 = add i64 %30, %27
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, %24
  %34 = icmp ugt i32 %33, %10
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  tail call void @str_append(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #14
  br label %36

36:                                               ; preds = %35, %22, %7
  tail call void @str_append(ptr noundef nonnull %0, ptr noundef %2) #14
  br i1 %4, label %42, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %8) #14
  br label %42

42:                                               ; preds = %41, %37, %36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @expr_gstr_print_revdep(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8, !tbaa !10
  call fastcc void @expr_print_revdep(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expr_print_revdep(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %0, %4 ]
  %9 = getelementptr inbounds %struct.expr, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  tail call fastcc void @expr_print_revdep(ptr noundef %10, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %11 = getelementptr inbounds %struct.expr, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load i32, ptr %12, align 8, !tbaa !5
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %4
  %16 = phi ptr [ %0, %4 ], [ %12, %7 ]
  %17 = tail call i32 @expr_calc_value(ptr noundef nonnull %16)
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %82

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 8, !tbaa !10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gstr, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #16
  %28 = getelementptr inbounds %struct.gstr, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !27
  %30 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %29, i32 noundef 10) #16
  %31 = trunc i64 %27 to i32
  %32 = icmp eq ptr %30, null
  %33 = select i1 %32, ptr %29, ptr %30
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #16
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %29 to i64
  %37 = add i64 %34, %36
  %38 = sub i64 %37, %35
  %39 = trunc i64 %38 to i32
  %40 = add i32 %39, %31
  %41 = icmp ugt i32 %40, %24
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  tail call void @str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.29) #14
  br label %43

43:                                               ; preds = %42, %26, %22
  tail call void @str_append(ptr noundef nonnull %1, ptr noundef nonnull %20) #14
  store ptr null, ptr %3, align 8, !tbaa !10
  br label %44

44:                                               ; preds = %43, %19
  %45 = getelementptr inbounds %struct.gstr, ptr %1, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !24
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.gstr, ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !27
  %51 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %50, i32 noundef 10) #16
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr %50, ptr %51
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #16
  %55 = ptrtoint ptr %53 to i64
  %56 = ptrtoint ptr %50 to i64
  %57 = add i64 %54, %56
  %58 = sub i64 %57, %55
  %59 = trunc i64 %58 to i32
  %60 = add i32 %59, 4
  %61 = icmp ugt i32 %60, %46
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  tail call void @str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.29) #14
  br label %63

63:                                               ; preds = %62, %48, %44
  tail call void @str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.31) #14
  tail call void @expr_print(ptr noundef nonnull %16, ptr noundef nonnull @expr_print_gstr_helper, ptr noundef nonnull %1, i32 noundef 0)
  %64 = load i32, ptr %45, align 8, !tbaa !24
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.gstr, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !27
  %69 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %68, i32 noundef 10) #16
  %70 = icmp eq ptr %69, null
  %71 = select i1 %70, ptr %68, ptr %69
  %72 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %68) #16
  %73 = ptrtoint ptr %71 to i64
  %74 = ptrtoint ptr %68 to i64
  %75 = add i64 %72, %74
  %76 = sub i64 %75, %73
  %77 = trunc i64 %76 to i32
  %78 = add i32 %77, 1
  %79 = icmp ugt i32 %78, %64
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  tail call void @str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.29) #14
  br label %81

81:                                               ; preds = %80, %66, %63
  tail call void @str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.32) #14
  br label %82

82:                                               ; preds = %81, %15
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoull(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @str_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @str_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind readnone willreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"expr", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{i64 0, i64 4, !9, i64 8, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 16, i64 8, !10}
!15 = !{!16, !7, i64 16}
!16 = !{!"symbol", !11, i64 0, !11, i64 8, !7, i64 16, !17, i64 24, !7, i64 40, !7, i64 104, !13, i64 108, !11, i64 112, !18, i64 120, !18, i64 136, !18, i64 152}
!17 = !{!"symbol_value", !11, i64 0, !7, i64 8}
!18 = !{!"expr_value", !11, i64 0, !7, i64 8}
!19 = !{!16, !13, i64 108}
!20 = !{!16, !11, i64 8}
!21 = !{!16, !7, i64 32}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !7, i64 0}
!24 = !{!25, !13, i64 16}
!25 = !{!"gstr", !26, i64 0, !11, i64 8, !13, i64 16}
!26 = !{!"long", !7, i64 0}
!27 = !{!25, !11, i64 8}
