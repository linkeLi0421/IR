; ModuleID = '/llk/IR/drivers/fsi/fsi-master-hub.c_pt.bc'
source_filename = "../drivers/fsi/fsi-master-hub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsi_driver = type { %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.fsi_device_id = type { i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fsi_device = type { %struct.device, i8, i8, i8, ptr, i32, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.fsi_master_hub = type { %struct.fsi_master, ptr, i32, i32 }
%struct.fsi_master = type { %struct.device, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_license166 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@hub_master_driver = internal global %struct.fsi_driver { %struct.device_driver { ptr @.str, ptr @fsi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @hub_master_probe, ptr null, ptr @hub_master_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hub_master_ids }, align 4
@.str = private unnamed_addr constant [15 x i8] c"fsi-master-hub\00", align 1
@fsi_bus_type = external dso_local global %struct.bus_type, align 4
@hub_master_ids = internal constant [2 x %struct.fsi_device_id] [%struct.fsi_device_id { i8 28, i8 0 }, %struct.fsi_device_id zeroinitializer], align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"can't claim slave address range for links\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_license166], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @fsi_driver_register(ptr noundef nonnull @hub_master_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @fsi_driver_unregister(ptr noundef nonnull @hub_master_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_master_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @fsi_device_read(ptr noundef %0, i32 noundef 116, ptr noundef nonnull %3, i32 noundef 4) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %92

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds %struct.fsi_device, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = shl nuw nsw i32 %9, 19
  %13 = call i32 @fsi_slave_claim_range(ptr noundef %11, i32 noundef 524288, i32 noundef %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  br label %92

16:                                               ; preds = %6
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %18 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 544) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %89, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fsi_master_hub, ptr %18, i32 0, i32 2
  store i32 524288, ptr %21, align 4
  %22 = getelementptr inbounds %struct.fsi_master_hub, ptr %18, i32 0, i32 3
  store i32 %12, ptr %22, align 8
  %23 = getelementptr inbounds %struct.fsi_master_hub, ptr %18, i32 0, i32 1
  store ptr %0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 1
  store ptr %0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 33
  store ptr @hub_master_release, ptr %25, align 4
  %26 = icmp eq ptr %0, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %29 = load ptr, ptr %28, align 8
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi ptr [ %29, %27 ], [ null, %20 ]
  %32 = call ptr @of_node_get(ptr noundef %31) #7
  %33 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 25
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.fsi_master, ptr %18, i32 0, i32 2
  store i32 %9, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fsi_master, ptr %18, i32 0, i32 5
  store ptr @hub_master_read, ptr %35, align 8
  %36 = getelementptr inbounds %struct.fsi_master, ptr %18, i32 0, i32 6
  store ptr @hub_master_write, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fsi_master, ptr %18, i32 0, i32 8
  store ptr @hub_master_break, ptr %37, align 4
  %38 = getelementptr inbounds %struct.fsi_master, ptr %18, i32 0, i32 9
  store ptr @hub_master_link_enable, ptr %38, align 8
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %18, ptr %39, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 60, ptr %2, align 4
  %40 = call i32 @fsi_device_write(ptr noundef %0, i32 noundef 208, ptr noundef nonnull %2, i32 noundef 4) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %84

42:                                               ; preds = %30
  store i32 60, ptr %2, align 4
  %43 = call i32 @fsi_device_write(ptr noundef %0, i32 noundef 208, ptr noundef nonnull %2, i32 noundef 4) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %84

45:                                               ; preds = %42
  store i32 12582912, ptr %2, align 4
  %46 = call i32 @fsi_device_write(ptr noundef %0, i32 noundef 736, ptr noundef nonnull %2, i32 noundef 4) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %45
  store i32 268502224, ptr %2, align 4
  %49 = call i32 @fsi_device_write(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 4) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  store i32 65535, ptr %2, align 4
  %52 = call i32 @fsi_device_write(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 4) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %51
  store i32 -1, ptr %2, align 4
  %55 = call i32 @fsi_device_write(ptr noundef %0, i32 noundef 24, ptr noundef nonnull %2, i32 noundef 4) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 214748000) #7
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748000) #7
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748000) #7
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 214748000) #7
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 214748000) #7
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %63(i32 noundef 214748000) #7
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748000) #7
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #7
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 214748000) #7
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 214748000) #7
  %68 = call i32 @fsi_device_write(ptr noundef %0, i32 noundef 32, ptr noundef nonnull %2, i32 noundef 4) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %57
  %71 = call i32 @fsi_device_read(ptr noundef %0, i32 noundef 112, ptr noundef nonnull %2, i32 noundef 4) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  store i32 48, ptr %2, align 4
  %74 = call i32 @fsi_device_write(ptr noundef %0, i32 noundef 208, ptr noundef nonnull %2, i32 noundef 4) #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = call i32 @fsi_device_read(ptr noundef %0, i32 noundef 24, ptr noundef nonnull %2, i32 noundef 4) #7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  store i32 128, ptr %2, align 4
  %80 = call i32 @fsi_device_write(ptr noundef %0, i32 noundef 464, ptr noundef nonnull %2, i32 noundef 4) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  store i32 64, ptr %2, align 4
  %83 = call i32 @fsi_device_write(ptr noundef %0, i32 noundef 464, ptr noundef nonnull %2, i32 noundef 4) #7
  br label %84

