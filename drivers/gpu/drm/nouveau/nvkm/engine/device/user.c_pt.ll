; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/device/user.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/device/user.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nv_device_v0 = type { i8, i8, [6 x i8], i64 }
%struct.nvkm_udevice = type { %struct.nvkm_object, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.139, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.139 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv_device_info_v1 = type { i8, i8, [6 x i8], [0 x %struct.nv_device_info_v1_data] }
%struct.nv_device_info_v1_data = type { i64, i64 }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.97, %struct.anon.98, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.97 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.98 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.86, i32, i32, i32, i32, i32, i32, %union.anon.90, i32, i32, [11 x i32], %union.anon.94 }>
%union.anon.86 = type { %struct.anon.89 }
%struct.anon.89 = type { i64 }
%union.anon.90 = type { %struct.anon.93 }
%struct.anon.93 = type { i32, i32, i8 }
%union.anon.94 = type <{ %struct.anon.96, [12 x i8] }>
%struct.anon.96 = type { i48 }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nv_device_time_v0 = type { i8, [7 x i8], i64 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.140, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.140 = type { ptr, ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.151], i32, [16 x %struct.anon.152], ptr, %struct.anon.153, %struct.anon.153, %struct.mutex, %struct.nvkm_device_oclass }
%struct.anon.151 = type { i8, i64 }
%struct.anon.152 = type { i8, i8 }
%struct.anon.153 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_fault = type { ptr, %struct.nvkm_subdev, [2 x ptr], i32, %struct.nvkm_event, %struct.nvkm_notify, %struct.nvkm_device_oclass }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@nvkm_udevice_sclass = dso_local local_unnamed_addr constant %struct.nvkm_sclass { i32 0, i32 0, i32 128, ptr null, ptr @nvkm_udevice_new }, align 4
@.str = private unnamed_addr constant [55 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create device size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create device v%d device %016llx\0A\00", align 1
@nvkm_udevice_super = internal constant %struct.nvkm_object_func { ptr null, ptr @nvkm_udevice_init, ptr @nvkm_udevice_fini, ptr @nvkm_udevice_mthd, ptr null, ptr @nvkm_udevice_map, ptr null, ptr @nvkm_udevice_rd08, ptr @nvkm_udevice_rd16, ptr @nvkm_udevice_rd32, ptr @nvkm_udevice_wr08, ptr @nvkm_udevice_wr16, ptr @nvkm_udevice_wr32, ptr null, ptr @nvkm_udevice_child_get }, align 4
@nvkm_udevice = internal constant %struct.nvkm_object_func { ptr null, ptr @nvkm_udevice_init, ptr @nvkm_udevice_fini, ptr @nvkm_udevice_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_udevice_child_get }, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device mthd %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device info size %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device info vers %d count %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device info vers %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/device/user.c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device time size %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: device time vers %d\0A\00", align 1
@nvkm_control_oclass = external dso_local constant %struct.nvkm_device_oclass, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_new(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_object, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_client, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %10, 4
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nvkm_client, ptr %8, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %6, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_object, ptr %6, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %2) #9
  br label %19

19:                                               ; preds = %12, %4
  %20 = icmp ugt i32 %2, 15
  br i1 %20, label %21, label %61

21:                                               ; preds = %19
  %22 = load i8, ptr %1, align 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %21
  %25 = icmp eq i32 %2, 16
  br i1 %25, label %26, label %61

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.nvkm_client, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 8
  %30 = icmp ugt i32 %29, 4
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.nvkm_client, ptr %27, i32 0, i32 1
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %6, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_object, ptr %6, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nv_device_v0, ptr %1, i32 0, i32 3
  %38 = load i64, ptr %37, align 8
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef 0, i64 noundef %38) #9
  br label %40

40:                                               ; preds = %31, %26
  %41 = getelementptr inbounds %struct.nv_device_v0, ptr %1, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 80) #10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %40
  %47 = icmp eq i8 %42, 0
  %48 = select i1 %47, ptr @nvkm_udevice, ptr @nvkm_udevice_super
  tail call void @nvkm_object_ctor(ptr noundef nonnull %48, ptr noundef %0, ptr noundef nonnull %44) #11
  store ptr %44, ptr %3, align 4
  %49 = getelementptr inbounds %struct.nv_device_v0, ptr %1, i32 0, i32 3
  %50 = load i64, ptr %49, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 2
  %54 = load i64, ptr %53, align 8
  br label %55

