; ModuleID = '/llk/IR/drivers/ptp/ptp_vclock.c_pt.bc'
source_filename = "../drivers/ptp/ptp_vclock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_get_vclocks_index:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_get_vclocks_index\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_get_vclocks_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_convert_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_convert_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_convert_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ptp_vclock = type { ptr, %struct.ptp_clock_info, ptr, %struct.cyclecounter, %struct.timecounter, %struct.spinlock }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, ptr, i32, i32, ptr, i32, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], ptr, %struct.kthread_delayed_work, i32, i32, ptr, %struct.mutex, i8 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.timespec64 = type { i64, i32 }

@ptp_vclock_info = internal unnamed_addr constant %struct.ptp_clock_info { ptr null, [32 x i8] c"ptp virtual clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32767999, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @ptp_vclock_adjfine, ptr null, ptr null, ptr @ptp_vclock_adjtime, ptr @ptp_vclock_gettime, ptr null, ptr null, ptr @ptp_vclock_settime, ptr null, ptr null, ptr @ptp_vclock_refresh }, align 4
@ptp_vclock_cc = internal unnamed_addr constant %struct.cyclecounter { ptr @ptp_vclock_read, i64 4294967295, i32 -2147483648, i32 31 }, align 8
@.str = private unnamed_addr constant [11 x i8] c"ptp%d_virt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ptp%d\00", align 1
@ptp_class = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ptp_get_vclocks_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_get_vclocks_index = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_get_vclocks_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_get_vclocks_index to i32), ptr @__kstrtab_ptp_get_vclocks_index, ptr @__kstrtabns_ptp_get_vclocks_index }, section "___ksymtab+ptp_get_vclocks_index", align 4
@__kstrtab_ptp_convert_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_convert_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_convert_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_convert_timestamp to i32), ptr @__kstrtab_ptp_convert_timestamp, ptr @__kstrtabns_ptp_convert_timestamp }, section "___ksymtab+ptp_convert_timestamp", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ptp_convert_timestamp, ptr @__ksymtab_ptp_get_vclocks_index], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ptp_vclock_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 192) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(108) %6, ptr noundef nonnull align 4 dereferenceable(108) @ptp_vclock_info, i32 108, i1 false)
  %7 = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @ptp_vclock_cc, i32 24, i1 false)
  %8 = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 1, i32 1
  %9 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %8, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %10)
  %12 = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 5
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 1
  %14 = tail call ptr @ptp_clock_register(ptr noundef %6, ptr noundef %13) #9
  %15 = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 2
  store ptr %14, ptr %15, align 8
  %16 = icmp eq ptr %14, null
  %17 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %24

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.ptp_vclock, ptr %3, i32 0, i32 4
  tail call void @timecounter_init(ptr noundef %21, ptr noundef %7, i64 noundef 0) #9
  %22 = load ptr, ptr %15, align 8
  %23 = tail call i32 @ptp_schedule_worker(ptr noundef %22, i32 noundef 200) #9
  br label %24

