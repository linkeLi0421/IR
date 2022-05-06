; ModuleID = '/llk/IR/scripts/dtc/data.c_pt.bc'
source_filename = "../scripts/dtc/data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, ptr, ptr }
%struct.marker = type { i32, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [33 x i8] c"Error reading file into data: %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Overflow reading file into data\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid literal size (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"realloc() failed (len=%zd)\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @data_free(ptr nocapture noundef readonly byval(%struct.data) align 8 %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.data, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.marker, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.marker, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  tail call void @free(ptr noundef %10) #20
  tail call void @free(ptr noundef nonnull %6) #20
  %11 = icmp eq ptr %8, null
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.data, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %14) #20
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @data_grow_for(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef readonly byval(%struct.data) align 8 %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !15
  br label %26

6:                                                ; preds = %3
  %7 = load i64, ptr %1, align 8, !tbaa.struct !15
  %8 = getelementptr inbounds i8, ptr %1, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa.struct !18
  %10 = trunc i64 %7 to i32
  %11 = add i32 %10, %2
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i32 [ %2, %6 ], [ %15, %12 ]
  %14 = icmp ugt i32 %11, %13
  %15 = shl i32 %13, 1
  br i1 %14, label %12, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.data, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = zext i32 %13 to i64
  %20 = tail call ptr @realloc(ptr noundef %18, i64 noundef %19) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %19) #22
  unreachable

23:                                               ; preds = %16
  store i64 %7, ptr %0, align 8, !tbaa.struct !15
  %24 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %20, ptr %24, align 8, !tbaa.struct !19
  %25 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %9, ptr %25, align 8, !tbaa.struct !18
  br label %26

26:                                               ; preds = %23, %5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @data_copy_mem(ptr noalias nocapture sret(%struct.data) align 8 %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = tail call ptr @malloc(i64 %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %6) #22, !noalias !20
  unreachable

10:                                               ; preds = %5, %3
  %11 = phi ptr [ null, %3 ], [ %7, %5 ]
  store i64 0, ptr %0, align 8, !tbaa.struct !15
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !19
  %13 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr null, ptr %13, align 8, !tbaa.struct !18
  store i32 %2, ptr %0, align 8, !tbaa !23
  %14 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %1, i64 %14, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local void @data_copy_escape_string(ptr noalias nocapture sret(%struct.data) align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %5 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5) #22, !noalias !24
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.marker, ptr %5, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !27, !noalias !24
  store i32 8, ptr %5, align 8, !tbaa !28, !noalias !24
  %10 = getelementptr inbounds %struct.marker, ptr %5, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds i8, ptr %0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  store i32 0, ptr %0, align 8, !tbaa.struct !15
  %12 = getelementptr inbounds i8, ptr %0, i64 16
  %13 = add nsw i32 %2, 1
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store ptr %5, ptr %12, align 8, !tbaa.struct !18
  br label %33

18:                                               ; preds = %8
  %19 = load i64, ptr %0, align 8
  %20 = trunc i64 %19 to i32
  %21 = add i32 %13, %20
  br label %22

22:                                               ; preds = %22, %18
  %23 = phi i32 [ %13, %18 ], [ %25, %22 ]
  %24 = icmp ugt i32 %21, %23
  %25 = shl i32 %23, 1
  br i1 %24, label %22, label %26

26:                                               ; preds = %22
  %27 = zext i32 %23 to i64
  %28 = tail call ptr @realloc(ptr noundef %15, i64 noundef %27) #21, !noalias !29
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %27) #22, !noalias !29
  unreachable

31:                                               ; preds = %26
  store ptr %28, ptr %14, align 8, !tbaa.struct !19
  store ptr %5, ptr %12, align 8, !tbaa.struct !18
  %32 = icmp sgt i32 %2, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %31, %17
  %34 = phi ptr [ %15, %17 ], [ %28, %31 ]
  %35 = load i32, ptr %0, align 8, !tbaa !23
  br label %53

36:                                               ; preds = %45, %31
  %37 = phi i32 [ %51, %45 ], [ 0, %31 ]
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %4, align 4, !tbaa !16
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !32
  %42 = icmp eq i8 %41, 92
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call signext i8 @get_escape_char(ptr noundef nonnull %1, ptr noundef nonnull %4) #20
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi i8 [ %44, %43 ], [ %41, %36 ]
  %47 = load i32, ptr %0, align 8, !tbaa !23
  %48 = add i32 %47, 1
  store i32 %48, ptr %0, align 8, !tbaa !23
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i8, ptr %28, i64 %49
  store i8 %46, ptr %50, align 1, !tbaa !32
  %51 = load i32, ptr %4, align 4, !tbaa !16
  %52 = icmp slt i32 %51, %2
  br i1 %52, label %36, label %53

53:                                               ; preds = %45, %33
  %54 = phi ptr [ %34, %33 ], [ %28, %45 ]
  %55 = phi i32 [ %35, %33 ], [ %48, %45 ]
  %56 = add i32 %55, 1
  store i32 %56, ptr %0, align 8, !tbaa !23
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  store i8 0, ptr %58, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_add_marker(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef readonly byval(%struct.data) align 8 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5) #22
  unreachable

9:                                                ; preds = %4
  %10 = load i32, ptr %1, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.marker, ptr %6, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !27
  store i32 %2, ptr %6, align 8, !tbaa !28
  %12 = getelementptr inbounds %struct.marker, ptr %6, i64 0, i32 2
  store ptr %3, ptr %12, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.marker, ptr %6, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  %14 = getelementptr inbounds i8, ptr %1, i64 16
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %5, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %9
  %18 = phi ptr [ %20, %17 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.marker, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !17, !noalias !33
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.marker, ptr %18, i64 0, i32 3
  br label %24

24:                                               ; preds = %22, %9
  %25 = phi ptr [ %5, %9 ], [ %23, %22 ]
  store ptr %6, ptr %25, align 8, !tbaa !17, !noalias !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %26 = getelementptr inbounds i8, ptr %0, i64 16
  %27 = load ptr, ptr %5, align 8, !tbaa.struct !18
  store ptr %27, ptr %26, align 8, !tbaa.struct !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  ret void
}

declare signext i8 @get_escape_char(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @data_copy_file(ptr noalias nocapture sret(%struct.data) align 8 %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %4 = call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5) #22, !noalias !36
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %4, ptr %8, align 8, !tbaa.struct !18
  %9 = tail call i32 @feof(ptr noundef %1) #20
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %7
  %14 = icmp eq i64 %2, -1
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  %16 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %54, %13
  %18 = phi ptr [ %16, %13 ], [ %39, %54 ]
  %19 = phi i64 [ 0, %13 ], [ %58, %54 ]
  %20 = sub i64 %2, %19
  %21 = select i1 %14, i64 4096, i64 %20
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load i64, ptr %0, align 8
  %26 = trunc i64 %25 to i32
  %27 = add i32 %26, %22
  br label %28

28:                                               ; preds = %28, %24
  %29 = phi i32 [ %22, %24 ], [ %31, %28 ]
  %30 = icmp ugt i32 %27, %29
  %31 = shl i32 %29, 1
  br i1 %30, label %28, label %32

32:                                               ; preds = %28
  %33 = zext i32 %29 to i64
  %34 = tail call ptr @realloc(ptr noundef %18, i64 noundef %33) #21, !noalias !39
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = zext i32 %29 to i64
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %37) #22, !noalias !39
  unreachable

38:                                               ; preds = %32, %17
  %39 = phi ptr [ %18, %17 ], [ %34, %32 ]
  store ptr %39, ptr %15, align 8, !tbaa.struct !19
  %40 = load i32, ptr %0, align 8, !tbaa !23
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  %43 = tail call i64 @fread(ptr noundef %42, i64 noundef 1, i64 noundef %21, ptr noundef %1)
  %44 = tail call i32 @ferror(ptr noundef %1) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = tail call ptr @__errno_location() #24
  %48 = load i32, ptr %47, align 4, !tbaa !16
  %49 = tail call ptr @strerror(i32 noundef %48) #20
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str, ptr noundef %49) #25
  unreachable

