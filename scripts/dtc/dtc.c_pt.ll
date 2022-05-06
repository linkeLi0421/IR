; ModuleID = '/llk/IR/scripts/dtc/dtc.c_pt.bc'
source_filename = "../scripts/dtc/dtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.dt_info = type { i32, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.node = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8 }

@phandle_format = dso_local local_unnamed_addr global i32 2, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@quiet = dso_local local_unnamed_addr global i32 0, align 4
@reservenum = dso_local local_unnamed_addr global i32 0, align 4
@minsize = dso_local local_unnamed_addr global i32 0, align 4
@padsize = dso_local local_unnamed_addr global i32 0, align 4
@alignsize = dso_local local_unnamed_addr global i32 0, align 4
@usage_short_opts = internal constant [37 x i8] c"qI:O:o:V:d:R:S:p:a:fb:i:H:sW:E:@AThv\00", align 16
@usage_long_opts = internal constant [23 x %struct.option] [%struct.option { ptr @.str.27, i32 0, ptr null, i32 113 }, %struct.option { ptr @.str.28, i32 1, ptr null, i32 73 }, %struct.option { ptr @.str.29, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.30, i32 1, ptr null, i32 79 }, %struct.option { ptr @.str.31, i32 1, ptr null, i32 86 }, %struct.option { ptr @.str.32, i32 1, ptr null, i32 100 }, %struct.option { ptr @.str.33, i32 1, ptr null, i32 82 }, %struct.option { ptr @.str.34, i32 1, ptr null, i32 83 }, %struct.option { ptr @.str.35, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.36, i32 1, ptr null, i32 97 }, %struct.option { ptr @.str.37, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.38, i32 0, ptr null, i32 102 }, %struct.option { ptr @.str.39, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.40, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.41, i32 1, ptr null, i32 72 }, %struct.option { ptr @.str.42, i32 1, ptr null, i32 87 }, %struct.option { ptr @.str.43, i32 1, ptr null, i32 69 }, %struct.option { ptr @.str.44, i32 0, ptr null, i32 64 }, %struct.option { ptr @.str.45, i32 0, ptr null, i32 65 }, %struct.option { ptr @.str.46, i32 0, ptr null, i32 84 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid argument \22%d\22 to -a option\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"epapr\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid argument \22%s\22 to -H option\0A\00", align 1
@generate_symbols = dso_local local_unnamed_addr global i32 0, align 4
@auto_label_aliases = dso_local local_unnamed_addr global i32 0, align 4
@annotate = dso_local local_unnamed_addr global i32 0, align 4
@usage_synopsis = internal constant [27 x i8] c"dtc [options] <input file>\00", align 16
@usage_opts_help = internal constant [23 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr null], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"missing files\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Can't set both -p and -S\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@depfile = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"Couldn't open dependency file %s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"dtb\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"--annotate requires -I dts -O dts\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Unknown input format \22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@generate_fixups = dso_local local_unnamed_addr global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"__symbols__\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"__fixups__\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"__local_fixups__\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Couldn't open output file %s: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Unknown output format \22%s\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"in-format\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"out-format\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"out-version\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"out-dependency\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"reserve\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"boot-cpu\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"auto-alias\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"annotate\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"\0A\09Quiet: -q suppress warnings, -qq errors, -qqq all\00", align 1
@.str.51 = private unnamed_addr constant [120 x i8] c"\0A\09Input formats are:\0A\09\09dts - device tree source text\0A\09\09dtb - device tree blob\0A\09\09fs  - /proc/device-tree style directory\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"\0A\09Output file\00", align 1
@.str.53 = private unnamed_addr constant [104 x i8] c"\0A\09Output formats are:\0A\09\09dts - device tree source text\0A\09\09dtb - device tree blob\0A\09\09asm - assembler source\00", align 1
@.str.54 = private unnamed_addr constant [67 x i8] c"\0A\09Blob version to produce, defaults to 17 (for dtb and asm output)\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"\0A\09Output dependency file\00", align 1
@.str.56 = private unnamed_addr constant [71 x i8] c"\0A\09Make space for <number> reserve map entries (for dtb and asm output)\00", align 1
@.str.57 = private unnamed_addr constant [52 x i8] c"\0A\09Make the blob at least <bytes> long (extra space)\00", align 1
@.str.58 = private unnamed_addr constant [56 x i8] c"\0A\09Add padding to the blob of <bytes> long (extra space)\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c"\0A\09Make the blob align to the <bytes> (extra space)\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"\0A\09Set the physical boot cpu\00", align 1
@.str.61 = private unnamed_addr constant [58 x i8] c"\0A\09Try to produce output even if the input tree has errors\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"\0A\09Add a path to search for include files\00", align 1
@.str.63 = private unnamed_addr constant [75 x i8] c"\0A\09Sort nodes and properties before outputting (useful for comparing trees)\00", align 1
@.str.64 = private unnamed_addr constant [166 x i8] c"\0A\09Valid phandle formats are:\0A\09\09legacy - \22linux,phandle\22 properties only\0A\09\09epapr  - \22phandle\22 properties only\0A\09\09both   - Both \22linux,phandle\22 and \22phandle\22 properties\00", align 1
@.str.65 = private unnamed_addr constant [46 x i8] c"\0A\09Enable/disable warnings (prefix with \22no-\22)\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"\0A\09Enable/disable errors (prefix with \22no-\22)\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"\0A\09Enable generation of symbols\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"\0A\09Enable auto-alias of labels\00", align 1
@.str.69 = private unnamed_addr constant [80 x i8] c"\0A\09Annotate output .dts with input source file and line (-T -T for more details)\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"\0A\09Print this help and exit\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"\0A\09Print version and exit\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c".dts\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c".yaml\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"yaml\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c".dtbo\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c".dtb\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store i32 0, ptr @quiet, align 4, !tbaa !5
  store i32 0, ptr @reservenum, align 4, !tbaa !5
  store i32 0, ptr @minsize, align 4, !tbaa !5
  store i32 0, ptr @padsize, align 4, !tbaa !5
  store i32 0, ptr @alignsize, align 4, !tbaa !5
  br label %3

3:                                                ; preds = %45, %2
  %4 = phi ptr [ null, %2 ], [ %46, %45 ]
  %5 = phi ptr [ null, %2 ], [ %47, %45 ]
  %6 = phi ptr [ @.str, %2 ], [ %48, %45 ]
  %7 = phi ptr [ null, %2 ], [ %49, %45 ]
  %8 = phi i8 [ 0, %2 ], [ %50, %45 ]
  %9 = phi i8 [ 0, %2 ], [ %51, %45 ]
  %10 = phi i32 [ 17, %2 ], [ %52, %45 ]
  %11 = phi i64 [ -1, %2 ], [ %53, %45 ]
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef null) #17
  switch i32 %12, label %90 [
    i32 -1, label %91
    i32 73, label %13
    i32 79, label %15
    i32 111, label %17
    i32 86, label %19
    i32 100, label %23
    i32 82, label %25
    i32 83, label %29
    i32 112, label %33
    i32 97, label %37
    i32 102, label %45
    i32 113, label %56
    i32 98, label %59
    i32 105, label %62
    i32 118, label %64
    i32 72, label %65
    i32 115, label %79
    i32 87, label %80
    i32 69, label %82
    i32 64, label %84
    i32 65, label %85
    i32 84, label %86
    i32 104, label %89
  ]

13:                                               ; preds = %3
  %14 = load ptr, ptr @optarg, align 8, !tbaa !9
  br label %45

15:                                               ; preds = %3
  %16 = load ptr, ptr @optarg, align 8, !tbaa !9
  br label %45

17:                                               ; preds = %3
  %18 = load ptr, ptr @optarg, align 8, !tbaa !9
  br label %45

19:                                               ; preds = %3
  %20 = load ptr, ptr @optarg, align 8, !tbaa !9
  %21 = tail call i64 @strtol(ptr nocapture noundef %20, ptr noundef null, i32 noundef 0) #17
  %22 = trunc i64 %21 to i32
  br label %45

23:                                               ; preds = %3
  %24 = load ptr, ptr @optarg, align 8, !tbaa !9
  br label %45

25:                                               ; preds = %3
  %26 = load ptr, ptr @optarg, align 8, !tbaa !9
  %27 = tail call i64 @strtoul(ptr nocapture noundef %26, ptr noundef null, i32 noundef 0) #17
  %28 = trunc i64 %27 to i32
  store i32 %28, ptr @reservenum, align 4, !tbaa !5
  br label %45

29:                                               ; preds = %3
  %30 = load ptr, ptr @optarg, align 8, !tbaa !9
  %31 = tail call i64 @strtol(ptr nocapture noundef %30, ptr noundef null, i32 noundef 0) #17
  %32 = trunc i64 %31 to i32
  store i32 %32, ptr @minsize, align 4, !tbaa !5
  br label %45

33:                                               ; preds = %3
  %34 = load ptr, ptr @optarg, align 8, !tbaa !9
  %35 = tail call i64 @strtol(ptr nocapture noundef %34, ptr noundef null, i32 noundef 0) #17
  %36 = trunc i64 %35 to i32
  store i32 %36, ptr @padsize, align 4, !tbaa !5
  br label %45

37:                                               ; preds = %3
  %38 = load ptr, ptr @optarg, align 8, !tbaa !9
  %39 = tail call i64 @strtol(ptr nocapture noundef %38, ptr noundef null, i32 noundef 0) #17
  %40 = trunc i64 %39 to i32
  store i32 %40, ptr @alignsize, align 4, !tbaa !5
  %41 = icmp slt i32 %40, 1
  %42 = tail call i32 @llvm.ctpop.i32(i32 %40) #17, !range !11
  %43 = icmp ugt i32 %42, 1
  %44 = or i1 %41, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %86, %85, %84, %82, %80, %79, %77, %73, %69, %62, %59, %56, %37, %33, %29, %25, %23, %19, %17, %15, %13, %3
  %46 = phi ptr [ %4, %86 ], [ %4, %85 ], [ %4, %84 ], [ %4, %82 ], [ %4, %80 ], [ %4, %79 ], [ %4, %69 ], [ %4, %73 ], [ %4, %77 ], [ %4, %62 ], [ %4, %59 ], [ %4, %56 ], [ %4, %33 ], [ %4, %29 ], [ %4, %25 ], [ %4, %23 ], [ %4, %19 ], [ %4, %17 ], [ %4, %15 ], [ %14, %13 ], [ %4, %3 ], [ %4, %37 ]
  %47 = phi ptr [ %5, %86 ], [ %5, %85 ], [ %5, %84 ], [ %5, %82 ], [ %5, %80 ], [ %5, %79 ], [ %5, %69 ], [ %5, %73 ], [ %5, %77 ], [ %5, %62 ], [ %5, %59 ], [ %5, %56 ], [ %5, %33 ], [ %5, %29 ], [ %5, %25 ], [ %5, %23 ], [ %5, %19 ], [ %5, %17 ], [ %16, %15 ], [ %5, %13 ], [ %5, %3 ], [ %5, %37 ]
  %48 = phi ptr [ %6, %86 ], [ %6, %85 ], [ %6, %84 ], [ %6, %82 ], [ %6, %80 ], [ %6, %79 ], [ %6, %69 ], [ %6, %73 ], [ %6, %77 ], [ %6, %62 ], [ %6, %59 ], [ %6, %56 ], [ %6, %33 ], [ %6, %29 ], [ %6, %25 ], [ %6, %23 ], [ %6, %19 ], [ %18, %17 ], [ %6, %15 ], [ %6, %13 ], [ %6, %3 ], [ %6, %37 ]
  %49 = phi ptr [ %7, %86 ], [ %7, %85 ], [ %7, %84 ], [ %7, %82 ], [ %7, %80 ], [ %7, %79 ], [ %7, %69 ], [ %7, %73 ], [ %7, %77 ], [ %7, %62 ], [ %7, %59 ], [ %7, %56 ], [ %7, %33 ], [ %7, %29 ], [ %7, %25 ], [ %24, %23 ], [ %7, %19 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ], [ %7, %3 ], [ %7, %37 ]
  %50 = phi i8 [ %8, %86 ], [ %8, %85 ], [ %8, %84 ], [ %8, %82 ], [ %8, %80 ], [ %8, %79 ], [ %8, %69 ], [ %8, %73 ], [ %8, %77 ], [ %8, %62 ], [ %8, %59 ], [ %8, %56 ], [ %8, %33 ], [ %8, %29 ], [ %8, %25 ], [ %8, %23 ], [ %8, %19 ], [ %8, %17 ], [ %8, %15 ], [ %8, %13 ], [ 1, %3 ], [ %8, %37 ]
  %51 = phi i8 [ %9, %86 ], [ %9, %85 ], [ %9, %84 ], [ %9, %82 ], [ %9, %80 ], [ 1, %79 ], [ %9, %69 ], [ %9, %73 ], [ %9, %77 ], [ %9, %62 ], [ %9, %59 ], [ %9, %56 ], [ %9, %33 ], [ %9, %29 ], [ %9, %25 ], [ %9, %23 ], [ %9, %19 ], [ %9, %17 ], [ %9, %15 ], [ %9, %13 ], [ %9, %3 ], [ %9, %37 ]
  %52 = phi i32 [ %10, %86 ], [ %10, %85 ], [ %10, %84 ], [ %10, %82 ], [ %10, %80 ], [ %10, %79 ], [ %10, %69 ], [ %10, %73 ], [ %10, %77 ], [ %10, %62 ], [ %10, %59 ], [ %10, %56 ], [ %10, %33 ], [ %10, %29 ], [ %10, %25 ], [ %10, %23 ], [ %22, %19 ], [ %10, %17 ], [ %10, %15 ], [ %10, %13 ], [ %10, %3 ], [ %10, %37 ]
  %53 = phi i64 [ %11, %86 ], [ %11, %85 ], [ %11, %84 ], [ %11, %82 ], [ %11, %80 ], [ %11, %79 ], [ %11, %69 ], [ %11, %73 ], [ %11, %77 ], [ %11, %62 ], [ %61, %59 ], [ %11, %56 ], [ %11, %33 ], [ %11, %29 ], [ %11, %25 ], [ %11, %23 ], [ %11, %19 ], [ %11, %17 ], [ %11, %15 ], [ %11, %13 ], [ %11, %3 ], [ %11, %37 ]
  br label %3

54:                                               ; preds = %37
  %55 = trunc i64 %39 to i32
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1, i32 noundef %55) #18
  unreachable

