; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_irq_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_irq_thread\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_irq_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_register:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_register\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_resume\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cros_ec_platform = type { ptr, i16 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.anon.74 = type { %struct.cros_ec_command, %union.anon.75 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%union.anon.75 = type { %struct.ec_response_host_sleep_event_v1 }
%struct.ec_response_host_sleep_event_v1 = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.ec_params_host_sleep_event_v1 = type { i8, i8, %union.anon.76 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i16 }

@__kstrtab_cros_ec_irq_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_irq_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_irq_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_irq_thread to i32), ptr @__kstrtab_cros_ec_irq_thread, ptr @__kstrtabns_cros_ec_irq_thread }, section "___ksymtab+cros_ec_irq_thread", align 4
@cros_ec_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [34 x i8] c"&(&ec_dev->event_notifier)->rwsem\00", align 1
@cros_ec_register.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"&ec_dev->lock\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Cannot identify the EC: error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"chromeos-ec\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to request IRQ %d: %d\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"cros-ec-dev\00", align 1
@ec_p = internal global %struct.cros_ec_platform { ptr @.str.11, i16 0 }, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to create CrOS EC platform device\0A\00", align 1
@pd_p = internal global %struct.cros_ec_platform { ptr @.str.12, i16 16384 }, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Failed to create CrOS PD platform device\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to register sub-devices\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Chrome EC device registered\0A\00", align 1
@__kstrtab_cros_ec_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_register = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_register to i32), ptr @__kstrtab_cros_ec_register, ptr @__kstrtabns_cros_ec_register }, section "___ksymtab+cros_ec_register", align 4
@__kstrtab_cros_ec_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_unregister to i32), ptr @__kstrtab_cros_ec_unregister, ptr @__kstrtabns_cros_ec_unregister }, section "___ksymtab+cros_ec_unregister", align 4
@__kstrtab_cros_ec_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_suspend to i32), ptr @__kstrtab_cros_ec_suspend, ptr @__kstrtabns_cros_ec_suspend }, section "___ksymtab+cros_ec_suspend", align 4
@__kstrtab_cros_ec_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_resume to i32), ptr @__kstrtab_cros_ec_resume, ptr @__kstrtabns_cros_ec_resume }, section "___ksymtab+cros_ec_resume", align 4
@__UNIQUE_ID_license247 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [36 x i8] c"description=ChromeOS EC core driver\00", section ".modinfo", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"cros_ec\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"cros_pd\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license247, ptr @__ksymtab_cros_ec_irq_thread, ptr @__ksymtab_cros_ec_register, ptr @__ksymtab_cros_ec_resume, ptr @__ksymtab_cros_ec_suspend, ptr @__ksymtab_cros_ec_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_irq_thread(i32 %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 22
  br label %7

7:                                                ; preds = %26, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  %8 = call i32 @cros_ec_get_next_event(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %9 = load i8, ptr %3, align 1, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 11, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 11, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  call void @pm_wakeup_dev_event(ptr noundef %12, i32 noundef 0, i1 noundef zeroext false) #5
  br label %22

22:                                               ; preds = %21, %17, %11, %7
  %23 = icmp sgt i32 %8, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call i32 @blocking_notifier_call_chain(ptr noundef %6, i32 noundef 0, ptr noundef %1) #5
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i8, ptr %4, align 1, !range !9
  %28 = icmp eq i8 %27, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  br i1 %28, label %29, label %7

29:                                               ; preds = %26
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_register(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.anon.74, align 4
  %5 = alloca %struct.platform_device_info, align 8
  %6 = alloca %struct.platform_device_info, align 8
  %7 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 22
  tail call void @__init_rwsem(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @cros_ec_register.__key) #5
  %10 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 22, i32 1
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 5
  store i16 4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 6
  store i16 12, ptr %12, align 2
  %13 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 7
  store i16 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %15, i32 noundef 3520) #5
  %17 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 11
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %128, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 14
  %21 = load i32, ptr %20, align 8
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %21, i32 noundef 3520) #5
  %23 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 12
  store ptr %22, ptr %23, align 8
  %24 = icmp eq ptr %22, null
  br i1 %24, label %128, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @cros_ec_register.__key.1) #5
  %27 = tail call i32 @cros_ec_query_all(ptr noundef %0) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef %27) #6
  br label %128

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 10
  %32 = load i32, ptr %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = tail call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %32, ptr noundef nonnull @cros_ec_irq_handler, ptr noundef nonnull @cros_ec_irq_thread, i32 noundef 8200, ptr noundef nonnull @.str.4, ptr noundef %0) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef %38, i32 noundef %35) #6
  br label %128

