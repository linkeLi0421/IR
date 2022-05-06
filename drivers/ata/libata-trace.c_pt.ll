; ModuleID = '/llk/IR/drivers/ata/libata-trace.c_pt.bc'
source_filename = "../drivers/ata/libata-trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BUSY \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"DRDY \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DF \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DSC \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"DRQ \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"CORR \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SENSE \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ERR \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"INTR \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ACTIVE \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"REVALIDATE \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"RESET \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"SOFTRESET \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"HARDRESET \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"ENABLE_LINK \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"PARK \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"DEV \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"HSM \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"TIMEOUT \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"MEDIA \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"ATA_BUS \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"HOST_BUS \00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"SYSTEM \00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"INVALID \00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"OTHER \00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"NODEV_HINT \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"NCQ \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"DMAMAP \00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"IO \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"RESULT_TF \00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"CLEAR_EXCL \00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"QUIET \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"RETRY \00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"FAILED \00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"SENSE_VALID \00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"EH_SCHEDULED \00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"LBA48 \00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"ISADDR \00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"WRITE \00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"LBA \00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"FUA \00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"POLL \00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c" READ_LOG_DMA_EXT\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c" ZAC_MGMT_IN\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c" WRITE_LOG_DMA_EXT\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c" DATASET_MANAGEMENT\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c" ABORT_QUEUE\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c" SET_FEATURES\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c" ZERO_EXT\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c" ZAC_MGMT_OUT\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c" REPORT_ZONES\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" CLOSE_ZONE\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c" FINISH_ZONE\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c" OPEN_ZONE\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c" RESET_WRITE_POINTER\00", align 1
@switch.table.libata_trace_parse_subcmd = private unnamed_addr constant [8 x ptr] [ptr @.str.48, ptr @.str.48, ptr @.str.48, ptr @.str.48, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], align 4
@switch.table.libata_trace_parse_subcmd.57 = private unnamed_addr constant [4 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @libata_trace_parse_status(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str) #3
  %7 = zext i8 %1 to i32
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1) #3
  br label %11

11:                                               ; preds = %10, %2
  %12 = and i32 %7, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2) #3
  br label %15

15:                                               ; preds = %14, %11
  %16 = and i32 %7, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #3
  br label %19

19:                                               ; preds = %18, %15
  %20 = and i32 %7, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4) #3
  br label %23

23:                                               ; preds = %22, %19
  %24 = and i32 %7, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5) #3
  br label %27

27:                                               ; preds = %26, %23
  %28 = and i32 %7, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6) #3
  br label %31

31:                                               ; preds = %30, %27
  %32 = and i32 %7, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7) #3
  br label %35

35:                                               ; preds = %34, %31
  %36 = and i32 %7, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8) #3
  br label %39

39:                                               ; preds = %38, %35
  %40 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6) #3
  %41 = getelementptr i8, ptr %0, i32 %40
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 125) #3
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @libata_trace_parse_host_stat(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str) #3
  %7 = zext i8 %1 to i32
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9) #3
  br label %11

11:                                               ; preds = %10, %2
  %12 = and i32 %7, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8) #3
  br label %15

15:                                               ; preds = %14, %11
  %16 = and i32 %7, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10) #3
  br label %19

19:                                               ; preds = %18, %15
  %20 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6) #3
  %21 = getelementptr i8, ptr %0, i32 %20
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 125) #3
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @libata_trace_parse_eh_action(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %1) #3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str) #3
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12) #3
  br label %12

12:                                               ; preds = %11, %8
  %13 = and i32 %1, 6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = and i32 %1, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = and i32 %1, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %15, %12
  %22 = phi ptr [ @.str.13, %12 ], [ @.str.14, %15 ], [ @.str.15, %18 ]
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull %22) #3
  br label %23

23:                                               ; preds = %21, %18
  %24 = and i32 %1, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16) #3
  br label %27

27:                                               ; preds = %26, %23
  %28 = and i32 %1, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17) #3
  br label %31

31:                                               ; preds = %30, %27
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 125) #3
  br label %32

32:                                               ; preds = %31, %2
  %33 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6) #3
  %34 = getelementptr i8, ptr %0, i32 %33
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @libata_trace_parse_eh_err_mask(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %1) #3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str) #3
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18) #3
  br label %12

12:                                               ; preds = %11, %8
  %13 = and i32 %1, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19) #3
  br label %16

16:                                               ; preds = %15, %12
  %17 = and i32 %1, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20) #3
  br label %20

20:                                               ; preds = %19, %16
  %21 = and i32 %1, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21) #3
  br label %24

24:                                               ; preds = %23, %20
  %25 = and i32 %1, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22) #3
  br label %28

28:                                               ; preds = %27, %24
  %29 = and i32 %1, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23) #3
  br label %32

32:                                               ; preds = %31, %28
  %33 = and i32 %1, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24) #3
  br label %36

