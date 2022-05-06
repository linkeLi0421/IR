; ModuleID = '/llk/IR/usr/gen_init_cpio.c_pt.bc'
source_filename = "../usr/gen_init_cpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_handler = type { ptr, ptr }
%struct.generic_type = type { ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@default_mtime = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"t:h\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid timestamp: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ERROR: Timestamp too large for cpio format\0A\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"ERROR: unable to open '%s': %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"ERROR: incorrect format, could not locate file type line %d: '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"ERROR: incorrect format, newline required line %d: '%s'\0A\00", align 1
@file_handler_table = internal unnamed_addr constant [7 x %struct.file_handler] [%struct.file_handler { ptr @.str.13, ptr @cpio_mkfile_line }, %struct.file_handler { ptr @.str.14, ptr @cpio_mknod_line }, %struct.file_handler { ptr @.str.15, ptr @cpio_mkdir_line }, %struct.file_handler { ptr @.str.16, ptr @cpio_mkslink_line }, %struct.file_handler { ptr @.str.17, ptr @cpio_mkpipe_line }, %struct.file_handler { ptr @.str.18, ptr @cpio_mksock_line }, %struct.file_handler zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [10 x i8] c" line %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unknown file type line %d: '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [1238 x i8] c"Usage:\0A\09%s [-t <timestamp>] <cpio_list>\0A\0A<cpio_list> is a file containing newline separated entries that\0Adescribe the files to be included in the initramfs archive:\0A\0A# a comment\0Afile <name> <location> <mode> <uid> <gid> [<hard links>]\0Adir <name> <mode> <uid> <gid>\0Anod <name> <mode> <uid> <gid> <dev_type> <maj> <min>\0Aslink <name> <target> <mode> <uid> <gid>\0Apipe <name> <mode> <uid> <gid>\0Asock <name> <mode> <uid> <gid>\0A\0A<name>       name of the file/dir/nod/etc in the archive\0A<location>   location of the file in the current filesystem\0A             expands shell variables quoted with ${}\0A<target>     link target\0A<mode>       mode/permissions of the file\0A<uid>        user id (0=root)\0A<gid>        group id (0=root)\0A<dev_type>   device type (b=block, c=character)\0A<maj>        major number of nod\0A<min>        minor number of nod\0A<hard links> space separated list of other links to file\0A\0Aexample:\0A# A simple initramfs\0Adir /dev 0755 0 0\0Anod /dev/console 0600 0 0 c 5 1\0Adir /root 0700 0 0\0Adir /sbin 0755 0 0\0Afile /sbin/kinit /usr/src/klibc/kinit/kinit 0755 0 0\0A\0A<timestamp> is time in seconds since Epoch that will be used\0Aas mtime for symlinks, special files and directories. The default\0Ais to use the current time for these entries.\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"nod\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"slink\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"%4096s %4096s %o %d %d %n\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Unrecognized file format '%s'\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"out of memory (%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"%4096s %n\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"File %s could not be opened for reading\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"File %s could not be stat()'ed\0A\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"%s: Timestamp exceeds maximum cpio timestamp, clipping.\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Can not read %s file\0A\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"%s%08X%08X%08lX%08lX%08X%08lX%08lX%08X%08X%08X%08X%08X%08X\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"070701\00", align 1
@ino = internal unnamed_addr global i32 721, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [24 x i8] c"writing filebuf failed\0A\00", align 1
@offset = internal unnamed_addr global i32 0, align 4
@.str.31 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"%4096s %o %d %d %c %u %u\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Unrecognized nod format '%s'\00", align 1
@.str.36 = private unnamed_addr constant [58 x i8] c"%s%08X%08X%08lX%08lX%08X%08lX%08X%08X%08X%08X%08X%08X%08X\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"%4096s %o %d %d\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Unrecognized %s format '%s'\00", align 1
@generic_type_table = internal unnamed_addr constant [3 x %struct.generic_type] [%struct.generic_type { ptr @.str.15, i32 16384 }, %struct.generic_type { ptr @.str.17, i32 4096 }, %struct.generic_type { ptr @.str.18, i32 49152 }], align 16
@.str.39 = private unnamed_addr constant [23 x i8] c"%4096s %4096s %o %d %d\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Unrecognized dir format '%s'\00", align 1
@__const.cpio_trailer.name = private unnamed_addr constant [11 x i8] c"TRAILER!!!\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [11 x i8], align 1
  %5 = alloca [8242 x i8], align 16
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8242, ptr nonnull %5) #18
  %7 = tail call i64 @time(ptr noundef null) #18
  store i64 %7, ptr @default_mtime, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %28, %2
  %9 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  switch i32 %9, label %28 [
    i32 -1, label %29
    i32 116, label %10
    i32 104, label %24
    i32 63, label %24
  ]

10:                                               ; preds = %8
  %11 = load ptr, ptr @optarg, align 8, !tbaa !9
  %12 = call i64 @strtol(ptr noundef %11, ptr noundef nonnull %6, i32 noundef 10) #18
  store i64 %12, ptr @default_mtime, align 8, !tbaa !5
  %13 = load ptr, ptr @optarg, align 8, !tbaa !9
  %14 = load i8, ptr %13, align 1, !tbaa !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %6, align 8, !tbaa !9
  %18 = load i8, ptr %17, align 1, !tbaa !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16, %10
  %21 = load ptr, ptr @stderr, align 8, !tbaa !9
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.1, ptr noundef nonnull %13) #19
  %23 = load ptr, ptr %1, align 8, !tbaa !9
  tail call fastcc void @usage(ptr noundef %23)
  tail call void @exit(i32 noundef 1) #20
  unreachable

