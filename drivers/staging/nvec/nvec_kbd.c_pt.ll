; ModuleID = '/llk/IR/drivers/staging/nvec/nvec_kbd.c_pt.bc'
source_filename = "../drivers/staging/nvec/nvec_kbd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvec_keys = type { ptr, %struct.notifier_block, ptr, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_nvec_kbd__206_185_nvec_kbd_driver_init6 = internal global ptr @nvec_kbd_driver_init, section ".initcall6.init", align 4
@nvec_kbd_driver = internal global %struct.platform_driver { ptr @nvec_kbd_probe, ptr @nvec_kbd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_nvec_kbd_driver_exit = internal global ptr @nvec_kbd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author207 = internal constant [48 x i8] c"nvec_kbd.author=Marc Dietrich <marvin24@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [42 x i8] c"nvec_kbd.description=NVEC keyboard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias209 = internal constant [33 x i8] c"nvec_kbd.alias=platform:nvec-kbd\00", section ".modinfo", align 1
@__UNIQUE_ID_file210 = internal constant [44 x i8] c"nvec_kbd.file=drivers/staging/nvec/nvec_kbd\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [21 x i8] c"nvec_kbd.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"nvec-kbd\00", align 1
@__const.nvec_kbd_probe.cnfg_wake_key_reporting = private unnamed_addr constant [3 x i8] c"\05\04\01", align 1
@code_tab_102us = internal global [126 x i16] [i16 41, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 464, i16 0, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 139, i16 116, i16 86, i16 87, i16 88, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 217, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 76, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 73], align 2
@keycodes = internal global [236 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"nvec keyboard\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"nvec\00", align 1
@keys_dev = internal global %struct.nvec_keys zeroinitializer, align 4
@extcode_tab_us102 = internal global <{ [95 x i16], [15 x i16] }> <{ [95 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 97, i16 0, i16 0, i16 113, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 115, i16 0, i16 0, i16 0, i16 0, i16 98, i16 0, i16 99, i16 100, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 105, i16 0, i16 0, i16 0, i16 0, i16 223, i16 102, i16 103, i16 104, i16 0, i16 105, i16 0, i16 106, i16 0, i16 107, i16 108, i16 109, i16 110, i16 111, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 125, i16 0, i16 1, i16 74], [15 x i16] zeroinitializer }>, align 2
@code_tabs = internal unnamed_addr constant [2 x ptr] [ptr @code_tab_102us, ptr @extcode_tab_us102], align 4
@__const.nvec_kbd_toggle_led.buf = private unnamed_addr constant [3 x i8] c"\05\ED\00", align 1
@__const.nvec_kbd_remove.uncnfg_wake_key_reporting = private unnamed_addr constant [3 x i8] c"\05\04\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias209, ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__exitcall_nvec_kbd_driver_exit, ptr @__initcall__kmod_nvec_kbd__206_185_nvec_kbd_driver_init6, ptr @nvec_kbd_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nvec_kbd_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nvec_kbd_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nvec_kbd_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @nvec_kbd_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_kbd_probe(ptr noundef %0) #2 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [2 x i8], align 2
  %4 = alloca [4 x i8], align 4
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @__const.nvec_kbd_toggle_led.buf, i32 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 -3067, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 16843525, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) @__const.nvec_kbd_probe.cnfg_wake_key_reporting, i32 3, i1 false)
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi i32 [ 0, %1 ], [ %15, %10 ]
  %12 = getelementptr [126 x i16], ptr @code_tab_102us, i32 0, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = trunc i16 %13 to i8
  %15 = add nuw nsw i32 %11, 1
  %16 = getelementptr [236 x i8], ptr @keycodes, i32 0, i32 %11
  store i8 %14, ptr %16, align 1
  %17 = icmp eq i32 %15, 126
  br i1 %17, label %18, label %10

18:                                               ; preds = %18, %10
  %19 = phi i32 [ %24, %18 ], [ 126, %10 ]
  %20 = phi i32 [ %26, %18 ], [ 0, %10 ]
  %21 = getelementptr [110 x i16], ptr @extcode_tab_us102, i32 0, i32 %20
  %22 = load i16, ptr %21, align 2
  %23 = trunc i16 %22 to i8
  %24 = add nuw nsw i32 %19, 1
  %25 = getelementptr [236 x i8], ptr @keycodes, i32 0, i32 %19
  store i8 %23, ptr %25, align 1
  %26 = add nuw nsw i32 %20, 1
  %27 = icmp eq i32 %26, 110
  br i1 %27, label %28, label %18

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %30 = tail call ptr @devm_input_allocate_device(ptr noundef %29) #5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  store ptr @.str.1, ptr %30, align 8
  %33 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 1
  store ptr @.str.2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 5
  store i32 1179650, ptr %34, align 8
  %35 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 10
  store i32 2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 34
  store ptr @nvec_kbd_event, ptr %36, align 8
  %37 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 17
  store ptr @keycodes, ptr %37, align 4
  %38 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 16
  store i32 1, ptr %38, align 8
  %39 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 15
  store i32 236, ptr %39, align 4
  %40 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 6
  br label %41

