; ModuleID = '/llk/IR/drivers/char/tpm/tpm2-space.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm2-space.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tpm_header = type <{ i16, i32, %union.anon.65 }>
%union.anon.65 = type { i32 }
%struct.tpm_buf = type { i32, ptr }
%struct.tpm2_context = type <{ i64, i32, i32, i16 }>

@.str = private unnamed_addr constant [14 x i8] c"%s: error %d\0A\00", align 1
@__func__.tpm2_commit_space = private unnamed_addr constant [18 x i8] c"tpm2_commit_space\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"context table is inconsistent\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"session restored to wrong handle\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: failed with a system error %d\0A\00", align 1
@__func__.tpm2_load_context = private unnamed_addr constant [18 x i8] c"tpm2_load_context\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: failed with a TPM error 0x%04X\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"include/linux/tpm.h\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"tpm_buf: overflow\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s: unknown handle 0x%08X\0A\00", align 1
@__func__.tpm2_map_response_header = private unnamed_addr constant [25 x i8] c"tpm2_map_response_header\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s: out of slots for 0x%08X\0A\00", align 1
@__func__.tpm2_save_context = private unnamed_addr constant [18 x i8] c"tpm2_save_context\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"%s: out of backing storage\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_init_space(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #7
  %4 = getelementptr inbounds %struct.tpm_space, ptr %0, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #7
  %8 = getelementptr inbounds %struct.tpm_space, ptr %0, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %11) #8
  store ptr null, ptr %4, align 4
  br label %14

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tpm_space, ptr %0, i32 0, i32 4
  store i32 %1, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %10, %2
  %15 = phi i32 [ -12, %10 ], [ 0, %12 ], [ -12, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tpm2_del_space(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = tail call i32 @tpm_chip_start(ptr noundef %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr %struct.tpm_space, ptr %1, i32 0, i32 2, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %8) #8
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr %struct.tpm_space, ptr %1, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %13) #8
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr %struct.tpm_space, ptr %1, i32 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %18) #8
  br label %21

21:                                               ; preds = %20, %16
  tail call void @tpm_chip_stop(ptr noundef %0) #8
  br label %22

22:                                               ; preds = %21, %2
  tail call void @mutex_unlock(ptr noundef %3) #8
  %23 = getelementptr inbounds %struct.tpm_space, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.tpm_space, ptr %1, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tpm2_flush_space(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 27
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %4 [
    i32 0, label %5
    i32 -1, label %5
  ]

4:                                                ; preds = %1
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %3) #8
  br label %5

5:                                                ; preds = %4, %1, %1
  %6 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 0, label %9
    i32 -1, label %9
  ]

8:                                                ; preds = %5
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %7) #8
  br label %9

9:                                                ; preds = %8, %5, %5
  %10 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %12 [
    i32 0, label %13
    i32 -1, label %13
  ]

12:                                               ; preds = %9
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %11) #8
  br label %13

13:                                               ; preds = %12, %9, %9
  %14 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %15) #8
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %20) #8
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %25) #8
  br label %28

28:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm2_flush_context(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_prepare_space(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %249, label %8

8:                                                ; preds = %4
  %9 = icmp ult i32 %3, 10
  br i1 %9, label %249, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 29
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %249, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = tail call i32 @tpm2_find_cc(ptr noundef %0, i32 noundef %17) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %249, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i32, ptr %22, i32 %18
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 21
  %26 = and i32 %25, 112
  %27 = or i32 %26, 10
  %28 = icmp ugt i32 %27, %3
  br i1 %28, label %249, label %29

29:                                               ; preds = %20
  %30 = icmp slt i32 %17, 0
  br i1 %30, label %249, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %32, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 12, i1 false)
  %33 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2
  %34 = getelementptr inbounds %struct.tpm_space, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %33, ptr noundef align 4 dereferenceable(12) %34, i32 12, i1 false)
  %35 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tpm_space, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tpm_space, ptr %1, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %38, i32 %40, i1 false)
  %41 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tpm_space, ptr %1, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %39, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 1 %44, i32 %45, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  %46 = load i32, ptr %32, align 4
  switch i32 %46, label %47 [
    i32 0, label %52
    i32 -1, label %48
  ]

