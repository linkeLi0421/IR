; ModuleID = '/llk/IR/scripts/basic/fixdep.c_pt.bc'
source_filename = "../scripts/basic/fixdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { ptr, i32, i32, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"cmd_%s := %s\0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Usage: fixdep <depfile> <target> <cmdline>\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"fixdep\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"fixdep: error opening file: \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"fixdep: error fstat'ing file: \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"fixdep: malloc\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fixdep: read\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"source_%s := %s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"deps_%s := \\\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"  %s \\\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"fixdep: parse error; no targets found\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0A%s: $(deps_%s)\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"$(deps_%s):\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"include/generated/autoconf.h\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"include/generated/autoksyms.h\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"CONFIG_\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"_MODULE\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"    $(wildcard include/config/%.*s) \\\0A\00", align 1
@hashtab = internal unnamed_addr global [256 x ptr] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [14 x i8] c"fixdep:malloc\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 4
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 43, i64 1, ptr %5) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds ptr, ptr %1, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds ptr, ptr %1, i64 3
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str, ptr noundef %11, ptr noundef %13)
  %14 = tail call fastcc ptr @read_file(ptr noundef %9)
  br label %15

15:                                               ; preds = %207, %7
  %16 = phi i32 [ 0, %7 ], [ %208, %207 ]
  %17 = phi i32 [ 0, %7 ], [ %209, %207 ]
  %18 = phi ptr [ %14, %7 ], [ %210, %207 ]
  br label %19

19:                                               ; preds = %22, %15
  %20 = phi ptr [ %18, %15 ], [ %23, %22 ]
  %21 = load i8, ptr %20, align 1, !tbaa !9
  switch i8 %21, label %24 [
    i8 32, label %22
    i8 92, label %22
    i8 10, label %22
    i8 0, label %211
  ]

22:                                               ; preds = %19, %19, %19
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  br label %19

24:                                               ; preds = %27, %19
  %25 = phi i8 [ %29, %27 ], [ %21, %19 ]
  %26 = phi ptr [ %28, %27 ], [ %20, %19 ]
  switch i8 %25, label %27 [
    i8 0, label %30
    i8 32, label %30
    i8 92, label %30
    i8 10, label %30
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %26, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !9
  br label %24

30:                                               ; preds = %24, %24, %24, %24
  %31 = icmp eq i8 %25, 0
  %32 = getelementptr inbounds i8, ptr %26, i64 -1
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = icmp eq i8 %33, 58
  br i1 %34, label %207, label %35

35:                                               ; preds = %30
  %36 = ptrtoint ptr %26 to i64
  %37 = ptrtoint ptr %20 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = icmp slt i32 %39, 28
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = and i64 %38, 4294967295
  %43 = getelementptr inbounds i8, ptr %20, i64 %42
  %44 = getelementptr inbounds i8, ptr %43, i64 -28
  %45 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(28) %44, ptr noundef nonnull dereferenceable(28) @.str.13, i64 28) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %207, label %47

47:                                               ; preds = %41
  %48 = icmp ult i32 %39, 29
  br i1 %48, label %53, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds i8, ptr %43, i64 -29
  %51 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(29) %50, ptr noundef nonnull dereferenceable(29) @.str.14, i64 29) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %207, label %53

53:                                               ; preds = %49, %47, %35
  store i8 0, ptr %26, align 1, !tbaa !9
  %54 = icmp eq i32 %17, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = icmp eq i32 %16, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.7, ptr noundef %11, ptr noundef nonnull %20) #17
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.8, ptr noundef %11) #17
  br label %59

58:                                               ; preds = %53
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.9, ptr noundef nonnull %20) #17
  br label %59

59:                                               ; preds = %58, %57, %55
  %60 = phi i32 [ %16, %58 ], [ 1, %57 ], [ 1, %55 ]
  %61 = tail call fastcc ptr @read_file(ptr noundef nonnull %20) #17
  %62 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull @.str.15) #18
  %63 = icmp eq ptr %62, null
  br i1 %63, label %206, label %64

64:                                               ; preds = %59
  %65 = tail call ptr @__ctype_b_loc() #19
  br label %66

66:                                               ; preds = %83, %64
  %67 = phi ptr [ %85, %83 ], [ %62, %64 ]
  %68 = icmp ugt ptr %67, %61
  %69 = load ptr, ptr %65, align 8, !tbaa !5
  br i1 %68, label %71, label %70

70:                                               ; preds = %71, %66
  br label %87

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, ptr %67, i64 -1
  %73 = load i8, ptr %72, align 1, !tbaa !9
  %74 = sext i8 %73 to i64
  %75 = getelementptr inbounds i16, ptr %69, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !10
  %77 = and i16 %76, 8
  %78 = icmp ne i16 %77, 0
  %79 = icmp eq i8 %73, 95
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %81, label %70