50:                                               ; preds = %38
  %51 = add i64 %43, %41
  %52 = icmp ult i64 %51, %41
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1) #25
  unreachable

54:                                               ; preds = %50
  %55 = trunc i64 %51 to i32
  store i32 %55, ptr %0, align 8, !tbaa !23
  %56 = tail call i32 @feof(ptr noundef %1) #20
  %57 = icmp eq i32 %56, 0
  %58 = and i64 %51, 4294967295
  %59 = icmp ult i64 %58, %2
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %17, label %61

61:                                               ; preds = %54, %7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %0, ...) unnamed_addr #8 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !17
  %4 = call i64 @fwrite(ptr nonnull @.str.4, i64 13, i64 1, ptr %3) #26
  %5 = load ptr, ptr @stderr, align 8, !tbaa !17
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %2) #26
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @data_append_data(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef byval(%struct.data) align 8 %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 8, !tbaa !23
  %10 = add nuw nsw i32 %9, %3
  br label %24

11:                                               ; preds = %4
  %12 = load i64, ptr %1, align 8
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, %3
  br label %15

15:                                               ; preds = %15, %11
  %16 = phi i32 [ %3, %11 ], [ %18, %15 ]
  %17 = icmp ugt i32 %14, %16
  %18 = shl i32 %16, 1
  br i1 %17, label %15, label %19

19:                                               ; preds = %15
  %20 = zext i32 %16 to i64
  %21 = tail call ptr @realloc(ptr noundef %6, i64 noundef %20) #21, !noalias !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %20) #22, !noalias !42
  unreachable

24:                                               ; preds = %19, %8
  %25 = phi i32 [ %10, %8 ], [ %14, %19 ]
  %26 = phi i32 [ %9, %8 ], [ %13, %19 ]
  %27 = phi ptr [ %6, %8 ], [ %21, %19 ]
  store ptr %27, ptr %5, align 8, !tbaa.struct !19
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  %30 = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %2, i64 %30, i1 false)
  store i32 %25, ptr %1, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_insert_at_marker(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef byval(%struct.data) align 8 %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load i32, ptr %1, align 8, !tbaa !23
  %11 = add nuw nsw i32 %10, %4
  br label %25

12:                                               ; preds = %5
  %13 = load i64, ptr %1, align 8
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, %4
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi i32 [ %4, %12 ], [ %19, %16 ]
  %18 = icmp ugt i32 %15, %17
  %19 = shl i32 %17, 1
  br i1 %18, label %16, label %20

20:                                               ; preds = %16
  %21 = zext i32 %17 to i64
  %22 = tail call ptr @realloc(ptr noundef %7, i64 noundef %21) #21, !noalias !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %21) #22, !noalias !45
  unreachable

25:                                               ; preds = %20, %9
  %26 = phi i32 [ %11, %9 ], [ %15, %20 ]
  %27 = phi i32 [ %10, %9 ], [ %14, %20 ]
  %28 = phi ptr [ %7, %9 ], [ %22, %20 ]
  store ptr %28, ptr %6, align 8, !tbaa.struct !19
  %29 = getelementptr inbounds %struct.marker, ptr %2, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !27
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %28, i64 %31
  %33 = sext i32 %4 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = sub i32 %27, %30
  %36 = zext i32 %35 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %34, ptr align 1 %32, i64 %36, i1 false)
  %37 = load i32, ptr %29, align 4, !tbaa !27
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %28, i64 %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %3, i64 %33, i1 false)
  store i32 %26, ptr %1, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.marker, ptr %2, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %25
  %44 = phi ptr [ %49, %43 ], [ %41, %25 ]
  %45 = getelementptr inbounds %struct.marker, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !27
  %47 = add i32 %46, %4
  store i32 %47, ptr %45, align 4, !tbaa !27
  %48 = getelementptr inbounds %struct.marker, ptr %44, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @data_merge(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef readonly byval(%struct.data) align 8 %1, ptr nocapture noundef byval(%struct.data) align 8 %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.data, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.data, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = load i32, ptr %2, align 8, !tbaa !23
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, -4294967296
  %12 = getelementptr inbounds i8, ptr %1, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds i8, ptr %1, i64 16
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq i32 %9, 0
  %17 = trunc i64 %10 to i32
  br i1 %16, label %29, label %18

18:                                               ; preds = %3
  %19 = add i32 %9, %17
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %9, %18 ], [ %23, %20 ]
  %22 = icmp ugt i32 %19, %21
  %23 = shl i32 %21, 1
  br i1 %22, label %20, label %24