24:                                               ; preds = %8, %8
  %25 = load ptr, ptr %1, align 8, !tbaa !9
  tail call fastcc void @usage(ptr noundef %25)
  %26 = icmp ne i32 %9, 104
  %27 = zext i1 %26 to i32
  tail call void @exit(i32 noundef %27) #20
  unreachable

28:                                               ; preds = %16, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %8

29:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %30 = load i64, ptr @default_mtime, align 8, !tbaa !5
  %31 = icmp sgt i64 %30, 4294967295
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load ptr, ptr @stderr, align 8, !tbaa !9
  %34 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 43, i64 1, ptr %33) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

35:                                               ; preds = %29
  %36 = load i32, ptr @optind, align 4, !tbaa !12
  %37 = sub nsw i32 %0, %36
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %1, align 8, !tbaa !9
  tail call fastcc void @usage(ptr noundef %40)
  tail call void @exit(i32 noundef 1) #20
  unreachable

41:                                               ; preds = %35
  %42 = sext i32 %36 to i64
  %43 = getelementptr inbounds ptr, ptr %1, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(2) @.str.3) #21
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load ptr, ptr @stdin, align 8, !tbaa !9
  br label %59

49:                                               ; preds = %41
  %50 = tail call ptr @fopen(ptr noundef %44, ptr noundef nonnull @.str.4)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load ptr, ptr @stderr, align 8, !tbaa !9
  %54 = tail call ptr @__errno_location() #22
  %55 = load i32, ptr %54, align 4, !tbaa !12
  %56 = tail call ptr @strerror(i32 noundef %55) #18
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.5, ptr noundef %44, ptr noundef %56) #19
  %58 = load ptr, ptr %1, align 8, !tbaa !9
  tail call fastcc void @usage(ptr noundef %58)
  tail call void @exit(i32 noundef 1) #20
  unreachable

59:                                               ; preds = %49, %47
  %60 = phi ptr [ %50, %49 ], [ %48, %47 ]
  %61 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 8242, ptr noundef %60)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %125, label %63

63:                                               ; preds = %119, %59
  %64 = phi i32 [ %120, %119 ], [ 0, %59 ]
  %65 = phi i32 [ %67, %119 ], [ 0, %59 ]
  %66 = call i64 @strlen(ptr noundef nonnull %5) #21
  %67 = add nuw nsw i32 %65, 1
  %68 = load i8, ptr %5, align 16, !tbaa !11
  %69 = icmp eq i8 %68, 35
  br i1 %69, label %119, label %70

70:                                               ; preds = %63
  %71 = call ptr @strtok(ptr noundef nonnull %5, ptr noundef nonnull @.str.6) #18
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load ptr, ptr @stderr, align 8, !tbaa !9
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.7, i32 noundef %67, ptr noundef nonnull %5) #19
  br label %167

76:                                               ; preds = %70
  %77 = load i8, ptr %71, align 1, !tbaa !11
  %78 = icmp eq i8 %77, 10
  br i1 %78, label %119, label %79

79:                                               ; preds = %76
  %80 = call i64 @strlen(ptr noundef nonnull %71) #21
  %81 = icmp eq i64 %66, %80
  br i1 %81, label %119, label %82

