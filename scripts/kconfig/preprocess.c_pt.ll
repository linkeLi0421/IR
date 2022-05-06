; ModuleID = '/llk/IR/scripts/kconfig/preprocess.c_pt.bc'
source_filename = "../scripts/kconfig/preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { ptr, ptr }
%struct.function = type { ptr, i32, i32, ptr }
%struct.variable = type { ptr, ptr, i32, i32, %struct.list_head }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.file = type { ptr, ptr, ptr, i32 }
%struct.env = type { ptr, ptr, %struct.list_head }

@env_list = internal global %struct.list_head { ptr @env_list, ptr @env_list }, align 8
@.str = private unnamed_addr constant [20 x i8] c"ifneq \22$(%s)\22 \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: FORCE\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"endif\0A\00", align 1
@variable_list = internal global %struct.list_head { ptr @variable_list, ptr @variable_list }, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"unterminated reference to '%s': missing ')'\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@current_file = external local_unnamed_addr global ptr, align 8
@yylineno = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"too many function arguments\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Recursive variable '%s' references itself (eventually)\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Too deep recursive expansion\00", align 1
@function_table = internal unnamed_addr constant [6 x %struct.function] [%struct.function { ptr @.str.14, i32 2, i32 2, ptr @do_error_if }, %struct.function { ptr @.str.15, i32 0, i32 0, ptr @do_filename }, %struct.function { ptr @.str.16, i32 1, i32 1, ptr @do_info }, %struct.function { ptr @.str.17, i32 0, i32 0, ptr @do_lineno }, %struct.function { ptr @.str.18, i32 1, i32 1, ptr @do_shell }, %struct.function { ptr @.str.19, i32 2, i32 2, ptr @do_warning_if }], align 16
@.str.12 = private unnamed_addr constant [42 x i8] c"too few function arguments passed to '%s'\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"too many function arguments passed to '%s'\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"error-if\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"warning-if\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @env_write_dep(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @env_list, align 8, !tbaa !5
  %4 = icmp eq ptr %3, @env_list
  br i1 %4, label %22, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr inbounds i8, ptr %6, i64 -16
  %8 = load ptr, ptr %6, align 8, !tbaa !10
  %9 = load ptr, ptr %7, align 8, !tbaa !12
  %10 = getelementptr inbounds i8, ptr %6, i64 -8
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %9, ptr noundef %11)
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 6, i64 1, ptr %0)
  %15 = getelementptr inbounds i8, ptr %6, i64 8
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = load ptr, ptr %6, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !14
  store ptr %17, ptr %16, align 8, !tbaa !5
  store ptr inttoptr (i64 1048832 to ptr), ptr %6, align 8, !tbaa !5
  store ptr inttoptr (i64 2097664 to ptr), ptr %15, align 8, !tbaa !14
  %19 = load ptr, ptr %7, align 8, !tbaa !12
  tail call void @free(ptr noundef %19) #16
  %20 = load ptr, ptr %10, align 8, !tbaa !13
  tail call void @free(ptr noundef %20) #16
  tail call void @free(ptr noundef nonnull %7) #16
  %21 = icmp eq ptr %8, @env_list
  br i1 %21, label %22, label %5

22:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @variable_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ @variable_list, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, @variable_list
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %7, i64 -24
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %11) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5

14:                                               ; preds = %9
  %15 = icmp eq i32 %2, 2
  br i1 %15, label %35, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, ptr %7, i64 -24
  %18 = getelementptr inbounds i8, ptr %7, i64 -16
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  tail call void @free(ptr noundef %19) #16
  br label %31

20:                                               ; preds = %5
  %21 = icmp eq i32 %2, 2
  %22 = tail call ptr @xmalloc(i64 noundef 40) #16
  %23 = tail call ptr @xstrdup(ptr noundef %0) #16
  store ptr %23, ptr %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.variable, ptr %22, i64 0, i32 3
  store i32 0, ptr %24, align 4, !tbaa !19
  %25 = getelementptr inbounds %struct.variable, ptr %22, i64 0, i32 4
  %26 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @variable_list, i64 0, i32 1), align 8, !tbaa !14
  store ptr %25, ptr getelementptr inbounds (%struct.list_head, ptr @variable_list, i64 0, i32 1), align 8, !tbaa !14
  store ptr @variable_list, ptr %25, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.variable, ptr %22, i64 0, i32 4, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !14
  store ptr %25, ptr %26, align 8, !tbaa !5
  br i1 %21, label %28, label %31

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.variable, ptr %22, i64 0, i32 2
  store i32 1, ptr %29, align 8, !tbaa !20
  %30 = tail call ptr @xstrdup(ptr noundef %1) #16
  br label %60

31:                                               ; preds = %20, %16
  %32 = phi ptr [ %17, %16 ], [ %22, %20 ]
  %33 = getelementptr inbounds %struct.variable, ptr %32, i64 0, i32 2
  store i32 %2, ptr %33, align 8, !tbaa !20
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %43, label %45

