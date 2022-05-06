; ModuleID = '/llk/IR/drivers/iio/buffer/kfifo_buf.c_pt.bc'
source_filename = "../drivers/iio/buffer/kfifo_buf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_kfifo_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_kfifo_allocate\22\09\09\09\09\09"
module asm "__kstrtabns_iio_kfifo_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_kfifo_free:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_kfifo_free\22\09\09\09\09\09"
module asm "__kstrtabns_iio_kfifo_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_kfifo_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_kfifo_buffer_setup_ext\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_kfifo_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.iio_buffer_access_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_kfifo = type { %struct.iio_buffer, %struct.kfifo, %struct.mutex, i32 }
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
%struct.kfifo = type { %union.anon.66, [0 x i8] }
%union.anon.66 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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

@kfifo_access_funcs = internal constant %struct.iio_buffer_access_funcs { ptr @iio_store_to_kfifo, ptr @iio_read_kfifo, ptr @iio_kfifo_buf_data_available, ptr @iio_kfifo_remove_from, ptr @iio_kfifo_write, ptr @iio_kfifo_buf_space_available, ptr @iio_request_update_kfifo, ptr @iio_set_bytes_per_datum_kfifo, ptr @iio_set_length_kfifo, ptr null, ptr null, ptr @iio_kfifo_buffer_release, i32 6, i32 0 }, align 4
@iio_kfifo_allocate.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&kf->user_lock\00", align 1
@__kstrtab_iio_kfifo_allocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_kfifo_allocate = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_kfifo_allocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_kfifo_allocate to i32), ptr @__kstrtab_iio_kfifo_allocate, ptr @__kstrtabns_iio_kfifo_allocate }, section "___ksymtab+iio_kfifo_allocate", align 4
@__kstrtab_iio_kfifo_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_kfifo_free = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_kfifo_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_kfifo_free to i32), ptr @__kstrtab_iio_kfifo_free, ptr @__kstrtabns_iio_kfifo_free }, section "___ksymtab+iio_kfifo_free", align 4
@__kstrtab_devm_iio_kfifo_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_kfifo_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_kfifo_buffer_setup_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_kfifo_buffer_setup_ext to i32), ptr @__kstrtab_devm_iio_kfifo_buffer_setup_ext, ptr @__kstrtabns_devm_iio_kfifo_buffer_setup_ext }, section "___ksymtab_gpl+devm_iio_kfifo_buffer_setup_ext", align 4
@__UNIQUE_ID_file220 = internal constant [44 x i8] c"kfifo_buf.file=drivers/iio/buffer/kfifo_buf\00", section ".modinfo", align 1
@__UNIQUE_ID_license221 = internal constant [22 x i8] c"kfifo_buf.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"devm_iio_kfifo_release\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file220, ptr @__UNIQUE_ID_license221, ptr @__ksymtab_devm_iio_kfifo_buffer_setup_ext, ptr @__ksymtab_iio_kfifo_allocate, ptr @__ksymtab_iio_kfifo_free], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iio_kfifo_allocate() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 152) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.iio_kfifo, ptr %2, i32 0, i32 3
  store i32 1, ptr %5, align 4
  tail call void @iio_buffer_init(ptr noundef nonnull %2) #8
  %6 = getelementptr inbounds %struct.iio_buffer, ptr %2, i32 0, i32 4
  store ptr @kfifo_access_funcs, ptr %6, align 8
  store i32 2, ptr %2, align 8
  %7 = getelementptr inbounds %struct.iio_kfifo, ptr %2, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @iio_kfifo_allocate.__key) #8
  br label %8

8:                                                ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_kfifo_free(ptr noundef %0) #0 {
  tail call void @iio_buffer_put(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_iio_kfifo_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 152) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @devres_free(ptr noundef nonnull %8) #8
  br label %25

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.iio_kfifo, ptr %12, i32 0, i32 3
  store i32 1, ptr %16, align 4
  tail call void @iio_buffer_init(ptr noundef nonnull %12) #8
  %17 = getelementptr inbounds %struct.iio_buffer, ptr %12, i32 0, i32 4
  store ptr @kfifo_access_funcs, ptr %17, align 8
  store i32 2, ptr %12, align 8
  %18 = getelementptr inbounds %struct.iio_kfifo, ptr %12, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @iio_kfifo_allocate.__key) #8
  store ptr %12, ptr %8, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %8) #8
  %19 = and i32 %2, 6
  %20 = load i32, ptr %1, align 8
  %21 = or i32 %20, %19
  store i32 %21, ptr %1, align 8
  %22 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 18
  store ptr %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.iio_buffer, ptr %12, i32 0, i32 12
  store ptr %4, ptr %23, align 8
  %24 = tail call i32 @iio_device_attach_buffer(ptr noundef %1, ptr noundef nonnull %12) #8
  br label %25

