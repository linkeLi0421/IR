; ModuleID = '/llk/IR/scripts/kconfig/confdata.c_pt.bc'
source_filename = "../scripts/kconfig/confdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.comment_style = type { ptr, ptr, ptr }
%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.property = type { ptr, i32, ptr, %struct.expr_value, ptr, ptr, ptr, i32 }
%struct.file = type { ptr, ptr, ptr, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }

@conf_message_callback = internal unnamed_addr global ptr @conf_default_message_callback, align 8
@.str = private unnamed_addr constant [15 x i8] c"KCONFIG_CONFIG\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".config\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"KCONFIG_DEFCONFIG_LIST\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"using defaults found in %s\00", align 1
@conf_filename = internal unnamed_addr global ptr null, align 8
@conf_lineno = internal unnamed_addr global i32 0, align 4
@conf_warnings = internal unnamed_addr global i32 0, align 4
@symbol_hash = external local_unnamed_addr global [9973 x ptr], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"is not set\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"override: reassigning to symbol %s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unexpected data: %.*s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%s creates inconsistent choice state\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"override: %s changes choice state\00", align 1
@modules_sym = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@rootmenu = external global %struct.menu, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"config name is empty\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"%s: Is a directory\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"KCONFIG_OVERWRITECONFIG\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%s.%d.tmp\00", align 1
@comment_style_pound = internal constant %struct.comment_style { ptr @.str.36, ptr @.str.36, ptr @.str.36 }, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"\0A#\0A# %s\0A#\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"# end of %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"No change to %s\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%s.old\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"configuration written to %s\00", align 1
@comment_style_c = internal constant %struct.comment_style { ptr @.str.55, ptr @.str.56, ptr @.str.57 }, align 8
@conf_changed_callback = internal unnamed_addr global ptr null, align 8
@conf_changed = internal unnamed_addr global i8 0, align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"#\0A# \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"CONFIG_\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"%s:%d:warning: \00", align 1
@depfile_prefix_len = internal unnamed_addr global i64 0, align 8
@depfile_path = internal global [4096 x i8] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [33 x i8] c"symbol value '%s' invalid for %s\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\22\\\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"invalid string found\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"# %s%s is not set\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"%s%s=%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"%s Automatically generated file; DO NOT EDIT.\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"KCONFIG_AUTOCONFIG\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"include/config/auto.conf\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"%s.cmd\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"%s.cmd.tmp\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"deps_config := \\\0A\00", align 1
@file_list = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"\09%s \\\0A\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"\0A%s: $(deps_config)\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"\0A$(deps_config): ;\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"KCONFIG_AUTOHEADER\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"include/generated/autoconf.h\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"_MODULE\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"#define %s%s%s %s%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" */\00", align 1
@str = private unnamed_addr constant [3 x i8] c"\0A#\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @conf_set_message_callback(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @conf_message_callback, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @conf_get_configname() local_unnamed_addr #1 {
  %1 = tail call ptr @getenv(ptr noundef nonnull @.str) #19
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, ptr @.str.1, ptr %1
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @conf_read_simple(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %59

4:                                                ; preds = %2
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str) #19
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.1, ptr %5
  %8 = tail call ptr @zconf_fopen(ptr noundef %7) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %62

10:                                               ; preds = %4
  %11 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  %13 = load i8, ptr @conf_changed, align 1
  %14 = icmp eq i8 %13, 1
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void %11() #19
  br label %17

17:                                               ; preds = %16, %10
  store i8 1, ptr @conf_changed, align 1, !tbaa !9
  %18 = tail call ptr @getenv(ptr noundef nonnull @.str.2) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %380, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @__ctype_b_loc() #20
  br label %22

22:                                               ; preds = %57, %20
  %23 = phi ptr [ %58, %57 ], [ %18, %20 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !5
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi ptr [ %23, %22 ], [ %33, %25 ]
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %28 = sext i8 %27 to i64
  %29 = getelementptr inbounds i16, ptr %24, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !12
  %31 = and i16 %30, 8192
  %32 = icmp eq i16 %31, 0
  %33 = getelementptr inbounds i8, ptr %26, i64 1
  br i1 %32, label %34, label %25

34:                                               ; preds = %25
  %35 = icmp eq i8 %27, 0
  br i1 %35, label %380, label %36

36:                                               ; preds = %34
  %37 = and i16 %30, 8192
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %45, %36
  %40 = phi i1 [ %50, %45 ], [ %38, %36 ]
  %41 = phi ptr [ %42, %45 ], [ %26, %36 ]
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !11
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = sext i8 %43 to i64
  %47 = getelementptr inbounds i16, ptr %24, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !12
  %49 = and i16 %48, 8192
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %39, label %51

51:                                               ; preds = %45, %39, %36
  %52 = phi i1 [ %38, %36 ], [ %40, %39 ], [ %50, %45 ]
  %53 = phi ptr [ %26, %36 ], [ %42, %45 ], [ %42, %39 ]
  store i8 0, ptr %53, align 1, !tbaa !11
  %54 = tail call ptr @zconf_fopen(ptr noundef nonnull %26) #19
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  tail call void (ptr, ...) @conf_message(ptr noundef nonnull @.str.3, ptr noundef nonnull %26)
  br label %62

57:                                               ; preds = %51
  %58 = getelementptr inbounds i8, ptr %53, i64 1
  br i1 %52, label %380, label %22

59:                                               ; preds = %2
  %60 = tail call ptr @zconf_fopen(ptr noundef nonnull %0) #19
  %61 = icmp eq ptr %60, null
  br i1 %61, label %380, label %62

62:                                               ; preds = %59, %56, %4
  %63 = phi ptr [ %60, %59 ], [ %54, %56 ], [ %8, %4 ]
  %64 = phi ptr [ %0, %59 ], [ %7, %56 ], [ %7, %4 ]
  store ptr %64, ptr @conf_filename, align 8, !tbaa !5
  store i32 0, ptr @conf_lineno, align 4, !tbaa !14
  store i32 0, ptr @conf_warnings, align 4, !tbaa !14
  %65 = shl i32 65536, %1
  %66 = xor i32 %65, -129
  %67 = sext i32 %1 to i64
  br label %72

68:                                               ; preds = %101
  %69 = icmp eq i32 %1, 1
  %70 = icmp eq i32 %1, 0
  %71 = xor i32 %65, -1
  br label %104

72:                                               ; preds = %101, %62
  %73 = phi i64 [ 0, %62 ], [ %102, %101 ]
  %74 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = icmp eq ptr %75, null
  br i1 %76, label %101, label %77

77:                                               ; preds = %96, %72
  %78 = phi ptr [ %99, %96 ], [ %75, %72 ]
  %79 = getelementptr inbounds %struct.symbol, ptr %78, i64 0, i32 6
  %80 = load i32, ptr %79, align 4, !tbaa !16
  %81 = or i32 %80, 1024
  %82 = and i32 %81, %66
  %83 = and i32 %80, 16
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 0, i32 %65
  %86 = or i32 %82, %85
  store i32 %86, ptr %79, align 4, !tbaa !16
  %87 = getelementptr inbounds %struct.symbol, ptr %78, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !20
  %89 = add i32 %88, -3
  %90 = icmp ult i32 %89, 3
  br i1 %90, label %91, label %96

91:                                               ; preds = %77
  %92 = getelementptr inbounds %struct.symbol, ptr %78, i64 0, i32 4, i64 %67
  %93 = load ptr, ptr %92, align 8, !tbaa !21
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void @free(ptr noundef nonnull %93) #19
  br label %96

96:                                               ; preds = %95, %91, %77
  %97 = getelementptr inbounds %struct.symbol, ptr %78, i64 0, i32 4, i64 %67
  store ptr null, ptr %97, align 8, !tbaa !21
  %98 = getelementptr inbounds %struct.symbol, ptr %78, i64 0, i32 4, i64 %67, i32 1
  store i32 0, ptr %98, align 8, !tbaa !22
  %99 = load ptr, ptr %78, align 8, !tbaa !5
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %77

101:                                              ; preds = %96, %72
  %102 = add nuw nsw i64 %73, 1
  %103 = icmp eq i64 %102, 9973
  br i1 %103, label %68, label %72

104:                                              ; preds = %149, %68
  %105 = phi i64 [ 0, %68 ], [ %150, %149 ]
  %106 = phi ptr [ null, %68 ], [ %151, %149 ]
  %107 = phi i64 [ 0, %68 ], [ %152, %149 ]
  %108 = tail call i32 @getc(ptr noundef %63) #19
  switch i32 %108, label %136 [
    i32 10, label %109
    i32 -1, label %121
  ]

109:                                              ; preds = %104
  %110 = add i64 %107, 1
  %111 = icmp ugt i64 %110, %105
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = shl i64 %107, 1
  %114 = add i64 %113, 32
  %115 = tail call ptr @xrealloc(ptr noundef %106, i64 noundef %114) #19
  %116 = icmp eq ptr %115, null
  br i1 %116, label %153, label %117

117:                                              ; preds = %112, %109
  %118 = phi i64 [ %105, %109 ], [ %114, %112 ]
  %119 = phi ptr [ %106, %109 ], [ %115, %112 ]
  %120 = getelementptr inbounds i8, ptr %119, i64 %107
  store i8 10, ptr %120, align 1, !tbaa !11
  br label %121

121:                                              ; preds = %117, %104
  %122 = phi i64 [ %118, %117 ], [ %105, %104 ]
  %123 = phi ptr [ %119, %117 ], [ %106, %104 ]
  %124 = phi i64 [ %110, %117 ], [ %107, %104 ]
  %125 = add i64 %124, 1
  %126 = icmp ugt i64 %125, %122
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = shl i64 %124, 1
  %129 = add i64 %128, 32
  %130 = tail call ptr @xrealloc(ptr noundef %123, i64 noundef %129) #19
  %131 = icmp eq ptr %130, null
  br i1 %131, label %153, label %132

132:                                              ; preds = %127, %121
  %133 = phi i64 [ %122, %121 ], [ %129, %127 ]
  %134 = phi ptr [ %123, %121 ], [ %130, %127 ]
  %135 = getelementptr inbounds i8, ptr %134, i64 %124
  store i8 0, ptr %135, align 1, !tbaa !11
  switch i64 %124, label %158 [
    i64 0, label %377
    i64 -1, label %377
  ]

136:                                              ; preds = %104
  %137 = add i64 %107, 1
  %138 = icmp ugt i64 %137, %105
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = shl i64 %107, 1
  %141 = add i64 %140, 32
  %142 = tail call ptr @xrealloc(ptr noundef %106, i64 noundef %141) #19
  %143 = icmp eq ptr %142, null
  br i1 %143, label %153, label %144

144:                                              ; preds = %139, %136
  %145 = phi i64 [ %105, %136 ], [ %141, %139 ]
  %146 = phi ptr [ %106, %136 ], [ %142, %139 ]
  %147 = trunc i32 %108 to i8
  %148 = getelementptr inbounds i8, ptr %146, i64 %107
  store i8 %147, ptr %148, align 1, !tbaa !11
  br label %149

149:                                              ; preds = %372, %342, %334, %333, %333, %330, %329, %323, %319, %298, %297, %272, %263, %258, %247, %225, %195, %175, %171, %163, %144
  %150 = phi i64 [ %145, %144 ], [ %133, %342 ], [ %133, %372 ], [ %133, %334 ], [ %133, %333 ], [ %133, %333 ], [ %133, %330 ], [ %133, %329 ], [ %133, %323 ], [ %133, %319 ], [ %133, %298 ], [ %133, %297 ], [ %133, %272 ], [ %133, %247 ], [ %133, %258 ], [ %133, %263 ], [ %133, %195 ], [ %133, %163 ], [ %133, %171 ], [ %133, %175 ], [ %133, %225 ]
  %151 = phi ptr [ %146, %144 ], [ %134, %342 ], [ %134, %372 ], [ %134, %334 ], [ %134, %333 ], [ %134, %333 ], [ %134, %330 ], [ %134, %329 ], [ %134, %323 ], [ %134, %319 ], [ %134, %298 ], [ %134, %297 ], [ %134, %272 ], [ %134, %247 ], [ %134, %258 ], [ %134, %263 ], [ %134, %195 ], [ %134, %163 ], [ %134, %171 ], [ %134, %175 ], [ %134, %225 ]
  %152 = phi i64 [ %137, %144 ], [ 0, %342 ], [ 0, %372 ], [ 0, %334 ], [ 0, %333 ], [ 0, %333 ], [ 0, %330 ], [ 0, %329 ], [ 0, %323 ], [ 0, %319 ], [ 0, %298 ], [ 0, %297 ], [ 0, %272 ], [ 0, %247 ], [ 0, %258 ], [ 0, %263 ], [ 0, %195 ], [ 0, %163 ], [ 0, %171 ], [ 0, %175 ], [ 0, %225 ]
  br label %104

153:                                              ; preds = %139, %127, %112
  %154 = phi ptr [ %106, %139 ], [ %106, %112 ], [ %123, %127 ]
  %155 = phi i64 [ %107, %139 ], [ %107, %112 ], [ %124, %127 ]
  %156 = add i64 %155, -1
  %157 = getelementptr inbounds i8, ptr %154, i64 %156
  store i8 0, ptr %157, align 1, !tbaa !11
  br label %377

158:                                              ; preds = %132
  %159 = load i32, ptr @conf_lineno, align 4, !tbaa !14
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr @conf_lineno, align 4, !tbaa !14
  %161 = load i8, ptr %134, align 1, !tbaa !11
  %162 = icmp eq i8 %161, 35
  br i1 %162, label %163, label %218

163:                                              ; preds = %158
  %164 = getelementptr inbounds i8, ptr %134, i64 2
  %165 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %166 = icmp eq ptr %165, null
  %167 = select i1 %166, ptr @.str.24, ptr %165
  %168 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %167) #21
  %169 = tail call i32 @bcmp(ptr nonnull %164, ptr %167, i64 %168)
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %149

