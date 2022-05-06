; ModuleID = '/llk/IR/scripts/kconfig/conf.c_pt.bc'
source_filename = "../scripts/kconfig/conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.menu = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.timeval = type { i64, i64 }
%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%struct.property = type { ptr, i32, ptr, %struct.expr_value, ptr, ptr, ptr, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }
%struct.gstr = type { i64, ptr, i32 }

@tty_stdio = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@long_opts = internal constant [19 x %struct.option] [%struct.option { ptr @.str.19, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.20, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.21, i32 0, ptr @input_mode_opt, i32 0 }, %struct.option { ptr @.str.22, i32 0, ptr @input_mode_opt, i32 2 }, %struct.option { ptr @.str.23, i32 0, ptr @input_mode_opt, i32 1 }, %struct.option { ptr @.str.24, i32 1, ptr @input_mode_opt, i32 8 }, %struct.option { ptr @.str.25, i32 1, ptr @input_mode_opt, i32 9 }, %struct.option { ptr @.str.26, i32 0, ptr @input_mode_opt, i32 3 }, %struct.option { ptr @.str.27, i32 0, ptr @input_mode_opt, i32 4 }, %struct.option { ptr @.str.28, i32 0, ptr @input_mode_opt, i32 5 }, %struct.option { ptr @.str.29, i32 0, ptr @input_mode_opt, i32 6 }, %struct.option { ptr @.str.30, i32 0, ptr @input_mode_opt, i32 7 }, %struct.option { ptr @.str.31, i32 0, ptr @input_mode_opt, i32 10 }, %struct.option { ptr @.str.32, i32 0, ptr @input_mode_opt, i32 11 }, %struct.option { ptr @.str.33, i32 0, ptr @input_mode_opt, i32 12 }, %struct.option { ptr @.str.34, i32 0, ptr @input_mode_opt, i32 13 }, %struct.option { ptr @.str.35, i32 0, ptr @input_mode_opt, i32 14 }, %struct.option { ptr @.str.36, i32 0, ptr @input_mode_opt, i32 15 }, %struct.option zeroinitializer], align 16
@input_mode_opt = internal global i32 0, align 4
@input_mode = internal unnamed_addr global i32 0, align 4
@sync_kconfig = internal unnamed_addr global i1 false, align 4
@optarg = external local_unnamed_addr global ptr, align 8
@optind = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: Kconfig file missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"***\0A*** Can't find default configuration \22%s\22!\0A***\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"KCONFIG_ALLCONFIG\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"*** Can't read seed configuration \22%s\22!\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"allno.config\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"allyes.config\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"allmod.config\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"alldef.config\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"allrandom.config\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"all.config\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"*** KCONFIG_ALLCONFIG set, but no \22%s\22 or \22all.config\22 file found\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"KCONFIG_NOSILENTUPDATE\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"\0A*** The configuration requires explicit update.\0A\0A\00", align 1
@rootmenu = external global %struct.menu, align 8
@rootEntry = internal unnamed_addr global ptr null, align 8
@conf_cnt = internal unnamed_addr global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"n*** Error while saving defconfig to: %s\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\0A*** Error during writing of the configuration.\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"\0A*** Error during sync of the configuration.\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"oldaskconfig\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"oldconfig\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"syncconfig\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"defconfig\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"savedefconfig\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"allnoconfig\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"allyesconfig\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"allmodconfig\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"alldefconfig\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"randconfig\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"listnewconfig\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"helpnewconfig\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"olddefconfig\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"yes2modconfig\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"mod2yesconfig\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"mod2noconfig\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Usage: %s [options] <kconfig-file>\0A\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"KCONFIG_SEED\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"KCONFIG_SEED=0x%X\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"KCONFIG_PROBABILITY\00", align 1
@symbol_hash = external local_unnamed_addr global [9973 x ptr], align 16
@.str.63 = private unnamed_addr constant [16 x i8] c"%*c\0A%*c %s\0A%*c\0A\00", align 1
@indent = internal unnamed_addr global i32 1, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"%*s%s\0A\00", align 1
@line = internal global [4096 x i8] zeroinitializer, align 16
@.str.65 = private unnamed_addr constant [8 x i8] c"%*c %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"%*c\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c" %d. %s\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c" (NEW)\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"%*schoice\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"[1-%d?]: \00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.74 = private unnamed_addr constant [35 x i8] c"\0AError in reading or end of file.\0A\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"%*s%s \00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"(NEW) \00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"/n\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"/m\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"/y\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"/?] \00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@str = private unnamed_addr constant [17 x i8] c"Generic options:\00", align 1
@str.90 = private unnamed_addr constant [55 x i8] c"  -h, --help              Print this message and exit.\00", align 1
@str.91 = private unnamed_addr constant [44 x i8] c"  -s, --silent            Do not print log.\00", align 1
@str.92 = private unnamed_addr constant [14 x i8] c"Mode options:\00", align 1
@str.93 = private unnamed_addr constant [43 x i8] c"  --listnewconfig         List new options\00", align 1
@str.94 = private unnamed_addr constant [57 x i8] c"  --helpnewconfig         List new options and help text\00", align 1
@str.95 = private unnamed_addr constant [82 x i8] c"  --oldaskconfig          Start a new configuration using a line-oriented program\00", align 1
@str.96 = private unnamed_addr constant [82 x i8] c"  --oldconfig             Update a configuration using a provided .config as base\00", align 1
@str.97 = private unnamed_addr constant [133 x i8] c"  --syncconfig            Similar to oldconfig but generates configuration in\0A                          include/{generated/,config/}\00", align 1
@str.98 = private unnamed_addr constant [88 x i8] c"  --olddefconfig          Same as oldconfig but sets new symbols to their default value\00", align 1
@str.99 = private unnamed_addr constant [68 x i8] c"  --defconfig <file>      New config with default defined in <file>\00", align 1
@str.100 = private unnamed_addr constant [75 x i8] c"  --savedefconfig <file>  Save the minimal current configuration to <file>\00", align 1
@str.101 = private unnamed_addr constant [76 x i8] c"  --allnoconfig           New config where all options are answered with no\00", align 1
@str.102 = private unnamed_addr constant [77 x i8] c"  --allyesconfig          New config where all options are answered with yes\00", align 1
@str.103 = private unnamed_addr constant [77 x i8] c"  --allmodconfig          New config where all options are answered with mod\00", align 1
@str.104 = private unnamed_addr constant [69 x i8] c"  --alldefconfig          New config with all symbols set to default\00", align 1
@str.105 = private unnamed_addr constant [71 x i8] c"  --randconfig            New config with random answer to all options\00", align 1
@str.106 = private unnamed_addr constant [69 x i8] c"  --yes2modconfig         Change answers from yes to mod if possible\00", align 1
@str.107 = private unnamed_addr constant [69 x i8] c"  --mod2yesconfig         Change answers from mod to yes if possible\00", align 1
@str.108 = private unnamed_addr constant [68 x i8] c"  --mod2noconfig          Change answers from mod to no if possible\00", align 1
@str.109 = private unnamed_addr constant [65 x i8] c"  (If none of the above is given, --oldaskconfig is the default)\00", align 1
@str.111 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@str.112 = private unnamed_addr constant [24 x i8] c"*\0A* Restart config...\0A*\00", align 1
@str.113 = private unnamed_addr constant [7 x i8] c"[1]: 1\00", align 1
@reltable.main = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = tail call i32 @isatty(i32 noundef 0) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @isatty(i32 noundef 1) #15
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  store i32 %13, ptr @tty_stdio, align 4, !tbaa !9
  %14 = getelementptr inbounds %struct.timeval, ptr %4, i64 0, i32 1
  br label %15

15:                                               ; preds = %25, %11
  %16 = phi ptr [ %26, %25 ], [ null, %11 ]
  br label %17

17:                                               ; preds = %19, %15
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @long_opts, ptr noundef null) #15
  switch i32 %18, label %19 [
    i32 -1, label %49
    i32 104, label %20
    i32 115, label %21
    i32 0, label %22
  ]

