; ModuleID = '/llk/IR/scripts/kconfig/menu.c_pt.bc'
source_filename = "../scripts/kconfig/menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.file = type { ptr, ptr, ptr, i32 }
%struct.property = type { ptr, i32, ptr, %struct.expr_value, ptr, ptr, ptr, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }
%struct.gstr = type { i64, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.jump_key = type { %struct.list_head, i64, ptr, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s:%d:warning: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rootmenu = dso_local global %struct.menu zeroinitializer, align 8
@current_menu = external local_unnamed_addr global ptr, align 8
@current_entry = external local_unnamed_addr global ptr, align 8
@last_entry_ptr = internal unnamed_addr global ptr null, align 8
@current_file = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"ignoring type redefinition of '%s' from '%s' to '%s'\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"leading whitespace ignored\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"prompt redefined\00", align 1
@symbol_no = external global %struct.symbol, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"choice value must have a prompt\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"defaults for choice values not supported\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"choice value used outside its choice group\00", align 1
@symbol_yes = external global %struct.symbol, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"config symbol defined without type\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"choice must have a prompt\00", align 1
@symbol_mod = external global %struct.symbol, align 8
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"No matches found.\0A\00", align 1
@nohelp_text = internal constant [44 x i8] c"There is no help available for this option.\00", align 16
@.str.13 = private unnamed_addr constant [8 x i8] c"%s%s:\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@file_list = dso_local local_unnamed_addr global ptr null, align 8
@modules_sym = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [55 x i8] c"default for config symbol '%s' must be a single symbol\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"'%s': number is invalid\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"choice default symbol '%s' is not contained in the choice\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"imply\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"config symbol '%s' uses %s, but is not bool or tristate\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"'%s' has wrong type. '%s' only accept arguments of bool and tristate type\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"range is only allowed for int or hex symbols\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"range is invalid\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Symbol: %s [=%s]\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Type  : %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Range : \00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"  Depends on: \00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Selects: \00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Selected by [y]:\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Selected by [m]:\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Selected by [n]:\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Implies: \00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Implied by [y]:\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"Implied by [m]:\0A\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Implied by [n]:\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Defined at %s:%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"  Prompt: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"  Visible if: \00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"  Location:\0A\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"%*cMain menu\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"%*c-> %s\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c" (%s [=%s])\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"CONFIG_\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @menu_warn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.file, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef %8, i32 noundef %10) #18
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %13 = call i32 @vfprintf(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %3) #18
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = call i32 @fputc(i32 10, ptr %14)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @_menu_init() local_unnamed_addr #4 {
  store ptr @rootmenu, ptr @current_menu, align 8, !tbaa !5
  store ptr @rootmenu, ptr @current_entry, align 8, !tbaa !5
  store ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 2), ptr @last_entry_ptr, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @menu_add_entry(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @xmalloc(i64 noundef 96) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %3 = getelementptr inbounds %struct.menu, ptr %2, i64 0, i32 3
  store ptr %0, ptr %3, align 8, !tbaa !15
  %4 = load ptr, ptr @current_menu, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.menu, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !16
  %6 = load ptr, ptr @current_file, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.menu, ptr %2, i64 0, i32 9
  store ptr %6, ptr %7, align 8, !tbaa !9
  %8 = tail call i32 @zconf_lineno() #17
  %9 = getelementptr inbounds %struct.menu, ptr %2, i64 0, i32 10
  store i32 %8, ptr %9, align 8, !tbaa !14
  %10 = load ptr, ptr @last_entry_ptr, align 8, !tbaa !5
  store ptr %2, ptr %10, align 8, !tbaa !5
  store ptr %2, ptr @last_entry_ptr, align 8, !tbaa !5
  store ptr %2, ptr @current_entry, align 8, !tbaa !5
  %11 = icmp eq ptr %0, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %1
  %13 = tail call ptr @expr_alloc_symbol(ptr noundef nonnull %0) #17
  %14 = tail call ptr @xmalloc(i64 noundef 72) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %14, i8 0, i64 72, i1 false) #17
  %15 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 1
  store i32 9, ptr %15, align 8, !tbaa !17
  %16 = load ptr, ptr @current_file, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 6
  store ptr %16, ptr %17, align 8, !tbaa !20
  %18 = tail call i32 @zconf_lineno() #17
  %19 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 7
  store i32 %18, ptr %19, align 8, !tbaa !21
  %20 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 4
  store ptr %13, ptr %22, align 8, !tbaa !23
  %23 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 3
  store ptr null, ptr %23, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.menu, ptr %20, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.symbol, ptr %25, i64 0, i32 7
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %28, %27 ], [ %31, %29 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29

33:                                               ; preds = %29
  store ptr %14, ptr %30, align 8, !tbaa !5
  br label %34

34:                                               ; preds = %33, %12, %1
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @zconf_lineno() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @menu_add_symbol(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = tail call ptr @expr_alloc_symbol(ptr noundef %1) #17
  %5 = tail call ptr @xmalloc(i64 noundef 72) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 72, i1 false) #17
  %6 = getelementptr inbounds %struct.property, ptr %5, i64 0, i32 1
  store i32 %0, ptr %6, align 8, !tbaa !17
  %7 = load ptr, ptr @current_file, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.property, ptr %5, i64 0, i32 6
  store ptr %7, ptr %8, align 8, !tbaa !20
  %9 = tail call i32 @zconf_lineno() #17
  %10 = getelementptr inbounds %struct.property, ptr %5, i64 0, i32 7
  store i32 %9, ptr %10, align 8, !tbaa !21
  %11 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.property, ptr %5, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.property, ptr %5, i64 0, i32 4
  store ptr %4, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.property, ptr %5, i64 0, i32 3
  store ptr %2, ptr %14, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.menu, ptr %11, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.symbol, ptr %16, i64 0, i32 7
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %19, %18 ], [ %22, %20 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %20

24:                                               ; preds = %20
  store ptr %5, ptr %21, align 8, !tbaa !5
  br label %25

25:                                               ; preds = %24, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local ptr @menu_add_menu() local_unnamed_addr #8 {
  %1 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.menu, ptr %1, i64 0, i32 2
  store ptr %2, ptr @last_entry_ptr, align 8, !tbaa !5
  store ptr %1, ptr @current_menu, align 8, !tbaa !5
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @menu_end_menu() local_unnamed_addr #8 {
  %1 = load ptr, ptr @current_menu, align 8, !tbaa !5
  store ptr %1, ptr @last_entry_ptr, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.menu, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  store ptr %3, ptr @current_menu, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @menu_add_dep(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.menu, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = tail call ptr @expr_alloc_and(ptr noundef %4, ptr noundef %0) #17
  %6 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.menu, ptr %6, i64 0, i32 6
  store ptr %5, ptr %7, align 8, !tbaa !25
  ret void
}

declare ptr @expr_alloc_and(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @menu_set_type(i32 noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.menu, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !26
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  store i32 %0, ptr %5, align 8, !tbaa !26
  br label %18

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str.3, ptr %13
  %16 = tail call ptr @sym_type_name(i32 noundef %6) #17
  %17 = tail call ptr @sym_type_name(i32 noundef %0) #17
  tail call void (ptr, ptr, ...) @menu_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull %15, ptr noundef %16, ptr noundef %17)
  br label %18

18:                                               ; preds = %11, %10, %1
  ret void
}

declare ptr @sym_type_name(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @menu_add_prompt(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = tail call ptr @xmalloc(i64 noundef 72) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false) #17
  %5 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 1
  store i32 %0, ptr %5, align 8, !tbaa !17
  %6 = load ptr, ptr @current_file, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !20
  %8 = tail call i32 @zconf_lineno() #17
  %9 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 7
  store i32 %8, ptr %9, align 8, !tbaa !21
  %10 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 3
  store ptr %2, ptr %13, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.menu, ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 7
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi ptr [ %18, %17 ], [ %21, %19 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %19

23:                                               ; preds = %19
  store ptr %4, ptr %20, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %23, %3
  %25 = tail call ptr @__ctype_b_loc() #19
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = load i8, ptr %1, align 1, !tbaa !30
  %28 = sext i8 %27 to i64
  %29 = getelementptr inbounds i16, ptr %26, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !31
  %31 = and i16 %30, 8192
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @prop_warn(ptr noundef %4, ptr noundef nonnull @.str.4)
  %34 = load ptr, ptr %25, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %1, %33 ], [ %43, %35 ]
  %37 = load i8, ptr %36, align 1, !tbaa !30
  %38 = sext i8 %37 to i64
  %39 = getelementptr inbounds i16, ptr %34, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !31
  %41 = and i16 %40, 8192
  %42 = icmp eq i16 %41, 0
  %43 = getelementptr inbounds i8, ptr %36, i64 1
  br i1 %42, label %44, label %35

44:                                               ; preds = %35, %24
  %45 = phi ptr [ %1, %24 ], [ %36, %35 ]
  %46 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.menu, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !33
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @prop_warn(ptr noundef %4, ptr noundef nonnull @.str.5)
  br label %51

51:                                               ; preds = %50, %44
  %52 = icmp eq i32 %0, 1
  br i1 %52, label %53, label %71

53:                                               ; preds = %51
  %54 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.menu, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %71, label %58

58:                                               ; preds = %67, %53
  %59 = phi ptr [ %69, %67 ], [ %56, %53 ]
  %60 = getelementptr inbounds %struct.menu, ptr %59, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = tail call ptr @expr_copy(ptr noundef nonnull %61) #17
  %65 = load ptr, ptr %13, align 8, !tbaa !24
  %66 = tail call ptr @expr_alloc_and(ptr noundef %65, ptr noundef %64) #17
  store ptr %66, ptr %13, align 8, !tbaa !24
  br label %67

67:                                               ; preds = %63, %58
  %68 = getelementptr inbounds %struct.menu, ptr %59, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %58

71:                                               ; preds = %67, %53, %51
  %72 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %73 = getelementptr inbounds %struct.menu, ptr %72, i64 0, i32 4
  store ptr %4, ptr %73, align 8, !tbaa !33
  %74 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 2
  store ptr %45, ptr %74, align 8, !tbaa !35
  ret ptr %4
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define internal void @prop_warn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ...) unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.file, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !21
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef %8, i32 noundef %10) #18
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %13 = call i32 @vfprintf(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %3) #18
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = call i32 @fputc(i32 10, ptr %14)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

