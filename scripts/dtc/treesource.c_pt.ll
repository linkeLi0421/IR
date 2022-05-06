; ModuleID = '/llk/IR/scripts/dtc/treesource.c_pt.bc'
source_filename = "../scripts/dtc/treesource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcpos = type { i32, i32, i32, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.dt_info = type { i32, ptr, i32, ptr, ptr }
%struct.reserve_info = type { i64, i64, ptr, ptr }
%struct.label = type { i8, ptr, ptr }
%struct.marker = type { i32, i32, ptr, ptr }
%struct.node = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8 }
%struct.property = type { i8, ptr, %struct.data, ptr, ptr, ptr }
%struct.data = type { i32, ptr, ptr }

@parser_output = dso_local local_unnamed_addr global ptr null, align 8
@treesource_error = dso_local local_unnamed_addr global i8 0, align 1
@current_srcfile = external local_unnamed_addr global ptr, align 8
@yyin = external local_unnamed_addr global ptr, align 8
@yylloc = external local_unnamed_addr global %struct.srcpos, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unable to parse input tree\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Syntax error parsing input tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/dts-v1/;\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"/memreserve/\090x%016llx 0x%016llx;\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s {\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"/ {\00", align 1
@annotate = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c" /* %s */\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@delim_start = internal unnamed_addr constant [9 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.19], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c" %s:\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"&{%s}\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"&%s\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@delim_end = internal unnamed_addr constant [9 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @.str.44, ptr @.str.45, ptr @.str.45, ptr @.str.45, ptr @.str.19], align 16
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"/bits/ 16 <\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"/bits/ 64 <\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"len % width == 0\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"../scripts/dtc/treesource.c\00", align 1
@__PRETTY_FUNCTION__.write_propval_int = private unnamed_addr constant [61 x i8] c"void write_propval_int(FILE *, const char *, size_t, size_t)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"0x%02lx\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"*end == '\\0'\00", align 1
@__PRETTY_FUNCTION__.write_propval_string = private unnamed_addr constant [56 x i8] c"void write_propval_string(FILE *, const char *, size_t)\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c">\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @dt_from_source(ptr noundef %0) local_unnamed_addr #0 {
  store ptr null, ptr @parser_output, align 8, !tbaa !5
  store i8 0, ptr @treesource_error, align 1, !tbaa !9
  tail call void @srcfile_push(ptr noundef %0) #10
  %2 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  store ptr %3, ptr @yyin, align 8, !tbaa !5
  store ptr %2, ptr getelementptr inbounds (%struct.srcpos, ptr @yylloc, i64 0, i32 4), align 8, !tbaa !14
  %4 = tail call i32 @yyparse() #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str) #11
  unreachable

7:                                                ; preds = %1
  %8 = load i8, ptr @treesource_error, align 1, !tbaa !9, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1) #11
  unreachable

11:                                               ; preds = %7
  %12 = load ptr, ptr @parser_output, align 8, !tbaa !5
  ret ptr %12
}

declare void @srcfile_push(ptr noundef) local_unnamed_addr #1

declare i32 @yyparse() local_unnamed_addr #1

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %0, ...) unnamed_addr #2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = call i64 @fwrite(ptr nonnull @.str.5, i64 13, i64 1, ptr %3) #12
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %2) #12
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #13
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @dt_to_source(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 11, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %24, %2
  %8 = phi ptr [ %30, %24 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.reserve_info, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %20, %7
  %13 = phi ptr [ %22, %20 ], [ %10, %7 ]
  %14 = load i8, ptr %13, align 8, !tbaa !17, !range !16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.label, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.label, ptr %13, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %12

24:                                               ; preds = %20, %7
  %25 = load i64, ptr %8, align 8, !tbaa !20
  %26 = getelementptr inbounds %struct.reserve_info, ptr %8, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !23
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %25, i64 noundef %27)
  %29 = getelementptr inbounds %struct.reserve_info, ptr %8, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %7

32:                                               ; preds = %24, %2
  %33 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  tail call fastcc void @write_tree_source_node(ptr noundef %0, ptr noundef %34, i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @write_tree_source_node(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.marker, align 8
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %8 = tail call i32 @fputc(i32 noundef 9, ptr noundef %0) #10
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %3
  %12 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %23, %11
  %16 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %17 = load i8, ptr %16, align 8, !tbaa !17, !range !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.label, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.label, ptr %16, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %15

27:                                               ; preds = %23, %11
  %28 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !26
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i8, ptr %29, align 1, !tbaa !28
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %29)
  br label %38

36:                                               ; preds = %31, %27
  %37 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %0)
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, ptr @annotate, align 4, !tbaa !29
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !30
  %44 = tail call ptr @srcpos_string_first(ptr noundef %43, i32 noundef %39) #10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %44)
  tail call void @free(ptr noundef nonnull %44) #10
  br label %48

48:                                               ; preds = %46, %41, %38
  %49 = tail call i32 @fputc(i32 10, ptr %0)
  %50 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = icmp eq ptr %51, null
  br i1 %52, label %601, label %53

53:                                               ; preds = %48
  %54 = icmp sgt i32 %2, -1
  %55 = getelementptr inbounds %struct.marker, ptr %4, i64 0, i32 3
  %56 = getelementptr inbounds %struct.marker, ptr %4, i64 0, i32 1
  %57 = getelementptr inbounds %struct.marker, ptr %4, i64 0, i32 2
  br label %58

58:                                               ; preds = %597, %53
  %59 = phi ptr [ %51, %53 ], [ %599, %597 ]
  %60 = load i8, ptr %59, align 8, !tbaa !31, !range !16
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %597

62:                                               ; preds = %58
  br i1 %54, label %63, label %68

63:                                               ; preds = %63, %62
  %64 = phi i32 [ %66, %63 ], [ 0, %62 ]
  %65 = tail call i32 @fputc(i32 noundef 9, ptr noundef %0) #10
  %66 = add nuw nsw i32 %64, 1
  %67 = icmp eq i32 %64, %2
  br i1 %67, label %68, label %63

68:                                               ; preds = %63, %62
  %69 = getelementptr inbounds %struct.property, ptr %59, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %80, %68
  %73 = phi ptr [ %82, %80 ], [ %70, %68 ]
  %74 = load i8, ptr %73, align 8, !tbaa !17, !range !16
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.label, ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !19
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %78)
  br label %80