47:                                               ; preds = %59, %52, %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %110

48:                                               ; preds = %31
  %49 = load ptr, ptr %35, align 4
  %50 = call fastcc i32 @tpm2_load_context(ptr noundef %0, ptr noundef %49, ptr noundef nonnull %5, ptr noundef %32) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %110

52:                                               ; preds = %48, %31
  %53 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %47 [
    i32 0, label %59
    i32 -1, label %55
  ]

55:                                               ; preds = %52
  %56 = load ptr, ptr %35, align 4
  %57 = call fastcc i32 @tpm2_load_context(ptr noundef %0, ptr noundef %56, ptr noundef nonnull %5, ptr noundef %53) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %110

59:                                               ; preds = %55, %52
  %60 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  switch i32 %61, label %47 [
    i32 0, label %66
    i32 -1, label %62
  ]

62:                                               ; preds = %59
  %63 = load ptr, ptr %35, align 4
  %64 = call fastcc i32 @tpm2_load_context(ptr noundef %0, ptr noundef %63, ptr noundef nonnull %5, ptr noundef %60) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %110

66:                                               ; preds = %62, %59
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %67 = load i32, ptr %33, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %41, align 4
  %71 = call fastcc i32 @tpm2_load_context(ptr noundef %0, ptr noundef %70, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  switch i32 %71, label %80 [
    i32 -2, label %74
    i32 0, label %72
  ]

72:                                               ; preds = %69
  %73 = load i32, ptr %33, align 4
  br label %75

74:                                               ; preds = %69
  store i32 0, ptr %33, align 4
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = load i32, ptr %6, align 4
  %78 = icmp eq i32 %77, %76
  br i1 %78, label %82, label %79

79:                                               ; preds = %106, %92, %75
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  br label %80

80:                                               ; preds = %100, %86, %79, %69
  %81 = phi i32 [ -14, %79 ], [ %71, %69 ], [ %88, %86 ], [ %102, %100 ]
  tail call void @tpm2_flush_space(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %110

82:                                               ; preds = %75, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %83 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %41, align 4
  %88 = call fastcc i32 @tpm2_load_context(ptr noundef %0, ptr noundef %87, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  switch i32 %88, label %80 [
    i32 -2, label %91
    i32 0, label %89
  ]

89:                                               ; preds = %86
  %90 = load i32, ptr %83, align 4
  br label %92

91:                                               ; preds = %86
  store i32 0, ptr %83, align 4
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = load i32, ptr %6, align 4
  %95 = icmp eq i32 %94, %93
  br i1 %95, label %96, label %79

96:                                               ; preds = %92, %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %97 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %41, align 4
  %102 = call fastcc i32 @tpm2_load_context(ptr noundef %0, ptr noundef %101, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  switch i32 %102, label %80 [
    i32 -2, label %105
    i32 0, label %103
  ]

103:                                              ; preds = %100
  %104 = load i32, ptr %97, align 4
  br label %106

105:                                              ; preds = %100
  store i32 0, ptr %97, align 4
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ]
  %108 = load i32, ptr %6, align 4
  %109 = icmp eq i32 %108, %107
  br i1 %109, label %112, label %79

110:                                              ; preds = %80, %62, %55, %48, %47
  %111 = phi i32 [ %64, %62 ], [ %57, %55 ], [ %50, %48 ], [ %81, %80 ], [ -14, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  tail call void @tpm2_flush_space(ptr noundef %0)
  br label %249

112:                                              ; preds = %106, %96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %113 = tail call i32 @tpm2_find_cc(ptr noundef %0, i32 noundef %17) #8
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %246, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %21, align 4
  %117 = getelementptr i32, ptr %116, i32 %113
  %118 = load i32, ptr %117, align 4
  %119 = lshr i32 %118, 25
  %120 = and i32 %119, 7
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %247, label %122

122:                                              ; preds = %115
  %123 = getelementptr i8, ptr %2, i32 10
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 255
  %126 = icmp eq i32 %125, 128
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = and i32 %124, -256
  %129 = xor i32 %128, -256
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #8
  %131 = icmp ugt i32 %130, 2
  br i1 %131, label %246, label %132

132:                                              ; preds = %127
  %133 = getelementptr [3 x i32], ptr %32, i32 0, i32 %130
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %246, label %136

136:                                              ; preds = %132
  %137 = tail call i32 @llvm.bswap.i32(i32 %134) #8
  store i32 %137, ptr %123, align 4
  br label %138

138:                                              ; preds = %136, %122
  %139 = getelementptr i8, ptr %2, i32 14
  %140 = icmp eq i32 %120, 1
  br i1 %140, label %247, label %141

141:                                              ; preds = %138
  %142 = load i32, ptr %139, align 4
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %143, 128
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = and i32 %142, -256
  %147 = xor i32 %146, -256
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #8
  %149 = icmp ugt i32 %148, 2
  br i1 %149, label %246, label %150

150:                                              ; preds = %145
  %151 = getelementptr [3 x i32], ptr %32, i32 0, i32 %148
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %246, label %154

154:                                              ; preds = %150
  %155 = tail call i32 @llvm.bswap.i32(i32 %152) #8
  store i32 %155, ptr %139, align 4
  br label %156

156:                                              ; preds = %154, %141
  %157 = getelementptr i8, ptr %2, i32 18
  %158 = icmp eq i32 %120, 2
  br i1 %158, label %247, label %159

159:                                              ; preds = %156
  %160 = load i32, ptr %157, align 4
  %161 = and i32 %160, 255
  %162 = icmp eq i32 %161, 128
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  %164 = and i32 %160, -256
  %165 = xor i32 %164, -256
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #8
  %167 = icmp ugt i32 %166, 2
  br i1 %167, label %246, label %168

168:                                              ; preds = %163
  %169 = getelementptr [3 x i32], ptr %32, i32 0, i32 %166
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %246, label %172

172:                                              ; preds = %168
  %173 = tail call i32 @llvm.bswap.i32(i32 %170) #8
  store i32 %173, ptr %157, align 4
  br label %174

174:                                              ; preds = %172, %159
  %175 = getelementptr i8, ptr %2, i32 22
  %176 = icmp eq i32 %120, 3
  br i1 %176, label %247, label %177

177:                                              ; preds = %174
  %178 = load i32, ptr %175, align 4
  %179 = and i32 %178, 255
  %180 = icmp eq i32 %179, 128
  br i1 %180, label %181, label %192

181:                                              ; preds = %177
  %182 = and i32 %178, -256
  %183 = xor i32 %182, -256
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #8
  %185 = icmp ugt i32 %184, 2
  br i1 %185, label %246, label %186

186:                                              ; preds = %181
  %187 = getelementptr [3 x i32], ptr %32, i32 0, i32 %184
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %246, label %190

190:                                              ; preds = %186
  %191 = tail call i32 @llvm.bswap.i32(i32 %188) #8
  store i32 %191, ptr %175, align 4
  br label %192

192:                                              ; preds = %190, %177
  %193 = getelementptr i8, ptr %2, i32 26
  %194 = icmp eq i32 %120, 4
  br i1 %194, label %247, label %195

195:                                              ; preds = %192
  %196 = load i32, ptr %193, align 4
  %197 = and i32 %196, 255
  %198 = icmp eq i32 %197, 128
  br i1 %198, label %199, label %210

199:                                              ; preds = %195
  %200 = and i32 %196, -256
  %201 = xor i32 %200, -256
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #8
  %203 = icmp ugt i32 %202, 2
  br i1 %203, label %246, label %204

204:                                              ; preds = %199
  %205 = getelementptr [3 x i32], ptr %32, i32 0, i32 %202
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %246, label %208

208:                                              ; preds = %204
  %209 = tail call i32 @llvm.bswap.i32(i32 %206) #8
  store i32 %209, ptr %193, align 4
  br label %210

210:                                              ; preds = %208, %195
  %211 = getelementptr i8, ptr %2, i32 30
  %212 = icmp eq i32 %120, 5
  br i1 %212, label %247, label %213

213:                                              ; preds = %210
  %214 = load i32, ptr %211, align 4
  %215 = and i32 %214, 255
  %216 = icmp eq i32 %215, 128
  br i1 %216, label %217, label %228

217:                                              ; preds = %213
  %218 = and i32 %214, -256
  %219 = xor i32 %218, -256
  %220 = tail call i32 @llvm.bswap.i32(i32 %219) #8
  %221 = icmp ugt i32 %220, 2
  br i1 %221, label %246, label %222

222:                                              ; preds = %217
  %223 = getelementptr [3 x i32], ptr %32, i32 0, i32 %220
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %246, label %226

226:                                              ; preds = %222
  %227 = tail call i32 @llvm.bswap.i32(i32 %224) #8
  store i32 %227, ptr %211, align 4
  br label %228

228:                                              ; preds = %226, %213
  %229 = getelementptr i8, ptr %2, i32 34
  %230 = icmp eq i32 %120, 6
  br i1 %230, label %247, label %231

231:                                              ; preds = %228
  %232 = load i32, ptr %229, align 4
  %233 = and i32 %232, 255
  %234 = icmp eq i32 %233, 128
  br i1 %234, label %235, label %247

235:                                              ; preds = %231
  %236 = and i32 %232, -256
  %237 = xor i32 %236, -256
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #8
  %239 = icmp ugt i32 %238, 2
  br i1 %239, label %246, label %240

240:                                              ; preds = %235
  %241 = getelementptr [3 x i32], ptr %32, i32 0, i32 %238
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %240
  %245 = tail call i32 @llvm.bswap.i32(i32 %242) #8
  store i32 %245, ptr %229, align 4
  br label %247

246:                                              ; preds = %240, %235, %222, %217, %204, %199, %186, %181, %168, %163, %150, %145, %132, %127, %112
  tail call void @tpm2_flush_space(ptr noundef %0)
  br label %249

247:                                              ; preds = %244, %231, %228, %210, %192, %174, %156, %138, %115
  %248 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 28
  store i32 %17, ptr %248, align 4
  br label %249

249:                                              ; preds = %247, %246, %110, %29, %20, %14, %10, %8, %4
  %250 = phi i32 [ %111, %110 ], [ -22, %246 ], [ 0, %247 ], [ 0, %4 ], [ %17, %29 ], [ -95, %14 ], [ -22, %8 ], [ -22, %10 ], [ -22, %20 ]
  ret i32 %250
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm2_commit_space(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %222, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 27
  %11 = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %7
  %15 = tail call i32 @tpm2_find_cc(ptr noundef %0, i32 noundef %9) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %220, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 30
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i32, ptr %19, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 268435456
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %2, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %28 = and i32 %27, -16777216
  switch i32 %28, label %60 [
    i32 -2147483648, label %29
    i32 33554432, label %45
    i32 50331648, label %45
  ]

29:                                               ; preds = %24
  %30 = load i32, ptr %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %36, %32, %29
  %41 = phi i32 [ 0, %29 ], [ 1, %32 ], [ 2, %36 ]
  %42 = getelementptr [3 x i32], ptr %10, i32 0, i32 %41
  store i32 %27, ptr %42, align 4
  %43 = xor i32 %41, -2130706433
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  store i32 %44, ptr %25, align 4
  br label %62

45:                                               ; preds = %24, %24
  %46 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 0
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %49, %45
  %58 = phi i32 [ 0, %45 ], [ 1, %49 ], [ 2, %53 ]
  %59 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 %58
  store i32 %27, ptr %59, align 4
  br label %62

60:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tpm2_map_response_header, i32 noundef %27) #9
  br label %62

61:                                               ; preds = %53, %36
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %27) #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tpm2_map_response_header, i32 noundef %27) #9
  br label %220

62:                                               ; preds = %60, %57, %40, %17
  %63 = load i32, ptr %8, align 4
  br label %64

64:                                               ; preds = %62, %7
  %65 = phi i32 [ %63, %62 ], [ %9, %7 ]
  %66 = load i32, ptr %3, align 4
  %67 = icmp eq i32 %65, 378
  br i1 %67, label %68, label %131

68:                                               ; preds = %64
  %69 = load i32, ptr %11, align 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %131

71:                                               ; preds = %68
  %72 = icmp ult i32 %66, 19
  br i1 %72, label %220, label %73

73:                                               ; preds = %71
  %74 = getelementptr i8, ptr %2, i32 11
  %75 = load i32, ptr %74, align 1
  %76 = icmp eq i32 %75, 16777216
  br i1 %76, label %77, label %131

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %2, i32 15
  %79 = load i32, ptr %78, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  %81 = icmp ult i32 %80, 1073741820
  %82 = shl i32 %80, 2
  %83 = add i32 %82, 19
  %84 = icmp eq i32 %83, %66
  %85 = select i1 %81, i1 %84, i1 false
  br i1 %85, label %86, label %220

86:                                               ; preds = %77
  %87 = icmp eq i32 %79, 0
  br i1 %87, label %124, label %88

88:                                               ; preds = %86
  %89 = getelementptr i8, ptr %2, i32 19
  %90 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 0, i32 1
  %91 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 0, i32 2
  br label %92

92:                                               ; preds = %118, %88
  %93 = phi i32 [ %79, %88 ], [ %119, %118 ]
  %94 = phi i32 [ 0, %88 ], [ %120, %118 ]
  %95 = phi i32 [ 0, %88 ], [ %121, %118 ]
  %96 = getelementptr [0 x i32], ptr %89, i32 0, i32 %95
  %97 = load i32, ptr %96, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #8
  %99 = and i32 %98, -16777216
  %100 = icmp eq i32 %99, -2147483648
  br i1 %100, label %101, label %113

101:                                              ; preds = %92
  %102 = load i32, ptr %10, align 4
  %103 = icmp eq i32 %102, %98
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %90, align 4
  %106 = icmp eq i32 %105, %98
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %91, align 4
  %109 = icmp eq i32 %108, %98
  br i1 %109, label %110, label %118

110:                                              ; preds = %107, %104, %101
  %111 = phi i32 [ -2130706435, %107 ], [ -2130706434, %104 ], [ -2130706433, %101 ]
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #8
  br label %113

113:                                              ; preds = %110, %92
  %114 = phi i32 [ %112, %110 ], [ %97, %92 ]
  %115 = getelementptr [0 x i32], ptr %89, i32 0, i32 %94
  store i32 %114, ptr %115, align 1
  %116 = add i32 %94, 1
  %117 = load i32, ptr %78, align 1
  br label %118

118:                                              ; preds = %113, %107
  %119 = phi i32 [ %93, %107 ], [ %117, %113 ]
  %120 = phi i32 [ %94, %107 ], [ %116, %113 ]
  %121 = add nuw i32 %95, 1
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #8
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %92, label %124

124:                                              ; preds = %118, %86
  %125 = phi i32 [ 0, %86 ], [ %120, %118 ]
  %126 = shl i32 %125, 2
  %127 = add i32 %126, 19
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #8
  %129 = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 1
  store i32 %128, ptr %129, align 1
  %130 = tail call i32 @llvm.bswap.i32(i32 %125) #8
  store i32 %130, ptr %78, align 1
  br label %131

131:                                              ; preds = %124, %73, %68, %64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  %132 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 1
  %133 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 4
  %134 = load i32, ptr %10, align 4
  switch i32 %134, label %135 [
    i32 0, label %143
    i32 -1, label %143
  ]

135:                                              ; preds = %131
  %136 = load ptr, ptr %132, align 4
  %137 = load i32, ptr %133, align 4
  %138 = call fastcc i32 @tpm2_save_context(ptr noundef %0, i32 noundef %134, ptr noundef %136, i32 noundef %137, ptr noundef nonnull %5) #8
  switch i32 %138, label %204 [
    i32 -2, label %141
    i32 0, label %139
  ]

139:                                              ; preds = %135
  %140 = load i32, ptr %10, align 4
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %140) #8
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi i32 [ -1, %139 ], [ 0, %135 ]
  store i32 %142, ptr %10, align 4
  br label %143

143:                                              ; preds = %141, %131, %131
  %144 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  switch i32 %145, label %146 [
    i32 0, label %154
    i32 -1, label %154
  ]

146:                                              ; preds = %143
  %147 = load ptr, ptr %132, align 4
  %148 = load i32, ptr %133, align 4
  %149 = call fastcc i32 @tpm2_save_context(ptr noundef %0, i32 noundef %145, ptr noundef %147, i32 noundef %148, ptr noundef nonnull %5) #8
  switch i32 %149, label %204 [
    i32 -2, label %152
    i32 0, label %150
  ]

150:                                              ; preds = %146
  %151 = load i32, ptr %144, align 4
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %151) #8
  br label %152

152:                                              ; preds = %150, %146
  %153 = phi i32 [ -1, %150 ], [ 0, %146 ]
  store i32 %153, ptr %144, align 4
  br label %154

154:                                              ; preds = %152, %143, %143
  %155 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 0, i32 2
  %156 = load i32, ptr %155, align 4
  switch i32 %156, label %157 [
    i32 0, label %165
    i32 -1, label %165
  ]

157:                                              ; preds = %154
  %158 = load ptr, ptr %132, align 4
  %159 = load i32, ptr %133, align 4
  %160 = call fastcc i32 @tpm2_save_context(ptr noundef %0, i32 noundef %156, ptr noundef %158, i32 noundef %159, ptr noundef nonnull %5) #8
  switch i32 %160, label %204 [
    i32 -2, label %163
    i32 0, label %161
  ]

161:                                              ; preds = %157
  %162 = load i32, ptr %155, align 4
  tail call void @tpm2_flush_context(ptr noundef %0, i32 noundef %162) #8
  br label %163

163:                                              ; preds = %161, %157
  %164 = phi i32 [ -1, %161 ], [ 0, %157 ]
  store i32 %164, ptr %155, align 4
  br label %165

165:                                              ; preds = %163, %154, %154
  store i32 0, ptr %5, align 4
  %166 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 3
  %167 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 0
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr %166, align 4
  %172 = load i32, ptr %133, align 4
  %173 = call fastcc i32 @tpm2_save_context(ptr noundef %0, i32 noundef %168, ptr noundef %171, i32 noundef %172, ptr noundef nonnull %5) #8
  %174 = icmp eq i32 %173, -2
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i32 0, ptr %167, align 4
  br label %180

176:                                              ; preds = %170
  %177 = icmp slt i32 %173, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %201, %189, %176
  %179 = phi i32 [ %173, %176 ], [ %187, %189 ], [ %199, %201 ]
  tail call void @tpm2_flush_space(ptr noundef %0) #8
  br label %204

180:                                              ; preds = %176, %175, %165
  %181 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %166, align 4
  %186 = load i32, ptr %133, align 4
  %187 = call fastcc i32 @tpm2_save_context(ptr noundef %0, i32 noundef %182, ptr noundef %185, i32 noundef %186, ptr noundef nonnull %5) #8
  %188 = icmp eq i32 %187, -2
  br i1 %188, label %191, label %189

189:                                              ; preds = %184
  %190 = icmp slt i32 %187, 0
  br i1 %190, label %178, label %192

191:                                              ; preds = %184
  store i32 0, ptr %181, align 4
  br label %192

192:                                              ; preds = %191, %189, %180
  %193 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 27, i32 2, i32 2
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr %166, align 4
  %198 = load i32, ptr %133, align 4
  %199 = call fastcc i32 @tpm2_save_context(ptr noundef %0, i32 noundef %194, ptr noundef %197, i32 noundef %198, ptr noundef nonnull %5) #8
  %200 = icmp eq i32 %199, -2
  br i1 %200, label %203, label %201

201:                                              ; preds = %196
  %202 = icmp slt i32 %199, 0
  br i1 %202, label %178, label %206

203:                                              ; preds = %196
  store i32 0, ptr %193, align 4
  br label %206

204:                                              ; preds = %178, %157, %146, %135
  %205 = phi i32 [ %160, %157 ], [ %149, %146 ], [ %138, %135 ], [ %179, %178 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %220

206:                                              ; preds = %203, %201, %192
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %207 = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 1
  %208 = load i32, ptr %207, align 1
  %209 = tail call i32 @llvm.bswap.i32(i32 %208)
  store i32 %209, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef align 8 dereferenceable(12) %10, i32 12, i1 false)
  %210 = getelementptr inbounds %struct.tpm_space, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %210, ptr noundef align 8 dereferenceable(12) %167, i32 12, i1 false)
  %211 = getelementptr inbounds %struct.tpm_space, ptr %1, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = load ptr, ptr %132, align 4
  %214 = getelementptr inbounds %struct.tpm_space, ptr %1, i32 0, i32 4
  %215 = load i32, ptr %214, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %212, ptr align 1 %213, i32 %215, i1 false)
  %216 = getelementptr inbounds %struct.tpm_space, ptr %1, i32 0, i32 3
  %217 = load ptr, ptr %216, align 4
  %218 = load ptr, ptr %166, align 4
  %219 = load i32, ptr %214, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %217, ptr align 1 %218, i32 %219, i1 false)
  br label %222