55:                                               ; preds = %52, %46
  %56 = phi i64 [ %54, %52 ], [ %50, %46 ]
  %57 = tail call ptr @nvkm_device_find(i64 noundef %56) #11
  %58 = getelementptr inbounds %struct.nvkm_udevice, ptr %44, i32 0, i32 1
  store ptr %57, ptr %58, align 8
  %59 = icmp eq ptr %57, null
  %60 = select i1 %59, i32 -19, i32 0
  br label %61

61:                                               ; preds = %55, %40, %24, %21, %19
  %62 = phi i32 [ -12, %40 ], [ %60, %55 ], [ -38, %19 ], [ -38, %21 ], [ -7, %24 ]
  ret i32 %62
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_find(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 10
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = tail call i32 @nvkm_device_init(ptr noundef %3) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 8
  %14 = add i32 %13, -1
  store i32 %14, ptr %5, align 8
  br label %15

15:                                               ; preds = %12, %9, %1
  %16 = phi i32 [ 0, %1 ], [ %10, %12 ], [ 0, %9 ]
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_fini(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 10
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = tail call i32 @nvkm_device_fini(ptr noundef %4, i1 noundef zeroext %1) #11
  %12 = icmp ne i32 %11, 0
  %13 = and i1 %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, ptr %6, align 8
  %16 = add i32 %15, 1
  store i32 %16, ptr %6, align 8
  br label %17

17:                                               ; preds = %14, %10, %2
  %18 = phi i32 [ 0, %2 ], [ %11, %14 ], [ %11, %10 ]
  tail call void @mutex_unlock(ptr noundef %5) #11
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_mthd(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %1) #9
  br label %17

17:                                               ; preds = %10, %4
  switch i32 %1, label %214 [
    i32 0, label %18
    i32 1, label %176
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 33
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 32
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %3) #9
  br label %36

36:                                               ; preds = %29, %18
  %37 = icmp ugt i32 %3, 7
  br i1 %37, label %38, label %214

38:                                               ; preds = %36
  %39 = load i8, ptr %2, align 8
  %40 = icmp eq i8 %39, 1
  br i1 %40, label %41, label %86

41:                                               ; preds = %38
  %42 = add i32 %3, -8
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr inbounds %struct.nvkm_client, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 8
  %46 = icmp ugt i32 %45, 4
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.nvkm_client, ptr %43, i32 0, i32 1
  %49 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nv_device_info_v1, ptr %2, i32 0, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef 1, i32 noundef %55) #9
  br label %57

57:                                               ; preds = %47, %41
  %58 = getelementptr inbounds %struct.nv_device_info_v1, ptr %2, i32 0, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 4
  %62 = icmp eq i32 %61, %42
  br i1 %62, label %63, label %214

63:                                               ; preds = %57
  %64 = icmp eq i8 %59, 0
  br i1 %64, label %214, label %65

65:                                               ; preds = %81, %63
  %66 = phi i32 [ %82, %81 ], [ 0, %63 ]
  %67 = getelementptr %struct.nv_device_info_v1, ptr %2, i32 0, i32 3, i32 %66
  %68 = load i64, ptr %67, align 8
  %69 = icmp ult i64 %68, 4294967296
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = getelementptr %struct.nv_device_info_v1, ptr %2, i32 0, i32 3, i32 %66, i32 1
  %72 = and i64 %68, -4294967296
  %73 = icmp eq i64 %72, 4294967296
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = tail call ptr @nvkm_device_subdev(ptr noundef %20, i32 noundef 32, i32 noundef 0) #11
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @nvkm_subdev_info(ptr noundef nonnull %75, i64 noundef %68, ptr noundef %71) #11
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77, %74, %70, %65
  store i64 -1, ptr %67, align 8
  br label %81

81:                                               ; preds = %80, %77
  %82 = add nuw nsw i32 %66, 1
  %83 = load i8, ptr %58, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ult i32 %82, %84
  br i1 %85, label %65, label %214

86:                                               ; preds = %38
  %87 = icmp ugt i32 %3, 103
  %88 = icmp eq i8 %39, 0
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %214

90:                                               ; preds = %86
  %91 = icmp eq i32 %3, 104
  br i1 %91, label %92, label %214

92:                                               ; preds = %90
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr inbounds %struct.nvkm_client, ptr %93, i32 0, i32 3
  %95 = load i32, ptr %94, align 8
  %96 = icmp ugt i32 %95, 4
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.nvkm_client, ptr %93, i32 0, i32 1
  %99 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %100 = load i32, ptr %99, align 8
  %101 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef 0) #9
  br label %104