80:                                               ; preds = %76, %72
  %81 = getelementptr inbounds %struct.label, ptr %73, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %72

84:                                               ; preds = %80, %68
  %85 = getelementptr inbounds %struct.property, ptr %59, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = tail call i32 @fputs(ptr %86, ptr %0)
  %88 = getelementptr inbounds %struct.property, ptr %59, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !35
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.property, ptr %59, i64 0, i32 2, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %93 = icmp eq i32 %89, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %84
  %95 = tail call i32 @fputc(i32 59, ptr %0) #10
  %96 = load i32, ptr @annotate, align 4, !tbaa !29
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %595, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.property, ptr %59, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !37
  %101 = tail call ptr @srcpos_string_first(ptr noundef %100, i32 noundef %96) #10
  %102 = icmp eq ptr %101, null
  br i1 %102, label %595, label %592

103:                                              ; preds = %84
  %104 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %0) #10
  %105 = icmp eq ptr %92, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %110, %103
  %107 = phi ptr [ %112, %110 ], [ %92, %103 ]
  %108 = load i32, ptr %107, align 8, !tbaa !38
  %109 = icmp ugt i32 %108, 3
  br i1 %109, label %209, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.marker, ptr %107, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !40
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %106

114:                                              ; preds = %110, %103
  %115 = load i32, ptr %88, align 8, !tbaa !35
  %116 = getelementptr inbounds %struct.property, ptr %59, i64 0, i32 2, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !41
  %118 = load ptr, ptr %91, align 8, !tbaa !36
  %119 = icmp sgt i32 %115, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = tail call ptr @__ctype_b_loc() #14
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = zext i32 %115 to i64
  br label %128

124:                                              ; preds = %150, %114
  %125 = phi i32 [ 0, %114 ], [ %151, %150 ]
  %126 = phi i32 [ 0, %114 ], [ %153, %150 ]
  %127 = icmp eq ptr %118, null
  br i1 %127, label %186, label %156

128:                                              ; preds = %150, %120
  %129 = phi i64 [ 0, %120 ], [ %154, %150 ]
  %130 = phi i32 [ 0, %120 ], [ %153, %150 ]
  %131 = phi i32 [ 0, %120 ], [ %151, %150 ]
  %132 = getelementptr inbounds i8, ptr %117, i64 %129
  %133 = load i8, ptr %132, align 1, !tbaa !28
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds i16, ptr %122, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !42
  %137 = and i16 %136, 16384
  %138 = icmp ne i16 %137, 0
  %139 = icmp eq i8 %133, 0
  %140 = or i1 %139, %138
  br i1 %140, label %149, label %141

141:                                              ; preds = %128
  %142 = zext i8 %133 to i16
  %143 = icmp ult i8 %133, 16
  %144 = shl nuw i16 1, %142
  %145 = and i16 %144, 16257
  %146 = icmp ne i16 %145, 0
  %147 = select i1 %143, i1 %146, i1 false
  %148 = add nsw i32 %131, 1
  br i1 %147, label %149, label %150

149:                                              ; preds = %141, %128
  br label %150

150:                                              ; preds = %149, %141
  %151 = phi i32 [ %131, %149 ], [ %148, %141 ]
  %152 = zext i1 %139 to i32
  %153 = add nuw nsw i32 %130, %152
  %154 = add nuw nsw i64 %129, 1
  %155 = icmp eq i64 %154, %123
  br i1 %155, label %124, label %128

