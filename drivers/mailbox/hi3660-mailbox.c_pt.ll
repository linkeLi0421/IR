; ModuleID = '/llk/IR/drivers/mailbox/hi3660-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/hi3660-mailbox.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.hi3660_mbox = type { ptr, ptr, [32 x %struct.mbox_chan], [32 x %struct.hi3660_chan_info], %struct.mbox_controller }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.hi3660_chan_info = type { i32, i32 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_hi3660_mailbox__170_287_hi3660_mbox_init1 = internal global ptr @hi3660_mbox_init, section ".initcall1.init", align 4
@hi3660_mbox_driver = internal global %struct.platform_driver { ptr @hi3660_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3660_mbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_hi3660_mbox_exit = internal global ptr @hi3660_mbox_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [51 x i8] c"hi3660_mailbox.file=drivers/mailbox/hi3660-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [27 x i8] c"hi3660_mailbox.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [63 x i8] c"hi3660_mailbox.description=Hisilicon Hi3660 Mailbox Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [51 x i8] c"hi3660_mailbox.author=Leo Yan <leo.yan@linaro.org>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"hi3660-mbox\00", align 1
@hi3660_mbox_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-mbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@hi3660_mbox_ops = internal constant %struct.mbox_chan_ops { ptr @hi3660_mbox_send_data, ptr null, ptr @hi3660_mbox_startup, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to register mailbox %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Mailbox enabled\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: timeout for receiving ack\0A\00", align 1
@__func__.hi3660_mbox_check_state = private unnamed_addr constant [24 x i8] c"hi3660_mbox_check_state\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: failed to unlock mailbox\0A\00", align 1
@__func__.hi3660_mbox_unlock = private unnamed_addr constant [19 x i8] c"hi3660_mbox_unlock\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: failed to acquire channel\0A\00", align 1
@__func__.hi3660_mbox_acquire_channel = private unnamed_addr constant [28 x i8] c"hi3660_mbox_acquire_channel\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Invalid channel idx %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_hi3660_mbox_exit, ptr @__initcall__kmod_hi3660_mailbox__170_287_hi3660_mbox_init1, ptr @hi3660_mbox_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hi3660_mbox_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3660_mbox_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi3660_mbox_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3660_mbox_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_mbox_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 4448, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %7 = getelementptr inbounds %struct.hi3660_mbox, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %55

11:                                               ; preds = %5
  store ptr %2, ptr %3, align 8
  %12 = getelementptr inbounds %struct.hi3660_mbox, ptr %3, i32 0, i32 4
  store ptr %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.hi3660_mbox, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.hi3660_mbox, ptr %3, i32 0, i32 4, i32 2
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.hi3660_mbox, ptr %3, i32 0, i32 4, i32 3
  store i32 32, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hi3660_mbox, ptr %3, i32 0, i32 4, i32 1
  store ptr @hi3660_mbox_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hi3660_mbox, ptr %3, i32 0, i32 4, i32 7
  store ptr @hi3660_mbox_xlate, ptr %17, align 8
  %18 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 0, i32 9
  store ptr null, ptr %18, align 4
  %19 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 1, i32 9
  store ptr inttoptr (i32 1 to ptr), ptr %19, align 4
  %20 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 2, i32 9
  store ptr inttoptr (i32 2 to ptr), ptr %20, align 4
  %21 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 3, i32 9
  store ptr inttoptr (i32 3 to ptr), ptr %21, align 4
  %22 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 4, i32 9
  store ptr inttoptr (i32 4 to ptr), ptr %22, align 4
  %23 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 5, i32 9
  store ptr inttoptr (i32 5 to ptr), ptr %23, align 4
  %24 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 6, i32 9
  store ptr inttoptr (i32 6 to ptr), ptr %24, align 4
  %25 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 7, i32 9
  store ptr inttoptr (i32 7 to ptr), ptr %25, align 4
  %26 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 8, i32 9
  store ptr inttoptr (i32 8 to ptr), ptr %26, align 4
  %27 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 9, i32 9
  store ptr inttoptr (i32 9 to ptr), ptr %27, align 4
  %28 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 10, i32 9
  store ptr inttoptr (i32 10 to ptr), ptr %28, align 4
  %29 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 11, i32 9
  store ptr inttoptr (i32 11 to ptr), ptr %29, align 4
  %30 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 12, i32 9
  store ptr inttoptr (i32 12 to ptr), ptr %30, align 4
  %31 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 13, i32 9
  store ptr inttoptr (i32 13 to ptr), ptr %31, align 4
  %32 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 14, i32 9
  store ptr inttoptr (i32 14 to ptr), ptr %32, align 4
  %33 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 15, i32 9
  store ptr inttoptr (i32 15 to ptr), ptr %33, align 4
  %34 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 16, i32 9
  store ptr inttoptr (i32 16 to ptr), ptr %34, align 4
  %35 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 17, i32 9
  store ptr inttoptr (i32 17 to ptr), ptr %35, align 4
  %36 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 18, i32 9
  store ptr inttoptr (i32 18 to ptr), ptr %36, align 4
  %37 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 19, i32 9
  store ptr inttoptr (i32 19 to ptr), ptr %37, align 4
  %38 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 20, i32 9
  store ptr inttoptr (i32 20 to ptr), ptr %38, align 4
  %39 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 21, i32 9
  store ptr inttoptr (i32 21 to ptr), ptr %39, align 4
  %40 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 22, i32 9
  store ptr inttoptr (i32 22 to ptr), ptr %40, align 4
  %41 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 23, i32 9
  store ptr inttoptr (i32 23 to ptr), ptr %41, align 4
  %42 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 24, i32 9
  store ptr inttoptr (i32 24 to ptr), ptr %42, align 4
  %43 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 25, i32 9
  store ptr inttoptr (i32 25 to ptr), ptr %43, align 4
  %44 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 26, i32 9
  store ptr inttoptr (i32 26 to ptr), ptr %44, align 4
  %45 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 27, i32 9
  store ptr inttoptr (i32 27 to ptr), ptr %45, align 4
  %46 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 28, i32 9
  store ptr inttoptr (i32 28 to ptr), ptr %46, align 4
  %47 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 29, i32 9
  store ptr inttoptr (i32 29 to ptr), ptr %47, align 4
  %48 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 30, i32 9
  store ptr inttoptr (i32 30 to ptr), ptr %48, align 4
  %49 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 31, i32 9
  store ptr inttoptr (i32 31 to ptr), ptr %49, align 4
  %50 = tail call i32 @devm_mbox_controller_register(ptr noundef %2, ptr noundef %12) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %50) #5
  br label %55

53:                                               ; preds = %11
  %54 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %54, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  br label %55

55:                                               ; preds = %53, %52, %9, %1
  %56 = phi i32 [ %10, %9 ], [ %50, %52 ], [ 0, %53 ], [ -12, %1 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hi3660_mbox_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4360
  %4 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 31
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %5) #5
  br label %17

9:                                                ; preds = %2
  %10 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 3, i32 %5
  %11 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 3, i32 %5, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr %struct.hi3660_mbox, ptr %3, i32 0, i32 2, i32 %5
  br label %17

17:                                               ; preds = %9, %7
  %18 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ %16, %9 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_mbox_send_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 -4360
  %8 = getelementptr i8, ptr %6, i32 -4356
  %9 = load ptr, ptr %8, align 4
  %10 = shl i32 %5, 6
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = tail call i64 @ktime_get() #4
  %18 = add i64 %17, 300000000
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %27, %16
  %23 = tail call i64 @ktime_get() #4
  %24 = icmp sgt i64 %23, %18
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %32

27:                                               ; preds = %22
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %30 = and i32 %29, 128
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %22, label %32

32:                                               ; preds = %27, %25, %16
  %33 = phi i32 [ %26, %25 ], [ %19, %16 ], [ %29, %27 ]
  %34 = and i32 %33, 128
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %37 = getelementptr %struct.hi3660_mbox, ptr %7, i32 0, i32 3, i32 %5, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = shl nuw i32 1, %38
  %40 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #4, !srcloc !13
  br label %43

41:                                               ; preds = %32
  %42 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.hi3660_mbox_check_state) #5
  br label %79

