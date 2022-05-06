; ModuleID = '/llk/IR/scripts/dtc/util.c_pt.bc'
source_filename = "../scripts/dtc/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.option = type { ptr, i32, ptr, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't open blob from '%s': %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Couldn't write blob to '%s': %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hlLb\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"iuxs\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" = <\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"0x%08x%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" = [\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"DTC 1.6.1-g0a3a9d34\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@__const.util_usage.a_arg = private unnamed_addr constant [6 x i8] c"<arg>\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Usage: %s\0A\0AOptions: -[%s]\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"opts_help[i] != NULL\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"../scripts/dtc/util.c\00", align 1
@__PRETTY_FUNCTION__.util_usage = private unnamed_addr constant [102 x i8] c"void util_usage(const char *, const char *, const char *, const struct option *, const char *const *)\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"  -%c, \00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"--%-*s\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"--%s %s%*s\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"\0AError: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"realloc() failed (len=%zd)\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"endx > x\00", align 1
@__PRETTY_FUNCTION__.get_oct_char = private unnamed_addr constant [39 x i8] c"char get_oct_char(const char *, int *)\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"\\x used with no following hex digits\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %3 = shl i64 %2, 32
  %4 = add i64 %3, 4294967296
  %5 = ashr exact i64 %4, 32
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.27) #26
  unreachable

9:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %0, i64 %5, i1 false)
  ret ptr %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @xavsprintf_append(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @strlen(ptr noundef nonnull %5) #24
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  call void @llvm.va_copy(ptr nonnull %4, ptr %2)
  %12 = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %1, ptr noundef nonnull %4) #27
  %13 = add nsw i32 %12, 1
  call void @llvm.va_end(ptr nonnull %4)
  %14 = add nsw i32 %13, %11
  %15 = sext i32 %14 to i64
  %16 = call ptr @realloc(ptr noundef %5, i64 noundef %15) #28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  call void (ptr, ...) @die(ptr noundef nonnull @.str.29, i64 noundef %15) #26
  unreachable