35:                                               ; preds = %14
  %36 = getelementptr inbounds i8, ptr %7, i64 -8
  %37 = load i32, ptr %36, align 8, !tbaa !20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr %1, ptr %4, align 8, !tbaa !21
  %40 = call fastcc ptr @__expand_string(ptr noundef nonnull %4, ptr noundef nonnull @is_end_of_str, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %47

41:                                               ; preds = %35
  %42 = tail call ptr @xstrdup(ptr noundef %1) #16
  br label %47

43:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr %1, ptr %4, align 8, !tbaa !21
  %44 = call fastcc ptr @__expand_string(ptr noundef nonnull %4, ptr noundef nonnull @is_end_of_str, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %60

45:                                               ; preds = %31
  %46 = tail call ptr @xstrdup(ptr noundef %1) #16
  br label %60

47:                                               ; preds = %41, %39
  %48 = phi ptr [ %42, %41 ], [ %40, %39 ]
  %49 = getelementptr inbounds i8, ptr %7, i64 -16
  %50 = load ptr, ptr %49, align 8, !tbaa !18
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #17
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #17
  %53 = add i64 %51, 2
  %54 = add i64 %53, %52
  %55 = tail call ptr @xrealloc(ptr noundef %50, i64 noundef %54) #16
  store ptr %55, ptr %49, align 8, !tbaa !18
  %56 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %55)
  %57 = getelementptr i8, ptr %55, i64 %56
  store i16 32, ptr %57, align 1
  %58 = load ptr, ptr %49, align 8, !tbaa !18
  %59 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %48) #16
  tail call void @free(ptr noundef %48) #16
  br label %64

60:                                               ; preds = %45, %43, %28
  %61 = phi ptr [ %44, %43 ], [ %46, %45 ], [ %30, %28 ]
  %62 = phi ptr [ %32, %43 ], [ %32, %45 ], [ %22, %28 ]
  %63 = getelementptr inbounds %struct.variable, ptr %62, i64 0, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !18
  br label %64

64:                                               ; preds = %60, %47
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #4

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @variable_all_del() local_unnamed_addr #0 {
  %1 = load ptr, ptr @variable_list, align 8, !tbaa !5
  %2 = icmp eq ptr %1, @variable_list
  br i1 %2, label %14, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds i8, ptr %4, i64 -24
  %6 = load ptr, ptr %4, align 8, !tbaa !5
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !14
  store ptr %6, ptr %8, align 8, !tbaa !5
  store ptr inttoptr (i64 1048832 to ptr), ptr %4, align 8, !tbaa !5
  store ptr inttoptr (i64 2097664 to ptr), ptr %7, align 8, !tbaa !14
  %10 = load ptr, ptr %5, align 8, !tbaa !15
  tail call void @free(ptr noundef %10) #16
  %11 = getelementptr inbounds i8, ptr %4, i64 -16
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  tail call void @free(ptr noundef %12) #16
  tail call void @free(ptr noundef nonnull %5) #16
  %13 = icmp eq ptr %6, @variable_list
  br i1 %13, label %14, label %3

14:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_dollar(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = load i8, ptr %2, align 1, !tbaa !22
  %4 = icmp eq i8 %3, 40
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @xstrdup(ptr noundef nonnull @.str.4) #16
  br label %28

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %2, i64 1
  br label %9

9:                                                ; preds = %18, %7
  %10 = phi ptr [ %8, %7 ], [ %20, %18 ]
  %11 = phi i32 [ 0, %7 ], [ %19, %18 ]
  %12 = load i8, ptr %10, align 1, !tbaa !22
  switch i8 %12, label %18 [
    i8 0, label %21
    i8 40, label %13
    i8 41, label %15
  ]

13:                                               ; preds = %9
  %14 = add nsw i32 %11, 1
  br label %18

15:                                               ; preds = %9
  %16 = add nsw i32 %11, -1
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15, %13, %9
  %19 = phi i32 [ %14, %13 ], [ %16, %15 ], [ %11, %9 ]
  %20 = getelementptr inbounds i8, ptr %10, i64 1
  br label %9

21:                                               ; preds = %9
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #18
  unreachable

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %23, ptr %0, align 8, !tbaa !21
  %24 = ptrtoint ptr %10 to i64
  %25 = ptrtoint ptr %8 to i64
  %26 = sub i64 %24, %25
  %27 = tail call fastcc ptr @eval_clause(ptr noundef nonnull %8, i64 noundef %26, i32 noundef 0, ptr noundef null) #16
  br label %28

28:                                               ; preds = %22, %5
  %29 = phi ptr [ %6, %5 ], [ %27, %22 ]
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_one_token(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @__expand_string(ptr noundef %0, ptr noundef nonnull @is_end_of_token, i32 noundef 0, ptr noundef null)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @__expand_string(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = tail call ptr @xmalloc(i64 noundef 1) #16
  store i8 0, ptr %5, align 1, !tbaa !22
  %6 = load ptr, ptr %0, align 8, !tbaa !21
  br label %7

7:                                                ; preds = %44, %4
  %8 = phi ptr [ %45, %44 ], [ %6, %4 ]
  %9 = phi ptr [ %50, %44 ], [ %5, %4 ]
  %10 = phi i64 [ %49, %44 ], [ 1, %4 ]
  %11 = load i8, ptr %8, align 1, !tbaa !22
  %12 = icmp eq i8 %11, 36
  br i1 %12, label %13, label %53

13:                                               ; preds = %57, %7
  %14 = phi ptr [ %8, %7 ], [ %58, %57 ]
  %15 = ptrtoint ptr %14 to i64
  %16 = ptrtoint ptr %8 to i64
  %17 = sub i64 %15, %16
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !22
  %20 = icmp eq i8 %19, 40
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = tail call ptr @xstrdup(ptr noundef nonnull @.str.4) #16
  br label %44

23:                                               ; preds = %13
  %24 = getelementptr inbounds i8, ptr %14, i64 2
  br label %25

25:                                               ; preds = %34, %23
  %26 = phi ptr [ %24, %23 ], [ %36, %34 ]
  %27 = phi i32 [ 0, %23 ], [ %35, %34 ]
  %28 = load i8, ptr %26, align 1, !tbaa !22
  switch i8 %28, label %34 [
    i8 0, label %37
    i8 40, label %29
    i8 41, label %31
  ]

29:                                               ; preds = %25
  %30 = add nsw i32 %27, 1
  br label %34

31:                                               ; preds = %25
  %32 = add nsw i32 %27, -1
  %33 = icmp eq i32 %27, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %29, %25
  %35 = phi i32 [ %30, %29 ], [ %32, %31 ], [ %27, %25 ]
  %36 = getelementptr inbounds i8, ptr %26, i64 1
  br label %25

37:                                               ; preds = %25
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.5, ptr noundef nonnull %24) #18
  unreachable

38:                                               ; preds = %31
  %39 = getelementptr inbounds i8, ptr %26, i64 1
  %40 = ptrtoint ptr %26 to i64
  %41 = ptrtoint ptr %24 to i64
  %42 = sub i64 %40, %41
  %43 = tail call fastcc ptr @eval_clause(ptr noundef nonnull %24, i64 noundef %42, i32 noundef %2, ptr noundef %3) #16
  br label %44

44:                                               ; preds = %38, %21
  %45 = phi ptr [ %39, %38 ], [ %18, %21 ]
  %46 = phi ptr [ %43, %38 ], [ %22, %21 ]
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %46) #17
  %48 = add i64 %17, %10
  %49 = add i64 %48, %47
  %50 = tail call ptr @xrealloc(ptr noundef %9, i64 noundef %49) #16
  %51 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull %8, i64 noundef %17) #16
  %52 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) %46) #16
  tail call void @free(ptr noundef %46) #16
  br label %7