82:                                               ; preds = %79
  %83 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.8) #18
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load ptr, ptr @stderr, align 8, !tbaa !9
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.9, i32 noundef %67, ptr noundef nonnull %5) #19
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i32 [ %64, %82 ], [ -1, %85 ]
  %90 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %5, ptr noundef nonnull dereferenceable(5) @.str.13, i64 5)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %113, %110, %107, %104, %101, %88
  %93 = phi i64 [ 0, %88 ], [ 1, %101 ], [ 2, %104 ], [ 3, %107 ], [ 4, %110 ], [ 5, %113 ]
  %94 = getelementptr inbounds [7 x %struct.file_handler], ptr @file_handler_table, i64 0, i64 %93, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !14
  %96 = call i32 %95(ptr noundef %83) #18
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %92
  %99 = load ptr, ptr @stderr, align 8, !tbaa !9
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.10, i32 noundef %67) #19
  br label %119

101:                                              ; preds = %88
  %102 = load i32, ptr %5, align 16
  %103 = icmp eq i32 %102, 6582126
  br i1 %103, label %92, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %5, align 16
  %106 = icmp eq i32 %105, 7498084
  br i1 %106, label %92, label %107

107:                                              ; preds = %104
  %108 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @.str.16, i64 6)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %92, label %110

110:                                              ; preds = %107
  %111 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %5, ptr noundef nonnull dereferenceable(5) @.str.17, i64 5)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %92, label %113

113:                                              ; preds = %110
  %114 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %5, ptr noundef nonnull dereferenceable(5) @.str.18, i64 5)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %92, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr @stderr, align 8, !tbaa !9
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.11, i32 noundef %67, ptr noundef nonnull %5) #19
  br label %119

119:                                              ; preds = %116, %98, %92, %79, %76, %63
  %120 = phi i32 [ %64, %63 ], [ %64, %76 ], [ %64, %79 ], [ %89, %116 ], [ %89, %92 ], [ %96, %98 ]
  %121 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 8242, ptr noundef %60)
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %63

123:                                              ; preds = %119
  %124 = icmp eq i32 %120, 0
  br i1 %124, label %125, label %167

125:                                              ; preds = %123, %59
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 1 dereferenceable(11) @__const.cpio_trailer.name, i64 11, i1 false) #18
  %126 = call i64 @strlen(ptr noundef nonnull %4) #21
  %127 = trunc i64 %126 to i32
  %128 = add i32 %127, 1
  %129 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 1, i64 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %128, i32 noundef 0) #18
  %130 = load ptr, ptr @stdout, align 8, !tbaa !9
  %131 = call i32 @fputs(ptr noundef nonnull %3, ptr noundef %130) #18
  %132 = load i32, ptr @offset, align 4, !tbaa !12
  %133 = add i32 %132, 110
  store i32 %133, ptr @offset, align 4, !tbaa !12
  %134 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %135 = trunc i64 %134 to i32
  %136 = add i32 %135, 1
  %137 = load ptr, ptr @stdout, align 8, !tbaa !9
  %138 = call i32 @fputs(ptr noundef nonnull %4, ptr noundef %137) #18
  %139 = load ptr, ptr @stdout, align 8, !tbaa !9
  %140 = call i32 @putc(i32 noundef 0, ptr noundef %139) #18
  %141 = load i32, ptr @offset, align 4, !tbaa !12
  %142 = add i32 %136, %141
  store i32 %142, ptr @offset, align 4, !tbaa !12
  %143 = add i32 %135, 111
  %144 = and i32 %143, 3
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %146, %125
  %147 = phi i32 [ %152, %146 ], [ %143, %125 ]
  %148 = load ptr, ptr @stdout, align 8, !tbaa !9
  %149 = call i32 @putc(i32 noundef 0, ptr noundef %148) #18
  %150 = load i32, ptr @offset, align 4, !tbaa !12
  %151 = add i32 %150, 1
  store i32 %151, ptr @offset, align 4, !tbaa !12
  %152 = add i32 %147, 1
  %153 = and i32 %152, 3
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %146

155:                                              ; preds = %146, %125
  %156 = phi i32 [ %142, %125 ], [ %151, %146 ]
  %157 = and i32 %156, 511
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %159, %155
  %160 = load ptr, ptr @stdout, align 8, !tbaa !9
  %161 = call i32 @putc(i32 noundef 0, ptr noundef %160) #18
  %162 = load i32, ptr @offset, align 4, !tbaa !12
  %163 = add i32 %162, 1
  store i32 %163, ptr @offset, align 4, !tbaa !12
  %164 = and i32 %163, 511
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %159

166:                                              ; preds = %159, %155
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #18
  br label %167

167:                                              ; preds = %166, %123, %73
  %168 = phi i32 [ -1, %73 ], [ 0, %166 ], [ %120, %123 ]
  call void @exit(i32 noundef %168) #20
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @usage(ptr noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef %0) #19
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @cpio_mkfile_line(ptr noundef %0) #9 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct.stat, align 8
  %4 = alloca [4097 x i8], align 16
  %5 = alloca [4097 x i8], align 16
  %6 = alloca [4097 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  store i32 0, ptr %10, align 4, !tbaa !12
  %12 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load ptr, ptr @stderr, align 8, !tbaa !9
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.20, ptr noundef %0) #19
  br label %213

