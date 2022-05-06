; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_mxm = type { %struct.nvkm_subdev, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@nvkm_mxm = internal constant %struct.nvkm_subdev_func zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: no VBIOS data, nothing to do\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: BIOS version %d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: module flags: %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: config flags: %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: failed to locate valid SIS\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: MXMS Version %d.%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NvMXMDCB\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"%s: checking %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ROM\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_mxm_new_(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 60) #8
  store ptr %10, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %112, label %12

12:                                               ; preds = %4
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_mxm, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %10) #7
  %13 = call zeroext i16 @mxm_table(ptr noundef %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = zext i16 %13 to i32
  %17 = call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %16) #7
  store i8 %17, ptr %5, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15, %12
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %21, 3
  br i1 %22, label %23, label %112

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef %28) #9
  br label %112

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = icmp ugt i32 %31, 2
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 4
  %39 = zext i8 %17 to i32
  %40 = lshr i32 %39, 4
  %41 = and i32 %39, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.1, ptr noundef %38, i32 noundef %40, i32 noundef %41) #9
  %42 = load i32, ptr %30, align 8
  %43 = icmp ugt i32 %42, 3
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  %45 = load i8, ptr %5, align 1
  br label %71

46:                                               ; preds = %33
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = add nuw nsw i32 %16, 1
  %51 = call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %50) #7
  %52 = zext i8 %51 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.2, ptr noundef %38, i32 noundef %52) #9
  %53 = load i32, ptr %30, align 8
  %54 = icmp ugt i32 %53, 3
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = load i8, ptr %5, align 1
  br label %71

57:                                               ; preds = %46
  %58 = load ptr, ptr %34, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = add nuw nsw i32 %16, 2
  %62 = call zeroext i8 @nvbios_rd08(ptr noundef %8, i32 noundef %61) #7
  %63 = zext i8 %62 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.3, ptr noundef %38, i32 noundef %63) #9
  %64 = load i32, ptr %30, align 8
  %65 = load i8, ptr %5, align 1
  %66 = icmp ugt i32 %64, 3
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load ptr, ptr %34, align 4
  %69 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.7, ptr noundef %38, ptr noundef nonnull @.str.8) #9
  br label %71

71:                                               ; preds = %67, %57, %55, %44, %29
  %72 = phi i8 [ %56, %55 ], [ %65, %67 ], [ %65, %57 ], [ %45, %44 ], [ %17, %29 ]
  %73 = getelementptr inbounds %struct.nvkm_mxm, ptr %10, i32 0, i32 2
  %74 = call fastcc zeroext i1 @mxm_shadow_rom(ptr noundef nonnull %10, i8 noundef zeroext %72) #7
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = call zeroext i1 @mxms_valid(ptr noundef nonnull %10) #7
  br i1 %76, label %88, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr %73, align 8
  call void @kfree(ptr noundef %78) #7
  store ptr null, ptr %73, align 8
  br label %79

79:                                               ; preds = %77, %71
  %80 = load i32, ptr %30, align 8
  %81 = icmp ugt i32 %80, 1
  br i1 %81, label %82, label %112

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %86, ptr noundef nonnull @.str.4, ptr noundef %87) #9
  br label %112

88:                                               ; preds = %75
  %89 = load i32, ptr %30, align 8
  %90 = icmp ugt i32 %89, 3
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nvkm_device, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 4
  %97 = call zeroext i16 @mxms_version(ptr noundef nonnull %10) #7
  %98 = lshr i16 %97, 8
  %99 = zext i16 %98 to i32
  %100 = call zeroext i16 @mxms_version(ptr noundef nonnull %10) #7
  %101 = and i16 %100, 255
  %102 = zext i16 %101 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.5, ptr noundef %96, i32 noundef %99, i32 noundef %102) #9
  br label %103

103:                                              ; preds = %91, %88
  %104 = call zeroext i1 @mxms_foreach(ptr noundef nonnull %10, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #7
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 6
  %106 = load ptr, ptr %105, align 4
  %107 = call zeroext i1 @nvkm_boolopt(ptr noundef %106, ptr noundef nonnull @.str.6, i1 noundef zeroext true) #7
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.nvkm_mxm, ptr %10, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = or i32 %110, 1
  store i32 %111, ptr %109, align 4
  br label %112

112:                                              ; preds = %108, %103, %82, %79, %23, %19, %4
  %113 = phi i32 [ -12, %4 ], [ 0, %23 ], [ 0, %19 ], [ 0, %82 ], [ 0, %79 ], [ 0, %108 ], [ 0, %103 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i32 %113
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mxm_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mxms_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mxms_foreach(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mxms_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mxm_shadow_rom(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [6 x i8], align 1
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false), !annotation !8
  %16 = tail call zeroext i8 @mxm_ddc_map(ptr noundef %13, i8 noundef zeroext 1) #7
  %17 = and i8 %16, 15
  %18 = icmp eq i8 %17, 15
  br i1 %18, label %71, label %19

19:                                               ; preds = %2
  %20 = zext i8 %17 to i32
  %21 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %15, i32 noundef %20) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  %24 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %24, i8 0, i32 16, i1 false) #7, !annotation !8
  store i16 84, ptr %8, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %24, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 84, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 6, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %9, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %21, i32 0, i32 5
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %8, i32 noundef 2) #7
  %33 = icmp eq i32 %32, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  br i1 %33, label %44, label %34

34:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  %35 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %35, i8 0, i32 16, i1 false) #7, !annotation !8
  store i16 86, ptr %6, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %36, align 2
  store i16 1, ptr %35, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 86, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 6, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %9, ptr %41, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %6, i32 noundef 2) #7
  %43 = icmp eq i32 %42, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br i1 %43, label %44, label %71

44:                                               ; preds = %34, %23
  %45 = phi i8 [ 84, %23 ], [ 86, %34 ]
  %46 = getelementptr inbounds %struct.nvkm_mxm, ptr %0, i32 0, i32 2
  store ptr %9, ptr %46, align 4
  %47 = call zeroext i16 @mxms_headerlen(ptr noundef %0) #7
  %48 = trunc i16 %47 to i8
  %49 = call zeroext i16 @mxms_structlen(ptr noundef %0) #7
  %50 = trunc i16 %49 to i8
  %51 = add i8 %50, %48
  %52 = zext i8 %51 to i32
  %53 = call noalias align 64 ptr @__kmalloc(i32 noundef %52, i32 noundef 3264) #10
  store ptr %53, ptr %46, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %56 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %56, i8 0, i32 16, i1 false) #7, !annotation !8
  %57 = zext i8 %45 to i16
  store i16 %57, ptr %4, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %58, align 2
  store i16 1, ptr %56, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %59, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %57, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %63 = zext i8 %51 to i16
  store i16 %63, ptr %62, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %53, ptr %64, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %4, i32 noundef 2) #7
  %66 = icmp eq i32 %65, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br i1 %66, label %71, label %67

67:                                               ; preds = %55
  %68 = load ptr, ptr %46, align 4
  br label %69

69:                                               ; preds = %67, %44
  %70 = phi ptr [ %68, %67 ], [ null, %44 ]
  call void @kfree(ptr noundef %70) #7
  store ptr null, ptr %46, align 4
  br label %71

71:                                               ; preds = %69, %55, %34, %19, %2
  %72 = phi i1 [ false, %69 ], [ false, %19 ], [ false, %34 ], [ true, %55 ], [ false, %2 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #7
  ret i1 %72
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mxm_ddc_map(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mxms_headerlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mxms_structlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }
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
!8 = !{!"auto-init"}