220:                                              ; preds = %204, %77, %71, %61, %14
  %221 = phi i32 [ %205, %204 ], [ -12, %61 ], [ -14, %14 ], [ -14, %77 ], [ -14, %71 ]
  tail call void @tpm2_flush_space(ptr noundef %0)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tpm2_commit_space, i32 noundef %221) #9
  br label %222

222:                                              ; preds = %220, %206, %4
  %223 = phi i32 [ %221, %220 ], [ 0, %206 ], [ 0, %4 ]
  ret i32 %223
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_find_cc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tpm2_load_context(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.tpm_buf, ptr %5, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %65, label %10

10:                                               ; preds = %4
  store i16 384, ptr %7, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %7, i32 0, i32 1
  store i32 167772160, ptr %11, align 1
  %12 = getelementptr inbounds %struct.tpm_header, ptr %7, i32 0, i32 2
  store i32 1627455488, ptr %12, align 1
  %13 = load i32, ptr %2, align 4
  %14 = getelementptr i8, ptr %1, i32 %13
  %15 = getelementptr inbounds %struct.tpm2_context, ptr %14, i32 0, i32 3
  %16 = load i16, ptr %15, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %18 = zext i16 %17 to i32
  %19 = add nuw nsw i32 %18, 18
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.tpm_header, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = load i32, ptr %5, align 8
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %10
  %28 = add i32 %23, %19
  %29 = icmp ugt i32 %28, 4096
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.6) #8
  %31 = or i32 %24, 1
  store i32 %31, ptr %5, align 8
  br label %35

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %20, i32 %23
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %33, ptr noundef align 1 %14, i32 %19, i1 false) #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  store i32 %34, ptr %21, align 1
  br label %35

