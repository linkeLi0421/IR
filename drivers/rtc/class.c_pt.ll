; ModuleID = '/llk/IR/drivers/rtc/class.c_pt.bc'
source_filename = "../drivers/rtc/class.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_rtc_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_rtc_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_devm_rtc_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_rtc_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_rtc_register_device\22\09\09\09\09\09"
module asm "__kstrtabns___devm_rtc_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_rtc_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_rtc_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_rtc_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
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
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rtc_hctosys_ret = dso_local local_unnamed_addr global i32 -19, align 4
@rtc_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str = private unnamed_addr constant [6 x i8] c"rtc%d\00", align 1
@__kstrtab_devm_rtc_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_rtc_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_rtc_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_rtc_allocate_device to i32), ptr @__kstrtab_devm_rtc_allocate_device, ptr @__kstrtabns_devm_rtc_allocate_device }, section "___ksymtab_gpl+devm_rtc_allocate_device", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to add char device %d:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"registered as %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rtc0\00", align 1
@__kstrtab___devm_rtc_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_rtc_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_rtc_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_rtc_register_device to i32), ptr @__kstrtab___devm_rtc_register_device, ptr @__kstrtabns___devm_rtc_register_device }, section "___ksymtab_gpl+__devm_rtc_register_device", align 4
@__kstrtab_devm_rtc_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_rtc_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_rtc_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_rtc_device_register to i32), ptr @__kstrtab_devm_rtc_device_register, ptr @__kstrtabns_devm_rtc_device_register }, section "___ksymtab_gpl+devm_rtc_device_register", align 4
@__initcall__kmod_rtc_core__210_481_rtc_init4 = internal global ptr @rtc_init, section ".initcall4.init", align 4
@rtc_class = dso_local local_unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"/aliases ID %d not available\0A\00", align 1
@rtc_allocate_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"&rtc->ops_lock\00", align 1
@rtc_allocate_device.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"&rtc->irq_queue\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"start-year\00", align 1
@__const.rtc_hctosys.tv64 = private unnamed_addr constant { i64, i32, [4 x i8] } { i64 0, i32 500000000, [4 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [44 x i8] c"hctosys: unable to read the hardware clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"setting system clock to %ptR UTC (%lld)\0A\00", align 1
@rtc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\013rtc_core: couldn't create class\0A\00", align 1
@rtc_class_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rtc_suspend, ptr @rtc_resume, ptr @rtc_suspend, ptr @rtc_resume, ptr @rtc_suspend, ptr @rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@old_system = internal global %struct.timespec64 zeroinitializer, align 8
@old_rtc.0 = internal unnamed_addr global i64 0, align 8
@old_delta.0 = internal unnamed_addr global i64 0, align 8
@old_delta.1 = internal unnamed_addr global i64 0, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_rtc_core__210_481_rtc_init4, ptr @__ksymtab___devm_rtc_register_device, ptr @__ksymtab_devm_rtc_allocate_device, ptr @__ksymtab_devm_rtc_device_register], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_rtc_allocate_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9, %1
  %14 = phi ptr [ %3, %1 ], [ %11, %9 ]
  %15 = tail call i32 @of_alias_get_id(ptr noundef nonnull %14, ptr noundef nonnull @.str.4) #9
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = tail call i32 @ida_alloc_range(ptr noundef nonnull @rtc_ida, i32 noundef %15, i32 noundef %15, i32 noundef 3264) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %15) #10
  br label %21

21:                                               ; preds = %20, %13, %9, %5
  %22 = tail call i32 @ida_alloc_range(ptr noundef nonnull @rtc_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #9
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = inttoptr i32 %22 to ptr
  br label %67

26:                                               ; preds = %21, %17
  %27 = phi i32 [ %22, %21 ], [ %18, %17 ]
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 824) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void @ida_free(ptr noundef nonnull @rtc_ida, i32 noundef %27) #9
  br label %67

