; ModuleID = '/llk/IR/drivers/mfd/twl4030-irq.c_pt.bc'
source_filename = "../drivers/mfd/twl4030-irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sih = type { [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, [2 x %struct.sih_irq_data] }
%struct.sih_irq_data = type { i8, i8 }
%struct.sih_agent = type { i32, ptr, i32, i8, i32, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%union.anon.62 = type { i32 }

@sih_modules = internal unnamed_addr global ptr null, align 4
@nr_sih_modules = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"module to setup SIH for not found\0A\00", align 1
@twl4030_sih_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"&agent->irq_lock\00", align 1
@twl4030_sih_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_sih_mask, ptr null, ptr @twl4030_sih_unmask, ptr null, ptr null, ptr null, ptr @twl4030_sih_set_type, ptr null, ptr @twl4030_sih_bus_lock, ptr @twl4030_sih_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, align 4
@twl4030_irq_base = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"twl4030_%s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s (irq %d) chaining IRQs %d..%d\0A\00", align 1
@twl4030_init_irq.twl4030_irq_chip = internal global %struct.irq_chip zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Fail to allocate IRQ descs\0A\00", align 1
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@dummy_irq_chip = external dso_local local_unnamed_addr global %struct.irq_chip, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"twl4030\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"PIH\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"sih_setup PWR INT --> %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"TWL4030-PIH\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"could not claim irq%d: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\013twl4030: can't yet clean up IRQs?\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"twl5031\00", align 1
@sih_modules_twl5031 = internal constant [8 x %struct.sih] [%struct.sih { [8 x i8] c"gpio\00\00\00\00", i8 10, i8 45, i8 1, i8 18, i8 3, i8 40, i8 5, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 25, i8 28 }, %struct.sih_irq_data { i8 31, i8 34 }] }, %struct.sih { [8 x i8] c"keypad\00\00", i8 13, i8 23, i8 1, i8 4, i8 1, i8 22, i8 1, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 17, i8 18 }, %struct.sih_irq_data { i8 19, i8 20 }] }, %struct.sih { [8 x i8] c"bci\00\00\00\00\00", i8 20, i8 7, i8 0, i8 7, i8 1, i8 5, i8 2, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 0, i8 1 }, %struct.sih_irq_data { i8 2, i8 3 }] }, %struct.sih { [8 x i8] c"madc\00\00\00\00", i8 14, i8 103, i8 0, i8 4, i8 1, i8 102, i8 1, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 97, i8 98 }, %struct.sih_irq_data { i8 99, i8 100 }] }, %struct.sih { [8 x i8] c"usb\00\00\00\00\00", i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x %struct.sih_irq_data] zeroinitializer }, %struct.sih { [8 x i8] c"power\00\00\00", i8 18, i8 7, i8 1, i8 8, i8 1, i8 5, i8 2, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 0, i8 1 }, %struct.sih_irq_data { i8 2, i8 3 }] }, %struct.sih { [8 x i8] c"eci_dbi\00", i8 19, i8 0, i8 0, i8 9, i8 2, i8 0, i8 0, i8 1, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 7, i8 5 }, %struct.sih_irq_data zeroinitializer] }, %struct.sih { [8 x i8] c"audio\00\00\00", i8 19, i8 21, i8 0, i8 2, i8 1, i8 20, i8 1, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 15, i8 16 }, %struct.sih_irq_data { i8 17, i8 18 }] }], align 1
@sih_modules_twl4030 = internal constant [6 x %struct.sih] [%struct.sih { [8 x i8] c"gpio\00\00\00\00", i8 10, i8 45, i8 1, i8 18, i8 3, i8 40, i8 5, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 25, i8 28 }, %struct.sih_irq_data { i8 31, i8 34 }] }, %struct.sih { [8 x i8] c"keypad\00\00", i8 13, i8 23, i8 1, i8 4, i8 1, i8 22, i8 1, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 17, i8 18 }, %struct.sih_irq_data { i8 19, i8 20 }] }, %struct.sih { [8 x i8] c"bci\00\00\00\00\00", i8 15, i8 13, i8 1, i8 12, i8 2, i8 10, i8 3, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 0, i8 2 }, %struct.sih_irq_data { i8 4, i8 6 }] }, %struct.sih { [8 x i8] c"madc\00\00\00\00", i8 14, i8 103, i8 0, i8 4, i8 1, i8 102, i8 1, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 97, i8 98 }, %struct.sih_irq_data { i8 99, i8 100 }] }, %struct.sih { [8 x i8] c"usb\00\00\00\00\00", i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x %struct.sih_irq_data] zeroinitializer }, %struct.sih { [8 x i8] c"power\00\00\00", i8 18, i8 7, i8 1, i8 8, i8 1, i8 5, i8 2, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 0, i8 1 }, %struct.sih_irq_data { i8 2, i8 3 }] }], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"\013twl4030: %s, %s --> %d\0A\00", align 1
@__func__.twl4030_sih_bus_sync_unlock = private unnamed_addr constant [28 x i8] c"twl4030_sih_bus_sync_unlock\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"\013twl4030: %s SIH, read ISR error %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"\013twl4030: %s SIH, invalid ISR bit %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"\013twl4030: err %d initializing %s %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"IMR\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"SIH_CTRL\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"\014twl4030: err %d initializing %s %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ISR\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"\014twl4030: write failed: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"\014twl4030: I2C error %d reading PIH ISR\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl4030_sih_setup(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @nr_sih_modules, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load ptr, ptr @sih_modules, align 4
  br label %8

