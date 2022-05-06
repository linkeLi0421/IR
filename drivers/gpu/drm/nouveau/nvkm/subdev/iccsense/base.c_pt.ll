; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_iccsense = type { %struct.nvkm_subdev, i8, %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_iccsense_rail = type { %struct.list_head, ptr, ptr, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nvbios_extdev_func = type { i8, i8, i8 }
%struct.nvbios_power_budget = type { i32, i8, i8, i8, i8, i8 }
%struct.nvbios_iccsense = type { i32, ptr }
%struct.nvbios_power_budget_entry = type { i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pwr_rail_t = type { i8, i8, i8, [3 x %struct.pwr_rail_resistor_t], i16 }
%struct.pwr_rail_resistor_t = type { i8, i8 }
%struct.nvkm_iccsense_sensor = type { %struct.list_head, i32, i32, ptr, i8, i16 }
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

@iccsense_func = internal constant %struct.nvkm_subdev_func { ptr @nvkm_iccsense_dtor, ptr null, ptr @nvkm_iccsense_oneinit, ptr null, ptr @nvkm_iccsense_init, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: config mismatch found for extdev %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"%s: create rail for extdev %i: { idx: %i, mohm: %i }\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"%s: Unknown sensor type %x, power reading disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"%s: found invalid sensor id: %i, power readingmight be invalid\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: write config of extdev %i: 0x%04x\0A\00", align 1
@switch.table.nvkm_iccsense_oneinit = private unnamed_addr constant [3 x ptr] [ptr @nvkm_iccsense_ina219_read, ptr @nvkm_iccsense_ina209_read, ptr @nvkm_iccsense_ina3221_read], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_iccsense_read_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %20, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %18, %16 ], [ %5, %3 ]
  %9 = phi i32 [ %17, %16 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef nonnull %0, ptr noundef %8) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = add i32 %14, %9
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %7

20:                                               ; preds = %16, %13, %7, %3, %1
  %21 = phi i32 [ -22, %1 ], [ 0, %3 ], [ %17, %16 ], [ -19, %7 ], [ %14, %13 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_iccsense_ctor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @iccsense_func, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_iccsense_new_(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 80) #7
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_iccsense, ptr %6, i32 0, i32 2
  store volatile ptr %9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nvkm_iccsense, ptr %6, i32 0, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvkm_iccsense, ptr %6, i32 0, i32 3
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nvkm_iccsense, ptr %6, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @iccsense_func, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #6
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_iccsense_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %6) #6
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %23, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %18, %16 ], [ %14, %12 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @kfree(ptr noundef %17) #6
  %22 = icmp eq ptr %18, %13
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %12
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_iccsense_oneinit(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca i8, align 1
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca %struct.nvbios_extdev_func, align 1
  %12 = alloca %struct.nvbios_power_budget, align 4
  %13 = alloca %struct.nvbios_iccsense, align 8
  %14 = alloca %struct.nvbios_power_budget_entry, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 21
  %18 = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #6
  store i64 0, ptr %13, align 8, !annotation !8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %264, label %20

20:                                               ; preds = %1
  %21 = call i32 @nvbios_power_budget_header(ptr noundef nonnull %18, ptr noundef nonnull %12) #6
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.nvbios_power_budget, ptr %12, i32 0, i32 5
  %24 = load i8, ptr %23, align 4
  %25 = icmp ne i8 %24, -1
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i32 12, i1 false), !annotation !8
  %28 = call i32 @nvbios_power_budget_entry(ptr noundef nonnull %18, ptr noundef nonnull %12, i8 noundef zeroext %24, ptr noundef nonnull %14) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %14, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %14, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #6
  br label %38

38:                                               ; preds = %37, %20
  %39 = call i32 @nvbios_iccsense_parse(ptr noundef nonnull %18, ptr noundef nonnull %13) #6
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr %13, align 8
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %264

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 1
  store i8 1, ptr %45, align 4
  %46 = icmp sgt i32 %41, 0
  br i1 %46, label %47, label %264

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.nvbios_iccsense, ptr %13, i32 0, i32 1
  %49 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 2
  %50 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %11, i32 0, i32 2
  %51 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %11, i32 0, i32 1
  %52 = getelementptr inbounds i8, ptr %7, i32 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  %59 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %60 = getelementptr inbounds i8, ptr %4, i32 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  %67 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %68 = getelementptr inbounds i8, ptr %10, i32 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  %75 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 2, i32 1
  %76 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %77 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %78 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 3
  %79 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 3, i32 1
  br label %80

80:                                               ; preds = %260, %47
  %81 = phi i32 [ 0, %47 ], [ %261, %260 ]
  %82 = load ptr, ptr %48, align 4
  %83 = getelementptr %struct.pwr_rail_t, ptr %82, i32 %81
  %84 = load i8, ptr %83, align 2
  %85 = icmp eq i8 %84, 1
  br i1 %85, label %86, label %260

86:                                               ; preds = %80
  %87 = getelementptr %struct.pwr_rail_t, ptr %82, i32 %81, i32 2
  %88 = load i8, ptr %87, align 2
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %260, label %90

90:                                               ; preds = %86
  %91 = getelementptr %struct.pwr_rail_t, ptr %82, i32 %81, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  br label %94

94:                                               ; preds = %98, %90
  %95 = phi ptr [ %49, %90 ], [ %96, %98 ]
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %49
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %96, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, %93
  br i1 %101, label %189, label %94

102:                                              ; preds = %94
  %103 = load ptr, ptr %15, align 4
  %104 = getelementptr inbounds %struct.nvkm_device, ptr %103, i32 0, i32 21
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.nvkm_device, ptr %103, i32 0, i32 26
  %107 = load ptr, ptr %106, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %11, i8 0, i32 3, i1 false) #6, !annotation !8
  %108 = icmp ne ptr %107, null
  %109 = icmp ne ptr %105, null
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %187

111:                                              ; preds = %102
  %112 = call i32 @nvbios_extdev_parse(ptr noundef nonnull %105, i32 noundef %93, ptr noundef nonnull %11) #6
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %187

114:                                              ; preds = %111
  %115 = load i8, ptr %11, align 1
  %116 = icmp eq i8 %115, -1
  br i1 %116, label %187, label %117

117:                                              ; preds = %114
  %118 = add i8 %115, -79
  %119 = icmp ult i8 %118, -3
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  store i8 0, ptr %45, align 4
  %121 = load i32, ptr %76, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %187, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %15, align 4
  %125 = getelementptr inbounds %struct.nvkm_device, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = zext i8 %115 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.2, ptr noundef %77, i32 noundef %127) #8
  br label %187

128:                                              ; preds = %117
  %129 = load i8, ptr %50, align 1
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i32 -1, i32 -2
  %132 = call ptr @nvkm_i2c_bus_find(ptr noundef nonnull %107, i32 noundef %131) #6
  %133 = icmp eq ptr %132, null
  br i1 %133, label %187, label %134

134:                                              ; preds = %128
  %135 = load i8, ptr %51, align 1
  %136 = lshr i8 %135, 1
  %137 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %132, i32 0, i32 5
  %138 = load i8, ptr %11, align 1
  switch i8 %138, label %166 [
    i8 77, label %139
    i8 76, label %139
    i8 78, label %143
  ]

139:                                              ; preds = %134, %134
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #6
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #6
  store i16 0, ptr %9, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %68, i8 0, i32 16, i1 false) #6, !annotation !8
  %140 = zext i8 %136 to i16
  store i16 %140, ptr %10, align 4
  store i16 0, ptr %69, align 2
  store i16 1, ptr %68, align 4
  store ptr %8, ptr %70, align 4
  store i16 %140, ptr %71, align 4
  store i16 1, ptr %72, align 2
  store i16 2, ptr %73, align 4
  store ptr %9, ptr %74, align 4
  %141 = call i32 @i2c_transfer(ptr noundef %137, ptr noundef nonnull %10, i32 noundef 2) #6
  %142 = icmp eq i32 %141, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #6
  br i1 %142, label %173, label %166

143:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 -1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #6
  store i16 0, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %52, i8 0, i32 16, i1 false) #6, !annotation !8
  %144 = zext i8 %136 to i16
  store i16 %144, ptr %7, align 4
  store i16 0, ptr %53, align 2
  store i16 1, ptr %52, align 4
  store ptr %5, ptr %54, align 4
  store i16 %144, ptr %55, align 4
  store i16 1, ptr %56, align 2
  store i16 2, ptr %57, align 4
  store ptr %6, ptr %58, align 4
  %145 = call i32 @i2c_transfer(ptr noundef %137, ptr noundef nonnull %7, i32 noundef 2) #6
  %146 = icmp eq i32 %145, 2
  %147 = load i8, ptr %6, align 2
  %148 = zext i8 %147 to i32
  %149 = shl nuw nsw i32 %148, 8
  %150 = load i8, ptr %59, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %149, %151
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  %153 = icmp eq i32 %152, 12832
  %154 = select i1 %146, i1 %153, i1 false
  br i1 %154, label %155, label %166

155:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 -2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %60, i8 0, i32 16, i1 false) #6, !annotation !8
  store i16 %144, ptr %4, align 4
  store i16 0, ptr %61, align 2
  store i16 1, ptr %60, align 4
  store ptr %2, ptr %62, align 4
  store i16 %144, ptr %63, align 4
  store i16 1, ptr %64, align 2
  store i16 2, ptr %65, align 4
  store ptr %3, ptr %66, align 4
  %156 = call i32 @i2c_transfer(ptr noundef %137, ptr noundef nonnull %4, i32 noundef 2) #6
  %157 = icmp eq i32 %156, 2
  %158 = load i8, ptr %3, align 2
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 8
  %161 = load i8, ptr %67, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %160, %162
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %164 = icmp eq i32 %163, 21577
  %165 = select i1 %157, i1 %164, i1 false
  br i1 %165, label %173, label %166