17:                                               ; preds = %1
  %18 = load i32, ptr %10, align 4, !tbaa !12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %73, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @__ctype_b_loc() #22
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = sext i32 %18 to i64
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = sext i8 %25 to i64
  %27 = getelementptr inbounds i16, ptr %22, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !16
  %29 = icmp sgt i16 %28, -1
  br i1 %29, label %73, label %30

30:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %32 = call noalias ptr @malloc(i64 noundef %31) #23
  %33 = icmp eq ptr %32, null
  br i1 %33, label %70, label %34

34:                                               ; preds = %30
  %35 = call i64 @strlen(ptr noundef nonnull %5) #21
  %36 = trunc i64 %35 to i32
  %37 = add i32 %36, 1
  %38 = sext i32 %37 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull align 16 %5, i64 %38, i1 false)
  br label %39

39:                                               ; preds = %47, %34
  %40 = phi i32 [ %18, %34 ], [ %58, %47 ]
  %41 = phi i32 [ 1, %34 ], [ %55, %47 ]
  %42 = phi i32 [ %37, %34 ], [ %54, %47 ]
  store i32 0, ptr %11, align 4, !tbaa !12
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %44, ptr noundef nonnull @.str.22, ptr noundef nonnull %5, ptr noundef nonnull %11) #18
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %67, label %47

47:                                               ; preds = %39
  %48 = call i64 @strlen(ptr noundef nonnull %5) #21
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, 1
  %51 = sext i32 %42 to i64
  %52 = getelementptr inbounds i8, ptr %32, i64 %51
  %53 = sext i32 %50 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %52, ptr nonnull align 16 %5, i64 %53, i1 false)
  %54 = add nsw i32 %50, %42
  %55 = add nuw nsw i32 %41, 1
  %56 = load i32, ptr %11, align 4, !tbaa !12
  %57 = load i32, ptr %10, align 4, !tbaa !12
  %58 = add nsw i32 %57, %56
  store i32 %58, ptr %10, align 4, !tbaa !12
  %59 = load ptr, ptr %21, align 8, !tbaa !9
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !11
  %63 = sext i8 %62 to i64
  %64 = getelementptr inbounds i16, ptr %59, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !16
  %66 = icmp sgt i16 %65, -1
  br i1 %66, label %67, label %39

67:                                               ; preds = %47, %39
  %68 = phi i32 [ %55, %47 ], [ %41, %39 ]
  %69 = phi i32 [ %54, %47 ], [ %42, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  br label %73

70:                                               ; preds = %30
  %71 = load ptr, ptr @stderr, align 8, !tbaa !9
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.21, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  br label %213

73:                                               ; preds = %67, %20, %17
  %74 = phi ptr [ %5, %20 ], [ %5, %17 ], [ %32, %67 ]
  %75 = phi i32 [ 1, %20 ], [ 1, %17 ], [ %68, %67 ]
  %76 = phi i32 [ 0, %20 ], [ 0, %17 ], [ %69, %67 ]
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %4) #18
  %77 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull @.str.31) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %84, %73
  %80 = phi ptr [ %91, %84 ], [ %77, %73 ]
  %81 = getelementptr inbounds i8, ptr %80, i64 2
  %82 = call ptr @strchr(ptr noundef nonnull %81, i32 noundef 125) #21
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %84

84:                                               ; preds = %79
  store i8 0, ptr %82, align 1, !tbaa !11
  store i8 0, ptr %80, align 1, !tbaa !11
  %85 = call ptr @getenv(ptr noundef nonnull %81) #18
  %86 = icmp eq ptr %85, null
  %87 = select i1 %86, ptr @.str.33, ptr %85
  %88 = getelementptr inbounds i8, ptr %82, i64 1
  %89 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %4, i64 noundef 4097, ptr noundef nonnull @.str.32, ptr noundef nonnull %6, ptr noundef %87, ptr noundef nonnull %88) #18
  %90 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull %4) #18
  %91 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull @.str.31) #21
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %79

93:                                               ; preds = %84, %79, %73
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %4) #18
  %94 = load i32, ptr %7, align 4, !tbaa !12
  %95 = load i32, ptr %8, align 4, !tbaa !12
  %96 = load i32, ptr %9, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #18
  %97 = or i32 %94, 32768
  %98 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %6, i32 noundef 0) #18
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load ptr, ptr @stderr, align 8, !tbaa !9
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.23, ptr noundef nonnull %6) #24
  br label %209