84:                                               ; preds = %82, %79, %76, %73, %70, %57, %54, %51, %48, %45, %42, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %85 = call i32 @fsi_master_register(ptr noundef nonnull %18) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call ptr @get_device(ptr noundef nonnull %18) #7
  br label %92

89:                                               ; preds = %84, %16
  %90 = phi i32 [ %85, %84 ], [ -12, %16 ]
  %91 = load ptr, ptr %10, align 4
  call void @fsi_slave_release_range(ptr noundef %91, i32 noundef 524288, i32 noundef %12) #7
  br label %92

92:                                               ; preds = %89, %87, %15, %1
  %93 = phi i32 [ %13, %15 ], [ %90, %89 ], [ 0, %87 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_master_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @fsi_master_unregister(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.fsi_master_hub, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fsi_device, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsi_master_hub, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fsi_master_hub, ptr %3, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  tail call void @fsi_slave_release_range(ptr noundef %7, i32 noundef %9, i32 noundef %11) #7
  %12 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  tail call void @of_node_put(ptr noundef %13) #7
  tail call void @put_device(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_slave_claim_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hub_master_release(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_master_read(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #2 {
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fsi_master_hub, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %1, 19
  %12 = add i32 %11, %3
  %13 = add i32 %12, %10
  %14 = getelementptr inbounds %struct.fsi_master_hub, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.fsi_device, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @fsi_slave_read(ptr noundef %17, i32 noundef %13, ptr noundef %4, i32 noundef %5) #7
  br label %19

19:                                               ; preds = %8, %6
  %20 = phi i32 [ %18, %8 ], [ -22, %6 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_master_write(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #2 {
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fsi_master_hub, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %1, 19
  %12 = add i32 %11, %3
  %13 = add i32 %12, %10
  %14 = getelementptr inbounds %struct.fsi_master_hub, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.fsi_device, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @fsi_slave_write(ptr noundef %17, i32 noundef %13, ptr noundef %4, i32 noundef %5) #7
  br label %19

19:                                               ; preds = %8, %6
  %20 = phi i32 [ %18, %8 ], [ -22, %6 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_master_break(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 57024, ptr %3, align 4
  %4 = getelementptr inbounds %struct.fsi_master_hub, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %1, 19
  %7 = or i32 %6, 4
  %8 = add i32 %7, %5
  %9 = getelementptr inbounds %struct.fsi_master_hub, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.fsi_device, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @fsi_slave_write(ptr noundef %12, i32 noundef %8, ptr noundef nonnull %3, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_master_link_enable(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %5 = sdiv i32 %1, 32
  %6 = and i32 %1, 31
  %7 = lshr i32 -2147483648, %6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.fsi_master_hub, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = shl nsw i32 %5, 2
  br i1 %2, label %15, label %12

12:                                               ; preds = %3
  %13 = add nsw i32 %11, 32
  %14 = call i32 @fsi_device_write(ptr noundef %10, i32 noundef %13, ptr noundef nonnull %4, i32 noundef 4) #7
  br label %30

15:                                               ; preds = %3
  %16 = add nsw i32 %11, 24
  %17 = call i32 @fsi_device_write(ptr noundef %10, i32 noundef %16, ptr noundef nonnull %4, i32 noundef 4) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #7
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #7
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #7
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #7
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #7
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #7
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #7
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #7
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #7
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #7
  br label %30

30:                                               ; preds = %19, %15, %12
  %31 = phi i32 [ %14, %12 ], [ %17, %15 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_master_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_slave_release_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_slave_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_slave_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_master_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