156:                                              ; preds = %180, %124
  %157 = phi i32 [ %182, %180 ], [ 0, %124 ]
  %158 = phi i32 [ %181, %180 ], [ 0, %124 ]
  %159 = phi ptr [ %184, %180 ], [ %118, %124 ]
  %160 = load i32, ptr %159, align 8, !tbaa !38
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %180

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.marker, ptr %159, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !44
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  %167 = add i32 %164, -1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8, ptr %117, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !28
  %171 = icmp ne i8 %170, 0
  %172 = zext i1 %171 to i32
  %173 = add nsw i32 %158, %172
  br label %174

174:                                              ; preds = %166, %162
  %175 = phi i32 [ %158, %162 ], [ %173, %166 ]
  %176 = and i32 %164, 3
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i32
  %179 = add nsw i32 %157, %178
  br label %180

180:                                              ; preds = %174, %156
  %181 = phi i32 [ %158, %156 ], [ %175, %174 ]
  %182 = phi i32 [ %157, %156 ], [ %179, %174 ]
  %183 = getelementptr inbounds %struct.marker, ptr %159, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !40
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %156

186:                                              ; preds = %180, %124
  %187 = phi i32 [ 0, %124 ], [ %181, %180 ]
  %188 = phi i32 [ 0, %124 ], [ %182, %180 ]
  %189 = add nsw i32 %115, -1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, ptr %117, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !28
  %193 = icmp eq i8 %192, 0
  %194 = icmp eq i32 %125, 0
  %195 = select i1 %193, i1 %194, i1 false
  br i1 %195, label %196, label %201

196:                                              ; preds = %186
  %197 = sub nsw i32 %115, %126
  %198 = icmp sle i32 %126, %197
  %199 = icmp eq i32 %187, 0
  %200 = select i1 %198, i1 %199, i1 false
  br i1 %200, label %207, label %201

201:                                              ; preds = %196, %186
  %202 = and i32 %115, 3
  %203 = icmp eq i32 %202, 0
  %204 = icmp eq i32 %188, 0
  %205 = select i1 %203, i1 %204, i1 false
  %206 = select i1 %205, i32 6, i32 4
  br label %207

207:                                              ; preds = %201, %196
  %208 = phi i32 [ 8, %196 ], [ %206, %201 ]
  store i32 %208, ptr %4, align 8, !tbaa !38
  store ptr %118, ptr %55, align 8, !tbaa !40
  store i32 0, ptr %56, align 4, !tbaa !44
  store ptr null, ptr %57, align 8, !tbaa !45
  br label %209

209:                                              ; preds = %207, %106
  %210 = phi ptr [ %4, %207 ], [ %92, %106 ]
  %211 = getelementptr inbounds %struct.property, ptr %59, i64 0, i32 2, i32 1
  br label %212

212:                                              ; preds = %579, %209
  %213 = phi ptr [ %210, %209 ], [ %581, %579 ]
  %214 = phi i32 [ 0, %209 ], [ %580, %579 ]
  %215 = getelementptr inbounds %struct.marker, ptr %213, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !40
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.marker, ptr %213, i64 0, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !44
  %221 = zext i32 %220 to i64
  %222 = sub nsw i64 %90, %221
  br label %245

223:                                              ; preds = %212
  %224 = getelementptr inbounds %struct.marker, ptr %216, i64 0, i32 1
  %225 = load i32, ptr %224, align 4, !tbaa !44
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.marker, ptr %213, i64 0, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !44
  %229 = zext i32 %228 to i64
  %230 = sub nsw i64 %226, %229
  br label %231

231:                                              ; preds = %235, %223
  %232 = phi ptr [ %237, %235 ], [ %216, %223 ]
  %233 = load i32, ptr %232, align 8, !tbaa !38
  %234 = icmp ugt i32 %233, 3
  br i1 %234, label %239, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.marker, ptr %232, i64 0, i32 3
  %237 = load ptr, ptr %236, align 8, !tbaa !40
  %238 = icmp eq ptr %237, null
  br i1 %238, label %245, label %231

239:                                              ; preds = %231
  %240 = getelementptr inbounds %struct.marker, ptr %232, i64 0, i32 1
  %241 = load i32, ptr %240, align 4, !tbaa !44
  %242 = sub i32 %241, %228
  %243 = zext i32 %242 to i64
  %244 = icmp eq i32 %241, %228
  br i1 %244, label %245, label %251

245:                                              ; preds = %239, %235, %218
  %246 = phi i64 [ %226, %239 ], [ %90, %218 ], [ %226, %235 ]
  %247 = phi ptr [ %227, %239 ], [ %219, %218 ], [ %227, %235 ]
  %248 = phi i64 [ %229, %239 ], [ %221, %218 ], [ %229, %235 ]
  %249 = phi i64 [ %230, %239 ], [ %222, %218 ], [ %230, %235 ]
  %250 = sub nsw i64 %90, %248
  br label %251