81:                                               ; preds = %71
  %82 = getelementptr inbounds i8, ptr %67, i64 7
  br label %83

83:                                               ; preds = %202, %190, %112, %81
  %84 = phi ptr [ %82, %81 ], [ %100, %202 ], [ %100, %112 ], [ %100, %190 ]
  %85 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull @.str.15) #18
  %86 = icmp eq ptr %85, null
  br i1 %86, label %206, label %66

87:                                               ; preds = %87, %70
  %88 = phi i64 [ %98, %87 ], [ 7, %70 ]
  %89 = getelementptr inbounds i8, ptr %67, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = sext i8 %90 to i64
  %92 = getelementptr inbounds i16, ptr %69, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !10
  %94 = and i16 %93, 8
  %95 = icmp ne i16 %94, 0
  %96 = icmp eq i8 %90, 95
  %97 = select i1 %95, i1 true, i1 %96
  %98 = add nuw nsw i64 %88, 1
  br i1 %97, label %87, label %99

99:                                               ; preds = %87
  %100 = getelementptr inbounds i8, ptr %67, i64 %88
  %101 = getelementptr inbounds i8, ptr %67, i64 7
  %102 = trunc i64 %88 to i32
  %103 = add i32 %102, -7
  %104 = icmp slt i32 %103, 7
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = zext i32 %103 to i64
  %107 = getelementptr inbounds i8, ptr %67, i64 %106
  %108 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %107, ptr noundef nonnull dereferenceable(7) @.str.16, i64 7) #17
  %109 = icmp eq i32 %108, 0
  %110 = add nsw i64 %88, -7
  br i1 %109, label %112, label %111

111:                                              ; preds = %105, %99
  br label %112

112:                                              ; preds = %111, %105
  %113 = phi i64 [ %88, %111 ], [ %110, %105 ]
  %114 = icmp sgt i64 %113, 7
  br i1 %114, label %115, label %83

115:                                              ; preds = %112
  %116 = trunc i64 %113 to i32
  %117 = add i32 %116, -7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %173, label %119

119:                                              ; preds = %115
  %120 = zext i32 %117 to i64
  %121 = add nsw i64 %120, -1
  %122 = and i64 %120, 3
  %123 = icmp ult i64 %121, 3
  br i1 %123, label %156, label %124

124:                                              ; preds = %119
  %125 = and i64 %120, 4294967292
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i64 [ 0, %124 ], [ %153, %126 ]
  %128 = phi i32 [ -2128831035, %124 ], [ %152, %126 ]
  %129 = phi i64 [ 0, %124 ], [ %154, %126 ]
  %130 = getelementptr inbounds i8, ptr %101, i64 %127
  %131 = load i8, ptr %130, align 1, !tbaa !9
  %132 = sext i8 %131 to i32
  %133 = xor i32 %128, %132
  %134 = mul i32 %133, 16777619
  %135 = or i64 %127, 1
  %136 = getelementptr inbounds i8, ptr %101, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !9
  %138 = sext i8 %137 to i32
  %139 = xor i32 %134, %138
  %140 = mul i32 %139, 16777619
  %141 = or i64 %127, 2
  %142 = getelementptr inbounds i8, ptr %101, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !9
  %144 = sext i8 %143 to i32
  %145 = xor i32 %140, %144
  %146 = mul i32 %145, 16777619
  %147 = or i64 %127, 3
  %148 = getelementptr inbounds i8, ptr %101, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !9
  %150 = sext i8 %149 to i32
  %151 = xor i32 %146, %150
  %152 = mul i32 %151, 16777619
  %153 = add nuw nsw i64 %127, 4
  %154 = add i64 %129, 4
  %155 = icmp eq i64 %154, %125
  br i1 %155, label %156, label %126

156:                                              ; preds = %126, %119
  %157 = phi i32 [ undef, %119 ], [ %152, %126 ]
  %158 = phi i64 [ 0, %119 ], [ %153, %126 ]
  %159 = phi i32 [ -2128831035, %119 ], [ %152, %126 ]
  %160 = icmp eq i64 %122, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %161, %156
  %162 = phi i64 [ %170, %161 ], [ %158, %156 ]
  %163 = phi i32 [ %169, %161 ], [ %159, %156 ]
  %164 = phi i64 [ %171, %161 ], [ 0, %156 ]
  %165 = getelementptr inbounds i8, ptr %101, i64 %162
  %166 = load i8, ptr %165, align 1, !tbaa !9
  %167 = sext i8 %166 to i32
  %168 = xor i32 %163, %167
  %169 = mul i32 %168, 16777619
  %170 = add nuw nsw i64 %162, 1
  %171 = add i64 %164, 1
  %172 = icmp eq i64 %171, %122
  br i1 %172, label %173, label %161, !llvm.loop !12

