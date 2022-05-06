; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/anx9805.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_pad_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_bus_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_i2c_aux_func = type { i8, ptr, ptr }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvkm_i2c_pad = type { ptr, ptr, i32, i32, %struct.mutex, %struct.list_head }
%struct.anx9805_pad = type { %struct.nvkm_i2c_pad, ptr, i8 }
%struct.anx9805_bus = type { %struct.nvkm_i2c_bus, ptr, i8 }
%struct.anx9805_aux = type { %struct.nvkm_i2c_aux, ptr, i8 }
%struct.nvkm_i2c_aux = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@anx9805_pad_func = internal constant %struct.nvkm_i2c_pad_func { ptr null, ptr @anx9805_bus_new, ptr @anx9805_aux_new, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@anx9805_bus_func = internal constant %struct.nvkm_i2c_bus_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anx9805_bus_xfer }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@anx9805_aux_func = internal constant %struct.nvkm_i2c_aux_func { i8 0, ptr @anx9805_aux_xfer, ptr @anx9805_aux_lnk_ctl }, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: aux %04x: %02x %05x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: aux %04x: %16ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: aux %04x: ANX9805 train %d %02x %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: aux %04x: link training timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: aux %04x: link training failed\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @anx9805_pad_new(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 52) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @nvkm_i2c_pad_ctor(ptr noundef nonnull @anx9805_pad_func, ptr noundef %12, i32 noundef %1, ptr noundef nonnull %6) #8
  %13 = getelementptr inbounds %struct.anx9805_pad, ptr %6, i32 0, i32 1
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.anx9805_pad, ptr %6, i32 0, i32 2
  store i8 %2, ptr %14, align 8
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anx9805_bus_new(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 712) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = getelementptr inbounds %struct.anx9805_bus, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = tail call i32 @nvkm_i2c_bus_ctor(ptr noundef nonnull @anx9805_bus_func, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.anx9805_pad, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  switch i8 %14, label %19 [
    i8 57, label %16
    i8 59, label %15
  ]

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i8 [ 63, %15 ], [ 61, %12 ]
  %18 = getelementptr inbounds %struct.anx9805_bus, ptr %6, i32 0, i32 2
  store i8 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %12, %8, %4
  %20 = phi i32 [ -12, %4 ], [ %10, %8 ], [ -38, %12 ], [ 0, %16 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anx9805_aux_new(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 712) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = getelementptr inbounds %struct.anx9805_aux, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = tail call i32 @nvkm_i2c_aux_ctor(ptr noundef nonnull @anx9805_aux_func, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.anx9805_pad, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  switch i8 %14, label %19 [
    i8 57, label %16
    i8 59, label %15
  ]

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i8 [ 60, %15 ], [ 56, %12 ]
  %18 = getelementptr inbounds %struct.anx9805_aux, ptr %6, i32 0, i32 2
  store i8 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %12, %8, %4
  %20 = phi i32 [ -12, %4 ], [ %10, %8 ], [ -38, %12 ], [ 0, %16 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bus_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anx9805_bus_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca [1 x %struct.i2c_msg], align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca [1 x %struct.i2c_msg], align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca [1 x %struct.i2c_msg], align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca [1 x %struct.i2c_msg], align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca [1 x %struct.i2c_msg], align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca [1 x %struct.i2c_msg], align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca [1 x %struct.i2c_msg], align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca [1 x %struct.i2c_msg], align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca [1 x %struct.i2c_msg], align 4
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca [2 x %struct.i2c_msg], align 4
  %33 = getelementptr inbounds %struct.anx9805_bus, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.anx9805_pad, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.anx9805_pad, ptr %34, i32 0, i32 2
  %39 = load i8, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %30)
  store i8 7, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %31) #8
  store i8 0, ptr %31, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #8
  %40 = getelementptr inbounds i8, ptr %32, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %40, i8 0, i32 16, i1 false) #8, !annotation !8
  %41 = zext i8 %39 to i16
  store i16 %41, ptr %32, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %42, align 2
  store i16 1, ptr %40, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %30, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1
  store i16 %41, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 1
  store i16 1, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 2
  store i16 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 3
  store ptr %31, ptr %47, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %32, i32 noundef 2) #8
  %49 = icmp eq i32 %48, 2
  %50 = load i8, ptr %31, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %30)
  %51 = select i1 %49, i8 %50, i8 -5
  %52 = and i8 %51, -17
  %53 = load i8, ptr %38, align 4
  %54 = or i8 %51, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #8
  store i8 7, ptr %28, align 2
  %55 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 %54, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #8
  %56 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %56, align 4, !annotation !8
  %57 = zext i8 %53 to i16
  store i16 %57, ptr %29, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %59, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %29, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #8
  %61 = load i8, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #8
  store i8 7, ptr %26, align 2
  %62 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 %52, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #8
  %63 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %63, align 4, !annotation !8
  %64 = zext i8 %61 to i16
  store i16 %64, ptr %27, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %66, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %27, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #8
  %68 = getelementptr inbounds %struct.anx9805_bus, ptr %0, i32 0, i32 2
  %69 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #8
  store i8 67, ptr %24, align 2
  %70 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 5, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #8
  %71 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %71, align 4, !annotation !8
  %72 = zext i8 %69 to i16
  store i16 %72, ptr %25, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %73, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %74, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %25, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #8
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748000) #8
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 214748000) #8
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 214748000) #8
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748000) #8
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #8
  %81 = icmp eq i32 %2, 0
  br i1 %81, label %215, label %82