declare ptr @expr_copy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @menu_add_visibility(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.menu, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @expr_alloc_and(ptr noundef %4, ptr noundef %0) #17
  %6 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.menu, ptr %6, i64 0, i32 5
  store ptr %5, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @menu_add_expr(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = tail call ptr @xmalloc(i64 noundef 72) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false) #17
  %5 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 1
  store i32 %0, ptr %5, align 8, !tbaa !17
  %6 = load ptr, ptr @current_file, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !20
  %8 = tail call i32 @zconf_lineno() #17
  %9 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 7
  store i32 %8, ptr %9, align 8, !tbaa !21
  %10 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 4
  store ptr %1, ptr %12, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 3
  store ptr %2, ptr %13, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.menu, ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 7
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi ptr [ %18, %17 ], [ %21, %19 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %19

23:                                               ; preds = %19
  store ptr %4, ptr %20, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %23, %3
  ret void
}

declare ptr @expr_alloc_symbol(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @menu_finalize(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %5, null
  br i1 %8, label %138, label %10

10:                                               ; preds = %1
  br i1 %9, label %51, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !36
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %51, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !26
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  store ptr %0, ptr @current_entry, align 8, !tbaa !5
  br label %21

21:                                               ; preds = %31, %20
  %22 = phi ptr [ %32, %31 ], [ %7, %20 ]
  %23 = getelementptr inbounds %struct.menu, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 %28, ptr %17, align 8, !tbaa !26
  br label %34

31:                                               ; preds = %26, %21
  %32 = load ptr, ptr %22, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %21

34:                                               ; preds = %31, %30, %16
  br label %35

35:                                               ; preds = %48, %34
  %36 = phi ptr [ %49, %48 ], [ %7, %34 ]
  store ptr %36, ptr @current_entry, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.menu, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.symbol, ptr %38, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !26
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, ptr %17, align 8, !tbaa !26
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 %45, ptr %41, align 8, !tbaa !26
  br label %48

48:                                               ; preds = %47, %44, %40, %35
  %49 = load ptr, ptr %36, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %35

51:                                               ; preds = %11, %10
  %52 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !25
  br label %58

54:                                               ; preds = %48
  %55 = tail call ptr @expr_alloc_symbol(ptr noundef nonnull %5) #17
  %56 = load ptr, ptr %6, align 8, !tbaa !5
  %57 = icmp eq ptr %56, null
  br i1 %57, label %123, label %58

58:                                               ; preds = %54, %51
  %59 = phi ptr [ %53, %51 ], [ %55, %54 ]
  %60 = phi ptr [ %7, %51 ], [ %56, %54 ]
  br label %64

61:                                               ; preds = %120, %64
  %62 = load ptr, ptr %65, align 8, !tbaa !5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %123, label %64

64:                                               ; preds = %61, %58
  %65 = phi ptr [ %62, %61 ], [ %60, %58 ]
  %66 = getelementptr inbounds %struct.menu, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !25
  %68 = tail call fastcc ptr @rewrite_m(ptr noundef %67)
  %69 = tail call ptr @expr_transform(ptr noundef %68) #17
  %70 = tail call ptr @expr_copy(ptr noundef %59) #17
  %71 = tail call ptr @expr_alloc_and(ptr noundef %70, ptr noundef %69) #17
  %72 = tail call ptr @expr_eliminate_dups(ptr noundef %71) #17
  store ptr %72, ptr %66, align 8, !tbaa !25
  %73 = getelementptr inbounds %struct.menu, ptr %65, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !15
  %75 = icmp eq ptr %74, null
  %76 = getelementptr inbounds %struct.symbol, ptr %74, i64 0, i32 7
  %77 = getelementptr inbounds %struct.menu, ptr %65, i64 0, i32 4
  %78 = select i1 %75, ptr %77, ptr %76
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = icmp eq ptr %79, null
  br i1 %80, label %61, label %81

81:                                               ; preds = %120, %64
  %82 = phi ptr [ %121, %120 ], [ %79, %64 ]
  %83 = getelementptr inbounds %struct.property, ptr %82, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !22
  %85 = icmp eq ptr %84, %65
  br i1 %85, label %86, label %120

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.property, ptr %82, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !24
  %89 = tail call fastcc ptr @rewrite_m(ptr noundef %88)
  %90 = tail call ptr @expr_transform(ptr noundef %89) #17
  %91 = tail call ptr @expr_copy(ptr noundef %72) #17
  %92 = tail call ptr @expr_alloc_and(ptr noundef %91, ptr noundef %90) #17
  %93 = tail call ptr @expr_eliminate_dups(ptr noundef %92) #17
  store ptr %93, ptr %2, align 8, !tbaa !5
  %94 = load ptr, ptr %73, align 8, !tbaa !15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.symbol, ptr %94, i64 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !26
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = tail call ptr @expr_trans_bool(ptr noundef %93) #17
  store ptr %101, ptr %2, align 8, !tbaa !5
  br label %102

102:                                              ; preds = %100, %96, %86
  %103 = phi ptr [ %101, %100 ], [ %93, %96 ], [ %93, %86 ]
  store ptr %103, ptr %87, align 8, !tbaa !24
  %104 = getelementptr inbounds %struct.property, ptr %82, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !17
  switch i32 %105, label %120 [
    i32 6, label %106
    i32 7, label %109
  ]

106:                                              ; preds = %102
  %107 = tail call ptr @prop_get_symbol(ptr noundef nonnull %82) #17
  %108 = getelementptr inbounds %struct.symbol, ptr %107, i64 0, i32 9
  br label %112

109:                                              ; preds = %102
  %110 = tail call ptr @prop_get_symbol(ptr noundef nonnull %82) #17
  %111 = getelementptr inbounds %struct.symbol, ptr %110, i64 0, i32 10
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi ptr [ %108, %106 ], [ %111, %109 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  %115 = load ptr, ptr %73, align 8, !tbaa !15
  %116 = tail call ptr @expr_alloc_symbol(ptr noundef %115) #17
  %117 = tail call ptr @expr_copy(ptr noundef %103) #17
  %118 = tail call ptr @expr_alloc_and(ptr noundef %116, ptr noundef %117) #17
  %119 = tail call ptr @expr_alloc_or(ptr noundef %114, ptr noundef %118) #17
  store ptr %119, ptr %113, align 8, !tbaa !5
  br label %120

120:                                              ; preds = %112, %102, %81
  %121 = load ptr, ptr %82, align 8, !tbaa !5
  %122 = icmp eq ptr %121, null
  br i1 %122, label %61, label %81

123:                                              ; preds = %61, %54
  %124 = phi ptr [ %55, %54 ], [ %59, %61 ]
  br i1 %9, label %131, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 6
  %127 = load i32, ptr %126, align 4, !tbaa !36
  %128 = and i32 %127, 16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  tail call void @expr_free(ptr noundef %124) #17
  br label %131

131:                                              ; preds = %130, %125, %123
  %132 = load ptr, ptr %6, align 8, !tbaa !5
  %133 = icmp eq ptr %132, null
  br i1 %133, label %350, label %134

134:                                              ; preds = %134, %131
  %135 = phi ptr [ %136, %134 ], [ %132, %131 ]
  tail call void @menu_finalize(ptr noundef nonnull %135)
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  %137 = icmp eq ptr %136, null
  br i1 %137, label %204, label %134

138:                                              ; preds = %1
  br i1 %9, label %492, label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !33
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.property, ptr %141, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !24
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi ptr [ %145, %143 ], [ null, %139 ]
  %148 = tail call ptr @expr_trans_compare(ptr noundef %147, i32 noundef 5, ptr noundef nonnull @symbol_no) #17
  %149 = tail call ptr @expr_transform(ptr noundef %148) #17
  %150 = tail call ptr @expr_eliminate_dups(ptr noundef %149) #17
  %151 = load ptr, ptr %0, align 8, !tbaa !37
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  call void @expr_free(ptr noundef %150) #17
  br label %198

154:                                              ; preds = %187, %146
  %155 = phi ptr [ %189, %187 ], [ %151, %146 ]
  %156 = phi ptr [ %155, %187 ], [ null, %146 ]
  %157 = getelementptr inbounds %struct.menu, ptr %155, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !33
  %159 = icmp eq ptr %158, null
  %160 = getelementptr inbounds %struct.property, ptr %158, i64 0, i32 3
  %161 = getelementptr inbounds %struct.menu, ptr %155, i64 0, i32 6
  %162 = select i1 %159, ptr %161, ptr %160
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  store ptr %163, ptr %2, align 8, !tbaa !5
  %164 = call i32 @expr_contains_symbol(ptr noundef %163, ptr noundef %5) #17
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %192, label %166

166:                                              ; preds = %154
  %167 = load ptr, ptr %2, align 8, !tbaa !5
  %168 = call zeroext i1 @expr_depends_symbol(ptr noundef %167, ptr noundef %5) #17
  br i1 %168, label %187, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr %2, align 8, !tbaa !5
  %171 = call ptr @expr_trans_compare(ptr noundef %170, i32 noundef 5, ptr noundef nonnull @symbol_no) #17
  store ptr %171, ptr %2, align 8, !tbaa !5
  %172 = call ptr @expr_transform(ptr noundef %171) #17
  %173 = call ptr @expr_eliminate_dups(ptr noundef %172) #17
  store ptr %173, ptr %2, align 8, !tbaa !5
  %174 = call ptr @expr_copy(ptr noundef %150) #17
  store ptr %174, ptr %3, align 8, !tbaa !5
  call void @expr_eliminate_eq(ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %175 = load ptr, ptr %2, align 8, !tbaa !5
  call void @expr_free(ptr noundef %175) #17
  %176 = load ptr, ptr %3, align 8, !tbaa !5
  %177 = icmp eq ptr %176, null
  br i1 %177, label %186, label %178

178:                                              ; preds = %169
  %179 = load i32, ptr %176, align 8, !tbaa !38
  %180 = icmp eq i32 %179, 11
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.expr, ptr %176, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !30
  %184 = icmp eq ptr %183, @symbol_yes
  br i1 %184, label %186, label %185

185:                                              ; preds = %181, %178
  call void @expr_free(ptr noundef nonnull %176) #17
  br label %192

186:                                              ; preds = %181, %169
  call void @expr_free(ptr noundef %176) #17
  br label %187

187:                                              ; preds = %186, %166
  call void @menu_finalize(ptr noundef nonnull %155)
  %188 = getelementptr inbounds %struct.menu, ptr %155, i64 0, i32 1
  store ptr %0, ptr %188, align 8, !tbaa !16
  %189 = load ptr, ptr %155, align 8, !tbaa !37
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %154

191:                                              ; preds = %187
  call void @expr_free(ptr noundef %150) #17
  br label %194

192:                                              ; preds = %185, %154
  call void @expr_free(ptr noundef %150) #17
  %193 = icmp eq ptr %156, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %192, %191
  %195 = phi ptr [ %155, %191 ], [ %156, %192 ]
  %196 = load ptr, ptr %0, align 8, !tbaa !37
  store ptr %196, ptr %6, align 8, !tbaa !40
  %197 = load ptr, ptr %195, align 8, !tbaa !37
  store ptr %197, ptr %0, align 8, !tbaa !37
  store ptr null, ptr %195, align 8, !tbaa !37
  br label %198

198:                                              ; preds = %194, %192, %153
  %199 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 8
  %200 = load ptr, ptr %199, align 8, !tbaa !41
  %201 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 6
  %202 = load ptr, ptr %201, align 8, !tbaa !25
  %203 = call ptr @expr_alloc_or(ptr noundef %200, ptr noundef %202) #17
  store ptr %203, ptr %199, align 8, !tbaa !41
  br label %204

204:                                              ; preds = %198, %134
  %205 = load ptr, ptr %6, align 8, !tbaa !5
  %206 = icmp eq ptr %205, null
  br i1 %206, label %350, label %207

207:                                              ; preds = %204
  %208 = icmp eq ptr %5, null
  %209 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 6
  %210 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 2
  br label %211

211:                                              ; preds = %347, %207
  %212 = phi ptr [ %205, %207 ], [ %348, %347 ]
  br i1 %208, label %325, label %213

213:                                              ; preds = %211
  %214 = load i32, ptr %209, align 4, !tbaa !36
  %215 = and i32 %214, 16
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %325, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.menu, ptr %212, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !15
  %220 = icmp eq ptr %219, null
  br i1 %220, label %325, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.symbol, ptr %219, i64 0, i32 6
  %223 = load i32, ptr %222, align 4, !tbaa !36
  %224 = and i32 %223, 32
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %325

226:                                              ; preds = %221
  store ptr %212, ptr @current_entry, align 8, !tbaa !5
  %227 = or i32 %223, 32
  store i32 %227, ptr %222, align 4, !tbaa !36
  %228 = getelementptr inbounds %struct.menu, ptr %212, i64 0, i32 4
  %229 = load ptr, ptr %228, align 8, !tbaa !33
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  call void (ptr, ptr, ...) @menu_warn(ptr noundef nonnull %212, ptr noundef nonnull @.str.6)
  %232 = load ptr, ptr %218, align 8, !tbaa !15
  br label %233

233:                                              ; preds = %231, %226
  %234 = phi ptr [ %232, %231 ], [ %219, %226 ]
  %235 = getelementptr inbounds %struct.symbol, ptr %234, i64 0, i32 7
  %236 = load ptr, ptr %235, align 8, !tbaa !5
  %237 = icmp eq ptr %236, null
  br i1 %237, label %261, label %238

238:                                              ; preds = %258, %233
  %239 = phi ptr [ %259, %258 ], [ %236, %233 ]
  %240 = getelementptr inbounds %struct.property, ptr %239, i64 0, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !17
  %242 = icmp eq i32 %241, 4
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %239, ptr noundef nonnull @.str.7)
  br label %244

244:                                              ; preds = %243, %238
  %245 = getelementptr inbounds %struct.property, ptr %239, i64 0, i32 5
  %246 = load ptr, ptr %245, align 8, !tbaa !22
  %247 = icmp eq ptr %246, %212
  br i1 %247, label %258, label %248

248:                                              ; preds = %244
  %249 = load i32, ptr %240, align 8, !tbaa !17
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.menu, ptr %246, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !16
  %254 = getelementptr inbounds %struct.menu, ptr %253, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !15
  %256 = icmp eq ptr %255, %5
  br i1 %256, label %258, label %257

257:                                              ; preds = %251
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %239, ptr noundef nonnull @.str.8)
  br label %258

258:                                              ; preds = %257, %251, %248, %244
  %259 = load ptr, ptr %239, align 8, !tbaa !5
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %238

261:                                              ; preds = %258, %233
  %262 = load i32, ptr %210, align 8, !tbaa !26
  %263 = icmp eq i32 %262, 2
  br i1 %263, label %264, label %291

264:                                              ; preds = %261
  %265 = load ptr, ptr %218, align 8, !tbaa !15
  %266 = getelementptr inbounds %struct.symbol, ptr %265, i64 0, i32 2
  %267 = load i32, ptr %266, align 8, !tbaa !26
  %268 = icmp eq i32 %267, 2
  br i1 %268, label %291, label %269

269:                                              ; preds = %264
  %270 = call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef nonnull %5, ptr noundef nonnull @symbol_yes) #17
  %271 = getelementptr inbounds %struct.menu, ptr %212, i64 0, i32 6
  %272 = load ptr, ptr %271, align 8, !tbaa !25
  %273 = call ptr @expr_alloc_and(ptr noundef %270, ptr noundef %272) #17
  store ptr %273, ptr %271, align 8, !tbaa !25
  %274 = load ptr, ptr %218, align 8, !tbaa !15
  %275 = getelementptr inbounds %struct.symbol, ptr %274, i64 0, i32 7
  %276 = load ptr, ptr %275, align 8, !tbaa !5
  %277 = icmp eq ptr %276, null
  br i1 %277, label %291, label %278

278:                                              ; preds = %288, %269
  %279 = phi ptr [ %289, %288 ], [ %276, %269 ]
  %280 = getelementptr inbounds %struct.property, ptr %279, i64 0, i32 5
  %281 = load ptr, ptr %280, align 8, !tbaa !22
  %282 = icmp eq ptr %281, %212
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = call ptr @expr_copy(ptr noundef %270) #17
  %285 = getelementptr inbounds %struct.property, ptr %279, i64 0, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !24
  %287 = call ptr @expr_alloc_and(ptr noundef %284, ptr noundef %286) #17
  store ptr %287, ptr %285, align 8, !tbaa !24
  br label %288

288:                                              ; preds = %283, %278
  %289 = load ptr, ptr %279, align 8, !tbaa !5
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %278

291:                                              ; preds = %288, %269, %264, %261
  %292 = call ptr @expr_alloc_symbol(ptr noundef %5) #17
  %293 = call ptr @xmalloc(i64 noundef 72) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %293, i8 0, i64 72, i1 false) #17
  %294 = getelementptr inbounds %struct.property, ptr %293, i64 0, i32 1
  store i32 5, ptr %294, align 8, !tbaa !17
  %295 = load ptr, ptr @current_file, align 8, !tbaa !5
  %296 = getelementptr inbounds %struct.property, ptr %293, i64 0, i32 6
  store ptr %295, ptr %296, align 8, !tbaa !20
  %297 = call i32 @zconf_lineno() #17
  %298 = getelementptr inbounds %struct.property, ptr %293, i64 0, i32 7
  store i32 %297, ptr %298, align 8, !tbaa !21
  %299 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %300 = getelementptr inbounds %struct.property, ptr %293, i64 0, i32 5
  store ptr %299, ptr %300, align 8, !tbaa !22
  %301 = getelementptr inbounds %struct.property, ptr %293, i64 0, i32 4
  store ptr %292, ptr %301, align 8, !tbaa !23
  %302 = getelementptr inbounds %struct.property, ptr %293, i64 0, i32 3
  store ptr null, ptr %302, align 8, !tbaa !24
  %303 = getelementptr inbounds %struct.menu, ptr %299, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !15
  %305 = icmp eq ptr %304, null
  br i1 %305, label %313, label %306

306:                                              ; preds = %291
  %307 = getelementptr inbounds %struct.symbol, ptr %304, i64 0, i32 7
  br label %308

308:                                              ; preds = %308, %306
  %309 = phi ptr [ %307, %306 ], [ %310, %308 ]
  %310 = load ptr, ptr %309, align 8, !tbaa !5
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %308

312:                                              ; preds = %308
  store ptr %293, ptr %309, align 8, !tbaa !5
  br label %313

313:                                              ; preds = %312, %291
  %314 = call ptr @sym_get_choice_prop(ptr noundef %5) #17
  %315 = getelementptr inbounds %struct.property, ptr %314, i64 0, i32 4
  br label %316

316:                                              ; preds = %316, %313
  %317 = phi ptr [ %315, %313 ], [ %320, %316 ]
  %318 = load ptr, ptr %317, align 8, !tbaa !5
  %319 = icmp eq ptr %318, null
  %320 = getelementptr inbounds %struct.expr, ptr %318, i64 0, i32 1
  br i1 %319, label %321, label %316

321:                                              ; preds = %316
  %322 = call ptr @expr_alloc_one(i32 noundef 10, ptr noundef null) #17
  store ptr %322, ptr %317, align 8, !tbaa !5
  %323 = load ptr, ptr %218, align 8, !tbaa !15
  %324 = getelementptr inbounds %struct.expr, ptr %322, i64 0, i32 2
  store ptr %323, ptr %324, align 8, !tbaa !30
  br label %325

325:                                              ; preds = %321, %221, %217, %213, %211
  %326 = getelementptr inbounds %struct.menu, ptr %212, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !40
  %328 = icmp eq ptr %327, null
  br i1 %328, label %345, label %329

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.menu, ptr %212, i64 0, i32 4
  %331 = load ptr, ptr %330, align 8, !tbaa !33
  %332 = icmp eq ptr %331, null
  br i1 %332, label %337, label %333

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.property, ptr %331, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !35
  %336 = icmp eq ptr %335, null
  br i1 %336, label %337, label %345

337:                                              ; preds = %333, %329
  br label %338

338:                                              ; preds = %338, %337
  %339 = phi ptr [ %341, %338 ], [ %327, %337 ]
  %340 = getelementptr inbounds %struct.menu, ptr %339, i64 0, i32 1
  store ptr %0, ptr %340, align 8, !tbaa !16
  %341 = load ptr, ptr %339, align 8, !tbaa !37
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %338

343:                                              ; preds = %338
  %344 = load ptr, ptr %212, align 8, !tbaa !37
  store ptr %344, ptr %339, align 8, !tbaa !37
  store ptr %327, ptr %212, align 8, !tbaa !37
  store ptr null, ptr %326, align 8, !tbaa !40
  br label %347

345:                                              ; preds = %333, %325
  %346 = load ptr, ptr %212, align 8, !tbaa !5
  br label %347

347:                                              ; preds = %345, %343
  %348 = phi ptr [ %346, %345 ], [ %327, %343 ]
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %211

350:                                              ; preds = %347, %204, %131
  %351 = icmp eq ptr %5, null
  br i1 %351, label %492, label %352

352:                                              ; preds = %350
  %353 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 6
  %354 = load i32, ptr %353, align 4, !tbaa !36
  %355 = and i32 %354, 32768
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %476

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 2
  %359 = load i32, ptr %358, align 8, !tbaa !26
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  call void (ptr, ptr, ...) @menu_warn(ptr noundef %0, ptr noundef nonnull @.str.9)
  %362 = load i32, ptr %353, align 4, !tbaa !36
  br label %363

363:                                              ; preds = %361, %357
  %364 = phi i32 [ %362, %361 ], [ %354, %357 ]
  %365 = and i32 %364, 16
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %372, label %367

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 4
  %369 = load ptr, ptr %368, align 8, !tbaa !33
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %372

371:                                              ; preds = %367
  call void (ptr, ptr, ...) @menu_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.10)
  br label %372

