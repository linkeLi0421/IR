; ModuleID = '/llk/IR/drivers/input/mouse/psmouse-smbus.c_pt.bc'
source_filename = "../drivers/input/mouse/psmouse-smbus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psmouse_smbus_dev = type { %struct.i2c_board_info, ptr, ptr, %struct.list_head, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.psmouse_smbus_removal_work = type { %struct.work_struct, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@psmouse_smbus_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @psmouse_smbus_mutex, i64 12), ptr getelementptr (i8, ptr @psmouse_smbus_mutex, i64 12) } }, align 4
@psmouse_smbus_list = internal global %struct.list_head { ptr @psmouse_smbus_list, ptr @psmouse_smbus_list }, align 4
@.str = private unnamed_addr constant [63 x i8] c"psmouse_smbus: failed to set up link with iSMBus companion %s\0A\00", align 1
@i2c_bus_type = external dso_local global %struct.bus_type, align 4
@psmouse_smbus_notifier = internal global %struct.notifier_block { ptr @psmouse_smbus_notifier_call, ptr null, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"\013psmouse: failed to register i2c bus notifier: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@i2c_adapter_type = external dso_local global %struct.device_type, align 4
@i2c_client_type = external dso_local global %struct.device_type, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @psmouse_smbus_cleanup(ptr noundef readnone %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  %2 = load ptr, ptr @psmouse_smbus_list, align 4
  %3 = icmp eq ptr %2, @psmouse_smbus_list
  br i1 %3, label %17, label %4

4:                                                ; preds = %15, %1
  %5 = phi ptr [ %6, %15 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %5, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %5, i32 -64
  %12 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %6, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void @kfree(ptr noundef %11) #8
  br label %15

15:                                               ; preds = %10, %4
  %16 = icmp eq ptr %6, @psmouse_smbus_list
  br i1 %16, label %17, label %4

17:                                               ; preds = %15, %1
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @psmouse_smbus_init(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 76) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %67, label %10

10:                                               ; preds = %6
  %11 = zext i1 %4 to i8
  %12 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %8, i32 0, i32 1
  store ptr %0, ptr %12, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef align 4 dereferenceable(56) %1, i32 56, i1 false)
  %13 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %8, i32 0, i32 5
  store i8 %11, ptr %13, align 1
  %14 = icmp eq ptr %2, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @kmemdup(ptr noundef nonnull %2, i32 noundef %3, i32 noundef 3264) #8
  %17 = getelementptr inbounds %struct.i2c_board_info, ptr %8, i32 0, i32 4
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %8) #8
  br label %67

20:                                               ; preds = %15, %10
  br i1 %4, label %21, label %23

21:                                               ; preds = %20
  %22 = tail call i32 @psmouse_deactivate(ptr noundef %0) #8
  br label %23

23:                                               ; preds = %21, %20
  store ptr %8, ptr %0, align 4
  %24 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @psmouse_smbus_process_byte, ptr %24, align 4
  %25 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  store ptr @psmouse_smbus_reconnect, ptr %25, align 4
  %26 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 31
  store ptr @psmouse_smbus_reconnect, ptr %26, align 4
  %27 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 32
  store ptr @psmouse_smbus_disconnect, ptr %27, align 4
  %28 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 24
  store i32 0, ptr %28, align 4
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  %29 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %8, i32 0, i32 3
  %30 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @psmouse_smbus_list, i32 0, i32 1), align 4
  store ptr %29, ptr getelementptr inbounds (%struct.list_head, ptr @psmouse_smbus_list, i32 0, i32 1), align 4
  store ptr @psmouse_smbus_list, ptr %29, align 8
  %31 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %8, i32 0, i32 3, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %29, ptr %30, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  %32 = tail call i32 @i2c_for_each_dev(ptr noundef nonnull %8, ptr noundef nonnull @psmouse_smbus_create_companion) #8
  %33 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %8, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %38 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.serio, ptr %39, i32 0, i32 18
  %41 = tail call ptr @device_link_add(ptr noundef %37, ptr noundef %40, i32 noundef 1) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %36
  %44 = load ptr, ptr %38, align 4
  %45 = getelementptr inbounds %struct.serio, ptr %44, i32 0, i32 18
  %46 = load ptr, ptr %33, align 4
  %47 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi ptr [ %52, %50 ], [ %48, %43 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str, ptr noundef %54) #10
  br label %67

55:                                               ; preds = %23
  %56 = getelementptr inbounds %struct.i2c_board_info, ptr %8, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  tail call void @kfree(ptr noundef %57) #8
  store ptr null, ptr %56, align 4
  %58 = icmp slt i32 %32, 0
  %59 = xor i1 %5, true
  %60 = or i1 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  %62 = load ptr, ptr %31, align 4
  %63 = load ptr, ptr %29, align 8
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store volatile ptr %63, ptr %62, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  tail call void @kfree(ptr noundef nonnull %8) #8
  br label %65

65:                                               ; preds = %61, %55
  %66 = select i1 %58, i32 %32, i32 -11
  br label %67