43:                                               ; preds = %36, %2
  %44 = getelementptr %struct.hi3660_mbox, ptr %7, i32 0, i32 3, i32 %5
  %45 = load i32, ptr %44, align 4
  %46 = shl nuw i32 1, %45
  %47 = xor i32 %46, -1
  %48 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #4, !srcloc !13
  %49 = load i32, ptr %44, align 4
  %50 = shl nuw i32 1, %49
  %51 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #4, !srcloc !13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #4, !srcloc !13
  %52 = getelementptr i8, ptr %11, i32 32
  %53 = load i32, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %53) #4, !srcloc !13
  %54 = getelementptr i32, ptr %1, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %55) #4, !srcloc !13
  %57 = getelementptr i32, ptr %1, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %58) #4, !srcloc !13
  %60 = getelementptr i32, ptr %1, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %61) #4, !srcloc !13
  %63 = getelementptr i32, ptr %1, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %52, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %64) #4, !srcloc !13
  %66 = getelementptr i32, ptr %1, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i8, ptr %52, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %67) #4, !srcloc !13
  %69 = getelementptr i32, ptr %1, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %52, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #4, !srcloc !13
  %72 = getelementptr i32, ptr %1, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr i8, ptr %52, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %73) #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %75 = getelementptr %struct.hi3660_mbox, ptr %7, i32 0, i32 3, i32 %5, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = shl nuw i32 1, %76
  %78 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %77) #4, !srcloc !13
  br label %79