82:                                               ; preds = %3
  %83 = getelementptr inbounds i8, ptr %22, i32 1
  %84 = getelementptr inbounds i8, ptr %23, i32 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  %87 = getelementptr inbounds i8, ptr %20, i32 1
  %88 = getelementptr inbounds i8, ptr %21, i32 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  %91 = getelementptr inbounds i8, ptr %18, i32 1
  %92 = getelementptr inbounds i8, ptr %19, i32 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  %95 = getelementptr inbounds i8, ptr %16, i32 1
  %96 = getelementptr inbounds i8, ptr %17, i32 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  %99 = getelementptr inbounds i8, ptr %14, i32 1
  %100 = getelementptr inbounds i8, ptr %15, i32 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  %103 = getelementptr inbounds i8, ptr %12, i32 1
  %104 = getelementptr inbounds i8, ptr %13, i32 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  %107 = getelementptr inbounds i8, ptr %11, i32 4
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  %114 = getelementptr inbounds i8, ptr %8, i32 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  br label %121

121:                                              ; preds = %210, %82
  %122 = phi i32 [ %2, %82 ], [ %126, %210 ]
  %123 = phi i8 [ 0, %82 ], [ %212, %210 ]
  %124 = phi i8 [ 0, %82 ], [ %211, %210 ]
  %125 = phi ptr [ %1, %82 ], [ %213, %210 ]
  %126 = add i32 %122, -1
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 1
  %128 = load i16, ptr %127, align 2
  %129 = and i16 %128, 1
  %130 = icmp eq i16 %129, 0
  %131 = load i16, ptr %125, align 4
  br i1 %130, label %193, label %132

132:                                              ; preds = %121
  %133 = icmp eq i16 %131, 80
  br i1 %133, label %134, label %215