24:                                               ; preds = %20
  %25 = zext i32 %21 to i64
  %26 = tail call ptr @realloc(ptr noundef %13, i64 noundef %25) #21, !noalias !48
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %25) #22, !noalias !48
  unreachable

29:                                               ; preds = %24, %3
  %30 = phi i32 [ %19, %24 ], [ %17, %3 ]
  %31 = phi ptr [ %26, %24 ], [ %13, %3 ]
  %32 = and i64 %10, 4294967295
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = sext i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %8, i64 %34, i1 false) #20, !noalias !53
  %35 = zext i32 %30 to i64
  %36 = or i64 %11, %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %15, ptr %4, align 8
  %37 = icmp eq ptr %15, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %38, %29
  %39 = phi ptr [ %41, %38 ], [ %15, %29 ]
  %40 = getelementptr inbounds %struct.marker, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !17, !noalias !54
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %38

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.marker, ptr %39, i64 0, i32 3
  br label %45

45:                                               ; preds = %43, %29
  %46 = phi ptr [ %4, %29 ], [ %44, %43 ]
  store ptr %6, ptr %46, align 8, !tbaa !17, !noalias !54
  %47 = load ptr, ptr %4, align 8, !tbaa.struct !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  store i64 %36, ptr %0, align 8, !tbaa.struct !15
  %48 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %31, ptr %48, align 8, !tbaa.struct !19
  %49 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %47, ptr %49, align 8, !tbaa.struct !18
  %50 = icmp eq ptr %6, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %51, %45
  %52 = phi ptr [ %57, %51 ], [ %6, %45 ]
  %53 = getelementptr inbounds %struct.marker, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !27
  %55 = add i32 %54, %17
  store i32 %55, ptr %53, align 4, !tbaa !27
  %56 = getelementptr inbounds %struct.marker, ptr %52, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %51

