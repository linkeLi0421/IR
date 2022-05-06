; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.nvkm_gpio_func = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpio = type { ptr, %struct.nvkm_subdev, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_device_quirk = type { i8, i8 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvkm_gpio_ntfy_rep = type { i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_gpio_ntfy_req = type { i8, i8 }

@nvkm_gpio = internal constant %struct.nvkm_subdev_func { ptr @nvkm_gpio_dtor, ptr null, ptr null, ptr null, ptr @nvkm_gpio_init, ptr @nvkm_gpio_fini, ptr @nvkm_gpio_intr }, align 4
@nvkm_gpio_intr_func = internal constant %struct.nvkm_event_func { ptr @nvkm_gpio_intr_ctor, ptr null, ptr @nvkm_gpio_intr_init, ptr @nvkm_gpio_intr_fini }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gpio_reset_ids = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.2, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro10,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 4
@.str = private unnamed_addr constant [14 x i8] c"NvPowerChecks\00", align 1
@power_checks = internal unnamed_addr constant [3 x i32] [i32 16, i32 76, i32 121], align 4
@.str.1 = private unnamed_addr constant [105 x i8] c"%s: GPU is missing power, check its power cables.  Boot with nouveau.config=NvPowerChecks=0 to disable.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Apple Macbook 10,1\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_gpio_reset(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_gpio_func, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void %5(ptr noundef %0, i8 noundef zeroext %1) #6
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpio_find(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 0, ptr %7, align 1, !annotation !8
  %12 = and i8 %3, %2
  %13 = icmp eq i8 %12, -1
  br i1 %13, label %32, label %14

14:                                               ; preds = %5
  %15 = call zeroext i16 @dcb_gpio_match(ptr noundef %11, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %4) #6
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nvkm_device_quirk, ptr %19, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp ne i8 %23, 0
  %25 = icmp eq i8 %2, 12
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  store i8 12, ptr %4, align 1
  %28 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %23, ptr %28, align 1
  %29 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %29, align 1
  %30 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 1, ptr %30, align 1
  %31 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 0, ptr %31, align 1
  br label %32

32:                                               ; preds = %27, %21, %17, %14, %5
  %33 = phi i32 [ 0, %27 ], [ -22, %5 ], [ 0, %14 ], [ -2, %21 ], [ -2, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_gpio_match(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpio_set(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.dcb_gpio_func, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %8, i8 0, i32 5, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 21
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 0, ptr %7, align 1, !annotation !8
  %13 = and i8 %3, %2
  %14 = icmp eq i8 %13, -1
  br i1 %14, label %36, label %15

15:                                               ; preds = %5
  %16 = call zeroext i16 @dcb_gpio_match(ptr noundef %12, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.dcb_gpio_func, ptr %8, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  br label %38

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nvkm_device_quirk, ptr %23, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = icmp ne i8 %27, 0
  %29 = icmp eq i8 %2, 12
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  store i8 12, ptr %8, align 1
  %32 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %27, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds i8, ptr %8, i32 3
  store i8 1, ptr %34, align 1
  %35 = getelementptr inbounds i8, ptr %8, i32 4
  store i8 0, ptr %35, align 1
  br label %38

36:                                               ; preds = %25, %21, %5
  %37 = phi i32 [ -2, %21 ], [ -2, %25 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  br label %51

38:                                               ; preds = %31, %18
  %39 = phi i8 [ %20, %18 ], [ %27, %31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  %40 = getelementptr %struct.dcb_gpio_func, ptr %8, i32 0, i32 2, i32 %4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = lshr i32 %42, 1
  %44 = and i32 %43, 1
  %45 = and i32 %42, 1
  %46 = zext i8 %39 to i32
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.nvkm_gpio_func, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 %49(ptr noundef %0, i32 noundef %46, i32 noundef %44, i32 noundef %45) #6
  br label %51

51:                                               ; preds = %38, %36
  %52 = phi i32 [ %50, %38 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %8) #6
  ret i32 %52
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpio_get(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.dcb_gpio_func, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, i8 0, i32 5, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1, !annotation !8
  %12 = and i8 %3, %2
  %13 = icmp eq i8 %12, -1
  br i1 %13, label %35, label %14

14:                                               ; preds = %4
  %15 = call zeroext i16 @dcb_gpio_match(ptr noundef %11, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.dcb_gpio_func, ptr %7, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  br label %37

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nvkm_device_quirk, ptr %22, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = icmp ne i8 %26, 0
  %28 = icmp eq i8 %2, 12
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  store i8 12, ptr %7, align 1
  %31 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %26, ptr %31, align 1
  %32 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 0, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %7, i32 3
  store i8 1, ptr %33, align 1
  %34 = getelementptr inbounds i8, ptr %7, i32 4
  store i8 0, ptr %34, align 1
  br label %37

35:                                               ; preds = %24, %20, %4
  %36 = phi i32 [ -2, %20 ], [ -2, %24 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  br label %52

37:                                               ; preds = %30, %17
  %38 = phi i8 [ %19, %17 ], [ %26, %30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %39 = zext i8 %38 to i32
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.nvkm_gpio_func, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %42(ptr noundef %0, i32 noundef %39) #6
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.dcb_gpio_func, ptr %7, i32 0, i32 2, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %43, %49
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %45, %37, %35
  %53 = phi i32 [ %51, %45 ], [ %43, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %7) #6
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpio_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 88) #7
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_gpio, ptr %7, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_gpio, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #6
  store ptr %0, ptr %7, align 8
  %11 = load i32, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_gpio, ptr %7, i32 0, i32 2
  %13 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_gpio_intr_func, i32 noundef 2, i32 noundef %11, ptr noundef %12) #6
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i32 [ %13, %9 ], [ -12, %5 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_gpio_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 52
  tail call void @nvkm_event_fini(ptr noundef %3) #6
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_gpio_init(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.dcb_gpio_func, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.dcb_gpio_func, align 1
  %8 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, i8 0, i32 5, i1 false), !annotation !8
  %9 = tail call i32 @dmi_check_system(ptr noundef nonnull @gpio_reset_ids) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.nvkm_gpio_func, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void %14(ptr noundef %8, i8 noundef zeroext -1) #6
  br label %17

17:                                               ; preds = %16, %11, %1
  %18 = getelementptr %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %21, ptr noundef nonnull @.str, i1 noundef zeroext true) #6
  br i1 %22, label %23, label %110

23:                                               ; preds = %17
  %24 = getelementptr inbounds i8, ptr %7, i32 1
  %25 = getelementptr inbounds i8, ptr %7, i32 2
  %26 = getelementptr inbounds i8, ptr %7, i32 3
  %27 = getelementptr inbounds i8, ptr %7, i32 4
  %28 = getelementptr inbounds %struct.dcb_gpio_func, ptr %4, i32 0, i32 1
  %29 = getelementptr inbounds i8, ptr %4, i32 2
  %30 = getelementptr inbounds i8, ptr %4, i32 3
  %31 = getelementptr inbounds i8, ptr %4, i32 4
  br label %32

32:                                               ; preds = %107, %23
  %33 = phi i32 [ 0, %23 ], [ %108, %107 ]
  %34 = getelementptr [3 x i32], ptr @power_checks, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = load ptr, ptr %18, align 4
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 21
  %39 = load ptr, ptr %38, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1, !annotation !8
  %40 = icmp eq i8 %36, -1
  br i1 %40, label %58, label %41

41:                                               ; preds = %32
  %42 = call zeroext i16 @dcb_gpio_match(ptr noundef %39, i32 noundef 0, i8 noundef zeroext %36, i8 noundef zeroext -1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i8, ptr %7, align 1
  %46 = load i8, ptr %24, align 1
  br label %59

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.nvkm_device_quirk, ptr %49, i32 0, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = icmp ne i8 %53, 0
  %55 = icmp eq i8 %36, 12
  %56 = and i1 %55, %54
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i8 12, ptr %7, align 1
  store i8 %53, ptr %24, align 1
  store i8 0, ptr %25, align 1
  store i8 1, ptr %26, align 1
  store i8 0, ptr %27, align 1
  br label %59

58:                                               ; preds = %51, %47, %32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  br label %107

59:                                               ; preds = %57, %44
  %60 = phi i8 [ %46, %44 ], [ %53, %57 ]
  %61 = phi i8 [ %45, %44 ], [ 12, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false) #6, !annotation !8
  %62 = load ptr, ptr %18, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 21
  %64 = load ptr, ptr %63, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  %65 = and i8 %60, %61
  %66 = icmp eq i8 %65, -1
  br i1 %66, label %83, label %67

67:                                               ; preds = %59
  %68 = call zeroext i16 @dcb_gpio_match(ptr noundef %64, i32 noundef 0, i8 noundef zeroext %61, i8 noundef zeroext %60, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i8, ptr %28, align 1
  br label %84

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.nvkm_device_quirk, ptr %74, i32 0, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = icmp ne i8 %78, 0
  %80 = icmp eq i8 %61, 12
  %81 = and i1 %80, %79
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i8 12, ptr %4, align 1
  store i8 %78, ptr %28, align 1
  store i8 0, ptr %29, align 1
  store i8 1, ptr %30, align 1
  store i8 0, ptr %31, align 1
  br label %84

83:                                               ; preds = %76, %72, %59
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br label %92

84:                                               ; preds = %82, %70
  %85 = phi i8 [ %71, %70 ], [ %78, %82 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %86 = zext i8 %85 to i32
  %87 = load ptr, ptr %8, align 4
  %88 = getelementptr inbounds %struct.nvkm_gpio_func, ptr %87, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 %89(ptr noundef %8, i32 noundef %86) #6
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %93, label %92

92:                                               ; preds = %84, %83
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #6
  br label %98

93:                                               ; preds = %84
  %94 = load i8, ptr %30, align 1
  %95 = and i8 %94, 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %90, %96
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #6
  br i1 %97, label %98, label %107

98:                                               ; preds = %93, %92
  %99 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %18, align 4
  %104 = getelementptr inbounds %struct.nvkm_device, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.1, ptr noundef %106) #8
  br label %110

107:                                              ; preds = %93, %58
  %108 = add nuw nsw i32 %33, 1
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %110, label %32

110:                                              ; preds = %107, %102, %98, %17
  %111 = phi i32 [ -22, %102 ], [ -22, %98 ], [ 0, %17 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %7) #6
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_gpio_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = shl nsw i64 -1, %7
  %9 = trunc i64 %8 to i32
  %10 = xor i32 %9, -1
  store i32 %10, ptr %3, align 4
  %11 = getelementptr inbounds %struct.nvkm_gpio_func, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %4, i32 noundef 3, i32 noundef %10, i32 noundef 0) #6
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.nvkm_gpio_func, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  call void %15(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_gpio_intr(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_gpio_ntfy_rep, align 1
  %5 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_gpio_func, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void %8(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  %9 = load i32, ptr %2, align 4
  %10 = load i32, ptr %3, align 4
  %11 = or i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 52
  br label %15

15:                                               ; preds = %22, %13
  %16 = phi i32 [ %10, %13 ], [ %32, %22 ]
  %17 = phi i32 [ %9, %13 ], [ %31, %22 ]
  %18 = phi i32 [ 0, %13 ], [ %30, %22 ]
  %19 = load ptr, ptr %5, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  %23 = lshr i32 %17, %18
  %24 = and i32 %23, 1
  %25 = lshr i32 %16, %18
  %26 = shl i32 %25, 1
  %27 = and i32 %26, 2
  %28 = or i32 %27, %24
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %4, align 1
  call void @nvkm_event_send(ptr noundef %14, i32 noundef %28, i32 noundef %18, ptr noundef nonnull %4, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %30 = add nuw i32 %18, 1
  %31 = load i32, ptr %2, align 4
  %32 = load i32, ptr %3, align 4
  %33 = or i32 %32, %31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %15

35:                                               ; preds = %22, %15, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_gpio_intr_ctor(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 131, i32 noundef 9, ptr noundef null) #6
  br label %16

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 1, ptr %8, align 4
  %9 = load i8, ptr %1, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_gpio_ntfy_req, ptr %1, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %7, %6
  %17 = phi i32 [ -22, %6 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_gpio_intr_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -56
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_gpio_func, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = shl nuw i32 1, %2
  tail call void %7(ptr noundef %4, i32 noundef %1, i32 noundef %8, i32 noundef %8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_gpio_intr_fini(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -56
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_gpio_func, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = shl nuw i32 1, %2
  tail call void %7(ptr noundef %4, i32 noundef %1, i32 noundef %8, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