171:                                              ; preds = %163
  %172 = getelementptr inbounds i8, ptr %164, i64 %168
  %173 = tail call ptr @strchr(ptr noundef nonnull %172, i32 noundef 32) #21
  %174 = icmp eq ptr %173, null
  br i1 %174, label %149, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds i8, ptr %173, i64 1
  store i8 0, ptr %173, align 1, !tbaa !11
  %177 = tail call i32 @strncmp(ptr noundef nonnull %176, ptr noundef nonnull dereferenceable(11) @.str.4, i64 noundef 10) #21
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %149

179:                                              ; preds = %175
  %180 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %181 = icmp eq ptr %180, null
  %182 = select i1 %181, ptr @.str.24, ptr %180
  %183 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %182) #21
  %184 = getelementptr inbounds i8, ptr %164, i64 %183
  br i1 %70, label %185, label %196

185:                                              ; preds = %179
  %186 = tail call ptr @sym_find(ptr noundef nonnull %184) #19
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %202

188:                                              ; preds = %185
  %189 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %190 = icmp eq ptr %189, null
  %191 = load i8, ptr @conf_changed, align 1
  %192 = icmp eq i8 %191, 1
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %195, label %194

194:                                              ; preds = %188
  tail call void %189() #19
  br label %195

195:                                              ; preds = %194, %188
  store i8 1, ptr @conf_changed, align 1, !tbaa !9
  br label %149

196:                                              ; preds = %179
  %197 = tail call ptr @sym_lookup(ptr noundef nonnull %184, i32 noundef 0) #19
  %198 = getelementptr inbounds %struct.symbol, ptr %197, i64 0, i32 2
  %199 = load i32, ptr %198, align 8, !tbaa !20
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  store i32 1, ptr %198, align 8, !tbaa !20
  br label %202

202:                                              ; preds = %201, %196, %185
  %203 = phi ptr [ %186, %185 ], [ %197, %201 ], [ %197, %196 ]
  %204 = getelementptr inbounds %struct.symbol, ptr %203, i64 0, i32 6
  %205 = load i32, ptr %204, align 4, !tbaa !16
  %206 = and i32 %205, %65
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.symbol, ptr %203, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.5, ptr noundef %210)
  br label %211

211:                                              ; preds = %208, %202
  %212 = getelementptr inbounds %struct.symbol, ptr %203, i64 0, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !20
  %214 = add i32 %213, -1
  %215 = icmp ult i32 %214, 2
  br i1 %215, label %216, label %342

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.symbol, ptr %203, i64 0, i32 4, i64 %67, i32 1
  store i32 0, ptr %217, align 8, !tbaa !22
  br label %337

218:                                              ; preds = %158
  %219 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %220 = icmp eq ptr %219, null
  %221 = select i1 %220, ptr @.str.24, ptr %219
  %222 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %221) #21
  %223 = tail call i32 @bcmp(ptr nonnull %134, ptr %221, i64 %222)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %333

225:                                              ; preds = %218
  %226 = getelementptr inbounds i8, ptr %134, i64 %222
  %227 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %226, i32 noundef 61) #21
  %228 = icmp eq ptr %227, null
  br i1 %228, label %149, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds i8, ptr %227, i64 1
  store i8 0, ptr %227, align 1, !tbaa !11
  %231 = tail call ptr @strchr(ptr noundef nonnull %230, i32 noundef 10) #21
  %232 = icmp eq ptr %231, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds i8, ptr %231, i64 -1
  store i8 0, ptr %231, align 1, !tbaa !11
  %235 = load i8, ptr %234, align 1, !tbaa !11
  %236 = icmp eq i8 %235, 13
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store i8 0, ptr %234, align 1, !tbaa !11
  br label %238

238:                                              ; preds = %237, %233, %229
  %239 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %240 = icmp eq ptr %239, null
  %241 = select i1 %240, ptr @.str.24, ptr %239
  %242 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %241) #21
  %243 = getelementptr inbounds i8, ptr %134, i64 %242
  %244 = tail call ptr @sym_find(ptr noundef nonnull %243) #19
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %273

