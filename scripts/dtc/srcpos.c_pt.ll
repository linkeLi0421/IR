; ModuleID = '/llk/IR/scripts/dtc/srcpos.c_pt.bc'
source_filename = "../scripts/dtc/srcpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcfile_state = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.search_path = type { ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.srcpos = type { i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Couldn't open \22%s\22: %s\0A\00", align 1
@depfile = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@srcfile_depth = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Includes nested too deeply\00", align 1
@current_srcfile = dso_local local_unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"srcfile\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"../scripts/dtc/srcpos.c\00", align 1
@__PRETTY_FUNCTION__.srcfile_pop = private unnamed_addr constant [24 x i8] c"_Bool srcfile_pop(void)\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Error closing \22%s\22: %s\0A\00", align 1
@search_path_tail = internal unnamed_addr global ptr null, align 8
@search_path_head = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"pos->next == NULL\00", align 1
@__PRETTY_FUNCTION__.srcpos_copy = private unnamed_addr constant [44 x i8] c"struct srcpos *srcpos_copy(struct srcpos *)\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"<no-file>\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%s:%d.%d-%d.%d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s:%d.%d-%d\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s:%d.%d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"%s: %s \00", align 1
@initial_cpp = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1
@initial_path = internal global ptr null, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@initial_pathlen = internal unnamed_addr global i32 0, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"<no-file>:<no-line>\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"<no-filename>\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"%s:%d:%d-%d:%d\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @srcfile_relative_open(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stdin, align 8, !tbaa !5
  %7 = tail call ptr @xstrdup(ptr noundef nonnull @.str.1) #17
  br label %52

8:                                                ; preds = %2
  %9 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.srcfile_state, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i8, ptr %0, align 1, !tbaa !12
  %17 = icmp eq i8 %16, 47
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %11, %8
  %19 = tail call ptr @xstrdup(ptr noundef %0) #17
  br label %22

20:                                               ; preds = %15
  %21 = tail call ptr @join_path(ptr noundef nonnull %13, ptr noundef nonnull %0) #17
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  %24 = tail call ptr @fopen(ptr noundef %23, ptr noundef nonnull @.str.16) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  tail call void @free(ptr noundef %23) #17
  %27 = load ptr, ptr @search_path_head, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %45, %26
  %30 = phi ptr [ %46, %45 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.search_path, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i8, ptr %0, align 1, !tbaa !12
  %36 = icmp eq i8 %35, 47
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %29
  %38 = tail call ptr @xstrdup(ptr noundef %0) #17
  br label %41

39:                                               ; preds = %34
  %40 = tail call ptr @join_path(ptr noundef nonnull %32, ptr noundef nonnull %0) #17
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %38, %37 ], [ %40, %39 ]
  %43 = tail call ptr @fopen(ptr noundef %42, ptr noundef nonnull @.str.16) #17
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  tail call void @free(ptr noundef %42) #17
  %46 = load ptr, ptr %30, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %29

48:                                               ; preds = %45, %26
  %49 = tail call ptr @__errno_location() #18
  %50 = load i32, ptr %49, align 4, !tbaa !15
  %51 = tail call ptr @strerror(i32 noundef %50) #17
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %51) #19
  unreachable

52:                                               ; preds = %41, %22, %5
  %53 = phi ptr [ %6, %5 ], [ %24, %22 ], [ %43, %41 ]
  %54 = phi ptr [ %7, %5 ], [ %23, %22 ], [ %42, %41 ]
  %55 = load ptr, ptr @depfile, align 8, !tbaa !5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.3, ptr noundef %54)
  br label %59

59:                                               ; preds = %57, %52
  %60 = icmp eq ptr %1, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  store ptr %54, ptr %1, align 8, !tbaa !5
  br label %63

62:                                               ; preds = %59
  tail call void @free(ptr noundef %54) #17
  br label %63