19:                                               ; preds = %10
  %20 = sext i32 %11 to i64
  %21 = getelementptr inbounds i8, ptr %16, i64 %20
  %22 = sext i32 %13 to i64
  %23 = call i32 @vsnprintf(ptr noundef nonnull %21, i64 noundef %22, ptr noundef %1, ptr noundef %2) #27
  store ptr %16, ptr %0, align 8, !tbaa !5
  %24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #24
  %25 = trunc i64 %24 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret i32 %25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #4

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @xasprintf_append(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @xavsprintf_append(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @xasprintf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !5
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @xavsprintf_append(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @join_path(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %4 = trunc i64 %3 to i32
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %6 = trunc i64 %5 to i32
  %7 = add nsw i32 %6, %4
  %8 = add nsw i32 %7, 2
  %9 = icmp sgt i32 %4, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = add i64 %3, 4294967295
  %12 = and i64 %11, 4294967295
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 47
  %16 = add nsw i32 %7, 1
  %17 = select i1 %15, i32 %16, i32 %8
  br label %18

18:                                               ; preds = %10, %2
  %19 = phi i32 [ %8, %2 ], [ %17, %10 ]
  %20 = phi i1 [ false, %2 ], [ %15, %10 ]
  %21 = sext i32 %19 to i64
  %22 = tail call noalias ptr @malloc(i64 noundef %21) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.27) #26
  unreachable

25:                                               ; preds = %18
  %26 = shl i64 %3, 32
  %27 = ashr exact i64 %26, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr align 1 %0, i64 %27, i1 false)
  br i1 %20, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %22, i64 %27
  store i8 47, ptr %29, align 1, !tbaa !9
  %30 = shl i64 %3, 32
  %31 = add i64 %30, 4294967296
  %32 = ashr exact i64 %31, 32
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i64 [ %32, %28 ], [ %27, %25 ]
  %35 = getelementptr inbounds i8, ptr %22, i64 %34
  %36 = shl i64 %5, 32
  %37 = add i64 %36, 4294967296
  %38 = ashr exact i64 %37, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr align 1 %1, i64 %38, i1 false)
  ret ptr %22
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local zeroext i1 @util_is_printable_string(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %4
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %17, label %41

14:                                               ; preds = %35
  %15 = getelementptr inbounds i8, ptr %36, i64 1
  %16 = icmp ult ptr %15, %12
  br i1 %16, label %17, label %41

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %15, %14 ], [ %0, %10 ]
  %19 = icmp ult ptr %18, %12
  br i1 %19, label %20, label %41

20:                                               ; preds = %32, %17
  %21 = phi ptr [ %33, %32 ], [ %18, %17 ]
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @__ctype_b_loc() #29
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = zext i8 %22 to i64
  %28 = getelementptr inbounds i16, ptr %26, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !10
  %30 = and i16 %29, 16384
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, ptr %21, i64 1
  %34 = icmp ult ptr %33, %12
  br i1 %34, label %20, label %35

35:                                               ; preds = %32, %24, %20
  %36 = phi ptr [ %21, %24 ], [ %21, %20 ], [ %33, %32 ]
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = icmp ne i8 %37, 0
  %39 = icmp eq ptr %36, %18
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %41, label %14

41:                                               ; preds = %35, %17, %14, %10, %4, %2
  %42 = phi i1 [ false, %2 ], [ false, %4 ], [ true, %10 ], [ true, %14 ], [ false, %35 ], [ false, %17 ]
  ret i1 %42
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local signext i8 @get_escape_char(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca ptr, align 8
  %5 = alloca [4 x i8], align 1
  %6 = alloca ptr, align 8
  %7 = load i32, ptr %1, align 4, !tbaa !12
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = add nsw i32 %7, 1
  %12 = sext i8 %10 to i32
  switch i32 %12, label %49 [
    i32 97, label %50
    i32 98, label %13
    i32 116, label %14
    i32 110, label %15
    i32 118, label %16
    i32 102, label %17
    i32 114, label %18
    i32 48, label %19
    i32 49, label %19
    i32 50, label %19
    i32 51, label %19
    i32 52, label %19
    i32 53, label %19
    i32 54, label %19
    i32 55, label %19
    i32 120, label %33
  ]

13:                                               ; preds = %2
  br label %50

14:                                               ; preds = %2
  br label %50

15:                                               ; preds = %2
  br label %50

16:                                               ; preds = %2
  br label %50

17:                                               ; preds = %2
  br label %50

18:                                               ; preds = %2
  br label %50

19:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %20 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  store i8 0, ptr %20, align 1, !tbaa !9
  %21 = call ptr @strncpy(ptr noundef nonnull %5, ptr noundef nonnull dereferenceable(1) %9, i64 noundef 3) #27
  %22 = call i64 @strtol(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 8) #27
  %23 = load ptr, ptr %6, align 8, !tbaa !5
  %24 = icmp ugt ptr %23, %5
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.20, i32 noundef 155, ptr noundef nonnull @__PRETTY_FUNCTION__.get_oct_char) #26
  unreachable

26:                                               ; preds = %19
  %27 = ptrtoint ptr %23 to i64
  %28 = ptrtoint ptr %5 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = add i32 %7, %30
  %32 = trunc i64 %22 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  br label %50

33:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %34 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 2
  store i8 0, ptr %34, align 1, !tbaa !9
  %35 = sext i32 %11 to i64
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = call ptr @strncpy(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(1) %36, i64 noundef 2) #27
  %38 = call i64 @strtol(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 16) #27
  %39 = load ptr, ptr %4, align 8, !tbaa !5
  %40 = icmp ugt ptr %39, %3
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  call void (ptr, ...) @die(ptr noundef nonnull @.str.31) #26
  unreachable

42:                                               ; preds = %33
  %43 = ptrtoint ptr %39 to i64
  %44 = ptrtoint ptr %3 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = add i32 %11, %46
  %48 = trunc i64 %38 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #27
  br label %50

49:                                               ; preds = %2
  br label %50

50:                                               ; preds = %49, %42, %26, %18, %17, %16, %15, %14, %13, %2
  %51 = phi i32 [ %11, %49 ], [ %47, %42 ], [ %31, %26 ], [ %11, %18 ], [ %11, %17 ], [ %11, %16 ], [ %11, %15 ], [ %11, %14 ], [ %11, %13 ], [ %11, %2 ]
  %52 = phi i8 [ %10, %49 ], [ %48, %42 ], [ %32, %26 ], [ 13, %18 ], [ 12, %17 ], [ 11, %16 ], [ 10, %15 ], [ 9, %14 ], [ 8, %13 ], [ 7, %2 ]
  store i32 %51, ptr %1, align 4, !tbaa !12
  ret i8 %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @utilfdt_read_err(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  store ptr null, ptr %1, align 8, !tbaa !5
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #27
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #29
  %11 = load i32, ptr %10, align 4, !tbaa !12
  br label %53

12:                                               ; preds = %6, %3
  %13 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %14 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.27) #26
  unreachable

17:                                               ; preds = %35, %12
  %18 = phi ptr [ %28, %35 ], [ %14, %12 ]
  %19 = phi i64 [ %29, %35 ], [ 1024, %12 ]
  %20 = phi i64 [ %38, %35 ], [ 0, %12 ]
  %21 = icmp eq i64 %20, %19
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = shl i64 %19, 1
  %24 = tail call ptr @realloc(ptr noundef %18, i64 noundef %23) #28
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.29, i64 noundef %23) #26
  unreachable

