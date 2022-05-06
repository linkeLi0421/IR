; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/ic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_bus_probe = type { %struct.i2c_board_info, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.nvbios_extdev_func = type { i8, i8, i8 }
%struct.nvkm_therm = type { ptr, %struct.nvkm_subdev, %struct.nvkm_alarm, %struct.spinlock, ptr, i32, i32, i32, %struct.nvbios_therm_sensor, ptr, %struct.anon.120, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.anon.120 = type { %struct.spinlock, %struct.nvkm_alarm, [4 x i32] }
%struct.anon.121 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"lm90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"monitoring device\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"adt7473\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@nv_board_infos = internal global [21 x %struct.nvkm_i2c_bus_probe] [%struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"w83l785ts\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 45, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"w83781d\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 45, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adt7473\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 46, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 40 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adt7473\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 45, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 40 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adt7473\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 44, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 40 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"f75375\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 46, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"lm99\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"lm90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"lm90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 77, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 41, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 42, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 43, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 77, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"lm63\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"lm63\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"i2c:\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"%s: Found an %s at address 0x%x (controlled by lm_sensors, temp offset %+i C)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_therm_ic_ctor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nvbios_extdev_func, align 1
  %3 = alloca [2 x %struct.nvkm_i2c_bus_probe], align 4
  %4 = alloca [2 x %struct.nvkm_i2c_bus_probe], align 4
  %5 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false), !annotation !8
  %11 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %10, i32 noundef -1) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %1
  %14 = call i32 @nvbios_extdev_find(ptr noundef %8, i32 noundef 2, ptr noundef nonnull %2) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #6
  %17 = getelementptr inbounds i8, ptr %3, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(100) %17, i8 0, i64 100, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(20) @.str, i32 20, i1 false)
  %18 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 2
  %19 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %2, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = lshr i8 %20, 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %18, align 2
  %23 = call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull @probe_monitoring_device, ptr noundef %0) #6
  %24 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 12
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #6
  br i1 %26, label %27, label %46

27:                                               ; preds = %16, %13
  %28 = call i32 @nvbios_extdev_find(ptr noundef %8, i32 noundef 112, ptr noundef nonnull %2) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #6
  %31 = getelementptr inbounds i8, ptr %4, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(100) %31, i8 0, i64 100, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(20) @.str.2, i32 20, i1 false)
  %32 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 2
  %33 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %2, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = lshr i8 %34, 1
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %32, align 2
  %37 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, ptr %4, i32 0, i32 1
  store i8 20, ptr %37, align 4
  %38 = call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, ptr noundef nonnull @probe_monitoring_device, ptr noundef %0) #6
  %39 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 12
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #6
  br i1 %41, label %42, label %46

42:                                               ; preds = %30, %27
  %43 = call zeroext i1 @nvbios_extdev_skip_probe(ptr noundef %8) #6
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @nv_board_infos, ptr noundef nonnull @probe_monitoring_device, ptr noundef %0) #6
  br label %46

46:                                               ; preds = %44, %42, %30, %16, %1
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_extdev_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bus_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @probe_monitoring_device(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %1) #6
  %5 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 5
  %6 = tail call ptr @i2c_new_client_device(ptr noundef %5, ptr noundef %1) #6
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 80
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %6, ptr noundef %1) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %8
  tail call void @i2c_unregister_device(ptr noundef %6) #6
  br label %36

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.nvkm_therm, ptr %2, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 3
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nvkm_therm, ptr %2, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_therm, ptr %2, i32 0, i32 1, i32 4
  %28 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 2
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.nvkm_therm, ptr %2, i32 0, i32 8, i32 4
  %32 = load i8, ptr %31, align 2
  %33 = sext i8 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.5, ptr noundef %27, ptr noundef %1, i32 noundef %30, i32 noundef %33) #7
  br label %34

34:                                               ; preds = %22, %18
  %35 = getelementptr inbounds %struct.nvkm_therm, ptr %2, i32 0, i32 12
  store ptr %6, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %17, %3
  %37 = phi i1 [ false, %17 ], [ true, %34 ], [ false, %3 ]
  ret i1 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvbios_extdev_skip_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