53:                                               ; preds = %57, %7
  %54 = phi i8 [ %59, %57 ], [ %11, %7 ]
  %55 = phi ptr [ %58, %57 ], [ %8, %7 ]
  %56 = tail call zeroext i1 %1(i8 noundef signext %54) #16, !callees !23
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %55, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !22
  %60 = icmp eq i8 %59, 36
  br i1 %60, label %13, label %53

61:                                               ; preds = %53
  %62 = ptrtoint ptr %55 to i64
  %63 = ptrtoint ptr %8 to i64
  %64 = sub i64 %62, %63
  %65 = add i64 %64, %10
  %66 = tail call ptr @xrealloc(ptr noundef %9, i64 noundef %65) #16
  %67 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull %8, i64 noundef %64) #16
  store ptr %55, ptr %0, align 8, !tbaa !21
  ret ptr %66
}

; Function Attrs: mustprogress nofree nosync nounwind readonly willreturn uwtable
define internal zeroext i1 @is_end_of_token(i8 noundef signext %0) #7 {
  %2 = tail call ptr @__ctype_b_loc() #19
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  %4 = sext i8 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !24
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  %9 = icmp ne i8 %0, 95
  %10 = icmp ne i8 %0, 45
  %11 = and i1 %9, %8
  %12 = and i1 %10, %11
  ret i1 %12
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define internal void @pperror(ptr nocapture noundef readonly %0, ...) unnamed_addr #8 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %3 = load ptr, ptr @stderr, align 8, !tbaa !21
  %4 = load ptr, ptr @current_file, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.file, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = load i32, ptr @yylineno, align 4, !tbaa !28
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef %6, i32 noundef %7) #20
  call void @llvm.va_start(ptr nonnull %2)
  %9 = load ptr, ptr @stderr, align 8, !tbaa !21
  %10 = call i32 @vfprintf(ptr noundef %9, ptr noundef %0, ptr noundef nonnull %2) #20
  call void @llvm.va_end(ptr nonnull %2)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !21
  %12 = call i32 @fputc(i32 10, ptr %11)
  call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @eval_clause(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [16 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #16
  %10 = tail call ptr @xstrndup(ptr noundef %0, i64 noundef %1) #16
  %11 = call i64 @strtoul(ptr noundef %10, ptr noundef nonnull %8, i32 noundef 10) #16
  %12 = load ptr, ptr %8, align 8, !tbaa !21
  %13 = load i8, ptr %12, align 1, !tbaa !22
  %14 = icmp ne i8 %13, 0
  %15 = icmp eq i64 %11, 0
  %16 = select i1 %14, i1 true, i1 %15
  %17 = sext i32 %2 to i64
  %18 = icmp ugt i64 %11, %17
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i8, ptr %10, align 1, !tbaa !22
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %57, label %28

23:                                               ; preds = %4
  %24 = add i64 %11, -1
  %25 = getelementptr inbounds ptr, ptr %3, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = tail call ptr @xstrdup(ptr noundef %26) #16
  br label %192

28:                                               ; preds = %50, %20
  %29 = phi i8 [ %55, %50 ], [ %21, %20 ]
  %30 = phi i32 [ %53, %50 ], [ 0, %20 ]
  %31 = phi i32 [ %52, %50 ], [ 0, %20 ]
  %32 = phi ptr [ %54, %50 ], [ %10, %20 ]
  %33 = phi ptr [ %51, %50 ], [ %10, %20 ]
  %34 = icmp eq i32 %30, 0
  %35 = icmp eq i8 %29, 44
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  store i8 0, ptr %32, align 1, !tbaa !22
  %38 = icmp sgt i32 %31, 15
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.8) #21
  unreachable

40:                                               ; preds = %37
  %41 = add nsw i32 %31, 1
  %42 = sext i32 %31 to i64
  %43 = getelementptr inbounds [16 x ptr], ptr %9, i64 0, i64 %42
  store ptr %33, ptr %43, align 8, !tbaa !21
  %44 = getelementptr inbounds i8, ptr %32, i64 1
  br label %50

45:                                               ; preds = %28
  switch i8 %29, label %50 [
    i8 40, label %46
    i8 41, label %48
  ]

46:                                               ; preds = %45
  %47 = add nsw i32 %30, 1
  br label %50

48:                                               ; preds = %45
  %49 = add nsw i32 %30, -1
  br label %50

50:                                               ; preds = %48, %46, %45, %40
  %51 = phi ptr [ %44, %40 ], [ %33, %46 ], [ %33, %48 ], [ %33, %45 ]
  %52 = phi i32 [ %41, %40 ], [ %31, %46 ], [ %31, %48 ], [ %31, %45 ]
  %53 = phi i32 [ 0, %40 ], [ %47, %46 ], [ %49, %48 ], [ %30, %45 ]
  %54 = getelementptr inbounds i8, ptr %32, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !22
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %28

57:                                               ; preds = %50, %20
  %58 = phi ptr [ %10, %20 ], [ %51, %50 ]
  %59 = phi i32 [ 0, %20 ], [ %52, %50 ]
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [16 x ptr], ptr %9, i64 0, i64 %60
  store ptr %58, ptr %61, align 8, !tbaa !21
  %62 = load ptr, ptr %9, align 16, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %62, ptr %7, align 8, !tbaa !21
  %63 = call fastcc ptr @__expand_string(ptr noundef nonnull %7, ptr noundef nonnull @is_end_of_str, i32 noundef %2, ptr noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %64 = icmp sgt i32 %59, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = zext i32 %59 to i64
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i64 [ 0, %65 ], [ %69, %67 ]
  %69 = add nuw nsw i64 %68, 1
  %70 = getelementptr inbounds [16 x ptr], ptr %9, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %71, ptr %6, align 8, !tbaa !21
  %72 = call fastcc ptr @__expand_string(ptr noundef nonnull %6, ptr noundef nonnull @is_end_of_str, i32 noundef %2, ptr noundef %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %73 = getelementptr inbounds [16 x ptr], ptr %9, i64 0, i64 %68
  store ptr %72, ptr %73, align 8, !tbaa !21
  %74 = icmp eq i64 %69, %66
  br i1 %74, label %75, label %67

75:                                               ; preds = %67, %57
  br label %76

76:                                               ; preds = %80, %75
  %77 = phi ptr [ %78, %80 ], [ @variable_list, %75 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = icmp eq ptr %78, @variable_list
  br i1 %79, label %112, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, ptr %78, i64 -24
  %82 = load ptr, ptr %81, align 8, !tbaa !15
  %83 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %63, ptr noundef nonnull dereferenceable(1) %82) #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %76

85:                                               ; preds = %80
  %86 = icmp eq i32 %59, 0
  %87 = getelementptr inbounds i8, ptr %78, i64 -4
  %88 = load i32, ptr %87, align 4, !tbaa !19
  br i1 %86, label %89, label %92

89:                                               ; preds = %85
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %89
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.10, ptr noundef %63) #18
  unreachable

92:                                               ; preds = %85
  %93 = icmp sgt i32 %88, 1000
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.11) #18
  unreachable

95:                                               ; preds = %92, %89
  %96 = phi i32 [ %88, %92 ], [ 0, %89 ]
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %87, align 4, !tbaa !19
  %98 = getelementptr inbounds i8, ptr %78, i64 -8
  %99 = load i32, ptr %98, align 8, !tbaa !20
  %100 = icmp eq i32 %99, 1
  %101 = getelementptr inbounds i8, ptr %78, i64 -16
  %102 = load ptr, ptr %101, align 8, !tbaa !18
  br i1 %100, label %103, label %105

103:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %102, ptr %5, align 8, !tbaa !21
  %104 = call fastcc ptr @__expand_string(ptr noundef nonnull %5, ptr noundef nonnull @is_end_of_str, i32 noundef %59, ptr noundef nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %107

105:                                              ; preds = %95
  %106 = tail call ptr @xstrdup(ptr noundef %102) #16
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi ptr [ %104, %103 ], [ %106, %105 ]
  %109 = load i32, ptr %87, align 4, !tbaa !19
  %110 = add nsw i32 %109, -1
  store i32 %110, ptr %87, align 4, !tbaa !19
  %111 = icmp eq ptr %108, null
  br i1 %111, label %112, label %181

112:                                              ; preds = %107, %76
  %113 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.14, ptr noundef nonnull dereferenceable(1) %63) #17
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %138, %135, %132, %129, %126, %112
  %116 = phi i64 [ 0, %112 ], [ 1, %126 ], [ 2, %129 ], [ 3, %132 ], [ 4, %135 ], [ 5, %138 ]
  %117 = getelementptr inbounds [6 x %struct.function], ptr @function_table, i64 0, i64 %116, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !29
  %119 = icmp ugt i32 %118, %59
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.12, ptr noundef %63) #18
  unreachable