35:                                               ; preds = %32, %30, %10
  %36 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 4, ptr noundef null) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tpm2_load_context, i32 noundef %36) #9
  %39 = load ptr, ptr %8, align 4
  br label %61

40:                                               ; preds = %35
  %41 = and i32 %36, 128
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %36, 255
  %44 = select i1 %42, i32 %36, i32 %43
  %45 = icmp eq i32 %44, 139
  %46 = icmp eq i32 %36, 2320
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  store i32 0, ptr %3, align 4
  %49 = load ptr, ptr %8, align 4
  br label %61

50:                                               ; preds = %40
  %51 = icmp eq i32 %36, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tpm2_load_context, i32 noundef %36) #9
  %53 = load ptr, ptr %8, align 4
  br label %61

54:                                               ; preds = %50
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i8, ptr %55, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #8
  store i32 %58, ptr %3, align 4
  %59 = load i32, ptr %2, align 4
  %60 = add i32 %59, %19
  store i32 %60, ptr %2, align 4
  br label %61

61:                                               ; preds = %54, %52, %48, %38
  %62 = phi ptr [ %55, %54 ], [ %53, %52 ], [ %49, %48 ], [ %39, %38 ]
  %63 = phi i32 [ 0, %54 ], [ -14, %52 ], [ -2, %48 ], [ -14, %38 ]
  %64 = ptrtoint ptr %62 to i32
  call void @free_pages(i32 noundef %64, i32 noundef 0) #8
  br label %65