134:                                              ; preds = %132
  %135 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #8
  store i8 64, ptr %22, align 2
  store i8 -96, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #8
  store i32 2, ptr %84, align 4, !annotation !8
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %23, align 4
  store i16 0, ptr %85, align 2
  store ptr %22, ptr %86, align 4
  %137 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %23, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #8
  %138 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #8
  store i8 65, ptr %20, align 2
  store i8 %124, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #8
  store i32 2, ptr %88, align 4, !annotation !8
  %139 = zext i8 %138 to i16
  store i16 %139, ptr %21, align 4
  store i16 0, ptr %89, align 2
  store ptr %20, ptr %90, align 4
  %140 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %21, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #8
  %141 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #8
  store i8 66, ptr %18, align 2
  store i8 %123, ptr %91, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  store i32 2, ptr %92, align 4, !annotation !8
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %19, align 4
  store i16 0, ptr %93, align 2
  store ptr %18, ptr %94, align 4
  %143 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %19, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #8
  %144 = load i8, ptr %68, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 2
  %146 = load i16, ptr %145, align 4
  %147 = trunc i16 %146 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #8
  store i8 68, ptr %16, align 2
  store i8 %147, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #8
  store i32 2, ptr %96, align 4, !annotation !8
  %148 = zext i8 %144 to i16
  store i16 %148, ptr %17, align 4
  store i16 0, ptr %97, align 2
  store ptr %16, ptr %98, align 4
  %149 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %17, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #8
  %150 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #8
  store i8 69, ptr %14, align 2
  store i8 0, ptr %99, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  store i32 2, ptr %100, align 4, !annotation !8
  %151 = zext i8 %150 to i16
  store i16 %151, ptr %15, align 4
  store i16 0, ptr %101, align 2
  store ptr %14, ptr %102, align 4
  %152 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %15, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #8
  %153 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #8
  store i8 67, ptr %12, align 2
  store i8 1, ptr %103, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #8
  store i32 2, ptr %104, align 4, !annotation !8
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %13, align 4
  store i16 0, ptr %105, align 2
  store ptr %12, ptr %106, align 4
  %155 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %13, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  %156 = load i16, ptr %145, align 4
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %210, label %158

158:                                              ; preds = %134
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 3
  br label %160

160:                                              ; preds = %180, %158
  %161 = phi i32 [ 0, %158 ], [ %189, %180 ]
  br label %162

162:                                              ; preds = %172, %160
  %163 = phi i32 [ %178, %172 ], [ 0, %160 ]
  %164 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 70, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %107, i8 0, i32 16, i1 false) #8, !annotation !8
  %165 = zext i8 %164 to i16
  store i16 %165, ptr %11, align 4
  store i16 0, ptr %108, align 2
  store i16 1, ptr %107, align 4
  store ptr %9, ptr %109, align 4
  store i16 %165, ptr %110, align 4
  store i16 1, ptr %111, align 2
  store i16 1, ptr %112, align 4
  store ptr %10, ptr %113, align 4
  %166 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %11, i32 noundef 2) #8
  %167 = icmp eq i32 %166, 2
  %168 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %169 = and i8 %168, 16
  %170 = icmp eq i8 %169, 0
  %171 = select i1 %167, i1 %170, i1 false
  br i1 %171, label %180, label %172

172:                                              ; preds = %162
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %173(i32 noundef 214748000) #8
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %174(i32 noundef 214748000) #8
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %175(i32 noundef 214748000) #8
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %176(i32 noundef 214748000) #8
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %177(i32 noundef 214748000) #8
  %178 = add nuw nsw i32 %163, 1
  %179 = icmp eq i32 %163, 32
  br i1 %179, label %215, label %162

180:                                              ; preds = %162
  %181 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 71, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %114, i8 0, i32 16, i1 false) #8, !annotation !8
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %8, align 4
  store i16 0, ptr %115, align 2
  store i16 1, ptr %114, align 4
  store ptr %6, ptr %116, align 4
  store i16 %182, ptr %117, align 4
  store i16 1, ptr %118, align 2
  store i16 1, ptr %119, align 4
  store ptr %7, ptr %120, align 4
  %183 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %8, i32 noundef 2) #8
  %184 = icmp eq i32 %183, 2
  %185 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %186 = select i1 %184, i8 %185, i8 -5
  %187 = load ptr, ptr %159, align 4
  %188 = getelementptr i8, ptr %187, i32 %161
  store i8 %186, ptr %188, align 1
  %189 = add nuw nsw i32 %161, 1
  %190 = load i16, ptr %145, align 4
  %191 = zext i16 %190 to i32
  %192 = icmp ult i32 %189, %191
  br i1 %192, label %160, label %210