27:                                               ; preds = %22, %17
  %28 = phi ptr [ %18, %17 ], [ %24, %22 ]
  %29 = phi i64 [ %19, %17 ], [ %23, %22 ]
  %30 = getelementptr inbounds i8, ptr %28, i64 %20
  %31 = sub i64 %29, %20
  %32 = tail call i64 @read(i32 noundef %13, ptr noundef %30, i64 noundef %31) #27
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = shl i64 %32, 32
  %37 = ashr exact i64 %36, 32
  %38 = add i64 %37, %20
  %39 = icmp eq i32 %33, 0
  br i1 %39, label %40, label %17

40:                                               ; preds = %35
  %41 = tail call i32 @close(i32 noundef %13) #27
  br label %48

42:                                               ; preds = %27
  %43 = tail call ptr @__errno_location() #29
  %44 = load i32, ptr %43, align 4, !tbaa !12
  %45 = tail call i32 @close(i32 noundef %13) #27
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void @free(ptr noundef %28) #27
  br label %49

48:                                               ; preds = %42, %40
  store ptr %28, ptr %1, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %48, %47
  %50 = phi i32 [ 0, %48 ], [ %44, %47 ]
  %51 = icmp eq ptr %2, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i64 %29, ptr %2, align 8, !tbaa !14
  br label %53