25:                                               ; preds = %15, %14, %7, %5
  %26 = phi i32 [ %24, %15 ], [ -22, %5 ], [ -12, %7 ], [ -12, %14 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_attach_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_store_to_kfifo(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1
  %4 = tail call i32 @__kfifo_in(ptr noundef %3, ptr noundef %1, i32 noundef 1) #8
  %5 = icmp eq i32 %4, 1
  %6 = select i1 %5, i32 0, i32 -16
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_read_kfifo(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 2
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %8
  tail call void @mutex_unlock(ptr noundef %5) #8
  br label %22

18:                                               ; preds = %13
  %19 = call i32 @__kfifo_to_user(ptr noundef %9, ptr noundef %2, i32 noundef %1, ptr noundef nonnull %4) #8
  call void @mutex_unlock(ptr noundef %5) #8
  %20 = icmp slt i32 %19, 0
  %21 = load i32, ptr %4, align 4
  br i1 %20, label %22, label %24

22:                                               ; preds = %18, %17
  %23 = phi i32 [ -22, %17 ], [ %19, %18 ]
  br label %24

24:                                               ; preds = %22, %18, %3
  %25 = phi i32 [ -512, %3 ], [ %23, %22 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_kfifo_buf_data_available(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  tail call void @mutex_unlock(ptr noundef %2) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_kfifo_remove_from(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1
  %8 = tail call i32 @__kfifo_out(ptr noundef %7, ptr noundef %1, i32 noundef 1) #8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %11, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 260 to ptr)) #8
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i32 [ 0, %10 ], [ -16, %2 ], [ -16, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_kfifo_write(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  tail call void @mutex_unlock(ptr noundef %5) #8
  br label %20

15:                                               ; preds = %10
  %16 = call i32 @__kfifo_from_user(ptr noundef %6, ptr noundef %2, i32 noundef %1, ptr noundef nonnull %4) #8
  call void @mutex_unlock(ptr noundef %5) #8
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %4, align 4
  %19 = select i1 %17, i32 %18, i32 %16
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i32 [ -22, %14 ], [ %19, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_kfifo_buf_space_available(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %5, 1
  %10 = sub i32 %9, %6
  %11 = add i32 %10, %8
  tail call void @mutex_unlock(ptr noundef %2) #8
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_request_update_kfifo(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1
  br i1 %5, label %27, label %7

7:                                                ; preds = %1
  tail call void @__kfifo_free(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %0, align 4
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i32 %9, 0
  %13 = or i1 %12, %11
  br i1 %13, label %30, label %14

14:                                               ; preds = %7
  %15 = add i32 %10, -1
  %16 = icmp eq i32 %15, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 false) #8, !range !9
  %18 = sub nuw nsw i32 32, %17
  %19 = shl nuw i32 1, %18
  %20 = select i1 %16, i32 1, i32 %19
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 %20) #8
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = tail call i32 @__kfifo_alloc(ptr noundef %6, i32 noundef %10, i32 noundef %9, i32 noundef 3264) #8
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  store i32 0, ptr %3, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load i32, ptr %6, align 4
  %29 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %26, %23, %14, %7
  %31 = phi i32 [ %24, %26 ], [ %24, %23 ], [ 0, %27 ], [ -22, %7 ], [ -22, %14 ]
  tail call void @mutex_unlock(ptr noundef %2) #8
  ret i32 %31
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @iio_set_bytes_per_datum_kfifo(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  %7 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 3
  store i32 1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @iio_set_length_kfifo(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, %3
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  store i32 %3, ptr %0, align 4
  %7 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 3
  store i32 1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iio_kfifo_buffer_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_kfifo, ptr %0, i32 0, i32 1
  tail call void @__kfifo_free(ptr noundef %2) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_from_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_iio_kfifo_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @iio_buffer_put(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