372:                                              ; preds = %371, %367, %363
  %373 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 7
  %374 = load ptr, ptr %373, align 8, !tbaa !5
  %375 = icmp eq ptr %374, null
  br i1 %375, label %473, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 1
  br label %378

378:                                              ; preds = %470, %376
  %379 = phi ptr [ %374, %376 ], [ %471, %470 ]
  %380 = getelementptr inbounds %struct.property, ptr %379, i64 0, i32 1
  %381 = load i32, ptr %380, align 8, !tbaa !17
  switch i32 %381, label %470 [
    i32 4, label %382
    i32 6, label %425
    i32 7, label %425
    i32 8, label %441
  ]

382:                                              ; preds = %378
  %383 = load i32, ptr %358, align 8, !tbaa !26
  %384 = add i32 %383, -3
  %385 = icmp ult i32 %384, 3
  br i1 %385, label %386, label %393

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.property, ptr %379, i64 0, i32 4
  %388 = load ptr, ptr %387, align 8, !tbaa !23
  %389 = load i32, ptr %388, align 8, !tbaa !38
  %390 = icmp eq i32 %389, 11
  br i1 %390, label %393, label %391

391:                                              ; preds = %386
  %392 = load ptr, ptr %377, align 8, !tbaa !29
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %379, ptr noundef nonnull @.str.15, ptr noundef %392) #17
  br label %393

