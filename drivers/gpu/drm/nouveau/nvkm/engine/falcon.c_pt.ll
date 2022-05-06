; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/falcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/falcon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.125, %struct.anon.126, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.125 = type { ptr }
%struct.anon.126 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.123, %struct.anon.124, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.123 = type { i32, ptr, i32, i8 }
%struct.anon.124 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.127 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.127 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon = type { ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.128, %struct.anon.128, [0 x %struct.nvkm_sclass] }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.128 = type { i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }

@nvkm_falcon = internal constant %struct.nvkm_engine_func { ptr @nvkm_falcon_dtor, ptr null, ptr @nvkm_falcon_oneinit, ptr null, ptr @nvkm_falcon_init, ptr @nvkm_falcon_fini, ptr @nvkm_falcon_intr, ptr null, ptr null, %struct.anon.125 zeroinitializer, %struct.anon.126 { ptr null, ptr @nvkm_falcon_oclass_get }, ptr @nvkm_falcon_cclass, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nvkm_falcon_cclass = internal constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_falcon_cclass_bind, ptr null }, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: falcon version: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: secret level: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: code limit: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: data limit: %d\0A\00", align 1
@__const.nvkm_falcon_init.name = private unnamed_addr constant [32 x i8] c"internal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/falcon.c\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"nouveau/nv%02x_fuc%03x\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"nouveau/nv%02x_fuc%03xd\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s: unable to load firmware data\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"nouveau/nv%02x_fuc%03xc\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"%s: unable to load firmware code\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"%s: firmware: %s (%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"static code/data segments\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"self-bootstrapping\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"%s: core allocation failed, %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"%s: ucode exceeds falcon limit(s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%s: ucode halted\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"%s: intr %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 196) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  store ptr %0, ptr %9, align 8
  %12 = getelementptr inbounds %struct.nvkm_falcon, ptr %9, i32 0, i32 3
  store i32 %5, ptr %12, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.nvkm_falcon, ptr %9, i32 0, i32 13, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_falcon, ptr %9, i32 0, i32 13, i32 2
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_falcon, ptr %9, i32 0, i32 14, i32 1
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %0, i32 0, i32 1, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_falcon, ptr %9, i32 0, i32 14, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nvkm_falcon, ptr %9, i32 0, i32 15
  store ptr %24, ptr %6, align 4
  %25 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_falcon, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %24) #12
  br label %26

26:                                               ; preds = %11, %7
  %27 = phi i32 [ %25, %11 ], [ -12, %7 ]
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_falcon_dtor(ptr noundef readnone %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -108
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_falcon_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -96
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = freeze i32 %7
  %9 = icmp ult i32 %8, 163
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  switch i32 %8, label %15 [
    i32 172, label %11
    i32 170, label %11
  ]

11:                                               ; preds = %10, %10, %1
  %12 = getelementptr i8, ptr %0, i32 -44
  store i8 0, ptr %12, align 4
  %13 = icmp eq i32 %5, 552960
  %14 = zext i1 %13 to i8
  br label %26

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = add i32 %5, 300
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 15
  %23 = getelementptr i8, ptr %0, i32 -44
  store i8 %22, ptr %23, align 4
  %24 = lshr i8 %21, 4
  %25 = and i8 %24, 3
  br label %26

26:                                               ; preds = %15, %11
  %27 = phi i8 [ %25, %15 ], [ %14, %11 ]
  %28 = getelementptr i8, ptr %0, i32 -43
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = add i32 %5, 264
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %34 = shl i32 %33, 8
  %35 = and i32 %34, 130816
  %36 = getelementptr i8, ptr %0, i32 -32
  store i32 %35, ptr %36, align 4
  %37 = lshr i32 %33, 1
  %38 = and i32 %37, 130816
  %39 = getelementptr i8, ptr %0, i32 -16
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, 3
  br i1 %42, label %43, label %74

43:                                               ; preds = %26
  %44 = load ptr, ptr %2, align 4
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  %48 = getelementptr i8, ptr %0, i32 -44
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str, ptr noundef %47, i32 noundef %50) #13
  %51 = load i32, ptr %40, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %74

53:                                               ; preds = %43
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr i8, ptr %0, i32 -43
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.1, ptr noundef %47, i32 noundef %59) #13
  %60 = load i32, ptr %40, align 4
  %61 = icmp ugt i32 %60, 3
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.2, ptr noundef %47, i32 noundef %66) #13
  %67 = load i32, ptr %40, align 4
  %68 = icmp ugt i32 %67, 3
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load ptr, ptr %2, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.3, ptr noundef %47, i32 noundef %73) #13
  br label %74