19:                                               ; preds = %45, %24, %22, %21, %17
  br label %17

20:                                               ; preds = %17
  tail call fastcc void @conf_usage(ptr noundef %5)
  tail call void @exit(i32 noundef 1) #16
  unreachable

21:                                               ; preds = %17
  tail call void @conf_set_message_callback(ptr noundef null) #15
  br label %19

22:                                               ; preds = %17
  %23 = load i32, ptr @input_mode_opt, align 4, !tbaa !9
  store i32 %23, ptr @input_mode, align 4, !tbaa !11
  switch i32 %23, label %19 [
    i32 1, label %24
    i32 8, label %25
    i32 9, label %25
    i32 7, label %27
  ]

24:                                               ; preds = %22
  tail call void @conf_set_message_callback(ptr noundef null) #15
  store i1 true, ptr @sync_kconfig, align 4
  br label %19

25:                                               ; preds = %22, %22
  %26 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %15

27:                                               ; preds = %22
  %28 = tail call ptr @getenv(ptr noundef nonnull @.str.60) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load i8, ptr %28, align 1, !tbaa !11
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %34 = call i64 @strtol(ptr noundef nonnull %28, ptr noundef nonnull %3, i32 noundef 0) #15
  %35 = load ptr, ptr %3, align 8, !tbaa !5
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = icmp eq i8 %36, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br i1 %37, label %45, label %38

38:                                               ; preds = %33, %30, %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %39 = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #15
  %40 = load i64, ptr %4, align 8, !tbaa !12
  %41 = add nsw i64 %40, 1
  %42 = load i64, ptr %14, align 8, !tbaa !15
  %43 = add nsw i64 %42, 1
  %44 = mul nsw i64 %43, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %45

45:                                               ; preds = %38, %33
  %46 = phi i64 [ %34, %33 ], [ %44, %38 ]
  %47 = trunc i64 %46 to i32
  %48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.61, i32 noundef %47) #15
  tail call void @srand(i32 noundef %47) #15
  br label %19

49:                                               ; preds = %17
  %50 = load i32, ptr @optind, align 4, !tbaa !9
  %51 = icmp eq i32 %50, %0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load ptr, ptr @stderr, align 8, !tbaa !5
  %54 = load ptr, ptr %1, align 8, !tbaa !5
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.1, ptr noundef %54) #17
  tail call fastcc void @conf_usage(ptr noundef %5)
  tail call void @exit(i32 noundef 1) #16
  unreachable

56:                                               ; preds = %49
  %57 = sext i32 %50 to i64
  %58 = getelementptr inbounds ptr, ptr %1, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  tail call void @conf_parse(ptr noundef %59) #15
  %60 = load i32, ptr @input_mode, align 4, !tbaa !11
  switch i32 %60, label %101 [
    i32 8, label %61
    i32 9, label %67
    i32 1, label %67
    i32 0, label %67
    i32 2, label %67
    i32 10, label %67
    i32 11, label %67
    i32 12, label %67
    i32 13, label %67
    i32 14, label %67
    i32 15, label %67
    i32 3, label %69
    i32 4, label %69
    i32 5, label %69
    i32 6, label %69
    i32 7, label %69
  ]

61:                                               ; preds = %56
  %62 = tail call i32 @conf_read(ptr noundef %16) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %101, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr @stderr, align 8, !tbaa !5
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.2, ptr noundef %16) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

67:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56
  %68 = tail call i32 @conf_read(ptr noundef null) #15
  br label %101

69:                                               ; preds = %56, %56, %56, %56, %56
  %70 = tail call ptr @getenv(ptr noundef nonnull @.str.3) #15
  %71 = icmp eq ptr %70, null
  br i1 %71, label %101, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %70, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = tail call i32 @strcmp(ptr noundef nonnull %70, ptr noundef nonnull dereferenceable(2) @.str.5) #18
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = tail call i32 @conf_read_simple(ptr noundef nonnull %70, i32 noundef 0) #15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr @stderr, align 8, !tbaa !5
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.6, ptr noundef nonnull %70) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

84:                                               ; preds = %75, %72
  %85 = add i32 %60, -3
  %86 = icmp ult i32 %85, 5
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = sext i32 %85 to i64
  %89 = shl i64 %88, 2
  %90 = call ptr @llvm.load.relative.i64(ptr @reltable.main, i64 %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi ptr [ %70, %84 ], [ %90, %87 ]
  %93 = tail call i32 @conf_read_simple(ptr noundef nonnull %92, i32 noundef 0) #15
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = tail call i32 @conf_read_simple(ptr noundef nonnull @.str.12, i32 noundef 0) #15
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr @stderr, align 8, !tbaa !5
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.13, ptr noundef nonnull %92) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

101:                                              ; preds = %95, %91, %78, %69, %67, %61, %56
  %102 = load i1, ptr @sync_kconfig, align 4
  br i1 %102, label %103, label %114

103:                                              ; preds = %101
  %104 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #15
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load i8, ptr %104, align 1, !tbaa !11
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = tail call zeroext i1 @conf_get_changed() #15
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = load ptr, ptr @stderr, align 8, !tbaa !5
  %113 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 50, i64 1, ptr %112) #17
  br label %228

114:                                              ; preds = %109, %106, %103, %101
  %115 = phi i1 [ true, %103 ], [ true, %106 ], [ true, %101 ], [ false, %109 ]
  %116 = load i32, ptr @input_mode, align 4, !tbaa !11
  switch i32 %116, label %199 [
    i32 3, label %117
    i32 4, label %119
    i32 5, label %121
    i32 6, label %123
    i32 7, label %125
    i32 8, label %127
    i32 1, label %193
    i32 13, label %129
    i32 14, label %150
    i32 15, label %171
    i32 0, label %192
    i32 2, label %193
    i32 10, label %193
    i32 11, label %193
  ]

117:                                              ; preds = %114
  %118 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 3)
  br label %197

119:                                              ; preds = %114
  %120 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 1)
  br label %197

121:                                              ; preds = %114
  %122 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 2)
  br label %197

123:                                              ; preds = %114
  %124 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 0)
  br label %197

125:                                              ; preds = %125, %114
  %126 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 4)
  br i1 %126, label %125, label %197

127:                                              ; preds = %114
  %128 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 0)
  br label %197

129:                                              ; preds = %146, %114
  %130 = phi i64 [ %147, %146 ], [ 0, %114 ]
  %131 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !5
  %133 = icmp eq ptr %132, null
  br i1 %133, label %146, label %134

134:                                              ; preds = %143, %129
  %135 = phi ptr [ %144, %143 ], [ %132, %129 ]
  %136 = tail call i32 @sym_get_type(ptr noundef nonnull %135) #15
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.symbol, ptr %135, i64 0, i32 4, i64 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !16
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 1, ptr %139, align 8, !tbaa !16
  br label %143

143:                                              ; preds = %142, %138, %134
  %144 = load ptr, ptr %135, align 8, !tbaa !5
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %134

146:                                              ; preds = %143, %129
  %147 = add nuw nsw i64 %130, 1
  %148 = icmp eq i64 %147, 9973
  br i1 %148, label %149, label %129

149:                                              ; preds = %146
  tail call void @sym_clear_all_valid() #15
  br label %197

150:                                              ; preds = %167, %114
  %151 = phi i64 [ %168, %167 ], [ 0, %114 ]
  %152 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  %154 = icmp eq ptr %153, null
  br i1 %154, label %167, label %155

155:                                              ; preds = %164, %150
  %156 = phi ptr [ %165, %164 ], [ %153, %150 ]
  %157 = tail call i32 @sym_get_type(ptr noundef nonnull %156) #15
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.symbol, ptr %156, i64 0, i32 4, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !16
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 2, ptr %160, align 8, !tbaa !16
  br label %164

164:                                              ; preds = %163, %159, %155
  %165 = load ptr, ptr %156, align 8, !tbaa !5
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %155