393:                                              ; preds = %391, %386, %382
  %394 = getelementptr inbounds %struct.property, ptr %379, i64 0, i32 4
  %395 = load ptr, ptr %394, align 8, !tbaa !23
  %396 = load i32, ptr %395, align 8, !tbaa !38
  %397 = icmp eq i32 %396, 11
  br i1 %397, label %398, label %470

398:                                              ; preds = %393
  %399 = call ptr @prop_get_symbol(ptr noundef nonnull %379) #17
  %400 = load i32, ptr %358, align 8, !tbaa !26
  %401 = add i32 %400, -3
  %402 = icmp ult i32 %401, 2
  br i1 %402, label %403, label %412

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.symbol, ptr %399, i64 0, i32 2
  %405 = load i32, ptr %404, align 8, !tbaa !26
  switch i32 %405, label %410 [
    i32 3, label %412
    i32 4, label %412
    i32 0, label %406
  ]

406:                                              ; preds = %403
  %407 = getelementptr inbounds %struct.symbol, ptr %399, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !29
  %409 = call zeroext i1 @sym_string_valid(ptr noundef nonnull %5, ptr noundef %408) #17
  br i1 %409, label %412, label %410

410:                                              ; preds = %406, %403
  %411 = load ptr, ptr %377, align 8, !tbaa !29
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %379, ptr noundef nonnull @.str.16, ptr noundef %411) #17
  br label %412

