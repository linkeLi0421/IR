; ModuleID = '/llk/IR/drivers/char/tpm/eventlog/tpm1.c_pt.bc'
source_filename = "../drivers/char/tpm/eventlog/tpm1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tcpa_event = type { i32, i32, [20 x i8], i32, [0 x i8] }
%struct.tcpa_pc_event = type { i32, i32, [0 x i8] }

@tpm1_ascii_b_measurements_seqops = dso_local local_unnamed_addr constant %struct.seq_operations { ptr @tpm1_bios_measurements_start, ptr @tpm1_bios_measurements_stop, ptr @tpm1_bios_measurements_next, ptr @tpm1_ascii_bios_measurements_show }, align 4
@tpm1_binary_b_measurements_seqops = dso_local local_unnamed_addr constant %struct.seq_operations { ptr @tpm1_bios_measurements_start, ptr @tpm1_bios_measurements_stop, ptr @tpm1_bios_measurements_next, ptr @tpm1_binary_bios_measurements_show }, align 4
@.str = private unnamed_addr constant [41 x i8] c"\013%s: ERROR - No Memory for event name\0A \00", align 1
@__func__.tpm1_ascii_bios_measurements_show = private unnamed_addr constant [34 x i8] c"tpm1_ascii_bios_measurements_show\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%20phN\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tcpa_event_type_strings = internal unnamed_addr constant [18 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@tcpa_pc_event_id_strings = internal unnamed_addr constant [15 x ptr] [ptr @.str.5, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.5, ptr @.str.33, ptr @.str.15, ptr @.str.34, ptr @.str.35, ptr @.str.18], align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"[%.*s%.*s]\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"PREBOOT\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"POST CODE\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"NO ACTION\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"SEPARATOR\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"EVENT TAG\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"S-CRTM Contents\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"S-CRTM Version\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"CPU Microcode\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Platform Config Flags\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Table of Devices\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Compact Hash\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"IPL\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"IPL Partition Data\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Non-Host Code\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Non-Host Config\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Non-Host Info\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"SMBIOS\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"BIS Certificate\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"POST BIOS \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"ESCD \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"CMOS\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"NVRAM\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Option ROM\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Option ROM config\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"Option ROM microcode \00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"S-CRTM Contents \00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"POST Contents \00", align 1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal ptr @tpm1_bios_measurements_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %4, i32 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 32
  %10 = icmp ugt ptr %9, %8
  br i1 %10, label %34, label %11

11:                                               ; preds = %28, %2
  %12 = phi ptr [ %31, %28 ], [ %6, %2 ]
  %13 = phi i64 [ %29, %28 ], [ 0, %2 ]
  %14 = getelementptr i8, ptr %12, i32 32
  %15 = getelementptr inbounds %struct.tcpa_event, ptr %12, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tcpa_event, ptr %12, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i32 %16, 0
  %21 = select i1 %19, i1 %20, i1 false
  %22 = getelementptr i8, ptr %14, i32 %16
  %23 = icmp ugt ptr %22, %8
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %11
  %26 = load i64, ptr %1, align 8
  %27 = icmp eq i64 %13, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = add i64 %13, 1
  %30 = add i32 %16, 32
  %31 = getelementptr i8, ptr %12, i32 %30
  %32 = getelementptr i8, ptr %31, i32 32
  %33 = icmp ugt ptr %32, %8
  br i1 %33, label %34, label %11

34:                                               ; preds = %28, %25, %11, %2
  %35 = phi ptr [ null, %2 ], [ %12, %25 ], [ null, %11 ], [ null, %28 ]
  ret ptr %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tpm1_bios_measurements_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #1 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @tpm1_bios_measurements_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tpm_chip, ptr %5, i32 0, i32 6, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i64, ptr %2, align 8
  %9 = add i64 %8, 1
  store i64 %9, ptr %2, align 8
  %10 = getelementptr inbounds %struct.tcpa_event, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 32
  %13 = getelementptr i8, ptr %1, i32 %12
  %14 = getelementptr i8, ptr %13, i32 32
  %15 = icmp ugt ptr %14, %7
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.tcpa_event, ptr %13, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tcpa_event, ptr %13, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = icmp eq i32 %18, 0
  %23 = select i1 %21, i1 %22, i1 false
  %24 = getelementptr i8, ptr %14, i32 %18
  %25 = icmp ugt ptr %24, %7
  %26 = select i1 %23, i1 true, i1 %25
  %27 = select i1 %26, ptr null, ptr %13
  br label %28