63:                                               ; preds = %62, %61
  ret ptr %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %0, ...) unnamed_addr #4 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = call i64 @fwrite(ptr nonnull @.str.17, i64 13, i64 1, ptr %3) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %2) #20
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #21
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @srcfile_push(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @srcfile_depth, align 4, !tbaa !15
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @srcfile_depth, align 4, !tbaa !15
  %4 = icmp sgt i32 %2, 199
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.4) #19
  unreachable

6:                                                ; preds = %1
  %7 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.srcfile_state, ptr %7, i64 0, i32 1
  %12 = tail call ptr @srcfile_relative_open(ptr noundef %0, ptr noundef nonnull %11)
  store ptr %12, ptr %7, align 8, !tbaa !16
  %13 = load ptr, ptr %11, align 8, !tbaa !17
  %14 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 47) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = ptrtoint ptr %14 to i64
  %18 = ptrtoint ptr %13 to i64
  %19 = sub i64 %17, %18
  %20 = shl i64 %19, 32
  %21 = add i64 %20, 4294967296
  %22 = ashr exact i64 %21, 32
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

26:                                               ; preds = %16
  %27 = ashr exact i64 %20, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr align 1 %13, i64 %27, i1 false) #17
  %28 = getelementptr inbounds i8, ptr %23, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !12
  br label %29

29:                                               ; preds = %26, %10
  %30 = phi ptr [ %23, %26 ], [ null, %10 ]
  %31 = getelementptr inbounds %struct.srcfile_state, ptr %7, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !9
  %32 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.srcfile_state, ptr %7, i64 0, i32 5
  store ptr %32, ptr %33, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.srcfile_state, ptr %7, i64 0, i32 3
  store i32 1, ptr %34, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.srcfile_state, ptr %7, i64 0, i32 4
  store i32 1, ptr %35, align 4, !tbaa !20
  store ptr %7, ptr @current_srcfile, align 8, !tbaa !5
  %36 = load i32, ptr @srcfile_depth, align 4, !tbaa !15
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %82

38:                                               ; preds = %29
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #16
  %40 = trunc i64 %39 to i32
  %41 = tail call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull @initial_path, ptr noundef nonnull @.str.19, ptr noundef %13) #17
  store i32 0, ptr @initial_pathlen, align 4, !tbaa !15
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %82, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr @initial_path, align 8, !tbaa !5
  %45 = and i64 %39, 4294967295
  %46 = and i64 %39, 1
  %47 = icmp eq i64 %45, 1
  br i1 %47, label %72, label %48

48:                                               ; preds = %43
  %49 = sub nsw i64 %45, %46
  br label %50

50:                                               ; preds = %67, %48
  %51 = phi i64 [ 0, %48 ], [ %69, %67 ]
  %52 = phi i32 [ 0, %48 ], [ %68, %67 ]
  %53 = phi i64 [ 0, %48 ], [ %70, %67 ]
  %54 = getelementptr inbounds i8, ptr %44, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !12
  %56 = icmp eq i8 %55, 47
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = add nsw i32 %52, 1
  store i32 %58, ptr @initial_pathlen, align 4, !tbaa !15
  br label %59

59:                                               ; preds = %57, %50
  %60 = phi i32 [ %52, %50 ], [ %58, %57 ]
  %61 = or i64 %51, 1
  %62 = getelementptr inbounds i8, ptr %44, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !12
  %64 = icmp eq i8 %63, 47
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = add nsw i32 %60, 1
  store i32 %66, ptr @initial_pathlen, align 4, !tbaa !15
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi i32 [ %60, %59 ], [ %66, %65 ]
  %69 = add nuw nsw i64 %51, 2
  %70 = add i64 %53, 2
  %71 = icmp eq i64 %70, %49
  br i1 %71, label %72, label %50