56:                                               ; preds = %3
  %57 = load i32, ptr @quiet, align 4, !tbaa !5
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr @quiet, align 4, !tbaa !5
  br label %45

59:                                               ; preds = %3
  %60 = load ptr, ptr @optarg, align 8, !tbaa !9
  %61 = tail call i64 @strtoll(ptr nocapture noundef %60, ptr noundef null, i32 noundef 0) #17
  br label %45

62:                                               ; preds = %3
  %63 = load ptr, ptr @optarg, align 8, !tbaa !9
  tail call void @srcfile_add_search_path(ptr noundef %63) #17
  br label %45

64:                                               ; preds = %3
  tail call void @util_version() #19
  unreachable

65:                                               ; preds = %3
  %66 = load ptr, ptr @optarg, align 8, !tbaa !9
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(7) @.str.2) #20
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, ptr @phandle_format, align 4, !tbaa !5
  br label %45

70:                                               ; preds = %65
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(6) @.str.3) #20
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 2, ptr @phandle_format, align 4, !tbaa !5
  br label %45

74:                                               ; preds = %70
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(5) @.str.4) #20
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 3, ptr @phandle_format, align 4, !tbaa !5
  br label %45

78:                                               ; preds = %74
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5, ptr noundef %66) #18
  unreachable