36:                                               ; preds = %35, %32
  %37 = and i32 %1, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25) #3
  br label %40

40:                                               ; preds = %39, %36
  %41 = and i32 %1, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26) #3
  br label %44

44:                                               ; preds = %43, %40
  %45 = and i32 %1, 512
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27) #3
  br label %48

48:                                               ; preds = %47, %44
  %49 = and i32 %1, 1024
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28) #3
  br label %52

52:                                               ; preds = %51, %48
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 125) #3
  br label %53

53:                                               ; preds = %52, %2
  %54 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6) #3
  %55 = getelementptr i8, ptr %0, i32 %54
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @libata_trace_parse_qc_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %1) #3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str) #3
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10) #3
  br label %12

12:                                               ; preds = %11, %8
  %13 = and i32 %1, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29) #3
  br label %16

16:                                               ; preds = %15, %12
  %17 = and i32 %1, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30) #3
  br label %20

20:                                               ; preds = %19, %16
  %21 = and i32 %1, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31) #3
  br label %24

24:                                               ; preds = %23, %20
  %25 = and i32 %1, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32) #3
  br label %28

28:                                               ; preds = %27, %24
  %29 = and i32 %1, 64
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33) #3
  br label %32

32:                                               ; preds = %31, %28
  %33 = and i32 %1, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34) #3
  br label %36

36:                                               ; preds = %35, %32
  %37 = and i32 %1, 65536
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35) #3
  br label %40

40:                                               ; preds = %39, %36
  %41 = and i32 %1, 131072
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36) #3
  br label %44

44:                                               ; preds = %43, %40
  %45 = and i32 %1, 262144
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37) #3
  br label %48

48:                                               ; preds = %47, %44
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 125) #3
  br label %49

49:                                               ; preds = %48, %2
  %50 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6) #3
  %51 = getelementptr i8, ptr %0, i32 %50
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @libata_trace_parse_tf_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %1) #3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str) #3
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38) #3
  br label %12

12:                                               ; preds = %11, %8
  %13 = and i32 %1, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39) #3
  br label %16

16:                                               ; preds = %15, %12
  %17 = and i32 %1, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18) #3
  br label %20

20:                                               ; preds = %19, %16
  %21 = and i32 %1, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40) #3
  br label %24

24:                                               ; preds = %23, %20
  %25 = and i32 %1, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.41) #3
  br label %28

28:                                               ; preds = %27, %24
  %29 = and i32 %1, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42) #3
  br label %32

32:                                               ; preds = %31, %28
  %33 = and i32 %1, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.43) #3
  br label %36

36:                                               ; preds = %35, %32
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 125) #3
  br label %37

37:                                               ; preds = %36, %2
  %38 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6) #3
  %39 = getelementptr i8, ptr %0, i32 %38
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @libata_trace_parse_subcmd(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  switch i8 %1, label %38 [
    i8 101, label %9
    i8 100, label %13
    i8 99, label %17
    i8 74, label %19
    i8 -97, label %21
  ]

9:                                                ; preds = %4
  %10 = and i8 %3, 95
  %11 = zext i8 %10 to i32
  switch i32 %11, label %38 [
    i32 1, label %36
    i32 2, label %12
  ]

12:                                               ; preds = %9
  br label %36

13:                                               ; preds = %4
  %14 = and i8 %3, 95
  %15 = zext i8 %14 to i32
  switch i32 %15, label %38 [
    i32 2, label %36
    i32 0, label %16
  ]

16:                                               ; preds = %13
  br label %36

17:                                               ; preds = %4
  %18 = icmp ult i8 %2, 8
  br i1 %18, label %24, label %38

19:                                               ; preds = %4
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %36, label %38

21:                                               ; preds = %4
  %22 = add i8 %2, -1
  %23 = icmp ult i8 %22, 4
  br i1 %23, label %32, label %38

24:                                               ; preds = %17
  %25 = lshr i8 -31, %2
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = sext i8 %2 to i32
  %30 = getelementptr inbounds [8 x ptr], ptr @switch.table.libata_trace_parse_subcmd, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  br label %36

32:                                               ; preds = %21
  %33 = sext i8 %22 to i32
  %34 = getelementptr inbounds [4 x ptr], ptr @switch.table.libata_trace_parse_subcmd.57, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %32, %28, %19, %16, %13, %12, %9
  %37 = phi ptr [ @.str.47, %16 ], [ @.str.45, %12 ], [ @.str.44, %9 ], [ @.str.46, %13 ], [ @.str.52, %19 ], [ %31, %28 ], [ %35, %32 ]
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull %37) #3
  br label %38

38:                                               ; preds = %36, %24, %21, %19, %17, %13, %9, %4
  %39 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8) #3
  %40 = getelementptr i8, ptr %0, i32 %39
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  ret ptr %40
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