104:                                              ; preds = %97, %92
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 16
  %106 = load i32, ptr %105, align 4
  switch i32 %106, label %109 [
    i32 26, label %107
    i32 31, label %107
    i32 76, label %107
    i32 78, label %107
    i32 99, label %107
    i32 103, label %107
    i32 104, label %107
    i32 170, label %107
    i32 172, label %107
    i32 175, label %107
  ]

107:                                              ; preds = %104, %104, %104, %104, %104, %104, %104, %104, %104, %104
  %108 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 1
  store i8 0, ptr %108, align 1
  br label %121

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  switch i32 %111, label %120 [
    i32 0, label %112
    i32 1, label %114
    i32 2, label %116
    i32 3, label %118
  ]

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 1
  store i8 1, ptr %113, align 1
  br label %121

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 1
  store i8 2, ptr %115, align 1
  br label %121

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 1
  store i8 3, ptr %117, align 1
  br label %121

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 1
  store i8 4, ptr %119, align 1
  br label %121

120:                                              ; preds = %109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 129, i32 noundef 9, ptr noundef null) #11
  br label %121

121:                                              ; preds = %120, %118, %116, %114, %112, %107
  %122 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 15
  %123 = load i32, ptr %122, align 8
  switch i32 %123, label %136 [
    i32 4, label %137
    i32 16, label %124
    i32 17, label %124
    i32 32, label %125
    i32 48, label %126
    i32 64, label %127
    i32 80, label %128
    i32 192, label %129
    i32 224, label %130
    i32 272, label %131
    i32 304, label %132
    i32 320, label %133
    i32 352, label %134
    i32 368, label %135
  ]

124:                                              ; preds = %121, %121
  br label %137

125:                                              ; preds = %121
  br label %137

126:                                              ; preds = %121
  br label %137

127:                                              ; preds = %121
  br label %137

128:                                              ; preds = %121
  br label %137

129:                                              ; preds = %121
  br label %137

130:                                              ; preds = %121
  br label %137

131:                                              ; preds = %121
  br label %137

132:                                              ; preds = %121
  br label %137

133:                                              ; preds = %121
  br label %137

134:                                              ; preds = %121
  br label %137

135:                                              ; preds = %121
  br label %137

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %136, %135, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %121
  %138 = phi i8 [ 0, %136 ], [ 13, %135 ], [ 12, %134 ], [ 11, %133 ], [ 10, %132 ], [ 9, %131 ], [ 8, %130 ], [ 7, %129 ], [ 6, %128 ], [ 5, %127 ], [ 4, %126 ], [ 3, %125 ], [ 2, %124 ], [ 1, %121 ]
  %139 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 4
  store i8 %138, ptr %139, align 1
  %140 = load i32, ptr %105, align 4
  %141 = trunc i32 %140 to i16
  %142 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 2
  store i16 %141, ptr %142, align 2
  %143 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 17
  %144 = load i8, ptr %143, align 8
  %145 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 3
  store i8 %144, ptr %145, align 4
  %146 = icmp eq ptr %22, null
  br i1 %146, label %159, label %147