79:                                               ; preds = %3
  br label %45

80:                                               ; preds = %3
  %81 = load ptr, ptr @optarg, align 8, !tbaa !9
  tail call void @parse_checks_option(i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %81) #17
  br label %45

82:                                               ; preds = %3
  %83 = load ptr, ptr @optarg, align 8, !tbaa !9
  tail call void @parse_checks_option(i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %83) #17
  br label %45

84:                                               ; preds = %3
  store i32 1, ptr @generate_symbols, align 4, !tbaa !5
  br label %45

85:                                               ; preds = %3
  store i32 1, ptr @auto_label_aliases, align 4, !tbaa !5
  br label %45

86:                                               ; preds = %3
  %87 = load i32, ptr @annotate, align 4, !tbaa !5
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr @annotate, align 4, !tbaa !5
  br label %45

89:                                               ; preds = %3
  tail call void @util_usage(ptr noundef null, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #19
  unreachable

90:                                               ; preds = %3
  tail call void @util_usage(ptr noundef nonnull @.str.6, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #19
  unreachable

91:                                               ; preds = %3
  %92 = load i32, ptr @optind, align 4, !tbaa !5
  %93 = add nsw i32 %92, 1
  %94 = icmp slt i32 %93, %0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  tail call void @util_usage(ptr noundef nonnull @.str.7, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #19
  unreachable

96:                                               ; preds = %91
  %97 = icmp slt i32 %92, %0
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = sext i32 %92 to i64
  %100 = getelementptr inbounds ptr, ptr %1, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !9
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi ptr [ %101, %98 ], [ @.str, %96 ]
  %104 = load i32, ptr @minsize, align 4, !tbaa !5
  %105 = icmp ne i32 %104, 0
  %106 = load i32, ptr @padsize, align 4
  %107 = icmp ne i32 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.8) #18
  unreachable

110:                                              ; preds = %102
  %111 = icmp eq ptr %7, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %110
  %113 = tail call ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.9)
  store ptr %113, ptr @depfile, align 8, !tbaa !9
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = tail call ptr @__errno_location() #21
  %117 = load i32, ptr %116, align 4, !tbaa !5
  %118 = tail call ptr @strerror(i32 noundef %117) #17
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.10, ptr noundef nonnull %7, ptr noundef %118) #18
  unreachable