74:                                               ; preds = %69, %62, %53, %43, %26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_falcon_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca [32 x i8], align 1
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = alloca %struct.nvkm_timer_wait, align 8
  %6 = getelementptr i8, ptr %0, i32 -108
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(32) @__const.nvkm_falcon_init.name, i32 32, i1 false)
  %9 = getelementptr i8, ptr %0, i32 -96
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 -43
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %88, label %14

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 -44
  %16 = load i8, ptr %15, align 4
  %17 = icmp ult i8 %16, 4
  br i1 %17, label %18, label %88

18:                                               ; preds = %14
  %19 = icmp eq i8 %16, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %4) #12
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %22 = add i32 %10, 8
  br label %23

23:                                               ; preds = %29, %20
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #12, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %4) #12
  %31 = icmp sgt i64 %30, -1
  br i1 %31, label %23, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = call ptr @dev_driver_string(ptr noundef %37) #12
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.nvkm_timer, ptr %39, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load ptr, ptr %43, align 4
  br label %49

49:                                               ; preds = %47, %32
  %50 = phi ptr [ %48, %47 ], [ %45, %32 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 176, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %38, ptr noundef %50) #12
  br label %51

51:                                               ; preds = %49, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  br label %83

52:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %5) #12
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %54 = add i32 %10, 384
  br label %55

55:                                               ; preds = %60, %52
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr i8, ptr %56, i32 %54
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #12, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %82, label %60

60:                                               ; preds = %55
  %61 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %5) #12
  %62 = icmp sgt i64 %61, -1
  br i1 %62, label %55, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds %struct.nvkm_timer, ptr %64, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = call ptr @dev_driver_string(ptr noundef %68) #12
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds %struct.nvkm_timer, ptr %70, i32 0, i32 1, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load ptr, ptr %74, align 4
  br label %80

80:                                               ; preds = %78, %63
  %81 = phi ptr [ %79, %78 ], [ %76, %63 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 181, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %69, ptr noundef %81) #12
  br label %82

82:                                               ; preds = %80, %55
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  br label %83

83:                                               ; preds = %82, %51
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %85 = load ptr, ptr %84, align 4
  %86 = add i32 %10, 4
  %87 = getelementptr i8, ptr %85, i32 %86
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 16) #12, !srcloc !12
  br label %88

88:                                               ; preds = %83, %14, %1
  %89 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %90 = load ptr, ptr %89, align 4
  %91 = add i32 %10, 20
  %92 = getelementptr i8, ptr %90, i32 %91
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 -1) #12, !srcloc !12
  %93 = getelementptr i8, ptr %0, i32 -32
  %94 = getelementptr i8, ptr %0, i32 -28
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %188

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 16
  %99 = load i32, ptr %98, align 4
  %100 = load i32, ptr %9, align 4
  %101 = lshr i32 %100, 12
  %102 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %99, i32 noundef %101)
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %104) #12
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %97
  %108 = load ptr, ptr %2, align 4
  %109 = getelementptr inbounds %struct.firmware, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = load i32, ptr %108, align 4
  %112 = call noalias ptr @vmalloc(i32 noundef %111) #14
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %112, ptr align 1 %110, i32 %111, i1 false) #12
  br label %115

115:                                              ; preds = %114, %107
  store ptr %112, ptr %94, align 4
  %116 = load ptr, ptr %2, align 4
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr i8, ptr %0, i32 -24
  store i32 %117, ptr %118, align 4
  %119 = getelementptr i8, ptr %0, i32 -12
  store ptr null, ptr %119, align 4
  %120 = getelementptr i8, ptr %0, i32 -8
  store i32 0, ptr %120, align 4
  call void @release_firmware(ptr noundef %116) #12
  br label %121

121:                                              ; preds = %115, %97
  %122 = getelementptr i8, ptr %0, i32 -36
  store i8 1, ptr %122, align 4
  %123 = load ptr, ptr %94, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %188