53:                                               ; preds = %52, %49, %9
  %54 = phi i32 [ %11, %9 ], [ %50, %52 ], [ %50, %49 ]
  ret i32 %54
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @utilfdt_read(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %4 = call i32 @utilfdt_read_err(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = tail call ptr @strerror(i32 noundef %4) #27
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %8) #30
  br label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ null, %6 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret ptr %13
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i32 @utilfdt_write_err(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 577, i32 noundef 438) #27
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call ptr @__errno_location() #29
  %10 = load i32, ptr %9, align 4, !tbaa !12
  br label %59

11:                                               ; preds = %5, %2
  %12 = phi i32 [ %6, %5 ], [ 1, %2 ]
  %13 = getelementptr inbounds %struct.fdt_header, ptr %1, i64 0, i32 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %15, 24
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or i32 %20, %16
  %22 = getelementptr inbounds i8, ptr %13, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %21, %25
  %27 = getelementptr inbounds i8, ptr %13, i64 3
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %35, label %50

32:                                               ; preds = %35
  %33 = add nsw i32 %36, %42
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %32, %11
  %36 = phi i32 [ %33, %32 ], [ 0, %11 ]
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  %39 = sub nsw i32 %30, %36
  %40 = sext i32 %39 to i64
  %41 = tail call i64 @write(i32 noundef %12, ptr noundef %38, i64 noundef %40) #27
  %42 = trunc i64 %41 to i32
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %32

44:                                               ; preds = %35
  %45 = tail call ptr @__errno_location() #29
  %46 = load i32, ptr %45, align 4, !tbaa !12
  %47 = sub nsw i32 0, %46
  br label %50

48:                                               ; preds = %32
  %49 = trunc i64 %41 to i32
  br label %50

50:                                               ; preds = %48, %44, %11
  %51 = phi i32 [ %47, %44 ], [ 0, %11 ], [ %49, %48 ]
  %52 = icmp eq i32 %12, 1
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @close(i32 noundef %12) #27
  br label %55

55:                                               ; preds = %53, %50
  %56 = icmp slt i32 %51, 0
  %57 = sub nsw i32 0, %51
  %58 = select i1 %56, i32 %57, i32 0
  br label %59

59:                                               ; preds = %55, %8
  %60 = phi i32 [ %10, %8 ], [ %58, %55 ]
  ret i32 %60
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @utilfdt_write(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @utilfdt_write_err(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = tail call ptr @strerror(i32 noundef %3) #27
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %7) #30
  br label %9

9:                                                ; preds = %5, %2
  %10 = xor i1 %4, true
  %11 = sext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @utilfdt_decode_type(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #12 {
  %4 = load i8, ptr %0, align 1, !tbaa !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %46, label %6

6:                                                ; preds = %3
  store i32 -1, ptr %2, align 4, !tbaa !12
  %7 = load i8, ptr %0, align 1, !tbaa !9
  %8 = sext i8 %7 to i32
  %9 = tail call ptr @memchr(ptr noundef nonnull @.str.3, i32 %8, i64 5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %7, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 2
  %17 = icmp eq i8 %7, 104
  %18 = select i1 %17, i32 98, i32 %8
  %19 = load i8, ptr %16, align 1, !tbaa !9
  br label %20

20:                                               ; preds = %15, %11, %6
  %21 = phi i8 [ %19, %15 ], [ %13, %11 ], [ %7, %6 ]
  %22 = phi ptr [ %16, %15 ], [ %12, %11 ], [ %0, %6 ]
  %23 = phi i32 [ %18, %15 ], [ %8, %11 ], [ 0, %6 ]
  %24 = icmp eq i8 %21, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %20
  %26 = sext i8 %21 to i32
  %27 = tail call ptr @memchr(ptr noundef nonnull @.str.4, i32 %26, i64 5)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = icmp eq i8 %21, 115
  br i1 %30, label %40, label %31

31:                                               ; preds = %29
  switch i32 %23, label %32 [
    i32 98, label %36
    i32 104, label %35
  ]

32:                                               ; preds = %31
  %33 = icmp eq i32 %23, 108
  %34 = select i1 %33, i32 4, i32 -1
  br label %36

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %32, %31
  %37 = phi i32 [ 1, %31 ], [ %34, %32 ], [ 2, %35 ]
  store i32 %37, ptr %2, align 4, !tbaa !12
  %38 = load i8, ptr %22, align 1, !tbaa !9
  %39 = sext i8 %38 to i32
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i32 [ %39, %36 ], [ 115, %29 ]
  %42 = getelementptr inbounds i8, ptr %22, i64 1
  store i32 %41, ptr %1, align 4, !tbaa !12
  %43 = load i8, ptr %42, align 1, !tbaa !9
  %44 = icmp ne i8 %43, 0
  %45 = sext i1 %44 to i32
  br label %46

46:                                               ; preds = %40, %25, %20, %3
  %47 = phi i32 [ -1, %3 ], [ -1, %25 ], [ -1, %20 ], [ %45, %40 ]
  ret i32 %47
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @utilfdt_print_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %97, label %4

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %59

10:                                               ; preds = %4
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %17, label %43

14:                                               ; preds = %37
  %15 = getelementptr inbounds i8, ptr %39, i64 1
  %16 = icmp ult ptr %15, %12
  br i1 %16, label %17, label %43

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %15, %14 ], [ %0, %10 ]
  %19 = icmp ult ptr %18, %12
  br i1 %19, label %20, label %59

20:                                               ; preds = %32, %17
  %21 = phi ptr [ %33, %32 ], [ %18, %17 ]
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @__ctype_b_loc() #29
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = zext i8 %22 to i64
  %28 = getelementptr inbounds i16, ptr %26, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !10
  %30 = and i16 %29, 16384
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, ptr %21, i64 1
  %34 = icmp ult ptr %33, %12
  br i1 %34, label %20, label %35

35:                                               ; preds = %32
  %36 = load i8, ptr %33, align 1, !tbaa !9
  br label %37

37:                                               ; preds = %35, %20
  %38 = phi i8 [ %36, %35 ], [ 0, %20 ]
  %39 = phi ptr [ %33, %35 ], [ %21, %20 ]
  %40 = icmp ne i8 %38, 0
  %41 = icmp eq ptr %39, %18
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %59, label %14

43:                                               ; preds = %14, %10
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5)
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, ptr noundef %0)
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %47 = add i64 %46, 1
  %48 = icmp slt i64 %47, %11
  br i1 %48, label %49, label %97

49:                                               ; preds = %43
  %50 = getelementptr inbounds i8, ptr %0, i64 %47
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi ptr [ %57, %51 ], [ %50, %49 ]
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7)
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, ptr noundef %52)
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %52) #24
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds i8, ptr %52, i64 %56
  %58 = icmp ult ptr %57, %12
  br i1 %58, label %51, label %97