32:                                               ; preds = %26
  tail call void @device_initialize(ptr noundef nonnull %29) #9
  %33 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 20
  store i32 1005000000, ptr %33, align 8
  %34 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 11
  store i32 1, ptr %34, align 8
  %35 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 12
  store i32 64, ptr %35, align 4
  %36 = load ptr, ptr @rtc_class, align 4
  %37 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 31
  store ptr %36, ptr %37, align 4
  %38 = tail call ptr @rtc_get_dev_attribute_groups() #9
  %39 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 32
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 33
  store ptr @rtc_device_release, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %41, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtc_allocate_device.__key) #9
  %42 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 8
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %43, ptr noundef nonnull @.str.8, ptr noundef nonnull @rtc_allocate_device.__key.7) #9
  %44 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 13
  store ptr null, ptr %44, align 8
  %45 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 13, i32 0, i32 1
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 18
  store i32 -32, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 18, i32 1
  store volatile ptr %47, ptr %47, align 8
  %48 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 18, i32 1, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 18, i32 2
  store ptr @rtc_timer_do_work, ptr %49, align 8
  %50 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 14
  tail call void @rtc_timer_init(ptr noundef %50, ptr noundef nonnull @rtc_aie_update_irq, ptr noundef nonnull %29) #9
  %51 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 15
  tail call void @rtc_timer_init(ptr noundef %51, ptr noundef nonnull @rtc_uie_update_irq, ptr noundef nonnull %29) #9
  %52 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 16
  tail call void @hrtimer_init(ptr noundef %52, i32 noundef 1, i32 noundef 1) #9
  %53 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 16, i32 2
  store ptr @rtc_pie_update_irq, ptr %53, align 8
  %54 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 17
  store i32 0, ptr %54, align 8
  %55 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 0, ptr noundef %55) #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %55) #9
  %56 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 2
  store i32 %27, ptr %56, align 4
  %57 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 1
  store ptr %0, ptr %57, align 4
  %58 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %29, ptr noundef nonnull @.str, i32 noundef %27) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %32
  %61 = inttoptr i32 %58 to ptr
  br label %67

62:                                               ; preds = %32
  %63 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_rtc_release_device, ptr noundef nonnull %29) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  tail call void @put_device(ptr noundef nonnull %29) #9
  %66 = inttoptr i32 %63 to ptr
  br label %67

67:                                               ; preds = %65, %62, %60, %31, %24
  %68 = phi ptr [ %25, %24 ], [ %61, %60 ], [ %66, %65 ], [ inttoptr (i32 -12 to ptr), %31 ], [ %29, %62 ]
  ret ptr %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_rtc_release_device(ptr noundef %0) #0 {
  tail call void @put_device(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__devm_rtc_register_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rtc_time, align 4
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtc_wkalrm, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %140, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtc_class_ops, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %15) #9
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 19
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %21) #9
  br label %22

22:                                               ; preds = %20, %16
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds %struct.rtc_class_ops, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 5, ptr noundef %28) #9
  br label %29

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 1
  store ptr %0, ptr %30, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %31 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 22
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 23
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %74, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @device_property_read_u32_array(ptr noundef %38, ptr noundef nonnull @.str.9, ptr noundef nonnull %5, i32 noundef 1) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, ptr %5, align 4
  %43 = call i64 @mktime64(i32 noundef %42, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %44 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 24
  store i64 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 26
  store i8 1, ptr %45, align 8
  br label %53

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 26
  %48 = load i8, ptr %47, align 8, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 24
  %52 = load i64, ptr %51, align 8
  br label %53

53:                                               ; preds = %50, %41
  %54 = phi i64 [ %52, %50 ], [ %43, %41 ]
  %55 = load i64, ptr %33, align 8
  %56 = load i64, ptr %31, align 8
  %57 = sub i64 %55, %56
  %58 = icmp ugt i64 %54, %55
  %59 = add i64 %54, %57
  %60 = icmp slt i64 %59, %56
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = sub i64 %54, %56
  br label %71

64:                                               ; preds = %53
  %65 = add i64 %57, 1
  %66 = icmp sgt i64 %54, %56
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = icmp slt i64 %54, %56
  %69 = xor i64 %57, -1
  %70 = select i1 %68, i64 %69, i64 0
  br label %71

71:                                               ; preds = %67, %64, %62
  %72 = phi i64 [ %63, %62 ], [ %65, %64 ], [ %70, %67 ]
  %73 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 25
  store i64 %72, ptr %73, align 8
  br label %74

74:                                               ; preds = %71, %46, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %75 = call i32 @__rtc_read_alarm(ptr noundef %1, ptr noundef nonnull %6) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.rtc_wkalrm, ptr %6, i32 0, i32 2
  %79 = call i32 @rtc_valid_tm(ptr noundef %78) #9
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @rtc_initialize_alarm(ptr noundef %1, ptr noundef nonnull %6) #9
  br label %83

83:                                               ; preds = %81, %77, %74
  call void @rtc_dev_prepare(ptr noundef %1) #9
  %84 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 5
  %85 = call i32 @cdev_device_add(ptr noundef %84, ptr noundef %1) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 6
  call void @_set_bit(i32 noundef 1, ptr noundef %88) #9
  %89 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 20
  %94 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.1, i32 noundef %93, i32 noundef %95) #10
  br label %96