125:                                              ; preds = %121
  %126 = load i32, ptr %98, align 4
  %127 = load i32, ptr %9, align 4
  %128 = lshr i32 %127, 12
  %129 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %126, i32 noundef %128)
  %130 = load ptr, ptr %103, align 8
  %131 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %130) #12
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %446, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %7, align 4
  %139 = getelementptr inbounds %struct.nvkm_device, ptr %138, i32 0, i32 2
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.8, ptr noundef %141) #13
  br label %446

142:                                              ; preds = %125
  %143 = load ptr, ptr %2, align 4
  %144 = getelementptr inbounds %struct.firmware, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = load i32, ptr %143, align 4
  %147 = call noalias ptr @vmalloc(i32 noundef %146) #14
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %147, ptr align 1 %145, i32 %146, i1 false) #12
  br label %150

150:                                              ; preds = %149, %142
  %151 = getelementptr i8, ptr %0, i32 -12
  store ptr %147, ptr %151, align 4
  %152 = load ptr, ptr %2, align 4
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr i8, ptr %0, i32 -8
  store i32 %153, ptr %154, align 4
  call void @release_firmware(ptr noundef %152) #12
  %155 = load ptr, ptr %151, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %446, label %157

157:                                              ; preds = %150
  %158 = load i32, ptr %98, align 4
  %159 = load i32, ptr %9, align 4
  %160 = lshr i32 %159, 12
  %161 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %158, i32 noundef %160)
  %162 = load ptr, ptr %103, align 8
  %163 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %162) #12
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %446, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %7, align 4
  %171 = getelementptr inbounds %struct.nvkm_device, ptr %170, i32 0, i32 2
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.10, ptr noundef %173) #13
  br label %446

174:                                              ; preds = %157
  %175 = load ptr, ptr %2, align 4
  %176 = getelementptr inbounds %struct.firmware, ptr %175, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = load i32, ptr %175, align 4
  %179 = call noalias ptr @vmalloc(i32 noundef %178) #14
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %174
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %179, ptr align 1 %177, i32 %178, i1 false) #12
  br label %182

182:                                              ; preds = %181, %174
  store ptr %179, ptr %94, align 4
  %183 = load ptr, ptr %2, align 4
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr i8, ptr %0, i32 -24
  store i32 %184, ptr %185, align 4
  call void @release_firmware(ptr noundef %183) #12
  %186 = load ptr, ptr %94, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %446, label %188

188:                                              ; preds = %182, %121, %88
  %189 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %190 = load i32, ptr %189, align 4
  %191 = icmp ugt i32 %190, 3
  br i1 %191, label %192, label %201

192:                                              ; preds = %188
  %193 = load ptr, ptr %7, align 4
  %194 = getelementptr inbounds %struct.nvkm_device, ptr %193, i32 0, i32 2
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  %197 = getelementptr i8, ptr %0, i32 -12
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  %200 = select i1 %199, ptr @.str.13, ptr @.str.12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %195, ptr noundef nonnull @.str.11, ptr noundef %196, ptr noundef nonnull %3, ptr noundef nonnull %200) #13
  br label %201

201:                                              ; preds = %192, %188
  %202 = getelementptr i8, ptr %0, i32 -16
  %203 = getelementptr i8, ptr %0, i32 -12
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %252

206:                                              ; preds = %201
  %207 = getelementptr i8, ptr %0, i32 -40
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %252

210:                                              ; preds = %206
  %211 = getelementptr i8, ptr %0, i32 -24
  %212 = load i32, ptr %211, align 4
  %213 = zext i32 %212 to i64
  %214 = call i32 @nvkm_memory_new(ptr noundef %8, i32 noundef 0, i64 noundef %213, i32 noundef 256, i1 noundef zeroext false, ptr noundef %207) #12
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %210
  %217 = load i32, ptr %189, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %446, label %219

219:                                              ; preds = %216
  %220 = load ptr, ptr %7, align 4
  %221 = getelementptr inbounds %struct.nvkm_device, ptr %220, i32 0, i32 2
  %222 = load ptr, ptr %221, align 8
  %223 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %222, ptr noundef nonnull @.str.14, ptr noundef %223, i32 noundef %214) #13
  br label %446

224:                                              ; preds = %210
  %225 = load ptr, ptr %207, align 4
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.nvkm_memory_func, ptr %226, i32 0, i32 7
  %228 = load ptr, ptr %227, align 4
  %229 = call ptr %228(ptr noundef %225) #12
  %230 = load i32, ptr %211, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %247, label %232