72:                                               ; preds = %67, %43
  %73 = phi i64 [ 0, %43 ], [ %69, %67 ]
  %74 = phi i32 [ 0, %43 ], [ %68, %67 ]
  %75 = icmp eq i64 %46, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %44, i64 %73
  %78 = load i8, ptr %77, align 1, !tbaa !12
  %79 = icmp eq i8 %78, 47
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = add nsw i32 %74, 1
  store i32 %81, ptr @initial_pathlen, align 4, !tbaa !15
  br label %82

82:                                               ; preds = %80, %76, %72, %38, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @srcfile_pop() local_unnamed_addr #0 {
  %1 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 198, ptr noundef nonnull @__PRETTY_FUNCTION__.srcfile_pop) #21
  unreachable

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.srcfile_state, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  store ptr %6, ptr @current_srcfile, align 8, !tbaa !5
  %7 = load ptr, ptr %1, align 8, !tbaa !16
  %8 = tail call i32 @fclose(ptr noundef %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.srcfile_state, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = tail call ptr @__errno_location() #18
  %14 = load i32, ptr %13, align 4, !tbaa !15
  %15 = tail call ptr @strerror(i32 noundef %14) #17
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.7, ptr noundef %12, ptr noundef %15) #19
  unreachable

16:                                               ; preds = %4
  %17 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %18 = icmp ne ptr %17, null
  ret i1 %18
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @srcfile_add_search_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !tbaa !21
  %6 = tail call ptr @xstrdup(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.search_path, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !13
  %8 = load ptr, ptr @search_path_tail, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @search_path_head, ptr %8
  store ptr %2, ptr %10, align 8, !tbaa !5
  store ptr %2, ptr @search_path_tail, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @srcpos_update(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 4
  store ptr %4, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.srcfile_state, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !19
  store i32 %7, ptr %0, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.srcfile_state, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !20
  %10 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !25
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %3
  %13 = zext i32 %2 to i64
  %14 = and i64 %13, 1
  %15 = icmp eq i32 %2, 1
  br i1 %15, label %47, label %16

16:                                               ; preds = %12
  %17 = and i64 %13, 4294967294
  br label %18

18:                                               ; preds = %41, %16
  %19 = phi i32 [ %7, %16 ], [ %42, %41 ]
  %20 = phi i32 [ %9, %16 ], [ %43, %41 ]
  %21 = phi i64 [ 0, %16 ], [ %44, %41 ]
  %22 = phi i64 [ 0, %16 ], [ %45, %41 ]
  %23 = getelementptr inbounds i8, ptr %1, i64 %21
  %24 = load i8, ptr %23, align 1, !tbaa !12
  %25 = icmp eq i8 %24, 10
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = add nsw i32 %19, 1
  store i32 %27, ptr %6, align 8, !tbaa !19
  br label %30

28:                                               ; preds = %18
  %29 = add nsw i32 %20, 1
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %19, %28 ], [ %27, %26 ]
  %32 = phi i32 [ %29, %28 ], [ 1, %26 ]
  store i32 %32, ptr %8, align 4, !tbaa !20
  %33 = or i64 %21, 1
  %34 = getelementptr inbounds i8, ptr %1, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !12
  %36 = icmp eq i8 %35, 10
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = add nsw i32 %32, 1
  br label %41

39:                                               ; preds = %30
  %40 = add nsw i32 %31, 1
  store i32 %40, ptr %6, align 8, !tbaa !19
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %31, %37 ], [ %40, %39 ]
  %43 = phi i32 [ %38, %37 ], [ 1, %39 ]
  store i32 %43, ptr %8, align 4, !tbaa !20
  %44 = add nuw nsw i64 %21, 2
  %45 = add i64 %22, 2
  %46 = icmp eq i64 %45, %17
  br i1 %46, label %47, label %18