251:                                              ; preds = %245, %239
  %252 = phi i64 [ %246, %245 ], [ %226, %239 ]
  %253 = phi ptr [ %247, %245 ], [ %227, %239 ]
  %254 = phi i64 [ %248, %245 ], [ %229, %239 ]
  %255 = phi i64 [ %249, %245 ], [ %230, %239 ]
  %256 = phi i64 [ %250, %245 ], [ %243, %239 ]
  %257 = load ptr, ptr %211, align 8, !tbaa !41
  %258 = getelementptr inbounds i8, ptr %257, i64 %254
  %259 = load i32, ptr %213, align 8, !tbaa !38
  %260 = icmp ugt i32 %259, 3
  br i1 %260, label %261, label %264

261:                                              ; preds = %251
  %262 = zext i32 %259 to i64
  %263 = getelementptr inbounds [9 x ptr], ptr @delim_start, i64 0, i64 %262
  br label %268

264:                                              ; preds = %251
  %265 = icmp eq i32 %259, 3
  br i1 %265, label %266, label %274

266:                                              ; preds = %264
  %267 = getelementptr inbounds %struct.marker, ptr %213, i64 0, i32 2
  br label %268

268:                                              ; preds = %266, %261
  %269 = phi ptr [ %267, %266 ], [ %263, %261 ]
  %270 = phi ptr [ @.str.15, %266 ], [ @.str.14, %261 ]
  %271 = phi i32 [ %214, %266 ], [ %259, %261 ]
  %272 = load ptr, ptr %269, align 8, !tbaa !5
  %273 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %270, ptr noundef %272) #10
  br label %274

274:                                              ; preds = %268, %264
  %275 = phi i32 [ %214, %264 ], [ %271, %268 ]
  %276 = icmp eq i32 %275, 0
  %277 = icmp eq i64 %252, %254
  %278 = select i1 %276, i1 true, i1 %277
  br i1 %278, label %579, label %279

279:                                              ; preds = %274
  switch i32 %275, label %546 [
    i32 5, label %283
    i32 6, label %280
    i32 7, label %443
    i32 8, label %494
  ]

280:                                              ; preds = %279
  %281 = load ptr, ptr %91, align 8, !tbaa !5
  %282 = icmp eq ptr %281, null
  br i1 %282, label %391, label %315

283:                                              ; preds = %279
  %284 = getelementptr inbounds i8, ptr %258, i64 %255
  %285 = and i64 %255, 1
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %301

287:                                              ; preds = %283
  %288 = icmp sgt i64 %255, 0
  br i1 %288, label %289, label %564

289:                                              ; preds = %287
  %290 = load i8, ptr %258, align 1, !tbaa !28
  %291 = zext i8 %290 to i32
  %292 = shl nuw nsw i32 %291, 8
  %293 = getelementptr inbounds i8, ptr %258, i64 1
  %294 = load i8, ptr %293, align 1, !tbaa !28
  %295 = zext i8 %294 to i32
  %296 = or i32 %292, %295
  %297 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %296) #10
  %298 = icmp ugt i64 %255, 2
  br i1 %298, label %299, label %564

299:                                              ; preds = %289
  %300 = getelementptr inbounds i8, ptr %258, i64 2
  br label %302

301:                                              ; preds = %283
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.write_propval_int) #13
  unreachable

302:                                              ; preds = %302, %299
  %303 = phi ptr [ %313, %302 ], [ %300, %299 ]
  %304 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #10
  %305 = load i8, ptr %303, align 1, !tbaa !28
  %306 = zext i8 %305 to i32
  %307 = shl nuw nsw i32 %306, 8
  %308 = getelementptr inbounds i8, ptr %303, i64 1
  %309 = load i8, ptr %308, align 1, !tbaa !28
  %310 = zext i8 %309 to i32
  %311 = or i32 %307, %310
  %312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %311) #10
  %313 = getelementptr inbounds i8, ptr %303, i64 2
  %314 = icmp ult ptr %313, %284
  br i1 %314, label %302, label %564

315:                                              ; preds = %324, %280
  %316 = phi ptr [ %326, %324 ], [ %281, %280 ]
  %317 = load i32, ptr %316, align 8, !tbaa !38
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %319, label %324

319:                                              ; preds = %315
  %320 = load i32, ptr %253, align 4, !tbaa !44
  %321 = getelementptr inbounds %struct.marker, ptr %316, i64 0, i32 1
  %322 = load i32, ptr %321, align 4, !tbaa !44
  %323 = icmp eq i32 %320, %322
  br i1 %323, label %328, label %324

324:                                              ; preds = %319, %315
  %325 = getelementptr inbounds %struct.marker, ptr %316, i64 0, i32 3
  %326 = load ptr, ptr %325, align 8, !tbaa !5
  %327 = icmp eq ptr %326, null
  br i1 %327, label %391, label %315

328:                                              ; preds = %319
  %329 = getelementptr inbounds %struct.marker, ptr %316, i64 0, i32 2
  %330 = load ptr, ptr %329, align 8, !tbaa !45
  %331 = load i8, ptr %330, align 1, !tbaa !28
  %332 = icmp eq i8 %331, 47
  %333 = select i1 %332, ptr @.str.16, ptr @.str.17
  %334 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %333, ptr noundef nonnull %330) #10
  %335 = icmp ugt i64 %255, 4
  br i1 %335, label %336, label %564