167:                                              ; preds = %164, %150
  %168 = add nuw nsw i64 %151, 1
  %169 = icmp eq i64 %168, 9973
  br i1 %169, label %170, label %150

170:                                              ; preds = %167
  tail call void @sym_clear_all_valid() #15
  br label %197

171:                                              ; preds = %188, %114
  %172 = phi i64 [ %189, %188 ], [ 0, %114 ]
  %173 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  %175 = icmp eq ptr %174, null
  br i1 %175, label %188, label %176

176:                                              ; preds = %185, %171
  %177 = phi ptr [ %186, %185 ], [ %174, %171 ]
  %178 = tail call i32 @sym_get_type(ptr noundef nonnull %177) #15
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.symbol, ptr %177, i64 0, i32 4, i64 0, i32 1
  %182 = load i32, ptr %181, align 8, !tbaa !16
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i32 0, ptr %181, align 8, !tbaa !16
  br label %185

185:                                              ; preds = %184, %180, %176
  %186 = load ptr, ptr %177, align 8, !tbaa !5
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %176

188:                                              ; preds = %185, %171
  %189 = add nuw nsw i64 %172, 1
  %190 = icmp eq i64 %189, 9973
  br i1 %190, label %191, label %171

191:                                              ; preds = %188
  tail call void @sym_clear_all_valid() #15
  br label %197

192:                                              ; preds = %114
  store ptr @rootmenu, ptr @rootEntry, align 8, !tbaa !5
  tail call fastcc void @conf(ptr noundef nonnull @rootmenu)
  store i32 2, ptr @input_mode, align 4, !tbaa !11
  br label %193

193:                                              ; preds = %192, %114, %114, %114, %114
  br label %194

194:                                              ; preds = %194, %193
  store i32 0, ptr @conf_cnt, align 4, !tbaa !9
  tail call fastcc void @check_conf(ptr noundef nonnull @rootmenu)
  %195 = load i32, ptr @conf_cnt, align 4, !tbaa !9
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %194

197:                                              ; preds = %194, %191, %170, %149, %127, %125, %123, %121, %119, %117
  %198 = load i32, ptr @input_mode, align 4, !tbaa !11
  br label %199

199:                                              ; preds = %197, %114
  %200 = phi i32 [ %198, %197 ], [ %116, %114 ]
  %201 = icmp eq i32 %200, 9
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = tail call i32 @conf_write_defconfig(ptr noundef %16) #15
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %228, label %205

205:                                              ; preds = %202
  %206 = load ptr, ptr @stderr, align 8, !tbaa !5
  %207 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef nonnull @.str.16, ptr noundef %16) #17
  br label %228

208:                                              ; preds = %199
  %209 = add i32 %200, -12
  %210 = icmp ult i32 %209, -2
  br i1 %210, label %211, label %228

211:                                              ; preds = %208
  br i1 %115, label %212, label %218

212:                                              ; preds = %211
  %213 = tail call i32 @conf_write(ptr noundef null) #15
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr @stderr, align 8, !tbaa !5
  %217 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 49, i64 1, ptr %216) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

218:                                              ; preds = %212, %211
  %219 = load i1, ptr @sync_kconfig, align 4
  %220 = zext i1 %219 to i32
  %221 = tail call i32 @conf_write_autoconf(i32 noundef %220) #15
  %222 = icmp ne i32 %221, 0
  %223 = load i1, ptr @sync_kconfig, align 4
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load ptr, ptr @stderr, align 8, !tbaa !5
  %227 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 46, i64 1, ptr %226) #17
  br label %228

