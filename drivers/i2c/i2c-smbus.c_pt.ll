; ModuleID = '/llk/IR/drivers/i2c/i2c-smbus.c_pt.bc'
source_filename = "../drivers/i2c/i2c-smbus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_handle_smbus_alert:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_handle_smbus_alert\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_handle_smbus_alert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_new_slave_host_notify_device:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_new_slave_host_notify_device\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_new_slave_host_notify_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_free_slave_host_notify_device:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_free_slave_host_notify_device\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_free_slave_host_notify_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_register_spd:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_register_spd\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_register_spd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_slave_host_notify_status = type { i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_smbus_alert = type { %struct.work_struct, ptr }
%struct.alert_data = type { i16, i32, i32 }

@__kstrtab_i2c_handle_smbus_alert = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_handle_smbus_alert = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_handle_smbus_alert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_handle_smbus_alert to i32), ptr @__kstrtab_i2c_handle_smbus_alert, ptr @__kstrtabns_i2c_handle_smbus_alert }, section "___ksymtab_gpl+i2c_handle_smbus_alert", align 4
@__initcall__kmod_i2c_smbus__247_198_smbalert_driver_init6 = internal global ptr @smbalert_driver_init, section ".initcall6.init", align 4
@smbalert_driver = internal global %struct.i2c_driver { i32 0, ptr @smbalert_probe, ptr @smbalert_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @smbalert_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_smbalert_driver_exit = internal global ptr @smbalert_driver_exit, section ".exitcall.exit", align 4
@__const.i2c_new_slave_host_notify_device.host_notify_board_info = private unnamed_addr constant %struct.i2c_board_info { [20 x i8] c"smbus_host_notify\00\00\00", i16 32, i16 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, align 4
@__kstrtab_i2c_new_slave_host_notify_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_new_slave_host_notify_device = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_new_slave_host_notify_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_new_slave_host_notify_device to i32), ptr @__kstrtab_i2c_new_slave_host_notify_device, ptr @__kstrtabns_i2c_new_slave_host_notify_device }, section "___ksymtab_gpl+i2c_new_slave_host_notify_device", align 4
@__kstrtab_i2c_free_slave_host_notify_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_free_slave_host_notify_device = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_free_slave_host_notify_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_free_slave_host_notify_device to i32), ptr @__kstrtab_i2c_free_slave_host_notify_device, ptr @__kstrtabns_i2c_free_slave_host_notify_device }, section "___ksymtab_gpl+i2c_free_slave_host_notify_device", align 4
@.str = private unnamed_addr constant [53 x i8] c"Different memory types mixed, not instantiating SPD\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%d/%d memory slots populated (from DMI)\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Systems with more than 4 memory slots not supported yet, not instantiating SPD\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"spd\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ee1004\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Memory type 0x%02x not supported yet, not instantiating SPD\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Successfully instantiated SPD at 0x%hx\0A\00", align 1
@__kstrtab_i2c_register_spd = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_register_spd = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_register_spd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_register_spd to i32), ptr @__kstrtab_i2c_register_spd, ptr @__kstrtabns_i2c_register_spd }, section "___ksymtab_gpl+i2c_register_spd", align 4
@__UNIQUE_ID_author248 = internal constant [49 x i8] c"i2c_smbus.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [56 x i8] c"i2c_smbus.description=SMBus protocol extensions support\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [37 x i8] c"i2c_smbus.file=drivers/i2c/i2c-smbus\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [22 x i8] c"i2c_smbus.license=GPL\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"smbus_alert\00", align 1
@smbalert_ids = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"smbus_alert\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"supports SMBALERT#\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"no driver alert()!\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_smbalert_driver_exit, ptr @__initcall__kmod_i2c_smbus__247_198_smbalert_driver_init6, ptr @__ksymtab_i2c_free_slave_host_notify_device, ptr @__ksymtab_i2c_handle_smbus_alert, ptr @__ksymtab_i2c_new_slave_host_notify_device, ptr @__ksymtab_i2c_register_spd, ptr @smbalert_driver_exit], section "llvm.metadata"
@switch.table.i2c_register_spd = private unnamed_addr constant [12 x ptr] [ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.4, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_handle_smbus_alert(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #9
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @smbalert_driver_init() #2 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @smbalert_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @smbalert_driver_exit() #2 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @smbalert_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @i2c_new_slave_host_notify_device(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_board_info, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(56) @__const.i2c_new_slave_host_notify_device.host_notify_board_info, i32 56, i1 false)
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 4
  store ptr %4, ptr %7, align 4
  %8 = call ptr @i2c_new_client_device(ptr noundef %0, ptr noundef nonnull %2) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void @kfree(ptr noundef nonnull %4) #9
  br label %16

11:                                               ; preds = %6
  %12 = call i32 @i2c_slave_register(ptr noundef %8, ptr noundef nonnull @i2c_slave_host_notify_cb) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  call void @i2c_unregister_device(ptr noundef %8) #9
  call void @kfree(ptr noundef nonnull %4) #9
  %15 = inttoptr i32 %12 to ptr
  br label %16

16:                                               ; preds = %14, %11, %10, %1
  %17 = phi ptr [ %8, %10 ], [ %15, %14 ], [ %8, %11 ], [ inttoptr (i32 -12 to ptr), %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #9
  ret ptr %17
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_slave_host_notify_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  switch i32 %1, label %25 [
    i32 3, label %6
    i32 4, label %13
    i32 1, label %23
    i32 0, label %24
    i32 2, label %24
  ]

6:                                                ; preds = %3
  %7 = load i8, ptr %5, align 1
  switch i8 %7, label %11 [
    i8 0, label %8
    i8 -1, label %25
  ]

8:                                                ; preds = %6
  %9 = load i8, ptr %2, align 1
  %10 = getelementptr inbounds %struct.i2c_slave_host_notify_status, ptr %5, i32 0, i32 1
  store i8 %9, ptr %10, align 1
  br label %11

11:                                               ; preds = %8, %6
  %12 = add nuw i8 %7, 1
  store i8 %12, ptr %5, align 1
  br label %25

13:                                               ; preds = %3
  %14 = load i8, ptr %5, align 1
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.i2c_slave_host_notify_status, ptr %5, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i16
  %22 = tail call i32 @i2c_handle_smbus_host_notify(ptr noundef %18, i16 noundef zeroext %21) #9
  br label %23

23:                                               ; preds = %16, %13, %3
  store i8 0, ptr %5, align 1
  br label %25

24:                                               ; preds = %3, %3
  store i8 -1, ptr %2, align 1
  br label %25

25:                                               ; preds = %24, %23, %11, %6, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_free_slave_host_notify_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @i2c_slave_unregister(ptr noundef nonnull %0) #9
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #9
  tail call void @i2c_unregister_device(ptr noundef nonnull %0) #9
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @i2c_register_spd(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_board_info, align 4
  %3 = alloca [2 x i16], align 4
  %4 = tail call zeroext i16 @dmi_memdev_handle(i32 noundef 0) #9
  %5 = icmp eq i16 %4, -1
  br i1 %5, label %77, label %6

6:                                                ; preds = %29, %1
  %7 = phi i16 [ %32, %29 ], [ %4, %1 ]
  %8 = phi i8 [ %30, %29 ], [ 0, %1 ]
  %9 = phi i32 [ %31, %29 ], [ 0, %1 ]
  %10 = phi i32 [ %14, %29 ], [ 0, %1 ]
  br label %11

11:                                               ; preds = %17, %6
  %12 = phi i16 [ %7, %6 ], [ %18, %17 ]
  %13 = phi i32 [ %10, %6 ], [ %14, %17 ]
  %14 = add i32 %13, 1
  %15 = tail call i64 @dmi_memdev_size(i16 noundef zeroext %12) #9
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %20, %11
  %18 = tail call zeroext i16 @dmi_memdev_handle(i32 noundef %14) #9
  %19 = icmp eq i16 %18, -1
  br i1 %19, label %34, label %11

20:                                               ; preds = %11
  %21 = tail call zeroext i8 @dmi_memdev_type(i16 noundef zeroext %12) #9
  %22 = icmp ult i8 %21, 3
  br i1 %22, label %17, label %23

23:                                               ; preds = %20
  %24 = icmp eq i8 %8, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = icmp eq i8 %21, %8
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str) #11
  br label %77

29:                                               ; preds = %25, %23
  %30 = phi i8 [ %8, %25 ], [ %21, %23 ]
  %31 = add i32 %9, 1
  %32 = tail call zeroext i16 @dmi_memdev_handle(i32 noundef %14) #9
  %33 = icmp eq i16 %32, -1
  br i1 %33, label %34, label %6

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %9, %17 ], [ %31, %29 ]
  %36 = phi i8 [ %8, %17 ], [ %30, %29 ]
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %77, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.1, i32 noundef %35, i32 noundef %14) #11
  %40 = icmp sgt i32 %14, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.2) #11
  br label %77