59:                                               ; preds = %51, %45
  store ptr null, ptr %5, align 8, !tbaa !5
  %60 = icmp eq ptr %8, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  tail call void @free(ptr noundef nonnull %8) #20
  br label %62

62:                                               ; preds = %61, %59
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_integer(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef readonly byval(%struct.data) align 8 %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add i32 %3, -8
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 29)
  switch i32 %6, label %93 [
    i32 0, label %7
    i32 1, label %28
    i32 3, label %50
    i32 7, label %72
  ]

7:                                                ; preds = %4
  %8 = load i64, ptr %1, align 8
  %9 = getelementptr inbounds i8, ptr %1, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 16
  %12 = load ptr, ptr %11, align 8
  %13 = trunc i64 %8 to i32
  %14 = add i32 %13, 1
  br label %15

15:                                               ; preds = %15, %7
  %16 = phi i32 [ 1, %7 ], [ %18, %15 ]
  %17 = icmp ugt i32 %14, %16
  %18 = shl i32 %16, 1
  br i1 %17, label %15, label %19

19:                                               ; preds = %15
  %20 = zext i32 %16 to i64
  %21 = tail call ptr @realloc(ptr noundef %10, i64 noundef %20) #21, !noalias !57
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %20) #22, !noalias !57
  unreachable

24:                                               ; preds = %19
  %25 = trunc i64 %2 to i8
  %26 = and i64 %8, 4294967295
  %27 = getelementptr inbounds i8, ptr %21, i64 %26
  store i8 %25, ptr %27, align 1, !noalias !62
  br label %94

28:                                               ; preds = %4
  %29 = trunc i64 %2 to i16
  %30 = load i64, ptr %1, align 8
  %31 = getelementptr inbounds i8, ptr %1, i64 8
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds i8, ptr %1, i64 16
  %34 = load ptr, ptr %33, align 8
  %35 = trunc i64 %30 to i32
  %36 = add i32 %35, 2
  br label %37

37:                                               ; preds = %37, %28
  %38 = phi i32 [ 2, %28 ], [ %40, %37 ]
  %39 = icmp ugt i32 %36, %38
  %40 = shl i32 %38, 1
  br i1 %39, label %37, label %41

41:                                               ; preds = %37
  %42 = zext i32 %38 to i64
  %43 = tail call ptr @realloc(ptr noundef %32, i64 noundef %42) #21, !noalias !63
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %42) #22, !noalias !63
  unreachable

46:                                               ; preds = %41
  %47 = tail call i16 @llvm.bswap.i16(i16 %29) #20
  %48 = and i64 %30, 4294967295
  %49 = getelementptr inbounds i8, ptr %43, i64 %48
  store i16 %47, ptr %49, align 1, !noalias !68
  br label %94

50:                                               ; preds = %4
  %51 = trunc i64 %2 to i32
  %52 = load i64, ptr %1, align 8
  %53 = getelementptr inbounds i8, ptr %1, i64 8
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds i8, ptr %1, i64 16
  %56 = load ptr, ptr %55, align 8
  %57 = trunc i64 %52 to i32
  %58 = add i32 %57, 4
  br label %59