228:                                              ; preds = %225, %218, %208, %205, %202, %111
  %229 = phi i32 [ 1, %111 ], [ 1, %205 ], [ 1, %225 ], [ 0, %208 ], [ 0, %218 ], [ 0, %202 ]
  ret i32 %229
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @conf_usage(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.37, ptr noundef %0)
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %4 = tail call i32 @putc(i32 noundef 10, ptr noundef %3) #15
  %5 = tail call i32 @puts(ptr nonnull @str)
  %6 = tail call i32 @puts(ptr nonnull @str.90)
  %7 = tail call i32 @puts(ptr nonnull @str.91)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %9 = tail call i32 @putc(i32 noundef 10, ptr noundef %8) #15
  %10 = tail call i32 @puts(ptr nonnull @str.92)
  %11 = tail call i32 @puts(ptr nonnull @str.93)
  %12 = tail call i32 @puts(ptr nonnull @str.94)
  %13 = tail call i32 @puts(ptr nonnull @str.95)
  %14 = tail call i32 @puts(ptr nonnull @str.96)
  %15 = tail call i32 @puts(ptr nonnull @str.97)
  %16 = tail call i32 @puts(ptr nonnull @str.98)
  %17 = tail call i32 @puts(ptr nonnull @str.99)
  %18 = tail call i32 @puts(ptr nonnull @str.100)
  %19 = tail call i32 @puts(ptr nonnull @str.101)
  %20 = tail call i32 @puts(ptr nonnull @str.102)
  %21 = tail call i32 @puts(ptr nonnull @str.103)
  %22 = tail call i32 @puts(ptr nonnull @str.104)
  %23 = tail call i32 @puts(ptr nonnull @str.105)
  %24 = tail call i32 @puts(ptr nonnull @str.106)
  %25 = tail call i32 @puts(ptr nonnull @str.107)
  %26 = tail call i32 @puts(ptr nonnull @str.108)
  %27 = tail call i32 @puts(ptr nonnull @str.109)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare void @conf_set_message_callback(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @conf_parse(ptr noundef) local_unnamed_addr #5

declare i32 @conf_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare i32 @conf_read_simple(ptr noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @conf_get_changed() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = icmp eq i32 %0, 4
  br i1 %3, label %4, label %60

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.62) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %52, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %11 = call i64 @strtol(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef 10) #15
  %12 = trunc i64 %11 to i32
  %13 = icmp ult i32 %12, 101
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !5
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 58
  %18 = zext i1 %17 to i64
  %19 = getelementptr i8, ptr %15, i64 %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %14
  %22 = load i8, ptr %19, align 1, !tbaa !11
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %25 = call i64 @strtol(ptr noundef nonnull %19, ptr noundef nonnull %2, i32 noundef 10) #15
  %26 = trunc i64 %25 to i32
  %27 = icmp ult i32 %26, 101
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 8, !tbaa !5
  %30 = load i8, ptr %29, align 1, !tbaa !11
  %31 = icmp eq i8 %30, 58
  %32 = zext i1 %31 to i64
  %33 = getelementptr i8, ptr %29, i64 %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %28
  %36 = load i8, ptr %33, align 1, !tbaa !11
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %39 = call i64 @strtol(ptr noundef nonnull %33, ptr noundef nonnull %2, i32 noundef 10) #15
  %40 = trunc i64 %39 to i32
  %41 = icmp ult i32 %40, 101
  br i1 %41, label %51, label %42

42:                                               ; preds = %38, %24, %10
  %43 = tail call ptr @__errno_location() #19
  store i32 34, ptr %43, align 4, !tbaa !9
  tail call void @perror(ptr noundef nonnull @.str.62) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

44:                                               ; preds = %21, %14
  %45 = trunc i64 %11 to i32
  %46 = lshr i32 %45, 1
  %47 = and i32 %46, 127
  %48 = sub nsw i32 %12, %47
  br label %52

49:                                               ; preds = %35, %28
  %50 = add nuw nsw i32 %26, %12
  br label %52

51:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %52

52:                                               ; preds = %51, %49, %44, %7, %4
  %53 = phi i32 [ %12, %51 ], [ %50, %49 ], [ %12, %44 ], [ 50, %4 ], [ 50, %7 ]
  %54 = phi i32 [ %26, %51 ], [ %12, %49 ], [ %48, %44 ], [ 33, %4 ], [ 33, %7 ]
  %55 = phi i32 [ %40, %51 ], [ %26, %49 ], [ %47, %44 ], [ 33, %4 ], [ 33, %7 ]
  %56 = add nsw i32 %55, %54
  %57 = icmp sgt i32 %56, 100
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = tail call ptr @__errno_location() #19
  store i32 34, ptr %59, align 4, !tbaa !9
  tail call void @perror(ptr noundef nonnull @.str.62) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

60:                                               ; preds = %52, %1
  %61 = phi i32 [ 50, %1 ], [ %53, %52 ]
  %62 = phi i32 [ 33, %1 ], [ %54, %52 ]
  %63 = phi i32 [ 33, %1 ], [ %55, %52 ]
  %64 = add nsw i32 %63, %62
  br label %65

65:                                               ; preds = %116, %60
  %66 = phi i64 [ 0, %60 ], [ %118, %116 ]
  %67 = phi i8 [ 0, %60 ], [ %117, %116 ]
  %68 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %66
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %116, label %71

71:                                               ; preds = %112, %65
  %72 = phi ptr [ %114, %112 ], [ %69, %65 ]
  %73 = phi i8 [ %113, %112 ], [ %67, %65 ]
  %74 = getelementptr inbounds %struct.symbol, ptr %72, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !18
  %76 = and i32 %75, 65664
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %71
  %79 = tail call i32 @sym_get_type(ptr noundef nonnull %72) #15
  %80 = add i32 %79, -1
  %81 = icmp ult i32 %80, 2
  br i1 %81, label %82, label %112

82:                                               ; preds = %78
  switch i32 %0, label %112 [
    i32 1, label %83
    i32 2, label %85
    i32 3, label %87
    i32 4, label %89
  ]

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.symbol, ptr %72, i64 0, i32 4, i64 0, i32 1
  store i32 2, ptr %84, align 8, !tbaa !16
  br label %105

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.symbol, ptr %72, i64 0, i32 4, i64 0, i32 1
  store i32 1, ptr %86, align 8, !tbaa !16
  br label %105

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.symbol, ptr %72, i64 0, i32 4, i64 0, i32 1
  store i32 0, ptr %88, align 8, !tbaa !16
  br label %105

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.symbol, ptr %72, i64 0, i32 4, i64 0, i32 1
  store i32 0, ptr %90, align 8, !tbaa !16
  %91 = tail call i32 @rand() #15
  %92 = srem i32 %91, 100
  %93 = getelementptr inbounds %struct.symbol, ptr %72, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !21
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = icmp slt i32 %92, %62
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  store i32 2, ptr %90, align 8, !tbaa !16
  br label %105

99:                                               ; preds = %96
  %100 = icmp slt i32 %92, %64
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  store i32 1, ptr %90, align 8, !tbaa !16
  br label %105

102:                                              ; preds = %89
  %103 = icmp slt i32 %92, %61
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  store i32 2, ptr %90, align 8, !tbaa !16
  br label %105

105:                                              ; preds = %104, %102, %101, %99, %98, %87, %85, %83
  %106 = load i32, ptr %74, align 4, !tbaa !18
  %107 = and i32 %106, 16
  %108 = icmp ne i32 %107, 0
  %109 = and i1 %3, %108
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = or i32 %106, 65536
  store i32 %111, ptr %74, align 4, !tbaa !18
  br label %112

112:                                              ; preds = %110, %105, %82, %78, %71
  %113 = phi i8 [ %73, %71 ], [ %73, %78 ], [ 1, %82 ], [ 1, %105 ], [ 1, %110 ]
  %114 = load ptr, ptr %72, align 8, !tbaa !5
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %71

116:                                              ; preds = %112, %65
  %117 = phi i8 [ %67, %65 ], [ %113, %112 ]
  %118 = add nuw nsw i64 %66, 1
  %119 = icmp eq i64 %118, 9973
  br i1 %119, label %120, label %65

120:                                              ; preds = %116
  tail call void @sym_clear_all_valid() #15
  br i1 %3, label %143, label %121

121:                                              ; preds = %140, %120
  %122 = phi i64 [ %141, %140 ], [ 0, %120 ]
  %123 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = icmp eq ptr %124, null
  br i1 %125, label %140, label %126

126:                                              ; preds = %137, %121
  %127 = phi ptr [ %138, %137 ], [ %124, %121 ]
  %128 = getelementptr inbounds %struct.symbol, ptr %127, i64 0, i32 6
  %129 = load i32, ptr %128, align 4, !tbaa !18
  %130 = and i32 %129, 65552
  %131 = icmp eq i32 %130, 16
  %132 = and i32 %129, 32
  %133 = icmp ne i32 %132, 0
  %134 = or i1 %131, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = or i32 %129, 1048576
  store i32 %136, ptr %128, align 4, !tbaa !18
  br label %137

137:                                              ; preds = %135, %126
  %138 = load ptr, ptr %127, align 8, !tbaa !5
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %126

140:                                              ; preds = %137, %121
  %141 = add nuw nsw i64 %122, 1
  %142 = icmp eq i64 %141, 9973
  br i1 %142, label %143, label %121

143:                                              ; preds = %140, %120
  br label %144

144:                                              ; preds = %219, %143
  %145 = phi i64 [ %221, %219 ], [ 0, %143 ]
  %146 = phi i8 [ %220, %219 ], [ %117, %143 ]
  %147 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %145
  %148 = load ptr, ptr %147, align 8, !tbaa !5
  %149 = icmp eq ptr %148, null
  br i1 %149, label %219, label %150

150:                                              ; preds = %215, %144
  %151 = phi ptr [ %217, %215 ], [ %148, %144 ]
  %152 = phi i8 [ %216, %215 ], [ %146, %144 ]
  %153 = getelementptr inbounds %struct.symbol, ptr %151, i64 0, i32 6
  %154 = load i32, ptr %153, align 4, !tbaa !18
  %155 = and i32 %154, 65552
  %156 = icmp eq i32 %155, 16
  br i1 %156, label %157, label %215

157:                                              ; preds = %150
  tail call void @sym_calc_value(ptr noundef nonnull %151) #15
  br i1 %3, label %158, label %214

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.symbol, ptr %151, i64 0, i32 3, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !22
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %210

162:                                              ; preds = %158
  %163 = tail call ptr @sym_get_choice_prop(ptr noundef nonnull %151) #15
  %164 = getelementptr inbounds %struct.property, ptr %163, i64 0, i32 4
  %165 = load ptr, ptr %164, align 8, !tbaa !11
  %166 = icmp eq ptr %165, null
  br i1 %166, label %178, label %167

167:                                              ; preds = %173, %162
  %168 = phi ptr [ %176, %173 ], [ %165, %162 ]
  %169 = phi i32 [ %174, %173 ], [ 0, %162 ]
  %170 = getelementptr inbounds %struct.expr, ptr %168, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !11
  %172 = icmp eq ptr %171, null
  br i1 %172, label %178, label %173

173:                                              ; preds = %167
  %174 = add nuw nsw i32 %169, 1
  %175 = getelementptr inbounds %struct.expr, ptr %168, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !11
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %167

178:                                              ; preds = %173, %167, %162
  %179 = phi i32 [ 0, %162 ], [ %169, %167 ], [ %174, %173 ]
  %180 = tail call i32 @rand() #15
  %181 = srem i32 %180, %179
  %182 = load ptr, ptr %164, align 8, !tbaa !11
  %183 = icmp eq ptr %182, null
  br i1 %183, label %206, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.symbol, ptr %151, i64 0, i32 4
  br label %186

186:                                              ; preds = %196, %184
  %187 = phi ptr [ %182, %184 ], [ %204, %196 ]
  %188 = phi i32 [ 0, %184 ], [ %193, %196 ]
  %189 = getelementptr inbounds %struct.expr, ptr %187, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !11
  %191 = icmp eq ptr %190, null
  br i1 %191, label %206, label %192

192:                                              ; preds = %186
  %193 = add nuw nsw i32 %188, 1
  %194 = icmp eq i32 %181, %188
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store ptr %190, ptr %185, align 8, !tbaa !23
  br label %196

196:                                              ; preds = %195, %192
  %197 = phi i32 [ 2, %195 ], [ 0, %192 ]
  %198 = getelementptr inbounds %struct.symbol, ptr %190, i64 0, i32 4, i64 0, i32 1
  store i32 %197, ptr %198, align 8
  %199 = getelementptr inbounds %struct.symbol, ptr %190, i64 0, i32 6
  %200 = load i32, ptr %199, align 4, !tbaa !18
  %201 = and i32 %200, -65665
  %202 = or i32 %201, 65536
  store i32 %202, ptr %199, align 4, !tbaa !18
  %203 = getelementptr inbounds %struct.expr, ptr %187, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !11
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %186

206:                                              ; preds = %196, %186, %178
  %207 = load i32, ptr %153, align 4, !tbaa !18
  %208 = and i32 %207, -65665
  %209 = or i32 %208, 65536
  store i32 %209, ptr %153, align 4, !tbaa !18
  br label %210

210:                                              ; preds = %206, %158
  %211 = zext i1 %161 to i8
  %212 = and i8 %152, 1
  %213 = or i8 %212, %211
  br label %215

214:                                              ; preds = %157
  tail call void @set_all_choice_values(ptr noundef nonnull %151) #15
  br label %215

215:                                              ; preds = %214, %210, %150
  %216 = phi i8 [ %152, %150 ], [ %213, %210 ], [ 1, %214 ]
  %217 = load ptr, ptr %151, align 8, !tbaa !5
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %150

219:                                              ; preds = %215, %144
  %220 = phi i8 [ %146, %144 ], [ %216, %215 ]
  %221 = add nuw nsw i64 %145, 1
  %222 = icmp eq i64 %221, 9973
  br i1 %222, label %223, label %144

223:                                              ; preds = %219
  %224 = and i8 %220, 1
  %225 = icmp ne i8 %224, 0
  ret i1 %225
}