59:                                               ; preds = %37, %24, %17, %4
  %60 = and i32 %1, 3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8)
  %64 = icmp sgt i32 %1, 3
  br i1 %64, label %65, label %94

65:                                               ; preds = %62
  %66 = lshr i32 %1, 2
  %67 = add nsw i32 %66, -1
  %68 = zext i32 %67 to i64
  %69 = zext i32 %66 to i64
  br label %70

70:                                               ; preds = %70, %65
  %71 = phi i64 [ 0, %65 ], [ %78, %70 ]
  %72 = getelementptr inbounds i32, ptr %0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !12
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #27
  %75 = icmp ult i64 %71, %68
  %76 = select i1 %75, ptr @.str.10, ptr @.str.11
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i32 noundef %74, ptr noundef nonnull %76)
  %78 = add nuw nsw i64 %71, 1
  %79 = icmp eq i64 %78, %69
  br i1 %79, label %94, label %70

80:                                               ; preds = %59
  %81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13)
  %82 = icmp sgt i32 %1, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %83, %80
  %84 = phi ptr [ %86, %83 ], [ %0, %80 ]
  %85 = phi i32 [ %92, %83 ], [ 0, %80 ]
  %86 = getelementptr inbounds i8, ptr %84, i64 1
  %87 = load i8, ptr %84, align 1, !tbaa !9
  %88 = zext i8 %87 to i32
  %89 = icmp slt i32 %85, %5
  %90 = select i1 %89, ptr @.str.10, ptr @.str.11
  %91 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, i32 noundef %88, ptr noundef nonnull %90)
  %92 = add nuw nsw i32 %85, 1
  %93 = icmp eq i32 %92, %1
  br i1 %93, label %94, label %83

94:                                               ; preds = %83, %80, %70, %62
  %95 = phi i32 [ 62, %62 ], [ 93, %80 ], [ 62, %70 ], [ 93, %83 ]
  %96 = tail call i32 @putchar(i32 %95)
  br label %97

