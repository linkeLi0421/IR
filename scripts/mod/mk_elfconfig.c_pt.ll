; ModuleID = '/llk/IR/scripts/mod/mk_elfconfig.c_pt.bc'
source_filename = "../scripts/mod/mk_elfconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"Error: input truncated\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Error: not ELF\0A\00", align 1
@str = private unnamed_addr constant [35 x i8] c"#define KERNEL_ELFCLASS ELFCLASS64\00", align 1
@str.12 = private unnamed_addr constant [35 x i8] c"#define KERNEL_ELFDATA ELFDATA2MSB\00", align 1
@str.13 = private unnamed_addr constant [33 x i8] c"#define HOST_ELFCLASS ELFCLASS64\00", align 1
@str.14 = private unnamed_addr constant [33 x i8] c"#define HOST_ELFDATA ELFDATA2LSB\00", align 1
@str.16 = private unnamed_addr constant [35 x i8] c"#define KERNEL_ELFDATA ELFDATA2LSB\00", align 1
@str.17 = private unnamed_addr constant [35 x i8] c"#define KERNEL_ELFCLASS ELFCLASS32\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %4 = load ptr, ptr @stdin, align 8, !tbaa !5
  %5 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 16, ptr noundef %4)
  %6 = icmp eq i64 %5, 16
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str, i64 23, i64 1, ptr %8) #6
  br label %33

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 16
  %12 = icmp eq i32 %11, 1179403647
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %14) #6
  br label %33

16:                                               ; preds = %10
  %17 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 4
  %18 = load i8, ptr %17, align 4, !tbaa !9
  switch i8 %18, label %20 [
    i8 1, label %21
    i8 2, label %19
  ]

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  tail call void @exit(i32 noundef 1) #7
  unreachable

21:                                               ; preds = %19, %16
  %22 = phi ptr [ @str, %19 ], [ @str.17, %16 ]
  %23 = tail call i32 @puts(ptr nonnull %22)
  %24 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 5
  %25 = load i8, ptr %24, align 1, !tbaa !9
  switch i8 %25, label %27 [
    i8 1, label %28
    i8 2, label %26
  ]

26:                                               ; preds = %21
  br label %28

27:                                               ; preds = %21
  tail call void @exit(i32 noundef 1) #7
  unreachable

28:                                               ; preds = %26, %21
  %29 = phi ptr [ @str.12, %26 ], [ @str.16, %21 ]
  %30 = tail call i32 @puts(ptr nonnull %29)
  %31 = tail call i32 @puts(ptr nonnull @str.13)
  %32 = tail call i32 @puts(ptr nonnull @str.14)
  br label %33

33:                                               ; preds = %28, %13, %7
  %34 = phi i32 [ 1, %7 ], [ 1, %13 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }

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