24:                                               ; preds = %20, %19, %1
  %25 = phi ptr [ null, %19 ], [ %3, %20 ], [ null, %1 ]
  ret ptr %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ptp_vclock_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ptp_vclock, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ptp_clock_unregister(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_get_vclocks_index(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %4 = icmp slt i32 %0, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %0)
  %7 = load ptr, ptr @ptp_class, align 4
  %8 = call ptr @class_find_device(ptr noundef %7, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @device_match_name) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ptp_clock, ptr %12, i32 0, i32 21
  %14 = call i32 @mutex_lock_interruptible(ptr noundef %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ptp_clock, ptr %12, i32 0, i32 19
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 2
  %20 = call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #10
  store ptr %20, ptr %1, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ptp_clock, ptr %12, i32 0, i32 20
  %24 = load ptr, ptr %23, align 8
  %25 = load i32, ptr %17, align 4
  %26 = shl i32 %25, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %20, ptr align 4 %24, i32 %26, i1 false)
  %27 = load i32, ptr %17, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi i32 [ %27, %22 ], [ 0, %16 ]
  call void @mutex_unlock(ptr noundef %13) #9
  br label %30

30:                                               ; preds = %28, %10
  %31 = phi i32 [ %29, %28 ], [ 0, %10 ]
  call void @put_device(ptr noundef nonnull %8) #9
  br label %32

32:                                               ; preds = %30, %5, %2
  %33 = phi i32 [ 0, %2 ], [ 0, %5 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i32 %33
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ptp_convert_timestamp(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %1)
  %5 = load ptr, ptr @ptp_class, align 4
  %6 = call ptr @class_find_device(ptr noundef %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @device_match_name) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ptp_clock, ptr %10, i32 0, i32 22
  %12 = load i8, ptr %11, align 8, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ptp_clock, ptr %10, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = load i64, ptr %0, align 8
  %18 = getelementptr i8, ptr %16, i32 180
  %19 = call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #9
  %20 = getelementptr i8, ptr %16, i32 140
  %21 = call i64 @timecounter_cyc2time(ptr noundef %20, i64 noundef %17) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #9
  br label %22

22:                                               ; preds = %14, %8
  %23 = phi i64 [ %21, %14 ], [ 0, %8 ]
  call void @put_device(ptr noundef nonnull %6) #9
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i64 [ 0, %2 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i64 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_vclock_adjfine(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = call i64 @div_s64_rem(i64 noundef %5, i32 noundef 15625, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %7 = getelementptr i8, ptr %0, i32 180
  %8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %9 = getelementptr i8, ptr %0, i32 140
  %10 = call i64 @timecounter_read(ptr noundef %9) #9
  %11 = trunc i64 %6 to i32
  %12 = xor i32 %11, -2147483648
  %13 = getelementptr i8, ptr %0, i32 132
  store i32 %12, ptr %13, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_vclock_adjtime(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 180
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr i8, ptr %0, i32 156
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, %1
  store i64 %7, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_vclock_gettime(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr i8, ptr %0, i32 180
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr i8, ptr %0, i32 140
  %7 = tail call i64 @timecounter_read(ptr noundef %6) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %7) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_vclock_settime(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp sgt i64 %3, 9223372035
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp slt i64 %3, -9223372035
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = mul nsw i64 %3, 1000000000
  %9 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = sext i32 %10 to i64
  %12 = add i64 %8, %11
  br label %13

13:                                               ; preds = %7, %5, %2
  %14 = phi i64 [ %12, %7 ], [ 9223372036854775807, %2 ], [ -9223372036854775808, %5 ]
  %15 = getelementptr i8, ptr %0, i32 180
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #9
  %17 = getelementptr i8, ptr %0, i32 140
  %18 = getelementptr i8, ptr %0, i32 116
  tail call void @timecounter_init(ptr noundef %17, ptr noundef %18, i64 noundef %14) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_vclock_refresh(ptr noundef %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr i8, ptr %0, i32 180
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr i8, ptr %0, i32 140
  %6 = tail call i64 @timecounter_read(ptr noundef %5) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret i32 200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ptp_vclock_read(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr i8, ptr %0, i32 -120
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %5 = getelementptr inbounds %struct.ptp_clock, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ptp_clock_info, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 %8(ptr noundef %6, ptr noundef nonnull %2, ptr noundef null) #9
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ptp_clock_info, ptr %6, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %6, ptr noundef nonnull %2) #9
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i64, ptr %2, align 8
  %18 = icmp sgt i64 %17, 9223372035
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = icmp slt i64 %17, -9223372035
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = mul nsw i64 %17, 1000000000
  %23 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add i64 %22, %25
  br label %27

27:                                               ; preds = %21, %19, %16
  %28 = phi i64 [ %26, %21 ], [ 9223372036854775807, %16 ], [ -9223372036854775808, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret i64 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