103:                                              ; preds = %93
  %104 = call i32 @__fxstat(i32 noundef 1, i32 noundef %98, ptr noundef nonnull %3) #18
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr @stderr, align 8, !tbaa !9
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.24, ptr noundef nonnull %6) #24
  br label %206

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12
  %111 = load i64, ptr %110, align 8, !tbaa !18
  %112 = icmp sgt i64 %111, 4294967295
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load ptr, ptr @stderr, align 8, !tbaa !9
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.25, ptr noundef nonnull %6) #24
  store i64 4294967295, ptr %110, align 8, !tbaa !18
  br label %116

116:                                              ; preds = %113, %109
  %117 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %118 = load i64, ptr %117, align 8, !tbaa !21
  %119 = call noalias ptr @malloc(i64 noundef %118) #23
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load ptr, ptr @stderr, align 8, !tbaa !9
  %123 = call i64 @fwrite(ptr nonnull @.str.26, i64 14, i64 1, ptr %122) #24
  br label %206

124:                                              ; preds = %116
  %125 = call i64 @read(i32 noundef %98, ptr noundef nonnull %119, i64 noundef %118) #18
  %126 = and i64 %125, 2147483648
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = zext i32 %95 to i64
  %130 = zext i32 %96 to i64
  br label %134

131:                                              ; preds = %124
  %132 = load ptr, ptr @stderr, align 8, !tbaa !9
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.27, ptr noundef nonnull %6) #24
  call void @free(ptr noundef nonnull %119) #18
  br label %206

134:                                              ; preds = %195, %128
  %135 = phi i32 [ 1, %128 ], [ %198, %195 ]
  %136 = phi ptr [ %74, %128 ], [ %197, %195 ]
  %137 = phi i64 [ 0, %128 ], [ %140, %195 ]
  %138 = icmp eq i32 %135, %75
  %139 = load i64, ptr %117, align 8
  %140 = select i1 %138, i64 %139, i64 %137
  %141 = load i8, ptr %136, align 1, !tbaa !11
  %142 = icmp eq i8 %141, 47
  %143 = zext i1 %142 to i64
  %144 = getelementptr i8, ptr %136, i64 %143
  %145 = call i64 @strlen(ptr noundef nonnull %144) #21
  %146 = trunc i64 %145 to i32
  %147 = add i32 %146, 1
  %148 = load i32, ptr @ino, align 4, !tbaa !12
  %149 = load i64, ptr %110, align 8, !tbaa !18
  %150 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %148, i32 noundef %97, i64 noundef %129, i64 noundef %130, i32 noundef %75, i64 noundef %149, i64 noundef %140, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %147, i32 noundef 0) #18
  %151 = load ptr, ptr @stdout, align 8, !tbaa !9
  %152 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %151) #18
  %153 = load i32, ptr @offset, align 4, !tbaa !12
  %154 = add i32 %153, 110
  store i32 %154, ptr @offset, align 4, !tbaa !12
  %155 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %144) #21
  %156 = trunc i64 %155 to i32
  %157 = add i32 %156, 1
  %158 = load ptr, ptr @stdout, align 8, !tbaa !9
  %159 = call i32 @fputs(ptr noundef %144, ptr noundef %158) #18
  %160 = load ptr, ptr @stdout, align 8, !tbaa !9
  %161 = call i32 @putc(i32 noundef 0, ptr noundef %160) #18
  %162 = load i32, ptr @offset, align 4, !tbaa !12
  %163 = add i32 %157, %162
  store i32 %163, ptr @offset, align 4, !tbaa !12
  %164 = and i32 %163, 3
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %166, %134
  %167 = load ptr, ptr @stdout, align 8, !tbaa !9
  %168 = call i32 @putc(i32 noundef 0, ptr noundef %167) #18
  %169 = load i32, ptr @offset, align 4, !tbaa !12
  %170 = add i32 %169, 1
  store i32 %170, ptr @offset, align 4, !tbaa !12
  %171 = and i32 %170, 3
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %166

173:                                              ; preds = %166, %134
  %174 = icmp eq i64 %140, 0
  br i1 %174, label %195, label %175

175:                                              ; preds = %173
  %176 = load ptr, ptr @stdout, align 8, !tbaa !9
  %177 = call i64 @fwrite(ptr noundef nonnull %119, i64 noundef %140, i64 noundef 1, ptr noundef %176) #18
  %178 = icmp eq i64 %177, 1
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr @stderr, align 8, !tbaa !9
  %181 = call i64 @fwrite(ptr nonnull @.str.30, i64 23, i64 1, ptr %180) #24
  br label %203

