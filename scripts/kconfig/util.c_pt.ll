; ModuleID = '/llk/IR/scripts/kconfig/util.c_pt.bc'
source_filename = "../scripts/kconfig/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { ptr, ptr, ptr, i32 }
%struct.gstr = type { i64, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@file_list = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @file_lookup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @file_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %8) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %2

11:                                               ; preds = %2
  %12 = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %16 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %15) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

17:                                               ; preds = %11
  %18 = tail call noalias ptr @strdup(ptr noundef %0) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %22 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %21) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.file, ptr %12, i64 0, i32 2
  store ptr %18, ptr %24, align 8, !tbaa !9
  %25 = load ptr, ptr @file_list, align 8, !tbaa !5
  store ptr %25, ptr %12, align 8, !tbaa !12
  store ptr %12, ptr @file_list, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %23, %6
  %27 = phi ptr [ %12, %23 ], [ %4, %6 ]
  ret ptr %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xmalloc(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  ret ptr %2

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %6) #21
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call noalias ptr @strdup(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  ret ptr %2

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %6) #21
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @str_new(ptr noalias nocapture writeonly sret(%struct.gstr) align 8 %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %5) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gstr, ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !13
  store i64 64, ptr %0, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.gstr, ptr %0, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !17
  store i8 0, ptr %2, align 1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @str_free(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gstr, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #19
  br label %6

6:                                                ; preds = %5, %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @str_append(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gstr, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %8 = tail call i64 @strlen(ptr noundef nonnull %1) #16
  %9 = add i64 %7, 1
  %10 = add i64 %9, %8
  %11 = load i64, ptr %0, align 8, !tbaa !16
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = tail call ptr @realloc(ptr noundef %6, i64 noundef %10) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr @stderr, align 8, !tbaa !5
  %18 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %17) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

19:                                               ; preds = %13
  store ptr %14, ptr %5, align 8, !tbaa !13
  store i64 %10, ptr %0, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %19, %4
  %21 = phi ptr [ %14, %19 ], [ %6, %4 ]
  %22 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull %1) #19
  br label %23

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  ret ptr %3

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %7) #21
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @str_printf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %4) #19
  call void @llvm.va_start(ptr nonnull %3)
  %5 = call i32 @vsnprintf(ptr noundef nonnull %4, i64 noundef 10000, ptr noundef %1, ptr noundef nonnull %3) #19
  call void @str_append(ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @str_get(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gstr, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  ret ptr %3

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %7) #21
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xstrndup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias ptr @strndup(ptr noundef %0, i64 noundef %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  ret ptr %3

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %7) #21
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strndup(ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { nounwind allocsize(0,1) }

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
!10 = !{!"file", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !6, i64 0}
!13 = !{!14, !6, i64 8}
!14 = !{!"gstr", !15, i64 0, !6, i64 8, !11, i64 16}
!15 = !{!"long", !7, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{!14, !11, i64 16}