97:                                               ; preds = %94, %51, %43, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define dso_local void @util_version() local_unnamed_addr #14 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  tail call void @exit(i32 noundef 0) #26
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind uwtable
define dso_local void @util_usage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #14 {
  %6 = alloca [6 x i8], align 1
  %7 = icmp eq ptr %0, null
  %8 = load ptr, ptr @stderr, align 8
  %9 = load ptr, ptr @stdout, align 8
  %10 = select i1 %7, ptr %9, ptr %8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef nonnull align 1 dereferenceable(6) @__const.util_usage.a_arg, i64 6, i1 false)
  %11 = call i64 @strlen(ptr noundef nonnull %6) #24
  %12 = add i64 %11, 1
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef %2)
  %14 = load ptr, ptr %3, align 8, !tbaa !16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %71, label %16

16:                                               ; preds = %5
  %17 = trunc i64 %12 to i32
  br label %19

18:                                               ; preds = %19
  br i1 %15, label %71, label %36

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %14, %16 ], [ %34, %19 ]
  %21 = phi i32 [ 0, %16 ], [ %31, %19 ]
  %22 = phi i64 [ 0, %16 ], [ %32, %19 ]
  %23 = tail call i64 @strlen(ptr noundef nonnull %20) #24
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.option, ptr %3, i64 %22, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !18
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %28, i32 %17, i32 0
  %30 = add i32 %25, %29
  %31 = tail call i32 @llvm.smax.i32(i32 %21, i32 %30)
  %32 = add i64 %22, 1
  %33 = getelementptr inbounds %struct.option, ptr %3, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %18, label %19

36:                                               ; preds = %64, %18
  %37 = phi ptr [ %68, %64 ], [ %3, %18 ]
  %38 = phi i64 [ %67, %64 ], [ 0, %18 ]
  %39 = getelementptr inbounds ptr, ptr %4, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 444, ptr noundef nonnull @__PRETTY_FUNCTION__.util_usage) #26
  unreachable

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.option, ptr %3, i64 %38, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !19
  %46 = icmp sgt i32 %45, 126
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %10)
  br label %51

49:                                               ; preds = %43
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.22, i32 noundef %45)
  br label %51

51:                                               ; preds = %49, %47
  %52 = getelementptr inbounds %struct.option, ptr %3, i64 %38, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !18
  %54 = icmp eq i32 %53, 0
  %55 = load ptr, ptr %37, align 8, !tbaa !16
  br i1 %54, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.23, i32 noundef %31, ptr noundef %55)
  br label %64

58:                                               ; preds = %51
  %59 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %55) #24
  %60 = add i64 %59, %12
  %61 = trunc i64 %60 to i32
  %62 = sub i32 %31, %61
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.24, ptr noundef %55, ptr noundef nonnull %6, i32 noundef %62, ptr noundef nonnull @.str.11)
  br label %64

64:                                               ; preds = %58, %56
  %65 = load ptr, ptr %39, align 8, !tbaa !5
  %66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.25, ptr noundef %65)
  %67 = add i64 %38, 1
  %68 = getelementptr inbounds %struct.option, ptr %3, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %36

71:                                               ; preds = %64, %18, %5
  br i1 %7, label %74, label %72

72:                                               ; preds = %71
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.26, ptr noundef nonnull %0)
  call void @exit(i32 noundef 1) #26
  unreachable

74:                                               ; preds = %71
  call void @exit(i32 noundef 0) #26
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %0, ...) unnamed_addr #17 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #27
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = call i64 @fwrite(ptr nonnull @.str.28, i64 13, i64 1, ptr %3) #30
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %2) #30
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #26
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #23

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #24 = { nounwind readonly willreturn }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(1) }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!17, !6, i64 0}
!17 = !{!"option", !6, i64 0, !13, i64 8, !6, i64 16, !13, i64 24}
!18 = !{!17, !13, i64 8}
!19 = !{!17, !13, i64 24}