47:                                               ; preds = %41, %12
  %48 = phi i32 [ undef, %12 ], [ %42, %41 ]
  %49 = phi i32 [ undef, %12 ], [ %43, %41 ]
  %50 = phi i32 [ %7, %12 ], [ %42, %41 ]
  %51 = phi i32 [ %9, %12 ], [ %43, %41 ]
  %52 = phi i64 [ 0, %12 ], [ %44, %41 ]
  %53 = icmp eq i64 %14, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds i8, ptr %1, i64 %52
  %56 = load i8, ptr %55, align 1, !tbaa !12
  %57 = icmp eq i8 %56, 10
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = add nsw i32 %51, 1
  br label %62

60:                                               ; preds = %54
  %61 = add nsw i32 %50, 1
  store i32 %61, ptr %6, align 8, !tbaa !19
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %50, %58 ], [ %61, %60 ]
  %64 = phi i32 [ %59, %58 ], [ 1, %60 ]
  store i32 %64, ptr %8, align 4, !tbaa !20
  br label %65

65:                                               ; preds = %62, %47, %3
  %66 = phi i32 [ %9, %3 ], [ %49, %47 ], [ %64, %62 ]
  %67 = phi i32 [ %7, %3 ], [ %48, %47 ], [ %63, %62 ]
  %68 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 2
  store i32 %67, ptr %68, align 8, !tbaa !26
  %69 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 3
  store i32 %66, ptr %69, align 4, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @srcpos_copy(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 263, ptr noundef nonnull @__PRETTY_FUNCTION__.srcpos_copy) #21
  unreachable

12:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %13 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false)
  %19 = getelementptr inbounds %struct.srcpos, ptr %4, i64 0, i32 4
  store ptr %13, ptr %19, align 8, !tbaa !22
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi ptr [ %4, %16 ], [ null, %1 ]
  ret ptr %21
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local ptr @srcpos_extend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %7, %4 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.srcpos, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.srcpos, ptr %5, i64 0, i32 5
  store ptr %1, ptr %10, align 8, !tbaa !28
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %0, %9 ], [ %1, %2 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @srcpos_string(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.srcfile_state, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str.9, ptr %8
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ @.str.9, %1 ], [ %10, %6 ]
  %13 = load i32, ptr %0, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !26
  %16 = icmp eq i32 %13, %15
  %17 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !25
  %19 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !27
  br i1 %16, label %23, label %21

21:                                               ; preds = %11
  %22 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.10, ptr noundef nonnull %12, i32 noundef %13, i32 noundef %18, i32 noundef %15, i32 noundef %20) #17
  br label %29

23:                                               ; preds = %11
  %24 = icmp eq i32 %18, %20
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.11, ptr noundef nonnull %12, i32 noundef %13, i32 noundef %18, i32 noundef %20) #17
  br label %29

27:                                               ; preds = %23
  %28 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.12, ptr noundef nonnull %12, i32 noundef %13, i32 noundef %18) #17
  br label %29

29:                                               ; preds = %27, %25, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret ptr %30
}