336:                                              ; preds = %328
  %337 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #10
  %338 = getelementptr inbounds i8, ptr %258, i64 4
  %339 = add nsw i64 %255, -4
  %340 = getelementptr inbounds i8, ptr %338, i64 %339
  %341 = and i64 %255, 3
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %367

343:                                              ; preds = %336
  %344 = icmp sgt i64 %255, 4
  br i1 %344, label %345, label %564

345:                                              ; preds = %343
  %346 = load i8, ptr %338, align 1, !tbaa !28
  %347 = zext i8 %346 to i32
  %348 = shl nuw i32 %347, 24
  %349 = getelementptr inbounds i8, ptr %338, i64 1
  %350 = load i8, ptr %349, align 1, !tbaa !28
  %351 = zext i8 %350 to i32
  %352 = shl nuw nsw i32 %351, 16
  %353 = or i32 %352, %348
  %354 = getelementptr inbounds i8, ptr %338, i64 2
  %355 = load i8, ptr %354, align 1, !tbaa !28
  %356 = zext i8 %355 to i32
  %357 = shl nuw nsw i32 %356, 8
  %358 = or i32 %353, %357
  %359 = getelementptr inbounds i8, ptr %338, i64 3
  %360 = load i8, ptr %359, align 1, !tbaa !28
  %361 = zext i8 %360 to i32
  %362 = or i32 %358, %361
  %363 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %362) #10
  %364 = icmp ugt i64 %255, 8
  br i1 %364, label %365, label %564

365:                                              ; preds = %345
  %366 = getelementptr inbounds i8, ptr %338, i64 4
  br label %368

367:                                              ; preds = %336
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.write_propval_int) #13
  unreachable

368:                                              ; preds = %368, %365
  %369 = phi ptr [ %389, %368 ], [ %366, %365 ]
  %370 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #10
  %371 = load i8, ptr %369, align 1, !tbaa !28
  %372 = zext i8 %371 to i32
  %373 = shl nuw i32 %372, 24
  %374 = getelementptr inbounds i8, ptr %369, i64 1
  %375 = load i8, ptr %374, align 1, !tbaa !28
  %376 = zext i8 %375 to i32
  %377 = shl nuw nsw i32 %376, 16
  %378 = or i32 %377, %373
  %379 = getelementptr inbounds i8, ptr %369, i64 2
  %380 = load i8, ptr %379, align 1, !tbaa !28
  %381 = zext i8 %380 to i32
  %382 = shl nuw nsw i32 %381, 8
  %383 = or i32 %378, %382
  %384 = getelementptr inbounds i8, ptr %369, i64 3
  %385 = load i8, ptr %384, align 1, !tbaa !28
  %386 = zext i8 %385 to i32
  %387 = or i32 %383, %386
  %388 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %387) #10
  %389 = getelementptr inbounds i8, ptr %369, i64 4
  %390 = icmp ult ptr %389, %340
  br i1 %390, label %368, label %564

391:                                              ; preds = %324, %280
  %392 = getelementptr inbounds i8, ptr %258, i64 %255
  %393 = and i64 %255, 3
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %419

395:                                              ; preds = %391
  %396 = icmp sgt i64 %255, 0
  br i1 %396, label %397, label %564

397:                                              ; preds = %395
  %398 = load i8, ptr %258, align 1, !tbaa !28
  %399 = zext i8 %398 to i32
  %400 = shl nuw i32 %399, 24
  %401 = getelementptr inbounds i8, ptr %258, i64 1
  %402 = load i8, ptr %401, align 1, !tbaa !28
  %403 = zext i8 %402 to i32
  %404 = shl nuw nsw i32 %403, 16
  %405 = or i32 %404, %400
  %406 = getelementptr inbounds i8, ptr %258, i64 2
  %407 = load i8, ptr %406, align 1, !tbaa !28
  %408 = zext i8 %407 to i32
  %409 = shl nuw nsw i32 %408, 8
  %410 = or i32 %405, %409
  %411 = getelementptr inbounds i8, ptr %258, i64 3
  %412 = load i8, ptr %411, align 1, !tbaa !28
  %413 = zext i8 %412 to i32
  %414 = or i32 %410, %413
  %415 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %414) #10
  %416 = icmp ugt i64 %255, 4
  br i1 %416, label %417, label %564

417:                                              ; preds = %397
  %418 = getelementptr inbounds i8, ptr %258, i64 4
  br label %420

419:                                              ; preds = %391
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.write_propval_int) #13
  unreachable