182:                                              ; preds = %175
  %183 = load i32, ptr @offset, align 4, !tbaa !12
  %184 = trunc i64 %140 to i32
  %185 = add i32 %183, %184
  store i32 %185, ptr @offset, align 4, !tbaa !12
  %186 = and i32 %185, 3
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %188, %182
  %189 = load ptr, ptr @stdout, align 8, !tbaa !9
  %190 = call i32 @putc(i32 noundef 0, ptr noundef %189) #18
  %191 = load i32, ptr @offset, align 4, !tbaa !12
  %192 = add i32 %191, 1
  store i32 %192, ptr @offset, align 4, !tbaa !12
  %193 = and i32 %192, 3
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %188

195:                                              ; preds = %188, %182, %173
  %196 = sext i32 %147 to i64
  %197 = getelementptr inbounds i8, ptr %144, i64 %196
  %198 = add i32 %135, 1
  %199 = icmp ugt i32 %198, %75
  br i1 %199, label %200, label %134

200:                                              ; preds = %195
  %201 = load i32, ptr @ino, align 4, !tbaa !12
  %202 = add i32 %201, 1
  store i32 %202, ptr @ino, align 4, !tbaa !12
  br label %203

203:                                              ; preds = %200, %179
  %204 = phi i32 [ -1, %179 ], [ 0, %200 ]
  call void @free(ptr noundef nonnull %119) #18
  %205 = icmp sgt i32 %98, -1
  br i1 %205, label %206, label %209

206:                                              ; preds = %203, %131, %121, %106
  %207 = phi i32 [ %204, %203 ], [ -1, %121 ], [ -1, %106 ], [ -1, %131 ]
  %208 = call i32 @close(i32 noundef %98) #18
  br label %209

209:                                              ; preds = %206, %203, %100
  %210 = phi i32 [ %207, %206 ], [ %204, %203 ], [ -1, %100 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #18
  %211 = icmp eq i32 %76, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  call void @free(ptr noundef %74) #18
  br label %213

213:                                              ; preds = %212, %209, %70, %14
  %214 = phi i32 [ %210, %209 ], [ %210, %212 ], [ -1, %14 ], [ -1, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %5) #18
  ret i32 %214
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @cpio_mknod_line(ptr noundef %0) #5 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [4097 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %10 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @stderr, align 8, !tbaa !9
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.35, ptr noundef %0) #19
  br label %64

15:                                               ; preds = %1
  %16 = load i32, ptr %4, align 4, !tbaa !12
  %17 = load i32, ptr %5, align 4, !tbaa !12
  %18 = load i32, ptr %6, align 4, !tbaa !12
  %19 = load i8, ptr %7, align 1, !tbaa !11
  %20 = load i32, ptr %8, align 4, !tbaa !12
  %21 = load i32, ptr %9, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #18
  %22 = icmp eq i8 %19, 98
  %23 = select i1 %22, i32 24576, i32 8192
  %24 = or i32 %23, %16
  %25 = load i8, ptr %3, align 16, !tbaa !11
  %26 = icmp eq i8 %25, 47
  %27 = zext i1 %26 to i64
  %28 = getelementptr i8, ptr %3, i64 %27
  %29 = load i32, ptr @ino, align 4, !tbaa !12
  %30 = add i32 %29, 1
  store i32 %30, ptr @ino, align 4, !tbaa !12
  %31 = zext i32 %17 to i64
  %32 = zext i32 %18 to i64
  %33 = load i64, ptr @default_mtime, align 8, !tbaa !5
  %34 = call i64 @strlen(ptr noundef nonnull %28) #21
  %35 = trunc i64 %34 to i32
  %36 = add i32 %35, 1
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef %29, i32 noundef %24, i64 noundef %31, i64 noundef %32, i32 noundef 1, i64 noundef %33, i32 noundef 0, i32 noundef 3, i32 noundef 1, i32 noundef %20, i32 noundef %21, i32 noundef %36, i32 noundef 0) #18
  %38 = load ptr, ptr @stdout, align 8, !tbaa !9
  %39 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %38) #18
  %40 = load i32, ptr @offset, align 4, !tbaa !12
  %41 = add i32 %40, 110
  store i32 %41, ptr @offset, align 4, !tbaa !12
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #21
  %43 = trunc i64 %42 to i32
  %44 = add i32 %43, 1
  %45 = load ptr, ptr @stdout, align 8, !tbaa !9
  %46 = call i32 @fputs(ptr noundef %28, ptr noundef %45) #18
  %47 = load ptr, ptr @stdout, align 8, !tbaa !9
  %48 = call i32 @putc(i32 noundef 0, ptr noundef %47) #18
  %49 = load i32, ptr @offset, align 4, !tbaa !12
  %50 = add i32 %44, %49
  store i32 %50, ptr @offset, align 4, !tbaa !12
  %51 = add i32 %43, 111
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %54, %15
  %55 = phi i32 [ %60, %54 ], [ %51, %15 ]
  %56 = load ptr, ptr @stdout, align 8, !tbaa !9
  %57 = call i32 @putc(i32 noundef 0, ptr noundef %56) #18
  %58 = load i32, ptr @offset, align 4, !tbaa !12
  %59 = add i32 %58, 1
  store i32 %59, ptr @offset, align 4, !tbaa !12
  %60 = add i32 %55, 1
  %61 = and i32 %60, 3
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %54