39:                                               ; preds = %34, %30
  %40 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #5
  %41 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %41, i8 0, i32 48, i1 false) #5, !annotation !8
  store ptr %40, ptr %6, align 8
  %42 = getelementptr inbounds %struct.platform_device_info, ptr %6, i32 0, i32 1
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.platform_device_info, ptr %6, i32 0, i32 3
  store ptr @.str.6, ptr %43, align 4
  %44 = getelementptr inbounds %struct.platform_device_info, ptr %6, i32 0, i32 4
  store i32 -2, ptr %44, align 8
  %45 = getelementptr inbounds %struct.platform_device_info, ptr %6, i32 0, i32 7
  store ptr @ec_p, ptr %45, align 4
  %46 = getelementptr inbounds %struct.platform_device_info, ptr %6, i32 0, i32 8
  store i32 8, ptr %46, align 8
  %47 = call ptr @platform_device_register_full(ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #5
  %48 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 29
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.7) #6
  %52 = load ptr, ptr %48, align 4
  %53 = ptrtoint ptr %52 to i32
  br label %128

54:                                               ; preds = %39
  %55 = load i16, ptr %13, align 8
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  %59 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %59, i8 0, i32 48, i1 false) #5, !annotation !8
  store ptr %58, ptr %5, align 8
  %60 = getelementptr inbounds %struct.platform_device_info, ptr %5, i32 0, i32 1
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.platform_device_info, ptr %5, i32 0, i32 3
  store ptr @.str.6, ptr %61, align 4
  %62 = getelementptr inbounds %struct.platform_device_info, ptr %5, i32 0, i32 4
  store i32 -2, ptr %62, align 8
  %63 = getelementptr inbounds %struct.platform_device_info, ptr %5, i32 0, i32 7
  store ptr @pd_p, ptr %63, align 4
  %64 = getelementptr inbounds %struct.platform_device_info, ptr %5, i32 0, i32 8
  store i32 8, ptr %64, align 8
  %65 = call ptr @platform_device_register_full(ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  %66 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 30
  store ptr %65, ptr %66, align 8
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.8) #6
  %70 = load ptr, ptr %48, align 4
  call void @platform_device_unregister(ptr noundef %70) #5
  %71 = load ptr, ptr %66, align 8
  %72 = ptrtoint ptr %71 to i32
  br label %128

73:                                               ; preds = %57, %54
  %74 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = call i32 @devm_of_platform_populate(ptr noundef %8) #5
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 30
  %82 = load ptr, ptr %81, align 8
  call void @platform_device_unregister(ptr noundef %82) #5
  %83 = load ptr, ptr %48, align 4
  call void @platform_device_unregister(ptr noundef %83) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9) #6
  br label %128

84:                                               ; preds = %77, %73
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  %85 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false) #5
  %86 = load i8, ptr %85, align 1, !range !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.anon.74, ptr %4, i32 0, i32 1
  %90 = getelementptr inbounds %struct.ec_params_host_sleep_event_v1, ptr %89, i32 0, i32 2
  store i16 0, ptr %90, align 2
  store i32 1, ptr %4, align 4
  br label %91