declare i32 @xasprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @srcpos_string_first(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @srcpos_string_comment(ptr noundef %0, i1 noundef zeroext true, i32 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @srcpos_string_comment(ptr noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = icmp sgt i32 %2, 1
  br i1 %8, label %9, label %149

9:                                                ; preds = %7
  %10 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.20) #17
  %11 = load ptr, ptr %4, align 8, !tbaa !5
  br label %149

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %115, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.srcfile_state, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %115, label %20

20:                                               ; preds = %16
  %21 = icmp sgt i32 %2, 1
  br i1 %21, label %124, label %22

22:                                               ; preds = %20
  %23 = load i8, ptr %18, align 1, !tbaa !12
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 2
  %27 = select i1 %1, ptr %0, ptr %26
  %28 = load i32, ptr %27, align 8, !tbaa !15
  %29 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.23, ptr noundef nonnull %18, i32 noundef %28) #17
  br label %137

30:                                               ; preds = %22
  %31 = load ptr, ptr @initial_path, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %42, %30
  %33 = phi i8 [ %49, %42 ], [ %23, %30 ]
  %34 = phi ptr [ %47, %42 ], [ %18, %30 ]
  %35 = phi ptr [ %48, %42 ], [ %31, %30 ]
  %36 = phi i32 [ %46, %42 ], [ 0, %30 ]
  %37 = phi ptr [ %44, %42 ], [ null, %30 ]
  %38 = load i8, ptr %35, align 1, !tbaa !12
  %39 = icmp ne i8 %38, 0
  %40 = icmp eq i8 %33, %38
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = icmp eq i8 %33, 47
  %44 = select i1 %43, ptr %34, ptr %37
  %45 = zext i1 %43 to i32
  %46 = add nuw nsw i32 %36, %45
  %47 = getelementptr inbounds i8, ptr %34, i64 1
  %48 = getelementptr inbounds i8, ptr %35, i64 1
  %49 = load i8, ptr %47, align 1, !tbaa !12
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %32

51:                                               ; preds = %42, %32
  %52 = phi ptr [ %37, %32 ], [ %44, %42 ]
  %53 = phi i32 [ %36, %32 ], [ %46, %42 ]
  %54 = getelementptr inbounds i8, ptr %52, i64 1
  %55 = icmp eq ptr %52, null
  br i1 %55, label %115, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr @initial_pathlen, align 4, !tbaa !15
  %58 = sub nsw i32 %57, %53
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #16
  %60 = ptrtoint ptr %54 to i64
  %61 = ptrtoint ptr %18 to i64
  %62 = sub i64 %61, %60
  %63 = add i64 %62, %59
  %64 = trunc i64 %63 to i32
  %65 = mul nsw i32 %58, 3
  %66 = add i32 %65, 1
  %67 = add i32 %66, %64
  %68 = sext i32 %67 to i64
  %69 = tail call noalias ptr @malloc(i64 noundef %68) #22
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %56
  %72 = icmp eq i32 %57, %53
  br i1 %72, label %111, label %73

73:                                               ; preds = %71
  %74 = add i32 %53, 1
  %75 = and i32 %58, 1
  %76 = icmp eq i32 %57, %74
  br i1 %76, label %97, label %77

77:                                               ; preds = %73
  %78 = and i32 %58, -2
  br label %80

79:                                               ; preds = %56
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

80:                                               ; preds = %80, %77
  %81 = phi i64 [ 0, %77 ], [ %93, %80 ]
  %82 = phi i32 [ 0, %77 ], [ %95, %80 ]
  %83 = or i64 %81, 1
  %84 = getelementptr inbounds i8, ptr %69, i64 %81
  store i8 46, ptr %84, align 1, !tbaa !12
  %85 = add nuw nsw i64 %81, 2
  %86 = getelementptr inbounds i8, ptr %69, i64 %83
  store i8 46, ptr %86, align 1, !tbaa !12
  %87 = add nuw nsw i64 %81, 3
  %88 = getelementptr inbounds i8, ptr %69, i64 %85
  store i8 47, ptr %88, align 1, !tbaa !12
  %89 = add nuw nsw i64 %81, 4
  %90 = getelementptr inbounds i8, ptr %69, i64 %87
  store i8 46, ptr %90, align 1, !tbaa !12
  %91 = add nuw nsw i64 %81, 5
  %92 = getelementptr inbounds i8, ptr %69, i64 %89
  store i8 46, ptr %92, align 1, !tbaa !12
  %93 = add nuw nsw i64 %81, 6
  %94 = getelementptr inbounds i8, ptr %69, i64 %91
  store i8 47, ptr %94, align 1, !tbaa !12
  %95 = add i32 %82, 2
  %96 = icmp eq i32 %95, %78
  br i1 %96, label %97, label %80

97:                                               ; preds = %80, %73
  %98 = phi i64 [ undef, %73 ], [ %93, %80 ]
  %99 = phi i64 [ 0, %73 ], [ %93, %80 ]
  %100 = icmp eq i32 %75, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = add nuw nsw i64 %99, 1
  %103 = getelementptr inbounds i8, ptr %69, i64 %99
  store i8 46, ptr %103, align 1, !tbaa !12
  %104 = add nuw nsw i64 %99, 2
  %105 = getelementptr inbounds i8, ptr %69, i64 %102
  store i8 46, ptr %105, align 1, !tbaa !12
  %106 = add nuw nsw i64 %99, 3
  %107 = getelementptr inbounds i8, ptr %69, i64 %104
  store i8 47, ptr %107, align 1, !tbaa !12
  br label %108

108:                                              ; preds = %101, %97
  %109 = phi i64 [ %98, %97 ], [ %106, %101 ]
  %110 = and i64 %109, 4294967295
  br label %111

111:                                              ; preds = %108, %71
  %112 = phi i64 [ 0, %71 ], [ %110, %108 ]
  %113 = getelementptr inbounds i8, ptr %69, i64 %112
  %114 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %113, ptr noundef nonnull %54) #17
  br label %115