119:                                              ; preds = %112
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %113, ptr noundef nonnull @.str.11, ptr noundef %6)
  br label %121

121:                                              ; preds = %119, %110
  %122 = icmp eq ptr %4, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %121
  %124 = tail call fastcc ptr @guess_input_format(ptr noundef %103)
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi ptr [ %124, %123 ], [ %4, %121 ]
  %127 = icmp eq ptr %5, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = tail call fastcc ptr @guess_type_by_name(ptr noundef %6, ptr noundef null)
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %126, ptr noundef nonnull dereferenceable(4) @.str.12) #20
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, ptr @.str.13, ptr @.str.12
  br label %135

135:                                              ; preds = %131, %128, %125
  %136 = phi ptr [ %129, %128 ], [ %5, %125 ], [ %134, %131 ]
  %137 = load i32, ptr @annotate, align 4, !tbaa !5
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %135
  %140 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %126, ptr noundef nonnull dereferenceable(4) @.str.12) #20
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %136, ptr noundef nonnull dereferenceable(4) @.str.12) #20
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %142, %139
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.14) #18
  unreachable

146:                                              ; preds = %142, %135
  %147 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %126, ptr noundef nonnull dereferenceable(4) @.str.12) #20
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = tail call ptr @dt_from_source(ptr noundef %103) #17
  br label %162