63:                                               ; preds = %54, %15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #18
  br label %64

64:                                               ; preds = %63, %12
  %65 = phi i32 [ -1, %12 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %3) #18
  ret i32 %65
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @cpio_mkdir_line(ptr noundef %0) #5 {
  %2 = tail call fastcc i32 @cpio_mkgeneric_line(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @cpio_mkslink_line(ptr noundef %0) #5 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [4097 x i8], align 16
  %4 = alloca [4097 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %8 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @stderr, align 8, !tbaa !9
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.40, ptr noundef %0) #19
  br label %76

13:                                               ; preds = %1
  %14 = load i32, ptr %5, align 4, !tbaa !12
  %15 = load i32, ptr %6, align 4, !tbaa !12
  %16 = load i32, ptr %7, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #18
  %17 = load i8, ptr %3, align 16, !tbaa !11
  %18 = icmp eq i8 %17, 47
  %19 = zext i1 %18 to i64
  %20 = getelementptr i8, ptr %3, i64 %19
  %21 = load i32, ptr @ino, align 4, !tbaa !12
  %22 = add i32 %21, 1
  store i32 %22, ptr @ino, align 4, !tbaa !12
  %23 = or i32 %14, 40960
  %24 = zext i32 %15 to i64
  %25 = zext i32 %16 to i64
  %26 = load i64, ptr @default_mtime, align 8, !tbaa !5
  %27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %28 = trunc i64 %27 to i32
  %29 = add i32 %28, 1
  %30 = call i64 @strlen(ptr noundef nonnull %20) #21
  %31 = trunc i64 %30 to i32
  %32 = add i32 %31, 1
  %33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef %21, i32 noundef %23, i64 noundef %24, i64 noundef %25, i32 noundef 1, i64 noundef %26, i32 noundef %29, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %32, i32 noundef 0) #18
  %34 = load ptr, ptr @stdout, align 8, !tbaa !9
  %35 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %34) #18
  %36 = load i32, ptr @offset, align 4, !tbaa !12
  %37 = add i32 %36, 110
  store i32 %37, ptr @offset, align 4, !tbaa !12
  %38 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #21
  %39 = trunc i64 %38 to i32
  %40 = add i32 %39, 1
  %41 = load ptr, ptr @stdout, align 8, !tbaa !9
  %42 = call i32 @fputs(ptr noundef %20, ptr noundef %41) #18
  %43 = load ptr, ptr @stdout, align 8, !tbaa !9
  %44 = call i32 @putc(i32 noundef 0, ptr noundef %43) #18
  %45 = load i32, ptr @offset, align 4, !tbaa !12
  %46 = add i32 %40, %45
  store i32 %46, ptr @offset, align 4, !tbaa !12
  %47 = and i32 %46, 3
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %49, %13
  %50 = load ptr, ptr @stdout, align 8, !tbaa !9
  %51 = call i32 @putc(i32 noundef 0, ptr noundef %50) #18
  %52 = load i32, ptr @offset, align 4, !tbaa !12
  %53 = add i32 %52, 1
  store i32 %53, ptr @offset, align 4, !tbaa !12
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %49

56:                                               ; preds = %49, %13
  %57 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %58 = trunc i64 %57 to i32
  %59 = add i32 %58, 1
  %60 = load ptr, ptr @stdout, align 8, !tbaa !9
  %61 = call i32 @fputs(ptr noundef nonnull %4, ptr noundef %60) #18
  %62 = load ptr, ptr @stdout, align 8, !tbaa !9
  %63 = call i32 @putc(i32 noundef 0, ptr noundef %62) #18
  %64 = load i32, ptr @offset, align 4, !tbaa !12
  %65 = add i32 %59, %64
  store i32 %65, ptr @offset, align 4, !tbaa !12
  %66 = and i32 %65, 3
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %68, %56
  %69 = load ptr, ptr @stdout, align 8, !tbaa !9
  %70 = call i32 @putc(i32 noundef 0, ptr noundef %69) #18
  %71 = load i32, ptr @offset, align 4, !tbaa !12
  %72 = add i32 %71, 1
  store i32 %72, ptr @offset, align 4, !tbaa !12
  %73 = and i32 %72, 3
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %68

