; ModuleID = '/llk/IR/drivers/iio/buffer/industrialio-buffer-cb.c_pt.bc'
source_filename = "../drivers/iio/buffer/industrialio-buffer-cb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_get_all_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_get_all_cb\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_get_all_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_cb_set_buffer_watermark:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_cb_set_buffer_watermark\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_cb_set_buffer_watermark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_start_all_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_start_all_cb\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_start_all_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_stop_all_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_stop_all_cb\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_stop_all_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_release_all_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_release_all_cb\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_release_all_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_cb_get_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_cb_get_channels\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_cb_get_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_cb_get_iio_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_cb_get_iio_dev\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_cb_get_iio_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.iio_buffer_access_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_cb_buffer = type { %struct.iio_buffer, ptr, ptr, ptr, ptr }
%struct.iio_buffer = type { i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.wait_queue_head, i32, i8, %struct.list_head, %struct.attribute_group, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Invalid arguments: A callback must be provided!\0A\00", align 1
@iio_cb_access = internal constant %struct.iio_buffer_access_funcs { ptr @iio_buffer_cb_store_to, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iio_buffer_cb_release, i32 6, i32 0 }, align 4
@__kstrtab_iio_channel_get_all_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_get_all_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_get_all_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_get_all_cb to i32), ptr @__kstrtab_iio_channel_get_all_cb, ptr @__kstrtabns_iio_channel_get_all_cb }, section "___ksymtab_gpl+iio_channel_get_all_cb", align 4
@__kstrtab_iio_channel_cb_set_buffer_watermark = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_cb_set_buffer_watermark = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_cb_set_buffer_watermark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_cb_set_buffer_watermark to i32), ptr @__kstrtab_iio_channel_cb_set_buffer_watermark, ptr @__kstrtabns_iio_channel_cb_set_buffer_watermark }, section "___ksymtab_gpl+iio_channel_cb_set_buffer_watermark", align 4
@__kstrtab_iio_channel_start_all_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_start_all_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_start_all_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_start_all_cb to i32), ptr @__kstrtab_iio_channel_start_all_cb, ptr @__kstrtabns_iio_channel_start_all_cb }, section "___ksymtab_gpl+iio_channel_start_all_cb", align 4
@__kstrtab_iio_channel_stop_all_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_stop_all_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_stop_all_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_stop_all_cb to i32), ptr @__kstrtab_iio_channel_stop_all_cb, ptr @__kstrtabns_iio_channel_stop_all_cb }, section "___ksymtab_gpl+iio_channel_stop_all_cb", align 4
@__kstrtab_iio_channel_release_all_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_release_all_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_release_all_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_release_all_cb to i32), ptr @__kstrtab_iio_channel_release_all_cb, ptr @__kstrtabns_iio_channel_release_all_cb }, section "___ksymtab_gpl+iio_channel_release_all_cb", align 4
@__kstrtab_iio_channel_cb_get_channels = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_cb_get_channels = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_cb_get_channels = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_cb_get_channels to i32), ptr @__kstrtab_iio_channel_cb_get_channels, ptr @__kstrtabns_iio_channel_cb_get_channels }, section "___ksymtab_gpl+iio_channel_cb_get_channels", align 4
@__kstrtab_iio_channel_cb_get_iio_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_cb_get_iio_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_cb_get_iio_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_cb_get_iio_dev to i32), ptr @__kstrtab_iio_channel_cb_get_iio_dev, ptr @__kstrtabns_iio_channel_cb_get_iio_dev }, section "___ksymtab_gpl+iio_channel_cb_get_iio_dev", align 4
@__UNIQUE_ID_author166 = internal constant [43 x i8] c"author=Jonathan Cameron <jic23@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description167 = internal constant [43 x i8] c"description=Industrial I/O callback buffer\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_license168, ptr @__ksymtab_iio_channel_cb_get_channels, ptr @__ksymtab_iio_channel_cb_get_iio_dev, ptr @__ksymtab_iio_channel_cb_set_buffer_watermark, ptr @__ksymtab_iio_channel_get_all_cb, ptr @__ksymtab_iio_channel_release_all_cb, ptr @__ksymtab_iio_channel_start_all_cb, ptr @__ksymtab_iio_channel_stop_all_cb], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iio_channel_get_all_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #6
  br label %55

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 124) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %6
  tail call void @iio_buffer_init(ptr noundef nonnull %8) #8
  %11 = getelementptr inbounds %struct.iio_cb_buffer, ptr %8, i32 0, i32 2
  store ptr %2, ptr %11, align 8
  %12 = getelementptr inbounds %struct.iio_cb_buffer, ptr %8, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.iio_buffer, ptr %8, i32 0, i32 4
  store ptr @iio_cb_access, ptr %13, align 8
  %14 = getelementptr inbounds %struct.iio_buffer, ptr %8, i32 0, i32 6
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.iio_buffer, ptr %8, i32 0, i32 6, i32 1
  store ptr %14, ptr %15, align 4
  %16 = tail call ptr @iio_channel_get_all(ptr noundef %0) #8
  %17 = getelementptr inbounds %struct.iio_cb_buffer, ptr %8, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = ptrtoint ptr %16 to i32
  br label %52

