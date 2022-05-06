; ModuleID = '/llk/IR/kernel/dma/contiguous.c_pt.bc'
source_filename = "../kernel/dma/contiguous.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reserved_mem_ops = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }

@__setup_str_early_cma = internal constant [4 x i8] c"cma\00", section ".init.rodata", align 1
@__setup_early_cma = internal global %struct.obs_kernel_param { ptr @__setup_str_early_cma, ptr @early_cma, i32 1 }, section ".init.setup", align 4
@size_cmdline = internal unnamed_addr global i32 -1, section ".init.data", align 4
@base_cmdline = internal unnamed_addr global i32 0, section ".init.data", align 4
@limit_cmdline = internal unnamed_addr global i32 0, section ".init.data", align 4
@dma_contiguous_default_area = dso_local global ptr null, align 4
@.str = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@__of_table_cma = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"shared-dma-pool\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rmem_cma_setup }, section "__reservedmem_of_table", align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\013cma: Config string not provided\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"linux,cma-default\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"\016Reserved memory: bypass %s node, using cmdline CMA params instead\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"reusable\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"no-map\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"\013Reserved memory: incorrect alignment of CMA region\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\013Reserved memory: unable to setup CMA region\0A\00", align 1
@rmem_cma_ops = internal constant %struct.reserved_mem_ops { ptr @rmem_cma_device_init, ptr @rmem_cma_device_release }, align 4
@.str.8 = private unnamed_addr constant [65 x i8] c"\016Reserved memory: created CMA memory pool at %pa, size %ld MiB\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_cma, ptr @__setup_early_cma], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_cma(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %26

6:                                                ; preds = %1
  %7 = call i64 @memparse(ptr noundef nonnull %0, ptr noundef nonnull %2) #9
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr @size_cmdline, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 64
  br i1 %11, label %12, label %26

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %9, i32 1
  %14 = call i64 @memparse(ptr noundef %13, ptr noundef nonnull %2) #9
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr @base_cmdline, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 45
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr @size_cmdline, align 4
  %21 = add i32 %20, %15
  store i32 %21, ptr @limit_cmdline, align 4
  br label %26

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %16, i32 1
  %24 = call i64 @memparse(ptr noundef %23, ptr noundef nonnull %2) #9
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr @limit_cmdline, align 4
  br label %26