121:                                              ; preds = %115
  %122 = getelementptr inbounds [6 x %struct.function], ptr @function_table, i64 0, i64 %116, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !31
  %124 = icmp ult i32 %123, %59
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.13, ptr noundef %63) #18
  unreachable

126:                                              ; preds = %112
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.15, ptr noundef nonnull dereferenceable(1) %63) #17
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %115, label %129

129:                                              ; preds = %126
  %130 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.16, ptr noundef nonnull dereferenceable(1) %63) #17
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %115, label %132

132:                                              ; preds = %129
  %133 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.17, ptr noundef nonnull dereferenceable(1) %63) #17
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %115, label %135

135:                                              ; preds = %132
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.18, ptr noundef nonnull dereferenceable(1) %63) #17
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %115, label %138

138:                                              ; preds = %135
  %139 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.19, ptr noundef nonnull dereferenceable(1) %63) #17
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %115, label %146

141:                                              ; preds = %121
  %142 = getelementptr inbounds [6 x %struct.function], ptr @function_table, i64 0, i64 %116, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !32
  %144 = call ptr %143(i32 noundef %59, ptr noundef nonnull %9) #16
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %181

146:                                              ; preds = %141, %138
  %147 = icmp eq i32 %59, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %146
  %149 = load i8, ptr %63, align 1, !tbaa !22
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %179, label %151