96:                                               ; preds = %87, %83
  call void @rtc_proc_add_device(ptr noundef %1) #9
  %97 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load ptr, ptr %1, align 4
  br label %104

104:                                              ; preds = %102, %96
  %105 = phi ptr [ %103, %102 ], [ %100, %96 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %98, ptr noundef nonnull @.str.2, ptr noundef %105) #10
  %106 = load ptr, ptr %99, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load ptr, ptr %1, align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi ptr [ %109, %108 ], [ %106, %104 ]
  %112 = call i32 @strcmp(ptr noundef %111, ptr noundef nonnull dereferenceable(5) @.str.3)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) @__const.rtc_hctosys.tv64, i32 16, i1 false) #9
  %115 = call i32 @rtc_read_time(ptr noundef %1, ptr noundef nonnull %3) #9
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %97, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.10) #10
  br label %126

119:                                              ; preds = %114
  %120 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %3) #9
  store i64 %120, ptr %4, align 8
  %121 = icmp sgt i64 %120, 2147483647
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = call i32 @do_settimeofday64(ptr noundef nonnull %4) #9
  %124 = load ptr, ptr %97, align 4
  %125 = load i64, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %124, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i64 noundef %125) #10
  br label %126

126:                                              ; preds = %122, %119, %117
  %127 = phi i32 [ %115, %117 ], [ %123, %122 ], [ -34, %119 ]
  store i32 %127, ptr @rtc_hctosys_ret, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #9
  br label %128

128:                                              ; preds = %126, %110
  %129 = load ptr, ptr %97, align 4
  %130 = call i32 @devm_add_action(ptr noundef %129, ptr noundef nonnull @devm_rtc_unregister_device, ptr noundef %1) #9
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  call void @mutex_lock(ptr noundef %133) #9
  call void @rtc_proc_del_device(ptr noundef %1) #9
  %134 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 6
  %135 = load volatile i32, ptr %134, align 4
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  call void @cdev_device_del(ptr noundef %84, ptr noundef %1) #9
  br label %139

139:                                              ; preds = %138, %132
  store ptr null, ptr %7, align 8
  call void @mutex_unlock(ptr noundef %133) #9
  br label %140

140:                                              ; preds = %139, %128, %2
  %141 = phi i32 [ -22, %2 ], [ 0, %128 ], [ %130, %139 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  ret i32 %141
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rtc_read_alarm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_initialize_alarm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_dev_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_proc_add_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_rtc_unregister_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %2) #9
  tail call void @rtc_proc_del_device(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 5
  tail call void @cdev_device_del(ptr noundef %8, ptr noundef %0) #9
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  store ptr null, ptr %10, align 8
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_rtc_device_register(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @devm_rtc_allocate_device(ptr noundef %0)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 3
  store ptr %2, ptr %8, align 8
  %9 = tail call i32 @__devm_rtc_register_device(ptr noundef %3, ptr noundef %5)
  %10 = icmp eq i32 %9, 0
  %11 = inttoptr i32 %9 to ptr
  %12 = select i1 %10, ptr %5, ptr %11
  br label %13

13:                                               ; preds = %7, %4
  %14 = phi ptr [ %5, %4 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rtc_init() #6 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtc_init.__key) #9
  store ptr %1, ptr @rtc_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  %5 = load ptr, ptr @rtc_class, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %9

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 13
  store ptr @rtc_class_dev_pm_ops, ptr %8, align 4
  tail call void @rtc_dev_init() #10
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %6, %3 ], [ 0, %7 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtc_get_dev_attribute_groups() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtc_device_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  tail call void @ida_free(ptr noundef nonnull @rtc_ida, i32 noundef %3) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_timer_do_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_timer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_aie_update_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_uie_update_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_pie_update_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_settimeofday64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_proc_del_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @rtc_dev_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtc_suspend(ptr noundef %0) #0 {
  %2 = alloca %struct.rtc_time, align 4
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !8
  %6 = tail call zeroext i1 @timekeeping_rtc_skipsuspend() #9
  br i1 %6, label %51, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(5) @.str.3)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = call i32 @rtc_read_time(ptr noundef %0, ptr noundef nonnull %2) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %17
  call void @ktime_get_real_ts64(ptr noundef nonnull @old_system) #9
  %21 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %2) #9
  store i64 %21, ptr @old_rtc.0, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %22 = load i64, ptr @old_system, align 8
  %23 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @old_system, i32 0, i32 1), align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !alias.scope !10, !annotation !8
  %24 = sub i64 %22, %21
  %25 = shl i64 %23, 32
  %26 = ashr exact i64 %25, 32
  call void @set_normalized_timespec64(ptr noundef nonnull %3, i64 noundef %24, i64 noundef %26) #9
  %27 = load i64, ptr %3, align 8
  %28 = getelementptr inbounds i8, ptr %3, i32 8
  %29 = load i64, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %30 = load i64, ptr @old_delta.0, align 8
  %31 = load i64, ptr @old_delta.1, align 8
  %32 = trunc i64 %29 to i32
  %33 = trunc i64 %31 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #9, !alias.scope !13, !annotation !8
  %34 = sub i64 %27, %30
  %35 = sub i32 %32, %33
  %36 = sext i32 %35 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %4, i64 noundef %34, i64 noundef %36) #9
  %37 = load i64, ptr %4, align 8
  %38 = getelementptr inbounds i8, ptr %4, i32 8
  %39 = load i64, ptr %38, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %40 = add i64 %37, -2
  %41 = icmp ult i64 %40, -4
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  store i64 %27, ptr @old_delta.0, align 8
  store i64 %29, ptr @old_delta.1, align 8
  br label %51

43:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %44 = load i64, ptr @old_system, align 8
  %45 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @old_system, i32 0, i32 1), align 8
  %46 = trunc i64 %45 to i32
  %47 = trunc i64 %39 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #9, !alias.scope !16, !annotation !8
  %48 = sub i64 %44, %37
  %49 = sub i32 %46, %47
  %50 = sext i32 %49 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %5, i64 noundef %48, i64 noundef %50) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) @old_system, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  br label %51

51:                                               ; preds = %43, %42, %17, %13, %1
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtc_resume(ptr noundef %0) #0 {
  %2 = alloca %struct.rtc_time, align 4
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %8 = tail call zeroext i1 @timekeeping_rtc_skipresume() #9
  br i1 %8, label %53, label %9

9:                                                ; preds = %1
  store i32 -19, ptr @rtc_hctosys_ret, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %11, %9 ]
  %17 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(5) @.str.3)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  call void @ktime_get_real_ts64(ptr noundef nonnull %3) #9
  %20 = call i32 @rtc_read_time(ptr noundef %0, ptr noundef nonnull %2) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %19
  %23 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %2) #9
  %24 = load i64, ptr @old_rtc.0, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %53, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #9, !alias.scope !19, !annotation !8
  %27 = sub i64 %23, %24
  call void @set_normalized_timespec64(ptr noundef nonnull %5, i64 noundef %27, i64 noundef 0) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %28 = load i64, ptr %3, align 8
  %29 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = load i64, ptr @old_system, align 8
  %32 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @old_system, i32 0, i32 1), align 8
  %33 = trunc i64 %30 to i32
  %34 = trunc i64 %32 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #9, !alias.scope !22, !annotation !8
  %35 = sub i64 %28, %31
  %36 = sub i32 %33, %34
  %37 = sext i32 %36 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %7, i64 noundef %35, i64 noundef %37) #9
  %38 = load i64, ptr %4, align 8
  %39 = getelementptr inbounds [2 x i64], ptr %4, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = load i64, ptr %7, align 8
  %42 = getelementptr inbounds [2 x i64], ptr %7, i32 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %40 to i32
  %45 = trunc i64 %43 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #9, !alias.scope !25, !annotation !8
  %46 = sub i64 %38, %41
  %47 = sub i32 %44, %45
  %48 = sext i32 %47 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %6, i64 noundef %46, i64 noundef %48) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  %49 = load i64, ptr %4, align 8
  %50 = icmp sgt i64 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %26
  call void @timekeeping_inject_sleeptime64(ptr noundef nonnull %4) #9
  br label %52

52:                                               ; preds = %51, %26
  store i32 0, ptr @rtc_hctosys_ret, align 4
  br label %53

53:                                               ; preds = %52, %22, %19, %15, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timekeeping_rtc_skipsuspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timekeeping_rtc_skipresume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timekeeping_inject_sleeptime64(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
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
!9 = !{i8 0, i8 2}
!10 = !{!11}
!11 = distinct !{!11, !12, !"timespec64_sub: argument 0"}
!12 = distinct !{!12, !"timespec64_sub"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"timespec64_sub: argument 0"}
!15 = distinct !{!15, !"timespec64_sub"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"timespec64_sub: argument 0"}
!18 = distinct !{!18, !"timespec64_sub"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"timespec64_sub: argument 0"}
!21 = distinct !{!21, !"timespec64_sub"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"timespec64_sub: argument 0"}
!24 = distinct !{!24, !"timespec64_sub"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"timespec64_sub: argument 0"}
!27 = distinct !{!27, !"timespec64_sub"}