232:                                              ; preds = %232, %224
  %233 = phi i32 [ %244, %232 ], [ 0, %224 ]
  %234 = load ptr, ptr %207, align 4
  %235 = getelementptr inbounds %struct.nvkm_memory, ptr %234, i32 0, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %236, i32 0, i32 1
  %238 = load ptr, ptr %237, align 4
  %239 = sext i32 %233 to i64
  %240 = load ptr, ptr %94, align 4
  %241 = sdiv i32 %233, 4
  %242 = getelementptr i32, ptr %240, i32 %241
  %243 = load i32, ptr %242, align 4
  call void %238(ptr noundef %234, i64 noundef %239, i32 noundef %243) #12
  %244 = add i32 %233, 4
  %245 = load i32, ptr %211, align 4
  %246 = icmp ult i32 %244, %245
  br i1 %246, label %232, label %247

247:                                              ; preds = %232, %224
  %248 = load ptr, ptr %207, align 4
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.nvkm_memory_func, ptr %249, i32 0, i32 8
  %251 = load ptr, ptr %250, align 4
  call void %251(ptr noundef %248) #12
  br label %252

252:                                              ; preds = %247, %206, %201
  %253 = getelementptr i8, ptr %0, i32 -40
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %284, label %256

256:                                              ; preds = %252
  %257 = load ptr, ptr %254, align 4
  %258 = getelementptr inbounds %struct.nvkm_memory_func, ptr %257, i32 0, i32 4
  %259 = load ptr, ptr %258, align 4
  %260 = call i64 %259(ptr noundef nonnull %254) #12
  %261 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 15
  %262 = load i32, ptr %261, align 8
  %263 = icmp ult i32 %262, 192
  %264 = load ptr, ptr %89, align 4
  %265 = add i32 %10, 1560
  %266 = getelementptr i8, ptr %264, i32 %265
  call void asm sideeffect "dsb st", "~{memory}"() #12
  call void @arm_heavy_mb() #12
  br i1 %263, label %267, label %268

267:                                              ; preds = %256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 67108864) #12, !srcloc !12
  br label %269

268:                                              ; preds = %256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 276) #12, !srcloc !12
  br label %269

269:                                              ; preds = %268, %267
  %270 = load ptr, ptr %89, align 4
  %271 = add i32 %10, 284
  %272 = getelementptr i8, ptr %270, i32 %271
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 0) #12, !srcloc !12
  %273 = lshr i64 %260, 8
  %274 = trunc i64 %273 to i32
  %275 = load ptr, ptr %89, align 4
  %276 = add i32 %10, 272
  %277 = getelementptr i8, ptr %275, i32 %276
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 %274) #12, !srcloc !12
  %278 = load ptr, ptr %89, align 4
  %279 = add i32 %10, 276
  %280 = getelementptr i8, ptr %278, i32 %279
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 0) #12, !srcloc !12
  %281 = load ptr, ptr %89, align 4
  %282 = add i32 %10, 280
  %283 = getelementptr i8, ptr %281, i32 %282
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 26128) #12, !srcloc !12
  br label %351

284:                                              ; preds = %252
  %285 = getelementptr i8, ptr %0, i32 -24
  %286 = load i32, ptr %285, align 4
  %287 = load i32, ptr %93, align 4
  %288 = icmp ugt i32 %286, %287
  br i1 %288, label %294, label %289

289:                                              ; preds = %284
  %290 = getelementptr i8, ptr %0, i32 -8
  %291 = load i32, ptr %290, align 4
  %292 = load i32, ptr %202, align 4
  %293 = icmp ugt i32 %291, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %289, %284
  %295 = load i32, ptr %189, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %446, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr %7, align 4
  %299 = getelementptr inbounds %struct.nvkm_device, ptr %298, i32 0, i32 2
  %300 = load ptr, ptr %299, align 8
  %301 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %300, ptr noundef nonnull @.str.15, ptr noundef %301) #13
  br label %446

302:                                              ; preds = %289
  %303 = getelementptr i8, ptr %0, i32 -44
  %304 = load i8, ptr %303, align 4
  %305 = icmp ult i8 %304, 3
  %306 = load ptr, ptr %89, align 4
  br i1 %305, label %307, label %325