67:                                               ; preds = %65, %53, %36, %19, %6
  %68 = phi i32 [ %66, %65 ], [ -12, %19 ], [ -12, %6 ], [ 0, %53 ], [ 0, %36 ]
  ret i32 %68
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @psmouse_smbus_process_byte(ptr nocapture noundef readnone %0) #4 {
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_smbus_reconnect(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %2, i32 0, i32 5
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @psmouse_deactivate(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @psmouse_smbus_disconnect(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  %3 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %2, i32 0, i32 4
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %2, i32 0, i32 3
  %8 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %2, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %2) #8
  br label %30

12:                                               ; preds = %1
  store i8 1, ptr %3, align 4
  %13 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18
  tail call void @device_link_remove(ptr noundef %15, ptr noundef %18) #8
  %19 = load ptr, ptr %13, align 4
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 20) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %12
  store i32 -32, ptr %21, align 8
  %24 = getelementptr inbounds %struct.work_struct, ptr %21, i32 0, i32 1
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.work_struct, ptr %21, i32 0, i32 1, i32 1
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.work_struct, ptr %21, i32 0, i32 2
  store ptr @psmouse_smbus_remove_i2c_device, ptr %26, align 4
  %27 = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %21, i32 0, i32 1
  store ptr %19, ptr %27, align 8
  %28 = load ptr, ptr @system_wq, align 4
  %29 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %28, ptr noundef nonnull %21) #8
  br label %30

30:                                               ; preds = %23, %12, %6
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_for_each_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_smbus_create_companion(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x i16], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 2
  %5 = load i16, ptr %4, align 2
  store i16 %5, ptr %3, align 4
  %6 = getelementptr inbounds i16, ptr %3, i32 1
  store i16 -2, ptr %6, align 2
  %7 = tail call ptr @i2c_verify_adapter(ptr noundef %0) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.i2c_algorithm, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef nonnull %7) #8
  %15 = and i32 %14, 268435456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = call ptr @i2c_new_scanned_device(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %3, ptr noundef null) #8
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %1, i32 0, i32 2
  store ptr %18, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %17, %9, %2
  %23 = phi i32 [ 1, %20 ], [ 0, %2 ], [ 0, %9 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @psmouse_smbus_module_init() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @bus_register_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @psmouse_smbus_notifier) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %1) #10
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @psmouse_smbus_module_exit() local_unnamed_addr #0 {
  %1 = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @psmouse_smbus_notifier) #8
  %2 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @psmouse_smbus_remove_i2c_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_scanned_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_smbus_notifier_call(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  switch i32 %1, label %78 [
    i32 1, label %4
    i32 3, label %37
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, @i2c_adapter_type
  br i1 %7, label %8, label %78

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %2, i32 -64
  %10 = getelementptr i8, ptr %2, i32 -56
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.i2c_algorithm, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %9) #8
  %15 = and i32 %14, 268435456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %78, label %17

17:                                               ; preds = %8
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  %18 = load ptr, ptr @psmouse_smbus_list, align 4
  %19 = icmp eq ptr %18, @psmouse_smbus_list
  br i1 %19, label %77, label %20

20:                                               ; preds = %34, %17
  %21 = phi ptr [ %35, %34 ], [ %18, %17 ]
  %22 = getelementptr i8, ptr %21, i32 8
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %21, i32 -4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %21, i32 -8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.psmouse, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void @serio_rescan(ptr noundef %33) #8
  br label %34

34:                                               ; preds = %29, %25, %20
  %35 = load ptr, ptr %21, align 4
  %36 = icmp eq ptr %35, @psmouse_smbus_list
  br i1 %36, label %77, label %20

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 4
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, @i2c_client_type
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %2, i32 -32
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  %43 = load ptr, ptr @psmouse_smbus_list, align 4
  %44 = icmp eq ptr %43, @psmouse_smbus_list
  br i1 %44, label %77, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %2, i32 60
  br label %47

47:                                               ; preds = %75, %45
  %48 = phi ptr [ %43, %45 ], [ %50, %75 ]
  %49 = getelementptr i8, ptr %48, i32 -64
  %50 = load ptr, ptr %48, align 4
  %51 = getelementptr i8, ptr %48, i32 -4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %42
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load ptr, ptr %46, align 4
  tail call void @kfree(ptr noundef %55) #8
  store ptr null, ptr %46, align 4
  %56 = getelementptr i8, ptr %48, i32 8
  %57 = load i8, ptr %56, align 4, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  store i8 1, ptr %56, align 4
  %60 = load ptr, ptr %51, align 4
  %61 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 4
  %62 = getelementptr i8, ptr %48, i32 -8
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.psmouse, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.serio, ptr %65, i32 0, i32 18
  tail call void @device_link_remove(ptr noundef %61, ptr noundef %66) #8
  %67 = load ptr, ptr %62, align 4
  %68 = getelementptr inbounds %struct.psmouse, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  tail call void @serio_rescan(ptr noundef %69) #8
  br label %75

70:                                               ; preds = %54
  %71 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %48, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %72, ptr %74, align 4
  store volatile ptr %73, ptr %72, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %48, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %71, align 4
  tail call void @kfree(ptr noundef %49) #8
  br label %75

75:                                               ; preds = %70, %59, %47
  %76 = icmp eq ptr %50, @psmouse_smbus_list
  br i1 %76, label %77, label %47

77:                                               ; preds = %75, %41, %34, %17
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #8
  br label %78

78:                                               ; preds = %77, %37, %8, %4, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