193:                                              ; preds = %121
  switch i16 %131, label %215 [
    i16 80, label %194
    i16 48, label %202
  ]

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 2
  %196 = load i16, ptr %195, align 4
  %197 = icmp eq i16 %196, 1
  br i1 %197, label %198, label %215

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 3
  %200 = load ptr, ptr %199, align 4
  %201 = load i8, ptr %200, align 1
  br label %210

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 2
  %204 = load i16, ptr %203, align 4
  %205 = icmp eq i16 %204, 1
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = load i8, ptr %208, align 1
  br label %210

210:                                              ; preds = %206, %198, %180, %134
  %211 = phi i8 [ %124, %198 ], [ %209, %206 ], [ %124, %134 ], [ %124, %180 ]
  %212 = phi i8 [ %201, %198 ], [ %123, %206 ], [ %123, %134 ], [ %123, %180 ]
  %213 = getelementptr %struct.i2c_msg, ptr %125, i32 1
  %214 = icmp eq i32 %126, 0
  br i1 %214, label %215, label %121

215:                                              ; preds = %210, %202, %194, %193, %172, %132, %3
  %216 = phi i32 [ 0, %3 ], [ -110, %172 ], [ -110, %202 ], [ %2, %210 ], [ -110, %132 ], [ -110, %194 ], [ -110, %193 ]
  %217 = load i8, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 67, ptr %4, align 2
  %218 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %218, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %219 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %219, align 4, !annotation !8
  %220 = zext i8 %217 to i16
  store i16 %220, ptr %5, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %221, align 2
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %222, align 4
  %223 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  ret i32 %216
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anx9805_aux_xfer(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca [2 x i8], align 2
  %8 = alloca [1 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca [1 x %struct.i2c_msg], align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca [1 x %struct.i2c_msg], align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca [1 x %struct.i2c_msg], align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca [1 x %struct.i2c_msg], align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca [1 x %struct.i2c_msg], align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca [1 x %struct.i2c_msg], align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca [1 x %struct.i2c_msg], align 4
  %32 = alloca [2 x i8], align 2
  %33 = alloca [1 x %struct.i2c_msg], align 4
  %34 = alloca [2 x i8], align 2
  %35 = alloca [1 x %struct.i2c_msg], align 4
  %36 = alloca [2 x i8], align 2
  %37 = alloca [1 x %struct.i2c_msg], align 4
  %38 = alloca i8, align 1
  %39 = alloca i8, align 1
  %40 = alloca [2 x %struct.i2c_msg], align 4
  %41 = alloca [16 x i8], align 1
  %42 = getelementptr inbounds %struct.anx9805_aux, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.anx9805_pad, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %45, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %41) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %41, i8 0, i32 16, i1 false)
  %47 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_i2c, ptr %50, i32 0, i32 1, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 3
  br i1 %53, label %54, label %65

54:                                               ; preds = %6
  %55 = getelementptr inbounds %struct.nvkm_i2c, ptr %50, i32 0, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_i2c, ptr %50, i32 0, i32 1, i32 4
  %60 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = zext i8 %2 to i32
  %63 = load i8, ptr %5, align 1
  %64 = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str, ptr noundef %59, i32 noundef %61, i32 noundef %62, i32 noundef %3, i32 noundef %64) #9
  br label %65