246:                                              ; preds = %238
  br i1 %69, label %247, label %265

247:                                              ; preds = %246
  %248 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %249 = icmp eq ptr %248, null
  %250 = select i1 %249, ptr @.str.24, ptr %248
  %251 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %250) #21
  %252 = getelementptr inbounds i8, ptr %134, i64 %251
  %253 = load i64, ptr @depfile_prefix_len, align 8, !tbaa !24
  %254 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %252) #21
  %255 = add i64 %253, -4096
  %256 = add i64 %255, %254
  %257 = icmp ult i64 %256, -4097
  br i1 %257, label %149, label %258

258:                                              ; preds = %247
  %259 = getelementptr inbounds i8, ptr @depfile_path, i64 %253
  %260 = tail call ptr @strcpy(ptr noundef nonnull %259, ptr noundef nonnull dereferenceable(1) %252) #19
  %261 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @depfile_path, i32 noundef 577, i32 noundef 420) #19
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %149, label %263

263:                                              ; preds = %258
  %264 = tail call i32 @close(i32 noundef %261) #19
  br label %149

265:                                              ; preds = %246
  %266 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %267 = icmp eq ptr %266, null
  %268 = load i8, ptr @conf_changed, align 1
  %269 = icmp eq i8 %268, 1
  %270 = select i1 %267, i1 true, i1 %269
  br i1 %270, label %272, label %271

271:                                              ; preds = %265
  tail call void %266() #19
  br label %272

272:                                              ; preds = %271, %265
  store i8 1, ptr @conf_changed, align 1, !tbaa !9
  br label %149

273:                                              ; preds = %238
  %274 = getelementptr inbounds %struct.symbol, ptr %244, i64 0, i32 6
  %275 = load i32, ptr %274, align 4, !tbaa !16
  %276 = and i32 %275, %65
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.symbol, ptr %244, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.5, ptr noundef %280)
  br label %281

281:                                              ; preds = %278, %273
  %282 = getelementptr inbounds %struct.symbol, ptr %244, i64 0, i32 2
  %283 = load i32, ptr %282, align 8, !tbaa !20
  switch i32 %283, label %342 [
    i32 2, label %284
    i32 1, label %289
    i32 5, label %301
    i32 3, label %320
    i32 4, label %320
  ]

284:                                              ; preds = %281
  %285 = load i8, ptr %230, align 1, !tbaa !11
  %286 = icmp eq i8 %285, 109
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct.symbol, ptr %244, i64 0, i32 4, i64 %67, i32 1
  store i32 1, ptr %288, align 8, !tbaa !22
  br label %337

289:                                              ; preds = %281
  %290 = load i8, ptr %230, align 1, !tbaa !11
  br label %291

291:                                              ; preds = %289, %284
  %292 = phi i8 [ %290, %289 ], [ %285, %284 ]
  switch i8 %292, label %297 [
    i8 121, label %293
    i8 110, label %295
  ]

293:                                              ; preds = %291
  %294 = getelementptr inbounds %struct.symbol, ptr %244, i64 0, i32 4, i64 %67, i32 1
  store i32 2, ptr %294, align 8, !tbaa !22
  br label %337

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.symbol, ptr %244, i64 0, i32 4, i64 %67, i32 1
  store i32 0, ptr %296, align 8, !tbaa !22
  br label %337

297:                                              ; preds = %291
  br i1 %69, label %149, label %298

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct.symbol, ptr %244, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.26, ptr noundef nonnull %230, ptr noundef %300) #19
  br label %149

301:                                              ; preds = %281
  br i1 %69, label %323, label %302

302:                                              ; preds = %301
  %303 = getelementptr inbounds i8, ptr %227, i64 2
  %304 = load i8, ptr %230, align 1, !tbaa !11
  %305 = icmp eq i8 %304, 34
  br i1 %305, label %306, label %342

306:                                              ; preds = %302
  %307 = tail call ptr @strpbrk(ptr noundef nonnull %303, ptr noundef nonnull @.str.27) #21
  %308 = icmp eq ptr %307, null
  br i1 %308, label %319, label %309

309:                                              ; preds = %314, %306
  %310 = phi ptr [ %317, %314 ], [ %307, %306 ]
  %311 = load i8, ptr %310, align 1, !tbaa !11
  %312 = icmp eq i8 %311, 34
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  store i8 0, ptr %310, align 1, !tbaa !11
  br label %320

314:                                              ; preds = %309
  %315 = getelementptr inbounds i8, ptr %310, i64 1
  %316 = tail call i64 @strlen(ptr noundef nonnull %310) #21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %310, ptr nonnull align 1 %315, i64 %316, i1 false) #19
  %317 = tail call ptr @strpbrk(ptr noundef nonnull %315, ptr noundef nonnull @.str.27) #21
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %309

319:                                              ; preds = %314, %306
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.28) #19
  br label %149

320:                                              ; preds = %313, %281, %281
  %321 = phi ptr [ %230, %281 ], [ %230, %281 ], [ %303, %313 ]
  %322 = tail call zeroext i1 @sym_string_valid(ptr noundef nonnull %244, ptr noundef nonnull %321) #19
  br i1 %322, label %325, label %329

323:                                              ; preds = %301
  %324 = tail call zeroext i1 @sym_string_valid(ptr noundef nonnull %244, ptr noundef nonnull %230) #19
  br i1 %324, label %325, label %149

325:                                              ; preds = %323, %320
  %326 = phi ptr [ %230, %323 ], [ %321, %320 ]
  %327 = tail call ptr @xstrdup(ptr noundef %326) #19
  %328 = getelementptr inbounds %struct.symbol, ptr %244, i64 0, i32 4, i64 %67
  store ptr %327, ptr %328, align 8, !tbaa !21
  br label %337

329:                                              ; preds = %320
  br i1 %69, label %149, label %330

330:                                              ; preds = %329
  %331 = getelementptr inbounds %struct.symbol, ptr %244, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.26, ptr noundef nonnull %321, ptr noundef %332) #19
  br label %149

333:                                              ; preds = %218
  switch i8 %161, label %334 [
    i8 13, label %149
    i8 10, label %149
  ]

334:                                              ; preds = %333
  %335 = tail call i64 @strcspn(ptr noundef nonnull %134, ptr noundef nonnull @.str.7) #21
  %336 = trunc i64 %335 to i32
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.6, i32 noundef %336, ptr noundef nonnull %134)
  br label %149

337:                                              ; preds = %325, %295, %293, %287, %216
  %338 = phi ptr [ %274, %287 ], [ %274, %293 ], [ %274, %295 ], [ %274, %325 ], [ %204, %216 ]
  %339 = phi ptr [ %244, %287 ], [ %244, %293 ], [ %244, %295 ], [ %244, %325 ], [ %203, %216 ]
  %340 = load i32, ptr %338, align 4, !tbaa !16
  %341 = or i32 %340, %65
  store i32 %341, ptr %338, align 4, !tbaa !16
  br label %342

342:                                              ; preds = %337, %302, %281, %211
  %343 = phi ptr [ %203, %211 ], [ %244, %281 ], [ %244, %302 ], [ %339, %337 ]
  %344 = getelementptr inbounds %struct.symbol, ptr %343, i64 0, i32 6
  %345 = load i32, ptr %344, align 4, !tbaa !16
  %346 = and i32 %345, 32
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %149, label %348

348:                                              ; preds = %342
  %349 = tail call ptr @sym_get_choice_prop(ptr noundef nonnull %343) #19
  %350 = tail call ptr @prop_get_symbol(ptr noundef %349) #19
  %351 = getelementptr inbounds %struct.symbol, ptr %343, i64 0, i32 4, i64 %67, i32 1
  %352 = load i32, ptr %351, align 8, !tbaa !22
  switch i32 %352, label %372 [
    i32 2, label %363
    i32 1, label %353
  ]

353:                                              ; preds = %348
  %354 = getelementptr inbounds %struct.symbol, ptr %350, i64 0, i32 4, i64 %67, i32 1
  %355 = load i32, ptr %354, align 8, !tbaa !22
  %356 = icmp eq i32 %355, 2
  br i1 %356, label %357, label %372

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.symbol, ptr %343, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.8, ptr noundef %359)
  %360 = getelementptr inbounds %struct.symbol, ptr %350, i64 0, i32 6
  %361 = load i32, ptr %360, align 4, !tbaa !16
  %362 = and i32 %361, %71
  store i32 %362, ptr %360, align 4, !tbaa !16
  br label %372

363:                                              ; preds = %348
  %364 = getelementptr inbounds %struct.symbol, ptr %350, i64 0, i32 4, i64 %67
  %365 = getelementptr inbounds %struct.symbol, ptr %350, i64 0, i32 4, i64 %67, i32 1
  %366 = load i32, ptr %365, align 8, !tbaa !22
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %371, label %368

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.symbol, ptr %343, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.9, ptr noundef %370)
  br label %371