75:                                               ; preds = %68, %56
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #18
  br label %76

76:                                               ; preds = %75, %10
  %77 = phi i32 [ -1, %10 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %3) #18
  ret i32 %77
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @cpio_mkpipe_line(ptr noundef %0) #5 {
  %2 = tail call fastcc i32 @cpio_mkgeneric_line(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @cpio_mksock_line(ptr noundef %0) #5 {
  %2 = tail call fastcc i32 @cpio_mkgeneric_line(ptr noundef %0, i32 noundef 2)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @cpio_mkgeneric_line(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [4097 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %8 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @stderr, align 8, !tbaa !9
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds [3 x %struct.generic_type], ptr @generic_type_table, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 16, !tbaa !22
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.38, ptr noundef %0, ptr noundef %14) #19
  br label %63

16:                                               ; preds = %2
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds [3 x %struct.generic_type], ptr @generic_type_table, i64 0, i64 %17, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !24
  %20 = load i32, ptr %5, align 4, !tbaa !12
  %21 = or i32 %20, %19
  store i32 %21, ptr %5, align 4, !tbaa !12
  %22 = load i32, ptr %6, align 4, !tbaa !12
  %23 = load i32, ptr %7, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #18
  %24 = load i8, ptr %4, align 16, !tbaa !11
  %25 = icmp eq i8 %24, 47
  %26 = zext i1 %25 to i64
  %27 = getelementptr i8, ptr %4, i64 %26
  %28 = load i32, ptr @ino, align 4, !tbaa !12
  %29 = add i32 %28, 1
  store i32 %29, ptr @ino, align 4, !tbaa !12
  %30 = zext i32 %22 to i64
  %31 = zext i32 %23 to i64
  %32 = load i64, ptr @default_mtime, align 8, !tbaa !5
  %33 = call i64 @strlen(ptr noundef nonnull %27) #21
  %34 = trunc i64 %33 to i32
  %35 = add i32 %34, 1
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef %28, i32 noundef %21, i64 noundef %30, i64 noundef %31, i32 noundef 2, i64 noundef %32, i32 noundef 0, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %35, i32 noundef 0) #18
  %37 = load ptr, ptr @stdout, align 8, !tbaa !9
  %38 = call i32 @fputs(ptr noundef nonnull %3, ptr noundef %37) #18
  %39 = load i32, ptr @offset, align 4, !tbaa !12
  %40 = add i32 %39, 110
  store i32 %40, ptr @offset, align 4, !tbaa !12
  %41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #21
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, 1
  %44 = load ptr, ptr @stdout, align 8, !tbaa !9
  %45 = call i32 @fputs(ptr noundef %27, ptr noundef %44) #18
  %46 = load ptr, ptr @stdout, align 8, !tbaa !9
  %47 = call i32 @putc(i32 noundef 0, ptr noundef %46) #18
  %48 = load i32, ptr @offset, align 4, !tbaa !12
  %49 = add i32 %43, %48
  store i32 %49, ptr @offset, align 4, !tbaa !12
  %50 = add i32 %42, 111
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %53, %16
  %54 = phi i32 [ %59, %53 ], [ %50, %16 ]
  %55 = load ptr, ptr @stdout, align 8, !tbaa !9
  %56 = call i32 @putc(i32 noundef 0, ptr noundef %55) #18
  %57 = load i32, ptr @offset, align 4, !tbaa !12
  %58 = add i32 %57, 1
  store i32 %58, ptr @offset, align 4, !tbaa !12
  %59 = add i32 %54, 1
  %60 = and i32 %59, 3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %53

62:                                               ; preds = %53, %16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #18
  br label %63

63:                                               ; preds = %62, %10
  %64 = phi i32 [ -1, %10 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %4) #18
  ret i32 %64
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !10, i64 8}
!15 = !{!"file_handler", !10, i64 0, !10, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !7, i64 0}
!18 = !{!19, !6, i64 88}
!19 = !{!"stat", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !20, i64 72, !20, i64 88, !20, i64 104, !7, i64 120}
!20 = !{!"timespec", !6, i64 0, !6, i64 8}
!21 = !{!19, !6, i64 48}
!22 = !{!23, !10, i64 0}
!23 = !{!"generic_type", !10, i64 0, !13, i64 8}
!24 = !{!23, !13, i64 8}