166:                                              ; preds = %155, %143, %139, %134
  store i8 0, ptr %45, align 4
  %167 = load i32, ptr %76, align 4
  %168 = icmp ugt i32 %167, 1
  br i1 %168, label %169, label %187

169:                                              ; preds = %166
  %170 = load ptr, ptr %15, align 4
  %171 = getelementptr inbounds %struct.nvkm_device, ptr %170, i32 0, i32 2
  %172 = load ptr, ptr %171, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %172, ptr noundef nonnull @.str.3, ptr noundef %77, i32 noundef %93) #8
  br label %187

173:                                              ; preds = %155, %139
  %174 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %175 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %174, i32 noundef 3264, i32 noundef 24) #7
  %176 = icmp eq ptr %175, null
  br i1 %176, label %187, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr %75, align 4
  store ptr %175, ptr %75, align 4
  store ptr %49, ptr %175, align 8
  %179 = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  store ptr %178, ptr %179, align 4
  store volatile ptr %175, ptr %178, align 4
  %180 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %175, i32 0, i32 1
  store i32 %93, ptr %180, align 8
  %181 = load i8, ptr %11, align 1
  %182 = zext i8 %181 to i32
  %183 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %175, i32 0, i32 2
  store i32 %182, ptr %183, align 4
  %184 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %175, i32 0, i32 3
  store ptr %137, ptr %184, align 8
  %185 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %175, i32 0, i32 4
  store i8 %136, ptr %185, align 4
  %186 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %175, i32 0, i32 5
  store i16 0, ptr %186, align 2
  br label %187

187:                                              ; preds = %177, %173, %169, %166, %128, %123, %120, %114, %111, %102
  %188 = phi ptr [ %175, %177 ], [ null, %111 ], [ null, %102 ], [ null, %114 ], [ null, %123 ], [ null, %120 ], [ null, %128 ], [ null, %169 ], [ null, %166 ], [ null, %173 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #6
  br label %189

189:                                              ; preds = %187, %98
  %190 = phi ptr [ %188, %187 ], [ %96, %98 ]
  %191 = icmp eq ptr %190, null
  br i1 %191, label %260, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %190, i32 0, i32 5
  %194 = load i16, ptr %193, align 2
  %195 = icmp eq i16 %194, 0
  %196 = getelementptr %struct.pwr_rail_t, ptr %82, i32 %81, i32 4
  %197 = load i16, ptr %196, align 2
  br i1 %195, label %198, label %199

198:                                              ; preds = %192
  store i16 %197, ptr %193, align 2
  br label %210

199:                                              ; preds = %192
  %200 = icmp eq i16 %194, %197
  br i1 %200, label %210, label %201

201:                                              ; preds = %199
  %202 = load i32, ptr %76, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %15, align 4
  %206 = getelementptr inbounds %struct.nvkm_device, ptr %205, i32 0, i32 2
  %207 = load ptr, ptr %206, align 8
  %208 = load i8, ptr %91, align 1
  %209 = zext i8 %208 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str, ptr noundef %77, i32 noundef %209) #8
  br label %210