41:                                               ; preds = %41, %32
  %42 = phi i32 [ 0, %32 ], [ %46, %41 ]
  %43 = getelementptr [236 x i8], ptr @keycodes, i32 0, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  tail call void @_set_bit(i32 noundef %45, ptr noundef %40) #5
  %46 = add nuw nsw i32 %42, 1
  %47 = icmp eq i32 %46, 236
  br i1 %47, label %48, label %41

48:                                               ; preds = %41
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %40) #5
  %49 = tail call i32 @input_register_device(ptr noundef nonnull %30) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  store ptr %30, ptr @keys_dev, align 4
  store ptr @nvec_keys_notifier, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 1), align 4
  store ptr %9, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 2), align 4
  %52 = tail call i32 @nvec_register_notifier(ptr noundef %9, ptr noundef getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 1), i32 noundef 0) #5
  %53 = call i32 @nvec_write_async(ptr noundef %9, ptr noundef nonnull %3, i16 noundef signext 2) #5
  %54 = call i32 @nvec_write_async(ptr noundef %9, ptr noundef nonnull %4, i16 noundef signext 4) #5
  %55 = call i32 @nvec_write_async(ptr noundef %9, ptr noundef nonnull %5, i16 noundef signext 3) #5
  %56 = call i32 @nvec_write_async(ptr noundef %9, ptr noundef nonnull %2, i16 noundef signext 3) #5
  br label %57

57:                                               ; preds = %51, %48, %28
  %58 = phi i32 [ 0, %51 ], [ -12, %28 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #5
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_kbd_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 -2811, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @__const.nvec_kbd_remove.uncnfg_wake_key_reporting, i32 3, i1 false)
  %8 = call i32 @nvec_write_async(ptr noundef %7, ptr noundef nonnull %3, i16 noundef signext 3) #5
  %9 = call i32 @nvec_write_async(ptr noundef %7, ptr noundef nonnull %2, i16 noundef signext 2) #5
  %10 = call i32 @nvec_unregister_notifier(ptr noundef %7, ptr noundef getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 1)) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_kbd_event(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca [3 x i8], align 2
  %6 = load ptr, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #5
  store i16 -4859, ptr %5, align 2
  switch i32 %1, label %7 [
    i32 20, label %15
    i32 17, label %8
  ]

7:                                                ; preds = %4
  br label %15

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = icmp ne i32 %3, 0
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 %12, ptr %13, align 2
  %14 = call i32 @nvec_write_async(ptr noundef %6, ptr noundef nonnull %5, i16 noundef signext 3) #5
  br label %15

15:                                               ; preds = %10, %8, %7, %4
  %16 = phi i32 [ -1, %7 ], [ 0, %10 ], [ 0, %4 ], [ -1, %8 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #5
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_keys_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca [3 x i8], align 1
  %5 = icmp eq i32 %1, 128
  br i1 %5, label %6, label %45

6:                                                ; preds = %3
  %7 = load i8, ptr %2, align 1
  %8 = lshr i8 %7, 5
  %9 = and i8 %8, 3
  %10 = zext i8 %9 to i32
  %11 = trunc i8 %8 to i2
  switch i2 %11, label %14 [
    i2 -2, label %45
    i2 1, label %12
  ]

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %2, i32 1
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %2, %6 ]
  %16 = getelementptr i8, ptr %15, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 127
  %20 = and i32 %18, 128
  %21 = getelementptr [2 x ptr], ptr @code_tabs, i32 0, i32 %10
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i16, ptr %22, i32 %19
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, 58
  %26 = icmp ne i32 %20, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %38

28:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const.nvec_kbd_toggle_led.buf, i32 3, i1 false) #5
  %29 = load i8, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 3), align 4, !range !8
  %30 = icmp eq i8 %29, 0
  %31 = xor i8 %29, 1
  store i8 %31, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 3), align 4
  br i1 %30, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 7, ptr %33, align 1
  br label %34

34:                                               ; preds = %32, %28
  %35 = load ptr, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 2), align 4
  %36 = call i32 @nvec_write_async(ptr noundef %35, ptr noundef nonnull %4, i16 noundef signext 3) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #5
  %37 = load i16, ptr %23, align 2
  br label %38

38:                                               ; preds = %34, %14
  %39 = phi i16 [ %37, %34 ], [ %24, %14 ]
  %40 = load ptr, ptr @keys_dev, align 4
  %41 = zext i16 %39 to i32
  %42 = xor i1 %26, true
  %43 = zext i1 %42 to i32
  call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef %41, i32 noundef %43) #5
  %44 = load ptr, ptr @keys_dev, align 4
  call void @input_event(ptr noundef %44, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %45

45:                                               ; preds = %38, %6, %3
  %46 = phi i32 [ 32769, %6 ], [ 32769, %38 ], [ 0, %3 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_write_async(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