91:                                               ; preds = %88, %84
  %92 = phi i32 [ 4, %88 ], [ 1, %84 ]
  %93 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 2
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 1
  store i32 169, ptr %94, align 4
  %95 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %0, ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  %96 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 20
  %97 = load i8, ptr %96, align 4
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 28
  store ptr @cros_ec_ready_event, ptr %100, align 8
  %101 = call i32 @blocking_notifier_chain_register(ptr noundef %9, ptr noundef %100) #5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %99, %91
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.10) #6
  %104 = load i8, ptr %96, align 4
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %125, %103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #5
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %107 = call i32 @cros_ec_get_next_event(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #5
  %108 = load i8, ptr %2, align 1, !range !9
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %7, align 4
  %112 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 11, i32 1
  %113 = load i16, ptr %112, align 4
  %114 = and i16 %113, 1
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 11, i32 6
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void @pm_wakeup_dev_event(ptr noundef %111, i32 noundef 0, i1 noundef zeroext false) #5
  br label %121

121:                                              ; preds = %120, %116, %110, %106
  %122 = icmp sgt i32 %107, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %121
  %124 = call i32 @blocking_notifier_call_chain(ptr noundef %9, i32 noundef 0, ptr noundef %0) #5
  br label %125

125:                                              ; preds = %123, %121
  %126 = load i8, ptr %3, align 1, !range !9
  %127 = icmp eq i8 %126, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #5
  br i1 %127, label %128, label %106

128:                                              ; preds = %125, %103, %99, %80, %68, %50, %37, %29, %19, %1
  %129 = phi i32 [ %27, %29 ], [ %35, %37 ], [ %53, %50 ], [ %72, %68 ], [ %78, %80 ], [ -12, %1 ], [ -12, %19 ], [ %101, %99 ], [ 0, %103 ], [ 0, %125 ]
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_query_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_irq_handler(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #5
  %4 = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 27
  store i64 %3, ptr %4, align 8
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_ready_event(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -160
  %5 = tail call i32 @cros_ec_get_host_event(ptr noundef %4) #5
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -96
  tail call void @mutex_lock(ptr noundef %9) #5
  %10 = tail call i32 @cros_ec_query_all(ptr noundef %4) #5
  tail call void @mutex_unlock(ptr noundef %9) #5
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ 1, %8 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_unregister(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #5
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 29
  %8 = load ptr, ptr %7, align 4
  tail call void @platform_device_unregister(ptr noundef %8) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_suspend(ptr noundef %0) #0 {
  %2 = alloca %struct.anon.74, align 4
  %3 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  %5 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i64 24, i1 false) #5
  %6 = load i8, ptr %5, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.anon.74, ptr %2, i32 0, i32 1
  store i8 1, ptr %8, align 4
  br i1 %7, label %10, label %9

9:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i32 [ 4, %9 ], [ 1, %1 ]
  %12 = getelementptr inbounds %struct.cros_ec_command, ptr %2, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %2, i32 0, i32 1
  store i32 169, ptr %13, align 4
  %14 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %0, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  %15 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 8
  %26 = call i32 @irq_set_irq_wake(i32 noundef %25, i32 noundef 1) #5
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 15
  %29 = zext i1 %27 to i8
  store i8 %29, ptr %28, align 4
  br label %30

30:                                               ; preds = %23, %19, %10
  %31 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 10
  %32 = load i32, ptr %31, align 8
  call void @disable_irq(i32 noundef %32) #5
  %33 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 15
  %34 = load i8, ptr %33, align 4, !range !9
  %35 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 2
  store i8 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 16
  store i8 1, ptr %36, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_resume(ptr noundef %0) #0 {
  %2 = alloca %struct.anon.74, align 4
  %3 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 16
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 8
  tail call void @enable_irq(i32 noundef %5) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  %6 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i64 24, i1 false) #5
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.anon.74, ptr %2, i32 0, i32 1
  store i8 2, ptr %9, align 4
  br i1 %8, label %12, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cros_ec_command, ptr %2, i32 0, i32 3
  store i32 4, ptr %11, align 4
  store i32 1, ptr %2, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ 4, %10 ], [ 1, %1 ]
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %2, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cros_ec_command, ptr %2, i32 0, i32 1
  store i32 169, ptr %15, align 4
  %16 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %0, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  %17 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 15
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %4, align 8
  %22 = call i32 @irq_set_irq_wake(i32 noundef %21, i32 noundef 0) #5
  store i8 0, ptr %17, align 4
  br label %23

23:                                               ; preds = %20, %12
  %24 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 20
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 22
  br label %29

29:                                               ; preds = %32, %27
  %30 = call i32 @cros_ec_get_next_event(ptr noundef %0, ptr noundef null, ptr noundef null) #5
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = call i32 @blocking_notifier_call_chain(ptr noundef %28, i32 noundef 1, ptr noundef %0) #5
  %34 = load i8, ptr %24, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %29

36:                                               ; preds = %32, %29, %23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_next_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_host_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