210:                                              ; preds = %204, %201, %199, %198
  %211 = load i8, ptr %87, align 2
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %260, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %190, i32 0, i32 2
  br label %215

215:                                              ; preds = %255, %213
  %216 = phi i8 [ %211, %213 ], [ %256, %255 ]
  %217 = phi i32 [ 0, %213 ], [ %257, %255 ]
  %218 = getelementptr %struct.pwr_rail_t, ptr %82, i32 %81, i32 3, i32 %217
  %219 = load i8, ptr %218, align 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %255, label %221

221:                                              ; preds = %215
  %222 = getelementptr %struct.pwr_rail_t, ptr %82, i32 %81, i32 3, i32 %217, i32 1
  %223 = load i8, ptr %222, align 1, !range !9
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %255, label %225

225:                                              ; preds = %221
  %226 = load i32, ptr %214, align 4
  %227 = add i32 %226, -76
  %228 = icmp ult i32 %227, 3
  br i1 %228, label %229, label %255

229:                                              ; preds = %225
  %230 = getelementptr inbounds [3 x ptr], ptr @switch.table.nvkm_iccsense_oneinit, i32 0, i32 %227
  %231 = load ptr, ptr %230, align 4
  %232 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %233 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %232, i32 noundef 3264, i32 noundef 20) #7
  %234 = icmp eq ptr %233, null
  br i1 %234, label %264, label %235

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %233, i32 0, i32 1
  store ptr %231, ptr %236, align 8
  %237 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %233, i32 0, i32 2
  store ptr %190, ptr %237, align 4
  %238 = trunc i32 %217 to i8
  %239 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %233, i32 0, i32 3
  store i8 %238, ptr %239, align 8
  %240 = load i8, ptr %218, align 1
  %241 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %233, i32 0, i32 4
  store i8 %240, ptr %241, align 1
  %242 = load i32, ptr %76, align 4
  %243 = icmp ugt i32 %242, 3
  br i1 %243, label %244, label %251

244:                                              ; preds = %235
  %245 = load ptr, ptr %15, align 4
  %246 = getelementptr inbounds %struct.nvkm_device, ptr %245, i32 0, i32 2
  %247 = load ptr, ptr %246, align 8
  %248 = load i8, ptr %91, align 1
  %249 = zext i8 %248 to i32
  %250 = zext i8 %240 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %247, ptr noundef nonnull @.str.1, ptr noundef %77, i32 noundef %249, i32 noundef %217, i32 noundef %250) #8
  br label %251

251:                                              ; preds = %244, %235
  %252 = load ptr, ptr %79, align 4
  store ptr %233, ptr %79, align 4
  store ptr %78, ptr %233, align 8
  %253 = getelementptr inbounds %struct.list_head, ptr %233, i32 0, i32 1
  store ptr %252, ptr %253, align 4
  store volatile ptr %233, ptr %252, align 4
  %254 = load i8, ptr %87, align 2
  br label %255

255:                                              ; preds = %251, %225, %221, %215
  %256 = phi i8 [ %254, %251 ], [ %216, %221 ], [ %216, %215 ], [ %216, %225 ]
  %257 = add nuw nsw i32 %217, 1
  %258 = zext i8 %256 to i32
  %259 = icmp ult i32 %257, %258
  br i1 %259, label %215, label %260

260:                                              ; preds = %255, %210, %189, %86, %80
  %261 = add nuw nsw i32 %81, 1
  %262 = load i32, ptr %13, align 8
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %80, label %264

