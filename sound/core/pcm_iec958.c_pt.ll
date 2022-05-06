; ModuleID = '/llk/IR/sound/core/pcm_iec958.c_pt.bc'
source_filename = "../sound/core/pcm_iec958.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_create_iec958_consumer_default:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_create_iec958_consumer_default\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_create_iec958_consumer_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_fill_iec958_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_fill_iec958_consumer\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_fill_iec958_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_fill_iec958_consumer_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_fill_iec958_consumer_hw_params\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_fill_iec958_consumer_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_create_iec958_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_create_iec958_consumer\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_create_iec958_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_create_iec958_consumer_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_create_iec958_consumer_hw_params\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_create_iec958_consumer_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@__kstrtab_snd_pcm_create_iec958_consumer_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_create_iec958_consumer_default = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_create_iec958_consumer_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_create_iec958_consumer_default to i32), ptr @__kstrtab_snd_pcm_create_iec958_consumer_default, ptr @__kstrtabns_snd_pcm_create_iec958_consumer_default }, section "___ksymtab_gpl+snd_pcm_create_iec958_consumer_default", align 4
@__kstrtab_snd_pcm_fill_iec958_consumer = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_fill_iec958_consumer = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_fill_iec958_consumer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_fill_iec958_consumer to i32), ptr @__kstrtab_snd_pcm_fill_iec958_consumer, ptr @__kstrtabns_snd_pcm_fill_iec958_consumer }, section "___ksymtab_gpl+snd_pcm_fill_iec958_consumer", align 4
@__kstrtab_snd_pcm_fill_iec958_consumer_hw_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_fill_iec958_consumer_hw_params = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_fill_iec958_consumer_hw_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_fill_iec958_consumer_hw_params to i32), ptr @__kstrtab_snd_pcm_fill_iec958_consumer_hw_params, ptr @__kstrtabns_snd_pcm_fill_iec958_consumer_hw_params }, section "___ksymtab_gpl+snd_pcm_fill_iec958_consumer_hw_params", align 4
@__kstrtab_snd_pcm_create_iec958_consumer = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_create_iec958_consumer = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_create_iec958_consumer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_create_iec958_consumer to i32), ptr @__kstrtab_snd_pcm_create_iec958_consumer, ptr @__kstrtabns_snd_pcm_create_iec958_consumer }, section "___ksymtab+snd_pcm_create_iec958_consumer", align 4
@__kstrtab_snd_pcm_create_iec958_consumer_hw_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_create_iec958_consumer_hw_params = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_create_iec958_consumer_hw_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_create_iec958_consumer_hw_params to i32), ptr @__kstrtab_snd_pcm_create_iec958_consumer_hw_params, ptr @__kstrtabns_snd_pcm_create_iec958_consumer_hw_params }, section "___ksymtab+snd_pcm_create_iec958_consumer_hw_params", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_snd_pcm_create_iec958_consumer, ptr @__ksymtab_snd_pcm_create_iec958_consumer_default, ptr @__ksymtab_snd_pcm_create_iec958_consumer_hw_params, ptr @__ksymtab_snd_pcm_fill_iec958_consumer, ptr @__ksymtab_snd_pcm_fill_iec958_consumer_hw_params], section "llvm.metadata"
@switch.table.snd_pcm_create_iec958_consumer_hw_params = private unnamed_addr constant [9 x i8] c"\02\04\03\02\0B\02\02\02\0B", align 1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @snd_pcm_create_iec958_consumer_default(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr align 1 %0, i8 0, i32 %1, i1 false)
  store i8 4, ptr %0, align 1
  %5 = getelementptr i8, ptr %0, i32 1
  store i8 0, ptr %5, align 1
  %6 = getelementptr i8, ptr %0, i32 2
  store i8 0, ptr %6, align 1
  %7 = getelementptr i8, ptr %0, i32 3
  store i8 1, ptr %7, align 1
  %8 = icmp eq i32 %1, 4
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 4
  store i8 0, ptr %10, align 1
  br label %11

