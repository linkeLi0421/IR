; ModuleID = '/llk/IR/certs/extract-cert.c_pt.bc'
source_filename = "../certs/extract-cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"KBUILD_VERBOSE\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@kbuild_verbose = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"KBUILD_SIGN_PIN\00", align 1
@key_pass = internal unnamed_addr global ptr null, align 8
@cert_dst = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pkcs11:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"pkcs11\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Load PKCS#11 ENGINE\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ENGINE_init\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"PIN\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Set PKCS#11 PIN\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"LOAD_CERT_CTRL\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Get X.509 from PKCS#11\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@wb = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [37 x i8] c"Usage: extract-cert <source> <dest>\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"At main.c:%d:\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"- SSL %s: %s:%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Extracted cert: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.anon, align 8
  %8 = tail call i32 @OPENSSL_init_crypto(i64 noundef 12, ptr noundef null) #11
  %9 = tail call i32 @OPENSSL_init_crypto(i64 noundef 2, ptr noundef null) #11
  tail call void @ERR_clear_error() #11
  %10 = tail call ptr @getenv(ptr noundef nonnull @.str) #11
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @.str.1, ptr %10
  %13 = tail call i64 @strtol(ptr nocapture noundef nonnull %12, ptr noundef null, i32 noundef 10) #11
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr @kbuild_verbose, align 4, !tbaa !5
  %15 = tail call ptr @getenv(ptr noundef nonnull @.str.2) #11
  store ptr %15, ptr @key_pass, align 8, !tbaa !9
  %16 = icmp eq i32 %0, 3
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  tail call fastcc void @format() #12
  unreachable

18:                                               ; preds = %2
  %19 = getelementptr inbounds ptr, ptr %1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds ptr, ptr %1, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  store ptr %22, ptr @cert_dst, align 8, !tbaa !9
  %23 = load i8, ptr %20, align 1, !tbaa !11
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = tail call ptr @fopen(ptr noundef %22, ptr noundef nonnull @.str.3)
  %27 = icmp eq ptr %26, null
  tail call fastcc void @display_openssl_errors(i32 noundef 111)
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load ptr, ptr @cert_dst, align 8, !tbaa !9
  tail call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %29) #13
  unreachable

30:                                               ; preds = %25
  %31 = tail call i32 @fclose(ptr noundef nonnull %26)
  tail call void @exit(i32 noundef 0) #13
  unreachable

32:                                               ; preds = %18
  %33 = tail call i32 @strncmp(ptr noundef nonnull %20, ptr noundef nonnull dereferenceable(8) @.str.5, i64 noundef 7) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  store ptr %20, ptr %7, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  store ptr null, ptr %36, align 8, !tbaa !14
  tail call void @ENGINE_load_builtin_engines() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %37 = tail call i64 @ERR_peek_error() #11
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %39, %35
  %40 = call i64 @ERR_get_error_line(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %39

42:                                               ; preds = %39, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %43 = call ptr @ENGINE_by_id(ptr noundef nonnull @.str.6) #11
  %44 = icmp eq ptr %43, null
  call fastcc void @display_openssl_errors(i32 noundef 127)
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.7) #13
  unreachable

46:                                               ; preds = %42
  %47 = call i32 @ENGINE_init(ptr noundef nonnull %43) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %50 = call i64 @ERR_peek_error() #11
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %52, %49
  %53 = call i64 @ERR_get_error_line(ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %52

55:                                               ; preds = %52, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %56 = load ptr, ptr @key_pass, align 8, !tbaa !9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %59

58:                                               ; preds = %46
  call fastcc void @display_openssl_errors(i32 noundef 131)
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.8) #13
  unreachable

59:                                               ; preds = %55
  %60 = call i32 @ENGINE_ctrl_cmd_string(ptr noundef nonnull %43, ptr noundef nonnull @.str.9, ptr noundef nonnull %56, i32 noundef 0) #11
  %61 = icmp eq i32 %60, 0
  call fastcc void @display_openssl_errors(i32 noundef 133)
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.10) #13
  unreachable

63:                                               ; preds = %59, %55
  %64 = call i32 @ENGINE_ctrl_cmd(ptr noundef nonnull %43, ptr noundef nonnull @.str.11, i64 noundef 0, ptr noundef nonnull %7, ptr noundef null, i32 noundef 1) #11
  %65 = load ptr, ptr %36, align 8, !tbaa !14
  %66 = icmp eq ptr %65, null
  call fastcc void @display_openssl_errors(i32 noundef 135)
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.12) #13
  unreachable

68:                                               ; preds = %63
  %69 = load ptr, ptr %36, align 8, !tbaa !14
  call fastcc void @write_cert(ptr noundef %69)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %88