420:                                              ; preds = %420, %417
  %421 = phi ptr [ %441, %420 ], [ %418, %417 ]
  %422 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #10
  %423 = load i8, ptr %421, align 1, !tbaa !28
  %424 = zext i8 %423 to i32
  %425 = shl nuw i32 %424, 24
  %426 = getelementptr inbounds i8, ptr %421, i64 1
  %427 = load i8, ptr %426, align 1, !tbaa !28
  %428 = zext i8 %427 to i32
  %429 = shl nuw nsw i32 %428, 16
  %430 = or i32 %429, %425
  %431 = getelementptr inbounds i8, ptr %421, i64 2
  %432 = load i8, ptr %431, align 1, !tbaa !28
  %433 = zext i8 %432 to i32
  %434 = shl nuw nsw i32 %433, 8
  %435 = or i32 %430, %434
  %436 = getelementptr inbounds i8, ptr %421, i64 3
  %437 = load i8, ptr %436, align 1, !tbaa !28
  %438 = zext i8 %437 to i32
  %439 = or i32 %435, %438
  %440 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %439) #10
  %441 = getelementptr inbounds i8, ptr %421, i64 4
  %442 = icmp ult ptr %441, %392
  br i1 %442, label %420, label %564

443:                                              ; preds = %279
  %444 = getelementptr inbounds i8, ptr %258, i64 %255
  %445 = and i64 %255, 7
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %449

447:                                              ; preds = %443
  %448 = icmp sgt i64 %255, 0
  br i1 %448, label %450, label %564

449:                                              ; preds = %443
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.write_propval_int) #13
  unreachable

450:                                              ; preds = %492, %447
  %451 = phi ptr [ %490, %492 ], [ %258, %447 ]
  %452 = load i8, ptr %451, align 1, !tbaa !28
  %453 = zext i8 %452 to i64
  %454 = shl nuw i64 %453, 56
  %455 = getelementptr inbounds i8, ptr %451, i64 1
  %456 = load i8, ptr %455, align 1, !tbaa !28
  %457 = zext i8 %456 to i64
  %458 = shl nuw nsw i64 %457, 48
  %459 = or i64 %458, %454
  %460 = getelementptr inbounds i8, ptr %451, i64 2
  %461 = load i8, ptr %460, align 1, !tbaa !28
  %462 = zext i8 %461 to i64
  %463 = shl nuw nsw i64 %462, 40
  %464 = or i64 %459, %463
  %465 = getelementptr inbounds i8, ptr %451, i64 3
  %466 = load i8, ptr %465, align 1, !tbaa !28
  %467 = zext i8 %466 to i64
  %468 = shl nuw nsw i64 %467, 32
  %469 = or i64 %464, %468
  %470 = getelementptr inbounds i8, ptr %451, i64 4
  %471 = load i8, ptr %470, align 1, !tbaa !28
  %472 = zext i8 %471 to i64
  %473 = shl nuw nsw i64 %472, 24
  %474 = or i64 %469, %473
  %475 = getelementptr inbounds i8, ptr %451, i64 5
  %476 = load i8, ptr %475, align 1, !tbaa !28
  %477 = zext i8 %476 to i64
  %478 = shl nuw nsw i64 %477, 16
  %479 = or i64 %474, %478
  %480 = getelementptr inbounds i8, ptr %451, i64 6
  %481 = load i8, ptr %480, align 1, !tbaa !28
  %482 = zext i8 %481 to i64
  %483 = shl nuw nsw i64 %482, 8
  %484 = or i64 %479, %483
  %485 = getelementptr inbounds i8, ptr %451, i64 7
  %486 = load i8, ptr %485, align 1, !tbaa !28
  %487 = zext i8 %486 to i64
  %488 = or i64 %484, %487
  %489 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %488) #10
  %490 = getelementptr inbounds i8, ptr %451, i64 8
  %491 = icmp ult ptr %490, %444
  br i1 %491, label %492, label %564

492:                                              ; preds = %450
  %493 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #10
  br label %450

494:                                              ; preds = %279
  %495 = getelementptr inbounds i8, ptr %258, i64 -1
  %496 = getelementptr i8, ptr %495, i64 %255
  %497 = icmp eq i64 %255, 0
  br i1 %497, label %564, label %498

498:                                              ; preds = %494
  %499 = load i8, ptr %496, align 1, !tbaa !28
  %500 = icmp eq i8 %499, 0
  br i1 %500, label %502, label %501

501:                                              ; preds = %498
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, i32 noundef 56, ptr noundef nonnull @__PRETTY_FUNCTION__.write_propval_string) #13
  unreachable

502:                                              ; preds = %498
  %503 = tail call i32 @fputc(i32 34, ptr %0) #10
  %504 = icmp ugt ptr %496, %258
  br i1 %504, label %505, label %544

505:                                              ; preds = %542, %502
  %506 = phi ptr [ %507, %542 ], [ %258, %502 ]
  %507 = getelementptr inbounds i8, ptr %506, i64 1
  %508 = load i8, ptr %506, align 1, !tbaa !28
  %509 = sext i8 %508 to i32
  switch i32 %509, label %530 [
    i32 7, label %510
    i32 8, label %512
    i32 9, label %514
    i32 10, label %516
    i32 11, label %518
    i32 12, label %520
    i32 13, label %522
    i32 92, label %524
    i32 34, label %526
    i32 0, label %528
  ]

510:                                              ; preds = %505
  %511 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 2, i64 1, ptr %0) #10
  br label %542