65:                                               ; preds = %54, %6
  %66 = getelementptr inbounds %struct.anx9805_pad, ptr %43, i32 0, i32 2
  %67 = load i8, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %38)
  store i8 7, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %39) #8
  store i8 0, ptr %39, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %40) #8
  %68 = getelementptr inbounds i8, ptr %40, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %68, i8 0, i32 16, i1 false) #8, !annotation !8
  %69 = zext i8 %67 to i16
  store i16 %69, ptr %40, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %70, align 2
  store i16 1, ptr %68, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %38, ptr %71, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1
  store i16 %69, ptr %72, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1, i32 1
  store i16 1, ptr %73, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1, i32 2
  store i16 1, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 1, i32 3
  store ptr %39, ptr %75, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %40, i32 noundef 2) #8
  %77 = icmp eq i32 %76, 2
  %78 = load i8, ptr %39, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %40) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %39) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %38)
  %79 = select i1 %77, i8 %78, i8 -5
  %80 = and i8 %79, -5
  %81 = load i8, ptr %66, align 4
  %82 = or i8 %79, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #8
  store i8 7, ptr %36, align 2
  %83 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 %82, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #8
  %84 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 2, ptr %84, align 4, !annotation !8
  %85 = zext i8 %81 to i16
  store i16 %85, ptr %37, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %86, align 2
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %87, align 4
  %88 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %37, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #8
  %89 = load i8, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #8
  store i8 7, ptr %34, align 2
  %90 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 %80, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #8
  %91 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 2, ptr %91, align 4, !annotation !8
  %92 = zext i8 %89 to i16
  store i16 %92, ptr %35, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %93, align 2
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %94, align 4
  %95 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %35, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #8
  %96 = load i8, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #8
  store i8 -9, ptr %32, align 2
  %97 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 1, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #8
  %98 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 2, ptr %98, align 4, !annotation !8
  %99 = zext i8 %96 to i16
  store i16 %99, ptr %33, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %100, align 2
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %101, align 4
  %102 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %33, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #8
  %103 = getelementptr inbounds %struct.anx9805_aux, ptr %0, i32 0, i32 2
  %104 = load i8, ptr %103, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #8
  store i8 -28, ptr %30, align 2
  %105 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 -128, ptr %105, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #8
  %106 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 2, ptr %106, align 4, !annotation !8
  %107 = zext i8 %104 to i16
  store i16 %107, ptr %31, align 4
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %108, align 2
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %109, align 4
  %110 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %31, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #8
  %111 = and i8 %2, 1
  %112 = icmp eq i8 %111, 0
  %113 = load i8, ptr %5, align 1
  br i1 %112, label %114, label %152

114:                                              ; preds = %65
  %115 = zext i8 %113 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %41, ptr align 1 %4, i32 %115, i1 false)
  %116 = load ptr, ptr %47, align 4
  %117 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nvkm_i2c, ptr %118, i32 0, i32 1, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = icmp ugt i32 %120, 3
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.nvkm_i2c, ptr %118, i32 0, i32 1, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.nvkm_device, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.nvkm_i2c, ptr %118, i32 0, i32 1, i32 4
  %128 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %126, ptr noundef nonnull @.str.1, ptr noundef %127, i32 noundef %129, ptr noundef nonnull %41) #9
  %130 = load i8, ptr %5, align 1
  br label %131

131:                                              ; preds = %122, %114
  %132 = phi i8 [ %130, %122 ], [ %113, %114 ]
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %152, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds i8, ptr %28, i32 1
  %136 = getelementptr inbounds i8, ptr %29, i32 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  br label %139

139:                                              ; preds = %139, %134
  %140 = phi i32 [ 0, %134 ], [ %148, %139 ]
  %141 = load i8, ptr %103, align 4
  %142 = trunc i32 %140 to i8
  %143 = add i8 %142, -16
  %144 = getelementptr [16 x i8], ptr %41, i32 0, i32 %140
  %145 = load i8, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #8
  store i8 %143, ptr %28, align 2
  store i8 %145, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #8
  store i32 2, ptr %136, align 4, !annotation !8
  %146 = zext i8 %141 to i16
  store i16 %146, ptr %29, align 4
  store i16 0, ptr %137, align 2
  store ptr %28, ptr %138, align 4
  %147 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %29, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #8
  %148 = add nuw nsw i32 %140, 1
  %149 = load i8, ptr %5, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp ult i32 %148, %150
  br i1 %151, label %139, label %152