151:                                              ; preds = %155, %148
  %152 = phi ptr [ %153, %155 ], [ @env_list, %148 ]
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  %154 = icmp eq ptr %153, @env_list
  br i1 %154, label %164, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds i8, ptr %153, i64 -16
  %157 = load ptr, ptr %156, align 8, !tbaa !12
  %158 = call i32 @strcmp(ptr noundef nonnull %63, ptr noundef nonnull dereferenceable(1) %157) #17
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %151

160:                                              ; preds = %155
  %161 = getelementptr inbounds i8, ptr %153, i64 -8
  %162 = load ptr, ptr %161, align 8, !tbaa !13
  %163 = call ptr @xstrdup(ptr noundef %162) #16
  br label %176

164:                                              ; preds = %151
  %165 = call ptr @getenv(ptr noundef nonnull %63) #16
  %166 = icmp eq ptr %165, null
  br i1 %166, label %179, label %167

167:                                              ; preds = %164
  %168 = call ptr @xmalloc(i64 noundef 32) #16
  %169 = call ptr @xstrdup(ptr noundef nonnull %63) #16
  store ptr %169, ptr %168, align 8, !tbaa !12
  %170 = call ptr @xstrdup(ptr noundef nonnull %165) #16
  %171 = getelementptr inbounds %struct.env, ptr %168, i64 0, i32 1
  store ptr %170, ptr %171, align 8, !tbaa !13
  %172 = getelementptr inbounds %struct.env, ptr %168, i64 0, i32 2
  %173 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @env_list, i64 0, i32 1), align 8, !tbaa !14
  store ptr %172, ptr getelementptr inbounds (%struct.list_head, ptr @env_list, i64 0, i32 1), align 8, !tbaa !14
  store ptr @env_list, ptr %172, align 8, !tbaa !5
  %174 = getelementptr inbounds %struct.env, ptr %168, i64 0, i32 2, i32 1
  store ptr %173, ptr %174, align 8, !tbaa !14
  store ptr %172, ptr %173, align 8, !tbaa !5
  %175 = call ptr @xstrdup(ptr noundef nonnull %165) #16
  br label %176

176:                                              ; preds = %167, %160
  %177 = phi ptr [ %163, %160 ], [ %175, %167 ]
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %176, %164, %148, %146
  %180 = call ptr @xstrdup(ptr noundef nonnull @.str.9) #16
  br label %181

181:                                              ; preds = %179, %176, %141, %107
  %182 = phi ptr [ %108, %107 ], [ %144, %141 ], [ %177, %176 ], [ %180, %179 ]
  br i1 %64, label %183, label %191

183:                                              ; preds = %181
  %184 = zext i32 %59 to i64
  br label %185

185:                                              ; preds = %185, %183
  %186 = phi i64 [ 0, %183 ], [ %189, %185 ]
  %187 = getelementptr inbounds [16 x ptr], ptr %9, i64 0, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !21
  call void @free(ptr noundef %188) #16
  %189 = add nuw nsw i64 %186, 1
  %190 = icmp eq i64 %189, %184
  br i1 %190, label %191, label %185

191:                                              ; preds = %185, %181
  call void @free(ptr noundef %63) #16
  br label %192

192:                                              ; preds = %191, %23
  %193 = phi ptr [ %27, %23 ], [ %182, %191 ]
  call void @free(ptr noundef %10) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  ret ptr %193
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal zeroext i1 @is_end_of_str(i8 noundef signext %0) #12 {
  %2 = icmp eq i8 %0, 0
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define internal ptr @do_error_if(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !21
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(2) @.str.20) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.21, ptr noundef %8) #21
  unreachable