264:                                              ; preds = %260, %229, %44, %38, %1
  %265 = phi i32 [ 0, %1 ], [ 0, %38 ], [ 0, %44 ], [ -12, %229 ], [ 0, %260 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #6
  ret i32 %265
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_iccsense_init(ptr noundef %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = getelementptr inbounds %struct.nvkm_iccsense, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds i8, ptr %2, i32 1
  %12 = getelementptr inbounds i8, ptr %2, i32 2
  %13 = getelementptr inbounds i8, ptr %3, i32 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %16

16:                                               ; preds = %29, %7
  %17 = phi ptr [ %5, %7 ], [ %41, %29 ]
  %18 = load i32, ptr %8, align 4
  %19 = icmp ugt i32 %18, 4
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %17, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %17, i32 0, i32 5
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.4, ptr noundef %10, i32 noundef %25, i32 noundef %28) #8
  br label %29

29:                                               ; preds = %20, %16
  %30 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %17, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %17, i32 0, i32 4
  %33 = load i8, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %17, i32 0, i32 5
  %35 = load i16, ptr %34, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #6
  %36 = lshr i16 %35, 8
  %37 = trunc i16 %36 to i8
  store i8 0, ptr %2, align 1
  store i8 %37, ptr %11, align 1
  %38 = trunc i16 %35 to i8
  store i8 %38, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  store i32 3, ptr %13, align 4, !annotation !8
  %39 = zext i8 %33 to i16
  store i16 %39, ptr %3, align 4
  store i16 0, ptr %14, align 2
  store ptr %2, ptr %15, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %3, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #6
  %41 = load ptr, ptr %17, align 4
  %42 = icmp eq ptr %41, %4
  br i1 %42, label %43, label %16

43:                                               ; preds = %29, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_power_budget_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_power_budget_entry(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_iccsense_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_iccsense_ina209_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %4, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %1, i32 0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = tail call fastcc i32 @nvkm_iccsense_poll_lane(ptr noundef %6, i8 noundef zeroext %8, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext %10, i16 noundef zeroext 40) #6
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_iccsense_ina219_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %4, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %1, i32 0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = tail call fastcc i32 @nvkm_iccsense_poll_lane(ptr noundef %6, i8 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext %10, i16 noundef zeroext 40) #6
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_iccsense_ina3221_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_iccsense_sensor, ptr %4, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %1, i32 0, i32 3
  %10 = load i8, ptr %9, align 4
  %11 = shl i8 %10, 1
  %12 = or i8 %11, 1
  %13 = add i8 %11, 2
  %14 = getelementptr inbounds %struct.nvkm_iccsense_rail, ptr %1, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = tail call fastcc i32 @nvkm_iccsense_poll_lane(ptr noundef %6, i8 noundef zeroext %8, i8 noundef zeroext %12, i8 noundef zeroext 3, i8 noundef zeroext %13, i8 noundef zeroext %15, i16 noundef zeroext 320)
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_extdev_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_iccsense_poll_lane(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i16 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca i8, align 1
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11)
  store i8 %2, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #6
  store i16 0, ptr %12, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #6
  %14 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #6, !annotation !8
  %15 = zext i8 %1 to i16
  store i16 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  store i16 %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %21, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 2) #6
  %23 = icmp eq i32 %22, 2
  %24 = load i8, ptr %12, align 2
  %25 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 %4, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #6
  store i16 0, ptr %9, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #6
  %27 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %27, i8 0, i32 16, i1 false) #6, !annotation !8
  store i16 %15, ptr %10, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %28, align 2
  store i16 1, ptr %27, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %15, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 2, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %33, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 2) #6
  %35 = icmp eq i32 %34, 2
  %36 = load i8, ptr %9, align 2
  %37 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %39 = select i1 %23, i1 %35, i1 false
  br i1 %39, label %40, label %57

40:                                               ; preds = %7
  %41 = zext i8 %36 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = zext i8 %38 to i32
  %44 = or i32 %42, %43
  %45 = zext i8 %24 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = zext i8 %26 to i32
  %48 = or i32 %46, %47
  %49 = zext i8 %3 to i32
  %50 = lshr i32 %48, %49
  %51 = lshr i32 %44, 3
  %52 = zext i16 %6 to i32
  %53 = mul i32 %50, %52
  %54 = mul i32 %53, %51
  %55 = zext i8 %5 to i32
  %56 = sdiv i32 %54, %55
  br label %57

57:                                               ; preds = %40, %7
  %58 = phi i32 [ %56, %40 ], [ -22, %7 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i8 0, i8 2}
