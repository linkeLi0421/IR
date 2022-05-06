; ModuleID = '/llk/IR/drivers/iio/buffer/industrialio-hw-consumer.c_pt.bc'
source_filename = "../drivers/iio/buffer/industrialio-hw-consumer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_hw_consumer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_hw_consumer_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_iio_hw_consumer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_hw_consumer_free:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_hw_consumer_free\22\09\09\09\09\09"
module asm "__kstrtabns_iio_hw_consumer_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_hw_consumer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_hw_consumer_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_hw_consumer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_hw_consumer_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_hw_consumer_enable\22\09\09\09\09\09"
module asm "__kstrtabns_iio_hw_consumer_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_hw_consumer_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_hw_consumer_disable\22\09\09\09\09\09"
module asm "__kstrtabns_iio_hw_consumer_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_buffer_access_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.iio_hw_consumer = type { %struct.list_head, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hw_consumer_buffer = type { %struct.list_head, ptr, %struct.iio_buffer, [0 x i32] }
%struct.iio_buffer = type { i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.wait_queue_head, i32, i8, %struct.list_head, %struct.attribute_group, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }

@__kstrtab_iio_hw_consumer_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_hw_consumer_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_hw_consumer_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_hw_consumer_alloc to i32), ptr @__kstrtab_iio_hw_consumer_alloc, ptr @__kstrtabns_iio_hw_consumer_alloc }, section "___ksymtab_gpl+iio_hw_consumer_alloc", align 4
@__kstrtab_iio_hw_consumer_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_hw_consumer_free = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_hw_consumer_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_hw_consumer_free to i32), ptr @__kstrtab_iio_hw_consumer_free, ptr @__kstrtabns_iio_hw_consumer_free }, section "___ksymtab_gpl+iio_hw_consumer_free", align 4
@__kstrtab_devm_iio_hw_consumer_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_hw_consumer_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_hw_consumer_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_hw_consumer_alloc to i32), ptr @__kstrtab_devm_iio_hw_consumer_alloc, ptr @__kstrtabns_devm_iio_hw_consumer_alloc }, section "___ksymtab_gpl+devm_iio_hw_consumer_alloc", align 4
@__kstrtab_iio_hw_consumer_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_hw_consumer_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_hw_consumer_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_hw_consumer_enable to i32), ptr @__kstrtab_iio_hw_consumer_enable, ptr @__kstrtabns_iio_hw_consumer_enable }, section "___ksymtab_gpl+iio_hw_consumer_enable", align 4
@__kstrtab_iio_hw_consumer_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_hw_consumer_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_hw_consumer_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_hw_consumer_disable to i32), ptr @__kstrtab_iio_hw_consumer_disable, ptr @__kstrtabns_iio_hw_consumer_disable }, section "___ksymtab_gpl+iio_hw_consumer_disable", align 4
@__UNIQUE_ID_author166 = internal constant [44 x i8] c"author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description167 = internal constant [55 x i8] c"description=Hardware consumer buffer the IIO framework\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@iio_hw_buf_access = internal constant %struct.iio_buffer_access_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iio_hw_buf_release, i32 8, i32 0 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_license168, ptr @__ksymtab_devm_iio_hw_consumer_alloc, ptr @__ksymtab_iio_hw_consumer_alloc, ptr @__ksymtab_iio_hw_consumer_disable, ptr @__ksymtab_iio_hw_consumer_enable, ptr @__ksymtab_iio_hw_consumer_free], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iio_hw_consumer_alloc(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %1
  store volatile ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  %7 = tail call ptr @iio_channel_get_all(ptr noundef %0) #5
  %8 = getelementptr inbounds %struct.iio_hw_consumer, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 8
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %64, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %7, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %66, label %13

13:                                               ; preds = %46, %10
  %14 = phi ptr [ %55, %46 ], [ %11, %10 ]
  %15 = phi ptr [ %54, %46 ], [ %7, %10 ]
  %16 = getelementptr inbounds %struct.iio_dev, ptr %14, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, 31
  %19 = lshr i32 %18, 3
  %20 = and i32 %19, 536870908
  br label %21

21:                                               ; preds = %25, %13
  %22 = phi ptr [ %3, %13 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %41, label %21

29:                                               ; preds = %21
  %30 = add nuw nsw i32 %20, 120
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %31, i32 0, i32 2
  %35 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %31, i32 0, i32 2, i32 4
  store ptr @iio_hw_buf_access, ptr %35, align 4
  %36 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %31, i32 0, i32 1
  store ptr %14, ptr %36, align 8
  %37 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %31, i32 0, i32 3
  %38 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %31, i32 0, i32 2, i32 5
  store ptr %37, ptr %38, align 32
  tail call void @iio_buffer_init(ptr noundef %34) #5
  %39 = load ptr, ptr %6, align 4
  store ptr %31, ptr %6, align 4
  store ptr %3, ptr %31, align 64
  %40 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %31, ptr %39, align 4
  br label %46

41:                                               ; preds = %25
  %42 = icmp eq ptr %23, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %41, %29
  %44 = load ptr, ptr %3, align 8
  %45 = icmp eq ptr %44, %3
  br i1 %45, label %62, label %57

46:                                               ; preds = %41, %33
  %47 = phi ptr [ %31, %33 ], [ %23, %41 ]
  %48 = getelementptr inbounds %struct.iio_channel, ptr %15, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.iio_chan_spec, ptr %49, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %47, i32 0, i32 2, i32 5
  %53 = load ptr, ptr %52, align 4
  tail call void @_set_bit(i32 noundef %51, ptr noundef %53) #5
  %54 = getelementptr %struct.iio_channel, ptr %15, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %13

57:                                               ; preds = %57, %43
  %58 = phi ptr [ %60, %57 ], [ %44, %43 ]
  %59 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %58, i32 0, i32 2
  tail call void @iio_buffer_put(ptr noundef %59) #5
  %60 = load ptr, ptr %58, align 4
  %61 = icmp eq ptr %60, %3
  br i1 %61, label %62, label %57

62:                                               ; preds = %57, %43
  %63 = load ptr, ptr %8, align 8
  tail call void @iio_channel_release_all(ptr noundef %63) #5
  br label %64

64:                                               ; preds = %62, %5
  %65 = phi ptr [ inttoptr (i32 -12 to ptr), %62 ], [ %7, %5 ]
  tail call void @kfree(ptr noundef nonnull %3) #5
  br label %66

66:                                               ; preds = %64, %46, %10, %1
  %67 = phi ptr [ %65, %64 ], [ inttoptr (i32 -12 to ptr), %1 ], [ %3, %10 ], [ %3, %46 ]
  ret ptr %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_hw_consumer_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_hw_consumer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @iio_channel_release_all(ptr noundef %3) #5
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %7, i32 0, i32 2
  tail call void @iio_buffer_put(ptr noundef %9) #5
  %10 = icmp eq ptr %8, %0
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_iio_hw_consumer_alloc(ptr noundef %0) #0 {
  %2 = tail call ptr @iio_hw_consumer_alloc(ptr noundef %0)
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_iio_hw_consumer_release, ptr noundef %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.iio_hw_consumer, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @iio_channel_release_all(ptr noundef %9) #5
  %10 = load ptr, ptr %2, align 4
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %17, label %12

12:                                               ; preds = %12, %7
  %13 = phi ptr [ %14, %12 ], [ %10, %7 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %13, i32 0, i32 2
  tail call void @iio_buffer_put(ptr noundef %15) #5
  %16 = icmp eq ptr %14, %2
  br i1 %16, label %17, label %12

17:                                               ; preds = %12, %7
  tail call void @kfree(ptr noundef %2) #5
  %18 = inttoptr i32 %5 to ptr
  br label %19

19:                                               ; preds = %17, %4, %1
  %20 = phi ptr [ %18, %17 ], [ %2, %1 ], [ %2, %4 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_iio_hw_consumer_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_hw_consumer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @iio_channel_release_all(ptr noundef %3) #5
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %7, i32 0, i32 2
  tail call void @iio_buffer_put(ptr noundef %9) #5
  %10 = icmp eq ptr %8, %0
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_hw_consumer_enable(ptr noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %4, i32 0, i32 2
  %10 = tail call i32 @iio_update_buffers(ptr noundef %8, ptr noundef %9, ptr noundef null) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %2, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %25, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %23, %16 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %17, i32 0, i32 2
  %21 = tail call i32 @iio_update_buffers(ptr noundef %19, ptr noundef null, ptr noundef %20) #5
  %22 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %16

25:                                               ; preds = %16, %12, %2
  %26 = phi i32 [ %10, %12 ], [ %10, %16 ], [ 0, %2 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_update_buffers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_hw_consumer_disable(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %12, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %10, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hw_consumer_buffer, ptr %5, i32 0, i32 2
  %9 = tail call i32 @iio_update_buffers(ptr noundef %7, ptr noundef null, ptr noundef %8) #5
  %10 = load ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iio_hw_buf_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  tail call void @kfree(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