59:                                               ; preds = %59, %50
  %60 = phi i32 [ 4, %50 ], [ %62, %59 ]
  %61 = icmp ugt i32 %58, %60
  %62 = shl i32 %60, 1
  br i1 %61, label %59, label %63

63:                                               ; preds = %59
  %64 = zext i32 %60 to i64
  %65 = tail call ptr @realloc(ptr noundef %54, i64 noundef %64) #21, !noalias !69
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %64) #22, !noalias !69
  unreachable

68:                                               ; preds = %63
  %69 = tail call i32 @llvm.bswap.i32(i32 %51) #20
  %70 = and i64 %52, 4294967295
  %71 = getelementptr inbounds i8, ptr %65, i64 %70
  store i32 %69, ptr %71, align 1, !noalias !74
  br label %94

72:                                               ; preds = %4
  %73 = load i64, ptr %1, align 8
  %74 = getelementptr inbounds i8, ptr %1, i64 8
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds i8, ptr %1, i64 16
  %77 = load ptr, ptr %76, align 8
  %78 = trunc i64 %73 to i32
  %79 = add i32 %78, 8
  br label %80

80:                                               ; preds = %80, %72
  %81 = phi i32 [ 8, %72 ], [ %83, %80 ]
  %82 = icmp ugt i32 %79, %81
  %83 = shl i32 %81, 1
  br i1 %82, label %80, label %84

84:                                               ; preds = %80
  %85 = zext i32 %81 to i64
  %86 = tail call ptr @realloc(ptr noundef %75, i64 noundef %85) #21, !noalias !75
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %85) #22, !noalias !75
  unreachable

89:                                               ; preds = %84
  %90 = tail call i64 @llvm.bswap.i64(i64 %2) #20
  %91 = and i64 %73, 4294967295
  %92 = getelementptr inbounds i8, ptr %86, i64 %91
  store i64 %90, ptr %92, align 1, !noalias !80
  br label %94

93:                                               ; preds = %4
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.2, i32 noundef %3) #25
  unreachable

94:                                               ; preds = %89, %68, %46, %24
  %95 = phi i32 [ %79, %89 ], [ %58, %68 ], [ %36, %46 ], [ %14, %24 ]
  %96 = phi i64 [ %73, %89 ], [ %52, %68 ], [ %30, %46 ], [ %8, %24 ]
  %97 = phi ptr [ %86, %89 ], [ %65, %68 ], [ %43, %46 ], [ %21, %24 ]
  %98 = phi ptr [ %77, %89 ], [ %56, %68 ], [ %34, %46 ], [ %12, %24 ]
  %99 = and i64 %96, -4294967296
  %100 = zext i32 %95 to i64
  %101 = or i64 %99, %100
  store i64 %101, ptr %0, align 8
  %102 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %97, ptr %102, align 8
  %103 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %98, ptr %103, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_re(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef readonly byval(%struct.data) align 8 %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = load i64, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %1, i64 16
  %9 = load ptr, ptr %8, align 8
  %10 = trunc i64 %5 to i32
  %11 = add i32 %10, 16
  br label %12

12:                                               ; preds = %12, %4
  %13 = phi i32 [ 16, %4 ], [ %15, %12 ]
  %14 = icmp ugt i32 %11, %13
  %15 = shl i32 %13, 1
  br i1 %14, label %12, label %16

16:                                               ; preds = %12
  %17 = zext i32 %13 to i64
  %18 = tail call ptr @realloc(ptr noundef %7, i64 noundef %17) #21, !noalias !81
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %17) #22, !noalias !81
  unreachable