512:                                              ; preds = %505
  %513 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %0) #10
  br label %542

514:                                              ; preds = %505
  %515 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %0) #10
  br label %542

516:                                              ; preds = %505
  %517 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 2, i64 1, ptr %0) #10
  br label %542

518:                                              ; preds = %505
  %519 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr %0) #10
  br label %542

520:                                              ; preds = %505
  %521 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %0) #10
  br label %542

522:                                              ; preds = %505
  %523 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 2, i64 1, ptr %0) #10
  br label %542

524:                                              ; preds = %505
  %525 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 2, i64 1, ptr %0) #10
  br label %542

526:                                              ; preds = %505
  %527 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr %0) #10
  br label %542

528:                                              ; preds = %505
  %529 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 2, i64 1, ptr %0) #10
  br label %542

530:                                              ; preds = %505
  %531 = tail call ptr @__ctype_b_loc() #14
  %532 = load ptr, ptr %531, align 8, !tbaa !5
  %533 = zext i8 %508 to i64
  %534 = getelementptr inbounds i16, ptr %532, i64 %533
  %535 = load i16, ptr %534, align 2, !tbaa !42
  %536 = and i16 %535, 16384
  %537 = icmp eq i16 %536, 0
  br i1 %537, label %540, label %538

538:                                              ; preds = %530
  %539 = tail call i32 @fputc(i32 %509, ptr %0) #10
  br label %542

540:                                              ; preds = %530
  %541 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %509) #10
  br label %542

542:                                              ; preds = %540, %538, %528, %526, %524, %522, %520, %518, %516, %514, %512, %510
  %543 = icmp eq ptr %507, %496
  br i1 %543, label %544, label %505

544:                                              ; preds = %542, %502
  %545 = tail call i32 @fputc(i32 34, ptr %0) #10
  br label %564

546:                                              ; preds = %279
  %547 = getelementptr inbounds i8, ptr %258, i64 %255
  %548 = icmp sgt i64 %255, 0
  br i1 %548, label %549, label %564

549:                                              ; preds = %546
  %550 = load i8, ptr %258, align 1, !tbaa !28
  %551 = zext i8 %550 to i32
  %552 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %551) #10
  %553 = icmp eq i64 %255, 1
  br i1 %553, label %564, label %554

554:                                              ; preds = %549
  %555 = getelementptr inbounds i8, ptr %258, i64 1
  br label %556

556:                                              ; preds = %556, %554
  %557 = phi ptr [ %562, %556 ], [ %555, %554 ]
  %558 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #10
  %559 = load i8, ptr %557, align 1, !tbaa !28
  %560 = zext i8 %559 to i32
  %561 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %560) #10
  %562 = getelementptr inbounds i8, ptr %557, i64 1
  %563 = icmp ult ptr %562, %547
  br i1 %563, label %556, label %564

564:                                              ; preds = %556, %549, %546, %544, %494, %450, %447, %420, %397, %395, %368, %345, %343, %328, %302, %289, %287
  %565 = phi i64 [ %255, %328 ], [ %255, %287 ], [ %255, %343 ], [ %255, %395 ], [ 0, %494 ], [ %255, %544 ], [ %255, %546 ], [ 1, %549 ], [ %255, %289 ], [ %255, %397 ], [ %255, %345 ], [ %255, %447 ], [ %255, %556 ], [ %255, %302 ], [ %255, %420 ], [ %255, %368 ], [ %255, %450 ]
  %566 = icmp eq i64 %565, %256
  br i1 %566, label %567, label %579

567:                                              ; preds = %564
  %568 = load i32, ptr %253, align 4, !tbaa !44
  %569 = zext i32 %568 to i64
  %570 = add nsw i64 %256, %569
  %571 = icmp eq i64 %570, %90
  %572 = select i1 %571, ptr @.str.10, ptr @.str.18
  %573 = zext i32 %275 to i64
  %574 = getelementptr inbounds [9 x ptr], ptr @delim_end, i64 0, i64 %573
  %575 = load ptr, ptr %574, align 8, !tbaa !5
  %576 = icmp ult i32 %275, 4
  %577 = select i1 %576, ptr @.str.19, ptr %575
  %578 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %572, ptr noundef %577) #10
  br label %579

579:                                              ; preds = %567, %564, %274
  %580 = phi i32 [ %275, %274 ], [ 0, %567 ], [ %275, %564 ]
  %581 = load ptr, ptr %215, align 8, !tbaa !40
  %582 = icmp eq ptr %581, null
  br i1 %582, label %583, label %212

583:                                              ; preds = %579
  %584 = tail call i32 @fputc(i32 59, ptr %0) #10
  %585 = load i32, ptr @annotate, align 4, !tbaa !29
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %595, label %587

587:                                              ; preds = %583
  %588 = getelementptr inbounds %struct.property, ptr %59, i64 0, i32 5
  %589 = load ptr, ptr %588, align 8, !tbaa !37
  %590 = tail call ptr @srcpos_string_first(ptr noundef %589, i32 noundef %585) #10
  %591 = icmp eq ptr %590, null
  br i1 %591, label %595, label %592