70:                                               ; preds = %32
  %71 = tail call ptr @BIO_new_file(ptr noundef nonnull %20, ptr noundef nonnull @.str.13) #11
  %72 = icmp eq ptr %71, null
  tail call fastcc void @display_openssl_errors(i32 noundef 142)
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  tail call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #13
  unreachable

74:                                               ; preds = %87, %70
  %75 = tail call ptr @PEM_read_bio_X509(ptr noundef nonnull %71, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %76 = load ptr, ptr @wb, align 8, !tbaa !9
  %77 = icmp eq ptr %76, null
  %78 = icmp ne ptr %75, null
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = tail call i64 @ERR_peek_last_error() #11
  %82 = and i64 %81, 4278194175
  %83 = icmp eq i64 %82, 150995052
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  tail call void @ERR_clear_error() #11
  br label %88

85:                                               ; preds = %80, %74
  tail call fastcc void @display_openssl_errors(i32 noundef 154)
  br i1 %78, label %87, label %86

86:                                               ; preds = %85
  tail call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #13
  unreachable

87:                                               ; preds = %85
  tail call fastcc void @write_cert(ptr noundef nonnull %75)
  br label %74

88:                                               ; preds = %84, %68
  %89 = load ptr, ptr @wb, align 8, !tbaa !9
  %90 = call i32 @BIO_free(ptr noundef %89) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @OPENSSL_init_crypto(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @format() unnamed_addr #4 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !9
  %2 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 36, i64 1, ptr %1) #15
  tail call void @exit(i32 noundef 2) #13
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @display_openssl_errors(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [120 x i8], align 16
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = tail call i64 @ERR_peek_error() #11
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !9
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %0) #15
  %10 = call i64 @ERR_get_error_line(ptr noundef nonnull %2, ptr noundef nonnull %4) #11
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ %22, %13 ], [ %10, %7 ]
  %15 = shl i64 %14, 32
  %16 = ashr exact i64 %15, 32
  %17 = call ptr @ERR_error_string(i64 noundef %16, ptr noundef nonnull %3) #11
  %18 = load ptr, ptr @stderr, align 8, !tbaa !9
  %19 = load ptr, ptr %2, align 8, !tbaa !9
  %20 = load i32, ptr %4, align 4, !tbaa !5
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.16, ptr noundef nonnull %3, ptr noundef %19, i32 noundef %20) #15
  %22 = call i64 @ERR_get_error_line(ptr noundef nonnull %2, ptr noundef nonnull %4) #11
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %13

25:                                               ; preds = %13, %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: noreturn
declare void @err(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

declare void @ENGINE_load_builtin_engines() local_unnamed_addr #2

declare ptr @ENGINE_by_id(ptr noundef) local_unnamed_addr #2

declare i32 @ENGINE_init(ptr noundef) local_unnamed_addr #2

declare i32 @ENGINE_ctrl_cmd_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ENGINE_ctrl_cmd(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_cert(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #11
  %3 = load ptr, ptr @wb, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load ptr, ptr @cert_dst, align 8, !tbaa !9
  %7 = tail call ptr @BIO_new_file(ptr noundef %6, ptr noundef nonnull @.str.3) #11
  store ptr %7, ptr @wb, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  tail call fastcc void @display_openssl_errors(i32 noundef 82)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load ptr, ptr @cert_dst, align 8, !tbaa !9
  tail call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %10) #13
  unreachable

11:                                               ; preds = %5, %1
  %12 = tail call ptr @X509_get_subject_name(ptr noundef %0) #11
  %13 = call ptr @X509_NAME_oneline(ptr noundef %12, ptr noundef nonnull %2, i32 noundef 200) #11
  %14 = load ptr, ptr @wb, align 8, !tbaa !9
  %15 = call i32 @i2d_X509_bio(ptr noundef %14, ptr noundef %0) #11
  %16 = icmp eq i32 %15, 0
  call fastcc void @display_openssl_errors(i32 noundef 85)
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load ptr, ptr @cert_dst, align 8, !tbaa !9
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %18) #13
  unreachable

19:                                               ; preds = %11
  %20 = load i32, ptr @kbuild_verbose, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !9
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.17, ptr noundef nonnull %2) #15
  br label %25

25:                                               ; preds = %22, %19
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #11
  ret void
}

declare ptr @BIO_new_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PEM_read_bio_X509(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare i64 @ERR_peek_error() local_unnamed_addr #2

declare i64 @ERR_get_error_line(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ERR_error_string(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_NAME_oneline(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #2

declare i32 @i2d_X509_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { cold }

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
!11 = !{!7, !7, i64 0}
!12 = !{!13, !10, i64 0}
!13 = !{!"", !10, i64 0, !10, i64 8}
!14 = !{!13, !10, i64 8}