21:                                               ; preds = %16
  %22 = and i64 %5, -4294967296
  %23 = tail call i64 @llvm.bswap.i64(i64 %3) #20
  %24 = tail call i64 @llvm.bswap.i64(i64 %2) #20
  %25 = and i64 %5, 4294967295
  %26 = getelementptr inbounds i8, ptr %18, i64 %25
  store i64 %24, ptr %26, align 1, !noalias !86
  %27 = getelementptr inbounds i8, ptr %26, i64 8
  store i64 %23, ptr %27, align 1, !noalias !86
  %28 = zext i32 %11 to i64
  %29 = or i64 %22, %28
  store i64 %29, ptr %0, align 8, !tbaa.struct !15
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %18, ptr %30, align 8, !tbaa.struct !19
  %31 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %9, ptr %31, align 8, !tbaa.struct !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_cell(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef readonly byval(%struct.data) align 8 %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %4 = load i64, ptr %1, align 8
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 16
  %8 = load ptr, ptr %7, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %9, 4
  br label %11

11:                                               ; preds = %11, %3
  %12 = phi i32 [ 4, %3 ], [ %14, %11 ]
  %13 = icmp ugt i32 %10, %12
  %14 = shl i32 %12, 1
  br i1 %13, label %11, label %15

15:                                               ; preds = %11
  %16 = zext i32 %12 to i64
  %17 = tail call ptr @realloc(ptr noundef %6, i64 noundef %16) #21, !noalias !90
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %16) #22, !noalias !90
  unreachable

20:                                               ; preds = %15
  %21 = tail call i32 @llvm.bswap.i32(i32 %2) #20
  %22 = and i64 %4, 4294967295
  %23 = getelementptr inbounds i8, ptr %17, i64 %22
  store i32 %21, ptr %23, align 1, !noalias !95
  %24 = and i64 %4, -4294967296
  %25 = zext i32 %10 to i64
  %26 = or i64 %24, %25
  store i64 %26, ptr %0, align 8, !alias.scope !87
  %27 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %17, ptr %27, align 8, !alias.scope !87
  %28 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %8, ptr %28, align 8, !alias.scope !87
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_addr(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef readonly byval(%struct.data) align 8 %1, i64 noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %4 = load i64, ptr %1, align 8
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 16
  %8 = load ptr, ptr %7, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %9, 8
  br label %11

11:                                               ; preds = %11, %3
  %12 = phi i32 [ 8, %3 ], [ %14, %11 ]
  %13 = icmp ugt i32 %10, %12
  %14 = shl i32 %12, 1
  br i1 %13, label %11, label %15

15:                                               ; preds = %11
  %16 = zext i32 %12 to i64
  %17 = tail call ptr @realloc(ptr noundef %6, i64 noundef %16) #21, !noalias !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %16) #22, !noalias !99
  unreachable

20:                                               ; preds = %15
  %21 = tail call i64 @llvm.bswap.i64(i64 %2) #20
  %22 = and i64 %4, 4294967295
  %23 = getelementptr inbounds i8, ptr %17, i64 %22
  store i64 %21, ptr %23, align 1, !noalias !104
  %24 = and i64 %4, -4294967296
  %25 = zext i32 %10 to i64
  %26 = or i64 %24, %25
  store i64 %26, ptr %0, align 8, !alias.scope !96
  %27 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %17, ptr %27, align 8, !alias.scope !96
  %28 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %8, ptr %28, align 8, !alias.scope !96
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_byte(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef readonly byval(%struct.data) align 8 %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 16
  %8 = load ptr, ptr %7, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %9, 1
  br label %11

11:                                               ; preds = %11, %3
  %12 = phi i32 [ 1, %3 ], [ %14, %11 ]
  %13 = icmp ugt i32 %10, %12
  %14 = shl i32 %12, 1
  br i1 %13, label %11, label %15

15:                                               ; preds = %11
  %16 = zext i32 %12 to i64
  %17 = tail call ptr @realloc(ptr noundef %6, i64 noundef %16) #21, !noalias !105
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %16) #22, !noalias !105
  unreachable

20:                                               ; preds = %15
  %21 = and i64 %4, -4294967296
  %22 = and i64 %4, 4294967295
  %23 = getelementptr inbounds i8, ptr %17, i64 %22
  store i8 %2, ptr %23, align 1, !noalias !110
  %24 = zext i32 %10 to i64
  %25 = or i64 %21, %24
  store i64 %25, ptr %0, align 8, !tbaa.struct !15
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %17, ptr %26, align 8, !tbaa.struct !19
  %27 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %8, ptr %27, align 8, !tbaa.struct !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_zeroes(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef byval(%struct.data) align 8 %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8, !tbaa !23
  %9 = add nuw nsw i32 %8, %2
  br label %23

10:                                               ; preds = %3
  %11 = load i64, ptr %1, align 8
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, %2
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %2, %10 ], [ %17, %14 ]
  %16 = icmp ugt i32 %13, %15
  %17 = shl i32 %15, 1
  br i1 %16, label %14, label %18

18:                                               ; preds = %14
  %19 = zext i32 %15 to i64
  %20 = tail call ptr @realloc(ptr noundef %5, i64 noundef %19) #21, !noalias !111
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %19) #22, !noalias !111
  unreachable