307:                                              ; preds = %302
  %308 = add i32 %10, 4088
  %309 = getelementptr i8, ptr %306, i32 %308
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %309, i32 1048576) #12, !srcloc !12
  %310 = load i32, ptr %285, align 4
  %311 = icmp ult i32 %310, 4
  br i1 %311, label %351, label %312

312:                                              ; preds = %307
  %313 = add i32 %10, 4084
  br label %314

314:                                              ; preds = %314, %312
  %315 = phi i32 [ 0, %312 ], [ %321, %314 ]
  %316 = load ptr, ptr %94, align 4
  %317 = getelementptr i32, ptr %316, i32 %315
  %318 = load i32, ptr %317, align 4
  %319 = load ptr, ptr %89, align 4
  %320 = getelementptr i8, ptr %319, i32 %313
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %318) #12, !srcloc !12
  %321 = add nuw nsw i32 %315, 1
  %322 = load i32, ptr %285, align 4
  %323 = lshr i32 %322, 2
  %324 = icmp ult i32 %321, %323
  br i1 %324, label %314, label %351

325:                                              ; preds = %302
  %326 = add i32 %10, 384
  %327 = getelementptr i8, ptr %306, i32 %326
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %327, i32 16777216) #12, !srcloc !12
  %328 = load i32, ptr %285, align 4
  %329 = icmp ult i32 %328, 4
  br i1 %329, label %351, label %330

330:                                              ; preds = %325
  %331 = add i32 %10, 392
  %332 = add i32 %10, 388
  br label %333

333:                                              ; preds = %341, %330
  %334 = phi i32 [ 0, %330 ], [ %347, %341 ]
  %335 = and i32 %334, 63
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %333
  %338 = lshr i32 %334, 6
  %339 = load ptr, ptr %89, align 4
  %340 = getelementptr i8, ptr %339, i32 %331
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 %338) #12, !srcloc !12
  br label %341

341:                                              ; preds = %337, %333
  %342 = load ptr, ptr %94, align 4
  %343 = getelementptr i32, ptr %342, i32 %334
  %344 = load i32, ptr %343, align 4
  %345 = load ptr, ptr %89, align 4
  %346 = getelementptr i8, ptr %345, i32 %332
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 %344) #12, !srcloc !12
  %347 = add nuw nsw i32 %334, 1
  %348 = load i32, ptr %285, align 4
  %349 = lshr i32 %348, 2
  %350 = icmp ult i32 %347, %349
  br i1 %350, label %333, label %351

351:                                              ; preds = %341, %325, %314, %307, %269
  %352 = getelementptr i8, ptr %0, i32 -44
  %353 = load i8, ptr %352, align 4
  %354 = icmp ult i8 %353, 3
  %355 = load ptr, ptr %89, align 4
  br i1 %354, label %356, label %391

356:                                              ; preds = %351
  %357 = add i32 %10, 4088
  %358 = getelementptr i8, ptr %355, i32 %357
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 0) #12, !srcloc !12
  %359 = getelementptr i8, ptr %0, i32 -8
  %360 = load ptr, ptr %253, align 4
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %378

362:                                              ; preds = %356
  %363 = add i32 %10, 4084
  br label %364

364:                                              ; preds = %369, %362
  %365 = phi i32 [ 0, %362 ], [ %375, %369 ]
  %366 = load i32, ptr %359, align 4
  %367 = lshr i32 %366, 2
  %368 = icmp ult i32 %365, %367
  br i1 %368, label %369, label %378

369:                                              ; preds = %364
  %370 = load ptr, ptr %203, align 4
  %371 = getelementptr i32, ptr %370, i32 %365
  %372 = load i32, ptr %371, align 4
  %373 = load ptr, ptr %89, align 4
  %374 = getelementptr i8, ptr %373, i32 %363
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %374, i32 %372) #12, !srcloc !12
  %375 = add nuw nsw i32 %365, 1
  %376 = load ptr, ptr %253, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %364, label %378

378:                                              ; preds = %369, %364, %356
  %379 = phi i32 [ 0, %356 ], [ %375, %369 ], [ %365, %364 ]
  %380 = load i32, ptr %202, align 4
  %381 = icmp ult i32 %379, %380
  br i1 %381, label %382, label %428

382:                                              ; preds = %378
  %383 = add i32 %10, 4084
  br label %384