371:                                              ; preds = %368, %363
  store ptr %343, ptr %364, align 8, !tbaa !21
  br label %372

372:                                              ; preds = %371, %357, %353, %348
  %373 = getelementptr inbounds %struct.symbol, ptr %350, i64 0, i32 4, i64 %67, i32 1
  %374 = load i32, ptr %373, align 8, !tbaa !22
  %375 = load i32, ptr %351, align 8, !tbaa !22
  %376 = tail call i32 @llvm.umax.i32(i32 %374, i32 %375)
  store i32 %376, ptr %373, align 8, !tbaa !22
  br label %149

377:                                              ; preds = %153, %132, %132
  %378 = phi ptr [ %154, %153 ], [ %134, %132 ], [ %134, %132 ]
  tail call void @free(ptr noundef nonnull %378) #19
  %379 = tail call i32 @fclose(ptr noundef %63)
  br label %380

380:                                              ; preds = %377, %59, %57, %34, %17
  %381 = phi i32 [ 0, %377 ], [ 1, %59 ], [ 1, %17 ], [ 1, %57 ], [ 1, %34 ]
  ret i32 %381
}

declare ptr @zconf_fopen(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @conf_set_changed(i1 noundef zeroext %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = zext i1 %0 to i8
  br label %11

6:                                                ; preds = %1
  %7 = load i8, ptr @conf_changed, align 1, !tbaa !9, !range !26
  %8 = zext i1 %0 to i8
  %9 = icmp eq i8 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %2() #19
  br label %11

11:                                               ; preds = %10, %6, %4
  %12 = phi i8 [ %5, %4 ], [ %8, %10 ], [ %8, %6 ]
  store i8 %12, ptr @conf_changed, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @conf_message(ptr nocapture noundef readonly %0, ...) unnamed_addr #4 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #19
  %4 = load ptr, ptr @conf_message_callback, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  call void @llvm.va_start(ptr nonnull %2)
  %7 = call i32 @vsnprintf(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef %0, ptr noundef nonnull %2) #19
  %8 = load ptr, ptr @conf_message_callback, align 8, !tbaa !5
  call void %8(ptr noundef nonnull %3) #19
  call void @llvm.va_end(ptr nonnull %2)
  br label %9

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

declare ptr @sym_find(ptr noundef) local_unnamed_addr #5

declare ptr @sym_lookup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal void @conf_warning(ptr nocapture noundef readonly %0, ...) unnamed_addr #9 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = load ptr, ptr @conf_filename, align 8, !tbaa !5
  %5 = load i32, ptr @conf_lineno, align 4, !tbaa !14
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.25, ptr noundef %4, i32 noundef %5) #22
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = call i32 @vfprintf(ptr noundef %7, ptr noundef %0, ptr noundef nonnull %2) #22
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %10 = call i32 @fputc(i32 10, ptr %9)
  call void @llvm.va_end(ptr nonnull %2)
  %11 = load i32, ptr @conf_warnings, align 4, !tbaa !14
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @conf_warnings, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare ptr @prop_get_symbol(ptr noundef) local_unnamed_addr #5

declare ptr @sym_get_choice_prop(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @conf_read(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  %4 = load i8, ptr @conf_changed, align 1
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %2() #19
  br label %8

8:                                                ; preds = %7, %1
  store i8 0, ptr @conf_changed, align 1, !tbaa !9
  %9 = tail call i32 @conf_read_simple(ptr noundef %0, i32 noundef 0)
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr @modules_sym, align 8, !tbaa !5
  tail call void @sym_calc_value(ptr noundef %11) #19
  br i1 %10, label %12, label %115

12:                                               ; preds = %56, %8
  %13 = phi i64 [ %58, %56 ], [ 0, %8 ]
  %14 = phi i32 [ %57, %56 ], [ 0, %8 ]
  %15 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %52, %12
  %19 = phi ptr [ %54, %52 ], [ %16, %12 ]
  %20 = phi i32 [ %53, %52 ], [ %14, %12 ]
  tail call void @sym_calc_value(ptr noundef nonnull %19) #19
  %21 = getelementptr inbounds %struct.symbol, ptr %19, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !16
  %23 = and i32 %22, 4112
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %18
  %26 = and i32 %22, 65536
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %22, 512
  %29 = icmp eq i32 %28, 0
  br i1 %27, label %49, label %30

30:                                               ; preds = %25
  br i1 %29, label %50, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.symbol, ptr %19, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !20
  %34 = add i32 %33, -1
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.symbol, ptr %19, i64 0, i32 4, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct.symbol, ptr %19, i64 0, i32 3, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !27
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %52, label %50

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.symbol, ptr %19, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !28
  %45 = getelementptr inbounds %struct.symbol, ptr %19, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !21
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %46) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %50

49:                                               ; preds = %25
  br i1 %29, label %52, label %50

50:                                               ; preds = %49, %42, %36, %30
  %51 = add nsw i32 %20, 1
  br label %52

52:                                               ; preds = %50, %49, %42, %36, %18
  %53 = phi i32 [ %20, %18 ], [ %51, %50 ], [ %20, %42 ], [ %20, %36 ], [ %20, %49 ]
  %54 = load ptr, ptr %19, align 8, !tbaa !5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %18

56:                                               ; preds = %52, %12
  %57 = phi i32 [ %14, %12 ], [ %53, %52 ]
  %58 = add nuw nsw i64 %13, 1
  %59 = icmp eq i64 %58, 9973
  br i1 %59, label %60, label %12

60:                                               ; preds = %98, %56
  %61 = phi i64 [ %100, %98 ], [ 0, %56 ]
  %62 = phi i32 [ %99, %98 ], [ %57, %56 ]
  %63 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = icmp eq ptr %64, null
  br i1 %65, label %98, label %66

66:                                               ; preds = %94, %60
  %67 = phi ptr [ %96, %94 ], [ %64, %60 ]
  %68 = phi i32 [ %95, %94 ], [ %62, %60 ]
  %69 = getelementptr inbounds %struct.symbol, ptr %67, i64 0, i32 6
  %70 = load i32, ptr %69, align 4, !tbaa !16
  %71 = and i32 %70, 65568
  %72 = icmp eq i32 %71, 65536
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.symbol, ptr %67, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !29
  %76 = icmp ne i32 %75, 0
  %77 = icmp ne i32 %68, 0
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = and i32 %70, -65537
  store i32 %80, ptr %69, align 4, !tbaa !16
  br label %81

81:                                               ; preds = %79, %73
  %82 = getelementptr inbounds %struct.symbol, ptr %67, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !20
  %84 = add i32 %83, -3
  %85 = icmp ult i32 %84, 3
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.symbol, ptr %67, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !21
  %89 = tail call zeroext i1 @sym_string_within_range(ptr noundef nonnull %67, ptr noundef %88) #19
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %69, align 4, !tbaa !16
  %92 = and i32 %91, -65665
  store i32 %92, ptr %69, align 4, !tbaa !16
  %93 = add nsw i32 %68, 1
  br label %94

94:                                               ; preds = %90, %86, %81, %66
  %95 = phi i32 [ %68, %81 ], [ %68, %86 ], [ %93, %90 ], [ %68, %66 ]
  %96 = load ptr, ptr %67, align 8, !tbaa !5
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %66

98:                                               ; preds = %94, %60
  %99 = phi i32 [ %62, %60 ], [ %95, %94 ]
  %100 = add nuw nsw i64 %61, 1
  %101 = icmp eq i64 %100, 9973
  br i1 %101, label %102, label %60

102:                                              ; preds = %98
  %103 = load i32, ptr @conf_warnings, align 4, !tbaa !14
  %104 = icmp ne i32 %103, 0
  %105 = icmp ne i32 %99, 0
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %109 = icmp eq ptr %108, null
  %110 = load i8, ptr @conf_changed, align 1
  %111 = icmp eq i8 %110, 1
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  tail call void %108() #19
  br label %114

114:                                              ; preds = %113, %107
  store i8 1, ptr @conf_changed, align 1, !tbaa !9
  br label %115

115:                                              ; preds = %114, %102, %8
  %116 = phi i32 [ 0, %102 ], [ 0, %114 ], [ 1, %8 ]
  ret i32 %116
}

declare void @sym_calc_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare zeroext i1 @sym_string_within_range(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @print_symbol_for_listconfig(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @sym_get_string_value(ptr noundef nonnull %0) #19
  %8 = load i32, ptr %3, align 8, !tbaa !20
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @escape_string_value(ptr noundef %7) #19
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %7, %6 ]
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  %15 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.24, ptr %15
  %18 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.30, ptr noundef %17, ptr noundef %19, ptr noundef %13) #19
  tail call void @free(ptr noundef %14) #19
  br label %21

21:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @__print_symbol(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @sym_get_string_value(ptr noundef nonnull %1) #19
  %10 = load i32, ptr %5, align 8, !tbaa !20
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %10, 2
  %14 = icmp ne i32 %2, 0
  %15 = and i1 %14, %13
  br i1 %15, label %18, label %30

16:                                               ; preds = %8
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %16, %12
  %19 = load i8, ptr %9, align 1, !tbaa !11
  %20 = icmp eq i8 %19, 110
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = icmp eq i32 %2, 1
  br i1 %22, label %23, label %44

23:                                               ; preds = %21
  %24 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr @.str.24, ptr %24
  %27 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !23
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %26, ptr noundef %28)
  br label %44

30:                                               ; preds = %12
  %31 = icmp eq i32 %10, 5
  %32 = and i1 %31, %3
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @escape_string_value(ptr noundef %9)
  br label %35

35:                                               ; preds = %33, %30, %18, %16
  %36 = phi ptr [ %34, %33 ], [ %9, %30 ], [ %9, %18 ], [ %9, %16 ]
  %37 = phi ptr [ %34, %33 ], [ null, %30 ], [ null, %18 ], [ null, %16 ]
  %38 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, ptr @.str.24, ptr %38
  %41 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !23
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %40, ptr noundef %42, ptr noundef %36)
  tail call void @free(ptr noundef %37) #19
  br label %44