147:                                              ; preds = %137
  %148 = getelementptr inbounds %struct.nvkm_fb, ptr %22, i32 0, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %159, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.nvkm_ram, ptr %149, i32 0, i32 3
  %153 = load i64, ptr %152, align 8
  %154 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 7
  store i64 %153, ptr %154, align 8
  %155 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 6
  store i64 %153, ptr %155, align 8
  %156 = icmp eq ptr %24, null
  %157 = icmp eq i64 %153, 0
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %166, label %161

159:                                              ; preds = %147, %137
  %160 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %160, i8 0, i64 16, i1 false) #11
  br label %166

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.nvkm_instmem, ptr %24, i32 0, i32 5
  %163 = load i32, ptr %162, align 4
  %164 = zext i32 %163 to i64
  %165 = sub i64 %153, %164
  store i64 %165, ptr %154, align 8
  br label %166

166:                                              ; preds = %161, %159, %151
  %167 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 8
  %168 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 14
  %169 = load ptr, ptr %168, align 4
  %170 = load ptr, ptr %169, align 4
  %171 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %167, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef %170) #11
  %172 = getelementptr inbounds %struct.nv_device_info_v0, ptr %2, i32 0, i32 9
  %173 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 5
  %174 = load ptr, ptr %173, align 8
  %175 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %172, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef %174) #11
  br label %214

176:                                              ; preds = %17
  %177 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %178 = load ptr, ptr %177, align 8
  %179 = load ptr, ptr %5, align 4
  %180 = getelementptr inbounds %struct.nvkm_client, ptr %179, i32 0, i32 3
  %181 = load i32, ptr %180, align 8
  %182 = icmp ugt i32 %181, 4
  br i1 %182, label %183, label %190

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.nvkm_client, ptr %179, i32 0, i32 1
  %185 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %186 = load i32, ptr %185, align 8
  %187 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %188 = load i32, ptr %187, align 4
  %189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %184, i32 noundef %186, i32 noundef %188, i32 noundef %3) #9
  br label %190

190:                                              ; preds = %183, %176
  %191 = icmp ugt i32 %3, 15
  br i1 %191, label %192, label %214

192:                                              ; preds = %190
  %193 = load i8, ptr %2, align 8
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %192
  %196 = icmp eq i32 %3, 16
  br i1 %196, label %197, label %214

197:                                              ; preds = %195
  %198 = load ptr, ptr %5, align 4
  %199 = getelementptr inbounds %struct.nvkm_client, ptr %198, i32 0, i32 3
  %200 = load i32, ptr %199, align 8
  %201 = icmp ugt i32 %200, 4
  br i1 %201, label %202, label %209

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.nvkm_client, ptr %198, i32 0, i32 1
  %204 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %205 = load i32, ptr %204, align 8
  %206 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %207 = load i32, ptr %206, align 4
  %208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %203, i32 noundef %205, i32 noundef %207, i32 noundef 0) #9
  br label %209

209:                                              ; preds = %202, %197
  %210 = getelementptr inbounds %struct.nvkm_device, ptr %178, i32 0, i32 31
  %211 = load ptr, ptr %210, align 8
  %212 = tail call i64 @nvkm_timer_read(ptr noundef %211) #11
  %213 = getelementptr inbounds %struct.nv_device_time_v0, ptr %2, i32 0, i32 2
  store i64 %212, ptr %213, align 8
  br label %214