23:                                               ; preds = %18, %7
  %24 = phi i32 [ %9, %7 ], [ %13, %18 ]
  %25 = phi i32 [ %8, %7 ], [ %12, %18 ]
  %26 = phi ptr [ %5, %7 ], [ %20, %18 ]
  store ptr %26, ptr %4, align 8, !tbaa.struct !19
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %28, i8 0, i64 %29, i1 false)
  store i32 %24, ptr %1, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_align(ptr noalias nocapture writeonly sret(%struct.data) align 8 %0, ptr nocapture noundef readonly byval(%struct.data) align 8 %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !23
  %5 = add i32 %2, -1
  %6 = add i32 %5, %4
  %7 = sub i32 0, %2
  %8 = and i32 %6, %7
  %9 = sub i32 %8, %4
  %10 = load i64, ptr %1, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds i8, ptr %1, i64 16
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq i32 %9, 0
  %16 = trunc i64 %10 to i32
  br i1 %15, label %28, label %17

17:                                               ; preds = %3
  %18 = add i32 %9, %16
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %9, %17 ], [ %22, %19 ]
  %21 = icmp ugt i32 %18, %20
  %22 = shl i32 %20, 1
  br i1 %21, label %19, label %23

23:                                               ; preds = %19
  %24 = zext i32 %20 to i64
  %25 = tail call ptr @realloc(ptr noundef %12, i64 noundef %24) #21, !noalias !114
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %24) #22, !noalias !114
  unreachable

28:                                               ; preds = %23, %3
  %29 = phi i32 [ %18, %23 ], [ %16, %3 ]
  %30 = phi ptr [ %25, %23 ], [ %12, %3 ]
  %31 = and i64 %10, -4294967296
  %32 = and i64 %10, 4294967295
  %33 = getelementptr inbounds i8, ptr %30, i64 %32
  %34 = sext i32 %9 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 %34, i1 false) #20, !noalias !119
  %35 = zext i32 %29 to i64
  %36 = or i64 %31, %35
  store i64 %36, ptr %0, align 8, !tbaa.struct !15
  %37 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %30, ptr %37, align 8, !tbaa.struct !19
  %38 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %14, ptr %38, align 8, !tbaa.struct !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local zeroext i1 @data_is_one_string(ptr nocapture noundef readonly byval(%struct.data) align 8 %0) local_unnamed_addr #11 {
  %2 = load i32, ptr %0, align 8, !tbaa !23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  %6 = icmp sgt i32 %2, 1
  %7 = getelementptr inbounds %struct.data, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  br i1 %6, label %9, label %19

9:                                                ; preds = %4
  %10 = zext i32 %5 to i64
  br label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %19, label %14

14:                                               ; preds = %11, %9
  %15 = phi i64 [ 0, %9 ], [ %12, %11 ]
  %16 = getelementptr inbounds i8, ptr %8, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !32
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %11

19:                                               ; preds = %11, %4
  %20 = sext i32 %5 to i64
  %21 = getelementptr inbounds i8, ptr %8, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !32
  %23 = icmp eq i8 %22, 0
  br label %24