173:                                              ; preds = %161, %156, %115
  %174 = phi i32 [ -2128831035, %115 ], [ %157, %156 ], [ %169, %161 ]
  %175 = and i32 %174, 255
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [256 x ptr], ptr @hashtab, i64 0, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !5
  %179 = icmp eq ptr %178, null
  %180 = sext i32 %117 to i64
  br i1 %179, label %197, label %181

181:                                              ; preds = %194, %173
  %182 = phi ptr [ %195, %194 ], [ %178, %173 ]
  %183 = getelementptr inbounds %struct.item, ptr %182, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !14
  %185 = icmp eq i32 %184, %174
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.item, ptr %182, i64 0, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !14
  %189 = icmp eq i32 %188, %117
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.item, ptr %182, i64 0, i32 3
  %192 = tail call i32 @bcmp(ptr nonnull %191, ptr nonnull %101, i64 %180) #17
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %83, label %194

194:                                              ; preds = %190, %186, %181
  %195 = load ptr, ptr %182, align 8, !tbaa !5
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %181

197:                                              ; preds = %194, %173
  %198 = add nsw i64 %180, 16
  %199 = tail call noalias ptr @malloc(i64 noundef %198) #20
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  tail call void @perror(ptr noundef nonnull @.str.18) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.item, ptr %199, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %203, ptr nonnull align 1 %101, i64 %180, i1 false) #17
  %204 = getelementptr inbounds %struct.item, ptr %199, i64 0, i32 1
  store i32 %117, ptr %204, align 8, !tbaa !14
  %205 = getelementptr inbounds %struct.item, ptr %199, i64 0, i32 2
  store i32 %174, ptr %205, align 4, !tbaa !14
  store ptr %178, ptr %199, align 8, !tbaa !5
  store ptr %199, ptr %177, align 8, !tbaa !5
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.17, i32 noundef %117, ptr noundef nonnull %101) #17
  br label %83

206:                                              ; preds = %83, %59
  tail call void @free(ptr noundef %61) #17
  br label %207

207:                                              ; preds = %206, %49, %41, %30
  %208 = phi i32 [ %16, %49 ], [ %60, %206 ], [ %16, %30 ], [ %16, %41 ]
  %209 = phi i32 [ %17, %49 ], [ 0, %206 ], [ 1, %30 ], [ %17, %41 ]
  %210 = getelementptr inbounds i8, ptr %26, i64 1
  br i1 %31, label %211, label %15

211:                                              ; preds = %207, %19
  %212 = phi i32 [ %16, %19 ], [ %208, %207 ]
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load ptr, ptr @stderr, align 8, !tbaa !5
  %216 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 38, i64 1, ptr %215) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

217:                                              ; preds = %211
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.11, ptr noundef %11, ptr noundef %11) #17
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.12, ptr noundef %11) #17
  tail call void @free(ptr noundef %14) #17
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @xprintf(ptr nocapture noundef readonly %0, ...) unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5, !noalias !16
  %4 = call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %2) #17
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @perror(ptr noundef nonnull @.str.2) #21
  call void @exit(i32 noundef 1) #16
  unreachable

7:                                                ; preds = %1
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @read_file(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #17
  %3 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #17
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 28, i64 1, ptr %6) #21
  tail call void @perror(ptr noundef %0) #21
  tail call void @exit(i32 noundef 2) #16
  unreachable

8:                                                ; preds = %1
  %9 = call i32 @__fxstat(i32 noundef 1, i32 noundef %3, ptr noundef nonnull %2) #17
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %13 = call i64 @fwrite(ptr nonnull @.str.4, i64 30, i64 1, ptr %12) #21
  call void @perror(ptr noundef %0) #21
  call void @exit(i32 noundef 2) #16
  unreachable

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !19
  %17 = add nsw i64 %16, 1
  %18 = call noalias ptr @malloc(i64 noundef %17) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @perror(ptr noundef nonnull @.str.5) #21
  call void @exit(i32 noundef 2) #16
  unreachable

21:                                               ; preds = %14
  %22 = call i64 @read(i32 noundef %3, ptr noundef nonnull %18, i64 noundef %16) #17
  %23 = load i64, ptr %15, align 8, !tbaa !19
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void @perror(ptr noundef nonnull @.str.6) #21
  call void @exit(i32 noundef 2) #16
  unreachable

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, ptr %18, i64 %22
  store i8 0, ptr %27, align 1, !tbaa !9
  %28 = call i32 @close(i32 noundef %3) #17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #17
  ret ptr %18
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold }

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"vprintf: argument 0"}
!18 = distinct !{!18, !"vprintf"}
!19 = !{!20, !21, i64 48}
!20 = !{!"stat", !21, i64 0, !21, i64 8, !21, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !22, i64 72, !22, i64 88, !22, i64 104, !7, i64 120}
!21 = !{!"long", !7, i64 0}
!22 = !{!"timespec", !21, i64 0, !21, i64 8}