; Function Attrs: nounwind uwtable
define internal fastcc void @conf(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gstr, align 8
  %3 = alloca %struct.gstr, align 8
  %4 = alloca %struct.gstr, align 8
  %5 = tail call zeroext i1 @menu_is_visible(ptr noundef %0) #15
  br i1 %5, label %6, label %308

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !27
  switch i32 %14, label %28 [
    i32 3, label %15
    i32 2, label %22
  ]

15:                                               ; preds = %12
  %16 = load i32, ptr @input_mode, align 4, !tbaa !11
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @rootEntry, align 8
  %19 = icmp eq ptr %18, %0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call fastcc void @check_conf(ptr noundef nonnull %0)
  br label %308

22:                                               ; preds = %15, %12
  %23 = tail call ptr @menu_get_prompt(ptr noundef nonnull %0) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @indent, align 4, !tbaa !9
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.63, i32 noundef %26, i32 noundef 42, i32 noundef %26, i32 noundef 42, ptr noundef nonnull %23, i32 noundef %26, i32 noundef 42)
  br label %28

28:                                               ; preds = %25, %22, %12, %6
  %29 = icmp eq ptr %8, null
  br i1 %29, label %296, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.symbol, ptr %8, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !18
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %250, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %7, align 8, !tbaa !24
  %37 = getelementptr inbounds %struct.symbol, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 4, !tbaa !18
  %39 = and i32 %38, 65536
  %40 = icmp eq i32 %39, 0
  %41 = tail call zeroext i1 @sym_is_changeable(ptr noundef %36) #15
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  tail call fastcc void @conf_sym(ptr noundef nonnull %0) #15
  tail call void @sym_calc_value(ptr noundef nonnull %36) #15
  %43 = getelementptr inbounds %struct.symbol, ptr %36, i64 0, i32 3, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !22
  %45 = icmp ult i32 %44, 2
  br i1 %45, label %246, label %54

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.symbol, ptr %36, i64 0, i32 3, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !22
  switch i32 %48, label %54 [
    i32 0, label %246
    i32 1, label %49
  ]

49:                                               ; preds = %46
  %50 = load i32, ptr @indent, align 4, !tbaa !9
  %51 = add nsw i32 %50, -1
  %52 = tail call ptr @menu_get_prompt(ptr noundef nonnull %0) #15
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.64, i32 noundef %51, ptr noundef nonnull @.str.4, ptr noundef %52) #15
  br label %246

54:                                               ; preds = %46, %42
  %55 = getelementptr inbounds %struct.symbol, ptr %36, i64 0, i32 3
  %56 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 2
  br label %57

57:                                               ; preds = %201, %54
  %58 = load i32, ptr @indent, align 4, !tbaa !9
  %59 = add nsw i32 %58, -1
  %60 = call ptr @menu_get_prompt(ptr noundef %0) #15
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.64, i32 noundef %59, ptr noundef nonnull @.str.4, ptr noundef %60) #15
  %62 = load ptr, ptr %55, align 8, !tbaa !29
  store i8 0, ptr @line, align 16, !tbaa !11
  %63 = load ptr, ptr %56, align 8, !tbaa !5
  %64 = icmp eq ptr %63, null
  br i1 %64, label %110, label %65

65:                                               ; preds = %105, %57
  %66 = phi ptr [ %108, %105 ], [ %63, %57 ]
  %67 = phi i32 [ %107, %105 ], [ 0, %57 ]
  %68 = phi i32 [ %106, %105 ], [ 0, %57 ]
  %69 = call zeroext i1 @menu_is_visible(ptr noundef nonnull %66) #15
  br i1 %69, label %70, label %105

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.menu, ptr %66, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !24
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, ptr @indent, align 4, !tbaa !9
  %76 = call ptr @menu_get_prompt(ptr noundef nonnull %66) #15
  %77 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.65, i32 noundef %75, i32 noundef 42, ptr noundef %76) #15
  br label %105

78:                                               ; preds = %70
  %79 = add nsw i32 %68, 1
  %80 = icmp eq ptr %72, %62
  %81 = load i32, ptr @indent, align 4, !tbaa !9
  %82 = select i1 %80, i32 62, i32 32
  %83 = select i1 %80, i32 %79, i32 %67
  %84 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.66, i32 noundef %81, i32 noundef %82) #15
  %85 = call ptr @menu_get_prompt(ptr noundef nonnull %66) #15
  %86 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.67, i32 noundef %79, ptr noundef %85) #15
  %87 = load ptr, ptr %71, align 8, !tbaa !24
  %88 = getelementptr inbounds %struct.symbol, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !30
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %78
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.68, ptr noundef nonnull %89) #15
  %93 = load ptr, ptr %71, align 8, !tbaa !24
  br label %94

94:                                               ; preds = %91, %78
  %95 = phi ptr [ %93, %91 ], [ %87, %78 ]
  %96 = getelementptr inbounds %struct.symbol, ptr %95, i64 0, i32 6
  %97 = load i32, ptr %96, align 4, !tbaa !18
  %98 = and i32 %97, 65536
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.69) #15
  br label %102

102:                                              ; preds = %100, %94
  %103 = load ptr, ptr @stdout, align 8, !tbaa !5
  %104 = call i32 @putc(i32 noundef 10, ptr noundef %103) #15
  br label %105

105:                                              ; preds = %102, %74, %65
  %106 = phi i32 [ %79, %102 ], [ %68, %74 ], [ %68, %65 ]
  %107 = phi i32 [ %83, %102 ], [ %67, %74 ], [ %67, %65 ]
  %108 = load ptr, ptr %66, align 8, !tbaa !5
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %65

110:                                              ; preds = %105, %57
  %111 = phi i32 [ 0, %57 ], [ %106, %105 ]
  %112 = phi i32 [ 0, %57 ], [ %107, %105 ]
  %113 = load i32, ptr @indent, align 4, !tbaa !9
  %114 = add nsw i32 %113, -1
  %115 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.70, i32 noundef %114, ptr noundef nonnull @.str.4) #15
  %116 = icmp eq i32 %111, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = call i32 @puts(ptr nonnull @str.113) #15
  br label %197