24:                                               ; preds = %19, %14, %1
  %25 = phi i1 [ false, %1 ], [ %23, %19 ], [ false, %14 ]
  ret i1 %25
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #17

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #19 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readnone willreturn }
attributes #25 = { noreturn }
attributes #26 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"data", !7, i64 0, !10, i64 8, !10, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!12, !10, i64 16}
!12 = !{!"marker", !8, i64 0, !7, i64 4, !10, i64 8, !10, i64 16}
!13 = !{!12, !10, i64 8}
!14 = !{!6, !10, i64 8}
!15 = !{i64 0, i64 4, !16, i64 8, i64 8, !17, i64 16, i64 8, !17}
!16 = !{!7, !7, i64 0}
!17 = !{!10, !10, i64 0}
!18 = !{i64 0, i64 8, !17}
!19 = !{i64 0, i64 8, !17, i64 8, i64 8, !17}
!20 = !{!21}
!21 = distinct !{!21, !22, !"data_grow_for: argument 0"}
!22 = distinct !{!22, !"data_grow_for"}
!23 = !{!6, !7, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !"data_add_marker: argument 0"}
!26 = distinct !{!26, !"data_add_marker"}
!27 = !{!12, !7, i64 4}
!28 = !{!12, !8, i64 0}
!29 = !{!30}
!30 = distinct !{!30, !31, !"data_grow_for: argument 0"}
!31 = distinct !{!31, !"data_grow_for"}
!32 = !{!8, !8, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"data_append_markers: argument 0"}
!35 = distinct !{!35, !"data_append_markers"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"data_add_marker: argument 0"}
!38 = distinct !{!38, !"data_add_marker"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"data_grow_for: argument 0"}
!41 = distinct !{!41, !"data_grow_for"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"data_grow_for: argument 0"}
!44 = distinct !{!44, !"data_grow_for"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"data_grow_for: argument 0"}
!47 = distinct !{!47, !"data_grow_for"}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"data_grow_for: argument 0"}
!50 = distinct !{!50, !"data_grow_for"}
!51 = distinct !{!51, !52, !"data_append_data: argument 0"}
!52 = distinct !{!52, !"data_append_data"}
!53 = !{!51}
!54 = !{!55}
!55 = distinct !{!55, !56, !"data_append_markers: argument 0"}
!56 = distinct !{!56, !"data_append_markers"}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"data_grow_for: argument 0"}
!59 = distinct !{!59, !"data_grow_for"}
!60 = distinct !{!60, !61, !"data_append_data: argument 0"}
!61 = distinct !{!61, !"data_append_data"}
!62 = !{!60}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"data_grow_for: argument 0"}
!65 = distinct !{!65, !"data_grow_for"}
!66 = distinct !{!66, !67, !"data_append_data: argument 0"}
!67 = distinct !{!67, !"data_append_data"}
!68 = !{!66}
!69 = !{!70, !72}
!70 = distinct !{!70, !71, !"data_grow_for: argument 0"}
!71 = distinct !{!71, !"data_grow_for"}
!72 = distinct !{!72, !73, !"data_append_data: argument 0"}
!73 = distinct !{!73, !"data_append_data"}
!74 = !{!72}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"data_grow_for: argument 0"}
!77 = distinct !{!77, !"data_grow_for"}
!78 = distinct !{!78, !79, !"data_append_data: argument 0"}
!79 = distinct !{!79, !"data_append_data"}
!80 = !{!78}
!81 = !{!82, !84}
!82 = distinct !{!82, !83, !"data_grow_for: argument 0"}
!83 = distinct !{!83, !"data_grow_for"}
!84 = distinct !{!84, !85, !"data_append_data: argument 0"}
!85 = distinct !{!85, !"data_append_data"}
!86 = !{!84}
!87 = !{!88}
!88 = distinct !{!88, !89, !"data_append_integer: argument 0"}
!89 = distinct !{!89, !"data_append_integer"}
!90 = !{!91, !93, !88}
!91 = distinct !{!91, !92, !"data_grow_for: argument 0"}
!92 = distinct !{!92, !"data_grow_for"}
!93 = distinct !{!93, !94, !"data_append_data: argument 0"}
!94 = distinct !{!94, !"data_append_data"}
!95 = !{!93, !88}
!96 = !{!97}
!97 = distinct !{!97, !98, !"data_append_integer: argument 0"}
!98 = distinct !{!98, !"data_append_integer"}
!99 = !{!100, !102, !97}
!100 = distinct !{!100, !101, !"data_grow_for: argument 0"}
!101 = distinct !{!101, !"data_grow_for"}
!102 = distinct !{!102, !103, !"data_append_data: argument 0"}
!103 = distinct !{!103, !"data_append_data"}
!104 = !{!102, !97}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"data_grow_for: argument 0"}
!107 = distinct !{!107, !"data_grow_for"}
!108 = distinct !{!108, !109, !"data_append_data: argument 0"}
!109 = distinct !{!109, !"data_append_data"}
!110 = !{!108}
!111 = !{!112}
!112 = distinct !{!112, !113, !"data_grow_for: argument 0"}
!113 = distinct !{!113, !"data_grow_for"}
!114 = !{!115, !117}
!115 = distinct !{!115, !116, !"data_grow_for: argument 0"}
!116 = distinct !{!116, !"data_grow_for"}
!117 = distinct !{!117, !118, !"data_append_zeroes: argument 0"}
!118 = distinct !{!118, !"data_append_zeroes"}
!119 = !{!117}
