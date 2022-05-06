; ModuleID = '/llk/IR/scripts/kconfig/symbol.c_pt.bc'
source_filename = "../scripts/kconfig/symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%struct.property = type { ptr, i32, ptr, %struct.expr_value, ptr, ptr, ptr, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }
%struct.gstr = type { i64, ptr, i32 }
%struct.menu = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.regmatch_t = type { i32, i32 }
%struct.sym_match = type { ptr, i64, i64 }
%struct.dep_stack = type { ptr, ptr, ptr, ptr, ptr }
%struct.file = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [2 x i8] c"y\00", align 1
@symbol_yes = dso_local global %struct.symbol { ptr null, ptr @.str, i32 0, %struct.symbol_value { ptr @.str, i32 2 }, [4 x %struct.symbol_value] zeroinitializer, i32 0, i32 129, ptr null, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@symbol_mod = dso_local global %struct.symbol { ptr null, ptr @.str.1, i32 0, %struct.symbol_value { ptr @.str.1, i32 1 }, [4 x %struct.symbol_value] zeroinitializer, i32 0, i32 129, ptr null, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@symbol_no = dso_local global %struct.symbol { ptr null, ptr @.str.2, i32 0, %struct.symbol_value { ptr @.str.2, i32 0 }, [4 x %struct.symbol_value] zeroinitializer, i32 0, i32 129, ptr null, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer }, align 8
@modules_val = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"tristate\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@modules_sym = dso_local local_unnamed_addr global ptr null, align 8
@symbol_hash = external local_unnamed_addr global [9973 x ptr], align 16
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"choice\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"imply\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"\0AWARNING: unmet direct dependencies detected for %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"  Depends on [%c]: \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"  Selected by [y]:\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"  Selected by [m]:\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@check_top = internal unnamed_addr global ptr null, align 8
@.str.27 = private unnamed_addr constant [39 x i8] c"unexpected recursive dependency error\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"%s:%d:error: recursive dependency detected!\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"%s:%d:\09choice %s contains symbol %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"%s:%d:\09symbol %s is part of choice %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"%s:%d:\09symbol %s depends on %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"%s:%d:\09symbol %s is selected by %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"%s:%d:\09symbol %s is implied by %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"%s:%d:\09symbol %s %s value contains %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"%s:%d:\09symbol %s %s is visible depending on %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [124 x i8] c"For a resolution refer to Documentation/kbuild/kconfig-language.rst\0Asubsection \22Kconfig recursive dependency limitations\22\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"Oops! How to check %d?\0A\00", align 1
@reltable.sym_type_name = private unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32)], align 4
@switch.table.sym_toggle_tristate_value = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 0], align 4
@reltable.sym_get_string_default = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.sym_get_string_default to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable.sym_get_string_default to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.sym_get_string_default to i64)) to i32)], align 4
@switch.table.prop_get_type_name = private unnamed_addr constant [9 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @sym_get_type(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !14
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %5
  %15 = load i32, ptr @modules_val, align 4, !tbaa !15
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 1, i32 2
  br label %18

18:                                               ; preds = %14, %10, %1
  %19 = phi i32 [ %3, %1 ], [ 1, %10 ], [ %17, %14 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @sym_type_name(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp ult i32 %0, 6
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable.sym_type_name, i64 %5)
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi ptr [ %6, %3 ], [ @.str.9, %1 ]
  ret ptr %8
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local ptr @sym_get_choice_prop(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.property, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !17
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %11, label %3

11:                                               ; preds = %7, %3
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sym_get_range_prop(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %16, %1
  %6 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = tail call i32 @expr_calc_value(ptr noundef %12) #27
  %14 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 3, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !20
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5

19:                                               ; preds = %16, %10, %1
  %20 = phi ptr [ null, %1 ], [ null, %16 ], [ %6, %10 ]
  ret ptr %20
}

declare i32 @expr_calc_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @sym_choice_default(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %27, %1
  %6 = phi ptr [ %28, %27 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = tail call i32 @expr_calc_value(ptr noundef %12) #27
  %14 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 3, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !20
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !21, !nonnull !22
  %19 = load i32, ptr %18, align 8, !tbaa !23
  %20 = and i32 %19, -2
  %21 = icmp eq i32 %20, 10
  tail call void @llvm.assume(i1 %21)
  %22 = getelementptr inbounds %struct.expr, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.symbol, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %16, %10, %5
  %28 = load ptr, ptr %6, align 8, !tbaa !16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %5

30:                                               ; preds = %27, %1
  br label %31

31:                                               ; preds = %35, %30
  %32 = phi ptr [ %33, %35 ], [ %2, %30 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.property, ptr %33, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !17
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %31

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.property, ptr %33, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %47

43:                                               ; preds = %52
  %44 = getelementptr inbounds %struct.expr, ptr %48, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43, %39
  %48 = phi ptr [ %45, %43 ], [ %41, %39 ]
  %49 = getelementptr inbounds %struct.expr, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.symbol, ptr %50, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %43, label %56

56:                                               ; preds = %52, %47, %43, %39, %16
  %57 = phi ptr [ null, %39 ], [ %50, %52 ], [ null, %43 ], [ null, %47 ], [ %23, %16 ]
  ret ptr %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @prop_get_symbol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !23
  %7 = and i32 %6, -2
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local void @sym_calc_value(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca %struct.gstr, align 8
  %4 = alloca %struct.symbol_value, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  %5 = icmp eq ptr %0, null
  br i1 %5, label %563, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !13
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %563

11:                                               ; preds = %6
  %12 = and i32 %8, 1048608
  %13 = icmp eq i32 %12, 1048608
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = and i32 %8, -1048577
  store i32 %15, ptr %7, align 4, !tbaa !13
  %16 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  br label %17

17:                                               ; preds = %21, %14
  %18 = phi ptr [ %16, %14 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.property, ptr %19, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !17
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %17

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.property, ptr %19, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %27, align 8, !tbaa !23
  %31 = and i32 %30, -2
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.expr, ptr %27, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !15
  br label %36

36:                                               ; preds = %33, %29, %25
  %37 = phi ptr [ %35, %33 ], [ null, %29 ], [ null, %25 ]
  tail call void @sym_calc_value(ptr noundef %37)
  %38 = load i32, ptr %7, align 4, !tbaa !13
  br label %39

39:                                               ; preds = %36, %11
  %40 = phi i32 [ %38, %36 ], [ %8, %11 ]
  %41 = or i32 %40, 128
  store i32 %41, ptr %7, align 4, !tbaa !13
  %42 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false), !tbaa.struct !25
  %43 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !5
  switch i32 %44, label %49 [
    i32 3, label %53
    i32 4, label %53
    i32 5, label %53
    i32 1, label %45
    i32 2, label %45
  ]

45:                                               ; preds = %39, %39
  %46 = load ptr, ptr getelementptr inbounds (%struct.symbol, ptr @symbol_no, i64 0, i32 3), align 8, !tbaa.struct !25
  %47 = load i32, ptr getelementptr inbounds (%struct.symbol, ptr @symbol_no, i64 0, i32 3, i32 1), align 8, !tbaa.struct !26
  %48 = load i32, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.symbol, ptr @symbol_no, i64 0, i32 3), i64 12), align 4, !tbaa.struct !22
  br label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !27
  store ptr %51, ptr %42, align 8, !tbaa !28
  %52 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 3, i32 1
  store i32 0, ptr %52, align 8, !tbaa !29
  br label %563

53:                                               ; preds = %45, %39, %39, %39
  %54 = phi ptr [ %46, %45 ], [ @.str.10, %39 ], [ @.str.10, %39 ], [ @.str.10, %39 ]
  %55 = phi i32 [ %47, %45 ], [ 0, %39 ], [ 0, %39 ], [ 0, %39 ]
  %56 = phi i32 [ %48, %45 ], [ 0, %39 ], [ 0, %39 ], [ 0, %39 ]
  %57 = and i32 %41, -513
  store i32 %57, ptr %7, align 4, !tbaa !13
  tail call fastcc void @sym_calc_visibility(ptr noundef nonnull %0)
  %58 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load i32, ptr %7, align 4, !tbaa !13
  %63 = or i32 %62, 512
  store i32 %63, ptr %7, align 4, !tbaa !13
  br label %64

64:                                               ; preds = %61, %53
  store ptr %54, ptr %42, align 8, !tbaa.struct !25
  %65 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 3, i32 1
  store i32 %55, ptr %65, align 8, !tbaa.struct !26
  %66 = getelementptr inbounds i8, ptr %42, i64 12
  store i32 %56, ptr %66, align 4, !tbaa.struct !22
  %67 = load i32, ptr %43, align 8, !tbaa !5
  switch i32 %67, label %257 [
    i32 2, label %71
    i32 1, label %68
    i32 3, label %214
    i32 5, label %214
    i32 4, label %214
  ]

68:                                               ; preds = %64
  %69 = load i32, ptr %7, align 4, !tbaa !13
  %70 = and i32 %69, 32
  br label %77

71:                                               ; preds = %64
  %72 = load i32, ptr %7, align 4, !tbaa !13
  %73 = and i32 %72, 32
  %74 = icmp ne i32 %73, 0
  %75 = icmp eq i32 %59, 2
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %83, label %77

77:                                               ; preds = %71, %68
  %78 = phi i32 [ %70, %68 ], [ %73, %71 ]
  %79 = phi i32 [ %69, %68 ], [ %72, %71 ]
  %80 = icmp ne i32 %78, 0
  %81 = icmp eq i32 %59, 2
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %105

83:                                               ; preds = %77, %71
  %84 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  br label %85

85:                                               ; preds = %89, %83
  %86 = phi ptr [ %84, %83 ], [ %87, %89 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !16
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.property, ptr %87, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !17
  %92 = icmp eq i32 %91, 5
  br i1 %92, label %93, label %85

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds %struct.property, ptr %87, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !21, !nonnull !22
  %96 = load i32, ptr %95, align 8, !tbaa !23
  %97 = and i32 %96, -2
  %98 = icmp eq i32 %97, 10
  tail call void @llvm.assume(i1 %98)
  %99 = getelementptr inbounds %struct.expr, ptr %95, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !15
  %101 = getelementptr inbounds %struct.symbol, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !28
  %103 = icmp eq ptr %102, %0
  %104 = select i1 %103, i32 2, i32 0
  br label %257

105:                                              ; preds = %77
  %106 = xor i1 %60, true
  %107 = and i32 %79, 65536
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 4, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !30
  br label %168

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !31
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = or i32 %79, 512
  store i32 %118, ptr %7, align 4, !tbaa !13
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi i32 [ %118, %117 ], [ %79, %113 ]
  %121 = and i32 %120, 16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %172

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !16
  %126 = icmp eq ptr %125, null
  br i1 %126, label %157, label %127

127:                                              ; preds = %138, %123
  %128 = phi ptr [ %139, %138 ], [ %125, %123 ]
  %129 = getelementptr inbounds %struct.property, ptr %128, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !17
  %131 = icmp eq i32 %130, 4
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.property, ptr %128, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !19
  %135 = tail call i32 @expr_calc_value(ptr noundef %134) #27
  %136 = getelementptr inbounds %struct.property, ptr %128, i64 0, i32 3, i32 1
  store i32 %135, ptr %136, align 8, !tbaa !20
  %137 = icmp eq i32 %135, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132, %127
  %139 = load ptr, ptr %128, align 8, !tbaa !16
  %140 = icmp eq ptr %139, null
  br i1 %140, label %157, label %127

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.property, ptr %128, i64 0, i32 3, i32 1
  %143 = getelementptr inbounds %struct.property, ptr %128, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !21
  %145 = tail call i32 @expr_calc_value(ptr noundef %144) #27
  %146 = load i32, ptr %142, align 8, !tbaa !20
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load ptr, ptr %143, align 8, !tbaa !21
  %150 = tail call i32 @expr_calc_value(ptr noundef %149) #27
  br label %151

151:                                              ; preds = %148, %141
  %152 = phi i32 [ %150, %148 ], [ %146, %141 ]
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, ptr %7, align 4, !tbaa !13
  %156 = or i32 %155, 512
  store i32 %156, ptr %7, align 4, !tbaa !13
  br label %157

157:                                              ; preds = %154, %151, %138, %123
  %158 = phi i32 [ %152, %154 ], [ 0, %151 ], [ %55, %123 ], [ %55, %138 ]
  %159 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 10, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load i32, ptr %7, align 4, !tbaa !13
  %164 = or i32 %163, 512
  store i32 %164, ptr %7, align 4, !tbaa !13
  %165 = tail call i32 @llvm.umax.i32(i32 %158, i32 %160)
  %166 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 8, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !33
  br label %168

168:                                              ; preds = %162, %110
  %169 = phi i32 [ %167, %162 ], [ %59, %110 ]
  %170 = phi i32 [ %165, %162 ], [ %112, %110 ]
  %171 = tail call i32 @llvm.umin.i32(i32 %170, i32 %169)
  br label %172

172:                                              ; preds = %168, %157, %119
  %173 = phi i32 [ %55, %119 ], [ %158, %157 ], [ %171, %168 ]
  %174 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 8, i32 1
  %175 = load i32, ptr %174, align 8, !tbaa !33
  %176 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !31
  %178 = icmp ult i32 %175, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %3) #27
  %180 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !27
  call void (ptr, ptr, ...) @str_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.20, ptr noundef %181) #27
  %182 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 8
  %183 = load i32, ptr %174, align 8, !tbaa !33
  %184 = icmp eq i32 %183, 1
  %185 = select i1 %184, i32 109, i32 110
  call void (ptr, ptr, ...) @str_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.21, i32 noundef %185) #27
  %186 = load ptr, ptr %182, align 8, !tbaa !34
  call void @expr_gstr_print(ptr noundef %186, ptr noundef nonnull %3) #27
  call void (ptr, ptr, ...) @str_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.22) #27
  %187 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9
  %188 = load ptr, ptr %187, align 8, !tbaa !35
  call void @expr_gstr_print_revdep(ptr noundef %188, ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @.str.23) #27
  %189 = load ptr, ptr %187, align 8, !tbaa !35
  call void @expr_gstr_print_revdep(ptr noundef %189, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @.str.24) #27
  %190 = call ptr @str_get(ptr noundef nonnull %3) #27
  %191 = load ptr, ptr @stderr, align 8, !tbaa !16
  %192 = call i32 @fputs(ptr noundef %190, ptr noundef %191) #28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  %193 = load i32, ptr %176, align 8, !tbaa !31
  br label %194

194:                                              ; preds = %179, %172
  %195 = phi i32 [ %177, %172 ], [ %193, %179 ]
  %196 = call i32 @llvm.umax.i32(i32 %173, i32 %195)
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %257

198:                                              ; preds = %194
  %199 = load i32, ptr %43, align 8, !tbaa !5
  switch i32 %199, label %257 [
    i32 2, label %200
    i32 1, label %213
  ]

200:                                              ; preds = %198
  %201 = load i32, ptr %7, align 4, !tbaa !13
  %202 = and i32 %201, 32
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %200
  %205 = load i32, ptr %58, align 8, !tbaa !14
  %206 = icmp eq i32 %205, 2
  %207 = load i32, ptr @modules_val, align 4
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %206, i1 true, i1 %208
  br i1 %209, label %213, label %257

210:                                              ; preds = %200
  %211 = load i32, ptr @modules_val, align 4, !tbaa !15
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %257

213:                                              ; preds = %210, %204, %198
  br label %257

214:                                              ; preds = %64, %64, %64
  br i1 %60, label %222, label %215

215:                                              ; preds = %214
  %216 = load i32, ptr %7, align 4, !tbaa !13
  %217 = and i32 %216, 65536
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !36
  br label %257

222:                                              ; preds = %215, %214
  %223 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %224 = load ptr, ptr %223, align 8, !tbaa !16
  %225 = icmp eq ptr %224, null
  br i1 %225, label %257, label %226

226:                                              ; preds = %237, %222
  %227 = phi ptr [ %238, %237 ], [ %224, %222 ]
  %228 = getelementptr inbounds %struct.property, ptr %227, i64 0, i32 1
  %229 = load i32, ptr %228, align 8, !tbaa !17
  %230 = icmp eq i32 %229, 4
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.property, ptr %227, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !19
  %234 = tail call i32 @expr_calc_value(ptr noundef %233) #27
  %235 = getelementptr inbounds %struct.property, ptr %227, i64 0, i32 3, i32 1
  store i32 %234, ptr %235, align 8, !tbaa !20
  %236 = icmp eq i32 %234, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %231, %226
  %238 = load ptr, ptr %227, align 8, !tbaa !16
  %239 = icmp eq ptr %238, null
  br i1 %239, label %257, label %226

240:                                              ; preds = %231
  %241 = getelementptr inbounds %struct.property, ptr %227, i64 0, i32 4
  %242 = load ptr, ptr %241, align 8, !tbaa !21
  %243 = icmp eq ptr %242, null
  br i1 %243, label %257, label %244

244:                                              ; preds = %240
  %245 = load i32, ptr %242, align 8, !tbaa !23
  %246 = and i32 %245, -2
  %247 = icmp eq i32 %246, 10
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.expr, ptr %242, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !15
  %251 = icmp eq ptr %250, null
  br i1 %251, label %257, label %252

252:                                              ; preds = %248
  %253 = load i32, ptr %7, align 4, !tbaa !13
  %254 = or i32 %253, 512
  store i32 %254, ptr %7, align 4, !tbaa !13
  tail call void @sym_calc_value(ptr noundef nonnull %250)
  %255 = getelementptr inbounds %struct.symbol, ptr %250, i64 0, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !28
  br label %257

257:                                              ; preds = %252, %248, %244, %240, %237, %222, %219, %213, %210, %204, %198, %194, %93, %64
  %258 = phi ptr [ %221, %219 ], [ %54, %194 ], [ %256, %252 ], [ %54, %248 ], [ %54, %93 ], [ %54, %213 ], [ %54, %210 ], [ %54, %222 ], [ %54, %244 ], [ %54, %240 ], [ %54, %64 ], [ %54, %204 ], [ %54, %198 ], [ %54, %237 ]
  %259 = phi i32 [ %55, %219 ], [ %196, %194 ], [ %55, %252 ], [ %55, %248 ], [ %104, %93 ], [ 2, %213 ], [ 1, %210 ], [ %55, %222 ], [ %55, %244 ], [ %55, %240 ], [ %55, %64 ], [ 1, %204 ], [ 1, %198 ], [ %55, %237 ]
  store ptr %258, ptr %42, align 8, !tbaa.struct !25
  store i32 %259, ptr %65, align 8, !tbaa.struct !26
  store i32 %56, ptr %66, align 4, !tbaa.struct !22
  %260 = load i32, ptr %7, align 4, !tbaa !13
  %261 = and i32 %260, 16
  %262 = icmp ne i32 %261, 0
  %263 = icmp eq i32 %259, 2
  %264 = select i1 %262, i1 %263, i1 false
  br i1 %264, label %265, label %370

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  br label %267

267:                                              ; preds = %271, %265
  %268 = phi ptr [ %266, %265 ], [ %269, %271 ]
  %269 = load ptr, ptr %268, align 8, !tbaa !16
  %270 = icmp eq ptr %269, null
  br i1 %270, label %275, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.property, ptr %269, i64 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !17
  %274 = icmp eq i32 %273, 5
  br i1 %274, label %275, label %267

275:                                              ; preds = %271, %267
  %276 = getelementptr inbounds %struct.property, ptr %269, i64 0, i32 4
  %277 = load ptr, ptr %276, align 8, !tbaa !15
  %278 = icmp eq ptr %277, null
  br i1 %278, label %301, label %279

279:                                              ; preds = %293, %275
  %280 = phi ptr [ %296, %293 ], [ %277, %275 ]
  %281 = phi i32 [ %294, %293 ], [ %260, %275 ]
  %282 = getelementptr inbounds %struct.expr, ptr %280, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !15
  %284 = icmp eq ptr %283, null
  br i1 %284, label %298, label %285

285:                                              ; preds = %279
  call fastcc void @sym_calc_visibility(ptr noundef nonnull %283) #27
  %286 = getelementptr inbounds %struct.symbol, ptr %283, i64 0, i32 5
  %287 = load i32, ptr %286, align 8, !tbaa !14
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %293, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.symbol, ptr %283, i64 0, i32 6
  %291 = load i32, ptr %290, align 4, !tbaa !13
  %292 = and i32 %291, %281
  br label %293

293:                                              ; preds = %289, %285
  %294 = phi i32 [ %292, %289 ], [ %281, %285 ]
  %295 = getelementptr inbounds %struct.expr, ptr %280, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !15
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %279

298:                                              ; preds = %293, %279
  %299 = phi i32 [ %281, %279 ], [ %294, %293 ]
  %300 = load i32, ptr %7, align 4, !tbaa !13
  br label %301

301:                                              ; preds = %298, %275
  %302 = phi i32 [ %260, %275 ], [ %300, %298 ]
  %303 = phi i32 [ %260, %275 ], [ %299, %298 ]
  %304 = or i32 %303, -65537
  %305 = and i32 %304, %302
  store i32 %305, ptr %7, align 4, !tbaa !13
  %306 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 4
  %307 = load ptr, ptr %306, align 8, !tbaa !36
  %308 = icmp eq ptr %307, null
  br i1 %308, label %313, label %309

309:                                              ; preds = %301
  %310 = getelementptr inbounds %struct.symbol, ptr %307, i64 0, i32 5
  %311 = load i32, ptr %310, align 8, !tbaa !14
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %368

313:                                              ; preds = %309, %301
  %314 = load ptr, ptr %266, align 8, !tbaa !16
  %315 = icmp eq ptr %314, null
  br i1 %315, label %341, label %316

316:                                              ; preds = %338, %313
  %317 = phi ptr [ %339, %338 ], [ %314, %313 ]
  %318 = getelementptr inbounds %struct.property, ptr %317, i64 0, i32 1
  %319 = load i32, ptr %318, align 8, !tbaa !17
  %320 = icmp eq i32 %319, 4
  br i1 %320, label %321, label %338

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.property, ptr %317, i64 0, i32 3
  %323 = load ptr, ptr %322, align 8, !tbaa !19
  %324 = call i32 @expr_calc_value(ptr noundef %323) #27
  %325 = getelementptr inbounds %struct.property, ptr %317, i64 0, i32 3, i32 1
  store i32 %324, ptr %325, align 8, !tbaa !20
  %326 = icmp eq i32 %324, 0
  br i1 %326, label %338, label %327

327:                                              ; preds = %321
  %328 = getelementptr inbounds %struct.property, ptr %317, i64 0, i32 4
  %329 = load ptr, ptr %328, align 8, !tbaa !21, !nonnull !22
  %330 = load i32, ptr %329, align 8, !tbaa !23
  %331 = and i32 %330, -2
  %332 = icmp eq i32 %331, 10
  call void @llvm.assume(i1 %332) #27
  %333 = getelementptr inbounds %struct.expr, ptr %329, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !15
  %335 = getelementptr inbounds %struct.symbol, ptr %334, i64 0, i32 5
  %336 = load i32, ptr %335, align 8, !tbaa !14
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %368

338:                                              ; preds = %327, %321, %316
  %339 = load ptr, ptr %317, align 8, !tbaa !16
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %316

341:                                              ; preds = %338, %313
  br label %342

342:                                              ; preds = %346, %341
  %343 = phi ptr [ %344, %346 ], [ %266, %341 ]
  %344 = load ptr, ptr %343, align 8, !tbaa !16
  %345 = icmp eq ptr %344, null
  br i1 %345, label %350, label %346

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.property, ptr %344, i64 0, i32 1
  %348 = load i32, ptr %347, align 8, !tbaa !17
  %349 = icmp eq i32 %348, 5
  br i1 %349, label %350, label %342

350:                                              ; preds = %346, %342
  %351 = getelementptr inbounds %struct.property, ptr %344, i64 0, i32 4
  %352 = load ptr, ptr %351, align 8, !tbaa !15
  %353 = icmp eq ptr %352, null
  br i1 %353, label %367, label %358

354:                                              ; preds = %363
  %355 = getelementptr inbounds %struct.expr, ptr %359, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !15
  %357 = icmp eq ptr %356, null
  br i1 %357, label %367, label %358

358:                                              ; preds = %354, %350
  %359 = phi ptr [ %356, %354 ], [ %352, %350 ]
  %360 = getelementptr inbounds %struct.expr, ptr %359, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !15
  %362 = icmp eq ptr %361, null
  br i1 %362, label %367, label %363

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.symbol, ptr %361, i64 0, i32 5
  %365 = load i32, ptr %364, align 8, !tbaa !14
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %354, label %368

367:                                              ; preds = %358, %354, %350
  store i32 0, ptr %65, align 8, !tbaa !29
  br label %368

368:                                              ; preds = %367, %363, %327, %309
  %369 = phi ptr [ %307, %309 ], [ null, %367 ], [ %361, %363 ], [ %334, %327 ]
  store ptr %369, ptr %42, align 8, !tbaa !28
  br label %370

370:                                              ; preds = %368, %257
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #27
  %371 = load i32, ptr %43, align 8, !tbaa !5
  switch i32 %371, label %430 [
    i32 3, label %373
    i32 4, label %372
  ]

372:                                              ; preds = %370
  br label %373

373:                                              ; preds = %372, %370
  %374 = phi i32 [ 16, %372 ], [ 10, %370 ]
  %375 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %376 = load ptr, ptr %375, align 8, !tbaa !16
  %377 = icmp eq ptr %376, null
  br i1 %377, label %430, label %378

378:                                              ; preds = %389, %373
  %379 = phi ptr [ %390, %389 ], [ %376, %373 ]
  %380 = getelementptr inbounds %struct.property, ptr %379, i64 0, i32 1
  %381 = load i32, ptr %380, align 8, !tbaa !17
  %382 = icmp eq i32 %381, 8
  br i1 %382, label %383, label %389

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.property, ptr %379, i64 0, i32 3
  %385 = load ptr, ptr %384, align 8, !tbaa !19
  %386 = call i32 @expr_calc_value(ptr noundef %385) #27
  %387 = getelementptr inbounds %struct.property, ptr %379, i64 0, i32 3, i32 1
  store i32 %386, ptr %387, align 8, !tbaa !20
  %388 = icmp eq i32 %386, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %383, %378
  %390 = load ptr, ptr %379, align 8, !tbaa !16
  %391 = icmp eq ptr %390, null
  br i1 %391, label %430, label %378

392:                                              ; preds = %383
  %393 = load ptr, ptr %42, align 8, !tbaa !28
  %394 = call i64 @strtoll(ptr nocapture noundef %393, ptr noundef null, i32 noundef %374) #27
  %395 = getelementptr inbounds %struct.property, ptr %379, i64 0, i32 4
  %396 = load ptr, ptr %395, align 8, !tbaa !21
  %397 = getelementptr inbounds %struct.expr, ptr %396, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !15
  call void @sym_calc_value(ptr noundef %398) #27
  %399 = getelementptr inbounds %struct.symbol, ptr %398, i64 0, i32 2
  %400 = load i32, ptr %399, align 8, !tbaa !5
  switch i32 %400, label %403 [
    i32 3, label %401
    i32 4, label %402
  ]

401:                                              ; preds = %392
  br label %403

402:                                              ; preds = %392
  br label %403

403:                                              ; preds = %402, %401, %392
  %404 = phi i32 [ %374, %392 ], [ 16, %402 ], [ 10, %401 ]
  %405 = getelementptr inbounds %struct.symbol, ptr %398, i64 0, i32 3
  %406 = load ptr, ptr %405, align 8, !tbaa !28
  %407 = call i64 @strtoll(ptr nocapture noundef %406, ptr noundef null, i32 noundef %404) #27
  %408 = icmp slt i64 %394, %407
  br i1 %408, label %423, label %409

409:                                              ; preds = %403
  %410 = load ptr, ptr %395, align 8, !tbaa !21
  %411 = getelementptr inbounds %struct.expr, ptr %410, i64 0, i32 2
  %412 = load ptr, ptr %411, align 8, !tbaa !15
  call void @sym_calc_value(ptr noundef %412) #27
  %413 = getelementptr inbounds %struct.symbol, ptr %412, i64 0, i32 2
  %414 = load i32, ptr %413, align 8, !tbaa !5
  switch i32 %414, label %417 [
    i32 3, label %415
    i32 4, label %416
  ]

415:                                              ; preds = %409
  br label %417

416:                                              ; preds = %409
  br label %417

417:                                              ; preds = %416, %415, %409
  %418 = phi i32 [ %374, %409 ], [ 16, %416 ], [ 10, %415 ]
  %419 = getelementptr inbounds %struct.symbol, ptr %412, i64 0, i32 3
  %420 = load ptr, ptr %419, align 8, !tbaa !28
  %421 = call i64 @strtoll(ptr nocapture noundef %420, ptr noundef null, i32 noundef %418) #27
  %422 = icmp sgt i64 %394, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %417, %403
  %424 = phi i64 [ %421, %417 ], [ %407, %403 ]
  %425 = load i32, ptr %43, align 8, !tbaa !5
  %426 = icmp eq i32 %425, 3
  %427 = select i1 %426, ptr @.str.25, ptr @.str.26
  %428 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull %427, i64 noundef %424) #27
  %429 = call ptr @xstrdup(ptr noundef nonnull %2) #27
  store ptr %429, ptr %42, align 8, !tbaa !28
  br label %430

430:                                              ; preds = %423, %417, %389, %373, %370
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #27
  %431 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %4, ptr noundef nonnull dereferenceable(16) %42, i64 16)
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %487, label %433

433:                                              ; preds = %430
  %434 = load i32, ptr %7, align 4, !tbaa !13
  %435 = or i32 %434, 1024
  store i32 %435, ptr %7, align 4, !tbaa !13
  %436 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %437 = load ptr, ptr %436, align 8, !tbaa !16
  %438 = icmp eq ptr %437, null
  br i1 %438, label %451, label %439

439:                                              ; preds = %448, %433
  %440 = phi ptr [ %449, %448 ], [ %437, %433 ]
  %441 = getelementptr inbounds %struct.property, ptr %440, i64 0, i32 5
  %442 = load ptr, ptr %441, align 8, !tbaa !37
  %443 = icmp eq ptr %442, null
  br i1 %443, label %448, label %444

444:                                              ; preds = %439
  %445 = getelementptr inbounds %struct.menu, ptr %442, i64 0, i32 7
  %446 = load i32, ptr %445, align 8, !tbaa !38
  %447 = or i32 %446, 1
  store i32 %447, ptr %445, align 8, !tbaa !38
  br label %448

448:                                              ; preds = %444, %439
  %449 = load ptr, ptr %440, align 8, !tbaa !16
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %439

451:                                              ; preds = %448, %433
  %452 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  %453 = icmp eq ptr %452, %0
  br i1 %453, label %454, label %487

454:                                              ; preds = %482, %451
  %455 = phi i64 [ %483, %482 ], [ 0, %451 ]
  %456 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %455
  %457 = load ptr, ptr %456, align 8, !tbaa !16
  %458 = icmp eq ptr %457, null
  br i1 %458, label %482, label %459

459:                                              ; preds = %479, %454
  %460 = phi ptr [ %480, %479 ], [ %457, %454 ]
  %461 = getelementptr inbounds %struct.symbol, ptr %460, i64 0, i32 6
  %462 = load i32, ptr %461, align 4, !tbaa !13
  %463 = or i32 %462, 1024
  store i32 %463, ptr %461, align 4, !tbaa !13
  %464 = getelementptr inbounds %struct.symbol, ptr %460, i64 0, i32 7
  %465 = load ptr, ptr %464, align 8, !tbaa !16
  %466 = icmp eq ptr %465, null
  br i1 %466, label %479, label %467

467:                                              ; preds = %476, %459
  %468 = phi ptr [ %477, %476 ], [ %465, %459 ]
  %469 = getelementptr inbounds %struct.property, ptr %468, i64 0, i32 5
  %470 = load ptr, ptr %469, align 8, !tbaa !37
  %471 = icmp eq ptr %470, null
  br i1 %471, label %476, label %472

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.menu, ptr %470, i64 0, i32 7
  %474 = load i32, ptr %473, align 8, !tbaa !38
  %475 = or i32 %474, 1
  store i32 %475, ptr %473, align 8, !tbaa !38
  br label %476

476:                                              ; preds = %472, %467
  %477 = load ptr, ptr %468, align 8, !tbaa !16
  %478 = icmp eq ptr %477, null
  br i1 %478, label %479, label %467

479:                                              ; preds = %476, %459
  %480 = load ptr, ptr %460, align 8, !tbaa !16
  %481 = icmp eq ptr %480, null
  br i1 %481, label %482, label %459

482:                                              ; preds = %479, %454
  %483 = add nuw nsw i64 %455, 1
  %484 = icmp eq i64 %483, 9973
  br i1 %484, label %485, label %454

485:                                              ; preds = %482
  %486 = load i32, ptr %65, align 8, !tbaa !29
  store i32 %486, ptr @modules_val, align 4, !tbaa !15
  br label %487

487:                                              ; preds = %485, %451, %430
  %488 = load i32, ptr %7, align 4, !tbaa !13
  %489 = and i32 %488, 16
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %552, label %491

491:                                              ; preds = %487
  %492 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  br label %493

493:                                              ; preds = %497, %491
  %494 = phi ptr [ %492, %491 ], [ %495, %497 ]
  %495 = load ptr, ptr %494, align 8, !tbaa !16
  %496 = icmp eq ptr %495, null
  br i1 %496, label %501, label %497

497:                                              ; preds = %493
  %498 = getelementptr inbounds %struct.property, ptr %495, i64 0, i32 1
  %499 = load i32, ptr %498, align 8, !tbaa !17
  %500 = icmp eq i32 %499, 5
  br i1 %500, label %501, label %493

501:                                              ; preds = %497, %493
  %502 = getelementptr inbounds %struct.property, ptr %495, i64 0, i32 4
  %503 = load ptr, ptr %502, align 8, !tbaa !15
  %504 = icmp eq ptr %503, null
  br i1 %504, label %552, label %505

505:                                              ; preds = %546, %501
  %506 = phi ptr [ %548, %546 ], [ %503, %501 ]
  %507 = getelementptr inbounds %struct.expr, ptr %506, i64 0, i32 2
  %508 = load ptr, ptr %507, align 8, !tbaa !15
  %509 = icmp eq ptr %508, null
  br i1 %509, label %550, label %510

510:                                              ; preds = %505
  %511 = load i32, ptr %7, align 4, !tbaa !13
  %512 = and i32 %511, 512
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %523, label %514

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.symbol, ptr %508, i64 0, i32 5
  %516 = load i32, ptr %515, align 8, !tbaa !14
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %523, label %518

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.symbol, ptr %508, i64 0, i32 6
  %520 = load i32, ptr %519, align 4, !tbaa !13
  %521 = or i32 %520, 512
  store i32 %521, ptr %519, align 4, !tbaa !13
  %522 = load i32, ptr %7, align 4, !tbaa !13
  br label %523

523:                                              ; preds = %518, %514, %510
  %524 = phi i32 [ %522, %518 ], [ %511, %514 ], [ %511, %510 ]
  %525 = and i32 %524, 1024
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %546, label %527

527:                                              ; preds = %523
  %528 = getelementptr inbounds %struct.symbol, ptr %508, i64 0, i32 6
  %529 = load i32, ptr %528, align 4, !tbaa !13
  %530 = or i32 %529, 1024
  store i32 %530, ptr %528, align 4, !tbaa !13
  %531 = getelementptr inbounds %struct.symbol, ptr %508, i64 0, i32 7
  %532 = load ptr, ptr %531, align 8, !tbaa !16
  %533 = icmp eq ptr %532, null
  br i1 %533, label %546, label %534

534:                                              ; preds = %543, %527
  %535 = phi ptr [ %544, %543 ], [ %532, %527 ]
  %536 = getelementptr inbounds %struct.property, ptr %535, i64 0, i32 5
  %537 = load ptr, ptr %536, align 8, !tbaa !37
  %538 = icmp eq ptr %537, null
  br i1 %538, label %543, label %539

539:                                              ; preds = %534
  %540 = getelementptr inbounds %struct.menu, ptr %537, i64 0, i32 7
  %541 = load i32, ptr %540, align 8, !tbaa !38
  %542 = or i32 %541, 1
  store i32 %542, ptr %540, align 8, !tbaa !38
  br label %543

543:                                              ; preds = %539, %534
  %544 = load ptr, ptr %535, align 8, !tbaa !16
  %545 = icmp eq ptr %544, null
  br i1 %545, label %546, label %534

546:                                              ; preds = %543, %527, %523
  %547 = getelementptr inbounds %struct.expr, ptr %506, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !15
  %549 = icmp eq ptr %548, null
  br i1 %549, label %550, label %505

550:                                              ; preds = %546, %505
  %551 = load i32, ptr %7, align 4, !tbaa !13
  br label %552

552:                                              ; preds = %550, %501, %487
  %553 = phi i32 [ %551, %550 ], [ %488, %501 ], [ %488, %487 ]
  %554 = and i32 %553, 4096
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %558, label %556

556:                                              ; preds = %552
  %557 = and i32 %553, -513
  store i32 %557, ptr %7, align 4, !tbaa !13
  br label %558

558:                                              ; preds = %556, %552
  %559 = phi i32 [ %557, %556 ], [ %553, %552 ]
  %560 = and i32 %559, 1048576
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %563, label %562

562:                                              ; preds = %558
  call void @set_all_choice_values(ptr noundef nonnull %0) #27
  br label %563

563:                                              ; preds = %562, %558, %49, %6, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @sym_calc_visibility(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !13
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %8

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 8, !tbaa !23
  %22 = and i32 %21, -2
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.expr, ptr %18, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  br label %27

27:                                               ; preds = %24, %20, %16, %1
  %28 = phi ptr [ null, %1 ], [ %26, %24 ], [ null, %20 ], [ null, %16 ]
  %29 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %73, label %32

32:                                               ; preds = %27
  %33 = icmp eq ptr %28, null
  %34 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %35 = getelementptr inbounds %struct.symbol, ptr %28, i64 0, i32 3, i32 1
  br label %36

36:                                               ; preds = %59, %32
  %37 = phi ptr [ %30, %32 ], [ %61, %59 ]
  %38 = phi i32 [ 0, %32 ], [ %60, %59 ]
  %39 = getelementptr inbounds %struct.property, ptr %37, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.property, ptr %37, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !19
  %45 = tail call i32 @expr_calc_value(ptr noundef %44) #27
  %46 = getelementptr inbounds %struct.property, ptr %37, i64 0, i32 3, i32 1
  store i32 %45, ptr %46, align 8, !tbaa !20
  br i1 %33, label %56, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %34, align 8, !tbaa !5
  %49 = icmp eq i32 %48, 2
  %50 = icmp eq i32 %45, 1
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, ptr %35, align 8, !tbaa !29
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, ptr %46, align 8, !tbaa !20
  br label %56

56:                                               ; preds = %55, %52, %47, %42
  %57 = phi i32 [ 0, %55 ], [ 1, %52 ], [ %45, %47 ], [ %45, %42 ]
  %58 = tail call i32 @llvm.umax.i32(i32 %38, i32 %57)
  br label %59

59:                                               ; preds = %56, %36
  %60 = phi i32 [ %58, %56 ], [ %38, %36 ]
  %61 = load ptr, ptr %37, align 8, !tbaa !16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %36

63:                                               ; preds = %59
  %64 = icmp eq i32 %60, 1
  br i1 %64, label %65, label %73

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !5
  %68 = icmp ne i32 %67, 2
  %69 = load i32, ptr @modules_val, align 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %68, i1 true, i1 %70
  %72 = select i1 %71, i32 2, i32 1
  br label %73

73:                                               ; preds = %65, %63, %27
  %74 = phi i32 [ %60, %63 ], [ %72, %65 ], [ 0, %27 ]
  %75 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !14
  %77 = icmp eq i32 %76, %74
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, ptr %2, align 4, !tbaa !13
  br label %97

80:                                               ; preds = %73
  store i32 %74, ptr %75, align 8, !tbaa !14
  %81 = load i32, ptr %2, align 4, !tbaa !13
  %82 = or i32 %81, 1024
  store i32 %82, ptr %2, align 4, !tbaa !13
  %83 = load ptr, ptr %29, align 8, !tbaa !16
  %84 = icmp eq ptr %83, null
  br i1 %84, label %97, label %85

85:                                               ; preds = %94, %80
  %86 = phi ptr [ %95, %94 ], [ %83, %80 ]
  %87 = getelementptr inbounds %struct.property, ptr %86, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !37
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.menu, ptr %88, i64 0, i32 7
  %92 = load i32, ptr %91, align 8, !tbaa !38
  %93 = or i32 %92, 1
  store i32 %93, ptr %91, align 8, !tbaa !38
  br label %94

94:                                               ; preds = %90, %85
  %95 = load ptr, ptr %86, align 8, !tbaa !16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %85

97:                                               ; preds = %94, %80, %78
  %98 = phi i32 [ %79, %78 ], [ %82, %80 ], [ %82, %94 ]
  %99 = and i32 %98, 32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %239

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !34
  %104 = icmp eq ptr %103, null
  br i1 %104, label %125, label %105

105:                                              ; preds = %101
  %106 = tail call i32 @expr_calc_value(ptr noundef nonnull %103) #27
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !5
  switch i32 %110, label %125 [
    i32 2, label %111
    i32 1, label %124
  ]

111:                                              ; preds = %108
  %112 = load i32, ptr %2, align 4, !tbaa !13
  %113 = and i32 %112, 32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %75, align 8, !tbaa !14
  %117 = icmp eq i32 %116, 2
  %118 = load i32, ptr @modules_val, align 4
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %124, label %125

121:                                              ; preds = %111
  %122 = load i32, ptr @modules_val, align 4, !tbaa !15
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121, %115, %108
  br label %125

125:                                              ; preds = %124, %121, %115, %108, %105, %101
  %126 = phi i32 [ %106, %105 ], [ 2, %124 ], [ 2, %101 ], [ 1, %121 ], [ 1, %115 ], [ 1, %108 ]
  %127 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 8, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !33
  %129 = icmp eq i32 %128, %126
  br i1 %129, label %147, label %130

130:                                              ; preds = %125
  store i32 %126, ptr %127, align 8, !tbaa !33
  %131 = load i32, ptr %2, align 4, !tbaa !13
  %132 = or i32 %131, 1024
  store i32 %132, ptr %2, align 4, !tbaa !13
  %133 = load ptr, ptr %29, align 8, !tbaa !16
  %134 = icmp eq ptr %133, null
  br i1 %134, label %147, label %135

135:                                              ; preds = %144, %130
  %136 = phi ptr [ %145, %144 ], [ %133, %130 ]
  %137 = getelementptr inbounds %struct.property, ptr %136, i64 0, i32 5
  %138 = load ptr, ptr %137, align 8, !tbaa !37
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.menu, ptr %138, i64 0, i32 7
  %142 = load i32, ptr %141, align 8, !tbaa !38
  %143 = or i32 %142, 1
  store i32 %143, ptr %141, align 8, !tbaa !38
  br label %144

144:                                              ; preds = %140, %135
  %145 = load ptr, ptr %136, align 8, !tbaa !16
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %135

147:                                              ; preds = %144, %130, %125
  %148 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9
  %149 = load ptr, ptr %148, align 8, !tbaa !35
  %150 = icmp eq ptr %149, null
  br i1 %150, label %171, label %151

151:                                              ; preds = %147
  %152 = tail call i32 @expr_calc_value(ptr noundef nonnull %149) #27
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !5
  switch i32 %156, label %171 [
    i32 2, label %157
    i32 1, label %170
  ]

157:                                              ; preds = %154
  %158 = load i32, ptr %2, align 4, !tbaa !13
  %159 = and i32 %158, 32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %75, align 8, !tbaa !14
  %163 = icmp eq i32 %162, 2
  %164 = load i32, ptr @modules_val, align 4
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %163, i1 true, i1 %165
  br i1 %166, label %170, label %171

167:                                              ; preds = %157
  %168 = load i32, ptr @modules_val, align 4, !tbaa !15
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167, %161, %154
  br label %171

171:                                              ; preds = %170, %167, %161, %154, %151, %147
  %172 = phi i32 [ %152, %151 ], [ 2, %170 ], [ 0, %147 ], [ 1, %167 ], [ 1, %161 ], [ 1, %154 ]
  %173 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !31
  %175 = icmp eq i32 %174, %172
  br i1 %175, label %193, label %176

176:                                              ; preds = %171
  store i32 %172, ptr %173, align 8, !tbaa !31
  %177 = load i32, ptr %2, align 4, !tbaa !13
  %178 = or i32 %177, 1024
  store i32 %178, ptr %2, align 4, !tbaa !13
  %179 = load ptr, ptr %29, align 8, !tbaa !16
  %180 = icmp eq ptr %179, null
  br i1 %180, label %193, label %181

181:                                              ; preds = %190, %176
  %182 = phi ptr [ %191, %190 ], [ %179, %176 ]
  %183 = getelementptr inbounds %struct.property, ptr %182, i64 0, i32 5
  %184 = load ptr, ptr %183, align 8, !tbaa !37
  %185 = icmp eq ptr %184, null
  br i1 %185, label %190, label %186

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.menu, ptr %184, i64 0, i32 7
  %188 = load i32, ptr %187, align 8, !tbaa !38
  %189 = or i32 %188, 1
  store i32 %189, ptr %187, align 8, !tbaa !38
  br label %190

190:                                              ; preds = %186, %181
  %191 = load ptr, ptr %182, align 8, !tbaa !16
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %181

193:                                              ; preds = %190, %176, %171
  %194 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 10
  %195 = load ptr, ptr %194, align 8, !tbaa !41
  %196 = icmp eq ptr %195, null
  br i1 %196, label %217, label %197

197:                                              ; preds = %193
  %198 = tail call i32 @expr_calc_value(ptr noundef nonnull %195) #27
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %217

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %202 = load i32, ptr %201, align 8, !tbaa !5
  switch i32 %202, label %217 [
    i32 2, label %203
    i32 1, label %216
  ]

203:                                              ; preds = %200
  %204 = load i32, ptr %2, align 4, !tbaa !13
  %205 = and i32 %204, 32
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %203
  %208 = load i32, ptr %75, align 8, !tbaa !14
  %209 = icmp eq i32 %208, 2
  %210 = load i32, ptr @modules_val, align 4
  %211 = icmp eq i32 %210, 0
  %212 = select i1 %209, i1 true, i1 %211
  br i1 %212, label %216, label %217

213:                                              ; preds = %203
  %214 = load i32, ptr @modules_val, align 4, !tbaa !15
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213, %207, %200
  br label %217

217:                                              ; preds = %216, %213, %207, %200, %197, %193
  %218 = phi i32 [ %198, %197 ], [ 2, %216 ], [ 0, %193 ], [ 1, %213 ], [ 1, %207 ], [ 1, %200 ]
  %219 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 10, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !32
  %221 = icmp eq i32 %220, %218
  br i1 %221, label %239, label %222

222:                                              ; preds = %217
  store i32 %218, ptr %219, align 8, !tbaa !32
  %223 = load i32, ptr %2, align 4, !tbaa !13
  %224 = or i32 %223, 1024
  store i32 %224, ptr %2, align 4, !tbaa !13
  %225 = load ptr, ptr %29, align 8, !tbaa !16
  %226 = icmp eq ptr %225, null
  br i1 %226, label %239, label %227

227:                                              ; preds = %236, %222
  %228 = phi ptr [ %237, %236 ], [ %225, %222 ]
  %229 = getelementptr inbounds %struct.property, ptr %228, i64 0, i32 5
  %230 = load ptr, ptr %229, align 8, !tbaa !37
  %231 = icmp eq ptr %230, null
  br i1 %231, label %236, label %232

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.menu, ptr %230, i64 0, i32 7
  %234 = load i32, ptr %233, align 8, !tbaa !38
  %235 = or i32 %234, 1
  store i32 %235, ptr %233, align 8, !tbaa !38
  br label %236

236:                                              ; preds = %232, %227
  %237 = load ptr, ptr %228, align 8, !tbaa !16
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %227

239:                                              ; preds = %236, %222, %217, %97
  ret void
}

declare void @set_all_choice_values(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @sym_clear_all_valid() local_unnamed_addr #4 {
  br label %1

1:                                                ; preds = %27, %0
  %2 = phi i64 [ 0, %0 ], [ %28, %27 ]
  %3 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 16, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.symbol, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = and i32 %9, -129
  store i32 %10, ptr %8, align 4, !tbaa !13
  %11 = load ptr, ptr %7, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %1
  %14 = or i64 %2, 1
  %15 = icmp eq i64 %14, 9973
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %25, %20 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.symbol, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !13
  %24 = and i32 %23, -129
  store i32 %24, ptr %22, align 4, !tbaa !13
  %25 = load ptr, ptr %21, align 8, !tbaa !16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20

27:                                               ; preds = %20, %16
  %28 = add nuw nsw i64 %2, 2
  br label %1

29:                                               ; preds = %13
  tail call void @conf_set_changed(i1 noundef zeroext true) #27
  %30 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  tail call void @sym_calc_value(ptr noundef %30)
  ret void
}

declare void @conf_set_changed(i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @sym_tristate_within_range(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !13
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !14
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %6
  %16 = load i32, ptr @modules_val, align 4, !tbaa !15
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 1, i32 2
  br label %19

19:                                               ; preds = %15, %11, %2
  %20 = phi i32 [ %4, %2 ], [ 1, %11 ], [ %18, %15 ]
  %21 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !14
  %23 = icmp eq i32 %22, 0
  %24 = add i32 %20, -3
  %25 = icmp ult i32 %24, -2
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %48, label %27

27:                                               ; preds = %19
  %28 = icmp eq i32 %20, 1
  %29 = icmp eq i32 %1, 1
  %30 = and i1 %29, %28
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !31
  %34 = icmp ugt i32 %22, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !13
  %38 = and i32 %37, 32
  %39 = icmp ne i32 %38, 0
  %40 = icmp eq i32 %22, 2
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = icmp eq i32 %1, 2
  br label %48

44:                                               ; preds = %35
  %45 = icmp ule i32 %33, %1
  %46 = icmp uge i32 %22, %1
  %47 = select i1 %45, i1 %46, i1 false
  br label %48

48:                                               ; preds = %44, %42, %31, %27, %19
  %49 = phi i1 [ %43, %42 ], [ false, %19 ], [ false, %27 ], [ false, %31 ], [ %47, %44 ]
  ret i1 %49
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @sym_set_tristate_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 3, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !29
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !13
  br label %55

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !13
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !14
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = load i32, ptr @modules_val, align 4, !tbaa !15
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 1, i32 2
  br label %26

26:                                               ; preds = %22, %18, %9
  %27 = phi i32 [ %11, %9 ], [ 1, %18 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !14
  %30 = icmp eq i32 %29, 0
  %31 = add i32 %27, -3
  %32 = icmp ult i32 %31, -2
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %170, label %34

34:                                               ; preds = %26
  %35 = icmp eq i32 %27, 1
  %36 = icmp eq i32 %1, 1
  %37 = and i1 %36, %35
  br i1 %37, label %170, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !31
  %41 = icmp ugt i32 %29, %40
  br i1 %41, label %42, label %170

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !13
  %45 = and i32 %44, 32
  %46 = icmp ne i32 %45, 0
  %47 = icmp eq i32 %29, 2
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = icmp eq i32 %1, 2
  br i1 %50, label %55, label %170

51:                                               ; preds = %42
  %52 = icmp ule i32 %40, %1
  %53 = icmp uge i32 %29, %1
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %170

55:                                               ; preds = %51, %49, %6
  %56 = phi i32 [ %8, %6 ], [ %44, %49 ], [ %44, %51 ]
  %57 = and i32 %56, 65536
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %61 = or i32 %56, 66560
  store i32 %61, ptr %60, align 4, !tbaa !13
  %62 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %74, %59
  %66 = phi ptr [ %75, %74 ], [ %63, %59 ]
  %67 = getelementptr inbounds %struct.property, ptr %66, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !37
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.menu, ptr %68, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !38
  %73 = or i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !38
  br label %74

74:                                               ; preds = %70, %65
  %75 = load ptr, ptr %66, align 8, !tbaa !16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %65

77:                                               ; preds = %74, %59, %55
  %78 = phi i32 [ %61, %59 ], [ %56, %55 ], [ %61, %74 ]
  %79 = and i32 %78, 32
  %80 = icmp ne i32 %79, 0
  %81 = icmp eq i32 %1, 2
  %82 = and i1 %81, %80
  br i1 %82, label %83, label %138

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  br label %85

85:                                               ; preds = %89, %83
  %86 = phi ptr [ %84, %83 ], [ %87, %89 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !16
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.property, ptr %87, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !17
  %92 = icmp eq i32 %91, 5
  br i1 %92, label %93, label %85

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds %struct.property, ptr %87, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !21
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %95, align 8, !tbaa !23
  %99 = and i32 %98, -2
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.expr, ptr %95, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !15
  br label %104

104:                                              ; preds = %101, %97, %93
  %105 = phi ptr [ %103, %101 ], [ null, %97 ], [ null, %93 ]
  %106 = getelementptr inbounds %struct.symbol, ptr %105, i64 0, i32 4
  store ptr %0, ptr %106, align 8, !tbaa !36
  %107 = getelementptr inbounds %struct.symbol, ptr %105, i64 0, i32 6
  %108 = load i32, ptr %107, align 4, !tbaa !13
  %109 = or i32 %108, 65536
  store i32 %109, ptr %107, align 4, !tbaa !13
  %110 = getelementptr inbounds %struct.symbol, ptr %105, i64 0, i32 7
  br label %111

111:                                              ; preds = %115, %104
  %112 = phi ptr [ %110, %104 ], [ %113, %115 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !16
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.property, ptr %113, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !17
  %118 = icmp eq i32 %117, 5
  br i1 %118, label %119, label %111

119:                                              ; preds = %115, %111
  %120 = getelementptr inbounds %struct.property, ptr %113, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !15
  %122 = icmp eq ptr %121, null
  br i1 %122, label %138, label %123

123:                                              ; preds = %134, %119
  %124 = phi ptr [ %136, %134 ], [ %121, %119 ]
  %125 = getelementptr inbounds %struct.expr, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !15
  %127 = getelementptr inbounds %struct.symbol, ptr %126, i64 0, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !14
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.symbol, ptr %126, i64 0, i32 6
  %132 = load i32, ptr %131, align 4, !tbaa !13
  %133 = or i32 %132, 65536
  store i32 %133, ptr %131, align 4, !tbaa !13
  br label %134

134:                                              ; preds = %130, %123
  %135 = getelementptr inbounds %struct.expr, ptr %124, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !15
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %123

138:                                              ; preds = %134, %119, %77
  %139 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 4, i64 0, i32 1
  store i32 %1, ptr %139, align 8, !tbaa !30
  br i1 %5, label %170, label %140

140:                                              ; preds = %166, %138
  %141 = phi i64 [ %167, %166 ], [ 0, %138 ]
  %142 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %141
  %143 = load ptr, ptr %142, align 16, !tbaa !16
  %144 = icmp eq ptr %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %145, %140
  %146 = phi ptr [ %150, %145 ], [ %143, %140 ]
  %147 = getelementptr inbounds %struct.symbol, ptr %146, i64 0, i32 6
  %148 = load i32, ptr %147, align 4, !tbaa !13
  %149 = and i32 %148, -129
  store i32 %149, ptr %147, align 4, !tbaa !13
  %150 = load ptr, ptr %146, align 8, !tbaa !16
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %145

152:                                              ; preds = %145, %140
  %153 = or i64 %141, 1
  %154 = icmp eq i64 %153, 9973
  br i1 %154, label %168, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %153
  %157 = load ptr, ptr %156, align 8, !tbaa !16
  %158 = icmp eq ptr %157, null
  br i1 %158, label %166, label %159

159:                                              ; preds = %159, %155
  %160 = phi ptr [ %164, %159 ], [ %157, %155 ]
  %161 = getelementptr inbounds %struct.symbol, ptr %160, i64 0, i32 6
  %162 = load i32, ptr %161, align 4, !tbaa !13
  %163 = and i32 %162, -129
  store i32 %163, ptr %161, align 4, !tbaa !13
  %164 = load ptr, ptr %160, align 8, !tbaa !16
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %159

166:                                              ; preds = %159, %155
  %167 = add nuw nsw i64 %141, 2
  br label %140

168:                                              ; preds = %152
  tail call void @conf_set_changed(i1 noundef zeroext true) #27
  %169 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  tail call void @sym_calc_value(ptr noundef %169) #27
  br label %170

170:                                              ; preds = %168, %138, %51, %49, %38, %34, %26
  %171 = phi i1 [ false, %51 ], [ true, %168 ], [ true, %138 ], [ false, %49 ], [ false, %26 ], [ false, %34 ], [ false, %38 ]
  ret i1 %171
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sym_toggle_tristate_value(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 3, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !29
  br label %4

4:                                                ; preds = %11, %1
  %5 = phi i32 [ %3, %1 ], [ %12, %11 ]
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [3 x i32], ptr @switch.table.sym_toggle_tristate_value, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ %5, %4 ], [ %10, %7 ]
  %13 = tail call zeroext i1 @sym_set_tristate_value(ptr noundef %0, i32 noundef %12)
  %14 = icmp eq i32 %3, %12
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %4

16:                                               ; preds = %11
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local zeroext i1 @sym_string_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !5
  switch i32 %4, label %70 [
    i32 5, label %78
    i32 3, label %5
    i32 4, label %39
    i32 1, label %65
    i32 2, label %65
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %1, align 1, !tbaa !15
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %1, i64 2
  %11 = load i8, ptr %6, align 1, !tbaa !15
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %10, %9 ], [ %6, %5 ]
  %14 = phi i8 [ %11, %9 ], [ %7, %5 ]
  %15 = tail call ptr @__ctype_b_loc() #29
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = sext i8 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !42
  %20 = and i16 %19, 2048
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %78, label %22

22:                                               ; preds = %12
  %23 = icmp eq i8 %14, 48
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8, ptr %13, align 1, !tbaa !15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %24, %22
  br label %28

28:                                               ; preds = %32, %27
  %29 = phi ptr [ %33, %32 ], [ %13, %27 ]
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %78, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %29, i64 1
  %34 = sext i8 %30 to i64
  %35 = getelementptr inbounds i16, ptr %16, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !42
  %37 = and i16 %36, 2048
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %78, label %28

39:                                               ; preds = %2
  %40 = load i8, ptr %1, align 1, !tbaa !15
  %41 = icmp eq i8 %40, 48
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, ptr %1, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !15
  switch i8 %44, label %48 [
    i8 120, label %45
    i8 88, label %45
  ]

45:                                               ; preds = %42, %42
  %46 = getelementptr inbounds i8, ptr %1, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !15
  br label %48

48:                                               ; preds = %45, %42, %39
  %49 = phi i8 [ %47, %45 ], [ %40, %39 ], [ 48, %42 ]
  %50 = phi ptr [ %46, %45 ], [ %1, %39 ], [ %1, %42 ]
  %51 = tail call ptr @__ctype_b_loc() #29
  %52 = load ptr, ptr %51, align 8, !tbaa !16
  br label %53

53:                                               ; preds = %61, %48
  %54 = phi ptr [ %50, %48 ], [ %62, %61 ]
  %55 = phi i8 [ %49, %48 ], [ %63, %61 ]
  %56 = sext i8 %55 to i64
  %57 = getelementptr inbounds i16, ptr %52, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !42
  %59 = and i16 %58, 4096
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds i8, ptr %54, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %71, label %53

65:                                               ; preds = %2, %2
  %66 = load i8, ptr %1, align 1, !tbaa !15
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, -77
  %69 = icmp ult i32 %68, 45
  br i1 %69, label %73, label %78

70:                                               ; preds = %2
  br label %78

71:                                               ; preds = %61, %53
  %72 = xor i1 %60, true
  br label %78

73:                                               ; preds = %65
  %74 = zext i32 %68 to i45
  %75 = lshr i45 -17579301138429, %74
  %76 = and i45 %75, 1
  %77 = icmp ne i45 %76, 0
  br label %78

78:                                               ; preds = %73, %71, %70, %65, %32, %28, %24, %12, %2
  %79 = phi i1 [ false, %70 ], [ true, %2 ], [ false, %12 ], [ false, %24 ], [ %72, %71 ], [ %77, %73 ], [ false, %65 ], [ %31, %32 ], [ %31, %28 ]
  ret i1 %79
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @sym_string_within_range(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !5
  switch i32 %4, label %169 [
    i32 5, label %5
    i32 3, label %7
    i32 4, label %53
    i32 1, label %99
    i32 2, label %99
  ]

5:                                                ; preds = %2
  %6 = tail call zeroext i1 @sym_string_valid(ptr noundef nonnull %0, ptr noundef %1)
  br label %169

7:                                                ; preds = %2
  %8 = tail call zeroext i1 @sym_string_valid(ptr noundef nonnull %0, ptr noundef %1)
  br i1 %8, label %9, label %169

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %169, label %13

13:                                               ; preds = %24, %9
  %14 = phi ptr [ %25, %24 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !17
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  %21 = tail call i32 @expr_calc_value(ptr noundef %20) #27
  %22 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 3, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !20
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %13
  %25 = load ptr, ptr %14, align 8, !tbaa !16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %169, label %13

27:                                               ; preds = %18
  %28 = tail call i64 @strtoll(ptr nocapture noundef %1, ptr noundef null, i32 noundef 10) #27
  %29 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = getelementptr inbounds %struct.expr, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  tail call void @sym_calc_value(ptr noundef %32) #27
  %33 = getelementptr inbounds %struct.symbol, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !5
  %35 = icmp eq i32 %34, 4
  %36 = select i1 %35, i32 16, i32 10
  %37 = getelementptr inbounds %struct.symbol, ptr %32, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !28
  %39 = tail call i64 @strtoll(ptr nocapture noundef %38, ptr noundef null, i32 noundef %36) #27
  %40 = icmp slt i64 %28, %39
  br i1 %40, label %169, label %41

41:                                               ; preds = %27
  %42 = load ptr, ptr %29, align 8, !tbaa !21
  %43 = getelementptr inbounds %struct.expr, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  tail call void @sym_calc_value(ptr noundef %44) #27
  %45 = getelementptr inbounds %struct.symbol, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !5
  %47 = icmp eq i32 %46, 4
  %48 = select i1 %47, i32 16, i32 10
  %49 = getelementptr inbounds %struct.symbol, ptr %44, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !28
  %51 = tail call i64 @strtoll(ptr nocapture noundef %50, ptr noundef null, i32 noundef %48) #27
  %52 = icmp sle i64 %28, %51
  br label %169

53:                                               ; preds = %2
  %54 = tail call zeroext i1 @sym_string_valid(ptr noundef nonnull %0, ptr noundef %1)
  br i1 %54, label %55, label %169

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %169, label %59

59:                                               ; preds = %70, %55
  %60 = phi ptr [ %71, %70 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.property, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !17
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.property, ptr %60, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !19
  %67 = tail call i32 @expr_calc_value(ptr noundef %66) #27
  %68 = getelementptr inbounds %struct.property, ptr %60, i64 0, i32 3, i32 1
  store i32 %67, ptr %68, align 8, !tbaa !20
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %59
  %71 = load ptr, ptr %60, align 8, !tbaa !16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %169, label %59

73:                                               ; preds = %64
  %74 = tail call i64 @strtoll(ptr nocapture noundef %1, ptr noundef null, i32 noundef 16) #27
  %75 = getelementptr inbounds %struct.property, ptr %60, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !21
  %77 = getelementptr inbounds %struct.expr, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !15
  tail call void @sym_calc_value(ptr noundef %78) #27
  %79 = getelementptr inbounds %struct.symbol, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !5
  %81 = icmp eq i32 %80, 3
  %82 = select i1 %81, i32 10, i32 16
  %83 = getelementptr inbounds %struct.symbol, ptr %78, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !28
  %85 = tail call i64 @strtoll(ptr nocapture noundef %84, ptr noundef null, i32 noundef %82) #27
  %86 = icmp slt i64 %74, %85
  br i1 %86, label %169, label %87

87:                                               ; preds = %73
  %88 = load ptr, ptr %75, align 8, !tbaa !21
  %89 = getelementptr inbounds %struct.expr, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !15
  tail call void @sym_calc_value(ptr noundef %90) #27
  %91 = getelementptr inbounds %struct.symbol, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !5
  %93 = icmp eq i32 %92, 3
  %94 = select i1 %93, i32 10, i32 16
  %95 = getelementptr inbounds %struct.symbol, ptr %90, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !28
  %97 = tail call i64 @strtoll(ptr nocapture noundef %96, ptr noundef null, i32 noundef %94) #27
  %98 = icmp sle i64 %74, %97
  br label %169

99:                                               ; preds = %2, %2
  %100 = load i8, ptr %1, align 1, !tbaa !15
  %101 = sext i8 %100 to i32
  switch i32 %101, label %169 [
    i32 121, label %102
    i32 89, label %102
    i32 109, label %121
    i32 77, label %121
    i32 110, label %152
    i32 78, label %152
  ]

102:                                              ; preds = %99, %99
  %103 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %104 = load i32, ptr %103, align 8, !tbaa !14
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %169, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9, i32 1
  %108 = load i32, ptr %107, align 8, !tbaa !31
  %109 = icmp ugt i32 %104, %108
  br i1 %109, label %110, label %169

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %112 = load i32, ptr %111, align 4, !tbaa !13
  %113 = and i32 %112, 32
  %114 = icmp ne i32 %113, 0
  %115 = icmp eq i32 %104, 2
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %169, label %117

117:                                              ; preds = %110
  %118 = icmp ult i32 %108, 3
  %119 = icmp ugt i32 %104, 1
  %120 = select i1 %118, i1 %119, i1 false
  br label %169

121:                                              ; preds = %99, %99
  %122 = icmp eq i32 %4, 2
  br i1 %122, label %123, label %169

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %125 = load i32, ptr %124, align 4, !tbaa !13
  %126 = and i32 %125, 32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %130 = load i32, ptr %129, align 8, !tbaa !14
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %169, label %132

132:                                              ; preds = %128, %123
  %133 = load i32, ptr @modules_val, align 4, !tbaa !15
  %134 = icmp eq i32 %133, 0
  %135 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %136 = load i32, ptr %135, align 8, !tbaa !14
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, i1 true, i1 %134
  br i1 %138, label %169, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !31
  %142 = icmp ugt i32 %136, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %145 = load i32, ptr %144, align 4, !tbaa !13
  %146 = and i32 %145, 32
  %147 = icmp eq i32 %146, 0
  %148 = icmp ne i32 %136, 2
  %149 = select i1 %147, i1 true, i1 %148
  %150 = icmp ult i32 %141, 2
  %151 = select i1 %149, i1 %150, i1 false
  br label %169

152:                                              ; preds = %99, %99
  %153 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %154 = load i32, ptr %153, align 8, !tbaa !14
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %169, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !31
  %159 = icmp ugt i32 %154, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %162 = load i32, ptr %161, align 4, !tbaa !13
  %163 = and i32 %162, 32
  %164 = icmp eq i32 %163, 0
  %165 = icmp ne i32 %154, 2
  %166 = select i1 %164, i1 true, i1 %165
  %167 = icmp eq i32 %158, 0
  %168 = select i1 %166, i1 %167, i1 false
  br label %169

169:                                              ; preds = %160, %156, %152, %143, %139, %132, %128, %121, %117, %110, %106, %102, %99, %87, %73, %70, %55, %53, %41, %27, %24, %9, %7, %5, %2
  %170 = phi i1 [ %6, %5 ], [ false, %7 ], [ false, %27 ], [ %52, %41 ], [ false, %53 ], [ false, %73 ], [ %98, %87 ], [ false, %99 ], [ false, %2 ], [ false, %102 ], [ false, %106 ], [ %120, %117 ], [ true, %110 ], [ false, %132 ], [ false, %139 ], [ false, %152 ], [ false, %156 ], [ true, %9 ], [ true, %55 ], [ false, %128 ], [ %168, %160 ], [ %151, %143 ], [ false, %121 ], [ true, %24 ], [ true, %70 ]
  ret i1 %170
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @sym_set_string_value(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load i8, ptr %1, align 1, !tbaa !15
  %9 = sext i8 %8 to i32
  switch i32 %9, label %102 [
    i32 121, label %10
    i32 89, label %10
    i32 109, label %12
    i32 77, label %12
    i32 110, label %14
    i32 78, label %14
  ]

10:                                               ; preds = %7, %7
  %11 = tail call zeroext i1 @sym_set_tristate_value(ptr noundef nonnull %0, i32 noundef 2)
  br label %102

12:                                               ; preds = %7, %7
  %13 = tail call zeroext i1 @sym_set_tristate_value(ptr noundef nonnull %0, i32 noundef 1)
  br label %102

14:                                               ; preds = %7, %7
  %15 = tail call zeroext i1 @sym_set_tristate_value(ptr noundef nonnull %0, i32 noundef 0)
  br label %102

16:                                               ; preds = %2
  %17 = tail call zeroext i1 @sym_string_within_range(ptr noundef nonnull %0, ptr noundef %1)
  br i1 %17, label %18, label %102

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = or i32 %20, 66560
  store i32 %24, ptr %19, align 4, !tbaa !13
  %25 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %37, %23
  %29 = phi ptr [ %38, %37 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.property, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !37
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.menu, ptr %31, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !38
  %36 = or i32 %35, 1
  store i32 %36, ptr %34, align 8, !tbaa !38
  br label %37

37:                                               ; preds = %33, %28
  %38 = load ptr, ptr %29, align 8, !tbaa !16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %28

40:                                               ; preds = %37, %23, %18
  %41 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !36
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %44 = load i32, ptr %3, align 8, !tbaa !5
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load i8, ptr %1, align 1, !tbaa !15
  %48 = icmp eq i8 %47, 48
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %1, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !15
  switch i8 %51, label %52 [
    i8 120, label %59
    i8 88, label %59
  ]

52:                                               ; preds = %49, %46
  %53 = shl i64 %43, 32
  %54 = add i64 %53, 12884901888
  %55 = ashr exact i64 %54, 32
  %56 = tail call ptr @xmalloc(i64 noundef %55) #27
  store ptr %56, ptr %41, align 8, !tbaa !36
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 48, ptr %56, align 1, !tbaa !15
  %58 = getelementptr inbounds i8, ptr %56, i64 2
  store i8 120, ptr %57, align 1, !tbaa !15
  br label %69

59:                                               ; preds = %49, %49, %40
  %60 = icmp eq ptr %42, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = tail call i32 @strcmp(ptr noundef nonnull %42, ptr noundef nonnull dereferenceable(1) %1) #30
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %102, label %64

64:                                               ; preds = %61, %59
  %65 = shl i64 %43, 32
  %66 = add i64 %65, 4294967296
  %67 = ashr exact i64 %66, 32
  %68 = tail call ptr @xmalloc(i64 noundef %67) #27
  store ptr %68, ptr %41, align 8, !tbaa !36
  br label %69

69:                                               ; preds = %64, %52
  %70 = phi ptr [ %58, %52 ], [ %68, %64 ]
  %71 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(1) %1) #27
  tail call void @free(ptr noundef %42) #27
  br label %72

72:                                               ; preds = %98, %69
  %73 = phi i64 [ 0, %69 ], [ %99, %98 ]
  %74 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 16, !tbaa !16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %77, %72
  %78 = phi ptr [ %82, %77 ], [ %75, %72 ]
  %79 = getelementptr inbounds %struct.symbol, ptr %78, i64 0, i32 6
  %80 = load i32, ptr %79, align 4, !tbaa !13
  %81 = and i32 %80, -129
  store i32 %81, ptr %79, align 4, !tbaa !13
  %82 = load ptr, ptr %78, align 8, !tbaa !16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %77

84:                                               ; preds = %77, %72
  %85 = or i64 %73, 1
  %86 = icmp eq i64 %85, 9973
  br i1 %86, label %100, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %85
  %89 = load ptr, ptr %88, align 8, !tbaa !16
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %91, %87
  %92 = phi ptr [ %96, %91 ], [ %89, %87 ]
  %93 = getelementptr inbounds %struct.symbol, ptr %92, i64 0, i32 6
  %94 = load i32, ptr %93, align 4, !tbaa !13
  %95 = and i32 %94, -129
  store i32 %95, ptr %93, align 4, !tbaa !13
  %96 = load ptr, ptr %92, align 8, !tbaa !16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %91

98:                                               ; preds = %91, %87
  %99 = add nuw nsw i64 %73, 2
  br label %72

100:                                              ; preds = %84
  tail call void @conf_set_changed(i1 noundef zeroext true) #27
  %101 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  tail call void @sym_calc_value(ptr noundef %101) #27
  br label %102

102:                                              ; preds = %100, %61, %16, %14, %12, %10, %7
  %103 = phi i1 [ true, %100 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ false, %7 ], [ false, %16 ], [ true, %61 ]
  ret i1 %103
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local ptr @sym_get_string_default(ptr noundef %0) local_unnamed_addr #4 {
  tail call fastcc void @sym_calc_visibility(ptr noundef %0)
  %2 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  tail call void @sym_calc_value(ptr noundef %2)
  %3 = load i32, ptr getelementptr inbounds (%struct.symbol, ptr @symbol_no, i64 0, i32 3, i32 1), align 8, !tbaa !29
  %4 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %18, %1
  %8 = phi ptr [ %19, %18 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.property, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !17
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.property, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = tail call i32 @expr_calc_value(ptr noundef %14) #27
  %16 = getelementptr inbounds %struct.property, ptr %8, i64 0, i32 3, i32 1
  store i32 %15, ptr %16, align 8, !tbaa !20
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %7
  %19 = load ptr, ptr %8, align 8, !tbaa !16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %7

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !5
  %24 = add i32 %23, -1
  %25 = icmp ult i32 %24, 2
  %26 = getelementptr inbounds %struct.property, ptr %8, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  br i1 %25, label %28, label %36

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.property, ptr %8, i64 0, i32 3, i32 1
  %30 = tail call i32 @expr_calc_value(ptr noundef %27) #27
  %31 = load i32, ptr %29, align 8, !tbaa !20
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load ptr, ptr %26, align 8, !tbaa !21
  %35 = tail call i32 @expr_calc_value(ptr noundef %34) #27
  br label %49

36:                                               ; preds = %21
  %37 = icmp eq ptr %27, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = load i32, ptr %27, align 8, !tbaa !23
  %40 = and i32 %39, -2
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.expr, ptr %27, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  tail call void @sym_calc_value(ptr noundef nonnull %44)
  %47 = getelementptr inbounds %struct.symbol, ptr %44, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !28
  br label %49

49:                                               ; preds = %46, %42, %38, %36, %33, %28, %18, %1
  %50 = phi ptr [ %48, %46 ], [ @.str.10, %42 ], [ @.str.10, %28 ], [ @.str.10, %33 ], [ @.str.10, %1 ], [ @.str.10, %38 ], [ @.str.10, %36 ], [ @.str.10, %18 ]
  %51 = phi i32 [ %3, %46 ], [ %3, %42 ], [ %31, %28 ], [ %35, %33 ], [ %3, %1 ], [ %3, %38 ], [ %3, %36 ], [ %3, %18 ]
  %52 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !31
  %54 = tail call i32 @llvm.umax.i32(i32 %51, i32 %53)
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %58 = load i32, ptr %57, align 4, !tbaa !13
  %59 = and i32 %58, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  %63 = getelementptr inbounds %struct.symbol, ptr %62, i64 0, i32 3, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !29
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 2, i32 1
  br label %67

67:                                               ; preds = %61, %56, %49
  %68 = phi i32 [ 1, %56 ], [ %54, %49 ], [ %66, %61 ]
  %69 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !5
  switch i32 %70, label %80 [
    i32 1, label %71
    i32 2, label %71
    i32 3, label %85
    i32 4, label %85
    i32 5, label %85
  ]

71:                                               ; preds = %67, %67
  %72 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 10, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !32
  %74 = icmp eq i32 %70, 1
  %75 = icmp eq i32 %68, 1
  %76 = select i1 %74, i1 %75, i1 false
  %77 = select i1 %76, i32 2, i32 %68
  %78 = tail call i32 @llvm.umax.i32(i32 %77, i32 %73)
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %81, label %85

80:                                               ; preds = %67
  br label %85

81:                                               ; preds = %71
  %82 = sext i32 %78 to i64
  %83 = shl i64 %82, 2
  %84 = call ptr @llvm.load.relative.i64(ptr @reltable.sym_get_string_default, i64 %83)
  br label %85

85:                                               ; preds = %81, %80, %71, %67, %67, %67
  %86 = phi ptr [ @.str.10, %80 ], [ %50, %67 ], [ %84, %81 ], [ %50, %71 ], [ %50, %67 ], [ %50, %67 ]
  ret ptr %86
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sym_get_string_value(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 3, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !29
  switch i32 %8, label %17 [
    i32 0, label %20
    i32 1, label %9
    i32 2, label %16
  ]

9:                                                ; preds = %6
  %10 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  tail call void @sym_calc_value(ptr noundef %10)
  %11 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 3, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !29
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.2, ptr @.str.1
  br label %20

16:                                               ; preds = %6
  br label %20

17:                                               ; preds = %6, %1
  %18 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  br label %20

20:                                               ; preds = %17, %16, %9, %6
  %21 = phi ptr [ %19, %17 ], [ @.str, %16 ], [ %15, %9 ], [ @.str.2, %6 ]
  ret ptr %21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @sym_is_changeable(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !31
  %6 = icmp ugt i32 %3, %5
  ret i1 %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sym_lookup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %64, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !15
  %6 = sext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  switch i32 %6, label %15 [
    i32 121, label %72
    i32 109, label %13
    i32 110, label %14
  ]

13:                                               ; preds = %12
  br label %72

14:                                               ; preds = %12
  br label %72

15:                                               ; preds = %12, %8
  %16 = sext i8 %5 to i32
  %17 = xor i32 %16, -2128831035
  %18 = mul i32 %17, 16777619
  %19 = icmp eq i8 %10, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %20, %15
  %21 = phi i32 [ %29, %20 ], [ %18, %15 ]
  %22 = phi ptr [ %24, %20 ], [ %0, %15 ]
  %23 = phi i8 [ %26, %20 ], [ %10, %15 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 1
  %25 = getelementptr inbounds i8, ptr %22, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !15
  %27 = sext i8 %23 to i32
  %28 = xor i32 %21, %27
  %29 = mul i32 %28, 16777619
  %30 = icmp eq i8 %26, 0
  br i1 %30, label %31, label %20

31:                                               ; preds = %20, %15
  %32 = phi i32 [ %18, %15 ], [ %29, %20 ]
  %33 = urem i32 %32, 9973
  %34 = zext i32 %33 to i64
  br label %35

35:                                               ; preds = %31, %4
  %36 = phi i64 [ 661, %4 ], [ %34, %31 ]
  %37 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %62, label %40

40:                                               ; preds = %35
  %41 = icmp eq i32 %1, 0
  br label %42

42:                                               ; preds = %59, %40
  %43 = phi ptr [ %38, %40 ], [ %60, %59 ]
  %44 = getelementptr inbounds %struct.symbol, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !27
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = tail call i32 @strcmp(ptr noundef nonnull %45, ptr noundef nonnull %0) #30
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.symbol, ptr %43, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !13
  br i1 %41, label %56, label %53

53:                                               ; preds = %50
  %54 = and i32 %52, %1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %72

56:                                               ; preds = %50
  %57 = and i32 %52, 17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %56, %53, %47, %42
  %60 = load ptr, ptr %43, align 8, !tbaa !16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %42

62:                                               ; preds = %59, %35
  %63 = tail call ptr @xstrdup(ptr noundef nonnull %0) #27
  br label %64

64:                                               ; preds = %62, %2
  %65 = phi ptr [ %63, %62 ], [ null, %2 ]
  %66 = phi i64 [ %36, %62 ], [ 0, %2 ]
  %67 = tail call ptr @xmalloc(i64 noundef 168) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %67, i8 0, i64 168, i1 false)
  %68 = getelementptr inbounds %struct.symbol, ptr %67, i64 0, i32 1
  store ptr %65, ptr %68, align 8, !tbaa !27
  %69 = getelementptr inbounds %struct.symbol, ptr %67, i64 0, i32 6
  store i32 %1, ptr %69, align 4, !tbaa !13
  %70 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %66
  %71 = load ptr, ptr %70, align 8, !tbaa !16
  store ptr %71, ptr %67, align 8, !tbaa !44
  store ptr %67, ptr %70, align 8, !tbaa !16
  br label %72

72:                                               ; preds = %64, %56, %53, %14, %13, %12
  %73 = phi ptr [ %67, %64 ], [ @symbol_no, %14 ], [ @symbol_mod, %13 ], [ @symbol_yes, %12 ], [ %43, %56 ], [ %43, %53 ]
  ret ptr %73
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @sym_find(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %55, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !15
  %5 = sext i8 %4 to i32
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  switch i32 %5, label %14 [
    i32 121, label %55
    i32 109, label %12
    i32 110, label %13
  ]

12:                                               ; preds = %11
  br label %55

13:                                               ; preds = %11
  br label %55

14:                                               ; preds = %11, %7
  %15 = sext i8 %4 to i32
  %16 = xor i32 %15, -2128831035
  %17 = mul i32 %16, 16777619
  %18 = icmp eq i8 %9, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %19, %14
  %20 = phi i32 [ %28, %19 ], [ %17, %14 ]
  %21 = phi ptr [ %23, %19 ], [ %0, %14 ]
  %22 = phi i8 [ %25, %19 ], [ %9, %14 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  %24 = getelementptr inbounds i8, ptr %21, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = sext i8 %22 to i32
  %27 = xor i32 %20, %26
  %28 = mul i32 %27, 16777619
  %29 = icmp eq i8 %25, 0
  br i1 %29, label %30, label %19

30:                                               ; preds = %19, %14
  %31 = phi i32 [ %17, %14 ], [ %28, %19 ]
  %32 = urem i32 %31, 9973
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %30, %3
  %35 = phi i64 [ 661, %3 ], [ %33, %30 ]
  %36 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %52, %34
  %40 = phi ptr [ %53, %52 ], [ %37, %34 ]
  %41 = getelementptr inbounds %struct.symbol, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !27
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @strcmp(ptr noundef nonnull %42, ptr noundef nonnull %0) #30
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.symbol, ptr %40, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !13
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %44, %39
  %53 = load ptr, ptr %40, align 8, !tbaa !16
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %39

55:                                               ; preds = %52, %47, %34, %13, %12, %11, %1
  %56 = phi ptr [ @symbol_no, %13 ], [ @symbol_mod, %12 ], [ null, %1 ], [ @symbol_yes, %11 ], [ null, %34 ], [ %40, %47 ], [ null, %52 ]
  ret ptr %56
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @sym_re_search(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca %struct.re_pattern_buffer, align 8
  %3 = alloca [1 x %struct.regmatch_t], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %159, label %6

6:                                                ; preds = %1
  %7 = call i32 @regcomp(ptr noundef nonnull %2, ptr noundef nonnull %0, i32 noundef 3) #27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %159

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 0, i32 1
  br label %11

11:                                               ; preds = %61, %9
  %12 = phi i64 [ 0, %9 ], [ %65, %61 ]
  %13 = phi i32 [ 0, %9 ], [ %64, %61 ]
  %14 = phi i32 [ 0, %9 ], [ %63, %61 ]
  %15 = phi ptr [ null, %9 ], [ %62, %61 ]
  %16 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %61, label %19

19:                                               ; preds = %55, %11
  %20 = phi ptr [ %59, %55 ], [ %17, %11 ]
  %21 = phi i32 [ %58, %55 ], [ %13, %11 ]
  %22 = phi i32 [ %57, %55 ], [ %14, %11 ]
  %23 = phi ptr [ %56, %55 ], [ %15, %11 ]
  %24 = getelementptr inbounds %struct.symbol, ptr %20, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !13
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.symbol, ptr %20, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %28
  %33 = call i32 @regexec(ptr noundef nonnull %2, ptr noundef nonnull %30, i64 noundef 1, ptr noundef nonnull %3, i32 noundef 0) #27
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = icmp slt i32 %22, %21
  br i1 %36, label %43, label %37

37:                                               ; preds = %35
  %38 = add nsw i32 %21, 16
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %39, 24
  %41 = call ptr @realloc(ptr noundef %23, i64 noundef %40) #31
  %42 = icmp eq ptr %41, null
  br i1 %42, label %156, label %43

43:                                               ; preds = %37, %35
  %44 = phi ptr [ %41, %37 ], [ %23, %35 ]
  %45 = phi i32 [ %38, %37 ], [ %21, %35 ]
  call void @sym_calc_value(ptr noundef nonnull %20)
  %46 = load i32, ptr %3, align 4, !tbaa !45
  %47 = sext i32 %46 to i64
  %48 = sext i32 %22 to i64
  %49 = getelementptr inbounds %struct.sym_match, ptr %44, i64 %48
  %50 = getelementptr inbounds %struct.sym_match, ptr %44, i64 %48, i32 1
  store i64 %47, ptr %50, align 8, !tbaa !47
  %51 = load i32, ptr %10, align 4, !tbaa !50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sym_match, ptr %44, i64 %48, i32 2
  store i64 %52, ptr %53, align 8, !tbaa !51
  %54 = add nsw i32 %22, 1
  store ptr %20, ptr %49, align 8, !tbaa !52
  br label %55

55:                                               ; preds = %43, %32, %28, %19
  %56 = phi ptr [ %23, %19 ], [ %23, %32 ], [ %44, %43 ], [ %23, %28 ]
  %57 = phi i32 [ %22, %19 ], [ %22, %32 ], [ %54, %43 ], [ %22, %28 ]
  %58 = phi i32 [ %21, %19 ], [ %21, %32 ], [ %45, %43 ], [ %21, %28 ]
  %59 = load ptr, ptr %20, align 8, !tbaa !16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %19

61:                                               ; preds = %55, %11
  %62 = phi ptr [ %15, %11 ], [ %56, %55 ]
  %63 = phi i32 [ %14, %11 ], [ %57, %55 ]
  %64 = phi i32 [ %13, %11 ], [ %58, %55 ]
  %65 = add nuw nsw i64 %12, 1
  %66 = icmp eq i64 %65, 9973
  br i1 %66, label %67, label %11

67:                                               ; preds = %61
  %68 = icmp eq ptr %62, null
  br i1 %68, label %156, label %69

69:                                               ; preds = %67
  %70 = sext i32 %63 to i64
  call void @qsort(ptr noundef nonnull %62, i64 noundef %70, i64 noundef 24, ptr noundef nonnull @sym_rel_comp) #27
  %71 = add nsw i32 %63, 1
  %72 = sext i32 %71 to i64
  %73 = shl nsw i64 %72, 3
  %74 = call noalias ptr @malloc(i64 noundef %73) #32
  %75 = icmp eq ptr %74, null
  br i1 %75, label %156, label %76

76:                                               ; preds = %69
  %77 = icmp sgt i32 %63, 0
  br i1 %77, label %78, label %154

78:                                               ; preds = %76
  %79 = zext i32 %63 to i64
  %80 = icmp ult i32 %63, 5
  br i1 %80, label %116, label %81

81:                                               ; preds = %78
  %82 = shl nuw nsw i64 %79, 3
  %83 = getelementptr i8, ptr %74, i64 %82
  %84 = mul nuw nsw i64 %79, 24
  %85 = add nsw i64 %84, -16
  %86 = getelementptr i8, ptr %62, i64 %85
  %87 = icmp ult ptr %74, %86
  %88 = icmp ult ptr %62, %83
  %89 = and i1 %87, %88
  br i1 %89, label %116, label %90

90:                                               ; preds = %81
  %91 = and i64 %79, 3
  %92 = icmp eq i64 %91, 0
  %93 = select i1 %92, i64 4, i64 %91
  %94 = sub nsw i64 %79, %93
  br label %95

95:                                               ; preds = %95, %90
  %96 = phi i64 [ 0, %90 ], [ %114, %95 ]
  %97 = or i64 %96, 1
  %98 = or i64 %96, 2
  %99 = or i64 %96, 3
  %100 = getelementptr inbounds %struct.sym_match, ptr %62, i64 %96
  %101 = getelementptr inbounds %struct.sym_match, ptr %62, i64 %97
  %102 = getelementptr inbounds %struct.sym_match, ptr %62, i64 %98
  %103 = getelementptr inbounds %struct.sym_match, ptr %62, i64 %99
  %104 = load ptr, ptr %100, align 8, !tbaa !52, !alias.scope !53
  %105 = load ptr, ptr %101, align 8, !tbaa !52, !alias.scope !53
  %106 = insertelement <2 x ptr> poison, ptr %104, i64 0
  %107 = insertelement <2 x ptr> %106, ptr %105, i64 1
  %108 = load ptr, ptr %102, align 8, !tbaa !52, !alias.scope !53
  %109 = load ptr, ptr %103, align 8, !tbaa !52, !alias.scope !53
  %110 = insertelement <2 x ptr> poison, ptr %108, i64 0
  %111 = insertelement <2 x ptr> %110, ptr %109, i64 1
  %112 = getelementptr inbounds ptr, ptr %74, i64 %96
  store <2 x ptr> %107, ptr %112, align 8, !tbaa !16, !alias.scope !56, !noalias !53
  %113 = getelementptr inbounds ptr, ptr %112, i64 2
  store <2 x ptr> %111, ptr %113, align 8, !tbaa !16, !alias.scope !56, !noalias !53
  %114 = add nuw i64 %96, 4
  %115 = icmp eq i64 %114, %94
  br i1 %115, label %116, label %95, !llvm.loop !58

116:                                              ; preds = %95, %81, %78
  %117 = phi i64 [ 0, %81 ], [ 0, %78 ], [ %94, %95 ]
  %118 = sub nsw i64 %79, %117
  %119 = xor i64 %117, -1
  %120 = add nsw i64 %119, %79
  %121 = and i64 %118, 3
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %123, %116
  %124 = phi i64 [ %129, %123 ], [ %117, %116 ]
  %125 = phi i64 [ %130, %123 ], [ 0, %116 ]
  %126 = getelementptr inbounds %struct.sym_match, ptr %62, i64 %124
  %127 = load ptr, ptr %126, align 8, !tbaa !52
  %128 = getelementptr inbounds ptr, ptr %74, i64 %124
  store ptr %127, ptr %128, align 8, !tbaa !16
  %129 = add nuw nsw i64 %124, 1
  %130 = add i64 %125, 1
  %131 = icmp eq i64 %130, %121
  br i1 %131, label %132, label %123, !llvm.loop !60

132:                                              ; preds = %123, %116
  %133 = phi i64 [ %117, %116 ], [ %129, %123 ]
  %134 = icmp ult i64 %120, 3
  br i1 %134, label %154, label %135

135:                                              ; preds = %135, %132
  %136 = phi i64 [ %152, %135 ], [ %133, %132 ]
  %137 = getelementptr inbounds %struct.sym_match, ptr %62, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !52
  %139 = getelementptr inbounds ptr, ptr %74, i64 %136
  store ptr %138, ptr %139, align 8, !tbaa !16
  %140 = add nuw nsw i64 %136, 1
  %141 = getelementptr inbounds %struct.sym_match, ptr %62, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !52
  %143 = getelementptr inbounds ptr, ptr %74, i64 %140
  store ptr %142, ptr %143, align 8, !tbaa !16
  %144 = add nuw nsw i64 %136, 2
  %145 = getelementptr inbounds %struct.sym_match, ptr %62, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !52
  %147 = getelementptr inbounds ptr, ptr %74, i64 %144
  store ptr %146, ptr %147, align 8, !tbaa !16
  %148 = add nuw nsw i64 %136, 3
  %149 = getelementptr inbounds %struct.sym_match, ptr %62, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !52
  %151 = getelementptr inbounds ptr, ptr %74, i64 %148
  store ptr %150, ptr %151, align 8, !tbaa !16
  %152 = add nuw nsw i64 %136, 4
  %153 = icmp eq i64 %152, %79
  br i1 %153, label %154, label %135, !llvm.loop !62

154:                                              ; preds = %135, %132, %76
  %155 = getelementptr inbounds ptr, ptr %74, i64 %70
  store ptr null, ptr %155, align 8, !tbaa !16
  br label %156

156:                                              ; preds = %154, %69, %67, %37
  %157 = phi ptr [ %74, %154 ], [ null, %69 ], [ null, %67 ], [ null, %37 ]
  %158 = phi ptr [ %62, %154 ], [ %62, %69 ], [ null, %67 ], [ %23, %37 ]
  call void @free(ptr noundef %158) #27
  call void @regfree(ptr noundef nonnull %2) #27
  br label %159

159:                                              ; preds = %156, %6, %1
  %160 = phi ptr [ %157, %156 ], [ null, %1 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #27
  ret ptr %160
}

declare i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @sym_rel_comp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.sym_match, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.sym_match, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !47
  %7 = sub nsw i64 %4, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.symbol, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #30
  %12 = icmp ne i64 %7, %11
  %13 = getelementptr inbounds %struct.sym_match, ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.sym_match, ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !47
  %17 = sub nsw i64 %14, %16
  %18 = load ptr, ptr %1, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.symbol, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !27
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #30
  %22 = icmp eq i64 %17, %21
  %23 = select i1 %12, i1 true, i1 %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = select i1 %12, i1 %22, i1 false
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %20) #30
  br label %28

28:                                               ; preds = %26, %24, %2
  %29 = phi i32 [ %27, %26 ], [ -1, %2 ], [ 1, %24 ]
  ret i32 %29
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

declare void @regfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @sym_check_deps(ptr noundef %0) local_unnamed_addr #20 {
  %2 = alloca %struct.dep_stack, align 8
  %3 = alloca %struct.dep_stack, align 8
  %4 = alloca %struct.dep_stack, align 8
  %5 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !13
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %264, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #27
  %10 = and i32 %6, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 32, i1 false) #27
  %14 = load ptr, ptr @check_top, align 8, !tbaa !16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dep_stack, ptr %14, i64 0, i32 1
  store ptr %3, ptr %17, align 8, !tbaa !63
  br label %18

18:                                               ; preds = %16, %12
  store ptr %14, ptr %3, align 8, !tbaa !65
  %19 = getelementptr inbounds %struct.dep_stack, ptr %3, i64 0, i32 2
  store ptr %0, ptr %19, align 8, !tbaa !66
  store ptr %3, ptr @check_top, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  br label %21

21:                                               ; preds = %25, %18
  %22 = phi ptr [ %20, %18 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.property, ptr %23, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !17
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %21

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.property, ptr %23, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %31, align 8, !tbaa !23
  %35 = and i32 %34, -2
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.expr, ptr %31, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !15
  br label %40

40:                                               ; preds = %37, %33, %29, %9
  %41 = phi ptr [ %0, %9 ], [ %39, %37 ], [ null, %33 ], [ null, %29 ]
  br label %42

42:                                               ; preds = %46, %40
  %43 = phi ptr [ @check_top, %40 ], [ %44, %46 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dep_stack, ptr %44, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !66
  %49 = icmp eq ptr %48, %41
  br i1 %49, label %53, label %42

50:                                               ; preds = %42
  %51 = load ptr, ptr @stderr, align 8, !tbaa !16
  %52 = call i64 @fwrite(ptr nonnull @.str.27, i64 38, i64 1, ptr %51) #28
  br label %263

53:                                               ; preds = %250, %46
  %54 = phi ptr [ %252, %250 ], [ %41, %46 ]
  %55 = phi ptr [ %90, %250 ], [ null, %46 ]
  %56 = phi ptr [ %248, %250 ], [ %44, %46 ]
  %57 = getelementptr inbounds %struct.dep_stack, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !63
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.dep_stack, ptr %58, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !66
  br label %63

63:                                               ; preds = %60, %53
  %64 = phi ptr [ %62, %60 ], [ %41, %53 ]
  %65 = getelementptr inbounds %struct.dep_stack, ptr %56, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !67
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !68
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi ptr [ %70, %68 ], [ %66, %63 ]
  %73 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 6
  %74 = load i32, ptr %73, align 4, !tbaa !13
  %75 = and i32 %74, 48
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %84

81:                                               ; preds = %84
  %82 = load ptr, ptr %85, align 8, !tbaa !16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %81, %77
  %85 = phi ptr [ %82, %81 ], [ %79, %77 ]
  %86 = getelementptr inbounds %struct.property, ptr %85, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !37
  %88 = icmp eq ptr %87, null
  br i1 %88, label %81, label %89

89:                                               ; preds = %84, %81, %77, %71
  %90 = phi ptr [ %55, %71 ], [ %55, %77 ], [ %87, %84 ], [ null, %81 ]
  %91 = phi ptr [ %72, %71 ], [ null, %77 ], [ %85, %84 ], [ null, %81 ]
  %92 = icmp eq ptr %54, %41
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load ptr, ptr @stderr, align 8, !tbaa !16
  %95 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !69
  %97 = getelementptr inbounds %struct.file, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !70
  %99 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !72
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.28, ptr noundef %98, i32 noundef %100) #28
  %102 = load i32, ptr %73, align 4, !tbaa !13
  br label %103

103:                                              ; preds = %93, %89
  %104 = phi i32 [ %102, %93 ], [ %74, %89 ]
  %105 = and i32 %104, 16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr @stderr, align 8, !tbaa !16
  %109 = getelementptr inbounds %struct.menu, ptr %90, i64 0, i32 9
  %110 = load ptr, ptr %109, align 8, !tbaa !73
  %111 = getelementptr inbounds %struct.file, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !70
  %113 = getelementptr inbounds %struct.menu, ptr %90, i64 0, i32 10
  %114 = load i32, ptr %113, align 8, !tbaa !74
  %115 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !27
  %117 = icmp eq ptr %116, null
  %118 = select i1 %117, ptr @.str.30, ptr %116
  %119 = getelementptr inbounds %struct.symbol, ptr %64, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !27
  %121 = icmp eq ptr %120, null
  %122 = select i1 %121, ptr @.str.30, ptr %120
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.29, ptr noundef %112, i32 noundef %114, ptr noundef nonnull %118, ptr noundef nonnull %122) #28
  br label %247

124:                                              ; preds = %103
  %125 = and i32 %104, 32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr @stderr, align 8, !tbaa !16
  %129 = getelementptr inbounds %struct.menu, ptr %90, i64 0, i32 9
  %130 = load ptr, ptr %129, align 8, !tbaa !73
  %131 = getelementptr inbounds %struct.file, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !70
  %133 = getelementptr inbounds %struct.menu, ptr %90, i64 0, i32 10
  %134 = load i32, ptr %133, align 8, !tbaa !74
  %135 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !27
  %137 = icmp eq ptr %136, null
  %138 = select i1 %137, ptr @.str.30, ptr %136
  %139 = getelementptr inbounds %struct.symbol, ptr %64, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !27
  %141 = icmp eq ptr %140, null
  %142 = select i1 %141, ptr @.str.30, ptr %140
  %143 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.31, ptr noundef %132, i32 noundef %134, ptr noundef nonnull %138, ptr noundef nonnull %142) #28
  br label %247

144:                                              ; preds = %124
  %145 = getelementptr inbounds %struct.dep_stack, ptr %56, i64 0, i32 4
  %146 = load ptr, ptr %145, align 8, !tbaa !75
  %147 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 8
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %144
  %150 = load ptr, ptr @stderr, align 8, !tbaa !16
  %151 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 6
  %152 = load ptr, ptr %151, align 8, !tbaa !69
  %153 = getelementptr inbounds %struct.file, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !70
  %155 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 7
  %156 = load i32, ptr %155, align 8, !tbaa !72
  %157 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !27
  %159 = icmp eq ptr %158, null
  %160 = select i1 %159, ptr @.str.30, ptr %158
  %161 = getelementptr inbounds %struct.symbol, ptr %64, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !27
  %163 = icmp eq ptr %162, null
  %164 = select i1 %163, ptr @.str.30, ptr %162
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef nonnull @.str.32, ptr noundef %154, i32 noundef %156, ptr noundef nonnull %160, ptr noundef nonnull %164) #28
  br label %247

166:                                              ; preds = %144
  %167 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 9
  %168 = icmp eq ptr %146, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %166
  %170 = load ptr, ptr @stderr, align 8, !tbaa !16
  %171 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !69
  %173 = getelementptr inbounds %struct.file, ptr %172, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !70
  %175 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 7
  %176 = load i32, ptr %175, align 8, !tbaa !72
  %177 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !27
  %179 = icmp eq ptr %178, null
  %180 = select i1 %179, ptr @.str.30, ptr %178
  %181 = getelementptr inbounds %struct.symbol, ptr %64, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !27
  %183 = icmp eq ptr %182, null
  %184 = select i1 %183, ptr @.str.30, ptr %182
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef nonnull @.str.33, ptr noundef %174, i32 noundef %176, ptr noundef nonnull %180, ptr noundef nonnull %184) #28
  br label %247

186:                                              ; preds = %166
  %187 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 10
  %188 = icmp eq ptr %146, %187
  br i1 %188, label %189, label %206

189:                                              ; preds = %186
  %190 = load ptr, ptr @stderr, align 8, !tbaa !16
  %191 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !69
  %193 = getelementptr inbounds %struct.file, ptr %192, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !70
  %195 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 7
  %196 = load i32, ptr %195, align 8, !tbaa !72
  %197 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !27
  %199 = icmp eq ptr %198, null
  %200 = select i1 %199, ptr @.str.30, ptr %198
  %201 = getelementptr inbounds %struct.symbol, ptr %64, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !27
  %203 = icmp eq ptr %202, null
  %204 = select i1 %203, ptr @.str.30, ptr %202
  %205 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef nonnull @.str.34, ptr noundef %194, i32 noundef %196, ptr noundef nonnull %200, ptr noundef nonnull %204) #28
  br label %247

206:                                              ; preds = %186
  %207 = icmp eq ptr %146, null
  %208 = load ptr, ptr @stderr, align 8, !tbaa !16
  %209 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 6
  %210 = load ptr, ptr %209, align 8, !tbaa !69
  %211 = getelementptr inbounds %struct.file, ptr %210, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !70
  %213 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 7
  %214 = load i32, ptr %213, align 8, !tbaa !72
  %215 = getelementptr inbounds %struct.symbol, ptr %54, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !27
  %217 = icmp eq ptr %216, null
  %218 = select i1 %217, ptr @.str.30, ptr %216
  %219 = getelementptr inbounds %struct.property, ptr %91, i64 0, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !17
  %221 = add i32 %220, -1
  %222 = icmp ult i32 %221, 9
  br i1 %207, label %235, label %223

223:                                              ; preds = %206
  br i1 %222, label %224, label %228

224:                                              ; preds = %223
  %225 = sext i32 %221 to i64
  %226 = getelementptr inbounds [9 x ptr], ptr @switch.table.prop_get_type_name, i64 0, i64 %225
  %227 = load ptr, ptr %226, align 8
  br label %228

228:                                              ; preds = %224, %223
  %229 = phi ptr [ %227, %224 ], [ @.str.8, %223 ]
  %230 = getelementptr inbounds %struct.symbol, ptr %64, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !27
  %232 = icmp eq ptr %231, null
  %233 = select i1 %232, ptr @.str.30, ptr %231
  %234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.35, ptr noundef %212, i32 noundef %214, ptr noundef nonnull %218, ptr noundef nonnull %229, ptr noundef nonnull %233) #28
  br label %247

235:                                              ; preds = %206
  br i1 %222, label %236, label %240

236:                                              ; preds = %235
  %237 = sext i32 %221 to i64
  %238 = getelementptr inbounds [9 x ptr], ptr @switch.table.prop_get_type_name, i64 0, i64 %237
  %239 = load ptr, ptr %238, align 8
  br label %240

240:                                              ; preds = %236, %235
  %241 = phi ptr [ %239, %236 ], [ @.str.8, %235 ]
  %242 = getelementptr inbounds %struct.symbol, ptr %64, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !27
  %244 = icmp eq ptr %243, null
  %245 = select i1 %244, ptr @.str.30, ptr %243
  %246 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.36, ptr noundef %212, i32 noundef %214, ptr noundef nonnull %218, ptr noundef nonnull %241, ptr noundef nonnull %245) #28
  br label %247

247:                                              ; preds = %240, %228, %189, %169, %149, %127, %107
  %248 = load ptr, ptr %57, align 8, !tbaa !63
  %249 = icmp eq ptr %248, null
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.dep_stack, ptr %248, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !66
  br label %53

253:                                              ; preds = %247
  %254 = load ptr, ptr @stderr, align 8, !tbaa !16
  %255 = call i64 @fwrite(ptr nonnull @.str.37, i64 123, i64 1, ptr %254) #28
  %256 = load ptr, ptr @check_top, align 8, !tbaa !16
  %257 = icmp eq ptr %256, %3
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load ptr, ptr %3, align 8, !tbaa !65
  store ptr %259, ptr @check_top, align 8, !tbaa !16
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.dep_stack, ptr %259, i64 0, i32 1
  store ptr null, ptr %262, align 8, !tbaa !63
  br label %263

263:                                              ; preds = %261, %258, %253, %50
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #27
  br label %428

264:                                              ; preds = %1
  %265 = and i32 %6, 8192
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %428

267:                                              ; preds = %264
  %268 = and i32 %6, 32
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %307, label %270

270:                                              ; preds = %267
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #27
  %271 = getelementptr inbounds i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %271, i8 0, i64 32, i1 false) #27
  %272 = load ptr, ptr @check_top, align 8, !tbaa !16
  %273 = icmp eq ptr %272, null
  br i1 %273, label %276, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.dep_stack, ptr %272, i64 0, i32 1
  store ptr %4, ptr %275, align 8, !tbaa !63
  br label %276

276:                                              ; preds = %274, %270
  store ptr %272, ptr %4, align 8, !tbaa !65
  %277 = getelementptr inbounds %struct.dep_stack, ptr %4, i64 0, i32 2
  store ptr %0, ptr %277, align 8, !tbaa !66
  store ptr %4, ptr @check_top, align 8, !tbaa !16
  %278 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  br label %279

279:                                              ; preds = %283, %276
  %280 = phi ptr [ %278, %276 ], [ %281, %283 ]
  %281 = load ptr, ptr %280, align 8, !tbaa !16
  %282 = icmp eq ptr %281, null
  br i1 %282, label %287, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.property, ptr %281, i64 0, i32 1
  %285 = load i32, ptr %284, align 8, !tbaa !17
  %286 = icmp eq i32 %285, 5
  br i1 %286, label %287, label %279

287:                                              ; preds = %283, %279
  %288 = getelementptr inbounds %struct.property, ptr %281, i64 0, i32 4
  %289 = load ptr, ptr %288, align 8, !tbaa !21
  %290 = icmp eq ptr %289, null
  br i1 %290, label %298, label %291

291:                                              ; preds = %287
  %292 = load i32, ptr %289, align 8, !tbaa !23
  %293 = and i32 %292, -2
  %294 = icmp eq i32 %293, 10
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.expr, ptr %289, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !15
  br label %298

298:                                              ; preds = %295, %291, %287
  %299 = phi ptr [ %297, %295 ], [ null, %291 ], [ null, %287 ]
  %300 = call ptr @sym_check_deps(ptr noundef %299)
  %301 = load ptr, ptr @check_top, align 8, !tbaa !16
  %302 = load ptr, ptr %301, align 8, !tbaa !65
  store ptr %302, ptr @check_top, align 8, !tbaa !16
  %303 = icmp eq ptr %302, null
  br i1 %303, label %306, label %304

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.dep_stack, ptr %302, i64 0, i32 1
  store ptr null, ptr %305, align 8, !tbaa !63
  br label %306

306:                                              ; preds = %304, %298
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #27
  br label %428

307:                                              ; preds = %267
  %308 = and i32 %6, 16
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %423, label %310

310:                                              ; preds = %307
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #27
  %311 = getelementptr inbounds i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %311, i8 0, i64 32, i1 false) #27
  %312 = load ptr, ptr @check_top, align 8, !tbaa !16
  %313 = icmp eq ptr %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.dep_stack, ptr %312, i64 0, i32 1
  store ptr %2, ptr %315, align 8, !tbaa !63
  br label %316

316:                                              ; preds = %314, %310
  store ptr %312, ptr %2, align 8, !tbaa !65
  %317 = getelementptr inbounds %struct.dep_stack, ptr %2, i64 0, i32 2
  store ptr %0, ptr %317, align 8, !tbaa !66
  store ptr %2, ptr @check_top, align 8, !tbaa !16
  %318 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  br label %319

319:                                              ; preds = %323, %316
  %320 = phi ptr [ %318, %316 ], [ %321, %323 ]
  %321 = load ptr, ptr %320, align 8, !tbaa !16
  %322 = icmp eq ptr %321, null
  br i1 %322, label %327, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.property, ptr %321, i64 0, i32 1
  %325 = load i32, ptr %324, align 8, !tbaa !17
  %326 = icmp eq i32 %325, 5
  br i1 %326, label %327, label %319

327:                                              ; preds = %323, %319
  %328 = getelementptr inbounds %struct.property, ptr %321, i64 0, i32 4
  %329 = load ptr, ptr %328, align 8, !tbaa !15
  %330 = icmp eq ptr %329, null
  br i1 %330, label %345, label %331

331:                                              ; preds = %336, %327
  %332 = phi ptr [ %341, %336 ], [ %329, %327 ]
  %333 = getelementptr inbounds %struct.expr, ptr %332, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !15
  %335 = icmp eq ptr %334, null
  br i1 %335, label %343, label %336

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.symbol, ptr %334, i64 0, i32 6
  %338 = load i32, ptr %337, align 4, !tbaa !13
  %339 = or i32 %338, 8200
  store i32 %339, ptr %337, align 4, !tbaa !13
  %340 = getelementptr inbounds %struct.expr, ptr %332, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !15
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %331

343:                                              ; preds = %336, %331
  %344 = load i32, ptr %5, align 4, !tbaa !13
  br label %345

345:                                              ; preds = %343, %327
  %346 = phi i32 [ %344, %343 ], [ %6, %327 ]
  %347 = or i32 %346, 8200
  store i32 %347, ptr %5, align 4, !tbaa !13
  %348 = call fastcc ptr @sym_check_sym_deps(ptr noundef %0) #27
  %349 = load i32, ptr %5, align 4, !tbaa !13
  %350 = and i32 %349, -9
  store i32 %350, ptr %5, align 4, !tbaa !13
  %351 = icmp eq ptr %348, null
  br i1 %351, label %352, label %367

352:                                              ; preds = %345
  %353 = load ptr, ptr %328, align 8, !tbaa !15
  %354 = icmp eq ptr %353, null
  br i1 %354, label %415, label %359

355:                                              ; preds = %364
  %356 = getelementptr inbounds %struct.expr, ptr %360, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !15
  %358 = icmp eq ptr %357, null
  br i1 %358, label %367, label %359

359:                                              ; preds = %355, %352
  %360 = phi ptr [ %357, %355 ], [ %353, %352 ]
  %361 = getelementptr inbounds %struct.expr, ptr %360, i64 0, i32 2
  %362 = load ptr, ptr %361, align 8, !tbaa !15
  %363 = icmp eq ptr %362, null
  br i1 %363, label %367, label %364

364:                                              ; preds = %359
  %365 = call fastcc ptr @sym_check_sym_deps(ptr noundef nonnull %362) #27
  %366 = icmp eq ptr %365, null
  br i1 %366, label %355, label %367

367:                                              ; preds = %364, %359, %355, %345
  %368 = phi ptr [ %348, %345 ], [ null, %355 ], [ null, %359 ], [ %365, %364 ]
  %369 = load ptr, ptr %328, align 8, !tbaa !15
  %370 = icmp eq ptr %369, null
  br i1 %370, label %383, label %371

371:                                              ; preds = %376, %367
  %372 = phi ptr [ %381, %376 ], [ %369, %367 ]
  %373 = getelementptr inbounds %struct.expr, ptr %372, i64 0, i32 2
  %374 = load ptr, ptr %373, align 8, !tbaa !15
  %375 = icmp eq ptr %374, null
  br i1 %375, label %383, label %376

376:                                              ; preds = %371
  %377 = getelementptr inbounds %struct.symbol, ptr %374, i64 0, i32 6
  %378 = load i32, ptr %377, align 4, !tbaa !13
  %379 = and i32 %378, -9
  store i32 %379, ptr %377, align 4, !tbaa !13
  %380 = getelementptr inbounds %struct.expr, ptr %372, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !15
  %382 = icmp eq ptr %381, null
  br i1 %382, label %383, label %371

383:                                              ; preds = %376, %371, %367
  %384 = icmp eq ptr %368, null
  br i1 %384, label %415, label %385

385:                                              ; preds = %383
  %386 = getelementptr inbounds %struct.symbol, ptr %368, i64 0, i32 6
  %387 = load i32, ptr %386, align 4, !tbaa !13
  %388 = and i32 %387, 32
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %415, label %390

390:                                              ; preds = %385
  %391 = getelementptr inbounds %struct.symbol, ptr %368, i64 0, i32 7
  br label %392

392:                                              ; preds = %396, %390
  %393 = phi ptr [ %391, %390 ], [ %394, %396 ]
  %394 = load ptr, ptr %393, align 8, !tbaa !16
  %395 = icmp eq ptr %394, null
  br i1 %395, label %400, label %396

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.property, ptr %394, i64 0, i32 1
  %398 = load i32, ptr %397, align 8, !tbaa !17
  %399 = icmp eq i32 %398, 5
  br i1 %399, label %400, label %392

400:                                              ; preds = %396, %392
  %401 = getelementptr inbounds %struct.property, ptr %394, i64 0, i32 4
  %402 = load ptr, ptr %401, align 8, !tbaa !21
  %403 = icmp eq ptr %402, null
  br i1 %403, label %411, label %404

404:                                              ; preds = %400
  %405 = load i32, ptr %402, align 8, !tbaa !23
  %406 = and i32 %405, -2
  %407 = icmp eq i32 %406, 10
  br i1 %407, label %408, label %411

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.expr, ptr %402, i64 0, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !15
  br label %411

411:                                              ; preds = %408, %404, %400
  %412 = phi ptr [ %410, %408 ], [ null, %404 ], [ null, %400 ]
  %413 = icmp eq ptr %412, %0
  %414 = select i1 %413, ptr %0, ptr %368
  br label %415

415:                                              ; preds = %411, %385, %383, %352
  %416 = phi ptr [ %368, %385 ], [ null, %383 ], [ %414, %411 ], [ null, %352 ]
  %417 = load ptr, ptr @check_top, align 8, !tbaa !16
  %418 = load ptr, ptr %417, align 8, !tbaa !65
  store ptr %418, ptr @check_top, align 8, !tbaa !16
  %419 = icmp eq ptr %418, null
  br i1 %419, label %422, label %420

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.dep_stack, ptr %418, i64 0, i32 1
  store ptr null, ptr %421, align 8, !tbaa !63
  br label %422

422:                                              ; preds = %420, %415
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #27
  br label %428

423:                                              ; preds = %307
  %424 = or i32 %6, 8200
  store i32 %424, ptr %5, align 4, !tbaa !13
  %425 = tail call fastcc ptr @sym_check_sym_deps(ptr noundef nonnull %0)
  %426 = load i32, ptr %5, align 4, !tbaa !13
  %427 = and i32 %426, -9
  store i32 %427, ptr %5, align 4, !tbaa !13
  br label %428

428:                                              ; preds = %423, %422, %306, %264, %263
  %429 = phi ptr [ %0, %263 ], [ null, %264 ], [ %300, %306 ], [ %416, %422 ], [ %425, %423 ]
  ret ptr %429
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc ptr @sym_check_sym_deps(ptr noundef %0) unnamed_addr #20 {
  %2 = alloca %struct.dep_stack, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #27
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 24, i1 false) #27
  %4 = load ptr, ptr @check_top, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dep_stack, ptr %4, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !63
  br label %8

8:                                                ; preds = %6, %1
  store ptr %4, ptr %2, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.dep_stack, ptr %2, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !66
  store ptr %2, ptr @check_top, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %struct.dep_stack, ptr %2, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !75
  %12 = load ptr, ptr %10, align 8, !tbaa !34
  %13 = call fastcc ptr @sym_check_expr_deps(ptr noundef %12)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %59

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9
  store ptr %16, ptr %11, align 8, !tbaa !75
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = call fastcc ptr @sym_check_expr_deps(ptr noundef %17)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 10
  store ptr %21, ptr %11, align 8, !tbaa !75
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = call fastcc ptr @sym_check_expr_deps(ptr noundef %22)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  store ptr null, ptr %11, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %struct.dep_stack, ptr %2, i64 0, i32 3
  %28 = load ptr, ptr %26, align 8, !tbaa !16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  br label %32

32:                                               ; preds = %56, %30
  %33 = phi ptr [ %28, %30 ], [ %57, %56 ]
  %34 = getelementptr inbounds %struct.property, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !17
  %36 = add i32 %35, -5
  %37 = icmp ult i32 %36, 3
  br i1 %37, label %56, label %38

38:                                               ; preds = %32
  store ptr %33, ptr %27, align 8, !tbaa !67
  %39 = getelementptr inbounds %struct.property, ptr %33, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !19
  %41 = call fastcc ptr @sym_check_expr_deps(ptr noundef %40)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i32, ptr %34, align 8, !tbaa !17
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, ptr %31, align 4, !tbaa !13
  %48 = and i32 %47, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.property, ptr %33, i64 0, i32 4
  store ptr %51, ptr %11, align 8, !tbaa !75
  %52 = load ptr, ptr %51, align 8, !tbaa !21
  %53 = call fastcc ptr @sym_check_expr_deps(ptr noundef %52)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  store ptr null, ptr %11, align 8, !tbaa !75
  br label %56

56:                                               ; preds = %55, %46, %43, %32
  %57 = load ptr, ptr %33, align 8, !tbaa !16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %32

59:                                               ; preds = %56, %50, %38, %25, %20, %15, %8
  %60 = phi ptr [ %13, %8 ], [ %18, %15 ], [ %23, %20 ], [ null, %25 ], [ null, %56 ], [ %41, %38 ], [ %53, %50 ]
  %61 = load ptr, ptr @check_top, align 8, !tbaa !16
  %62 = load ptr, ptr %61, align 8, !tbaa !65
  store ptr %62, ptr @check_top, align 8, !tbaa !16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.dep_stack, ptr %62, i64 0, i32 1
  store ptr null, ptr %65, align 8, !tbaa !63
  br label %66

66:                                               ; preds = %64, %59
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #27
  ret ptr %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @prop_get_type_name(i32 noundef %0) local_unnamed_addr #2 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 9
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [9 x ptr], ptr @switch.table.prop_get_type_name, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %7, %4 ], [ @.str.8, %1 ]
  ret ptr %9
}

declare void @str_new(ptr sret(%struct.gstr) align 8) local_unnamed_addr #5

declare void @str_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @expr_gstr_print(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @expr_gstr_print_revdep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #21

declare ptr @str_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind uwtable
define internal fastcc ptr @sym_check_expr_deps(ptr noundef readonly %0) unnamed_addr #20 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %13, %1
  %4 = phi ptr [ %15, %13 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8, !tbaa !23
  switch i32 %5, label %32 [
    i32 1, label %6
    i32 2, label %6
    i32 3, label %17
    i32 4, label %19
    i32 9, label %19
    i32 8, label %19
    i32 7, label %19
    i32 6, label %19
    i32 5, label %19
    i32 11, label %28
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = tail call fastcc ptr @sym_check_expr_deps(ptr noundef %8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  br label %13

13:                                               ; preds = %17, %11
  %14 = phi ptr [ %12, %11 ], [ %18, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %3

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  br label %13

19:                                               ; preds = %3, %3, %3, %3, %3, %3
  %20 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  %22 = tail call ptr @sym_check_deps(ptr noundef %21)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = tail call ptr @sym_check_deps(ptr noundef %26)
  br label %35

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = tail call ptr @sym_check_deps(ptr noundef %30)
  br label %35

32:                                               ; preds = %3
  %33 = load ptr, ptr @stderr, align 8, !tbaa !16
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.38, i32 noundef %5) #33
  br label %35

35:                                               ; preds = %32, %28, %24, %19, %13, %6, %1
  %36 = phi ptr [ null, %32 ], [ %31, %28 ], [ %27, %24 ], [ %22, %19 ], [ null, %1 ], [ %9, %6 ], [ null, %13 ]
  ret ptr %36
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare ptr @llvm.load.relative.i64(ptr, i64) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { argmemonly nofree nounwind readonly willreturn }
attributes #23 = { nofree nounwind }
attributes #24 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #25 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #26 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #27 = { nounwind }
attributes #28 = { cold nounwind }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { nounwind readonly willreturn }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !8, i64 16}
!6 = !{!"symbol", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 24, !8, i64 40, !8, i64 104, !11, i64 108, !7, i64 112, !12, i64 120, !12, i64 136, !12, i64 152}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"symbol_value", !7, i64 0, !8, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"expr_value", !7, i64 0, !8, i64 8}
!13 = !{!6, !11, i64 108}
!14 = !{!6, !8, i64 104}
!15 = !{!8, !8, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !8, i64 8}
!18 = !{!"property", !7, i64 0, !8, i64 8, !7, i64 16, !12, i64 24, !7, i64 40, !7, i64 48, !7, i64 56, !11, i64 64}
!19 = !{!18, !7, i64 24}
!20 = !{!18, !8, i64 32}
!21 = !{!18, !7, i64 40}
!22 = !{}
!23 = !{!24, !8, i64 0}
!24 = !{!"expr", !8, i64 0, !8, i64 8, !8, i64 16}
!25 = !{i64 0, i64 8, !16, i64 8, i64 4, !15}
!26 = !{i64 0, i64 4, !15}
!27 = !{!6, !7, i64 8}
!28 = !{!6, !7, i64 24}
!29 = !{!6, !8, i64 32}
!30 = !{!10, !8, i64 8}
!31 = !{!6, !8, i64 144}
!32 = !{!6, !8, i64 160}
!33 = !{!6, !8, i64 128}
!34 = !{!6, !7, i64 120}
!35 = !{!6, !7, i64 136}
!36 = !{!10, !7, i64 0}
!37 = !{!18, !7, i64 48}
!38 = !{!39, !11, i64 56}
!39 = !{!"menu", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !11, i64 56, !7, i64 64, !7, i64 72, !11, i64 80, !7, i64 88}
!40 = !{!18, !7, i64 16}
!41 = !{!6, !7, i64 152}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !8, i64 0}
!44 = !{!6, !7, i64 0}
!45 = !{!46, !11, i64 0}
!46 = !{!"", !11, i64 0, !11, i64 4}
!47 = !{!48, !49, i64 8}
!48 = !{!"sym_match", !7, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"long", !8, i64 0}
!50 = !{!46, !11, i64 4}
!51 = !{!48, !49, i64 16}
!52 = !{!48, !7, i64 0}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !59}
!63 = !{!64, !7, i64 8}
!64 = !{!"dep_stack", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!65 = !{!64, !7, i64 0}
!66 = !{!64, !7, i64 16}
!67 = !{!64, !7, i64 24}
!68 = !{!6, !7, i64 112}
!69 = !{!18, !7, i64 56}
!70 = !{!71, !7, i64 16}
!71 = !{!"file", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24}
!72 = !{!18, !11, i64 64}
!73 = !{!39, !7, i64 72}
!74 = !{!39, !11, i64 80}
!75 = !{!64, !7, i64 32}