119:                                              ; preds = %110
  %120 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.72, i32 noundef %111) #15
  %121 = load i32, ptr @input_mode, align 4, !tbaa !11
  switch i32 %121, label %197 [
    i32 2, label %122
    i32 1, label %122
    i32 0, label %125
  ]

122:                                              ; preds = %119, %119
  br i1 %40, label %125, label %123

123:                                              ; preds = %122
  %124 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.73, i32 noundef %112) #15
  br label %197

125:                                              ; preds = %122, %119
  %126 = load ptr, ptr @stdout, align 8, !tbaa !5
  %127 = call i32 @fflush(ptr noundef %126) #15
  %128 = load ptr, ptr @stdin, align 8, !tbaa !5
  %129 = call ptr @fgets(ptr noundef nonnull @line, i32 noundef 4096, ptr noundef %128) #15
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load ptr, ptr @stderr, align 8, !tbaa !5
  %133 = call i64 @fwrite(ptr nonnull @.str.74, i64 34, i64 1, ptr %132) #20
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, ptr @tty_stdio, align 4, !tbaa !9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.75, ptr noundef nonnull @line) #15
  br label %139

139:                                              ; preds = %137, %134
  %140 = tail call ptr @__ctype_b_loc() #19
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  br label %142

142:                                              ; preds = %142, %139
  %143 = phi ptr [ @line, %139 ], [ %150, %142 ]
  %144 = load i8, ptr %143, align 1, !tbaa !11
  %145 = sext i8 %144 to i64
  %146 = getelementptr inbounds i16, ptr %141, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !31
  %148 = and i16 %147, 8192
  %149 = icmp eq i16 %148, 0
  %150 = getelementptr inbounds i8, ptr %143, i64 1
  br i1 %149, label %151, label %142

151:                                              ; preds = %142
  %152 = call i64 @strlen(ptr noundef nonnull %143) #18
  %153 = trunc i64 %152 to i32
  %154 = icmp eq ptr %143, @line
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = shl i64 %152, 32
  %157 = add i64 %156, 4294967296
  %158 = ashr exact i64 %157, 32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @line, ptr nonnull align 1 %143, i64 %158, i1 false) #15
  br label %159

159:                                              ; preds = %155, %151
  %160 = icmp eq i32 %153, 0
  br i1 %160, label %182, label %161

161:                                              ; preds = %159
  %162 = shl i64 %152, 32
  %163 = ashr exact i64 %162, 32
  %164 = getelementptr inbounds i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 -1, i64 4095), i64 %163
  %165 = load ptr, ptr %140, align 8, !tbaa !5
  %166 = load i8, ptr %164, align 1, !tbaa !11
  %167 = sext i8 %166 to i64
  %168 = getelementptr inbounds i16, ptr %165, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !31
  %170 = and i16 %169, 8192
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %182, label %172

172:                                              ; preds = %172, %161
  %173 = phi ptr [ %174, %172 ], [ %164, %161 ]
  store i8 0, ptr %173, align 1, !tbaa !11
  %174 = getelementptr inbounds i8, ptr %173, i64 -1
  %175 = load ptr, ptr %140, align 8, !tbaa !5
  %176 = load i8, ptr %174, align 1, !tbaa !11
  %177 = sext i8 %176 to i64
  %178 = getelementptr inbounds i16, ptr %175, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !31
  %180 = and i16 %179, 8192
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %182, label %172

182:                                              ; preds = %172, %161, %159
  %183 = load i8, ptr @line, align 16, !tbaa !11
  switch i8 %183, label %187 [
    i8 63, label %184
    i8 0, label %197
  ]

184:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %2) #15
  call void @menu_get_ext_help(ptr noundef %0, ptr noundef nonnull %2) #15
  %185 = call ptr @str_get(ptr noundef nonnull %2) #15
  %186 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef %185) #15
  call void @str_free(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %201

187:                                              ; preds = %182
  %188 = load ptr, ptr %140, align 8, !tbaa !5
  %189 = sext i8 %183 to i64
  %190 = getelementptr inbounds i16, ptr %188, i64 %189
  %191 = load i16, ptr %190, align 2, !tbaa !31
  %192 = and i16 %191, 2048
  %193 = icmp eq i16 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %187
  %195 = call i64 @strtol(ptr nocapture noundef nonnull @line, ptr noundef null, i32 noundef 10) #15
  %196 = trunc i64 %195 to i32
  br label %197

197:                                              ; preds = %194, %182, %123, %119, %117
  %198 = phi i32 [ 1, %117 ], [ %111, %119 ], [ %196, %194 ], [ %112, %123 ], [ %112, %182 ]
  %199 = load ptr, ptr %56, align 8, !tbaa !5
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %226, %213, %197, %187, %184
  br label %57

202:                                              ; preds = %213, %197
  %203 = phi ptr [ %215, %213 ], [ %199, %197 ]
  %204 = phi i32 [ %214, %213 ], [ %198, %197 ]
  %205 = getelementptr inbounds %struct.menu, ptr %203, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !24
  %207 = icmp eq ptr %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %202
  %209 = call zeroext i1 @menu_is_visible(ptr noundef nonnull %203) #15
  br i1 %209, label %210, label %213

210:                                              ; preds = %208
  %211 = add nsw i32 %204, -1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %210, %208, %202
  %214 = phi i32 [ %211, %210 ], [ %204, %208 ], [ %204, %202 ]
  %215 = load ptr, ptr %203, align 8, !tbaa !5
  %216 = icmp eq ptr %215, null
  br i1 %216, label %201, label %202

217:                                              ; preds = %210
  %218 = load i8, ptr @line, align 16, !tbaa !11
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %217
  %221 = call i64 @strlen(ptr noundef nonnull @line) #18
  %222 = add i64 %221, -1
  %223 = getelementptr inbounds [4096 x i8], ptr @line, i64 0, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !11
  %225 = icmp eq i8 %224, 63
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %3) #15
  call void @menu_get_ext_help(ptr noundef nonnull %203, ptr noundef nonnull %3) #15
  %227 = call ptr @str_get(ptr noundef nonnull %3) #15
  %228 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef %227) #15
  call void @str_free(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %201

229:                                              ; preds = %220, %217
  %230 = getelementptr inbounds %struct.menu, ptr %203, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !24
  %232 = call zeroext i1 @sym_set_tristate_value(ptr noundef %231, i32 noundef 2) #15
  %233 = getelementptr inbounds %struct.menu, ptr %203, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !5
  %235 = icmp eq ptr %234, null
  br i1 %235, label %246, label %236

236:                                              ; preds = %229
  %237 = load i32, ptr @indent, align 4, !tbaa !9
  br label %238

238:                                              ; preds = %238, %236
  %239 = phi i32 [ %243, %238 ], [ %237, %236 ]
  %240 = phi ptr [ %244, %238 ], [ %234, %236 ]
  %241 = add nsw i32 %239, 2
  store i32 %241, ptr @indent, align 4, !tbaa !9
  call fastcc void @conf(ptr noundef nonnull %240) #15
  %242 = load i32, ptr @indent, align 4, !tbaa !9
  %243 = add nsw i32 %242, -2
  store i32 %243, ptr @indent, align 4, !tbaa !9
  %244 = load ptr, ptr %240, align 8, !tbaa !5
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %238

246:                                              ; preds = %238, %229, %49, %46, %42
  %247 = getelementptr inbounds %struct.symbol, ptr %8, i64 0, i32 3, i32 1
  %248 = load i32, ptr %247, align 8, !tbaa !22
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %293, label %308

250:                                              ; preds = %30
  %251 = getelementptr inbounds %struct.symbol, ptr %8, i64 0, i32 2
  %252 = load i32, ptr %251, align 8, !tbaa !21
  %253 = add i32 %252, -3
  %254 = icmp ult i32 %253, 3
  br i1 %254, label %255, label %292

255:                                              ; preds = %250
  %256 = load ptr, ptr %7, align 8, !tbaa !24
  %257 = getelementptr inbounds %struct.symbol, ptr %256, i64 0, i32 1
  br label %258

258:                                              ; preds = %291, %255
  %259 = load i32, ptr @indent, align 4, !tbaa !9
  %260 = add nsw i32 %259, -1
  %261 = load ptr, ptr %9, align 8, !tbaa !26
  %262 = getelementptr inbounds %struct.property, ptr %261, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !33
  %264 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.77, i32 noundef %260, ptr noundef nonnull @.str.4, ptr noundef %263) #15
  %265 = load ptr, ptr %257, align 8, !tbaa !30
  %266 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.78, ptr noundef %265) #15
  %267 = call ptr @sym_get_string_value(ptr noundef %256) #15
  %268 = icmp eq ptr %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %258
  %270 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.79, ptr noundef nonnull %267) #15
  br label %271