384:                                              ; preds = %384, %382
  %385 = phi i32 [ %379, %382 ], [ %388, %384 ]
  %386 = load ptr, ptr %89, align 4
  %387 = getelementptr i8, ptr %386, i32 %383
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %387, i32 0) #12, !srcloc !12
  %388 = add i32 %385, 4
  %389 = load i32, ptr %202, align 4
  %390 = icmp ult i32 %388, %389
  br i1 %390, label %384, label %428

391:                                              ; preds = %351
  %392 = add i32 %10, 448
  %393 = getelementptr i8, ptr %355, i32 %392
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %393, i32 16777216) #12, !srcloc !12
  %394 = getelementptr i8, ptr %0, i32 -8
  %395 = load ptr, ptr %253, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %413

397:                                              ; preds = %391
  %398 = add i32 %10, 452
  br label %399

399:                                              ; preds = %404, %397
  %400 = phi i32 [ 0, %397 ], [ %410, %404 ]
  %401 = load i32, ptr %394, align 4
  %402 = lshr i32 %401, 2
  %403 = icmp ult i32 %400, %402
  br i1 %403, label %404, label %413

404:                                              ; preds = %399
  %405 = load ptr, ptr %203, align 4
  %406 = getelementptr i32, ptr %405, i32 %400
  %407 = load i32, ptr %406, align 4
  %408 = load ptr, ptr %89, align 4
  %409 = getelementptr i8, ptr %408, i32 %398
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %409, i32 %407) #12, !srcloc !12
  %410 = add nuw nsw i32 %400, 1
  %411 = load ptr, ptr %253, align 4
  %412 = icmp eq ptr %411, null
  br i1 %412, label %399, label %413

413:                                              ; preds = %404, %399, %391
  %414 = phi i32 [ 0, %391 ], [ %410, %404 ], [ %400, %399 ]
  %415 = load i32, ptr %202, align 4
  %416 = lshr i32 %415, 2
  %417 = icmp ult i32 %414, %416
  br i1 %417, label %418, label %428

418:                                              ; preds = %413
  %419 = add i32 %10, 452
  br label %420

420:                                              ; preds = %420, %418
  %421 = phi i32 [ %414, %418 ], [ %424, %420 ]
  %422 = load ptr, ptr %89, align 4
  %423 = getelementptr i8, ptr %422, i32 %419
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %423, i32 0) #12, !srcloc !12
  %424 = add nuw nsw i32 %421, 1
  %425 = load i32, ptr %202, align 4
  %426 = lshr i32 %425, 2
  %427 = icmp ult i32 %424, %426
  br i1 %427, label %420, label %428

428:                                              ; preds = %420, %413, %384, %378
  %429 = load ptr, ptr %89, align 4
  %430 = add i32 %10, 268
  %431 = getelementptr i8, ptr %429, i32 %430
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %431, i32 1) #12, !srcloc !12
  %432 = load ptr, ptr %89, align 4
  %433 = add i32 %10, 260
  %434 = getelementptr i8, ptr %432, i32 %433
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %434, i32 0) #12, !srcloc !12
  %435 = load ptr, ptr %89, align 4
  %436 = add i32 %10, 256
  %437 = getelementptr i8, ptr %435, i32 %436
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %437, i32 2) #12, !srcloc !12
  %438 = load ptr, ptr %89, align 4
  %439 = add i32 %10, 72
  %440 = getelementptr i8, ptr %438, i32 %439
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %440, i32 3) #12, !srcloc !12
  %441 = load ptr, ptr %6, align 4
  %442 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %441, i32 0, i32 2
  %443 = load ptr, ptr %442, align 4
  %444 = icmp eq ptr %443, null
  br i1 %444, label %446, label %445

445:                                              ; preds = %428
  call void %443(ptr noundef %6) #12
  br label %446

