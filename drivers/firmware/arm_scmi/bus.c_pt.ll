; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/bus.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scmi_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22scmi_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_scmi_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scmi_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22scmi_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_scmi_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scmi_protocol_register:\09\09\09\09\09"
module asm "\09.asciz \09\22scmi_protocol_register\22\09\09\09\09\09"
module asm "__kstrtabns_scmi_protocol_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scmi_protocol_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22scmi_protocol_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_scmi_protocol_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.scmi_device_id = type { i8, ptr }
%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }

@scmi_protocols = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [46 x i8] c"\014scmi_module: SCMI Protocol 0x%x not found!\0A\00", align 1
@scmi_bus_type = internal global %struct.bus_type { ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scmi_dev_match, ptr null, ptr @scmi_dev_probe, ptr null, ptr @scmi_dev_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_scmi_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_scmi_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_scmi_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scmi_driver_register to i32), ptr @__kstrtab_scmi_driver_register, ptr @__kstrtabns_scmi_driver_register }, section "___ksymtab_gpl+scmi_driver_register", align 4
@__kstrtab_scmi_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_scmi_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_scmi_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scmi_driver_unregister to i32), ptr @__kstrtab_scmi_driver_unregister, ptr @__kstrtabns_scmi_driver_unregister }, section "___ksymtab_gpl+scmi_driver_unregister", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@scmi_bus_id = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"scmi_dev.%d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\013scmi_module: invalid protocol\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013scmi_module: missing init for protocol 0x%x\0A\00", align 1
@protocol_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [67 x i8] c"\013scmi_module: unable to allocate SCMI idr slot for 0x%x - err %d\0A\00", align 1
@__kstrtab_scmi_protocol_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_scmi_protocol_register = external dso_local constant [0 x i8], align 1
@__ksymtab_scmi_protocol_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scmi_protocol_register to i32), ptr @__kstrtab_scmi_protocol_register, ptr @__kstrtabns_scmi_protocol_register }, section "___ksymtab_gpl+scmi_protocol_register", align 4
@__kstrtab_scmi_protocol_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_scmi_protocol_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_scmi_protocol_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scmi_protocol_unregister to i32), ptr @__kstrtab_scmi_protocol_unregister, ptr @__kstrtabns_scmi_protocol_unregister }, section "___ksymtab_gpl+scmi_protocol_unregister", align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"\013scmi_module: scmi protocol bus register failed (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"scmi_protocol\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_scmi_driver_register, ptr @__ksymtab_scmi_driver_unregister, ptr @__ksymtab_scmi_protocol_register, ptr @__ksymtab_scmi_protocol_unregister, ptr @scmi_bus_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scmi_child_dev_find(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.scmi_device_id, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = trunc i32 %1 to i8
  store i8 %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scmi_device_id, ptr %4, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = call ptr @device_find_child(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @scmi_match_by_id_table) #9
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -16
  %10 = select i1 %8, ptr null, ptr %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @scmi_match_by_id_table(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load i8, ptr %3, align 4
  %5 = load i8, ptr %1, align 4
  %6 = icmp eq i8 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.scmi_device_id, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %11)
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %7 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scmi_protocol_get(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @idr_find(ptr noundef nonnull @scmi_protocols, i32 noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.scmi_protocol, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @try_module_get(ptr noundef %6) #9
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #10
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ null, %8 ], [ %2, %4 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_protocol_put(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @idr_find(ptr noundef nonnull @scmi_protocols, i32 noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.scmi_protocol, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @module_put(ptr noundef %6) #9
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scmi_driver_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.scmi_driver, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.scmi_driver, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @scmi_protocol_device_request(ptr noundef %9) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.scmi_driver, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.scmi_driver, ptr %0, i32 0, i32 4, i32 1
  store ptr @scmi_bus_type, ptr %14, align 4
  %15 = load ptr, ptr %0, align 4
  store ptr %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.scmi_driver, ptr %0, i32 0, i32 4, i32 2
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.scmi_driver, ptr %0, i32 0, i32 4, i32 3
  store ptr %2, ptr %17, align 4
  %18 = tail call i32 @driver_register(ptr noundef %13) #9
  br label %19

19:                                               ; preds = %12, %7, %3
  %20 = phi i32 [ %18, %12 ], [ -22, %3 ], [ %10, %7 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_device_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_driver_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scmi_driver, ptr %0, i32 0, i32 4
  tail call void @driver_unregister(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.scmi_driver, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @scmi_protocol_device_unrequest(ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_device_unrequest(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scmi_device_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 496) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  %10 = select i1 %9, ptr @.str.1, ptr %3
  %11 = tail call ptr @kstrdup_const(ptr noundef %10, i32 noundef 3264) #9
  %12 = getelementptr inbounds %struct.scmi_device, ptr %6, i32 0, i32 2
  store ptr %11, ptr %12, align 8
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %32

15:                                               ; preds = %8
  %16 = tail call i32 @ida_alloc_range(ptr noundef nonnull @scmi_bus_id, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @kfree_const(ptr noundef nonnull %11) #9
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %32

19:                                               ; preds = %15
  store i32 %16, ptr %6, align 8
  %20 = trunc i32 %2 to i8
  %21 = getelementptr inbounds %struct.scmi_device, ptr %6, i32 0, i32 1
  store i8 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.scmi_device, ptr %6, i32 0, i32 3
  %23 = getelementptr inbounds %struct.scmi_device, ptr %6, i32 0, i32 3, i32 1
  store ptr %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.scmi_device, ptr %6, i32 0, i32 3, i32 25
  store ptr %0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.scmi_device, ptr %6, i32 0, i32 3, i32 5
  store ptr @scmi_bus_type, ptr %25, align 4
  %26 = getelementptr inbounds %struct.scmi_device, ptr %6, i32 0, i32 3, i32 33
  store ptr @scmi_device_release, ptr %26, align 4
  %27 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %22, ptr noundef nonnull @.str.2, i32 noundef %16) #9
  %28 = tail call i32 @device_register(ptr noundef %22) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = load ptr, ptr %12, align 8
  tail call void @kfree_const(ptr noundef %31) #9
  tail call void @put_device(ptr noundef %22) #9
  tail call void @ida_free(ptr noundef nonnull @scmi_bus_id, i32 noundef %16) #9
  br label %32

32:                                               ; preds = %30, %19, %18, %14, %4
  %33 = phi ptr [ null, %18 ], [ null, %30 ], [ null, %14 ], [ null, %4 ], [ %6, %19 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_device_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void @kfree(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_device_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree_const(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @scmi_handle_put(ptr noundef %5) #9
  %7 = load i32, ptr %0, align 8
  tail call void @ida_free(ptr noundef nonnull @scmi_bus_id, i32 noundef %7) #9
  %8 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  tail call void @device_unregister(ptr noundef %8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_set_handle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @scmi_handle_get(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 4
  store ptr %3, ptr %4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_handle_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scmi_protocol_register(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.scmi_protocol, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i8, ptr %0, align 4
  %11 = zext i8 %10 to i32
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %11) #10
  br label %25

13:                                               ; preds = %5
  tail call void @_raw_spin_lock(ptr noundef nonnull @protocol_lock) #9
  %14 = load i8, ptr %0, align 4
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 1
  %17 = tail call i32 @idr_alloc(ptr noundef nonnull @scmi_protocols, ptr noundef nonnull %0, i32 noundef %15, i32 noundef %16, i32 noundef 2592) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %18 = load i16, ptr @protocol_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @protocol_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %20 = load i8, ptr %0, align 4
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %13
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %21, i32 noundef %17) #10
  br label %25

25:                                               ; preds = %23, %13, %9, %3
  %26 = phi i32 [ %17, %23 ], [ -22, %9 ], [ -22, %3 ], [ 0, %13 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_protocol_unregister(ptr nocapture noundef readonly %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @protocol_lock) #9
  %2 = load i8, ptr %0, align 4
  %3 = zext i8 %2 to i32
  %4 = tail call ptr @idr_remove(ptr noundef nonnull @scmi_protocols, i32 noundef %3) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %5 = load i16, ptr @protocol_lock, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr @protocol_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scmi_bus_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @scmi_bus_type) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %1) #10
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @scmi_bus_exit() #5 section ".exit.text" {
  %1 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @scmi_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @__scmi_devices_unregister) #9
  tail call void @bus_unregister(ptr noundef nonnull @scmi_bus_type) #9
  tail call void @ida_destroy(ptr noundef nonnull @scmi_bus_id) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @scmi_dev_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr i8, ptr %1, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load i8, ptr %4, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = load i8, ptr %11, align 4
  br label %13

13:                                               ; preds = %25, %10
  %14 = phi i8 [ %8, %10 ], [ %27, %25 ]
  %15 = phi ptr [ %4, %10 ], [ %26, %25 ]
  %16 = icmp eq i8 %14, %12
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.scmi_device_id, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %7, align 8
  %23 = tail call i32 @strcmp(ptr noundef nonnull %19, ptr noundef %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %13
  %26 = getelementptr %struct.scmi_device_id, ptr %15, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %13

29:                                               ; preds = %25, %21, %17, %6, %2
  %30 = phi ptr [ null, %2 ], [ null, %6 ], [ null, %25 ], [ %15, %21 ], [ %15, %17 ]
  %31 = icmp ne ptr %30, null
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 472
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 -12
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %6) #9
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ -517, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -16
  tail call void %5(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__scmi_devices_unregister(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree_const(ptr noundef %5) #9
  %6 = getelementptr i8, ptr %0, i32 472
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @scmi_handle_put(ptr noundef %7) #9
  %9 = load i32, ptr %3, align 8
  tail call void @ida_free(ptr noundef nonnull @scmi_bus_id, i32 noundef %9) #9
  tail call void @device_unregister(ptr noundef %0) #9
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i64 2148930882}
!10 = !{i64 2148926706}
!11 = !{i64 2148926781, i64 2148926808, i64 2148926855, i64 2148926877, i64 2148926905, i64 2148926925}
!12 = !{i64 2148953885}
