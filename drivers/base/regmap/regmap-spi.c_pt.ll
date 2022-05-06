; ModuleID = '/llk/IR/drivers/base/regmap/regmap-spi.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-spi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_spi\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_spi\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.regmap_async_spi = type { %struct.regmap_async, %struct.spi_message, [2 x %struct.spi_transfer] }
%struct.regmap_async = type { %struct.list_head, ptr, ptr }

@__kstrtab___regmap_init_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_spi = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_spi to i32), ptr @__kstrtab___regmap_init_spi, ptr @__kstrtabns___regmap_init_spi }, section "___ksymtab_gpl+__regmap_init_spi", align 4
@__kstrtab___devm_regmap_init_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_spi = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_spi to i32), ptr @__kstrtab___devm_regmap_init_spi, ptr @__kstrtabns___devm_regmap_init_spi }, section "___ksymtab_gpl+__devm_regmap_init_spi", align 4
@__UNIQUE_ID_file222 = internal constant [47 x i8] c"regmap_spi.file=drivers/base/regmap/regmap-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [23 x i8] c"regmap_spi.license=GPL\00", section ".modinfo", align 1
@regmap_spi = internal constant %struct.regmap_bus { i8 0, ptr @regmap_spi_write, ptr @regmap_spi_gather_write, ptr @regmap_spi_async_write, ptr null, ptr null, ptr @regmap_spi_read, ptr null, ptr null, ptr @regmap_spi_async_alloc, i8 -128, i32 1, i32 1, i32 0, i32 0, i8 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license223, ptr @__ksymtab___devm_regmap_init_spi, ptr @__ksymtab___regmap_init_spi], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_spi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %0) #6
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -1, %4 ]
  %14 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 13
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 %15(ptr noundef %0) #6
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ -1, %12 ]
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %13) #6
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @kmemdup(ptr noundef nonnull @regmap_spi, i32 noundef 64, i32 noundef 3264) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.regmap_bus, ptr %24, i32 0, i32 15
  store i8 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.regmap_bus, ptr %24, i32 0, i32 13
  store i32 %21, ptr %28, align 4
  %29 = getelementptr inbounds %struct.regmap_bus, ptr %24, i32 0, i32 14
  store i32 %21, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi ptr [ %24, %26 ], [ @regmap_spi, %19 ]
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @__regmap_init(ptr noundef %0, ptr noundef nonnull %31, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  br label %35

35:                                               ; preds = %33, %30, %23
  %36 = phi ptr [ %34, %33 ], [ %31, %30 ], [ inttoptr (i32 -12 to ptr), %23 ]
  ret ptr %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_spi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %0) #6
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -1, %4 ]
  %14 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 13
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 %15(ptr noundef %0) #6
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ -1, %12 ]
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %13) #6
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @kmemdup(ptr noundef nonnull @regmap_spi, i32 noundef 64, i32 noundef 3264) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.regmap_bus, ptr %24, i32 0, i32 15
  store i8 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.regmap_bus, ptr %24, i32 0, i32 13
  store i32 %21, ptr %28, align 4
  %29 = getelementptr inbounds %struct.regmap_bus, ptr %24, i32 0, i32 14
  store i32 %21, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi ptr [ %24, %26 ], [ @regmap_spi, %19 ]
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @__devm_regmap_init(ptr noundef %0, ptr noundef nonnull %31, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  br label %35

35:                                               ; preds = %33, %30, %23
  %36 = phi ptr [ %34, %33 ], [ %31, %30 ], [ inttoptr (i32 -12 to ptr), %23 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_spi_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #6
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %6, i8 0, i64 92, i1 false) #6
  store ptr %1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 %2, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #6
  %8 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %8, i8 0, i64 40, i1 false) #6
  store volatile ptr %4, ptr %4, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %12, ptr %9, align 4
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %4, ptr %13, align 4
  store volatile ptr %12, ptr %4, align 4
  %14 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #6
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_spi_gather_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca [2 x %struct.spi_transfer], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #6
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(188) %8, i8 0, i64 188, i1 false)
  store ptr %1, ptr %7, align 4
  %9 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 1
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 1, i32 2
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %12, i8 0, i32 40, i1 false) #6
  store volatile ptr %6, ptr %6, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  %17 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  store ptr %6, ptr %17, align 4
  store volatile ptr %16, ptr %6, align 4
  %18 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %7, i32 0, i32 1, i32 18
  store ptr %18, ptr %13, align 4
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %7, i32 0, i32 1, i32 18, i32 1
  store ptr %16, ptr %19, align 4
  store volatile ptr %18, ptr %16, align 4
  %20 = call i32 @spi_sync(ptr noundef %0, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #6
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_spi_async_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 2, i32 0, i32 2
  store i32 %2, ptr %8, align 4
  %9 = getelementptr %struct.regmap_async_spi, ptr %5, i32 0, i32 2, i32 1
  store ptr %3, ptr %9, align 4
  %10 = getelementptr %struct.regmap_async_spi, ptr %5, i32 0, i32 2, i32 1, i32 2
  store i32 %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 1, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %12, i8 0, i32 40, i1 false) #6
  store volatile ptr %11, ptr %11, align 4
  %13 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 1, i32 10
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 1, i32 10, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 2, i32 0, i32 18
  store ptr %16, ptr %13, align 4
  store ptr %11, ptr %16, align 4
  %17 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 2, i32 0, i32 18, i32 1
  store ptr %11, ptr %17, align 4
  store volatile ptr %16, ptr %11, align 4
  %18 = icmp eq ptr %3, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = getelementptr %struct.regmap_async_spi, ptr %5, i32 0, i32 2, i32 1, i32 18
  store ptr %20, ptr %13, align 4
  store ptr %11, ptr %20, align 4
  %21 = getelementptr %struct.regmap_async_spi, ptr %5, i32 0, i32 2, i32 1, i32 18, i32 1
  store ptr %16, ptr %21, align 4
  store volatile ptr %20, ptr %16, align 4
  br label %22

22:                                               ; preds = %19, %6
  %23 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 1, i32 3
  store ptr @regmap_spi_complete, ptr %23, align 4
  %24 = getelementptr inbounds %struct.regmap_async_spi, ptr %5, i32 0, i32 1, i32 4
  store ptr %5, ptr %24, align 4
  %25 = tail call i32 @spi_async(ptr noundef %0, ptr noundef %11) #6
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_spi_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = tail call i32 @spi_write_then_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @regmap_spi_async_alloc() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 264) #7
  ret ptr %2
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_spi_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.regmap_async_spi, ptr %0, i32 0, i32 1, i32 7
  %3 = load i32, ptr %2, align 4
  tail call void @regmap_async_complete_cb(ptr noundef %0, i32 noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_async(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_async_complete_cb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