151:                                              ; preds = %146
  %152 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %126, ptr noundef nonnull dereferenceable(3) @.str.15) #20
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = tail call ptr @dt_from_fs(ptr noundef %103) #17
  br label %162

156:                                              ; preds = %151
  %157 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %126, ptr noundef nonnull dereferenceable(4) @.str.13) #20
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = tail call ptr @dt_from_blob(ptr noundef %103) #17
  br label %162

161:                                              ; preds = %156
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.16, ptr noundef %126) #18
  unreachable

162:                                              ; preds = %159, %154, %149
  %163 = phi ptr [ %150, %149 ], [ %155, %154 ], [ %160, %159 ]
  %164 = getelementptr inbounds %struct.dt_info, ptr %163, i64 0, i32 4
  store ptr %6, ptr %164, align 8, !tbaa !12
  %165 = load ptr, ptr @depfile, align 8, !tbaa !9
  %166 = icmp eq ptr %165, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %162
  %168 = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %165)
  %169 = load ptr, ptr @depfile, align 8, !tbaa !9
  %170 = tail call i32 @fclose(ptr noundef %169)
  br label %171

171:                                              ; preds = %167, %162
  %172 = icmp eq i64 %11, -1
  br i1 %172, label %176, label %173

173:                                              ; preds = %171
  %174 = trunc i64 %11 to i32
  %175 = getelementptr inbounds %struct.dt_info, ptr %163, i64 0, i32 2
  store i32 %174, ptr %175, align 8, !tbaa !14
  br label %176