11:                                               ; preds = %9, %4, %2
  %12 = phi i32 [ -22, %2 ], [ %1, %9 ], [ 4, %4 ]
  ret i32 %12
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_fill_iec958_consumer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @snd_pcm_format_width(i32 noundef %7) #5
  %9 = icmp ult i32 %2, 4
  br i1 %9, label %47, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %1, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 15
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  switch i32 %5, label %47 [
    i32 32000, label %22
    i32 44100, label %16
    i32 48000, label %17
    i32 88200, label %18
    i32 96000, label %19
    i32 176400, label %20
    i32 192000, label %21
  ]

16:                                               ; preds = %15
  br label %22

17:                                               ; preds = %15
  br label %22

18:                                               ; preds = %15
  br label %22

19:                                               ; preds = %15
  br label %22

20:                                               ; preds = %15
  br label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16, %15
  %23 = phi i8 [ 14, %21 ], [ 12, %20 ], [ 10, %19 ], [ 8, %18 ], [ 2, %17 ], [ 0, %16 ], [ 3, %15 ]
  %24 = and i8 %12, -16
  %25 = or i8 %23, %24
  store i8 %25, ptr %11, align 1
  br label %26

26:                                               ; preds = %22, %10
  %27 = icmp ugt i32 %2, 4
  br i1 %27, label %28, label %47

28:                                               ; preds = %26
  %29 = getelementptr i8, ptr %1, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = add i32 %8, -16
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 31) #5
  %36 = icmp ult i32 %35, 9
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = trunc i32 %35 to i16
  %39 = lshr i16 279, %38
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds [9 x i8], ptr @switch.table.snd_pcm_create_iec958_consumer_hw_params, i32 0, i32 %35
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %30, -15
  %46 = or i8 %44, %45
  store i8 %46, ptr %29, align 1
  br label %47

47:                                               ; preds = %42, %37, %33, %28, %26, %15, %3
  %48 = phi i32 [ -22, %3 ], [ -22, %15 ], [ -22, %33 ], [ %2, %42 ], [ %2, %28 ], [ 4, %26 ], [ -22, %37 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_fill_iec958_consumer_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %14, %3
  %10 = phi i32 [ 0, %3 ], [ 32, %14 ]
  %11 = phi i32 [ %7, %3 ], [ %16, %14 ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %11, i1 true) #5, !range !8
  %13 = or i32 %12, %10
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %9

18:                                               ; preds = %14, %9
  %19 = phi i32 [ %13, %9 ], [ 0, %14 ]
  %20 = tail call i32 @snd_pcm_format_width(i32 noundef %19) #5
  %21 = icmp ult i32 %2, 4
  br i1 %21, label %59, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %1, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 15
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  switch i32 %5, label %59 [
    i32 32000, label %34
    i32 44100, label %28
    i32 48000, label %29
    i32 88200, label %30
    i32 96000, label %31
    i32 176400, label %32
    i32 192000, label %33
  ]

28:                                               ; preds = %27
  br label %34

29:                                               ; preds = %27
  br label %34

30:                                               ; preds = %27
  br label %34

31:                                               ; preds = %27
  br label %34

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28, %27
  %35 = phi i8 [ 14, %33 ], [ 12, %32 ], [ 10, %31 ], [ 8, %30 ], [ 2, %29 ], [ 0, %28 ], [ 3, %27 ]
  %36 = and i8 %24, -16
  %37 = or i8 %35, %36
  store i8 %37, ptr %23, align 1
  br label %38

38:                                               ; preds = %34, %22
  %39 = icmp ugt i32 %2, 4
  br i1 %39, label %40, label %59

40:                                               ; preds = %38
  %41 = getelementptr i8, ptr %1, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 14
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = add i32 %20, -16
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 31) #5
  %48 = icmp ult i32 %47, 9
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = trunc i32 %47 to i16
  %51 = lshr i16 279, %50
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds [9 x i8], ptr @switch.table.snd_pcm_create_iec958_consumer_hw_params, i32 0, i32 %47
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %42, -15
  %58 = or i8 %56, %57
  store i8 %58, ptr %41, align 1
  br label %59