42:                                               ; preds = %38
  %43 = add i8 %36, -19
  %44 = icmp ult i8 %43, 12
  br i1 %44, label %47, label %45

45:                                               ; preds = %47, %42
  %46 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.5, i32 noundef %46) #11
  br label %77

47:                                               ; preds = %42
  %48 = zext i8 %43 to i16
  %49 = lshr i16 3745, %48
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %45, label %52

52:                                               ; preds = %47
  %53 = sext i8 %43 to i32
  %54 = getelementptr inbounds [12 x ptr], ptr @switch.table.i2c_register_spd, i32 0, i32 %53
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ult i32 %13, 2147483647
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = getelementptr inbounds [2 x i16], ptr %3, i32 0, i32 1
  br label %59

59:                                               ; preds = %71, %57
  %60 = phi i32 [ %35, %57 ], [ %72, %71 ]
  %61 = phi i32 [ 0, %57 ], [ %73, %71 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i32 56, i1 false)
  %62 = call i32 @strlcpy(ptr noundef nonnull %2, ptr noundef nonnull %55, i32 noundef 20) #9
  %63 = trunc i32 %61 to i16
  %64 = add i16 %63, 80
  store i16 %64, ptr %3, align 4
  store i16 -2, ptr %58, align 2
  %65 = call ptr @i2c_new_scanned_device(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null) #9
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %71, label %67