152:                                              ; preds = %139, %131, %65
  %153 = phi i8 [ 0, %131 ], [ %113, %65 ], [ %149, %139 ]
  %154 = load i8, ptr %103, align 4
  %155 = shl i8 %153, 4
  %156 = add i8 %155, -16
  %157 = or i8 %156, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #8
  store i8 -27, ptr %26, align 2
  %158 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 %157, ptr %158, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #8
  %159 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %159, align 4, !annotation !8
  %160 = zext i8 %154 to i16
  store i16 %160, ptr %27, align 4
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %161, align 2
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %162, align 4
  %163 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %27, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #8
  %164 = load i8, ptr %103, align 4
  %165 = trunc i32 %3 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #8
  store i8 -26, ptr %24, align 2
  %166 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 %165, ptr %166, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #8
  %167 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %167, align 4, !annotation !8
  %168 = zext i8 %164 to i16
  store i16 %168, ptr %25, align 4
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %169, align 2
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %170, align 4
  %171 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %25, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #8
  %172 = load i8, ptr %103, align 4
  %173 = lshr i32 %3, 8
  %174 = trunc i32 %173 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #8
  store i8 -25, ptr %22, align 2
  %175 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 %174, ptr %175, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #8
  %176 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %176, align 4, !annotation !8
  %177 = zext i8 %172 to i16
  store i16 %177, ptr %23, align 4
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %178, align 2
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %179, align 4
  %180 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %23, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #8
  %181 = load i8, ptr %103, align 4
  %182 = lshr i32 %3, 16
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #8
  store i8 -24, ptr %20, align 2
  %185 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 %184, ptr %185, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #8
  %186 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %186, align 4, !annotation !8
  %187 = zext i8 %181 to i16
  store i16 %187, ptr %21, align 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %188, align 2
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %189, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %21, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #8
  %191 = load i8, ptr %103, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #8
  store i8 -23, ptr %18, align 2
  %192 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 1, ptr %192, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  %193 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %193, align 4, !annotation !8
  %194 = zext i8 %191 to i16
  store i16 %194, ptr %19, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %195, align 2
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %196, align 4
  %197 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %19, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #8
  %198 = getelementptr inbounds i8, ptr %17, i32 4
  %199 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  br label %205

205:                                              ; preds = %215, %152
  %206 = phi i32 [ 0, %152 ], [ %221, %215 ]
  %207 = load i8, ptr %103, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15)
  store i8 -23, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #8
  store i8 0, ptr %16, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %198, i8 0, i32 16, i1 false) #8, !annotation !8
  %208 = zext i8 %207 to i16
  store i16 %208, ptr %17, align 4
  store i16 0, ptr %199, align 2
  store i16 1, ptr %198, align 4
  store ptr %15, ptr %200, align 4
  store i16 %208, ptr %201, align 4
  store i16 1, ptr %202, align 2
  store i16 1, ptr %203, align 4
  store ptr %16, ptr %204, align 4
  %209 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %17, i32 noundef 2) #8
  %210 = icmp eq i32 %209, 2
  %211 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15)
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  %214 = select i1 %210, i1 %213, i1 false
  br i1 %214, label %223, label %215

215:                                              ; preds = %205
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %216(i32 noundef 214748000) #8
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %217(i32 noundef 214748000) #8
  %218 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %218(i32 noundef 214748000) #8
  %219 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %219(i32 noundef 214748000) #8
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %220(i32 noundef 214748000) #8
  %221 = add nuw nsw i32 %206, 1
  %222 = icmp eq i32 %206, 32
  br i1 %222, label %287, label %205