8:                                                ; preds = %19, %6
  %9 = phi ptr [ %21, %19 ], [ %7, %6 ]
  %10 = phi i32 [ %20, %19 ], [ 0, %6 ]
  %11 = getelementptr inbounds %struct.sih, ptr %9, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.sih, ptr %9, i32 0, i32 3
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %8
  %20 = add nuw nsw i32 %10, 1
  %21 = getelementptr %struct.sih, ptr %9, i32 1
  %22 = icmp eq i32 %20, %4
  br i1 %22, label %23, label %8

23:                                               ; preds = %19, %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #11
  br label %57

24:                                               ; preds = %15
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 44) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %57, label %28

28:                                               ; preds = %24
  store i32 %2, ptr %26, align 8
  %29 = getelementptr inbounds %struct.sih_agent, ptr %26, i32 0, i32 1
  store ptr %9, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sih_agent, ptr %26, i32 0, i32 2
  store i32 -1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.sih_agent, ptr %26, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef nonnull @twl4030_sih_setup.__key) #13
  %32 = getelementptr inbounds %struct.sih, ptr %9, i32 0, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %35, %28
  %36 = phi i32 [ %39, %35 ], [ 0, %28 ]
  %37 = add i32 %36, %2
  %38 = tail call i32 @irq_set_chip_data(i32 noundef %37, ptr noundef nonnull %26) #13
  tail call void @irq_set_chip_and_handler_name(i32 noundef %37, ptr noundef nonnull @twl4030_sih_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #13
  tail call void @irq_modify_status(i32 noundef %37, i32 noundef 0, i32 noundef 32768) #13
  tail call void @irq_modify_status(i32 noundef %37, i32 noundef 3072, i32 noundef 0) #13
  %39 = add nuw nsw i32 %36, 1
  %40 = load i8, ptr %32, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %35, label %43

43:                                               ; preds = %35, %28
  %44 = phi i32 [ 0, %28 ], [ %39, %35 ]
  %45 = load i32, ptr @twl4030_irq_base, align 4
  %46 = add i32 %45, %10
  %47 = tail call i32 @irq_set_handler_data(i32 noundef %46, ptr noundef nonnull %26) #13
  %48 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %9) #13
  %49 = getelementptr inbounds %struct.sih_agent, ptr %26, i32 0, i32 6
  store ptr %48, ptr %49, align 8
  %50 = icmp eq ptr %48, null
  %51 = select i1 %50, ptr %9, ptr %48
  %52 = tail call i32 @request_threaded_irq(i32 noundef %46, ptr noundef null, ptr noundef nonnull @handle_twl4030_sih, i32 noundef 139264, ptr noundef %51, ptr noundef null) #13
  %53 = add i32 %44, %2
  %54 = add i32 %53, -1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %9, i32 noundef %46, i32 noundef %2, i32 noundef %54) #11
  %55 = icmp slt i32 %52, 0
  %56 = select i1 %55, i32 %52, i32 %2
  br label %57