44:                                               ; preds = %35, %23, %21, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @conf_write_defconfig(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = tail call ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.10)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %73, label %4

4:                                                ; preds = %1
  tail call void @sym_clear_all_valid() #19
  %5 = load ptr, ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 2), align 8, !tbaa !30
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %61, %4
  %8 = phi ptr [ %62, %61 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.menu, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call zeroext i1 @menu_is_visible(ptr noundef nonnull %8) #19
  br label %54

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.symbol, ptr %10, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !16
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  tail call void @sym_calc_value(ptr noundef nonnull %10) #19
  %20 = load i32, ptr %15, align 4, !tbaa !16
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %19
  %24 = and i32 %20, -513
  store i32 %24, ptr %15, align 4, !tbaa !16
  %25 = tail call zeroext i1 @sym_is_changeable(ptr noundef nonnull %10) #19
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = tail call ptr @sym_get_string_value(ptr noundef nonnull %10) #19
  %28 = tail call ptr @sym_get_string_default(ptr noundef nonnull %10) #19
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %28) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %15, align 4, !tbaa !16
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @sym_get_choice_prop(ptr noundef nonnull %10) #19
  %37 = tail call ptr @prop_get_symbol(ptr noundef %36) #19
  %38 = tail call ptr @sym_choice_default(ptr noundef %37) #19
  %39 = getelementptr inbounds %struct.symbol, ptr %37, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !16
  %41 = and i32 %40, 256
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq ptr %10, %38
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.symbol, ptr %10, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !20
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.symbol, ptr %10, i64 0, i32 3, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !27
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45, %35, %31
  tail call fastcc void @__print_symbol(ptr noundef nonnull %2, ptr noundef nonnull %10, i32 noundef 1, i1 noundef zeroext true) #19
  br label %54

54:                                               ; preds = %53, %49, %26, %23, %19, %14, %12
  %55 = getelementptr inbounds %struct.menu, ptr %8, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !30
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load ptr, ptr %8, align 8, !tbaa !33
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %68, %58, %54
  %62 = phi ptr [ %56, %54 ], [ %59, %58 ], [ %69, %68 ]
  br label %7

63:                                               ; preds = %68, %58
  %64 = phi ptr [ %66, %68 ], [ %8, %58 ]
  %65 = getelementptr inbounds %struct.menu, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %66, align 8, !tbaa !33
  %70 = icmp eq ptr %69, null
  br i1 %70, label %63, label %61

71:                                               ; preds = %63, %4
  %72 = tail call i32 @fclose(ptr noundef nonnull %2)
  br label %73

73:                                               ; preds = %71, %1
  %74 = phi i32 [ 0, %71 ], [ 1, %1 ]
  ret i32 %74
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

declare void @sym_clear_all_valid() local_unnamed_addr #5

declare zeroext i1 @menu_is_visible(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @sym_is_changeable(ptr noundef) local_unnamed_addr #5

declare ptr @sym_get_string_value(ptr noundef) local_unnamed_addr #5

declare ptr @sym_get_string_default(ptr noundef) local_unnamed_addr #5

declare ptr @sym_choice_default(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @conf_write(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca [4097 x i8], align 16
  %6 = alloca [4097 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %6) #19
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call ptr @getenv(ptr noundef nonnull @.str) #19
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @.str.1, ptr %9
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %0, %1 ], [ %11, %8 ]
  %14 = load i8, ptr %13, align 1, !tbaa !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !5
  %18 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 21, i64 1, ptr %17) #22
  br label %227

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #19
  %20 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %13, ptr noundef nonnull %4) #19
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 61440
  %25 = icmp eq i32 %24, 16384
  %26 = select i1 %21, i1 %25, i1 false
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #19
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.12, ptr noundef nonnull %13) #22
  br label %227

30:                                               ; preds = %19
  %31 = call fastcc i32 @make_parent_dir(ptr noundef nonnull %13)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %227

33:                                               ; preds = %30
  %34 = call ptr @getenv(ptr noundef nonnull @.str.13) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %34, align 1, !tbaa !11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i8 0, ptr %5, align 16, !tbaa !11
  br label %43

40:                                               ; preds = %36, %33
  %41 = call i32 @getpid() #19
  %42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %5, i64 noundef 4097, ptr noundef nonnull @.str.14, ptr noundef nonnull %13, i32 noundef %41) #19
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi ptr [ %5, %40 ], [ %13, %39 ]
  %45 = call ptr @fopen(ptr noundef nonnull %44, ptr noundef nonnull @.str.10)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %227, label %47

47:                                               ; preds = %43
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.36) #19
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.36) #19
  %50 = load ptr, ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 4), align 8, !tbaa !35
  %51 = getelementptr inbounds %struct.property, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !36
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef %52) #19
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.36) #19
  %55 = load i8, ptr @conf_changed, align 1, !tbaa !9, !range !26
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  call void @sym_clear_all_valid() #19
  br label %58

58:                                               ; preds = %57, %47
  %59 = load ptr, ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 2), align 8, !tbaa !30
  %60 = icmp eq ptr %59, null
  br i1 %60, label %123, label %61

61:                                               ; preds = %99, %58
  %62 = phi i8 [ %100, %99 ], [ 0, %58 ]
  %63 = phi ptr [ %101, %99 ], [ %59, %58 ]
  %64 = getelementptr inbounds %struct.menu, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !32
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = call zeroext i1 @menu_is_visible(ptr noundef nonnull %63) #19
  br i1 %68, label %69, label %91

69:                                               ; preds = %67
  %70 = call ptr @menu_get_prompt(ptr noundef nonnull %63) #19
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.15, ptr noundef %70)
  br label %91

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.symbol, ptr %65, i64 0, i32 6
  %74 = load i32, ptr %73, align 4, !tbaa !16
  %75 = and i32 %74, 2064
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  call void @sym_calc_value(ptr noundef nonnull %65) #19
  %78 = load i32, ptr %73, align 4, !tbaa !16
  %79 = and i32 %78, 512
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = and i8 %62, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = call i32 @fputc(i32 10, ptr nonnull %45)
  %86 = load i32, ptr %73, align 4, !tbaa !16
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i32 [ %86, %84 ], [ %78, %81 ]
  %89 = phi i8 [ 0, %84 ], [ %62, %81 ]
  %90 = or i32 %88, 2048
  store i32 %90, ptr %73, align 4, !tbaa !16
  call fastcc void @__print_symbol(ptr noundef nonnull %45, ptr noundef nonnull %65, i32 noundef 1, i1 noundef zeroext true) #19
  br label %91

91:                                               ; preds = %87, %77, %72, %69, %67
  %92 = phi i8 [ %62, %72 ], [ %89, %87 ], [ %62, %77 ], [ 0, %69 ], [ %62, %67 ]
  %93 = getelementptr inbounds %struct.menu, ptr %63, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !30
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load ptr, ptr %63, align 8, !tbaa !33
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %119, %96, %91
  %100 = phi i8 [ %92, %91 ], [ %92, %96 ], [ %120, %119 ]
  %101 = phi ptr [ %94, %91 ], [ %97, %96 ], [ %121, %119 ]
  br label %61

102:                                              ; preds = %119, %96
  %103 = phi ptr [ %106, %119 ], [ %63, %96 ]
  %104 = phi i8 [ %120, %119 ], [ %92, %96 ]
  %105 = getelementptr inbounds %struct.menu, ptr %103, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %123, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.menu, ptr %106, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !32
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = call zeroext i1 @menu_is_visible(ptr noundef nonnull %106) #19
  %114 = icmp ne ptr %106, @rootmenu
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = call ptr @menu_get_prompt(ptr noundef nonnull %106) #19
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.17, ptr noundef %117)
  br label %119

119:                                              ; preds = %116, %112, %108
  %120 = phi i8 [ %104, %108 ], [ 1, %116 ], [ %104, %112 ]
  %121 = load ptr, ptr %106, align 8, !tbaa !33
  %122 = icmp eq ptr %121, null
  br i1 %122, label %102, label %99