176:                                              ; preds = %173, %171
  %177 = getelementptr inbounds %struct.dt_info, ptr %163, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !15
  tail call fastcc void @fill_fullpaths(ptr noundef %178, ptr noundef nonnull @.str.17)
  %179 = load i32, ptr %163, align 8, !tbaa !16
  %180 = and i32 %179, 2
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %176
  store i32 1, ptr @generate_fixups, align 4, !tbaa !5
  br label %183

183:                                              ; preds = %182, %176
  %184 = icmp ne i8 %8, 0
  tail call void @process_checks(i1 noundef zeroext %184, ptr noundef nonnull %163) #17
  %185 = load i32, ptr @auto_label_aliases, align 4, !tbaa !5
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  tail call void @generate_label_tree(ptr noundef nonnull %163, ptr noundef nonnull @.str.18, i1 noundef zeroext false) #17
  br label %188

188:                                              ; preds = %187, %183
  %189 = load i32, ptr @generate_symbols, align 4, !tbaa !5
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  tail call void @generate_label_tree(ptr noundef nonnull %163, ptr noundef nonnull @.str.19, i1 noundef zeroext true) #17
  br label %192

192:                                              ; preds = %191, %188
  %193 = load i32, ptr @generate_fixups, align 4, !tbaa !5
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  tail call void @generate_fixups_tree(ptr noundef nonnull %163, ptr noundef nonnull @.str.20) #17
  tail call void @generate_local_fixups_tree(ptr noundef nonnull %163, ptr noundef nonnull @.str.21) #17
  br label %196

196:                                              ; preds = %195, %192
  %197 = icmp eq i8 %9, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %196
  tail call void @sort_tree(ptr noundef nonnull %163) #17
  br label %199

199:                                              ; preds = %198, %196
  %200 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str) #20
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load ptr, ptr @stdout, align 8, !tbaa !9
  br label %211

204:                                              ; preds = %199
  %205 = tail call ptr @fopen(ptr noundef %6, ptr noundef nonnull @.str.22)
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = tail call ptr @__errno_location() #21
  %209 = load i32, ptr %208, align 4, !tbaa !5
  %210 = tail call ptr @strerror(i32 noundef %209) #17
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.23, ptr noundef %6, ptr noundef %210) #18
  unreachable

211:                                              ; preds = %204, %202
  %212 = phi ptr [ %203, %202 ], [ %205, %204 ]
  %213 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %136, ptr noundef nonnull dereferenceable(4) @.str.12) #20
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  tail call void @dt_to_source(ptr noundef %212, ptr noundef nonnull %163) #17
  br label %228

216:                                              ; preds = %211
  %217 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %136, ptr noundef nonnull dereferenceable(4) @.str.13) #20
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  tail call void @dt_to_blob(ptr noundef %212, ptr noundef nonnull %163, i32 noundef %10) #17
  br label %228

220:                                              ; preds = %216
  %221 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %136, ptr noundef nonnull dereferenceable(4) @.str.24) #20
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  tail call void @dt_to_asm(ptr noundef %212, ptr noundef nonnull %163, i32 noundef %10) #17
  br label %228

224:                                              ; preds = %220
  %225 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %136, ptr noundef nonnull dereferenceable(5) @.str.25) #20
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %224
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.26, ptr noundef %136) #18
  unreachable

228:                                              ; preds = %224, %223, %219, %215
  tail call void @exit(i32 noundef 0) #19
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %0, ...) unnamed_addr #4 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !9
  %4 = call i64 @fwrite(ptr nonnull @.str.49, i64 13, i64 1, ptr %3) #22
  %5 = load ptr, ptr @stderr, align 8, !tbaa !9
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %2) #22
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