412:                                              ; preds = %410, %406, %403, %403, %398
  %413 = load i32, ptr %353, align 4, !tbaa !36
  %414 = and i32 %413, 16
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %470, label %416

416:                                              ; preds = %412
  %417 = call ptr @sym_get_choice_prop(ptr noundef %399) #17
  %418 = icmp eq ptr %417, null
  br i1 %418, label %422, label %419

419:                                              ; preds = %416
  %420 = call ptr @prop_get_symbol(ptr noundef nonnull %417) #17
  %421 = icmp eq ptr %420, %5
  br i1 %421, label %470, label %422

422:                                              ; preds = %419, %416
  %423 = getelementptr inbounds %struct.symbol, ptr %399, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !29
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %379, ptr noundef nonnull @.str.17, ptr noundef %424) #17
  br label %470

425:                                              ; preds = %378, %378
  %426 = icmp eq i32 %381, 6
  %427 = select i1 %426, ptr @.str.18, ptr @.str.19
  %428 = call ptr @prop_get_symbol(ptr noundef nonnull %379) #17
  %429 = load i32, ptr %358, align 8, !tbaa !26
  %430 = add i32 %429, -1
  %431 = icmp ult i32 %430, 2
  br i1 %431, label %434, label %432

432:                                              ; preds = %425
  %433 = load ptr, ptr %377, align 8, !tbaa !29
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %379, ptr noundef nonnull @.str.20, ptr noundef %433, ptr noundef nonnull %427) #17
  br label %470

434:                                              ; preds = %425
  %435 = getelementptr inbounds %struct.symbol, ptr %428, i64 0, i32 2
  %436 = load i32, ptr %435, align 8, !tbaa !26
  %437 = icmp ult i32 %436, 3
  br i1 %437, label %470, label %438

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.symbol, ptr %428, i64 0, i32 1
  %440 = load ptr, ptr %439, align 8, !tbaa !29
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %379, ptr noundef nonnull @.str.21, ptr noundef %440, ptr noundef nonnull %427) #17
  br label %470

441:                                              ; preds = %378
  %442 = load i32, ptr %358, align 8, !tbaa !26
  %443 = add i32 %442, -3
  %444 = icmp ult i32 %443, 2
  br i1 %444, label %446, label %445

445:                                              ; preds = %441
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %379, ptr noundef nonnull @.str.22) #17
  br label %446

446:                                              ; preds = %445, %441
  %447 = getelementptr inbounds %struct.property, ptr %379, i64 0, i32 4
  %448 = load ptr, ptr %447, align 8, !tbaa !23
  %449 = getelementptr inbounds %struct.expr, ptr %448, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !30
  %451 = getelementptr inbounds %struct.symbol, ptr %450, i64 0, i32 2
  %452 = load i32, ptr %451, align 8, !tbaa !26
  switch i32 %452, label %469 [
    i32 3, label %459
    i32 4, label %459
    i32 0, label %453
  ]

453:                                              ; preds = %446
  %454 = getelementptr inbounds %struct.symbol, ptr %450, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !29
  %456 = call zeroext i1 @sym_string_valid(ptr noundef nonnull %5, ptr noundef %455) #17
  br i1 %456, label %457, label %469

457:                                              ; preds = %453
  %458 = load ptr, ptr %447, align 8, !tbaa !23
  br label %459

459:                                              ; preds = %457, %446, %446
  %460 = phi ptr [ %458, %457 ], [ %448, %446 ], [ %448, %446 ]
  %461 = getelementptr inbounds %struct.expr, ptr %460, i64 0, i32 2
  %462 = load ptr, ptr %461, align 8, !tbaa !30
  %463 = getelementptr inbounds %struct.symbol, ptr %462, i64 0, i32 2
  %464 = load i32, ptr %463, align 8, !tbaa !26
  switch i32 %464, label %469 [
    i32 3, label %470
    i32 4, label %470
    i32 0, label %465
  ]

465:                                              ; preds = %459
  %466 = getelementptr inbounds %struct.symbol, ptr %462, i64 0, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !29
  %468 = call zeroext i1 @sym_string_valid(ptr noundef nonnull %5, ptr noundef %467) #17
  br i1 %468, label %470, label %469

469:                                              ; preds = %465, %459, %453, %446
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %379, ptr noundef nonnull @.str.23) #17
  br label %470

470:                                              ; preds = %469, %465, %459, %459, %438, %434, %432, %422, %419, %412, %393, %378
  %471 = load ptr, ptr %379, align 8, !tbaa !5
  %472 = icmp eq ptr %471, null
  br i1 %472, label %473, label %378

473:                                              ; preds = %470, %372
  %474 = load i32, ptr %353, align 4, !tbaa !36
  %475 = or i32 %474, 32768
  store i32 %475, ptr %353, align 4, !tbaa !36
  br label %476

476:                                              ; preds = %473, %352
  %477 = phi i32 [ %354, %352 ], [ %475, %473 ]
  %478 = and i32 %477, 256
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %492

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 4
  %482 = load ptr, ptr %481, align 8, !tbaa !33
  %483 = icmp eq ptr %482, null
  br i1 %483, label %492, label %484

484:                                              ; preds = %480
  %485 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 9
  %486 = load ptr, ptr %485, align 8, !tbaa !42
  %487 = getelementptr inbounds %struct.property, ptr %482, i64 0, i32 3
  %488 = load ptr, ptr %487, align 8, !tbaa !24
  %489 = call ptr @expr_alloc_symbol(ptr noundef nonnull @symbol_mod) #17
  %490 = call ptr @expr_alloc_and(ptr noundef %488, ptr noundef %489) #17
  %491 = call ptr @expr_alloc_or(ptr noundef %486, ptr noundef %490) #17
  store ptr %491, ptr %485, align 8, !tbaa !42
  br label %492