59:                                               ; preds = %54, %49, %45, %40, %38, %27, %18
  %60 = phi i32 [ -22, %18 ], [ -22, %27 ], [ -22, %45 ], [ %2, %54 ], [ %2, %40 ], [ 4, %38 ], [ -22, %49 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_create_iec958_consumer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false) #5
  store i8 4, ptr %1, align 1
  %6 = getelementptr i8, ptr %1, i32 1
  store i8 0, ptr %6, align 1
  %7 = getelementptr i8, ptr %1, i32 2
  store i8 0, ptr %7, align 1
  %8 = getelementptr i8, ptr %1, i32 3
  store i8 1, ptr %8, align 1
  %9 = icmp eq i32 %2, 4
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %1, i32 4
  store i8 0, ptr %11, align 1
  %12 = icmp slt i32 %2, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %5
  %14 = tail call i32 @snd_pcm_fill_iec958_consumer(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %15

15:                                               ; preds = %13, %10, %3
  %16 = phi i32 [ %14, %13 ], [ %2, %10 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_create_iec958_consumer_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %66, label %5

5:                                                ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false) #5
  store i8 4, ptr %1, align 1
  %6 = getelementptr i8, ptr %1, i32 1
  store i8 0, ptr %6, align 1
  %7 = getelementptr i8, ptr %1, i32 2
  store i8 0, ptr %7, align 1
  %8 = getelementptr i8, ptr %1, i32 3
  store i8 1, ptr %8, align 1
  %9 = icmp eq i32 %2, 4
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %1, i32 4
  store i8 0, ptr %11, align 1
  %12 = icmp slt i32 %2, 0
  br i1 %12, label %66, label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %24, %13
  %20 = phi i32 [ 0, %13 ], [ 32, %24 ]
  %21 = phi i32 [ %17, %13 ], [ %26, %24 ]
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 true) #5, !range !8
  %23 = or i32 %22, %20
  br label %28

24:                                               ; preds = %13
  %25 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %23, %19 ], [ 0, %24 ]
  %30 = tail call i32 @snd_pcm_format_width(i32 noundef %29) #5
  %31 = load i8, ptr %8, align 1
  %32 = and i8 %31, 15
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  switch i32 %15, label %66 [
    i32 32000, label %41
    i32 44100, label %35
    i32 48000, label %36
    i32 88200, label %37
    i32 96000, label %38
    i32 176400, label %39
    i32 192000, label %40
  ]

35:                                               ; preds = %34
  br label %41

36:                                               ; preds = %34
  br label %41

37:                                               ; preds = %34
  br label %41

38:                                               ; preds = %34
  br label %41

39:                                               ; preds = %34
  br label %41

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %39, %38, %37, %36, %35, %34
  %42 = phi i8 [ 14, %40 ], [ 12, %39 ], [ 10, %38 ], [ 8, %37 ], [ 2, %36 ], [ 0, %35 ], [ 3, %34 ]
  %43 = and i8 %31, -16
  %44 = or i8 %42, %43
  store i8 %44, ptr %8, align 1
  br label %45

45:                                               ; preds = %41, %28
  %46 = icmp ugt i32 %2, 4
  br i1 %46, label %47, label %66

47:                                               ; preds = %45
  %48 = getelementptr i8, ptr %1, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 14
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = add i32 %30, -16
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 31) #5
  %55 = icmp ult i32 %54, 9
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = trunc i32 %54 to i16
  %58 = lshr i16 279, %57
  %59 = and i16 %58, 1
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds [9 x i8], ptr @switch.table.snd_pcm_create_iec958_consumer_hw_params, i32 0, i32 %54
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %49, -15
  %65 = or i8 %63, %64
  store i8 %65, ptr %48, align 1
  br label %66

66:                                               ; preds = %61, %56, %52, %47, %45, %34, %10, %3
  %67 = phi i32 [ %2, %10 ], [ -22, %34 ], [ -22, %52 ], [ %2, %61 ], [ %2, %47 ], [ 4, %45 ], [ -22, %3 ], [ -22, %56 ]
  ret i32 %67
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !{i32 0, i32 33}