214:                                              ; preds = %209, %195, %192, %190, %166, %90, %86, %81, %63, %57, %36, %17
  %215 = phi i32 [ -22, %17 ], [ 0, %166 ], [ -22, %57 ], [ -38, %86 ], [ -7, %90 ], [ -38, %36 ], [ 0, %63 ], [ 0, %209 ], [ -38, %190 ], [ -38, %192 ], [ -7, %195 ], [ 0, %81 ]
  ret i32 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  store i32 0, ptr %3, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_device_func, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %8, i32 noundef 0) #11
  %13 = zext i32 %12 to i64
  store i64 %13, ptr %4, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = getelementptr inbounds %struct.nvkm_device_func, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %8, i32 noundef 0) #11
  %18 = zext i32 %17 to i64
  store i64 %18, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_rd08(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = trunc i64 %1 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  store i8 %10, ptr %2, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_rd16(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = trunc i64 %1 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  store i16 %10, ptr %2, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_rd32(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = trunc i64 %1 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  store i32 %10, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_wr08(ptr nocapture noundef readonly %0, i64 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = trunc i64 %1 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %2) #11, !srcloc !15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_wr16(ptr nocapture noundef readonly %0, i64 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = trunc i64 %1 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 %2) #11, !srcloc !17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_wr32(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = trunc i64 %1 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !18
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %2) #11, !srcloc !19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_child_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.nvkm_udevice, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4
  %7 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 10
  br label %8

8:                                                ; preds = %40, %3
  %9 = phi i32 [ %1, %3 ], [ %41, %40 ]
  %10 = phi i64 [ 35191888281600, %3 ], [ %45, %40 ]
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = lshr i64 %10, 32
  %15 = trunc i64 %14 to i32
  %16 = call i32 @llvm.cttz.i32(i32 %15, i1 false) #11, !range !20
  %17 = add nuw nsw i32 %16, 32
  br label %20

18:                                               ; preds = %8
  %19 = call i32 @llvm.cttz.i32(i32 %11, i1 true) #11, !range !20
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %17, %13 ], [ %19, %18 ]
  %22 = icmp ne i64 %10, 0
  %23 = load ptr, ptr %4, align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = call ptr @nvkm_device_engine(ptr noundef %6, i32 noundef %21, i32 noundef 0) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr inbounds %struct.nvkm_engine_func, ptr %30, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  store ptr %27, ptr %7, align 8
  %35 = load ptr, ptr %27, align 4
  %36 = getelementptr inbounds %struct.nvkm_engine_func, ptr %35, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %2, i32 noundef %9, ptr noundef nonnull %4) #11
  %39 = sub i32 %9, %38
  br label %40

40:                                               ; preds = %34, %29, %26
  %41 = phi i32 [ %39, %34 ], [ %9, %29 ], [ %9, %26 ]
  %42 = zext i32 %21 to i64
  %43 = shl nuw i64 1, %42
  %44 = xor i64 %43, -1
  %45 = and i64 %10, %44
  br label %8

46:                                               ; preds = %20
  br i1 %24, label %47, label %72

47:                                               ; preds = %46
  %48 = add i32 %9, -1
  %49 = icmp eq i32 %9, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 35
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = add i32 %9, -2
  %56 = icmp eq i32 %48, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.nvkm_mmu, ptr %52, i32 0, i32 11
  br label %68

59:                                               ; preds = %54, %50
  %60 = phi i32 [ %55, %54 ], [ %48, %50 ]
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 37
  %62 = load ptr, ptr %61, align 8
  %63 = icmp ne ptr %62, null
  %64 = icmp eq i32 %60, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.nvkm_fault, ptr %62, i32 0, i32 6
  br label %68

68:                                               ; preds = %66, %57, %47
  %69 = phi ptr [ %58, %57 ], [ %67, %66 ], [ @nvkm_control_oclass, %47 ]
  %70 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1
  %71 = getelementptr inbounds %struct.nvkm_device_oclass, ptr %69, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %70, ptr noundef align 4 dereferenceable(20) %71, i32 20, i1 false)
  br label %72

72:                                               ; preds = %68, %46
  %73 = phi ptr [ %69, %68 ], [ %23, %46 ]
  store ptr @nvkm_udevice_child_new, ptr %2, align 8
  %74 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 2
  store ptr %73, ptr %74, align 8
  br label %75

75:                                               ; preds = %72, %59
  %76 = phi i32 [ 0, %72 ], [ -22, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_subdev(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_info(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_udevice_child_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_udevice, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 %9(ptr noundef %11, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #11
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }

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
!8 = !{i64 3946215}
!9 = !{i64 2151484942}
!10 = !{i64 3945597}
!11 = !{i64 2151485415}
!12 = !{i64 3946435}
!13 = !{i64 2151485888}
!14 = !{i64 2151486240}
!15 = !{i64 3945820}
!16 = !{i64 2151486637}
!17 = !{i64 3945397}
!18 = !{i64 2151487110}
!19 = !{i64 3946017}
!20 = !{i32 0, i32 33}