492:                                              ; preds = %484, %480, %476, %350, %138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rewrite_m(ptr noundef %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !38
  switch i32 %4, label %5 [
    i32 3, label %7
    i32 1, label %11
    i32 2, label %11
    i32 11, label %18
  ]

5:                                                ; preds = %22, %18, %11, %7, %3, %1
  %6 = phi ptr [ %0, %7 ], [ %0, %11 ], [ %25, %22 ], [ null, %1 ], [ %0, %3 ], [ %0, %18 ]
  ret ptr %6

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = tail call fastcc ptr @rewrite_m(ptr noundef %9)
  store ptr %10, ptr %8, align 8, !tbaa !30
  br label %5

11:                                               ; preds = %3, %3
  %12 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = tail call fastcc ptr @rewrite_m(ptr noundef %13)
  store ptr %14, ptr %12, align 8, !tbaa !30
  %15 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !30
  %17 = tail call fastcc ptr @rewrite_m(ptr noundef %16)
  store ptr %17, ptr %15, align 8, !tbaa !30
  br label %5

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !30
  %21 = icmp eq ptr %20, @symbol_mod
  br i1 %21, label %22, label %5

22:                                               ; preds = %18
  %23 = load ptr, ptr @modules_sym, align 8, !tbaa !5
  %24 = tail call ptr @expr_alloc_symbol(ptr noundef %23) #17
  %25 = tail call ptr @expr_alloc_and(ptr noundef nonnull %0, ptr noundef %24) #17
  br label %5
}

declare ptr @expr_transform(ptr noundef) local_unnamed_addr #6

declare ptr @expr_eliminate_dups(ptr noundef) local_unnamed_addr #6

declare ptr @expr_trans_bool(ptr noundef) local_unnamed_addr #6