28:                                               ; preds = %16, %3
  %29 = phi ptr [ null, %3 ], [ %27, %16 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm1_ascii_bios_measurements_show(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca [41 x i8], align 1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1000) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tpm1_ascii_bios_measurements_show) #13
  br label %53

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %1, i32 32
  %11 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %11) #14
  %12 = getelementptr inbounds %struct.tcpa_event, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %12) #14
  %13 = getelementptr inbounds %struct.tcpa_event, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %14) #14
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(41) %3, i8 0, i32 41, i1 false) #14
  %15 = load i32, ptr %13, align 4
  switch i32 %15, label %48 [
    i32 0, label %16
    i32 1, label %16
    i32 2, label %16
    i32 3, label %16
    i32 7, label %16
    i32 8, label %16
    i32 9, label %16
    i32 10, label %16
    i32 11, label %16
    i32 12, label %16
    i32 13, label %16
    i32 14, label %16
    i32 15, label %16
    i32 16, label %16
    i32 17, label %16
    i32 4, label %20
    i32 5, label %20
    i32 6, label %26
  ]

16:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %17 = getelementptr [18 x ptr], ptr @tcpa_event_type_strings, i32 0, i32 %15
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @strlen(ptr noundef %18) #14
  br label %48

20:                                               ; preds = %9, %9
  %21 = getelementptr inbounds %struct.tcpa_event, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 1000
  %24 = select i1 %23, ptr %10, ptr @.str.5
  %25 = select i1 %23, i32 %22, i32 0
  br label %48

26:                                               ; preds = %9
  %27 = load i32, ptr %10, align 4
  switch i32 %27, label %48 [
    i32 1, label %28
    i32 2, label %28
    i32 5, label %28
    i32 6, label %28
    i32 7, label %28
    i32 8, label %28
    i32 11, label %28
    i32 3, label %32
    i32 4, label %32
    i32 10, label %32
    i32 12, label %32
    i32 13, label %32
  ]

28:                                               ; preds = %26, %26, %26, %26, %26, %26, %26
  %29 = getelementptr [15 x ptr], ptr @tcpa_pc_event_id_strings, i32 0, i32 %27
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @strlen(ptr noundef %30) #14
  br label %48

32:                                               ; preds = %26, %26, %26, %26, %26
  %33 = getelementptr [15 x ptr], ptr @tcpa_pc_event_id_strings, i32 0, i32 %27
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @strlen(ptr noundef %34) #14
  br label %36

36:                                               ; preds = %36, %32
  %37 = phi i32 [ 0, %32 ], [ %45, %36 ]
  %38 = phi i32 [ 0, %32 ], [ %46, %36 ]
  %39 = shl nuw i32 %38, 1
  %40 = getelementptr [41 x i8], ptr %3, i32 0, i32 %39
  %41 = getelementptr %struct.tcpa_pc_event, ptr %10, i32 0, i32 2, i32 %38
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %40, ptr noundef nonnull @.str.6, i32 noundef %43) #14
  %45 = add i32 %44, %37
  %46 = add nuw nsw i32 %38, 1
  %47 = icmp eq i32 %46, 20
  br i1 %47, label %48, label %36

48:                                               ; preds = %36, %28, %26, %20, %16, %9
  %49 = phi ptr [ @.str.5, %9 ], [ @.str.5, %26 ], [ %30, %28 ], [ %18, %16 ], [ %24, %20 ], [ %34, %36 ]
  %50 = phi i32 [ 0, %9 ], [ 0, %26 ], [ %31, %28 ], [ %19, %16 ], [ %25, %20 ], [ %35, %36 ]
  %51 = phi i32 [ 0, %9 ], [ 0, %26 ], [ 0, %28 ], [ 0, %16 ], [ 0, %20 ], [ %45, %36 ]
  %52 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 1000, ptr noundef nonnull @.str.7, i32 noundef %50, ptr noundef %49, i32 noundef %51, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %3) #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #14
  call void @kfree(ptr noundef nonnull %5) #14
  br label %53

53:                                               ; preds = %48, %7
  %54 = phi i32 [ 0, %48 ], [ -14, %7 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm1_binary_bios_measurements_show(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca %struct.tcpa_event, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef align 4 dereferenceable(32) %1, i32 28, i1 false)
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tcpa_event, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tcpa_event, ptr %3, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tcpa_event, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tcpa_event, ptr %3, i32 0, i32 3
  store i32 %9, ptr %10, align 4
  %11 = trunc i32 %4 to i8
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %11) #14
  br label %16

12:                                               ; preds = %16
  %13 = icmp ult i32 %9, -32
  br i1 %13, label %14, label %28

14:                                               ; preds = %12
  %15 = add nuw i32 %9, 31
  br label %22

16:                                               ; preds = %16, %2
  %17 = phi i32 [ 1, %2 ], [ %20, %16 ]
  %18 = getelementptr i8, ptr %3, i32 %17
  %19 = load i8, ptr %18, align 1
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %19) #14
  %20 = add nuw nsw i32 %17, 1
  %21 = icmp eq i32 %20, 31
  br i1 %21, label %12, label %16

22:                                               ; preds = %22, %14
  %23 = phi i32 [ %26, %22 ], [ 31, %14 ]
  %24 = getelementptr i8, ptr %1, i32 %23
  %25 = load i8, ptr %24, align 1
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %25) #14
  %26 = add nuw i32 %23, 1
  %27 = icmp eq i32 %23, %15
  br i1 %27, label %28, label %22

28:                                               ; preds = %22, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind }

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