271:                                              ; preds = %269, %258
  %272 = call fastcc i32 @conf_askvalue(ptr noundef nonnull %256, ptr noundef %267) #15
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %293, label %274

274:                                              ; preds = %271
  %275 = load i8, ptr @line, align 16, !tbaa !11
  %276 = sext i8 %275 to i32
  switch i32 %276, label %283 [
    i32 10, label %287
    i32 63, label %277
  ]

277:                                              ; preds = %274
  %278 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  %279 = icmp eq i8 %278, 10
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %4) #15
  call void @menu_get_ext_help(ptr noundef nonnull %0, ptr noundef nonnull %4) #15
  %281 = call ptr @str_get(ptr noundef nonnull %4) #15
  %282 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef %281) #15
  call void @str_free(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %291

283:                                              ; preds = %277, %274
  %284 = call i64 @strlen(ptr noundef nonnull @line) #18
  %285 = add i64 %284, -1
  %286 = getelementptr inbounds [4096 x i8], ptr @line, i64 0, i64 %285
  store i8 0, ptr %286, align 1, !tbaa !11
  br label %288

287:                                              ; preds = %274
  br i1 %268, label %291, label %288

288:                                              ; preds = %287, %283
  %289 = phi ptr [ @line, %283 ], [ %267, %287 ]
  %290 = call zeroext i1 @sym_set_string_value(ptr noundef nonnull %256, ptr noundef nonnull %289) #15
  br i1 %290, label %293, label %291

291:                                              ; preds = %288, %287, %280
  br label %258

292:                                              ; preds = %250
  tail call fastcc void @conf_sym(ptr noundef nonnull %0)
  br label %293

293:                                              ; preds = %292, %288, %271, %246
  %294 = load i32, ptr @indent, align 4, !tbaa !9
  %295 = add nsw i32 %294, 2
  store i32 %295, ptr @indent, align 4, !tbaa !9
  br label %296

296:                                              ; preds = %293, %28
  %297 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !5
  %299 = icmp eq ptr %298, null
  br i1 %299, label %304, label %300

300:                                              ; preds = %300, %296
  %301 = phi ptr [ %302, %300 ], [ %298, %296 ]
  call fastcc void @conf(ptr noundef nonnull %301)
  %302 = load ptr, ptr %301, align 8, !tbaa !5
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %300

304:                                              ; preds = %300, %296
  br i1 %29, label %308, label %305

305:                                              ; preds = %304
  %306 = load i32, ptr @indent, align 4, !tbaa !9
  %307 = add nsw i32 %306, -2
  store i32 %307, ptr @indent, align 4, !tbaa !9
  br label %308

308:                                              ; preds = %305, %304, %246, %21, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_conf(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gstr, align 8
  %3 = tail call zeroext i1 @menu_is_visible(ptr noundef %0) #15
  br i1 %3, label %4, label %51

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.symbol, ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !18
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = tail call zeroext i1 @sym_is_changeable(ptr noundef nonnull %6) #15
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = load i32, ptr %9, align 4, !tbaa !18
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.symbol, ptr %6, i64 0, i32 3, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !22
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %43

23:                                               ; preds = %19, %13
  %24 = load i32, ptr @input_mode, align 4, !tbaa !11
  switch i32 %24, label %35 [
    i32 10, label %25
    i32 11, label %30
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.symbol, ptr %6, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !30
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  tail call void @print_symbol_for_listconfig(ptr noundef nonnull %6) #15
  br label %43

30:                                               ; preds = %23
  %31 = tail call i32 @puts(ptr nonnull @str.111)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %2) #15
  call void @menu_get_ext_help(ptr noundef nonnull %0, ptr noundef nonnull %2) #15
  %32 = call ptr @str_get(ptr noundef nonnull %2) #15
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef %32) #15
  call void @str_free(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %34 = call i32 @puts(ptr nonnull @str.111)
  br label %43

35:                                               ; preds = %23
  %36 = load i32, ptr @conf_cnt, align 4, !tbaa !9
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @conf_cnt, align 4, !tbaa !9
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 @puts(ptr nonnull @str.112)
  br label %41

41:                                               ; preds = %39, %35
  %42 = tail call ptr @menu_get_parent_menu(ptr noundef nonnull %0) #15
  store ptr %42, ptr @rootEntry, align 8, !tbaa !5
  tail call fastcc void @conf(ptr noundef %42)
  br label %43

43:                                               ; preds = %41, %30, %29, %25, %19, %15, %8, %4
  %44 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %47, %43
  %48 = phi ptr [ %49, %47 ], [ %45, %43 ]
  call fastcc void @check_conf(ptr noundef nonnull %48)
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %47

51:                                               ; preds = %47, %43, %1
  ret void
}

declare i32 @conf_write_defconfig(ptr noundef) local_unnamed_addr #5

declare i32 @conf_write(ptr noundef) local_unnamed_addr #5

declare i32 @conf_write_autoconf(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #6

declare i32 @sym_get_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

declare void @sym_clear_all_valid() local_unnamed_addr #5

declare void @sym_calc_value(ptr noundef) local_unnamed_addr #5

declare void @set_all_choice_values(ptr noundef) local_unnamed_addr #5

declare ptr @sym_get_choice_prop(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @menu_is_visible(ptr noundef) local_unnamed_addr #5

declare ptr @menu_get_prompt(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @conf_sym(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gstr, align 8
  %3 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 1
  %7 = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 3, i32 1
  br label %8

8:                                                ; preds = %119, %1
  %9 = load i32, ptr @indent, align 4, !tbaa !9
  %10 = add nsw i32 %9, -1
  %11 = load ptr, ptr %5, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.77, i32 noundef %10, ptr noundef nonnull @.str.4, ptr noundef %13)
  %15 = load ptr, ptr %6, align 8, !tbaa !30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.78, ptr noundef nonnull %15)
  br label %19

19:                                               ; preds = %17, %8
  %20 = load ptr, ptr @stdout, align 8, !tbaa !5
  %21 = call i32 @putc(i32 noundef 91, ptr noundef %20) #15
  %22 = load i32, ptr %7, align 8, !tbaa !22
  switch i32 %22, label %31 [
    i32 0, label %24
    i32 1, label %27
    i32 2, label %23
  ]

23:                                               ; preds = %19
  br label %27

24:                                               ; preds = %19
  %25 = load ptr, ptr @stdout, align 8, !tbaa !5
  %26 = call i32 @putc(i32 noundef 78, ptr noundef %25) #15
  br label %37

27:                                               ; preds = %23, %19
  %28 = phi i32 [ 89, %23 ], [ 77, %19 ]
  %29 = load ptr, ptr @stdout, align 8, !tbaa !5
  %30 = call i32 @putc(i32 noundef %28, ptr noundef %29) #15
  br label %31

31:                                               ; preds = %27, %19
  %32 = call zeroext i1 @sym_tristate_within_range(ptr noundef nonnull %4, i32 noundef 0) #15
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.82)
  br label %35

35:                                               ; preds = %33, %31
  %36 = icmp eq i32 %22, 1
  br i1 %36, label %43, label %37

37:                                               ; preds = %35, %24
  %38 = call zeroext i1 @sym_tristate_within_range(ptr noundef nonnull %4, i32 noundef 1) #15
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.83)
  br label %41

41:                                               ; preds = %39, %37
  %42 = icmp eq i32 %22, 2
  br i1 %42, label %47, label %43

43:                                               ; preds = %41, %35
  %44 = call zeroext i1 @sym_tristate_within_range(ptr noundef nonnull %4, i32 noundef 2) #15
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.84)
  br label %47