65:                                               ; preds = %61, %4
  %66 = phi i32 [ -12, %4 ], [ %63, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %66
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tpm2_save_context(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.tpm_buf, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %67, label %11

11:                                               ; preds = %5
  store i16 384, ptr %8, align 1
  %12 = getelementptr inbounds %struct.tpm_header, ptr %8, i32 0, i32 1
  store i32 167772160, ptr %12, align 1
  %13 = getelementptr inbounds %struct.tpm_header, ptr %8, i32 0, i32 2
  store i32 1644232704, ptr %13, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr inbounds %struct.tpm_header, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %19 = load i32, ptr %6, align 8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %11
  %23 = add i32 %18, 4
  %24 = icmp ugt i32 %23, 4096
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.6) #8
  %26 = or i32 %19, 1
  store i32 %26, ptr %6, align 8
  br label %30

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %15, i32 %18
  store i32 %14, ptr %28, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  store i32 %29, ptr %16, align 1
  br label %30

30:                                               ; preds = %27, %25, %11
  %31 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tpm2_save_context, i32 noundef %31) #9
  %34 = load ptr, ptr %9, align 4
  br label %63

35:                                               ; preds = %30
  %36 = and i32 %31, 128
  %37 = icmp eq i32 %36, 0
  %38 = and i32 %31, 255
  %39 = select i1 %37, i32 %31, i32 %38
  %40 = icmp eq i32 %39, 2320
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load ptr, ptr %9, align 4
  br label %63