9:                                                ; preds = %2
  %10 = tail call ptr @xstrdup(ptr noundef nonnull @.str.9) #16
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal ptr @do_filename(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr @current_file, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.file, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call ptr @xstrdup(ptr noundef %5) #16
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal ptr @do_info(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !21
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) %3)
  %5 = tail call ptr @xstrdup(ptr noundef nonnull @.str.9) #16
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal ptr @do_lineno(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = load i32, ptr @yylineno, align 4, !tbaa !28
  %5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.23, i32 noundef %4) #16
  %6 = call ptr @xstrdup(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal ptr @do_shell(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #16
  %4 = load ptr, ptr %1, align 8, !tbaa !21
  %5 = tail call ptr @popen(ptr noundef %4, ptr noundef nonnull @.str.24)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @perror(ptr noundef %4) #20
  tail call void @exit(i32 noundef 1) #18
  unreachable

8:                                                ; preds = %2
  %9 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %5)
  %10 = icmp eq i64 %9, 4096
  %11 = select i1 %10, i64 4095, i64 %9
  br label %12

12:                                               ; preds = %16, %8
  %13 = phi i64 [ %17, %16 ], [ %11, %8 ]
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i8 0, ptr %3, align 16, !tbaa !22
  br label %264

16:                                               ; preds = %12
  %17 = add i64 %13, -1
  %18 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !22
  %20 = icmp eq i8 %19, 10
  br i1 %20, label %12, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %13
  store i8 0, ptr %22, align 1, !tbaa !22
  %23 = icmp ult i64 %13, 8
  br i1 %23, label %253, label %24

24:                                               ; preds = %21
  %25 = icmp ult i64 %13, 32
  br i1 %25, label %202, label %26

26:                                               ; preds = %24
  %27 = and i64 %13, -32
  br label %28

28:                                               ; preds = %194, %26
  %29 = phi i64 [ 0, %26 ], [ %195, %194 ]
  %30 = or i64 %29, 16
  %31 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %29
  %32 = load <16 x i8>, ptr %31, align 16, !tbaa !22
  %33 = getelementptr inbounds i8, ptr %31, i64 16
  %34 = load <16 x i8>, ptr %33, align 16, !tbaa !22
  %35 = icmp eq <16 x i8> %32, <i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10>
  %36 = icmp eq <16 x i8> %34, <i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10>
  %37 = extractelement <16 x i1> %35, i64 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %29
  store i8 32, ptr %39, align 16, !tbaa !22
  br label %40

40:                                               ; preds = %38, %28
  %41 = extractelement <16 x i1> %35, i64 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = or i64 %29, 1
  %44 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %43
  store i8 32, ptr %44, align 1, !tbaa !22
  br label %45

45:                                               ; preds = %42, %40
  %46 = extractelement <16 x i1> %35, i64 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = or i64 %29, 2
  %49 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %48
  store i8 32, ptr %49, align 2, !tbaa !22
  br label %50

50:                                               ; preds = %47, %45
  %51 = extractelement <16 x i1> %35, i64 3
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = or i64 %29, 3
  %54 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %53
  store i8 32, ptr %54, align 1, !tbaa !22
  br label %55

55:                                               ; preds = %52, %50
  %56 = extractelement <16 x i1> %35, i64 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = or i64 %29, 4
  %59 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %58
  store i8 32, ptr %59, align 4, !tbaa !22
  br label %60

60:                                               ; preds = %57, %55
  %61 = extractelement <16 x i1> %35, i64 5
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = or i64 %29, 5
  %64 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %63
  store i8 32, ptr %64, align 1, !tbaa !22
  br label %65

65:                                               ; preds = %62, %60
  %66 = extractelement <16 x i1> %35, i64 6
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = or i64 %29, 6
  %69 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %68
  store i8 32, ptr %69, align 2, !tbaa !22
  br label %70

70:                                               ; preds = %67, %65
  %71 = extractelement <16 x i1> %35, i64 7
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = or i64 %29, 7
  %74 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %73
  store i8 32, ptr %74, align 1, !tbaa !22
  br label %75

75:                                               ; preds = %72, %70
  %76 = extractelement <16 x i1> %35, i64 8
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = or i64 %29, 8
  %79 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %78
  store i8 32, ptr %79, align 8, !tbaa !22
  br label %80

80:                                               ; preds = %77, %75
  %81 = extractelement <16 x i1> %35, i64 9
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = or i64 %29, 9
  %84 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %83
  store i8 32, ptr %84, align 1, !tbaa !22
  br label %85

85:                                               ; preds = %82, %80
  %86 = extractelement <16 x i1> %35, i64 10
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = or i64 %29, 10
  %89 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %88
  store i8 32, ptr %89, align 2, !tbaa !22
  br label %90

90:                                               ; preds = %87, %85
  %91 = extractelement <16 x i1> %35, i64 11
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = or i64 %29, 11
  %94 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %93
  store i8 32, ptr %94, align 1, !tbaa !22
  br label %95

95:                                               ; preds = %92, %90
  %96 = extractelement <16 x i1> %35, i64 12
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = or i64 %29, 12
  %99 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %98
  store i8 32, ptr %99, align 4, !tbaa !22
  br label %100

100:                                              ; preds = %97, %95
  %101 = extractelement <16 x i1> %35, i64 13
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = or i64 %29, 13
  %104 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %103
  store i8 32, ptr %104, align 1, !tbaa !22
  br label %105

105:                                              ; preds = %102, %100
  %106 = extractelement <16 x i1> %35, i64 14
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = or i64 %29, 14
  %109 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %108
  store i8 32, ptr %109, align 2, !tbaa !22
  br label %110

110:                                              ; preds = %107, %105
  %111 = extractelement <16 x i1> %35, i64 15
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = or i64 %29, 15
  %114 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %113
  store i8 32, ptr %114, align 1, !tbaa !22
  br label %115

115:                                              ; preds = %112, %110
  %116 = extractelement <16 x i1> %36, i64 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %115
  %118 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %30
  store i8 32, ptr %118, align 16, !tbaa !22
  br label %119

119:                                              ; preds = %117, %115
  %120 = extractelement <16 x i1> %36, i64 1
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = or i64 %29, 17
  %123 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %122
  store i8 32, ptr %123, align 1, !tbaa !22
  br label %124

124:                                              ; preds = %121, %119
  %125 = extractelement <16 x i1> %36, i64 2
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = or i64 %29, 18
  %128 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %127
  store i8 32, ptr %128, align 2, !tbaa !22
  br label %129

129:                                              ; preds = %126, %124
  %130 = extractelement <16 x i1> %36, i64 3
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = or i64 %29, 19
  %133 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %132
  store i8 32, ptr %133, align 1, !tbaa !22
  br label %134

134:                                              ; preds = %131, %129
  %135 = extractelement <16 x i1> %36, i64 4
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = or i64 %29, 20
  %138 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %137
  store i8 32, ptr %138, align 4, !tbaa !22
  br label %139

139:                                              ; preds = %136, %134
  %140 = extractelement <16 x i1> %36, i64 5
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = or i64 %29, 21
  %143 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %142
  store i8 32, ptr %143, align 1, !tbaa !22
  br label %144

144:                                              ; preds = %141, %139
  %145 = extractelement <16 x i1> %36, i64 6
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = or i64 %29, 22
  %148 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %147
  store i8 32, ptr %148, align 2, !tbaa !22
  br label %149

149:                                              ; preds = %146, %144
  %150 = extractelement <16 x i1> %36, i64 7
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %152 = or i64 %29, 23
  %153 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %152
  store i8 32, ptr %153, align 1, !tbaa !22
  br label %154

154:                                              ; preds = %151, %149
  %155 = extractelement <16 x i1> %36, i64 8
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = or i64 %29, 24
  %158 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %157
  store i8 32, ptr %158, align 8, !tbaa !22
  br label %159

159:                                              ; preds = %156, %154
  %160 = extractelement <16 x i1> %36, i64 9
  br i1 %160, label %161, label %164

161:                                              ; preds = %159
  %162 = or i64 %29, 25
  %163 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %162
  store i8 32, ptr %163, align 1, !tbaa !22
  br label %164

164:                                              ; preds = %161, %159
  %165 = extractelement <16 x i1> %36, i64 10
  br i1 %165, label %166, label %169

166:                                              ; preds = %164
  %167 = or i64 %29, 26
  %168 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %167
  store i8 32, ptr %168, align 2, !tbaa !22
  br label %169

169:                                              ; preds = %166, %164
  %170 = extractelement <16 x i1> %36, i64 11
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = or i64 %29, 27
  %173 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %172
  store i8 32, ptr %173, align 1, !tbaa !22
  br label %174

174:                                              ; preds = %171, %169
  %175 = extractelement <16 x i1> %36, i64 12
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = or i64 %29, 28
  %178 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %177
  store i8 32, ptr %178, align 4, !tbaa !22
  br label %179

179:                                              ; preds = %176, %174
  %180 = extractelement <16 x i1> %36, i64 13
  br i1 %180, label %181, label %184

181:                                              ; preds = %179
  %182 = or i64 %29, 29
  %183 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %182
  store i8 32, ptr %183, align 1, !tbaa !22
  br label %184

184:                                              ; preds = %181, %179
  %185 = extractelement <16 x i1> %36, i64 14
  br i1 %185, label %186, label %189

186:                                              ; preds = %184
  %187 = or i64 %29, 30
  %188 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %187
  store i8 32, ptr %188, align 2, !tbaa !22
  br label %189

189:                                              ; preds = %186, %184
  %190 = extractelement <16 x i1> %36, i64 15
  br i1 %190, label %191, label %194

191:                                              ; preds = %189
  %192 = or i64 %29, 31
  %193 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %192
  store i8 32, ptr %193, align 1, !tbaa !22
  br label %194

194:                                              ; preds = %191, %189
  %195 = add nuw i64 %29, 32
  %196 = icmp eq i64 %195, %27
  br i1 %196, label %197, label %28, !llvm.loop !33

197:                                              ; preds = %194
  %198 = icmp eq i64 %13, %27
  br i1 %198, label %264, label %199

199:                                              ; preds = %197
  %200 = and i64 %13, 24
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %253, label %202

202:                                              ; preds = %199, %24
  %203 = phi i64 [ %27, %199 ], [ 0, %24 ]
  %204 = and i64 %13, -8
  br label %205

205:                                              ; preds = %248, %202
  %206 = phi i64 [ %203, %202 ], [ %249, %248 ]
  %207 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %206
  %208 = load <8 x i8>, ptr %207, align 8, !tbaa !22
  %209 = icmp eq <8 x i8> %208, <i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10>
  %210 = extractelement <8 x i1> %209, i64 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %206
  store i8 32, ptr %212, align 8, !tbaa !22
  br label %213

213:                                              ; preds = %211, %205
  %214 = extractelement <8 x i1> %209, i64 1
  br i1 %214, label %215, label %218

215:                                              ; preds = %213
  %216 = or i64 %206, 1
  %217 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %216
  store i8 32, ptr %217, align 1, !tbaa !22
  br label %218

218:                                              ; preds = %215, %213
  %219 = extractelement <8 x i1> %209, i64 2
  br i1 %219, label %220, label %223

220:                                              ; preds = %218
  %221 = or i64 %206, 2
  %222 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %221
  store i8 32, ptr %222, align 2, !tbaa !22
  br label %223

223:                                              ; preds = %220, %218
  %224 = extractelement <8 x i1> %209, i64 3
  br i1 %224, label %225, label %228

225:                                              ; preds = %223
  %226 = or i64 %206, 3
  %227 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %226
  store i8 32, ptr %227, align 1, !tbaa !22
  br label %228

228:                                              ; preds = %225, %223
  %229 = extractelement <8 x i1> %209, i64 4
  br i1 %229, label %230, label %233

230:                                              ; preds = %228
  %231 = or i64 %206, 4
  %232 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %231
  store i8 32, ptr %232, align 4, !tbaa !22
  br label %233

233:                                              ; preds = %230, %228
  %234 = extractelement <8 x i1> %209, i64 5
  br i1 %234, label %235, label %238

235:                                              ; preds = %233
  %236 = or i64 %206, 5
  %237 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %236
  store i8 32, ptr %237, align 1, !tbaa !22
  br label %238

238:                                              ; preds = %235, %233
  %239 = extractelement <8 x i1> %209, i64 6
  br i1 %239, label %240, label %243

240:                                              ; preds = %238
  %241 = or i64 %206, 6
  %242 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %241
  store i8 32, ptr %242, align 2, !tbaa !22
  br label %243

243:                                              ; preds = %240, %238
  %244 = extractelement <8 x i1> %209, i64 7
  br i1 %244, label %245, label %248

245:                                              ; preds = %243
  %246 = or i64 %206, 7
  %247 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %246
  store i8 32, ptr %247, align 1, !tbaa !22
  br label %248

248:                                              ; preds = %245, %243
  %249 = add nuw i64 %206, 8
  %250 = icmp eq i64 %249, %204
  br i1 %250, label %251, label %205, !llvm.loop !35

251:                                              ; preds = %248
  %252 = icmp eq i64 %13, %204
  br i1 %252, label %264, label %253

253:                                              ; preds = %251, %199, %21
  %254 = phi i64 [ 0, %21 ], [ %27, %199 ], [ %204, %251 ]
  br label %255

255:                                              ; preds = %261, %253
  %256 = phi i64 [ %262, %261 ], [ %254, %253 ]
  %257 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !22
  %259 = icmp eq i8 %258, 10
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  store i8 32, ptr %257, align 1, !tbaa !22
  br label %261

261:                                              ; preds = %260, %255
  %262 = add nuw nsw i64 %256, 1
  %263 = icmp eq i64 %262, %13
  br i1 %263, label %264, label %255, !llvm.loop !37

264:                                              ; preds = %261, %251, %197, %15
  %265 = tail call i32 @pclose(ptr noundef nonnull %5)
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  tail call void @perror(ptr noundef %4) #20
  tail call void @exit(i32 noundef 1) #18
  unreachable

268:                                              ; preds = %264
  %269 = call ptr @xstrdup(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #16
  ret ptr %269
}

; Function Attrs: nounwind uwtable
define internal ptr @do_warning_if(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !21
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(2) @.str.20) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !21
  %8 = load ptr, ptr @current_file, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.file, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = load i32, ptr @yylineno, align 4, !tbaa !28
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.25, ptr noundef %10, i32 noundef %11, ptr noundef %13) #20
  br label %15