592:                                              ; preds = %587, %98
  %593 = phi ptr [ %101, %98 ], [ %590, %587 ]
  %594 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %593) #10
  tail call void @free(ptr noundef nonnull %593) #10
  br label %595

595:                                              ; preds = %592, %587, %583, %98, %94
  %596 = tail call i32 @fputc(i32 10, ptr %0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %597

597:                                              ; preds = %595, %58
  %598 = getelementptr inbounds %struct.property, ptr %59, i64 0, i32 3
  %599 = load ptr, ptr %598, align 8, !tbaa !5
  %600 = icmp eq ptr %599, null
  br i1 %600, label %601, label %58

601:                                              ; preds = %597, %48
  %602 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 3
  %603 = load ptr, ptr %602, align 8, !tbaa !5
  %604 = icmp eq ptr %603, null
  br i1 %604, label %617, label %605

605:                                              ; preds = %601
  %606 = add nsw i32 %2, 1
  br label %607

607:                                              ; preds = %613, %605
  %608 = phi ptr [ %603, %605 ], [ %615, %613 ]
  %609 = load i8, ptr %608, align 8, !tbaa !46, !range !16
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %611, label %613

611:                                              ; preds = %607
  %612 = tail call i32 @fputc(i32 10, ptr %0)
  tail call fastcc void @write_tree_source_node(ptr noundef %0, ptr noundef nonnull %608, i32 noundef %606)
  br label %613

613:                                              ; preds = %611, %607
  %614 = getelementptr inbounds %struct.node, ptr %608, i64 0, i32 5
  %615 = load ptr, ptr %614, align 8, !tbaa !5
  %616 = icmp eq ptr %615, null
  br i1 %616, label %617, label %607

617:                                              ; preds = %613, %601
  br i1 %5, label %618, label %623

618:                                              ; preds = %618, %617
  %619 = phi i32 [ %621, %618 ], [ 0, %617 ]
  %620 = tail call i32 @fputc(i32 noundef 9, ptr noundef %0) #10
  %621 = add nuw nsw i32 %619, 1
  %622 = icmp eq i32 %621, %2
  br i1 %622, label %623, label %618

623:                                              ; preds = %618, %617
  %624 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %0)
  %625 = load i32, ptr @annotate, align 4, !tbaa !29
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %634, label %627

627:                                              ; preds = %623
  %628 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 13
  %629 = load ptr, ptr %628, align 8, !tbaa !30
  %630 = tail call ptr @srcpos_string_last(ptr noundef %629, i32 noundef %625) #10
  %631 = icmp eq ptr %630, null
  br i1 %631, label %634, label %632

632:                                              ; preds = %627
  %633 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %630)
  tail call void @free(ptr noundef nonnull %630) #10
  br label %634

634:                                              ; preds = %632, %627, %623
  %635 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare ptr @srcpos_string_first(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

declare ptr @srcpos_string_last(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readnone willreturn }

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
!11 = !{!12, !6, i64 0}
!12 = !{!"srcfile_state", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !6, i64 32}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !6, i64 16}
!15 = !{!"srcpos", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !6, i64 16, !6, i64 24}
!16 = !{i8 0, i8 2}
!17 = !{!18, !10, i64 0}
!18 = !{!"label", !10, i64 0, !6, i64 8, !6, i64 16}
!19 = !{!18, !6, i64 8}
!20 = !{!21, !22, i64 0}
!21 = !{!"reserve_info", !22, i64 0, !22, i64 8, !6, i64 16, !6, i64 24}
!22 = !{!"long", !7, i64 0}
!23 = !{!21, !22, i64 8}
!24 = !{!25, !6, i64 24}
!25 = !{!"dt_info", !13, i64 0, !6, i64 8, !13, i64 16, !6, i64 24, !6, i64 32}
!26 = !{!27, !6, i64 8}
!27 = !{!"node", !10, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !10, i64 96, !10, i64 97}
!28 = !{!7, !7, i64 0}
!29 = !{!13, !13, i64 0}
!30 = !{!27, !6, i64 88}
!31 = !{!32, !10, i64 0}
!32 = !{!"property", !10, i64 0, !6, i64 8, !33, i64 16, !6, i64 40, !6, i64 48, !6, i64 56}
!33 = !{!"data", !13, i64 0, !6, i64 8, !6, i64 16}
!34 = !{!32, !6, i64 8}
!35 = !{!32, !13, i64 16}
!36 = !{!32, !6, i64 32}
!37 = !{!32, !6, i64 56}
!38 = !{!39, !7, i64 0}
!39 = !{!"marker", !7, i64 0, !13, i64 4, !6, i64 8, !6, i64 16}
!40 = !{!39, !6, i64 16}
!41 = !{!32, !6, i64 24}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !7, i64 0}
!44 = !{!39, !13, i64 4}
!45 = !{!39, !6, i64 8}
!46 = !{!27, !10, i64 0}