446:                                              ; preds = %445, %428, %297, %294, %219, %216, %182, %169, %165, %150, %137, %133
  %447 = phi i32 [ -19, %137 ], [ -19, %133 ], [ -12, %150 ], [ -19, %169 ], [ -19, %165 ], [ -12, %182 ], [ %214, %219 ], [ %214, %216 ], [ -22, %297 ], [ -22, %294 ], [ 0, %445 ], [ 0, %428 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %447
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_falcon_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -96
  %6 = load i32, ptr %5, align 4
  br i1 %1, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -40
  tail call void @nvkm_memory_unref(ptr noundef %8) #12
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = load i8, ptr %9, align 4, !range !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 -12
  %14 = load ptr, ptr %13, align 4
  tail call void @vfree(ptr noundef %14) #12
  %15 = getelementptr i8, ptr %0, i32 -28
  %16 = load ptr, ptr %15, align 4
  tail call void @vfree(ptr noundef %16) #12
  store ptr null, ptr %15, align 4
  br label %17

17:                                               ; preds = %12, %7, %2
  %18 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call zeroext i1 @nvkm_mc_enabled(ptr noundef %4, i32 noundef %19, i32 noundef %21) #12
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = add i32 %6, 72
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %29 = and i32 %28, -4
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr i8, ptr %30, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #12, !srcloc !12
  %32 = load ptr, ptr %25, align 4
  %33 = add i32 %6, 20
  %34 = getelementptr i8, ptr %32, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 -1) #12, !srcloc !12
  br label %35

35:                                               ; preds = %23, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_falcon_intr(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -108
  %5 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -96
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = add i32 %8, 28
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %14 = load ptr, ptr %9, align 4
  %15 = add i32 %8, 8
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %18 = lshr i32 %13, 16
  %19 = xor i32 %18, -1
  %20 = and i32 %13, %19
  %21 = and i32 %20, %17
  %22 = load ptr, ptr %9, align 4
  %23 = add i32 %8, 80
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %26 = and i32 %25, 1073741823
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !10
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 52
  %28 = load ptr, ptr %27, align 8
  %29 = zext i32 %26 to i64
  %30 = shl nuw nsw i64 %29, 12
  %31 = call ptr @nvkm_fifo_chan_inst(ptr noundef %28, i64 noundef %30, ptr noundef nonnull %3) #12
  store ptr %31, ptr %2, align 4
  %32 = and i32 %21, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %1
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  call void %37(ptr noundef %4, ptr noundef %31) #12
  %40 = load ptr, ptr %9, align 4
  %41 = add i32 %8, 4
  %42 = getelementptr i8, ptr %40, i32 %41
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 64) #12, !srcloc !12
  %43 = and i32 %21, -65
  br label %44

44:                                               ; preds = %39, %34, %1
  %45 = phi i32 [ %43, %39 ], [ %21, %34 ], [ %21, %1 ]
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, 3
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.16, ptr noundef %56) #13
  br label %57

57:                                               ; preds = %52, %48
  %58 = load ptr, ptr %9, align 4
  %59 = add i32 %8, 4
  %60 = getelementptr i8, ptr %58, i32 %59
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 16) #12, !srcloc !12
  %61 = and i32 %45, -17
  br label %62

62:                                               ; preds = %57, %44
  %63 = phi i32 [ %61, %57 ], [ %45, %44 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %5, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.17, ptr noundef %73, i32 noundef %63) #13
  br label %74

74:                                               ; preds = %69, %65
  %75 = load ptr, ptr %9, align 4
  %76 = add i32 %8, 4
  %77 = getelementptr i8, ptr %75, i32 %76
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !11
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %63) #12, !srcloc !12
  br label %78

78:                                               ; preds = %74, %62
  %79 = load ptr, ptr %27, align 8
  %80 = load i32, ptr %3, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %79, i32 noundef %80, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_falcon_oclass_get(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -108
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %12, %2
  %8 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %9 = getelementptr %struct.nvkm_falcon_func, ptr %6, i32 0, i32 20, i32 %8, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = add i32 %8, 1
  %14 = icmp eq i32 %8, %1
  br i1 %14, label %15, label %7

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1
  %17 = getelementptr %struct.nvkm_falcon_func, ptr %6, i32 0, i32 20, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %16, ptr noundef align 4 dereferenceable(20) %17, i32 20, i1 false)
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi i32 [ %1, %15 ], [ %8, %7 ]
  ret i32 %19
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_mc_enabled(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_falcon_cclass_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 256, i32 noundef %2, i1 noundef zeroext true, ptr noundef %1, ptr noundef %3) #12
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{i64 3951777}
!9 = !{i64 2151491230}
!10 = !{!"auto-init"}
!11 = !{i64 2151492452}
!12 = !{i64 3951359}
!13 = !{i8 0, i8 2}