43:                                               ; preds = %35
  %44 = icmp eq i32 %31, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tpm2_save_context, i32 noundef %31) #9
  %46 = load ptr, ptr %9, align 4
  br label %63

47:                                               ; preds = %43
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.tpm_header, ptr %48, i32 0, i32 1
  %50 = load i32, ptr %49, align 1
  %51 = call i32 @llvm.bswap.i32(i32 %50) #8
  %52 = add i32 %51, -10
  %53 = load i32, ptr %4, align 4
  %54 = add i32 %52, %53
  %55 = icmp ugt i32 %54, %3
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.tpm2_save_context) #9
  %57 = load ptr, ptr %9, align 4
  br label %63

58:                                               ; preds = %47
  %59 = getelementptr i8, ptr %2, i32 %53
  %60 = getelementptr i8, ptr %48, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %59, ptr align 1 %60, i32 %52, i1 false)
  %61 = load i32, ptr %4, align 4
  %62 = add i32 %61, %52
  store i32 %62, ptr %4, align 4
  br label %63

63:                                               ; preds = %58, %56, %45, %41, %33
  %64 = phi ptr [ %48, %58 ], [ %57, %56 ], [ %46, %45 ], [ %42, %41 ], [ %34, %33 ]
  %65 = phi i32 [ 0, %58 ], [ -12, %56 ], [ -14, %45 ], [ -2, %41 ], [ -14, %33 ]
  %66 = ptrtoint ptr %64 to i32
  call void @free_pages(i32 noundef %66, i32 noundef 0) #8
  br label %67

67:                                               ; preds = %63, %5
  %68 = phi i32 [ -12, %5 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i32 %68
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{!"auto-init"}
