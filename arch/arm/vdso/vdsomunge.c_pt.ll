; ModuleID = '/llk/IR/arch/arm/vdso/vdsomunge.c_pt.bc'
source_filename = "../arch/arm/vdso/vdsomunge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Elf32_Ehdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@argv0 = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [infile] [outfile]\0A\00", align 1
@outfile = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed stat for %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to map %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Not an ELF file\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unsupported ELF class\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Not a shared object\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unsupported architecture %#x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Unsupported EABI version %#x\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Unexpected hard-float flag set in e_flags\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Cannot truncate %s: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Failed to sync %s: %s\0A\00", align 1
@failed = internal unnamed_addr global i1 false, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #14
  %4 = tail call i32 @atexit(ptr noundef nonnull @cleanup) #14
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  store ptr %5, ptr @argv0, align 8, !tbaa !5
  %6 = icmp eq i32 %0, 3
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void (ptr, ...) @fail(ptr noundef nonnull @.str, ptr noundef %5)
  unreachable

8:                                                ; preds = %2
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds ptr, ptr %1, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  store ptr %12, ptr @outfile, align 8, !tbaa !5
  %13 = tail call i32 (ptr, i32, ...) @open(ptr noundef %10, i32 noundef 0) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = tail call ptr @__errno_location() #15
  %17 = load i32, ptr %16, align 4, !tbaa !9
  %18 = tail call ptr @strerror(i32 noundef %17) #14
  tail call void (ptr, ...) @fail(ptr noundef nonnull @.str.1, ptr noundef %10, ptr noundef %18)
  unreachable

19:                                               ; preds = %8
  %20 = call i32 @__fxstat(i32 noundef 1, i32 noundef %13, ptr noundef nonnull %3) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @__errno_location() #15
  %24 = load i32, ptr %23, align 4, !tbaa !9
  %25 = call ptr @strerror(i32 noundef %24) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.2, ptr noundef %10, ptr noundef %25)
  unreachable

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !11
  %29 = call ptr @mmap(ptr noundef null, i64 noundef %28, i32 noundef 1, i32 noundef 2, i32 noundef %13, i64 noundef 0) #14
  %30 = icmp eq ptr %29, inttoptr (i64 -1 to ptr)
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = tail call ptr @__errno_location() #15
  %33 = load i32, ptr %32, align 4, !tbaa !9
  %34 = call ptr @strerror(i32 noundef %33) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.3, ptr noundef %10, ptr noundef %34)
  unreachable

35:                                               ; preds = %26
  %36 = call i32 @close(i32 noundef %13) #14
  %37 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %29, ptr noundef nonnull dereferenceable(4) @.str.4, i64 4)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.5)
  unreachable

40:                                               ; preds = %35
  %41 = getelementptr inbounds [16 x i8], ptr %29, i64 0, i64 4
  %42 = load i8, ptr %41, align 4, !tbaa !15
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.6)
  unreachable

45:                                               ; preds = %40
  %46 = getelementptr inbounds [16 x i8], ptr %29, i64 0, i64 5
  %47 = load i8, ptr %46, align 1, !tbaa !15
  %48 = icmp eq i8 %47, 1
  %49 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %29, i64 0, i32 1
  %50 = load i16, ptr %49, align 4, !tbaa !16
  %51 = call i16 @llvm.bswap.i16(i16 %50) #14
  %52 = select i1 %48, i16 %50, i16 %51
  %53 = icmp eq i16 %52, 3
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.7)
  unreachable

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %29, i64 0, i32 2
  %57 = load i16, ptr %56, align 2, !tbaa !19
  %58 = call i16 @llvm.bswap.i16(i16 %57) #14
  %59 = select i1 %48, i16 %57, i16 %58
  %60 = icmp eq i16 %59, 40
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = zext i16 %57 to i32
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.8, i32 noundef %62)
  unreachable

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %29, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !20
  %66 = call i32 @llvm.bswap.i32(i32 %65) #14
  %67 = select i1 %48, i32 %65, i32 %66
  %68 = and i32 %67, -16777216
  %69 = icmp eq i32 %68, 83886080
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.9, i32 noundef %68)
  unreachable