57:                                               ; preds = %43, %24, %23
  %58 = phi i32 [ -22, %23 ], [ %56, %43 ], [ -12, %24 ]
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @handle_twl4030_sih(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %union.anon.63, align 4
  %4 = tail call ptr @irq_get_irq_data(i32 noundef %0) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_common_data, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.sih_agent, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4
  %15 = getelementptr inbounds %struct.sih, ptr %14, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.sih, ptr %14, i32 0, i32 9
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.sih, ptr %14, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = call i32 @twl_i2c_read(i8 noundef zeroext %16, ptr noundef nonnull %3, i8 noundef zeroext %18, i32 noundef %21) #13
  %23 = icmp slt i32 %22, 0
  %24 = load i32, ptr %3, align 4
  %25 = select i1 %23, i32 %22, i32 %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %11
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.sih, ptr %14, i32 0, i32 4
  br label %33

31:                                               ; preds = %11
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %14, i32 noundef %25) #11
  br label %50

33:                                               ; preds = %48, %29
  %34 = phi i32 [ %25, %29 ], [ %39, %48 ]
  %35 = call i32 @llvm.ctlz.i32(i32 %34, i1 true) #13, !range !9
  %36 = xor i32 %35, 31
  %37 = shl nuw i32 1, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %34, %38
  %40 = load i8, ptr %30, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ult i32 %36, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, ptr %12, align 4
  %45 = add i32 %44, %36
  call void @handle_nested_irq(i32 noundef %45) #13
  br label %48

46:                                               ; preds = %33
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %14, i32 noundef %36) #11
  br label %48

48:                                               ; preds = %46, %43
  %49 = icmp eq i32 %39, 0
  br i1 %49, label %50, label %33

50:                                               ; preds = %48, %31, %27
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl4030_init_irq(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef 16, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #11
  br label %156

11:                                               ; preds = %2
  %12 = tail call ptr @irq_domain_add_legacy(ptr noundef %7, i32 noundef 16, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #13
  %13 = add nuw i32 %8, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 -1, ptr %4, align 4
  %14 = load i32, ptr @nr_sih_modules, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %121

16:                                               ; preds = %11
  %17 = load ptr, ptr @sih_modules, align 4
  br label %18

18:                                               ; preds = %50, %16
  %19 = phi ptr [ %52, %50 ], [ %17, %16 ]
  %20 = phi i32 [ %51, %50 ], [ 0, %16 ]
  %21 = getelementptr inbounds %struct.sih, ptr %19, i32 0, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sih, ptr %19, i32 0, i32 8
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sih, ptr %19, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.sih, ptr %19, i32 0, i32 9, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %22 to i32
  %34 = call i32 @twl_i2c_write(i8 noundef zeroext %30, ptr noundef nonnull %4, i8 noundef zeroext %32, i32 noundef %33) #13
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %34, ptr noundef %19, ptr noundef nonnull @.str.18) #11
  br label %38

38:                                               ; preds = %36, %28
  %39 = getelementptr inbounds %struct.sih, ptr %19, i32 0, i32 3
  %40 = load i8, ptr %39, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr %29, align 1
  %44 = getelementptr inbounds %struct.sih, ptr %19, i32 0, i32 2
  %45 = load i8, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 4, ptr %3, align 1
  %46 = call i32 @twl_i2c_write(i8 noundef zeroext %43, ptr noundef nonnull %3, i8 noundef zeroext %45, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %46, ptr noundef %19, ptr noundef nonnull @.str.19) #11
  br label %50

50:                                               ; preds = %48, %42, %38, %24, %18
  %51 = add nuw nsw i32 %20, 1
  %52 = getelementptr %struct.sih, ptr %19, i32 1
  %53 = load i32, ptr @nr_sih_modules, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %18, label %55

55:                                               ; preds = %50
  %56 = icmp sgt i32 %53, 0
  br i1 %56, label %57, label %121

57:                                               ; preds = %55
  %58 = load ptr, ptr @sih_modules, align 4
  br label %59

59:                                               ; preds = %116, %57
  %60 = phi i32 [ %117, %116 ], [ %53, %57 ]
  %61 = phi ptr [ %119, %116 ], [ %58, %57 ]
  %62 = phi i32 [ %118, %116 ], [ 0, %57 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !10
  %63 = getelementptr inbounds %struct.sih, ptr %61, i32 0, i32 5
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %116, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.sih, ptr %61, i32 0, i32 8
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %116, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.sih, ptr %61, i32 0, i32 1
  %72 = getelementptr inbounds %struct.sih, ptr %61, i32 0, i32 9
  %73 = getelementptr inbounds %struct.sih, ptr %61, i32 0, i32 3
  %74 = load i8, ptr %71, align 1
  %75 = load i8, ptr %72, align 1
  %76 = zext i8 %64 to i32
  %77 = call i32 @twl_i2c_read(i8 noundef zeroext %74, ptr noundef nonnull %5, i8 noundef zeroext %75, i32 noundef %76) #13
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %77, ptr noundef %61, ptr noundef nonnull @.str.21) #11
  br label %81

81:                                               ; preds = %79, %70
  %82 = load i8, ptr %73, align 1, !range !8
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i8, ptr %71, align 1
  %86 = load i8, ptr %72, align 1
  %87 = load i8, ptr %63, align 1
  %88 = zext i8 %87 to i32
  %89 = call i32 @twl_i2c_write(i8 noundef zeroext %85, ptr noundef nonnull %4, i8 noundef zeroext %86, i32 noundef %88) #13
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %89) #11
  br label %93