115:                                              ; preds = %111, %51, %16, %12
  %116 = phi ptr [ @.str.9, %12 ], [ @.str.21, %16 ], [ %69, %111 ], [ %18, %51 ]
  %117 = phi i1 [ false, %12 ], [ false, %16 ], [ true, %111 ], [ false, %51 ]
  %118 = icmp sgt i32 %2, 1
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 2
  %121 = select i1 %1, ptr %0, ptr %120
  %122 = load i32, ptr %121, align 8, !tbaa !15
  %123 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.23, ptr noundef nonnull %116, i32 noundef %122) #17
  br i1 %117, label %135, label %137

124:                                              ; preds = %115, %20
  %125 = phi i1 [ %117, %115 ], [ false, %20 ]
  %126 = phi ptr [ %116, %115 ], [ %18, %20 ]
  %127 = load i32, ptr %0, align 8, !tbaa !24
  %128 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !25
  %130 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !26
  %132 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 3
  %133 = load i32, ptr %132, align 4, !tbaa !27
  %134 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, ptr noundef %126, i32 noundef %127, i32 noundef %129, i32 noundef %131, i32 noundef %133) #17
  br i1 %125, label %135, label %137

135:                                              ; preds = %124, %119
  %136 = phi ptr [ %116, %119 ], [ %126, %124 ]
  call void @free(ptr noundef %136) #17
  br label %137

137:                                              ; preds = %135, %124, %119, %25
  %138 = getelementptr inbounds %struct.srcpos, ptr %0, i64 0, i32 5
  %139 = load ptr, ptr %138, align 8, !tbaa !28
  %140 = icmp eq ptr %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = call fastcc ptr @srcpos_string_comment(ptr noundef nonnull %139, i1 noundef zeroext %1, i32 noundef %2)
  %143 = load ptr, ptr %5, align 8, !tbaa !5
  %144 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.24, ptr noundef %143, ptr noundef %142) #17
  %145 = load ptr, ptr %5, align 8, !tbaa !5
  call void @free(ptr noundef %145) #17
  call void @free(ptr noundef %142) #17
  %146 = load ptr, ptr %4, align 8, !tbaa !5
  br label %149

147:                                              ; preds = %137
  %148 = load ptr, ptr %5, align 8, !tbaa !5
  br label %149

149:                                              ; preds = %147, %141, %9, %7
  %150 = phi ptr [ %11, %9 ], [ null, %7 ], [ %148, %147 ], [ %146, %141 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %150
}

