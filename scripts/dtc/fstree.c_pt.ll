; ModuleID = '/llk/IR/scripts/dtc/fstree.c_pt.bc'
source_filename = "../scripts/dtc/fstree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.data = type { i32, ptr, ptr }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't opendir() \22%s\22: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"stat(%s): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"WARNING: Cannot open %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @dt_from_fs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @read_fstree(ptr noundef %0)
  %3 = tail call ptr @name_node(ptr noundef %2, ptr noundef nonnull @.str) #12
  %4 = tail call i32 @guess_boot_cpuid(ptr noundef %3) #12
  %5 = tail call ptr @build_dt_info(i32 noundef 1, ptr noundef null, ptr noundef %3, i32 noundef %4) #12
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @read_fstree(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.data, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #12
  %4 = tail call ptr @opendir(ptr noundef %0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call ptr @__errno_location() #13
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = tail call ptr @strerror(i32 noundef %8) #12
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %9) #14
  unreachable

10:                                               ; preds = %1
  %11 = tail call ptr @build_node(ptr noundef null, ptr noundef null, ptr noundef null) #12
  %12 = call ptr @readdir(ptr noundef nonnull %4) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %16 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  br label %17

17:                                               ; preds = %56, %14
  %18 = phi ptr [ %12, %14 ], [ %57, %56 ]
  %19 = getelementptr inbounds %struct.dirent, ptr %18, i64 0, i32 4
  %20 = call i32 @strcmp(ptr noundef nonnull %19, ptr noundef nonnull dereferenceable(2) @.str.2) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %17
  %23 = call i32 @strcmp(ptr noundef nonnull %19, ptr noundef nonnull dereferenceable(3) @.str.3) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  %26 = call ptr @join_path(ptr noundef %0, ptr noundef nonnull %19) #12
  %27 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %26, ptr noundef nonnull %2) #12
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = tail call ptr @__errno_location() #13
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %32 = call ptr @strerror(i32 noundef %31) #12
  call void (ptr, ...) @die(ptr noundef nonnull @.str.4, ptr noundef nonnull %26, ptr noundef %32) #14
  unreachable

33:                                               ; preds = %25
  %34 = load i32, ptr %15, align 8, !tbaa !9
  %35 = trunc i32 %34 to i16
  %36 = and i16 %35, -4096
  switch i16 %36, label %55 [
    i16 -32768, label %37
    i16 16384, label %51
  ]

37:                                               ; preds = %33
  %38 = call ptr @fopen(ptr noundef nonnull %26, ptr noundef nonnull @.str.5)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !tbaa !13
  %42 = tail call ptr @__errno_location() #13
  %43 = load i32, ptr %42, align 4, !tbaa !5
  %44 = call ptr @strerror(i32 noundef %43) #12
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.6, ptr noundef nonnull %26, ptr noundef %44) #16
  br label %55

46:                                               ; preds = %37
  %47 = call ptr @xstrdup(ptr noundef nonnull %19) #12
  %48 = load i64, ptr %16, align 8, !tbaa !15
  call void @data_copy_file(ptr nonnull sret(%struct.data) align 8 %3, ptr noundef nonnull %38, i64 noundef %48) #12
  %49 = call ptr @build_property(ptr noundef %47, ptr noundef nonnull byval(%struct.data) align 8 %3, ptr noundef null) #12
  call void @add_property(ptr noundef %11, ptr noundef %49) #12
  %50 = call i32 @fclose(ptr noundef nonnull %38)
  br label %55

51:                                               ; preds = %33
  %52 = call fastcc ptr @read_fstree(ptr noundef nonnull %26)
  %53 = call ptr @xstrdup(ptr noundef nonnull %19) #12
  %54 = call ptr @name_node(ptr noundef %52, ptr noundef %53) #12
  call void @add_child(ptr noundef %11, ptr noundef %54) #12
  br label %55

55:                                               ; preds = %51, %46, %40, %33
  call void @free(ptr noundef %26) #12
  br label %56

56:                                               ; preds = %55, %22, %17
  %57 = call ptr @readdir(ptr noundef nonnull %4) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %17

59:                                               ; preds = %56, %10
  %60 = call i32 @closedir(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #12
  ret ptr %11
}

declare ptr @name_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @build_dt_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @guess_boot_cpuid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %0, ...) unnamed_addr #4 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !13
  %4 = call i64 @fwrite(ptr nonnull @.str.7, i64 13, i64 1, ptr %3) #16
  %5 = load ptr, ptr @stderr, align 8, !tbaa !13
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %2) #16
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

declare ptr @build_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare ptr @join_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @build_property(ptr noundef, ptr noundef byval(%struct.data) align 8, ptr noundef) local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

declare void @data_copy_file(ptr sret(%struct.data) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @add_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

declare void @add_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__xstat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { noreturn }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }

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
!9 = !{!10, !6, i64 24}
!10 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !12, i64 88, !12, i64 104, !7, i64 120}
!11 = !{!"long", !7, i64 0}
!12 = !{!"timespec", !11, i64 0, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!10, !11, i64 48}