71:                                               ; preds = %63
  %72 = and i32 %67, 1024
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.10)
  unreachable

75:                                               ; preds = %71
  %76 = and i32 %67, 512
  %77 = icmp eq i32 %76, 0
  %78 = load ptr, ptr @outfile, align 8, !tbaa !5
  %79 = call i32 (ptr, i32, ...) @open(ptr noundef %78, i32 noundef 578, i32 noundef 384) #14
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load ptr, ptr @outfile, align 8, !tbaa !5
  %83 = tail call ptr @__errno_location() #15
  %84 = load i32, ptr %83, align 4, !tbaa !9
  %85 = call ptr @strerror(i32 noundef %84) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.1, ptr noundef %82, ptr noundef %85)
  unreachable

86:                                               ; preds = %75
  %87 = load i64, ptr %27, align 8, !tbaa !11
  %88 = call i32 @ftruncate(i32 noundef %79, i64 noundef %87) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr @outfile, align 8, !tbaa !5
  %92 = tail call ptr @__errno_location() #15
  %93 = load i32, ptr %92, align 4, !tbaa !9
  %94 = call ptr @strerror(i32 noundef %93) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.11, ptr noundef %91, ptr noundef %94)
  unreachable

95:                                               ; preds = %86
  %96 = load i64, ptr %27, align 8, !tbaa !11
  %97 = call ptr @mmap(ptr noundef null, i64 noundef %96, i32 noundef 3, i32 noundef 1, i32 noundef %79, i64 noundef 0) #14
  %98 = icmp eq ptr %97, inttoptr (i64 -1 to ptr)
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load ptr, ptr @outfile, align 8, !tbaa !5
  %101 = tail call ptr @__errno_location() #15
  %102 = load i32, ptr %101, align 4, !tbaa !9
  %103 = call ptr @strerror(i32 noundef %102) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.3, ptr noundef %100, ptr noundef %103)
  unreachable

104:                                              ; preds = %95
  %105 = call i32 @close(i32 noundef %79) #14
  %106 = load i64, ptr %27, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %97, ptr nonnull align 1 %29, i64 %106, i1 false)
  br i1 %77, label %112, label %107

107:                                              ; preds = %104
  %108 = and i32 %67, -513
  %109 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %97, i64 0, i32 7
  %110 = call i32 @llvm.bswap.i32(i32 %108) #14
  %111 = select i1 %48, i32 %108, i32 %110
  store i32 %111, ptr %109, align 4, !tbaa !9
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i64, ptr %27, align 8, !tbaa !11
  %114 = call i32 @msync(ptr noundef %97, i64 noundef %113, i32 noundef 4) #14
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr @outfile, align 8, !tbaa !5
  %118 = tail call ptr @__errno_location() #15
  %119 = load i32, ptr %118, align 4, !tbaa !9
  %120 = call ptr @strerror(i32 noundef %119) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.12, ptr noundef %117, ptr noundef %120)
  unreachable

121:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal void @cleanup() #3 {
  %1 = load i1, ptr @failed, align 4
  %2 = load ptr, ptr @outfile, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %1, i1 %3, i1 false
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = tail call i32 @unlink(ptr noundef nonnull %2) #14
  br label %7

7:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @fail(ptr nocapture noundef readonly %0, ...) unnamed_addr #4 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  store i1 true, ptr @failed, align 4
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = load ptr, ptr @argv0, align 8, !tbaa !5
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef %4) #16
  call void @llvm.va_start(ptr nonnull %2)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = call i32 @vfprintf(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %2) #16
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @msync(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone willreturn }
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !13, i64 48}
!12 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !14, i64 88, !14, i64 104, !7, i64 120}
!13 = !{!"long", !7, i64 0}
!14 = !{!"timespec", !13, i64 0, !13, i64 8}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !18, i64 16}
!17 = !{!"", !7, i64 0, !18, i64 16, !18, i64 18, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !18, i64 40, !18, i64 42, !18, i64 44, !18, i64 46, !18, i64 48, !18, i64 50}
!18 = !{!"short", !7, i64 0}
!19 = !{!17, !18, i64 18}
!20 = !{!17, !10, i64 36}