; Function Attrs: nounwind uwtable
define dso_local ptr @srcpos_string_last(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @srcpos_string_comment(ptr noundef %0, i1 noundef zeroext false, i32 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @srcpos_verror(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @srcpos_string(ptr noundef %0)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef %1, ptr noundef %5) #20
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i32 @vfprintf(ptr noundef %8, ptr noundef %2, ptr noundef %3) #20
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  tail call void @free(ptr noundef %5) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @srcpos_error(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @srcpos_string(ptr noundef %0) #17
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef %1, ptr noundef %5) #23
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = call i32 @vfprintf(ptr noundef %8, ptr noundef %2, ptr noundef nonnull %4) #23
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = call i32 @fputc(i32 10, ptr %10) #17
  call void @free(ptr noundef %5) #17
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: nounwind uwtable
define dso_local void @srcpos_set_line(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.srcfile_state, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.srcfile_state, ptr %3, i64 0, i32 3
  store i32 %1, ptr %5, align 8, !tbaa !19
  %6 = load i1, ptr @initial_cpp, align 1
  br i1 %6, label %51, label %7

7:                                                ; preds = %2
  store i1 true, ptr @initial_cpp, align 1
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull @initial_path, ptr noundef nonnull @.str.19, ptr noundef %0) #17
  store i32 0, ptr @initial_pathlen, align 4, !tbaa !15
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @initial_path, align 8, !tbaa !5
  %14 = and i64 %8, 4294967295
  %15 = and i64 %8, 1
  %16 = icmp eq i64 %14, 1
  br i1 %16, label %41, label %17

17:                                               ; preds = %12
  %18 = sub nsw i64 %14, %15
  br label %19

19:                                               ; preds = %36, %17
  %20 = phi i64 [ 0, %17 ], [ %38, %36 ]
  %21 = phi i32 [ 0, %17 ], [ %37, %36 ]
  %22 = phi i64 [ 0, %17 ], [ %39, %36 ]
  %23 = getelementptr inbounds i8, ptr %13, i64 %20
  %24 = load i8, ptr %23, align 1, !tbaa !12
  %25 = icmp eq i8 %24, 47
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = add nsw i32 %21, 1
  store i32 %27, ptr @initial_pathlen, align 4, !tbaa !15
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %21, %19 ], [ %27, %26 ]
  %30 = or i64 %20, 1
  %31 = getelementptr inbounds i8, ptr %13, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !12
  %33 = icmp eq i8 %32, 47
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = add nsw i32 %29, 1
  store i32 %35, ptr @initial_pathlen, align 4, !tbaa !15
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi i32 [ %29, %28 ], [ %35, %34 ]
  %38 = add nuw nsw i64 %20, 2
  %39 = add i64 %22, 2
  %40 = icmp eq i64 %39, %18
  br i1 %40, label %41, label %19

41:                                               ; preds = %36, %12
  %42 = phi i64 [ 0, %12 ], [ %38, %36 ]
  %43 = phi i32 [ 0, %12 ], [ %37, %36 ]
  %44 = icmp eq i64 %15, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %13, i64 %42
  %47 = load i8, ptr %46, align 1, !tbaa !12
  %48 = icmp eq i8 %47, 47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = add nsw i32 %43, 1
  store i32 %50, ptr @initial_pathlen, align 4, !tbaa !15
  br label %51

51:                                               ; preds = %49, %45, %41, %7, %2
  ret void
}

declare ptr @join_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone willreturn }
attributes #19 = { noreturn }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold nounwind }

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
!9 = !{!10, !6, i64 16}
!10 = !{!"srcfile_state", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !6, i64 32}
!11 = !{!"int", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !6, i64 8}
!14 = !{!"search_path", !6, i64 0, !6, i64 8}
!15 = !{!11, !11, i64 0}
!16 = !{!10, !6, i64 0}
!17 = !{!10, !6, i64 8}
!18 = !{!10, !6, i64 32}
!19 = !{!10, !11, i64 24}
!20 = !{!10, !11, i64 28}
!21 = !{!14, !6, i64 0}
!22 = !{!23, !6, i64 16}
!23 = !{!"srcpos", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !6, i64 16, !6, i64 24}
!24 = !{!23, !11, i64 0}
!25 = !{!23, !11, i64 4}
!26 = !{!23, !11, i64 8}
!27 = !{!23, !11, i64 12}
!28 = !{!23, !6, i64 24}