67:                                               ; preds = %59
  %68 = load i16, ptr %3, align 4
  %69 = zext i16 %68 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.6, i32 noundef %69) #11
  %70 = add i32 %60, -1
  br label %71

71:                                               ; preds = %67, %59
  %72 = phi i32 [ %60, %59 ], [ %70, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #9
  %73 = add nuw nsw i32 %61, 1
  %74 = icmp slt i32 %73, %14
  %75 = icmp ne i32 %72, 0
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %59, label %77

77:                                               ; preds = %71, %52, %45, %41, %34, %27, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dmi_memdev_handle(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dmi_memdev_size(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dmi_memdev_type(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_scanned_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smbalert_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %5, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %5, align 4
  br label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @of_irq_get_byname(ptr noundef %16, ptr noundef nonnull @.str.7) #9
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %32, label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %17, %14 ]
  store i32 -32, ptr %8, align 4
  %21 = getelementptr inbounds %struct.work_struct, ptr %8, i32 0, i32 1
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.work_struct, ptr %8, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.work_struct, ptr %8, i32 0, i32 2
  store ptr @smbalert_work, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_smbus_alert, ptr %8, i32 0, i32 1
  store ptr %0, ptr %24, align 4
  %25 = icmp sgt i32 %20, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %20, ptr noundef null, ptr noundef nonnull @smbus_alert, i32 noundef 8320, ptr noundef nonnull @.str.7, ptr noundef nonnull %8) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %19
  %30 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %30, align 8
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.8) #11
  br label %32

32:                                               ; preds = %29, %26, %14, %2
  %33 = phi i32 [ 0, %29 ], [ -12, %2 ], [ %17, %14 ], [ %27, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smbalert_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smbalert_work(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.alert_data, align 4
  %3 = getelementptr inbounds %struct.i2c_smbus_alert, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = tail call i32 @i2c_smbus_read_byte(ptr noundef %4) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.alert_data, ptr %2, i32 0, i32 2
  %9 = getelementptr inbounds %struct.alert_data, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  br label %11

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %5, %7 ], [ %19, %11 ]
  %13 = and i32 %12, 1
  store i32 %13, ptr %8, align 4
  %14 = lshr i32 %12, 1
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %2, align 4
  store i32 0, ptr %9, align 4
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  %18 = call i32 @device_for_each_child(ptr noundef %17, ptr noundef nonnull %2, ptr noundef nonnull @smbus_do_alert) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #9, !annotation !8
  %19 = call i32 @i2c_smbus_read_byte(ptr noundef %4) #9
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smbus_alert(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.alert_data, align 4
  %4 = getelementptr inbounds %struct.i2c_smbus_alert, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = call i32 @i2c_smbus_read_byte(ptr noundef %5) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.alert_data, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.alert_data, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i32 [ %6, %8 ], [ %20, %12 ]
  %14 = and i32 %13, 1
  store i32 %14, ptr %9, align 4
  %15 = lshr i32 %13, 1
  %16 = trunc i32 %15 to i16
  store i16 %16, ptr %3, align 4
  store i32 0, ptr %10, align 4
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  %19 = call i32 @device_for_each_child(ptr noundef %18, ptr noundef nonnull %3, ptr noundef nonnull @smbus_do_alert) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %20 = call i32 @i2c_smbus_read_byte(ptr noundef %5) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %12

22:                                               ; preds = %12, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smbus_do_alert(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @i2c_verify_client(ptr noundef %0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = load i16, ptr %1, align 4
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = load i16, ptr %3, align 8
  %12 = and i16 %11, 16
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %18, i32 -8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.alert_data, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.alert_data, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  tail call void %22(ptr noundef nonnull %3, i32 noundef %26, i32 noundef %28) #9
  br label %30

29:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.9) #11
  br label %30

30:                                               ; preds = %29, %24, %14
  tail call void @mutex_unlock(ptr noundef %15) #9
  br label %31

31:                                               ; preds = %30, %10, %5, %2
  %32 = phi i32 [ -16, %30 ], [ 0, %5 ], [ 0, %2 ], [ 0, %10 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_handle_smbus_host_notify(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