declare ptr @prop_get_symbol(ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_or(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @expr_free(ptr noundef) local_unnamed_addr #6

declare ptr @expr_trans_compare(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @expr_contains_symbol(ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @expr_depends_symbol(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @expr_eliminate_eq(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_comp(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @sym_get_choice_prop(ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_one(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @menu_has_prompt(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @menu_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 2
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i1 @menu_is_visible(ptr noundef nonnull %5)
  br i1 %8, label %9, label %3

9:                                                ; preds = %7, %3
  ret i1 %6
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @menu_is_visible(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @expr_calc_value(ptr noundef nonnull %7) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load ptr, ptr %2, align 8, !tbaa !33
  %18 = getelementptr inbounds %struct.property, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !24
  %20 = tail call i32 @expr_calc_value(ptr noundef %19) #17
  %21 = load ptr, ptr %2, align 8, !tbaa !33
  %22 = getelementptr inbounds %struct.property, ptr %21, i64 0, i32 3, i32 1
  store i32 %20, ptr %22, align 8, !tbaa !43
  %23 = icmp ne i32 %20, 0
  br label %46

24:                                               ; preds = %12
  tail call void @sym_calc_value(ptr noundef nonnull %14) #17
  %25 = load ptr, ptr %2, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.property, ptr %25, i64 0, i32 3, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !43
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load ptr, ptr %13, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.symbol, ptr %30, i64 0, i32 3, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !44
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 2
  br label %36

36:                                               ; preds = %40, %34
  %37 = phi ptr [ %35, %34 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = tail call zeroext i1 @menu_is_visible(ptr noundef nonnull %38)
  br i1 %41, label %42, label %36

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.symbol, ptr %14, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !36
  %45 = or i32 %44, 65536
  store i32 %45, ptr %43, align 4, !tbaa !36
  br label %46

46:                                               ; preds = %42, %36, %29, %24, %16, %9, %1
  %47 = phi i1 [ true, %42 ], [ false, %1 ], [ false, %9 ], [ true, %24 ], [ false, %29 ], [ %23, %16 ], [ false, %36 ]
  ret i1 %47
}

declare i32 @expr_calc_value(ptr noundef) local_unnamed_addr #6

declare void @sym_calc_value(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @menu_get_prompt(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 2
  br label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.symbol, ptr %9, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi ptr [ %12, %11 ], [ %6, %5 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ null, %7 ], [ %15, %13 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @menu_get_root_menu(ptr nocapture noundef readnone %0) local_unnamed_addr #12 {
  ret ptr @rootmenu
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local ptr @menu_get_parent_menu(ptr noundef readonly %0) local_unnamed_addr #13 {
  %2 = icmp eq ptr %0, @rootmenu
  br i1 %2, label %16, label %3

3:                                                ; preds = %12, %1
  %4 = phi ptr [ %14, %12 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.menu, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !33
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !17
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %16, label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.menu, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = icmp eq ptr %14, @rootmenu
  br i1 %15, label %16, label %3

16:                                               ; preds = %12, %8, %1
  %17 = phi ptr [ @rootmenu, %1 ], [ %4, %8 ], [ @rootmenu, %12 ]
  ret ptr %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @menu_has_help(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @menu_get_help(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.11, ptr %3
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @get_relations_str(ptr noalias sret(%struct.gstr) align 8 %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #5 {
  tail call void @str_new(ptr sret(%struct.gstr) align 8 %0) #17
  %4 = icmp eq ptr %1, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = phi i64 [ %11, %8 ], [ 0, %5 ]
  tail call fastcc void @get_symbol_str(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2)
  %11 = add nuw i64 %10, 1
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8

15:                                               ; preds = %8
  %16 = trunc i64 %11 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %5, %3
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.12) #17
  br label %19

19:                                               ; preds = %18, %15
  ret void
}

declare void @str_new(ptr sret(%struct.gstr) align 8) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @get_symbol_str(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = alloca [8 x ptr], align 16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @sym_get_string_value(ptr noundef nonnull %1) #17
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %8, ptr noundef %11) #17
  %12 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !26
  %14 = tail call ptr @sym_type_name(i32 noundef %13) #17
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %14) #17
  %15 = load i32, ptr %12, align 8, !tbaa !26
  %16 = add i32 %15, -3
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = tail call ptr @sym_get_range_prop(ptr noundef nonnull %1) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.26) #17
  %22 = getelementptr inbounds %struct.property, ptr %19, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  tail call void @expr_gstr_print(ptr noundef %23, ptr noundef %0) #17
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  br label %24

24:                                               ; preds = %21, %18, %10, %6, %3
  %25 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %247, label %28

28:                                               ; preds = %24
  %29 = icmp ne ptr %2, null
  %30 = getelementptr inbounds %struct.list_head, ptr %2, i64 0, i32 1
  %31 = getelementptr inbounds %struct.gstr, ptr %0, i64 0, i32 1
  br label %35

32:                                               ; preds = %185
  %33 = load ptr, ptr %25, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %247, label %188

35:                                               ; preds = %185, %28
  %36 = phi ptr [ %26, %28 ], [ %186, %185 ]
  %37 = getelementptr inbounds %struct.property, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !17
  %39 = icmp eq i32 %38, 9
  br i1 %39, label %40, label %185

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.property, ptr %36, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.menu, ptr %42, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !33
  %45 = icmp eq ptr %44, null
  br i1 %45, label %185, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.menu, ptr %42, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds %struct.file, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !12
  %51 = getelementptr inbounds %struct.menu, ptr %42, i64 0, i32 10
  %52 = load i32, ptr %51, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %50, i32 noundef %52) #17
  %53 = load ptr, ptr %41, align 8, !tbaa !22
  %54 = getelementptr inbounds %struct.menu, ptr %53, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %56 = getelementptr inbounds %struct.property, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef %57) #17
  %58 = getelementptr inbounds %struct.property, ptr %55, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = getelementptr inbounds %struct.menu, ptr %59, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !25
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %46
  %64 = load i32, ptr %61, align 8, !tbaa !38
  %65 = icmp eq i32 %64, 11
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.expr, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !30
  %69 = icmp eq ptr %68, @symbol_yes
  br i1 %69, label %74, label %70

70:                                               ; preds = %66, %63
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.27) #17
  tail call void @expr_gstr_print(ptr noundef nonnull %61, ptr noundef %0) #17
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  %71 = load ptr, ptr %58, align 8, !tbaa !22
  %72 = getelementptr inbounds %struct.menu, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !25
  br label %74

74:                                               ; preds = %70, %66, %46
  %75 = phi ptr [ null, %46 ], [ %61, %66 ], [ %73, %70 ]
  %76 = getelementptr inbounds %struct.property, ptr %55, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !24
  %78 = tail call i32 @expr_eq(ptr noundef %75, ptr noundef %77) #17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load ptr, ptr %76, align 8, !tbaa !24
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %81, align 8, !tbaa !38
  %85 = icmp eq i32 %84, 11
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.expr, ptr %81, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !30
  %89 = icmp eq ptr %88, @symbol_yes
  br i1 %89, label %91, label %90

90:                                               ; preds = %86, %83
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.39) #17
  tail call void @expr_gstr_print(ptr noundef nonnull %81, ptr noundef %0) #17
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  br label %91

91:                                               ; preds = %90, %86, %80, %74
  %92 = load ptr, ptr %58, align 8, !tbaa !22
  %93 = getelementptr inbounds %struct.menu, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %135, label %96

96:                                               ; preds = %96, %91
  %97 = phi i64 [ %101, %96 ], [ 0, %91 ]
  %98 = phi ptr [ %107, %96 ], [ %94, %91 ]
  %99 = phi ptr [ %105, %96 ], [ null, %91 ]
  %100 = tail call zeroext i1 @menu_is_visible(ptr noundef nonnull %98) #17
  %101 = add nuw nsw i64 %97, 1
  %102 = getelementptr inbounds [8 x ptr], ptr %4, i64 0, i64 %97
  store ptr %98, ptr %102, align 8, !tbaa !5
  %103 = icmp eq ptr %99, null
  %104 = select i1 %100, ptr %98, ptr null
  %105 = select i1 %103, ptr %104, ptr %99
  %106 = getelementptr inbounds %struct.menu, ptr %98, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !16
  %108 = icmp ne ptr %107, null
  %109 = icmp ult i64 %97, 7
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %96, label %111

111:                                              ; preds = %96
  %112 = icmp ne ptr %105, null
  %113 = select i1 %29, i1 %112, i1 false
  br i1 %113, label %114, label %136

114:                                              ; preds = %111
  %115 = tail call ptr @xmalloc(i64 noundef 40) #17
  %116 = load ptr, ptr %58, align 8, !tbaa !22
  %117 = tail call zeroext i1 @menu_is_visible(ptr noundef %116) #17
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load ptr, ptr %58, align 8, !tbaa !22
  br label %120

120:                                              ; preds = %118, %114
  %121 = phi ptr [ %119, %118 ], [ %105, %114 ]
  %122 = getelementptr inbounds %struct.jump_key, ptr %115, i64 0, i32 2
  store ptr %121, ptr %122, align 8
  %123 = load ptr, ptr %2, align 8, !tbaa !46
  %124 = icmp eq ptr %123, %2
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load ptr, ptr %30, align 8, !tbaa !48
  %127 = getelementptr inbounds %struct.jump_key, ptr %126, i64 0, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !49
  %129 = add nsw i32 %128, 1
  br label %130

130:                                              ; preds = %125, %120
  %131 = phi i32 [ %129, %125 ], [ 0, %120 ]
  %132 = getelementptr inbounds %struct.jump_key, ptr %115, i64 0, i32 3
  store i32 %131, ptr %132, align 8
  %133 = load ptr, ptr %30, align 8, !tbaa !48
  store ptr %115, ptr %30, align 8, !tbaa !48
  store ptr %2, ptr %115, align 8, !tbaa !46
  %134 = getelementptr inbounds %struct.list_head, ptr %115, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !48
  store ptr %115, ptr %133, align 8, !tbaa !46
  br label %136

135:                                              ; preds = %91
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.40) #17
  br label %184

136:                                              ; preds = %130, %111
  %137 = phi ptr [ null, %111 ], [ %115, %130 ]
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.40) #17
  %138 = icmp ne ptr %137, null
  %139 = getelementptr inbounds %struct.jump_key, ptr %137, i64 0, i32 1
  br label %140

140:                                              ; preds = %181, %136
  %141 = phi i64 [ %101, %136 ], [ %143, %181 ]
  %142 = phi i32 [ 4, %136 ], [ %183, %181 ]
  %143 = add nsw i64 %141, -1
  %144 = getelementptr inbounds [8 x ptr], ptr %4, i64 0, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !5
  %146 = icmp eq ptr %145, %105
  %147 = select i1 %138, i1 %146, i1 false
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load ptr, ptr %31, align 8, !tbaa !52
  %150 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %149) #20
  store i64 %150, ptr %139, align 8, !tbaa !54
  br label %151

151:                                              ; preds = %148, %140
  %152 = icmp eq ptr %145, @rootmenu
  br i1 %152, label %153, label %154

153:                                              ; preds = %151
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %142, i32 noundef 32) #17
  br label %171

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.menu, ptr %145, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !33
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.property, ptr %156, i64 0, i32 2
  br label %166

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.menu, ptr %145, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !15
  %163 = icmp eq ptr %162, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.symbol, ptr %162, i64 0, i32 1
  br label %166

166:                                              ; preds = %164, %158
  %167 = phi ptr [ %165, %164 ], [ %159, %158 ]
  %168 = load ptr, ptr %167, align 8, !tbaa !5
  br label %169

169:                                              ; preds = %166, %160
  %170 = phi ptr [ null, %160 ], [ %168, %166 ]
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %142, i32 noundef 32, ptr noundef %170) #17
  br label %171

171:                                              ; preds = %169, %153
  %172 = getelementptr inbounds %struct.menu, ptr %145, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !15
  %174 = icmp eq ptr %173, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.symbol, ptr %173, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !29
  %178 = icmp eq ptr %177, null
  %179 = select i1 %178, ptr @.str.3, ptr %177
  %180 = tail call ptr @sym_get_string_value(ptr noundef nonnull %173) #17
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull %179, ptr noundef %180) #17
  br label %181

181:                                              ; preds = %175, %171
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  %182 = icmp ugt i64 %141, 1
  %183 = add nuw nsw i32 %142, 2
  br i1 %182, label %140, label %184

184:                                              ; preds = %181, %135
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %185

185:                                              ; preds = %184, %40, %35
  %186 = load ptr, ptr %36, align 8, !tbaa !5
  %187 = icmp eq ptr %186, null
  br i1 %187, label %32, label %35

188:                                              ; preds = %218, %32
  %189 = phi ptr [ %219, %218 ], [ %33, %32 ]
  %190 = getelementptr inbounds %struct.property, ptr %189, i64 0, i32 1
  %191 = load i32, ptr %190, align 8, !tbaa !17
  %192 = icmp eq i32 %191, 9
  br i1 %192, label %193, label %218

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.property, ptr %189, i64 0, i32 5
  %195 = load ptr, ptr %194, align 8, !tbaa !22
  %196 = getelementptr inbounds %struct.menu, ptr %195, i64 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !33
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %218

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.menu, ptr %195, i64 0, i32 9
  %201 = load ptr, ptr %200, align 8, !tbaa !9
  %202 = getelementptr inbounds %struct.file, ptr %201, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !12
  %204 = getelementptr inbounds %struct.menu, ptr %195, i64 0, i32 10
  %205 = load i32, ptr %204, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %203, i32 noundef %205) #17
  %206 = load ptr, ptr %194, align 8, !tbaa !22
  %207 = getelementptr inbounds %struct.menu, ptr %206, i64 0, i32 6
  %208 = load ptr, ptr %207, align 8, !tbaa !25
  %209 = icmp eq ptr %208, null
  br i1 %209, label %218, label %210

210:                                              ; preds = %199
  %211 = load i32, ptr %208, align 8, !tbaa !38
  %212 = icmp eq i32 %211, 11
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.expr, ptr %208, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !30
  %216 = icmp eq ptr %215, @symbol_yes
  br i1 %216, label %218, label %217

217:                                              ; preds = %213, %210
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.27) #17
  tail call void @expr_gstr_print(ptr noundef nonnull %208, ptr noundef %0) #17
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  br label %218

218:                                              ; preds = %217, %213, %199, %193, %188
  %219 = load ptr, ptr %189, align 8, !tbaa !5
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %188

221:                                              ; preds = %218
  %222 = load ptr, ptr %25, align 8, !tbaa !5
  %223 = icmp eq ptr %222, null
  br i1 %223, label %247, label %224

224:                                              ; preds = %239, %221
  %225 = phi ptr [ %241, %239 ], [ %222, %221 ]
  %226 = phi i8 [ %240, %239 ], [ 0, %221 ]
  %227 = getelementptr inbounds %struct.property, ptr %225, i64 0, i32 1
  %228 = load i32, ptr %227, align 8, !tbaa !17
  %229 = icmp eq i32 %228, 6
  br i1 %229, label %230, label %239

230:                                              ; preds = %224
  %231 = and i8 %226, 1
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.28) #17
  br label %235

234:                                              ; preds = %230
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.44) #17
  br label %235