47:                                               ; preds = %45, %43, %41
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.85)
  %49 = call ptr @sym_get_string_value(ptr noundef nonnull %4) #15
  %50 = call fastcc i32 @conf_askvalue(ptr noundef nonnull %4, ptr noundef %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %120, label %52

52:                                               ; preds = %47
  %53 = tail call ptr @__ctype_b_loc() #19
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi ptr [ @line, %52 ], [ %63, %55 ]
  %57 = load i8, ptr %56, align 1, !tbaa !11
  %58 = sext i8 %57 to i64
  %59 = getelementptr inbounds i16, ptr %54, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !31
  %61 = and i16 %60, 8192
  %62 = icmp eq i16 %61, 0
  %63 = getelementptr inbounds i8, ptr %56, i64 1
  br i1 %62, label %64, label %55

64:                                               ; preds = %55
  %65 = call i64 @strlen(ptr noundef nonnull %56) #18
  %66 = trunc i64 %65 to i32
  %67 = icmp eq ptr %56, @line
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = shl i64 %65, 32
  %70 = add i64 %69, 4294967296
  %71 = ashr exact i64 %70, 32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @line, ptr nonnull align 1 %56, i64 %71, i1 false) #15
  br label %72

72:                                               ; preds = %68, %64
  %73 = icmp eq i32 %66, 0
  br i1 %73, label %95, label %74

74:                                               ; preds = %72
  %75 = shl i64 %65, 32
  %76 = ashr exact i64 %75, 32
  %77 = getelementptr inbounds i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 -1, i64 4095), i64 %76
  %78 = load ptr, ptr %53, align 8, !tbaa !5
  %79 = load i8, ptr %77, align 1, !tbaa !11
  %80 = sext i8 %79 to i64
  %81 = getelementptr inbounds i16, ptr %78, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !31
  %83 = and i16 %82, 8192
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %85, %74
  %86 = phi ptr [ %87, %85 ], [ %77, %74 ]
  store i8 0, ptr %86, align 1, !tbaa !11
  %87 = getelementptr inbounds i8, ptr %86, i64 -1
  %88 = load ptr, ptr %53, align 8, !tbaa !5
  %89 = load i8, ptr %87, align 1, !tbaa !11
  %90 = sext i8 %89 to i64
  %91 = getelementptr inbounds i16, ptr %88, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !31
  %93 = and i16 %92, 8192
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %85

95:                                               ; preds = %85, %74, %72
  %96 = load i8, ptr @line, align 16, !tbaa !11
  %97 = sext i8 %96 to i32
  switch i32 %97, label %119 [
    i32 110, label %98
    i32 78, label %98
    i32 109, label %104
    i32 77, label %104
    i32 121, label %107
    i32 89, label %107
    i32 0, label %113
    i32 63, label %116
  ]

98:                                               ; preds = %95, %95
  %99 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %98
  %102 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), ptr noundef nonnull dereferenceable(2) @.str.86, i64 2)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %119

104:                                              ; preds = %95, %95
  %105 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %113, label %119

107:                                              ; preds = %95, %95
  %108 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), ptr noundef nonnull dereferenceable(3) @.str.87, i64 3)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110, %107, %104, %101, %98, %95
  %114 = phi i32 [ 2, %110 ], [ 2, %107 ], [ 1, %104 ], [ 0, %101 ], [ 0, %98 ], [ %22, %95 ]
  %115 = call zeroext i1 @sym_set_tristate_value(ptr noundef %4, i32 noundef %114) #15
  br i1 %115, label %120, label %116

116:                                              ; preds = %113, %95
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %2) #15
  call void @menu_get_ext_help(ptr noundef %0, ptr noundef nonnull %2) #15
  %117 = call ptr @str_get(ptr noundef nonnull %2) #15
  %118 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef %117) #15
  call void @str_free(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %119

119:                                              ; preds = %116, %110, %104, %101, %95
  br label %8

120:                                              ; preds = %113, %47
  ret void
}

declare zeroext i1 @sym_is_changeable(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

declare void @str_new(ptr sret(%struct.gstr) align 8) local_unnamed_addr #5

declare void @menu_get_ext_help(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @str_get(ptr noundef) local_unnamed_addr #5

declare void @str_free(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @sym_set_tristate_value(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sym_get_string_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @conf_askvalue(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !18
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.80)
  br label %9

9:                                                ; preds = %7, %2
  store i8 10, ptr @line, align 16, !tbaa !11
  store i8 0, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  %10 = tail call zeroext i1 @sym_is_changeable(ptr noundef nonnull %0) #15
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) %1)
  store i8 10, ptr @line, align 16, !tbaa !11
  store i8 0, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  br label %37

13:                                               ; preds = %9
  %14 = load i32, ptr @input_mode, align 4, !tbaa !11
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, ptr %3, align 4, !tbaa !18
  %19 = and i32 %18, 65536
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) %1)
  br label %37

23:                                               ; preds = %17, %13
  %24 = load ptr, ptr @stdout, align 8, !tbaa !5
  %25 = tail call i32 @fflush(ptr noundef %24)
  %26 = load ptr, ptr @stdin, align 8, !tbaa !5
  %27 = tail call ptr @fgets(ptr noundef nonnull @line, i32 noundef 4096, ptr noundef %26) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load ptr, ptr @stderr, align 8, !tbaa !5
  %31 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 34, i64 1, ptr %30) #20
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, ptr @tty_stdio, align 4, !tbaa !9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.75, ptr noundef nonnull @line) #15
  br label %37

37:                                               ; preds = %35, %32, %21, %11
  %38 = phi i32 [ 0, %21 ], [ 0, %11 ], [ 1, %32 ], [ 1, %35 ]
  ret i32 %38
}

declare zeroext i1 @sym_set_string_value(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @sym_tristate_within_range(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @print_symbol_for_listconfig(ptr noundef) local_unnamed_addr #5

declare ptr @menu_get_parent_menu(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare ptr @llvm.load.relative.i64(ptr, i64) #14

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { cold nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"timeval", !14, i64 0, !14, i64 8}
!14 = !{!"long", !7, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{!17, !7, i64 8}
!17 = !{!"symbol_value", !6, i64 0, !7, i64 8}
!18 = !{!19, !10, i64 108}
!19 = !{!"symbol", !6, i64 0, !6, i64 8, !7, i64 16, !17, i64 24, !7, i64 40, !7, i64 104, !10, i64 108, !6, i64 112, !20, i64 120, !20, i64 136, !20, i64 152}
!20 = !{!"expr_value", !6, i64 0, !7, i64 8}
!21 = !{!19, !7, i64 16}
!22 = !{!19, !7, i64 32}
!23 = !{!17, !6, i64 0}
!24 = !{!25, !6, i64 24}
!25 = !{!"menu", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !6, i64 72, !10, i64 80, !6, i64 88}
!26 = !{!25, !6, i64 32}
!27 = !{!28, !7, i64 8}
!28 = !{!"property", !6, i64 0, !7, i64 8, !6, i64 16, !20, i64 24, !6, i64 40, !6, i64 48, !6, i64 56, !10, i64 64}
!29 = !{!19, !6, i64 24}
!30 = !{!19, !6, i64 8}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !7, i64 0}
!33 = !{!28, !6, i64 16}