223:                                              ; preds = %205
  %224 = load i8, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12)
  store i8 -9, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #8
  store i8 0, ptr %13, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #8
  %225 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %225, i8 0, i32 16, i1 false) #8, !annotation !8
  %226 = zext i8 %224 to i16
  store i16 %226, ptr %14, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %227, align 2
  store i16 1, ptr %225, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %228, align 4
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  store i16 %226, ptr %229, align 4
  %230 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %230, align 2
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %231, align 4
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %232, align 4
  %233 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %14, i32 noundef 2) #8
  %234 = icmp ne i32 %233, 2
  %235 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12)
  %236 = and i8 %235, 1
  %237 = icmp ne i8 %236, 0
  %238 = select i1 %234, i1 true, i1 %237
  %239 = or i1 %112, %238
  %240 = select i1 %238, i32 -5, i32 0
  br i1 %239, label %287, label %241

241:                                              ; preds = %223
  %242 = load i8, ptr %5, align 1
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %267, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds i8, ptr %11, i32 4
  %246 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %249 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  %250 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  %251 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  br label %252

252:                                              ; preds = %252, %244
  %253 = phi i32 [ 0, %244 ], [ %263, %252 ]
  %254 = load i8, ptr %103, align 4
  %255 = trunc i32 %253 to i8
  %256 = add i8 %255, -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 %256, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %245, i8 0, i32 16, i1 false) #8, !annotation !8
  %257 = zext i8 %254 to i16
  store i16 %257, ptr %11, align 4
  store i16 0, ptr %246, align 2
  store i16 1, ptr %245, align 4
  store ptr %9, ptr %247, align 4
  store i16 %257, ptr %248, align 4
  store i16 1, ptr %249, align 2
  store i16 1, ptr %250, align 4
  store ptr %10, ptr %251, align 4
  %258 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %11, i32 noundef 2) #8
  %259 = icmp eq i32 %258, 2
  %260 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %261 = select i1 %259, i8 %260, i8 -5
  %262 = getelementptr [16 x i8], ptr %41, i32 0, i32 %253
  store i8 %261, ptr %262, align 1
  %263 = add nuw nsw i32 %253, 1
  %264 = load i8, ptr %5, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp ult i32 %263, %265
  br i1 %266, label %252, label %267

267:                                              ; preds = %252, %241
  %268 = phi i8 [ 0, %241 ], [ %264, %252 ]
  %269 = load ptr, ptr %47, align 4
  %270 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %269, i32 0, i32 1
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.nvkm_i2c, ptr %271, i32 0, i32 1, i32 5
  %273 = load i32, ptr %272, align 4
  %274 = icmp ugt i32 %273, 3
  br i1 %274, label %275, label %284

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.nvkm_i2c, ptr %271, i32 0, i32 1, i32 1
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.nvkm_device, ptr %277, i32 0, i32 2
  %279 = load ptr, ptr %278, align 8
  %280 = getelementptr inbounds %struct.nvkm_i2c, ptr %271, i32 0, i32 1, i32 4
  %281 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %282 = load i32, ptr %281, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %279, ptr noundef nonnull @.str.1, ptr noundef %280, i32 noundef %282, ptr noundef nonnull %41) #9
  %283 = load i8, ptr %5, align 1
  br label %284

284:                                              ; preds = %275, %267
  %285 = phi i8 [ %283, %275 ], [ %268, %267 ]
  %286 = zext i8 %285 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr nonnull align 1 %41, i32 %286, i1 false)
  br label %287

287:                                              ; preds = %284, %223, %215
  %288 = phi i32 [ %240, %223 ], [ 0, %284 ], [ -110, %215 ]
  %289 = load i8, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i8 -9, ptr %7, align 2
  %290 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 1, ptr %290, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %291 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %291, align 4, !annotation !8
  %292 = zext i8 %289 to i16
  store i16 %292, ptr %8, align 4
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %293, align 2
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %294, align 4
  %295 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %41) #8
  ret i32 %288
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anx9805_aux_lnk_ctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca [1 x %struct.i2c_msg], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca [1 x %struct.i2c_msg], align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca [1 x %struct.i2c_msg], align 4
  %16 = getelementptr inbounds %struct.anx9805_aux, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.anx9805_pad, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_i2c, ptr %24, i32 0, i32 1, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 3
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.nvkm_i2c, ptr %24, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_i2c, ptr %24, i32 0, i32 1, i32 4
  %34 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = zext i1 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.2, ptr noundef %33, i32 noundef %35, i32 noundef %1, i32 noundef %2, i32 noundef %36) #9
  br label %37