235:                                              ; preds = %234, %233
  %236 = phi i8 [ %226, %234 ], [ 1, %233 ]
  %237 = getelementptr inbounds %struct.property, ptr %225, i64 0, i32 4
  %238 = load ptr, ptr %237, align 8, !tbaa !23
  tail call void @expr_gstr_print(ptr noundef %238, ptr noundef %0) #17
  br label %239

239:                                              ; preds = %235, %224
  %240 = phi i8 [ %236, %235 ], [ %226, %224 ]
  %241 = load ptr, ptr %225, align 8, !tbaa !5
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %224

243:                                              ; preds = %239
  %244 = and i8 %240, 1
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  br label %247

247:                                              ; preds = %246, %243, %221, %32, %24
  %248 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 9
  %249 = load ptr, ptr %248, align 8, !tbaa !42
  %250 = icmp eq ptr %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  tail call void @expr_gstr_print_revdep(ptr noundef nonnull %249, ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.29) #17
  %252 = load ptr, ptr %248, align 8, !tbaa !42
  tail call void @expr_gstr_print_revdep(ptr noundef %252, ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.30) #17
  %253 = load ptr, ptr %248, align 8, !tbaa !42
  tail call void @expr_gstr_print_revdep(ptr noundef %253, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.31) #17
  br label %254

254:                                              ; preds = %251, %247
  %255 = load ptr, ptr %25, align 8, !tbaa !5
  %256 = icmp eq ptr %255, null
  br i1 %256, label %280, label %257

257:                                              ; preds = %272, %254
  %258 = phi ptr [ %274, %272 ], [ %255, %254 ]
  %259 = phi i8 [ %273, %272 ], [ 0, %254 ]
  %260 = getelementptr inbounds %struct.property, ptr %258, i64 0, i32 1
  %261 = load i32, ptr %260, align 8, !tbaa !17
  %262 = icmp eq i32 %261, 7
  br i1 %262, label %263, label %272

263:                                              ; preds = %257
  %264 = and i8 %259, 1
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.32) #17
  br label %268

267:                                              ; preds = %263
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %0, ptr noundef nonnull @.str.44) #17
  br label %268

268:                                              ; preds = %267, %266
  %269 = phi i8 [ %259, %267 ], [ 1, %266 ]
  %270 = getelementptr inbounds %struct.property, ptr %258, i64 0, i32 4
  %271 = load ptr, ptr %270, align 8, !tbaa !23
  tail call void @expr_gstr_print(ptr noundef %271, ptr noundef %0) #17
  br label %272

272:                                              ; preds = %268, %257
  %273 = phi i8 [ %269, %268 ], [ %259, %257 ]
  %274 = load ptr, ptr %258, align 8, !tbaa !5
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %257

276:                                              ; preds = %272
  %277 = and i8 %273, 1
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %276
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  br label %280

280:                                              ; preds = %279, %276, %254
  %281 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 10
  %282 = load ptr, ptr %281, align 8, !tbaa !55
  %283 = icmp eq ptr %282, null
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  tail call void @expr_gstr_print_revdep(ptr noundef nonnull %282, ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.33) #17
  %285 = load ptr, ptr %281, align 8, !tbaa !55
  tail call void @expr_gstr_print_revdep(ptr noundef %285, ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.34) #17
  %286 = load ptr, ptr %281, align 8, !tbaa !55
  tail call void @expr_gstr_print_revdep(ptr noundef %286, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.35) #17
  br label %287

287:                                              ; preds = %284, %280
  tail call void @str_append(ptr noundef %0, ptr noundef nonnull @.str.36) #17
  ret void
}

declare void @str_append(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @menu_get_ext_help(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.45) #17
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str.45, ptr %13
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef %15, ptr noundef nonnull %10) #17
  %16 = load ptr, ptr %5, align 8, !tbaa !45
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi ptr [ %6, %8 ], [ %16, %12 ]
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.11, ptr %18
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef %20) #17
  br label %23

21:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @nohelp_text) #17
  %22 = icmp eq ptr %4, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %21, %17
  tail call fastcc void @get_symbol_str(ptr noundef %1, ptr noundef nonnull %4, ptr noundef null)
  br label %24

24:                                               ; preds = %23, %21
  ret void
}

declare void @str_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare zeroext i1 @sym_string_valid(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @sym_get_string_value(ptr noundef) local_unnamed_addr #6

declare ptr @sym_get_range_prop(ptr noundef) local_unnamed_addr #6

declare void @expr_gstr_print(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @expr_gstr_print_revdep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @expr_eq(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { nounwind readonly willreturn }

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
!9 = !{!10, !6, i64 72}
!10 = !{!"menu", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !11, i64 56, !6, i64 64, !6, i64 72, !11, i64 80, !6, i64 88}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !6, i64 16}
!13 = !{!"file", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24}
!14 = !{!10, !11, i64 80}
!15 = !{!10, !6, i64 24}
!16 = !{!10, !6, i64 8}
!17 = !{!18, !7, i64 8}
!18 = !{!"property", !6, i64 0, !7, i64 8, !6, i64 16, !19, i64 24, !6, i64 40, !6, i64 48, !6, i64 56, !11, i64 64}
!19 = !{!"expr_value", !6, i64 0, !7, i64 8}
!20 = !{!18, !6, i64 56}
!21 = !{!18, !11, i64 64}
!22 = !{!18, !6, i64 48}
!23 = !{!18, !6, i64 40}
!24 = !{!18, !6, i64 24}
!25 = !{!10, !6, i64 48}
!26 = !{!27, !7, i64 16}
!27 = !{!"symbol", !6, i64 0, !6, i64 8, !7, i64 16, !28, i64 24, !7, i64 40, !7, i64 104, !11, i64 108, !6, i64 112, !19, i64 120, !19, i64 136, !19, i64 152}
!28 = !{!"symbol_value", !6, i64 0, !7, i64 8}
!29 = !{!27, !6, i64 8}
!30 = !{!7, !7, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !7, i64 0}
!33 = !{!10, !6, i64 32}
!34 = !{!10, !6, i64 40}
!35 = !{!18, !6, i64 16}
!36 = !{!27, !11, i64 108}
!37 = !{!10, !6, i64 0}
!38 = !{!39, !7, i64 0}
!39 = !{!"expr", !7, i64 0, !7, i64 8, !7, i64 16}
!40 = !{!10, !6, i64 16}
!41 = !{!27, !6, i64 120}
!42 = !{!27, !6, i64 136}
!43 = !{!18, !7, i64 32}
!44 = !{!27, !7, i64 32}
!45 = !{!10, !6, i64 64}
!46 = !{!47, !6, i64 0}
!47 = !{!"list_head", !6, i64 0, !6, i64 8}
!48 = !{!47, !6, i64 8}
!49 = !{!50, !11, i64 32}
!50 = !{!"jump_key", !47, i64 0, !51, i64 16, !6, i64 24, !11, i64 32}
!51 = !{!"long", !7, i64 0}
!52 = !{!53, !6, i64 8}
!53 = !{!"gstr", !51, i64 0, !6, i64 8, !11, i64 16}
!54 = !{!50, !51, i64 16}
!55 = !{!27, !6, i64 152}