79:                                               ; preds = %43, %41
  %80 = phi i32 [ 0, %43 ], [ -110, %41 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_mbox_startup(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 -4360
  %4 = getelementptr i8, ptr %2, i32 -4356
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 449635665) #4, !srcloc !13
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 2560
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 449635665) #4, !srcloc !13
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 2560
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 449635665) #4, !srcloc !13
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 2560
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 449635665) #4, !srcloc !13
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 2560
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #4
  %37 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi3660_mbox_unlock) #5
  br label %68

38:                                               ; preds = %27, %19, %11, %1
  %39 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr i8, ptr %42, i32 -4360
  %44 = getelementptr i8, ptr %42, i32 -4356
  %45 = load ptr, ptr %44, align 4
  %46 = shl i32 %41, 6
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = getelementptr i8, ptr %47, i32 16
  %49 = getelementptr %struct.hi3660_mbox, ptr %43, i32 0, i32 3, i32 %41, i32 1
  br label %50

50:                                               ; preds = %63, %38
  %51 = phi i32 [ 10, %38 ], [ %64, %63 ]
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %56 = load i32, ptr %49, align 4
  %57 = shl nuw i32 1, %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %57) #4, !srcloc !13
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  %59 = load i32, ptr %49, align 4
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55, %50
  %64 = add nsw i32 %51, -1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %50

66:                                               ; preds = %63
  %67 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hi3660_mbox_acquire_channel) #5
  br label %68

68:                                               ; preds = %66, %55, %35
  %69 = phi i32 [ -110, %35 ], [ -110, %66 ], [ 0, %55 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3707913}
!9 = !{i64 2151644956}
!10 = !{i64 2151646787}
!11 = !{i64 2151647103}
!12 = !{i64 2151648612}
!13 = !{i64 3707495}
!14 = !{i64 2151653813}
!15 = !{i64 2151649019}
!16 = !{i64 2151649506}
!17 = !{i64 2151651012}
!18 = !{i64 2151651403}
!19 = !{i64 2151651921}