93:                                               ; preds = %91, %84, %81
  %94 = load i8, ptr %71, align 1
  %95 = load i8, ptr %72, align 1
  %96 = load i8, ptr %63, align 1
  %97 = zext i8 %96 to i32
  %98 = call i32 @twl_i2c_read(i8 noundef zeroext %94, ptr noundef nonnull %5, i8 noundef zeroext %95, i32 noundef %97) #13
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %98, ptr noundef %61, ptr noundef nonnull @.str.21) #11
  br label %102

102:                                              ; preds = %100, %93
  %103 = load i8, ptr %73, align 1, !range !8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i8, ptr %71, align 1
  %107 = load i8, ptr %72, align 1
  %108 = load i8, ptr %63, align 1
  %109 = zext i8 %108 to i32
  %110 = call i32 @twl_i2c_write(i8 noundef zeroext %106, ptr noundef nonnull %4, i8 noundef zeroext %107, i32 noundef %109) #13
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %110) #11
  br label %114

114:                                              ; preds = %112, %105, %102
  %115 = load i32, ptr @nr_sih_modules, align 4
  br label %116

116:                                              ; preds = %114, %66, %59
  %117 = phi i32 [ %115, %114 ], [ %60, %66 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %118 = add nuw nsw i32 %62, 1
  %119 = getelementptr %struct.sih, ptr %61, i32 1
  %120 = icmp slt i32 %118, %117
  br i1 %120, label %59, label %121

121:                                              ; preds = %116, %55, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  store i32 %8, ptr @twl4030_irq_base, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(136) @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull align 4 dereferenceable(136) @dummy_irq_chip, i32 136, i1 false)
  store ptr @.str.5, ptr getelementptr inbounds (%struct.irq_chip, ptr @twl4030_init_irq.twl4030_irq_chip, i32 0, i32 1), align 4
  %122 = load ptr, ptr getelementptr inbounds (%struct.irq_chip, ptr @dummy_irq_chip, i32 0, i32 6), align 4
  store ptr %122, ptr getelementptr inbounds (%struct.irq_chip, ptr @twl4030_sih_irq_chip, i32 0, i32 6), align 4
  %123 = icmp slt i32 %8, 2147483640
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  call void @irq_set_chip_and_handler_name(i32 noundef %8, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #13
  call void @irq_modify_status(i32 noundef %8, i32 noundef 0, i32 noundef 32768) #13
  call void @irq_modify_status(i32 noundef %8, i32 noundef 3072, i32 noundef 0) #13
  %125 = add nsw i32 %8, 1
  %126 = icmp slt i32 %125, %13
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  call void @irq_set_chip_and_handler_name(i32 noundef %125, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #13
  call void @irq_modify_status(i32 noundef %125, i32 noundef 0, i32 noundef 32768) #13
  call void @irq_modify_status(i32 noundef %125, i32 noundef 3072, i32 noundef 0) #13
  %128 = add nsw i32 %8, 2
  call void @irq_set_chip_and_handler_name(i32 noundef %128, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #13
  call void @irq_modify_status(i32 noundef %128, i32 noundef 0, i32 noundef 32768) #13
  call void @irq_modify_status(i32 noundef %128, i32 noundef 3072, i32 noundef 0) #13
  %129 = add nsw i32 %8, 3
  call void @irq_set_chip_and_handler_name(i32 noundef %129, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #13
  call void @irq_modify_status(i32 noundef %129, i32 noundef 0, i32 noundef 32768) #13
  call void @irq_modify_status(i32 noundef %129, i32 noundef 3072, i32 noundef 0) #13
  %130 = add nsw i32 %8, 4
  call void @irq_set_chip_and_handler_name(i32 noundef %130, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #13
  call void @irq_modify_status(i32 noundef %130, i32 noundef 0, i32 noundef 32768) #13
  call void @irq_modify_status(i32 noundef %130, i32 noundef 3072, i32 noundef 0) #13
  %131 = add nsw i32 %8, 5
  call void @irq_set_chip_and_handler_name(i32 noundef %131, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #13
  call void @irq_modify_status(i32 noundef %131, i32 noundef 0, i32 noundef 32768) #13
  call void @irq_modify_status(i32 noundef %131, i32 noundef 3072, i32 noundef 0) #13
  %132 = add nsw i32 %8, 6
  call void @irq_set_chip_and_handler_name(i32 noundef %132, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #13
  call void @irq_modify_status(i32 noundef %132, i32 noundef 0, i32 noundef 32768) #13
  call void @irq_modify_status(i32 noundef %132, i32 noundef 3072, i32 noundef 0) #13
  %133 = add nsw i32 %8, 7
  call void @irq_set_chip_and_handler_name(i32 noundef %133, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #13
  call void @irq_modify_status(i32 noundef %133, i32 noundef 0, i32 noundef 32768) #13
  call void @irq_modify_status(i32 noundef %133, i32 noundef 3072, i32 noundef 0) #13
  br label %134

134:                                              ; preds = %127, %124, %121
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef %8, i32 noundef %13) #11
  %135 = call i32 @twl4030_sih_setup(ptr noundef %0, i32 noundef 18, i32 noundef %13)
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %135) #11
  br label %144

138:                                              ; preds = %134
  %139 = call i32 @request_threaded_irq(i32 noundef %1, ptr noundef null, ptr noundef nonnull @handle_twl4030_pih, i32 noundef 8192, ptr noundef nonnull @.str.8, ptr noundef null) #13
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %1, i32 noundef %139) #11
  br label %144

142:                                              ; preds = %138
  %143 = call i32 @irq_set_irq_wake(i32 noundef %1, i32 noundef 1) #13
  br label %156

144:                                              ; preds = %141, %137
  %145 = phi i32 [ %135, %137 ], [ %139, %141 ]
  br i1 %123, label %146, label %156

146:                                              ; preds = %144
  call void @irq_modify_status(i32 noundef %8, i32 noundef 32768, i32 noundef 0) #13
  call void @irq_set_chip_and_handler_name(i32 noundef %8, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %147 = add nsw i32 %8, 1
  %148 = icmp slt i32 %147, %13
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  call void @irq_modify_status(i32 noundef %147, i32 noundef 32768, i32 noundef 0) #13
  call void @irq_set_chip_and_handler_name(i32 noundef %147, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %150 = add nsw i32 %8, 2
  call void @irq_modify_status(i32 noundef %150, i32 noundef 32768, i32 noundef 0) #13
  call void @irq_set_chip_and_handler_name(i32 noundef %150, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %151 = add nsw i32 %8, 3
  call void @irq_modify_status(i32 noundef %151, i32 noundef 32768, i32 noundef 0) #13
  call void @irq_set_chip_and_handler_name(i32 noundef %151, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %152 = add nsw i32 %8, 4
  call void @irq_modify_status(i32 noundef %152, i32 noundef 32768, i32 noundef 0) #13
  call void @irq_set_chip_and_handler_name(i32 noundef %152, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %153 = add nsw i32 %8, 5
  call void @irq_modify_status(i32 noundef %153, i32 noundef 32768, i32 noundef 0) #13
  call void @irq_set_chip_and_handler_name(i32 noundef %153, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %154 = add nsw i32 %8, 6
  call void @irq_modify_status(i32 noundef %154, i32 noundef 32768, i32 noundef 0) #13
  call void @irq_set_chip_and_handler_name(i32 noundef %154, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %155 = add nsw i32 %8, 7
  call void @irq_modify_status(i32 noundef %155, i32 noundef 32768, i32 noundef 0) #13
  call void @irq_set_chip_and_handler_name(i32 noundef %155, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %156

156:                                              ; preds = %149, %146, %144, %142, %10
  %157 = phi i32 [ %8, %10 ], [ %8, %142 ], [ %145, %144 ], [ %145, %149 ], [ %145, %146 ]
  ret i32 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @handle_twl4030_pih(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !10
  %4 = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %3, i8 noundef zeroext 1, i32 noundef 1) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load i8, ptr %3, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %11

9:                                                ; preds = %2
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %4) #11
  br label %22

11:                                               ; preds = %11, %6
  %12 = phi i8 [ %20, %11 ], [ %7, %6 ]
  %13 = call i8 @llvm.cttz.i8(i8 %12, i1 true), !range !11
  %14 = zext i8 %13 to i32
  %15 = shl nuw i8 1, %13
  %16 = xor i8 %15, -1
  %17 = and i8 %12, %16
  store i8 %17, ptr %3, align 1
  %18 = load i32, ptr @twl4030_irq_base, align 4
  %19 = add i32 %18, %14
  call void @handle_nested_irq(i32 noundef %19) #13
  %20 = load i8, ptr %3, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %11

22:                                               ; preds = %11, %9, %6
  %23 = phi i32 [ 0, %9 ], [ 1, %6 ], [ 1, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl4030_exit_irq() local_unnamed_addr #0 {
  %1 = load i32, ptr @twl4030_irq_base, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ -38, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @twl4030_init_chip_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(8) @.str.11)
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, ptr @sih_modules_twl5031, ptr @sih_modules_twl4030
  %5 = select i1 %3, i32 8, i32 6
  store ptr %4, ptr @sih_modules, align 4
  store i32 %5, ptr @nr_sih_modules, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @twl4030_sih_mask(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sub i32 %5, %6
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.sih_agent, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %8, %10
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.sih_agent, ptr %3, i32 0, i32 3
  store i8 1, ptr %12, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @twl4030_sih_unmask(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sub i32 %5, %6
  %8 = shl nuw i32 1, %7
  %9 = xor i32 %8, -1
  %10 = getelementptr inbounds %struct.sih_agent, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.sih_agent, ptr %3, i32 0, i32 3
  store i8 1, ptr %13, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @twl4030_sih_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ult i32 %1, 4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %4, align 4
  %16 = sub i32 %14, %15
  %17 = shl nuw i32 1, %16
  %18 = getelementptr inbounds %struct.sih_agent, ptr %4, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %17, %19
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %12, %6, %2
  %22 = phi i32 [ -22, %2 ], [ 0, %12 ], [ 0, %6 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @twl4030_sih_bus_lock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sih_agent, ptr %3, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @twl4030_sih_bus_sync_unlock(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %union.anon.62, align 4
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sih_agent, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sih_agent, ptr %5, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %12 = getelementptr inbounds %struct.sih_agent, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %2, align 4
  store i8 0, ptr %8, align 4
  %14 = getelementptr inbounds %struct.sih, ptr %7, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.sih, ptr %7, i32 0, i32 9, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.sih, ptr %7, i32 0, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = call i32 @twl_i2c_write(i8 noundef zeroext %15, ptr noundef nonnull %2, i8 noundef zeroext %17, i32 noundef %20) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %11
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.twl4030_sih_bus_sync_unlock, ptr noundef nonnull @.str.13, i32 noundef %21) #11
  br label %25

25:                                               ; preds = %23, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %26

26:                                               ; preds = %25, %1
  %27 = getelementptr inbounds %struct.sih_agent, ptr %5, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %94, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !10
  store i32 0, ptr %27, align 4
  %31 = getelementptr inbounds %struct.sih, ptr %7, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.sih, ptr %7, i32 0, i32 6
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.sih, ptr %7, i32 0, i32 7
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 @twl_i2c_read(i8 noundef zeroext %32, ptr noundef nonnull %3, i8 noundef zeroext %34, i32 noundef %37) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.twl4030_sih_bus_sync_unlock, ptr noundef nonnull @.str.14, i32 noundef %38) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #13
  br label %96

42:                                               ; preds = %79, %30
  %43 = phi i32 [ %82, %79 ], [ %28, %30 ]
  %44 = call i32 @llvm.ctlz.i32(i32 %43, i1 true) #13, !range !9
  %45 = xor i32 %44, 31
  %46 = lshr i32 %45, 2
  %47 = shl nuw nsw i32 %45, 1
  %48 = and i32 %47, 6
  %49 = shl nuw nsw i32 3, %48
  %50 = getelementptr [6 x i8], ptr %3, i32 0, i32 %46
  %51 = load i8, ptr %50, align 1
  %52 = trunc i32 %49 to i8
  %53 = xor i8 %52, -1
  %54 = and i8 %51, %53
  store i8 %54, ptr %50, align 1
  %55 = load i32, ptr %5, align 4
  %56 = add i32 %55, %45
  %57 = call ptr @irq_get_irq_data(i32 noundef %56) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %79, label %59

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.irq_data, ptr %57, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = or i32 %48, 1
  %67 = shl nuw i32 1, %66
  %68 = load i8, ptr %50, align 1
  %69 = trunc i32 %67 to i8
  %70 = or i8 %68, %69
  store i8 %70, ptr %50, align 1
  br label %71

71:                                               ; preds = %65, %59
  %72 = and i32 %62, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = shl nuw nsw i32 1, %48
  %76 = load i8, ptr %50, align 1
  %77 = trunc i32 %75 to i8
  %78 = or i8 %76, %77
  store i8 %78, ptr %50, align 1
  br label %79

79:                                               ; preds = %74, %71, %42
  %80 = shl nuw i32 1, %45
  %81 = xor i32 %80, -1
  %82 = and i32 %43, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %42

84:                                               ; preds = %79
  %85 = load i8, ptr %31, align 1
  %86 = load i8, ptr %33, align 1
  %87 = load i8, ptr %35, align 1
  %88 = zext i8 %87 to i32
  %89 = call i32 @twl_i2c_write(i8 noundef zeroext %85, ptr noundef nonnull %3, i8 noundef zeroext %86, i32 noundef %88) #13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %84
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.twl4030_sih_bus_sync_unlock, ptr noundef nonnull @.str.13, i32 noundef %89) #11
  br label %93

93:                                               ; preds = %91, %84
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #13
  br label %94

94:                                               ; preds = %93, %26
  %95 = getelementptr inbounds %struct.sih_agent, ptr %5, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %95) #13
  br label %96

96:                                               ; preds = %94, %40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind }

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
!9 = !{i32 0, i32 33}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 9}