123:                                              ; preds = %102, %58
  %124 = call i32 @fclose(ptr noundef nonnull %45)
  br label %125

125:                                              ; preds = %151, %123
  %126 = phi i64 [ 0, %123 ], [ %152, %151 ]
  %127 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %126
  %128 = load ptr, ptr %127, align 16, !tbaa !5
  %129 = icmp eq ptr %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %130, %125
  %131 = phi ptr [ %135, %130 ], [ %128, %125 ]
  %132 = getelementptr inbounds %struct.symbol, ptr %131, i64 0, i32 6
  %133 = load i32, ptr %132, align 4, !tbaa !16
  %134 = and i32 %133, -2049
  store i32 %134, ptr %132, align 4, !tbaa !16
  %135 = load ptr, ptr %131, align 8, !tbaa !5
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %130

137:                                              ; preds = %130, %125
  %138 = or i64 %126, 1
  %139 = icmp eq i64 %138, 9973
  br i1 %139, label %153, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %138
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = icmp eq ptr %142, null
  br i1 %143, label %151, label %144

144:                                              ; preds = %144, %140
  %145 = phi ptr [ %149, %144 ], [ %142, %140 ]
  %146 = getelementptr inbounds %struct.symbol, ptr %145, i64 0, i32 6
  %147 = load i32, ptr %146, align 4, !tbaa !16
  %148 = and i32 %147, -2049
  store i32 %148, ptr %146, align 4, !tbaa !16
  %149 = load ptr, ptr %145, align 8, !tbaa !5
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %144

151:                                              ; preds = %144, %140
  %152 = add nuw nsw i64 %126, 2
  br label %125

153:                                              ; preds = %137
  %154 = load i8, ptr %5, align 16, !tbaa !11
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %219, label %156

156:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #19
  %157 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %13, i32 noundef 0) #19
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #19
  br label %214

160:                                              ; preds = %156
  %161 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %5, i32 noundef 0) #19
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call i32 @close(i32 noundef %157) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #19
  br label %214

165:                                              ; preds = %160
  %166 = call i32 @__fxstat(i32 noundef 1, i32 noundef %157, ptr noundef nonnull %2) #19
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %165
  %169 = call i32 @__fxstat(i32 noundef 1, i32 noundef %161, ptr noundef nonnull %3) #19
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %193

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  %173 = load i64, ptr %172, align 8, !tbaa !38
  %174 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %175 = load i64, ptr %174, align 8, !tbaa !38
  %176 = icmp eq i64 %173, %175
  br i1 %176, label %177, label %205

177:                                              ; preds = %171
  %178 = call ptr @mmap(ptr noundef null, i64 noundef %173, i32 noundef 1, i32 noundef 2, i32 noundef %157, i64 noundef 0) #19
  %179 = icmp eq ptr %178, inttoptr (i64 -1 to ptr)
  br i1 %179, label %208, label %180

180:                                              ; preds = %177
  %181 = load i64, ptr %174, align 8, !tbaa !38
  %182 = call ptr @mmap(ptr noundef null, i64 noundef %181, i32 noundef 1, i32 noundef 2, i32 noundef %161, i64 noundef 0) #19
  %183 = icmp eq ptr %182, inttoptr (i64 -1 to ptr)
  br i1 %183, label %211, label %184

184:                                              ; preds = %180
  %185 = load i64, ptr %172, align 8, !tbaa !38
  %186 = call i32 @bcmp(ptr noundef %178, ptr noundef %182, i64 noundef %185) #21
  %187 = icmp eq i32 %186, 0
  %188 = call i32 @close(i32 noundef %161) #19
  %189 = call i32 @close(i32 noundef %157) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #19
  br i1 %187, label %196, label %214

190:                                              ; preds = %165
  %191 = call i32 @close(i32 noundef %161) #19
  %192 = call i32 @close(i32 noundef %157) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #19
  br label %196

193:                                              ; preds = %168
  %194 = call i32 @close(i32 noundef %161) #19
  %195 = call i32 @close(i32 noundef %157) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #19
  br label %196

196:                                              ; preds = %193, %190, %184
  call void (ptr, ...) @conf_message(ptr noundef nonnull @.str.18, ptr noundef nonnull %13)
  %197 = call i32 @unlink(ptr noundef nonnull %5) #19
  %198 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %199 = icmp eq ptr %198, null
  %200 = load i8, ptr @conf_changed, align 1
  %201 = icmp eq i8 %200, 0
  %202 = select i1 %199, i1 true, i1 %201
  br i1 %202, label %204, label %203

203:                                              ; preds = %196
  call void %198() #19
  br label %204

204:                                              ; preds = %203, %196
  store i8 0, ptr @conf_changed, align 1, !tbaa !9
  br label %227

205:                                              ; preds = %171
  %206 = call i32 @close(i32 noundef %161) #19
  %207 = call i32 @close(i32 noundef %157) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #19
  br label %214

208:                                              ; preds = %177
  %209 = call i32 @close(i32 noundef %161) #19
  %210 = call i32 @close(i32 noundef %157) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #19
  br label %214

211:                                              ; preds = %180
  %212 = call i32 @close(i32 noundef %161) #19
  %213 = call i32 @close(i32 noundef %157) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #19
  br label %214

214:                                              ; preds = %211, %208, %205, %184, %163, %159
  %215 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %6, i64 noundef 4097, ptr noundef nonnull @.str.19, ptr noundef nonnull %13) #19
  %216 = call i32 @rename(ptr noundef nonnull %13, ptr noundef nonnull %6) #19
  %217 = call i32 @rename(ptr noundef nonnull %5, ptr noundef nonnull %13) #19
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %214, %153
  call void (ptr, ...) @conf_message(ptr noundef nonnull @.str.20, ptr noundef nonnull %13)
  %220 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %221 = icmp eq ptr %220, null
  %222 = load i8, ptr @conf_changed, align 1
  %223 = icmp eq i8 %222, 0
  %224 = select i1 %221, i1 true, i1 %223
  br i1 %224, label %226, label %225

225:                                              ; preds = %219
  call void %220() #19
  br label %226

226:                                              ; preds = %225, %219
  store i8 0, ptr @conf_changed, align 1, !tbaa !9
  br label %227

227:                                              ; preds = %226, %214, %204, %43, %30, %27, %16
  %228 = phi i32 [ -1, %27 ], [ 0, %204 ], [ 0, %226 ], [ -1, %16 ], [ -1, %30 ], [ 1, %43 ], [ 1, %214 ]
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %5) #19
  ret i32 %228
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i32 @make_parent_dir(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca [4097 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %3) #19
  %4 = call ptr @strncpy(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 4097) #19
  %5 = getelementptr inbounds [4097 x i8], ptr %3, i64 0, i64 4096
  store i8 0, ptr %5, align 16, !tbaa !11
  %6 = call ptr @strrchr(ptr noundef nonnull %3, i32 noundef 47) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 0, ptr %9, align 1, !tbaa !11
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi ptr [ %3, %8 ], [ %14, %10 ]
  %12 = load i8, ptr %11, align 1, !tbaa !11
  %13 = icmp eq i8 %12, 47
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %13, label %10, label %15

15:                                               ; preds = %10
  %16 = call ptr @strchr(ptr noundef nonnull %11, i32 noundef 47) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  br label %23

20:                                               ; preds = %35
  %21 = call ptr @strchr(ptr noundef nonnull %37, i32 noundef 47) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %20, %18
  %24 = phi ptr [ %16, %18 ], [ %21, %20 ]
  store i8 0, ptr %24, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #19
  %25 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %26 = icmp eq i32 %25, 0
  %27 = load i32, ptr %19, align 8
  %28 = and i32 %27, 61440
  %29 = icmp eq i32 %28, 16384
  %30 = select i1 %26, i1 %29, i1 false
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #19
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = call i32 @mkdir(ptr noundef nonnull %3, i32 noundef 493) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31, %23
  store i8 47, ptr %24, align 1, !tbaa !11
  br label %35

35:                                               ; preds = %35, %34
  %36 = phi ptr [ %24, %34 ], [ %37, %35 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !11
  %39 = icmp eq i8 %38, 47
  br i1 %39, label %35, label %20

40:                                               ; preds = %31, %20, %15, %1
  %41 = phi i32 [ 0, %1 ], [ 0, %15 ], [ -1, %31 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %3) #19
  ret i32 %41
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @conf_get_changed() local_unnamed_addr #12 {
  %1 = load i8, ptr @conf_changed, align 1, !tbaa !9, !range !26
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

declare ptr @menu_get_prompt(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @conf_write_autoconf(i32 noundef %0) local_unnamed_addr #4 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct.stat, align 8
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.37) #19
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.38, ptr %5
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #19
  %10 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %4) #19
  %11 = icmp eq i32 %10, 0
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #19
  br i1 %11, label %156, label %12

12:                                               ; preds = %9, %1
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #19
  %13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.39, ptr noundef %7) #19
  %14 = icmp ugt i32 %13, 4095
  br i1 %14, label %46, label %15