21:                                               ; preds = %10
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr inbounds %struct.iio_cb_buffer, ptr %8, i32 0, i32 4
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.iio_dev, ptr %22, i32 0, i32 7
  %25 = load i32, ptr %24, align 8
  %26 = tail call ptr @bitmap_zalloc(i32 noundef %25, i32 noundef 3264) #8
  %27 = getelementptr inbounds %struct.iio_buffer, ptr %8, i32 0, i32 5
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %17, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %55, label %33

33:                                               ; preds = %40, %29
  %34 = phi ptr [ %47, %40 ], [ %31, %29 ]
  %35 = phi ptr [ %46, %40 ], [ %30, %29 ]
  %36 = load ptr, ptr %23, align 8
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %27, align 4
  tail call void @bitmap_free(ptr noundef %39) #8
  br label %49

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.iio_channel, ptr %35, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.iio_chan_spec, ptr %42, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %27, align 4
  tail call void @_set_bit(i32 noundef %44, ptr noundef %45) #8
  %46 = getelementptr %struct.iio_channel, ptr %35, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %33

49:                                               ; preds = %38, %21
  %50 = phi i32 [ -22, %38 ], [ -12, %21 ]
  %51 = load ptr, ptr %17, align 4
  tail call void @iio_channel_release_all(ptr noundef %51) #8
  br label %52

52:                                               ; preds = %49, %19
  %53 = phi i32 [ %20, %19 ], [ %50, %49 ]
  tail call void @kfree(ptr noundef nonnull %8) #8
  %54 = inttoptr i32 %53 to ptr
  br label %55

55:                                               ; preds = %52, %40, %29, %6, %5
  %56 = phi ptr [ %54, %52 ], [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -12 to ptr), %6 ], [ %8, %29 ], [ %8, %40 ]
  ret ptr %56
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @iio_channel_cb_set_buffer_watermark(ptr nocapture noundef writeonly %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 8
  store i32 %1, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_channel_start_all_cb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_cb_buffer, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @iio_update_buffers(ptr noundef %3, ptr noundef %0, ptr noundef null) #8
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_update_buffers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_channel_stop_all_cb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_cb_buffer, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @iio_update_buffers(ptr noundef %3, ptr noundef null, ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_channel_release_all_cb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_cb_buffer, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @iio_channel_release_all(ptr noundef %3) #8
  tail call void @iio_buffer_put(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @iio_channel_cb_get_channels(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.iio_cb_buffer, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @iio_channel_cb_get_iio_dev(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.iio_cb_buffer, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_cb_store_to(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iio_cb_buffer, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iio_cb_buffer, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %4(ptr noundef %1, ptr noundef %6) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iio_buffer_cb_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @bitmap_free(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }

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