15:                                               ; preds = %6, %2
  %16 = tail call ptr @xstrdup(ptr noundef nonnull @.str.9) #16
  ret ptr %16
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { cold }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"list_head", !7, i64 0, !7, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 16}
!11 = !{!"env", !7, i64 0, !7, i64 8, !6, i64 16}
!12 = !{!11, !7, i64 0}
!13 = !{!11, !7, i64 8}
!14 = !{!6, !7, i64 8}
!15 = !{!16, !7, i64 0}
!16 = !{!"variable", !7, i64 0, !7, i64 8, !8, i64 16, !17, i64 20, !6, i64 24}
!17 = !{!"int", !8, i64 0}
!18 = !{!16, !7, i64 8}
!19 = !{!16, !17, i64 20}
!20 = !{!16, !8, i64 16}
!21 = !{!7, !7, i64 0}
!22 = !{!8, !8, i64 0}
!23 = !{ptr @is_end_of_str, ptr @is_end_of_token}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !8, i64 0}
!26 = !{!27, !7, i64 16}
!27 = !{!"file", !7, i64 0, !7, i64 8, !7, i64 16, !17, i64 24}
!28 = !{!17, !17, i64 0}
!29 = !{!30, !17, i64 8}
!30 = !{!"function", !7, i64 0, !17, i64 8, !17, i64 12, !7, i64 16}
!31 = !{!30, !17, i64 12}
!32 = !{!30, !7, i64 16}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = distinct !{!35, !34, !36}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !36, !34}