declare void @srcfile_add_search_path(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @util_version() local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare void @parse_checks_option(i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @util_usage(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc ptr @guess_input_format(ptr noundef %0) unnamed_addr #10 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = trunc i32 %8 to i16
  %10 = and i16 %9, -4096
  switch i16 %10, label %11 [
    i16 16384, label %24
    i16 -32768, label %12
  ]

11:                                               ; preds = %6
  br label %24

12:                                               ; preds = %6
  %13 = call ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.72)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %13)
  %17 = icmp eq i64 %16, 1
  %18 = call i32 @fclose(ptr noundef nonnull %13)
  br i1 %17, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, ptr %3, align 4, !tbaa !5
  %21 = icmp eq i32 %20, -302117424
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call fastcc ptr @guess_type_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  br label %24

24:                                               ; preds = %22, %19, %15, %12, %11, %6, %1
  %25 = phi ptr [ %23, %22 ], [ @.str.12, %11 ], [ @.str.12, %1 ], [ @.str.15, %6 ], [ @.str.12, %12 ], [ @.str.13, %19 ], [ @.str.12, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #17
  ret ptr %25
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal fastcc ptr @guess_type_by_name(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #11 {
  %3 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strcasecmp(ptr noundef nonnull %3, ptr noundef nonnull @.str.73) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcasecmp(ptr noundef nonnull %3, ptr noundef nonnull @.str.74) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcasecmp(ptr noundef nonnull %3, ptr noundef nonnull @.str.76) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcasecmp(ptr noundef nonnull %3, ptr noundef nonnull @.str.77) #20
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr @.str.13, ptr %1
  br label %18

18:                                               ; preds = %14, %11, %8, %5, %2
  %19 = phi ptr [ %1, %2 ], [ @.str.12, %5 ], [ @.str.75, %8 ], [ @.str.13, %11 ], [ %17, %14 ]
  ret ptr %19
}

declare ptr @dt_from_source(ptr noundef) local_unnamed_addr #5

declare ptr @dt_from_fs(ptr noundef) local_unnamed_addr #5

declare ptr @dt_from_blob(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_fullpaths(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = tail call ptr @join_path(ptr noundef %1, ptr noundef %4) #17
  %6 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 6
  store ptr %5, ptr %6, align 8, !tbaa !24
  %7 = load ptr, ptr %3, align 8, !tbaa !21
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef 64) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %7 to i64
  %13 = sub i64 %11, %12
  br label %16

14:                                               ; preds = %2
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #20
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i64 [ %15, %14 ], [ %13, %10 ]
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 7
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %29, %16
  %24 = phi ptr [ %31, %29 ], [ %21, %16 ]
  %25 = load i8, ptr %24, align 8, !tbaa !25, !range !26
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 8, !tbaa !24
  tail call fastcc void @fill_fullpaths(ptr noundef nonnull %24, ptr noundef %28)
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.node, ptr %24, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %23

33:                                               ; preds = %29, %16
  ret void
}

declare void @process_checks(i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare void @generate_label_tree(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @generate_fixups_tree(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @generate_local_fixups_tree(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sort_tree(ptr noundef) local_unnamed_addr #5

declare void @dt_to_source(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_to_blob(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_to_asm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @__xstat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

declare ptr @join_path(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind readnone willreturn }
attributes #22 = { cold }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{i32 0, i32 33}
!12 = !{!13, !10, i64 32}
!13 = !{!"dt_info", !6, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32}
!14 = !{!13, !6, i64 16}
!15 = !{!13, !10, i64 24}
!16 = !{!13, !6, i64 0}
!17 = !{!18, !6, i64 24}
!18 = !{!"stat", !19, i64 0, !19, i64 8, !19, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !20, i64 72, !20, i64 88, !20, i64 104, !7, i64 120}
!19 = !{!"long", !7, i64 0}
!20 = !{!"timespec", !19, i64 0, !19, i64 8}
!21 = !{!22, !10, i64 8}
!22 = !{!"node", !23, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !10, i64 72, !10, i64 80, !10, i64 88, !23, i64 96, !23, i64 97}
!23 = !{!"_Bool", !7, i64 0}
!24 = !{!22, !10, i64 48}
!25 = !{!22, !23, i64 0}
!26 = !{i8 0, i8 2}