26:                                               ; preds = %22, %19, %6, %4
  %27 = phi i32 [ 0, %19 ], [ 0, %22 ], [ -22, %4 ], [ 0, %6 ]
  ret i32 %27
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @dma_contiguous_reserve(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = load i32, ptr @size_cmdline, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @base_cmdline, align 4
  %6 = load i32, ptr @limit_cmdline, align 4
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i32 %0, 0
  %9 = tail call i32 @llvm.umin.i32(i32 %6, i32 %0)
  %10 = select i1 %8, i32 %6, i32 %9
  %11 = select i1 %7, i32 %0, i32 %10
  %12 = add i32 %5, %2
  %13 = icmp eq i32 %12, %6
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i1 [ %13, %4 ], [ false, %1 ]
  %16 = phi i32 [ %11, %4 ], [ %0, %1 ]
  %17 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %18 = phi i32 [ %2, %4 ], [ 67108864, %1 ]
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr @dma_contiguous_default_area, align 4
  %21 = icmp ne ptr %20, null
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = tail call i32 @dma_contiguous_reserve_area(i32 noundef %18, i32 noundef %17, i32 noundef %16, ptr noundef nonnull @dma_contiguous_default_area, i1 noundef zeroext %15) #10
  br label %25

25:                                               ; preds = %23, %14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dma_contiguous_reserve_area(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 section ".init.text" {
  %6 = tail call i32 @cma_declare_contiguous_nid(i32 noundef %1, i32 noundef %0, i32 noundef %2, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %4, ptr noundef nonnull @.str, ptr noundef %3, i32 noundef -1) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @cma_get_base(ptr noundef %9) #9
  %11 = load ptr, ptr %3, align 4
  %12 = tail call i32 @cma_get_size(ptr noundef %11) #9
  tail call void @dma_contiguous_early_fixup(i32 noundef %10, i32 noundef %12)
  br label %13

13:                                               ; preds = %8, %5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @dma_contiguous_early_fixup(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cma_get_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cma_get_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_alloc_from_contiguous(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr @dma_contiguous_default_area, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %14 = tail call i32 @llvm.umin.i32(i32 %2, i32 8)
  %15 = tail call ptr @cma_alloc(ptr noundef %13, i32 noundef %1, i32 noundef %14, i1 noundef zeroext %3) #9
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cma_alloc(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_release_from_contiguous(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %3
  %10 = load ptr, ptr @dma_contiguous_default_area, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ]
  %13 = tail call zeroext i1 @cma_release(ptr noundef %12, ptr noundef %1, i32 noundef %2) #9
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cma_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_alloc_contiguous(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = and i32 %2, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = add i32 %1, -1
  %12 = lshr i32 %11, 12
  %13 = icmp ult i32 %11, 4096
  %14 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #9, !range !8
  %15 = sub nuw nsw i32 32, %14
  %16 = select i1 %13, i32 0, i32 %15
  br label %27

17:                                               ; preds = %6
  %18 = icmp ult i32 %1, 4097
  br i1 %18, label %35, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @dma_contiguous_default_area, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = add i32 %1, -1
  %24 = lshr i32 %23, 12
  %25 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 false) #9, !range !8
  %26 = sub nuw nsw i32 32, %25
  br label %27

27:                                               ; preds = %22, %10
  %28 = phi i32 [ %26, %22 ], [ %16, %10 ]
  %29 = phi ptr [ %20, %22 ], [ %8, %10 ]
  %30 = tail call i32 @llvm.smin.i32(i32 %28, i32 8) #9
  %31 = lshr i32 %1, 12
  %32 = and i32 %2, 8192
  %33 = icmp ne i32 %32, 0
  %34 = tail call ptr @cma_alloc(ptr noundef nonnull %29, i32 noundef %31, i32 noundef %30, i1 noundef zeroext %33) #9
  br label %35

35:                                               ; preds = %27, %19, %17, %3
  %36 = phi ptr [ null, %3 ], [ null, %17 ], [ null, %19 ], [ %34, %27 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_free_contiguous(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = add i32 %2, 4095
  %5 = lshr i32 %4, 12
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call zeroext i1 @cma_release(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %5) #9
  br i1 %10, label %21, label %14

11:                                               ; preds = %3
  %12 = load ptr, ptr @dma_contiguous_default_area, align 4
  %13 = tail call zeroext i1 @cma_release(ptr noundef %12, ptr noundef %1, i32 noundef %5) #9
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %9
  %15 = add i32 %2, -1
  %16 = icmp ult i32 %15, 4096
  %17 = lshr i32 %15, 12
  %18 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 false) #9, !range !8
  %19 = sub nuw nsw i32 32, %18
  %20 = select i1 %16, i32 0, i32 %19
  tail call void @__free_pages(ptr noundef %1, i32 noundef %20) #9
  br label %21

21:                                               ; preds = %14, %11, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rmem_cma_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @of_get_flat_dt_prop(i32 noundef %4, ptr noundef nonnull @.str.2, ptr noundef null) #9
  %6 = icmp eq ptr %5, null
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !9
  %7 = load i32, ptr @size_cmdline, align 4
  %8 = icmp eq i32 %7, -1
  %9 = select i1 %8, i1 true, i1 %6
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %11) #8
  br label %48

13:                                               ; preds = %1
  %14 = tail call ptr @of_get_flat_dt_prop(i32 noundef %4, ptr noundef nonnull @.str.4, ptr noundef null) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @of_get_flat_dt_prop(i32 noundef %4, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 8388607
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 8388607
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %19
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %48

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 4
  %33 = call i32 @cma_init_reserved_mem(i32 noundef %21, i32 noundef %26, i32 noundef 0, ptr noundef %32, ptr noundef nonnull %2) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %48

37:                                               ; preds = %31
  %38 = load i32, ptr %20, align 4
  %39 = load i32, ptr %25, align 4
  call void @dma_contiguous_early_fixup(i32 noundef %38, i32 noundef %39)
  %40 = load ptr, ptr %2, align 4
  br i1 %6, label %42, label %41

41:                                               ; preds = %37
  store ptr %40, ptr @dma_contiguous_default_area, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 3
  store ptr @rmem_cma_ops, ptr %43, align 4
  %44 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 6
  store ptr %40, ptr %44, align 4
  %45 = load i32, ptr %25, align 4
  %46 = lshr i32 %45, 20
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %20, i32 noundef %46) #8
  br label %48

48:                                               ; preds = %42, %35, %29, %16, %13, %10
  %49 = phi i32 [ -16, %10 ], [ -22, %29 ], [ %33, %35 ], [ 0, %42 ], [ -22, %16 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %49
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @cma_declare_contiguous_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cma_init_reserved_mem(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rmem_cma_device_init(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 23
  store ptr %4, ptr %5, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @rmem_cma_device_release(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 23
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }

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
!9 = !{!"auto-init"}