15:                                               ; preds = %12
  %16 = call fastcc i32 @make_parent_dir(ptr noundef nonnull %2) #19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.40, ptr noundef %7) #19
  %20 = icmp ugt i32 %19, 4095
  br i1 %20, label %46, label %21

21:                                               ; preds = %18
  %22 = call ptr @fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = call i64 @fwrite(ptr nonnull @.str.42, i64 17, i64 1, ptr nonnull %22) #19
  %26 = load ptr, ptr @file_list, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %28, %24
  %29 = phi ptr [ %33, %28 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.file, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.43, ptr noundef %31) #19
  %33 = load ptr, ptr %29, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28

35:                                               ; preds = %28, %24
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.44, ptr noundef %7) #19
  call void @env_write_dep(ptr noundef nonnull %22, ptr noundef %7) #19
  %37 = call i64 @fwrite(ptr nonnull @.str.45, i64 19, i64 1, ptr nonnull %22) #19
  %38 = call i32 @ferror(ptr noundef nonnull %22) #19
  %39 = call i32 @fclose(ptr noundef nonnull %22) #19
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = call i32 @rename(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41, %21
  %45 = phi ptr [ @.str.41, %21 ], [ @.str.46, %41 ]
  call void @perror(ptr noundef nonnull %45) #23
  br label %46

46:                                               ; preds = %44, %35, %18, %15, %12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #19
  br label %156

47:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #19
  %48 = call ptr @getenv(ptr noundef nonnull @.str.37) #19
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr @.str.38, ptr %48
  %51 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %50, i32 noundef 47) #21
  %52 = icmp eq ptr %51, null
  %53 = ptrtoint ptr %51 to i64
  %54 = ptrtoint ptr %50 to i64
  %55 = add i64 %53, 1
  %56 = sub i64 %55, %54
  %57 = select i1 %52, i64 0, i64 %56
  store i64 %57, ptr @depfile_prefix_len, align 8, !tbaa !24
  %58 = add i64 %57, -4096
  %59 = icmp ult i64 %58, -4097
  br i1 %59, label %156, label %60

60:                                               ; preds = %47
  %61 = call ptr @strncpy(ptr noundef nonnull @depfile_path, ptr noundef %50, i64 noundef %57) #19
  %62 = getelementptr inbounds [4096 x i8], ptr @depfile_path, i64 0, i64 %57
  store i8 0, ptr %62, align 1, !tbaa !11
  %63 = call i32 @conf_read_simple(ptr noundef %50, i32 noundef 1) #19
  %64 = load ptr, ptr @modules_sym, align 8, !tbaa !5
  call void @sym_calc_value(ptr noundef %64) #19
  br label %65

65:                                               ; preds = %128, %60
  %66 = phi i64 [ 0, %60 ], [ %129, %128 ]
  %67 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = icmp eq ptr %68, null
  br i1 %69, label %128, label %70

70:                                               ; preds = %125, %65
  %71 = phi ptr [ %126, %125 ], [ %68, %65 ]
  call void @sym_calc_value(ptr noundef nonnull %71) #19
  %72 = getelementptr inbounds %struct.symbol, ptr %71, i64 0, i32 6
  %73 = load i32, ptr %72, align 4, !tbaa !16
  %74 = and i32 %73, 4096
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %125

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.symbol, ptr %71, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !23
  %79 = icmp eq ptr %78, null
  br i1 %79, label %125, label %80

80:                                               ; preds = %76
  %81 = and i32 %73, 512
  %82 = icmp eq i32 %81, 0
  %83 = and i32 %73, 131072
  %84 = icmp eq i32 %83, 0
  br i1 %82, label %110, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.symbol, ptr %71, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !20
  br i1 %84, label %103, label %88

88:                                               ; preds = %85
  switch i32 %87, label %111 [
    i32 1, label %89
    i32 2, label %89
    i32 5, label %95
    i32 4, label %95
    i32 3, label %95
  ]

89:                                               ; preds = %88, %88
  %90 = getelementptr inbounds %struct.symbol, ptr %71, i64 0, i32 3, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !27
  %92 = getelementptr inbounds %struct.symbol, ptr %71, i64 0, i32 4, i64 1, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !22
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %125, label %111

95:                                               ; preds = %88, %88, %88
  %96 = call ptr @sym_get_string_value(ptr noundef nonnull %71) #19
  %97 = getelementptr inbounds %struct.symbol, ptr %71, i64 0, i32 4, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !21
  %99 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(1) %98) #21
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %77, align 8, !tbaa !23
  br label %111

103:                                              ; preds = %85
  %104 = add i32 %87, -1
  %105 = icmp ult i32 %104, 2
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.symbol, ptr %71, i64 0, i32 3, i32 1
  %108 = load i32, ptr %107, align 8, !tbaa !27
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %125, label %111

110:                                              ; preds = %80
  br i1 %84, label %125, label %111

111:                                              ; preds = %110, %106, %103, %101, %89, %88
  %112 = phi ptr [ %102, %101 ], [ %78, %103 ], [ %78, %110 ], [ %78, %88 ], [ %78, %89 ], [ %78, %106 ]
  %113 = load i64, ptr @depfile_prefix_len, align 8, !tbaa !24
  %114 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %112) #21
  %115 = add i64 %113, -4096
  %116 = add i64 %115, %114
  %117 = icmp ult i64 %116, -4097
  br i1 %117, label %156, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds i8, ptr @depfile_path, i64 %113
  %120 = call ptr @strcpy(ptr noundef nonnull %119, ptr noundef nonnull dereferenceable(1) %112) #19
  %121 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull @depfile_path, i32 noundef 577, i32 noundef 420) #19
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %156, label %123

123:                                              ; preds = %118
  %124 = call i32 @close(i32 noundef %121) #19
  br label %125

125:                                              ; preds = %123, %110, %106, %95, %89, %76, %70
  %126 = load ptr, ptr %71, align 8, !tbaa !5
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %70

128:                                              ; preds = %125, %65
  %129 = add nuw nsw i64 %66, 1
  %130 = icmp eq i64 %129, 9973
  br i1 %130, label %131, label %65

131:                                              ; preds = %140, %128
  %132 = phi i64 [ %141, %140 ], [ 0, %128 ]
  %133 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %136, %131
  %137 = phi ptr [ %138, %136 ], [ %134, %131 ]
  call void @sym_calc_value(ptr noundef nonnull %137) #19
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %136

140:                                              ; preds = %136, %131
  %141 = add nuw nsw i64 %132, 1
  %142 = icmp eq i64 %141, 9973
  br i1 %142, label %143, label %131

143:                                              ; preds = %140
  %144 = call ptr @getenv(ptr noundef nonnull @.str.48) #19
  %145 = icmp eq ptr %144, null
  %146 = select i1 %145, ptr @.str.49, ptr %144
  %147 = call fastcc i32 @__conf_write_autoconf(ptr noundef %146, ptr noundef nonnull @print_symbol_for_c, ptr noundef nonnull @comment_style_c)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = call ptr @getenv(ptr noundef nonnull @.str.37) #19
  %151 = icmp eq ptr %150, null
  %152 = select i1 %151, ptr @.str.38, ptr %150
  %153 = call fastcc i32 @__conf_write_autoconf(ptr noundef %152, ptr noundef nonnull @print_symbol_for_autoconf, ptr noundef nonnull @comment_style_pound)
  %154 = icmp ne i32 %153, 0
  %155 = sext i1 %154 to i32
  br label %156

156:                                              ; preds = %149, %143, %118, %111, %47, %46, %9
  %157 = phi i32 [ 0, %9 ], [ %147, %143 ], [ %155, %149 ], [ -1, %46 ], [ 1, %47 ], [ 1, %111 ], [ 1, %118 ]
  ret i32 %157
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @__conf_write_autoconf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #19
  %5 = tail call fastcc i32 @make_parent_dir(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %3
  %8 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.47, ptr noundef %0) #19
  %9 = icmp ugt i32 %8, 4095
  br i1 %9, label %58, label %10

10:                                               ; preds = %7
  %11 = call ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.10)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.comment_style, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.33, ptr noundef %15) #19
  %17 = load ptr, ptr %2, align 8, !tbaa !45
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.34, ptr noundef %17) #19
  %19 = load ptr, ptr %2, align 8, !tbaa !45
  %20 = load ptr, ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 4), align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.property, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.35, ptr noundef %19, ptr noundef %22) #19
  %24 = getelementptr inbounds %struct.comment_style, ptr %2, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.33, ptr noundef %25) #19
  br label %27