37:                                               ; preds = %28, %4
  %38 = getelementptr inbounds %struct.anx9805_aux, ptr %0, i32 0, i32 2
  %39 = load i8, ptr %38, align 4
  %40 = trunc i32 %2 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #8
  store i8 -96, ptr %14, align 2
  %41 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 %40, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  %42 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %42, align 4, !annotation !8
  %43 = zext i8 %39 to i16
  store i16 %43, ptr %15, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %45, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %15, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #8
  %47 = load i8, ptr %38, align 4
  %48 = select i1 %3, i32 128, i32 0
  %49 = or i32 %48, %1
  %50 = trunc i32 %49 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #8
  store i8 -95, ptr %12, align 2
  %51 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %50, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #8
  %52 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %52, align 4, !annotation !8
  %53 = zext i8 %47 to i16
  store i16 %53, ptr %13, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %55, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %13, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  %57 = load i8, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #8
  store i8 -94, ptr %10, align 2
  %58 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 1, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  %59 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %59, align 4, !annotation !8
  %60 = zext i8 %57 to i16
  store i16 %60, ptr %11, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %62, align 4
  %63 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  %64 = load i8, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i8 -88, ptr %8, align 2
  %65 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 1, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %66 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %66, align 4, !annotation !8
  %67 = zext i8 %64 to i16
  store i16 %67, ptr %9, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %68, align 2
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %69, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  %71 = getelementptr inbounds i8, ptr %7, i32 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  br label %78

78:                                               ; preds = %89, %37
  %79 = phi i8 [ 0, %37 ], [ %95, %89 ]
  %80 = load i8, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 -88, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %71, i8 0, i32 16, i1 false) #8, !annotation !8
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %7, align 4
  store i16 0, ptr %72, align 2
  store i16 1, ptr %71, align 4
  store ptr %5, ptr %73, align 4
  store i16 %81, ptr %74, align 4
  store i16 1, ptr %75, align 2
  store i16 1, ptr %76, align 4
  store ptr %6, ptr %77, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %7, i32 noundef 2) #8
  %83 = icmp eq i32 %82, 2
  %84 = load i8, ptr %6, align 1
  %85 = zext i8 %84 to i32
  %86 = select i1 %83, i32 %85, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %78
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 214748000) #8
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 214748000) #8
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 214748000) #8
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 214748000) #8
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %94(i32 noundef 214748000) #8
  %95 = add nuw nsw i8 %79, 1
  %96 = icmp eq i8 %79, 100
  br i1 %96, label %97, label %78

97:                                               ; preds = %89
  %98 = load ptr, ptr %21, align 4
  %99 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nvkm_i2c, ptr %100, i32 0, i32 1, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %125, label %114

104:                                              ; preds = %78
  %105 = and i32 %86, 112
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %21, align 4
  %109 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_i2c, ptr %110, i32 0, i32 1, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %107, %97
  %115 = phi ptr [ %100, %97 ], [ %110, %107 ]
  %116 = phi ptr [ @.str.3, %97 ], [ @.str.4, %107 ]
  %117 = phi i32 [ -110, %97 ], [ -5, %107 ]
  %118 = getelementptr inbounds %struct.nvkm_i2c, ptr %115, i32 0, i32 1, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.nvkm_device, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.nvkm_i2c, ptr %115, i32 0, i32 1, i32 4
  %123 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %124 = load i32, ptr %123, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull %116, ptr noundef %122, i32 noundef %124) #9
  br label %125

125:                                              ; preds = %114, %107, %104, %97
  %126 = phi i32 [ -110, %97 ], [ -5, %107 ], [ 0, %104 ], [ %117, %114 ]
  ret i32 %126
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind allocsize(2) }
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