27:                                               ; preds = %46, %13
  %28 = phi i64 [ 0, %13 ], [ %47, %46 ]
  %29 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %43, %27
  %33 = phi ptr [ %44, %43 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.symbol, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !16
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.symbol, ptr %33, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !23
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void %1(ptr noundef nonnull %11, ptr noundef nonnull %33) #19, !callees !47
  br label %43

43:                                               ; preds = %42, %38, %32
  %44 = load ptr, ptr %33, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %32

46:                                               ; preds = %43, %27
  %47 = add nuw nsw i64 %28, 1
  %48 = icmp eq i64 %47, 9973
  br i1 %48, label %49, label %27

49:                                               ; preds = %46
  %50 = tail call i32 @ferror(ptr noundef nonnull %11) #19
  %51 = tail call i32 @fclose(ptr noundef nonnull %11)
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = call i32 @rename(ptr noundef nonnull %4, ptr noundef %0) #19
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53, %10
  %57 = phi ptr [ @.str.41, %10 ], [ @.str.46, %53 ]
  tail call void @perror(ptr noundef nonnull %57) #22
  br label %58

58:                                               ; preds = %56, %53, %49, %7, %3
  %59 = phi i32 [ -1, %3 ], [ -1, %7 ], [ -1, %49 ], [ 0, %53 ], [ -1, %56 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #19
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal void @print_symbol_for_c(ptr nocapture noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @sym_get_string_value(ptr noundef nonnull %1) #19
  %8 = load i32, ptr %3, align 8, !tbaa !20
  switch i32 %8, label %22 [
    i32 1, label %9
    i32 2, label %9
    i32 4, label %13
    i32 5, label %20
  ]

9:                                                ; preds = %6, %6
  %10 = load i8, ptr %7, align 1, !tbaa !11
  %11 = sext i8 %10 to i32
  switch i32 %11, label %22 [
    i32 110, label %33
    i32 109, label %12
  ]

12:                                               ; preds = %9
  br label %22

13:                                               ; preds = %6
  %14 = load i8, ptr %7, align 1, !tbaa !11
  %15 = icmp eq i8 %14, 48
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %7, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !11
  switch i8 %18, label %19 [
    i8 120, label %22
    i8 88, label %22
  ]

19:                                               ; preds = %16, %13
  br label %22

20:                                               ; preds = %6
  %21 = tail call fastcc ptr @escape_string_value(ptr noundef %7)
  br label %22

22:                                               ; preds = %20, %19, %16, %16, %12, %9, %6
  %23 = phi ptr [ %7, %6 ], [ %21, %20 ], [ %7, %19 ], [ %7, %16 ], [ @.str.52, %9 ], [ @.str.52, %12 ], [ %7, %16 ]
  %24 = phi ptr [ @.str.50, %6 ], [ @.str.50, %20 ], [ @.str.50, %19 ], [ @.str.50, %16 ], [ @.str.50, %9 ], [ @.str.51, %12 ], [ @.str.50, %16 ]
  %25 = phi ptr [ @.str.50, %6 ], [ @.str.50, %20 ], [ @.str.53, %19 ], [ @.str.50, %16 ], [ @.str.50, %9 ], [ @.str.50, %12 ], [ @.str.50, %16 ]
  %26 = phi ptr [ null, %6 ], [ %21, %20 ], [ null, %19 ], [ null, %16 ], [ null, %9 ], [ null, %12 ], [ null, %16 ]
  %27 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @.str.24, ptr %27
  %30 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef %29, ptr noundef %31, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef %23)
  tail call void @free(ptr noundef %26) #19
  br label %33

33:                                               ; preds = %22, %9, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_symbol_for_autoconf(ptr nocapture noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @sym_get_string_value(ptr noundef nonnull %1) #19
  %8 = load i32, ptr %3, align 8, !tbaa !20
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i8, ptr %7, align 1, !tbaa !11
  %13 = icmp eq i8 %12, 110
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %6
  %15 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.24, ptr %15
  %18 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %17, ptr noundef %19, ptr noundef %7) #19
  br label %21

21:                                               ; preds = %14, %11, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @conf_set_changed_callback(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @conf_changed_callback, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_all_choice_values(ptr noundef %0) local_unnamed_addr #4 {
  %2 = tail call ptr @sym_get_choice_prop(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.property, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %18, %1
  %7 = phi ptr [ %20, %18 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.expr, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.symbol, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.symbol, ptr %9, i64 0, i32 4, i64 0, i32 1
  store i32 0, ptr %17, align 8, !tbaa !22
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct.expr, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6

22:                                               ; preds = %18, %6, %1
  %23 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !16
  %25 = and i32 %24, -1114241
  %26 = or i32 %25, 65536
  store i32 %26, ptr %23, align 4, !tbaa !16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @conf_default_message_callback(ptr noundef %0) #9 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.21)
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.22, ptr noundef %0)
  %4 = tail call i32 @puts(ptr nonnull @str)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #10

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #15

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

declare zeroext i1 @sym_string_valid(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @escape_string_value(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %3 = add i64 %2, 3
  %4 = tail call i64 @strcspn(ptr noundef %0, ptr noundef nonnull @.str.27) #21
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %14, %8 ], [ %5, %1 ]
  %10 = phi i64 [ %11, %8 ], [ %3, %1 ]
  %11 = add i64 %10, 1
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = tail call i64 @strcspn(ptr noundef nonnull %12, ptr noundef nonnull @.str.27) #21
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %8

17:                                               ; preds = %8, %1
  %18 = phi i64 [ %3, %1 ], [ %11, %8 ]
  %19 = tail call ptr @xmalloc(i64 noundef %18) #19
  store i8 0, ptr %19, align 1, !tbaa !11
  %20 = tail call i64 @strlen(ptr nonnull %19)
  %21 = getelementptr i8, ptr %19, i64 %20
  store i16 34, ptr %21, align 1
  %22 = tail call i64 @strcspn(ptr noundef %0, ptr noundef nonnull @.str.27) #21
  %23 = tail call ptr @strncat(ptr noundef nonnull %19, ptr noundef %0, i64 noundef %22) #19
  %24 = getelementptr inbounds i8, ptr %0, i64 %22
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %27, %17
  %28 = phi ptr [ %35, %27 ], [ %24, %17 ]
  %29 = tail call i64 @strlen(ptr nonnull %19)
  %30 = getelementptr i8, ptr %19, i64 %29
  store i16 92, ptr %30, align 1
  %31 = getelementptr inbounds i8, ptr %28, i64 1
  %32 = tail call ptr @strncat(ptr noundef nonnull %19, ptr noundef nonnull %28, i64 noundef 1) #19
  %33 = tail call i64 @strcspn(ptr noundef nonnull %31, ptr noundef nonnull @.str.27) #21
  %34 = tail call ptr @strncat(ptr noundef nonnull %19, ptr noundef nonnull %31, i64 noundef %33) #19
  %35 = getelementptr inbounds i8, ptr %31, i64 %33
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %27

38:                                               ; preds = %27, %17
  %39 = tail call i64 @strlen(ptr nonnull %19)
  %40 = getelementptr i8, ptr %19, i64 %39
  store i16 34, ptr %40, align 1
  ret ptr %19
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @__xstat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #10

declare void @env_write_dep(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly nofree nounwind willreturn }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind readnone willreturn }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { cold }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"_Bool", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!17, !15, i64 108}
!17 = !{!"symbol", !6, i64 0, !6, i64 8, !7, i64 16, !18, i64 24, !7, i64 40, !7, i64 104, !15, i64 108, !6, i64 112, !19, i64 120, !19, i64 136, !19, i64 152}
!18 = !{!"symbol_value", !6, i64 0, !7, i64 8}
!19 = !{!"expr_value", !6, i64 0, !7, i64 8}
!20 = !{!17, !7, i64 16}
!21 = !{!18, !6, i64 0}
!22 = !{!18, !7, i64 8}
!23 = !{!17, !6, i64 8}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = !{i8 0, i8 2}
!27 = !{!17, !7, i64 32}
!28 = !{!17, !6, i64 24}
!29 = !{!17, !7, i64 104}
!30 = !{!31, !6, i64 16}
!31 = !{!"menu", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !15, i64 56, !6, i64 64, !6, i64 72, !15, i64 80, !6, i64 88}
!32 = !{!31, !6, i64 24}
!33 = !{!31, !6, i64 0}
!34 = !{!31, !6, i64 8}
!35 = !{!31, !6, i64 32}
!36 = !{!37, !6, i64 16}
!37 = !{!"property", !6, i64 0, !7, i64 8, !6, i64 16, !19, i64 24, !6, i64 40, !6, i64 48, !6, i64 56, !15, i64 64}
!38 = !{!39, !25, i64 48}
!39 = !{!"stat", !25, i64 0, !25, i64 8, !25, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !40, i64 72, !40, i64 88, !40, i64 104, !7, i64 120}
!40 = !{!"timespec", !25, i64 0, !25, i64 8}
!41 = !{!42, !6, i64 16}
!42 = !{!"file", !6, i64 0, !6, i64 8, !6, i64 16, !15, i64 24}
!43 = !{!44, !6, i64 8}
!44 = !{!"comment_style", !6, i64 0, !6, i64 8, !6, i64 16}
!45 = !{!44, !6, i64 0}
!46 = !{!44, !6, i64 16}
!47 = !{ptr @print_symbol_for_autoconf, ptr @print_symbol_for_c}
